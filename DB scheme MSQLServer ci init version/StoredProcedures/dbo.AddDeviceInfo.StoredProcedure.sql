USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[AddDeviceInfo]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddDeviceInfo] (
    @ModelId   INT
  , @InventoryNumber nvarchar(50)
  , @SerialNumber nvarchar(50)
  , @DateOfCommissioning DATETIME
  , @MateriallyResponsiblePerson nvarchar(150)
  , @StatusId tinyint
  , @Description nvarchar(300)
  , @Employee nvarchar(50) 
  , @RoomId INT
  , @DeviceId INT OUTPUT)
AS 
  BEGIN
INSERT INTO dbo.Device (ModelId
, InventoryNumber
, SerialNumber
, DateOfCommissioning
, MateriallyResponsiblePerson
, RoomId
, IncludedIn
, StatusId
, Description
, Employee)
  VALUES (@ModelId, @InventoryNumber, @SerialNumber, @DateOfCommissioning, @MateriallyResponsiblePerson, @RoomId, 0, @StatusId, @Description, @Employee)
SET @DeviceId = SCOPE_IDENTITY();

  END
GO
