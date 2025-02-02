USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GenerateMaintenanceSchenduleForRooms]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerateMaintenanceSchenduleForRooms](@RoomId INT, @YearId tinyint)
AS
BEGIN
SET NOCOUNT ON;
SELECT
  *
FROM dbo.GetMaintenanceSchenduleForRooms(@RoomId, @YearId)
OPTION (MAXRECURSION 32767)
END
GO
