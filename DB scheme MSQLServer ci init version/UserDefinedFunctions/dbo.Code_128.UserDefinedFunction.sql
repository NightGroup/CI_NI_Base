USE [ci]
GO

/****** Object:  UserDefinedFunction [dbo].[Code_128]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Давно был найден на просторах интернета. Ссылка не сохранилась */
CREATE Function [dbo].[Code_128](@A  varchar(255)) returns varchar(255) as 
begin
declare @BCode varchar(255)
declare @BInd Int
declare @CurMode  varchar(255)
declare @Ch As int
declare @Ch2 As int
declare @i As int
declare @LenA As int
declare @CCode As int
declare @S  varchar(255)
    --Dim BarArray As Variant
 
  set @BInd = 0
  set @CurMode = ''
  set @i  = 1
  Set @LenA = Len(@A)   
  set @BCode = ''
--  set @BCode = SPACE(255)
  While @i <= @LenA 
  begin
    --Текущий символ в строке
    set @Ch = UNICODE(substring(@A, @I, 1))
    set @I = @I + 1
    --Разбираем только символы от 0 до 127
    if @Ch <= 127 
    --Следующий символ
    begin
      if @I <= @LenA set @Ch2 = UNICODE(substring(@A, @I, 1))
      else          set @Ch2 = 0
      --Пара цифр - режим С
      if (48 <= @Ch) And (@Ch <= 57) And  (48 <= @Ch2) And (@Ch2 <= 57) 
      begin 
         set @i = @i + 1
         If @BInd = 0 
         begin
           --Начало с режима С
           set @CurMode = 'C'
--           set @BCode = SUBSTRING(@BCode, 1, @BInd+1) + CHAR(105) + SUBSTRING(@BCode,  @BInd+1 + 1, LEN(@BCode) - (@BInd+1))
           set @BCode = @BCode + CHAR(105)
           set @BInd = @BInd + 1
         end Else if @CurMode <> 'C' 
         begin 
           --Переключиться на режим С
           set @CurMode = 'C'
--           set @BCode = SUBSTRING(@BCode, 1, @BInd+1) + CHAR(99) + SUBSTRING(@BCode,  @BInd+1 + 1, LEN(@BCode) - (@BInd+1))
           set @BCode = @BCode + CHAR(99)
           set @BInd = @BInd + 1
         End
         --Добавить символ режима С
         
--         set @BCode = SUBSTRING(@BCode, 1, @BInd+1) + cast(CHAR(@Ch) + CHAR(@Ch2) as int) + SUBSTRING(@BCode,  @BInd+1 + 1, LEN(@BCode) - (@BInd+1))
         set @BCode = @BCode + char(cast((CHAR(@Ch) + CHAR(@Ch2)) as int))
       
         set @BInd = @BInd + 1
      end else --if (48 <= @Ch) And (@Ch <= 57) And  (48 <= @Ch2) And (@Ch2 <= 57) 
      begin
         If @BInd = 0 
         begin
           If @Ch < 32 
           begin
           --Начало с режима A
             set @CurMode = 'A'
	         --set @BCode = SUBSTRING(@BCode, 1, @BInd+1) + CHAR(103) + SUBSTRING(@BCode,  @BInd+1 + 1, LEN(@BCode) - (@BInd+1))
	         set @BCode = @BCode + CHAR(103)
             set @BInd = @BInd + 1
           end  
           Else begin
           --Начало с режима B
             set @CurMode = 'B'
	         --set @BCode = SUBSTRING(@BCode, 1, @BInd+1) + CHAR(104) + SUBSTRING(@BCode,  @BInd+1 + 1, LEN(@BCode) - (@BInd+1))
	         set @BCode = @BCode + CHAR(104)
             set @BInd = @BInd + 1
           End
         end --If @BInd = 0
         --Переключение по надобности в режим A
         If (@Ch < 32) And (@CurMode <> 'A') 
         begin
             set @CurMode = 'A'
	         --set @BCode = SUBSTRING(@BCode, 1, @BInd+1) + CHAR(101) + SUBSTRING(@BCode,  @BInd+1 + 1, LEN(@BCode) - (@BInd+1))
	         set @BCode = @BCode + CHAR(101)
             set @BInd = @BInd + 1
         end 
         else if ((64 <= @Ch) And (@CurMode <> 'B') Or (@CurMode = 'C'))
         --Переключение по надобности в режим B
         begin
             set @CurMode = 'B'
	         --set @BCode = SUBSTRING(@BCode, 1, @BInd+1) + CHAR(100) + SUBSTRING(@BCode,  @BInd+1 + 1, LEN(@BCode) - (@BInd+1))
	         set @BCode = @BCode + CHAR(100)
             set @BInd = @BInd + 1
         end --   If (@Ch < 32) And (@CurMode <> "A") 
         --Служебные символы
         If (@Ch < 32) 
         begin
	       --set @BCode = SUBSTRING(@BCode, 1, @BInd+1) + CHAR(@Ch+64) + SUBSTRING(@BCode,  @BInd+1 + 1, LEN(@BCode) - (@BInd+1))
	       set @BCode = @BCode + CHAR(@Ch+64)
           set @BInd = @BInd + 1         
         end 
         else    begin
         --Все другие символы
	       --set @BCode = SUBSTRING(@BCode, 1, @BInd+1) + CHAR(@Ch-32) + SUBSTRING(@BCode,  @BInd+1 + 1, LEN(@BCode) - (@BInd+1))
	       set @BCode = @BCode + CHAR(@Ch-32)
           set @BInd = @BInd + 1   
         end
      end -- elseif (48 <= @Ch) And (@Ch <= 57) And  (48 <= @Ch2) And (@Ch2 <= 57) 
    end --if @Ch <= 127
  end --while
  --Подсчитываем контрольную сумму
  --set @CCode = unicode(SUBSTRING(@BCode,1,1)) % 103
  set @CCode = unicode(SUBSTRING(@BCode,1,1)) 
  set @i = 2
  while @i <= @BInd
  begin
    --set @CCode = (@CCode + unicode(SUBSTRING(@BCode, @I,1)) * (@I-1) ) % 103 ORIGINAL
    set @CCode = @CCode + unicode(SUBSTRING(@BCode, @I,1)) * (@I-1) 
    set @i = @i + 1
  end  
  set @CCode = @CCode % 103
--  set @BCode = SUBSTRING(@BCode, 1, @BInd+1) + @CCode + SUBSTRING(@BCode,  @BInd+1 + 1, LEN(@BCode) - (@BInd+1))
  set @BCode = @BCode + char(@CCode)

  set @BInd = @BInd + 1
  --Завершающий символ
--  set @BCode = SUBSTRING(@BCode, 1, @BInd+1) + CHAR(106) + SUBSTRING(@BCode,  @BInd+1 + 1, LEN(@BCode) - (@BInd+1))
  set @BCode = @BCode + CHAR(106) 
  set @BInd = @BInd + 1
  --Собираем строку символов шрифта

  
  set @S = ''
  set @i = 0
  while @i < @BInd
  begin
    set @S = @S + dbo.Code_Char(dbo.Code_128_ID(unicode(SUBSTRING(@BCode, @i+1, 1))))
    set @i = @i + 1
  end    
  
  return @s
end
GO
