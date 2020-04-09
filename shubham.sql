-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2020 at 11:24 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shubham`
--

-- --------------------------------------------------------

--
-- Table structure for table `deepak`
--

CREATE TABLE `deepak` (
  `users` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `movie` varchar(30) NOT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deepak`
--

INSERT INTO `deepak` (`users`, `username`, `movie`, `rating`) VALUES
(3, 'Vishwajeet', 'John Wick', 3),
(5, 'Indra Kumar', 'John Wick', 1),
(11, 'Shubham', 'SpiderMan', 1),
(12, 'Deepak', 'housefull', 0.6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `email`, `password`) VALUES
('indra kumar', 'badrirocky4u@gmail.com', 'indra98'),
('asdf', 'badrirocky4u@gmail.com', 'indra98'),
('shubham prasad', 'shubham123@gmail.com', 'shubham98');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deepak`
--
ALTER TABLE `deepak`
  ADD PRIMARY KEY (`users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deepak`
--
ALTER TABLE `deepak`
  MODIFY `users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
