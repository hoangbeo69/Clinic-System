USE [master]
GO
/****** Object:  Database [ClinicSystem]    Script Date: 10/05/2022 12:49:19 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'ClinicSystem')
BEGIN
CREATE DATABASE [ClinicSystem] ON  PRIMARY 
( NAME = N'ClinicSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ClinicSystem.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClinicSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ClinicSystem_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [ClinicSystem] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClinicSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClinicSystem] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ClinicSystem] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ClinicSystem] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ClinicSystem] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ClinicSystem] SET ARITHABORT OFF
GO
ALTER DATABASE [ClinicSystem] SET AUTO_CLOSE ON
GO
ALTER DATABASE [ClinicSystem] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ClinicSystem] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ClinicSystem] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ClinicSystem] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ClinicSystem] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ClinicSystem] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ClinicSystem] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ClinicSystem] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ClinicSystem] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ClinicSystem] SET  ENABLE_BROKER
GO
ALTER DATABASE [ClinicSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ClinicSystem] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ClinicSystem] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ClinicSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ClinicSystem] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ClinicSystem] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ClinicSystem] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ClinicSystem] SET  READ_WRITE
GO
ALTER DATABASE [ClinicSystem] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ClinicSystem] SET  MULTI_USER
GO
ALTER DATABASE [ClinicSystem] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ClinicSystem] SET DB_CHAINING OFF
GO
USE [ClinicSystem]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/05/2022 12:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Account](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Fullname] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Dob] [date] NULL,
	[Status] [int] NOT NULL,
	[Sex] [nvarchar](max) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (1, N'admin                                                                                                                                                                                                                                                          ', N'admin                                                                                                                                                                                                                                                          ', N'Administrator                                                                                                                                                                                                                                                  ', N'012345678                                                                                                                                                                                                                                                      ', N'admin@example.com                                                                                                                                                                                                                                              ', CAST(0x8A430B00 AS Date), 0, NULL)
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (27, N'caoduy1333', NULL, N'Cao Duy', N'0966069027', N'caoduy@gmail.com', CAST(0x7C430B00 AS Date), 1, NULL)
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (28, N'minhoan2', NULL, N'Minh Hoàng', N'0966069027', N'minhoan2@gmai.com', CAST(0x7D430B00 AS Date), 1, NULL)
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (29, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x70430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (30, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x70430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (31, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x70430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (32, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x70430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (33, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x70430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (34, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x70430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (35, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x70430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (36, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x70430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (37, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x70430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (38, NULL, NULL, N'Minh HoaÌng', N'0966069027', NULL, CAST(0x70430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (39, NULL, NULL, N'Minh HoaÌng', N'0966069027', NULL, CAST(0x6D430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (40, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x6E430B00 AS Date), 1, N'female')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (41, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x87430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (42, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x87430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (43, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x87430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (44, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x87430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (45, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x6E430B00 AS Date), 1, N'female')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (46, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x6E430B00 AS Date), 1, N'female')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (47, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x6E430B00 AS Date), 1, N'female')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (48, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x6E430B00 AS Date), 1, N'female')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (49, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x6E430B00 AS Date), 1, N'female')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (50, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x6E430B00 AS Date), 1, N'female')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (51, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x6E430B00 AS Date), 1, N'female')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (52, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x77430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (53, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x77430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (54, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x77430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (55, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x77430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (56, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x76430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (57, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x76430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (58, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x76430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (59, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x76430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (60, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x76430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (61, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x76430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (62, NULL, NULL, N'', N'', NULL, CAST(0xCFBA1500 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (63, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x76430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (64, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x76430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (65, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x76430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (66, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x77430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (67, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x77430B00 AS Date), 1, N'Giới tính')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (68, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x86430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (69, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x86430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (70, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x6B430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (71, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x6B430B00 AS Date), 1, N'male')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (72, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x71430B00 AS Date), 1, N'female')
INSERT [dbo].[Account] ([Id], [Username], [Password], [Fullname], [PhoneNumber], [Email], [Dob], [Status], [Sex]) VALUES (73, NULL, NULL, N'Minh Hoàng', N'0966069027', NULL, CAST(0x6C430B00 AS Date), 1, N'female')
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Room]    Script Date: 10/05/2022 12:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Room]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Room](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoomName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Room] ON
INSERT [dbo].[Room] ([Id], [RoomName], [Description]) VALUES (1, N'Room 1                                                                                                                                                                                                                                                         ', N'Room 1                                                                                                                                                                                                                                                         ')
INSERT [dbo].[Room] ([Id], [RoomName], [Description]) VALUES (2, N'Room 2                                                                                                                                                                                                                                                         ', N'Room 2                                                                                                                                                                                                                                                         ')
INSERT [dbo].[Room] ([Id], [RoomName], [Description]) VALUES (3, N'Room 3                                                                                                                                                                                                                                                         ', N'Room 3                                                                                                                                                                                                                                                         ')
SET IDENTITY_INSERT [dbo].[Room] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 10/05/2022 12:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([Id], [Name], [Description]) VALUES (1, N'ADMIN                                                                                                                                                                                                                                                          ', N'Admin system                                                                                                                                                                                                                                                   ')
INSERT [dbo].[Role] ([Id], [Name], [Description]) VALUES (2, N'MANAGER                                                                                                                                                                                                                                                        ', N'Manager                                                                                                                                                                                                                                                        ')
INSERT [dbo].[Role] ([Id], [Name], [Description]) VALUES (3, N'USER                                                                                                                                                                                                                                                           ', N'User system                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Role] ([Id], [Name], [Description]) VALUES (4, N'ANONYMOUS                                                                                                                                                                                                                                                      ', N'Unknown User                                                                                                                                                                                                                                                   ')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[User_Role]    Script Date: 10/05/2022 12:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User_Role](
	[UserId] [bigint] NULL,
	[RoleId] [bigint] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[User_Role] ([UserId], [RoleId]) VALUES (1, 1)
/****** Object:  Table [dbo].[Patient]    Script Date: 10/05/2022 12:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Patient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Patient](
	[Id] [bigint] NOT NULL,
	[InsuranceCode] [nvarchar](max) NULL,
	[IdentityCard] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[GuardianFullname] [nvarchar](max) NULL,
	[GuardianPhoneNumber] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (27, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (28, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (29, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (30, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (31, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (32, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (33, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (34, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (35, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (36, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (37, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (38, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (39, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (41, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (42, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (43, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (44, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (45, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (46, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (47, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (48, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (49, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (50, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (51, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (52, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (53, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (54, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (55, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (73, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (56, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (57, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (58, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (60, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (61, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (62, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (63, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (59, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (64, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (65, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (66, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (67, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (68, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (69, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (70, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (71, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Patient] ([Id], [InsuranceCode], [IdentityCard], [Address], [GuardianFullname], [GuardianPhoneNumber]) VALUES (72, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Doctor]    Script Date: 10/05/2022 12:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Doctor](
	[Id] [bigint] NULL,
	[Specialization] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Doctor]') AND name = N'Doctor_Id_uindex')
CREATE UNIQUE NONCLUSTERED INDEX [Doctor_Id_uindex] ON [dbo].[Doctor] 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Doctor] ([Id], [Specialization]) VALUES (27, N'Sat Jan 29 00:00:00 ICT 2022')
INSERT [dbo].[Doctor] ([Id], [Specialization]) VALUES (28, N'Heart')
/****** Object:  Table [dbo].[BookingSlot]    Script Date: 10/05/2022 12:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookingSlot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BookingSlot](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DoctorId] [bigint] NULL,
	[TimeSlot] [int] NULL,
	[DateSlot] [date] NULL,
	[RoomId] [bigint] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_BookingSlot] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 10/05/2022 12:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Appointment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientId] [bigint] NULL,
	[DoctorId] [bigint] NULL,
	[MedicalRecordId] [bigint] NULL,
	[TimeSlot] [int] NULL,
	[DateSlot] [date] NULL,
	[Status] [int] NULL,
	[StatusDescription] [nvarchar](max) NULL,
	[AppointmentCode] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateBy] [nvarchar](max) NULL,
	[BookingSlotId] [bigint] NULL,
	[UpdateDate] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Appointment] ON
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (22, 56, NULL, NULL, NULL, CAST(0x6E430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (23, 57, NULL, NULL, NULL, CAST(0x6E430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (24, 59, NULL, NULL, NULL, CAST(0x6E430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (25, 58, NULL, NULL, NULL, CAST(0x6E430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (26, 60, NULL, NULL, NULL, CAST(0x6E430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (27, 61, NULL, NULL, NULL, CAST(0x6E430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (28, 62, NULL, NULL, NULL, CAST(0xCFBA1500 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (29, 63, NULL, NULL, NULL, CAST(0x6E430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (30, 64, NULL, NULL, NULL, CAST(0x6E430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (31, 65, NULL, NULL, NULL, CAST(0x6E430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (32, 66, NULL, NULL, NULL, CAST(0x6E430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (33, 70, NULL, NULL, 17, CAST(0x85430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (34, 71, NULL, NULL, 17, CAST(0x85430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (35, 72, NULL, NULL, 14, CAST(0x70430B00 AS Date), NULL, NULL, NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL, NULL, CAST(0x0000AF2200000000 AS DateTime), NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [DoctorId], [MedicalRecordId], [TimeSlot], [DateSlot], [Status], [StatusDescription], [AppointmentCode], [CreatedBy], [CreatedDate], [UpdateBy], [BookingSlotId], [UpdateDate], [Description]) VALUES (36, 73, NULL, NULL, 9, CAST(0x85430B00 AS Date), NULL, N'vấn đề cần khám', NULL, NULL, CAST(0x0000AF2500000000 AS DateTime), NULL, NULL, CAST(0x0000AF2500000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Appointment] OFF
/****** Object:  Table [dbo].[MedicalHistory]    Script Date: 10/05/2022 12:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MedicalHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MedicalHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[EditedBy] [nvarchar](max) NULL,
	[EditedDate] [datetime] NULL,
	[MedicalJson] [ntext] NULL,
	[PatientId] [bigint] NULL,
 CONSTRAINT [PK_MedicalHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Default [DF__Account__Status__403A8C7D]    Script Date: 10/05/2022 12:49:20 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Account__Status__403A8C7D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Account]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Account__Status__403A8C7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__Status__403A8C7D]  DEFAULT ((1)) FOR [Status]
END


End
GO
/****** Object:  Default [DF__BookingSl__Statu__6477ECF3]    Script Date: 10/05/2022 12:49:20 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__BookingSl__Statu__6477ECF3]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookingSlot]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__BookingSl__Statu__6477ECF3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BookingSlot] ADD  DEFAULT ((0)) FOR [Status]
END


End
GO
/****** Object:  ForeignKey [FK_User_Role_Account]    Script Date: 10/05/2022 12:49:20 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_Account] FOREIGN KEY([UserId])
REFERENCES [dbo].[Account] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_Account]
GO
/****** Object:  ForeignKey [FK_User_Role_Role1]    Script Date: 10/05/2022 12:49:20 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role_Role1]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_Role1] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role_Role1]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_Role1]
GO
/****** Object:  ForeignKey [FK_Patient_Account]    Script Date: 10/05/2022 12:49:20 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Patient_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Patient]'))
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Account] FOREIGN KEY([Id])
REFERENCES [dbo].[Account] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Patient_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Patient]'))
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Account]
GO
/****** Object:  ForeignKey [FK_Doctor_Account]    Script Date: 10/05/2022 12:49:20 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Account] FOREIGN KEY([Id])
REFERENCES [dbo].[Account] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Account]
GO
/****** Object:  ForeignKey [FK_BookingSlot_Room]    Script Date: 10/05/2022 12:49:20 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BookingSlot_Room]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookingSlot]'))
ALTER TABLE [dbo].[BookingSlot]  WITH CHECK ADD  CONSTRAINT [FK_BookingSlot_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BookingSlot_Room]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookingSlot]'))
ALTER TABLE [dbo].[BookingSlot] CHECK CONSTRAINT [FK_BookingSlot_Room]
GO
/****** Object:  ForeignKey [FK_Appointment_BookingSlot]    Script Date: 10/05/2022 12:49:20 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Appointment_BookingSlot]') AND parent_object_id = OBJECT_ID(N'[dbo].[Appointment]'))
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_BookingSlot] FOREIGN KEY([BookingSlotId])
REFERENCES [dbo].[BookingSlot] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Appointment_BookingSlot]') AND parent_object_id = OBJECT_ID(N'[dbo].[Appointment]'))
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_BookingSlot]
GO
/****** Object:  ForeignKey [FK_MedicalHistory_Appointment]    Script Date: 10/05/2022 12:49:20 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MedicalHistory_Appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[MedicalHistory]'))
ALTER TABLE [dbo].[MedicalHistory]  WITH CHECK ADD  CONSTRAINT [FK_MedicalHistory_Appointment] FOREIGN KEY([Id])
REFERENCES [dbo].[Appointment] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MedicalHistory_Appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[MedicalHistory]'))
ALTER TABLE [dbo].[MedicalHistory] CHECK CONSTRAINT [FK_MedicalHistory_Appointment]
GO
