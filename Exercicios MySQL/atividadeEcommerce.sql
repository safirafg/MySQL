create database db_ecommerce; 
use db_ecommerce; 


create table tb_produtos(
	id bigint auto_increment,
    nome varchar(150),
    ano double,
    cor varchar (100),
    marca varchar(100),
    preco decimal(10,2),
    primary key (id)
);


insert into tb_produtos (nome, ano, cor, marca, preco) values ("Gle 400", "2017", "Branca", "Mercedes-benz", 300000.00);
insert into tb_produtos (nome, ano, cor, marca, preco) values ("SW4", "2020", "Marrom", "Toyota", 200000.00);
insert into tb_produtos (nome, ano, cor, marca, preco) values ("HR-V", "2021","Azul", "Honda", 160000.00);
insert into tb_produtos (nome, ano, cor, marca, preco) values ("BMW iX", "2021", "Vermelha", "BMW", 1000000.00);
insert into tb_produtos (nome, ano, cor, marca, preco) values ("Corolla", "2021", "Preto", "Toyota", 130000.00);
insert into tb_produtos (nome, ano, cor, marca, preco) values ("Civic", "2021", "Branco", "Honda", 170000.00);
insert into tb_produtos (nome, ano, cor, marca, preco) values ("Tucson", "2021", "Vinho", "Hyundai", 200000.00);
insert into tb_produtos (nome, ano, cor, marca, preco) values ("Cruze", "2022", "Prata", "Chevrolet", 130000.00);


select * from tb_produtos;
select * from tb_produtos where preco < 170000.00;
select * from tb_produtos where preco > 170000.00;


update tb_produtos set preco = 330000.00 where id = 1;
update tb_produtos set preco = 135000.00 where id = 5;