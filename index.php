<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = pg_connect(
    "host=localhost port=5432 dbname=vn7 user=code password='12345'"
);

if (!$conn) {
    die("CONNECTION FAILED");
}

$result = pg_query($conn, "SELECT * FROM sm_users");

if (!$result) {
    die("QUERY FAILED: " . pg_last_error($conn));
}

?>

<!DOCTYPE html>
<html>

<head>

    <title>STUDENT-Booking</title>

</head>

<body>

    <h1>COURSES</h1>

    <p>Database connected successfully.</p>

    <table border="1" cellpadding="10">

        <tr>

            <?php

            for ($i = 0; $i < pg_num_fields($result); $i++) {

                echo "<th>";
                echo pg_field_name($result, $i);
                echo "</th>";

            }

            ?>

        </tr>

        <?php

        while ($row = pg_fetch_assoc($result)) {

            echo "<tr>";

            foreach ($row as $value) {

                echo "<td>";
                echo htmlspecialchars($value ?? "");
                echo "</td>";

            }

            echo "</tr>";

        }

        ?>

    </table>

</body>

</html>
