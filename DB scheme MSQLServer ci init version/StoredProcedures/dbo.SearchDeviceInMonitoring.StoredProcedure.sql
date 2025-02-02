USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SearchDeviceInMonitoring]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SearchDeviceInMonitoring] (@QueryString NVARCHAR(150))
AS
BEGIN
SET NOCOUNT ON;
  --SELECT Id FROM dbo.getRooms(@HouseId) OPTION(MAXRECURSION 32767)
 
  DECLARE @did INT = 0;

  IF(NOT EXISTS (SELECT
    Query
  FROM SearchQuery
  WHERE Query = @QueryString
  AND ModeId = 0
  AND Employee = SUSER_SNAME())
)
BEGIN
INSERT INTO SearchQuery (Query, ModeId)
  VALUES (@QueryString, 0)
END

-- SELECT nw.id, nw.host, nw.type, nw.system, nw.last_request, nw.monitoring_packs, nw.atlas_name, nw.node_monitoring_enable, 
-- nw.description, nw.node_computer_db_id FROM dbo.node_view nw WHERE (nw.atlas_id = %d OR nw.atlas_id IN (SELECT Id FROM dbo.GetAtlases(%d)) )

IF (LOWER(LEFT(@QueryString, 3)) = 'ид '
  OR LOWER(LEFT(@QueryString, 3)) = 'id ')
BEGIN
SET @did = CAST(SUBSTRING(@QueryString, 4, LEN(@QueryString) - 3) AS INT);

SELECT
  nw.id
 ,nw.host
 ,nw.type
 ,nw.system
 ,nw.last_request
 ,nw.monitoring_packs
 ,nw.atlas_name
 ,nw.node_monitoring_enable
 ,nw.description
 ,nw.node_computer_db_id
FROM dbo.node_view nw
WHERE nw.id = @did

END
ELSE
BEGIN

SELECT
  nw.id
 ,nw.host
 ,nw.type
 ,nw.system
 ,nw.last_request
 ,nw.monitoring_packs
 ,nw.atlas_name
 ,nw.node_monitoring_enable
 ,nw.description
 ,nw.node_computer_db_id
FROM dbo.node_view nw
WHERE nw.host LIKE '%' + @QueryString + '%'
OR nw.system LIKE '%' + @QueryString + '%'
OR nw.type LIKE '%' + @QueryString + '%'
OR nw.monitoring_packs LIKE '%' + @QueryString + '%'
OR nw.atlas_name LIKE '%' + @QueryString + '%'
OR nw.description LIKE '%' + @QueryString + '%'

END
--SELECT Id FROM dbo.GetRootDevices(455)

END
GO
