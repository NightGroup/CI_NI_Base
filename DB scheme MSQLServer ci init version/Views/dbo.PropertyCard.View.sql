USE [ci]
GO
/****** Object:  View [dbo].[PropertyCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PropertyCard] 
AS SELECT
  Property.Id
 ,Property.PropertyNameId
 ,PropertyName.Name AS PropertyName
 ,Property.PropertyValue
 ,PropertyName.PropertyGroupId
 ,PropertyGroup.Name AS PropertyGroupName
 ,PropertyGroup.[Order] AS PropertyOrder
 ,Property.DeviceModelId
FROM dbo.Property
INNER JOIN dbo.PropertyName
  ON Property.PropertyNameId = PropertyName.Id
INNER JOIN dbo.PropertyGroup
  ON PropertyName.PropertyGroupId = PropertyGroup.Id
GO
