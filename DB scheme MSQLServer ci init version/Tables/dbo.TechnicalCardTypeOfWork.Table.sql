USE [ci]
GO
/****** Object:  Table [dbo].[TechnicalCardTypeOfWork]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechnicalCardTypeOfWork](
	[Id] [tinyint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ShortName] [nvarchar](10) NULL,
 CONSTRAINT [PK_TechnicalCardTypeOfWork_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
