USE [ci]
GO
/****** Object:  Table [dbo].[DeviceTypeTechnicalСardHistory]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceTypeTechnicalСardHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeviceTypeId] [int] NOT NULL,
	[TechnicalСardId] [int] NOT NULL,
 CONSTRAINT [PK_DeviceTypeTechnicalСardHistory_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeviceTypeTechnicalСardHistory]  WITH CHECK ADD  CONSTRAINT [FK_DeviceTypeTechnicalСardHistory_DeviceType_Id] FOREIGN KEY([DeviceTypeId])
REFERENCES [dbo].[DeviceType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceTypeTechnicalСardHistory] CHECK CONSTRAINT [FK_DeviceTypeTechnicalСardHistory_DeviceType_Id]
GO
ALTER TABLE [dbo].[DeviceTypeTechnicalСardHistory]  WITH CHECK ADD  CONSTRAINT [FK_DeviceTypeTechnicalСardHistory_TechnicalСard_Id] FOREIGN KEY([TechnicalСardId])
REFERENCES [dbo].[TechnicalСard] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceTypeTechnicalСardHistory] CHECK CONSTRAINT [FK_DeviceTypeTechnicalСardHistory_TechnicalСard_Id]
GO
