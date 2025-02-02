USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDepartmentId]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetDepartmentId] (@id int) 
RETURNS int

AS
BEGIN
 
DECLARE @DepId INT = 0;
DECLARE @RarentId INT = @RootId;
DECLARE @TypeId INT;
DECLARE @CurrentHouseId INT;

SELECT
  @TypeId = RoomTypeId
 ,@RarentId = ParentId
FROM dbo.House
WHERE Id = @RarentId;

IF @TypeId = 4
BEGIN
RETURN @RootId
END

SELECT
  @TypeId = RoomTypeId
 ,@CurrentHouseId = Id
 ,@RarentId = ParentId
FROM dbo.House
WHERE Id = @RarentId;

WHILE @@rowcount > 0
BEGIN
IF @TypeId = 4
BEGIN
IF @CurrentHouseId IS NULL
SET @DepId = @RarentId
ELSE
SET @DepId = @CurrentHouseId
BREAK
END
SELECT
  @TypeId = RoomTypeId
 ,@CurrentHouseId = Id
 ,@RarentId = ParentId
FROM dbo.House
WHERE Id = @RarentId
END

RETURN @DepId
END

GO
