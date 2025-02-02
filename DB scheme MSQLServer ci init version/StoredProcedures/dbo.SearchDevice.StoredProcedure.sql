USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SearchDevice]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SearchDevice] (@QueryString NVARCHAR(150))
AS
BEGIN
SET NOCOUNT ON;
  --SELECT Id FROM dbo.getRooms(@HouseId) OPTION(MAXRECURSION 32767)
 
  DECLARE @did INT = 0;

  IF(NOT EXISTS (SELECT
    Query
  FROM SearchQuery
  WHERE Query = @QueryString
  AND ModeId = 1
  AND Employee = SUSER_SNAME())
)
BEGIN
INSERT INTO SearchQuery (Query, ModeId)
  VALUES (@QueryString, 1)
END

IF (LOWER(LEFT(@QueryString, 3)) = 'ид '
  OR LOWER(LEFT(@QueryString, 3)) = 'id ')
BEGIN
SET @did = CAST(SUBSTRING(@QueryString, 4, LEN(@QueryString) - 3) AS INT);
WITH tblSd
AS
(SELECT
    dc.*
  FROM DeviceCard dc
  WHERE dc.Id = @did

  UNION ALL
  SELECT
    dc2.*
  FROM DeviceCard dc2
  JOIN tblSd
    ON dc2.Id = tblSd.IncludedIn)
SELECT
  *
FROM tblSd
OPTION (MAXRECURSION 32767)
END
ELSE
BEGIN

WITH tblSd
AS
(SELECT
    dc.*
  FROM DeviceCard dc
  WHERE dc.ModelName LIKE '%' + @QueryString + '%'
  OR dc.InventoryNumber LIKE '%' + @QueryString + '%'
  OR dc.SerialNumber LIKE '%' + @QueryString + '%'
  OR dc.RoomName LIKE '%' + @QueryString + '%'
  OR dc.StatusName LIKE '%' + @QueryString + '%'
  OR dc.DeviceTypeName LIKE '%' + @QueryString + '%'
  OR dc.Number LIKE '%' + @QueryString + '%'
  OR dc.Description LIKE '%' + @QueryString + '%'
  OR dc.Employee LIKE '%' + @QueryString + '%'
  UNION ALL
  SELECT
    dc2.*
  FROM DeviceCard dc2
  JOIN tblSd
    ON dc2.Id = tblSd.IncludedIn)
SELECT
  *
FROM tblSd
OPTION (MAXRECURSION 32767)
END
--SELECT Id FROM dbo.GetRootDevices(455)

END

GO
