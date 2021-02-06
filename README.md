# README #

Annotated XML files and queries for comparing enjambements in two poems by Marko Marulić (Split, 1450–1524): the Judita (in Croatian, 1501, first printed in 1521) and the Davidias (in Latin, written around 1517, first edition 1954).

Annotated by [Neven Jovanović](https://orcid.org/0000-0002-9119-399X).

# Annotation principles #

The /Judita/ is annotated throughout (Jud., 6 Cantos, 2126 verses). From the /Davidias/ (Dav., 14 Cantos, 6765 verses) I annotated a sample containing Cantos 1, 2, 8, 9, 13 and 14 (2849 verses).

We distinguish four levels of enjambements.

1. No enjambement, no annotation
2. Verse end falls between a clause and its expanding phrase (its non-essential extension); annotated by `@enjamb="3"`
3. Verse end separates the essential parts of one and the same clause (subject from verb etc); annotated by `@enjamb="4a"`
4. Verse end separates parts of one and the same phrase (attribute from noun etc); annotated by `@enjamb="4b"`

# How to use? #

* The annotated texts (TEI XML) are in the repository. Judita = [marulic_judita_lucin_tekst-enjambement.xml](marulic_judita_lucin_tekst-enjambement.xml), Davidias = [marul-mar-dauid-enjambement.xml](marul-mar-dauid-enjambement.xml)

Open the files in an XML editor, analyze them with XPath or XQuery.

# Retrieving information by XPath expressions #

Use an XPath processor, for example in [oXygen XML Editor](https://www.oxygenxml.com/doc/versions/23.0/ug-editor/topics/running-xpath-expressions.html)

Find all verses in the annotated subset of Dav.

```xpath
//div[@n=(1,2,8,9,13,14)]/l
```

Find all annotated enjambements in the subset of Dav.

```xpath
//div[@n=(1,2,8,9,13,14)]/l[@enjamb]
```

Find all annotated enjambements of type 4b in the subset of Dav.

```xpath
//div[@n=(1,2,8,9,13,14)]/l[@enjamb="4b"]
```

# License #

[CC Attribution 4.0 International](LICENSE.md)

(https://github.com/frej/fast-export)) on 2018-08-24.


# Sources #

The edition of Judita was prepared by Bratislav Lučin for Hrvatski stihovi i proza / Marko Marulić ; priredio i transkribirao Bratislav Lučin, Zagreb : Matica hrvatska, 2018. (Stoljeća hrvatske književnosti ; knj. 137). The XML edition was prepared by Neven Jovanović.

The edition of Davidias, based on Gortan 1984 = Davidijada / Marko Marulić ; preveo i komentirao Branimir Glavičić ; latinski tekst priredio Veljko Gortan, Split : Književni krug, 1984. (Splitski književni krug. Humanisti ; knj. 4, sv. 2). The XML edition was prepared by Neven Jovanović and included in the [Croatiae auctores Latini](http://croala.ffzg.unizg.hr) digital collection.

# Who do I talk to? #

* Repo owner: [Neven Jovanović](https://orcid.org/0000-0002-9119-399X)

# Preliminary results #

## Judita ##

2126 verses, 1521 enjambements: 950 type 3, 458 type 4a, 110 type 4b

 
## Davidias ##

2849 verses in the sample, 2237 enjambements: 704 type 3
