<?php
$con=mysqli_connect("localhost","root","","gameworld");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

  $games = array();

  $sql = "select * from games";

  $resource = mysqli_query($con,$sql);

  while($row = mysqli_fetch_assoc($resource))
  {
    $games[] = $row;
  }
?>
