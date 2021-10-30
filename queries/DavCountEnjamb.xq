(: analyse enjambements in Davidias :)
let $csv := element csv {
for $n in (1, 2, 7, 8, 9, 13, 14)
let $report := element r { attribute n { $n} ,
for $d in db:open("mar-enj-dav")//*:div[@n=$n]/*:l
let $l := $d/@enjamb
group by $l
return 
element c { $l , " : " , count($d) } 
}
return $report
}
return $csv