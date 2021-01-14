create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint(5) auto_increment,
descricao varchar(255) not null,
preco float not null,
categoria varchar(255) not null,
marca varchar(255) not null,
primary key(id)
);

 
insert into tb_produtos (descricao,preco,categoria,marca) values ("Samsung S20 Plus",3300, "Smartphone", "Samsung");
insert into tb_produtos (descricao,preco,categoria,marca) values ("iPhone 11 Pro",8500, "Smartphone", "Apple");
insert into tb_produtos (descricao,preco,categoria,marca) values ("Smart TV LG5",1500, "Televisão", "LG");
insert into tb_produtos (descricao,preco,categoria,marca) values ("Smart TV samsung2",2000, "Televisão", "Samsung");
insert into tb_produtos (descricao,preco,categoria,marca) values ("Geladeria eletroluxz1",4700, "geladeira", "eletrolux");
insert into tb_produtos (descricao,preco,categoria,marca) values ("Playstation 5",6000, "Videogames", "Sony");
insert into tb_produtos (descricao,preco,categoria,marca) values ("Sansumg note 20",4500, "Smartphone", "Samsung");
insert into tb_produtos (descricao,preco,categoria,marca) values ("iPhone 12",10000, "Smartphone", "Apple");

select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

UPDATE tb_produtos SET preco = 12000, descricao = "iPhone 12 Pro"  WHERE id = 8;

select * from tb_produtos;