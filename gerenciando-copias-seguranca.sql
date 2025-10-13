# aula 8 do curso em video - gerenciando copias de segurança mysql

# pra fazer back up antes de apagar: clicar em Server -> Data Export ->
# selecionar o database e as tabelas que quer guardar -> inicar exportação -> 
# pode deletar o database

drop database cadastro;
drop database sys;

# para importar o banco de dados: Server -> Data Import -> 
# selecionar o arquivo unico sql -> iniciar importação

##########################################################################################

use cadastro;
select * from gafanhotos;
select * from cursos;
