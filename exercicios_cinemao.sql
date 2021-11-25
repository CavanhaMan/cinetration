-- ------------------------------------------------------------------------
use cinemao;
# EXERCÍCIOS FILMES

-- ----------------------------------------------------------------------------------
/* 1 LISTAR NOME E GENERO DE TODOS OS FILMES, POR ORDEM DE GENERO */
select distinct f.nome_film FILME, g.nome_gen GENERO
from fgenero fg
inner join filme f on f.cod_film = fg.cod_film
inner join genero g on g.cod_gen = fg.cod_gen
ORDER BY 2;

-- ----------------------------------------------------------------------------------
/* 2 LISTAR NOME E GENERO DE TODOS OS FILMES DE AÇÃO POR ORDEM DE FILME */
select distinct f.nome_film FILME, g.nome_gen GENERO
from fgenero fg
inner join filme f on f.cod_film = fg.cod_film
inner join genero g on g.cod_gen = fg.cod_gen
WHERE g.nome_gen = "ACTION"
ORDER BY 1;

-- ----------------------------------------------------------------------------------
/* 3 QUANTOS FILMES DE DRAMA A LISTA POSSUI? */
select COUNT(f.cod_film) TOTAL_FILME_DRAMA
from fgenero fg
inner join filme f on f.cod_film = fg.cod_film
inner join genero g on g.cod_gen = fg.cod_gen
WHERE g.nome_gen = "DRAMA";

-- ----------------------------------------------------------------------------------
/* 4 QUANTOS DIRETORES CADASTRADOS? */
select nome_dir from diretor;
select count(*) from diretor;

-- ----------------------------------------------------------------------------------
/* 5 QUAIS DIRETORES ESTÃO EM MAIS DE 1 FILME? */
select d.nome_dir NOME, count(1) QUANTOS_FILMES
from fdiretor fd
inner join diretor d on d.cod_dir = fd.cod_dir
inner join filme f on f.cod_film = fd.cod_film
group by 1
having count(1)>1
order by 2;

SELECT NOME_DIR, COUNT(*) QUANTOS_FILMES
FROM FDIRETOR FD
INNER JOIN FILME F ON F.COD_FILM = FD.COD_FILM
INNER JOIN DIRETOR D ON D.COD_DIR = FD.COD_DIR
GROUP BY 1
HAVING COUNT(1)>10
ORDER BY 2 DESC;

-- ----------------------------------------------------------------------------------
/* 6 QUAL O DIRETOR QUE TEM MAIS FILME? */
SELECT d.nome_dir NOME, COUNT(*) QUANTOS_FILMES
FROM fdiretor fd
INNER JOIN diretor d ON d.cod_dir = fd.cod_dir
INNER JOIN filme f ON f.cod_film = fd.cod_film
GROUP BY NOME
HAVING COUNT(*) > 1
ORDER BY 2 DESC
LIMIT 1;

SELECT d.nome_dir NOME, COUNT(*) QUANTOS_FILMES
FROM fdiretor fd
INNER JOIN diretor d ON d.cod_dir = fd.cod_dir
INNER JOIN filme f ON f.cod_film = fd.cod_film
GROUP BY NOME
HAVING QUANTOS_FILMES = (
		SELECT COUNT(*) QUANTOS_FILMES
		FROM fdiretor fd
		INNER JOIN diretor d ON d.cod_dir = fd.cod_dir
		INNER JOIN filme f ON f.cod_film = fd.cod_film
		GROUP BY d.nome_dir
		HAVING COUNT(*) > 1
		ORDER BY 1 DESC
		LIMIT 1
	);

-- ----------------------------------------------------------------------------------
/* 7 QUAL O FILME MAIS DEMORADO? */
select cod_film CODIGO, nome_film FILME, runtime DURACAO
from filme
order by 3 desc
limit 10;

select nome_film FILME, runtime DURACAO
from filme
having runtime = (select max(runtime) from filme);

-- ----------------------------------------------------------------------------------
/* 8 QUAL O FILME MAIS CURTO? */
select nome_film FILME, runtime DURACAO from filme
order by 2
limit 1;

