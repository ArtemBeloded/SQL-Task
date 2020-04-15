DELETE FROM [Flower] WHERE [Id] = 2;

ALTER TABLE [PlantationFlower]
DROP CONSTRAINT [FK_PlantationFlower_ToFlower];

DELETE FROM [PlantationFlower] WHERE [FlowerId] = 8 AND [PlantationId] = 1;

ALTER TABLE [PlantationFlower]
ADD CONSTRAINT [FK_PlantationFlower_ToFlower] FOREIGN KEY ([FlowerId]) REFERENCES [Flower]([Id]) ON DELETE CASCADE;