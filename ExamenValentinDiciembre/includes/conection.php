<?php 

  $server = "localhost";
 $username = "root"; 
 $password = ""; 
 $dbname = "consulta"; 
   $mysqli = new mysqli($server, $username, $password, $dbname); 
    if($mysqli->connect_errno){
         echo "Fallo al conectar a MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
            }
            $sql = "SELECT * FROM recordatorio"; 

            $resultado = mysqli_query($mysqli, $sql);


?>