select nome_film FILME, runtime DURACAO
from filme
having runtime = (select min(runtime) from filme);

select nome_film FILME, runtime DURACAO
from filme
having runtime = (
		select min(runtime) from filme where runtime > 60
	);

-- ----------------------------------------------------------------------------------
/* 9 QUAL O FILME MAIS ANTIGO? */
select nome_film FILME, release_date DATA_LANCAMENTO
from filme
having release_date = (
	select MIN(release_date) 
    from filme 
    where release_date <> '0000-00-00'
);

-- ----------------------------------------------------------------------------------
/* 10 QUAL O FILME MAIS RECENTE? */
select nome_film FILME, release_date DATA_LANCAMENTO
from filme
having release_date = (select MAX(release_date) from filme);

-- ----------------------------------------------------------------------------------
/* 11 QUANTOS IDIOMAS TEM OS FILMES DESSA LISTA? */
SELECT count(*) from lingua;

SELECT l.nome_ling, count(*)
from flingua fl
inner join filme f on f.cod_film = fl.cod_film
inner join lingua l on l.cod_ling = fl.cod_ling
group by 1
order by 2 desc; 

-- ----------------------------------------------------------------------------------
/* 12 QUAIS FILMES TEM DATA DE LANCAMENTO ZERADA? */
select nome_film FILME, release_date DATA_LANCAMENTO
from filme
having release_date = (select MIN(release_date) from filme);

-- ----------------------------------------------------------------------------------
/* 13 QUAIS FILMES FALAM Mandarin? */
SELECT f.nome_film FILME, l.nome_ling LINGUAGEM
From flingua fl
inner join lingua l on l.cod_ling = fl.cod_ling
inner join filme f on f.cod_film = fl.cod_film
where l.nome_ling = 'Mandarin';

-- ----------------------------------------------------------------------------------
/* 14 MOSTRE NOME E LINGUAGEM DE TODOS OS FILMES, ORGANIZADO POR LINGUA */
select distinct f.nome_film FILME, nome_ling LINGUAGEM
from filme f
inner join flingua fl on f.cod_film = fl.cod_film
inner join lingua l on l.cod_ling = fl.cod_ling
order by 2,1;

-- ----------------------------------------------------------------------------------
/* 15 QUAL O FILME QUE TEM MAIS IDIOMAS FALADOS? */
select f.nome_film FILME, count(l.nome_ling) QTD_LINGUA
from flingua fl
inner join lingua l on l.cod_ling = fl.cod_ling
inner join filme f on f.cod_film = fl.cod_film
GROUP BY 1
ORDER BY 2 DESC
LIMIT 2;

select f.nome_film FILME, count(*) MAX_FILMES
from flingua fl
inner join lingua l on l.cod_ling = fl.cod_ling
inner join filme f on f.cod_film = fl.cod_film
group by 1
having MAX_FILMES = (
		select count(*)
		from flingua fl
		inner join lingua l on l.cod_ling = fl.cod_ling
		inner join filme f on f.cod_film = fl.cod_film
		group by f.nome_film
		order by 1 desc
		limit 1
	);

-- ----------------------------------------------------------------------------------
/* 16 QUAL PAIS TEM MAIS FILMES LANÇADOS? */
SELECT p.nome_pais, count(*)
from fpais fp
inner join pais p on p.cod_pais = fp.cod_pais
inner join filme f on f.cod_film = fp.cod_film
group by 1
having count(1) > 0
order by 2 desc
limit 1;

SELECT p.nome_pais, count(*)
from fpais fp
inner join pais p on p.cod_pais = fp.cod_pais
inner join filme f on f.cod_film = fp.cod_film
group by 1
having count(1) = (
		SELECT count(*)
		from fpais fp
		inner join pais p on p.cod_pais = fp.cod_pais
		inner join filme f on f.cod_film = fp.cod_film
		group by p.nome_pais
		having count(1) > 0
		order by 1 desc
		limit 1
	);

-- ----------------------------------------------------------------------------------
/* 17 QUAIS FILMES FORAM LANCADOS EM 2020? */
SELECT nome_film, release_date 
from filme
where release_date like '2020%';

SELECT nome_film, release_date 
from filme
where year(release_date) = '2020';

