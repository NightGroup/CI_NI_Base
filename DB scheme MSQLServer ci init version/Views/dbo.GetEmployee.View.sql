USE [ci]
GO
/****** Object:  View [dbo].[GetEmployee]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GetEmployee] 
AS SELECT DISTINCT
  Device.Employee
FROM dbo.Device
WHERE Device.Employee IS NOT NULL
GO
