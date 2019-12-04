CREATE TABLE d21_parcela(
d21_cdparcela	bigserial NOT NULL PRIMARY KEY,
d21_cdempresa	bigserial,
d21_cdarea	bigserial, 
d21_cdtipoparcela	bigserial,	
d21_txobservacaoparcela	VARCHAR(4000),
d21_latitudeponto1grau	Integer,	
d21_latitudeponto1minuto	Integer,	
d21_latitudeponto1orientacao	VARCHAR(10),
d21_longitudeponto1grau	Integer,	
d21_longitudeponto1minuto	Integer,	
d21_longitudeponto1orientacao	VARCHAR(10),	
d21_latitudeponto2grau	Integer,	
d21_latitudeponto2minuto	Integer,	
d21_latitudeponto2orientacao	VARCHAR(10),	
d21_longitudeponto2grau	Integer,	
d21_longitudeponto2minuto	Integer	,
d21_longitudeponto2orientacao	VARCHAR(10),	
d21_latitudeponto3grau	Integer,	
d21_latitudeponto3minuto	Integer,	
d21_latitudeponto3orientacao	VARCHAR(10),	
d21_longitudeponto3grau	Integer,	
d21_longitudeponto3minuto	Integer,	
d21_longitudeponto3orientacao	VARCHAR(10),	
d21_latitudeponto4grau	Integer,	
d21_latitudeponto4minuto	Integer,	
d21_latitudeponto4orientacao VARCHAR(10),	
d21_longitudeponto4grau	Integer,	
d21_longitudeponto4minuto	Integer,	
d21_longitudeponto4orientacao	VARCHAR(10),	
d21_lgtestemunha	Integer);	

--Criar tabela
CREATE TABLE d22_tipo_parcela(
d22_cdtipoparcela bigserial NOT NULL PRIMARY KEY,
d22_cdempresa	bigserial, 
d22_nmtipoparcela	VARCHAR(100),	
d22_lgestudocrescimento	INT);	

--Criar tabela
CREATE TABLE d29_subparcela(
d29_cdsubparcela  bigserial NOT NULL PRIMARY key,
d29_cdempresa	bigserial,	
d29_cdarea	  bigserial,
d29_cdparcela	bigserial);
		
----AS CHAVES EXTRANGEIRAS
	
----CHAVE d21_parcela	
	
ALTER TABLE d21_parcela
ADD CONSTRAINT FK_d21_cdempresa
FOREIGN KEY (d21_cdempresa)
REFERENCES d13_empresa(d13_cdempresa)
ON DELETE CASCADE;

ALTER TABLE d21_parcela 
ADD CONSTRAINT FK_d21_cdtipoparcela
FOREIGN KEY (d21_cdtipoparcela)
REFERENCES d22_tipo_parcela(d22_cdtipoparcela)
ON DELETE CASCADE;


ALTER TABLE d21_parcela
ADD CONSTRAINT FK_d21_cdarea
FOREIGN KEY (d21_cdarea)
REFERENCES d20_area(d20_cdarea)
ON DELETE CASCADE;



-----------------


----CHAVE d22_tipo_parcela

ALTER TABLE d22_tipo_parcela
ADD CONSTRAINT FK_d22_cdempresa
FOREIGN KEY (d22_cdempresa)
REFERENCES d13_empresa(d13_cdempresa)
ON DELETE CASCADE;

-----------------


----CHAVE d29_subparcela

ALTER TABLE d29_subparcela
ADD CONSTRAINT FK_d29_cdempresa
FOREIGN KEY (d29_cdempresa)
REFERENCES d13_empresa(d13_cdempresa)
ON DELETE CASCADE;

ALTER TABLE d29_subparcela
ADD CONSTRAINT FK_d29_cdparcela
FOREIGN KEY (d29_cdparcela)
REFERENCES d21_parcela(d21_cdparcela)
ON DELETE CASCADE;

ALTER TABLE d29_subparcela
ADD CONSTRAINT FK_d29_cdarea
FOREIGN KEY (d29_cdarea)
REFERENCES d20_area(d20_cdarea)
ON DELETE CASCADE;


--Modificar tabela d22_tipo_parcela
ALTER TABLE d22_tipo_parcela ALTER COLUMN d21_cdtipoparcela Integer;


		