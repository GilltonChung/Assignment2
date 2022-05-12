<?php

$conn = new mysqli('gilltonassignment2.mysql.database.azure.com', 'gilltonadmin', 'Jugular59', 'my_db'); #use if require secure transmission is turned off in azure db

#$conn = mysqli_init(); 
#mysqli_ssl_set($conn,NULL,NULL, "/xampp/htdocs/Assignment2-master/db/DigiCertGlobalRootCA.crt.pem", NULL, NULL); 
#mysqli_real_connect($conn, "gilltonassignment2.mysql.database.azure.com", "gilltonadmin", "Jugular59", "my_db", 3306, MYSQLI_CLIENT_SSL); #Use these 3 lines if require secure transmission is turned on in azure db

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

?>