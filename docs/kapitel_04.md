# Kapitel 4: Entwurf von Datenbanken für MySQL

![Kapitelbild](bilder/kap_04_kapitelbild.png)
	
In diesem Kapitel ...

- ... erstellen Sie verschiedene ERM.
- ... berücksichtigen Sie die Normalisierung in der Datenbankplanung.

---

## Situation

Bis die Datenbank der BSE GmbH erstellt werden kann, müssen noch Informationen eingeholt werden. Dazu wurde eine Besprechung angesetzt. In der Zwischenzeit sollen für andere Kundenaufträge erste Datenbankvorlagen erstellt werden.

![Gebäude](bilder/kap_04_handlungssit_gebaeude.jpg)

---

### Arbeitsauftrag A|4.0: ERM Universität erstellen

Es soll ein ER-Modell für einen Kunden erstellt werden:

1. Das ER-Modell erstellen Sie sauber auf einem Blatt Papier mit Lineal und Stift.
2. Erstellen Sie auf Grundlage des Beispiels ein redundanzfreies ERM zur Erfassung des Problems. Berücksichtigen Sie alle notwendigen Entitäten und Beziehungen. Achten Sie auf eine saubere und konventionsgerechte Darstellung.
3. Ergänzen Sie notwendige Beziehungsentitäten und Schlüsselattribute und kennzeichnen Sie diese. Weitere Attribute sind im ERM nicht relevant.
4. Geben Sie für alle Entitäten das relationale Datenbankmodell in Kurzschreibweise an und ergänzen Sie hier falls notwendig die normalen Attribute.

!!! quote "Universität"

    Studenten besuchen Vorlesungen, die von einem Professor geführt werden. Für die Vorlesungen werden Bücher benötigt.

---

### Arbeitsauftrag A|4.1: ERM der Datenbank zur BSE-Plattform

1. Lesen Sie sich das Protokoll (s. Informationsmaterial im Kurs) aus der Besprechung der Geschäftsführung durch.
2. Markieren Sie in unterschiedlichen Farben mögliche Entitäten und Attribute für ein Entity-
Relationship-Modell (ERM).
3. Zeichnen Sie ein ERM für die Verkaufsplattform und berücksichtigen Sie für alle folgenden Aufgaben diese Konventionen:

- Der Datenbankname soll `db_bseverkauf` lauten.
- Die Tabellennamen beginnen mit `tbl_` und bilden die Entitäten im Singular ab: bspw. für eine Sammlung an Blumen würde die Tabelle `tbl_blume` heißen.
- Die Primärschlüsselattribute enden auf `PK`, die Fremdschlüsselattribute auf `FK`.
- Beziehungen sollen inklusive der Kardinalitäten eingezeichnet werden.
- Die Nutzung von Umlauten und Sonderzeichen in Entitäten und Attributen ist zur Fehlervermeidung verboten.

---

### Arbeitsauftrag A|4.2: Kurzschreibweise der Datenbank zur BSE-Plattform

Erstellen Sie die Kurzschreibweise zu dem ERM der BSE GmbH & Co. KG auf Basis der besprochenen Ergebnisse.

!!! note "Zusätzliches Material, weitere Übungen & Tipps"

    Die folgenden Übungen und Tipps & Tricks dienen Ihrer persönlichen Wiederholung und Vorbereitung auf Klassenarbeiten, Prüfungen etc.<br><br>*Ich kann, weil ich will, was ich muss! (Immanuel Kant)*

## Übungen

### Übung UE|4.0: ERM Kaufvorgang erstellen

Es soll ein ER-Modell für einen Kunden erstellt werden:

1. Das ER-Modell erstellen Sie sauber auf einem Blatt Papier mit Lineal und Stift.
2. Erstellen Sie auf Grundlage des Beispiels ein redundanzfreies ERM zur Erfassung des Problems. Berücksichtigen Sie alle notwendigen Entitäten und Beziehungen. Achten Sie auf eine saubere und konventionsgerechte Darstellung.
3. Ergänzen Sie notwendige Beziehungsentitäten und Schlüsselattribute und kennzeichnen Sie diese. Weitere Attribute sind im ERM nicht relevant.
4. Geben Sie für alle Entitäten das relationale Datenbankmodell in Kurzschreibweise an und ergänzen Sie hier falls notwendig die normalen Attribute.

