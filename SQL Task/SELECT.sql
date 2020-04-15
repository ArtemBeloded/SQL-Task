SELECT [Id], [Name], [Address] FROM [Plantation];


SELECT [p].[Id], [p].[Name], [p].[Address], [f].[Name] AS 'Flower name', [pf].[Amount] FROM [Plantation] AS [p]
JOIN [PlantationFlower] AS [pf] ON [p].[Id] = [pf].[PlantationId]
JOIN [Flower] AS [f] ON [pf].[FlowerId] = [f].[Id]


SELECT [f].[Id], [f].[Name], COUNT([f].[Id]) AS 'Plantations number' FROM [PlantationFlower] AS [pf]
JOIN [Flower] AS [f] ON [pf].FlowerId = [f].Id
GROUP BY [f].[Id], [f].Name


SELECT [f].[Id], [f].[Name], COUNT([f].[Id]) AS 'Plantations number' FROM [PlantationFlower] AS [pf]
JOIN [Flower] AS [f] ON [pf].FlowerId = [f].Id AND [pf].Amount > 1000 
GROUP BY [f].[Id], [f].Name