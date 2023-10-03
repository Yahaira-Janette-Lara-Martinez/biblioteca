drop database if exists biblioteca;
create database biblioteca;
use biblioteca;

create table escuela(
idE int not null auto_increment primary key,
nombre varchar (100) not null
);

create table usuarios(
idU int not null auto_increment primary key,
nombreU varchar (100) not null,
apellidoP varchar (20) not null,
apellidoM varchar (20) not null,
edad varchar (10) not null,
sexo varchar (10) not null,
tipo varchar(20) not null,
id_escuela int not null,
FOREIGN KEY(id_escuela) REFERENCES escuela(idE)
on delete restrict on update cascade
);

create table servicio(
idS int auto_increment primary key,
nombre varchar (100) not null,
descripcion varchar(100) not null
);

create table usuario_servicio(
id int auto_increment primary key,
id_usuario int not null,
id_servicio int not null,
programa varchar(30) not null,
numMaquina int(3) not null,
fecha date  not null,
hora_inicio time not null,
hora_final time not null,
FOREIGN KEY(id_usuario) REFERENCES usuarios(idU)
on delete restrict on update cascade,
FOREIGN KEY(id_servicio) REFERENCES servicio(idS)
on delete restrict on update cascade
);
