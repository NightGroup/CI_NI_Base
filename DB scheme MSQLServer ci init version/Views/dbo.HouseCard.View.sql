USE [ci]
GO
/****** Object:  View [dbo].[HouseCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[HouseCard] 
AS SELECT
  House.Id
 ,House.Name
 ,CASE House.DeviceCount
    WHEN 0 THEN House.Name
    ELSE House.Name + ' (' + CAST(House.DeviceCount AS NVARCHAR) + ')'
  END AS NameWithCount
 ,House.ParentId
 ,House.Description
 ,House.RoomTypeId
 ,dbo.GetDepartmentId(House.Id) AS DepartmentId
 ,House.DeviceCount
 ,RoomType.Name AS Type
FROM dbo.House
INNER JOIN dbo.RoomType
  ON House.RoomTypeId = RoomType.Id
GO
