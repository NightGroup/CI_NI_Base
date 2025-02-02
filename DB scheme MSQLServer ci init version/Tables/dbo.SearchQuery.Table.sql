USE [ci]
GO
/****** Object:  Table [dbo].[SearchQuery]    Script Date: 04.08.2024 18:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchQuery](
	[Query] [nvarchar](250) NOT NULL,
	[Employee] [nvarchar](50) NOT NULL,
	[ModeId] [tinyint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SearchQuery] ADD  DEFAULT (suser_sname()) FOR [Employee]
GO
ALTER TABLE [dbo].[SearchQuery] ADD  DEFAULT ((1)) FOR [ModeId]
GO
