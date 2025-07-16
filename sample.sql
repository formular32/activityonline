-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2025 at 04:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget_expenditure`
--

CREATE TABLE `budget_expenditure` (
  `id` int(11) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `time` enum('First Quarter','Second Quarter','Third Quarter','Fourth Quarter') NOT NULL,
  `amount_allocated` decimal(10,2) NOT NULL,
  `expenditure_done` decimal(10,2) DEFAULT NULL,
  `balance_cf` decimal(10,2) DEFAULT NULL,
  `remark` enum('Done','Ongoing','Pending','NotDone') DEFAULT 'NotDone',
  `fullname` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(250) NOT NULL,
  `username` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','User') NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `role`, `department`) VALUES
(1, 'Muhammad T.I. Safana', 'dg', '$2y$10$5geDdinXkDvqDKpg0tAXHe7NInLH7yhqz3uxotPwm8R8//cHy4QjC', 'Admin', 'SQA'),
(2, 'Nasir Lawal', 'formular', '$2y$10$sRNM0yYAluGsQy5O2xdng.TARnKsWlq7nV2o6IWjpnKD22HUIwrAK', 'User', 'PRS'),
(8, 'Hassan Abdussamad', 'dp', '$2y$10$ifUcd8s8tbNLk4uUw7DbkejOZ5o6s.Pv1JfmUbdrfywhiXBYK9Z06', 'User', 'Program'),
(9, 'Mukhtar Bature', 'dsqa', '$2y$10$oXAutj1FD1dBLsKMCTicqeIppM2rj7evy4VM6QJsgZvHhdjI9bFxi', 'User', 'SQA'),
(10, 'Ibrahim Aliyu', 'das', '$2y$10$GEg9RxVXOo.KjzYDSApqCeMQP68pIpqqYTZBTBmV5ukTB5zOriMqG', 'User', 'Admin'),
(11, 'Abdullahi Isah', 'dfa', '$2y$10$t25xqY/RB/F69Ju5CFycv.qt.yl3Jg61RwCvTsJc1F.XKFPhr0QRG', 'User', 'Finance'),
(12, 'Nasiru Lawal', 'dprs', '$2y$10$5gFIbXrifWokeeXwBjBPnOCd4KtQAFRZy0cLDpo/GF3O0vrNjV.oe', 'User', 'PRS'),
(13, 'MT Safana', 'safana', '$2y$10$8t7A1gm7gw8rwRpJwYPJ6OLq5Xwt9ZpS1cy87g4pHgYM8itunS7N2', 'User', 'DG'),
(14, 'Isah Ismail', 'cgb', '$2y$10$Ii6IjbN87uIuJbnDxCa7wOwZHJkvZ4LUzpTT4UoJc.0UTVXBRdcaS', 'User', 'GB'),
(15, 'Commissioner', 'hc', '$2y$10$WczO.Hk2zrFhDiXd1NDhLelNFetjET1W55h4cVkF6iBMWIDyS40s6', 'User', 'KTS-SMOH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget_expenditure`
--
ALTER TABLE `budget_expenditure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget_expenditure`
--
ALTER TABLE `budget_expenditure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
