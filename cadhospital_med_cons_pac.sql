use cadhospital;
drop table paciente;
drop table medico;
drop table consulta;

create table medico(
id_med int primary key auto_increment,
nome_med varchar(15),
sobrenome1_med varchar(15),
especialidade_med varchar(20),
quant_plantao_semana int
)ENGINE = InnoDB;

insert into medico values (default, "João", "Batista", "Ortopedista", '3');
insert into medico values (default, "Valéria", "Lima", "Pediatra", '4');
insert into medico values (default, "Pietro", "Santos", "Neurologista", '2');
insert into medico values(default,"Isabel", "Alcântara", "Cardiologista", '2');
insert into medico values(default,"Inácio", "Loyola", "Clínico", '5');
delete from medico where id_med = ;

select*from medico;



create table paciente( 
id_paciente int primary key auto_increment,
nome_paciente varchar(15),
sobrenome_paciente varchar(15)

)ENGINE = InnoDB;



#1º
alter table paciente add column medmarcado int;
#2º
alter table paciente add constraint fk_medmarcado foreign key (medmarcado) 
references medico(id_med);
#3º
insert into paciente (id_paciente, nome_paciente, sobrenome_paciente, medmarcado) values(default, "Maria", "Oliva", '5');
insert into paciente (id_paciente, nome_paciente, sobrenome_paciente, medmarcado) values(default, "Mariana", "Santos", '1');
insert into paciente (id_paciente, nome_paciente, sobrenome_paciente, medmarcado) values(default, "Luiz", "Fernando", '3');
insert into paciente (id_paciente, nome_paciente, sobrenome_paciente, medmarcado) values(default, "José", "Silva", '5');
insert into paciente (id_paciente, nome_paciente, sobrenome_paciente, medmarcado) values(default, "José", "Valentin", '4');
insert into paciente (id_paciente, nome_paciente, sobrenome_paciente, medmarcado) values(default, "Catarina", "Sena", '4');
insert into paciente (id_paciente, nome_paciente, sobrenome_paciente, medmarcado) values(default, "João", "Avelino", '2');

#4º adição posterior de coluna data de nascimento do paciente e atualização da informação de cada paciente.
alter table paciente add column data_nascimento date;
UPDATE `cadhospital`.`paciente` SET `data_nascimento` = '2020-11-25' WHERE (`id_paciente` = '7');
UPDATE `cadhospital`.`paciente` SET `data_nascimento` = '2000-02-01' WHERE (`id_paciente` = '6');
UPDATE `cadhospital`.`paciente` SET `data_nascimento` = '2000-08-30' WHERE (`id_paciente` = '5');
UPDATE `cadhospital`.`paciente` SET `data_nascimento` = '2001-01-10' WHERE (`id_paciente` = '4');
UPDATE `cadhospital`.`paciente` SET `data_nascimento` = '1998-09-24' WHERE (`id_paciente` = '3');
UPDATE `cadhospital`.`paciente` SET `data_nascimento` = '1984-07-24' WHERE (`id_paciente` = '2');
UPDATE `cadhospital`.`paciente` SET `data_nascimento` = '1999-09-30' WHERE (`id_paciente` = '1');
UPDATE `cadhospital`.`paciente` SET `data_nascimento` = '1980-06-24' WHERE (`id_paciente` = '8');

select*from  paciente ;




select*from paciente;
describe paciente;


create table consulta(
id_consulta int primary key auto_increment,
data_consulta datetime

)ENGINE= InnoDB;

alter table consulta add column id_med_cons int;
alter table consulta add column id_pac_cons int;

alter table consulta add constraint fk_medcons foreign key (id_med_cons)references medico(id_med);
alter table consulta add constraint fk_paccons foreign key (id_pac_cons)references paciente(id_paciente);

insert into consulta values(default, '2022-12-03 12:00:00', '5','1');
select*from consulta;





#JUNÇÃO DE TABELAS COM INNER JOIN:

select m.id_med, m.nome_med, m.sobrenome1_med, m.especialidade_med, 
       c.id_consulta, c.id_med_cons, c.id_pac_cons, c.data_consulta, 
       p.nome_paciente, p.sobrenome_paciente, p.data_nascimento
from paciente p
join consulta c
on p.id_paciente = c.id_pac_cons
join medico m
on  m.id_med = c.id_med_cons
ORDER BY p.nome_paciente;

select*from consulta
left join paciente
on id_consulta = id_pac_cons;

select*from consulta
right join paciente
on id_consulta = id_pac_cons;

select*from consulta
inner join paciente
on id_consulta = id_pac_cons;



select*from medico
inner join consulta
on id_med_cons = id_consulta;

select*from medico
left join consulta
on id_med_cons = id_consulta;

select*from medico
right join consulta
on id_med_cons = id_consulta;


SELECT* from medico, paciente
FULL JOIN consulta 
ON id_med_cons = id_consulta;



