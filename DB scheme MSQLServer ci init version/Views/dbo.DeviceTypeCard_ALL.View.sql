USE [ci]
GO
/****** Object:  View [dbo].[DeviceTypeCard_ALL]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DeviceTypeCard_ALL]
AS
SELECT
  dbo.DeviceType.Id
 ,dbo.DeviceType.Name
 ,dbo.TechnicalСard2.Name AS TechnicalСardName
 ,dbo.TechnicalСard2.Id AS TechnicalСardId
FROM dbo.TechnicalСard2
LEFT OUTER JOIN dbo.DeviceType
  ON dbo.TechnicalСard2.Id = dbo.DeviceType.TechnicalСardId
 