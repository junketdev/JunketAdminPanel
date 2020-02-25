-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2020 at 06:58 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `junketdb`
--
CREATE DATABASE IF NOT EXISTS `junketdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `junketdb`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` varchar(12) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_password` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE IF NOT EXISTS `attraction` (
  `name` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `dest_id` varchar(255) NOT NULL,
  `destination` varchar(50) DEFAULT NULL,
  UNIQUE KEY `name` (`name`,`description`,`images`,`dest_id`,`destination`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attraction`
--

INSERT INTO `attraction` (`name`, `description`, `images`, `dest_id`, `destination`) VALUES
('\r\nMP Wildlife Special- Land of Mowgli Packages 3 Nights 4 Days\r\n', 'Jabalpur(1N), Bandhavgarh(1N), Kanha(1N)', 'https://rimgak.mmtcdn.com/holidays/images/activitiesImages/kt1/ACT237126.jpg', '14', ''),
(' \r\nGlimpses of Madhya Pradesh - Bandhavgarh Edition Packages 5 Nights 6 Days\r\n', 'Wildlife safari in bandhavgarh and kanha national parks', 'http://d3r2e2rbfqve3u.cloudfront.net/wp-content/uploads/2016/05/Tiger4.jpg', '14', ''),
('Aguada Fort', '17th-century fortress & lighthouse', 'https://image3.mouthshut.com/images/imagesp/925752959s.jpg', '2', ''),
('Alappuzha', 'Best known for houseboat cruises along the rustic Kerala backwaters, a network of tranquil canals and lagoons.', 'https://wallpapercave.com/wp/wp2783293.jpg', '12', ''),
('Amber Palace', '16th-century hilltop fort & palace', 'https://t1.gstatic.com/images?q=tbn:ANd9GcRcqcHyySdQgpaFsXRGEcSwDmNy-p8kmg_zFOEay5G4Jp9OFDiMa6oq78foIdEjJ_B1Se707bG1g4R7tA', '9', ''),
('Assam-Kaziranga Tour', 'Guwahati-Kaziranga-Sightseeing-Guwahati', 'https://nenow.in/wp-content/uploads/2019/10/3-9-750x375.jpg\r\n', '15', ''),
('Athirappilly Falls', 'Popular destination with viewing areas.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/The_View_of_the_Athirapally_Falls_during_the_onset_of_Monsoon.jpg/1024px-The_View_of_the_Athirapally_Falls_during_the_onset_of_Monsoon.jpg', '12', ''),
('Baga Beach', 'Best-known for its jet skiing, parasailing, banana ride and boating water-sports.', 'https://images.thrillophilia.com/image/upload/s--Ki5kqCeL--/c_fill,dpr_1.0,f_auto,fl_strip_profile,g_center,h_450,q_auto,w_753/v1/images/photos/000/039/872/original/1513669560_65329337.jpg.jpg', '2', ''),
('Barren Island', 'Volcano and scuba diving', 'https://www.thebetterindia.com/wp-content/uploads/2017/07/1big.jpg', '11', ''),
('Bhrigu Lake', 'High-altitude lake in the Himalayas', 'https://t1.gstatic.com/images?q=tbn:ANd9GcT2oHxd_HofXjH5y5dh4cgS6B1X7-y6CT_3i0K3OgEKSr-SSmnjzhAxdVuD66Cz2Fx34lvi_ZK-fpvAkA', '4', ''),
('Bom Jesus Basilica', 'The place in which the incorrupt body of St Francis Xavier is kept.', 'https://images.thrillophilia.com/image/upload/s--RZDMNlRp--/c_fill,dpr_1.0,f_auto,fl_strip_profile,g_center,h_450,q_auto,w_753/v1/images/photos/000/039/888/original/1507983216_Basilica-of-Bom-Jesus.png.jpg', '2', ''),
('Brindavan Gardens', 'Colorful gardens with a fountain show', 'https://starofmysore.com/wp-content/uploads/2017/02/Brindavan-Gardens.jpg', '8', ''),
('Calangute Beach', 'Among the top ten beaches in the world, which means it is one of the tourist places in Goa that should not be missed.', 'https://images.thrillophilia.com/image/upload/s--v4X5ldew--/c_fill,dpr_1.0,f_auto,fl_strip_profile,g_center,h_450,q_auto,w_753/v1/images/photos/000/039/884/original/1513669745_103818034-56a3bfc53df78cf7727f02bb.jpg.jpg', '2', ''),
('Chadar Trek', 'Popularly known for basically trekking over the frozen rivers.', 'https://www.holidify.com/images/cmsuploads/compressed/Gushing_blue_water_in_Chadar_trek_20190930131234.jpg', '7', ''),
('Chandraprabhu temple', 'Jain temple', 'https://t3.gstatic.com/images?q=tbn:ANd9GcTUGvWEo40-lfVNUnm488mCGZQCWc0Xs01RsYL8UExU6F6iZGKIbZ9CMWCxldEXVh5yFtVKWHkt6-rw9g', '10', ''),
('City Palace', 'Lakeside complex built over 200 years', 'https://t2.gstatic.com/images?q=tbn:ANd9GcRlxcTmcVRUoCeruGBm27YeRSSqhnpfYu7a2jAQEq8AfBEbVOkzuHkJmJql58kZcDIIW7toe1O9YMz6pQ', '1', ''),
('City Palace, Jaipur', 'Lavish 1700s palace complex & museum', 'http://www.beautiful-jaipur.com/wp-content/uploads/2019/07/city-palace-jaipur-1.jpg', '9', ''),
('Corbett Fun Tour', 'Arrive Ramnagar - Transfer to wildlife Resort-Enjoy Jungle Safari & Sightseeing', 'http://indiagetaways.co.in/wp-content/uploads/2015/07/A-view-from-Jim-Corbett-National-Park-Source-mouthshut.jpg', '16', ''),
('Corbett Holiday Tour', 'Corbett National Park-Jungle safari & Sightseeing-Corbett National Park to Delhi ', 'https://travelntrek.in/wp-content/uploads/2019/06/Jim-Corbett-National-Park-Trip.jpg', '16', ''),
('Desert National Park', 'Desert, wildlife, safari, birdwatching, and camel', 'https://t0.gstatic.com/images?q=tbn:ANd9GcTikC7oGaB1Qz2ihKQvtZVG4i3sJJrunU6DiP87jYu4YiVEMih891Bbh79kcJRqvjG_Tm-RFQFBO-sNzw', '10', ''),
('Devaraja Market', 'Shooping ', 'https://starofmysore.com/wp-content/uploads/2018/11/devaraj-market.jpg', '8', ''),
('Diu Fortress', '16th-century sandstone Portuguese fort.', 'https://t1.gstatic.com/images?q=tbn:ANd9GcTsw1SwzSOu1vNzNlUrqz8E1UT_BjwDArVzTJH1pS-Gqdgk9ppDCE1NXyyRDkVAaJbfm2H1KF2qjQIlTA', '3', ''),
('Doddabetta Peak', 'High-elevation mountain & forest reserve', 'https://t1.gstatic.com/images?q=tbn:ANd9GcTZijafbPYqVkebekorvzENdV732G3ZWxpY5B_cqhug-LHbzT_Xo-dETT71EkxDGacie6hH3KhKpwXjOQ', '5', ''),
('Dudhsagar Falls', '600m-high waterfall on the Mandovi River', 'https://dmgupcwbwy0wl.cloudfront.net/system/images/000/337/943/c5b2e5179dd204e888afd54e504c0167/original/10887118_825045484234073_3548091232890005361_o-1024x656.jpg?1566490498', '2', ''),
('Eravikulam National Park', 'Views and wild goats in lush setting', 'http://eizytravel.com/wp-content/uploads/2018/02/munnarss-1040x450.jpg', '12', ''),
('Fateh Sagar Lake\r\n', 'Historic reservoir with island parks', 'https://t3.gstatic.com/images?q=tbn:ANd9GcSWJMyAzN-q-tB6XwVVYiMBpZB3QjObLi-gBFB5UzBiie8NIAnQBehfGwdtmGT_mbG3tR4qM0fObFBr2g', '1', ''),
('Ghum Monastery', 'Tibetan Buddhist monastery built in 1875', 'https://thenomadicguy.files.wordpress.com/2015/08/ghoom-monastery-darjeeling.jpeg?w=620&h=412', '6', ''),
('Gir Fun Tour', 'Customized tour package of 01 Night and 02 Days offers you a chance to spot the majestic lions along with 606 different species of plants in the Gir Forest. ', 'https://www.girnationalpark.in/images/banner.jpg', '13', ''),
('Government Rose Garden', 'Manicured grounds with rose varieties', 'https://t0.gstatic.com/images?q=tbn:ANd9GcQWvvcVJiJ2BFva5ksp5RKc5ANpok7JqA7e91-hd2gedsBfCmmAjQJCjdgoaxmT5TciIF9Srw5fdij16Q', '5', ''),
('Hawa Mahal', 'Pink/red sandstone ''Palace of the Winds''', 'https://t0.gstatic.com/images?q=tbn:ANd9GcTh-XETdl6aUe3ye1bIiSKvNhr-V13_-aUu8EJXftRBMeuv3VEAm56Pl_w-dMTS8RG3RAyaPAYrk2sF8A', '9', ''),
('Hidimba Devi Temple', 'Historic wooden Hindu temple in a forest', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Hidimba_Devi_Temple_-_North-east_View_-_Manali_2014-05-11_2648-2649.TIF/lossy-page1-800px-Hidimba_Devi_Temple_-_North-east_View_-_Manali_2014-05-11_2648-2649.TIF.jpg', '4', ''),
('INS Khukri Memorial\r\n', 'Memorial to the crew of a sunken warship', 'https://www.gosahin.com/go/p/g/1566058202_ins-khukri-war-memorial-1.jpg', '3', ''),
('Jaisalmer Fort', 'Majestic desert fort with ornate temples', 'https://t1.gstatic.com/images?q=tbn:ANd9GcRYf3xpN-RVPMAq--Cd0qRzXyggbGUwAHzyEQk3Iw3smKplcsneD_KCyRHpLc-A5paeUbmt7TYZpZpQAw', '10', ''),
('Jalandhar Beach\r\n', 'Scenic beach with al fresco dining', 'https://edge.ixigo.com/img/jallandhar-beach-images-photos-51360365831478369ab3d060.jpg', '3', ''),
('Jeep Safari in Gir National Park', 'Jeep drive takes you deep in to the rich variety of flora and fauna which is an abode of 40 species of mammals 425 species of birds.', 'https://cdn.s3waas.gov.in/s3470e7a4f017a5476afb7eeb3f8b96f9b/uploads/bfi_thumb/2018071791-nt8v7qjaoml4p906011tp8dtw0xp0m6wezv7v85mru.jpg', '13', ''),
('Jogini Falls', 'Scenic, sacred waterfall with shrines', 'https://ui.cltpstatic.com/camp/images/ai/000/960/348/960348/published/w/jogini-waterfall-trek-with-vivek---4-hours-1550646524-1.jpg', '4', ''),
('Kanchanjanga', 'Hill station', 'https://thumbs.dreamstime.com/b/mount-kanchenjunga-range-himalayas-first-light-sunrise-sikkim-india-mount-kanchenjunga-range-himalayas-104512447.jpg', '6', ''),
('Karni Mata Temple', 'Hindu temple with an idol of Karni Mata', 'https://t0.gstatic.com/images?q=tbn:ANd9GcQCDDTktJU7rK8ayaHRHeEAVV7UprOtUh_bIboQvJmKdkoc1L8wx5QxjcUGzwl7zPYmGeVZ2iojoNhivg', '1', ''),
('Kaziranga Weekend Package', 'Guwahati-Kaziranga-Guwahati', 'https://www.kaziranga-national-park.com/wp-content/themes/kaziranga/gallery/knp-24-big.jpg', '15', ''),
('Khardung La Pass', 'Drive at the highest civilian motor road.', 'https://www.holidify.com/images/cmsuploads/compressed/1280px-Khardungla_Top2C_Ladakh_20200112185533.JPG', '7', ''),
('Kovalam', 'Lighthouse beach and Vizhinjam Mosques', 'https://www.holidify.com/images/bgImages/KOVALAM.jpg', '12', ''),
('Lake Pichola', 'Artificial lake with island palaces', 'https://www.holidify.com/images/cmsuploads/compressed/shutterstock_536597029_20190606160921_20190606161228.jpg', '1', ''),
('Magnetic Hill', 'Popularly known as Gravity hill where vehicles defy the force of gravity and move upwards on the hill when parked at the marked location.', 'https://knowtifyindia.com/wp-content/uploads/2019/02/Magnetic-Hill.jpg', '7', ''),
('Mall Road', 'Shopping', 'https://images.unsplash.com/photo-1516406742981-2b7d67ec4ae8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', '4', ''),
('Man Sagar Lake', 'Old man-made lake with a palace', 'https://hellotravel.gumlet.com/images/things2do/738X538/ttd_201812191706181545219378924020t.jpg?w=800&dpr=1.0', '9', ''),
('Mariamman temple', 'Hindu temple', 'https://www.protraveloholic.com/wp-content/uploads/2018/12/Mariamman-Temple.jpg', '5', ''),
('Murugan Temple', 'Hindu temple', 'https://c1.hiqcdn.com/customcdn/1300x512/destreviewimages/1484544909_rotates_shareiq_490_1484536061.779341.JPG', '5', ''),
('Mysore Palace', 'Indo-Saracenic architecture with lights', 'https://t3.gstatic.com/images?q=tbn:ANd9GcRSImGzP89UEOgLlkSZObIRM0t4qfH3sddnbPpBxvtPYOi-HUmt5_dJcNEVgqk_LiVJrtVQnmL4ZILSGg', '8', ''),
('Naida Caves', 'Cave system with natural rock formations', 'https://t6v9u2w5.stackpathcdn.com/wp-content/uploads/2016/06/Naida-Caves1-1024x768.jpg?x50138', '3', ''),
('Nubra Valley', 'Valley with villages & a monastery', 'https://t1.gstatic.com/images?q=tbn:ANd9GcQxQ-Dc92m69zqgbZlDVi942YcsEV8EUDaPs-fFs27AoLu8KzNOVHp7fLLyOQjB4XZhqzAXTdce-s_jFg', '7', ''),
('Ooty hills station', 'Tourist attraction', 'https://image3.mouthshut.com/images/imagesp/925004353s.jpg', '5', ''),
('Padmaja Naidu Himalayan Zoological', 'Zoological park with endangered species', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Padmaja_Naidu_Himalayan_Zoological_Park_in_Darjeeling.jpg/800px-Padmaja_Naidu_Himalayan_Zoological_Park_in_Darjeeling.jpg', '6', ''),
('Pangong Tso Lake', 'The breathtakingly beautiful lake of Leh-Ladakh.', 'https://www.gosahin.com/go/p/a/1515867134_Pongong-Lake1.jpg', '7', ''),
('Peace Pagoda', 'Buddhist temple in a tranquil locale', 'https://t3.gstatic.com/images?q=tbn:ANd9GcSkG4NorYVNhEkIH6lyJ0XPp7w8hSLWbIhxWHdp28pxQmPHuhn0BF2cUaDE4uAu_n9FmErt4Auscx4RCA', '6', ''),
('Radhanagar Beach', 'Tree-lined staple for swimming & diving', 'https://t0.gstatic.com/images?q=tbn:ANd9GcTGUyZUayLl46mBFpl1kOlbm0Jp3w2VIaTt6YMp0XQFzPi1lnrQeMCPYajWLZBOx-ocAZx2dubJNbZdPw', '11', ''),
('Ranganathittu Bird Sanctuary', 'Wildlife preserve on 6 river islets', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Painted_Stork.jpg/1200px-Painted_Stork.jpg', '8', ''),
('Saddle Peak', 'Mountain', 'http://www.indiastudychannel.com/attachments/Resources/128718-9836-saddle-peak.jpg', '11', ''),
('Saheliyon-ki-Bari\r\n', 'Regal garden with fountains & a museum.', 'http://www.udaipurblog.com/wp-content/uploads/2013/06/Saheliyon-Ki-Bari-Panorama.jpg', '1', ''),
('Sea Link Adventures - Sea walk', 'Scuba tours through coral reefs', 'http://www.sportsphere.in/image/cache/data/Sea%20Link%20Adventures%20(%20Sea%20Walks)/Sea_Link_Adventures_1-1200x700.jpg', '11', ''),
('Sheesh Mahal\r\n', 'Amber Fort area with ornate mirrorwork', 'https://qphs.fs.quoracdn.net/main-qimg-33eb13a367033330243c4b9030728f38', '9', ''),
('Solang Valley', 'Ecological park', 'https://t3.gstatic.com/images?q=tbn:ANd9GcQPngYjLS2A-aZwM3MyhJbNye5PfBYNJA3KoVKGamvZ696K4UUQIdx6xUstL6umn3CWeBATZAC0xVM0ig', '4', ''),
('Sri Chamundeshwari Devi Temple', 'Landmark Hindu temple with scenic views', 'https://www.templepurohit.com/wp-content/uploads/2015/04/Sri-Chamundeshwari-Temple-Mysore.jpg', '8', ''),
('St. Paul''s Church', 'Best examples of baroque architecture in India built by Portugese.', 'https://t3.gstatic.com/images?q=tbn:ANd9GcTO7dg2YgXag9-9vfr_PZaku0b94iN4dPe0a-QGNGdTM0xPaECvL_ocnTiRJ84Yje7mL5aIyolwoHpNYg', '3', ''),
('Swaraj Dweep', 'Elephant Beach, dive sites & birdlife', 'https://www.andamanbluebay.com/media/pages/Swaraj%20Dweep%20Island%20in%20Andaman,%20Former%20Havelock%20Island.jpg', '11', ''),
('Tanot Rai Mata Mandir', 'Historic Hindu temple with a war museum', 'https://i10.dainikbhaskar.com/thumbnails/730x548/web2images/religion.bhaskar.com/2018/02/18/tanot_mata_1_1518939149.jpg', '10', ''),
('Tiger Hill', 'Staple for mountain & sunrise views', 'https://image3.mouthshut.com/images/Restaurant/Photo/-56752_10974.jpg', '6', ''),
('Tilon Ki Pol Gadisar Lake', 'Picturesque gateway to Gadisar Lake', 'https://t1.gstatic.com/images?q=tbn:ANd9GcSQ4qPd8QBjeqSOa1Qe1vgVQ1i8O3Y9HZ94k8cpOyJ2jiW3gwp_v7kfuxBuR8e79dOX8cqaVxEMz1jdWw', '10', ''),
('Vembanad Lake', 'India''s longest lake with a bird reserve.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/House_Boat_DSW.jpg/1200px-House_Boat_DSW.jpg', '12', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` varchar(12) NOT NULL,
  `hotel_id` varchar(12) NOT NULL,
  `room_id` varchar(12) NOT NULL,
  `user_id` varchar(12) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `room_price` varchar(255) NOT NULL COMMENT 'price of the room',
  `addcharge_price` varchar(255) NOT NULL COMMENT 'Addtional charges with tax',
  `payamount_price` varchar(255) NOT NULL COMMENT 'total amount to be paid',
  `checkin_date` varchar(255) NOT NULL,
  `checkout_date` varchar(255) NOT NULL,
  `adults` int(12) NOT NULL COMMENT 'Number of Adults',
  `kids` int(12) NOT NULL COMMENT 'Number of Kids',
  `totalnight` varchar(255) NOT NULL,
  `totalrooms` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `hotel_id`, `room_id`, `user_id`, `user_name`, `destination`, `contact_no`, `email`, `room_price`, `addcharge_price`, `payamount_price`, `checkin_date`, `checkout_date`, `adults`, `kids`, `totalnight`, `totalrooms`) VALUES
('B001', 'H01', 'R101', 'U0004', 'Harsh', 'Chennai', '87965622554', 'harsh@gmail.com', '4800', '0', '0', '01-01-2020', '04-01-2020', 0, 0, '3', '1'),
('B002', 'H02', 'R101', 'U0003', 'Rajiv', 'Mumbai', '8152601452', 'rajiv@gmail.com', '7800', '0', '0', '05-01-2020', '09-01-2020', 0, 0, '4', '1'),
('', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', ''),
('', 'H01', 'R303', 'U5005', '', 'Manali', '9427505002', 'nirmal.dmpatel@gmail.com', '5200', '240', '5440', '28-02-2020', '03-03-2020', 5, 1, '4', '3'),
('', 'H01', 'R303', 'U5005', 'nirmal', 'Manali', '9427505002', 'nirmal.dmpatel@gmail.com', '5200', '240', '5440', '28-02-2020', '03-03-2020', 5, 1, '4', '3'),
('', '', '', 'u5005', '', '', '', '', '', '', '', '', '', 0, 0, '', ''),
('B005', 'H01', 'R303', 'U5005', '', 'Manali', '9427505002', 'nirmal.dmpatel@gmail.com', '5200', '240', '5440', '28-02-2020', '03-03-2020', 5, 1, '4', '3'),
('B1149363640', '', 'R101', '3', '', '', '', '', 'â‚¹ 24,082', 'â‚¹ 231', 'â‚¹ 45,002', '2020-02-25', '2020-02-28', 1, 0, '3', '2'),
('B1150295430', '', 'R102', '3', '', '', '', '', 'â‚¹ 24,082', 'â‚¹ 231', 'â‚¹ 45,002', '2020-02-25', '2020-02-28', 1, 0, '3', '2'),
('B1150507940', '', 'R102', '3', '', '', '', '', 'â‚¹ 24,082', 'â‚¹ 231', 'â‚¹ 45,002', '2020-02-25', '2020-02-28', 1, 0, '3', '2'),
('', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', ''),
('B1159161930', '', 'R102', '3', '', '', '', '', 'â‚¹ 24,082', 'â‚¹ 231', 'â‚¹ 45,002', '2020-02-25', '2020-02-28', 4, 0, '3', '2'),
('B1203154650', '', 'R102', '3', 'Urvish', '', '9856325892', 'urva@gmail.com', 'â‚¹16200.0', 'â‚¹1620.0', 'â‚¹17820.0', '2020-02-25', '2020-02-28', 4, 0, '3', '2'),
('B1207598840', '', 'R101', '3', 'Nirmal', 'Goa', ' 9427505002', 'Nirmal.dmpatel@gmail.com', 'â‚¹67200.0', 'â‚¹6720.0', 'â‚¹73920.0', '2020-02-27', '2020-03-02', 4, 0, '4', '3'),
('B1212031790', '', 'R101', '3', 'Nirmal', 'Goa', '9454819625', 'prempatel40p@gmail.com', 'â‚¹-403200.0', 'â‚¹-40320.0', 'â‚¹-443520.0', '2020-02-27', '2020-02-03', 4, 0, '-24', '3'),
('B1215309810', 'H01', 'R101', '3', 'Parth', 'Goa', '9452764882', 'vedikagothwal35@gmail.com', 'â‚¹-403200.0', 'â‚¹-40320.0', 'â‚¹-443520.0', '2020-02-27', '2020-02-03', 4, 0, '-24', '3'),
('B1218220610', 'H01', 'R102', '3', 'fhal3', 'Goa', '4648484911', 'jehebeba@gmail.com', 'â‚¹13500.0', 'â‚¹1350.0', 'â‚¹14850.0', '2020-02-26', '2020-03-02', 4, 0, '5', '1'),
('B1223183220', 'H01', 'R102', '3', 'guf', 'Goa', '9544780586', 'ufdu@gmail.com', '13500.0', '1350.0', '14850.0', '2020-02-26', '2020-03-02', 4, 0, '5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE IF NOT EXISTS `complain` (
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

CREATE TABLE IF NOT EXISTS `destination` (
  `dest_id` int(255) NOT NULL AUTO_INCREMENT,
  `dest_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `images` varchar(250) NOT NULL,
  `tag` varchar(255) NOT NULL,
  PRIMARY KEY (`dest_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`dest_id`, `dest_name`, `description`, `latitude`, `longitude`, `images`, `tag`) VALUES
(1, 'Udaipur', 'A top notch place for people who love to get lost amidst ancient folks.', '', '', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg', 'Fort and Palaces,8-12 days,5000-12000,Cultural walk-for museums,Family Trip'),
(2, 'Goa', 'Perfect place to enjoy with friends', '', '', 'https://www.cleartrip.com/collections/wp-content/uploads/2018/04/top-10-tourist-places-goa-header.jpg', 'Beach Side,3-7 days,less than 2000,Shopping,Friends Trip'),
(3, 'Diu', 'A perfect destination to enjoy.', '', '', 'https://cdn1.goibibo.com/india-daman-and-diu-147794617398o.jpg', 'Beach Side,3-7 days,less than 2000,Shopping,Friends Trip'),
(4, 'Manali', 'A place for romantic trips.', '', '', 'https://www.holidify.com/images/bgImages/MANALI.jpg', 'Hill station,3-7 days,5000-12000, Adventure & Hiking, Romantic trip'),
(5, 'Ooty\r\n', 'A perfect place for nature lovers. Known as Queen of the Nilgiris. ', '', '', 'https://www.holidify.com/images/bgImages/OOTY.jpg', 'Hill Station,3-7 days,more than 12000,Shopping,Family Trip'),
(6, 'Darjeeling\r\n', 'A place for nature and serenity lovers.', '', '', 'https://www.holidify.com/images/bgImages/DARJEELING.jpg', 'Hill station,3-7 days,more than 12000,Shopping,Romantic trip'),
(7, 'Leh Ladakh\r\n', 'A place for Romantic trip.', '', '', 'https://www.holidify.com/images/bgImages/LADAKH.jpg', 'Hill Station,3-7 days,more than 12000,Adventure & Hiking, Romantic trip'),
(8, 'Mysore', 'Perfect place to enjoy nature with family', '', '', 'https://www.holidify.com/images/bgImages/MYSORE.jpg', 'Fort and Palaces,3-7 days,5000-12000,Cultural walk -for museums,Family Trip'),
(9, 'Jaipur', 'Known as the Pink City, it is place for heritage and culture lovers.', '', '', 'https://www.holidify.com/images/bgImages/JAIPUR.jpg', 'Fort and Palaces,3-7 days,2000-5000,Cultural walk -for museums,Family trip'),
(10, 'Jaisalmer\r\n', 'Place for history and culture lovers.', '', '', 'https://www.holidify.com/images/bgImages/JAISALMER.jpg', 'Fort and Palaces,3-7 days,2000-5000,Cultural walk -for museums,Family trip'),
(11, 'Andaman', 'A perfect place for beach lovers.', '', '', 'https://seoimgak.mmtcdn.com/blog/sites/default/files/images/havelock-beach-holiday.jpg', 'Beach Side,3-7 days,8000-12000,Adventure & Hiking,Friends Trip'),
(12, 'Kerala', 'Known as God''s Own Country is a place for perfect family trip.', '', '', 'https://www.holidify.com/images/bgImages/ALLEPPEY.jpg', 'Beach Side,3-7 days,2000-5000,Shopping,Family Trip'),
(13, 'Sasan-Gir Wildlife Sanctuary', 'This is the only place in the world where you can see Asiatic lions.', '', '', 'https://www.holidify.com/images/bgImages/GIR-NATIONAL-PARK.jpg', 'Wildlife and Forest,less than 2 days,less than 2000,Adventure & Hiking,Friends Trip'),
(14, 'Bandhavgarh National Park\r\n', 'Formerly a hunting ground for the Maharajas of Rewa, this National Park is world-renowned as a tiger reserve. ', '', '', 'https://www.holidify.com/images/bgImages/BANDHAVGARH-NATIONAL-PARK.jpg', 'Wildlife and Forest,3-7 days,2000-5000,Adventuure & Hiking,Solo Trip'),
(15, 'Kaziranga National Park', 'It is home to largest population of One Horned Rhinoceros in the world.', '', '', 'https://www.holidify.com/images/compressed/3332.jpg?v=1.1', 'Wildlife and Forest,3-7 days,5000-12000 ,Adventure & Hiking,Solo Trip'),
(16, 'Jim Corbett', 'India’s best known wildlife parks, being Asia’s very first National Park.Besides tigers, there are Serow, Goral, Himalayan Tahr among other fascinating wild species.', '', '', 'https://www.holidify.com/images/compressed/85.jpg', 'Wildlife and Forest,less than 2 days,2000-5000,Adventure & Hiking,Solo Trip');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
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

CREATE TABLE IF NOT EXISTS `hotelier` (
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
  `hotelier_tags` varchar(255) NOT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotelier`
--

INSERT INTO `hotelier` (`hotel_id`, `hotelier_name`, `hotelier_password`, `hotelier_type`, `city`, `hotelier_address`, `longitude`, `latitude`, `description`, `contact`, `hotelier_email`, `rating`, `amenities`, `offers`, `image`, `website`, `min_price`, `max_price`, `hotelier_tags`) VALUES
('H01', 'Royal Orchid', 'royal_orchid', '4', 'Goa', 'Mujmahuda Rd, Pratham Avenue, Akota, Vadodara', '22.286892', '73.168939', 'Not just for archaeological fans, Vadodara is a city of interest for many travelers. Known for its rich culture, glorious past and royal traditions, this city is a perfect location for a quick escapade. Royal Orchid Central, Vadodara is located near ', '0265-2358679', 'help_regenta@gmail.com', '4.2', 'Swimming pool, Gym , Lavish rooms ', NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReAoQK8P9vI1URUII0kqXXfp-5asTz24qLBz7WwoQ77dLeP6Jl', 'https://www.royalorchidhotels.com/', '3326', '5600', 'lavish\r\nIn city\r\nMeeting Friendly\r\nConference Room\r\n'),
('H02', 'roay orchid', 'royalorchid', '4', 'Vadodara', 'Mujhmuda road', '22.286892', '72.56698', 'Lavish in-city hotel with ample of comfort', '0265-235871', 'royalorchidhotels@gmail.com', '5', 'Pool\r\nConference Room\r\nBanquote Hall (500 pax)\r\nPet Friendly', '10% discount for newly weds', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReAoQK8P9vI1URUII0kqXXfp-5asTz24qLBz7WwoQ77dLeP6Jl', 'regentahotels.com', '3200', '5799', 'In-City\r\nHoneymoon\r\nAmbience\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE IF NOT EXISTS `inquiry` (
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

CREATE TABLE IF NOT EXISTS `questionnaire` (
  `qid` varchar(12) NOT NULL,
  `question` varchar(100) NOT NULL,
  `option1` varchar(50) NOT NULL,
  `option2` varchar(50) NOT NULL,
  `option3` varchar(50) NOT NULL,
  `option4` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`qid`)
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

CREATE TABLE IF NOT EXISTS `roomlisting` (
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

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(12) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`user_id`)
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

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` varchar(12) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_name`, `email`, `contact_no`, `dob`, `gender`, `user_password`, `profile_pic`) VALUES
('3', 'xyzzz', 'rajiv@gmail.com', '9727781834', '2020-2-23', 'Male', 'rajiv@123', ''),
('4', 'Harsh', 'harsh@gmail.com', '8796522554', '10-03-1998', 'Male', 'harsh', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
