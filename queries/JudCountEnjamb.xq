(: analyse enjambements in Judita :)
for $n in 1 to 6
let $report := element c { attribute n { $n} ,
for $d in db:open("mar-enj")//*:div[@type="canto" and @n=$n]/*:l
let $l := $d/@enjamb
group by $l
return element e { $l , count($d) }
}
return $report