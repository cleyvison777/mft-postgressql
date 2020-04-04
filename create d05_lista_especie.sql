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



