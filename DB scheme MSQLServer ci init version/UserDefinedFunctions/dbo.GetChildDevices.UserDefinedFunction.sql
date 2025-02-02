USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetChildDevices]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetChildDevices] (@DeviceId INT)
RETURNS TABLE
AS
  RETURN (
WITH tblChild
AS
(SELECT
    Id
  FROM Device
  WHERE Id = @DeviceId
  UNION ALL
  SELECT
    Device.Id
  FROM Device
  JOIN tblChild
    ON Device.IncludedIn = tblChild.Id)

SELECT
  *
FROM tblChild --OPTION(MAXRECURSION 32767)

)
GO
