create database Electronice

use Electronice

create table Pozicioni
(
	Pozicioni varchar(50) not null primary key,
	Paga numeric not null,
	OrariIPunes int 
)

create table Inventari 
(
	id_inventar int not null primary key,
	SasiaEProdukteve int ,
)

create table Klienti 
(
	id_klienti  int not null primary key,
	Emri varchar(50) not null,
	Nr_tel varchar (20) not null
)

create table Produkt
(
	Nr_serial int  not null primary key,
	Data_Hyrse date not null,
	Kategoria varchar (100) not null,
	Ngjyra varchar (100),
	id_inventar int foreign key references Inventari (id_inventar),
	Modeli varchar (50) not null,
	Parametrat varchar (100) not null,
	Cmimi numeric not null,
	Garancia varchar (100) not null,
	Titull varchar(50)
)

create table Punonjesi (
	id_punonjesi int not null  primary key,
	Emri varchar(20) not Null,
	Nr_tel varchar (20) not null,
	Ditelindja date not null,
	Pozicioni varchar(50)  not null foreign key references Pozicioni (Pozicioni)
)

create table Servisi 
(
	id_servisi int not null primary key,
	Problemi varchar (500) not null,
	Data_Hyrse date not null,
	id_punonjesi int not null foreign key references Punonjesi (id_punonjesi)

)

alter table Punonjesi
add id_servis int foreign key references Servisi (id_servisi)

create table Blen 
(
	dt_fll_garancia date not null ,
	dt_mb_garancia date not null,
	 klienti int not null foreign key references Klienti (id_klienti),
 produkti int not null foreign key references Produkt (Nr_serial)
)

CREATE TABLE Rregullon(
id_servisi int  foreign key references Servisi(id_servisi) ,
id_klienti int   FOREIGN KEY references Klienti(id_klienti),
nr_seriali int  FOREIGN KEY references Produkt(Nr_serial) 

)


insert Klienti (id_klienti, Emri, Nr_tel)
values	(101,'Izabela',0678234876),
		(102,'Geraldo',0685623789),
		(103,'Rigers',0694537833),
		(104,'Inna',0684466378),
		(105,'Esme',0673649220),
		(106,'Qani',0693223849)

insert Pozicioni	(Pozicioni,Paga,OrariIPunes)
values				('teknik',80000,8),
					('ekonomist',40000,8),
					('shites',35000,6),
					('menaxher',65000,8),
					('sistemues',35000,6)

insert Inventari	(id_inventar,SasiaEProdukteve)
values				(1001,20),
					(1002,12),
					(1003,19),
					(1004,3),
					(1005,2),
					(1006,7),
					(1007,12),
					(1008,1),
					(1009,14),
					(1010,12),
					(1011,0),
					(1012,11),
					(1013,2),
					(1014,4),
					(1015,6)


