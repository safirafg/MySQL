create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (100),
entrega varchar (100),

primary key (id)
);

insert into tb_categoria (tipo, entrega) values ("caixa d'água", "retirada");
insert into tb_categoria (tipo, entrega) values ("canos", "retirada");
insert into tb_categoria (tipo, entrega) values ("telha", "retirada");
insert into tb_categoria (tipo, entrega) values ("tinta", "envio");
insert into tb_categoria (tipo, entrega) values ("cimento", "envio");

create table tb_produto (
id bigint auto_increment,
marca varchar (100),
cor varchar (100),
especificação varchar(100),
categoria_id bigint,
preco double,

primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (marca, cor, especificação, categoria_id, preco)
values ("Fortlev", "Azul", "1000L", 1, 359.99);
insert into tb_produto (marca, cor, especificação, categoria_id, preco)
values ("Equation", "Marrom", "para Água Fria 3m 25mm 3/4", 2, 23.90);
insert into tb_produto (marca, cor, especificação, categoria_id, preco)
values ("Terracota", "Marrom", "Cerâmica Romana Realeza Gold", 3, 1.69);
insert into tb_produto (marca, cor, especificação, categoria_id, preco)
values ("Coral", "Branco", "Coralar Econômica Acrílica Fosca", 4, 175.90);
insert into tb_produto (marca, cor, especificação, categoria_id, preco)
values ("Votoran", "Cinza", "Todas As Obras 50kg", 5, 28.89);
insert into tb_produto (marca, cor, especificação, categoria_id, preco)
values ("Tigre", "Azul", "Polietileno 1000 Litros de Tampa com rosca", 1, 629.95);
insert into tb_produto (marca, cor, especificação, categoria_id, preco)
values ("Suvinil", "Pêssego", "Clássica Premium Maxx PVA 18 litros", 4, 459.93);
insert into tb_produto (marca, cor, especificação, categoria_id, preco)
values ("Ramo", "Cobre", "Cobre Água Quente Classe A 22mm ou 3/4'' 2,5m", 2, 369.90);

 select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where marca like "s%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where categoria_id = 3;