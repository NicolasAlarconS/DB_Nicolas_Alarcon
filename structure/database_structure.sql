-- Eliminar base de datos si ya existe
DROP DATABASE IF EXISTS DB_NicolasAlarcon;

-- Crear la base de datos
CREATE DATABASE DB_NicolasAlarcon;

-- Usar la base de datos creada
USE DB_NicolasAlarcon;

-- Tabla de pedidos
CREATE TABLE Pedidos (
    IDPedido VARCHAR(50) PRIMARY KEY,
    IDCliente VARCHAR(50),
    IDProducto VARCHAR(50),
    Unidades INT,
    FechaPedido DATE,
    FechaEnvio DATE,
    Prioridad VARCHAR(50),
    IDCanal VARCHAR(50),
    IDVenta VARCHAR(50)
);

-- Tabla de productos
CREATE TABLE Productos (
    IDProducto VARCHAR(50) PRIMARY KEY,
    Nombre VARCHAR(50),
    Descripcion VARCHAR(100),
    PrecioUnitario DECIMAL(10, 2),
    CostoUnitario DECIMAL(10, 2)
);

-- Tabla de países
CREATE TABLE Paises (
    IDPais VARCHAR(50) PRIMARY KEY,
    Nombre VARCHAR(50),
    Zona VARCHAR(50)
);

-- Tabla de canales
CREATE TABLE Canales (
    IDCanal VARCHAR(50) PRIMARY KEY,
    Nombre VARCHAR(50)
);

-- Tabla de ventas
CREATE TABLE Ventas (
    IDVenta VARCHAR(50) PRIMARY KEY,
    IDEmpleado VARCHAR(50),
    VentaBruta DECIMAL(10, 2),
    VentaNeta DECIMAL(10, 2)
);

-- Tabla de empleados
CREATE TABLE Empleados (
    IDEmpleado VARCHAR(50) PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(100),
    IDDepartamento VARCHAR(50),
    Salario DECIMAL(10, 2)
);

-- Tabla de departamentos
CREATE TABLE Departamentos (
    IDDepartamento VARCHAR(50) PRIMARY KEY,
    Nombre VARCHAR(50),
    Ubicacion VARCHAR(100),
    Presupuesto DECIMAL(15, 2)
);

-- Tabla de proveedores
CREATE TABLE Proveedores (
    IDProveedor VARCHAR(50) PRIMARY KEY,
    Nombre VARCHAR(50),
    IDPais VARCHAR(50),
    Direccion VARCHAR(100),
    Correo VARCHAR(100)
);

-- Tabla de clientes
CREATE TABLE Clientes (
    IDCliente VARCHAR(50) PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    IDPais VARCHAR(50),
    Direccion VARCHAR(100),
    Correo VARCHAR(100)
);

-- Tabla de auditoria
CREATE TABLE audit_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    action VARCHAR(10) NOT NULL,
    user VARCHAR(50) NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Agregar restricciones de clave externa utilizando ALTER TABLE

-- Para la tabla Pedidos
ALTER TABLE Pedidos
ADD CONSTRAINT FK_Pedidos_Clientes FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente);

ALTER TABLE Pedidos
ADD CONSTRAINT FK_Pedidos_Productos FOREIGN KEY (IDProducto) REFERENCES Productos(IDProducto);

ALTER TABLE Pedidos
ADD CONSTRAINT FK_Pedidos_Canales FOREIGN KEY (IDCanal) REFERENCES Canales(IDCanal);

ALTER TABLE Pedidos
ADD CONSTRAINT FK_Pedidos_Ventas FOREIGN KEY (IDVenta) REFERENCES Ventas(IDVenta);

-- Para la tabla Empleados
ALTER TABLE Empleados
ADD CONSTRAINT FK_Empleados_Departamentos FOREIGN KEY (IDDepartamento) REFERENCES Departamentos(IDDepartamento);

-- Para la tabla Ventas
ALTER TABLE Ventas
ADD CONSTRAINT FK_Ventas_Empleados FOREIGN KEY (IDEmpleado) REFERENCES Empleados(IDEmpleado);

-- Para la tabla Proveedores
ALTER TABLE Proveedores
ADD CONSTRAINT FK_Proveedores_Paises FOREIGN KEY (IDPais) REFERENCES Paises(IDPais);

-- Para la tabla Clientes
ALTER TABLE Clientes
ADD CONSTRAINT FK_Clientes_Paises FOREIGN KEY (IDPais) REFERENCES Paises(IDPais);
