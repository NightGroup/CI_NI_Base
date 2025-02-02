USE [ci]
GO
/****** Object:  View [dbo].[MaterialValueMovingCard]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaterialValueMovingCard] 
AS SELECT
  MaterialValueMoving.Id
 ,MaterialValueMoving.MaterialValueId
 ,MaterialValue.Name
 ,MaterialValue.ManufacturerCode
 ,MaterialValue.Description
 ,MaterialValueMoving.ActionDate
 ,MaterialValueMoving.TheWarehouseSenderId
 ,MaterialValueMoving.WarehouseReceiverId
 ,dbo.FormatAddress(MaterialValueMoving.TheWarehouseSenderId) AS TheWarehouseSender
 ,dbo.FormatAddress(MaterialValueMoving.WarehouseReceiverId) AS WarehouseReceiver
 ,MaterialValueMoving.MaterialValueCount
 ,MaterialValueByPID.ItemNumber
 ,MaterialValueByPID.PID
 ,ISNULL(MaterialValueByPID.Price, 0) AS Price
 ,ISNULL(MaterialValueByPID.Price, 0) * MaterialValueMoving.MaterialValueCount AS Sum
 ,MaterialValueByPID.Year
FROM dbo.MaterialValueMoving
INNER JOIN dbo.MaterialValueByPID
  ON MaterialValueMoving.MaterialValueId = MaterialValueByPID.Id
INNER JOIN dbo.MaterialValue
  ON MaterialValueByPID.MaterialValueId = MaterialValue.Id
GO
