create table d03_especie(
d03_cdespecie   bigserial not null primary key,
d03_cdempresa	bigserial,
d03_cdlistaesp	bigserial,
d03_cdgenero	bigserial,
d03_cdfamilia	bigserial,
d03_cdespeciemestra	bigserial,
d03_cdgrupoecologico bigserial,	
d03_cdcategoriaprotecao	bigserial,
d03_nmespecie	varchar(100),
d03_nmautor	varchar(100),
d03_lgidentificada	integer
);
=====
ALTER TABLE d03_especie
ADD CONSTRAINT FK_d03_especie_d01_familia1
FOREIGN KEY (d03_cdfamilia)
REFERENCES d01_familia(d01_cdfamilia)
ON DELETE CASCADE;

=======================

ALTER TABLE d03_especie
ADD CONSTRAINT FK_d03_especie_d02_genero
FOREIGN KEY (d03_cdgenero)
REFERENCES d02_genero(d02_cdgenero)
ON DELETE CASCADE;


=====================

ALTER TABLE d03_especie
ADD CONSTRAINT FK_d03_especie_d06_grupo_ecologico1
FOREIGN KEY (d03_cdgrupoecologico)
REFERENCES d06_grupo_ecologico(d06_cdgrupoecologico)
ON DELETE CASCADE;
===================


ALTER TABLE d03_especie
ADD CONSTRAINT FK_r37_especie_uso_d03_especie
FOREIGN KEY (d03_cdgrupoecologico)
REFERENCES d07_uso_especie(d07_cduso)
ON DELETE CASCADE;

