-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2020 at 08:02 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `junketdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(12) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE `attraction` (
  `name` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `dest_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attraction`
--

INSERT INTO `attraction` (`name`, `description`, `images`, `dest_id`) VALUES
('Dudhsagar Falls', '600m-high waterfall on the Mandovi River', 'https://i.pinimg.com/236x/e0/7e/4e/e07e4ed09d84363234cde860bf201b20--goa-waterfall.jpg', '2'),
('Aguada Fort', '17th-century fortress & lighthouse', 'https://paperpull.com/wp-content/uploads/2018/09/hd-wallpaper-of-the-dudhsagar-falls-waterfall-in-india.jpg', '2'),
('City Palace', 'Lakeside complex built over 200 years', 'https://t2.gstatic.com/images?q=tbn:ANd9GcRlxcTmcVRUoCeruGBm27YeRSSqhnpfYu7a2jAQEq8AfBEbVOkzuHkJmJql58kZcDIIW7toe1O9YMz6pQ', '1'),
('Lake Pichola', 'Artificial lake with island palaces', 'https://lh5.googleusercontent.com/proxy/mi_qwoPGE0Nyz8Tb4iurxr7DmxvtJOXNb-opsAUSUmt5X0XRBiKt2v7zDq7HySk27sM8TT08cWhHSMjuu-ZOBAQAWxVwNRDFspEhWNx08i0WjtQ-wYrEcLdqn_afg85iz_NybML-f2gv10rhzQ7Zs5zcBCxqHlzXtfKTTZyan8US=w370-h253-n-k-no', '1');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` varchar(12) NOT NULL,
  `hotel_id` varchar(12) NOT NULL,
  `room_id` varchar(12) NOT NULL,
  `user_id` varchar(12) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `room_price` varchar(255) NOT NULL,
  `checkin_date` varchar(255) NOT NULL,
  `checkout_date` varchar(255) NOT NULL,
  `totalnight` varchar(255) NOT NULL,
  `totalrooms` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `hotel_id`, `room_id`, `user_id`, `user_name`, `destination`, `contact_no`, `email`, `room_price`, `checkin_date`, `checkout_date`, `totalnight`, `totalrooms`) VALUES
('B001', 'H01', 'R101', 'U0004', 'Harsh', 'Chennai', '87965622554', 'harsh@gmail.com', '4800', '01-01-2020', '04-01-2020', '3', '1'),
('B002', 'H02', 'R101', 'U0003', 'Rajiv', 'Mumbai', '8152601452', 'rajiv@gmail.com', '7800', '05-01-2020', '09-01-2020', '4', '1');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `comp_id` varchar(12) NOT NULL,
  `comp_date` varchar(12) NOT NULL,
  `user_id` varchar(12) NOT NULL,
  `comp_detail` varchar(250) NOT NULL,
  `comp_status` varchar(15) NOT NULL,
  `comp_type` varchar(12) NOT NULL COMMENT 'Complaint or Feedback'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`comp_id`, `comp_date`, `user_id`, `comp_detail`, `comp_status`, `comp_type`) VALUES
