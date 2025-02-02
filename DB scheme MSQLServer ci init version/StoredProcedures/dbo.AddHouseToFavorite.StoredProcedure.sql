USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[AddHouseToFavorite]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddHouseToFavorite] (@HouseId INT, @Add TINYINT = 0 OUTPUT)
AS
BEGIN

  IF (NOT EXISTS (SELECT
    fh.Id
  FROM FavoriteHouse fh
  WHERE fh.HouseId = @HouseId
  AND fh.Employee = SUSER_SNAME())
)
BEGIN
SET @Add = 1;
INSERT INTO dbo.FavoriteHouse (HouseId)
  VALUES (@HouseId);
END
ELSE
BEGIN
SET @Add = 0;
DELETE FROM dbo.FavoriteHouse
WHERE HouseId = @HouseId
  AND Employee = SUSER_SNAME();
END

END
GO
