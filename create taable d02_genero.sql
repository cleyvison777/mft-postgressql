create table d02_genero(
d02_cdgenero bigserial not null primary key,
d02_nmgenero varchar(50),
d02_cdfamilia bigserial
);
====================
ALTER TABLE d02_genero
ADD CONSTRAINT FK_d02_genero_d01_familia
FOREIGN KEY (d02_cdfamilia)
REFERENCES d01_familia(d01_cdfamilia)
ON DELETE CASCADE;

INSERT INTO d02_genero (d02_nmgenero, d02_cdfamilia) values ('TESTE', 1)