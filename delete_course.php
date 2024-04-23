<?php
// Include database connection file
include 'conn.php';

// Check if student_id is received via POST
if (isset($_POST['delete_btn'])) {
    // Retrieve student_id from POST data
    $delete_id = $_POST['delete_id'];

    try {
        // Prepare and execute the DELETE query
        $stmt = $conn->prepare("DELETE FROM 1st_year_1st_semester WHERE id = ?");
        $stmt->execute([$delete_id]);

        // Check if deletion was successful
        if ($stmt->rowCount() > 0) {
            echo "Student deleted successfully.";
        } else {
            echo "Error: Student not found or already deleted.";
        }
    } catch (PDOException $e) {
        // Error in deletion
        echo "Error: Unable to delete student. " . $e->getMessage();
    }
} else {
    // Error: student_id not received
    echo "Error: Student ID not received.";
}

// Close connection
$conn = null;
