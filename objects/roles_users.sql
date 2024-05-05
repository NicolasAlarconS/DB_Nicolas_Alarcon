-- Crear usuarios y asignar permisos
CREATE USER 'usuario_admin'@'localhost' IDENTIFIED BY 'contraseña_admin';
GRANT ALL PRIVILEGES ON *.* TO 'usuario_admin'@'localhost' WITH GRANT OPTION;

CREATE USER 'usuario_lectura'@'localhost' IDENTIFIED BY 'contraseña_lectura';
GRANT SELECT ON DB_NicolasAlarcon.* TO 'usuario_lectura'@'localhost';

CREATE USER 'usuario_sin_privilegios'@'localhost' IDENTIFIED BY 'contraseña_sin_privilegios';

CREATE USER 'usuario_clientes'@'localhost' IDENTIFIED BY 'contraseña_clientes';
GRANT SELECT, INSERT, UPDATE, DELETE ON DB_NicolasAlarcon.clientes TO 'usuario_clientes'@'localhost';

CREATE USER 'usuario_productos'@'localhost' IDENTIFIED BY 'contraseña_productos';
GRANT SELECT ON DB_NicolasAlarcon.productos TO 'usuario_productos'@'localhost';

CREATE USER 'usuario_ventas'@'localhost' IDENTIFIED BY 'contraseña_ventas';
GRANT SELECT ON DB_NicolasAlarcon.ventas TO 'usuario_ventas'@'localhost';

--DROP USER 'usuario_admin'@'localhost';
--DROP USER 'usuario_lectura'@'localhost';
--DROP USER 'usuario_sin_privilegios'@'localhost';
--DROP USER 'usuario_clientes'@'localhost';
--DROP USER 'usuario_productos'@'localhost';
--DROP USER 'usuario_ventas'@'localhost';
