USE [ci]
GO
/****** Object:  View [dbo].[DeviceMovingCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DeviceMovingCard] 
AS SELECT
  Moving.Id
 ,Moving.DeviceId
 ,DeviceCard.ModelId
 ,DeviceCard.ModelName
 ,DeviceCard.InventoryNumber
 ,DeviceCard.SerialNumber
 ,DeviceCard.MateriallyResponsiblePerson
 ,Moving.DateOfMove
 ,Moving.Empolyee
 ,Moving.OldRoomId
 ,Moving.NewRoomId
 ,dbo.FormatAddress(Moving.OldRoomId) AS OldRoom
 ,dbo.FormatAddress(Moving.NewRoomId) AS NewRoom
FROM dbo.DeviceCard
INNER JOIN dbo.Moving
  ON DeviceCard.Id = Moving.DeviceId
GO
