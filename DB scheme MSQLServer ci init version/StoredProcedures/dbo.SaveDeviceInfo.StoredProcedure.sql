USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SaveDeviceInfo]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SaveDeviceInfo] (
    @DeviceId INT
  , @ModelId   INT
  , @InventoryNumber nvarchar(50)
  , @SerialNumber nvarchar(50)
  , @DateOfCommissioning DATETIME
  , @MateriallyResponsiblePerson nvarchar(150)
  , @StatusId tinyint
  , @Description nvarchar(300)
  , @Employee nvarchar(50))
AS 
  BEGIN

UPDATE dbo.Device
SET ModelId = @ModelId
   ,InventoryNumber = @InventoryNumber
   ,SerialNumber = @SerialNumber
   ,DateOfCommissioning = @DateOfCommissioning
   ,MateriallyResponsiblePerson = @MateriallyResponsiblePerson
   ,StatusId = @StatusId
   ,Description = @Description
   ,Employee = @Employee
WHERE Id = @DeviceId

END
GO
