<?php
include 'conn.php';

// Check if form data is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $course_id = $_POST['course_id'];
    $course_code = $_POST['course_code'];
    $course_name = $_POST['course_name'];
    $grade = $_POST['grade'];
    $instructor = $_POST['instructor'];

    // Update the course information in the database
    $sql = "UPDATE 1st_year_1st_semester SET course_code='$course_code', course_name='$course_name', grade='$grade', instructor='$instructor' WHERE id='$course_id'";

    if ($conn->query($sql) === TRUE) {
        echo "Course information updated successfully";
    } else {
        echo "Error updating course information: " . $conn->error;
    }
}

// Close the database connection
$conn->close();
