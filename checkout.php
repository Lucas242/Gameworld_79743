<?php
	include 'inc/header.php';

	include 'inc/connectDB.php';
 ?>

 <?php
 // checkout.php

 session_start();

 require("inc/connectDB.php");

 $totalPrice = 0;

 $connect = connectDB();
 $rows = array();
 foreach ($_SESSION["myselectedids"] as $value)
 {
 	$sql = "SELECT * FROM games WHERE gameId = " . $value;
 	$result = $connect->query($sql);
 	$rows[] = $result->fetch_all(MYSQLI_ASSOC);
 }
 ?>
 	<?php
 	include("inc/header.php");
 	?>
 	<div class="productList">
 		<table>
 			<thead>
 				<tr>
 					<th>
 						image
 					</th>
 					<th width="150px">
 						Name
 					</th>
 					<th>
 						Description
 					</th>
 					<th>
 						Price
 					</th>
 				</tr>
 			</thead>
 			<tbody>
 				<?php
 				if(count($rows) < 1)
 				{
 					?>
 					<tr>
 						<td colspan="4">Your cart is empty!</td>
 					</tr>
 					<?php
 				}
 				else
 				{
 					foreach($rows as $game)
 					{
 						?>
 						<tr>
 							<td><?php echo '<div class="product-container"  style="background: url(\''.$game[0]["gameImage"].'\') no-repeat  center center ; background-size:cover">'?></td>
 							<td><?php echo $game[0]["gameTitle"]; ?></td>
 							<td><?php echo $game[0]["GameDescription"]; ?></td>
 							<td>€<?php echo $game[0]["Gameprice"]; ?></td>
 						</tr>
 						<?php
 					}
 				}
 				?>


 			</tbody>
 			<tr>
 				<td><form action="inc/clear.php" method="post">
 					<input class="button" type="submit" name="clearSession" value="Clear cart" style="height: 50px;"/>
 				</form></td>
 				<td></td>
 				<td class="total-price1">Total price:</td>
 				<?php
 				foreach($rows as $game)
 				{
 					$totalPrice += $game[0]['Gameprice'] ;
 				}

 				?>
 				<td id="Total-price">€<?php echo $totalPrice?></td>
 			</tr>
 		</table>
 	</div>

 	<?php
 	include("inc/footer.php")
 	?>
 </body>
 </html>

 <?php
 	include 'inc/footer.php';
  ?>
