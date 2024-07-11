-- Crear la tabla reservas
CREATE TABLE reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(150),
    correo VARCHAR(100),
    telefono CHAR(9),
    fechaDeEntrada DATE,
    fechaDeSalida DATE,
    tipoDeHabitacion VARCHAR(50),
    numeroDeHabitacion INT,
    numeroDePersonas INT,
    peticionesEspeciales VARCHAR(255),
    metodoDePago VARCHAR(30),
    tarifa VARCHAR(60)
);

-- Insertar un nuevo registro en la tabla reservas
INSERT INTO reservas (nombres, correo, telefono, fechaDeEntrada, fechaDeSalida, tipoDeHabitacion, numeroDeHabitacion, numeroDePersonas, peticionesEspeciales, metodoDePago, tarifa) 
VALUES ('Luis Martínez', 'luis.martinez@example.com', '954987321', '2024-11-20', '2024-11-25', 'Doble', 2, 4, 'Nada', 'Tarjeta de crédito', '100 Soles');

-- Leer todos los registros de la tabla reservas
SELECT * FROM reservas;

-- Leer un registro específico donde el id es 1
SELECT * FROM reservas WHERE id = 1;

-- Leer registros donde el tipo de habitación es 'Doble'
SELECT * FROM reservas WHERE tipoDeHabitacion = 'Doble';

-- Leer registros ordenados por fecha de entrada en orden ascendente
SELECT * FROM reservas ORDER BY fechaDeEntrada ASC;

-- Actualizar la información de un registro específico donde el id es 1
UPDATE reservas
SET nombres = 'Luis Martínez Gómez',  -- Nuevo nombre
    correo = 'luis.martinez.gomez@example.com',  -- Nuevo correo
    telefono = '954987322',  -- Nuevo teléfono
    fechaDeEntrada = '2024-11-21',  -- Nueva fecha de entrada
    fechaDeSalida = '2024-11-26',  -- Nueva fecha de salida
    tipoDeHabitacion = 'Suite',  -- Nuevo tipo de habitación
    numeroDeHabitacion = 3,  -- Nuevo número de habitación
    numeroDePersonas = 2,  -- Nuevo número de personas
    peticionesEspeciales = 'Cama extra',  -- Nuevas peticiones especiales
    metodoDePago = 'Efectivo',  -- Nuevo método de pago
    tarifa = '150 Soles'  -- Nueva tarifa
WHERE id = 1;  -- El id del registro a actualizar

-- Eliminar un registro específico donde el id es 1
DELETE FROM reservas WHERE id = 1;

-- Ejemplo adicional: Insertar un nuevo registro en la tabla reservas
INSERT INTO reservas (nombres, correo, telefono, fechaDeEntrada, fechaDeSalida, tipoDeHabitacion, numeroDeHabitacion, numeroDePersonas, peticionesEspeciales, metodoDePago, tarifa) 
VALUES ('Ana Pérez', 'ana.perez@example.com', '951234567', '2024-12-01', '2024-12-05', 'Simple', 10, 1, 'Ninguna', 'Tarjeta de crédito', '80 Soles');

-- Ejemplo adicional: Leer todos los registros de la tabla reservas
SELECT * FROM reservas;

-- Ejemplo adicional: Actualizar un registro específico donde el id es 2
UPDATE reservas
SET tipoDeHabitacion = 'Doble', tarifa = '120 Soles'
WHERE id = 2;

-- Ejemplo adicional: Eliminar un registro específico donde el id es 2
DELETE FROM reservas WHERE id = 2;
