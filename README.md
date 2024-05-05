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
La empresa opera bajo un modelo de negocio de venta multicanal, donde se prioriza la calidad de los productos y la atención personalizada al cliente. A continuación, se describe cómo cada aspecto de la operación se refleja en la base de datos:

-Conexión con los Clientes:
La importancia de establecer relaciones sólidas con los clientes es fundamental. Valoramos la atención personalizada y la satisfacción del cliente como principios fundamentales de nuestro modelo de negocio. Se reconoce la relevancia de comprender las necesidades y preferencias de los clientes para personalizar sus experiencias de compra. La base de datos almacena información detallada sobre cada cliente, incluyendo su historial de compras y detalles de contacto, con el objetivo de brindar un servicio excepcional y construir lealtad a largo plazo.

-Diversidad y Calidad de Productos:
Ofrecer una amplia gama de productos de alta calidad es esencial para satisfacer las necesidades de los clientes. La base de datos gestiona información detallada sobre cada producto, desde su descripción hasta su precio y costo. Esto permite una gestión eficaz del inventario y garantiza una oferta diversa y competitiva que se adapta a las preferencias de los clientes.

-Colaboradores Comprometidos:
Se valora el compromiso y la dedicación de los empleados para brindar un servicio excepcional a los clientes. La base de datos registra información sobre cada empleado, incluyendo su cargo, salario y departamento. Esto facilita una gestión eficaz de los recursos humanos y promueve un ambiente laboral positivo y productivo.

-Maximización de las Ventas:
Maximizar las ventas es crucial para asegurar la viabilidad financiera del negocio. La base de datos registra cada transacción realizada por la empresa, lo que permite analizar tendencias, identificar oportunidades de crecimiento y tomar decisiones informadas para mejorar el desempeño comercial y satisfacer las necesidades de los clientes.

-Relaciones con los Proveedores:
Las relaciones con los proveedores son fundamentales para garantizar la calidad y disponibilidad de los productos. La base de datos gestiona estas relaciones de manera efectiva, registrando información sobre cada proveedor y facilitando la comunicación y colaboración en la búsqueda de productos de alta calidad a precios competitivos.

-Eficiencia en la Gestión de Pedidos:
Gestionar eficientemente los pedidos es esencial para brindar una experiencia de compra sin problemas a los clientes. La base de datos almacena información detallada sobre cada pedido realizado, lo que permite gestionar eficazmente el flujo de pedidos, coordinar la entrega de productos y brindar un servicio excepcional a los clientes.

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

El codigo es el siguente:
<details>
  <summary>Mostrar código</summary>
   
