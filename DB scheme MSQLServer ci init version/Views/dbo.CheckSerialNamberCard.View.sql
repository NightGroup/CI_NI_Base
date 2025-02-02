USE [ci]
GO
/****** Object:  View [dbo].[CheckSerialNamberCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CheckSerialNamberCard] 
AS SELECT
  Device.SerialNumber
 ,COUNT(Device.SerialNumber) AS sncount
FROM dbo.Device
GROUP BY Device.SerialNumber
HAVING COUNT(Device.SerialNumber) > 1
GO
