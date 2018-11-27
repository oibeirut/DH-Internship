---
title: "Buttons Oxygen XML"
author: 
    - Lena Hofmann
    - Till Grallert
date: 2018-01-11
---

# Buttons Oxygen XML Editor und auszuzeichnende Elemente

## Aktuelle Knöpfe im Ediarum-Interface

|                   deutsch                    |        english         |                TEI                 |  Word  |          |
|----------------------------------------------|------------------------|------------------------------------|--------|----------|
| Neuer Absatz                                 | new paragraph          | <p>                                | basic  |          |
| Zeilenumbruch                                | line break[^1]         | <lb>                               | custom |          |
| Listen                                       | lists                  | <list>                             | basic  |          |
| Tabelle                                      | table / chart          | <table>                            | basic  |          |
| Anmerkung d. Autors                          | Author's note          | note (plus attribute?)             |        |          |
| Zeichnung                                    | drawing / subscription | graphic                            | basic  |          |
| *Folio- u. Seitenwechsel*                    | page break[^1]         | <pb>                               | custom | [<text>] |
| Unterstrichen                                | underline              | hi    ?                            | custom | style    |
| Hochstellen                                  | superscript            |                                    | basic  |          |
| Streichung                                   | deletion               | del                                | custom | style    |
| Korrektur durch Autor                        | author's correction    | choice/corr ?                      | custom | style    |
| Unsichere Lesart                             | uncertain reading      |                                    | custom | style    |
| nicht entzifferbar, Schäden und Auslassungen | undecipherable         |                                    | custom | style    |
| nicht entzifferbar, durchgestrichen          | undecipherable         |                                    | custom | style    |
| Ergänzung                                    | supplement             | <add>                              | custom | style    |
| Fehlendes Wort                               | missing word           | gap                                | custom | [...]    |
| Streichung d. Bearbeiter                     | editor's deletion      |                                    |        |          |
| Korrekturen                                  | corrections            |                                    |        |          |
| Sachanmerkung einfügen                       |                        |                                    |        |          |
| Verweise                                     | references             |                                    |        |          |
| Datum                                        | date                   | date                               | custom | style    |
| Sprache und Schriftart                       | language and font      |                                    |        |          |
| Textstellen indizieren                       | index                  |                                    |        |          |
| Namen kennzeichnen                           |                        | name, persName, placeName, orgName | custom | style    |
|                                              |                        |                                    |        |          |

[^1]: rather "beginning"

## Optionen für einzelne Knöpfe
### 1. Phänomene im Text
#### Zeilenumbruch / line break

- Zeilenumbruch | line beginning
- Zeilenumbruch im Wort: *wird nicht gebraucht*
- Zeilenumbruch mit Trennzeichen: *wird nicht gebraucht*

#### Listen | lists

*Standardverhalten: kann so bleiben*

- Liste einfügen | add list
- Listenpunkt einfügen | add / insert list item

#### Tabelle | table

*Standardverhalten: kann so bleiben*

- Tabelle einfügen | add table
- Zeile einfügen | add / insert row
- Spalte einfügen | add / insert column
- Zeilen verbinden | join cells
- Spalte löschen | delete column
- Zeile Löschen | delete row

#### Korrekturen | corrections

- *add*: Korrektur durch den/die Autor_in
- Korrektur durch den Herausgeber
- Normalisierte Streichung

#### Verweise | references

- Verweisziel markieren
- Verweis auf Brief oder Textstelle
- Verweis auf Sachanmerkung
- Link auf externe Website
- Verweis auf Beilage
- Brief/ Dokument ist Beilage zu...

#### Datum | date

- Genaues Datum: Julianisch / Gregorianisch / Hijri / Osmanischer Finanzkalender
- Genaue Zeitspanne
- Ungefährer Zeitraum

#### Sprache und Schriftart | language and script

- Schriftartwechsel: *wird nicht gebraucht*
- Fremdsprachiger Textabschnitt: `<foreign>`
- Handwechsel
- *add* Sprache und Schrit angeben: `@xml:lang`, die Werte können von OpenArabicPE übernommen werden

#### Textstelle indizieren | index

- Personenindex
- Ortsindex
- Werkindex

#### Namen kennzeichnen

- Personenname: `<persName>`
- Organisationsname: `<orgName>`
- Ortsname: `<placeName>`
- Werktitel: `<title>`, potentiell innerhalb eines `<bibl>`
- Sachbegriff

### 2. Beschreibung des Textes im teiHeader / Metadaten

- Digitalisate
- Beschreibung des Manuskripts
- Überlieferung: Druck
- Überlieferung: Abschrift, Entwurf...
- Textgrundlage auswählen/abwählen
- Autor des Manuskripts
- Schreibort
- Genaues Erstellungsdatum
- Erstellungszeitspanne
- Ungefährer Entstehungszeitraum
- Anmerkung zum Text
- Schlagwort / Thema
- Herausgeber 
- Mitarbeiter

### Website

*Nicht verfügbar, da NOCH keine online Datenbank existiert.*

### Sonderzeichen

- Symbole
    - Buchstaben
    - Bruchzahlen
    - Einheitenzeichen
    - Symbole
    - Kürzungsstriche
    - Halbgeviertstrich
    - Geviertstrich
    - Auslassungspunkte