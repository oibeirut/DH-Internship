For what it’s worth, here’s a schematron pattern to sniff out non-NFC data:

    <rule context="*[ancestor::tei:body]">
        <assert test=". = normalize-unicode(.)">All text needs to be normalized (NFC)		
	</assert>
    </rule>
    
ODER in detail: 

    <rule context="*[ancestor::tei:body]">
      <let name="this-text" value="string-join(text(),'')"/>
      <let name="this-raw-char-seq" value="tokenize(replace($this-text,'(.)','$1 '),' ')"/>
      <let name="this-nfc-char-seq" value="tokenize(replace(normalize-unicode($this-text),'(.)','$1'),' ')"/>
      <let name="this-non-nfc-seq" value="distinct-values($this-raw-char-seq[not(.=$this-nfc-char-seq)])"/>
      <assert test="$this-text = normalize-unicode($this-text)">All text needs to be normalized
         (NFC). Errors: <value-of
            select="for $i in $this-non-nfc-seq return concat($i,' (U+',
            tan:dec-to-hex(string-to-codepoints($i)),') at ',
            string-join(for $j in index-of($this-raw-char-seq,$i) return string($j),' ')),' '"
         /></assert>
    </rule>

    <xsl:function name="kalv:dec-to-hex" as="xs:string"
          xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
          <xsl:param name="in" as="xs:integer"/>
          <xsl:sequence
             select="if ($in eq 0)
             then '0'
             else
                concat(if ($in gt 16)
                   then tan:dec-to-hex($in idiv 16)
                   else '',
                substring('0123456789ABCDEF',
                ($in mod 16) + 1, 1))"
          />
    </xsl:function>