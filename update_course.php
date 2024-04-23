<?php
include 'conn.php';

// Check if form data is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['edit_btn'])) {
        // Retrieve form data
        $course_id = $_POST['course_id'];
        $course_code = $_POST['course_code'];
        $course_name = $_POST['course_name'];
        $grade = $_POST['grade'];
        $instructor = $_POST['instructor'];

        try {
            // Prepare SQL statement
            $stmt = $conn->prepare("UPDATE 1st_year_1st_semester SET course_code=:course_code, course_name=:course_name, grade=:grade, instructor=:instructor WHERE id=:course_id");

            // Bind parameters
            $stmt->bindParam(':course_code', $course_code);
            $stmt->bindParam(':course_name', $course_name);
            $stmt->bindParam(':grade', $grade);
            $stmt->bindParam(':instructor', $instructor);
            $stmt->bindParam(':course_id', $course_id);

            // Execute the statement
            if ($stmt->execute()) {
                echo '<script type="text/javascript">alert("Course information updated successfully"); window.location="index.php";</script>';
                exit;
            } else {
                echo '<script type="text/javascript">alert("Course did not update"); window.location="404.html";</script>';
            }
        } catch (PDOException $e) {
            // Error in execution
            echo '<script type="text/javascript">alert("Error: ' . $e->getMessage() . '"); window.location="404.html";</script>';
        }

        // Close connection
        $conn = null;
    } else {
        // Log an error if edit button is not set
        echo '<script type="text/javascript">alert("Edit button not set"); window.location="404.html";</script>';
    }
} else {
    // Log an error if form data is not received
    echo '<script type="text/javascript">alert("Form data not received"); window.location="404.html";</script>';
}
