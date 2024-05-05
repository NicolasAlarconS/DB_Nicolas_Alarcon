<center>
<img src="https://objetivo.news/download/multimedia.normal.bcba10cea1861629.Y29kZXJob3VzZS1xdWUtZXMtcXVlLWhhY2VuX25vcm1hbC53ZWJw.webp" style="width: 100% ; aspect-ratio:16/9">
</center>


# <center>Entrega de proyecto final</center>
Alumno: Nicolas Alarcon Sanhueza

Curso: SQL

Comision: 53175

Tutor: Jonatan Canchi

Docente: Anderson Michel Torres

---

### **Consignas:**
- La base de datos debe contener al menos:
    * ~ 15 tablas, entre las cuales debe haber al menos 1 tabla de hechos,  2 tablas transaccionales.
    * ~ 5 vistas.
    * ~ 2 stored procedure.
    * ~ 2  trigger.
    * ~ 2 funciones
    
- El documento debe contener:
    - Introducción
    - Objetivo
    - Situación problemática
    - Modelo de negocio
    - Diagrama de entidad relació
    - Listado de tablas con descripción de estructura (columna,descripción, tipo de datos, tipo de clave)
    - Scripts de creación de cada objeto de la base de datos
    - Scripts de inserción de datos
    - Informes generados en base a la información de la base
    - Herramientas y tecnologías usadas

---

## Temática del Proyecto
El proyecto se centra en desarrollar una base de datos ficticia que sirva como sistema de gestión integral para una empresa dedicada a la venta de productos. Esta base de datos ha sido creada en Python y el sistema de gestión de base de datos MySQL.

## Modelo de Negocio
El modelo de negocio se basa en una estrategia de venta multicanal, donde los clientes pueden realizar pedidos a través de estos, como tiendas físicas, tiendas en línea o distribuidores externos. La empresa se enfoca en ofrecer productos de alta calidad, manteniendo un equilibrio entre el precio de venta y el costo de adquisición. La atención al cliente y la satisfacción del mismo son pilares fundamentales en la estrategia empresarial.

## Listado de tablas y descripcion
- Clientes: Almacena datos de los clientes que realizan compras en la empresa, como su nombre, apellido, país de residencia, dirección y correo electrónico. Esta tabla permite mantener un registro de los clientes y proporcionar un servicio personalizado.

   - ID_Cliente (VARCHAR): Identificador único del cliente.
   
   - Nombre (NVARCHAR): Nombre del cliente.
   
   - Apellido (NVARCHAR): Apellido del cliente.
   
   - ID_Pais (VARCHAR): Identificador del país del cliente (clave foránea).
   
   - Dirección (NVARCHAR): Dirección del cliente.
   
   - Correo (NVARCHAR): Correo electrónico del cliente.
   
   - Claves Primarias: ID_Cliente
     
   - Claves Foráneas: ID_Pais (referencia a la tabla Paises)
   
- Productos: Contiene información sobre los productos disponibles para la venta, incluyendo su nombre, descripción, precio unitario y costo unitario. Esta tabla permite gestionar el inventario y conocer los detalles específicos de cada producto.
  
   - ID_Producto (VARCHAR): Identificador único del producto.
   
   - Nombre (NVARCHAR): Nombre del producto.
   
   - Descripción (NVARCHAR): Descripción del producto.
   
   - Precio_Unitario (DECIMAL): Precio unitario del producto.
   
   - Costo_Unitario (DECIMAL): Costo unitario del producto.
   
   - Claves Primarias: ID_Producto
   
- Paises: Registra los países presentes en la base de datos, junto con su respectiva zona geográfica. Esta tabla proporciona información contextual sobre la ubicación de los clientes, proveedores y otros elementos del negocio.

   - ID_Pais (VARCHAR): Identificador único del país.
   
   - Nombre (NVARCHAR): Nombre del país.
   
   - Zona (NVARCHAR): Zona geográfica del país.
   
   - Claves Primarias: ID_Pais

- Canales: Define los distintos canales de distribución utilizados para vender los productos. 

   - ID_Canal (VARCHAR): Identificador único del canal.
   
   - Nombre (NVARCHAR): Nombre del canal.
   
   - Claves Primarias: ID_Canal

- Ventas: Almacena información sobre las ventas realizadas por la empresa. Cada registro incluye datos como el identificador único de la venta, el empleado responsable de la venta, la venta bruta (monto total de la venta) y la venta neta (monto total después de descuentos u otros ajustes).

   - ID_Venta (VARCHAR): Identificador único de la venta.
   
   - ID_Empleado (VARCHAR): Identificador del empleado responsable de la venta (clave foránea).
   
   - Venta_Bruta (DECIMAL): Monto total de la venta antes de descuentos u otros ajustes.
   
   - Venta_Neta (DECIMAL): Monto total de la venta después de descuentos u otros ajustes.
   
   - Claves Primarias: ID_Venta
   
   - Claves Foráneas: ID_Empleado (referencia a la tabla Empleados)

