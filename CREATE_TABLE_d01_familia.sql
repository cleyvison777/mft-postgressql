CREATE TABLE d01_familia (
d01_cdfamilia BIGSERIAL NOT NULL PRIMARY KEY,
d01_nmfamilia VARCHAR(50),
FOREIGN KEY (d01_cdfamilia) REFERENCES d13_empresa(d13_cdempresa));

