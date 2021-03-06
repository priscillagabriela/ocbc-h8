USE [master]
GO
/****** Object:  Database [Bank]    Script Date: 13/10/2021 22:38:31 ******/
CREATE DATABASE [Bank]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bank', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Bank.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bank_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Bank_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Bank] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bank].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bank] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bank] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bank] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bank] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bank] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bank] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bank] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bank] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bank] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bank] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bank] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bank] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bank] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bank] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bank] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bank] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bank] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bank] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bank] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bank] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bank] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bank] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bank] SET RECOVERY FULL 
GO
ALTER DATABASE [Bank] SET  MULTI_USER 
GO
ALTER DATABASE [Bank] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bank] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bank] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bank] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bank] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Bank] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Bank', N'ON'
GO
ALTER DATABASE [Bank] SET QUERY_STORE = OFF
GO
USE [Bank]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 13/10/2021 22:38:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[customerNumber] [varchar](10) NOT NULL,
	[customerName] [varchar](100) NULL,
	[contactLastName] [varchar](50) NULL,
	[contactFirstName] [varchar](50) NULL,
	[phone] [varchar](13) NULL,
	[addressLine1] [varchar](100) NULL,
	[addressLine2] [varchar](100) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[postalCode] [varchar](5) NULL,
	[country] [varchar](50) NULL,
	[salesRepEmployeeNumber] [varchar](10) NULL,
	[creditLimit] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[customerNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 13/10/2021 22:38:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[employeeNumber] [varchar](10) NOT NULL,
	[lastName] [varchar](50) NULL,
	[firstName] [varchar](50) NULL,
	[extension] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[officeCode] [varchar](10) NULL,
	[reportsTo] [varchar](50) NULL,
	[jobTitle] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[employeeNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offices]    Script Date: 13/10/2021 22:38:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offices](
	[officeCode] [varchar](10) NOT NULL,
	[city] [varchar](50) NULL,
	[phone] [varchar](13) NULL,
	[addressLine1] [varchar](100) NULL,
	[addressLine2] [varchar](100) NULL,
	[state] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[postalCode] [varchar](5) NULL,
	[territory] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[officeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 13/10/2021 22:38:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[orderLineNumber] [varchar](10) NOT NULL,
	[orderNumber] [varchar](10) NULL,
	[productCode] [varchar](10) NULL,
	[quantityOrdered] [int] NULL,
	[priceEach] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderLineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 13/10/2021 22:38:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderNumber] [varchar](10) NOT NULL,
	[orderDate] [date] NULL,
	[requiredDate] [date] NULL,
	[shippedData] [date] NULL,
	[status] [varchar](50) NULL,
	[comments] [varchar](150) NULL,
	[customerNumber] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 13/10/2021 22:38:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[checkNumber] [varchar](10) NOT NULL,
	[customerNumber] [varchar](10) NULL,
	[paymentDate] [date] NULL,
	[amount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[checkNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productlines]    Script Date: 13/10/2021 22:38:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productlines](
	[productLine] [varchar](50) NOT NULL,
	[textDescription] [varchar](150) NULL,
	[htmlDescription] [varchar](150) NULL,
	[image] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[productLine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 13/10/2021 22:38:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productCode] [varchar](10) NOT NULL,
	[productName] [varchar](100) NULL,
	[productLine] [varchar](50) NULL,
	[productScale] [varchar](50) NULL,
	[productVendor] [varchar](100) NULL,
	[productDescription] [varchar](150) NULL,
	[quantityInStock] [int] NULL,
	[buyPrice] [int] NULL,
	[MSRP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [fk_customers_employee] FOREIGN KEY([salesRepEmployeeNumber])
REFERENCES [dbo].[Employee] ([employeeNumber])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [fk_customers_employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [fk_employee_offices] FOREIGN KEY([officeCode])
REFERENCES [dbo].[Offices] ([officeCode])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [fk_employee_offices]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_orderdetails_orders] FOREIGN KEY([orderNumber])
REFERENCES [dbo].[Orders] ([orderNumber])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_orderdetails_orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_orderdetails_products] FOREIGN KEY([productCode])
REFERENCES [dbo].[Products] ([productCode])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_orderdetails_products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_orders_customers] FOREIGN KEY([customerNumber])
REFERENCES [dbo].[Customers] ([customerNumber])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_orders_customers]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [fk_payments_customers] FOREIGN KEY([customerNumber])
REFERENCES [dbo].[Customers] ([customerNumber])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [fk_payments_customers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_products_productlines] FOREIGN KEY([productLine])
REFERENCES [dbo].[Productlines] ([productLine])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_products_productlines]
GO
USE [master]
GO
ALTER DATABASE [Bank] SET  READ_WRITE 
GO
