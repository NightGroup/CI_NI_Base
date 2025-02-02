USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetRootDevices]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetRootDevices] (@DeviceId INT)
RETURNS TABLE
AS
  RETURN (
WITH tblParent
AS
(SELECT
    IncludedIn
   ,Id
  FROM Device
  WHERE Id = @DeviceId
  UNION ALL
  SELECT
    Device.IncludedIn
   ,Device.Id
  FROM Device
  JOIN tblParent
    ON Device.Id = tblParent.IncludedIn)

SELECT
  *
FROM tblParent
WHERE Id <> @DeviceId --OPTION(MAXRECURSION 32767)
)
GO
