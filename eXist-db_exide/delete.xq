xquery version "3.0";
declare option exist:serialize "method=xhtml media-type=text/html indent=yes";

let $data-collection := '/db/TestCollection/data'

(: replace ID for any ID in data:)
let $id := 'ID'
(: this script takes the integer value of the id parameter passed via get :)
(:   let $id := request:get-parameter('id', '') :)

(: this logs you into the collection :)
let $login := xmldb:login($data-collection, 'admin', 'pass')

(: this constructs the filename from the id :)
let $file := concat($id, '.xml')

(: this deletes the file :)
let $store := xmldb:remove($data-collection, $file)

return
<html>
    <head>
        <title>Delete Term</title>
    </head>
    <body>
        <h1>Term id {$id} has been removed.</h1>
    </body>
</html>