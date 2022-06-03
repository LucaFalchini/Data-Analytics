Use AdventureWorks2019
Create schema base1

Create table base1.choferes (
	id_chofer int primary key,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	DNI int not null);

Create table base1.clientes (
	id_clientes int primary key,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	DNI int not null);

Create table base1.viajes (
	id_viaje int primary key,
	id_cliente int foreign key references base1.clientes(id_cliente),
	id_chofer int foreign key references base1.clientes(id_chofer),
	);

insert into base1.clientes values (1,'Juan','Perez',123456);

