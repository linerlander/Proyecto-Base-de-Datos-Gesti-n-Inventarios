-- Creación tabla empleados

CREATE TABLE empleados(
id int primary key identity(1,1),
nombres varchar(155) not null,
apellido_paterno nvarchar(155) not null,
apellido_materno nvarchar(155) not null,
num_documento  varchar(12) unique not null,
direccion nvarchar(Max) null,
cargo varchar(100) null,
fecha_ingreso date null,
supervisor_id int null,
constraint fk_empleado_supervisor foreign key(supervisor_id) references empleados(id)
)