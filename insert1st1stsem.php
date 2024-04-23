<?php
// Include the database connection file
include 'conn.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $course_code = $_POST['course_code'];
    $course_name = $_POST['course_name'];
    $grade = $_POST['grade'];
    $instructor = $_POST['instructor'];

    try {
        // Prepare SQL statement
        $stmt = $conn->prepare("INSERT INTO 1st_year_1st_semester (course_code, course_name, grade, instructor) VALUES (:course_code, :course_name, :grade, :instructor)");

        // Bind parameters
        $stmt->bindParam(':course_code', $course_code);
        $stmt->bindParam(':course_name', $course_name);
        $stmt->bindParam(':grade', $grade);
        $stmt->bindParam(':instructor', $instructor);

        // Execute the statement
        if ($stmt->execute()) {
            // Return success response
            header('location: index.php');
            exit;
        } else {
            // Error in execution
            echo json_encode(["error" => "Error executing the statement"]);
        }
    } catch (PDOException $e) {
        // Error in execution
        echo json_encode(["error" => "Error: " . $e->getMessage()]);
    }

    // Close connection
    $conn = null;
} else {
    // Invalid request method
    echo json_encode(["error" => "Invalid request method"]);
}
