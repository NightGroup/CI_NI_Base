USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[InsertNewMaterialValue]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertNewMaterialValue] (@Name NVARCHAR(70), @ItemNumber NVARCHAR(50), 
  @PID NVARCHAR(20), @Price MONEY, @Year INT, @MaterialValueCount INT, 
  @WarehouseReceiverId INT, @ManufacturerCode NVARCHAR(50), @Description NVARCHAR(250))
AS
BEGIN

  DECLARE @PidId BIGINT;
  DECLARE @MaterialValueId INT;
  DECLARE @TheWarehouseSenderId INT

--  DECLARE @TheWarehouseSender2Id INT

SELECT TOP 1
  @TheWarehouseSenderId = wc.Id
FROM WarehouseCard wc
WHERE wc.RoomTypeId = 3;

--  SELECT TOP 1
--    @TheWarehouseSender2Id = wc.Id
--  FROM WarehouseCard wc
--  WHERE wc.RoomTypeId = 5;


SELECT TOP 1
  @PidId = MaterialValueByPID.Id

FROM dbo.MaterialValueByPID
WHERE MaterialValueByPID.PID = @PID
AND MaterialValueByPID.Year = @Year
AND MaterialValueByPID.ItemNumber = @ItemNumber

IF @PidId IS NULL
BEGIN

SELECT
  @MaterialValueId = mv.Id
FROM MaterialValue mv
WHERE mv.Name = @Name;

IF @MaterialValueId IS NULL
BEGIN
INSERT MaterialValue (Name, ManufacturerCode, Description)
  VALUES (@Name, @ManufacturerCode, @Description);
SELECT
  @MaterialValueId = SCOPE_IDENTITY();
END

INSERT MaterialValueByPID (MaterialValueId, PID, Price, Year, ItemNumber)
  VALUES (@MaterialValueId, @PID, @Price, @Year, @ItemNumber)
SELECT
  @PidId = SCOPE_IDENTITY();

INSERT MaterialValueMoving (MaterialValueId, ActionDate, TheWarehouseSenderId, WarehouseReceiverId, MaterialValueCount)
  VALUES (@PidId, GETDATE(), @TheWarehouseSenderId, @WarehouseReceiverId, @MaterialValueCount)

--    UPDATE dbo.MaterialValueInStock
--    SET MaterialValueCount = MaterialValueCount - @MaterialValueCount
--    WHERE MaterialValueId = @PidId
--    AND WarehouseId = @TheWarehouseSender2Id

END
ELSE
BEGIN
INSERT MaterialValueMoving (MaterialValueId, ActionDate, TheWarehouseSenderId, WarehouseReceiverId, MaterialValueCount)
  VALUES (@PidId, GETDATE(), @TheWarehouseSenderId, @WarehouseReceiverId, @MaterialValueCount)

--    UPDATE dbo.MaterialValueInStock
--    SET MaterialValueCount = MaterialValueCount - @MaterialValueCount
--    WHERE MaterialValueId = @PidId
--    AND WarehouseId = @TheWarehouseSender2Id

END

END
GO
