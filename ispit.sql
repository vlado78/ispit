
drop database if exists ispit;

create database ispit;

use ispit;

create table pitanje(
sifra int not null primary key auto_increment,
tekst varchar(50) not null,
datumpocetka datetime,
unio int

);


create table odgovor(
sifra int not null primary key auto_increment,
pitanje int,
tekst varchar(50) not null,
tocno boolean,
odgovorio int

);


create table operater(
sifra int not null primary key auto_increment,
ime varchar (20) not null,
prezime varchar (20) not null

);

alter table pitanje add foreign key (unio) references operater(sifra);

alter table odgovor add foreign key (odgovorio) references operater(sifra);

alter table odgovor add foreign key (pitanje) references pitanje(sifra);


insert into operater (sifra, ime, prezime) values
(null, 'imeprvo','prezimeprvo'),
(null,'imedrugo','prezimedrugo');


insert into pitanje (sifra, tekst, datumpocetka, unio) values
(null, 'prvo pitanje', '2018-04-30', 1),
(null, 'drugopitanje', '2018-04-30', 2),
(null, 'trecepitanje', '2018-04-30', 1),
(null, 'cetvrtopitanje', '2018-04-30', 1),
(null, 'petopitanje', '2018-04-30', 1),
(null, 'sestopitanje', '2018-04-30', 1),
(null, 'sedmopitanje', '2018-04-30', 2);

insert into odgovor (sifra, pitanje, tekst, tocno, odgovorio) values
(null,1,'prviodgovor',true,2),
(null,2,'drugiodgovor',false,1),
(null,3,'treciodgovor',true,2),
(null,4,'cetvrtiodgovor',true,2),
(null,5,'petiodgovor',false,2),
(null,6,'sestiodgovor',false,2),
(null,7,'sedmiodgovor',true,1);








