<?php
$host = "localhost";
$usuario = "root";
$contrasena = "S1C3TALCA1419"; // Cambiar si tienes contraseña
$base_datos = "AGENCIA";

$conn = new mysqli($host, $usuario, $contrasena, $base_datos);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
?>
