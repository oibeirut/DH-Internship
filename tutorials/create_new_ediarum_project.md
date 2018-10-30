---
title: "create new ediarum project"
author: Lena Hofmann
date: 2018-23-10
---
**ZUERST:** Download des [Oxgen XML-Editors](https://www.oxygenxml.com/download_oxygenxml_editor.html) und der aktuellsten stabilen Version von [ediarum](https://github.com/ediarum)!

# Einrichtung von ediarum für ein spezifisches Projekt

Basierend auf Oxygen 20.1 und ediarum 0.26.0
Auf folgende Orte / Menüs wird durchgehend Bezug genommen:

- Framework-Ordner: Programme/Oxygen/frameworks/ediarum_<projektname> – dieser Ordner wird im zweiten Schritt angelegt und erhält in Folge noch Unterordner
- Einstellungen: Menü »Optionen« > »Einstellungen…«
- Framework-Einstellungen: Menü »Optionen« > »Einstellungen…« > »Dokumenttypen-Zuordnung«, dann in der Liste projektspezifische Erweiterung »ediarum.<projektname>« (wird im zweiten Schritt erstellt) markieren, Knopf »Bearbeiten«


#### 1. ediarum.basis-Add-On installieren

- Menü »Hilfe« > »Neue Add-Ons installieren…«
- Im Textfeld »Add-Ons zeigen von« folgende URL angeben: http://telotadev.bbaw.de/oxygen/ediarum_basis/update.xml
- »ediarum« anhaken und »Installieren« klicken, Lizenzbestimmungen und Sicherheitshinweis akzeptieren


#### 2. Framework anlegen

- Einstellungen > »Dokumenttypen-Zuordnung«, in der Liste »ediarum.BASIS« markieren, Knopf »Erweitern« drücken
- »Name« projektspezifisch setzen: »ediarum.<projektname>«
- »Speicherort«: »Extern« wählen, den Framework-Ordner Programme/Oxygen/ediarum_<projektname> anlegen, darin als »ediarum_<projektname>.framework« speichern


#### 3. Projekt anlegen

- Menü »Projekt« > »Neues Projekt«
- Speichern als »<projektname>.xpr«
- Speichern im Framework-Ordner


#### 4. Allgemeine Einstellungen

Alle Änderungen dürfen nicht global eingestellt werden, sondern für das oXygen-Projekt. Dazu muss in den jeweiligen Dialogfenstern unten von »Global-Optionen« auf »Projekt-Optionen« umgestellt werden. Im Fenster der Einstellungen erscheinen die so gespeicherten Abschnitte auch jeweils fett und mit »[P]« versehen.
Jeweils in den Einstellungen:

- »Dokumenttypen-Zuordnung«: nur »ediarum.BASIS«, »ediarum.BASIS.register« und »ediarum.<projektname>« aktivieren
- »Editor« >
    - »Bearbeitungsmodus« > »Autor« > »AutoCorrect«:
        -  »Autokorrektur aktivieren« deaktivieren (d.h. NICHT aktivieren)
        - »"Doppel-Anführungszeichen" ersetzen« aktivieren und auf gewünschte Anführungszeichen einstellen
    - »Öffnen/Speichern«: »Dokument automatisch speichern nach« aktivieren und niedrige Zeit einstellen (z.B. 10 Minuten)
- »DITA« > »Neue Topics«: »Dateinamen als Wert des Wurzel-ID-Attributs verwenden« deaktivieren
- »Dateitypen«: im Textfeld »Muster für Binärdateien« »*.xql, *.html« ergänzen
- »Benutzerspezifische Editorvariablen«: mit Knopf »Neu« anlegen – jeweils »Name«, »Wert«, »Beschreibung«:
    - »${ediarum_project_name}«, <projektname>, muss mit dem Namen der collection in der existdb übereinstimmen
    - »${ediarum_project_domain}«, »http://oxygen-bot:********@<projektdomain>:8080
    - »${ediarum_website_base}«, »http://website-user:********@<projektdomain>:8080
    - »${ediarum_index_letters}«, »/oxygen/ediarum.xql?index=letters«
    - »${ediarum_index_person}«, »/oxygen/ediarum.xql?index=persons«
    - »${ediarum_index_place}«, »/oxygen/ediarum.xql?index=places«
    - »${ediarum_index_item}«, »/oxygen/ediarum.xql?index=items«
    - »${ediarum_index_bibl}«, »/oxygen/ediarum.xql?index=bibliography«
    - »${ediarum_index_bibl_zotero}«, »/oxygen/ediarum.xql?index=bibl« falls Zotero-Anbindung genutzt wird


#### 5. Framework einrichten

##### CSS ergänzen
- Ordner »css« im Framework-Ordner anlegen
- In diesem Ordner »standard.css« anlegen
- In Framework-Einstellungen > Reiter »Autor« > Unter-Reiter »CSS«:
    - Eintrag hinzufügen (Plus-Knopf):
        - URI: »${framework}/css/standard.css«
        - Titel: »Standardansicht«
        - Alternative: nein (nicht anhaken)

Standardmäßig wird der Eintrag am Ende der Liste hinzugefügt. Das ist auch gewünscht, da CSS-Anweisungen aus späteren Einträgen vorherige Stylesheets überschreiben – vorausgesetzt, sie sind als Alternative markiert und aktiviert. Aktiviert werden sie in der Autor-Ansicht über das »Stile«-Menü in der Symbolleiste. Da das soeben hinzugefügte Stylesheet den gleichen Titel (»Standardansicht«) wie dasjenige im ediarum.basis-Framework hat, werden diese beiden standardmäßig zusammen aktiviert.

Um die Stile aus standard.css auch in die Textansicht zu erben:

- Im Ordner »css« die Datei »onlyText.css« anlegen, mit dem Inhalt »@import url("standard.css");«
- »onlyText.css« in den Framework-Einstellungen wie oben hinzufügen – nur diesmal als Titel »Textansicht«

##### Projektspezifisches Schema zuweisen

- In Dokumenttypen beim entsprechenden Framwork unter "Schema" nach folgendem Muster das projektspezifische Schema einbinden: ${framework}/schemata/ediarum_hkw_register.rng. Dann unter "Validierung" über das "+" das spezifische Schema als neues Validierungsschema zuweisen.

##### ediarum.jar in Framework einfügen
- Das ediarum.jar File (https://github.com/ediarum) downloaden und in erstellten Framework-Ordner einfügen. Über **Dokumenttyp-Zuordnungen** unter **Klassen-Pfad** Pfad eingeben/ überprüfen.
- ACHTUNG: Unter **Verknüpfungsregeln** darauf achten, dass Attribute leer / * sind.