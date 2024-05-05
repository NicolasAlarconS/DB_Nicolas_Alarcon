USE Projecto_Nicolas;
-- Funcion de calculo total de ventas por cliente determinado
DELIMITER //

CREATE FUNCTION calcular_total_ventas_cliente(cliente_id VARCHAR(50)) 
RETURNS DECIMAL(18, 2) 
READS SQL DATA
BEGIN
    DECLARE total DECIMAL(18, 2);
    SELECT SUM(v.Venta_Neta) INTO total 
		FROM ventas v
		JOIN pedidos p ON v.ID_Pedido = p.ID_Pedido
		WHERE p.ID_Cliente = cliente_id;
    RETURN total;
END//

DELIMITER ;

DELIMITER //

-- Funcion de obtencion nombre completo segun cliente
CREATE FUNCTION obtener_nombre_completo_cliente(cliente_id VARCHAR(50)) 
RETURNS VARCHAR(100) 
READS SQL DATA
BEGIN
    DECLARE nombre_completo VARCHAR(100);
    SELECT CONCAT(Nombre, ' ', Apellido) INTO nombre_completo
    FROM clientes
    WHERE ID_Cliente = cliente_id;
    RETURN nombre_completo;
END//

DELIMITER ;

DELIMITER //

-- Funcion de obtencion de canal de venta segun pedido
CREATE FUNCTION obtener_canal_segun_pedido(pedido_id VARCHAR(50)) 
RETURNS VARCHAR(50) 
READS SQL DATA
BEGIN
    DECLARE nombre_canal VARCHAR(50);
    SELECT c.Nombre INTO nombre_canal
    FROM pedidos p
    JOIN canales c ON p.ID_Canal = c.ID_Canal
    WHERE p.ID_Pedido = pedido_id;
    RETURN nombre_canal;
END//

DELIMITER ;