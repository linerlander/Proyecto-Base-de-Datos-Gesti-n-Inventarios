-- Creación tabla categoria productos

create table categorias_productos(
id int primary key identity(1,1),
categoria_id int null,
nombre varchar(150) not null,
descripcion text null,
constraint fk_categorias_productos_categoria foreign key(categoria_id) references categorias_productos(id)
)
