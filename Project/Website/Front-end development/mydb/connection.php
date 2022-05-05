<?php

try {
    $connection = new PDO('mysql:host=localhost,dbname=id18887272_cmsusers', 'id18887272_users', '12345@Dihan@');
    $connection->setAttribute(PDO::ATTR_ERRMODE, POD::ERRMODE_EXCEPTION);
    echo "yes connected";
} catch (PODException $exc) {
    echo $exc->getMessage();
    die("Could not connect");
}
