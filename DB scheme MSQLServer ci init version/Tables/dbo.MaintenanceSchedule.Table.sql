USE [ci]
GO
/****** Object:  Table [dbo].[MaintenanceSchedule]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaintenanceSchedule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HouseId] [int] NOT NULL,
	[MaintenanceScheduleYearId] [tinyint] NOT NULL,
	[Month] [smallint] NOT NULL,
	[TechnicalCardTypeOfWorkId] [tinyint] NOT NULL,
 CONSTRAINT [PK_MaintenanceSchedule_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MaintenanceSchedule] ADD  DEFAULT ((2)) FOR [TechnicalCardTypeOfWorkId]
GO
ALTER TABLE [dbo].[MaintenanceSchedule]  WITH CHECK ADD  CONSTRAINT [FK_MaintenanceSchedule_House_Id] FOREIGN KEY([HouseId])
REFERENCES [dbo].[House] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaintenanceSchedule] CHECK CONSTRAINT [FK_MaintenanceSchedule_House_Id]
GO
ALTER TABLE [dbo].[MaintenanceSchedule]  WITH CHECK ADD  CONSTRAINT [FK_MaintenanceSchedule_MaintenanceScheduleYear_Id] FOREIGN KEY([MaintenanceScheduleYearId])
REFERENCES [dbo].[MaintenanceScheduleYear] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaintenanceSchedule] CHECK CONSTRAINT [FK_MaintenanceSchedule_MaintenanceScheduleYear_Id]
GO
ALTER TABLE [dbo].[MaintenanceSchedule]  WITH CHECK ADD  CONSTRAINT [FK_MaintenanceSchedule_TechnicalCardTypeOfWork_Id] FOREIGN KEY([TechnicalCardTypeOfWorkId])
REFERENCES [dbo].[TechnicalCardTypeOfWork] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaintenanceSchedule] CHECK CONSTRAINT [FK_MaintenanceSchedule_TechnicalCardTypeOfWork_Id]
GO
