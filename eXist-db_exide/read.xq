xquery version "3.0";


(:read :)
for $x in doc("/db/TestCollection/data/0.xml")/duplicate
order by $x/data
return $x/data

