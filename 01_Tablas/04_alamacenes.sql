-- Creación tabla almacenes

create table almacenes(
id int primary key identity(1,1),
nombre varchar(255) not null,
ubicacion varchar(255) not null,
area decimal(18,2) null,
capacidad int null,
encargado_id int not null
constraint fk_alamacen_encargado foreign key(encargado_id) references empleados(id)
)