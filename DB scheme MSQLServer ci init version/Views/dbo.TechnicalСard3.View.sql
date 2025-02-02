USE [ci]
GO
/****** Object:  View [dbo].[TechnicalСard3]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TechnicalСard3] 
AS WITH ms0
AS
(SELECT
    Id
   ,Name
   ,TechnicalСardId
   ,TechnicalСardName
  FROM dbo.DeviceTypeCard_ALL)

SELECT DISTINCT
  d0.TechnicalСardId
 ,d0.TechnicalСardName
 ,STUFF((SELECT
      ', ' + c0.Name
    FROM ms0 c0
    WHERE c0.TechnicalСardId = d0.TechnicalСardId
    ORDER BY c0.TechnicalСardName
    FOR XML PATH (''))
  ,
  1, 1, '') lstDeviceType

FROM ms0 d0

GO
