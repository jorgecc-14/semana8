<?php
include("conexion.php");

$nombre = $_POST['nombre'];
$ubicacion = $_POST['ubicacion'];
$habitaciones = intval($_POST['habitaciones']);
$tarifa = floatval($_POST['tarifa']);

$sql = "INSERT INTO HOTEL (nombre, ubicación, habitaciones_disponibles, tarifa_noche) 
        VALUES ('$nombre', '$ubicacion', $habitaciones, $tarifa)";

if ($conn->query($sql) === TRUE) {
    echo "Hotel agregado correctamente.";
} else {
    echo "Error: " . $conn->error;
}
$conn->close();
?>
