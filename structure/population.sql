USE Projecto_Nicolas;

SET GLOBAL local_infile = true;

-- Cargar datos desde archivos CSV
-- Cargar datos tabla paises
LOAD DATA  LOCAL INFILE  '/structure/data_csv/paises.csv'
INTO TABLE paises
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Cargar datos tabla productos
LOAD DATA  LOCAL INFILE  '/structure/data_csv/productos.csv'
INTO TABLE productos
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Cargar datos tabla canales
LOAD DATA  LOCAL INFILE  '/structure/data_csv/canales.csv'
INTO TABLE canales
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Cargar datos tabla clientes
LOAD DATA  LOCAL INFILE  '/structure/data_csv/clientes.csv'
INTO TABLE clientes
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Cargar datos tabla pedidos
LOAD DATA  LOCAL INFILE  '/structure/data_csv/pedidos.csv'
INTO TABLE pedidos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Cargar datos tabla ventas
LOAD DATA  LOCAL INFILE  '/structure/data_csv/ventas.csv'
INTO TABLE ventas
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;