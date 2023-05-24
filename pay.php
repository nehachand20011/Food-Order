<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>checkout</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
<?php

@include 'config.php';?>
<?php
@include 'setting.php';?>
<?php include 'header.php'; ?>

<div class="container">

<section class="checkout-form">

   <h1 class="heading">complete your payment</h1>

   <form action="" method="post">

   <div class="display-order">
      <?php
         $select_cart = mysqli_query($conn, "SELECT * FROM `cart`");
         $total = 0;
         $grand_total = 0;
         if(mysqli_num_rows($select_cart) > 0){
            while($fetch_cart = mysqli_fetch_assoc($select_cart)){
            $total_price = number_format($fetch_cart['price'] * $fetch_cart['quantity']);
            $grand_total = $total + $total_price;
      ?>
      <span><?= $fetch_cart['name']; ?>(<?= $fetch_cart['quantity']; ?>)</span>
      <?php
         }
      }else{
         echo "<div class='display-order'><span>your cart is empty!</span></div>";
      }
      ?>
      <span class="grand-total"> grand total : Rs.<?= $grand_total; ?>/- </span>
   </div>
   </form>

<!DOCTYPE html>
<html>
<head>
	<title>Checkout Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</head>
<body>
					<div class="col-md-6">
						<h3><centre>Pay With<centre></h3>
						<ul class="list-group">
							<li class="list-group-item">
								<form action="<?php echo $epay_url?>" method="POST">
									<input value="<?php echo $total;?>" name="tAmt" type="hidden">
									<input value="<?php echo $total;?>" name="amt" type="hidden">
									<input value="0" name="txAmt" type="hidden">
									<input value="0" name="psc" type="hidden">
									<input value="0" name="pdc" type="hidden">
									<input value=<?php echo $merchant_code?> name="scd" type="hidden">
									<input value="<?php echo $pid?>" name="pid" type="hidden">
									<input value="<?php echo $successurl?>" type="hidden" name="su">
									<input value="<?php echo $failedurl?>" type="hidden" name="fu">
									<input type="image" src="images/esewa.png">
									<body>

    </form>
</body>
								</ul>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</body>
	</html>
</section>

</div>

<!-- custom js file link  -->
<script src="js/script.js"></script>
   
</body>
</html>