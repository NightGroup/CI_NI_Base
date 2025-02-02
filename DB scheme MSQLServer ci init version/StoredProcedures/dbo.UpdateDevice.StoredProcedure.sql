USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[UpdateDevice]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateDevice]( @Id INT
 , @ModelId INT
 , @InventoryNumber NVARCHAR(50)
 , @SerialNumber NVARCHAR(50)
 , @DateOfCommissioning DATE 
 , @MateriallyResponsiblePerson NVARCHAR(150)
 , @RoomId INT
 , @IncludedIn INT
 , @StatusId TINYINT 
 , @Description NVARCHAR(300)
 , @Employee NVARCHAR(50))

AS
BEGIN

UPDATE Device
SET ModelId = @ModelId
   ,InventoryNumber = @InventoryNumber
   ,SerialNumber = @SerialNumber
   ,DateOfCommissioning = @DateOfCommissioning
   ,MateriallyResponsiblePerson = @MateriallyResponsiblePerson
   ,RoomId = @RoomId
   ,IncludedIn = @IncludedIn
   ,StatusId = @StatusId
   ,Description = @Description
   ,Employee = @Employee
WHERE Id = @Id

END
GO
