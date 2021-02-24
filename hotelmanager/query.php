<?php
include 'connect.php';
$conn = OpenCon();
$a = '123@gmail.com';
$b = '123';
$sql = "SELECT Email, pw FROM
Info WHERE Email = '$a' AND pw = '$b'";
$result = $conn->query($sql);

if (!$result) {
    trigger_error('Invalid query: ' . $conn->error);
}
if ($result->num_rows > 0) {
echo "<table><tr><th class='border-class'>Email</th><th
class='border-class'>pw</th></tr>";
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td class='border-
class'>".$row["Email"]."</td><td class='border-
class'>".$row["pw"]."</td></tr>";
}
echo "</table>";
} else {
echo "0 results";
}
CloseCon($conn);
?>
