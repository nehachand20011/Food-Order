<header class="header">

   <div class="flex">

   <a href="#" class="logo">Organic</a>


      <nav class="navbar">
         <a href="login.php">add products</a>
         <a href="products.php">view products</a>
         <?php 
      $select_rows = mysqli_query($conn, "SELECT * FROM `cart`") or die('query failed');
      $row_count = mysqli_num_rows($select_rows);
      ?>
      <a href="cart.php" class="cart">Cart <span><?php echo $row_count; ?></span> </a>
      <?php
      $select_rows = mysqli_query($conn, "SELECT * FROM `wishlist`") or die('query failed');
      $row_count = mysqli_num_rows($select_rows);
      ?>
    
      
     <a href="wishlist.php" class="wishlist">wishlist <span><?php echo $row_count; ?></span> </a>
     


      <div id="menu-btn" class="fas fa-bars"></div>
      </nav>

   </div>

</header>