DROP DATABASE IF EXISTS Car_manager;
CREATE DATABASE Car_manager;
USE Car_manager;

CREATE TABLE Car (
	LicensePlate VARCHAR(10) NOT NULL,
	RepairDate DATE NOT NULL,
	CustomerName VARCHAR(255),
	Catalogs VARCHAR(255),
	CarMaker VARCHAR(255),
	PRIMARY KEY (LicensePlate , RepairDate)
);

CREATE TABLE Accessory (
	Id INT PRIMARY KEY,
	LicensePlate VARCHAR(10),
	RepairDate DATE,
	`Name` VARCHAR(255),
	Price DECIMAL (10,2),
	StatusDamaged BOOLEAN,
	RepairStatus VARCHAR(50),
	FOREIGN KEY (LicensePlate , RepairDate) REFERENCES Car (LicensePlate,RepairDate)
);

INSERT INTO Car (LicensePlate, RepairDate, CustomerName, Catalogs, CarMaker)
VALUES 
	('TS1','2023-09-01','Coll','Sudan','Toyota'),
	('TS2','2023-09-02','Sully','Mian','Ford'),
	('TS3','2023-09-03','Adam','Liao','HonDa');

INSERT INTO Accessory (Id, LicensePlate, RepairDate, `Name`, Price, StatusDamaged, RepairStatus)
VALUE
	('TS1','2023-09-01','Floor Mats','4000',FALSE,'Good'),
	('TS2','2023-09-02','Seat Covers','5000',FALSE,'Good'),
	('TS3','2023-09-03','Roof Rack','6000',FALSE,'Good')

