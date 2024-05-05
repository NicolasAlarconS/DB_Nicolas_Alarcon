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
[DOCUMENTACION DEL PROYECTO DE NICO](https://docs.google.com/document/d/e/2PACX-1vQbTCHeRc68O5-HIlHXh6vNvPgEsNsiQ6BrKVJ8XFnBNKb71qvuDYO1PfXoIWLpzAYaeovm0MuXJSyA/pub)

## Temática del Proyecto
El proyecto se centra en desarrollar una base de datos ficticia que sirva como sistema de gestión integral para una empresa dedicada a la venta de productos. Esta base de datos ha sido creada por el usuario utilizando Python y el sistema de gestión de base de datos MySQL.

## Modelo de Negocio
El modelo de negocio se basa en una estrategia de venta multicanal, donde los clientes pueden realizar pedidos a través de diversos canales como tiendas físicas, tiendas en línea o distribuidores externos. La empresa se enfoca en ofrecer productos de alta calidad, manteniendo un equilibrio entre el precio de venta y el costo de adquisición. La atención al cliente y la satisfacción del mismo son pilares fundamentales en la estrategia empresarial.



## Listado de tablas y descripcion

## Estructura e ingesta de datos

## Objetos de la base de datos

## Roles y permisos

## Back up de la base de datos

## Herramientas y tecnologias usadas

## Como levantar el proyecto en CodeSpaces GitHub
* env: Archivo con contraseñas y data secretas
* Makefile: Abstracción de creacción del proyecto
* docker-compose.yml: Permite generar las bases de datos en forma de contenedores

#### Pasos para arrancar el proyecto


* En la terminal de linux escribir :
    - `make` _si te da un error de que no conexion al socket, volver al correr el comando `make`_
    - `make clean-db` limpiar la base de datos
    - `make access-db` acceder a la terminal
