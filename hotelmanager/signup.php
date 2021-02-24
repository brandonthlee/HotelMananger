<?php
session_start();
include 'connect.php';
//if (isset($_POST['email'])) {
$n = $_POST['n'];
$id = $_POST['id'];
$ad = $_POST['ad'];
$p = $_POST['p'];
$rand = rand();

$conn = OpenCon();
$sql = "INSERT INTO guest(GuestID, Name, ID, Address, Phone)
VALUES('$rand', '$n', '$id', '$ad', '$p')";
$result = $conn->query($sql);
  header ("Location: mainpage.php");
  exit;

 ?>
 <a href="mainpage.php" title=""></a>
 <a href="go_to_account.php" title="1"></a>
 <a href="My_booking.php" title="1"></a>
 <a href="Find.php" title="1"></a>