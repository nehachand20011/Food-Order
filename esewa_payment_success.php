<?php 
include 'setting.php';
echo "<h1> Payment Success. Thank you for choosing us.";
$oid=$_GET['oid'];
$amt=$_GET['amt'];
$ref=$_GET['refId'];
echo "<br>";
echo "Order ID: ".$oid."<br>";
echo "Amount:".$amt."<br>";
echo "Reference:".$ref."<br>";
?>
