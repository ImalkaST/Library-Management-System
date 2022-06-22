-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2022 at 07:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(250) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`book_id`, `book_name`, `author`, `quantity`) VALUES
(1, 'java', 'perera', 9),
(2, 'sql', 'gayan', 5),
(3, 'php', 'asdd', 19),
(4, 'c#', 'saiman', 29),
(9, 'java2', 'gamage', 5);

-- --------------------------------------------------------

--
-- Table structure for table `issue_book_details`
--

CREATE TABLE `issue_book_details` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_name` varchar(150) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_book_details`
--

INSERT INTO `issue_book_details` (`id`, `book_id`, `book_name`, `student_id`, `student_name`, `issue_date`, `due_date`, `status`) VALUES
(7, 1, 'java', 2, 'abc', '2022-06-21', '2022-06-22', 'Returned'),
(8, 1, 'java', 4, 'asd', '2022-06-20', '2022-06-28', 'Pending'),
(9, 1, 'java', 2, 'abc', '2022-06-21', '2022-06-27', 'Pending'),
(12, 3, 'php', 3, 'dimantha', '2022-06-02', '2022-06-16', 'Returned'),
(13, 2, 'sql', 1, 'imalka', '2022-06-03', '2022-06-17', 'Pending'),
(14, 3, 'php', 7, 'nimantha', '2022-06-21', '2022-06-29', 'Pending'),
(15, 3, 'php', 2, 'nimal', '2022-06-21', '2022-06-28', 'Returned'),
(16, 1, 'java', 1, 'imalka', '2022-06-21', '2022-06-28', 'Returned'),
(17, 1, 'java', 3, 'dimantha', '2022-06-21', '2022-06-28', 'Pending'),
(18, 2, 'sql', 2, 'gayan', '2022-06-22', '2022-06-29', 'Returned'),
(19, 3, 'php', 4, 'pasan', '2022-06-20', '2022-06-21', 'Pending'),
(20, 2, 'sql', 2, 'gayan', '2022-06-22', '2022-06-27', 'Returned'),
(21, 4, 'c#', 4, 'pasan', '2022-06-22', '2022-06-29', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_id`, `name`, `course`, `branch`) VALUES
(1, 'imalka', 'BSC', 'IT'),
(2, 'gayan', 'PHD', 'IT'),
(3, 'dimantha', 'BSC', 'Plain'),
(4, 'pasan', 'BSC', 'Electronics'),
(6, 'sheham', 'BSC', 'CS'),
(7, 'nimantha', 'BSC', 'IT'),
(9, 'hesindu', 'MSC', 'Plain'),
(11, 'pradeep', 'MSC', 'Plain');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `contact`) VALUES
(1, 'imalka', 'imalka', 'imalka@ahg.com', '07704959295'),
(2, 'aa', 'aa', 'aaa@aa', '1232222'),
(3, 'bb', 'bb', 'bb@bb', '123456789'),
(4, 'ww', 'ww', 'ww@ww', '0542424'),
(5, 'ImalkaShehan', '123456789', 'imalka@gmail.com', '0770492911'),
(6, 'ImalkaThennakoon', '123456789', 'Imalka@gmail.com', '07748958841'),
(7, 'nimal', '123456', 'nimal@gmail.com', '078959865'),
(8, 'sunil', '123456', 'sunil@gamil.com', '0778985854'),
(9, 'kamal', '123456', 'kamal@gmail.com', '078954561'),
(10, 'sadun', '123456', 'sadun@gmail.con', '0778958545');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
