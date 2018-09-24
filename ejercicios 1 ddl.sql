create database vuelos character set latin1 collate latin1_spanish_ci;

use vuelos;
create table clientes(
	id int auto_increment not null primary key,
    nombre varchar(50),
	apellidos varchar(50),
	direccion varchar(150)
);

create table viajes(
	id int auto_increment not null primary key,
    titulo varchar(50),
    descripcion varchar(150),
    codigoCliente int,
    foreign key (codigoCliente) references clientes(id)
);

