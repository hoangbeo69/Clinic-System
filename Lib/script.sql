USE [master]
GO
/****** Object:  Database [ClinicSystem]    Script Date: 09/24/2022 19:07:01 ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 09/24/2022 19:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Account](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](255) NULL,
	[Password] [nchar](255) NULL,
	[Fullname] [nchar](255) NOT NULL,
	[PhoneNumber] [nchar](255) NULL,
	[Email] [nchar](255) NULL,
	[Dob] [date] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Room]    Script Date: 09/24/2022 19:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Room]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Room](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoomName] [nchar](255) NULL,
	[Description] [nchar](255) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Role]    Script Date: 09/24/2022 19:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](255) NULL,
	[Description] [nchar](255) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 09/24/2022 19:07:02 ******/
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
/****** Object:  Table [dbo].[Patient]    Script Date: 09/24/2022 19:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Patient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Patient](
	[Id] [bigint] NOT NULL,
	[InsuranceCode] [nchar](255) NULL,
	[IdentityCard] [nchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 09/24/2022 19:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Doctor](
	[Id] [bigint] NULL,
	[Specialization] [nchar](255) NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Doctor]') AND name = N'Doctor_Id_uindex')
CREATE UNIQUE NONCLUSTERED INDEX [Doctor_Id_uindex] ON [dbo].[Doctor] 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingSlot]    Script Date: 09/24/2022 19:07:02 ******/
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
 CONSTRAINT [PK_BookingSlot] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 09/24/2022 19:07:02 ******/
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
	[StatusDescription] [nchar](255) NULL,
	[AppointmentCode] [nchar](255) NULL,
	[CreatedBy] [nchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateBy] [nchar](255) NULL,
	[BookingSlotId] [bigint] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MedicalHistory]    Script Date: 09/24/2022 19:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MedicalHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MedicalHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [nchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[EditedBy] [nchar](255) NULL,
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
/****** Object:  Default [DF__Account__Status__403A8C7D]    Script Date: 09/24/2022 19:07:02 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Account__Status__403A8C7D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Account]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Account__Status__403A8C7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__Status__403A8C7D]  DEFAULT ((1)) FOR [Status]
END


End
GO
/****** Object:  ForeignKey [FK_User_Role_Account]    Script Date: 09/24/2022 19:07:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_Account] FOREIGN KEY([UserId])
REFERENCES [dbo].[Account] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_Account]
GO
/****** Object:  ForeignKey [FK_User_Role_Role1]    Script Date: 09/24/2022 19:07:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role_Role1]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_Role1] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role_Role1]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_Role1]
GO
/****** Object:  ForeignKey [FK_Patient_Account]    Script Date: 09/24/2022 19:07:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Patient_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Patient]'))
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Account] FOREIGN KEY([Id])
REFERENCES [dbo].[Account] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Patient_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Patient]'))
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Account]
GO
/****** Object:  ForeignKey [FK_Doctor_Account]    Script Date: 09/24/2022 19:07:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Account] FOREIGN KEY([Id])
REFERENCES [dbo].[Account] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Doctor_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Doctor]'))
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Account]
GO
/****** Object:  ForeignKey [FK_BookingSlot_Room]    Script Date: 09/24/2022 19:07:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BookingSlot_Room]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookingSlot]'))
ALTER TABLE [dbo].[BookingSlot]  WITH CHECK ADD  CONSTRAINT [FK_BookingSlot_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BookingSlot_Room]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookingSlot]'))
ALTER TABLE [dbo].[BookingSlot] CHECK CONSTRAINT [FK_BookingSlot_Room]
GO
/****** Object:  ForeignKey [FK_Appointment_BookingSlot]    Script Date: 09/24/2022 19:07:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Appointment_BookingSlot]') AND parent_object_id = OBJECT_ID(N'[dbo].[Appointment]'))
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_BookingSlot] FOREIGN KEY([BookingSlotId])
REFERENCES [dbo].[BookingSlot] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Appointment_BookingSlot]') AND parent_object_id = OBJECT_ID(N'[dbo].[Appointment]'))
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_BookingSlot]
GO
/****** Object:  ForeignKey [FK_MedicalHistory_Appointment]    Script Date: 09/24/2022 19:07:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MedicalHistory_Appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[MedicalHistory]'))
ALTER TABLE [dbo].[MedicalHistory]  WITH CHECK ADD  CONSTRAINT [FK_MedicalHistory_Appointment] FOREIGN KEY([Id])
REFERENCES [dbo].[Appointment] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MedicalHistory_Appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[MedicalHistory]'))
ALTER TABLE [dbo].[MedicalHistory] CHECK CONSTRAINT [FK_MedicalHistory_Appointment]
GO
