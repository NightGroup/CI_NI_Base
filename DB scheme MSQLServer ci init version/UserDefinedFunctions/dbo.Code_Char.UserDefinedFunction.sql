USE [ci]
GO
/****** Object:  UserDefinedFunction [dbo].[Code_Char]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* Давно был найден на просторах интернета. Ссылка не сохранилась */
CREATE Function [dbo].[Code_Char](@A  varchar(255)) returns varchar(255) as 
BEGIN
DECLARE @S  varchar(255)
DECLARE @I  int
DECLARE @B  varchar(255)

  IF @A = '211412' SET @S = 'A' 
  ELSE IF  @A = '211214' SET @S = 'B'
  ELSE IF  @A = '211232' SET @S = 'C'
  ELSE IF  @A = '2331112' SET @S = '@'
  ELSE BEGIN
SET @S = ''
SET @I = 1
    WHILE  @I  <= CAST(ROUND( LEN(@A) / 2 ,0) AS int)
    BEGIN
SELECT
  @s = @s +
  CASE SUBSTRING(@A, 2 * @I - 1, 2)

    WHEN '11' THEN '0'
    WHEN '21' THEN '1'
    WHEN '31' THEN '2'
    WHEN '41' THEN '3'
    WHEN '12' THEN '4'
    WHEN '22' THEN '5'
    WHEN '32' THEN '6'
    WHEN '42' THEN '7'
    WHEN '13' THEN '8'
    WHEN '23' THEN '9'
    WHEN '33' THEN ':'
    WHEN '43' THEN ';'
    WHEN '14' THEN '<'
    WHEN '24' THEN '='
    WHEN '34' THEN '>'
    WHEN '44' THEN '?'
    ELSE ''
  END
SET @I = @I + 1
 
    END
  END

  RETURN @S
END
GO
