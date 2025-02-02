USE [ci]
GO
/****** Object:  Table [dbo].[TechnicalCardWork]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechnicalCardWork](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[RequiredTime] [int] NOT NULL,
	[Actions] [nvarchar](2000) NULL,
	[TechnicalCardTypeOfWorkId] [tinyint] NOT NULL,
	[TechnicalCardId] [int] NOT NULL,
 CONSTRAINT [PK_TechnicalCardWork_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TechnicalCardWork] ADD  DEFAULT ((10)) FOR [RequiredTime]
GO
ALTER TABLE [dbo].[TechnicalCardWork]  WITH CHECK ADD  CONSTRAINT [FK_TechnicalCardWork_TechnicalCardTypeOfWork_Id] FOREIGN KEY([TechnicalCardTypeOfWorkId])
REFERENCES [dbo].[TechnicalCardTypeOfWork] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TechnicalCardWork] CHECK CONSTRAINT [FK_TechnicalCardWork_TechnicalCardTypeOfWork_Id]
GO
ALTER TABLE [dbo].[TechnicalCardWork]  WITH CHECK ADD  CONSTRAINT [FK_TechnicalCardWork_TechnicalСard_Id] FOREIGN KEY([TechnicalCardId])
REFERENCES [dbo].[TechnicalСard] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TechnicalCardWork] CHECK CONSTRAINT [FK_TechnicalCardWork_TechnicalСard_Id]
GO
