(: create a db of Davidias with annotated enjambements :)
let $files := ("marul-mar-dauid-enjambement.xml")
let $path := replace(file:parent(static-base-uri()), 'queries/', $files) 
return db:create("mar-enj-dav", $path, (), map { 'ftindex': true(), 'intparse' : true(), 'chop' : false() })