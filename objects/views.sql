-- Usar la base de datos creada
USE DB_NicolasAlarcon;

-- Vista de ingresos totales por año
CREATE VIEW vista_ingresos_totales_por_anio AS 
SELECT      
    YEAR(FechaPedido) AS Anio,     
    COUNT(*) AS numero_transacciones,     
    CONCAT('US$ ', FORMAT(ROUND(SUM(v.VentaBruta)), 0)) AS venta_bruta_total,     
    CONCAT('US$ ', FORMAT(ROUND(SUM(v.VentaNeta)), 0)) AS venta_neta_total
FROM Pedidos
JOIN Ventas v ON Pedidos.IDVenta = v.IDVenta
GROUP BY YEAR(FechaPedido);

-- Vista de ingresos totales por país
CREATE VIEW vista_ingresos_totales_por_pais AS 
SELECT      
    cl.IDPais,
    pa.Nombre AS Pais,     
    COUNT(*) AS numero_transacciones,     
    CONCAT('US$ ', FORMAT(ROUND(SUM(v.VentaBruta)), 0)) AS venta_bruta_total,     
    CONCAT('US$ ', FORMAT(ROUND(SUM(v.VentaNeta)), 0)) AS venta_neta_total,
    CONCAT(FORMAT(ROUND((SUM(v.VentaNeta) / (SELECT SUM(VentaNeta) FROM Ventas)) * 100), 2), '%') AS porcentaje_participacion
FROM Pedidos p
JOIN Ventas v ON p.IDVenta = v.IDVenta
JOIN Clientes cl ON p.IDCliente = cl.IDCliente
JOIN Paises pa ON cl.IDPais = pa.IDPais
GROUP BY cl.IDPais, pa.Nombre;

-- Vista de clientes más frecuentes
CREATE VIEW vista_clientes_mas_frecuentes AS
SELECT 
    p.IDCliente,
    COUNT(*) AS Total_Pedidos
FROM Pedidos p
GROUP BY p.IDCliente
ORDER BY Total_Pedidos DESC;

-- Vista de los productos mas vendidos
CREATE VIEW vista_productos_mas_vendidos AS
SELECT 
    p.IDProducto,
    p.Nombre AS Producto,
    SUM(ped.Unidades) AS Total_Unidades_Vendidas
FROM Pedidos ped
JOIN Productos p ON ped.IDProducto = p.IDProducto
GROUP BY p.IDProducto, p.Nombre
ORDER BY Total_Unidades_Vendidas DESC;	

-- Vista de ventas por canal de venta
CREATE VIEW vista_ventas_por_canal AS 
SELECT      
    c.Nombre AS Canal_Venta,     
    COUNT(*) AS numero_transacciones,     
    CONCAT('US$ ', FORMAT(ROUND(SUM(v.VentaBruta)), 0)) AS venta_bruta_total,     
    CONCAT('US$ ', FORMAT(ROUND(SUM(v.VentaNeta)), 0)) AS venta_neta_total,
    CONCAT(FORMAT(ROUND((SUM(v.VentaNeta) / (SELECT SUM(VentaNeta) FROM ventas)) * 100), 2), '%') AS porcentaje_participacion
FROM ventas v
LEFT JOIN canales c ON v.IDCanal = c.IDCanal
GROUP BY c.Nombre;

-- Vista de ventas por prioridad de envío
CREATE VIEW vista_ventas_por_prioridad_envio AS 
SELECT      
    Prioridad,
    COUNT(*) AS numero_transacciones,     
    CONCAT('US$ ', FORMAT(ROUND(SUM(v.VentaBruta)), 0)) AS venta_bruta_total,     
    CONCAT('US$ ', FORMAT(ROUND(SUM(v.VentaNeta)), 0)) AS venta_neta_total
FROM Pedidos p
JOIN Ventas v ON p.IDVenta = v.IDVenta
GROUP BY Prioridad;