```
   import csv
   import random
   from faker import Faker
   from datetime import datetime, timedelta
   import unicodedata
   
   def generate_random_date():
       # Generar un año aleatorio entre 2020 y 2023
       year = random.randint(2020, 2023)
   
       # Generar un mes y día aleatorios
       month = random.randint(1, 12)
       day = random.randint(1, 28)  # Tomamos 28 como máximo para evitar problemas con febrero
   
       # Crear la fecha de pedido
       pedido_date = datetime(year, month, day).date()
   
       # Generar un número aleatorio de días entre 5 y 65 para la fecha de envío
       days_to_ship = random.randint(5, 65)
   
       # Calcular la fecha de envío sumando días al pedido
       envio_date = pedido_date + timedelta(days=days_to_ship)
   
       # Formatear las fechas para que utilicen barras (/) en lugar de guiones (-)
       pedido_date_str = pedido_date.strftime("%Y/%m/%d")
       envio_date_str = envio_date.strftime("%Y/%m/%d")
   
       return pedido_date_str, envio_date_str
   
   def generate_random_data():
   
       fake = Faker()
   
       # Headers for each table
       clientes_headers = ["ID Cliente", "Nombre", "Apellido", "ID País", "Dirección", "Correo"]
       pedidos_headers = ["ID Pedido", "ID Cliente", "ID Producto", "Unidades", "Fecha Pedido", "Fecha Envío",
                          "Prioridad", "ID canal", "ID Ventas"]
       productos_headers = ["ID Producto", "Nombre", "Descripción", "Precio Unitario", "Costo Unitario"]
       paises_headers = ["ID País", "Nombre", "Zona"]
       canales_headers = ["ID canal", "Nombre"]
       ventas_headers = ["ID Venta", "ID Empleado", "Venta Bruta", "Venta Neta"]
       empleados_headers = ["ID Empleado", "Nombre", "Apellido", "ID Departamento", "Salario"]
       departamentos_headers = ["ID Departamento", "Nombre", "Ubicación", "Presupuesto"]
       proveedores_headers = ["ID Proveedor", "Nombre", "ID País", "Dirección", "Correo"]
   
       # Data lists for each table
       clientes_data = []
       pedidos_data = []
       productos_data = []
       paises_data = []
       canales_data = []
       ventas_data = []
   
       # Datos para las nuevas tablas
       empleados_data = []
       departamentos_data = []
       proveedores_data = []
   
       #Keys
       clientes_ID = list()
       producto_ID = list()
       pais_ID = list()
       canal_ID = list()
       empleado_ID = list()
       proveedor_ID = list()
       departamento_ID =list()
       pedido_ID = list()
       venta_ID = list()
   
       start_date = datetime(2018, 1, 1)
       end_date = datetime(2024, 1, 1)
   
       canal = ["Online", "Offline"]
       peso_canal =[0.8, 0.4]
   
       prioridad = ["Crítica", "Alta", "Media", "Baja"]
       peso_prioridad = [0.2, 0.4, 0.5, 0.5]
   
       tipos_producto = ["Snacks", "Cárnicos", "Cereales", "Frutas", "Alimento infantil", "Bebida", "Cosméticos",
                         "Cuidado personal", "Material de oficina", "Verduras", "Ropa", "Doméstico"]
       precios = [152.58, 421.89, 205.7, 9.33, 255.28, 47.45, 437.2, 81.73, 651.21, 154.06, 109.28, 668.27]
       costos = [97.44, 364.69, 117.11, 6.92, 159.42, 31.79, 263.33, 56.67, 524.96, 90.93, 35.84, 502.54]
   
       departamentos = ["Ventas", "Contabilidad", "Tecnología", "Recursos Humanos", "Operaciones"]
   
       paises = ["United Kingdom", "Malta", "Marshall Islands", "Iran", "Guatemala","Grenada","Fiji",	"Tunisia",
                 "Australia",	"Greenland",	"Angola",	"Zambia",	"Kenya",	"Azerbaijan",	"Mozambique",
                 "Federated States of Micronesia",	"Dominican Republic",	"Libya",	"Uzbekistan",	"Sri Lanka",
                 "The Gambia",	"Myanmar",	"Bhutan",	"Mali",	"Burundi",	"Nigeria",	"Norway",	"Papua New Guinea",
                 "North Korea",	"Montenegro",	"Lesotho",	"Indonesia",	"Iraq",	"Singapore",	"South Korea",
                 "Lebanon",	"Vietnam",	"Jordan",	"Palau",	"Antigua and Barbuda",	"El Salvador",
                 "Republic of the Congo",	"Vanuatu",	"Bangladesh",	"South Sudan",	"Saint Kitts and Nevis",
                 "Rwanda",	"Moldova",	"Austria",	"Spain",	"China",	"Qatar",	"Georgia",	"Kazakhstan",
                 "Namibia",	"Jamaica",	"Syria",	"Tanzania",	"Hungary",	"Thailand",	"Taiwan",	"India",
                 "Romania",	"East Timor",	"Bosnia and Herzegovina",	"Ireland",	"Croatia",	"Madagascar",
                 "Sierra Leone",	"Netherlands",	"Trinidad and Tobago",	"Samoa",	"Albania",	"Cape Verde",
                 "Italy",	"Maldives",	"Yemen",	"Latvia",	"Lithuania",	"Senegal",	"Bulgaria",	"Seychelles",
                 "Saint Vincent and the Grenadines",	"Andorra",	"Togo",	"Japan",	"Central African Republic",
                 "Mauritania",	"Portugal",	"Liberia",	"Cameroon",	"Cuba",	"Malawi",	"Tuvalu",	"Turkmenistan",
                 "Uganda",	"Switzerland",	"Kuwait",	"Ghana",	"Poland",	"Mongolia",	"Ethiopia",	"Niger",
                 "United States of America",	"Sudan",	"Bahrain",	"Algeria",	"Botswana",	"Guinea-Bissau",
                 "Pakistan",	"Afghanistan",	"Oman",	"Burkina Faso",	"Serbia",	"Mauritius",	"New Zealand",
                 "Somalia",	"Cyprus",	"The Bahamas",	"Germany",	"Luxembourg",	"Solomon Islands",	"Cote d'Ivoire",
                 "Russia",	"Laos",	"Sweden",	"Kiribati",	"Philippines",	"Comoros",	"Liechtenstein",
                 "Chad",	"Macedonia",	"United Arab Emirates",	"Kosovo",	"Mexico",	"Egypt",	"Swaziland",
                 "Brunei",	"Democratic Republic of the Congo",	"Tonga",	"Malaysia",	"Costa Rica",	"Nepal",
                 "Tajikistan",	"Iceland",	"Czech Republic",	"Saudi Arabia",	"Turkey",	"Eritrea",	"Greece",
                 "Benin",	"Honduras",	"Morocco",	"Estonia",	"Canada",	"Belize",	"Nicaragua",	"Monaco",
                 "Barbados",	"Haiti",	"Armenia",	"Panama",	"Israel",	"France",	"Slovakia",	"Nauru",
                 "Ukraine",	"Sao Tome and Principe",	"Saint Lucia",	"Slovenia",	"Belarus",	"San Marino",
                 "Kyrgyzstan",	"South Africa",	"Dominica",	"Guinea",	"Gabon",	"Equatorial Guinea",	"Belgium",
                 "Finland",	"Zimbabwe",	"Cambodia",	"Vatican City",	"Djibouti"]
   
       zona = {
           "Afghanistan": "África",
           "Albania": "Europa",
           "Algeria": "África",
           "Andorra": "Europa",
           "Angola": "África",
           "Antigua and Barbuda": "Centroamérica y Caribe",
           "Armenia": "Europa",
           "Australia": "Australia y Oceanía",
           "Austria": "Europa",
           "Azerbaijan": "África",
           "Bahrain": "África",
           "Bangladesh": "Asia",
           "Barbados": "Centroamérica y Caribe",
           "Belarus": "Europa",
           "Belgium": "Europa",
           "Belize": "Centroamérica y Caribe",
           "Benin": "África",
           "Bhutan": "Asia",
           "Bosnia and Herzegovina": "Europa",
           "Botswana": "África",
           "Brunei": "Asia",
           "Bulgaria": "Europa",
           "Burkina Faso": "África",
           "Burundi": "África",
           "Cambodia": "Asia",
           "Cameroon": "África",
           "Canada": "Norteamérica",
           "Cape Verde": "África",
           "Central African Republic": "África",
           "Chad": "África",
           "China": "Asia",
           "Comoros": "África",
           "Costa Rica": "Centroamérica y Caribe",
           "Cote d'Ivoire": "África",
           "Croatia": "Europa",
           "Cuba": "Centroamérica y Caribe",
           "Cyprus": "Europa",
           "Czech Republic": "Europa",
           "Democratic Republic of the Congo": "África",
           "Djibouti": "África",
           "Dominica": "Centroamérica y Caribe",
           "Dominican Republic": "Centroamérica y Caribe",
           "East Timor": "Australia y Oceanía",
           "Egypt": "África",
           "El Salvador": "Centroamérica y Caribe",
           "Equatorial Guinea": "África",
           "Eritrea": "África",
           "Estonia": "Europa",
           "Ethiopia": "África",
           "Federated States of Micronesia": "Australia y Oceanía",
           "Fiji": "Australia y Oceanía",
           "Finland": "Europa",
           "France": "Europa",
           "Gabon": "África",
           "Georgia": "Europa",
           "Germany": "Europa",
           "Ghana": "África",
           "Greece": "Europa",
           "Greenland": "Norteamérica",
           "Grenada": "Centroamérica y Caribe",
           "Guatemala": "Centroamérica y Caribe",
           "Guinea": "África",
           "Guinea-Bissau": "África",
           "Haiti": "Centroamérica y Caribe",
           "Honduras": "Centroamérica y Caribe",
           "Hungary": "Europa",
           "Iceland": "Europa",
           "India": "Asia",
           "Indonesia": "Asia",
           "Iran": "África",
           "Iraq": "África",
           "Ireland": "Europa",
           "Israel": "África",
           "Italy": "Europa",
           "Jamaica": "Centroamérica y Caribe",
           "Japan": "Asia",
           "Jordan": "África",
           "Kazakhstan": "Asia",
           "Kenya": "África",
           "Kiribati": "Australia y Oceanía",
           "Kosovo": "Europa",
           "Kuwait": "África",
           "Kyrgyzstan": "Asia",
           "Laos": "Asia",
           "Latvia": "Europa",
           "Lebanon": "África",
           "Lesotho": "África",
           "Liberia": "África",
           "Libya": "África",
           "Liechtenstein": "Europa",
           "Lithuania": "Europa",
           "Luxembourg": "Europa",
           "Macedonia": "Europa",
           "Madagascar": "África",
           "Malawi": "África",
           "Malaysia": "Asia",
           "Maldives": "Asia",
           "Mali": "África",
           "Malta": "Europa",
           "Marshall Islands": "Australia y Oceanía",
           "Mauritania": "África",
           "Mauritius": "África",
           "Mexico": "Norteamérica",
           "Moldova": "Europa",
           "Monaco": "Europa",
           "Mongolia": "Asia",
           "Montenegro": "Europa",
           "Morocco": "África",
           "Mozambique": "África",
           "Myanmar": "Asia",
           "Namibia": "África",
           "Nauru": "Australia y Oceanía",
           "Nepal": "Asia",
           "Netherlands": "Europa",
           "New Zealand": "Australia y Oceanía",
           "Nicaragua": "Centroamérica y Caribe",
           "Niger": "África",
           "Nigeria": "África",
           "North Korea": "Asia",
           "Norway": "Europa",
           "Oman": "África",
           "Pakistan": "África",
           "Palau": "Australia y Oceanía",
           "Panama": "Centroamérica y Caribe",
           "Papua New Guinea": "Australia y Oceanía",
           "Philippines": "Asia",
           "Poland": "Europa",
           "Portugal": "Europa",
           "Qatar": "África",
           "Republic of the Congo": "África",
           "Romania": "Europa",
           "Russia": "Europa",
           "Rwanda": "África",
           "Saint Kitts and Nevis": "Centroamérica y Caribe",
           "Saint Lucia": "Centroamérica y Caribe",
           "Saint Vincent and the Grenadines": "Centroamérica y Caribe",
           "Samoa": "Australia y Oceanía",
           "San Marino": "Europa",
           "Sao Tome and Principe": "África",
           "Saudi Arabia": "África",
           "Senegal": "África",
           "Serbia": "Europa",
           "Seychelles": "África",
           "Sierra Leone": "África",
           "Singapore": "Asia",
           "Slovakia": "Europa",
           "Slovenia": "Europa",
           "Solomon Islands": "Australia y Oceanía",
           "Somalia": "África",
           "South Africa": "África",
           "South Korea": "Asia",
           "South Sudan": "África",
           "Spain": "Europa",
           "Sri Lanka": "Asia",
           "Sudan": "África",
           "Swaziland": "África",
           "Sweden": "Europa",
           "Switzerland": "Europa",
           "Syria": "África",
           "Taiwan": "Asia",
           "Tajikistan": "Asia",
           "Tanzania": "África",
           "Thailand": "Asia",
           "The Bahamas": "Centroamérica y Caribe",
           "The Gambia": "África",
           "Togo": "África",
           "Tonga": "Australia y Oceanía",
           "Trinidad and Tobago": "Centroamérica y Caribe",
           "Tunisia": "África",
           "Turkey": "África",
           "Turkmenistan": "Asia",
           "Tuvalu": "Australia y Oceanía",
           "Uganda": "África",
           "Ukraine": "Europa",
           "United Arab Emirates": "África",
           "United Kingdom": "Europa",
           "United States of America": "Norteamérica",
           "Uzbekistan": "Asia",
           "Vanuatu": "Australia y Oceanía",
           "Vatican City": "Europa",
           "Vietnam": "Asia",
           "Yemen": "África",
           "Zambia": "África",
           "Zimbabwe": "África"
       }
   
       # Generate data for each table
   
       # canal
       for index, _ in enumerate(canal, start=0):
           canal_id = "CA" + "00" + str(index + 1)
           canales_data.append([canal_id, canal[index]])
           canal_ID.append(canal_id)
   
       # Pais
       for index, _ in enumerate(paises, start=0):
           pais_id = "PA" + "00" + str(index + 1)
           zona_pais = zona[paises[index]]
           paises_data.append([pais_id, paises[index], zona_pais])
           pais_ID.append(pais_id)
   
       # Cliente
       for index, value in enumerate(range(1, 500 + 1), start=0):
           cliente_id = "CL" + "00" + str(index + 1)
           nombre = fake.first_name()
           apellido = fake.last_name()
           pais_fk = random.choice(pais_ID)
           direccion = f"ADRS{index + 1}"
           correo = nombre + "." + apellido + "@gmail.com"
           clientes_data.append([cliente_id, nombre, apellido, pais_fk, direccion, correo])
           clientes_ID.append(cliente_id)
   
       # Producto
       for index, value in enumerate(tipos_producto, start=0):
           producto_id = "PRO" + "00" + str(index + 1)
           producto_nombre = tipos_producto[index]
           descripcion = f"Descripción de {producto_nombre}"
           precio_unitario = precios[index]
           costo_unitario = costos[index]
           productos_data.append([producto_id, producto_nombre, descripcion, precio_unitario, costo_unitario])
           producto_ID.append(producto_id)
   
       # departamento
       for index, dep in enumerate(departamentos, start=0):
           departamento_id = "DEP" + "00" + str(index + 1)
           nombre = dep
           ubicacion = fake.city()
           presupuesto = round(random.uniform(100000, 1000000))
           departamentos_data.append([departamento_id, nombre, ubicacion, presupuesto])
           departamento_ID.append(departamento_id)
           print(departamento_ID)
   
       # empleado
       for index, _ in enumerate(range(1, 5000 + 1), start=0):
           empleado_id = "EMP" + "00" + str(index + 1)
           nombre = fake.first_name()
           apellido = fake.last_name()
           departamento = random.choice(departamento_ID)
           salario = round(random.uniform(20000, 100000))
           empleados_data.append([empleado_id, nombre, apellido, departamento, salario])
           if departamento == "DEP001":
               empleado_ID.append(empleado_id)
   
       # proveedor
       for index, _ in enumerate(range(1, 1000 + 1), start=0):
           proveedor_id = "PRV" + "00" + str(index + 1)
           nombre = fake.company()
           pais = random.choice(pais_ID)
           direccion = fake.address()
           correo = fake.email()
           proveedores_data.append([proveedor_id, nombre, pais, direccion, correo])
           proveedor_ID.append(proveedor_id)
   
       while len(venta_ID) <= 10000:
           # Pedido
   
           cliente_id = random.choice(clientes_ID)
           fecha_pedido, fecha_envio = generate_random_date()
           canal = random.choices(canal_ID, weights=peso_canal, k=1)[0]
           _prioridad = random.choices(prioridad, weights=peso_prioridad, k=1)[0]
   
           # Venta
           venta_id = "VE" + "00" + str(len(venta_ID) + 1)
           venta_bruta = 0
           venta_neta = 0
   
           for _ in range(1, 8):
               pedido_id = "PE" + "00" + str(len(pedido_ID) + 1)
               producto_id = random.choice(producto_ID)
               unidades = random.randint(150, 1500)
               pedidos_data.append([pedido_id, cliente_id, producto_id, unidades,
                                    fecha_pedido, fecha_envio, _prioridad, canal, venta_id])
               venta_bruta += round(precios[(int((producto_id.split("00")[-1]))) - 1] * unidades)
               venta_neta += round((precios[(int((producto_id.split("00")[-1]))) - 1] * unidades)
                                  - (costos[(int((producto_id.split("00")[-1]))) - 1] * unidades))
               pedido_ID.append(pedido_id)
   
           venta_ID.append(venta_id)
   
           # Venta
           empleado_id = random.choice(empleado_ID)
           ventas_data.append([venta_id, empleado_id, venta_bruta, venta_neta])
   
       return {
           "clientes": (clientes_headers, clientes_data),
           "pedidos": (pedidos_headers, pedidos_data),
           "productos": (productos_headers, productos_data),
           "paises": (paises_headers, paises_data),
           "canales": (canales_headers, canales_data),
           "ventas": (ventas_headers, ventas_data),
           "departamentos": (departamentos_headers, departamentos_data),
           "empleados": (empleados_headers, empleados_data),
           "proveedores": (proveedores_headers, proveedores_data)
       }
   
   #Crear los csv correspondientes
   def write_to_csv(data_dict):
   
       for table, (headers, data) in data_dict.items():
           filename = f"{table}.csv"
           with open(filename, "w", newline="", encoding="utf-8") as file:
               writer = csv.writer(file, delimiter="%")
               headers = [unicodedata.normalize('NFKD', header).encode('ASCII', 'ignore').decode('utf-8') for header in headers]  # Remove accents from headers
               writer.writerow(headers)
               for row in data:
                   row = [unicodedata.normalize('NFKD', str(cell)).encode('ASCII', 'ignore').decode('utf-8') for cell in row]  # Remove accents from data
                   writer.writerow(row)
   
   
   if __name__ == "__main__":
       data_dict = generate_random_data()
       write_to_csv(data_dict)
```
</details>

- La BD se arma mediante el archivo database_sctructure.sql situado en ./structure/database_structure
- Y su populacion mediante el archivo population.sql  situado en ./structure/population.sql

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
