create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
variação varchar (255) not null,
sustentavel boolean,
organico boolean,

primary key (id)

);

insert into tb_categoria (variação, sustentavel, organico) values ("Legume", false, false);
insert into tb_categoria (variação, sustentavel, organico) values ("Fruta", true, true);
insert into tb_categoria (variação, sustentavel, organico) values ("Verdura", true,false);
insert into tb_categoria (variação, sustentavel, organico) values ("Legume", true,true);
insert into tb_categoria (variação, sustentavel, organico) values ("Verdura", true,true);

create table tb_produto(
id bigint auto_increment,
nome varchar (100),
origem varchar (100),
quantidade varchar(100),
preco double,

categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Batata-doce", "Paraíba", "1kg", 3.50, 4);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Jerimum", "Bahia", "1kg", 3.00, 4);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Couve", "Rio Grande do Norte", "500g", 5.00, 5);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Hortelã", "Pernambuco", 1, 3.00, 5);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Brócolis", "São Paulo", "1kg", 8.00, 3);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Manga pálmer", "Minas Gerais", "1kg", 8.00, 2);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Cenoura", "Ceará", "1kg", 2.50, 1);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Uva", "Paraná", "1kg", 10.00, 2);

 select * from tb_produto;

select * from tb_produto where preco > 5.00;

select * from tb_produto where preco between 3.00 and 10.00;

select * from tb_produto where nome like "%c";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where categoria_id = 2;