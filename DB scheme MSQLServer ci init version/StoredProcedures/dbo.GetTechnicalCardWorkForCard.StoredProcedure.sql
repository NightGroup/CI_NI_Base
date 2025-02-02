USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetTechnicalCardWorkForCard]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTechnicalCardWorkForCard] (@CardId INT)
AS 
BEGIN
SET NOCOUNT ON;

SELECT
  TechnicalCardWork.Id
 ,TechnicalCardWork.Name
 ,TechnicalCardWork.RequiredTime
 ,TechnicalCardWork.Actions
 ,TechnicalCardWork.TechnicalCardTypeOfWorkId
 ,TechnicalCardTypeOfWork.Name AS WorkTypeName
FROM dbo.TechnicalCardWork
INNER JOIN dbo.TechnicalCardTypeOfWork
  ON TechnicalCardWork.TechnicalCardTypeOfWorkId = TechnicalCardTypeOfWork.Id
WHERE TechnicalCardWork.TechnicalCardId = @CardId

END
GO
