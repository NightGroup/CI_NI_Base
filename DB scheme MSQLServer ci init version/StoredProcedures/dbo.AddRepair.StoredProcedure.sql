USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[AddRepair]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddRepair] (@DeviceId INT
, @DateInForRepair DATETIME
, @ReturnDateOfRepair DATETIME
, @WhereRepairId TINYINT
, @Defect NVARCHAR(250)
, @Result NVARCHAR(250))
AS
BEGIN

INSERT INTO dbo.DeviceRepair (DeviceId
, ReturnDateOfRepair
, DateInForRepair
, WhereRepairId
, Defect
, Result)
  VALUES (@DeviceId, @ReturnDateOfRepair, @DateInForRepair, @WhereRepairId, @Defect, @Result)

END
GO
