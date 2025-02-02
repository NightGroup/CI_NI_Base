USE [ci]
GO
/****** Object:  View [dbo].[WarehouseCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[WarehouseCard]
AS
SELECT
  HouseCard.Id
 ,HouseCard.RoomTypeId
 ,dbo.FormatAddress(HouseCard.Id) AS Warehouse
 ,HouseCard.DepartmentId
FROM dbo.HouseCard
WHERE HouseCard.RoomTypeId IN (2, 3)
GO
