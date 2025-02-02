USE [ci]
GO
/****** Object:  Table [dbo].[DeviceRepair]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceRepair](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DeviceId] [int] NOT NULL,
	[ReturnDateOfRepair] [datetime] NULL,
	[DateInForRepair] [datetime] NOT NULL,
	[WhereRepairId] [tinyint] NOT NULL,
	[Defect] [nvarchar](250) NOT NULL,
	[Result] [nvarchar](250) NULL,
 CONSTRAINT [PK_DeviceRepair_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeviceRepair]  WITH CHECK ADD  CONSTRAINT [FK_DeviceRepair_Device_Id] FOREIGN KEY([DeviceId])
REFERENCES [dbo].[Device] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceRepair] CHECK CONSTRAINT [FK_DeviceRepair_Device_Id]
GO
ALTER TABLE [dbo].[DeviceRepair]  WITH CHECK ADD  CONSTRAINT [FK_DeviceRepair_WhereRepair_Id] FOREIGN KEY([WhereRepairId])
REFERENCES [dbo].[WhereRepair] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceRepair] CHECK CONSTRAINT [FK_DeviceRepair_WhereRepair_Id]
GO
