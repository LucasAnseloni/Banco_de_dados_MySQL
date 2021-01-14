create database db_escola;

use db_escola;

create table tb_alunos(
id bigint(5) auto_increment,
nome varchar(255) not null,
idade int not null,
genero varchar(20) not null,
turma varchar(255) not null,
nota float not null,
primary key(id)
);

insert into tb_alunos (nome,idade,genero,turma,nota) values ("Lucas", 15, "Masculino", "5º A",9);
insert into tb_alunos (nome,idade,genero,turma,nota) values ("Carol", 13, "Feminino" , "5ª A",5.5);
insert into tb_alunos (nome,idade,genero,turma,nota) values ("Roberto", 14, "Masculino" , "5º B",2);
insert into tb_alunos (nome,idade,genero,turma,nota) values ("Victor", 14, "Masculino" , "5º B",8);
insert into tb_alunos (nome,idade,genero,turma,nota) values ("Rafael", 15, "Masculino" , "5ª A",0);

select * from tb_alunos;

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

UPDATE tb_alunos SET idade =15, nota = 8.5 WHERE id = 4;

select * from tb_alunos;