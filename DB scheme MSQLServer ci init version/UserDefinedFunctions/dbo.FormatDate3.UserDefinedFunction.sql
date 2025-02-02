USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[FormatDate3]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FormatDate3] 
(
	-- Add the parameters for the function here
	@dt DATETIME
)
RETURNS NVARCHAR(12)
AS
BEGIN

	DECLARE @Ret NVARCHAR(12)
	DECLARE @Day NVARCHAR(2)
	DECLARE @Month NVARCHAR(2)

	IF DAY(@dt) < 10
SET @Day = '0' + CAST(DAY(@dt) AS NVARCHAR(1))
	  else
SET @Day = CAST(DAY(@dt) AS NVARCHAR(2))

	  if MONTH(@dt) < 10
SET @Month = '0' + CAST(MONTH(@dt) AS NVARCHAR(1))
	  else
SET @Month = CAST(MONTH(@dt) AS NVARCHAR(2))

SET @Ret = @Day + '.' + @Month + '.' + CAST(YEAR(@dt) AS NVARCHAR(4))
	 
	RETURN @Ret

END
GO
