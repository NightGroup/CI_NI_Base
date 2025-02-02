USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[AddHouse]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddHouse] ( @Name NVARCHAR(150),  @RoomTypeId TINYINT, @ParentId INT = NULL, @Description NVARCHAR(250) = null )
AS
BEGIN
SET NOCOUNT ON;
INSERT House (Name, ParentId, Description, RoomTypeId)
  VALUES (@Name, @ParentId, @Description, @RoomTypeId);
SELECT
  SCOPE_IDENTITY();
END
GO
