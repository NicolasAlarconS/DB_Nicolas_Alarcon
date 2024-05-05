USE Projecto_Nicolas;

DELIMITER //

CREATE PROCEDURE AgregarCliente(
    IN p_nombre NVARCHAR(50),
    IN p_apellido NVARCHAR(50),
    IN p_id_pais VARCHAR(50),
    IN p_direccion NVARCHAR(100),
    IN p_correo NVARCHAR(100)
)
BEGIN
    DECLARE cliente_existente INT;
	DECLARE p_id_cliente VARCHAR(50);
    -- Verificar si el cliente ya existe en la base de datos
    SELECT COUNT(*)
    INTO cliente_existente
    FROM clientes
    WHERE Nombre = p_nombre AND Correo = p_correo AND Dirección = p_direccion;
    
    -- Si el cliente ya existe
    IF cliente_existente > 0 THEN
        SELECT 'El cliente ya existe en la base de datos.' AS mensaje;
        
    ELSE
		-- Generar un nuevo ID de cliente (puedes usar UUID() u otro método según tu preferencia)
		SET p_id_cliente = UUID();
    
		-- Insertar el nuevo cliente
		INSERT INTO clientes (ID_Cliente, Nombre, Apellido, ID_Pais, Dirección, Correo)
		VALUES (p_id_cliente, p_nombre, p_apellido, p_id_pais, p_direccion, p_correo);
    
		SELECT 'Cliente agregado correctamente.' AS mensaje;
        
     END IF;
    
END//

DELIMITER ;

 -- Procedimiento para la inscersion de nuevos productos
DELIMITER //

CREATE PROCEDURE AgregarProducto(
    IN p_nombre NVARCHAR(50),
    IN p_descripcion TEXT,
    IN p_precio_unitario DECIMAL(18, 2),
    IN p_costo_unitario DECIMAL(18, 2)
)
BEGIN
    DECLARE producto_existente INT; 
    
    -- Verificar si el producto ya existe en la base de datos
    SELECT COUNT(*)
    INTO producto_existente
    FROM productos
    WHERE Nombre = p_nombre;
    
    -- Si el producto ya existe, mostrar un mensaje y terminar el procedimiento
    IF producto_existente > 0 THEN
        SELECT 'El producto ya existe en la base de datos.' AS mensaje;
    ELSE
		-- Insertar el nuevo producto
		INSERT INTO productos (ID_Producto, Nombre, Descripción, Precio_Unitario, Costo_Unitario)
		VALUES (UUID(), p_nombre, p_descripcion, p_precio_unitario, p_costo_unitario);
    
		SELECT 'Producto agregado correctamente.' AS mensaje;
        
	END IF;
    
END//

DELIMITER ;

 -- Procedimiento para calcular metricas de venta
DELIMITER //

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

-- Procedimiento para calcular el total de ventas por empleado:
DELIMITER //

CREATE PROCEDURE TotalVentasPorEmpleado()
BEGIN
    SELECT e.Nombre, e.Apellido, COUNT(*) AS TotalVentas
    FROM Ventas v
    INNER JOIN Empleados e ON v.IDEmpleado = e.IDEmpleado
    GROUP BY e.Nombre, e.Apellido;
END//

DELIMITER ;


-- Procedimiento para obtener el historial de compras de un cliente:
DELIMITER //

CREATE PROCEDURE HistorialComprasCliente(
    IN p_id_cliente VARCHAR(50)
)
BEGIN
    SELECT p.IDPedido, pr.Nombre AS Producto, p.Unidades, p.FechaPedido, p.FechaEnvio, p.Prioridad
    FROM Pedidos p
    INNER JOIN Productos pr ON p.IDProducto = pr.IDProducto
    WHERE p.IDCliente = p_id_cliente;
END//

DELIMITER ;
