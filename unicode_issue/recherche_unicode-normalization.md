---
title: "Unicode Normalization"
author: Lena Hofmann
date: 2018-18-11
---

# Unicode Normalization 
---
---

### Unicode Normalization in der TEI Mailing List [Februar 2015](https://listserv.brown.edu/cgi-bin/wa?A2=ind1502&L=TEI-L&P=67209)

**Allgemeines:**
https://en.wikipedia.org/wiki/Unicode_equivalence
https://de.wikipedia.org/wiki/Normalisierung_(Unicode)
https://scripts.sil.org/cms/scripts/page.php?item_id=NFC_vs_NFD
https://www.w3.org/TR/xml-c14n/#NoCharModelNorm

**Frage:** Wie kann man am besten mit den verschiedenen Normalisierungsformen im Unicode umgehen? Besonders: Wie findet man heraus, welche Normalisierungsform in vorliegenden Dokument verwendet wird. Beipiel **é**: entweder wird der Buchstabe *composed* in einem Unicode-Codepoint dargestellt oder aber *decomposed*, indem die zwei Codepoints für **´** und **e** kombiniert werden. Beide zeigen keinen Unterschied in der Darstellung
Ist es notwendig ein neues Element in den TEI Header zu integrieren? Bsp: `<NFDecI>` ?
Wie kann man herausfinden, auf welche Normalisierungsform zurückgegriffen wird?

- Oxygen nutzt immer NFC-Normalisierung!
- Nutzung von NFC/ NFD abhängig von verwendetem Keyboard. (schwedisches Kexboard wird  Å composed im Unicode verarbeiten, während anderssprachige Keyboards vermutlich die Aufsplittung wählen.)
- main concern: Suche! Wie suche ich im XML nach Ausdrücken, von denen ich nicht weiß, wie sie benannt sind. Suchfunktion muss verbessert werden. Bei Diacritica funktioniert die Suche bereits unter ähnlichen Voraussetzungen. --> Ticket schreiben!
- Problem betrifft XML im allgemeinen. GRund: XPath Data Modell verlangt NFC. 
- Das Etablieren einer expliziten Deklaration für das Normalisierungsproblem ist nicht sehr praktisch, da viel zu statisch! --> Besser wäre es die Suchmaschine zu verbessern und dementsprechend anzupassen.
- normalized Text: einer der vier Normal-Formen folgend
- Apple Editor ist in der Lage eingetippten Text automatisch (nicht nur Akzente, sondern auch Ligaturen) einer Normalisierungsform zuzuführen --> Wunschzustand für den Oxygen XML Editor
- NEED: Find/Replace function für Oxygen XML Editor
- *The obvious way of doing it is to apply canonical decomposition to both 
the search string and the searched text before doing the search; but 
you'd have to reconstruct the precise offsets in the original text to 
get correct results. But that doesn't account for differences introduced 
by compatibility normalization (decomposition of diacritics into 
component glyphs).*
- Normalisierungsbefehl in JAVA: `java.util.regex.Pattern.CANON_EQ`:
*When this flag is specified then two characters will be considered to match if, and only if, their full canonical decompositions match. The expression <tt>"a&#92;u030A"</tt>, for example, will match the string <tt>"&#92;u00E5"</tt> when this flag is specified.  By default, matching does not take canonical equivalence into account. Specifying this flag may impose a performance penalty.*
- ...

helpful links in the discussion about normalization:

<http://oleb.net/blog/2014/07/swift-strings/#comparing-strings>
<https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID299>
<https://developer.apple.com/library/ios/documentation/Cocoa/Reference/Foundation/Classes/NSString_Class/index.html#//apple_ref/occ/instm/NSString/localizedCompare:>
<https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/Strings/Articles/stringsClusters.html>
<http://www.objc.io/issue-9/unicode.html>



### Exkurs: Normal forms

siehe auch: [NFC/NFD](http://unicode.org/reports/tr15/)
The four Unicode normalization forms and the algorithms (transformations)

|    |        |       |
|----|--------|-------|
|NFD| Normalization Form Canonical Decomposition|Characters are decomposed by canonical equivalence, and multiple combining characters are arranged in a specific order.|
|NFC| Normalization Form Canonical Composition|Characters are decomposed and then recomposed by canonical equivalence.|
|NFKD|Normalization Form Compatibility Decomposition|Characters are decomposed by compatibility, and multiple combining characters are arranged in a specific order.|
|NFKC|Normalization Form Compatibility Composition|Characters are decomposed by compatibility, then recomposed by canonical equivalence.|

Unicode Converter Windows: [BabbleStone](http://www.babelstone.co.uk/Software/BabelPad.html)
Unicode Converter Mac: [UnicodeChecker](http://earthlingsoft.net/UnicodeChecker/)