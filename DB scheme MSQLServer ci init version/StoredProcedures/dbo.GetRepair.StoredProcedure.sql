USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetRepair]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetRepair] (@nID INT)
AS
BEGIN
SELECT
  DateInForRepair
 ,ReturnDateOfRepair
 ,WhereRepairId
 ,Defect
 ,Result
FROM DeviceRepair
WHERE Id = @nID;

END
GO
