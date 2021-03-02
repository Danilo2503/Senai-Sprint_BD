USE Senai_HROADS_Manha;


INSERT INTO TipoHabilidade (TipoHabilidade)
VALUES					   ('Ataque')
						  ,('Defesa')
						  ,('Cura')
						  ,('Magia');
-- SELECT * FROM TipoHabilidade;


INSERT INTO Habilidade (NomeHabilidade, IdTipoHabilidade)
VALUES				   ('Lança Mortal', 1)
					  ,('Escudo Supremo', 2)
					  ,('Recuperar Vida', 3);
-- SELECT * FROM Habilidade;


INSERT INTO Classe (NomeClasse)
VALUES			   ('Bárbaro')
				  ,('Cruzado')
				  ,('Caçadora de Demônios')
				  ,('Monge')
				  ,('Necromante')
				  ,('Feiticeiro')
				  ,('Arcanista');
--SELECT * FROM Classe;


INSERT INTO ClasseHabilidade (IdHabilidade, IdClasse)
VALUES						 (1,1)
							,(1,2)
							,(1,3)
							,(1,4)
							,(1,5)
							,(1,6)
							,(1,7)

							,(2,1)
							,(2,2)
							,(2,3)
							,(2,4)
							,(2,5)
							,(2,6)
							,(2,7)

							,(3,1)
							,(3,2)
							,(3,3)
							,(3,4)
							,(3,5)
							,(3,6)
							,(3,7);
--SELECT * FROM ClasseHabilidade