SELECT nome_film, release_date 
from filme
where release_date between '2020-01-01' and '2020-12-31';

-- ----------------------------------------------------------------------------------
/* 18 QUAIS FILMES FORAM LANCADOS EM 2000 NA AMERICA? */
SELECT FILME.nome_film, FILME.film_year,FILME.release_date, PAIS.NOME_PAIS, FILME.IMDB_LINK
FROM FPAIS
INNER JOIN PAIS ON PAIS.cod_pais = FPAIS.cod_pais
INNER JOIN FILME ON FILME.COD_FILM = FPAIS.COD_FILM
WHERE FILME.release_date LIKE '2020%'
AND PAIS.nome_pais='America';

-- ----------------------------------------------------------------------------------
/* 19 QUAL A DESCRICAO (OVERVIEW) DO FILME MAIS NOVO? E DO MAIS ANTIGO? */
select nome_film FILME, release_date, overview RESUMO
from filme
where release_date = (
		select MAX(release_date)
        from filme
	);

select nome_film FILME, release_date, overview RESUMO
from filme
where release_date = (
		select MIN(release_date)
        from filme
        where release_date > '0000-00-00'
	);

-- ----------------------------------------------------------------------------------
/* 20 QUANTOS SAO OS FILMES DE COMEDIA? */
SELECT count(*) QTD_FILMES_DE_COMEDIA
from fgenero fg
inner join filme f on f.cod_film = fg.cod_film
inner join genero g on g.cod_gen = fg.cod_gen
where nome_gen = 'COMEDY';

-- ----------------------------------------------------------------------------------
/* 21 QUANTOS FILMES DE COMEDIA SAO DOS EUA (AMERICA)? */
select f.nome_film, g.nome_gen, p.nome_pais
from fgenero fg
inner join genero g on g.cod_gen = fg.cod_gen
inner join filme f on f.cod_film = fg.cod_film
inner join fpais fp on f.cod_film = fp.cod_film
inner join pais p on p.cod_pais = fp.cod_pais
where g.nome_gen = 'COMEDY'
and p.nome_pais = 'AMERICA';

-- ----------------------------------------------------------------------------------
/* 22 QUAIS OS FILMES TEM MEDIA DE VOTOS ACIMA DE 8? */
SELECT COUNT(*) FILMES_COM_MEDIA_ACIMA_DE_8
FROM filme
where vote_avg > 8;

-- ----------------------------------------------------------------------------------
/* 23 QUAIS FILMES TEM A PIOR COTACAO DE VOTOS? E A MAIOR? */
SELECT nome_film, vote_avg
FROM filme
where vote_avg = (
			select MIN(vote_avg)
            from filme
            where vote_avg > 0
		);

SELECT nome_film, vote_avg
FROM filme
where vote_avg = (
			select MAX(vote_avg)
            from filme
		);

# 23 QUAIS OS 3 FILMES QUE TEM A MAIOR COTACAO DE VOTOS? E A MENOR?
SELECT nome_film, vote_avg
FROM filme
order by 2 DESC
LIMIT 3;

SELECT nome_film, vote_avg
FROM filme
where vote_avg > 0
order by 2
LIMIT 3;

-- ----------------------------------------------------------------------------------
/* 24 QUANTOS FILMES FALAM O IDIOMA CANTONES (CANTONESE)? */
SELECT f.nome_film, l.nome_ling
FROM flingua fl
inner join filme f on f.cod_film = fl.cod_film
inner join lingua l on l.cod_ling = fl.cod_ling
where nome_ling = 'CANTONESE';

SELECT COUNT(*)
FROM flingua fl
inner join filme f on f.cod_film = fl.cod_film
inner join lingua l on l.cod_ling = fl.cod_ling
where nome_ling = 'CANTONESE';

-- ----------------------------------------------------------------------------------
/* 25 QUANTOS FILMES TEM LINK PARA O IMDB? E QUANTOS NÃO TEM LINK? */
SELECT COUNT(*)
FROM filme
WHERE imdb_link <> "";

SELECT COUNT(*)
FROM filme
WHERE imdb_link like 'http%';

SELECT COUNT(*)
FROM filme
WHERE imdb_link = "";