- Empleados: Contiene información sobre los empleados de la empresa, incluyendo su nombre, apellido, departamento al que pertenecen y salario. Esta tabla facilita la gestión del personal y la asignación de responsabilidades dentro de la organización.

   - ID_Empleado (VARCHAR): Identificador único del empleado.
   
   - Nombre (NVARCHAR): Nombre del empleado.
   
   - Apellido (NVARCHAR): Apellido del empleado.
   
   - ID_Departamento (VARCHAR): Identificador del departamento al que pertenece el empleado (clave foránea).
   
   - Salario (DECIMAL): Salario del empleado.
   
   - Claves Primarias: ID_Empleado
   
   - Claves Foráneas: ID_Departamento (referencia a la tabla Departamentos)

- Departamentos: Registra los distintos departamentos de la empresa, junto con su ubicación y presupuesto asignado. Esta tabla permite organizar y estructurar la empresa en función de sus diferentes áreas de trabajo.

   - ID_Departamento (VARCHAR): Identificador único del departamento.
   
   - Nombre (NVARCHAR): Nombre del departamento.
   
   - Ubicación (NVARCHAR): Ubicación del departamento.
   
   - Presupuesto (DECIMAL): Presupuesto asignado al departamento.
   
   - Claves Primarias: ID_Departamento

- Proveedores: Contiene información sobre los proveedores de los productos vendidos por la empresa. Cada proveedor tiene un identificador único, nombre, país de origen, dirección y correo electrónico.

   - ID_Proveedor (VARCHAR): Identificador único del proveedor.
   
   - Nombre (NVARCHAR): Nombre del proveedor.
   
   - ID_Pais (VARCHAR): Identificador del país del proveedor (clave foránea).
   
   - Dirección (NVARCHAR): Dirección del proveedor.
   
   - Correo (NVARCHAR): Correo electrónico del proveedor.
   
   - Claves Primarias: ID_Proveedor
   
   - Claves Foráneas: ID_Pais (referencia a la tabla Paises)

- Pedidos: Esta tabla almacena información detallada sobre los pedidos realizados por los clientes. Cada registro incluye datos como el identificador único del pedido, el cliente que realizó el pedido, el producto solicitado, la cantidad, las fechas de pedido y envío, la prioridad del pedido y el canal de venta utilizado.

   - ID_Pedido (VARCHAR): Identificador único del pedido.
   
   - ID_Cliente (VARCHAR): Identificador del cliente que realizó el pedido (clave foránea).
   
   - ID_Producto (VARCHAR): Identificador del producto solicitado en el pedido (clave foránea).
   
   - Unidades (INT): Cantidad de productos pedidos.
   
   - Fecha_Pedido (DATE): Fecha en que se realizó el pedido.
   
   - Fecha_Envío (DATE): Fecha en que se envió el pedido.
   
   - Prioridad (VARCHAR): Prioridad del pedido.
   
   - ID_Canal (VARCHAR): Identificador del canal de venta utilizado para el pedido (clave foránea).
   
   - ID_Venta (VARCHAR): Identificador de la venta asociada al pedido (clave foránea).
   
   - Claves Primarias: ID_Pedido
   
   - Claves Foráneas: ID_Cliente (referencia a la tabla Clientes), ID_Producto (referencia a la tabla Productos), ID_Canal (referencia a la tabla Canales), ID_Venta (referencia a la tabla Ventas)

## Estructura e ingesta de datos
La base de datos ficticia se ha diseñado utilizando Python para generar el esquema de la base de datos y las tablas necesarias. Además, se han creado archivos CSV de muestra para poblar las tablas con datos iniciales. Estos archivos CSV han sido generados también mediante scripts en Python.

## Objetos de la base de datos
Los objetos de la base de datos incluyen las tablas mencionadas anteriormente, así como restricciones de clave externa que garantizan la integridad referencial entre las tablas. Estas restricciones aseguran que no se puedan realizar operaciones que violen las relaciones definidas entre las entidades, manteniendo la consistencia de los datos en todo momento.

## Roles y permisos

## Back up de la base de datos

## Herramientas y tecnologias usadas
Para el desarrollo de la base de datos ficticia, se ha utilizado Python para generar el esquema de la base de datos, así como para crear los archivos CSV de muestra. MySQL se ha empleado como sistema de gestión de base de datos para almacenar y administrar la información.

## Como levantar el proyecto en CodeSpaces GitHub
* env: Archivo con contraseñas y data secretas
* Makefile: Abstracción de creacción del proyecto
* docker-compose.yml: Permite generar las bases de datos en forma de contenedores

#### Pasos para arrancar el proyecto


* En la terminal de linux escribir :
    - `make` _si te da un error de que no conexion al socket, volver al correr el comando `make`_
    - `make clean-db` limpiar la base de datos
    - `make access-db` acceder a la terminal
