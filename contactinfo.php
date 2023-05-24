<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>shopping cart</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
</head>
<body>
<?php
include 'config.php';?>
<?php
$fullname=$_POST['fullname'];
$email=$_POST['email'];
$tellus=$_POST['tell-us'];
if(!$conn)
{
    die("Mysql connection failed :".mysqli_connect_error());
}
$sql="insert into contactus(fullname,email,tellus)values('$fullname','$email','$tellus')";
include 'header.php';
if(mysqli_query($conn,$sql)){ 
    echo"
    <centre><h1>Thank you for your valuable feedback</h1><centre> ";
    echo "<h2><b> Dear, $fullname,</b>"."<br><h2>";
    echo"<h2>Sorry for the inconvince.</h2>";
    echo"<h2>We will try to solve your issue as soon as possible.</h2>";
    echo"<h2>Stay connected with us.</h2>";
}
else{
    echo"Error:".$sql. "<br>" .mysqli_error($conn);
}
mysqli_close($conn);
?>
</body>
<script src="js/script.js"></script>
<?php
include 'footer.php'?>
</html>
