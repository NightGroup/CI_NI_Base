USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetHouseFromFavorite]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetHouseFromFavorite]
AS
BEGIN

SELECT
  House.Id
 ,House.Name
 ,House.Description
 ,House.RoomTypeId
FROM FavoriteHouse AS fh
INNER JOIN House
  ON fh.HouseId = House.Id
WHERE (fh.Employee = SUSER_SNAME())
END
GO
