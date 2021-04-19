(: create a db of Davidias and Judita with annotated enjambements :)
let $files := ("marulic_judita_lucin_tekst-enjambement.xml")
let $path := replace(file:parent(static-base-uri()), 'queries/', $files) 
return db:create("mar-enj", $path, (), map { 'ftindex': true(), 'intparse' : true(), 'chop' : false() })