SELECT COUNT(*)
FROM filme
WHERE imdb_link not like 'http%';

-- ----------------------------------------------------------------------------------
/* 26 QUANTOS FILMES SAO DO BRASIL? E QUAL O GENERO DELES? */
select count(*)
from fgenero fg
inner join genero g on g.cod_gen = fg.cod_gen
inner join filme f on f.cod_film = fg.cod_film
inner join fpais fp on f.cod_film = fp.cod_film
inner join pais p on p.cod_pais = fp.cod_pais
where p.nome_pais = 'BRAZIL';

select f.nome_film, g.nome_gen, p.nome_pais
from fgenero fg
inner join genero g on g.cod_gen = fg.cod_gen
inner join filme f on f.cod_film = fg.cod_film
inner join fpais fp on f.cod_film = fp.cod_film
inner join pais p on p.cod_pais = fp.cod_pais
where p.nome_pais = 'BRAZIL';

select DISTINCT g.nome_gen
from fgenero fg
inner join genero g on g.cod_gen = fg.cod_gen
inner join filme f on f.cod_film = fg.cod_film
inner join fpais fp on f.cod_film = fp.cod_film
inner join pais p on p.cod_pais = fp.cod_pais
where p.nome_pais = 'BRAZIL';

-- ----------------------------------------------------------------------------------
/* 27 QUANTAS COLEÇOES TEM NESSE CADASTRO? */
SELECT COUNT(*)
FROM filme
WHERE collection <> "";

SELECT collection, COUNT(collection)
FROM filme
WHERE collection <> ""
group by collection
ORDER BY 1;

SELECT COUNT(*) 'TOTAL DE COLEÇÕES'
from (
	SELECT COUNT(*)
	FROM filme
	WHERE collection <> ""
	group by collection
	ORDER BY 1)  X;

-- ----------------------------------------------------------------------------------
/* 28 QUANTOS FILMES FORAM LANÇADOS NO ANO EM QUE VOCE NASCEU? QUAIS SAO ELES? */
SELECT COUNT(*) 'FILMES LANÇADOS EM 1976'
FROM filme
WHERE YEAR(release_date) = '1976';

SELECT nome_film 'FILMES LANÇADOS EM 1976'
FROM filme
WHERE YEAR(release_date) = '1976';

-- ----------------------------------------------------------------------------------
/* 29 QUAL A DURACAO DO FILME "PULP FICTION", EM QUE ANO FOI LANCADO EM QUEM É O DIRETOR? */
SELECT f.nome_film NOME, DATE_FORMAT(f.release_date, " %d de %M de %Y") LANCAMENTO, d.nome_dir DIRETOR
FROM fdiretor fd
INNER JOIN filme f on f.cod_film = fd.cod_film
INNER JOIN diretor d on d.cod_dir = fd.cod_dir
WHERE f.nome_film = "PULP FICTION";

-- ----------------------------------------------------------------------------------
/* 30 O DIRETOR DO FILME ACIMA DIRIGIU OUTROS FILMES? QUAIS? */
SELECT f.nome_film NOME, d.nome_dir DIRETOR
FROM fdiretor fd
INNER JOIN filme f on f.cod_film = fd.cod_film
INNER JOIN diretor d on d.cod_dir = fd.cod_dir
WHERE d.nome_dir = 'Quentin Tarantino';

-- ----------------------------------------------------------------------------------
/* 31 QUAIS FILMES O DIRETOR "ALFRED HITCHCOCK" DIRIGIU? */
SELECT nome_film,nome_dir
FROM FDIRETOR FD
inner join FILME F ON F.cod_film = FD.cod_film
inner join DIRETOR D ON D.cod_dir = FD.cod_dir
WHERE NOME_DIR = "ALFRED HITCHCOCK";

-- ----------------------------------------------------------------------------------
/* 32 QUAL FILME TEM O MAIOR TITULO? E O MENOR? */
SELECT MAX(length(nome_film)) FROM filme;

SELECT nome_film FROM filme
WHERE length(nome_film)=53;

SELECT nome_film FROM filme
WHERE length(nome_film) = (SELECT MAX(length(nome_film)) FROM filme);

