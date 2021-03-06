-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 06:19 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookequip`
--

CREATE TABLE `bookequip` (
  `id` int(10) NOT NULL,
  `equipment` varchar(30) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booth`
--

CREATE TABLE `booth` (
  `BoothID` int(11) NOT NULL,
  `BoothLocation` varchar(10) NOT NULL,
  `ParticipantID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booth`
--

INSERT INTO `booth` (`BoothID`, `BoothLocation`, `ParticipantID`) VALUES
(12, 'A', 6);

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `CommitteeID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Contact` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `committee`
--

INSERT INTO `committee` (`CommitteeID`, `Name`, `Age`, `Gender`, `Contact`, `Username`, `Email`, `Password`) VALUES
(1, 'jiayi', 22, 'Female', 124568932, 'jyjy123', 'jyjy@gmail.com', '123456jy'),
(2, 'kiki', 25, 'Male', 12375896, 'kiki999', 'kiki@mail.com', 'kiki889'),
(3, 'kiki', 25, 'Male', 123456789, 'kiki999', 'kiki@mail.com', 'kiki8889'),
(4, 'kiki', 25, 'Male', 123456789, 'kiki999', 'kiki@mail.com', 'kiki8889'),
(5, 'kiki', 25, 'Male', 123456789, 'kiki999', 'kiki@mail.com', 'kiki8889'),
(6, 'Jia Soon Loo', 16, 'Male', 177409910, 'jiasoon', 'loojiasoon@gmail.com', '123'),
(7, 'jiayi', 21, 'Male', 177409910, 'jy', 'jy@gmail.com', '123'),
(8, 'ljy', 22, 'Female', 12345, 'eee', 'few@gnerwge', '12'),
(9, 'jijijii', 23, 'Male', 177409910, 'qwqww', '1wdfb@fegegege', '1'),
(10, 'Jia', 22, 'Male', 177409910, 'ggg', '3fefe@wfwfwf', '33'),
(11, 'Jia', 22, 'Male', 177409910, 'ggg', '3fefe@wfwfwf', '33'),
(12, 'Jia', 22, 'Male', 177409910, 'ggg', '3fefe@wfwfwf', '33'),
(13, 'Jia', 22, 'Male', 177409910, 'ggg', '3fefe@wfwfwf', '33'),
(14, 'Jia', 22, 'Male', 177409910, 'ggg', '3fefe@wfwfwf', '33'),
(15, 'jjjj', 33, 'Female', 12345, 'rrrrrrr', 'fheiuhho@iiio', '11'),
(16, 'chyi', 24, 'Female', 111, 'chyi', 'chyi@gmail.com', 'chyi'),
(17, 'www', 24, 'Male', 11111, 'www', 'www@ggg.com', 'www');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(10) NOT NULL,
  `equipment` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `EvaluarionID` int(11) NOT NULL,
  `Mark` int(11) NOT NULL,
  `Remark` varchar(100) NOT NULL,
  `ParticipantID` int(11) NOT NULL,
  `JuryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`EvaluarionID`, `Mark`, `Remark`, `ParticipantID`, `JuryID`) VALUES
(3, 20, 'good', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `jury`
--

CREATE TABLE `jury` (
  `JuryID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Contact` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jury`
--

INSERT INTO `jury` (`JuryID`, `Name`, `Age`, `Gender`, `Contact`, `Username`, `Email`, `Password`) VALUES
(8, 'ccc', 22, 'Female', 333, 'ccc', 'ccc@gmail.com', 'ccc');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `ParticipantID` int(11) NOT NULL,
  `GroupName` varchar(20) NOT NULL,
  `InnovationProduct` varchar(30) NOT NULL,
  `MemberName` varchar(100) NOT NULL,
  `MemberAge` varchar(100) NOT NULL,
  `MemberGender` varchar(100) NOT NULL,
  `MemberContact` varchar(200) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`ParticipantID`, `GroupName`, `InnovationProduct`, `MemberName`, `MemberAge`, `MemberGender`, `MemberContact`, `Username`, `Email`, `Password`) VALUES
(1, 'alpha', 'robot', 'mary, has, a, little, lamb', '0', '', '', '', '', ''),
(2, 'alpha', 'robot', 'mary, has, a, little, lamb', '0', '', '', '', '', ''),
(3, 'beta', 'airplane', 'js, is, a, fat, pig', '25', 'Male, Female, Female', '0127895544, 01778422', 'betabeta', 'beta@gmail.com', 'beta111'),
(4, 'beta', 'airplane', 'js, is, a, fat, pig', '25', 'Male, Female, Female, Male, Male', '0127895544, 0177842256, 0124487555, 0177542222, 0198455212', 'betabeta', 'beta@gmail.com', 'beta111'),
(5, 'quota', 'car', 'qwe, asd, zxc, rty, fgh', '21', 'Male, Female, Male, Female, Male', '123, 456, 789, 852, 741', 'quota', 'qua@mail.com', 'qqq123'),
(6, 'tttlm', 'oop', 'lol, tot, juj, tut, lul', '21', 'Male, Male, Female, Female, Female', '0123456, 0147895, 0214577, 0114578, 0995642', 'tttlmm', 'ttt@mail.xom', 'ttt123'),
(7, 'qweqwe', 'ooppp', 'qweq, werwe, ertert, rtyrttyu, tyutt', '22, 23, 20, 21, 24', 'Male, Female, Male, Female, Female', '011111, 022222, 011133, 0124444, 0125555', 'qwerty', 'qwerty@mail.com', 'qwe'),
(8, 'www', 'www', 'www, www, www, www, www', '24, 22, 22, 22, 22', 'Female, Male, Female, Male, Female', '111, 32, 32, 32, 32', 'www', 'www@gmail.com', 'www');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booth`
--
ALTER TABLE `booth`
  ADD PRIMARY KEY (`BoothID`),
  ADD KEY `ParticipantID` (`ParticipantID`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
  ADD PRIMARY KEY (`CommitteeID`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`EvaluarionID`),
  ADD KEY `ParticipantID` (`ParticipantID`),
  ADD KEY `JuryID` (`JuryID`);

--
-- Indexes for table `jury`
--
ALTER TABLE `jury`
  ADD PRIMARY KEY (`JuryID`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`ParticipantID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booth`
--
ALTER TABLE `booth`
  MODIFY `BoothID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `committee`
--
ALTER TABLE `committee`
  MODIFY `CommitteeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `EvaluarionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jury`
--
ALTER TABLE `jury`
  MODIFY `JuryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `ParticipantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booth`
--
ALTER TABLE `booth`
  ADD CONSTRAINT `booth_ibfk_1` FOREIGN KEY (`ParticipantID`) REFERENCES `participants` (`ParticipantID`);

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`ParticipantID`) REFERENCES `participants` (`ParticipantID`),
  ADD CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`JuryID`) REFERENCES `jury` (`JuryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
