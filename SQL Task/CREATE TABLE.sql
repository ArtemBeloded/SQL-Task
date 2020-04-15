USE FlowerDb;
DROP DATABASE FlowerDb;
CREATE DATABASE FlowerDb;


CREATE TABLE [Flower]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL
)


CREATE TABLE [Plantation]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL,
	[Address] NVARCHAR(100) NOT NULL
)


CREATE TABLE [Warehouse]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL,
	[Address] NVARCHAR(100) NOT NULL
)


CREATE TABLE [Supply]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[PlantationId] INT NOT NULL,
	[WarehouseId] INT NOT NULL,
	[ScheduledDate] DATE NOT NULL,
	[ClosedDate] DATE,
	[Status] VARCHAR(20) NOT NULL CHECK([Status] IN('Scheduled','InProgress','Closed','Canceled')),

	CONSTRAINT [FK_Supply_ToPlantation] FOREIGN KEY ([PlantationId]) REFERENCES [Plantation]([Id]),
	CONSTRAINT [FK_Supply_ToWarehouse] FOREIGN KEY ([WarehouseId]) REFERENCES [Warehouse]([Id])
)


CREATE TABLE [SupplyFlower]
(
	[SupplyId] INT NOT NULL,
	[FlowerId] INT NOT NULL,
	[Amount] INT NOT NULL,

	CONSTRAINT [PK_SupplyFlower] PRIMARY KEY  ([SupplyId], [FlowerId]),
	CONSTRAINT [FK_SupplyFlower_ToSupply] FOREIGN KEY ([SupplyId]) REFERENCES [Supply]([Id]),
	CONSTRAINT [FK_SupplyFlower_ToFlower] FOREIGN KEY ([FlowerId]) REFERENCES [Flower]([Id]) on delete cascade
)


CREATE TABLE [PlantationFlower]
(
	[PlantationId] INT NOT NULL,
	[FlowerId] INT NOT NULL,
	[Amount] INT NOT NULL,

	CONSTRAINT [PK_PlantationFlower] PRIMARY KEY  ([PlantationId], [FlowerId]),
	CONSTRAINT [FK_PlantationFlower_ToPlantation] FOREIGN KEY ([PlantationId]) REFERENCES [Plantation]([Id]),
	CONSTRAINT [FK_PlantationFlower_ToFlower] FOREIGN KEY ([FlowerId]) REFERENCES [Flower]([Id]) on delete cascade
)


CREATE TABLE [WarehouseFlower]
(
	[WarehouseId] INT NOT NULL,
	[FlowerId] INT NOT NULL,
	[Amount] INT NOT NULL,

	CONSTRAINT [PK_WarehouseFlower] PRIMARY KEY  ([WarehouseId], [FlowerId]),
	CONSTRAINT [FK_WarehouseFlower_ToPlantation] FOREIGN KEY ([WarehouseId]) REFERENCES [Warehouse]([Id]),
	CONSTRAINT [FK_WarehouseFlower_ToFlower] FOREIGN KEY ([FlowerId]) REFERENCES [Flower]([Id]) on delete cascade
)