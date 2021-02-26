USE Locadora;

INSERT INTO Marcas (Nome)
VALUES ('Ferrari'),
	   ('Porsche');

INSERT INTO Modelos (Nome, idMarca)
VALUES ('430 Scuderia', 1),
	   ('GT3 RS', 2);

INSERT INTO Veiculos (Placa, idModelo, idEmpresa)
VALUES ('FER-0430', 1, 1),
	   ('POR-0911', 2, 2);

INSERT INTO Clientes (Nome, CPF)
VALUES ('Danilo', '88080808082'),
	   ('Pedro', '50580888');

INSERT INTO Alugueis (idCliente, idVeiculo, Valor, DataDeRetirada, DataDeEntrega)
VALUES (1, 2, 1200, '14/01/2021', '22/01/2021'),
	   (2, 1, 1200, '17/01/2021', '25/01/2021');