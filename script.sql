USE [master]
GO
/****** Object:  Database [UniversituHR]    Script Date: 09.06.2023 16:53:18 ******/
CREATE DATABASE [UniversituHR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UniversituHR', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\UniversituHR.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UniversituHR_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\UniversituHR_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [UniversituHR] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniversituHR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniversituHR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniversituHR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniversituHR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniversituHR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniversituHR] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniversituHR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniversituHR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniversituHR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniversituHR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniversituHR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniversituHR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniversituHR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniversituHR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniversituHR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniversituHR] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniversituHR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniversituHR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniversituHR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniversituHR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniversituHR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniversituHR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniversituHR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniversituHR] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UniversituHR] SET  MULTI_USER 
GO
ALTER DATABASE [UniversituHR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniversituHR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniversituHR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniversituHR] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UniversituHR] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UniversituHR] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [UniversituHR] SET QUERY_STORE = ON
GO
ALTER DATABASE [UniversituHR] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [UniversituHR]
GO
/****** Object:  Table [dbo].[AcademicDegree]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicDegree](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_AcademicDegree] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AcademicTitle]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicTitle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_AcademicTitle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coutry]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coutry](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Coutry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Division]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Division] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EdInstitutionId] [int] NULL,
	[SpecializationId] [int] NULL,
	[WorkerId] [int] NULL,
	[TypeOfDocument] [nvarchar](50) NULL,
	[YearOfGraduation] [nvarchar](50) NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationalInstitution]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationalInstitution](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_EducationalInstitution] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmploymentRecord]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmploymentRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WorkerId] [int] NULL,
	[OrganizationId] [int] NULL,
	[PositionId] [int] NULL,
	[DateOfTheOrder] [datetime] NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[IncentivesAndPenalties] [nvarchar](50) NULL,
	[DateOfEmployment] [date] NULL,
	[DateOfDismissal] [date] NULL,
	[ReasonForDismissal] [nvarchar](50) NULL,
 CONSTRAINT [PK_EmploymentRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objects]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Objects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Telephone] [bigint] NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settlement]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settlement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Settlement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialization]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Specialization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersObjects]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersObjects](
	[UsersId] [int] NOT NULL,
	[ObjectsId] [int] NOT NULL,
	[C] [bit] NOT NULL,
	[R] [bit] NOT NULL,
	[U] [bit] NOT NULL,
	[D] [bit] NOT NULL,
 CONSTRAINT [PK_UsersObjects] PRIMARY KEY CLUSTERED 
(
	[UsersId] ASC,
	[ObjectsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 09.06.2023 16:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[DivisionId] [int] NULL,
	[CountryId] [int] NULL,
	[RegionId] [int] NULL,
	[SettlementId] [int] NULL,
	[StreetId] [int] NULL,
	[House] [nvarchar](50) NULL,
	[Flat] [int] NULL,
	[Photo] [varbinary](max) NULL,
	[Gender] [nvarchar](20) NULL,
	[DateOfBirth] [date] NULL,
	[AcademicDegreeId] [int] NULL,
	[AcademicTitleId] [int] NULL,
	[PositionId] [int] NULL,
	[PassportNumber] [bigint] NULL,
	[DateOfIssuePassport] [date] NULL,
	[WhoIssuedPassport] [nvarchar](50) NULL,
	[Telephone] [bigint] NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AcademicDegree] ON 

INSERT [dbo].[AcademicDegree] ([Id], [Name]) VALUES (1, N'Кандидат наук')
INSERT [dbo].[AcademicDegree] ([Id], [Name]) VALUES (2, N'Доктор наук')
INSERT [dbo].[AcademicDegree] ([Id], [Name]) VALUES (3, N'Не имеется')
SET IDENTITY_INSERT [dbo].[AcademicDegree] OFF
GO
SET IDENTITY_INSERT [dbo].[AcademicTitle] ON 

INSERT [dbo].[AcademicTitle] ([Id], [Name]) VALUES (1, N'Доцент')
INSERT [dbo].[AcademicTitle] ([Id], [Name]) VALUES (2, N'Профессор')
INSERT [dbo].[AcademicTitle] ([Id], [Name]) VALUES (3, N'Не имеется')
SET IDENTITY_INSERT [dbo].[AcademicTitle] OFF
GO
SET IDENTITY_INSERT [dbo].[Coutry] ON 

INSERT [dbo].[Coutry] ([Id], [Name]) VALUES (1, N'Россия')
INSERT [dbo].[Coutry] ([Id], [Name]) VALUES (2, N'Украина')
INSERT [dbo].[Coutry] ([Id], [Name]) VALUES (3, N'Беларусь')
SET IDENTITY_INSERT [dbo].[Coutry] OFF
GO
SET IDENTITY_INSERT [dbo].[Division] ON 

INSERT [dbo].[Division] ([Id], [Name]) VALUES (1, N'Ректорат')
INSERT [dbo].[Division] ([Id], [Name]) VALUES (2, N'Кафедра')
INSERT [dbo].[Division] ([Id], [Name]) VALUES (3, N'Библиотека')
INSERT [dbo].[Division] ([Id], [Name]) VALUES (4, N'Факультет')
SET IDENTITY_INSERT [dbo].[Division] OFF
GO
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([Id], [EdInstitutionId], [SpecializationId], [WorkerId], [TypeOfDocument], [YearOfGraduation]) VALUES (1, 2, 1, 1, N'Высшее образование', N'2004')
INSERT [dbo].[Education] ([Id], [EdInstitutionId], [SpecializationId], [WorkerId], [TypeOfDocument], [YearOfGraduation]) VALUES (2, 3, 4, 2, N'Высшее образование', N'2000')
INSERT [dbo].[Education] ([Id], [EdInstitutionId], [SpecializationId], [WorkerId], [TypeOfDocument], [YearOfGraduation]) VALUES (3, 4, 3, 3, N'Высшее образование', N'2016')
SET IDENTITY_INSERT [dbo].[Education] OFF
GO
SET IDENTITY_INSERT [dbo].[EducationalInstitution] ON 

INSERT [dbo].[EducationalInstitution] ([Id], [Name]) VALUES (1, N'НГТУ')
INSERT [dbo].[EducationalInstitution] ([Id], [Name]) VALUES (2, N'СибУПК')
INSERT [dbo].[EducationalInstitution] ([Id], [Name]) VALUES (3, N'НГУ')
INSERT [dbo].[EducationalInstitution] ([Id], [Name]) VALUES (4, N'МГУ')
SET IDENTITY_INSERT [dbo].[EducationalInstitution] OFF
GO
SET IDENTITY_INSERT [dbo].[EmploymentRecord] ON 

INSERT [dbo].[EmploymentRecord] ([Id], [WorkerId], [OrganizationId], [PositionId], [DateOfTheOrder], [OrderNumber], [IncentivesAndPenalties], [DateOfEmployment], [DateOfDismissal], [ReasonForDismissal]) VALUES (1, 1, 2, 3, CAST(N'2015-02-12T00:00:00.000' AS DateTime), N'4a', N'Двойная премия', CAST(N'2013-09-08' AS Date), CAST(N'2016-12-13' AS Date), N'Опоздания')
INSERT [dbo].[EmploymentRecord] ([Id], [WorkerId], [OrganizationId], [PositionId], [DateOfTheOrder], [OrderNumber], [IncentivesAndPenalties], [DateOfEmployment], [DateOfDismissal], [ReasonForDismissal]) VALUES (2, 2, 3, 5, CAST(N'2018-07-13T00:00:00.000' AS DateTime), N'11b', N'Выговор', CAST(N'2017-03-25' AS Date), CAST(N'2019-03-25' AS Date), N'Добровольно уволился')
INSERT [dbo].[EmploymentRecord] ([Id], [WorkerId], [OrganizationId], [PositionId], [DateOfTheOrder], [OrderNumber], [IncentivesAndPenalties], [DateOfEmployment], [DateOfDismissal], [ReasonForDismissal]) VALUES (3, 12, 1, 5, CAST(N'2020-08-30T00:00:00.000' AS DateTime), N'12c', N'Благодарственное письмо', CAST(N'2017-11-21' AS Date), CAST(N'2021-03-25' AS Date), N'Добровольно уволился')
INSERT [dbo].[EmploymentRecord] ([Id], [WorkerId], [OrganizationId], [PositionId], [DateOfTheOrder], [OrderNumber], [IncentivesAndPenalties], [DateOfEmployment], [DateOfDismissal], [ReasonForDismissal]) VALUES (4, 5, 3, 3, CAST(N'2023-04-29T00:00:00.000' AS DateTime), N'9p', N'Выговор', CAST(N'2022-05-13' AS Date), CAST(N'2022-12-17' AS Date), N'3 выговора')
SET IDENTITY_INSERT [dbo].[EmploymentRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[Objects] ON 

INSERT [dbo].[Objects] ([Id], [Name]) VALUES (1, N'e')
SET IDENTITY_INSERT [dbo].[Objects] OFF
GO
SET IDENTITY_INSERT [dbo].[Organization] ON 

INSERT [dbo].[Organization] ([Id], [Name], [City], [Telephone]) VALUES (1, N'ЛитРес', N'Новосибирск', 89539220807)
INSERT [dbo].[Organization] ([Id], [Name], [City], [Telephone]) VALUES (2, N'IBM', N'Москва', 89461653329)
INSERT [dbo].[Organization] ([Id], [Name], [City], [Telephone]) VALUES (3, N'МТС', N'Пермь', 89135665192)
SET IDENTITY_INSERT [dbo].[Organization] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([Id], [Name]) VALUES (1, N'Преподаватель')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (2, N'Декан')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (3, N'Уборщик')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (4, N'Ректор')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (5, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([Id], [Name]) VALUES (1, N'Новосибирская область')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (2, N'Московская область')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (3, N'Пермская область')
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Settlement] ON 

INSERT [dbo].[Settlement] ([Id], [Name]) VALUES (1, N'Новосибирск')
INSERT [dbo].[Settlement] ([Id], [Name]) VALUES (2, N'Бердск')
INSERT [dbo].[Settlement] ([Id], [Name]) VALUES (3, N'Москва')
INSERT [dbo].[Settlement] ([Id], [Name]) VALUES (4, N'Пермь')
SET IDENTITY_INSERT [dbo].[Settlement] OFF
GO
SET IDENTITY_INSERT [dbo].[Specialization] ON 

INSERT [dbo].[Specialization] ([Id], [Name]) VALUES (1, N'Прикладная информатика')
INSERT [dbo].[Specialization] ([Id], [Name]) VALUES (2, N'Общий профиль')
INSERT [dbo].[Specialization] ([Id], [Name]) VALUES (3, N'Уголовно-правовой')
INSERT [dbo].[Specialization] ([Id], [Name]) VALUES (4, N'Экономика')
SET IDENTITY_INSERT [dbo].[Specialization] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([Id], [Name]) VALUES (1, N'Ленина')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (2, N'Комсомольская')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (3, N'Центральная')
INSERT [dbo].[Street] ([Id], [Name]) VALUES (4, N'Северная')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Login], [Password]) VALUES (1, N'admin', N'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918')
INSERT [dbo].[Users] ([Id], [Login], [Password]) VALUES (4, N'manager', N'6ee4a469cd4e91053847f5d3fcb61dbcc91e8f0ef10be7748da4c4a1ba382d17')
INSERT [dbo].[Users] ([Id], [Login], [Password]) VALUES (5, N'reader', N'3d0941964aa3ebdcb00ccef58b1bb399f9f898465e9886d5aec7f31090a0fb30')
INSERT [dbo].[Users] ([Id], [Login], [Password]) VALUES (6, N'visitor', N'5f14f9e6d80f802a65269804f2552ef9889f2c7ccec5067214e58a1e48e0b3ff')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
INSERT [dbo].[UsersObjects] ([UsersId], [ObjectsId], [C], [R], [U], [D]) VALUES (1, 1, 1, 1, 1, 1)
INSERT [dbo].[UsersObjects] ([UsersId], [ObjectsId], [C], [R], [U], [D]) VALUES (4, 1, 0, 1, 1, 0)
INSERT [dbo].[UsersObjects] ([UsersId], [ObjectsId], [C], [R], [U], [D]) VALUES (5, 1, 0, 1, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Worker] ON 

INSERT [dbo].[Worker] ([Id], [LastName], [FirstName], [MiddleName], [DivisionId], [CountryId], [RegionId], [SettlementId], [StreetId], [House], [Flat], [Photo], [Gender], [DateOfBirth], [AcademicDegreeId], [AcademicTitleId], [PositionId], [PassportNumber], [DateOfIssuePassport], [WhoIssuedPassport], [Telephone]) VALUES (1, N'Иванов', N'Иван', N'Иванови', 1, 1, 1, 1, 3, N'24', 45, NULL, N'М', CAST(N'1978-09-12' AS Date), 1, 2, 4, 5017892933, CAST(N'1992-10-15' AS Date), N'ОВДНОгНовсибирск', 89134662808)
INSERT [dbo].[Worker] ([Id], [LastName], [FirstName], [MiddleName], [DivisionId], [CountryId], [RegionId], [SettlementId], [StreetId], [House], [Flat], [Photo], [Gender], [DateOfBirth], [AcademicDegreeId], [AcademicTitleId], [PositionId], [PassportNumber], [DateOfIssuePassport], [WhoIssuedPassport], [Telephone]) VALUES (2, N'Петров', N'Петр', N'Петрович', 2, 1, 2, 3, 1, N'12', 31, NULL, N'М', CAST(N'1983-12-12' AS Date), 1, 1, 1, 5012367824, CAST(N'1998-01-15' AS Date), N'ОВДМОгМосква', 84567123545)
INSERT [dbo].[Worker] ([Id], [LastName], [FirstName], [MiddleName], [DivisionId], [CountryId], [RegionId], [SettlementId], [StreetId], [House], [Flat], [Photo], [Gender], [DateOfBirth], [AcademicDegreeId], [AcademicTitleId], [PositionId], [PassportNumber], [DateOfIssuePassport], [WhoIssuedPassport], [Telephone]) VALUES (3, N'Фомина', N'Ирина', N'Андреевна', 3, 1, 1, 1, 2, N'54', 9, NULL, N'Ж', CAST(N'1996-05-05' AS Date), 2, 2, 2, 5010234657, CAST(N'2010-06-14' AS Date), N'ОВДНОгНовсибирск', 89123523369)
INSERT [dbo].[Worker] ([Id], [LastName], [FirstName], [MiddleName], [DivisionId], [CountryId], [RegionId], [SettlementId], [StreetId], [House], [Flat], [Photo], [Gender], [DateOfBirth], [AcademicDegreeId], [AcademicTitleId], [PositionId], [PassportNumber], [DateOfIssuePassport], [WhoIssuedPassport], [Telephone]) VALUES (4, N'Каняев', N'Иван', N'Андреевич', 3, 1, 3, 4, 1, N'31', 2, NULL, N'М', CAST(N'1999-03-13' AS Date), 3, 3, 3, 5013488209, CAST(N'2013-05-02' AS Date), N'МВДгПермь', 89534772802)
INSERT [dbo].[Worker] ([Id], [LastName], [FirstName], [MiddleName], [DivisionId], [CountryId], [RegionId], [SettlementId], [StreetId], [House], [Flat], [Photo], [Gender], [DateOfBirth], [AcademicDegreeId], [AcademicTitleId], [PositionId], [PassportNumber], [DateOfIssuePassport], [WhoIssuedPassport], [Telephone]) VALUES (5, N'Кетель', N'Петр', N'Иванович', 1, 1, 1, 1, 1, N'12', 32, NULL, N'М', CAST(N'2023-04-26' AS Date), 2, 1, 4, 12332145, CAST(N'2022-04-05' AS Date), N'ОМВД', 123321)
INSERT [dbo].[Worker] ([Id], [LastName], [FirstName], [MiddleName], [DivisionId], [CountryId], [RegionId], [SettlementId], [StreetId], [House], [Flat], [Photo], [Gender], [DateOfBirth], [AcademicDegreeId], [AcademicTitleId], [PositionId], [PassportNumber], [DateOfIssuePassport], [WhoIssuedPassport], [Telephone]) VALUES (12, N'Петров', N'Иван', N'Николаевич', 3, 1, 2, 3, 1, N'45', 12, NULL, N'М', CAST(N'2010-02-05' AS Date), 3, 3, 3, 5017488290, CAST(N'2023-03-10' AS Date), N'МВД', 89134882906)
SET IDENTITY_INSERT [dbo].[Worker] OFF
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK_Education_EducationalInstitution] FOREIGN KEY([EdInstitutionId])
REFERENCES [dbo].[EducationalInstitution] ([Id])
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK_Education_EducationalInstitution]
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK_Education_Specialization] FOREIGN KEY([SpecializationId])
REFERENCES [dbo].[Specialization] ([Id])
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK_Education_Specialization]
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK_Education_Worker] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK_Education_Worker]
GO
ALTER TABLE [dbo].[EmploymentRecord]  WITH CHECK ADD  CONSTRAINT [FK_EmploymentRecord_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[EmploymentRecord] CHECK CONSTRAINT [FK_EmploymentRecord_Organization]
GO
ALTER TABLE [dbo].[EmploymentRecord]  WITH CHECK ADD  CONSTRAINT [FK_EmploymentRecord_Position] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[EmploymentRecord] CHECK CONSTRAINT [FK_EmploymentRecord_Position]
GO
ALTER TABLE [dbo].[EmploymentRecord]  WITH CHECK ADD  CONSTRAINT [FK_EmploymentRecord_Worker] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
GO
ALTER TABLE [dbo].[EmploymentRecord] CHECK CONSTRAINT [FK_EmploymentRecord_Worker]
GO
ALTER TABLE [dbo].[UsersObjects]  WITH CHECK ADD  CONSTRAINT [FK_UsersObjects_Objects] FOREIGN KEY([ObjectsId])
REFERENCES [dbo].[Objects] ([Id])
GO
ALTER TABLE [dbo].[UsersObjects] CHECK CONSTRAINT [FK_UsersObjects_Objects]
GO
ALTER TABLE [dbo].[UsersObjects]  WITH CHECK ADD  CONSTRAINT [FK_UsersObjects_Users] FOREIGN KEY([UsersId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UsersObjects] CHECK CONSTRAINT [FK_UsersObjects_Users]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_AcademicDegree] FOREIGN KEY([AcademicDegreeId])
REFERENCES [dbo].[AcademicDegree] ([Id])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_AcademicDegree]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_AcademicTitle] FOREIGN KEY([AcademicTitleId])
REFERENCES [dbo].[AcademicTitle] ([Id])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_AcademicTitle]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Coutry] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Coutry] ([Id])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Coutry]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Division] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Division] ([Id])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Division]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Position] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Position]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Region]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Settlement] FOREIGN KEY([SettlementId])
REFERENCES [dbo].[Settlement] ([Id])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Settlement]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Street] FOREIGN KEY([StreetId])
REFERENCES [dbo].[Street] ([Id])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Street]
GO
USE [master]
GO
ALTER DATABASE [UniversituHR] SET  READ_WRITE 
GO
