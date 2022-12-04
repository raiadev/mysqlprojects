
 
CREATE TABLE produtosHosp (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(25),
    preço FLOAT
);
#inserindo a coluna estoque_atual para executar a procedure.
alter table produtosHosp add column estoque_atual int;

##Algumas inserções:
insert into produtosHosp values (default, "SoroFisio/1L", '18.5','200');
insert into produtosHosp values (default, "SoroFisio/250mL", '7.5','150');
insert into produtosHosp values (default, "CamaHosp", '3999.90','10');
insert into produtosHosp values (default, "PctGazeEst/500un", '51.5','110');
insert into produtosHosp values (default, "Esfigmomanômetro", '69.5','10');
 
 ##Criando procedure
 
CREATE PROCEDURE `PR_estoquecontrol` 
## Inserindo Parâmetros
(in ncod int,
in nquant decimal(10,2)
)
BEGIN
    update ProdutosHosp
    set produtosHosp.estoque_atual = produtosHosp.estoque_atual - nquant
    where id = ncod
    
END$$

DELIMITER ;

call PR_estoquecontrol();