('25', '0000-00-00', '45', 'uhdiooidofjsdofofjdsjf', '', ''),
('45', '2020-01-10', '56', 'ytddfghjkkjhgfdfghj', '', ''),
('0', '2020-01-12', '45', 'not good', '', ''),
('0', '2020-01-12', '45', 'not good', 'regis', ''),
('501', '2020-01-01', '448', 'The room in XYZ hotel was not clean.', '', 'C'),
('502', '2019-12-24', '3', 'the staff was amiable.', '', 'F'),
('503', '2020-01-06', '3', 'The manager had many issues with us', '', 'C'),
('C01', '02-01-2020', 'U0004', 'The room was not clean and there was presence of insects in the bathroom.', 'Pending', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `dest_id` int(255) NOT NULL,
  `dest_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `images` varchar(250) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`dest_id`, `dest_name`, `description`, `latitude`, `longitude`, `images`, `tag`) VALUES
(1, 'Udaipur', 'A top notch place for people who love to get lost amidst ancient folks.', '', '', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg', 'Fort and Palaces,8-12 days,5000-12000,Cultural walk-for museums,Family Trip'),
(2, 'Goa', 'Perfect place to enjoy with friends', '', '', 'https://www.cleartrip.com/collections/wp-content/uploads/2018/04/top-10-tourist-places-goa-header.jpg', 'Beach Side,3-7 days,less than 2000,Shopping,Friends Trip'),
(3, 'Diu', 'A perfect destination to enjoy.', '', '', 'https://cdn1.goibibo.com/india-daman-and-diu-147794617398o.jpg', 'Beach Side,3-7 days,less than 2000,Shopping,Friends Trip');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `name` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `destination` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotelier`
--

CREATE TABLE `hotelier` (
  `hotel_id` varchar(12) NOT NULL,
  `hotelier_name` varchar(50) NOT NULL,
  `hotelier_password` varchar(255) NOT NULL,
  `hotelier_type` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `hotelier_address` varchar(255) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `contact` varchar(50) NOT NULL,
  `hotelier_email` varchar(255) NOT NULL,
  `rating` varchar(5) DEFAULT NULL,
  `amenities` varchar(250) NOT NULL,
  `offers` varchar(250) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `min_price` varchar(255) NOT NULL,
  `max_price` varchar(255) NOT NULL,
  `hotelier_tags` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotelier`
--

INSERT INTO `hotelier` (`hotel_id`, `hotelier_name`, `hotelier_password`, `hotelier_type`, `city`, `hotelier_address`, `longitude`, `latitude`, `description`, `contact`, `hotelier_email`, `rating`, `amenities`, `offers`, `image`, `website`, `min_price`, `max_price`, `hotelier_tags`) VALUES
('H01', 'Royal Orchid', 'royal_orchid', '4', 'Vadodara', 'Mujmahuda Rd, Pratham Avenue, Akota, Vadodara', '22.286892', '73.168939', 'Not just for archaeological fans, Vadodara is a city of interest for many travelers. Known for its rich culture, glorious past and royal traditions, this city is a perfect location for a quick escapade. Royal Orchid Central, Vadodara is located near ', '0265-2358679', 'help_regenta@gmail.com', '4.2', 'Swimming pool, Gym , Lavish rooms ', NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReAoQK8P9vI1URUII0kqXXfp-5asTz24qLBz7WwoQ77dLeP6Jl', 'https://www.royalorchidhotels.com/', '3326', '5600', 'lavish\r\nIn city\r\nMeeting Friendly\r\nConference Room\r\n'),
('H02', 'roay orchid', 'royalorchid', '4', 'Vadodara', 'Mujhmuda road', '22.286892', '72.56698', 'Lavish in-city hotel with ample of comfort', '0265-235871', 'royalorchidhotels@gmail.com', '5', 'Pool\r\nConference Room\r\nBanquote Hall (500 pax)\r\nPet Friendly', '10% discount for newly weds', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReAoQK8P9vI1URUII0kqXXfp-5asTz24qLBz7WwoQ77dLeP6Jl', 'regentahotels.com', '3200', '5799', 'In-City\r\nHoneymoon\r\nAmbience\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `inquiry_id` int(12) NOT NULL,
  `inquiry_date` varchar(255) NOT NULL,
  `user_id` int(12) NOT NULL,
  `hotel_id` int(12) NOT NULL,
  `inquiry_details` varchar(550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`inquiry_id`, `inquiry_date`, `user_id`, `hotel_id`, `inquiry_details`) VALUES
(120, '02-02-2020', 15, 230, 'Do you have a triple occupancy ?'),
(125, '01-01-2020', 84, 60, 'What are the services or facility available for people who want to travel to jungle safari ?\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `qid` varchar(12) NOT NULL,
  `question` varchar(100) NOT NULL,
  `option1` varchar(50) NOT NULL,
  `option2` varchar(50) NOT NULL,
  `option3` varchar(50) NOT NULL,
  `option4` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`qid`, `question`, `option1`, `option2`, `option3`, `option4`) VALUES
('Q01', 'Where would you like to go ?', 'Beach Side', 'Hill Stations', 'Fort and Palaces', 'Wildlife and Forest'),
('Q02', 'For how long you are planning ?\r\n', 'Less than 2 days', '3-7 days', '8-12 days', '2 weeks or more'),
('Q03', 'What is your approx budget?\r\n', 'less than 2000', '2000-5000', '5000-12000', 'More than 12000'),
('Q04', 'What type of activities you would like to do?\r\n', 'Water sports & scuba diving', 'Adventure & Hiking', 'Cultural walk-for museums', 'Shopping'),
('Q05', 'What kind of trip this would be ?\r\n', 'Solo Trip', 'Friends Trip', 'Family Trip', 'Romantic Trip');

-- --------------------------------------------------------

--
-- Table structure for table `roomlisting`
--

CREATE TABLE `roomlisting` (
  `hotel_id` varchar(12) NOT NULL,
  `room_id` varchar(12) NOT NULL,
  `room_type` varchar(255) NOT NULL COMMENT 'Single, Double, King or Suite',
  `room_price` varchar(255) NOT NULL,
  `img1` varchar(524) NOT NULL COMMENT 'through path',
  `img2` varchar(255) NOT NULL COMMENT 'through path',
  `img3` varchar(255) NOT NULL COMMENT 'through path',
  `room_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomlisting`
--

INSERT INTO `roomlisting` (`hotel_id`, `room_id`, `room_type`, `room_price`, `img1`, `img2`, `img3`, `room_description`) VALUES
('H01', 'R101', 'KING', '5600', '', '', '', 'King size bedroom with ample of space.'),
('H01', 'R102', 'Single', '2700', '', '', '', 'Single bedroom'),
('H02', 'R101', 'Suite', '7800', '', '', '', 'sea facing suite'),
('H502', 'R45', 'Single', '500', 'pick1.jpg', 'pick2.jpg', 'pick3.jpg', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(12) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_password`, `contact_no`, `email`) VALUES
('U0003', 'rajiv', '2147483647', 'rajiv@gmail.com'),
('U0004', 'kenal', '8160319254', 'kenal@gmail.com'),
('U0005', 'hemal', '8799945102', 'hemal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` varchar(12) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_name`, `email`, `contact_no`, `dob`, `gender`, `user_password`, `profile_pic`) VALUES
('3', 'Urvish', 'rajiv@gmail.com', '9727781834', '1998-01-09', 'Male', 'rajiv@123', ''),
('4', 'Harsh', 'harsh@gmail.com', '8796522554', '10-03-1998', 'Male', 'harsh', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`dest_id`);

--
-- Indexes for table `hotelier`
--
ALTER TABLE `hotelier`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `dest_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
