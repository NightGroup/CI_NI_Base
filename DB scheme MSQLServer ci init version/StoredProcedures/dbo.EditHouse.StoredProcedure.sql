USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[EditHouse]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EditHouse] (@nId INT, @Name NVARCHAR(150), @RoomTypeId TINYINT, @ParentId INT = NULL, @Description NVARCHAR(250) = NULL)
AS
BEGIN
SET NOCOUNT ON;

UPDATE House
SET Name = @Name
   ,ParentId = @ParentId
   ,Description = @Description
   ,RoomTypeId = @RoomTypeId
WHERE Id = @nId;

SELECT
  dbo.GetDeviceCountForHouse(@nId);

END
GO
