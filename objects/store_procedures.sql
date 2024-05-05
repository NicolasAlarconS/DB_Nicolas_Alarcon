USE Projecto_Nicolas;

-- DELIMITER //
--  -- Procedimiento para la inscersion de nuevos clientes
-- CREATE PROCEDURE AgregarCliente(
--     IN p_nombre VARCHAR(50),
--     IN p_apellido VARCHAR(50),
--     IN p_id_pais VARCHAR(50),
--     IN p_direccion VARCHAR(100),
--     IN p_correo VARCHAR(100)
-- )
-- BEGIN
--     DECLARE cliente_existente INT;
-- 	DECLARE p_id_cliente VARCHAR(50);
    
--     -- Verificar si el cliente ya existe en la base de datos
--     SELECT COUNT(*)
--     INTO cliente_existente
--     FROM clientes
--     WHERE Nombre = p_nombre AND Correo = p_correo AND Direccion = p_direccion;
    
--     -- Si el cliente ya existe, mostrar un mensaje y terminar el procedimiento
--     IF cliente_existente > 0 THEN
--         SELECT 'El cliente ya existe en la base de datos.' AS mensaje;
--         LEAVE AgregarCliente;
--     END IF;
    
--     -- Generar un nuevo ID de cliente (puedes usar UUID() u otro método según tu preferencia)
--     SET p_id_cliente = UUID();
    
--     -- Insertar el nuevo cliente
--     INSERT INTO clientes (ID_Cliente, Nombre, Apellido, ID_Pais, Direccion, Correo)
--     VALUES (p_id_cliente, p_nombre, p_apellido, p_id_pais, p_direccion, p_correo);
    
--     SELECT 'Cliente agregado correctamente.' AS mensaje;
-- END//

-- DELIMITER ;

-- DELIMITER //
--  -- Procedimiento para la inscersion de nuevos productos
-- CREATE PROCEDURE AgregarProducto(
--     IN p_nombre VARCHAR(50),
--     IN p_descripcion TEXT,
--     IN p_precio_unitario DECIMAL(18, 2),
--     IN p_costo_unitario DECIMAL(18, 2)
-- )
-- BEGIN
--     DECLARE producto_existente INT; 
    
--     -- Verificar si el producto ya existe en la base de datos
--     SELECT COUNT(*)
--     INTO producto_existente
--     FROM productos
--     WHERE Nombre = p_nombre;
    
--     -- Si el producto ya existe, mostrar un mensaje y terminar el procedimiento
--     IF producto_existente > 0 THEN
--         SELECT 'El producto ya existe en la base de datos.' AS mensaje;
--         LEAVE AgregarProducto;
--     END IF;
    
--     -- Insertar el nuevo producto
--     INSERT INTO productos (ID_Producto, Nombre, Descripcion, Precio_Unitario, Costo_Unitario)
--     VALUES (UUID(), p_nombre, p_descripcion, p_precio_unitario, p_costo_unitario);
    
--     SELECT 'Producto agregado correctamente.' AS mensaje;
-- END//

-- DELIMITER ;

DELIMITER //
 -- Procedimiento para calcular metricas de venta
CREATE PROCEDURE CalcularMetricasVentas()
BEGIN
    SELECT 
        COUNT(*) AS numero_transacciones,
        ROUND(AVG(venta_neta), 2) AS promedio_venta_por_transaccion,
        ROUND(SUM(venta_bruta)) AS venta_bruta_total,
        ROUND(SUM(venta_neta)) AS venta_neta_total,
        ROUND((SUM(venta_neta) / (SELECT SUM(venta_neta) FROM ventas)) * 100, 2) AS porcentaje_participacion
    FROM ventas;
END//

DELIMITER ;

