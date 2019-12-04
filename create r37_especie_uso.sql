create table r37_especie_uso(
r37_cduso bigserial not null primary key,
r37_cdlistaesp bigserial,
r37_cdempresa bigserial,
r37_cdespecie bigserial)

=========================

ALTER TABLE r37_especie_uso
ADD CONSTRAINT FK_r37_especie_uso_d03_especie
FOREIGN KEY (r37_cdespecie)
REFERENCES d03_especie(d03_cdespecie)
ON DELETE CASCADE; 