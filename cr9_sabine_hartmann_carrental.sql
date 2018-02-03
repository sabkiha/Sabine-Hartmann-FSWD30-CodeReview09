-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2018 at 04:57 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr9_sabine_hartmann_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `car_model` int(50) NOT NULL,
  `car_reg_plate` varchar(10) NOT NULL,
  `car_colour` int(15) NOT NULL,
  `car_capacity` int(11) NOT NULL,
  `car_price_day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `car_model`, `car_reg_plate`, `car_colour`, `car_capacity`, `car_price_day`) VALUES
(1, 7, '12345', 3, 3, 15),
(2, 1, 'sdkfjsdf', 7, 5, 50),
(3, 9, 'hkghj', 6, 2, 20),
(4, 6, 'fghfn', 4, 4, 20),
(5, 8, 'xcxcvxycv', 5, 4, 25),
(6, 4, 'dfdfsdf', 8, 5, 30),
(7, 5, 'fgdfghdfh', 2, 4, 25),
(8, 8, 'fsddvxc', 4, 4, 45);

-- --------------------------------------------------------

--
-- Table structure for table `car_capacity`
--

CREATE TABLE `car_capacity` (
  `car_capacity_id` int(11) NOT NULL,
  `no_passengers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_capacity`
--

INSERT INTO `car_capacity` (`car_capacity_id`, `no_passengers`) VALUES
(1, 2),
(2, 2),
(3, 4),
(4, 5),
(5, 7),
(6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `car_colour`
--

CREATE TABLE `car_colour` (
  `car_colour_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_colour`
--

INSERT INTO `car_colour` (`car_colour_id`, `name`) VALUES
(1, 'white'),
(2, 'white'),
(3, 'red'),
(4, 'blue'),
(5, 'green'),
(6, 'yellow'),
(7, 'black'),
(8, 'grey');

-- --------------------------------------------------------

--
-- Table structure for table `car_model`
--

CREATE TABLE `car_model` (
  `car_model_id` int(11) NOT NULL,
  `model_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_model`
--

INSERT INTO `car_model` (`car_model_id`, `model_name`) VALUES
(1, 'Ford Model T'),
(3, 'Volkswagen Beetle'),
(4, 'Toyota Corolla'),
(5, 'Volkswagen Golf'),
(6, 'Renault Clio'),
(7, 'Fiat Uno'),
(8, 'SEAT Ibiza'),
(9, 'Morris Mini');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `driver_dob` date NOT NULL,
  `driver_age` int(11) NOT NULL,
  `driver_address` varchar(255) NOT NULL,
  `driver_cc_details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `driver_dob`, `driver_age`, `driver_address`, `driver_cc_details`) VALUES
(1, 'Lotte', '2007-10-22', 10, 'Mariahilfer Straße 22\r\n1180 Wien', '123456789\r\n12/18'),
(3, 'Arno', '2010-04-20', 7, 'Mariahilfer Straße 22\r\n1180 Wien', '123456789\r\n12/18'),
(4, 'Sabine', '1973-10-19', 44, 'Mariahilfer Straße 22\r\n1180 Wien', '123456789\r\n12/18'),
(5, 'Mark', '1973-05-21', 42, 'Mariahilfer Straße 22\r\n1180 Wien', '123456789\r\n12/18');

-- --------------------------------------------------------

--
-- Table structure for table `drop-off`
--

CREATE TABLE `drop-off` (
  `drop-off_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drop-off`
--

INSERT INTO `drop-off` (`drop-off_id`, `reservation_id`, `location_id`) VALUES
(1, 1, 4),
(2, 2, 4),
(3, 5, 2),
(4, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `final_invoice`
--

CREATE TABLE `final_invoice` (
  `final_invoice_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `additional_charges` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final_invoice`
--

INSERT INTO `final_invoice` (`final_invoice_id`, `reservation_id`, `price`, `additional_charges`) VALUES
(1, 1, 200, 0),
(2, 2, 100, 20),
(3, 5, 150, 10),
(4, 6, 300, 0);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(100) NOT NULL,
  `location_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`, `location_address`) VALUES
(1, 'airport', 'slkfjsd\r\nhlsfdkslkdf'),
(3, 'city center', 'slkfjsd\r\nhlsfdkslkdf'),
(4, 'Grand Hotel', 'slkfjsd\r\nhlsfdkslkdf'),
(5, 'Ferry Terminal', 'slkfjsd\r\nhlsfdkslkdf'),
(6, 'Main Station', 'slkfjsd\r\nhlsfdkslkdf'),
(7, 'Cheap Hotel', 'slkfjsd\r\nhlsfdkslkdf');

-- --------------------------------------------------------

--
-- Table structure for table `pick-up`
--

CREATE TABLE `pick-up` (
  `pick-up_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pick-up`
--

INSERT INTO `pick-up` (`pick-up_id`, `reservation_id`, `location_id`) VALUES
(1, 1, 1),
(2, 2, 7),
(4, 5, 5),
(5, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `car_id` int(11) NOT NULL,
  `reservation_date_from` date NOT NULL,
  `reservation_date_until` date NOT NULL,
  `reservation_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `driver_name`, `car_id`, `reservation_date_from`, `reservation_date_until`, `reservation_days`) VALUES
(1, '1', 2, '2018-02-04', '2018-02-08', 5),
(2, '3', 6, '2018-02-18', '2018-02-21', 5),
(5, '4', 4, '2018-02-25', '2018-03-02', 6),
(6, '5', 3, '2018-03-04', '2018-02-10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `upfront_invoice`
--

CREATE TABLE `upfront_invoice` (
  `upfront_invoice_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upfront_invoice`
--

INSERT INTO `upfront_invoice` (`upfront_invoice_id`, `reservation_id`, `price`) VALUES
(1, 1, 200),
(2, 2, 100),
(3, 5, 150),
(4, 6, 300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `car_capacity`
--
ALTER TABLE `car_capacity`
  ADD PRIMARY KEY (`car_capacity_id`);

--
-- Indexes for table `car_colour`
--
ALTER TABLE `car_colour`
  ADD PRIMARY KEY (`car_colour_id`);

--
-- Indexes for table `car_model`
--
ALTER TABLE `car_model`
  ADD PRIMARY KEY (`car_model_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `drop-off`
--
ALTER TABLE `drop-off`
  ADD PRIMARY KEY (`drop-off_id`);

--
-- Indexes for table `final_invoice`
--
ALTER TABLE `final_invoice`
  ADD PRIMARY KEY (`final_invoice_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `pick-up`
--
ALTER TABLE `pick-up`
  ADD PRIMARY KEY (`pick-up_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `upfront_invoice`
--
ALTER TABLE `upfront_invoice`
  ADD PRIMARY KEY (`upfront_invoice_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `car_capacity`
--
ALTER TABLE `car_capacity`
  MODIFY `car_capacity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `car_colour`
--
ALTER TABLE `car_colour`
  MODIFY `car_colour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `car_model`
--
ALTER TABLE `car_model`
  MODIFY `car_model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `drop-off`
--
ALTER TABLE `drop-off`
  MODIFY `drop-off_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `final_invoice`
--
ALTER TABLE `final_invoice`
  MODIFY `final_invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pick-up`
--
ALTER TABLE `pick-up`
  MODIFY `pick-up_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `upfront_invoice`
--
ALTER TABLE `upfront_invoice`
  MODIFY `upfront_invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
