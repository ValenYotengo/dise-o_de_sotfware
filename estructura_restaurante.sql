--borrar el esquema de base por defecto 
DROP SCHEMA public;
CREATE SCHEMA IF NOT EXISTS restaurante;

--crear la entidad cliente

CREATE TABLE IF NOT EXISTS restaurante.clientes (
id_cliente INT UNIQUE NOT NULL PRIMARY KEY,
nombre_cliente VARCHAR(50) NOT NULL,
celular_cliente VARCHAR(20) NOT NULL,
direccion_cliente VARCHAR(50) NOT NULL,
barrio_cliente VARCHAR(50) NOT NULL
);

-- crear la entidad categoria 

CREATE TABLE IF NOT EXISTS restaurante.categoria(
id_categoria SERIAL UNIQUE NOT NULL PRIMARY KEY,
nombre_categoria VARCHAR(50)NOT NULL
);

-- crear la entidad de domiciliario 

CREATE TABLE IF NOT EXISTS restaurante.domiciliarios(

id_domiciliario VARCHAR(50)UNIQUE NOT NULL PRIMARY KEY,
nombre_domiciliario VARCHAR(50) NOT NULL,
celular_domoiciliario VARCHAR (50) NOT NULL
);

--crear la entidad de moto 

CREATE TABLE IF NOT EXISTS restaurante.motos(
id_motos VARCHAR(50) UNIQUE NOT NULL PRIMARY KEY,
modelo VARCHAR(50) NOT NULL,
vencimiento_soat VARCHAR(50)NOT NULL,
id_domiciliario VARCHAR (50) NOT NULL,

CONSTRAINT fk_moto_domiciliario FOREIGN KEY (id_domiciliario) REFERENCES restaurante.domiciliarios(id_domiciliario)
);

--crear la entidad de plato

CREATE TABLE IF NOT EXISTS restaurante.platos(
id_plato VARCHAR(50) UNIQUE NOT NULL PRIMARY KEY,
nombre_plato VARCHAR(50) NOT NULL,
precio VARCHAR(50) NOT NULL,
id_categoria SERIAL NOT NULL,

CONSTRAINT fk_plato_categoria FOREIGN KEY (id_categoria) REFERENCES restaurante.categoria(id_categoria)
);

--crear la entidad de pedido

CREATE TABLE IF NOT EXISTS restaurante.pedidos(
id_pedidos VARCHAR(50) UNIQUE NOT NULL PRIMARY KEY,
fecha_pedido TIMESTAMP NOT NULL,
esta VARCHAR(30) NOT NULL,
id_cliente INT NOT NULL,
id_domiciliario VARCHAR(50) NOT NULL,

CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES restaurante.clientes(id_cliente),
CONSTRAINT fk_pedido_domiciliario FOREIGN KEY (id_domiciliario) REFERENCES restaurante.domiciliarios(id_domiciliario)

); 

-- crear la cantidad de detalles

CREATE TABLE IF NOT EXISTS restaurante.detalles(
id_detalle SERIAL UNIQUE NOT NULL PRIMARY KEY,
cantidad INT NOT NULL,
orecio_cobrado NUMERIC(10,2) NOT NULL,
id_pedidos VARCHAR(50) NOT NULL,
id_plato VARCHAR(50) NOT NULL,

CONSTRAINT fk_detalle_pedido FOREIGN KEY (id_pedidos) REFERENCES restaurante.pedidos(id_pedidos),
CONSTRAINT fk_detalle_plato FOREIGN KEY (id_plato) REFERENCES restaurante.platos(id_plato)
);
 









