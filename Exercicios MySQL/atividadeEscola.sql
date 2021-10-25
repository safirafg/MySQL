create database db_escola; 
use db_escola; 


create table tb_alunos(
	id bigint auto_increment,
    nome varchar(200),
    data_nascimento date,
    turma int,
    media decimal(4,2),
    primary key (id)
);


insert into tb_alunos (nome, data_nascimento, turma, media) values ("Will", "1988-08-08", 8, 8.50);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Capheus", "1988-08-08", 8, 7.90);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Riley", "1988-08-08", 8, 6.50);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Lito", "1988-08-08", 8, 7.50);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Sun", "1988-08-08", 8, 9.50);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Wolfgang", "1988-08-08", 8, 5.50);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Nomi", "1988-08-08", 8, 8.50);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Kala", "1988-08-08", 8, 9.00);


select * from tb_alunos;
select * from tb_alunos where media > 7.00;
select * from tb_alunos where media < 7.00;


update tb_alunos set media = 8.50 where id = 2;
update tb_alunos set media = 7.70 where id = 4;