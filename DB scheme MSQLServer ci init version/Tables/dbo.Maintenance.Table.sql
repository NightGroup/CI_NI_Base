USE [ci]
GO
/****** Object:  Table [dbo].[Maintenance]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maintenance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DeviceId] [int] NOT NULL,
	[ActionDate] [datetime] NOT NULL,
	[TechnicalCardTypeOfWorkId] [tinyint] NOT NULL,
	[Employee] [nvarchar](50) NULL,
 CONSTRAINT [PK_Maintenance_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Maintenance] ADD  DEFAULT ((1)) FOR [TechnicalCardTypeOfWorkId]
GO
ALTER TABLE [dbo].[Maintenance] ADD  DEFAULT (suser_sname()) FOR [Employee]
GO
ALTER TABLE [dbo].[Maintenance]  WITH CHECK ADD  CONSTRAINT [FK_Maintenance_Device_Id] FOREIGN KEY([DeviceId])
REFERENCES [dbo].[Device] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Maintenance] CHECK CONSTRAINT [FK_Maintenance_Device_Id]
GO
ALTER TABLE [dbo].[Maintenance]  WITH CHECK ADD  CONSTRAINT [FK_Maintenance_TechnicalCardTypeOfWork_Id] FOREIGN KEY([TechnicalCardTypeOfWorkId])
REFERENCES [dbo].[TechnicalCardTypeOfWork] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Maintenance] CHECK CONSTRAINT [FK_Maintenance_TechnicalCardTypeOfWork_Id]
GO
