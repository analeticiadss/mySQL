# aula 7 do curso em vídeo - Manipulando Linhas (UPDATE, DELETE e TRUNCATE)

use cadastro;

insert into cursos
values ('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Progamação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PHHP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Javva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '37', '2018'),
('9', 'Cozinha Árabe', 'Aprender a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');


#corrigindo erros da tabela
update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1; # quantas linhas podem ser afetadas, no caso aqui, apenas 1 linha pode ser afetada

update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

update cursos
set carga = '5'
where carga = 0 limit 1;

# deletar linhas
delete from cursos
where idcurso = '8';

delete from cursos
where ano = '2018';

# removendo todas as linhas de uma tabela
truncate table cursos;


select * from cursos;


