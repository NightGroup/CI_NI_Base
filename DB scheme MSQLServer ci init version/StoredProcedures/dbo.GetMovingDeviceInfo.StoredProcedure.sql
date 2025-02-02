USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[GetMovingDeviceInfo]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMovingDeviceInfo] (@DeviceId INT)
AS 
BEGIN
SET NOCOUNT ON;

SELECT
  MovingCard.Id
 ,MovingCard.DateOfMove
 ,MovingCard.OldRoomName
 ,MovingCard.NewRoomName
 ,MovingCard.Empolyee
FROM dbo.MovingCard
WHERE MovingCard.DeviceId = @DeviceId
END

GO
