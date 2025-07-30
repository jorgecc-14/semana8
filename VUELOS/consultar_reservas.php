<?php
echo '<a href="index.html">Volver al inicio</a><br>';
include("conexion.php");

$sql = "SELECT H.nombre, COUNT(R.id_reserva) AS total_reservas
        FROM RESERVA R
        JOIN HOTEL H ON R.id_hotel = H.id_hotel
        GROUP BY H.nombre
        HAVING COUNT(R.id_reserva) > 2";

$result = $conn->query($sql);

echo "<h2>Hoteles con más de 2 reservas</h2><ul>";
while ($row = $result->fetch_assoc()) {
    echo "<li>" . htmlspecialchars($row['nombre']) . " - " . $row['total_reservas'] . " reservas</li>";
}
echo "</ul>";

$conn->close();
?>
