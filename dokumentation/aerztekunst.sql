create database Aerztekunst
go
use Aerztekunst
go

create table Mitglieder(
mitglieder_id int identity(1,1),
anrede varchar(5) not null,
vorname varchar(50) not null,
nachname varchar(50) not null,
strassennamen varchar(200) not null,
strassenzahl varchar(4) not null,
postleitzahl varchar(5) not null,
ortschaft varchar(50) not null,
telefonnummer varchar(15) not null,
emailadresse varchar(50) not null unique,
mitgliedschaft varchar not null,
PRIMARY KEY (mitglieder_id)
);

create table Bilder(
bilder_id int identity(1,1),
bildname varchar(50) not null,
beschreibung varchar(300),
vita varchar(300),
dateipfad varchar(max) not null,
id_mitglieder int not null,
FOREIGN KEY (id_mitglieder) REFERENCES Mitglieder(mitglieder_id)
);