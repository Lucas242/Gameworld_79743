// the navigation bar
 <ul>
   <li><a href="index.php">Home</a></li>
   <li><a href="about.php">About</a></li>
   <li><a href="contact.php">Contact</a></li>
   <li><a href="games.php">Games</a></li>
   <li><a href="checkout.php">Checkout</a></li>
 </ul>

<?php
$pages = array(
  array("home", "index.php"),
  array("about", "about.php"),
  array("contact", "contact.php"),
  array("games", "games.php"),
  array("Checkout", "checkout.php"),
);
?>
<ul>
    <?php
foreach($pages as $page)
{
  ?>
  <li><a href="<?php echo $page[1]; ?>"><?php echo $page[0];?></a></li>
  <?php
}
?>
</ul>
