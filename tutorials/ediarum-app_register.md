---
title: "ediarum-app_register"
author: Lena Hofmann
date: 2018-03-12
---

# Registeranbindung in Oxygen via Ediarum-App
---
---

go to **Project** - **Register**

1. **Register verfügbar machen**
    - *API-ID*: For the API ID, a unique string of letters and numbers without special characters should be used because the register can be accessed via a URI using the API ID.
    - *Bezeichnung (Name)*: The name of the register.
        + select one
    - *Registerordner / -datei (Collection / resource)*: The folder or file in which the register is located. For example: Register/Persons.xml.
    - *Namespace*: If the XML files have a specific namespace, this must be specified here, for example: `tei:http://www.tei-c.org/ns/1.0`.
        + select: `tei:http://www.tei-c.org/ns/1.0`
    - *Node*: The specification of the node (with namespace) in which a single register entry is located. For example tei:TEI or tei:item.
        + I suppose this should be:
            * `<tei:person>`: for a prosopography
            * `<tei:place>`: for a gazetteer
            * `<tei:bibl>` or `<tei:biblStruct>`: for a bibliography
    - *XML-ID*: The specification where the ID is located relative to the node, for example: @xml:id.
        + select: `@ml:id`
    - *Span*: The XPath expression that specifies how the register entry is to be displayed.
        + select:
            * `./tei:persName[1]`
    
2. **Ediarum Register**
    - enable the corresponding register!
