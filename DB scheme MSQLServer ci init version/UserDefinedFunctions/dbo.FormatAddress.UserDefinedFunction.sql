USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[FormatAddress]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FormatAddress] (@id int)
RETURNS nvarchar(4000)

AS
BEGIN

DECLARE @Path nvarchar(4000)
DECLARE @Name nvarchar(150)

--select @Path = Name, @id=Id from House where Id=@id
SET @Path = N'';

WHILE @@rowcount > 0 AND @id IS NOT NULL AND len(@Path) < 4000
   BEGIN

SELECT
  @Name = Name
 ,@id = ParentId
FROM dbo.House
WHERE Id = @id

IF (LEN(@Path) > 0)
SET @Path = @Name + ' › ' + @Path
 ELSE
SET @Path = @Name
END

RETURN @Path
END

GO
