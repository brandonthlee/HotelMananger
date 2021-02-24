<?php
  session_start();
  include 'connect.php';
  $var_a = $_SESSION['a'];

  $conn = OpenCon();

  $sql = "SELECT HotelID, Room_num, From1, To1 FROM
  Reservation";
  $result = $conn->query($sql);
    echo "<table><tr><th class='border-class'>HotelID</th><th
  class='border-class'>Room_num</th><th class='border-class'>From</th><th
class='border-class'>To</th></tr>";
  // output data of each row
  while($row = $result->fetch_assoc()) {
  echo "<tr><td class='border-
  class'>".$row["HotelID"]."</td><td class='border-
  class'>".$row["Room_num"]."</td><td class='border-
  class'>".$row["From1"]."</td><td class='border-
  class'>".$row["To1"]."</td></tr>";
  }
  echo "</table>";
  if (array_key_exists('book', $_POST)) {
  $a = $_POST['In'];
  $b = $_POST['Out'];
  $c = $_POST['Hotel'];
  $d = $_POST['Room'];
  $e = $_POST['Card'];
  $f = $_POST['NumGuest'];
  $rand = rand(); 
  echo $a;
  echo $b;
  echo $c;
  echo $d;
  echo $e;
  echo $f;
  echo $rand;

    $sql = "INSERT INTO reservation(Reservation_num, From1, To1, GuestID, HotelID, CreditCard_num, NumGuest, Room_num)
    VALUES ('$rand', '$a', '$b', '$var_a', '$c', '$e', '$f', '$d')";
    $result = $conn->query($sql);
    header ("Location: Find.php");
  }

  CloseCon($conn);
  ?>

<form method="post" action="Find.php">

  <p>Check-In Date</p>

  <p><input name="In" type="date"  size="18"></p>

  <p>Check-Out Date</p>

  <p><input  name="Out" type="date" size="18"></p>

  <p>HotelID</p>

  <p><input name="Hotel" type="text"  size="18"></p>

  <p>Room Number</p>

  <p><input  name="Room" type="text" size="18"></p>

    <p>Creditcard Number</p>

    <p><input  name="Card" type="text" size="18"></p>


      <p>Number of Guests</p>

      <p><input  name="NumGuest" type="text" size="18"></p>

<input type="submit" value="book" name="book"></p>
   <!--  <p><input type="submit" value="Log In" name="login"></p> -->
  </form>

