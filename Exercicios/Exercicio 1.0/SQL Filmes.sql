--Cria um banco de dados com o nome "Filmes"
CREATE DATABASE Filmes;

--Define o banco de dados Filmes como o que será usado
USE Filmes;

CREATE TABLE Generos
(
	idGenero	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL  --Não Nulo
);

CREATE TABLE Filmes
(
	idFilme		INT PRIMARY KEY IDENTITY
	,idGenero	INT FOREIGN KEY REFERENCES Generos (idGenero)
	,Titulo		VARCHAR(150) NOT NULL
);