
<?php
session_start();
$var_a = $_SESSION['a'];
include 'connect.php';

$conn = OpenCon();
$sql = "SELECT GuestID, Name, Address, Phone FROM
guest WHERE GuestID = '$var_a'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  echo "<table><tr><th class='border-class'>GuestID</th><th
class='border-class'>Name</th><th class='border-class'>Address</th><th
class='border-class'>Phone</th></tr>";
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td class='border-
class'>".$row["GuestID"]."</td><td class='border-
class'>".$row["Name"]."</td><td class='border-
class'>".$row["Address"]."</td><td class='border-
class'>".$row["Phone"]."</td></tr>";
}
echo "</table>";
} else {
echo "0 results";
}

if (array_key_exists('updatesubmit', $_POST)) {
$newNo = $_POST['newNumber'];
$sql = "UPDATE Guest
SET phone = '$newNo'
WHERE GuestID = '$var_a'";
$result = $conn->query($sql);
header ("Location: go_to_account.php");
}

CloseCon($conn);
?>

<p>New Phone Number</p>
<form method="POST" action="go_to_account.php">

<p><input type="text" name="newNumber" size="18">
<input type="submit" value="update" name="updatesubmit"></p>

<html>
<style>
    table {
        width: 100%;
        height: 30%;
        border: 1px solid black;
    }

    th {
        font-family: Arial, Helvetica, sans-serif;
        font-size: .7em;
        background: #3b5998;
        color: #FFF;
        padding: 2px 6px;
        border-collapse: separate;
        border: 1px solid #000;
    }

    td {
        font-family: Arial, Helvetica, sans-serif;
        font-size: .7em;
        border: 1px solid #000000;
        color: black;
    }
</style>
</html>
