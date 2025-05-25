-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 07:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_ID` int(11) NOT NULL,
  `Book_Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Genre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_ID`, `Book_Title`, `Author`, `Price`, `Genre`) VALUES
(1, 'Atomic Habits', 'James Clear', 3734.00, 'Self-Help'),
(2, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 4230.00, 'Fiction'),
(3, 'The Hobbit', 'J.R.R. Tolkien', 3572.00, 'Fantasy'),
(4, 'Charlotte\'s Web', 'E.B. White', 2272.00, 'Fiction'),
(5, 'The Power of Habit', 'Charles Duhigg', 3572.00, 'Self-help'),
(6, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 3897.00, 'Finance'),
(7, 'Treasure Island', 'Robert Louis Stevenson', 2759.00, 'Adventure'),
(8, 'The Lion, the Witch and the Wardrobe', 'C.S. Lewis', 2922.00, 'Fantasy'),
(9, 'The Famous Five: Five on a Treasure Island', 'Enid Blyton', 2272.00, 'Fiction'),
(10, 'Malory Towers: First Term', 'Enid Blyton', 1950.00, 'Fiction'),
(11, 'Introduction to Algorithms', 'Thomas H. Cormen', 7800.00, 'IT/Technology'),
(12, 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 4222.00, 'Fiction');

-- --------------------------------------------------------

--
-- Table structure for table `salestransaction`
--

CREATE TABLE `salestransaction` (
  `TransactionID` int(11) NOT NULL,
  `BookID` int(11) DEFAULT NULL,
  `QuantitySold` int(11) NOT NULL,
  `UnitPrice` decimal(10,2) DEFAULT NULL,
  `TotalAmount` decimal(10,2) GENERATED ALWAYS AS (`QuantitySold` * `UnitPrice`) STORED,
  `SaleDate` date DEFAULT curdate(),
  `PaymentMethod` enum('Cash','Credit Card','Online') NOT NULL,
  `InvoiceNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salestransaction`
--

INSERT INTO `salestransaction` (`TransactionID`, `BookID`, `QuantitySold`, `UnitPrice`, `SaleDate`, `PaymentMethod`, `InvoiceNo`) VALUES
(1, 5, 6, 3572.00, '2024-10-30', 'Online', 1),
(2, 8, 10, 2922.00, '2024-10-30', 'Credit Card', 1),
(3, 2, 8, 4230.00, '2024-10-30', 'Cash', 1),
(4, 9, 7, 2272.00, '2024-10-30', 'Cash', 2),
(5, 12, 2, 4222.00, '2024-10-30', 'Cash', 2),
(6, 4, 2, 2272.00, '2024-10-30', 'Credit Card', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(10) DEFAULT NULL,
  `password` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('employee1', 'passwo'),
('employee2', 'ab@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `salestransaction`
--
ALTER TABLE `salestransaction`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `BookID` (`BookID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `salestransaction`
--
ALTER TABLE `salestransaction`
  MODIFY `TransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `salestransaction`
--
ALTER TABLE `salestransaction`
  ADD CONSTRAINT `salestransaction_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `books` (`Book_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
