CREATE DATABASE Senai_HROADS_Manha

USE Senai_HROADS_Manha;

CREATE TABLE Habilidades
(
	IdHabilidade		INT PRIMARY KEY IDENTITY
	,NomeHabilidade		VARCHAR(200) NOT NULL
);

CREATE TABLE TipoHabilidades
(
	IdTipoHabilidade	INT PRIMARY KEY IDENTITY
	,TipoHabilidade		VARCHAR(200) NOT NULL
);

CREATE TABLE Classes
(
	IdClasse			INT PRIMARY KEY IDENTITY
	,IdHabilidade		INT FOREIGN KEY REFERENCES Habilidades (IdHabilidade)
	,NomeClasse			VARCHAR(200) NOT NULL
);

CREATE TABLE Personagens
(
	IdPersonagem		INT PRIMARY KEY IDENTITY
	,IdClasse			INT FOREIGN KEY REFERENCES Classes (IdClasse)
	,NomeClasse			VARCHAR(200) NOT NULL
	,VidaMáxima			VARCHAR(100) NOT NULL
	,ManaMáxima			VARCHAR(80) NOT NULL
	,DataAtualizacao	DATE
	,DataCriacao		DATE
);