!!! quote "Kaufvorgang"
    
    Kunden haben Warenkörbe. In den Warenkörben liegen Artikel.

---

### Übung UE|4.1: ERM Autovermietung erstellen

Es soll ein ER-Modell für einen Kunden erstellt werden:

1. Das ER-Modell erstellen Sie sauber auf einem Blatt Papier mit Lineal und Stift.
2. Erstellen Sie auf Grundlage des Beispiels ein redundanzfreies ERM zur Erfassung des Problems. Berücksichtigen Sie alle notwendigen Entitäten und Beziehungen. Achten Sie auf eine saubere und konventionsgerechte Darstellung.
3. Ergänzen Sie notwendige Beziehungsentitäten und Schlüsselattribute und kennzeichnen Sie diese. Weitere Attribute sind im ERM nicht relevant.
4. Geben Sie für alle Entitäten das relationale Datenbankmodell in Kurzschreibweise an und ergänzen Sie hier falls notwendig die normalen Attribute.

!!! quote "Autovermietung"
    
    Kunden können Autos mieten. Ein Auto gehört zu einer Marke und die Marke hat verschiedene Modelle.

---

### Übung UE|4.2: ERM Schulungsunternehmen erstellen

Es soll ein ER-Modell für einen Kunden erstellt werden:

1. Das ER-Modell erstellen Sie sauber auf einem Blatt Papier mit Lineal und Stift.
2. Erstellen Sie auf Grundlage des Beispiels ein redundanzfreies ERM zur Erfassung des Problems. Berücksichtigen Sie alle notwendigen Entitäten und Beziehungen. Achten Sie auf eine saubere und konventionsgerechte Darstellung.
3. Ergänzen Sie notwendige Beziehungsentitäten und Schlüsselattribute und kennzeichnen Sie diese. Weitere Attribute sind im ERM nicht relevant.
4. Geben Sie für alle Entitäten das relationale Datenbankmodell in Kurzschreibweise an und ergänzen Sie hier falls notwendig die normalen Attribute.

!!! quote "Schulungsunternehmen"
    
    Das Schulungsunternehmen MeisterMedia bietet Kurse an, die von Referenten geleitet werden (Teamteaching ist möglich). Kurse können sich über mehrere Tage erstrecken und werden pro Tag abgerechnet. Für die Kurse muss jeweils ein Raum zur Verfügung gestellt werden. Einige Referenten sind fest angestellt, andere sind auf selbstständiger Basis für das Unternehmen tätig.

---

#### Übung UE|4.3: ERM Lieferungen erstellen

Es soll ein ER-Modell für einen Kunden erstellt werden:

1. Das ER-Modell erstellen Sie sauber auf einem Blatt Papier mit Lineal und Stift.
2. Erstellen Sie auf Grundlage des Beispiels ein redundanzfreies ERM zur Erfassung des Problems. Berücksichtigen Sie alle notwendigen Entitäten und Beziehungen. Achten Sie auf eine saubere und konventionsgerechte Darstellung.
3. Ergänzen Sie notwendige Beziehungsentitäten und Schlüsselattribute und kennzeichnen Sie diese. Weitere Attribute sind im ERM nicht relevant.
4. Geben Sie für alle Entitäten das relationale Datenbankmodell in Kurzschreibweise an und ergänzen Sie hier falls notwendig die normalen Attribute.

!!! quote "Lieferungen"
    
    Ein Lieferant hat einen Vor- und Nachnamen und eine Anschrift (PLZ, Ort, Straße). Ein Lieferant liefert mehrere Artikel. Ein Artikel hat eine Bezeichnung und ist in einer bestimmten Menge vorhanden. Ein Artikel wird von mehreren Lieferanten geliefert. Ein bestimmter Artikel kann von einem bestimmten Lieferanten an verschiedenen Tagen wiederholt geliefert werden, in diesem Zusammenhang ist das Lieferdatum wichtig. Des weiteren interessiert dabei der Lieferpreis und die Lieferzeit. In einem Lager werden mehrere Artikel gelagert. Ein Lager hat eine Standortbezeichnung. Ein Artikel wird in einem Lager aufbewahrt.

