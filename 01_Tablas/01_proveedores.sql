-- Creación tabla proveedores

Create table proveedores(
id int primary key identity(1,1),
nombre nvarchar(255) not null,
numero_documento varchar(20) not null,
direccion varchar(MAX) null,
numero_contacto varchar(15)null,
email varchar(100) unique not null,
estado int not null
)