create database db_generation_game_online;
use db_generation_game_online; 

create table tb_classes(
id bigint auto_increment,
nome varchar(255),
habilidade varchar(150),
arma varchar(255),
primary key (id)
);

insert into tb_classes(nome, habilidade, arma) values ("Bruxo", "Mira perfeita", "Varinha");
insert into tb_classes(nome, habilidade, arma) values ("Atleta", "Equilíbrio impecável", "Pomo de ouro");
insert into tb_classes(nome, habilidade, arma) values ("Professora", "Vidente", "Bola de cristal");
insert into tb_classes(nome, habilidade, arma) values ("Meio gigante", "Força", "Criaturas mágicas");
insert into tb_classes(nome, habilidade, arma) values ("Bruxo", "Ser insuportável", "Inconveniência");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(100),
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Harry", 2000, 4000, 1500, 1);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Fred", 1000, 2000, 1000, 2);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Jorge", 1000, 2000, 1000, 2);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Hagrid", 1000, 1800, 1500, 4);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Voldemort", 1700, 3000, 1300, 5);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Lúcio", 1300, 2300, 890, 5);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Sibila", 1000, 900, 2000, 3);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Ronald", 1000, 2100, 900, 2);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id;

select tb_personagens.nome, tb_classes.nome from tb_personagens inner join tb_classes 
on tb_personagens.classe_id = tb_classes.id
where tb_classes.id = 2;