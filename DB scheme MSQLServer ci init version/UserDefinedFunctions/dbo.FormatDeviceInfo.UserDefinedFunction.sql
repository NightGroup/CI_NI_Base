USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[FormatDeviceInfo]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FormatDeviceInfo] ( @ParentId INT)
RETURNS NVARCHAR(300)
AS
BEGIN
-- assume id=0 - root of the tree
declare @Path nvarchar(4000)

SELECT
  @Path = dc.ModelName + ' (s/n: ' + dc.SerialNumber + ', инв. ' + dc.InventoryNumber + ') - ' + dc.StatusName
FROM DeviceCard dc
WHERE dc.IncludedIn = @ParentId;

RETURN @Path
END

GO
