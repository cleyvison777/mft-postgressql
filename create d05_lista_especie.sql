create table d05_lista_especie( 
d05_cdlistaesp bigserial not null primary key,
d05_cdempresa bigserial,
d05_nmlistaesp varchar(100)
);
======================
ALTER TABLE d03_especie
ADD CONSTRAINT FK_d03_especie_d05_lista_especie1
FOREIGN KEY (d03_cdlistaesp)
REFERENCES d05_lista_especie(d05_cdlistaesp)
ON DELETE CASCADE; 


insert into d05_lista_especie(d05_cdempresa, d05_nmlistaesp) values (1, 'teste')
select * from d05_lista_especie


CREATE TABLE d20_area(
d20_cdarea BIGSERIAL NOT NULL PRIMARY KEY,
d20_cdlistaesp BIGSERIAL,
d20_cdarea BIGSERIAL,
d20_cdequacaoareabasalpadrao BIGSERIAL,
d20_cdequacaovolumeinvtemp BIGSERIAL,
d20_nmarea VARCHAR(100),
d20_nmestado VARCHAR(100),
d20_nmmunicipio VARCHAR(100),
d20_latitude1grau INTEGER,
d20_latitude1minuto INTEGER,
d20_latitude1orientacao varchar(1),
d20_latitude2grau INTEGER,
d20_latitude2minuto  INTEGER,
d20_latitude2orientacao varchar(1),
d20_longitude1grau INTEGER,
d20_longitude1minuto INTEGER,
d20_longitude1orientacao varchar(1),
d20_longitude2grau INTEGER,
d20_longitude2minuto INTEGER,
d20_longitude2orientacao varchar(1),
d20_precipmediaanualmm INTEGER,
d20_precipmediamensalchuvamm INTEGER,
d20_precipmediamensalsecamm INTEGER,
d20_mesesseca VARCHAR(100),
d20_meseschuva VARCHAR(100),
d20_tipologiaflorestal VARCHAR(100),
d20_tiposolo VARCHAR(100),
d20_relevo VARCHAR(100),
d20_nmresponsavel VARCHAR(100),
d20_enderecoresponsavel VARCHAR(100),
d20_nrtelefoneresponsavel VARCHAR(100),
d20_emailresponsavel VARCHAR(100),
d20_txhistoricoarea VARCHAR(4000),
d20_txobservacaoarea VARCHAR(4000),
d20_lgmudacontada INTEGER,
d20_lgpalmeiracontada INTEGER);


==============================================

ALTER TABLE d20_area
ADD CONSTRAINT FK_d20_cdempresa
FOREIGN KEY (d20_cdarea)
REFERENCES d13_empresa(d13_cdempresa)
ON DELETE CASCADE;

ALTER TABLE d20_area
ADD CONSTRAINT FK_d20_area_d05_lista_especie
FOREIGN KEY (d20_cdlistaesp)
REFERENCES d05_lista_especie(d05_cdlistaesp)
ON DELETE CASCADE; 