---

#### Übung UE|4.4: ERM Vermietung erstellen

Es soll ein ER-Modell für einen Kunden erstellt werden:

1. Das ER-Modell erstellen Sie sauber auf einem Blatt Papier mit Lineal und Stift.
2. Erstellen Sie auf Grundlage des Beispiels ein redundanzfreies ERM zur Erfassung des Problems. Berücksichtigen Sie alle notwendigen Entitäten und Beziehungen. Achten Sie auf eine saubere und konventionsgerechte Darstellung.
3. Ergänzen Sie notwendige Beziehungsentitäten und Schlüsselattribute und kennzeichnen Sie diese. Weitere Attribute sind im ERM nicht relevant.
4. Geben Sie für alle Entitäten das relationale Datenbankmodell in Kurzschreibweise an und ergänzen Sie hier falls notwendig die normalen Attribute.

!!! quote "Vermietung"
    
    Es gibt Mieter (mit Namen, Vornamen, Geburtsdatum, Einkommen, usw.) und Eigentümer (ebenfalls mit Namen, Vornamen, Geburtsdatum, Einkommen, usw.). Mieter mieten Wohnungen an. Wobei ein Mieter viele Wohnungen anmieten darf, aber eine Wohnung nur einem Mieter zugeordnet wird (Untermiete oder Gemeinschaftswohnungen sind ausgeschlossen). Eine Wohnung gehört einem Eigentümer, der natürlich auch mehrere Wohnungen besitzen kann. Eine Wohnung hat eine Anzahl von Zimmern, eine Größe in m² und wenn sie vermietet wird einen Mietpreis. Eine oder mehrere Wohnungen liegen in genau einem Gebäude. Ein Gebäude steht in einer Straße und hat Eigenschaften wie Hausnummer, Anzahl Wohnungen und Baujahr. Eine Straße liegt in einer Gemeinde und hat Eigenschaften wie Name, Art und Zustand. Eine Gemeinde wiederum hat Eigenschaften wie Name, Einwohnerzahl und Gemeindefläche.

---

#### Übung UE|4.5: ERM Computernetzwerk erstellen

Es soll ein ER-Modell für einen Kunden erstellt werden:

1. Das ER-Modell erstellen Sie sauber auf einem Blatt Papier mit Lineal und Stift.
2. Erstellen Sie auf Grundlage des Beispiels ein redundanzfreies ERM zur Erfassung des Problems. Berücksichtigen Sie alle notwendigen Entitäten und Beziehungen. Achten Sie auf eine saubere und konventionsgerechte Darstellung.
3. Ergänzen Sie notwendige Beziehungsentitäten und Schlüsselattribute und kennzeichnen Sie diese. Weitere Attribute sind im ERM nicht relevant.
4. Geben Sie für alle Entitäten das relationale Datenbankmodell in Kurzschreibweise an und ergänzen Sie hier falls notwendig die normalen Attribute.

!!! quote "Computernetzwerk"
    
    Für das Schulnetzwerk müssen Computerteile beschafft werden. Der Systemadministrator erstellt eine Datenbank, um in Frage kommende Lieferanten schneller ermitteln zu können. Zu einem Lieferanten sind der Name der Firma, der Ansprechpartner und deren Telefonnummer sowie die Adresse mit Straße, Hausnummer, Postleitzahl und Ort relevant. Computerteile können von verschiedenen Lieferanten bezogen werden, die Lieferanten haben gewöhnlich auch mehrere Teile im Angebot. Computerteile haben eine Bezeichnung und ein Gewicht. Außerdem wird jedes Computerteil genau einer bestimmten Baugruppe, wie zum Beispiel Grafikkarte, CPU usw. zugeordnet. Einer Baugruppe können mehrere Computerteile zugeordnet sein.

## Zusatzmaterial

// TODO Links einfügen

{%
   include-markdown "inhalte/lizenzhinweis.md"
   start="<!--include-start-->"
   end="<!--include-end-->"
%}