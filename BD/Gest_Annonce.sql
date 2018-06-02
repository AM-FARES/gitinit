
create database Gest_Annonce
go
use Gest_Annonce
go 
create table Utilisateur(
	Usr_id int primary key identity , 
	Usr_email  nvarchar(90) , 
	Usr_passwords nvarchar(30),
	Usr_Photo text,
	Usr_Phone nvarchar(14),
	Usr_Prenom nvarchar(20),
	Usr_Nom nvarchar(30),
	Usr_Sex char(10))
go 
create table Region (
	Reg_id int primary key identity,
	Reg_Nom nvarchar(max)
)
go
create table Categories(
	Cat_id int primary key identity,
	Cat_nom nvarchar(max)
)
go
create table Annonce (
	Ann_id int primary key identity,
	Ann_Text text,
	Ann_Prix int,
	Ann_Ville nvarchar(20),
	Ann_Is_Valid bit,
	Ann_Date_Valid date ,
	Ann_Date date default getdate(),
	Reg_id int foreign key references Region,
	Cat_id int foreign key references Categories,
	Usr_id int foreign key references Utilisateur

)

