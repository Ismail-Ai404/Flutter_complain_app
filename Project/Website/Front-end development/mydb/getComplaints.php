<?php
require('connection.php');
$makequery = "SELECT * from tblcomplaints ";
$statement = $connection->prepare($makequery);
$statement->execute();
$myarray = array();
while ($resultsFrom = $statement->fetch()) {
    array_push($myarray, $resultsFrom);
}
echo json_encode($myarray);
