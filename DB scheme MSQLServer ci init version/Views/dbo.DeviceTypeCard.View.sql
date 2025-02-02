USE [ci]
GO
/****** Object:  View [dbo].[DeviceTypeCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DeviceTypeCard] 
AS SELECT
  DeviceType.Id
 ,DeviceType.Name
 ,DeviceType.TechnicalСardId
 ,TechnicalСard2.Name AS TechnicalСardName
FROM dbo.TechnicalСard2
INNER JOIN dbo.DeviceType
  ON TechnicalСard2.Id = DeviceType.TechnicalСardId
GO
