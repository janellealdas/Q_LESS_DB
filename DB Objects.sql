USE [master]
GO
/****** Object:  Database [Q-LESS]    Script Date: 11/26/2020 9:30:23 PM ******/
CREATE DATABASE [Q-LESS]
GO
ALTER DATABASE [Q-LESS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Q-LESS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Q-LESS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Q-LESS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Q-LESS] SET ARITHABORT OFF 
GO
ALTER DATABASE [Q-LESS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Q-LESS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Q-LESS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Q-LESS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Q-LESS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Q-LESS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Q-LESS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Q-LESS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Q-LESS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Q-LESS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Q-LESS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Q-LESS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Q-LESS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Q-LESS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Q-LESS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Q-LESS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Q-LESS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Q-LESS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Q-LESS] SET  MULTI_USER 
GO
ALTER DATABASE [Q-LESS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Q-LESS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Q-LESS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Q-LESS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Q-LESS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Q-LESS] SET QUERY_STORE = OFF
GO
USE [Q-LESS]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Q-LESS]
GO
/****** Object:  Table [dbo].[MRTLine]    Script Date: 11/26/2020 9:30:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRTLine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MRTLines] [varchar](100) NOT NULL,
 CONSTRAINT [PK_MRTLine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stations]    Script Date: 11/26/2020 9:30:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MRTLineNumber] [int] NOT NULL,
	[Rank] [int] NOT NULL,
	[StationName] [nvarchar](100) NOT NULL,
	[Fare1] [int] NOT NULL,
	[Fare2] [int] NOT NULL,
	[Fare3] [int] NOT NULL,
	[Fare4] [int] NOT NULL,
	[Fare5] [int] NOT NULL,
	[Fare6] [int] NOT NULL,
	[Fare7] [int] NOT NULL,
	[Fare8] [int] NOT NULL,
	[Fare9] [int] NOT NULL,
	[Fare10] [int] NOT NULL,
	[Fare11] [int] NOT NULL,
	[Fare12] [int] NOT NULL,
	[Fare13] [int] NOT NULL,
	[Fare14] [int] NOT NULL,
	[Fare15] [int] NOT NULL,
	[Fare16] [int] NOT NULL,
	[Fare17] [int] NOT NULL,
	[Fare18] [int] NOT NULL,
	[Fare19] [int] NOT NULL,
	[Fare20] [int] NOT NULL,
 CONSTRAINT [PK_Stations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransportCard]    Script Date: 11/26/2020 9:30:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransportCard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransportCardNumber] [int] NOT NULL,
	[Balance] [decimal](10, 2) NOT NULL,
	[Discount] [decimal](10, 2) NOT NULL,
	[NumberofUse] [int] NOT NULL,
	[IDNumber] [varchar](50) NULL,
	[IsRegistered] [bit] NOT NULL,
	[DateofPurchase] [date] NOT NULL,
	[LastUsed] [date] NULL,
 CONSTRAINT [PK_TransportCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransportCardTransactions]    Script Date: 11/26/2020 9:30:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransportCardTransactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransportCardNumber] [int] NOT NULL,
	[Balance] [decimal](10, 2) NOT NULL,
	[Discount] [decimal](10, 2) NOT NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_TransportCardTransactions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MRTLine] ON 
GO
INSERT [dbo].[MRTLine] ([Id], [MRTLines]) VALUES (1, N'MRT Line 1')
GO
INSERT [dbo].[MRTLine] ([Id], [MRTLines]) VALUES (2, N'MRT Line 2')
GO
SET IDENTITY_INSERT [dbo].[MRTLine] OFF
GO
SET IDENTITY_INSERT [dbo].[Stations] ON 
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (1, 1, 1, N'Baclaran', 11, 12, 13, 13, 14, 15, 16, 17, 18, 19, 19, 20, 21, 21, 22, 23, 24, 25, 27, 29)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (2, 1, 2, N'Edsa', 12, 11, 12, 13, 14, 15, 15, 16, 17, 18, 19, 19, 20, 21, 22, 22, 23, 24, 27, 29)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (3, 1, 3, N'Libertad', 13, 12, 11, 12, 13, 14, 14, 15, 16, 17, 18, 18, 19, 20, 21, 21, 22, 23, 26, 28)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (4, 1, 4, N'Gil Puyat', 13, 13, 12, 11, 12, 13, 14, 14, 16, 16, 17, 18, 18, 19, 20, 21, 22, 23, 25, 27)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (5, 1, 5, N'V. Cruz', 14, 14, 13, 12, 11, 12, 13, 13, 15, 15, 16, 17, 17, 18, 19, 20, 21, 22, 24, 26)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (6, 1, 6, N'Quirino', 15, 15, 14, 13, 12, 11, 12, 13, 14, 14, 15, 16, 16, 17, 18, 19, 20, 21, 23, 25)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (7, 1, 7, N'P. Gil', 16, 15, 14, 14, 13, 12, 11, 12, 13, 14, 14, 15, 16, 16, 17, 18, 19, 20, 22, 24)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (8, 1, 8, N'United Nations', 17, 16, 15, 14, 13, 13, 12, 11, 12, 13, 14, 14, 15, 16, 17, 17, 18, 19, 22, 23)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (9, 1, 9, N'C. Terminal', 18, 17, 16, 16, 15, 14, 13, 12, 11, 12, 12, 13, 14, 14, 15, 16, 17, 18, 20, 22)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (10, 1, 10, N'Carriedo', 19, 18, 17, 16, 15, 14, 14, 13, 12, 11, 12, 12, 13, 14, 15, 15, 16, 17, 20, 22)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (11, 1, 11, N'D. Jose', 19, 19, 18, 17, 16, 15, 14, 14, 12, 12, 11, 12, 12, 13, 14, 15, 15, 17, 19, 21)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (12, 1, 12, N'Bambang', 20, 19, 18, 18, 17, 16, 15, 14, 13, 12, 12, 11, 12, 12, 13, 14, 15, 16, 18, 20)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (13, 1, 13, N'Tayuman', 21, 20, 19, 18, 17, 16, 16, 15, 14, 13, 12, 12, 11, 12, 13, 13, 14, 15, 18, 20)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (14, 1, 14, N'Blumentritt', 21, 21, 20, 19, 18, 17, 16, 16, 14, 14, 13, 12, 12, 11, 12, 13, 14, 15, 17, 19)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (15, 1, 15, N'A. Santos', 22, 22, 21, 20, 19, 18, 17, 17, 15, 15, 14, 13, 13, 12, 11, 12, 13, 14, 16, 18)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (16, 1, 16, N'R. Papa', 23, 22, 21, 21, 20, 19, 18, 17, 16, 15, 15, 14, 13, 13, 12, 11, 12, 13, 15, 17)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (17, 1, 17, N'5th Ave', 24, 23, 22, 22, 21, 20, 19, 18, 17, 16, 15, 15, 14, 13, 13, 12, 11, 12, 15, 16)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (18, 1, 18, N'Monumento', 25, 24, 23, 23, 22, 21, 20, 19, 18, 17, 17, 16, 15, 15, 14, 13, 12, 11, 13, 15)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (19, 1, 19, N'Balintawak', 27, 27, 26, 25, 24, 23, 22, 22, 20, 20, 19, 18, 18, 17, 16, 15, 15, 13, 11, 13)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (20, 1, 20, N'Roosevelt', 29, 29, 28, 27, 26, 25, 24, 23, 22, 22, 21, 20, 20, 19, 18, 17, 16, 15, 13, 11)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (21, 2, 1, N'Recto', 11, 12, 14, 15, 16, 17, 18, 19, 21, 22, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (22, 2, 2, N'Legarda', 12, 11, 13, 14, 15, 16, 17, 18, 20, 21, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (23, 2, 3, N'Pureza', 14, 13, 11, 13, 14, 15, 16, 17, 19, 20, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (24, 2, 4, N'V. Mapa', 15, 14, 13, 11, 13, 14, 15, 16, 18, 19, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (25, 2, 5, N'J. Ruiz', 16, 15, 14, 13, 11, 12, 13, 14, 16, 17, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (26, 2, 6, N'Gilmore', 17, 16, 15, 14, 12, 11, 12, 13, 15, 16, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (27, 2, 7, N'Betty-Go', 18, 17, 16, 15, 13, 12, 11, 12, 14, 15, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (28, 2, 8, N'Anonas', 21, 20, 19, 18, 16, 15, 14, 12, 11, 12, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (29, 2, 9, N'Katipunan', 22, 21, 20, 19, 17, 16, 15, 13, 12, 11, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Stations] ([Id], [MRTLineNumber], [Rank], [StationName], [Fare1], [Fare2], [Fare3], [Fare4], [Fare5], [Fare6], [Fare7], [Fare8], [Fare9], [Fare10], [Fare11], [Fare12], [Fare13], [Fare14], [Fare15], [Fare16], [Fare17], [Fare18], [Fare19], [Fare20]) VALUES (30, 2, 10, N'Santolan', 24, 23, 22, 21, 19, 18, 17, 15, 14, 13, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Stations] OFF
GO
SET IDENTITY_INSERT [dbo].[TransportCard] ON 
GO
INSERT [dbo].[TransportCard] ([Id], [TransportCardNumber], [Balance], [Discount], [NumberofUse], [IDNumber], [IsRegistered], [DateofPurchase], [LastUsed]) VALUES (1, 123456789, CAST(500.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), 0, NULL, 0, CAST(N'2020-11-26' AS Date), CAST(N'2020-11-26' AS Date))
GO
INSERT [dbo].[TransportCard] ([Id], [TransportCardNumber], [Balance], [Discount], [NumberofUse], [IDNumber], [IsRegistered], [DateofPurchase], [LastUsed]) VALUES (2, 123456788, CAST(100.00 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), 0, N'AB-1234-5678', 1, CAST(N'2020-11-26' AS Date), CAST(N'2020-11-26' AS Date))
GO
INSERT [dbo].[TransportCard] ([Id], [TransportCardNumber], [Balance], [Discount], [NumberofUse], [IDNumber], [IsRegistered], [DateofPurchase], [LastUsed]) VALUES (3, 123456790, CAST(1000.00 AS Decimal(10, 2)), CAST(20.00 AS Decimal(10, 2)), 0, N'AB-1234-5671', 1, CAST(N'2020-11-26' AS Date), CAST(N'2014-01-01' AS Date))
GO
SET IDENTITY_INSERT [dbo].[TransportCard] OFF
GO
/****** Object:  StoredProcedure [dbo].[GetComputedFare_sp]    Script Date: 11/26/2020 9:30:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetComputedFare_sp]
	
	@StationFrom NVARCHAR(100)
	, @StationTo NVARCHAR(100)
	
AS
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @query NVARCHAR(MAX)
			, @Rank VARCHAR(10)

	SET @Rank = (SELECT [Rank]
				FROM Stations WITH(NOLOCK)
				WHERE StationName = @StationTo)


	SET @query = 'SELECT [Amount] = Fare'+@Rank+'
				  FROM Stations WITH(NOLOCK)
				  WHERE StationName = '''+@StationFrom+''''

	EXECUTE(@query)

	SET NOCOUNT OFF;

END
GO
USE [master]
GO
ALTER DATABASE [Q-LESS] SET  READ_WRITE 
GO
