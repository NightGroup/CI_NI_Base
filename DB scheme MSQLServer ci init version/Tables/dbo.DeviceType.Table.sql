USE [ci]
GO
/****** Object:  Table [dbo].[DeviceType]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[TechnicalСardId] [int] NOT NULL,
 CONSTRAINT [PK_DeviceType_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeviceType]  WITH CHECK ADD  CONSTRAINT [FK_DeviceType_TechnicalСard_Id] FOREIGN KEY([TechnicalСardId])
REFERENCES [dbo].[TechnicalСard] ([Id])
GO
ALTER TABLE [dbo].[DeviceType] CHECK CONSTRAINT [FK_DeviceType_TechnicalСard_Id]
GO
