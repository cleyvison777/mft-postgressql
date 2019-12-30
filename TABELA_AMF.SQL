CREATE  TABLE d20_area(
d20_cdarea BIGSERIAL NOT NULL PRIMARY KEY,
d20_cdempresa bigserial,
d20_cdequacaoareabasalpadrao BIGSERIAL,
d20_cdequacaovolumeinvtemp BIGSERIAL,
d20_cdlistaesp BIGSERIAL,
d20_nmarea VARCHAR(100),
d20_nmestado VARCHAR(100),
d20_nmmunicipio VARCHAR(100),
d20_latitude1grau Integer,
d20_latitude1minuto Integer,
d20_latitude1orientacao varchar(1),
d20_latitude2grau Integer,
d20_latitude2minuto  Integer,
d20_latitude2orientacao varchar(1),
d20_longitude1grau Integer,
d20_longitude1minuto Integer,
d20_longitude1orientacao varchar(1),
d20_longitude2grau Integer,
d20_longitude2minuto Integer,
d20_longitude2orientacao varchar(1),
d20_precipmediaanualmm Integer,
d20_precipmediamensalchuvamm Integer,
d20_precipmediamensalsecamm Integer,
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
d20_lgmudacontada Integer,
d20_lgpalmeiracontada Integer);



ALTER TABLE d20_area
ADD CONSTRAINT FK_d20_cdempresa
FOREIGN KEY (d20_cdarea)
REFERENCES d13_empresa(d13_cdempresa)
ON DELETE CASCADE;

ALTER TABLE d20_area
ADD CONSTRAINT FK_d20_cdlistaesp
FOREIGN KEY (d20_cdlistaesp)
REFERENCES d05_lista_especie(d05_cdlistaesp)
ON DELETE CASCADE;
