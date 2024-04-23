<?php

$servername = "localhost";
$username = "root";
$password = "arzelzolina10";
$database = "benjamin-a-martinez-jr-checklist";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
