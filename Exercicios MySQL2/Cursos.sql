create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (100),
duracao varchar (100),
cargaHorária varchar (100),
primary key (id)
);

insert into tb_categoria (tipo, duracao, cargaHorária) values ("Técnico em Edificações", "2 anos", "30h semanais");
insert into tb_categoria (tipo, duracao, cargaHorária) values ("Libras", "3 anos", "25h semanais");
insert into tb_categoria (tipo, duracao, cargaHorária) values ("Inglês", "2,5 anos", "20h semanais");
insert into tb_categoria (tipo, duracao, cargaHorária) values ("Técnico em Nutrição e Dietética", "2 anos", "30h semanais");
insert into tb_categoria (tipo, duracao, cargaHorária) values ("Técnico em enfermagem", "2 anos", "30h semanais");

create table tb_produto(
id bigint auto_increment,
nome varchar (100) not null,
presencial varchar (100),
certificado varchar (100),
preco double,
categoria_id bigint,

primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("Libras básico", "Sim", "Sim", 59.99, 2);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("Libras intermediário+avançado", "Sim", "Sim", 59.99, 2);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("Técnico em enfermagem", "Opção semi-presencial ou presencial", "Sim", 99.99, 5);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("Inglês básico", "Opção EAD", "Sim", 49.99, 3);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("Inglês intermediário", "Opção EAD", "Sim", 69.99, 3);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("Inglês avançado", "Opção EAD", "Sim", 69.99, 3);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("Técnico em edificações", "Sim", "Sim", 49.99, 1);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("Técnico em nutrição e dietética", "Sim", "Sim", 79.99, 4);

 select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%l%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where categoria_id = 3;