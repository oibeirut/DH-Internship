## Besprechung benötigter Auszeichnungen für die digitale Edition der BI / BTS (26.10.2017)

=> Keine Auszeichnungen in Word!

=> Text später alles auf arabisch (auch Fußnoten), nur Einleitung auf Englisch

Es gibt:

- Seiten fehlen
- Überschriften
- Gedichte
- Seitenzahlen => sind in [ ] 
- Chronogram
- Tabellen
	+ `<tabel>`
	+ `<row>`
	+ `<cell>`

Beispiel:

		<table>
		<head>US State populations, 1990</head>
		<row>
		<cell>Wyoming</cell>
		<cell>453,588</cell>
		</row>
		<row>
		<cell role="statename">Alaska</cell>
		<cell role="pop">550,043</cell>
		</row>

- Einschübe
- Verbesserungen \<verbessert in> [ursprünglich]
- Streichungen
- Lange Überschriften
- Geschichten
- Listen
- Rechnungen (mit Ergebnis)
- Gliedernde Querstriche
- Highlight (z.B. bei Überschriften)
- Rote Highlights
- Zitate
- Hadith


## Wichtig:

- **Datum** als Datum markieren (egal ob Chronogram)
	+ `<date when="1807-06-09">`June 9th`</date>`
	+ `<residence from="1856-03" to="1858-04">`From sometime in March of
 1856 to sometime in April of 1858.`</residence>`
 	+ `<birth notBefore="1857-03-01"
 notAfter="1857-04-30">`Some time in
 March or April of 1857.`</birth>`
 	+ Siehe: <http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ND.html> 

 
- **Personen**
	+ That silly man
`<name role="politician" type="person">`David Paul Brown`</name>` has suffered ...
	+ Siehe: <http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ND.html> 

- Einheiten im Text (einzelne Einträge)
- **Gedichte**

	Beispiel:
	
		<text>
		<body>
		<head>My Alba</head>
		<lg>
		<l>Now that I've wasted</l>
		<l>five years in Manhattan</l>
		<l>life decaying</l>
		<l>talent a blank</l>
		</lg>
		<lg>
		<l>talking disconnected</l>
		<l>patient and mental</l>
		<l>sliderule and number</l>
		<l>machine on a desk</l>
		</lg>
		</body>
		</text>
	
	+ Siehe: <http://www.tei-c.org/release/doc/tei-p5-doc/en/html/VE.html>

- Überstriche
- **Orte** (auch Regionen usw.)
	+ I never fly from `<name key="LHR" type="place">`Heathrow Airport`</name>`
to
<name key="FR" type="place">France</name>
	+ Siehe: <http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ND.html> 

- **Koranverse**

	Beispiel:
	
		<text>
		<front>
		<head>1755</head>
		</front>
		<body>
		<l>To make a prairie it takes a clover and one bee,</l>
		<l>One clover, and a bee,</l>
		<l>And revery.</l>
		<l>The revery alone will do,</l>
		<l>If bees are few.</l>
		</body>
		</text>
	
	+ Siehe: <http://www.tei-c.org/release/doc/tei-p5-doc/en/html/VE.html>

- **Namen**
	+ `<persName>`
	+ `<surname>`
	+ `<forename>`
	+ `<roleName>`
	+ `<addName>`
	+ `<nameLink>`
	+ `<genName>`
	
	Bsp:
	
		<persName>
		<forename type="first">Franklin</forename>
		<forename type="middle">Delano</forename>
		<surname>Roosevelt</surname>
		</persName>
		

	 
	+ Siehe: <http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ND.html> 
- Wenn oft Leute auf dem Markt => Gruppen von Leuten
