create table d06_grupo_ecologico(
d06_cdgrupoecologico bigserial not null primary key,
d06_cdempresa bigserial,
d06_nmgrupoecologico varchar(100)
);

insert into d06_grupo_ecologico(d06_cdempresa, d06_nmgrupoecologico)
values(1, 'teste');