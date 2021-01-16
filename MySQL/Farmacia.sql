create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint(5) auto_increment,
fabricante varchar(255) not null, -- Integral medica
tipo varchar(255) not null, -- Suplementos
primary key(id)
);

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(255) not null,
preco decimal(4,2) not null,
quantidade_estoque int not null,
categoria_id bigint(5),
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

select * from tb_produto;
select * from tb_categoria;


insert into tb_categoria(fabricante, tipo) values("Integral Médica", "Suplementos"); -- id 1 suplementos
insert into tb_categoria(fabricante, tipo) values("Cimed", "Vitaminas"); -- id 2 vitaminas 
insert into tb_categoria(fabricante, tipo) values("Butantan", "Vacinas"); -- id 3 vacina
insert into tb_categoria(fabricante, tipo) values("Aché", "Antibióticos"); -- id 4 antibióticos
insert into tb_categoria(fabricante, tipo) values("Sanofi", "Anticoncepcionais"); -- id 5 anticoncepcionais 



insert into tb_produto(nome, preco, quantidade_estoque, categoria_id) values("Whey", 95.00, 20, 1);
insert into tb_produto(nome, preco, quantidade_estoque, categoria_id) values("BCAA", 89.00, 15, 1);
insert into tb_produto(nome, preco, quantidade_estoque, categoria_id) values("Lavitan", 20.00, 10, 2);
insert into tb_produto(nome, preco, quantidade_estoque, categoria_id) values("Qlaira", 58.00, 23, 5);
insert into tb_produto(nome, preco, quantidade_estoque, categoria_id) values("Glutamina",63.00, 32, 1);
insert into tb_produto(nome, preco, quantidade_estoque, categoria_id) values("Amoxilina",12.00, 10, 4);
insert into tb_produto(nome, preco, quantidade_estoque, categoria_id) values("CoronaVac",10.00, 90, 3);
insert into tb_produto(nome, preco, quantidade_estoque, categoria_id) values("Selene",26.00, 100, 5);
insert into tb_produto(nome, preco, quantidade_estoque, categoria_id) values("Cloxacilina", 56.00, 50, 4);

select tb_produto.nome, tb_produto.preco from tb_produto where preco > 50;

select tb_produto.nome, tb_produto.preco from tb_produto where preco >= 3 and preco <=60;

select tb_produto.nome from tb_produto where nome like "%B%";

select tb_produto.nome, tb_produto.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.preco, tb_categoria.tipo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.tipo = "Anticoncepcionais";

select * from tb_produto;
