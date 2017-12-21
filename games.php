<?php
	include 'inc/header.php';
	// include database connection
	include 'inc/connectDB.php';

 ?>
 <div class="checkout-container">
 <form class="" action="checkout.php" method="POST">



	 <?php

	   foreach($games as $game) {
	 ?>


	 <div class="product-block">
		 <img src="img/covers/<?php echo $game['gameImage']; ?>" width="200" height="100" alt="">
		 <h3 class="gamePrice">&euro;<?php echo $game['gamePrice']; ?></h3>
		 <div class="descr">
			 <h3><?php echo $game['gameTitle']; ?></h3>
		 </div>
		 <div class="categoryName">
		 	<h3><?php echo $game['CategoryName']; ?></h3>
		 </div>
		 <div class="order">
		 <h3>To Shopping Cart</h3>
		 <div class="checkbox">
		 <input type="checkbox" name="selectedIds" value="<?php echo $game['gameId']; ?>" />
	 </div>
		 </div>
	 </div>
 <?php
 }
 ?>
 <input type="submit" name="myButton" value="Order!" />

 	 </form>
 </div>
</body>
</html>
 <?php
 	include 'inc/footer.php';
  ?>
