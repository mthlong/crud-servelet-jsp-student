USE [QLySinhVien]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 27/5/21 11:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[gender] [nvarchar](50) NULL,
	[dob] [date] NULL,
	[username] [varchar](50) NULL,
	[passuser] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
