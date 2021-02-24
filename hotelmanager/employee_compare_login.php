<?php
session_start();
include 'connect.php';
//if (isset($_POST['email'])) {
$e = $_POST['EID'];

$_SESSION['e'] = $e;

$p = $_POST['PW'];
$conn = OpenCon();
$sql = "SELECT Employee_num, Password FROM
employee WHERE Employee_num = '$e' AND Password = '$p'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  header ("Location: employee_mainpage.php");}
else {
  echo "failed";
  header("Location: employee_login.php");

  exit;
}
 ?>
 <a href="employee_mainpage.php" title=""></a>
 <a href="manage.php" title="1"></a>