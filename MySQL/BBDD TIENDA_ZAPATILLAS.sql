CREATE SCHEMA tienda_zapatillas;
USE tienda_zapatillas;

CREATE TABLE zapatillas(
id_zapatilla INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL,
PRIMARY KEY (id_zapatilla));

CREATE TABLE clientes(
id_cliente INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR(45) NOT NULL,
numero_telefono INT(9) NOT NULL,
email VARCHAR(45) NOT NULL, 
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45),
provincia VARCHAR(45) NOT NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal VARCHAR(45) NOT NULL,
PRIMARY KEY (id_cliente));

CREATE TABLE empleados(
id_empleado INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario INT,
fecha_incorporacion DATE,
PRIMARY KEY(id_empleado));

CREATE TABLE facturas(
id_factura INT AUTO_INCREMENT NOT NULL,
numero_factura VARCHAR(45) NOT NULL,
fecha DATE NOT NULL, 
id_zapatilla INT NOT NULL,
id_empleado INT NOT NULL,
id_cliente INT NOT NULL,
PRIMARY KEY(id_factura),
CONSTRAINT `fk_facturas_empleados_clientes_zapatillas`
FOREIGN KEY (id_zapatilla)
REFERENCES zapatillas (id_zapatilla) ON DELETE CASCADE ON UPDATE CASCADE);

USE tienda_zapatillas;

ALTER TABLE zapatillas
ADD COLUMN marca VARCHAR(45) NOT NULL;

ALTER TABLE zapatillas
ADD COLUMN talla INT NOT NULL;

ALTER TABLE empleados
MODIFY COLUMN salario FLOAT;

ALTER TABLE clientes 
DROP COLUMN pais;

ALTER TABLE clientes
MODIFY COLUMN codigo_postal INT(5);

ALTER TABLE facturas
ADD COLUMN total FLOAT;

