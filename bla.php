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

for($counter = 1; $counter <= 100; $counter++)
{
  echo $counter;
  echo "<br />";
}


echo "<pre>";
var_dump($games);
echo "</pre>";




for($x = 0; $x < count($games); $x++)
{
  echo $games[$x]['gameTitle'];
  echo "<br />";
}

echo "<hr />";

foreach($games as $game)
{
  echo $game['gameId'];
  echo "<br />";
}

mysqli_close($con);
 ?>
 <img src="img/covers/<?php echo $games[2]["gameImage"]; ?>" alt="">
