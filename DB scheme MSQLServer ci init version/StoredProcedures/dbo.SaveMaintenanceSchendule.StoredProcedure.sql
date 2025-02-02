USE [ci]
GO
/****** Object:  StoredProcedure [dbo].[SaveMaintenanceSchendule]    Script Date: 04.08.2024 18:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SaveMaintenanceSchendule] (@HouseId INT, @YearId TINYINT,
@m1 SMALLINT, @m2 SMALLINT, @m3 SMALLINT, @m4 SMALLINT, @m5 SMALLINT, @m6 SMALLINT, @m7 SMALLINT,
@m8 SMALLINT, @m9 SMALLINT, @m10 SMALLINT, @m11 SMALLINT, @m12 SMALLINT)
AS
BEGIN

DELETE FROM MaintenanceSchedule
WHERE MaintenanceScheduleYearId = @YearId
  AND (HouseId IN (SELECT
      Id
    FROM dbo.GetRooms(@HouseId))
  OR HouseId = @HouseId)
OPTION (MAXRECURSION 32767)

IF @m1 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (1, @HouseId, @YearId, @m1);

INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    1
   ,Id
   ,@YearId
   ,@m1
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)
END

IF @m2 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (2, @HouseId, @YearId, @m2);

INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    2
   ,Id
   ,@YearId
   ,@m2
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)

END
IF @m3 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (3, @HouseId, @YearId, @m3);

INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    3
   ,Id
   ,@YearId
   ,@m3
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)

END
IF @m4 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (4, @HouseId, @YearId, @m4);

INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    4
   ,Id
   ,@YearId
   ,@m4
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)
END
IF @m5 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (5, @HouseId, @YearId, @m5);
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    5
   ,Id
   ,@YearId
   ,@m5
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)
END
IF @m6 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (6, @HouseId, @YearId, @m6);
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    6
   ,Id
   ,@YearId
   ,@m6
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)

END
IF @m7 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (7, @HouseId, @YearId, @m7);
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    7
   ,Id
   ,@YearId
   ,@m7
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)

END
IF @m8 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (8, @HouseId, @YearId, @m8);

INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    8
   ,Id
   ,@YearId
   ,@m8
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)
END
IF @m9 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (9, @HouseId, @YearId, @m9);
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    9
   ,Id
   ,@YearId
   ,@m9
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)
END
IF @m10 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (10, @HouseId, @YearId, @m10);
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    10
   ,Id
   ,@YearId
   ,@m10
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)
END
IF @m11 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (11, @HouseId, @YearId, @m11);
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    11
   ,Id
   ,@YearId
   ,@m11
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)
END
IF @m12 > 1
BEGIN
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  VALUES (12, @HouseId, @YearId, @m12);
INSERT INTO MaintenanceSchedule (Month, HouseId, MaintenanceScheduleYearId, TechnicalCardTypeOfWorkId)
  SELECT
    12
   ,Id
   ,@YearId
   ,@m12
  FROM dbo.GetRooms(@HouseId)
  OPTION (MAXRECURSION 32767)
END
END
GO
