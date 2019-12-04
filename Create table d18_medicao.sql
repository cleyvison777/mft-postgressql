create table d18_medicao(
d18_cdmedicao bigserial not null primary key, 
d18_cdempresa bigserial,
d18_cdarea bigserial,
d18_dtiniciomedicao timestamp,
d18_txobservacao varchar(4000));


ALTER TABLE d18_medicao
ADD CONSTRAINT FK_d18_cdempresa
FOREIGN KEY (d18_cdempresa)
REFERENCES d13_empresa(d13_cdempresa)
ON DELETE CASCADE; 
====================================
ALTER TABLE d18_medicao
ADD CONSTRAINT FK_d18_cdarea
FOREIGN KEY (d18_cdarea)
REFERENCES d20_area(d20_cdarea)
ON DELETE CASCADE; 
===========================


--==================fim d18_medicao

create table r33_area_classe_tamanho(
r33_cdclassetamanho bigserial not null primary key,
r33_cdempresa bigserial,
r33_cdarea bigserial,
r33_cdequacaovolumepadrao bigserial,
r33_cdformatosubparcela bigserial,
r33_dapminimocomfustemm int,
r33_dapmaximocomfustemm int,
r33_dapminimosemfustemm int,
r33_dapmaximosemfustemm int,
r33_alturaminimam numeric(10, 2),
r33_alturamaximam numeric(10, 2),
r33_comprimentoparcelam numeric(10, 2),
r33_larguraparcelam numeric(10, 2),
r33_dimensao1subparcelam numeric(10, 2),
r33_dimensao2subparcelam numeric(10, 2),
r33_dimensao3subparcelam numeric(10, 2),
r33_padraocrescanualminimomm int,
r33_padraocrescanualmaximomm int,
r33_dapmaximoingmedicao2mm int,
r33_nrsubparcelasporparcela int);

--====================  FOREIGN key ?
ALTER TABLE r33_area_classe_tamanho
ADD CONSTRAINT FK_r33_area_classe_tamanho
FOREIGN KEY (r33_cdclassetamanho)
REFERENCES d10_classe_tamanho_individuo(d10_cdclassetamanho)
ON DELETE CASCADE; 


--=================================fim r33_area_classe_tamanho


--===============================================
create table d10_classe_tamanho_individuo(
d10_cdclassetamanho bigserial not null primary key,
d10_nmclassetamanho varchar(50));
--==================================== 
ALTER TABLE r47_medicao_subparcela
ADD CONSTRAINT FK_d10_cdclassetamanho
FOREIGN KEY (d10_cdclassetamanho)
REFERENCES r33_area_classe_tamanho(r33_cdclassetamanho)
ON DELETE CASCADE; 

---================================fim d10_classe_tamanho_individuo
create table r47_medicao_subparcela(
r47_cdsubparcela bigserial not null primary key,
r47_cdempresa bigserial,
r47_cdarea bigserial,
r47_cdparcela bigserial,
r47_cdmedicao bigint,
r47_cdclassefloresta bigserial,
r47_cdclassetamanho bigserial,
r47_nmresponsavel varchar(100),
r47_nmidentificador varchar(100));



ALTER TABLE r47_medicao_subparcela
ADD CONSTRAINT FK_r47_cdempresa
FOREIGN KEY (r47_cdempresa)
REFERENCES d13_empresa(d13_cdempresa)
ON DELETE CASCADE; 
====================================
ALTER TABLE r47_medicao_subparcela
ADD CONSTRAINT FK_r47_cdarea
FOREIGN KEY (r47_cdarea)
REFERENCES d20_area(d20_cdarea)
ON DELETE CASCADE; 
===========================

ALTER TABLE r47_medicao_subparcela
ADD CONSTRAINT FK_r47_cdparcela
FOREIGN KEY (r47_cdparcela)
REFERENCES d21_parcela(d21_cdparcela)
ON DELETE CASCADE; 
================================

ALTER TABLE r47_medicao_subparcela
ADD CONSTRAINT FK_r47_cdmedicao
FOREIGN KEY (r47_cdmedicao)
REFERENCES d18_medicao(d18_cdmedicao)
ON DELETE CASCADE; 
=========================

ALTER TABLE r47_medicao_subparcela
ADD CONSTRAINT FK_r47_cdmedicao
FOREIGN KEY (r47_cdmedicao)
REFERENCES d18_medicao(d18_cdmedicao)
ON DELETE CASCADE; 


=========================


--==================================fim r47_medicao_subparcela

