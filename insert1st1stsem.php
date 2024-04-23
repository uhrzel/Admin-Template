<?php
// Include the database connection file
include 'conn.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $course_code = $_POST['course_code'];
    $course_name = $_POST['course_name'];
    $grade = $_POST['grade'];
    $instructor = $_POST['instructor'];

    // Prepare and bind SQL statement
    $stmt = $conn->prepare("INSERT INTO 1st_year_1st_semester (course_code, course_name, grade, instructor) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $course_code, $course_name, $grade, $instructor);

    // Execute the statement
    if ($stmt->execute() === TRUE) {
        // Close statement
        $stmt->close();

        // Return success response
        echo json_encode(["success" => true]);
        header('location: index.php');
    } else {
        // Error in execution
        echo json_encode(["error" => "Error: " . $stmt->error]);
    }

    // Close connection
    $conn->close();
} else {
    // Invalid request method
    echo json_encode(["error" => "Invalid request method"]);
}
