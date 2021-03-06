USE [master]
GO
/****** Object:  Database [pearlsfilm]    Script Date: 9/1/2020 8:45:02 PM ******/
CREATE DATABASE [pearlsfilm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pearlsfilm', FILENAME = N'E:\MSSQL.MSSQLSERVER\DATA\pearlsfilm.mdf' , SIZE = 5120KB , MAXSIZE = 204800KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'pearlsfilm_log', FILENAME = N'D:\MSSQL.MSSQLSERVER\DATA\pearlsfilm_log.ldf' , SIZE = 1024KB , MAXSIZE = 102400KB , FILEGROWTH = 1024KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pearlsfilm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pearlsfilm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pearlsfilm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pearlsfilm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pearlsfilm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pearlsfilm] SET ARITHABORT OFF 
GO
ALTER DATABASE [pearlsfilm] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pearlsfilm] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [pearlsfilm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pearlsfilm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pearlsfilm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pearlsfilm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pearlsfilm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pearlsfilm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pearlsfilm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pearlsfilm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pearlsfilm] SET  ENABLE_BROKER 
GO
ALTER DATABASE [pearlsfilm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pearlsfilm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pearlsfilm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pearlsfilm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pearlsfilm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pearlsfilm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pearlsfilm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pearlsfilm] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pearlsfilm] SET  MULTI_USER 
GO
ALTER DATABASE [pearlsfilm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pearlsfilm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pearlsfilm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pearlsfilm] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [pearlsfilm]
GO
/****** Object:  User [pearlsfilm]    Script Date: 9/1/2020 8:45:17 PM ******/
CREATE USER [pearlsfilm] FOR LOGIN [pearlsfilm] WITH DEFAULT_SCHEMA=[pearlsfilm]
GO
/****** Object:  DatabaseRole [gd_execprocs]    Script Date: 9/1/2020 8:45:24 PM ******/
CREATE ROLE [gd_execprocs]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [pearlsfilm]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [pearlsfilm]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [pearlsfilm]
GO
ALTER ROLE [db_datareader] ADD MEMBER [pearlsfilm]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [pearlsfilm]
GO
/****** Object:  Schema [pearlsfilm]    Script Date: 9/1/2020 8:45:27 PM ******/
CREATE SCHEMA [pearlsfilm]
GO
/****** Object:  StoredProcedure [dbo].[alumniproc]    Script Date: 9/1/2020 8:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[alumniproc]
(
@alname varchar(max),
@dateofbirth varchar(max),
@gender varchar(max),
@emailid varchar(max),
@mobileno varchar(max),
@passoutyear varchar(max),
@brnch varchar(max),
@desgn varchar(max),
@noofemp varchar(max),
@addrs varchar(max),
@nm1 varchar(max),
@nm2 varchar(max),
@descrptin varchar(max)
)
as begin
insert into alumni(name,dob,sex,email,contact,passoutyear,branch,designation,noofemp,currentaddress,name1,name2,descrp)
values(@alname,@dateofbirth,@gender,@emailid,@mobileno,@passoutyear,@brnch,@desgn,@noofemp,@addrs,@nm1,@nm2,@descrptin)
end

GO
/****** Object:  StoredProcedure [dbo].[logon_proc]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[logon_proc]
(
@username varchar(max),
@password varchar(max)
)
as begin
select * from logon where username=@username and password=@password
update logon set dt=GETDATE()
end

GO
/****** Object:  StoredProcedure [dbo].[logonproc]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[logonproc]
(
@alname varchar(max),
@dateofbirth varchar(max),
@gender varchar(max),
@emailid varchar(max),
@mobileno varchar(max),
@passoutyear varchar(max),
@brnch varchar(max),
@desgn varchar(max),
@noofemp varchar(max),
@addrs varchar(max),
@nm1 varchar(max),
@nm2 varchar(max),
@descrptin varchar(max)
)
as begin
insert into alumni(name,dob,sex,email,contact,passoutyear,branch,designation,noofemp,currentaddress,name1,name2,descrp)
values(@alname,@dateofbirth,@gender,@emailid,@mobileno,@passoutyear,@brnch,@desgn,@noofemp,@addrs,@nm1,@nm2,@descrptin)
end

GO
/****** Object:  Table [dbo].[alumini]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alumini](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[venue] [varchar](max) NULL,
	[dt] [date] NULL,
	[descr] [varchar](max) NULL,
	[img] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[alumni]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alumni](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[dob] [varchar](max) NULL,
	[sex] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[contact] [varchar](max) NULL,
	[passoutyear] [varchar](max) NULL,
	[branch] [varchar](max) NULL,
	[designation] [varchar](max) NULL,
	[noofemp] [varchar](max) NULL,
	[currentaddress] [varchar](max) NULL,
	[name1] [varchar](max) NULL,
	[name2] [varchar](max) NULL,
	[descrp] [varchar](max) NULL,
	[sts] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[birthday]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[birthday](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[dob] [date] NULL,
	[img] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[circular]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[circular](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[circular_title] [varchar](max) NULL,
	[lnk] [varchar](max) NULL,
	[dt] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[download]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[download](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[circular_title] [varchar](max) NULL,
	[lnk] [varchar](max) NULL,
	[dt] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[event]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[event](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[lnk] [varchar](max) NULL,
	[sts] [varchar](max) NULL,
	[dt] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eventww]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eventww](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[notice] [nvarchar](max) NULL,
	[lnk] [nvarchar](max) NULL,
	[sts] [nvarchar](max) NULL,
	[dt] [date] NULL,
	[head] [varchar](max) NULL,
	[users] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[imggl]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[imggl](
	[flnm] [varchar](max) NULL,
	[pathnm] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[imggl1]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[imggl1](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[flnm] [varchar](max) NULL,
	[pathnm] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[imggl2]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[imggl2](
	[flnm] [varchar](max) NULL,
	[pathnm] [varchar](max) NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[imgglsld]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[imgglsld](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[flnm] [varchar](max) NULL,
	[pathnm] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[imgnm]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[imgnm](
	[imgnm] [varchar](max) NULL,
	[imgpath] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jobvacancy]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jobvacancy](
	[pos] [varchar](max) NULL,
	[noofvac] [varchar](max) NULL,
	[quali] [varchar](max) NULL,
	[lastdateofapply] [date] NULL,
	[contact] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[latestevent]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[latestevent](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[flnm] [varchar](max) NULL,
	[pathnm] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[logon]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[logon](
	[username] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[dt] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[news]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[news](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[head] [varchar](max) NULL,
	[news] [varchar](max) NULL,
	[img] [varchar](max) NULL,
	[dt] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[notice]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[notice](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[notice] [nvarchar](max) NULL,
	[lnk] [nvarchar](max) NULL,
	[sts] [nvarchar](max) NULL,
	[dt] [date] NULL,
	[head] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[photo]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[photo](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[drname] [varchar](max) NULL,
	[imgl] [varchar](max) NULL,
	[color] [varchar](max) NULL,
	[dt] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tc]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tc](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[dob] [varchar](max) NULL,
	[tclnk] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[testimonial]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[testimonial](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[flnm] [varchar](max) NULL,
	[pathnm] [varchar](max) NULL,
	[textdata] [varchar](max) NULL,
	[Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[textgallery]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[textgallery](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[textslider] [varchar](max) NULL,
	[imgpath] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[textslider]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[textslider](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[textslider] [varchar](max) NULL,
	[imgpath] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[thoughts]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[thoughts](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[thought] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tmtbl]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmtbl](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class] [varchar](max) NULL,
	[semester] [varchar](max) NULL,
	[lnk] [varchar](max) NULL,
	[dates] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[toppers]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[toppers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[percen] [varchar](max) NULL,
	[img] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[video]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[video](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[videono] [varchar](max) NULL,
	[videonm] [varchar](max) NULL,
	[videolnk] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[video1]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[video1](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[lnk] [varchar](max) NULL,
	[users] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wirecab]    Script Date: 9/1/2020 8:45:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wirecab](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tops] [nvarchar](max) NULL,
	[bottoms] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[alumni] ADD  DEFAULT ('Inactive') FOR [sts]
GO
ALTER TABLE [dbo].[circular] ADD  DEFAULT (getdate()) FOR [dt]
GO
ALTER TABLE [dbo].[eventww] ADD  DEFAULT (getdate()) FOR [dt]
GO
ALTER TABLE [dbo].[news] ADD  DEFAULT (getdate()) FOR [dt]
GO
ALTER TABLE [dbo].[photo] ADD  DEFAULT (getdate()) FOR [dt]
GO
ALTER TABLE [dbo].[tmtbl] ADD  DEFAULT (getdate()) FOR [dates]
GO
USE [master]
GO
ALTER DATABASE [pearlsfilm] SET  READ_WRITE 
GO
