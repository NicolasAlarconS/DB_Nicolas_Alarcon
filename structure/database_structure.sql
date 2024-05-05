-- Eliminar base de datos si ya existe
DRoP DATABASE IF EXISTS Projecto_Nicolas;

-- Crear la base de datos
CREATE DATABASE Projecto_Nicolas;

-- Usar la base de datos creada
USE Projecto_Nicolas;

-- Crear la tabla clientes
CREATE TABLE clientes (
    ID_Cliente VARCHAR(50) NoT NULL PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    ID_Pais VARCHAR(50),
    Direccion VARCHAR(100),
    Correo VARCHAR(100)
);

-- Crear la tabla canales
CREATE TABLE canales (
    ID_Canal VARCHAR(50) NoT NULL PRIMARY KEY,
    Nombre VARCHAR(50)
);

-- Crear la tabla pedidos
CREATE TABLE pedidos (
    ID_Pedido VARCHAR(50) NoT NULL PRIMARY KEY,
    ID_Cliente VARCHAR(50),
    ID_Producto VARCHAR(50),
    Unidades INT,
    Fecha_Pedido DATE,
    Fecha_Envio DATE,
    Prioridad VARCHAR(50),
    ID_Canal VARCHAR(50)
);

-- Crear la tabla productos
CREATE TABLE productos (
    ID_Producto VARCHAR(50) NoT NULL PRIMARY KEY,
    Nombre VARCHAR(50),
    Descripcion TEXT,
    Precio_Unitario DECIMAL(18, 2),
    Costo_Unitario DECIMAL(18, 2)
);

-- Crear la tabla paises
CREATE TABLE paises (
    ID_Pais VARCHAR(50) NoT NULL PRIMARY KEY,
    Nombre VARCHAR(50),
    Zona VARCHAR(50)
);

-- Crear la tabla ventas
CREATE TABLE ventas (
    ID_Venta  VARCHAR(50) NoT NULL PRIMARY KEY,
    ID_Pedido VARCHAR(50),
    Venta_Bruta DECIMAL(18, 2),
    Venta_Neta DECIMAL(18, 2)
);

-- Agregar claves foráneas en tabla clientes
ALTER TABLE clientes
ADD CoNSTRAINT fk_cliente_pais FoREIGN KEY (ID_Pais) REFERENCES paises (ID_Pais);

-- Agregar claves foráneas en tabla pedidos
ALTER TABLE pedidos
ADD CoNSTRAINT fk_pedido_canal FoREIGN KEY (ID_Canal) REFERENCES canales (ID_Canal);
ALTER TABLE pedidos
ADD CoNSTRAINT fk_pedido_cliente FoREIGN KEY (ID_Cliente) REFERENCES clientes (ID_Cliente);
ALTER TABLE pedidos
ADD CoNSTRAINT fk_pedido_producto FoREIGN KEY (ID_Producto) REFERENCES productos (ID_Producto);


-- Agregar claves foráneas en tabla ventas
ALTER TABLE ventas
ADD CoNSTRAINT fk_venta_pedido FoREIGN KEY (ID_Pedido) REFERENCES pedidos (ID_Pedido);
