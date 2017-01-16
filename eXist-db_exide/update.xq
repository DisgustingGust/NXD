xquery version "3.0";

declare option exist:serialize "method=xhtml media-type=text/html indent=yes";

let $title := 'Update Confirmation'
let $data-collection := '/db/TestCollection/data'

(: replace ID for any ID in data:)
let $item := doc('/db/TestCollection/data/ID.xml')
(: this is where the form "POSTS" documents to this XQuery using the POST method of a submission :)
(:  let $item := request:get-data() :)

(: this logs you into the collection :)
let $login := xmldb:login($data-collection, 'admin', 'myadminpassword')

(: get the id out of the posted document :)
let $id := $item/id/text()

let $file := concat($id, '.xml')

(: this saves the new file and overwrites the old one :)
let $store := xmldb:store($data-collection, $file, $item)

return
<html>
    <head>
       <title>{$title}</title>
    </head>
    <body>
    <h1>{$title}</h1>
    <p>Item {$id} has been updated.</p>
    </body>
</html>