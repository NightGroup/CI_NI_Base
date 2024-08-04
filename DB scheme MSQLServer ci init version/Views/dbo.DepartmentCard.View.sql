USE [ci]
GO
/****** Object:  View [dbo].[DepartmentCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DepartmentCard]
AS
SELECT
  House.Id
 ,House.Name
 ,House.Description
FROM dbo.House
WHERE House.RoomTypeId = 4
GO
