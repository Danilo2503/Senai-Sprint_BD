CREATE DATABASE Senai_HROADS_Manha;

USE Senai_HROADS_Manha;

CREATE TABLE TipoHabilidade
(
	IdTipoHabilidade		INT PRIMARY KEY IDENTITY
	,TipoHabilidade			VARCHAR(200) NOT NULL
);

CREATE TABLE Habilidade
(
	IdHabilidade			INT PRIMARY KEY IDENTITY
	,NomeHabilidade			VARCHAR(200) NOT NULL
	,IdTipoHabilidade		INT FOREIGN KEY REFERENCES TipoHabilidade (IdTipoHabilidade)
);

CREATE TABLE Classe
(
	IdClasse				INT PRIMARY KEY IDENTITY
	,IdHabilidade			INT FOREIGN KEY REFERENCES Habilidade (IdHabilidade)
	,NomeClasse				VARCHAR(200) NOT NULL
);

CREATE TABLE Personagem
(
	IdPersonagem			INT PRIMARY KEY IDENTITY
	,IdClasse				INT FOREIGN KEY REFERENCES Classe (IdClasse)
	,NomePersonagem			VARCHAR(200) NOT NULL
	,NomeClasse				VARCHAR(200) NOT NULL
	,VidaMáxima				VARCHAR(100) NOT NULL
	,ManaMáxima				VARCHAR(80) NOT NULL
	,DataAtualizacao		DATE
	,DataCriacao			DATE
);