CREATE DATABASE TIENDA;
create table estado(
 id INT AUTO_INCREMENT PRIMARY KEY,
 descripcion VARCHAR(100) NOT NULL,
 fechaCreo TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tipousuartio(
id INT auto_increment pRIMARY KEY,
descripcion varchar(100) not null,
estadoId int not null,
fechaCreo timestamp default current_timestamp,
foreign key (estadoId) references estado(id)
);
create table usuario(
id Int auto_increment primary key,
nombreCOMPLETO VARCHAR(100) NOT NULL,
correo varchar(100) not null,
contrasenia varchar(100) not null,
tipoUsuarioId int not null
);


create table categoria
(
id int auto_increment primary key,
descripcion varchar(100) not null,
estadoID int not null,
fechaCREO TIMESTAMP DEFAULT current_timestamp
);

CREATE TABLE producto(
id INT auto_increment primary KEY,
nombre varchar(100) not null,
descripcion varchar(100) not null,
precio decimal(10,2),
cantidad int default 0,
categoria int not null,
fechacreo timestamp default current_timestamp,
foreign key(categoriaId) references categorias
);

create table ordenes(
id int auto_increment primary key,
usuarioId int not null,
estadoId int not null,
fechaCreo timestamp default current_timestamp
);
create table detalleOrdenes(
id int auto_increment primary key,
ordenId int not null,
productoId int not null,
cantidad int not null,
precio decimal(10,2),
estadoId int not null,
fechaCreo timestamp default current_timestamp
);
