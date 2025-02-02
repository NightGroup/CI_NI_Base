USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[EditRepair]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EditRepair] (@nId INT
, @DateInForRepair DATETIME
, @ReturnDateOfRepair DATETIME
, @WhereRepairId TINYINT
, @Defect NVARCHAR(250)
, @Result NVARCHAR(250))
AS
BEGIN

UPDATE dbo.DeviceRepair
SET ReturnDateOfRepair = @ReturnDateOfRepair
   ,DateInForRepair = @DateInForRepair
   ,WhereRepairId = @WhereRepairId
   ,Defect = @Defect
   ,Result = @Result
WHERE (Id = @nId)


END
GO
