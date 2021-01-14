-- criar um banco de dados
create database db_servico_rh;
-- acesso ao db
use db_servico_rh;

-- cria uma tabela
create table tb_funcionario(
id bigint(5) auto_increment,
nome varchar(255) not null,
salario float not null,
idade int not null,
cargo varchar(255) not null,
primary key(id)
);
 
 -- Populando tabela
insert into tb_funcionario (nome,salario,idade,cargo) values ("Lucas",10000, 28, "Programador java");
insert into tb_funcionario (nome,salario,idade,cargo) values ("Jack",2000, 26,"Programador Phyton");
insert into tb_funcionario (nome,salario,idade,cargo) values ("Luiz",10000, 20, "Analista de dados");
insert into tb_funcionario (nome,salario,idade,cargo) values ("Igor",1000, 23, "Tech recruiter");
insert into tb_funcionario (nome,salario,idade,cargo) values ("Francisco",12000, 30, "talent aquisition");

select * from tb_funcionario;
 
 -- busca da tabela funcionario com salario menor que 2000
select * from tb_funcionario where salario < 2000;

 -- busca da tabela funcionario com salario maior que 2000
select * from tb_funcionario where salario > 2000;

-- atualizar um dado da tabela
UPDATE tb_funcionario SET cargo = "Front end", salario =  15000 WHERE id = 4;

select * from tb_funcionario;