CREATE DATABASE Optus;

USE Optus;

CREATE TABLE Permissoes
(
	idPermissao			INT PRIMARY KEY IDENTITY
	,Permissao			VARCHAR(120) NOT NULL
);

CREATE TABLE Usuarios
(
	idUsuario			INT PRIMARY KEY
	,idPermissao		INT FOREIGN KEY REFERENCES Permissoes (idPermissao)
	,Nome				VARCHAR(380) NOT NULL
	,Email				VARCHAR(300) NOT NULL
	,Senha				VARCHAR(150) NOT NULL
);

CREATE TABLE Artistas
(
	idArtista			INT PRIMARY KEY IDENTITY
	,Nome				VARCHAR(200) NOT NULL
);

CREATE TABLE Visualizacoes
(
	idVisualizacao		INT PRIMARY KEY IDENTITY
	,Visualizacao		VARCHAR(300) NOT NULL
);

CREATE TABLE Albuns
(
	idAlbum				INT PRIMARY KEY IDENTITY
	,idArtista			INT FOREIGN KEY REFERENCES Artistas (idArtista)
	,idVisualizacao		INT FOREIGN KEY REFERENCES Visualizacoes (idVisualizacao)
	,Titulo				VARCHAR(400) NOT NULL
	,DataDeLancamento	DATE NOT NULL
	,Localizacao		VARCHAR(300) NOT NULL
	,Minutos			INT	NOT NULL
);

CREATE TABLE Estilos
(
	idEstilo			INT PRIMARY KEY IDENTITY
	,Nome				VARCHAR(200) NOT NULL
);

CREATE TABLE EstilosVinculados
(
	idAlbum				INT FOREIGN KEY REFERENCES Albuns (idAlbum)
	,idEstilo			INT FOREIGN KEY REFERENCES Estilos (idEstilo)
);