create table livro(
cod_livro int  (2)  not null  auto_increment  primary key,
cod_sessao int(2) not null,
ISBN int (13) not null,
titulo varchar(30),
autor varchar (30)


);



insert into livro (cod_livro, cod_sessao, isbn, titulo, autor) values ( 01 , 03 , 1234567891011 , "Modelo Conceitual e Diagramas ER" , "Pressman, Roger S.");
insert into livro (cod_livro, cod_sessao, isbn, titulo, autor) values (02 , 01 , 7891011123456 , "Modelo Relacional e Álgebra Relacional" , "Heuser, Carlos Alberto");
insert into livro (cod_livro, cod_sessao, isbn, titulo, autor) values ( 03 , 02 , 4561011123789 , "Linguagem SQL"  ,  "Beighley, Lynn");


alter table livro drop column ISBN;

select*from livro;







