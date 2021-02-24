<?php
session_start();
include 'connect.php';
//if (isset($_POST['email'])) {
$a = $_POST['ID'];

$_SESSION['a'] = $a;

$b = $_POST['P'];
$conn = OpenCon();
$sql = "SELECT GuestID, Phone FROM
guest WHERE GuestID = '$a' AND Phone = '$b'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  header ("Location: mainpage.php");}
else {
  echo "failed";
  header("Location: loginfail.html");

  exit;
}

 ?>
 <a href="mainpage.php" title=""></a>
 <a href="go_to_account.php" title="1"></a>
 <a href="My_booking.php" title="1"></a>
 <a href="Find.php" title="1"></a>