<?php
session_start();
$var_a = $_SESSION['a'];
include 'connect.php';

$conn = OpenCon();
$sql = "SELECT Reservation_num, From1, To1, HotelID, NumGuest FROM
reservation WHERE GuestID = '$var_a'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  echo "<table><tr><th
class='border-class'>Reservation_num</th><th
class='border-class'>From1</th><th
class='border-class'>To1</th><th
class='border-class'>HotelID</th><th
class='border-class'>NumGuest</th></tr>";
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td class='border-
class'>".$row["Reservation_num"]."</td><td class='border-
class'>".$row["From1"]."</td><td class='border-
class'>".$row["To1"]."</td><td class='border-
class'>".$row["HotelID"]."</td><td class='border-
class'>".$row["NumGuest"]."</td></tr>";
}
echo "</table>";
} else {
echo "0 results";
}

CloseCon($conn);
?>

<html>
<style>
    table {
        width: 100%;
        height: 60%;
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
