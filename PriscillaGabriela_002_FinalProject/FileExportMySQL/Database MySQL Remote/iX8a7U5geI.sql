-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2021 at 11:22 AM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.24-0ubuntu0.18.04.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iX8a7U5geI`
--

-- --------------------------------------------------------

--
-- Table structure for table `AspNetRoleClaims`
--

CREATE TABLE `AspNetRoleClaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetRoles`
--

CREATE TABLE `AspNetRoles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserClaims`
--

CREATE TABLE `AspNetUserClaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserLogins`
--

CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserRoles`
--

CREATE TABLE `AspNetUserRoles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUsers`
--

CREATE TABLE `AspNetUsers` (
  `Id` varchar(255) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext,
  `SecurityStamp` longtext,
  `ConcurrencyStamp` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `AspNetUsers`
--

INSERT INTO `AspNetUsers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('ad301497-14d0-4578-a23b-c4968c544869', 'cher', 'CHER', 'cher@gmail.com', 'CHER@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEMgNn9LpPoDhUIU8DOCSJGpf2uPAYyuNIM7Zwam/v2Dma5EaCqIeMF2gXhmEA44aAA==', 'OSXIHISQN4YN3UXN5UMZMQLMPUQD735Y', '5dd3557d-886b-48dc-80b0-14e81664ec87', NULL, 0, 0, NULL, 1, 0),
('eccc23fb-ef4c-4179-a7a9-c8d8a2e20c78', 'pris', 'PRIS', 'pris@gmail.com', 'PRIS@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEJ04F7+gsmiE6TKD0Ms9D9C+xk7rPMqJRXG4CMekPpYUeCYH1dz9Tvmt5EwecXrUhQ==', 'LK6NXMJX2FEOAGKHDQ4R54PLAZQL3E66', '271ebea8-fcf9-415d-8ed5-91c6786740f5', NULL, 0, 0, NULL, 1, 0),
('f8a6c144-a3cb-40b7-81a3-4a4af094b4a1', 'priscilla96', 'PRISCILLA96', 'priscilla@gmail.com', 'PRISCILLA@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEKDEW1iL21O6cF1SV4PjH0CEFlzg2/8T2qC0IZuCnhURBpZ4kePDsUzixR/ivO6VlQ==', 'PKJ3CN272Q7CIFLTMHUVRZXSKG232GRS', '48c2d5e3-8d07-4c8e-a269-f9255427c656', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserTokens`
--

CREATE TABLE `AspNetUserTokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PaymentDetail`
--

CREATE TABLE `PaymentDetail` (
  `paymentDetailId` int(11) NOT NULL,
  `cardOwnerName` longtext,
  `cardNumber` longtext,
  `expirationDate` datetime(6) NOT NULL,
  `securityCode` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PaymentDetail`
--

INSERT INTO `PaymentDetail` (`paymentDetailId`, `cardOwnerName`, `cardNumber`, `expirationDate`, `securityCode`) VALUES
(1, 'Priscilla Gabriela', '5228791099000012', '2024-11-30 00:00:00.000000', '322'),
(2, 'Ellena Sarah', '4536000123894827', '2023-09-30 00:00:00.000000', '164'),
(3, 'Victorya Massie', '3141592653589793', '2022-12-31 00:00:00.000000', '263'),
(4, 'Evan Jordi', '4544150000550150', '2023-07-31 00:00:00.441000', '548'),
(5, 'Raymond Agustian', '4532670111712127', '2022-08-31 00:00:00.149000', '537');

-- --------------------------------------------------------

--
-- Table structure for table `RefreshTokens`
--

CREATE TABLE `RefreshTokens` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) DEFAULT NULL,
  `Token` longtext,
  `JwtId` longtext,
  `IsUsed` tinyint(1) NOT NULL,
  `IsRevorked` tinyint(1) NOT NULL,
  `AddedDate` datetime(6) NOT NULL,
  `ExpiryDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `RefreshTokens`
--

INSERT INTO `RefreshTokens` (`Id`, `UserId`, `Token`, `JwtId`, `IsUsed`, `IsRevorked`, `AddedDate`, `ExpiryDate`) VALUES
(1, 'f8a6c144-a3cb-40b7-81a3-4a4af094b4a1', 'AHG8CFO6XCZV1GHOZH8ZF4IPIXNC33VEMDEd1681f93-f59e-4c64-a9ec-b608b0f106d1', 'dc0cb0ae-dcfc-40cc-bf23-cfbb13bc4656', 0, 0, '2021-10-20 19:01:53.202735', '2022-04-20 19:01:53.202770'),
(2, 'f8a6c144-a3cb-40b7-81a3-4a4af094b4a1', 'FNE73006OD1LHKORF36H0H58OBVP1D1U8LYf434ccd3-25ba-4329-85f1-c03294583cb6', '30b51b73-91f8-4563-b054-9dd92b2df563', 0, 0, '2021-10-20 19:02:16.821984', '2022-04-20 19:02:16.821984'),
(3, 'eccc23fb-ef4c-4179-a7a9-c8d8a2e20c78', 'GM0NCH1N4NIE3P3Y3OGC4WYLJ9OYR53PV8Ja520c089-35ed-4610-ab10-3d60b3ad0ca9', 'f6632355-7fd9-44e5-b81d-04dcdae234fa', 0, 0, '2021-10-20 20:05:00.928267', '2022-04-20 20:05:00.928302'),
(4, 'eccc23fb-ef4c-4179-a7a9-c8d8a2e20c78', '9IOB1FLB5HVJUPJEOG4VHNCNDP4GS5ZWMVY0d755cf1-0987-4b58-acc5-f8af8e8f23f2', 'f62b5f84-22ac-43da-91c9-0bb2d77024b7', 0, 0, '2021-10-20 20:05:30.058192', '2022-04-20 20:05:30.058193'),
(5, 'f8a6c144-a3cb-40b7-81a3-4a4af094b4a1', 'X342B55F7G6UCM9CPCDTV7SJG315BPHG4WF39debb91-aa89-41ad-b82d-627bfedc1ba8', 'e7a1f394-c474-4207-aa25-d9337b124084', 0, 0, '2021-10-21 04:51:21.123019', '2022-04-21 04:51:21.123083'),
(6, 'f8a6c144-a3cb-40b7-81a3-4a4af094b4a1', 'B1M7F7BY94XBYBZE4NT02WIBJLTUWCLBUEW8b86874e-12f1-43ac-a9b6-8c43e4283052', 'cf24e2d8-7d3b-4d38-aee2-9d4dd7cbba38', 0, 0, '2021-10-21 05:26:52.339135', '2022-04-21 05:26:52.339237'),
(7, 'f8a6c144-a3cb-40b7-81a3-4a4af094b4a1', '7M899X5VHNJS935FZVZLDTAACYFP21E84NO9209edf6-ffff-4863-932e-992df307ea5e', '3b80b4b9-6c55-4acc-85ff-03911baecf99', 0, 0, '2021-10-21 09:40:31.399486', '2022-04-21 09:40:31.399489'),
(8, 'ad301497-14d0-4578-a23b-c4968c544869', 'QURMFQ3HNKBG6QNXL5EFMLBDYSGV5JY7F547e6c6ac0-0a4c-4026-aee1-22d5d596cf87', 'd086a207-624c-4286-ae7b-713d0dfc7dac', 0, 0, '2021-10-21 09:45:48.823537', '2022-04-21 09:45:48.823539'),
(9, 'ad301497-14d0-4578-a23b-c4968c544869', 'Q0RVL01RMAXJJUKOYLDBJ6NIZ90NECCJV3Lf3c1e9c2-7212-4e9e-a377-1e59d3ab13e5', 'd3e51f76-25f2-4c7c-98b1-05335aabb425', 0, 0, '2021-10-21 09:46:09.688925', '2022-04-21 09:46:09.688926'),
(10, 'f8a6c144-a3cb-40b7-81a3-4a4af094b4a1', 'XGX55A0SIV8KMUPWHB686TN4PLZTW2W1ELGf9513d18-6cd5-452a-9f3d-fc144879510f', '0fe0aa73-dac4-4dcd-af3b-14278238c608', 0, 0, '2021-10-21 09:49:09.943289', '2022-04-21 09:49:09.943297');

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20211020185956_Adding authentication', '5.0.11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetRoles`
--
ALTER TABLE `AspNetRoles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetUsers`
--
ALTER TABLE `AspNetUsers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `PaymentDetail`
--
ALTER TABLE `PaymentDetail`
  ADD PRIMARY KEY (`paymentDetailId`);

--
-- Indexes for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_RefreshTokens_UserId` (`UserId`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PaymentDetail`
--
ALTER TABLE `PaymentDetail`
  MODIFY `paymentDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  ADD CONSTRAINT `FK_RefreshTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
