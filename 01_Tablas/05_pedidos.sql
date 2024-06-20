-- Creación tabla pedidos

create table pedidos(
id int primary key identity(1,1),
empleado_id int not null,
proveedor_id int null,
fecha_pedido datetime default getdate(),
estado varchar(255) not null,
fecha_entrega datetime null,
precio_total money null
constraint afk_pedido_empleado foreign key(empleado_id) references empleados(id),
constraint afk_pedido_proveedor foreign key(proveedor_id) references proveedores(id)
)