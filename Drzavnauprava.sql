drop database if exists drzavnaupravapp20;
create database drzavnaupravapp20;
use drzavnaupravapp20;

create table zupanija(
sifra int not null primary key auto_increment,
naziv       varchar(50) not null,
zupan       varchar(50) not null
);

create table opcina(
sifra int not null primary key auto_increment,
zupanija int, 
naziva varchar(50),
nacelnik varchar(50)
);

create table mjesto(
sifra int not null primary key auto_increment,
naziv       varchar(50) not null,
opcina int,    
brojstanovnika int not null 
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);