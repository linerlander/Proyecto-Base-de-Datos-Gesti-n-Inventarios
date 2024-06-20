-- Creación tabla productos

create table productos(
id int primary key identity(1,1),
nombre varchar(150) not null,
descripcion text null,
precio_compra money null,
precio_venta money null,
stock int null,
sku varchar(20) null,
estado varchar(55) not null,
categoria_id int not null
constraint fk_producto_categoria foreign key(categoria_id) references categorias_productos(id)
)