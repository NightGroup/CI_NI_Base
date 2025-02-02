USE [ci]
GO
/****** Object:  Table [dbo].[MaterialValue]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[ManufacturerCode] [nvarchar](300) NULL,
	[Description] [nvarchar](255) NULL,
	[Parts] [bit] NOT NULL,
 CONSTRAINT [PK_MaterialValue_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MaterialValue] ADD  CONSTRAINT [DF_MaterialValue_Parts]  DEFAULT ((0)) FOR [Parts]
GO
