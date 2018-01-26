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
vita varchar not null,
PRIMARY KEY (mitglieder_id)
);

create table Benutzer(
benutzer_id int identity(1,1),
emailadresse varchar(50) not null unique,
passwort varchar(50) not null,
FOREIGN KEY (emailadresse) REFERENCES mitglieder(emailadresse)
);