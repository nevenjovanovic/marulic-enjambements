# README #

Annotated XML files and queries for comparing enjambements in two poems by Marko Marulić (Split, 1450–1524): the *Judita* (in Croatian, 1501, first printed in 1521) and the *Davidias* (in Latin, written around 1517, first edition 1954).

Annotated by [Neven Jovanović](https://orcid.org/0000-0002-9119-399X).

Published on Zenodo.  [![DOI](https://zenodo.org/badge/336521231.svg)](https://zenodo.org/badge/latestdoi/336521231)

# Usporedba opkoračenja u Juditi i Davidijadi

Na stilsku vrijednost opkoračenja u Juditi upozorili su Petar Skok 1950. (»prema uzoru latinskog slobodnog poretka u stihovima Marulić je dobio... mnoštvo enjambementa, koji su sasvim neprirodni u hrvatskim stihovima«) te, tridesetak godina kasnije, Svetozar Petrović (»pojedinačni primjeri opkoračenja u Marulićevoj Juditi najčešće se predstavljaju kao sredstvo nekog retoričkog efekta... Marulićeva upotreba opkoračenja je pažljivo zamišljen postupak«). Istražit ću koliko se i kako Marulić koristi opkoračenjima u Davidijadi, a koliko i kako u Juditi. Pritom ću definirati i primjerima prikazati vrste razmatranih opkoračenja (tri glavne skupine, od kojih najizraženija opkoračenja imaju dvije podskupine) i izvijestiti o »mapi« Marulićevih opkoračenja, nastaloj obilježavanjem digitalnih tekstova Judite i Davidijade. Pretpostavljam da su, sukladno uzusu poezije na latinskom, sve vrste opkoračenja prisutnije u Davidijadi nego u Juditi; želim provjeriti proturječne tvrdnje Skoka i Petrovića. U 2126 stihova Judite zabilježio sam 1522 opkoračenja (71,6%), dok u ukupno 3338 analiziranih stihova Davidijade zapažam 2624 opkoračenja (78,6%). No, prave spoznaje o stilskoj vrijednosti dat će tek pomno čitanje i raščlamba.

# A comparison of enjambment in Judita and Davidias

Enjambment in Judita has stylistic value, as noted by Petar Skok in 1950 (“following the model of Latin word order in his verses, Marulić produced... an abundance of enjambments, which are quite unnatural in Croatian verse”) and, some thirty years later, by Svetozar Petrović
(“individual instances of enjambment in Marulić's Judita generally turn out to be means of a rhetorical effect... Marulić uses enjambement thoughtfully and by design”). I will report how, and
to what extent, Marulić uses enjambment in the Davidias and in the Judita. To do so, I will also define and provide examples of enjambment, which can be divided into three groups (with the most marked one further divided into two subgroups), and present a digital map of Marulić's enjambements; the map is obtained by annotating instances of enjambment in the two poems. My hypothesis is that, according to literary conventions of poetry in Latin, there is more
enjambment (of all kinds) in the Davidias than in Judita; I also want to verify the (somewhat contradictory) views of Skok and Petrović. An analysis finds 1522 enjambments in the 2126 verses of Judita (71,6%), and 2624 enjambements in the 3338 analyzed verses of the Davidias. Relevant conclusions, however, can be reached only by close reading and the comparison and interpretation of individual occurrences in their contexts.

## Literatura

+ Glavičić, Branimir. Versifikacija hrvatskih latinista. Split : Književni krug, 2001 (Biblioteka znanstvenih djela ; 113).
+ Petrović, Svetozar. "Opkoračenje u srpskohrvatskom stihu: postojana podloga", Oblik i smisao, Novi Sad : Matica srpska, 1986, 231-246.
+ Skok, Petar. "O stilu Marulićeve Judite", Zbornik u proslavu petstogodišnjice rođenja Marka. Marulića 1450—1950, Djela JAZU, knj. 39, Zagreb 1950, 167-241.

## Digital sources

A digital version of Judita is available for search (through Philologic 4 interface) in a [collection of works in Croatian by Marulić and Petar Hektorović](http://solr.ffzg.hr/philo4/hrvatski/).

A digital version of the Davidias (and other Latin poems by Marulić) is published in the [Croatiae auctores Latini](http://croala.ffzg.unizg.hr) digital collection.


# Annotation principles #

The *Judita* is annotated throughout (Jud., 6 Cantos, 2126 verses). From the *Davidias* (Dav., 14 Cantos, 6764 verses) I annotated a sample containing Cantos 1, 2, 7, 8, 9, 13, 14 (3338 verses, some 49% of the total number).

We distinguish four levels of enjambements.

1. No enjambement, no annotation
2. Verse end falls between a clause and its expanding phrase (its non-essential extension); annotated by `@enjamb="1"`
3. Verse end separates the essential parts of one and the same clause (subject from verb etc); annotated by `@enjamb="2a"`
4. Verse end separates parts of one and the same phrase (attribute from noun etc), verse end falling between constituents between which strong cohesion obtains; annotated by `@enjamb="2b"`

# Preliminary results #

Enjambment in Dav. (annotated): 2624 of 3338 = **78,6%**  
Enjambent in all Jud.: 1522 of 2126 = **71,6%**

| Enjambent type | Jud. | Dav. |
|---- |--- |--- |
| type 0 | 604 / 28% | 714 / 22% |
| type 1 | 1131 / 53% | 823 / 24,6% |
| type 2a | 339 / 16% | 1106 / 33% |
| type 2b | 52 / 2,4% | 695 / 21% |


See more updates and details on the special [results page](results.md).


# How to use? #

* The annotated texts (TEI XML) are in the repository. 
* Judita = [marulic_judita_lucin_tekst-enjambement.xml](marulic_judita_lucin_tekst-enjambement.xml)
* Davidias = [marul-mar-dauid-enjambement.xml](marul-mar-dauid-enjambement.xml)

Open the files in an XML editor, analyze them with XPath or XQuery.

# Retrieving information by XPath expressions #

Use an XPath processor, for example in [oXygen XML Editor](https://www.oxygenxml.com/doc/versions/23.0/ug-editor/topics/running-xpath-expressions.html)

Find all verses in the annotated subset of Dav.

```xpath
//div[@n=(1,2,7,8,9)]/l
```

Find all annotated enjambements in the subset of Dav.

```xpath
//div[@n=(1,2,7,8,9)]/l[@enjamb]
```

Find all annotated enjambements of type 2b in the subset of Dav.

```xpath
//div[@n=(1,2,7,8,9)]/l[@enjamb="2b"]
```

# License #

[CC Attribution 4.0 International](LICENSE.md)



# Sources #

The edition of Judita was prepared by Bratislav Lučin for the book *Hrvatski stihovi i proza* / Marko Marulić ; priredio i transkribirao Bratislav Lučin, Zagreb : Matica hrvatska, 2018. (Stoljeća hrvatske književnosti ; knj. 137). The XML edition was prepared by Neven Jovanović.

The edition of Davidias, based on Gortan 1984 = *Davidijada* / Marko Marulić ; preveo i komentirao Branimir Glavičić ; latinski tekst priredio Veljko Gortan, Split : Književni krug, 1984. (Splitski književni krug. Humanisti ; knj. 4, sv. 2). The XML edition was prepared by Neven Jovanović and included in the [Croatiae auctores Latini](http://croala.ffzg.unizg.hr) digital collection.

# Who do I talk to? #

* Repo owner: [Neven Jovanović](https://orcid.org/0000-0002-9119-399X)


