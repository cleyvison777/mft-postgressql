create table d08_equacao (
d08_cdequacao bigserial not null primary key,
d08_cdempresa bigserial, 
d08_nmequacao varchar(50),
d08_equacao varchar(3000),
d08_txobservacaoequacao varchar(100),
d08_imequacao oid
);

INSERT INTO d08_equacao 
(d08_cdempresa,
d08_nmequacao , d08_equacao, d08_txobservacaoequacao, d08_imequacao)
VALUES(1, 'teste', 'teste', 'teste', lo_import('C:\teste\postgres.jpg'));

GRANT SELECT, INSERT, UPDATE ON largeObjects_Devmedia TO PUBLIC;


