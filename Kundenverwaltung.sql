USE [master]
GO
/****** Object:  Database [kundenverwaltung]    Script Date: 16.08.2023 08:33:57 ******/
CREATE DATABASE [kundenverwaltung]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kundenverwaltung', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\kundenverwaltung.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kundenverwaltung_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\kundenverwaltung_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [kundenverwaltung] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kundenverwaltung].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kundenverwaltung] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kundenverwaltung] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kundenverwaltung] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kundenverwaltung] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kundenverwaltung] SET ARITHABORT OFF 
GO
ALTER DATABASE [kundenverwaltung] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kundenverwaltung] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kundenverwaltung] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kundenverwaltung] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kundenverwaltung] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kundenverwaltung] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kundenverwaltung] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kundenverwaltung] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kundenverwaltung] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kundenverwaltung] SET  ENABLE_BROKER 
GO
ALTER DATABASE [kundenverwaltung] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kundenverwaltung] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kundenverwaltung] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kundenverwaltung] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kundenverwaltung] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kundenverwaltung] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kundenverwaltung] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kundenverwaltung] SET RECOVERY FULL 
GO
ALTER DATABASE [kundenverwaltung] SET  MULTI_USER 
GO
ALTER DATABASE [kundenverwaltung] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kundenverwaltung] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kundenverwaltung] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kundenverwaltung] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [kundenverwaltung] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [kundenverwaltung] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'kundenverwaltung', N'ON'
GO
ALTER DATABASE [kundenverwaltung] SET QUERY_STORE = OFF
GO
USE [kundenverwaltung]
GO
/****** Object:  Table [dbo].[kunden]    Script Date: 16.08.2023 08:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kunden](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](50) NOT NULL,
	[nachname] [varchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[zustimmung_werbung] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[kunden] ON 

INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (1, N'Sara', N'Alvarez', N'sara.alvarez@example.com', 1)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (2, N'Chen', N'Li', N'chen.li@example.com', 0)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (3, N'Mariana', N'Fernandez', N'mariana.fernandez@example.com', 1)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (4, N'Aaliyah', N'Khan', N'aaliyah.khan@example.com', 0)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (5, N'Linh', N'Nguyen', N'linh.nguyen@example.com', 1)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (6, N'Yuna', N'Kim', N'yuna.kim@example.com', 0)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (7, N'Hassan', N'Ali', N'hassan.ali@example.com', 1)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (8, N'Anastasia', N'Kuznetsova', N'anastasia.kuznetsova@example.com', 0)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (9, N'Aman', N'Singh', N'aman.singh@example.com', 1)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (10, N'Fatima', N'Mohammed', N'fatima.mohammed@example.com', 0)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (11, N'Abdul', N'Rahman', N'abdul.rahman@example.com', 1)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (12, N'Maria', N'Garcia', N'maria.garcia@example.com', 0)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (13, N'Javier', N'Lopez', N'javier.lopez@example.com', 1)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (14, N'Rahul', N'Patel', N'rahul.patel@example.com', 0)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (15, N'Tara', N'Singh', N'tara.singh@example.com', 1)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (16, N'Mohammed', N'Ali', N'mohammed.ali@example.com', 0)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (17, N'Layla', N'Ahmed', N'layla.ahmed@example.com', 1)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (18, N'Emre', N'Yilmaz', N'emre.yilmaz@example.com', 0)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (19, N'Nada', N'Saleh', N'nada.saleh@example.com', 1)
INSERT [dbo].[kunden] ([id], [vorname], [nachname], [email], [zustimmung_werbung]) VALUES (20, N'Dario', N'Moreno', N'dario.moreno@example.com', 0)
SET IDENTITY_INSERT [dbo].[kunden] OFF
GO
USE [master]
GO
ALTER DATABASE [kundenverwaltung] SET  READ_WRITE 
GO
