---
title: "Was sind Schemata?"
author: Julia Dolhoff
date: 2017-11-02
---

# Was sind Schemata?

Ein XML-Dokument mit einer korrekten Syntax wird **Well Formed** genannt. Durch die Validation mithilfe eines Schemata wird es zusätzlich **Valid** genannt.

Das Schema dient zur Definition der Struktur eines XML-Dokuments um die erlaubten Elemente festzulegen.

# Technische Formate / Sprache
## DTD

- Dokument Type Definition
- Strukturplan für ein XML-Dokument
- Konsistenz
- Nicht spezifisch für ein Dokument, mehrere können davon gebrauch machen
- Kompatibel mit gesamten XML Vokabular
- Ein XML-Dokument darf nur auf ein DTD zugreifen

### Vorteile:

- Festlegen eines Standards für die gemeinsame Arbeit unabhängiger Gruppen an Daten
- Verifikation erhaltender Daten von außerhalb bezüglich ihrer Validität
- Verifikation eigener Daten bezüglich ihrer Validität

### Nachteil:

- Ältestes hier vorgestelltes Schema
- Noch verbreitet, wird jedoch nicht mehr weiterentwickelt


## XML-Schema: XSD

- Strukturplan für ein XML-Dokument
- XMI Syntax ermöglich parsen
- Unterstützte Datentypen: Integer, String, Boolean; sowie mögliche definition weiterer Datentypen
- Globale und Gruppen Elemente erlaubt
	+ **all**: Alle Elemente genau einmal enthalten
	+ **sequence**: Elemente mindestens einmal enthalten
	+ **choice**: Auswahl mehrerer Möglichkeiten
- Lokale Elemente (spezielle Bedeutung im Kontext) erlaubt
- Unterstützung vom IE 5.5

### Vorteile:

- In XML geschrieben
	+ Keine neue Sprache
	+ Von XML Editoren unterstützt
	+ Von XML Parsern unterstützt
	+ Manipulation mit DOM möglich
	+ Transformation mit XSLT möglich
- Erweiterbar für Ergänzungen
- Unterstützung von Datentypen und Namespaces
	+ Einfache Beschreibung der Dokumenteninhalte
	+ Einfache Definition der Einschränkungen in den Daten
	+ Einfache Validierung der Korrektheit der Daten
	+ Einfache transformation zwischen unterschiedlichen Datentypen
- Mitführen der Beschreibung des eigenen Formates
- Festlegen eines Standards für die gemeinsame Arbeit unabhängiger Gruppen an Daten
- Verifikation von Daten
- W3C-Standard -> sehr weit verbreitet


## RelaxNG

- Relax Next Generation
- Schemasprache für XML-Dokumente

### Vorteile:

- Simpel und einfach zu lernen
- Besitzt sowohl eine XML-Syntax als auch eine kompakte nicht-XML-Syntax
- Verändert nicht das Informationsset des XML
- Unterstützt Namespaces
- Soweit möglich werden Attribute und Elemente gleichermaßen behandelt
- Uneingeschränkte Unterstützung ungeordneter Inhalte
- Uneingeschränkte Unterstützung gemischter Inhalte
- Solide theoretische Basis
- Ist mit einer separaten Datentypen Sprache vereinbar wie beispielsweise W3C XML Schema Datatypes 
- ISO Standard, leider nicht so sehr verbreitet wie XML Schema

## Schematron

- Validierung von:
	+ Business Regeln
	+ Datenberichten
	+ Qualitätskontrolle
	+ Statistische Konsistenz
	+ Generelle Validierung
	+ Filterungen

### Vorteile:

- Simple und aussagestarke Schematasprache
- Nur 5 wichtige Elemente enthalten
- Ausdruck vieler Einschränkungen die in anderen Schemasprachen unmöglich sind
- ISO Standard



## Quellen:

- [DTD vs. XML Schema - Wachablösung in der XML Validierung](http://www.devtrain.de/artikel_445.aspx)
- [w3schools DTD](https://www.w3schools.com/xml/xml_dtd.asp)
- [w3school DTD Tutorial](https://www.w3schools.com/xml/xml_dtd_intro.asp)
- [w3schools Schema](https://www.w3schools.com/xml/xml_schema.asp)
- [w3school Schema Tutorial](https://www.w3schools.com/xml/schema_intro.asp)
- [RelaxNG](http://relaxng.org/)
- [Schematron](http://schematron.com/)
- [video2brain](https://www.video2brain.com/de/tutorial/dtd-schema-und-relaxng)


# Wie werden Schemata generiert?

## Tools

- [TEI Roma](http://www.tei-c.org/Roma/)
	+ Generierung eines TEI Schemas aus einem TEI zugeschnittenen Dokument
	+ Definition der gebrauchten Elemente und Attribute
	+ Kann in allen zuvor genannten Schematasprachen ausgedrückt werden
	 
- [XML Schema (XSD) Editor](https://www.oxygenxml.com/xml_editor/xml_schema_editor.html)
	+ Assistenten Tool zur Bearbeitung und Validierung von XML Schema
	+ Schneller Zugang zu gängigen Aktionen in der Schemagenerierung
	
- [Visual XML Schema Diagram Editor (Design Mode)](https://www.oxygenxml.com/xml_editor/xml_schema_diagram_editor.html)
	+ Schema-Diagramm-Editor
	+ Intuitiv, leichte Bedienung
	+ Für komplexe Schemata geeignet

# Fazit

Für unsere Zwecke scheint das XML-Schema am sinnvollsten, da es in XML geschrieben ist und kompatibel mit bereits verwendeten Editoren und Parsern.
