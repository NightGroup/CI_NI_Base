USE [ci]
GO
/****** Object:  Table [dbo].[PropertyName]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyName](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[PropertyGroupId] [int] NOT NULL,
 CONSTRAINT [PK_Property_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PropertyName] ADD  DEFAULT ((1)) FOR [PropertyGroupId]
GO
ALTER TABLE [dbo].[PropertyName]  WITH CHECK ADD  CONSTRAINT [FK_PropertyName_PropertyGroup_Id] FOREIGN KEY([PropertyGroupId])
REFERENCES [dbo].[PropertyGroup] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PropertyName] CHECK CONSTRAINT [FK_PropertyName_PropertyGroup_Id]
GO
