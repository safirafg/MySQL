-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
-- trabalhará com as informações dos funcionaries desta empresa.
-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
-- Popule esta tabela com até 5 dados;
-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
-- Ao término atualize um dado desta tabela através de uma query de atualização

create database db_rh;

use db_rh;

create table tb_funcionarios(
 id bigint auto_increment,
nome varchar (150),
data_nascimento date,
cargo varchar (70),
salario decimal (7,2),
primary key (id)
);

insert into tb_funcionarios (nome, data_nascimento, cargo, salario) values ("Renan", "1989-03-09","Cabeleireiro",1800.50);
insert into tb_funcionarios (nome, data_nascimento, cargo, salario) values ("Maria", "1991-07-31","Trancista",2500.50);
insert into tb_funcionarios (nome, data_nascimento, cargo, salario) values ("Raquel", "1997-10-20","Maquiadora",2000.00);
insert into tb_funcionarios (nome, data_nascimento, cargo, salario) values ("Maiury", "1993-08-03","Fiscal de hidratação",1500.00);
insert into tb_funcionarios (nome, data_nascimento, cargo, salario) values ("Fernando", "1989-03-09","Fiscal das câmeras",1500.50);

select * from tb_funcionarios;
select * from tb_funcionarios where salario = 2000.00;  
select * from tb_funcionarios where salario > 2000.00; 

update tb_funcionarios set salario = 1850.00 WHERE id = 1;
update tb_funcionarios set salario = 1550.00 WHERE id = 5;

