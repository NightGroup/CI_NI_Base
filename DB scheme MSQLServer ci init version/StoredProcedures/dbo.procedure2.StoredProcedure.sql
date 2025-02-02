USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[procedure2]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedure2]
AS

SELECT
  dc.TypeId
 ,dc.DeviceTypeName
 ,dc.DepartmentId
 ,DepartmentCard.Name
FROM dbo.DepartmentCard
INNER JOIN dbo.DeviceCard dc
  ON DepartmentCard.Id = dc.DepartmentId
WHERE dc.RoomId = 94
OR dc.RoomId IN (SELECT
    GetRooms.Id
  FROM dbo.getRooms(94))
OPTION (MAXRECURSION 32767)

GO
