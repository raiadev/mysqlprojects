create table produtosHosp(
id int primary key auto_increment,
nome varchar(25),
preço  float

);

create table hist_preco_produtosHosp(
id int primary key auto_increment,
data date,
id_prod int,
valor_anterior float,
valor_atual float

);
#Criando FK
alter table hist_preco_produtosHosp add constraint produtosfk_id_prod foreign key (id_prod) references produtosHosp(id);

##Algumas inserções:
insert into produtosHosp values (default, "SoroFisio/1L", '18.5');
insert into produtosHosp values (default, "SoroFisio/250mL", '7.5');
insert into produtosHosp values (default, "CamaHosp", '3999.90');
insert into produtosHosp values (default, "PctGazeEst/500un", '51.5');
insert into produtosHosp values (default, "Esfigmomanômetro", '69.5');


DROP TRIGGER IF EXISTS `cadhospital`.`produtoshosp_AFTER_UPDATE`;

/*Criando uma Trigger a qual é ativada ao  modificar o preço do produto (trigger de atualização),
   mostrando o preço anterior e o atual do produto.*/
DELIMITER $$
USE `cadhospital`$$
CREATE DEFINER = CURRENT_USER TRIGGER `cadhospital`.`produtoshosp_AFTER_UPDATE` AFTER UPDATE ON `produtoshosp` FOR EACH ROW
BEGIN
if new.preço  <> old.preço then 
insert into hist_preco_produtosHosp values (default, now(), new.id, old.preço, new.preço);
end if;
END$$
DELIMITER ;



select*from hist_preco_produtosHosp
order by hist_preco_produtosHosp.id_prod;
select*from produtosHosp;

select*from produtoshosp, hist_preco_produtoshosp
ORDER BY hist_preco_produtosHosp.id_prod;



