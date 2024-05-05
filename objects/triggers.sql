-- Usar la base de datos creada
USE DB_NicolasAlarcon;

 -- Trigger de auditoria sobre la tabla clientes
DELIMITER //

CREATE TRIGGER audit_clientes_insert 
AFTER INSERT ON Clientes
FOR EACH ROW 
BEGIN
    INSERT INTO audit_table (action, description, user, timestamp)
    VALUES ('INSERT', CONCAT('Cliente insertado: ', NEW.Nombre, ' ', NEW.Apellido), CURRENT_USER(), NOW());
END//

CREATE TRIGGER audit_clientes_update 
AFTER UPDATE ON Clientes
FOR EACH ROW 
BEGIN
    INSERT INTO audit_table (action, description, user, timestamp)
    VALUES ('UPDATE', CONCAT('Cliente actualizado: ', NEW.Nombre, ' ', NEW.Apellido), CURRENT_USER(), NOW());
END//

CREATE TRIGGER audit_clientes_delete 
AFTER DELETE ON Clientes
FOR EACH ROW 
BEGIN
    INSERT INTO audit_table (action, description, user, timestamp)
    VALUES ('DELETE', CONCAT('Cliente eliminado: ', OLD.Nombre, ' ', OLD.Apellido), CURRENT_USER(), NOW());
END//

//

DELIMITER ;

 -- Trigger de auditoria sobre la tabla productos
DELIMITER //

CREATE TRIGGER audit_productos_insert 
AFTER INSERT ON Productos
FOR EACH ROW 
BEGIN
    INSERT INTO audit_table (action, description, user, timestamp)
    VALUES ('INSERT', CONCAT('Producto insertado: ', NEW.Nombre), CURRENT_USER(), NOW());
END//

CREATE TRIGGER audit_productos_update 
AFTER UPDATE ON Productos
FOR EACH ROW 
BEGIN
    INSERT INTO audit_table (action, description, user, timestamp)
    VALUES ('UPDATE', CONCAT('Producto actualizado: ', NEW.Nombre), CURRENT_USER(), NOW());
END//

CREATE TRIGGER audit_productos_delete 
AFTER DELETE ON Productos
FOR EACH ROW 
BEGIN
    INSERT INTO audit_table (action, description, user, timestamp)
    VALUES ('DELETE', CONCAT('Producto eliminado: ', OLD.Nombre), CURRENT_USER(), NOW());
END//

//

DELIMITER ;

 -- Trigger de auditoria sobre la tabla pedidos
DELIMITER //

CREATE TRIGGER audit_pedidos_insert 
AFTER INSERT ON Pedidos
FOR EACH ROW 
BEGIN
    INSERT INTO audit_table (action, description, user, timestamp)
    VALUES ('INSERT', CONCAT('Pedido insertado: ', NEW.IDPedido), CURRENT_USER(), NOW());
END//

CREATE TRIGGER audit_pedidos_update 
AFTER UPDATE ON Pedidos
FOR EACH ROW 
BEGIN
    INSERT INTO audit_table (action, description, user, timestamp)
    VALUES ('UPDATE', CONCAT('Pedido actualizado: ', NEW.IDPedido), CURRENT_USER(), NOW());
END//

CREATE TRIGGER audit_pedidos_delete 
AFTER DELETE ON Pedidos
FOR EACH ROW 
BEGIN
    INSERT INTO audit_table (action, description, user, timestamp)
    VALUES ('DELETE', CONCAT('Pedido eliminado: ', OLD.IDPedido), CURRENT_USER(), NOW());
END//

//

DELIMITER ;
