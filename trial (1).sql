-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 01:48 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trial`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `ID` int(4) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `DEPARTMENT` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `NAME`, `DEPARTMENT`) VALUES
(1, 'daniel', 'firstdepartment'),
(16, 'dan', 'dan'),
(15, 'dan', 'dan'),
(14, 'dan', 'dan'),
(13, 'dan', 'dan'),
(12, 'dan', 'dan'),
(11, 'dan', 'dan'),
(17, 'dan', 'dan');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `No` int(4) NOT NULL,
  `train` varchar(25) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `UserID` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`No`, `train`, `StartDate`, `EndDate`, `UserID`) VALUES
(1, 'ict training', '2022-11-26', '2022-11-29', '8'),
(2, 'ict training', '2022-11-26', '2022-11-29', '8'),
(3, 'Training - 213132342341', '2022-11-26', '2022-11-29', '8');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(4) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `EmailAddress` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `FirstName`, `LastName`, `EmailAddress`) VALUES
(1, 'Kyeyune', 'daniel', 'k@gmail.com'),
(2, 'lydia', 'mathew', 'lm@gmail.com'),
(3, 'kdskkd', 'ddsfds', 'dsdfsd@gmail.com'),
(4, 'kdskkd', 'ddsfds', 'dsdfsd@gmail.com'),
(5, 'kdskkd', 'ddsfds', 'dsdfsd@gmail.com'),
(6, 'kdskkd', 'ddsfds', 'dsdfsd@gmail.com'),
(7, 'Mathew', 'alex', 'ma@gmail.com'),
(8, 'Kyeyune', 'mathew', 'km@gmail.com'),
(9, 'viola', 'na', 'vn@gmail.com'),
(10, 'K11', 'd11', 'kd@gmail.com'),
(11, 'Kyeyune12', 'mathew12', 'k@gmail.com '),
(12, 'firstname1', 'lastname1', '1@ppda.com'),
(13, 'mathew', 'kyakulaga', 'mathewk@gmail.com'),
(14, '1224', '1224', '1224@gm.com'),
(15, '1224', '1224', '1224@gm.com'),
(16, '1224', '1224', '1224@gm.com'),
(17, 'FirstName1', 'lastName1', '1@test.com'),
(18, 'FirstName2', 'lastName2', '2@test.com'),
(19, 'FirstName3', 'lastName3', '3@test.com'),
(20, 'FirstName4', 'lastName4', '4@test.com'),
(21, 'FirstName5', 'lastName5', '5@test.com'),
(22, 'FirstName6', 'lastName6', '6@test.com'),
(23, 'FirstName7', 'lastName7', '7@test.com'),
(24, 'FirstName8', 'lastName8', '8@test.com'),
(25, 'FirstName9', 'lastName9', '9@test.com'),
(26, 'FirstName10', 'lastName10', '10@test.com'),
(27, 'FirstName11', 'lastName11', '11@test.com'),
(28, 'FirstName12', 'lastName12', '12@test.com'),
(29, 'FirstName1', 'lastName1', '1@test.com'),
(30, 'FirstName2', 'lastName2', '2@test.com'),
(31, 'FirstName3', 'lastName3', '3@test.com'),
(32, 'FirstName4', 'lastName4', '4@test.com'),
(33, 'FirstName5', 'lastName5', '5@test.com'),
(34, 'FirstName6', 'lastName6', '6@test.com'),
(35, 'FirstName7', 'lastName7', '7@test.com'),
(36, 'FirstName8', 'lastName8', '8@test.com'),
(37, 'FirstName9', 'lastName9', '9@test.com'),
(38, 'FirstName10', 'lastName10', '10@test.com'),
(39, 'FirstName11', 'lastName11', '11@test.com'),
(40, 'FirstName12', 'lastName12', '12@test.com'),
(41, 'FirstName13', 'lastName13', '13@test.com'),
(42, 'FirstName14', 'lastName14', '14@test.com'),
(43, 'FirstName15', 'lastName15', '15@test.com'),
(44, 'FirstName16', 'lastName16', '16@test.com'),
(45, 'FirstName17', 'lastName17', '17@test.com'),
(46, 'FirstName18', 'lastName18', '18@test.com'),
(47, 'FirstName19', 'lastName19', '19@test.com'),
(48, 'FirstName20', 'lastName20', '20@test.com'),
(49, 'FirstName21', 'lastName21', '21@test.com'),
(50, 'FirstName22', 'lastName22', '22@test.com'),
(51, 'FirstName23', 'lastName23', '23@test.com'),
(52, 'FirstName24', 'lastName24', '24@test.com'),
(53, 'FirstName25', 'lastName25', '25@test.com'),
(54, 'FirstName26', 'lastName26', '26@test.com'),
(55, 'FirstName27', 'lastName27', '27@test.com'),
(56, 'FirstName28', 'lastName28', '28@test.com'),
(57, 'FirstName29', 'lastName29', '29@test.com'),
(58, 'FirstName30', 'lastName30', '30@test.com'),
(59, 'FirstName31', 'lastName31', '31@test.com'),
(60, 'FirstName32', 'lastName32', '32@test.com'),
(61, 'FirstName33', 'lastName33', '33@test.com'),
(62, 'FirstName34', 'lastName34', '34@test.com'),
(63, 'FirstName35', 'lastName35', '35@test.com'),
(64, 'FirstName36', 'lastName36', '36@test.com'),
(65, 'FirstName37', 'lastName37', '37@test.com'),
(66, 'FirstName38', 'lastName38', '38@test.com'),
(67, 'FirstName39', 'lastName39', '39@test.com'),
(68, 'FirstName40', 'lastName40', '40@test.com'),
(69, 'FirstName41', 'lastName41', '41@test.com'),
(70, 'FirstName42', 'lastName42', '42@test.com'),
(71, 'FirstName43', 'lastName43', '43@test.com'),
(72, 'FirstName44', 'lastName44', '44@test.com'),
(73, 'FirstName45', 'lastName45', '45@test.com'),
(74, 'FirstName46', 'lastName46', '46@test.com'),
(75, 'FirstName47', 'lastName47', '47@test.com'),
(76, 'FirstName48', 'lastName48', '48@test.com'),
(77, 'FirstName49', 'lastName49', '49@test.com'),
(78, 'FirstName50', 'lastName50', '50@test.com'),
(79, 'FirstName51', 'lastName51', '51@test.com'),
(80, 'FirstName52', 'lastName52', '52@test.com'),
(81, 'FirstName53', 'lastName53', '53@test.com'),
(82, 'FirstName54', 'lastName54', '54@test.com'),
(83, 'FirstName55', 'lastName55', '55@test.com'),
(84, 'FirstName56', 'lastName56', '56@test.com'),
(85, 'FirstName57', 'lastName57', '57@test.com'),
(86, 'FirstName58', 'lastName58', '58@test.com'),
(87, 'FirstName59', 'lastName59', '59@test.com'),
(88, 'FirstName60', 'lastName60', '60@test.com'),
(89, 'FirstName61', 'lastName61', '61@test.com'),
(90, 'FirstName62', 'lastName62', '62@test.com'),
(91, 'FirstName63', 'lastName63', '63@test.com'),
(92, 'FirstName64', 'lastName64', '64@test.com'),
(93, 'FirstName65', 'lastName65', '65@test.com'),
(94, 'FirstName66', 'lastName66', '66@test.com'),
(95, 'FirstName67', 'lastName67', '67@test.com'),
(96, 'FirstName68', 'lastName68', '68@test.com'),
(97, 'FirstName69', 'lastName69', '69@test.com'),
(98, 'FirstName70', 'lastName70', '70@test.com'),
(99, 'FirstName71', 'lastName71', '71@test.com'),
(100, 'FirstName72', 'lastName72', '72@test.com'),
(101, 'FirstName73', 'lastName73', '73@test.com'),
(102, 'FirstName74', 'lastName74', '74@test.com'),
(103, 'FirstName75', 'lastName75', '75@test.com'),
(104, 'FirstName76', 'lastName76', '76@test.com'),
(105, 'FirstName77', 'lastName77', '77@test.com'),
(106, 'FirstName78', 'lastName78', '78@test.com'),
(107, 'FirstName79', 'lastName79', '79@test.com'),
(108, 'FirstName80', 'lastName80', '80@test.com'),
(109, 'FirstName81', 'lastName81', '81@test.com'),
(110, 'FirstName82', 'lastName82', '82@test.com'),
(111, 'FirstName83', 'lastName83', '83@test.com'),
(112, 'FirstName84', 'lastName84', '84@test.com'),
(113, 'FirstName85', 'lastName85', '85@test.com'),
(114, 'FirstName86', 'lastName86', '86@test.com'),
(115, 'FirstName87', 'lastName87', '87@test.com'),
(116, 'FirstName88', 'lastName88', '88@test.com'),
(117, 'FirstName89', 'lastName89', '89@test.com'),
(118, 'FirstName90', 'lastName90', '90@test.com'),
(119, 'FirstName91', 'lastName91', '91@test.com'),
(120, 'FirstName92', 'lastName92', '92@test.com'),
(121, 'FirstName93', 'lastName93', '93@test.com'),
(122, 'FirstName94', 'lastName94', '94@test.com'),
(123, 'FirstName95', 'lastName95', '95@test.com'),
(124, 'FirstName96', 'lastName96', '96@test.com'),
(125, 'FirstName97', 'lastName97', '97@test.com'),
(126, 'FirstName98', 'lastName98', '98@test.com'),
(127, 'FirstName99', 'lastName99', '99@test.com'),
(128, 'FirstName100', 'lastName100', '100@test.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `No` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
