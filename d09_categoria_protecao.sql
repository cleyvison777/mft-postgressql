create table d09_categoria_protecao(
d09_cdcategoriaprotecao bigserial not null primary key,
d09_cdempresa bigserial,
d09_nmcategoriaprotecao varchar(100));

=====================

ALTER TABLE d03_especie
ADD CONSTRAINT FK_d03_especie_d09_categoria_protecao
FOREIGN KEY (d03_cdcategoriaprotecao)
REFERENCES d09_categoria_protecao(d09_cdcategoriaprotecao)
ON DELETE CASCADE; 