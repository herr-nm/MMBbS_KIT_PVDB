## Kapitel 6: MySQL - Einfache Datenabfragen mit SELECT

![Kapitelbild](bilder/kap_06_kapitelbild.png)

In diesem Kapitel ...

- ... führen Sie erste Abfragen mit der Datenbanksprache MySQL durch.

---

!!! example "Webversionen der Datenbanken"
    
    Über die Links stehen Ihnen die Datenbanken zur Verfügung:

    - [db_bseverkauf](https://www.db-fiddle.com/f/mkHxub9CaFDyGgjvvoWMQk/0)
    - [db_universitaet](https://www.db-fiddle.com/f/ghBtL5urMFG87RtkrF7MJR/0)

## Kompetenz 6.0: Einfache Datenbankabfragen mit SELECT durchführen

Die Mitarbeiter der BSE GmbH & Co. KG haben des Öfteren Fragen an Matthias Thale, die er mithilfe seiner bisher eingesetzten Tabellenkalkulation klären konnte. Jetzt nachdem die Datenbank eingerichtet wurde und die ersten Datensätze einer vergangenen Abrechnungsperiode zum Testen erfasst sind, kann die Datenbank getestet werden.

Thilo Ostiem hat eine Liste an Fragen erhalten, die Kolleginnen und Kollegen in der Vergangenheit hinsichtlich der Verkaufsplattform hatten. Nun soll er beweisen, dass die Datenbank schnell die gewünschten Informationen liefern kann. So will z.B. der Datenschutzbeauftragte wissen, welche Attribute für die Käufer gespeichert werden.

---

### Arbeitsauftrag A|6.0: Einfache Datenabfragen mit SELECT

1. Lassen Sie sich alle Käufer mit allen Attributen anzeigen.
2. Welche Bundeslandabkürzungen gibt es und was bedeuten diese?
3. Lassen Sie sich eine Liste aller in der Datenbank befindlichen Postleitzahlen (aus der Postleitzahlen-Tabelle) mit deren Orten anzeigen. Die Zuordnung der Bundesländer soll dabei nicht ausgegeben werden.
4. Lassen Sie sich alle Verkäufer mit dem Nachnamen "Becker" anzeigen.

??? note "Beispiellösung zu 1."

	```sql
	-- Befehl
	SELECT *
	FROM tbl_kaeufer;

	-- Ausgabe
	+-----------+---------------+-----------------+------------------------------+-------+------------+----------------------------------------------------------+
	| kaeuferPK | nachname      | vorname         | anschrift                    | plzFK | geburtstag | firma                                                    |
	+-----------+---------------+-----------------+------------------------------+-------+------------+----------------------------------------------------------+
	|         1 | Lauterbach    | Heiner          | Am Dorfkrug                  | 80331 | 1952-04-10 | Mobiler Frühstücksservice                                |
	|         2 | Purcell       | Dominic         | Eisenbahnweg 19              | 24105 | 1970-02-17 | Erlebe was! Reise-und Eventagentur                       |
	|         3 | Gordon-Levitt | Joseph          | Kloster-Thedinga-Str. 83     | 19053 | 1981-02-17 | Carl Wilh. Meyer GmbH & Co. KG                           |
	|         4 | Carlson       | Kelly           | An der Emsbrücke 3           | 80331 | 1976-02-17 | DEKRA Akademie GmbH                                      |
	|         5 | Tatum         | Channing        | Burfehner Weg 50             | 66126 | 1980-04-26 | August Herzog Maschinenfabrik GmbH & Co. KG              |
	|         6 | Aniston       | Jennifer        | Reimersstr. 18               | 89075 | 1969-02-11 | Buddelei-Mode GmbH & Co. KG                              |
	|         7 | Hardy         | Tom             | Niedersachsenring 6          | 65183 | 1977-09-15 | HorFerVit Pharma GmbH                                    |
	|         8 | Pratt         | Chris           | Von-Jhering-Str. 9           | 26121 | 1979-06-21 | AT Anlagentechnik GmbH                                   |
	|         9 | Pitt          | Brad            | Okko-ten-Broek-Str. 2        | 18059 | 1963-12-18 | Beas-Büroservice                                         |
	|        10 | Hunnam        | Charlie         | Tiergartenstr. 126 B         | 12524 | 1980-04-10 | Wohnwagen Feldhus GmbH                                   |
	|        11 | Tarantino     | Quentin         | Völgerstr. 15                | 50968 | 1963-03-27 | Bertram Zeitarbeit GmbH                                  |
	|        12 | Kruger        | Diane           | Fischerstr. 17               | 80331 | 1976-07-15 | August Cassens GmbH & Co. KG                             |
	|        13 | Roth          | Eli             | Stockmannstr. 7              | 30559 | 1972-04-18 | cycle union GmbH                                         |
	|        14 | Cumberbatch   | Benedict        | Fenskestr. 42                | 55128 | 1976-09-19 | Tramann + Sohn GmbH & Co.                                |
	|        15 | DiCaprio      | Leonardo        | Podbielskistr. 45            | 26121 | 1974-11-11 | TU Unternehmensberatung GmbH                             |
	|        16 | Reeves        | Keanu           | Wohlenbergstr. 26            | 18059 | 1964-09-02 | Allmess GmbH                                             |
	|        17 | Depp          | Johnny          | Widemannstr. 20              | 65183 | 1963-07-09 | Heinrich Hecker GmbH & Co. KG                            |
	|        18 | Fishburne     | Laurence        | Wettinerweg 2 E              | 21129 | 1961-07-30 | mdp GmbH                                                 |
	|        19 | Moss          | Carrie-Anne     | Senefelderweg 15             | 65183 | 1967-08-21 | Max Hering KG                                            |
	|        20 | Smith         | Will            | Fürstenwalder Str. 4         | 50968 | 1968-09-25 | Friedrich Ahlers GmbH                                    |
	|        21 | Spader        | James           | Melanchthonstr. 36           | 01099 | 1960-02-07 | Autopflegeservice Berthmann                              |
	|        22 | Mara          | Kate            | Lüchower Str. 2              | 07554 | 1983-02-27 | McFit GmbH Oldenburg                                     |
	|        23 | Hiddleston    | Tom             | Grünewaldstr. 27             | 80331 | 1981-02-09 | Fotocenter Zarate                                        |
	|        24 | Cavill        | Henry           | Gabelsbergerstr. 11          | 19053 | 1983-05-05 | Wintermann Druckhaus GmbH                                |
	|        25 | Evans         | Chris           | Tischbeinstr. 15             | 23568 | 1981-06-13 | AXIOS 3D Services GmbH                                   |
	|        26 | Odenkirk      | Bob             | Willführstr. 3               | 90427 | 1962-10-22 | B & W Fashion GmbH & Co. KG                              |
	|        27 | Cruise        | Tom             | Striehlstr. 11               | 70599 | 1962-07-03 | B. Carstens Textil GmbH                                  |
	|        28 | Moore         | Julianne        | Hinter der Alten Burg 25     | 40213 | 1960-12-03 | BA Business Advice GmbH                                  |
	|        29 | Gyllenhaal    | Jake            | Steinmetzstr. 21             | 40213 | 1980-12-19 | BAB Automationstechnik GmbH                              |
	|        30 | McConaughey   | Matthew         | Zieglerhof 6                 | 99090 | 1969-11-04 | badgestalten. GmbH                                       |
	|        31 | Evans         | Luke            | Hildesheimer Str. 360        | 01099 | 1979-04-15 | Bahlmann Bau GmbH                                        |
	|        32 | Cohan         | Lauren          | Hartenbrakenstr. 19 C        | 26121 | 1982-01-07 | Balance-Mediation                                        |
	|        33 | Thurman       | Uma             | Dieterichsstr. 14            | 90427 | 1970-04-29 | NULL                                                     |
	|        34 | Wilde         | Olivia          | Stockmannstr. 4              | 21129 | 1984-03-10 | NULL                                                     |
	|        35 | Woll          | Deborah Ann     | Uhlandstr. 6                 | 23568 | 1985-02-07 | NULL                                                     |
	|        36 | Cranston      | Bryan           | Hanomagstr. 2                | 19053 | 1956-03-07 | NULL                                                     |
	|        37 | Paul          | Aaron           | Podbielskistr. 45            | 23568 | 1979-08-27 | NULL                                                     |
	|        38 | Gunn          | Anna            | Am Marstall 23               | 66126 | 1968-08-11 | NULL                                                     |
	|        39 | Willis        | Bruce           | Mozartstr. 5                 | 99090 | 1955-03-19 | NULL                                                     |
	|        40 | Rohde         | Armin           | Alabasterweg 14              | 55128 | 1955-04-04 | NULL                                                     |
	|        41 | George        | Götz            | Allerweg 29                  | 24105 | 1938-07-23 | NULL                                                     |
	|        42 | Vogel         | Jürgen          | Kriegerstr. 24               | 23568 | 1968-04-29 | NULL                                                     |
	|        43 | Fuchsberger   | Joachim         | Ritter-Brüning-Str. 36       | 86159 | 1927-03-11 | NULL                                                     |
	|        44 | John          | Gottfried       | Weberstr. 5                  | 80331 | 1942-08-29 | NULL                                                     |
	|        45 | James         | Kevin           | Alte Döhrener Str. 19        | 07554 | 1965-04-26 | NULL                                                     |
	|        46 | Jaenicke      | Hannes          | Albert-Niemann-Str. 5        | 24105 | 1960-02-26 | NULL                                                     |
	|        47 | Jackman       | Hugh            | Greitheweg 23 A              | 26121 | 1968-10-12 | NULL                                                     |
	|        48 | Jauch         | Günther         | In der Steinbreite 86        | 99090 | 1956-07-13 | NULL                                                     |
	|        49 | Johnson       | Dwayne          | Salzhemmendorfer Str. 3      | 26121 | 1972-05-02 | NULL                                                     |
	|        50 | Kalkofe       | Oliver          | Thaerstr. 19                 | 23970 | 1965-09-12 | NULL                                                     |
	|        51 | Kamps         | Gülcan          | Skagenhof 13                 | 70599 | 1982-09-20 | NULL                                                     |
	|        52 | Karrenbauer   | Katy            | Seilerstr. 6                 | 50968 | 1962-12-31 | NULL                                                     |
	|        53 | Keaton        | Diane           | Am Herrenhäuser Bahnhof 8    | 99090 | 1946-01-05 | NULL                                                     |
	|        54 | Jolie         | Angelina        | Erichstr. 4                  | 80331 | 1975-06-04 | NULL                                                     |
	|        55 | Kerner        | Johannes B.     | Wilhelmstr. 8                | 23568 | 1964-12-09 | NULL                                                     |
	|        56 | Kerkeling     | Hape            | Papenstieg 17                | 14482 | 1964-12-09 | NULL                                                     |
	|        57 | Kidman        | Nicole          | Greitheweg 16                | 01099 | 1967-12-25 | NULL                                                     |
	|        58 | Kingsley      | Ben             | Koldinger Str. 19            | 50968 | 1943-12-31 | NULL                                                     |
	|        59 | Kier          | Udo             | Voltastr. 5                  | 21129 | 1944-10-14 | NULL                                                     |
	|        60 | Kline         | Kevin           | Wilksheide 74                | 66126 | 1947-10-24 | NULL                                                     |
	|        61 | MacLachlan    | Kyle            | Merianweg 39                 | 90427 | 1959-02-22 | NULL                                                     |
	|        62 | Lynch         | David           | Waldstr. 65 A                | 04319 | 1946-01-20 | NULL                                                     |
	|        63 | Norris        | Chuck           | Im Kleinen Bruche 21         | 23970 | 1940-03-10 | NULL                                                     |
	|        64 | Nolte         | Nick            | Perelsweg 10                 | 24105 | 1941-02-08 | NULL                                                     |
	|        65 | Nuhr          | Dieter          | Gradestr. 7                  | 55128 | 1960-10-29 | NULL                                                     |
	|        66 | Ohrt          | Christoph M.    | Ricklinger Stadtweg 10       | 80331 | 1960-03-30 | NULL                                                     |
	|        67 | Ochsenknecht  | Uwe             | Gradestr. 7                  | 55128 | 1956-01-07 | NULL                                                     |
	|        68 | Nimoy         | Leonard         | Blumenauer Str. 31           | 26121 | 1931-03-26 | NULL                                                     |
	|        69 | Olm           | Hans Werner     | Tulpenstr. 6                 | 89075 | 1955-02-01 | NULL                                                     |
	|        70 | Pacino        | Al              | Andersenstr. 11              | 40213 | 1940-04-25 | NULL                                                     |
	|        71 | Paltrow       | Gwyneth         | Hänselriede 11               | 39106 | 1972-09-28 | NULL                                                     |
	|        72 | Parker        | Sarah Jessica   | Uslarplatz 2                 | 99090 | 1965-03-25 | NULL                                                     |
	|        73 | Penn          | Sean            | Berliner Allee 68            | 26121 | 1960-08-17 | NULL                                                     |
	|        74 | Pastewka      | Bastian         | Badenstedter Str. 200        | 55128 | 1972-04-04 | NULL                                                     |
	|        75 | Russell       | Kurt            | Louise-Schroeder-Str. 3      | 40213 | 1951-03-17 | NULL                                                     |
	|        76 | Ryan          | Meg             | Schneiderberg 25             | 23970 | 1961-11-19 | NULL                                                     |
	|        77 | Rourke        | Mickey          | Ihmeplatz 8                  | 70599 | 1952-09-16 | NULL                                                     |
	|        78 | Sandler       | Adam            | Lutherstr. 26                | 12524 | 1966-09-09 | NULL                                                     |
	|        79 | Schmidt       | Harald          | Auwiese 15                   | 99090 | 1957-08-18 | NULL                                                     |
	|        80 | Sander        | Erol            | Tresckowstr. 16              | 01099 | 1968-11-09 | NULL                                                     |
	|        81 | Salzgeber     | Rainer M.       | Salfeldstr. 1                | 23970 | 1969-08-15 | NULL                                                     |
	|        82 | Sutherland    | Donald          | Leinaustr. 12                | 04319 | 1935-07-17 | NULL                                                     |
	|        83 | Sutherland    | Kiefer          | Lohkamp 7                    | 26316 | 1966-12-21 | NULL                                                     |
	|        84 | Stratham      | Jason           | Darwinstr. 4                 | 26316 | 1972-09-12 | NULL                                                     |
	|        85 | Damme         | Jean Claude van | Plauener Str. 25             | 66126 | 1960-10-18 | NULL                                                     |
	|        86 | Vaughn        | Vince           | Osterfelddamm 99             | 26316 | 1970-03-28 | NULL                                                     |
	|        87 | Hirschhausen  | Dr. Eckart von  | Döhrbruch 13                 | 39106 | 1967-08-25 | NULL                                                     |
	|        88 | Wagner        | Robert          | Im Großen Büchenfeld 8       | 28199 | 1930-02-10 | NULL                                                     |
	|        89 | Lippe         | Jürgen von der  | Heinrich-Meister-Allee 16    | 28199 | 1948-06-08 | NULL                                                     |
	|        90 | Walken        | Christopher     | Auerhahnhof 8                | 90427 | 1943-03-31 | NULL                                                     |
	|        91 | Wahlberg      | Mark            | Raabestr. 10                 | 01099 | 1971-06-05 | NULL                                                     |
	|        92 | Christoph     | Waltz           | Hägewiesen 18                | 14482 | 1956-10-04 | NULL                                                     |
	|        93 | Cage          | Nicolas         | Kokenstr. 1                  | 65183 | 1964-01-07 | Deutsche Presse-Agentur GmbH                             |
	|        94 | Busse         | Jochen          | Osteroder Weg 4              | 21129 | 1941-01-28 | DEUS GmbH & Co.KG Spedition Möbeltransport International |
	|        95 | Carrey        | Jim             | Schäferweg 8                 | 70599 | 1962-01-17 | C. W. Filmer                                             |
	|        96 | Cruz          | Penélope        | Moorhoffstr. 35              | 39106 | 1974-04-28 | C. F. Electronics                                        |
	|        97 | Cyrus         | Miley           | Im Kleinen Bruche 52         | 86159 | 1992-11-23 | Büsing & Fasch GmbH & Co.KG                              |
	|        98 | Garner        | Jennifer        | Kugelfangtrift 146           | 99090 | 1972-04-17 | BUG GmbH & Co. KG                                        |
	|        99 | Furtwängler   | Maria           | Ferdinand-Wallbrecht-Str. 78 | 14482 | 1966-09-13 | BTC Business Technology Consulting AG                    |
	|       100 | Hunt          | Helen           | In der Steinriede 7          | 66126 | 1963-06-15 | Buchhandlung Libretto                                    |
	|       101 | Johansson     | Scarlett Marie  | Helwingerodestr. 5           | 24105 | 1984-11-22 | Bruns Berufskleidung GmbH                                |
	+-----------+---------------+-----------------+------------------------------+-------+------------+----------------------------------------------------------+
	```

??? note "Beispiellösung zu 2."

	```sql
	-- Befehl
	SELECT *
	FROM tbl_bundesland;
	
	-- Ausgabe
	+--------------+------------------------+
	| bundeslandPK | bundeslandname         |
	+--------------+------------------------+
	| BB           | Brandenburg            |
	| BE           | Berlin                 |
	| BW           | Baden-Württemberg      |
	| BY           | Bayern                 |
	| HB           | Bremen                 |
	| HE           | Hessen                 |
	| HH           | Hamburg                |
	| MV           | Mecklemburg-Vorpommern |
	| NI           | Niedersachsen          |
	| NW           | Nordrhein-Westfalen    |
	| RP           | Rheinland-Pfalz        |
	| SH           | Schleswig-Holstein     |
	| SL           | Saarland               |
	| SN           | Sachsen                |
	| ST           | Sachsen-Anhalt         |
	| TH           | Thüringen              |
	+--------------+------------------------+
	```
	
??? note "Beispiellösung zu 3."

	```sql
	-- Befehl
	SELECT plzPK, ort
	FROM tbl_plz;
	
	-- Ausgabe
	+-------+-------------------+
	| plzPK | ort               |
	+-------+-------------------+
	| 01099 | Dresden           |
	| 04319 | Leipzig           |
	| 07554 | Gera              |
	| 12524 | Berlin            |
	| 14482 | Potsdam           |
	| 18059 | Rostock           |
	| 19053 | Schwerin          |
	| 21129 | Hamburg           |
	| 23568 | Lübeck            |
	| 23970 | Wismar            |
	| 24105 | Kiel              |
	| 26121 | Oldenburg         |
	| 26316 | Varel             |
	| 28199 | Bremen            |
	| 30559 | Hannover          |
	| 39106 | Magdeburg         |
	| 40213 | Düsseldorf        |
	| 50968 | Köln              |
	| 55128 | Mainz             |
	| 60329 | Frankfurt am Main |
	| 65183 | Wiesbaden         |
	| 66126 | Saarbrücken       |
	| 70599 | Stuttgart         |
	| 80331 | München           |
	| 86159 | Augsburg          |
	| 89075 | Ulm               |
	| 90427 | Nürnberg          |
	| 99090 | Erfurt            |
	+-------+-------------------+
	```

??? note "Beispiellösung zu 4."

	```sql
	-- Befehl
	SELECT *
	FROM tbl_verkaeufer
	WHERE nachname = 'Becker';

	-- Ausgabe
	+--------------+-----------+----------+-----------------------+-------+------------+--------------------+
	| verkaeuferPK | vorname   | nachname | anschrift             | plzFK | geburtstag | firma              |
	+--------------+-----------+----------+-----------------------+-------+------------+--------------------+
	|           38 | Charlotte | Becker   | Eggenfeldener Str. 64 | 26121 | 1983-05-19 | Waas-Online.de     |
	|           39 | Maritta   | Becker   | Mechthildenstr. 42    | 12524 | 1981-03-11 | PC Service Distler |
	+--------------+-----------+----------+-----------------------+-------+------------+--------------------+
	```

---

### Informationsmaterial M|6.0: SELECT

#### Grundlagen zu einfachen Datenabfragen (mit SELECT)

Für gezielte Abfragen der gespeicherten Daten in einer Datenbank wird in SQL die `SELECT`-Anweisung verwendet. Sie ist die komplexeste SQL-Anweisung, besitzt viele optionale Erweiterungen und wird in der Praxis am häufigsten genutzt.

Die `SELECT`-Anweisung ähnelt einer Frage bzw. Aufforderung an das Datenbanksystem, die gewünschten Daten zu liefern.

#### Beispiel - Datenbank zur Fußball-Bundesliga

In der Datenbank db_bundesliga sind die Tabellen *tbl_spieler*, *tbl_verein* und *tbl_position* angelegt. Der Aufbau sieht im ERM wie folgt aus:

![ERM Bundesliga](bilder/kap_06_db_bundesliga.png)

Die Tabelle *tbl_spieler* enthält dabei folgende Daten:

```
+-----------+--------------+-----------+----------+------------+-----------+------------+
| spielerPK | nachname     | vorname   | vereinFK | positionFK | rueckennr | geburtstag |
+-----------+--------------+-----------+----------+------------+-----------+------------+
|         1 | Weidenfeller | Roman     |        1 |          1 |         1 | 1980-08-06 |
|         2 | Martinez     | Javier    |        2 |          2 |         8 | 1988-09-02 |
|         3 | Fritz        | Clemens   |        3 |          2 |         8 | 1980-12-07 |
|         4 | Meyer        | Max       |        4 |          3 |        10 | 1995-09-18 |
|         5 | Sulejmani    | Valmir    |        5 |          4 |        38 | 1996-02-01 |
|         6 | Schulz       | Christian |        5 |          2 |        19 | 1983-04-01 |
|         7 | Reus         | Marco     |        1 |          3 |        11 | 1989-05-31 |
|         8 | Schmelzer    | Marcel    |        1 |          2 |        29 | 1988-01-22 |
+-----------+--------------+-----------+----------+------------+-----------+------------+
```

#### Aufbau der SQL-Abfrage

Jede SQL-Abfrage hat drei Hauptbefehle:

```
SELECT	(engl. auswählen)
FROM	(engl. von)
WHERE	(engl. wo)
```

Mit `FROM` wird die Tabelle ausgewählt, aus der die gewünschten Informationen stammen. Mit `SELECT` wird angegeben, welche Attribute (Spalten) hieraus in der Ergebnistabelle ausgegeben werden sollen. Zuletzt wird die optionale `WHERE`-Bedingung angegeben. Hierin können bestimmte Datensätze (Zeilen) ausgewählt werden. `WHERE` kann aus einer `SELECT`-Anweisung weggelassen werden, wenn alle Datensätze ausgegeben werden sollen.

#### Fortsetzung des Beispiels - Datenbank zur Fußball-Bundesliga

Wir wollen wissen, welche Spieler die Rückennummer 8 haben. Also hieße die SQL-Abfrage:

```sql
SELECT nachname, vorname, ruckennr	Welche Attribute (Spalten)?
FROM tbl_spieler	Aus welcher Tabelle?
WHERE rueckennr = 8;	Welche Datensätze (Zeilen)?
```
Ergebnis der SQL-Abfrage:

```
+----------+---------+-----------+
| nachname | vorname | rueckennr |
+----------+---------+-----------+
| Martinez | Javier  |         8 |
| Fritz    | Clemens |         8 |
+----------+---------+-----------+
```

#### Hinweise und weitere Informationen

- Wenn man alle Spalten einer Tabelle angezeigt haben möchte, kann man auch einfach ein `*` im `SELECT`-Teil einsetzen.
- Zeichenketten (Strings) wie zum Beispiel `'Schulz'` oder ein Datum `'1989-05-31'` setzt man in einfache Anführungszeichen.
- Es können Bedingungen so formuliert werden, dass keine Datensätze zurückgeliefert werden. Dann ist das Ergebnis eine leere Menge. So würde die im Beispiel genannte Suche mit der `WHERE`-Bedingung `vorname = 'Walter'` eine leere Tabelle ausgeben.
- Bei den Tabellennamen muss die Groß-/Kleinschreibung beachtet werden.
- Zur besseren Übersicht sollten die MySQL-Befehle immer in `GROSSBUCHSTABEN` geschrieben werden.
- Die Ergebnismenge kann z.B. mit `LIMIT 10` auf 10 Zeilen begrenzt werden.

!!! note "Zusätzliches Material, weitere Übungen & Tipps"

    Die folgenden Übungen und Tipps & Tricks dienen Ihrer persönlichen Wiederholung und Vorbereitung auf Klassenarbeiten, Prüfungen etc.<br><br>*Ich kann, weil ich will, was ich muss! (Immanuel Kant)*

## Übungen

### Übung UE|6.0: Vorbereitungen für die Übungen dieses Kapitels

Importieren Sie die db_universitaet neu aus der SQL-Datei (s.u.):

```sql
DROP DATABASE IF EXISTS db_universitaet;
CREATE DATABASE IF NOT EXISTS db_universitaet;
USE db_universitaet;

CREATE TABLE tbl_student (
	studentPK INT NOT NULL AUTO_INCREMENT,
	vorname VARCHAR(40),
	nachname VARCHAR(40),
	PRIMARY KEY (studentPK)
);

CREATE TABLE tbl_buch (
	buchPK INT NOT NULL AUTO_INCREMENT,
	titel VARCHAR(90),
	PRIMARY KEY (buchPK)
);

CREATE TABLE tbl_professor (
	professorPK INT NOT NULL AUTO_INCREMENT,
	vorname VARCHAR(40),
	nachname VARCHAR(40),
	PRIMARY KEY (professorPK)
);

CREATE TABLE tbl_vorlesung (
	vorlesungPK INT NOT NULL AUTO_INCREMENT,
	professorFK INT,
	titel VARCHAR(90),
	stundenanzahl INT,
	PRIMARY KEY (vorlesungPK),
	FOREIGN KEY (professorFK) REFERENCES tbl_professor (professorPK)
);

CREATE TABLE tbl_besucht (
	besuchtPK INT NOT NULL AUTO_INCREMENT,
	studentFK INT,
	vorlesungFK INT,
	PRIMARY KEY (besuchtPK),
	FOREIGN KEY (studentFK) REFERENCES tbl_student (studentPK),
	FOREIGN KEY (vorlesungFK) REFERENCES tbl_vorlesung (vorlesungPK)
);

CREATE TABLE tbl_benoetigt (
	benoetigtPK INT NOT NULL AUTO_INCREMENT,
	vorlesungFK INT,
	buchFK INT,
	PRIMARY KEY (benoetigtPK),
	FOREIGN KEY (vorlesungFK) REFERENCES tbl_vorlesung (vorlesungPK),
	FOREIGN KEY (buchFK) REFERENCES tbl_buch (buchPK)
);

INSERT INTO tbl_student (vorname, nachname) VALUES
	("Rainer", "Zufall"),
	("Robin", "Hutt");

INSERT INTO tbl_buch (titel) VALUES
	("Quantenphysik für Dummies"),
	("Kritik der reinen Vernunft");
	
INSERT INTO tbl_professor (vorname, nachname) VALUES
	("Andy", "Arbeit"),
	("Theo", "Rist");

INSERT INTO tbl_vorlesung (professorFK, titel, stundenanzahl) VALUES
	(1, "Einführung in die Quantenphysik", 4),
	(2, "Philosophie des Immanuel Kant", 2);
	
INSERT INTO tbl_benoetigt (vorlesungFK, buchFK) VALUES
	(1, 1),
	(2, 2);
	
INSERT INTO tbl_besucht (studentFK, vorlesungFK) VALUES
	(1, 1),
	(2, 1);
```

---

### Übung UE|6.1: Abfragen zur db_universitaet

Welche Abfragen sind notwendig?

1. Lassen Sie sich alle Professoren mit allen Attributen anzeigen.
2. Es wird für einen Serienbrief eine Liste der Vor- und Nachnamen aller Studenten benötigt.
3. Welche Vorlesungen werden angeboten?
4. Ein Student möchte Wissen, welche Buchtitel er für das Studium bestellen muss. Lassen Sie sich eine Liste aller Buchtitel ausgeben.
5. Zur Kontrolle der Datenbank soll die Tabelle tbl_benoetigt analysiert werden. Lassen Sie sich alle Attribute anzeigen. Beschreiben Sie die Funktion und Bedeutung der tbl_benoetigt im Rahmen der db_universitaet.

{%
   include-markdown "inhalte/lizenzhinweis.md"
   start="<!--include-start-->"
   end="<!--include-end-->"
%}