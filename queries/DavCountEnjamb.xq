(: analyse enjambements in Davidias :)
for $n in (1, 2, 7, 8, 9)
let $report := element c { attribute n { $n} ,
for $d in db:open("mar-enj-dav")//*:div[@n=$n]/*:l
let $l := $d/@enjamb
group by $l
return element e { $l , count($d) }
}
return $report