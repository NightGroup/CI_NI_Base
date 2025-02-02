USE [ci]
GO
/****** Object:  View [dbo].[Labels]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Labels]
AS
SELECT
  CAST(Id AS NVARCHAR) + '|' + ModelName + '|' + InventoryNumber + '|' + SerialNumber + '|' + DeviceTypeName AS Barcode
 ,Id
 ,InventoryNumber
 ,SerialNumber
 ,ModelName
 ,DepartmentId
 ,RoomName
 ,DeviceTypeName
FROM dbo.DeviceCard
GO
 