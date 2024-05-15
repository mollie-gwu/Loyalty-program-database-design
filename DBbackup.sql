-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 05, 2023 at 03:17 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AIRBNB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `BookingID` int(11) NOT NULL,
  `GuestID` int(11) NOT NULL,
  `HostID` int(11) NOT NULL,
  `CheckInDate` date NOT NULL,
  `BookingTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PropertyID` int(11) NOT NULL,
  `CheckOutDate` date DEFAULT NULL,
  `BookingDetail` varchar(255) DEFAULT NULL,
  `PriceByDay` decimal(10,2) DEFAULT NULL,
  `TotalPrice` decimal(10,2) DEFAULT NULL,
  `Discount` decimal(5,2) DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL,
  `PointsEarned` int(11) DEFAULT NULL,
  `GuestLoyaltyID` int(11) DEFAULT NULL,
  `HostLoyaltyID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`BookingID`, `GuestID`, `HostID`, `CheckInDate`, `BookingTimeStamp`, `PropertyID`, `CheckOutDate`, `BookingDetail`, `PriceByDay`, `TotalPrice`, `Discount`, `PaymentMethod`, `PointsEarned`, `GuestLoyaltyID`, `HostLoyaltyID`) VALUES
(1464, 12, 184, '2023-03-15', '2023-12-05 03:15:57', 468, '2023-03-18', 'Deluxe Room', '920.00', '600.00', '25.00', 'Credit', 60, 521, '785'),
(1465, 13, 85, '2023-04-10', '2023-12-05 03:15:57', 644, '2023-04-13', 'Standard Room', '100.00', '500.00', '10.00', 'Debit', 40, 534, '527'),
(2358, 465, 958, '2023-09-30', '2023-12-05 03:15:57', 1446, '2023-10-05', 'Deluxe Room', '120.00', '670.00', '15.00', 'Debit', 75, 515, '369'),
(4576, 23, 75, '2023-05-25', '2023-12-05 03:15:57', 744, '2023-05-29', 'Suite', '150.00', '750.00', '15.00', 'Credit', 70, 554, '985'),
(4688, 10, 147, '2023-01-05', '2023-12-05 03:15:57', 244, '2023-01-13', 'Standard Room', '100.00', '900.00', '20.00', 'Credit', 50, 564, '321'),
(5326, 46, 533, '2023-06-20', '2023-12-05 03:15:57', 758, '2023-06-23', 'Deluxe Room', '120.00', '690.00', '20.00', 'Debit', 50, 500, '425'),
(6437, 286, 65, '2023-08-15', '2023-12-05 03:15:57', 944, '2023-08-19', 'Suite', '150.00', '750.00', '5.00', 'Debit', 90, 542, '412'),
(6459, 11, 139, '2023-02-20', '2023-12-05 03:15:57', 344, '2023-02-25', 'Suite', '150.00', '750.00', '30.00', 'Debit', 80, 577, '459'),
(7438, 564, 811, '2023-10-20', '2023-12-05 03:15:57', 2468, '2023-10-23', 'Standard Room', '100.00', '900.00', '10.00', 'Debit', 60, 517, '897'),
(7845, 53, 55, '2023-07-05', '2023-12-05 03:16:19', 844, '2023-07-10', 'Standard Room', '100.00', '470.00', '25.00', 'Credit', 30, 519, '745');

-- --------------------------------------------------------

--
-- Table structure for table `Description`
--

CREATE TABLE `Description` (
  `PropertyID` int(11) NOT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `NumberofBedrooms` int(11) DEFAULT NULL,
  `NumberofBathrooms` int(11) DEFAULT NULL,
  `AvailabilityTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Description`
--

INSERT INTO `Description` (`PropertyID`, `Description`, `NumberofBedrooms`, `NumberofBathrooms`, `AvailabilityTimestamp`) VALUES
(244, 'Modern Apartment', 2, 2, '2023-01-02 16:30:00'),
(344, 'Urban', 1, 1, '2023-02-11 01:15:00'),
(468, 'Cozy Apartment', 2, 1, '2023-03-10 17:00:00'),
(644, 'Spacious Condo', 3, 2, '2023-04-01 19:30:00'),
(744, 'Luxury Penthouse', 4, 3, '2023-05-05 13:15:00'),
(758, 'Villa', 5, 4, '2023-06-15 18:45:00'),
(844, 'City Apartment', 2, 2, '2023-07-02 05:45:00'),
(944, 'City Condo', 1, 1, '2023-08-11 21:00:00'),
(1446, 'Beautiful Cottage', 1, 1, '2023-09-10 22:45:00'),
(2468, 'Mountain View', 3, 2, '2023-10-16 02:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `Guest`
--

CREATE TABLE `Guest` (
  `GuestID` int(11) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `GuestPaymentInformation` varchar(200) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `GuestAddress` varchar(100) DEFAULT NULL,
  `GuestCity` varchar(50) DEFAULT NULL,
  `GuestState` varchar(50) DEFAULT NULL,
  `GuestZipcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Guest`
--

INSERT INTO `Guest` (`GuestID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `GuestPaymentInformation`, `DOB`, `GuestAddress`, `GuestCity`, `GuestState`, `GuestZipcode`) VALUES
(10, 'Mike', 'Thomas', 'mk1@gmail.com', '4445556666', 'Credit', '2000-03-31', '935 Whaley Lane', 'West Allis', 'WI', '51017'),
(11, 'Tike', 'Mas', 'mk2@gmail.com', '5556667777', 'Debit', '1990-04-24', '756 Whaley Lane', 'West Allis', 'WI', '53227'),
(12, 'Pike', 'Stoman', 'plk@gmail.com', '4565779867', 'Credit', '1984-07-12', '4281 Payne Street', 'Martinsville', 'VA', '24112'),
(13, 'Kate', 'Bowman', 'kb1@gmail.com', '9565776867', 'Debit', '1960-05-05', '3180 Passaic Street', 'District of Columbia', 'DC', '20011'),
(23, 'Nick', 'Ortiz', 'dgreenfelder@schroeder.net', '7195880125', 'Credit', '1984-02-28', '1615 Berry Street', '  Colorado Springs', ' CO', '  80904'),
(46, 'Elnora', 'Grant', 'ejacobs@romaguera.org', '9897280151', 'Dedit', '1846-04-24', '  3100 Ripple Street', 'Hale ', ' MI', '48739'),
(53, 'Edison', 'Kreiger', 'klbrown@gmail.com', '8556917568', 'Credit', '1956-04-14', '400 Prospect Street', 'Vineland', 'NJ', '08360'),
(286, 'Jalyn', 'Hammes', 'maltenwerth@hansen.net', '8044743183', 'Dedit', '1983-03-26', '  1934 Melody Lane', 'Thousand Palms', 'CA', '92276'),
(465, 'Karlie', 'Brown', 'maeve81@yahoo.com', '406-452-7196', 'Dedit', '1996-02-25', '1291 West Fork Street', 'Pompano Beach', ' FL', '33073'),
(564, 'Assunta', 'Hillpert', 'klocko.estell@stark.com', '4083713461', 'Debit', '1994-03-24', '  4322 Driftwood Road', 'San Jose', 'CA', '  95118');

