-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2022 at 10:49 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoenix_airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `aircraft_id` int(11) NOT NULL,
  `aircraft_brand` varchar(45) NOT NULL,
  `aircraft_model` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`aircraft_id`, `aircraft_brand`, `aircraft_model`) VALUES
(1, 'Airbus', 'A320'),
(2, 'Airbus', 'A350'),
(3, 'Airbus', 'A380'),
(4, 'Boeing', '700'),
(5, 'Boeing', '770'),
(6, 'Boeing', '777');

-- --------------------------------------------------------

--
-- Table structure for table `aircraft_class`
--

CREATE TABLE `aircraft_class` (
  `ac_id` int(11) NOT NULL,
  `aircraft_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aircraft_class`
--

INSERT INTO `aircraft_class` (`ac_id`, `aircraft_id`, `class_id`, `seats`) VALUES
(1, 1, 1, 10),
(2, 1, 2, 15),
(3, 1, 3, 100),
(4, 2, 1, 10),
(5, 2, 2, 10),
(6, 2, 3, 150),
(7, 3, 1, 20),
(8, 3, 2, 30),
(9, 3, 3, 180);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `user_booking_id` int(11) NOT NULL,
  `fhac_id` int(11) NOT NULL,
  `passport_number` varchar(15) NOT NULL,
  `booking_date` varchar(50) NOT NULL,
  `class` varchar(10) NOT NULL,
  `number_of_seats` int(11) NOT NULL,
  `total_price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class`) VALUES
(1, 'First'),
(2, 'Business'),
(3, 'Economy');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `gate` varchar(3) NOT NULL,
  `takeoff_airport` varchar(45) NOT NULL,
  `takeoff_time` varchar(50) NOT NULL COMMENT 'start time',
  `takeoff_date` varchar(50) NOT NULL,
  `landing_airport` varchar(45) NOT NULL,
  `landing_time` varchar(50) NOT NULL,
  `landing_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `gate`, `takeoff_airport`, `takeoff_time`, `takeoff_date`, `landing_airport`, `landing_time`, `landing_date`) VALUES
(1, '1', 'Colombo', '10:00 AM', '6/5/2021', 'London', '11:00 PM', '6/5/2021'),
(2, '2', 'New York', '6:00 AM', '8/5/2021', 'London', '3:00 PM', '9/5/2021'),
(3, '3', 'Beijing', '4:00 PM', '12/5/2021', 'Colombo', '10:00 PM', '12/5/2021');

-- --------------------------------------------------------

--
-- Table structure for table `flight_has_aircraft_class`
--

CREATE TABLE `flight_has_aircraft_class` (
  `fhac_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `ac_id` int(11) NOT NULL,
  `seat_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flight_has_aircraft_class`
--

INSERT INTO `flight_has_aircraft_class` (`fhac_id`, `flight_id`, `ac_id`, `seat_price`) VALUES
(1, 1, 1, 100),
(2, 1, 2, 200),
(3, 2, 3, 60),
(4, 3, 4, 75),
(5, 3, 6, 170),
(6, 3, 8, 332);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` int(11) NOT NULL,
  `user_session_id` int(11) NOT NULL,
  `login_time` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for active',
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `username`, `password`, `address`, `phone_number`, `active_status`, `role`) VALUES
(1, 'Thisura', 'Samarakoon', 'thisura.samarakoon@gmail.com', 'thisuras8', '12345678', '250/40, Samanala Uyana, Koskandawala, Yakkala, Sri Lanka', '0094702527844', 1, 'user'),
(2, 'Yasas', 'Harshana', 'admin@gmail.com', 'Admin', '12345678', 'Hi', '434234', 1, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`aircraft_id`);

--
-- Indexes for table `aircraft_class`
--
ALTER TABLE `aircraft_class`
  ADD PRIMARY KEY (`ac_id`),
  ADD KEY `class_id_idx` (`class_id`),
  ADD KEY `aircraft_id` (`aircraft_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id_idx` (`user_booking_id`),
  ADD KEY `fhac_id_idx` (`fhac_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `flight_has_aircraft_class`
--
ALTER TABLE `flight_has_aircraft_class`
  ADD PRIMARY KEY (`fhac_id`),
  ADD KEY `ac_id_idx` (`ac_id`),
  ADD KEY `flight_id_idx` (`flight_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `user_id_idx` (`user_session_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aircraft_class`
--
ALTER TABLE `aircraft_class`
  ADD CONSTRAINT `aircraft_id` FOREIGN KEY (`aircraft_id`) REFERENCES `aircraft` (`aircraft_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `class_id` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `fhac_id` FOREIGN KEY (`fhac_id`) REFERENCES `flight_has_aircraft_class` (`fhac_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_booking_id` FOREIGN KEY (`user_booking_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `flight_has_aircraft_class`
--
ALTER TABLE `flight_has_aircraft_class`
  ADD CONSTRAINT `ac_id` FOREIGN KEY (`ac_id`) REFERENCES `aircraft_class` (`ac_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `flight_id` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `user_session_id` FOREIGN KEY (`user_session_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
