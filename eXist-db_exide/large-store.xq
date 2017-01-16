xquery version "3.0";

(: Set the absolute file path appropriate for your OS :)

import module namespace xmldb="http://exist-db.org/xquery/xmldb";

let $time1 := current-dateTime()

let $source-directory :=
    '/home/rm/externalxmldata'
let $target-collection :=
    '/db/TestCollection/externalxmldata'

let $first-time := xmldb:store-files-from-pattern($target-collection, $source-directory, '*.xml')

return <results>
     <message>{seconds-from-dateTime($time1)}</message>
  </results>xquery version "3.0";

(: Set the absolute file path appropriate for your OS :)

import module namespace xmldb="http://exist-db.org/xquery/xmldb";

let $time1 := current-dateTime()

let $source-directory :=
    '/home/rm/externalxmldata'
let $target-collection :=
    '/db/TestCollection/externalxmldata'

let $first-time := xmldb:store-files-from-pattern($target-collection, $source-directory, '*.xml')

return <results>
     <message>{seconds-from-dateTime($time1)}</message>
  </results>