USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceNameWithCountForHouseAndRoot]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDeviceNameWithCountForHouseAndRoot](@HouseId INT)
AS 
BEGIN

SELECT
  dc.Id
 ,dc.Name + ' (' + CAST(dc.DeviceCount AS NVARCHAR) + ')' AS c
FROM House dc
WHERE dc.Id = @HouseId
OR dc.Id IN (SELECT
    Id
  FROM dbo.getRootHouse(@HouseId))
OPTION (MAXRECURSION 32767)


END

GO
