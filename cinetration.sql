#cinetration - cinema registration
create database cinemao;
#drop database cinemao;
use cinemao;

select * from genero;
select * from fgenero;

/*NoSQL
nome: alexandre o grande
genero: {ação,suspense,aventura,historico}
imdb: {
	imdb_link: www
	vote_avg: 8.7
	overview: "sfafwfas as as fas"
	vote_count: 60
}
*/
#SELECT version();

SELECT VERSION();
select @@version;
SELECT @@GLOBAL .sql_mode global, @@SESSION .sql_mode session;

-- ------------------------------------------------------------------------
