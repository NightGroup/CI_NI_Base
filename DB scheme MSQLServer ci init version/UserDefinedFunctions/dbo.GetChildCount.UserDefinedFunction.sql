USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[GetChildCount]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetChildCount] (@id int)
RETURNS bit
AS
BEGIN
 DECLARE @Ret BIT = 0;

SELECT
  @Ret = CAST(COUNT(d.id) AS BIT)
FROM Device d
WHERE d.IncludedIn = @id;

RETURN @Ret;
END
GO
