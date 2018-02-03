USE [master]
GO

/****** Object:  Database [MexiaSource]    Script Date: 2018-02-01 8:13:07 AM ******/
CREATE DATABASE [MexiaSource]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MexiaSource', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MexiaSource.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MexiaSource_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MexiaSource_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [MexiaSource] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MexiaSource].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [MexiaSource] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [MexiaSource] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [MexiaSource] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [MexiaSource] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [MexiaSource] SET ARITHABORT OFF 
GO

ALTER DATABASE [MexiaSource] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [MexiaSource] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [MexiaSource] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [MexiaSource] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [MexiaSource] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [MexiaSource] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [MexiaSource] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [MexiaSource] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [MexiaSource] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [MexiaSource] SET  ENABLE_BROKER 
GO

ALTER DATABASE [MexiaSource] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [MexiaSource] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [MexiaSource] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [MexiaSource] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [MexiaSource] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [MexiaSource] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [MexiaSource] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [MexiaSource] SET RECOVERY FULL 
GO

ALTER DATABASE [MexiaSource] SET  MULTI_USER 
GO

ALTER DATABASE [MexiaSource] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [MexiaSource] SET DB_CHAINING OFF 
GO

ALTER DATABASE [MexiaSource] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [MexiaSource] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [MexiaSource] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [MexiaSource] SET QUERY_STORE = OFF
GO

USE [MexiaSource]
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

ALTER DATABASE [MexiaSource] SET  READ_WRITE 
GO


