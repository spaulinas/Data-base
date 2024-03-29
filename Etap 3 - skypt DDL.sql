USE [master]
GO
/****** Object:  Database [PraceDyplomowe]    Script Date: 02/01/2018 23:22:12 ******/
CREATE DATABASE [PraceDyplomowe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PraceDyplomowe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PraceDyplomowe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PraceDyplomowe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PraceDyplomowe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PraceDyplomowe] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PraceDyplomowe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PraceDyplomowe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET ARITHABORT OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PraceDyplomowe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PraceDyplomowe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PraceDyplomowe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PraceDyplomowe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PraceDyplomowe] SET  MULTI_USER 
GO
ALTER DATABASE [PraceDyplomowe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PraceDyplomowe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PraceDyplomowe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PraceDyplomowe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PraceDyplomowe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PraceDyplomowe] SET QUERY_STORE = OFF
GO
USE [PraceDyplomowe]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [PraceDyplomowe]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 02/01/2018 23:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[ID_Nrindeksu] [smallint] NOT NULL,
	[ID_PracaDyplomowa] [smallint] NOT NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[ID_Nrindeksu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KierunekStudiow]    Script Date: 02/01/2018 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KierunekStudiow](
	[ID_KierunekStudiow] [varchar](50) NOT NULL,
	[NazwaKierunku] [varchar](50) NOT NULL,
 CONSTRAINT [PK_KierunekStudiow] PRIMARY KEY CLUSTERED 
(
	[ID_KierunekStudiow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PracaDyplomowa]    Script Date: 02/01/2018 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PracaDyplomowa](
	[ID_PracaDyplmowa] [smallint] NOT NULL,
	[Temat] [varchar](max) NOT NULL,
	[Data] [datetime] NULL,
	[Ocena] [smallint] NULL,
	[ID_TypStudiow] [smallint] NOT NULL,
	[ID_KierunekStudiow] [smallint] NOT NULL,
	[ID_Promotor] [smallint] NOT NULL,
 CONSTRAINT [PK_PracaDyplomowa] PRIMARY KEY CLUSTERED 
(
	[ID_PracaDyplmowa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PracownikUczelni]    Script Date: 02/01/2018 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PracownikUczelni](
	[ID_PracownikUczelni] [smallint] NOT NULL,
	[Imie] [varchar](50) NOT NULL,
	[DrugieImie] [varchar](50) NOT NULL,
	[Nazwisko] [varchar](50) NOT NULL,
	[ID_StopienNaukowy] [smallint] NOT NULL,
 CONSTRAINT [PK_PracownikUczelni] PRIMARY KEY CLUSTERED 
(
	[ID_PracownikUczelni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recenzja]    Script Date: 02/01/2018 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recenzja](
	[Ocena] [smallint] NULL,
	[ID_PracownikUczelni] [smallint] NOT NULL,
	[ID_PracaDyplomowa] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slownik]    Script Date: 02/01/2018 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slownik](
	[ID_SlowoKlucz] [smallint] NOT NULL,
	[ID_PracaDyplomowa] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlowoKlucz]    Script Date: 02/01/2018 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlowoKlucz](
	[ID_SlowoKlucz] [smallint] NOT NULL,
	[Slowo] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StopienNaukowy]    Script Date: 02/01/2018 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StopienNaukowy](
	[ID_StopienNaukowy] [varchar](50) NOT NULL,
	[NazwaStopnia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StopienNaukowy] PRIMARY KEY CLUSTERED 
(
	[ID_StopienNaukowy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 02/01/2018 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID_Nrindeksu] [smallint] NOT NULL,
	[Imie] [varchar](50) NOT NULL,
	[DrugieImie] [varchar](50) NOT NULL,
	[Nazwisko] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID_Nrindeksu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypStudiow]    Script Date: 02/01/2018 23:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypStudiow](
	[ID_TypStudiow] [varchar](50) NOT NULL,
	[NazwaTypu] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TypStudiow] PRIMARY KEY CLUSTERED 
(
	[ID_TypStudiow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PraceDyplomowe] SET  READ_WRITE 
GO
