create table aluno(

id int(2) not null ,
matricula int not null primary key,
nome varchar (30),
data_nascimento varchar(10),
email varchar(30),
endereco varchar(30),
telefone varcharacter(12)


);
 describe
 aluno;
 
 select *from aluno;

insert into aluno (id, matricula, nome, data_nascimento, email, endereco, telefone) values (01 ,1234,  "João Carlos"   , "10/09/2000",  "jcarlos@gmail.com"    , "rua 13 de Maio"   , "(11)7825-4489" );
insert into aluno (id, matricula, nome, data_nascimento, email, endereco, telefone) values (  02,  2345  ,  "José Vitor"   , "09/08/2000" , "jvitor@gmail.com"   ,  "Rua da Saudade"  , "(11)7825-6589" );
insert into aluno (id, matricula, nome, data_nascimento, email, endereco, telefone) values ( 03 ,  3456  ,  "Paulo André"   ,  "08/07/2001" , "pandr@gmail.com"   , "Rua do Sol"   , "(11)7825-4495" );


