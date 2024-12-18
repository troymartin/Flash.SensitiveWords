USE [master]
GO
/****** Object:  Database [Flash]    Script Date: 2024/11/07 14:25:03 ******/
CREATE DATABASE [Flash]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Flash', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Flash.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Flash_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Flash_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Flash] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Flash].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Flash] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Flash] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Flash] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Flash] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Flash] SET ARITHABORT OFF 
GO
ALTER DATABASE [Flash] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Flash] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Flash] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Flash] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Flash] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Flash] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Flash] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Flash] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Flash] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Flash] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Flash] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Flash] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Flash] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Flash] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Flash] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Flash] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Flash] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Flash] SET RECOVERY FULL 
GO
ALTER DATABASE [Flash] SET  MULTI_USER 
GO
ALTER DATABASE [Flash] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Flash] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Flash] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Flash] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Flash] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Flash] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Flash', N'ON'
GO
ALTER DATABASE [Flash] SET QUERY_STORE = ON
GO
ALTER DATABASE [Flash] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Flash]
GO
/****** Object:  Table [dbo].[SensitiveWords]    Script Date: 2024/11/07 14:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SensitiveWords](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nvarchar](50) NOT NULL,
	[DateCreated] [date] NOT NULL,
 CONSTRAINT [PK_SensitiveWords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SensitiveWords] ON 

INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (2, N'ALL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (4, N'ADD', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (5, N'ALL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (6, N'ALLOCATE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (7, N'ALTER', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (8, N'ANY', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (9, N'APPLICATION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (10, N'ARE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (11, N'AREA', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (12, N'ASC', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (13, N'ASSERTION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (14, N'ATOMIC', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (15, N'AUTHORIZATION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (16, N'AVG', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (17, N'BEGIN', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (18, N'BY', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (19, N'CALL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (20, N'CASCADE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (21, N'CASCADED', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (22, N'CATALOG', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (23, N'CHECK', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (24, N'CLOSE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (25, N'COLUMN', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (26, N'COMMIT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (27, N'COMPRESS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (28, N'CONNECT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (29, N'CONNECTION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (30, N'CONSTRAINT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (31, N'CONSTRAINTS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (32, N'CONTINUE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (33, N'CONVERT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (34, N'CORRESPONDING', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (35, N'CREATE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (36, N'CROSS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (37, N'CURRENT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (38, N'CURRENT_PATH', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (39, N'CURRENT_SCHEMA', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (40, N'CURRENT_SCHEMAID', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (41, N'CURRENT_USER', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (42, N'CURRENT_USERID', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (43, N'CURSOR', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (44, N'DATA', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (45, N'DEALLOCATE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (46, N'DECLARE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (47, N'DEFAULT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (48, N'DEFERRABLE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (49, N'DEFERRED', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (50, N'DELETE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (51, N'DESC', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (52, N'DESCRIBE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (53, N'DESCRIPTOR', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (54, N'DETERMINISTIC', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (55, N'DIAGNOSTICS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (56, N'DIRECTORY', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (57, N'DISCONNECT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (58, N'DISTINCT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (59, N'DO', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (60, N'DOMAIN', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (61, N'DOUBLEATTRIBUTE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (62, N'DROP', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (63, N'EACH', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (64, N'EXCEPT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (65, N'EXCEPTION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (66, N'EXEC', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (67, N'EXECUTE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (68, N'EXTERNAL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (69, N'FETCH', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (70, N'FLOAT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (71, N'FOREIGN', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (72, N'FOUND', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (73, N'FULL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (74, N'FUNCTION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (75, N'GET', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (76, N'GLOBAL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (77, N'GO', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (78, N'GOTO', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (79, N'GRANT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (80, N'GROUP', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (81, N'HANDLER', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (82, N'HAVING', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (83, N'IDENTITY', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (84, N'IMMEDIATE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (85, N'INDEX', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (86, N'INDEXED', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (87, N'INDICATOR', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (88, N'INITIALLY', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (89, N'INNER', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (90, N'INOUT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (91, N'INPUT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (92, N'INSENSITIVE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (93, N'INSERT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (94, N'INTERSECT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (95, N'INTO', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (96, N'ISOLATION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (97, N'JOIN', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (98, N'KEY', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (99, N'LANGUAGE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (100, N'LAST', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (101, N'LEAVE', CAST(N'2024-11-07' AS Date))
GO
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (102, N'LEVEL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (103, N'LOOP', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (104, N'MODIFIES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (105, N'MODULE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (106, N'NAMES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (107, N'NATIONAL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (108, N'NATURAL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (109, N'NEXT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (110, N'NULLIF', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (111, N'ON', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (112, N'ONLY', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (113, N'OPEN', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (114, N'OPTION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (115, N'ORDER', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (116, N'OUT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (117, N'OUTER', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (118, N'OUTPUT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (119, N'OVERLAPS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (120, N'OWNER', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (121, N'PARTIAL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (122, N'PATH', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (123, N'PRECISION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (124, N'PREPARE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (125, N'PRESERVE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (126, N'PRIMARY', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (127, N'PRIOR', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (128, N'PRIVILEGES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (129, N'PROCEDURE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (130, N'PUBLIC', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (131, N'READ', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (132, N'READS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (133, N'REFERENCES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (134, N'RELATIVE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (135, N'REPEAT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (136, N'RESIGNAL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (137, N'RESTRICT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (138, N'RETURN', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (139, N'RETURNS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (140, N'REVOKE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (141, N'ROLLBACK', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (142, N'ROUTINE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (143, N'ROW', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (144, N'ROWS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (145, N'SCHEMA', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (146, N'SCROLL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (147, N'SECTION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (148, N'SELECT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (149, N'SEQ', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (150, N'SEQUENCE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (151, N'SESSION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (152, N'SESSION_USER', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (153, N'SESSION_USERID', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (154, N'SET', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (155, N'SIGNAL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (156, N'SOME', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (157, N'SPACE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (158, N'SPECIFIC', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (159, N'SQL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (160, N'SQLCODE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (161, N'SQLERROR', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (162, N'SQLEXCEPTION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (163, N'SQLSTATE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (164, N'SQLWARNING', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (165, N'STATEMENT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (166, N'STRINGATTRIBUTE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (167, N'SUM', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (168, N'SYSACC', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (169, N'SYSHGH', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (170, N'SYSLNK', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (171, N'SYSNIX', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (172, N'SYSTBLDEF', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (173, N'SYSTBLDSC', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (174, N'SYSTBT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (175, N'SYSTBTATT', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (176, N'SYSTBTDEF', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (177, N'SYSUSR', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (178, N'SYSTEM_USER', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (179, N'SYSVIW', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (180, N'SYSVIWCOL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (181, N'TABLE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (182, N'TABLETYPE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (183, N'TEMPORARY', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (184, N'TRANSACTION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (185, N'TRANSLATE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (186, N'TRANSLATION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (187, N'TRIGGER', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (188, N'UNDO', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (189, N'UNION', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (190, N'UNIQUE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (191, N'UNTIL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (192, N'UPDATE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (193, N'USAGE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (194, N'USER', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (195, N'USING', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (196, N'VALUE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (197, N'VALUES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (198, N'VIEW', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (199, N'WHERE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (200, N'WHILE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (201, N'WITH', CAST(N'2024-11-07' AS Date))
GO
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (202, N'WORK', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (203, N'WRITE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (204, N'ALLSCHEMAS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (205, N'ALLTABLES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (206, N'ALLVIEWS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (207, N'ALLVIEWTEXTS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (208, N'ALLCOLUMNS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (209, N'ALLINDEXES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (210, N'ALLINDEXCOLS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (211, N'ALLUSERS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (212, N'ALLTBTS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (213, N'TABLEPRIVILEGES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (214, N'TBTPRIVILEGES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (215, N'MYSCHEMAS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (216, N'MYTABLES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (217, N'MYTBTS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (218, N'MYVIEWS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (219, N'SCHEMAVIEWS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (220, N'DUAL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (221, N'SCHEMAPRIVILEGES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (222, N'SCHEMATABLES', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (223, N'STATISTICS', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (224, N'USRTBL', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (225, N'STRINGTABLE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (226, N'LONGTABLE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (227, N'DOUBLETABLE', CAST(N'2024-11-07' AS Date))
INSERT [dbo].[SensitiveWords] ([Id], [Word], [DateCreated]) VALUES (228, N'SELECT * FROM', CAST(N'2024-11-07' AS Date))
SET IDENTITY_INSERT [dbo].[SensitiveWords] OFF
GO
ALTER TABLE [dbo].[SensitiveWords] ADD  CONSTRAINT [DF_SensitiveWords_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteSensitiveWord]    Script Date: 2024/11/07 14:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDeleteSensitiveWord]
	@word nvarchar(200) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DELETE FROM dbo.SensitiveWords 
	WHERE Word = @word
END
GO
/****** Object:  StoredProcedure [dbo].[spGetSensitiveWords]    Script Date: 2024/11/07 14:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetSensitiveWords]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.SensitiveWords
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertSensitiveWord]    Script Date: 2024/11/07 14:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertSensitiveWord]
	@word nvarchar(200) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO dbo.SensitiveWords([Word])
	VALUES (@word)

END
GO
USE [master]
GO
ALTER DATABASE [Flash] SET  READ_WRITE 
GO
