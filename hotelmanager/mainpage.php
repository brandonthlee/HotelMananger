<?php

   session_start();
   $_SESSION['a'];
?>

<html>
<html>
<head>
<style>
.button {
  background-color: 	#FFFF00; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}

.My_Account {
  background-color: white;
  color: black;
  border: 2px solid 	#FFFF00;
}

.My_Account:hover {
  background-color: #FF4500;
  color: white;
}

.button2 {
  background-color: white;
  color: black;
  border: 2px solid 	#FFFF00;
}

.button2:hover {
  background-color: 	#FF4500;
  color: white;
}

.button3 {
  background-color: white;
  color: black;
  border: 2px solid 	#FFFF00;
}

.button3:hover {
  background-color: #FF4500;
  color: white;
}
</style>
</head>

<h4><p>My Account: <?php
echo $_SESSION['a'];

?></p></h4>

<form method="POST" action="go_to_account.php">
<h1><button class="button My_Account" type="submit" value="My Account">My Account</button>
<!--   <p><input type="submit" value="My Account" name="My_Account"></p> -->
</form></h1>
<html>
<style> h1 {

  margin: auto;
  position: absolute;
  top: 400;
  left: 230;
  bottom: 0;
  right: 0;
  height: 140px;
}
  </style>
  </html>

<h2><form method="POST" action="Find.php">
   <!-- <p><input type="submit" value="Find a Hotel" name="find"></p> -->
   <button class="button button2">Booking</button>
</form><h2>
  <html>
  <style> h2 {

    margin: auto;
    position: absolute;
    top: 120;
    left: 230;
    bottom: 0;
    right: 0;
    height: 0px;
  }
    </style>
    </html>

<h3><form method="POST" action="My_booking.php">
<!--   <p><input type="submit" value="My Bookings" name="Bookings"></p> -->
<button class="button button3"> My Bookings</button>
</form><h3>
<html>
<style> h3 {

  margin: auto;
  position: absolute;
  top: 400;
  left: 230;
  bottom: 0;
  right: 0;
  height: 0px;
}

h4 {
  font-family: Raleway, "Open Sans", sans-serif;
  font-size: 20px;
  color: white;
}

body {
background-image: url("http://getwallpapers.com/wallpaper/full/1/4/4/14669.jpg");
background-size:  1500px;
width : 800px;
height : 600px;
}
  </style>
  <html>

 
