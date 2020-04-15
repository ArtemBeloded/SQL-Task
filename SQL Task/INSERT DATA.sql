INSERT INTO [Flower]
(
	[Id],
	[Name]
)
VALUES

	(1, 'Aloe'),
	(2, 'Aster'),
	(3, 'Gladiolus'),
	(4, 'Lavender'),
	(5, 'Lily'),
	(6, 'Poppy'),
	(7, 'Mimosa'),
	(8, 'Narcissus'),
	(9, 'Peony')


INSERT INTO [Plantation]
(
	[Id],
	[Name],
	[Address]
)
VALUES
	(1, 'AGRINAG', 'Latvia'),
	(2, 'AGRORAB', 'Norway'),
	(3, 'DOFITER', 'France'),
	(4, 'EQUAFLOR', 'Germany'),
	(5, 'MERINO', 'Italy')


INSERT INTO [PlantationFlower]
(
	[PlantationId],
	[FlowerId],
	[Amount]
)
VALUES
	(3, 1, 25),
	(1, 8, 20),
	(1, 9, 35),
	(4, 3, 25),
	(2, 2, 22),
	(2, 4, 44),
	(3, 5, 15),
	(5, 3, 26),
	(5, 7, 18),
	(4, 6, 28),
	(1, 7, 32)


INSERT INTO [Warehouse]
(
	[Id],
	[Name],
	[Address]
)
VALUES
	(1, 'Anfield', 'Netherlands'),
	(2, 'Tottenham Hotspur', 'Spain'),
	(3, 'Villa Park', 'Armenia'),
	(4, 'Etihad', 'Poland'),
	(5, 'Stamford Bridge', 'Ukraine')


INSERT INTO [WarehouseFlower]
(
	[WarehouseId],
	[FlowerId],
	[Amount]
)
VALUES

	(4, 3, 33),
	(2, 7, 28),
	(2, 6, 31),
	(5, 1, 11),
	(1, 4, 25),
	(3, 9, 18),
	(4, 8, 22),
	(1, 2, 35),
	(3, 5, 20),
	(5, 5, 25)

INSERT INTO [Supply]
(
	[Id],
	[PlantationId],
	[WarehouseId],
	[ScheduledDate],
	[ClosedDate],
	[Status]
)
VALUES
	(1, 1, 5, '2020-05-01', NULL, 'Scheduled'),
	(2, 2, 4, '2020-04-15', NULL, 'InProgress'),
	(3, 3, 3, '2019-12-20', '2019-12-25', 'Closed'),
	(4, 4, 2, '2020-03-08', NULL, 'Canceled'),
	(5, 5, 1, '2020-04-08', NULL, 'Canceled'),
	(6, 2, 2, '2018-09-01', '2018-09-03', 'Closed'),
	(7, 4, 4, '2020-04-17', NULL, 'InProgress'),
	(8, 3, 3, '2020-05-31', NULL, 'Scheduled')


INSERT INTO [SupplyFlower]
(
	[SupplyId],
	[FlowerId],
	[Amount]
)
VALUES
	(1, 3, 10),
	(2, 5, 10),
	(3, 6, 10),
	(4, 9, 10),
	(5, 1, 10),
	(6, 9, 10),
	(7, 5, 10),
	(8, 5, 10),
	(3, 2, 10),
	(3, 7, 10),
	(1, 1, 10),
	(1, 2, 10),
	(4, 8, 10)