-- --------------------------------------------------------

--
-- Table structure for table `GuestLoyaltyProfile`
--

CREATE TABLE `GuestLoyaltyProfile` (
  `GuestLoyaltyID` int(11) NOT NULL,
  `GuestID` int(11) DEFAULT NULL,
  `GLoyaltyBenefits` varchar(255) DEFAULT NULL,
  `GLoyaltyName` varchar(255) DEFAULT NULL,
  `GPointsEarned` int(11) DEFAULT NULL,
  `GPointsExpired` int(11) DEFAULT NULL,
  `GPointsRedeemed` int(11) DEFAULT NULL,
  `GPointsBalance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GuestLoyaltyProfile`
--

INSERT INTO `GuestLoyaltyProfile` (`GuestLoyaltyID`, `GuestID`, `GLoyaltyBenefits`, `GLoyaltyName`, `GPointsEarned`, `GPointsExpired`, `GPointsRedeemed`, `GPointsBalance`) VALUES
(500, 46, 'Regular', 'Silver', 400, 30, 150, 220),
(515, 465, 'Deluxe', 'Gold', 600, 50, 200, 350),
(517, 564, 'Preferred', 'Silver', 350, 25, 120, 205),
(519, 53, 'Pro', 'Platinum', 900, 90, 350, 560),
(521, 12, 'Elite', 'Platinum', 800, 80, 300, 520),
(534, 13, 'Standard', 'Bronze', 200, 10, 50, 140),
(542, 286, 'Essential', 'Bronze', 250, 15, 80, 155),
(554, 23, 'VIP', 'Gold', 700, 60, 250, 390),
(564, 10, 'Premium', 'Gold', 500, 50, 200, 250),
(577, 11, 'Basic', 'Silver', 300, 20, 100, 180);

-- --------------------------------------------------------

--
-- Table structure for table `Host`
--

CREATE TABLE `Host` (
  `HostID` int(11) NOT NULL,
  `HostFirstName` varchar(100) DEFAULT NULL,
  `HostLastName` varchar(100) DEFAULT NULL,
  `HostEmail` varchar(50) DEFAULT NULL,
  `HostDOB` date DEFAULT NULL,
  `HostPaymentInformation` varchar(200) DEFAULT NULL,
  `HostPhoneNumber` varchar(20) DEFAULT NULL,
  `HostAddress` varchar(100) DEFAULT NULL,
  `HostCity` varchar(50) DEFAULT NULL,
  `HostState` varchar(50) DEFAULT NULL,
  `HostZipcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Host`
--

INSERT INTO `Host` (`HostID`, `HostFirstName`, `HostLastName`, `HostEmail`, `HostDOB`, `HostPaymentInformation`, `HostPhoneNumber`, `HostAddress`, `HostCity`, `HostState`, `HostZipcode`) VALUES
(55, 'Jeff', 'Cole', 'jc@gmail.com', '1990-05-21', 'Debit', '1114449999', '510 Neuport Lane', ' Marietta', 'GA', '30064'),
(65, 'Sarah', 'Lavith', 'sl2@gmail,com', '1995-09-10', 'PayPal', '2225558888', '3507 Vine Street', 'Burr Ridge', 'IL', '61257'),
(75, 'Martha', 'Poles', 'mp1@gmail,com', '1997-12-02', 'Debit', '3336667777', '  657 Armory Road', '  Fayetteville', 'NC', '  28301'),
(85, 'Paul', 'Tabas', 'pault@gmail,com', '1992-04-14', 'PayPal', '2454567825', '  995 Ripple Street', '  Linwood', 'MI', '  48634'),
(139, 'Rogelio', 'Hauck', 'art.flatley@yahoo.com', '1995-10-23', 'Debit', '2565950520', ' 2912 Marcus Street', 'Huntsville', '  AL', '35802'),
(147, 'Helga', 'Hauck', 'titus84@marquardt.com', '1991-05-03', 'Savings', '7857352014', '1992 Dog Hill Lane', ' Mountain Home', 'Tx', '78058'),
(184, 'Jerret', 'Hirthe', 'bashirian.alexander@hotmail.com', '1985-08-03', 'Debit', '5097153854', '4387 Calico Drive', 'Coeur D Alene', 'WA', '  83814'),
(533, 'Rosario', 'Adams', 'jermain.davis@bailey.com', '1980-03-08', 'Debit', '3153210361', '  3361 Oak Street', '  Massena', '  NY', '  13662'),
(811, 'Neoma', 'Zboncak', 'agottlieb@rutherford.com', '1994-04-02', 'Debit', '4146058560', '  4357 Woodlawn Drive', '  West Allis', 'WI', '53227'),
(958, 'Garrett', 'Emnh', 'therese80@hotmail.com', '1994-01-01', 'PayPal', '5306797571', '  4053 Eagles Nest Drive', 'Bangor', 'CA', '95914');

-- --------------------------------------------------------

--
-- Table structure for table `HostLoyaltyProfile`
--

CREATE TABLE `HostLoyaltyProfile` (
  `HostLoyaltyID` int(11) NOT NULL,
  `HostID` int(11) DEFAULT NULL,
  `HLoyaltyBenefits` varchar(255) DEFAULT NULL,
  `HLoyaltyName` varchar(255) DEFAULT NULL,
  `HPointsEarned` int(11) DEFAULT NULL,
  `HPointsExpired` int(11) DEFAULT NULL,
  `HPointsRedeemed` int(11) DEFAULT NULL,
  `HPointsBalance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HostLoyaltyProfile`
--

INSERT INTO `HostLoyaltyProfile` (`HostLoyaltyID`, `HostID`, `HLoyaltyBenefits`, `HLoyaltyName`, `HPointsEarned`, `HPointsExpired`, `HPointsRedeemed`, `HPointsBalance`) VALUES
(321, 147, 'Priority Service', 'Silver', 405, 35, 157, 230),
(369, 958, 'Preferred Deals', 'Silver', 356, 257, 128, 235),
(412, 65, 'Furniture Coupon', 'Silver', 345, 215, 652, 180),
(425, 533, 'Basic Perks', 'Bronze', 240, 156, 85, 165),
(459, 139, 'VIP Treatment', 'Gold', 730, 69, 254, 398),
(527, 85, 'Access to cleaning service', '\r\n     Bronze', 206, 15, 507, 145),
(745, 55, 'Discounts', 'Gold', 700, 6, 600, 257),
(785, 184, 'Premium Customer Support,Electronic and furniture coupon', 'Platinum', 908, 99, 360, 590),
(897, 811, 'Deluxe Package', 'Gold', 609, 57, 205, 357),
(985, 75, 'Premium Customer Support,Electronic and furniture coupon', 'Platinum', 860, 87, 309, 527);

-- --------------------------------------------------------

--
-- Table structure for table `Message`
--

CREATE TABLE `Message` (
  `GuestID` int(11) NOT NULL,
  `HostID` int(11) NOT NULL,
  `MessageTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MessageDetail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Message`
--

INSERT INTO `Message` (`GuestID`, `HostID`, `MessageTimeStamp`, `MessageDetail`) VALUES
(10, 147, '2023-12-02 19:50:14', 'Keys at the entrance'),
(11, 139, '2023-12-02 19:50:14', 'Keys at the entrance'),
(12, 184, '2023-12-02 19:50:14', 'Keys at the entrance'),
(13, 85, '2023-12-02 19:50:14', 'Keys at the entrance'),
(23, 75, '2023-12-02 19:50:14', 'Keys at the entrance'),
(46, 533, '2023-12-02 19:50:14', 'Keys at the entrance'),
(53, 55, '2023-12-02 19:50:14', 'Keys at the entrance'),
(286, 65, '2023-12-02 19:50:14', 'Keys at the entrance'),
(465, 958, '2023-12-02 19:50:14', 'Keys at the entrance'),
(564, 811, '2023-12-02 19:50:14', 'Keys at the entrance');

-- --------------------------------------------------------

--
-- Table structure for table `Property`
--

CREATE TABLE `Property` (
  `PropertyID` int(11) NOT NULL,
  `HostID` int(11) NOT NULL,
  `PropertyAddress` varchar(100) DEFAULT NULL,
  `PropertyCity` varchar(50) DEFAULT NULL,
  `PropertyState` varchar(50) DEFAULT NULL,
  `PropertyZipcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Property`
--

INSERT INTO `Property` (`PropertyID`, `HostID`, `PropertyAddress`, `PropertyCity`, `PropertyState`, `PropertyZipcode`) VALUES
(244, 147, '456 Oak St', 'Los Angeles', 'CA', '90001'),
(344, 139, '123 Main St', 'New York', 'NY', '10001'),
(468, 184, '789 Elm St', 'Chicago', 'IL', '60601'),
(644, 85, '4356 Peace Avenue', 'West Virginia', 'WV', '24831'),
(744, 75, '5647 Grace Street', 'Dallas', 'TX', '75204 '),
(758, 533, '321 Pine St', 'San Francisco', 'CA', '94102'),
(844, 55, '1011 Sunshine Street', 'Philadelphia', 'PA', '19111'),
(944, 65, '7638 Hope Street', 'Albuquerque', 'NM', '87101'),
(1446, 958, '777 Birch St', 'Seattle', 'WA', '98101'),
(2468, 811, '555 Maple St', 'Miami', 'FL', '33101');

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE `Review` (
  `GuestID` int(11) NOT NULL,
  `ReviewDateandTime` date NOT NULL,
  `PropertyID` int(11) NOT NULL,
  `GuestLoyaltyID` int(11) DEFAULT NULL,
  `Ratings` int(11) DEFAULT NULL,
  `HostLoyaltyID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Review`
--

INSERT INTO `Review` (`GuestID`, `ReviewDateandTime`, `PropertyID`, `GuestLoyaltyID`, `Ratings`, `HostLoyaltyID`) VALUES
(10, '2023-01-13', 244, 564, 5, '321'),
(11, '2023-02-25', 344, 577, 5, '459'),
(12, '2023-03-18', 468, 521, 5, '785'),
(13, '2023-04-13', 644, 534, 4, '527'),
(23, '2023-05-29', 744, 554, 5, '985'),
(46, '2023-06-23', 758, 500, 5, '425'),
(53, '2023-07-10', 844, 519, 5, '745'),
(286, '2023-08-19', 944, 542, 5, '412'),
(465, '2023-10-05', 1446, 515, 4, '369'),
(564, '2023-10-23', 2468, 517, 4, '897');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `Booking_FK1` (`GuestID`),
  ADD KEY `Booking_FK2` (`HostID`),
  ADD KEY `Booking_FK3` (`PropertyID`),
  ADD KEY `Booking_FK4` (`GuestLoyaltyID`);

--
-- Indexes for table `Description`
--
ALTER TABLE `Description`
  ADD PRIMARY KEY (`PropertyID`);

--
-- Indexes for table `Guest`
--
ALTER TABLE `Guest`
  ADD PRIMARY KEY (`GuestID`);

--
-- Indexes for table `GuestLoyaltyProfile`
--
ALTER TABLE `GuestLoyaltyProfile`
  ADD PRIMARY KEY (`GuestLoyaltyID`),
  ADD KEY `GuestLoyaltyProfile_FK2` (`GuestID`);

--
-- Indexes for table `Host`
--
ALTER TABLE `Host`
  ADD PRIMARY KEY (`HostID`);

--
-- Indexes for table `HostLoyaltyProfile`
--
ALTER TABLE `HostLoyaltyProfile`
  ADD PRIMARY KEY (`HostLoyaltyID`),
  ADD KEY `HostLoyaltyProfile_FK2` (`HostID`);

--
-- Indexes for table `Message`
--
ALTER TABLE `Message`
  ADD PRIMARY KEY (`GuestID`,`HostID`,`MessageTimeStamp`),
  ADD KEY `Message_FK2` (`HostID`);

--
-- Indexes for table `Property`
--
ALTER TABLE `Property`
  ADD PRIMARY KEY (`PropertyID`),
  ADD KEY `Property_FK1` (`HostID`);

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD PRIMARY KEY (`GuestID`,`PropertyID`,`ReviewDateandTime`),
  ADD KEY `Review_FK2` (`GuestLoyaltyID`),
  ADD KEY `Review_FK3` (`PropertyID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `Booking_FK1` FOREIGN KEY (`GuestID`) REFERENCES `Guest` (`GuestID`),
  ADD CONSTRAINT `Booking_FK2` FOREIGN KEY (`HostID`) REFERENCES `Host` (`HostID`),
  ADD CONSTRAINT `Booking_FK3` FOREIGN KEY (`PropertyID`) REFERENCES `Property` (`PropertyID`),
  ADD CONSTRAINT `Booking_FK4` FOREIGN KEY (`GuestLoyaltyID`) REFERENCES `GuestLoyaltyProfile` (`GuestLoyaltyID`);

--
-- Constraints for table `Description`
--
ALTER TABLE `Description`
  ADD CONSTRAINT `Description_FK1` FOREIGN KEY (`PropertyID`) REFERENCES `Property` (`PropertyID`);

--
-- Constraints for table `GuestLoyaltyProfile`
--
ALTER TABLE `GuestLoyaltyProfile`
  ADD CONSTRAINT `GuestLoyaltyProfile_FK2` FOREIGN KEY (`GuestID`) REFERENCES `Guest` (`GuestID`);

--
-- Constraints for table `HostLoyaltyProfile`
--
ALTER TABLE `HostLoyaltyProfile`
  ADD CONSTRAINT `HostLoyaltyProfile_FK2` FOREIGN KEY (`HostID`) REFERENCES `Host` (`HostID`);

--
-- Constraints for table `Message`
--
ALTER TABLE `Message`
  ADD CONSTRAINT `Message_FK1` FOREIGN KEY (`GuestID`) REFERENCES `Guest` (`GuestID`),
  ADD CONSTRAINT `Message_FK2` FOREIGN KEY (`HostID`) REFERENCES `Host` (`HostID`);

--
-- Constraints for table `Property`
--
ALTER TABLE `Property`
  ADD CONSTRAINT `Property_FK1` FOREIGN KEY (`HostID`) REFERENCES `Host` (`HostID`);

--
-- Constraints for table `Review`
--
ALTER TABLE `Review`
  ADD CONSTRAINT `Review_FK1` FOREIGN KEY (`GuestID`) REFERENCES `Guest` (`GuestID`),
  ADD CONSTRAINT `Review_FK2` FOREIGN KEY (`GuestLoyaltyID`) REFERENCES `GuestLoyaltyProfile` (`GuestLoyaltyID`),
  ADD CONSTRAINT `Review_FK3` FOREIGN KEY (`PropertyID`) REFERENCES `Property` (`PropertyID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