insert Produkt (Nr_serial,Data_Hyrse,Kategoria,Ngjyra,Modeli,Parametrat,Cmimi,Garancia,id_inventar,Titull)
values			(748593674, '2020-01-04','Celular', 'i Bardhe' ,'sm-g980f','128 Gb,8Gb-ram,Camera 16-12-12-10 MP',750,'2-vite',1001,'Samsung Galaxy S10'),
				(192384793, '2020-01-04', 'Celular', 'Gold','sm-g960f','128GB 4GB ram,camera 12-8 MP',500,'2-vite',1002,'Samsung Galaxy S9'),
				(891862598, '2020-01-04', 'Celular', 'Silver','sm-g985f','1TB 16GB ram,camera 16-10 MP',850,'2-vite',1003,'Samsung Galaxy S10+'),
				(823746282, '2020-01-04', 'Celular', 'Silver','sm-g985f','512GB 8GB ram,camera 16-10 MP',900,'2-vite',1004,'Samsung Galaxy S10+'),
				(729349762,'2020-01-04','Celular', 'I zi','sm-g965f','64GB 4GB ram,camera 12-8 MP',400,'2-vite',1005,'Samsung Galaxy S9+'),
				(872934879,'2020-01-04', 'Celular', 'I bardhe','sm-g955f','128 4GB ram,camera 12-8 MP',450,'1-vite',1006,'Samsung Galaxy S8+'),
				(982739872,'2020-01-04', 'Celular', 'blu','sm-g950f','64GB 4GB ram,camera 12-8 MP', 260, '3-muaj',1007,'Samsung Galaxy S8'),
				(192639127, '2020-01-12', 'Celular', 'i Bardhe','ip1100', '64GB 4GB ram, 12-12-10 MP', 800, '2-vite',1008,'Apple Iphone 11'),
				(192847929, '2017-01-05', 'Celular', 'Blu','ip1100', '128GB 4gb ram, 12-12-10 MP', 950, '2-vite',1009,'Apple Iphone 11'),
				(189243698, '2020-01-12', 'Celular', 'Army Green','ip1120', '64GB 4GB ram, 12-12-16-10 MP', 1080, '2-vite',1010,'Apple Iphone 11 PRO'),
				(188724362, '2020-01-12', 'Celular', 'I bardhe','ip1120', '256GB 4GB ram, 12-12-16-10 MP', 1210, '2-vite',1011,'Apple Iphone 11 PRO'),
				(189649873, '2020-01-12', 'Celular', 'Gri i Erret','ip1160', '64GB 4GB ram, 12-12-16-10 MP', 1190, '2-vite',1012,'Apple Iphone 11 PRO MAX'),
				(188716487, '2020-01-12', 'Celular', 'Army Green','ip1160', '512 4GB ram, 12-12-16-10 MP', 1410, '2-vite',1013,'Apple Iphone 11 PRO MAX'),
				(359817640, '2020-01-15', 'Laptop', 'Gri','l7400', 'Core i5 9300U 2.5ghz, 8GB ram, 256gb SSD', 800, '1-vit',1014,'Dell Latitude E7400'),
				(487469287, '2020-01-16', 'Laptop', 'I zi','840g6', 'Core i7 9600U 2.9ghz, 32GB ram, 512gb SSD, 4Gb karte grafike Nvidia geForce MX150', 1300, '2-vite',1015, 'HP ProBok 840 G6')

insert Punonjesi	(id_punonjesi,Emri,Nr_tel,Ditelindja,Pozicioni)
values				(001,'Qemal Hafizi',0684548765,'1994-05-12','ekonomist'),
					(002,'Alisha Seferi',0698472887,'1997-10-15','shites'),
					(003,'Sefe Aliaj',0684563782,'1974-12-02','menaxher'),
					(004,'Jurgen Kushta',0683299032,'1995-04-02','teknik'),
					(005,'Armando Picari',0678893456,'1998-10-12','sistemues'),
					(006,'Altina Hasku',0694545603,'1996-05-01','shites'),
					(007,'Eljona Pitarka',0679804005,'1993-07-07','shites'),
					(008,'Egi Prifti',0674567392,'2000-11-18','sistemues'),
					(009,'Rudolf Hasi',0695050698,'1998-12-17','teknik')
		

insert Servisi	(id_servisi,Problemi,Data_Hyrse,id_punonjesi)
values			(0001,'Bateria','2020-01-10',004),
				(0002,'Mos funksionim i portes se karikimit dhe kameres kryesore','2019-01-12',004),
				(0003,'Nderrim ekrani','2020-01-12',009),
				(0004,'Nderrim ekrani + Bateria','2019-01-12',004),
				(0005,'Nderrim xhami Pasem','2019-01-12',009),
				(0006,'Nderrim baterie','2020-01-12',004),
				(0007,'Nderrim baterie','2019-01-12',004),
				(0008,'Nderri i kameres kryesore','2020-01-12',009),
				(0009,'Nderrim ekrani','2019-01-12',009),
				(0010,'Mos funksionim i portes se karikimit','2020-01-12',004)



insert Rregullon	(id_servisi,id_klienti,nr_seriali)
values				(001,102,359817640),
					(003,103,189243698),
					(002,102,729349762),
					(010,105,729349762),
					(009,104,748593674)



insert Blen			(dt_fll_garancia,dt_mb_garancia,klienti,produkti)
values				('2020-02-01','2022-02-01',104,823746282),
					('2020-01-14','2020-01-14',103,487469287),
					('2017-01-16','2019-01-16',101,192847929),
					('2020-01-02','2022-01-02',105,748593674),
					('2020-01-15','2022-01-15',104,189649873)