CREATE DATABASE AGENCIA;
USE AGENCIA;

-- Tabla de Vuelos
CREATE TABLE VUELO (
    id_vuelo INT AUTO_INCREMENT PRIMARY KEY,
    origen VARCHAR(100) NOT NULL,
    destino VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    plazas_disponibles INT NOT NULL,
    precio DECIMAL(10 , 2 ) NOT NULL
);

-- Tabla de Hoteles
CREATE TABLE HOTEL (
    id_hotel INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ubicacion VARCHAR(100) NOT NULL,
    habitaciones_disponibles INT NOT NULL,
    tarifa_noche DECIMAL(10,2) NOT NULL
);

-- Tabla de Clientes (necesaria para la clave foránea)
CREATE TABLE CLIENTE (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100)
);

-- Tabla de Reservas
CREATE TABLE RESERVA (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha_reserva DATE NOT NULL,
    id_vuelo INT,
    id_hotel INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente) ON DELETE SET NULL,
    FOREIGN KEY (id_vuelo) REFERENCES VUELO(id_vuelo) ON DELETE SET NULL,
    FOREIGN KEY (id_hotel) REFERENCES HOTEL(id_hotel) ON DELETE SET NULL
);
