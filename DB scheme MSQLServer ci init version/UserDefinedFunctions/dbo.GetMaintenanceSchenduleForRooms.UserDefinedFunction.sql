USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetMaintenanceSchenduleForRooms]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMaintenanceSchenduleForRooms] (@RoomId INT, @YearId tinyint)
RETURNS TABLE  
AS
RETURN(
WITH tblChild
AS
(SELECT
    Id
  FROM House
  WHERE ParentId = @RoomId
  UNION ALL
  SELECT
    House.Id
  FROM House
  JOIN tblChild
    ON House.ParentId = tblChild.Id)

SELECT
  dc.ModelName
 ,dc.DeviceTypeName
 ,dc.SerialNumber
 ,dbo.GetWorkForMonth(dc.RoomId, 1, @YearId) AS m1
 ,dbo.GetWorkForMonth(dc.RoomId, 2, @YearId) AS m2
 ,dbo.GetWorkForMonth(dc.RoomId, 3, @YearId) AS m3
 ,dbo.GetWorkForMonth(dc.RoomId, 4, @YearId) AS m4
 ,dbo.GetWorkForMonth(dc.RoomId, 5, @YearId) AS m5
 ,dbo.GetWorkForMonth(dc.RoomId, 6, @YearId) AS m6
 ,dbo.GetWorkForMonth(dc.RoomId, 7, @YearId) AS m7
 ,dbo.GetWorkForMonth(dc.RoomId, 8, @YearId) AS m8
 ,dbo.GetWorkForMonth(dc.RoomId, 9, @YearId) AS m9
 ,dbo.GetWorkForMonth(dc.RoomId, 10, @YearId) AS m10
 ,dbo.GetWorkForMonth(dc.RoomId, 11, @YearId) AS m11
 ,dbo.GetWorkForMonth(dc.RoomId, 12, @YearId) AS m12
FROM tblChild
LEFT JOIN DeviceCard dc
  ON dc.RoomId = tblChild.Id
WHERE @YearId = @YearId
AND dc.ModelName IS NOT NULL
)

GO
