use cadhospital;
CREATE TABLE produtosHosp (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(25),
    preço FLOAT
);
#inserindo a coluna estoque_atual para executar a procedure.
alter table produtosHosp add column estoque_atual int;

select * from produtoshosp;

##Algumas inserções:
insert into produtosHosp values (default, "SoroFisio/1L", '18.5','200');
insert into produtosHosp values (default, "SoroFisio/250mL", '7.5','150');
insert into produtosHosp values (default, "CamaHosp", '3999.90','10');
insert into produtosHosp values (default, "PctGazeEst/500un", '51.5','110');
insert into produtosHosp values (default, "Esfigmomanômetro", '69.5','10');
 
 
 create table clientes(
cpf_cliente char(11) primary key,
nome_cliente varchar(15),
sobrenome_cliente varchar(20)

);

alter table clientes add column id_prod int;
alter table clientes add constraint fk_id_prod foreign key (id_prod) references produtoshosp(id);


#Algumas inserções de dados:
insert into clientes values ('12337433530', 'Ana', 'Silva',2);
insert into clientes values ('32537433537', 'João', 'Santos',5);
insert into clientes values ('02357433530', 'José', 'Avelar',1);
insert into clientes values ('02657773530', 'Júlia', 'Rodrigues',1);
insert into clientes values ('13337433637', 'Paulo', 'Santos',4);

select COUNT(nome_cliente)from clientes;

SELECT * FROM cadhospital.clientes;