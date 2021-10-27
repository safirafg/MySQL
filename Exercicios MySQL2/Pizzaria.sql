create database db_pizzaria_legal;
use db_pizzaria_legal; 

create table tb_categoria(
id bigint auto_increment,
tipo varchar(200),
borda varchar(200),
serveQuantos int,
primary key (id)
);

insert into tb_categoria (tipo, borda, serveQuantos) values ("Gigante", "Sim", 16);
insert into tb_categoria (tipo, borda, serveQuantos) values ("Grande", "Sim", 8);
insert into tb_categoria (tipo, borda, serveQuantos) values ("Média", "Não", 6);
insert into tb_categoria (tipo, borda, serveQuantos) values ("Pequena", "Não", 4);
insert into tb_categoria (tipo, borda, serveQuantos) values ("Broto", "Não", 1);


select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(100),
sabor varchar(100),
variação varchar(100),
consumo varchar(100),
preco int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza(nome, sabor, variação, consumo, preco, categoria_id) values ("Nordestina","Carne seca com queijo coalho",
"Salgada","Local", 60, 2);

insert into tb_pizza (nome, sabor, variação, consumo, preco, categoria_id) values ("Portuguesa", "Queijo, presunto, ovo, milho 
e cebola", "Salgada", "Retirada", 50, 1);

insert into tb_pizza (nome, sabor, variação, consumo, preco, categoria_id) values ("Francesa", "Queijo mussarela, tomate e azeite",
 "Salgada", "Delivery", 45, 2);
 
insert into tb_pizza (nome, sabor, variação, consumo, preco, categoria_id) values ("Paulista", "Tomate, bacon e catupiry", "Salgada", 
"Local", 40, 3);

insert into tb_pizza (nome, sabor, variação, consumo, preco, categoria_id) values ("Parisiense", "Nutella e morango", "Doce",
 "Retirada", 20, 5);
 
insert into tb_pizza (nome, sabor, variação, consumo, preco, categoria_id) values ("Gramadense", "Chocolate preto 30% e granulado",
"Doce", "Delivery", 35, 2);

insert into tb_pizza (nome, sabor, variação, consumo, preco, categoria_id) values ("Catarinense", "Chocolate branco e M&M", "Doce",
 "Local", 25, 5);
 
insert into tb_pizza (nome, sabor, variação, consumo, preco, categoria_id) values ("Pessoense", "Brigadeiro", "Doce", 
"Retirada", 30, 4);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id
where categoria_id = 2;

DROP TABLE tb_pizza;
DROP TABLE tb_categoria;
DROP DATABASE db_pizzaria_legal;