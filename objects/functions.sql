-- Usar la base de datos creada
USE DB_NicolasAlarcon;

-- Función para obtener el nombre completo del empleado según su ID
DELIMITER //

CREATE FUNCTION obtener_nombre_completo_empleado(empleado_id VARCHAR(50))
RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
    DECLARE nombre_completo VARCHAR(100);
    SELECT CONCAT(Nombre, ' ', Apellido) INTO nombre_completo
    FROM Empleados
    WHERE IDEmpleado = empleado_id;
    RETURN nombre_completo;
END//

//

DELIMITER ;

-- Función para calcular el salario anual de un empleado
DELIMITER //

CREATE FUNCTION calcular_salario_anual_empleado(empleado_id VARCHAR(50))
RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
    DECLARE salario_anual DECIMAL(10, 2);
    SELECT Salario * 12 INTO salario_anual
    FROM Empleados
    WHERE IDEmpleado = empleado_id;
    RETURN salario_anual;
END//

//

DELIMITER ;

-- Función para obtener el departamento de un empleado según su ID
DELIMITER //

CREATE FUNCTION obtener_departamento_empleado(empleado_id VARCHAR(50))
RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
    DECLARE departamento VARCHAR(50);
    SELECT Nombre INTO departamento
    FROM Departamentos
    WHERE IDDepartamento = (SELECT IDDepartamento FROM Empleados WHERE IDEmpleado = empleado_id);
    RETURN departamento;
END//

//

DELIMITER ;
