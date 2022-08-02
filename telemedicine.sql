-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 06:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telemedicine`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `DOC_ID` int(11) NOT NULL,
  `FULLNAMES` varchar(30) NOT NULL,
  `SPECIALITY` varchar(20) NOT NULL,
  `EMAIL` varchar(20) NOT NULL,
  `CONTACT` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`DOC_ID`, `FULLNAMES`, `SPECIALITY`, `EMAIL`, `CONTACT`) VALUES
(1, 'UWASE TAMARI', 'Dermatologists', 'uwaset@gmail.com', 78564329),
(2, 'KAYESU JANET', 'Allergists', 'kayesu32@gmail.com', 2147483647),
(3, 'MUCYO JAMES', 'Psychiatrists', 'mucyo45@gmail.com', 783451206),
(4, 'KABATESI RENATHA', 'primary care physici', 'renathakab@gmail.com', 785699418),
(5, 'ASIIMWE PHIONA', 'Infectious disease d', 'phioasiimwe@gmail.co', 786783214),
(6, 'MULISA ANNA', 'Psychiatrists', 'annamuli@gmail.com', 786754323);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LOG_ID` int(11) NOT NULL,
  `EMAIL` varchar(23) NOT NULL,
  `PASSWORD` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `P_ID` int(12) NOT NULL,
  `FIRSTNAME` varchar(20) NOT NULL,
  `LASTNAME` varchar(20) NOT NULL,
  `COUNTRY` varchar(20) NOT NULL,
  `EMAIL` varchar(20) NOT NULL,
  `PASSWORD` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`P_ID`, `FIRSTNAME`, `LASTNAME`, `COUNTRY`, `EMAIL`, `PASSWORD`) VALUES
(3, 'CHRISTELLE', 'ANNY IRAKOZE', 'CONGO', 'anny23@gmail.com', 'realmonsters'),
(4, 'LITHA', 'UMUNEZA', 'KENYA', 'umulitha@gmail.com', 'klitha'),
(5, 'LATIFAH', 'AKIMANA', 'RWANDA', 'kimti@gmail.com', '@rrith'),
(6, 'GRACE', 'MUGWANEZA', 'TANZANIA', 'grace32@gmail.com', 'uuuhji'),
(7, 'VANESSA', 'UMURERWA', 'RWANDA', 'vavaumu@gmail.com', 'ttttyu'),
(8, 'TAMARI', 'UWASE', 'CONGO', 'tamari@gmail.com', 'wear'),
(9, 'KELLY ', 'TETA', 'RWANDA', 'kelly@gmail.com', 'teta123'),
(11, 'MUCYO', 'ALex', 'KENYA', 'mucyoale2@gmail.com', 'mucyoalex'),
(13, 'MUGABO', 'MOSES', 'UGANDA', 'mugamoses231@gmail.c', 'mosesm'),
(14, 'MUGABO', 'MOSES', 'UGANDA', 'mugamoses231@gmail.c', 'mosesm'),
(15, 'HIGIRO', 'ROGERS', 'UGANDA', 'higro@gmail.com', 'youuu'),
(16, 'emima', 'ISHIMWE', 'RWANDA', 'niyomuhozaemima@gmai', '55555'),
(17, 'emima', 'ISHIMWE', 'RWANDA', 'niyomuhozaemima@gmai', '55555'),
(18, 'EMMY', 'KIZZA', 'KENYA', 'kizae@gmail.com', 'ytruo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`DOC_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`P_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `DOC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `P_ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
