create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
medicacao varchar(100),
receita  varchar(100),
emEstoque varchar(100),
primary key (id)
);

insert into tb_categoria (medicacao, receita, emEstoque) values ("Sim", "Obrigatória", "Sim");
insert into tb_categoria (medicacao, receita, emEstoque) values ("Sim", "Não obrigatória", "Sim");
insert into tb_categoria (medicacao, receita, emEstoque) values ("Não", "Não obrigatória", "Sim");
insert into tb_categoria (medicacao, receita, emEstoque) values ("Sim", "Obrigatória", "Não");
insert into tb_categoria (medicacao, receita, emEstoque) values ("Não", "Não obrigatória", "Não");


create table tb_produto(
id bigint auto_increment,
nome varchar (100),
quantidade varchar (100),
marca varchar (100),
preco double,
categoria_id bigint,
primary key (id),

foreign key (categoria_id) references tb_categoria (id) 
);

insert into tb_produto (nome, quantidade, marca, preco, categoria_id) values
 ("Xarelto (rivaroxabana) 10mg", "1 caixa","Genérico", 229.00, 1);
 insert into tb_produto (nome, quantidade, marca, preco, categoria_id) values
 ("Espironolactona 25mg", "1 caixa","Genérico", 20.00, 2);
 insert into tb_produto (nome, quantidade, marca, preco, categoria_id) values
 ("Shampoo Johnson’s Baby 200ml", "2 unidades","Johnson’s", 24.00, 3);
 insert into tb_produto (nome, quantidade, marca, preco, categoria_id) values
 ("Desodorante Ban Powder Fresh", "1 unidade","Ban", 29.90, 3);
 insert into tb_produto (nome, quantidade, marca, preco, categoria_id) values
 ("Dimorf 10mg (morfina)", "1 caixa","Genérico",50.00, 4);
 insert into tb_produto (nome, quantidade, marca, preco, categoria_id) values
 ("Água micelar", "1 unidade","Nivea",50.00, 5);
 insert into tb_produto (nome, quantidade, marca, preco, categoria_id) values
 ("Ácido ascórbico (vitamina C) vegetariano", "1 frasco","Sundown",159.90, 5);
 insert into tb_produto (nome, quantidade, marca, preco, categoria_id) values
 ("Enalapril 10mg", "1 caixa","Renitec",19.90, 4);
 
 select * from tb_produto;
 
 select * from tb_produto where preco >50;
 
 select * from tb_produto where preco between 3 and 60;
 
 select * from tb_produto where nome like "%b%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where categoria_id = 4;