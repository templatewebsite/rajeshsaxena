USE [master]
GO
/****** Object:  Database [hertiageschool]    Script Date: 8/22/2020 9:07:36 AM ******/
CREATE DATABASE [hertiageschool]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'hertiageschool', FILENAME = N'E:\MSSQL.MSSQLSERVER\DATA\hertiageschool.mdf' , SIZE = 5120KB , MAXSIZE = 204800KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'hertiageschool_log', FILENAME = N'D:\MSSQL.MSSQLSERVER\DATA\hertiageschool_log.ldf' , SIZE = 1024KB , MAXSIZE = 102400KB , FILEGROWTH = 1024KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hertiageschool].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hertiageschool] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hertiageschool] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hertiageschool] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hertiageschool] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hertiageschool] SET ARITHABORT OFF 
GO
ALTER DATABASE [hertiageschool] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [hertiageschool] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [hertiageschool] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hertiageschool] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hertiageschool] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hertiageschool] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hertiageschool] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hertiageschool] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hertiageschool] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hertiageschool] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hertiageschool] SET  ENABLE_BROKER 
GO
ALTER DATABASE [hertiageschool] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hertiageschool] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hertiageschool] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hertiageschool] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hertiageschool] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hertiageschool] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hertiageschool] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hertiageschool] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [hertiageschool] SET  MULTI_USER 
GO
ALTER DATABASE [hertiageschool] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hertiageschool] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hertiageschool] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hertiageschool] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [hertiageschool]
GO
/****** Object:  User [woodrowschool]    Script Date: 8/22/2020 9:07:47 AM ******/
CREATE USER [woodrowschool] FOR LOGIN [woodrowschool] WITH DEFAULT_SCHEMA=[woodrowschool]
GO
/****** Object:  User [softwarebushra]    Script Date: 8/22/2020 9:07:49 AM ******/
CREATE USER [softwarebushra] FOR LOGIN [softwarebushra] WITH DEFAULT_SCHEMA=[softwarebushra]
GO
/****** Object:  User [mukundschool]    Script Date: 8/22/2020 9:07:50 AM ******/
CREATE USER [mukundschool] FOR LOGIN [mukundschool] WITH DEFAULT_SCHEMA=[mukundschool]
GO
/****** Object:  User [hertiageschool]    Script Date: 8/22/2020 9:07:51 AM ******/
CREATE USER [hertiageschool] FOR LOGIN [hertiageschool] WITH DEFAULT_SCHEMA=[hertiageschool]
GO
/****** Object:  DatabaseRole [gd_execprocs]    Script Date: 8/22/2020 9:07:56 AM ******/
CREATE ROLE [gd_execprocs]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [woodrowschool]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [woodrowschool]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [woodrowschool]
GO
ALTER ROLE [db_datareader] ADD MEMBER [woodrowschool]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [woodrowschool]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [softwarebushra]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [softwarebushra]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [softwarebushra]
GO
ALTER ROLE [db_datareader] ADD MEMBER [softwarebushra]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [softwarebushra]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [mukundschool]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [mukundschool]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [mukundschool]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mukundschool]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mukundschool]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [hertiageschool]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [hertiageschool]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [hertiageschool]
GO
ALTER ROLE [db_datareader] ADD MEMBER [hertiageschool]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [hertiageschool]
GO
/****** Object:  Schema [hertiageschool]    Script Date: 8/22/2020 9:08:02 AM ******/
CREATE SCHEMA [hertiageschool]
GO
/****** Object:  Schema [mukundschool]    Script Date: 8/22/2020 9:08:04 AM ******/
CREATE SCHEMA [mukundschool]
GO
/****** Object:  Schema [softwarebushra]    Script Date: 8/22/2020 9:08:05 AM ******/
CREATE SCHEMA [softwarebushra]
GO
/****** Object:  Schema [woodrowschool]    Script Date: 8/22/2020 9:08:07 AM ******/
CREATE SCHEMA [woodrowschool]
GO
/****** Object:  StoredProcedure [dbo].[bindInnerGallery]    Script Date: 8/22/2020 9:08:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE proc [dbo].[bindInnerGallery](@eventid varchar(90))
   as
   begin

   select *  from InnerEventGallery where eventid=@eventid
   end
  


GO
/****** Object:  StoredProcedure [dbo].[bindInnertoppers]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

     CREATE proc [dbo].[bindInnertoppers](@topperid varchar(90))
   as
   begin

 select id,	(select classname from topperGallery g2 where g1.topperid=g2.topperid )classname,topperid,	filepath,
 	createddate	,isnull(toppername,'')toppername,percentage
  from InnertopperGallery g1 where topperid=@topperid

  end


GO
/****** Object:  StoredProcedure [dbo].[bindMainGallery]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/

  
  --select * from sys.tables where name like '%im%'
  
  --exec  bindMainGallery

  
  CREATE proc [dbo].[bindMainGallery]
  as
  select distinct eventid,
  (select top 1 filepath from eventGallery g where g.eventid=g1.eventid order by id desc)filepath,
  (select top 1 filename from eventGallery g where g.eventid=g1.eventid order by id desc)filename,
  eventname,datepart(dd,evendate)dd,datepart(mm,evendate)mm,datepart(yyyy,evendate)yyyy from eventGallery g1

  


  
  
  
  
  
  
  
  
  
   


GO
/****** Object:  StoredProcedure [dbo].[bindMaintoppers]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  CREATE proc [dbo].[bindMaintoppers]
  as
  select distinct   id	,topperid	,classname	,replace(filepath,'~/','')filepath	,filename	,createdDate,	evendate from topperGallery


GO
/****** Object:  StoredProcedure [dbo].[getcareerdetails]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[getcareerdetails]
as

select 
id, name, gender, previousschool, postapplyfor, contactno, address, wmailid, cv,applyingdate
from careerDetails order by id desc







--create table careerDetails(id int identity(1,1),name varchar(90),gender varchar(80),previousschool varchar(500),
--postapplyfor varchar(400),contactno varchar(20),address varchar(max),wmailid varchar(100),cv varchar(200))


GO
/****** Object:  StoredProcedure [dbo].[getfeedbackdetails]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[getfeedbackdetails]
as

select 
id, name, emailid, phonenumber, message, address,feedbackdate
from parentfeedBack order by id desc







--create table careerDetails(id int identity(1,1),name varchar(90),gender varchar(80),previousschool varchar(500),
--postapplyfor varchar(400),contactno varchar(20),address varchar(max),wmailid varchar(100),cv varchar(200))


GO
/****** Object:  StoredProcedure [dbo].[getregistrationdetails]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[getregistrationdetails]
as

select 
SNo as id, CandidateName, AdmissionClass, Candi_Dob, Natinality, Curr_SchoolName, Board, Curr_Class, StudyMedium, Email, MobileNo, Gender, Category, Religion, 
Address, City, ChildPhoto as photo, FName, FQualification, FDesignation, FOrganization, FIncome, FEmail, Fmobile, MName, MQualification, MDesignation, MOrganization,
 MIncome, MEmail, Mmobile, Marks_Hindi, Marks_English, Marks_Science, Marks_Math, Marks_SocialScience, Marks_Computer, Marks_Art, Marks_Commerse, 
 Marks_Humanities, Marks_Other, Terms, RecipetUpload, CreatedBy, CreatedOn as enquerydate, ModifyBy, ModifyOn, registrationno, motherAdhar, fatherAdhar, studentAdhar,
  motherwhatsapp, fatherwhatsapp, reportcard_path, tc_path, othersDocument_path
from tbl_OnlineRegister order by sno desc

GO
/****** Object:  StoredProcedure [dbo].[getregistrationNo]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create proc [dbo].[getregistrationNo]
as
begin

select sno from tbl_OnlineRegister

end

GO
/****** Object:  StoredProcedure [dbo].[insertcareerdetails]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[insertcareerdetails] (
@name varchar(90),@gender varchar(80),@previousschool varchar(500),
@postapplyfor varchar(400),@contactno varchar(20),@address varchar(max),@wmailid varchar(100),@cv varchar(200))
as
begin

insert into careerDetails ( name, gender, previousschool, postapplyfor, contactno, address, wmailid, cv,applyingdate)
select  @name, @gender, @previousschool, @postapplyfor, @contactno, @address, @wmailid, @cv,getdate()

end

GO
/****** Object:  StoredProcedure [dbo].[insertEventImages]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  
  CREATE proc [dbo].[insertEventImages](@eventid varchar(100),@eventname varchar(100),@filename varchar(100),@filepath varchar(200),@evendate varchar(100))
  as
  begin
  insert into eventGallery(eventid,eventname,filename,filepath,evendate,createdDate) 
  select @eventid,@eventname,@filename,@filepath,@evendate,getdate()

  end


GO
/****** Object:  StoredProcedure [dbo].[insertParentFeedBack]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[insertParentFeedBack](@name varchar(50),@emailid varchar(60),@phonenumber varchar(20),@message varchar(max),@address varchar(max))
as 
begin

insert into parentfeedback(name ,emailid ,phonenumber ,message ,address,feedbackdate)
select @name ,@emailid ,@phonenumber ,@message ,@address,getdate()



end

GO
/****** Object:  StoredProcedure [dbo].[inserttopperImages]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE proc [dbo].[inserttopperImages](@topperid varchar(100),@classname varchar(100),@filename varchar(100),
  @filepath varchar(200),@evendate varchar(100))
  as
  begin

  insert into topperGallery(topperid,classname,filename,filepath,evendate,createdDate) 
  select @topperid,@classname,@filename,@filepath,@evendate,getdate()

  end



GO
/****** Object:  StoredProcedure [dbo].[logon_proc]    Script Date: 8/22/2020 9:08:08 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Sp_tbl_OnlineRegisterInsert]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Sp_tbl_OnlineRegisterInsert]
(
	@CandidateName varchar(200),
	@AdmissionClass varchar(200),
	@Candi_Dob datetime,
	@Natinality varchar(200),
	@Curr_SchoolName varchar(200),
	@Board varchar(200),
	@Curr_Class varchar(200),
	@StudyMedium varchar(200),
	@Email varchar(200),
	@MobileNo varchar(200),
	@Gender varchar(200),
	@Category varchar(200),
	@Religion varchar(200),
	@Address varchar(200),
	@City varchar(200),
	@ChildPhoto varchar(200),
	@FName varchar(200),
	@FQualification varchar(200),
	@FDesignation varchar(200),
	@FOrganization varchar(200),
	@FIncome varchar(200),
	@FEmail varchar(200),
	@Fmobile varchar(200),
	@MName varchar(200),
	@MQualification varchar(200),
	@MDesignation varchar(200),
	@MOrganization varchar(200),
	@MIncome varchar(200),
	@MEmail varchar(200),
	@Mmobile varchar(200),
	@Marks_Hindi varchar(200),
	@Marks_English varchar(200),
	@Marks_Science varchar(200),
	@Marks_Math varchar(200),
	@Marks_SocialScience varchar(200),
	@Marks_Computer varchar(200),
	@Marks_Art varchar(200),
	@Marks_Commerse varchar(200),
	@Marks_Humanities varchar(200),
	@Marks_Other varchar(200),
	@Terms varchar(200),
	@RecipetUpload varchar(200),
	@motherAdhar varchar(200),@fatherAdhar varchar(200)
	,@studentAdhar varchar(200),
	
	@motherwhatsapp   varchar(20),
	@fatherwhatsapp   varchar(20),
	
	@reportcard_path  varchar(200),
	@tc_path  varchar(200),
	@othersDocument_path  varchar(200)
	
	
) 
as
begin
declare @registrationNo VARCHAR(200) ;
set @registrationNo =(select max(isnull(registrationno,1001))+1 from tbl_onlineregister);
insert into tbl_OnlineRegister(SNo,CandidateName,AdmissionClass,Candi_Dob,Natinality,Curr_SchoolName,Board,Curr_Class,StudyMedium,Email
,MobileNo,Gender,Category,Religion,Address,City,ChildPhoto,FName,FQualification,FDesignation,FOrganization,FIncome,FEmail,Fmobile,MName
,MQualification,MDesignation,MOrganization,MIncome,MEmail,Mmobile,Marks_Hindi,Marks_English,Marks_Science,Marks_Math,Marks_SocialScience
,Marks_Computer,Marks_Art,Marks_Commerse,Marks_Humanities,Marks_Other,Terms,RecipetUpload,CreatedOn,motherAdhar,fatherAdhar,studentAdhar,

motherwhatsapp,fatherwhatsapp ,reportcard_path,tc_path,othersDocument_path,registrationNo)
values((select ISNULL(max(SNo),0)+1 from tbl_OnlineRegister),@CandidateName,@AdmissionClass,@Candi_Dob,@Natinality,@Curr_SchoolName,@Board,
@Curr_Class,@StudyMedium,@Email
,@MobileNo,@Gender,@Category,@Religion,@Address,@City,@ChildPhoto,@FName,@FQualification,@FDesignation,@FOrganization,@FIncome,@FEmail,
@Fmobile,@MName
,@MQualification,@MDesignation,@MOrganization,@MIncome,@MEmail,@Mmobile,@Marks_Hindi,@Marks_English,@Marks_Science,@Marks_Math,
@Marks_SocialScience
,@Marks_Computer,@Marks_Art,@Marks_Commerse,@Marks_Humanities,@Marks_Other,@Terms,@RecipetUpload,getdate(),@motherAdhar,@fatherAdhar,@studentAdhar

	,@motherwhatsapp , 
	@fatherwhatsapp 
	
	,@reportcard_path,@tc_path,@othersDocument_path,@registrationNo)
	
	end
	
	




GO
/****** Object:  Table [dbo].[acheivers]    Script Date: 8/22/2020 9:08:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acheivers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[acheivement] [varchar](200) NULL,
	[img_path] [varchar](200) NULL,
	[acheivementdate] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[achievement]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[achievement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[achievementid] [varchar](60) NULL,
	[achievementDate] [varchar](90) NULL,
	[classname] [varchar](90) NULL,
	[filepath] [varchar](max) NULL,
	[filename] [varchar](90) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Achievements]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Achievements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading] [varchar](max) NULL,
	[date] [date] NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alumni]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumni](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[city] [varchar](max) NULL,
	[mobile] [varchar](50) NULL,
	[post] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[photo] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[batch_date] [date] NULL,
	[gender] [varchar](50) NULL,
	[registered_date] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[annoucement]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[annoucement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading] [varchar](max) NULL,
	[annoucement] [varchar](max) NULL,
	[annoucementDate] [varchar](70) NULL,
	[createddate] [varchar](90) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[birthday]    Script Date: 8/22/2020 9:08:09 AM ******/
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
/****** Object:  Table [dbo].[Calender]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Calender](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[date] [date] NULL,
	[lnk] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[career]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[career](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[subject] [varchar](max) NULL,
	[post] [varchar](max) NULL,
	[resume] [varchar](max) NULL,
	[address] [varchar](max) NULL,
	[apply_date] [date] NULL,
	[applyfor] [varchar](max) NULL,
	[experience] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[gender] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[careerDetails]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[careerDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](90) NULL,
	[gender] [varchar](80) NULL,
	[previousschool] [varchar](500) NULL,
	[postapplyfor] [varchar](400) NULL,
	[contactno] [varchar](20) NULL,
	[address] [varchar](max) NULL,
	[wmailid] [varchar](100) NULL,
	[cv] [varchar](200) NULL,
	[applyingdate] [varchar](90) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[circular]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[circular](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class] [varchar](50) NULL,
	[date] [date] NULL,
	[lnk] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[classmaster]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[classmaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[classid] [varchar](20) NULL,
	[classname] [varchar](100) NULL,
	[classInroman] [varchar](100) NULL,
	[classorder] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contact_us]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact_us](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[subject] [varchar](max) NULL,
	[sms] [varchar](max) NULL,
	[address] [varchar](max) NULL,
	[enquiry_date] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[datesheet]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[datesheet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class] [varchar](50) NULL,
	[date] [date] NULL,
	[lnk] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[downloads]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[downloads](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading] [varchar](max) NULL,
	[text] [varchar](max) NULL,
	[lnk] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Event_Calender]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event_Calender](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[date] [date] NULL,
	[lnk] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Event_photo]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NULL,
	[Event_id] [varchar](max) NULL,
	[updated_dat] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eventGallery]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eventGallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[eventid] [int] NULL,
	[eventname] [varchar](70) NULL,
	[filename] [varchar](70) NULL,
	[filepath] [varchar](500) NULL,
	[createdDate] [varchar](50) NULL,
	[evendate] [varchar](80) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[front_gallery]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[front_gallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NULL,
	[updated_dat] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[front_image]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[front_image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NULL,
	[updated_dat] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[holiday]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[holiday](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class] [varchar](50) NULL,
	[date] [date] NULL,
	[lnk] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[imggl]    Script Date: 8/22/2020 9:08:09 AM ******/
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
/****** Object:  Table [dbo].[imggl1]    Script Date: 8/22/2020 9:08:09 AM ******/
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
/****** Object:  Table [dbo].[imggl2]    Script Date: 8/22/2020 9:08:09 AM ******/
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
/****** Object:  Table [dbo].[imgglsld]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[imgglsld](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[flnm] [varchar](max) NULL,
	[pathnm] [varchar](max) NULL,
	[title] [varchar](80) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Innerachievement]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Innerachievement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[achievementid] [varchar](60) NULL,
	[filename] [varchar](90) NULL,
	[filepath] [varchar](max) NULL,
	[headlines] [nvarchar](max) NULL,
	[createddate] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InnerEventGallery]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InnerEventGallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[eventid] [int] NULL,
	[filepath] [varchar](500) NULL,
	[createddate] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InnertopperGallery]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InnertopperGallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[topperid] [int] NULL,
	[filepath] [varchar](500) NULL,
	[createddate] [varchar](20) NULL,
	[toppername] [varchar](80) NULL,
	[percentage] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jobvacancy]    Script Date: 8/22/2020 9:08:09 AM ******/
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
/****** Object:  Table [dbo].[kids_photo]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kids_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NULL,
	[updated_dat] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Latest_Events]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Latest_Events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NULL,
	[updated_dat] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[logon]    Script Date: 8/22/2020 9:08:09 AM ******/
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
/****** Object:  Table [dbo].[newsAndEvents]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[newsAndEvents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[img_path] [varchar](max) NULL,
	[heading] [varchar](max) NULL,
	[news] [varchar](max) NULL,
	[newsdate] [varchar](70) NULL,
	[createddate] [varchar](90) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Newss]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Newss](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading] [varchar](max) NULL,
	[Detail] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Newsss]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Newsss](
	[id] [int] NOT NULL,
	[Heading] [varchar](max) NULL,
	[Date] [date] NULL,
	[image] [varchar](max) NULL,
	[Detail] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[notice]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notice](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[notice] [nvarchar](max) NULL,
	[lnk] [nvarchar](max) NULL,
	[sts] [nvarchar](max) NULL,
	[dt] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[onlineregister]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[onlineregister](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[dob] [date] NULL,
	[gender] [varchar](50) NULL,
	[class] [varchar](50) NULL,
	[father_name] [varchar](50) NULL,
	[mother_name] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[address] [varchar](max) NULL,
	[enquiry_date] [date] NULL,
	[religion] [varchar](50) NULL,
	[nation] [varchar](50) NULL,
	[blood_grp] [varchar](50) NULL,
	[mother_tongue] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[prev_class] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[parentfeedBack]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[parentfeedBack](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[emailid] [varchar](60) NULL,
	[phonenumber] [varchar](20) NULL,
	[message] [varchar](max) NULL,
	[address] [varchar](max) NULL,
	[feedbackdate] [varchar](90) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[photo]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[photo](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[drname] [varchar](max) NULL,
	[imgl] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[photo_catg]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[photo_catg](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading] [varchar](max) NULL,
	[image] [varchar](max) NULL,
	[session] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Photo_Gallery]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Photo_Gallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading] [varchar](max) NULL,
	[Detail] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[img_path] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[photo_session]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[photo_session](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[session] [varchar](50) NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[photogallery]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[photogallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[session] [varchar](50) NULL,
	[photo_catg] [varchar](max) NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_card]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_card](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_name] [varchar](100) NULL,
	[father_name] [varchar](100) NULL,
	[images] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[slider]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[slider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[img_path] [varchar](max) NULL,
	[heading] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[syllabus]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[syllabus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class] [varchar](50) NULL,
	[date] [date] NULL,
	[lnk] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_OnlineRegister]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_OnlineRegister](
	[SNo] [bigint] NULL,
	[CandidateName] [varchar](200) NULL,
	[AdmissionClass] [varchar](200) NULL,
	[Candi_Dob] [datetime] NULL,
	[Natinality] [varchar](200) NULL,
	[Curr_SchoolName] [varchar](200) NULL,
	[Board] [varchar](200) NULL,
	[Curr_Class] [varchar](200) NULL,
	[StudyMedium] [varchar](200) NULL,
	[Email] [varchar](200) NULL,
	[MobileNo] [varchar](200) NULL,
	[Gender] [varchar](200) NULL,
	[Category] [varchar](200) NULL,
	[Religion] [varchar](200) NULL,
	[Address] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[ChildPhoto] [varchar](200) NULL,
	[FName] [varchar](200) NULL,
	[FQualification] [varchar](200) NULL,
	[FDesignation] [varchar](200) NULL,
	[FOrganization] [varchar](200) NULL,
	[FIncome] [varchar](200) NULL,
	[FEmail] [varchar](200) NULL,
	[Fmobile] [varchar](200) NULL,
	[MName] [varchar](200) NULL,
	[MQualification] [varchar](200) NULL,
	[MDesignation] [varchar](200) NULL,
	[MOrganization] [varchar](200) NULL,
	[MIncome] [varchar](200) NULL,
	[MEmail] [varchar](200) NULL,
	[Mmobile] [varchar](200) NULL,
	[Marks_Hindi] [varchar](200) NULL,
	[Marks_English] [varchar](200) NULL,
	[Marks_Science] [varchar](200) NULL,
	[Marks_Math] [varchar](200) NULL,
	[Marks_SocialScience] [varchar](200) NULL,
	[Marks_Computer] [varchar](200) NULL,
	[Marks_Art] [varchar](200) NULL,
	[Marks_Commerse] [varchar](200) NULL,
	[Marks_Humanities] [varchar](200) NULL,
	[Marks_Other] [varchar](200) NULL,
	[Terms] [varchar](200) NULL,
	[RecipetUpload] [varchar](200) NULL,
	[CreatedBy] [varchar](200) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifyBy] [varchar](200) NULL,
	[ModifyOn] [datetime] NULL,
	[registrationno] [varchar](200) NULL,
	[motherAdhar] [varchar](200) NULL,
	[fatherAdhar] [varchar](200) NULL,
	[studentAdhar] [varchar](200) NULL,
	[motherwhatsapp] [varchar](200) NULL,
	[fatherwhatsapp] [varchar](200) NULL,
	[reportcard_path] [varchar](200) NULL,
	[tc_path] [varchar](200) NULL,
	[othersDocument_path] [varchar](200) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[tbl_OnlineRegister] ADD [createdDate] [varchar](90) NULL

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tc]    Script Date: 8/22/2020 9:08:09 AM ******/
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
/****** Object:  Table [dbo].[tc_issed]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tc_issed](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[admission_no] [varchar](100) NULL,
	[dob] [date] NULL,
	[images] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[thoughts]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[thoughts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading] [varchar](max) NULL,
	[updated_dat] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Timetable]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Timetable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class] [varchar](50) NULL,
	[date] [date] NULL,
	[lnk] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[topperGallery]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[topperGallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[topperid] [int] NULL,
	[classname] [varchar](70) NULL,
	[filename] [varchar](70) NULL,
	[filepath] [varchar](500) NULL,
	[createdDate] [varchar](50) NULL,
	[evendate] [varchar](80) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[toppers]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[toppers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[timgpath] [varchar](max) NULL,
	[tname] [varchar](90) NULL,
	[tclass] [varchar](70) NULL,
	[tper] [varchar](70) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[uploadClassDocument]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uploadClassDocument](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentName] [varchar](100) NULL,
	[filepath] [varchar](200) NULL,
	[classid] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[video_link]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[video_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[link] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [hertiageschool].[recentupdate]    Script Date: 8/22/2020 9:08:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [hertiageschool].[recentupdate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[recentupdate] [varchar](max) NULL,
	[createddate] [varchar](70) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[acheivers] ON 

INSERT [dbo].[acheivers] ([id], [acheivement], [img_path], [acheivementdate]) VALUES (10, N'Acheivement', N'images/miukxlmw.01a_ACHIEVEMENT.jpg', N'')
SET IDENTITY_INSERT [dbo].[acheivers] OFF
SET IDENTITY_INSERT [dbo].[annoucement] ON 

INSERT [dbo].[annoucement] ([id], [heading], [annoucement], [annoucementDate], [createddate]) VALUES (11, N'Admission open', N'Admission Open session 2020-21', N'May 21 2020 11:04AM', N'May 21 2020 11:04AM')
SET IDENTITY_INSERT [dbo].[annoucement] OFF
SET IDENTITY_INSERT [dbo].[careerDetails] ON 

INSERT [dbo].[careerDetails] ([id], [name], [gender], [previousschool], [postapplyfor], [contactno], [address], [wmailid], [cv], [applyingdate]) VALUES (11, N'Rishu singh', N'Male', N'Indian Children Academy Ghaziabad', N'PRT teacher', N'9718405795', N'Rafat colony jwala nagar rampur', N'Rishsing52@gmail.com', N'Career/1_cabmcgyj.gju rishu resume teacher– 01.pdf', N'Jun 26 2020 11:18AM')
INSERT [dbo].[careerDetails] ([id], [name], [gender], [previousschool], [postapplyfor], [contactno], [address], [wmailid], [cv], [applyingdate]) VALUES (10, N'lucky monga', N'Male', N'w', N'kh', N'7500665533', N'civil lines', N'mr.luckymonga@gmail.com', N'Career/1_wd0iivbr.ehy Full Syllabus program (1).pdf', N'Jun 20 2020  1:11AM')
INSERT [dbo].[careerDetails] ([id], [name], [gender], [previousschool], [postapplyfor], [contactno], [address], [wmailid], [cv], [applyingdate]) VALUES (12, N'Vaishali Ruhela', N'Female', N'Bachpan Play school, (R.K.I School),  milak', N'PGT', N'8979645197', N'Nasirabad Milak Milak Rampur', N'arushmartin46@gmail.com', N'Career/1_zkufstmf.r1k rinki vaishali.pdf', N'Jul  2 2020  2:57AM')
SET IDENTITY_INSERT [dbo].[careerDetails] OFF
SET IDENTITY_INSERT [dbo].[downloads] ON 

INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (18, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'LKG', N'Admin/Adminhome/Download/5allug3w.vb1_LKG.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (20, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'Ist', N'Admin/Adminhome/Download/kuyvz1nr.n00_I.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (21, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'IInd', N'Admin/Adminhome/Download/j4wzv2ce.1jp_II.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (25, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'VIth', N'Admin/Adminhome/Download/cltp3n1a.dkp_VI.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (27, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'VIIIth', N'Admin/Adminhome/Download/nrs0d3vf.pk1_VIII.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (29, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'Xth', N'Admin/Adminhome/Download/4ybwerif.gx2_X.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (30, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'XIth (COMMERCE)', N'Admin/Adminhome/Download/xiuvecqw.j4d_XI COMMERCE.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (32, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'XIIth (COMMERCE)', N'Admin/Adminhome/Download/rqxl0xyb.kdi_XII COMMERCE.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (22, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'IIrd', N'Admin/Adminhome/Download/mk2afnxm.1ef_III.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (24, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'Vth', N'Admin/Adminhome/Download/022gor2a.ive_V.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (17, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'NURSERY', N'Admin/Adminhome/Download/gtea44xj.lku_NC.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (19, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'UKG', N'Admin/Adminhome/Download/cg0mke0h.rod_UKG.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (23, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'IVth', N'Admin/Adminhome/Download/fqt5p0wj.ttl_IV.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (26, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'VIIth', N'Admin/Adminhome/Download/44350prj.kyc_VII.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (28, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'IXth', N'Admin/Adminhome/Download/h4vhfzey.s5w_IX.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (31, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'XIth (SCIENCE)', N'Admin/Adminhome/Download/fwqghs0r.5on_XI SCIENCE.pdf')
INSERT [dbo].[downloads] ([id], [heading], [text], [lnk]) VALUES (33, N'SUMMER HOLIDAY ASSIGNMENT 2020-2021', N'XIth (SCIENCE)', N'Admin/Adminhome/Download/hf2mt0on.qd4_XII SCIENCE.pdf')
SET IDENTITY_INSERT [dbo].[downloads] OFF
SET IDENTITY_INSERT [dbo].[eventGallery] ON 

INSERT [dbo].[eventGallery] ([id], [eventid], [eventname], [filename], [filepath], [createdDate], [evendate]) VALUES (5, 1, N'School Photo', N'rjxasu2h.se5 ', N'images/eventImages/rjxasu2h.se5 ', N'May 23 2020  7:02AM', N'')
INSERT [dbo].[eventGallery] ([id], [eventid], [eventname], [filename], [filepath], [createdDate], [evendate]) VALUES (9, 2, N'International Yoga Day', N'y2hxzipv.oyr ', N'images/eventImages/y2hxzipv.oyr ', N'Jun 21 2020 12:34AM', N'')
SET IDENTITY_INSERT [dbo].[eventGallery] OFF
SET IDENTITY_INSERT [dbo].[InnerEventGallery] ON 

INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (14, 0, N'images/eventImages/jo4mxoag.ezk IMG-20200420-WA0126.jpg', N'May 23 2020  1:26AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (15, 0, N'images/eventImages/13mmgqeq.wx3 2.jpg', N'May 23 2020  1:26AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (16, 0, N'images/eventImages/q15kvv5i.ynq IMG-20200420-WA0128.jpg', N'May 23 2020  1:27AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (17, 0, N'images/eventImages/4on4ut2v.xgy IMG-20200420-WA0129.jpg', N'May 23 2020  1:27AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (18, 0, N'images/eventImages/gco4li2f.irq IMG-20200420-WA0130.jpg', N'May 23 2020  1:27AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (19, 0, N'images/eventImages/unm4exml.105 IMG-20200420-WA0131.jpg', N'May 23 2020  1:27AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (24, 0, N'images/eventImages/ewg2mkp0.3et IMG-20200420-WA0137.jpg', N'May 23 2020  1:29AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (26, 0, N'images/eventImages/g3j1g523.5kf IMG-20200420-WA0139.jpg', N'May 23 2020  1:30AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (27, 0, N'images/eventImages/ke45dge5.qfo IMG-20200420-WA0140.jpg', N'May 23 2020  1:30AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (28, 0, N'images/eventImages/r5ifqnxa.5gn IMG-20200420-WA0141.jpg', N'May 23 2020  1:30AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (30, 0, N'images/eventImages/t2y4z4zd.e05 IMG-20200420-WA0142.jpg', N'May 23 2020  1:31AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (33, 0, N'images/eventImages/wsu10sej.ju5 IMG-20200420-WA0146.jpg', N'May 23 2020  1:31AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (40, 2, N'images/eventImages/d0n4tzr0.mwk IMG-20200621-WA0052.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (41, 2, N'images/eventImages/myz1cprc.efu IMG-20200621-WA0053.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (42, 2, N'images/eventImages/phdljrr4.rr0 IMG-20200621-WA0054.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (43, 2, N'images/eventImages/5wvncios.mvj IMG-20200621-WA0055.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (44, 2, N'images/eventImages/bftqpmww.b0k IMG-20200621-WA0056.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (45, 2, N'images/eventImages/btzzbvoe.rgx IMG-20200621-WA0057.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (46, 2, N'images/eventImages/y2awnzrg.cml IMG-20200621-WA0058.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (47, 2, N'images/eventImages/mbgx0xmw.l2s IMG-20200621-WA0060.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (48, 2, N'images/eventImages/gf4lkczi.zqx IMG-20200621-WA0061.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (49, 2, N'images/eventImages/wcsxlpry.ok0 IMG-20200621-WA0063.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (50, 2, N'images/eventImages/pvjdbvcc.gln IMG-20200621-WA0064.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (51, 2, N'images/eventImages/ykwl1pnc.sec IMG-20200621-WA0065.jpg', N'Jun 21 2020 12:36AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (20, 0, N'images/eventImages/w1ytjcjz.xwv IMG-20200420-WA0132.jpg', N'May 23 2020  1:28AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (21, 0, N'images/eventImages/3pv1mes4.o3e IMG-20200420-WA0134.jpg', N'May 23 2020  1:28AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (23, 0, N'images/eventImages/oxm4r00w.g2f IMG-20200420-WA0136.jpg', N'May 23 2020  1:29AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (34, 0, N'images/eventImages/5dnbshmu.nfm IMG-20200420-WA0145.jpg', N'May 23 2020  1:31AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (35, 0, N'images/eventImages/enyhvxvk.dua ', N'May 23 2020  1:40AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (22, 0, N'images/eventImages/exjcqcsy.ouj IMG-20200420-WA0135.jpg', N'May 23 2020  1:28AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (25, 0, N'images/eventImages/sqld3z2o.152 IMG-20200420-WA0138.jpg', N'May 23 2020  1:29AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (31, 0, N'images/eventImages/au0isgwq.q5l IMG-20200420-WA0143.jpg', N'May 23 2020  1:31AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (32, 0, N'images/eventImages/blh4k4by.0un IMG-20200420-WA0144.jpg', N'May 23 2020  1:31AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (29, 0, N'images/eventImages/wn1gpt5a.lzy IMG-20200420-WA0142.jpg', N'May 23 2020  1:30AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (36, 1, N'images/eventImages/3nit32vy.e0d bc4nxjut.ye0 263898-nursery-children.jpg', N'Jun  3 2020  4:52AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (37, 2, N'images/eventImages/imcjqbx0.okm bc4nxjut.ye0 263898-nursery-children.jpg', N'Jun  3 2020  4:53AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (38, 2, N'images/eventImages/k3d4npha.y5f cmhsokxh.fcb 4bvmems2.kui_about.jpg', N'Jun  3 2020  4:53AM')
INSERT [dbo].[InnerEventGallery] ([id], [eventid], [filepath], [createddate]) VALUES (39, 2, N'images/eventImages/muqw0clf.fyg jvilleb0.urm ei1.jpg', N'Jun  3 2020  4:53AM')
SET IDENTITY_INSERT [dbo].[InnerEventGallery] OFF
INSERT [dbo].[logon] ([username], [password], [dt]) VALUES (N'admin', N'admin', CAST(0x77410B00 AS Date))
SET IDENTITY_INSERT [dbo].[newsAndEvents] ON 

INSERT [dbo].[newsAndEvents] ([id], [img_path], [heading], [news], [newsdate], [createddate]) VALUES (4, N'images/phdblgys.3ea_IMG-20200618-WA0028.jpg', N'International Yoga day', N'Celebrate Heritage Children Academy MIlak', N'21/06/2020', N'Jun 19 2020  1:05AM')
SET IDENTITY_INSERT [dbo].[newsAndEvents] OFF
SET IDENTITY_INSERT [dbo].[Photo_Gallery] ON 

INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (17, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/4oobq1tj.xbu_CVKawhKs.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (18, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/0ollcweb.zy0_YCVzAgUu.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (19, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/q2podjxr.tgf_kIBcAmNS.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (21, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/clr53llc.i4z_J52eNqR2.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (22, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/skq5wlkb.hpm_VBhGNwKa.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (24, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/p1u5v2qy.5wa_PfjipzYC.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (26, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/xzticvv4.4ra_ySak24cm.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (27, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/ngefq2ni.nly_or4woAKI.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (28, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/wgeisu4n.spi_WFRlG8fL.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (29, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/w3shxh3v.r5j_iL6OGEZu.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (32, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/lfpygyke.foe_TEd2TOV2.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (34, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/pxktuhyo.zpz_11U4hTZc.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (37, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/n4qteqa4.xfl_sUimLmdu.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (38, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/xodnh4bw.w5l_Gg21LxP0.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (20, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/2kd0vare.b2o_TgXRbjiV.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (31, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/cp0tbbfe.rny_G8xQTIcU.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (23, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/unhs2j22.ntg_DZ45ptfd.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (25, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/2pdkdkvj.jkm_mMv72yjD.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (30, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/v145kyuv.urt_uRm0FJSS.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (33, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/gli303cs.zmu_fKIeTUPa.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (35, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/vwnhdmwf.b5l_D79ggYSA.jpg')
INSERT [dbo].[Photo_Gallery] ([id], [heading], [Detail], [Date], [img_path]) VALUES (36, N'Galary', NULL, N'May 24 2020  3:13AM', N'images/soueekil.jf3_Khrk8hZK.jpg')
SET IDENTITY_INSERT [dbo].[Photo_Gallery] OFF
SET IDENTITY_INSERT [dbo].[slider] ON 

INSERT [dbo].[slider] ([id], [img_path], [heading]) VALUES (8, N'Slider/x4n4y0b3.pcm_download.jpg', NULL)
INSERT [dbo].[slider] ([id], [img_path], [heading]) VALUES (9, N'Slider/snqxpf1u.i5q_IMG-20200116-WA0098.jpg', NULL)
INSERT [dbo].[slider] ([id], [img_path], [heading]) VALUES (10, N'Slider/qhq2xjnb.vlc_IMG-20191202-WA0080.jpg', NULL)
INSERT [dbo].[slider] ([id], [img_path], [heading]) VALUES (17, N'Slider/5ddtb2ue.mai_1590320183_tmp_DSC_3412_-_Copy.jpg', NULL)
INSERT [dbo].[slider] ([id], [img_path], [heading]) VALUES (18, N'Slider/3q25wk1y.rp1_1590320661_tmp_GDP_7718__2__-_Copy.jpg', NULL)
INSERT [dbo].[slider] ([id], [img_path], [heading]) VALUES (11, N'Slider/e530nm0b.osn_IMG-20200302-WA0009.jpg', NULL)
INSERT [dbo].[slider] ([id], [img_path], [heading]) VALUES (16, N'Slider/zsv5yhho.3he_1590319649_tmp_DSC_3375_-_Copy.jpg', NULL)
SET IDENTITY_INSERT [dbo].[slider] OFF
INSERT [dbo].[tbl_OnlineRegister] ([SNo], [CandidateName], [AdmissionClass], [Candi_Dob], [Natinality], [Curr_SchoolName], [Board], [Curr_Class], [StudyMedium], [Email], [MobileNo], [Gender], [Category], [Religion], [Address], [City], [ChildPhoto], [FName], [FQualification], [FDesignation], [FOrganization], [FIncome], [FEmail], [Fmobile], [MName], [MQualification], [MDesignation], [MOrganization], [MIncome], [MEmail], [Mmobile], [Marks_Hindi], [Marks_English], [Marks_Science], [Marks_Math], [Marks_SocialScience], [Marks_Computer], [Marks_Art], [Marks_Commerse], [Marks_Humanities], [Marks_Other], [Terms], [RecipetUpload], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn], [registrationno], [motherAdhar], [fatherAdhar], [studentAdhar], [motherwhatsapp], [fatherwhatsapp], [reportcard_path], [tc_path], [othersDocument_path], [createdDate]) VALUES (1, N'lucky monga', N'VI', CAST(0x0000ABBE00000000 AS DateTime), N'zsczsf', N'sdfasfa', N'', N'XI', N'', N'mr.luckymonga@gmail.com', N'7500665533', N'Male', N'General', N'Select', N'civil lines', N'bareilly', N'~/images/registration/_', N'Shri pradeep kumar', N'', N'', N'lmsoftech', N'', N'', N'', N'kk', N'g', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(0x0000ABC100E217C5 AS DateTime), NULL, NULL, NULL, N'', N'8989898989', N'jhjkkjjkhkhkhkhkhkh', N'', N'', N'~/images/documents/_', N'~/images/documents/_', N'~/images/documents/_', NULL)
INSERT [dbo].[tbl_OnlineRegister] ([SNo], [CandidateName], [AdmissionClass], [Candi_Dob], [Natinality], [Curr_SchoolName], [Board], [Curr_Class], [StudyMedium], [Email], [MobileNo], [Gender], [Category], [Religion], [Address], [City], [ChildPhoto], [FName], [FQualification], [FDesignation], [FOrganization], [FIncome], [FEmail], [Fmobile], [MName], [MQualification], [MDesignation], [MOrganization], [MIncome], [MEmail], [Mmobile], [Marks_Hindi], [Marks_English], [Marks_Science], [Marks_Math], [Marks_SocialScience], [Marks_Computer], [Marks_Art], [Marks_Commerse], [Marks_Humanities], [Marks_Other], [Terms], [RecipetUpload], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn], [registrationno], [motherAdhar], [fatherAdhar], [studentAdhar], [motherwhatsapp], [fatherwhatsapp], [reportcard_path], [tc_path], [othersDocument_path], [createdDate]) VALUES (2, N'Debvansh gupat', N'VI', CAST(0x0000AC0C00000000 AS DateTime), N'Indian', N'Heritage children academy', N'CBSE', N'VI', N'Online', N'', N'7617684850', N'Male', N'General', N'Hindu', N'Near post office', N'', N'', N'Praveen kumar gupta', N'Graduate', N'', N'', N'', N'', N'7617684858', N'Asha gupta', N'Graduate', N'', N'', N'', N'', N'7617684950', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(0x0000ABE40049D523 AS DateTime), NULL, NULL, N'1002', N'', N'', N'', N'7617684850', N'7617684858', N'', N'', N'', NULL)
INSERT [dbo].[tbl_OnlineRegister] ([SNo], [CandidateName], [AdmissionClass], [Candi_Dob], [Natinality], [Curr_SchoolName], [Board], [Curr_Class], [StudyMedium], [Email], [MobileNo], [Gender], [Category], [Religion], [Address], [City], [ChildPhoto], [FName], [FQualification], [FDesignation], [FOrganization], [FIncome], [FEmail], [Fmobile], [MName], [MQualification], [MDesignation], [MOrganization], [MIncome], [MEmail], [Mmobile], [Marks_Hindi], [Marks_English], [Marks_Science], [Marks_Math], [Marks_SocialScience], [Marks_Computer], [Marks_Art], [Marks_Commerse], [Marks_Humanities], [Marks_Other], [Terms], [RecipetUpload], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn], [registrationno], [motherAdhar], [fatherAdhar], [studentAdhar], [motherwhatsapp], [fatherwhatsapp], [reportcard_path], [tc_path], [othersDocument_path], [createdDate]) VALUES (3, N'Debvansh gupat', N'VI', CAST(0x0000AC0C00000000 AS DateTime), N'Indian', N'Heritage children academy', N'CBSE', N'VI', N'Online', N'', N'7617684850', N'Male', N'General', N'Hindu', N'Near post office', N'', N'', N'Praveen kumar gupta', N'Graduate', N'', N'', N'', N'', N'7617684858', N'Asha gupta', N'Graduate', N'', N'', N'', N'', N'7617684950', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(0x0000ABE40049D58A AS DateTime), NULL, NULL, N'1003', N'', N'', N'', N'7617684850', N'7617684858', N'', N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[tc_issed] ON 

INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (2, N'740', CAST(0xDF300B00 AS Date), N'tc/2txsxpfl.rgc_SAHIL ALI.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (3, N'1034', CAST(0xCF320B00 AS Date), N'tc/kgxxgoog.l2y_SOHIL ALI.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (4, N'1797', CAST(0x54350B00 AS Date), N'tc/hyugvmm1.ebj_AARISH ALI.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (5, N'111', CAST(0x75410B00 AS Date), N'tc/om5uay5w.pvs_7.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (6, N'1484', CAST(0x83300B00 AS Date), N'tc/253qsa1o.bah_AKASH GANGWAR.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (7, N'1486', CAST(0x852C0B00 AS Date), N'tc/442snuvt.loc_SWATI GANGWAR.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (8, N'1386', CAST(0x5A2B0B00 AS Date), N'tc/fybaxkkt.aok_SHIVAM GANGWAR.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (9, N'290', CAST(0xB92E0B00 AS Date), N'tc/0hpgtnj0.i4u_SAURABH GANGWAR.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (10, N'250', CAST(0x182E0B00 AS Date), N'tc/qmyn53ba.s0j_SUDHANSHU PATEL.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (11, N'915', CAST(0x9F310B00 AS Date), N'tc/qw5cehbs.yhs_TARUN BHARADWAJ.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (12, N'1000275', CAST(0xAD320B00 AS Date), N'tc/hzx0brsl.v3u_KESHAV MISHRA.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (13, N'144', CAST(0x572B0B00 AS Date), N'tc/pelzsaas.llg_DEEPAK singh.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (14, N'541', CAST(0xE5300B00 AS Date), N'tc/edq1i2pk.pht_PRITHVI PANDEY.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (15, N'714', CAST(0xE2300B00 AS Date), N'tc/5gigd4r0.ac3_ADITYA KUMAR.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (16, N'756', CAST(0x95320B00 AS Date), N'tc/pu1yirsq.yph_ARSH MISHRA.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (17, N'252', CAST(0x422E0B00 AS Date), N'tc/hn50rzjc.br1_VAISHNAVI MISHRA.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (18, N'85/2012-13', CAST(0x2B2C0B00 AS Date), N'tc/f0bch3vc.ddu_KHUSHI GANGWAR.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (19, N'17', CAST(0xEA270B00 AS Date), N'tc/5jb0e3pz.ed2_AIBAB KHAN.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (20, N'558', CAST(0x7E2B0B00 AS Date), N'tc/vbassf5d.0f2_SHAILZA SINGH.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (21, N'718', CAST(0xBE320B00 AS Date), N'tc/sn0dxbn5.mtf_NIDHI SINGH.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (22, N'1238', CAST(0x0A2E0B00 AS Date), N'tc/p4filgah.h0s_YASH GANGWAR.jpg')
INSERT [dbo].[tc_issed] ([id], [admission_no], [dob], [images]) VALUES (24, N'1000261', CAST(0xF52B0B00 AS Date), N'tc/2r53xk3f.5h5_PUNYANSH GANGWAR.jpg')
SET IDENTITY_INSERT [dbo].[tc_issed] OFF
SET IDENTITY_INSERT [dbo].[toppers] ON 

INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (40, N'images/qayycdok.y3l_ANSHU GANGWAR.jpg', N'ANSHU GANGWAR', N'XII', N'92')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (42, N'images/qiscinwt.zpj_ANUSHKA  GANGWAR.jpg', N'ANUSHKA GANGWAR', N'XII', N'92.8')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (44, N'images/qt5vwaoq.2yy_YATEESH.jpg', N'YATEESH GANGWAR', N'X', N'91')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (45, N'images/o3bqj3oy.01u_VAIBHAV.jpg', N'VAIBHAV GANGWAR', N'X', N'91.6')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (46, N'images/sx1fxp1m.g3u_SHIVANG.jpg', N'SHIVANG PATEL', N'X', N'91.6')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (47, N'images/nzddkjzx.2n0_SACHIN.jpg', N'SACHIN PATEL', N'X', N'91.6')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (48, N'images/ndwcxvxn.l14_vipin kumar singh.jpg', N'VIPIN KUMAR SINGH', N'X', N'91.8')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (49, N'images/m5vnnwyt.gui_UZAIR.jpg', N'MOHD UZAIR KHAN', N'X', N'92.2')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (50, N'images/w0ffu1ch.3vb_ADITI.jpg', N'ADITI RASTOGI', N'X', N'92.8')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (51, N'images/mkicxacw.sc3_KHUSHI.jpg', N'KHUSHI GANGWAR', N'X', N'94.4')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (52, N'images/cajmip21.jsu_NEHA.jpg', N'NEHA', N'X', N'94.6')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (53, N'images/d2hllzgj.agl_AMISHA.jpg', N'AMISHA GANGWAR', N'X', N'95')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (54, N'images/kavf0f1v.4qm_ABHYUDITA.jpg', N'ABHYUDITA PANDEY', N'X', N'95.8')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (38, N'images/1h0r0wyh.inj_VIBHUKANT.jpg', N'VIBHU KANT SHARMA', N'XII', N'90.08')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (39, N'images/g533yobm.dy4_ANKUSH GANGWAR.jpg', N'ANKUSH GANGWAR', N'XII', N'90.08')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (43, N'images/zhojdcqg.o1z_HARSHIT.jpg', N'HARSHIT', N'X', N'90.4')
INSERT [dbo].[toppers] ([id], [timgpath], [tname], [tclass], [tper]) VALUES (41, N'images/5ow1ored.ngo_NAVED ANSARI 1.jpg', N'NAVED ANSARI', N'XII', N'92')
SET IDENTITY_INSERT [dbo].[toppers] OFF
SET IDENTITY_INSERT [dbo].[video_link] ON 

INSERT [dbo].[video_link] ([id], [link]) VALUES (4, N'<iframe width="697" height="392" src="https://www.youtube.com/embed/GfxAUnLRgA4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[video_link] ([id], [link]) VALUES (5, N'<iframe width="697" height="392" src="https://www.youtube.com/embed/3C3B68VbLhg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[video_link] ([id], [link]) VALUES (6, N'<iframe width="697" height="392" src="https://www.youtube.com/embed/5X0gIPAG8zY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[video_link] ([id], [link]) VALUES (7, N'<iframe width="697" height="392" src="https://www.youtube.com/embed/LRVY6l5Mf34" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
SET IDENTITY_INSERT [dbo].[video_link] OFF
SET IDENTITY_INSERT [hertiageschool].[recentupdate] ON 

INSERT [hertiageschool].[recentupdate] ([id], [recentupdate], [createddate]) VALUES (10, N'The Summer Vacation shall be observed from June 10-30,2020 for NC-8 class students & June 10-25,2020 for 9-12 class students.', N'Jun  9 2020  9:43AM')
SET IDENTITY_INSERT [hertiageschool].[recentupdate] OFF
USE [master]
GO
ALTER DATABASE [hertiageschool] SET  READ_WRITE 
GO
