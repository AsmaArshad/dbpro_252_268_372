USE [master]
GO
/****** Object:  Database [DB33]    Script Date: 4/14/2019 3:21:21 PM ******/
CREATE DATABASE [DB33]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_SMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_SMS.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_SMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_SMS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB33] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB33].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB33] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB33] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB33] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB33] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB33] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB33] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB33] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB33] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB33] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB33] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB33] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB33] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB33] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB33] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB33] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB33] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB33] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB33] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB33] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB33] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB33] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB33] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB33] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB33] SET  MULTI_USER 
GO
ALTER DATABASE [DB33] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB33] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB33] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB33] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DB33] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DB33]
GO
/****** Object:  Table [dbo].[Add_Course]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Add_Course](
	[Course_ID] [int] NOT NULL,
	[Course_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Add_Course] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Assignment](
	[Assignment_Name] [varchar](50) NOT NULL,
	[Student_ID] [int] NOT NULL,
	[Section_ID] [int] NOT NULL,
	[Course_ID] [int] NOT NULL,
	[Uploaded_ON] [datetime] NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[Assignment_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Attendance](
	[Student_ID] [int] NOT NULL,
	[Teacher_ID] [int] NOT NULL,
	[Course_ID] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Class]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class](
	[Class_ID] [int] NOT NULL,
	[Class_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Class_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DateSheet]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateSheet](
	[Course_ID] [int] NOT NULL,
	[Teacher_ID] [int] NOT NULL,
	[Class_ID] [int] NOT NULL,
	[Section_ID] [int] NOT NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fee_Challan]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fee_Challan](
	[Student_ID] [int] NOT NULL,
	[Fee_Challan] [float] NOT NULL,
	[Status] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PayRoll]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PayRoll](
	[Teacher_ID] [int] NOT NULL,
	[Salary] [float] NOT NULL,
	[Status] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Result]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Result](
	[Student_ID] [int] NOT NULL,
	[Teacher_ID] [int] NOT NULL,
	[Total_Marks] [float] NOT NULL,
	[Obt_Marks] [float] NOT NULL,
	[Grade] [varchar](50) NOT NULL,
	[Course_ID] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Section]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Section](
	[Class_ID] [int] NOT NULL,
	[Student_ID] [int] NOT NULL,
	[Teacher_ID] [int] NOT NULL,
	[Section_ID] [int] NOT NULL,
	[Section_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[Section_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Student_ID] [int] NOT NULL,
	[Student_Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Course_ID] [int] NOT NULL,
	[Section_ID] [int] NOT NULL,
	[Phone_NO] [int] NOT NULL,
	[Fee_Challan] [float] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[Teacher_ID] [int] NOT NULL,
	[Teacher_Name] [varchar](50) NOT NULL,
	[Teacher_Email] [varchar](50) NOT NULL,
	[Teacher_phoneno] [int] NOT NULL,
	[Salary] [float] NOT NULL,
	[Section_ID] [int] NOT NULL,
	[Course_ID] [int] NOT NULL,
	[Qualification] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Teacher_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TimeTable]    Script Date: 4/14/2019 3:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable](
	[Teacher_ID] [int] NOT NULL,
	[Class_ID] [int] NOT NULL,
	[Course_ID] [int] NOT NULL,
	[Section_ID] [int] NOT NULL,
	[Start_Time] [datetime] NOT NULL,
	[End_Time] [datetime] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Add_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Add_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Add_Course]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Section] FOREIGN KEY([Section_ID])
REFERENCES [dbo].[Section] ([Section_ID])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Section]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Student] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Student]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Add_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Add_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Add_Course]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Teacher] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teacher] ([Teacher_ID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Teacher]
GO
ALTER TABLE [dbo].[DateSheet]  WITH CHECK ADD  CONSTRAINT [FK_DateSheet_Add_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Add_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[DateSheet] CHECK CONSTRAINT [FK_DateSheet_Add_Course]
GO
ALTER TABLE [dbo].[DateSheet]  WITH CHECK ADD  CONSTRAINT [FK_DateSheet_Class] FOREIGN KEY([Class_ID])
REFERENCES [dbo].[Class] ([Class_ID])
GO
ALTER TABLE [dbo].[DateSheet] CHECK CONSTRAINT [FK_DateSheet_Class]
GO
ALTER TABLE [dbo].[DateSheet]  WITH CHECK ADD  CONSTRAINT [FK_DateSheet_Section] FOREIGN KEY([Section_ID])
REFERENCES [dbo].[Section] ([Section_ID])
GO
ALTER TABLE [dbo].[DateSheet] CHECK CONSTRAINT [FK_DateSheet_Section]
GO
ALTER TABLE [dbo].[DateSheet]  WITH CHECK ADD  CONSTRAINT [FK_DateSheet_Teacher] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teacher] ([Teacher_ID])
GO
ALTER TABLE [dbo].[DateSheet] CHECK CONSTRAINT [FK_DateSheet_Teacher]
GO
ALTER TABLE [dbo].[Fee_Challan]  WITH CHECK ADD  CONSTRAINT [FK_Fee_Challan_Student] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[Fee_Challan] CHECK CONSTRAINT [FK_Fee_Challan_Student]
GO
ALTER TABLE [dbo].[PayRoll]  WITH CHECK ADD  CONSTRAINT [FK_PayRoll_Teacher] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teacher] ([Teacher_ID])
GO
ALTER TABLE [dbo].[PayRoll] CHECK CONSTRAINT [FK_PayRoll_Teacher]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Add_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Add_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Add_Course]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Student] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Student]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Teacher] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teacher] ([Teacher_ID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Teacher]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Class] FOREIGN KEY([Class_ID])
REFERENCES [dbo].[Class] ([Class_ID])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Class]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Student] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([Student_ID])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Student]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Teacher] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teacher] ([Teacher_ID])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Teacher]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Add_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Add_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Add_Course]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Section] FOREIGN KEY([Section_ID])
REFERENCES [dbo].[Section] ([Section_ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Section]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Add_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Add_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Add_Course]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Section] FOREIGN KEY([Section_ID])
REFERENCES [dbo].[Section] ([Section_ID])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Section]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_Add_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Add_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_Add_Course]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_Class] FOREIGN KEY([Class_ID])
REFERENCES [dbo].[Class] ([Class_ID])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_Class]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_Section] FOREIGN KEY([Section_ID])
REFERENCES [dbo].[Section] ([Section_ID])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_Section]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_Teacher] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teacher] ([Teacher_ID])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_Teacher]
GO
USE [master]
GO
ALTER DATABASE [DB33] SET  READ_WRITE 
GO
