USE [master]
GO
/****** Object:  Database [OfficeDB]    Script Date: 5/13/2023 7:33:49 AM ******/
CREATE DATABASE [OfficeDB]
 
GO

USE [OfficeDB]
GO
/****** Object:  Table [dbo].[AllowedTenants]    Script Date: 5/13/2023 7:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllowedTenants](
	[TenantID] [bigint] IDENTITY(1,1) NOT NULL,
	[DomainName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AllowedTenants] PRIMARY KEY CLUSTERED 
(
	[TenantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offices]    Script Date: 5/13/2023 7:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offices](
	[OfficeID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeName] [nvarchar](150) NOT NULL,
	[OfficeAddress] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[TelephoneNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Offices] PRIMARY KEY CLUSTERED 
(
	[OfficeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolutionUsers]    Script Date: 5/13/2023 7:33:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolutionUsers](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SolutionUsers] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AllowedTenants] ON 
GO
INSERT [dbo].[AllowedTenants] ([TenantID], [DomainName]) VALUES (1, N'4cvsdt.onmicrosoft.com')
GO
SET IDENTITY_INSERT [dbo].[AllowedTenants] OFF
GO
SET IDENTITY_INSERT [dbo].[Offices] ON 
GO
INSERT [dbo].[Offices] ([OfficeID], [OfficeName], [OfficeAddress], [Email], [TelephoneNumber]) VALUES (1, N'New York Budget Office', N'25 John Kennedy Street New York', N'nybo@ny.gov', N'8653535533')
GO
INSERT [dbo].[Offices] ([OfficeID], [OfficeName], [OfficeAddress], [Email], [TelephoneNumber]) VALUES (2, N'Molly Office New York', N'12 Molly Street', N'mo@mo.com', N'+123444444')
GO
SET IDENTITY_INSERT [dbo].[Offices] OFF
GO
SET IDENTITY_INSERT [dbo].[SolutionUsers] ON 
GO
INSERT [dbo].[SolutionUsers] ([UserID], [EmailAddress]) VALUES (2, N'benjaminsqlserver@zzq7l.onmicrosoft.com')
GO
INSERT [dbo].[SolutionUsers] ([UserID], [EmailAddress]) VALUES (1, N'hickboston@4cvsdt.onmicrosoft.com')
GO
INSERT [dbo].[SolutionUsers] ([UserID], [EmailAddress]) VALUES (3, N'ibukunoluwadaddy@outlook.com')
GO
SET IDENTITY_INSERT [dbo].[SolutionUsers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AllowedTenants]    Script Date: 5/13/2023 7:33:52 AM ******/
ALTER TABLE [dbo].[AllowedTenants] ADD  CONSTRAINT [IX_AllowedTenants] UNIQUE NONCLUSTERED 
(
	[DomainName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SolutionUsers]    Script Date: 5/13/2023 7:33:52 AM ******/
ALTER TABLE [dbo].[SolutionUsers] ADD  CONSTRAINT [IX_SolutionUsers] UNIQUE NONCLUSTERED 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [OfficeDB] SET  READ_WRITE 
GO