-- ----------------------------------------------------------------------------------
/* 33 QUAL FILME TEM A MAIOR DESCRICAO (OVERVIEW)? */
SELECT MAX(length(OVERVIEW)) FROM filme;

SELECT nome_film FROM filme
WHERE length(OVERVIEW) = (SELECT MAX(length(OVERVIEW)) FROM filme);

-- ----------------------------------------------------------------------------------
/* 34 QUANTOS FILMES NÃO TEM DESCRICAO (OVERVIEW)? */
select count(*) from filme
where overview = "";

-- ----------------------------------------------------------------------------------
/* 35 QUAL O FILME MAIS VOTADO NO IMDB? (MAIOR NUMERO DE VOTOS) */
select nome_film
from filme
where vote_avg = (select max(vote_avg) from filme);

-- ----------------------------------------------------------------------------------
/* e o menos votado? */
select nome_film, vote_avg
from filme
where vote_avg = (
		select min(vote_avg)
		from filme
		where vote_avg >0
	);

-- ----------------------------------------------------------------------------------
/* 36 QUAL O FILME QUE MAIOR CLASSIFICACAO PELO IMDB E QUAL O LINK DELE NO IMDB? */
SELECT nome_film, vote_avg, imdb_link
FROM FILME
where vote_avg = (select max(vote_avg) from filme);

-- ----------------------------------------------------------------------------------
/* 37 QUAIS DOCUMENTARIOS FORAM FEITOS NO JAPAO APOS O ANO 2000? */
select f.nome_film, f.release_date
from fpais fp
inner join pais p on p.cod_pais = fp.cod_pais
inner join filme f on f.cod_film = fp.cod_film
where nome_pais = 'Japan'
and YEAR(f.release_date) > '2000'
ORDER BY 2;

select f.nome_film
from fgenero fg
inner join genero g on g.cod_gen = fg.cod_gen
inner join filme f on f.cod_film = fg.cod_film
where nome_gen = 'documentary';

select f.nome_film, g.nome_gen, p.nome_pais, f.release_date
from fgenero fg
inner join genero g on g.cod_gen = fg.cod_gen
inner join filme f on f.cod_film = fg.cod_film
inner join fpais fp on fp.cod_film = f.cod_film
inner join pais p on p.cod_pais = fp.cod_pais
where nome_gen = 'documentary'
and nome_pais = 'japan'
and YEAR(f.release_date) > '2000'
ORDER BY 4;

-- ----------------------------------------------------------------------------------
/* 38 QUANTOS NOMES DE DIRETORES COMECAM COM A LETRA DO SEU NOME? */
select count(nome_dir) from diretor
where nome_dir like 'r%';

-- ----------------------------------------------------------------------------------
/* 39 QUAIS DIRETORES FIZERAM FILMES NA INDIA? */
select d.nome_dir, f.nome_film, p.nome_pais
from fpais fp
inner join filme f on f.cod_film = fp.cod_film
inner join pais p on p.cod_pais = fp.cod_pais
inner join fdiretor fd on f.cod_film = fd.cod_film
inner join diretor d on d.cod_dir = fd.cod_dir
inner join filme fi on fi.cod_film = fd.cod_film
where nome_pais = 'INDIA'
order by 1;

-- ----------------------------------------------------------------------------------
/* 40 QUAIS FILMES ITALIANOS SAO DE DRAMA */
select f.nome_film, g.nome_gen, p.nome_pais
from fgenero fg
inner join genero g on g.cod_gen = fg.cod_gen
inner join filme f on f.cod_film = fg.cod_film
inner join fpais fp on fp.cod_film = f.cod_film
inner join pais p on p.cod_pais = fp.cod_pais
where nome_gen = 'DRAMA'
and nome_pais = 'ITALY'
ORDER BY 1;

-- ----------------------------------------------------------------------------------
/* 41 QUANTOS FILMES CADA GENERO TEM NESSA LISTA? */
SELECT g.nome_gen, count(*)
from fgenero fg
inner join filme f on f.cod_film = fg.cod_film
inner join genero g on g.cod_gen = fg.cod_gen
group by 1
order by 2 desc;
