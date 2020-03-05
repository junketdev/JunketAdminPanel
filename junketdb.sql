-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2020 at 12:00 PM
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
  `destination` varchar(50) NOT NULL,
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
  `room_price` varchar(255) NOT NULL,
  `addcharge_price` varchar(50) NOT NULL COMMENT 'Servive Charges ',
  `payamount_price` varchar(50) NOT NULL COMMENT 'Total ',
  `checkin_date` varchar(255) NOT NULL,
  `checkout_date` varchar(255) NOT NULL,
  `adults` varchar(50) NOT NULL,
  `kids` varchar(50) NOT NULL,
  `totalnight` varchar(255) NOT NULL,
  `totalrooms` varchar(255) NOT NULL,
  `srno` int(12) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `hotel_id`, `room_id`, `user_id`, `user_name`, `destination`, `contact_no`, `email`, `room_price`, `addcharge_price`, `payamount_price`, `checkin_date`, `checkout_date`, `adults`, `kids`, `totalnight`, `totalrooms`, `srno`) VALUES
('B001', '1', 'R101', 'U0004', 'Harsh', 'Chennai', '87965622554', 'harsh@gmail.com', '4800', '480', '5280', '01-01-2020', '04-01-2020', '', '', '3', '1', 1),
('B002', 'H02', 'R101', 'U0003', 'Rajiv', 'Mumbai', '8152601452', 'rajiv@gmail.com', '7800', '780', '8580', '05-01-2020', '09-01-2020', '', '', '4', '1', 2),
('B005', 'H01', 'R303', 'U5005', '', 'Manali', '9427505002', 'nirmal.dmpatel@gmail.com', '5200', '240', '5440', '28-02-2020', '03-03-2020', '5', '1', '4', '3', 3),
('B005', 'H01', 'R303', 'U5005', 'nirmal', 'Manali', '9427505002', 'nirmal.dmpatel@gmail.com', '5200', '240', '5440', '28-02-2020', '03-03-2020', '5', '1', '4', '3', 4),
('B005', 'H01', 'R303', 'U5005', 'nirmal', 'Manali', '9427505002', 'nirmal.dmpatel@gmail.com', '5200', '240', '5440', '28-02-2020', '03-03-2020', '5', '1', '4', '3', 5),
('B1321583630', '7', 'R105', '3', 'Gautam', 'Goa', '6585689801', 'g@gmaul.com', '88800.0', '8880.0', '97680.0', '2020-04-05', '2020-04-08', '6', '2', '3', '4', 6);

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
(1, 'Udaipur', 'A top notch place for people who love to get lost amidst ancient folks.', '24.5854° N', '73.7125° E', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg', 'Fort and Palaces,8-12 days,5000-12000,Cultural walk-for museums,Family Trip'),
(2, 'Goa', 'Perfect place to enjoy with friends', '15.2993° N', '74.1240° E', 'https://www.cleartrip.com/collections/wp-content/uploads/2018/04/top-10-tourist-places-goa-header.jpg', 'Beach Side,3-7 days,less than 2000,Shopping,Friends Trip'),
(3, 'Diu', 'A perfect destination to enjoy.', '20.7144° N', '70.9874° E', 'https://cdn1.goibibo.com/india-daman-and-diu-147794617398o.jpg', 'Beach Side,3-7 days,less than 2000,Shopping,Friends Trip'),
(4, 'Manali', 'A place for romantic trips.', '32.2432° N', '77.1892° E', 'https://www.holidify.com/images/bgImages/MANALI.jpg', 'Hill station,3-7 days,5000-12000, Adventure & Hiking, Romantic trip'),
(5, 'Ooty\r\n', 'A perfect place for nature lovers. Known as Queen of the Nilgiris. ', '11.4131° N', '76.6960° E', 'https://www.holidify.com/images/bgImages/OOTY.jpg', 'Hill Station,3-7 days,more than 12000,Shopping,Family Trip'),
(6, 'Darjeeling\r\n', 'A place for nature and serenity lovers.', '27.0410° N', '88.2663° E', 'https://www.holidify.com/images/bgImages/DARJEELING.jpg', 'Hill station,3-7 days,more than 12000,Shopping,Romantic trip'),
(7, 'Leh Ladakh\r\n', 'A place for Romantic trip.', '34.1526° N', '77.5771° E', 'https://www.holidify.com/images/bgImages/LADAKH.jpg', 'Hill Station,3-7 days,more than 12000,Adventure & Hiking, Romantic trip'),
(8, 'Mysore', 'Perfect place to enjoy nature with family', '12.2958° N', '76.6394° E', 'https://www.holidify.com/images/bgImages/MYSORE.jpg', 'Fort and Palaces,3-7 days,5000-12000,Cultural walk -for museums,Family Trip'),
(9, 'Jaipur', 'Known as the Pink City, it is place for heritage and culture lovers.', '26.9124° N', '75.7873° E', 'https://www.holidify.com/images/bgImages/JAIPUR.jpg', 'Fort and Palaces,3-7 days,2000-5000,Cultural walk -for museums,Family trip'),
(10, 'Jaisalmer\r\n', 'Place for history and culture lovers.', '26.9157° N', '70.9083° E', 'https://www.holidify.com/images/bgImages/JAISALMER.jpg', 'Fort and Palaces,3-7 days,2000-5000,Cultural walk -for museums,Family trip'),
(11, 'Andaman & Nicobar', 'A perfect place for beach lovers.', '11.7401° N', '92.6586° E', 'https://seoimgak.mmtcdn.com/blog/sites/default/files/images/havelock-beach-holiday.jpg', 'Beach Side,3-7 days,8000-12000,Adventure & Hiking,Friends Trip'),
(12, 'Kerala', 'Known as God''s Own Country is a place for perfect family trip.', '10.8505° N', '76.2711° E', 'https://www.holidify.com/images/bgImages/ALLEPPEY.jpg', 'Beach Side,3-7 days,2000-5000,Shopping,Family Trip'),
(13, 'Sasan-Gir Wildlife Sanctuary', 'This is the only place in the world where you can see Asiatic lions.', '21.1243° N', '70.8242° E', 'https://www.holidify.com/images/bgImages/GIR-NATIONAL-PARK.jpg', 'Wildlife and Forest,less than 2 days,less than 2000,Adventure & Hiking,Friends Trip'),
(14, 'Bandhavgarh National Park\r\n', 'Formerly a hunting ground for the Maharajas of Rewa, this National Park is world-renowned as a tiger reserve. ', '23.7224° N', '81.0242° E', 'https://www.holidify.com/images/bgImages/BANDHAVGARH-NATIONAL-PARK.jpg', 'Wildlife and Forest,3-7 days,2000-5000,Adventuure & Hiking,Solo Trip'),
(15, 'Kaziranga National Park', 'It is home to largest population of One Horned Rhinoceros in the world.', '26.5775° N', '93.1711° E', 'https://www.holidify.com/images/compressed/3332.jpg?v=1.1', 'Wildlife and Forest,3-7 days,5000-12000 ,Adventure & Hiking,Solo Trip'),
(16, 'Jim Corbett National Park', 'India’s best known wildlife parks, being Asia’s very first National Park.Besides tigers, there are Serow, Goral, Himalayan Tahr among other fascinating wild species.', '29.5300° N', '78.7747° E', 'https://www.holidify.com/images/compressed/85.jpg', 'Wildlife and Forest,less than 2 days,2000-5000,Adventure & Hiking,Solo Trip');

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
  `hotel_id` int(12) NOT NULL AUTO_INCREMENT,
  `hotelier_name` varchar(50) NOT NULL,
  `hotelier_password` varchar(255) NOT NULL,
  `hotelier_type` varchar(25) NOT NULL,
  `city` varchar(50) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `hotelier`
--

INSERT INTO `hotelier` (`hotel_id`, `hotelier_name`, `hotelier_password`, `hotelier_type`, `city`, `hotelier_address`, `longitude`, `latitude`, `description`, `contact`, `hotelier_email`, `rating`, `amenities`, `offers`, `image`, `website`, `min_price`, `max_price`, `hotelier_tags`) VALUES
(1, 'Royal Orchid', 'royal_orchid', '4', 'Vadodara', 'Mujmahuda Rd, Pratham Avenue, Akota, Vadodara', '22.286892', '73.168939', 'Not just for archaeological fans, Vadodara is a city of interest for many travelers. Known for its rich culture, glorious past and royal traditions, this city is a perfect location for a quick escapade. Royal Orchid Central, Vadodara is located near ', '0265-2358679', 'help_regenta@gmail.com', '4.2', 'Swimming pool, Gym , Lavish rooms ', NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReAoQK8P9vI1URUII0kqXXfp-5asTz24qLBz7WwoQ77dLeP6Jl', 'https://www.royalorchidhotels.com/', '3326', '5600', 'lavish\r\nIn city\r\nMeeting Friendly\r\nConference Room\r\n'),
(2, 'roay orchid', 'royalorchid', '4', 'Vadodara', 'Mujhmuda road', '22.286892', '72.56698', 'Lavish in-city hotel with ample of comfort', '0265-235871', 'royalorchidhotels@gmail.com', '5', 'Pool\r\nConference Room\r\nBanquote Hall (500 pax)\r\nPet Friendly', '10% discount for newly weds', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReAoQK8P9vI1URUII0kqXXfp-5asTz24qLBz7WwoQ77dLeP6Jl', 'regentahotels.com', '3200', '5799', 'In-City\r\nHoneymoon\r\nAmbience\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(3, 'Hotel Inder Prakash', 'inderprakash', '', 'Udaipur', '281, Fatehsagar Lake Rani Road Fatehsagar Lake, Udaipur 313001 India', '24°35''31.4"N', '73°40''20.0"E', 'The hotel is situated with an easy access to the famous tourist sightseeing places like Saheliyon Ki Bari, Sukhadia Circle,Lok kala Mandal & Lake Fateh-Sagar.', ' 0294-2430446', 'hotelinderprakash.com', '3.0', 'Free Wi-fi, Doctor on call, Money exchange, Travel desk, Car rental, Power back-up, Spa service,Tea-Coffee Maker On Request, Same day laundry service.', NULL, 'http://staging.webyot.com/hotel/uploads/compressed/5d8d3112d2d30cbf42c03f9292384f7a1472020255.jpg', 'hotelinderprakash.com', '3,450', '6,541', 'In-city, Ambience, Roof-top Resturant'),
(4, 'Lake Pichola Hotel ', 'picholahotel', '', 'Udaipur', 'Piplia Haveli\r\nLake Pichola Hotel\r\nOutside Chand Pole, Udaipur - 313001, \r\nRajasthan, India.', '24°34''46.1"N', '73°40''49.5"E', 'Lake Pichola Hotel is a beautiful hotel on the western banks of Pichola Lake. Most of the rooms have have balconies hanging on the lake overlooking the majestic palaces and the walled city of Udaipur.', '294 2431465,', 'info@lakepicholahotel.in', '4.3', 'Airport/Station Transfers Arrangement,Free Parking,Secretarial Services,Car rental,Swimming Pool,Laundry and Dry Cleaning,Babysitter on Call,Yoga and Sun Bathing Deck,Horse Safaris', NULL, 'http://www.lakepicholahotel.in/wp-content/uploads/2017/03/FACADE.jpg', 'lakepicholahotel.in', '4,852', '12,987', 'In-city,Ambience,River View,Business,Roof-top Terrace'),
(5, 'Jaiwana Haveli', 'jaiwanahaveli', '', 'Udaipur', 'Jaiwana Haveli\r\n14 - Lal Ghat, Near Jagdish Chowk\r\nUdaipur - 313001, Rajasthan - India', '24°34''45.7"N', '73°40''59.7"E', 'The hotel is in easy walking distance to all popular monuments,the Pichola lake,bazaars,gardens and restaurants. It''s situated in a very popular locality called ''Lalghat'' on eastern shore of the Pichola lake.', '9928393339', 'info@jaiwanahaveli.com', '4.5', 'Restaurant,Laundry,Doctor on call,Internet Access,Shopping Arcade,Foreign Exchange,Horse Safari,Cooking Classes,Painting Classes', NULL, 'https://www.hoteldekho.com/room_images/hoteldekhox800_5718c24c7a161jaiwana-haveli-udaipur-b2.jpg', 'www.jaiwanahaveli.com', '3,425', '5,495', 'Roof-top Terrace,Value,Centrally Located'),
(6, 'BloomSuites,Calangute', 'bloomsuitecalangute', '', 'Goa', 'Naikawaddo, Opp Cafe Coffee Day, Calangute Bardez, Goa - 403516, India', '15°32''24.6"N', '73°45''49.4"E', 'BloomSuites,Calangute is ideally situated on the Calangute - Candolim road & diagonally opposite Café Coffee Day, you can''t get closer to the action.', '832 2281 900', 'help@staybloom.com', '4.5', 'Free WiFi,Free breakfast,Conference facilities,Pool,Taxi service,Currency exchange,Express check-in / check-out,Laundry service,Dry cleaning', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/11/be/a7/57/bloomsuites-calangute.jpg', 'staybloom.com/hotellanding/goa-bloomsuites-calangute', '3,497', '8,063', 'Business,Honeymoon,Centrally located to many beaches'),
(7, 'Lemon Tree Amarante Beach Resort', 'lemontreegoa', '', 'Goa', 'Vadi, Candolim, Bardez, Goa 403515', '15°31''07.1"N', '73°46''02.8"E', 'Ideal for both leisure travelers and business travelers on an offsite, Lemon Tree Amarante Beach Resort has been designed to evoke the poetry, history and romance of 15th century Portugal.', '832 6648188', 'hi.go@lemontreehotels.com', '4.5', 'Poolside bar,Car hire,Business Centre with Internet Access,Conference facilities,Meeting rooms,Spa,Fitness Centre with Gym,Free parking,Free internet\r\n', NULL, 'https://media-cdn.tripadvisor.com/media/oyster/890/0b/3f/a6/b3/entrance--v12341864.jpg', 'lemontreehotels.com/lemon-tree-hotel/goa/amarante-goa', '4,385', '12,076', 'Centrally Located,Trendy,Business,Leisure traveller,'),
(8, 'Country Inn & Suites by Radisson', 'countryinngoa', '', 'Goa', 'Plot No. 31 EDC Patto Plaza, Panjim403001, India', '15°29''51.0"N', '73°50''05.8"E', 'With location off NH 66, the Country Inn & Suites by Radisson, Goa Panjim keeps you close to the heart of Goa. ', '832 674 0001', 'fom@cisgoapanjim.in', '3.5', 'Fitness Centre with Gym,Free breakfast,Free WiFi,Hot bath,Bar / lounge,Rooftop pool,Spa,Business Centre with Internet Access', NULL, 'https://media-cdn.tripadvisor.com/media/photo-o/05/f1/fe/7e/country-inn-suites-by.jpg', 'radissonhotels.com/en-us/hotels/country-inn-goa-panjim', '4,781', '10,347', 'Business,Centrally Located'),
(9, 'Kostamar Beach Resort', 'kostamarbeach', '', 'Diu', 'Kostamar Beach Resort,Nagao Beach, Diu 362520 India', '20°42''21.2"N', '70°54''52.6"E', 'It is One of the Brand New Beach Resort at Nagoa Beach DIU (UT) having all Modern Amenities especially created for Corporate, Business Travellers and Tourist. ', '9978327246', 'reservations@kostamarbeachresort.com', '3.5', 'Free parking,Free internet,Pool,Bar / lounge,Conference facilities,Banquet room,Meeting rooms,Spa,Rooftop terrace', NULL, 'https://media-cdn.tripadvisor.com/media/photo-o/0c/86/d1/6c/front-view.jpg', 'kostamarbeachresort.com', '5,178', '7,047', 'Family Resort,Centrally Located,Business,Ambience'),
(10, 'Hotel The Grand Highness', 'hotelgrandhighness', '', 'Diu', 'Hotel The Grand Highness Main Bazar\r\nDiu 362520 India', '20°43''05.5"N', '70°59''02.8"E', 'Well-known for its luxury environment and proximity to great restaurants and attractions, Hotel The Grand Highness makes it easy to enjoy the best of Diu.', '8980030205', 'tgh.diu@gmail.com', '4.5', 'Restaurant,Tea & Coffee Maker in room, 24 Hrs. In Room Dinning,Conference Hall, Refrigerator in all rooms', NULL, 'http://www.thegrandhighness.com/wp-content/uploads/2016/10/EXETERIOR-2-1000x667.jpg', 'thegrandhighness.com', '1,872', '6,192', 'Family,Business,Location,Value'),
(11, ' Rainbow Resort', 'rainbowresort', '', 'Diu', 'Near HP Petrol Pump, Opp. Galaxy School, Nagoa Main Road Fudam, Diu 362520 India', '20°42''52.2"N', '70°57''30.4"E', 'A true reflection of the Portuguese influence and contemporary hospitality offers luxurious opulence of tastefully and well-appointed rooms and suites for your indulgence.', '7621880002', 'rainbowresortdiu@gmail.com ', '4.0', 'Free parking,Free WiFi,Pool,Free breakfast,Bar / lounge,Pets Allowed,Wine/champagne,Business Centre with Internet Access,Conference facilities,Banquet room,Meeting rooms\r\n\r\n', NULL, 'https://goreviews.goibibo.com/t_ug/rainbow-resort-diu-vishal-shah-123527032389.jpg', 'rainbowresortdiu.com', '2,516', '4,385', 'Leisure travelling,Family,Business'),
(12, 'Sun Park Resort ', 'sunparkresort', '', 'Manali', 'Left Bank, Aleo, Manali, Himachal Pradesh, 175131, India', '32°14''15.0"N ', '77°11''41.7"E', 'Sun Park Resort is strategically located scenically on the banks of Beas River and offers fantastic views of astonishing Manali Town.', '96965.01234', 'manali@sunparkresorts.com', '4.5', 'Hi-speed wireless Internet access,Business center,Video conferencing,Spa Room,Laundry service,Multi cuisine restaurant,Florist on request,Refrigerator in room', NULL, 'http://www.sunparkresorts.com/wp-content/themes/roya/images/Manali/Exterior-SunPark.jpg', 'sunparkresorts.com/manali', '1,440', '4,752', 'Romantic trip,Business trip,Family trip,Centrally located,Beautiful views of Himalaya'),
(13, 'The Manali Inn', 'manaliinn', '', 'Manali', 'National Highway 21 Near Indian Oil, Manali, Manali Tehsil 175131 India', '32°13''19.4"N', '77°11''26.6"E', 'The Manali Inn offers a unique holiday experience and also has state-of-the-art banqueting facilities to help you host corporate and social events.', '1800 11 3939', 'info@manaliinn.com', '4.5', 'Central Heater,Fitness Centre,Spa,Nightclub / DJ,Kids club,Special diet menus,Bar / lounge,Game room,Business Centre with Internet Access', NULL, 'https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3333/x_0,y_585,w_5000,h_1945,r_0,c_crop,q_60,fl_progressive/w_1500,c_fit,f_auto/the-manali-inn-hotel/Facade_at_The_Manali_Inn_Hotel', 'manaliinn.com', '2,926', '7,992', 'Luxury,Business,Romantic'),
(14, 'Allure Grand Resort ', 'alluregrand', '', 'Manali', '	\r\nKH-198 , Manali Rohtang Road, Bahang, Manali, Himachal Pradesh', '32°16''54.2"N ', '77°10''51.3"E', 'Allure Grand Resort is a Luxury 4 star hotel is nestled on Manali Rohtang higway at the bank of Beas River & facing the Rohtang snow glacier.', '9318007800', 'reservations@alluregrandresorts.com', '4.5', 'Free parking,Free WiFi,Free breakfast,Business Centre with Internet Access,Currency exchange,Airport transportation,Laundry service', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/12/a8/ae/1e/allure-grand-resort-manali.jpg', 'alluregrandresorts.com', '2,736', '7,416', 'Boutique,Family Resort,Centrally located'),
(15, 'Sterling Ooty Elk Hill', 'sterlingooty', '', 'Ooty', 'No 25 Ramakrishna Mutt Road Elk Hill, Ooty 643001 India', '11°23''49.0"N', '76°42''06.2"E', 'Sterling Ooty Elk Hill is a small and tranquil set up with incredible views of the surrounding hills and valley. Amid lofty Nilgiri peaks and low passing clouds, the sloping roofs and terracotta tiles of the resort emerge and vanish.', '9003302727', 'feedback@sterlingholidays.com', '4.5', 'Banqueting,Bar,Fitness Centre,Gift Shop,Holiday Activity Centre,In-Room Dining,Kids Play Area,Laundry,Tea Coffee Maker,Spa,Mini Fridge', NULL, 'https://www.sterlingholidays.com/content/dam/sterlingholidays/resorts/galleryslider/ooty-elkhill/sterling-ooty-exterior01.jpg.imgw.1280.1280.jpeg', 'sterlingholidays.com/resorts-hotels/ooty-elk-hill', '3,452', '7,910', 'Family Resort,Park View,Location'),
(16, 'Mount ''n'' Mist', 'mountnmist', '', 'Ooty', 'Kallaty Ghats, Mysore Road,Eakuni Village,Ooty- 643005, India', '11°28''04.6"N', '76°41''04.4"E', 'Mount n mist provides our guests with a peaceful retreat that feels like a home away from home.For travellers visiting Ooty, Mount ''n'' Mist is an excellent choice for rest and rejuvenation.', '9443002000', 'mountnmist2012@gmail.com', '4.5', 'Free parking,Free internet,Bonfire & Barbecue on request,Sun terrace,Laundry service,Outdoor fireplace,Airport transportation\r\n', NULL, 'http://mountnmist.net/images/gallery_6.jpg', 'mountnmist.net', '1,800', '4,032', 'Great View,Romantic'),
(17, 'Sinclairs Retreat Ooty', 'sinclairsooty', '', 'Ooty', 'Sinclairs Retreat Ooty\r\nGorishola Road, Next to tea factory\r\nOoty 643001, Tamil Nadu', '11°24''34.0"N', '76°43''15.3"E', 'Enveloped by the clouds at 8000 feet and located exactly where the "Queen of Nilgiris" was discovered, Sinclairs Retreat Ooty is the highest located hotel in South India and unquestionably the best located hotel in Ooty.', ' 9025779375', 'ooty@sinclairshotels.com', '4.0', 'Free parking,Free WiFi,Breakfast,Business Centre with Internet Access,Laundry service,Airport transportation,Car hire,Fitness Centre', NULL, 'https://media-cdn.tripadvisor.com/media/photo-o/02/6a/40/c2/facade.jpg', 'sinclairshotels.com/ooty', '4,176', '7,344', 'Modern,Mountain View,Romantic'),
(18, 'Sterling Darjeeling', 'sterlingdarjeeling', '', 'Darjeeling', 'Monastery Road, Ghoom, West Bengal 734102', '27°00''29.2"N', '88°14''49.5"E', 'Sterling Darjeeling, located at the highest point in Darjeeling, offers you a spectacular view of the Kanchenjunga range. Darjeeling district''s oldest monastery, the Ghoom Monastery is right next to the resort. ', ' 9003302727', 'feedback@sterlingholidays.com', '4.0', 'Banqueting,Bar,Fitness Centre,Gift Shop,Laundry,Tea Coffee Maker,Mini Fridge,Karaoke,Library', NULL, 'https://media-cdn.tripadvisor.com/media/photo-o/0e/4d/69/af/darjeeling-khush-alaya.jpg', 'sterlingholidays.com/resorts-hotels/darjeeling', '2,952', '10,585', 'Family,Mountain View'),
(19, 'Mayfair Darjeeling', 'mayfairdarjeeling', '', 'Darjeeling', 'The Mall Opposite Governor House, Darjeeling 734101 India', '27°02''56.8"N', '88°15''53.3"E', 'MAYFAIR Darjeeling is a heritage property that is one of the best hotels in Darjeeling. It exudes old world charm and quiet elegance. Wake up to birdsong and beautiful views as you soak in the blissful ambiance. ', '9230192003', 'roe@mayfairhotels.com', '4.5', 'Basic Wi-Fi,In room tea/coffee maker,Bottled water,Personal safe,Hair dryer,Pool Table & Indoor Games,Library,Gym', NULL, 'https://www.mayfairhotels.com/mayfair-darjeeling/photo-gallery/images/Aerial%20View%20Mayfair%20darjeeling.jpg', 'mayfairhotels.com/mayfair-darjeeling', '7,619', '23,792', 'Historic Hotel,Quiet'),
(20, 'Udaan Dekeling Resort', 'udaandekeling', '', 'Darjeeling', '2 Hawk''s Nest A J C Bose Road, Near Alpine School, Darjeeling 734101 India', '27°02''03.8"N', '88°15''44.0"E', 'Udaan Dekeling Resort, Darjeeling  features panoramic views of the Darjeeling Hills and Kanchenjunga Range. There is no doubt why Udaan Dekeling Resort, Darjeeling considered as one of the best resorts in darjeeling. ', '7719368401', 'info@udaanhotels.com', '4.5', 'Balcony & Valley View rooms,LED Television,In House Restaurant,Free Wifi,Tea & Coffee Maker,Modern Bath Amenities,Transport Assistance,Disabled-friendly room,Room Heater', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/18/f4/ea/04/udaan-hotels-resorts.jpg', 'udaanhotels.com/our-hotels/udaan-dekeling-resort-darjeeling', '3,452', '6,688', 'Value,Mountain View'),
(21, 'Hotel Ladakh Imperial', 'ladakhimperial', '', 'Leh Ladakh', 'GH Road Skara, Near Ladakh Public School\r\nLeh Ladakh 194101, J&K India', '34°09''12.4"N', '77°34''27.7"E', ' Hotel Ladakh Imperial hotel is traditional in design and architecture, with all modern facilities you might look for on your holiday. ', '9469223333 ', 'imperialladakh@gmail.com', '4.5', 'Airport Pick Up And Drop Service,In House Laundry Service,Cultural Evening With Folk Dancers,Free Wifi,Business Centre with Internet Access,Meeting rooms,Free breakfast', NULL, 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201606211215445267-cd2246d660e811e9a06d0242ac110004.jpg?&output-quality=75&downsize=520:350&crop=520:350;13,0&output-format=jpg', 'hotelladakhimperial.in', '3,816 ', '6,552', 'Classic,Trendy'),
(22, 'Sia-La Guesthouse', 'sia-laguesthouse', '', 'Leh Ladakh', '', '34°09''47.3"N', '77°34''56.5"E', 'The guest House was established in 1999. It is well designed and constructed as a passive solar cum eco-friendly ladakhi style, archetic oriented at 20 degree south-east using locally available construction materials.', '9419178100', 'sia_la@yahoo.co.in', '4.5', 'Free internet,Free breakfast,Airport transportation,Outdoor fireplace,Outdoor furniture\r\n\r\n\r\n\r\n', NULL, 'http://www.sialaguesthouse.com/css/images/offer-image-2.jpg', 'sialaguesthouse.com', '2,426', '3,996', 'Centrally Located,Mountain View'),
(23, 'Ladakh Himalayan Retreat', 'himalayanretreat', '', 'Leh Ladakh', 'Ladakh Himalayan Retreat,behind GNN School, Tukcha, Fort Road, Leh - Ladakh', '34°09''38.5"N', '77°34''22.4"E', 'Ladakh Himalayan Retreat is located a kilometer away from the Main Bazaar on Fort Road. Surrounded by snow capped mountains, the hotel has magnificent views of Shanti Stupa and Leh Palace.', '94197 95240', 'himalayanretreat2014@gmail.com ', '4.5', 'Free parking,Free WiFi,Free breakfast,Babysitting,Children Activities,Airport transportation,Car hire,Laundry service', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/13/bf/7c/00/ladakh-himalayan-retreat.jpg', 'ladakhhimalayanretreat.com', '3,811', '5,825', 'Great View,Modern'),
(24, 'Country Inn & Suites by Radisson', 'countryinnmysore', '', 'Mysore', 'Plot No. 345/A Hebbal Electronic City, near Infosys Campus, Mysore,570016,India', '12°21''47.9"N', '76°36''27.2"E', 'The Country Inn & Suites by Radisson, Mysore offers a modern retreat near major attractions like the Brindavan Gardens. Only 15 mins from Mandakalli Airport and 3 mins from National Highway 275, our hotel offers easy access for traveling families.', '821-6642000', 'DelhiReservationsCentre@radissonhotels.com', '4.5', 'Lending Library,Breakfast,Express check-out,Complimentary cookies,Complimentary coffee and tea,Early check-in,Free WiFi,Gym,Business Centre with Internet Access,Spa,Laundry service\r\n\r\n', NULL, 'https://media.radissonhotels.net/image/Country-Inn-Suites-by-Radisson-Mysore/Exteriorview/16256-114460-f63779080_3XL.jpg?impolicy=CustomCrop&cwidth=670&cheight=603', 'radissonhotels.com/en-us/hotels/country-inn-mysore', '3,140', '4,995', 'Business,Modern'),
(25, 'Fortune JP Palace', 'fortunejp', '', 'Mysore', '3, Abba Road Nazarbad, Mysore - 570007, Karnataka', '12°19''06.5"N', '76°39''48.8"E', 'Fortune JP Palace embodies the exuberance of Mysore with its palatial-style architecture, landscaped gardens, aesthetically done interiors and a magnificent view of the famous Chamundi Hills. ', '0821-6655444', 'jppalace@fortunehotels.in', '4.0', 'Business Centre,Pool,Fitness Centre,Airport Transfers,Currency Exchange,Electronic Safe,Dental Kit,Executive Kit,Toiletries', NULL, 'https://www.fortunehotels.in/hotel-image/gallery/main/20167271741149-11.jpg', 'fortunehotels.in/mysore-fortune-jp-palace.dh.11', '3,425', '7,992', 'Business,Family'),
(26, 'Ginger Mysore', 'gingermysore', '', 'Mysore', 'Nazarabad Mohall, Near Nazarabad Police Station, Vasant Mahal Road, Mysore, Karnataka 570010 ', '12°18''26.0"N', '76°40''02.5"E', 'If you’re looking for a charming hotel in Mysore, look no further than Ginger Mysore. Nearby landmarks of Statue of Maharaja Chamarajendar Wodeyar and Sri Nandi Temple make Ginger Mysore Hotel a great place to stay when visiting Mysore.', '0821-663-3333 ', 'book@gingerhotels.com', '4.0', 'Free parking,Free WiFi,Gym,Free breakfast,Airport transportation,Laundry service,Express check-in / check-out,Car hire', NULL, 'https://www.gingerhotels.com/resourcefiles/hotelgalleryimages/front-view-of-ginger-mysore.jpg', 'gingerhotels.com/ginger-mysore', '1,927', '4,281', 'Family,Business'),
(27, 'Regenta Central Jal Mahal', 'regentajaipur', '', 'Jaipur', 'Amer Road, Opposite Jalmahal,\r\nJaipur-302002, Rajasthan', '26°57''31.1"N', ' 75°50''38.5"E', 'Located in the heart of the city and close to the railway station, airports and popular tourist destinations, Regenta Central Jal Mahal, Jaipur, is a hotel visited by business and leisure travellers', '9983178618', 'gm.rcj@royalorchidhotels.com ', '4.5', 'Free parking,Free WiFi,Sauna,Pool,Free breakfast,Bicycle rental,Airport transportation,Business Centre with Internet Access,Laundry service,Rooftop terrace,Bar / lounge,Massage\r\n\r\n', NULL, 'https://karmaexperience.in/images/jaipur/regenta_about1.jpg', 'royalorchidhotels.com/regenta-central-jal-mahal-jaipur/overview', '1,927', '15,770 ', 'Lake View,Business,Family,Leisure'),
(28, ' Leisure Inn Grand Chanakya', 'leisureinnjaipur', '', 'Jaipur', '4 A-B, Kashi Bhawan, M.I. Road, Panch Batti, Jaipur, Rajasthan 302001, India', '26°55''00.3"N', '75°48''30.9"E', 'Positioned perfect, Leisure Inn Grand Chanakya is based right at heart of the famous Pink City of Jaipur allowing you to explore attractions that are unique to the area including; Hawa Mahal, City Palace, Amer Fort, Bapu Bazaar and Johari Bazaar.', '+91 141 433 3333', 'rsvligc@leisureinnhotels.com', '4.5', 'Free parking,Free WiFi,Gym,Free breakfast,Airport transportation,Business Centre with Internet Access,Rooftop bar,Currency exchange,Laundry Service\r\n', NULL, 'https://pix10.agoda.net/hotelImages/517460/-1/8c2b4dadaf8e30077354ce79461b4852.jpg?s=1024x768', 'leisureinngrandchanakya.in', '2,654', '4,017', 'Value,Centrally Located'),
(29, 'Lemon Tree Premier', 'lemontreejaipur', '', 'Jaipur', 'Nirwan Marg, Bani Park\r\nJaipur, Rajasthan 302016', '26°56''07.6"N', '75°47''31.0"E', 'Lemon Tree Premier pampers the style conscious and upbeat traveler with its personalized services, premium in-room amenities, award winning restaurants and fun experiences.', '+91 141 4051100', 'hi.jp@lemontreehotels.com', '4.5', 'Spa,Fitness Center,Pool,Business Center,WiFi,Transportation,Restaurants,Bar,Rooftop terrace,Babysitting,Laundry Service', NULL, 'https://media-cdn.tripadvisor.com/media/photo-o/0b/05/33/ea/facade.jpg', 'lemontreehotels.com/lemon-tree-premier/jaipur/bani-park-jaipur.aspx', '4,852', '11,774', 'Business,Family'),
(30, 'Hotel Lalgarh Fort And Palace', 'lalgarhfort', '', 'Jaisalmer', 'Patwa Haveli Road, Kalakar Colony,\r\nJaisalmer, Rajasthan 345001', '26°55''07.9"N', '70°54''46.1"E', 'Hotel Lalgarh Fort & palace that glitters like gold in the moonlight, built by Jaisalmer golden sandstone having heritage touch in traditional Jaisalmer style. An ancient royal design with all modern amenities.', '9414150150', 'info@lalgarh.com', '4.8', 'Free parking,Free WiFi,Airport transportation,Rooftop bar & terrace,Sun terrace,Express check-in / check-out,Dry cleaning,Laundry service', NULL, 'https://media-cdn.tripadvisor.com/media/photo-o/11/ad/00/e7/hotel-lalgarh-fort-and.jpg', 'lalgarhfortandpalace.com', '2,736', '3,312', 'Centrally Located,Charming'),
(31, 'Hotel Pleasant Haveli', 'pleasanthaveli', '', 'Jaisalmer', ' Chainpura Street , Gandhi Chowk,\r\nJaisalmer-345001, Rajasthan, India.', '26°55''04.8"N', '70°54''40.5"E', 'The Pleasant Haveli is a calm oasis in the heart of the mystic "Golden City of the Thar Desert". It offers a world of traditional hospitality combined with modern comfort and all western standards. ', '+91-2992-253254', 'reservation@pleasanthaveli.com', '4.7', 'Free parking,Free WiFi,Rooftop terrace & bar,Taxi service,Gift shop,ATM on site,Laundry Service\r\n', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/06/64/1f/0f/hotel-pleasant-haveli.jpg', 'pleasanthaveli.com', '2,283', '4,781', 'Residential Neighbourhood,Quiet'),
(32, 'Hotel Royal Haveli', 'royalhaveli', '', 'Jaisalmer', 'Hotel Royal Haveli,Near Desert Boy''s Dhani,Air Force Circle,Dhibba Para,Jaisalmer (Raj.)', '26°54''36.0"N', '70°54''49.9"E', 'Hotel Royal Haveli is a best hotel in Jaisalmer. Situated at the heart of the Golden City, is walking distance from Railway Station, Hotel Royal Haveli is the most comfort Hotel in Jaisalmer at very good costs.', '97828-23712', 'hotelroyalhaveli@yahoo.com', '4.5', 'Free Parking,Free WiFi,Free Breakfast,Rooftop Terrace,Airport transportation,Rooftop bar,Currency exchange,Special diet menus,Laundry service', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/0f/80/96/2c/arrival-view.jpg', 'royalhavelijaisalmer.com', '1,291', '2,942', 'Quaint,Centrally Located'),
(33, 'Sinclairs Bay View', 'sinclairsbayview', '', 'Andaman & NIcobar', 'South Point, Port Blair,\r\nAndaman Islands 744106,\r\nIndia', '11°40''13.5"N', '92°44''36.5"E', 'Located right on the Bay of Bengal, Sinclairs Bayview is Port Blair''s only hotel to offer a spectacular ocean view from most of its rooms, as it blends seamlessly with the surrounding landscape. ', '99320 85305', 'portblair@sinclairshotels.com\r\n', '4.0', 'Free parking,Free internet,Spa,Bar / lounge,Outdoor pool,Laundry service,Airport transportation,Conference facilities\r\n', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/03/f7/d1/ac/sinclairs-bay-view-port.jpg', 'sinclairshotels.com/portblair', '5,178', '20,207', 'Ocean View,Great View'),
(34, 'Havelock Island Beach Resort', 'havelockislandresort', '', 'Andaman & Nicobar', 'Havelock Island Beach Resort Pvt. Ltd.\r\nBooking 14/4, Room No.3, J.N.Road, Goal Ghar\r\nPort Blair, Andaman & Nicobar Island-744102 , INDIA', '12°02''16.0"N', '12°02''16.0"N', 'Havelock Island Beach Resort Pvt.Ltd. is situated at beach no 2 Govind Nagar Beach (1 km from Havelock Harbor). Blessed with the vast diverse flora and fauna and the uninterrupted views of tropical greenery.', '03192-235670', 'contact@havelockislandbeachresort.com', '4.5', 'Free parking,Free internet,Pool,Free breakfast,Beach,Car hire,Laundry service,Dry Cleaning', NULL, 'https://media-cdn.tripadvisor.com/media/photo-o/0a/47/3a/32/havelock-island-beach.jpg', 'havelockislandbeachresort.com', '4,459', '12,584', 'Ocean View,Bay View'),
(35, 'Symphony Palms Beach Resort', 'symphonypalms', '', 'Andaman & Nicobar', 'Govind Nagar Beach\r\nSwaraj Dweep (Havelock) - 744101\r\nAndaman & Nicobar Islands,\r\nIndia', '12°01''42.5"N', '93°00''07.5"E', 'Symphony Palms - A beach resort in Swaraj Dweep (Havelock) is the best place in terms of Beach View, Transportation, Luxury, Food and hospitality. ', '800-123-6000', 'reservation@hotelinandaman.com', '4.0', 'Free parking,Free wifi in the business centre,Free breakfast,Beach,Diving,Car hire,Spa,Bar / lounge,Coffee shop,Laundry service', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/0d/47/ce/b0/property-view.jpg', 'symphonypalmbeachresort-havelock.hotelinandaman.com', '4,353', '11,631', 'Park View,Great View'),
(36, 'Uday Suites', 'udaysuites', '', 'Kerala', 'T.C. 34/757/3. Watts Lane Beach P.O. Shangumugham.\r\nThiruvananthapuram. 695007.\r\nKerala. India', '8°29''01.9"N ', '76°54''43.1"E', 'The majestic construction, the garden and the large pool creates a calm and idyllic ambiance. A perfect place to relax,the hotel is just 2 minutes drive from the airport domestic terminal and less than 10 minutes drive from the international terminal', '471 2504333', 'info@uds.co.in', '4.0', 'Free parking,Free wifi,Spa,Free breakfast,Sauna,Pool,Car hire,Taxi service,Business Centre with Internet Access,Currency exchange,Laundry Service', NULL, 'https://udaysuites.com/img/slider3.jpg', 'udaysuites.com', '3,497', '6,708', 'Modern,Quiet'),
(37, 'Peppervine Hotel', 'peppervinehotel', '', 'Kerala', 'Thamarakkandom Road. Kumily P.O, Thekkady 685509', '9°36''18.6"N', '77°10''22.9"E', 'Located just outside the Periyar Tiger Reserve, Peppervine is a three star deluxe hotel offering 43 rooms and suites, multi cuisine restaurant, swimming pool, conferencing facilities.', '6238600546', 'reservations@intergrandehotels.com', '4.5', 'Free parking,Free wifi,Business centre with internet access,Free breakfast,Pool,Spa,Laundry Service,Dry Cleaning', NULL, 'http://peppervine.in/design/img/resort-gallery/1.jpg', 'peppervine.in', '2,997', '5,352', 'Modern'),
(38, 'Srivar Hotels', 'srivarhotel', '', 'Kerala', 'Srivar Hotels\r\nWest Nada, Guruvayur,\r\nTrichur, Kerala.', '10°35''39.2"N', '76°02''15.3"E', 'For us at Srivar, ensuring the comfort and convenience of our guests is a matter of high priority. ', '7559800901', 'info@srivarhotels.com', '4.5', 'Free parking,Free internet,Car hire,Rooftop terrace,Baggage storage,24-hour front desk,Express check-in / check-out,Laundry service', NULL, 'https://media-cdn.tripadvisor.com/media/photo-o/05/bf/8f/d6/srivar-hotels.jpg', 'srivarhotels.com', '1,784', '2,854', 'Modern,Centrally Located'),
(39, 'Asiatic Pride Resorts', 'asiaticpride', '', 'Sasan-Gir Wildlife Sanctuary', 'Asiatic Pride Resort,\r\nChalala Dhari Road,\r\nState Highway No. 33,\r\nDhari Village ,Dist : Amreli,\r\nGujarat (INDIA) 365640', '21°20''50.7"N', '71°04''54.4"E', 'Asiatic Pride Resort, where guests will find affordable luxury amenities and accommodations. We offer a full array of services to create a simple and pleasurable environment for your stay. ', '909925422', 'marketing@asiaticresorts.co.in', '4.5', 'Free parking,Free wifi,Free breakfast,Pool,BBQ facilities,Babysitting,Gym,Currency exchange,Laundry service', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/0f/72/3e/22/asiatic-pride-resorts.jpg', 'asiaticresorts.co.in', '3,140', '5,566', 'Quaint'),
(40, 'Gir Jungle Lodge', 'girjunglelodge', '', 'Sasan-Gir Wildlife Sanctuary', 'Sasan Junagadh Road Sasan Gir., Gir National Park India', '21°10''37.0"N', '70°34''42.8"E', 'Gir Jungle Lodge is offering best value for money. It is planned in such a way it gives feeling of stay within the jungle. Entry is from the main road, and property is quiet inside, safe from noise and air pollution.', '8826678881', 'contact@girnationalpark.in', '4.5', 'Free parking,Free wifi,Free breakfast,Pool,Car hire,Laundry Service', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/03/78/d4/c5/gir-jungle-lodge.jpg', 'girnationalpark.in/gir-jungle-lodge-in-gir.html', '2,948', '6,975', 'Charming'),
(41, 'The Brook Ville', 'brookville', '', 'Sasan-Gir Wildlife Sanctuary', 'Village : Bhojde - Sasan Gir,Taluka : Talala, District : Junagadh - 362135, Gujarat.', '21°08''33.6"N', '70°35''51.8"E', 'The ville is ideally located nearby Gir National Park and surrounded by lush green forest and natural land space.', '9898207776', 'thebrookville@gmail.com', '4.6', 'Free parking,Free wifi,Free breakfast,Pool,Car hire,Bicycle rental,Laundry Service,Airport transportation', NULL, 'https://pix10.agoda.net/hotelImages/160/1603952/1603952_16101820010047886003.jpg', 'thebrookville.com', '1,427', '2,498', 'Eco friendly environment'),
(42, 'The Wildflower Resort', 'wildflowerresort', '', 'Bandhavgarh National Park', 'Village Tala, Ranchha Road\r\nBandhavgarh National Park,\r\nDistrict Umaria\r\nIndia', '23°43''33.3"N', '81°01''34.5"E', 'At The Wildflower Resort in Bandhavgarh National Park India you will find a picture-perfect setting with hills clad in greens skirting the lodge, butterflies fluttering in the gardens and chirping of birds as musical theme.', '89590 94549', 'resv@wildflowerresort.com', '4.0', 'Free parking,Pool,Free breakfast,Bicycle rental,Game room,Airport transportation,Massage', NULL, 'https://edge.media.datahc.com/HI291021989.jpg', 'wildflowerresort.com', '2,654', '5,666', 'Quiet'),
(43, 'The Roaring Salvan County', 'roaringsalvancounty', '', 'Bandhavgarh National Park\r\n', 'THE ROARING SALVAN COUNTY\r\nBandhavgarh National Park, Gadawah Village, Post Parasi, District Umaria, Madhya Pradesh 484661, India', '23°39''55.5"N', '80°55''32.8"E', 'The Roaring Salvan County is the most distinguished address of adventure, luxury and comfort in Bandhavgarh. Named after the mighty tiger''s roar which is quite frequently heard around The County and the Sal tree which is found in abundance. ', '9999518105', 'reservation@shanayahospitality.com', '4.5', 'Free parking,Pool,Free breakfast,Complimentary welcome drink,Car hire,Special diet menus,Airport transportation,Laundry service', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/15/8d/dd/36/the-wildflower-resort.jpg', 'roaringsalvan.com', '3,596', '5,393', 'Luxurious'),
(44, 'Rosa Bandhavgarh Meadows', 'rosabandhavgarh', '', 'Bandhavgarh National Park\r\n', 'Rosa Bandhavgarh Meadows\r\nVillage Bijariya, Tala, District Umariya, Bandhavgarh, Madhya Pradesh - 484661, India', '23°43''24.7"N', '81°02''32.2"E', '"Rosa Bandhavgarh Meadows - Your home in the jungle" - The resort is an ideal refuge for those in quest of exciting Tiger safaris and a stay in tranquil environment in full luxury. ', '62-6855-9635', 'reservations@rosakue.com', '4.3', 'Free parking,Pool,Free breakfast,Game room,Children Activities,Car hire,Baggage storage', NULL, 'https://media-cdn.tripadvisor.com/media/photo-o/01/b8/f3/8f/villa-exterior.jpg', 'rosakue.com/rosa-bandhavgarh-meadows/', '2,640', '4,710', 'Charming'),
(45, 'Nature Hunt Eco Camp', 'naturehuntcamp', '', 'Kaziranga National Park', '37 Nh Bachagaon, Diring, Kaziranga National Park 785609 India', '26°35''36.9"N', '93°26''47.0"E', 'Nature Hunt Eco Camp, Kaziranga National Park is Situated in the buffer zone of Central (Kohora) Range of Kaziranga National Park, Nature Hunt Eco Camp has been operating its activities since 2010.', '97060 48801 ', 'tours@naturehunttours.com', '4.5', 'Free parking,Secured parking,Restaurant,Breakfast available,Entertainment staff,Airport transportation,Mosquito net,Outdoor fireplace\r\n', NULL, 'https://media-cdn.tripadvisor.com/media/photo-o/03/d7/25/40/nature-hunt-eco-camp.jpg', 'naturehunttours.com/nature-hunt-eco-camp/', '2,006', '4,872', 'Family Trip'),
(46, 'IORA - The Retreat', 'iora-theretreat', '', 'Kaziranga National Park', 'Bogorijuri, P.O. Kohora, Kaziranga National Park,  Assam - 785109', '26°35''04.1"N', '93°25''01.7"E', 'IORA - The Retreat offers a serene, rejuvenating experience with liberal doses of warm Assamese hospitality and supported by the best state-of-the-art amenities.\r\n', '9957193550', 'iora@kazirangasafari.com', '4.5', 'Free parking,Free wifi,Business centre with internet access,Free breakfast,Pool,Car hire,Bar / lounge,Laundry Service', NULL, 'https://iorahotels.com/iora-the-retreat-kaziranga/assets/images/1-1400x788.jpg', 'iorahotels.com/iora-the-retreat-kaziranga', '5,931', '8,075', 'Family Resort,Charming'),
(47, 'Resort Borgos', 'borgosresort', '', 'Kaziranga National Park', 'No 2 Sildubi Kohora, Kaziranga National Park India', '26°36''05.7"N', '93°23''49.6"E', 'The tranquil and peaceful surroundings make this resort best suited for the guests visiting for either holiday or business. The resort is situated in the village named Sildubi Gaon near the Kohora range of the Kaziranga National Park. ', '9873398995', 'contact@kaziranganationalpark-india.com', '4.0', 'Free parking,Free wifi,Business centre with internet access,Free breakfast,Pool,Car hire,Bar / lounge,Spa,Laundry Service', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/19/c0/4c/df/borgos-main-entrance.jpg', 'kaziranganationalpark-india.com/kaziranga-hotels/Borgos-Resort.html', '5,897', '19,848', 'Family Resort'),
(48, ' Acorn Hideaway Resort & Spa', 'acornresort', '', 'Jim Corbett National Park', 'Corbett Tiger Reserve, Village Sawal Deh Ramnagar Uttarakhand - 244714', '29°23''46.1"N', '79°03''00.8"E', 'Revitalise your soul in the lap of the wild amidst spellbinding views, remarkable architecture, amazing food and hospitable people with Acorn Hideaway Resort and Spa, a 5 Star Luxury resort spread across verdant 9 acres of land.', '9027296848', 'contact@acornhotels.com', '4.3', 'Free parking,Free wifi,Business centre with internet access,Free breakfast,Pool,Spa,Laundry Service', NULL, 'http://www.acornhotels.in/wp-content/uploads/2020/02/ex1.jpg', 'acornhotels.in', '3,240', '6,768', 'Romantic'),
(49, 'Le Roi Corbett', 'le roicorbett', '', 'Jim Corbett National Park', 'Le ROI Corbett Resort\r\n\r\nLadua Chaur, Dhikuli,Near Girija Temple, Ramnagar, Uttarakhand 244715', '29°27''31.3"N', '79°08''45.1"E', 'Le ROI Corbett Resort is amongst the finest Jim Corbett Resorts where you''ll witness the beauty of nature and enjoy in a landscape full of fruit orchards, flowers and sandalwood trees. You''ll wake up everyday to the chirping of birds. ', '86 500 00411', 'focorbett@leroihotels.com', '4.5', 'Free parking,Free wifi,Breakfast available,Express check-in / check-out,Dry cleaning,Laundry service,Meeting rooms', NULL, 'https://media-cdn.tripadvisor.com/media/photo-w/06/a4/72/39/le-roi.jpg', 'leroihotels.com/leroi-corbett', '1,998', '4,496', 'Modern,Charming'),
(50, 'Corbett River Creek Resort and Spa', 'rivercreekresort', '', 'Jim Corbett National Park', 'Village - Jhadgaon Tehsil - Sult, Marchula, Jim Corbett National Park 244715 India ', '29°36''28.1"N', '79°05''45.5"E', 'The resort is located in the northern periphery of Corbett, on the banks of river Ramganga surrounded by mountains and thick forest of Sal and Semal trees, the resort is an ideal location for wildlife sighting, bird spotting and angling.', '85859 67610\r\n\r\n\r\n\r\n', 'corbettrivercreek@gmail.com', '4.5', 'Free parking,Business centre with internet access,Pool,Car hire,Spa,Coffee shop,Laundry service,BBQ facilities', NULL, 'https://media-cdn.tripadvisor.com/media/photo-o/16/07/3b/f6/reception.jpg', 'corbettrivercreek.com', '3,600', '7,488', 'Great View,Mountain View');

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
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `payment_amount` varchar(255) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `payment_time` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `user_id`, `booking_id`, `transaction_id`, `payment_amount`, `payment_date`, `payment_time`, `payment_status`) VALUES
(1, 'U5005', 'B005', '', '5440', '', '', ''),
(2, 'U5005', 'B005', '', '5440', '', '', ''),
(3, 'U5005', 'B005', '1242575443', '5440', '02-03-2020', '12-45', 'paid'),
(4, '3', 'B1321583630', '1583049063685_3', '97680.0', '2020-03-01', '01:21 PM', 'Paid');

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
  `room_description` varchar(255) NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomlisting`
--

INSERT INTO `roomlisting` (`hotel_id`, `room_id`, `room_type`, `room_price`, `img1`, `img2`, `img3`, `room_description`) VALUES
('10', '1001', 'Standard', '3,815', 'http://www.thegrandhighness.com/wp-content/uploads/2015/10/STANDARD-ROOM-1000x667.jpg', 'http://www.thegrandhighness.com/wp-content/uploads/2015/10/STANDARD-ROOM-WASH-ROOM-1000x667-870x470.jpg', 'http://www.thegrandhighness.com/wp-content/uploads/2015/10/IMG_3678-870x470.jpg', 'Standard Room are fully equipped with all basic amenities one needs for Comfortable stay i.e. Air Conditioned, Flat T.V. Screen, Cozy Spring Beds both 18 Queen Size Rooms & 3 Twin Bed Rooms with Spacious wardrobe.'),
('10', '1002', 'Executive', '4,578', 'http://www.thegrandhighness.com/wp-content/uploads/2015/10/EXECUTIVE-ROOM-1000x667.jpg', 'http://www.thegrandhighness.com/wp-content/uploads/2015/07/back_img-870x470.jpg', 'http://www.thegrandhighness.com/wp-content/uploads/2015/10/EXECUTIVE-WASHROOM-1000x667-870x470.jpg', 'Executive Room are conceived and developed for guests with a preference for bigger living space. Decorated in contemporary Style with Spacious and Shooting city view from Balcony. '),
('10', '1003', 'Presidential Suite', '6,484', 'http://www.thegrandhighness.com/wp-content/uploads/2015/10/PRESIDENTAIL-SUITE-1000x667.jpg', 'http://www.thegrandhighness.com/wp-content/uploads/2015/10/IMG_3826-870x470.jpg', 'http://www.thegrandhighness.com/wp-content/uploads/2015/10/PRESIDENTAIL-SUITE-WASH-ROOM-1000x667-870x470.jpg', 'Located on the Uppermost floors, the Presidential Suite offers you one of the most Splendid Hotel experiences. With a Stunning view of the Glittering City-skyline and Sea View, Magnificent living room is the perfect setting to entertain guests.'),
('11', '1101', 'Standard', '2,615', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201908021756587530-2d2d0880b8f111e994390242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201908021756587530-478ecfb6b91d11e98a0c0242ac11000d.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/e3d6d97cb91d11e99a380242ac110004.jpg?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'Room Size: 169.53 sq.ft.\r\nBed Type: Double Bed\r\nView: Swimming Pool View'),
('11', '1102', 'Deluxe', '2,880', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201908021756587530-d7936788bf6811e9ad430242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201908021756587530-fab3ac8cbf6811e9b2930242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201908021756587530-74dddb1eb91e11e98ac40242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'Room Size: 180 sq.ft.\r\nBed Type: Queen Bed\r\nView: Swimming Pool View'),
('11', '1103', 'Suite', '5,040', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201908021756587530-9af45e70b92011e992da0242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201908021756587530-389aa77eb92111e98bb60242ac110006.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201908021756587530-176834eab92111e9ac720242ac110002.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'Room Size: 360 sq.ft.\r\nBed Type: Queen Bed\r\nView: Swimming Pool View'),
('12', '1201', 'Super Deluxe ', '3,199', 'http://www.sunparkresorts.com/wp-content/uploads/photo-gallery/1.%20Deluxe%20Room.jpg', 'http://www.sunparkresorts.com/wp-content/uploads/photo-gallery/10513.jpg', '', 'Fitted with a series of state-of-the-art leisure facilities and in-room amenities that surpass the comfort and access afforded by any other in this category of luxury accommodation, the Deluxe rooms promise an unforgettable experience.'),
('12', '1202', 'Honeymoon Room', '3,699', 'http://www.sunparkresorts.com/wp-content/uploads/photo-gallery/2%20(3).JPG', 'http://www.sunparkresorts.com/wp-content/uploads/photo-gallery/3%20(1).JPG', 'http://www.sunparkresorts.com/wp-content/uploads/photo-gallery/4%20(2).JPG', 'Specially crafted rooms with round beds & tastefully designed décor for newly married couples.'),
('12', '1203', 'Luxury Suite', '4,199', 'http://www.sunparkresorts.com/wp-content/uploads/photo-gallery/thumb/2%20(5).JPG', 'http://www.sunparkresorts.com/wp-content/uploads/photo-gallery/thumb/6.JPG', 'http://www.sunparkresorts.com/wp-content/uploads/photo-gallery/thumb/5.JPG', 'Gracefully appointed, the Luxury Suites offer a feel that strikes a delicate balance between relaxed luxury and efficient state-of-the-art facilities, making it the ideal accommodation for leisure and corporate travellers.'),
('12', '1204', 'Duplex Suite', '7,999', 'http://www.sunparkresorts.com/wp-content/uploads/2014/12/Duplex-Main-Pic.jpg', 'http://www.sunparkresorts.com/wp-content/uploads/photo-gallery/thumb/2%20(9).JPG', 'http://www.sunparkresorts.com/wp-content/uploads/photo-gallery/6%20(3).JPG', 'The Duplex Suite, on two levels, is the jewel of Sun Park Resort Manali. Its distribution on two levels, one bedroom with attached bathroom on the lower floor and one bedroom with attached bathroom on upper floor make it a suite with comfort & privacy.'),
('13', '1301', 'Classic Room', '2,508', 'https://r1imghtlak.mmtcdn.com/f63240a094b311e8b1f2022c963249e0.jpg?&output-quality=75&downsize=520:350&crop=520:350;81,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/f630f2fe94b311e894330ac89a1b4c4e.jpg?&output-quality=75&downsize=520:350&crop=520:350;20,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/7515b96a718811e79216025f77df004f.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'Classic Rooms are elegantly furnished and aesthetically designed rooms that spell comfort and convenience. Offering a plush King bed, loaded with all modern amenities, these rooms have no view.'),
('13', '1302', 'Superior room', '2,798', 'https://r1imghtlak.mmtcdn.com/daca2070718811e7b1ef025f77df004f.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/1a3f13a06f1611e48dea36cfdd80c293.jfif?&output-quality=75&downsize=520:350&crop=520:350;20,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/93c33892718811e79216025f77df004f.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'Enjoy Panoramic view of snow clad mountains from Superior rooms which are elegantly furnished with all modern amenities. Offering a plush King bed these rooms are ideal for 02 adults only.'),
('13', '1303', 'Junior Suite', '5,017', 'https://r1imghtlak.mmtcdn.com/beb36c8a94b311e8ac5b0224510f5e5b.jpg?&output-quality=75&downsize=520:350&crop=520:350;81,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/bfcd1ec294b311e8805a0a9df65c8753.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/beaa352a94b311e8a6090a9df65c8753.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'Junior Suite Rooms are duplex rooms ideal for 02 adults & 02 children. You have two independent floors with separate bathrooms at your disposal with independent amenities on both floors.'),
('13', '1304', 'Presidential Suite', '6,078', 'https://r1imghtlak.mmtcdn.com/888110e094b311e88fd40aac31f7adf0.jpg?&output-quality=75&downsize=520:350&crop=520:350;81,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/b53c279a718811e7a23f0a4cef95d023.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/888d67f094b311e8a675022c963249e0.jpg?&output-quality=75&downsize=520:350&crop=520:350;29,0&output-format=jpg', 'Enjoy the diverse and mystic beauty of the valley, serene mountains, lush meadows, dense deodar and pine forests, gushing Beas River, cultivated step terraces and fruit orchards, from these ideally placed luxurious rooms.'),
('14', '1401', 'Valley View Room', '2,918', 'https://www.resavenue.com/prop_images/R12467.jpg', 'https://www.resavenue.com/prop_images/R1_12467.jpg', 'https://r1imghtlak.mmtcdn.com/d8c8b052ed7011e7a30702755708f0b3.jfif?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', ''),
('14', '1402', 'River Front Room ', '6,999', 'https://www.resavenue.com/prop_images/R12468.jpg', 'https://www.resavenue.com/prop_images/R1_12468.jpg', 'https://www.resavenue.com/prop_images/R2_12468.jpg', ''),
('15', '1501', 'Classic Room', '3,013', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/ooty-elkhill/classic/sterling-ooty-classic-room01.jpg.imgw.1280.1280.jpeg', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/ooty-elkhill/classic/sterling-ooty-classic-room02.jpg.imgw.1280.1280.jpeg', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/ooty-elkhill/classic/sterling-ooty-classic-room03.jpg.imgw.1280.1280.jpeg', 'Unwind in this contemporary 190 sq.ft room that comes with a city as well as valley view. The classic rooms come with an option of queen / twin beds and can accommodate a maximum of 2 adults and 1 child. '),
('15', '1502', 'Premier Room', '3,502', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/ooty-elkhill/premiere/sterling-ooty-premiere-suite01.jpg.imgw.1280.1280.jpeg', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/ooty-elkhill/premiere/sterling-ooty-premiere-suite02.jpg.imgw.1280.1280.jpeg', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/ooty-elkhill/premiere/sterling-ooty-premiere-suite03.jpg.imgw.1280.1280.jpeg', 'Premier Rooms come with a choice of queen / twin beds and a single sofa cum bed. They are 220 sq.ft in size and come with a city as well as valley view. Premier rooms accommodate a maximum of 2 adults and 2 children / 3 adults.'),
('15', '1503', 'Privilege Suite', '3,853', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/ooty-elkhill/privilege/sterling-ooty-privilege-suite03.jpg.imgw.1280.1280.jpeg', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/ooty-elkhill/privilege/sterling-ooty-privilege-suite01.jpg.imgw.1280.1280.jpeg', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/ooty-elkhill/privilege/sterling-ooty-privilege-suite02.jpg.imgw.1280.1280.jpeg', 'Each meticulously designed Privilege Suite comes with a king-sized bed and a separate living area replete with a double sofa cum bed. Covering an area of 380 sq.ft, this spacious suite can accommodate a maximum of 3 adults and 1 child.'),
('15', '1504', 'Family Suite', '6,057', 'https://r1imghtlak.mmtcdn.com/61a8031a877011e48a6b32e76f7e45c9.jfif?&output-quality=75&downsize=520:350&crop=520:350;41,0&output-format=jpg', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/ooty-elkhill/2br/sterling-ooty-elkhill-2br3-vo.jpg.imgw.1280.1280.jpeg', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/ooty-elkhill/2br/sterling-ooty-elkhill-2br2-vo.jpg.imgw.1280.1280.jpeg', '2 Bedroom apartments are extra spacious to suit your needs. They come with two bedrooms with king sized beds and a separate living area with a double sofa cum bed. With stunning views, this apartment can accommodate a maximum of 6 adults.'),
('16', '1601', 'Executive Suite', '3,500', 'http://mountnmist.net/images/queensuite_5.png', 'http://mountnmist.net/images/executive_3.jpg', 'http://mountnmist.net/images/kingssuite_3.jpg', 'The Executive Suite comprises of a single bedroom with a king size bed and an attached bathroom. It can accommodate 2 adults. It comes with a living cum dining room attached to it. Complimentary breakfast is provided for the guests.'),
('16', '1602', 'Queen Suite', '5,000', 'http://mountnmist.net/images/queensuite_5.png', 'http://mountnmist.net/images/queensuite_4.png', 'http://mountnmist.net/images/queensuite_1.jpg', 'The Queen Suite at Mount ''N Mist has 2 rooms with a common living, dining room & furnished bedroom with 2 King Size beds. A delightful view awaits you here, from the Queen Suite. Perfect for families & Couples travelling together.'),
('16', '1603', 'King Suite', '7,500', 'http://mountnmist.net/images/kingssuite_4.jpg', 'http://mountnmist.net/images/kingssuite_5.jpg', 'http://mountnmist.net/images/kingssuite_1.jpg', 'Travelling in a group of 6 ? Perfect !! The King Suite has 3 rooms with attached bathrooms, making it perfect if you are travelling in a group.'),
('16', '1604', 'Honeymoon Package', '6,999', 'http://mountnmist.net/images/deluxeroom_3.jpg', 'http://mountnmist.net/images/deluxeroom_6.jpg', 'http://mountnmist.net/images/deluxeroom_2.jpg', '2D/ 1N\r\nIncludes Free Pickup & drop from Ooty Town\r\nFlower Bed Decoration\r\nPackage incl breakfast, lunch and dinner\r\nA special Candle Light Dinner with Cake\r\nIncludes one day sighseeing or Jungle Safari'),
('17', '1701', 'Deluxe Room', '3,618', 'https://www.sinclairshotels.com/assets/images/ooty/deluxe_room.jpg', 'https://r1imghtlak.mmtcdn.com/1b37c8f2f49111e781d00a4cef95d023.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/7b5bb75a643111e9ada50242ac110002.jpg?&output-quality=75&downsize=520:350&crop=520:350;0,85&output-format=jpg', 'Overlooks pine forests interspersed with eucalyptus trees.'),
('17', '1702', 'Premier Room', '3,919', 'https://www.sinclairshotels.com/assets/images/ooty/premier_room.jpg', 'https://r1imghtlak.mmtcdn.com/fc362fb0427d11ea902a0242ac110004.jfif?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/fc33ab3c427d11eab0e20242ac110003.jfif?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'Offers a breathtaking view of the Blue Mountains and Ooty valley.'),
('17', '1703', 'Deluxe Suite', '5,653', 'https://www.sinclairshotels.com/assets/images/ooty/deluxe_suite.jpg', 'https://r1imghtlak.mmtcdn.com/1f3238fcf49111e7a5a30a4cef95d023.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', '', 'Spacious and luxurious, the deluxe suites overlook the Blue Mountains and the Ooty valley.'),
('18', '1801', 'Classic Room', '4,079', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/darjeeling-kushalaya/classic/sterling-darjeeling-classic-room1.jpg.imgw.1280.1280.jpeg', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/darjeeling-kushalaya/classic/sterling-darjeeling-classic-room2.jpg.imgw.1280.1280.jpeg', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/darjeeling-kushalaya/classic/sterling-darjeeling-classic-room3.jpg.imgw.1280.1280.jpeg', 'Unwind in this contemporary 243 sq.ft room with an expansive view of the resort. The classic rooms come with an option of queen / twin beds and can accommodate a maximum of 2 adults and 1 child. '),
('18', '1802', 'Premier Room', '4,656', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/darjeeling-kushalaya/premiere/sterling-darjeeling-premiere-room2.jpg.imgw.1280.1280.jpeg', 'https://r1imghtlak.mmtcdn.com/6134b70abe1011e7ab210224510f5e5b.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', '', 'Premier Rooms come with a choice of queen / twin beds and a single sofa cum bed. They are 303 sq.ft in size and come with an expansive view of the resort. Premier rooms accommodate a maximum of 2 adults and 2 children / 3 adults. '),
('18', '1803', 'Privilege Suite', '5,387', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/darjeeling-kushalaya/privilege/sterling-darjeeling-privilege-suite5-revised.jpg.imgw.1280.1280.jpeg', 'https://www.sterlingholidays.com/content/dam/sterlingholidays/rooms/darjeeling-kushalaya/privilege/sterling-darjeeling-privilege-suite1.jpg.imgw.1280.1280.jpeg', 'https://r1imghtlak.mmtcdn.com/e10719fc7da411e79b75025f77df004f.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'Each meticulously designed Privilege Suite comes with a king-sized bed and a separate living area replete with a double sofa cum bed. Covering an area of 589 sq.ft, this spacious suite can accommodate a maximum of 3 adults and 1 child. '),
('19', '1901', 'Executive Room', '8,250', 'https://r-cf.bstatic.com/xdata/images/hotel/max1024x768/209359440.jpg?k=80e66c1ba55f65c594fcca96fbe7ce16665af975cd4a1ffa76a71172312ffc32&o=', 'https://www.mayfairhotels.com/img/room-images/darjeeling/executive_Room_big.jpg', 'https://q-cf.bstatic.com/xdata/images/hotel/max1024x768/149229293.jpg?k=54dce8f2df988c20891d93978410a095f19e9700aaa25b514502c0ca6a8d139d&o=', 'Have a restful break in the hills of Darjeeling by recharging yourself with the convenient but luxurious comforts of the Room. It comes fitted with thoughtful amenities.'),
('19', '1902', 'Deluxe Room', '8,750', 'https://r-cf.bstatic.com/xdata/images/hotel/max1024x768/149220696.jpg?k=7fa8f6b4cf5d0ad3c2188b3660d692298c23918cf9b5247b834dda556062366a&o=', 'https://q-cf.bstatic.com/xdata/images/hotel/max1024x768/29635482.jpg?k=01dffd24e808c8314ab7c8d350dd7d28b43864c2a3961c5d4cdf7ff277c61e9e&o=', 'https://r-cf.bstatic.com/xdata/images/hotel/max1024x768/29701608.jpg?k=a3cee4eb9624c60164de74a15e4879c678b3b529338d2cf880b6ce8169988d03&o=', 'Twin/King Size Bed,Cosy Couches,Fire Place,LCD TV with DTH Connection,DVD Player'),
('19', '1903', 'Suite', '12,000', 'https://www.mayfairhotels.com/img/room-images/darjeeling/Suite%201349x580.jpg', 'https://q-cf.bstatic.com/xdata/images/hotel/max1024x768/209359436.jpg?k=633b81bf0b6e8dc23d14ffa462f19e6d1e2fcffbc18d25c0e755e665abf2e624&o=', 'https://q-cf.bstatic.com/xdata/images/hotel/max1024x768/209359466.jpg?k=8a605bedfb04a100e33a6d157954a0847e69bfe8832791e2e3c95868fb74fb18&o=', 'Vintage wooden furniture, gorgeous wood panelling and a large amount of space characterise the Suite at Mayfair Darjeeling. It also comes with a complimentary mini bar and a private sit out.'),
('20', '2001', 'Premium Room', '2,082', 'https://i0.wp.com/udaanhotels.com/wp-content/uploads/2019/08/DSC0641-Pano-Edit.jpg?resize=1024%2C624&ssl=1', 'https://pix6.agoda.net/hotelImages/8416574/-1/8226d32fc1d9271df22d2ac832f91e3e.jpg', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201906241902572914-ea9ec5ccc0e211e995250242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;14,0&output-format=jpg', 'Room Size: 256 sq.ft.\r\nBed Type: Double Bed\r\nRoom Service\r\nHeater'),
('20', '2002', 'British Room', '2,132', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201906241902572914-bbe64c22c0e311e98e130242ac110002.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://i1.wp.com/udaanhotels.com/wp-content/uploads/2019/08/Dekeling-Rooms-10-e1577434521934.jpg?w=499&ssl=1', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201906241902572914-0b300a44c4c111e9ac6d0242ac110004.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'Room Size: 499.97 sq.ft.\r\nBed Type: Double Bed\r\nRoom Service\r\nHeater\r\nFree Wi-Fi\r\nElectric Kettle'),
('20', '2003', 'Family Room', '2,688', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201906241902572914-68899b30fd3b11e9b0700242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://i1.wp.com/udaanhotels.com/wp-content/uploads/2019/08/Dekeling-Rooms-3.jpg?resize=1024%2C616&ssl=1', 'https://pix6.agoda.net/hotelImages/8416574/-1/75ec1df175850c987b6bcfe887c637ad.jpg', 'Room Size: 209.96 sq.ft.\r\nBed Type: Double Bed\r\nRoom Service\r\nHeater'),
('21', '2101', 'Deluxe Rooms', '2,990', 'https://r1imghtlak.mmtcdn.com/000413b6ecd111e595d60022195573b9.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/05131578ecd111e5b35d001ec9b85d13.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/201606211215445267-3c1a5eca60e911e9a8260242ac110009.jpg?&output-quality=75&downsize=520:350&crop=520:350;39,0&output-format=jpg', 'Room Size: 168 sq.ft.\r\nBed Type: double\r\n24-hour Room Service\r\nFree Wi-Fi'),
('22', '2202', 'Double room', '2,791', 'https://r1imghtlak.mmtcdn.com/e362ceb8e69211e98b870242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;51,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/0b866af8e69311e98dcd0242ac110002.jpg?&output-quality=75&downsize=520:350&crop=520:350;52,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/4a4c4096e69311e99bdd0242ac110002.jpg?&output-quality=75&downsize=520:350&crop=520:350;51,0&output-format=jpg', '\r\nRoom Size: 120 sq.ft.\r\nBed Type: double\r\nRoom Service\r\nWi-Fi'),
('23', '2301', 'Deluxe Room', '3,088', 'https://www.ladakhhimalayanretreat.com/assets/img/rooms/1.jpg', 'https://r1imghtlak.mmtcdn.com/31e403426f1a11e799cf025f77df004f.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/ec948ffc6c3911e6b258001ec9b85d13.jfif?&output-quality=75&downsize=520:350&crop=520:350;54,0&output-format=jpg', 'Deluxe rooms ensure a rich blend of comfort and luxury in most pocket friendly manner. The rooms are quite cozy and comfortable.'),
('23', '2302', 'Junior Suite Room', '3,358', 'https://r1imghtlak.mmtcdn.com/5914caa67cd511e6b7ef36cfdd80c293.jfif?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/22a0700a6f1a11e795bd025f77df004f.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/49bcdc6e7cd611e68d5836cfdd80c293.jfif?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'Junior Suite rooms are spacious with sitting area. It offers beautiful view of Stok Kangri.Junior rooms are furnished with double bed.'),
('24', '2401', 'Superior Room', '2,260', 'https://r1imghtlak.mmtcdn.com/08655c32ae0611e481355ee5da2daa2a.jfif?&output-quality=75&downsize=520:350&crop=520:350;12,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/88ecd69a368811eaa29d0242ac110004.jpg?&output-quality=75&downsize=520:350&crop=520:350;14,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/ee98ba9af69311e78020025f77df004f.jpg?&output-quality=75&downsize=520:350&crop=520:350;81,0&output-format=jpg', 'Rest comfortably in a superior room, featuring your choice of one king or two twin beds along with amenities like individual climate control, turndown service, and packaged drinking water.'),
('24', '2402', 'Deluxe Room', '3,354', 'https://q-cf.bstatic.com/xdata/images/hotel/max1024x768/22974151.jpg?k=92713ea3d3733631eb4ff644ef5e8a381b65cbe861991a825c1dbe3c147ae288&o=', 'https://r-cf.bstatic.com/xdata/images/hotel/max1024x768/22974150.jpg?k=944198a891f0f3ee89f3973de8a286144e12f38135868e579c99325460359d4a&o=', 'https://q-cf.bstatic.com/xdata/images/hotel/max1024x768/22987103.jpg?k=a609f05ed10ba778a665356f75cc0b2c5b4bd6c8ff96efa7f91961a4d7cc5bb9&o=', 'Our fourth-floor deluxe rooms offer one king or two twin beds, beautiful wooden floors and large windows to take in views of the Chamundi Hills. Keep up with the headlines with our free Wi-Fi and free weekday newspaper.'),
('24', '2403', '', '', '', '', '', ''),
('24', '2404', '', '', '', '', '', ''),
('3', '301', 'Deluxe', '4,500', 'http://www.hotelinderprakash.com/uploads/compressed/4ae849e0a0b808172abedc1e3ab21b261482568750.jpg', 'https://r-cf.bstatic.com/images/hotel/max1024x768/217/217405913.jpg', 'https://r-cf.bstatic.com/images/hotel/max1024x768/217/217405904.jpg', ' Each of these rooms are spacious and the marble flooring in the rooms enhance the brightness of the rooms. '),
('3', '302', 'Super Deluxe', '5,550', 'http://www.hotelinderprakash.com/uploads/compressed/ea7c26ba0b6288100d97d6eaa5c587bb1482568611.jpg', 'http://www.hotelinderprakash.com/uploads/compressed/491e62ca36f82e83774e0a2a9b3c582c1482568329.jpg', 'http://www.hotelinderprakash.com/uploads/compressed/653151440cecfb3dfdd9fb3ebbe790921482568330.jpg', ' Meticulously crafted and elaborately furnished, the air-conditioned Super Deluxe Room at Inder Prakash  Udaipur Hotel is the perfect place to stay in. '),
('4', '401', 'Suite', '11,300', 'http://www.lakepicholahotel.in/wp-content/uploads/2017/03/SUITE-2.jpg', 'http://www.lakepicholahotel.in/wp-content/uploads/2017/03/SUITE-ROOM-3.jpg', 'http://www.lakepicholahotel.in/wp-content/uploads/2017/03/SUITE-8.jpg', 'They feature a bedroom, two balconies each having a traditional swing and a day mattress for relaxing. It also has a living room sitting where you enjoy tea/coffee and snacks.'),
('4', '402', 'Deluxe', '7,000', 'http://www.lakepicholahotel.in/wp-content/uploads/2017/03/DELUXE-ROOM-2.jpg', 'http://www.lakepicholahotel.in/wp-content/uploads/2017/03/DELUXE-ROOM-1.jpg', 'http://www.lakepicholahotel.in/wp-content/uploads/2017/03/DELUXE-ROOM-BALCONY.jpg', 'Decorated in warm earthy palette, with handcrafted furniture and king or twin beds, these rooms are ornate with local artworks and offer all modern conveniences.'),
('4', '403', 'Standard', '4,700', 'http://www.lakepicholahotel.in/wp-content/uploads/2017/03/STANDARD-ROOM-1.jpg', 'http://www.lakepicholahotel.in/wp-content/uploads/2017/03/STANDARD-ROOM.jpg', '', 'Standard Rooms offer refreshing views of medieval courtyards and landscaped gardens.\r\nwhere you can spot wide variety of our resident local birds.'),
('5', '501', 'Standard', '4,795', 'http://www.jaiwanahaveli.com/pic16.jpg', 'http://www.jaiwanahaveli.com/pic17.jpg', 'http://www.jaiwanahaveli.com/pic8.jpg', 'All rooms in the hotel are standard rooms and offer basic amenities.The hotel offers a breathtaking view of the famous lake Pichola and surrounding Aravali hill ranges from its terrace.'),
('6', '601', 'Superior King', '4,500', 'https://media-cdn.tripadvisor.com/media/photo-w/11/42/d6/ec/superior-king.jpg', 'https://media-cdn.tripadvisor.com/media/photo-w/11/42/d7/3b/superior-king.jpg', 'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/9f/08/12/king-size-bed.jpg', 'Bright interiors, stylish designs, sea breeze and pleasing lighting.'),
('6', '602', 'Studio Suite', '4,950', 'https://media-cdn.tripadvisor.com/media/photo-w/11/42/d9/20/studio-suite.jpg', 'https://media-cdn.tripadvisor.com/media/photo-w/11/42/d8/6e/studio-suite.jpg', 'https://r1imghtlak.mmtcdn.com/3fce0aa4fefe11e9842d0242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'Large, well-designed Studio Suite, includes living room, bed room with bathroom and a balcony.'),
('6', '603', 'Deluxe Suite', '5,400', 'https://media-cdn.tripadvisor.com/media/photo-w/11/42/da/0b/studio-suite.jpg', 'https://media-cdn.tripadvisor.com/media/photo-w/11/42/d9/84/studio-suite.jpg', 'https://r-cf.bstatic.com/images/hotel/max1024x768/119/119399362.jpg', 'Spoil yourself in this 400 sqft one bedroom Deluxe Suite which comes with a Living Room, a bed room with bathroom and 02 spacious balconies.'),
('6', '604', 'Premium Suite', '5,850', 'https://pix6.agoda.net/hotelImages/2727937/-1/a38897cd978b84873b22eeba378c3066.jpg?s=1024x768', 'https://q-cf.bstatic.com/images/hotel/max1024x768/122/122944234.jpg', 'https://r1imghtlak.mmtcdn.com/7662c500ff8511e9b8fb0242ac110002.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'Spoil yourself in this 450 sqft one bedroom Suite which comes with a Living Room, a bed room with bathroom and a bath tub with luxurious comfort with a soaking tub for two and 02 spacious balconies.'),
('7', '701', 'Superior', '4,845', 'https://www.lemontreehotels.com/getattachment/327bffe6-0e1c-4863-849a-135ea79df97c/.aspx', 'https://media-cdn.tripadvisor.com/media/oyster/890/0b/3f/a6/5b/superior-room--v12341728.jpg', 'https://media-cdn.tripadvisor.com/media/oyster/890/0b/3f/a6/58/superior-room--v12341946.jpg', 'These contemporary rooms have a sit-out area attached and room block faces the swimming pool'),
('7', '702', 'Deluxe ', '5,732', 'https://www.lemontreehotels.com/getattachment/d17784cd-baa8-4e08-8fd0-4a39cce1a31b/.aspx', 'https://media-cdn.tripadvisor.com/media/oyster/890/0b/3f/a5/7c/deluxe-room--v12341438.jpg', 'https://media-cdn.tripadvisor.com/media/oyster/890/0b/3f/a5/63/deluxe-room--v12341992.jpg', 'These spacious rooms are equipped with facilities like free WiFi 24x7*, tea/ coffee maker, electronic safe and minibar. They come with a King bed.'),
('7', '703', 'Heritage', '8,907', 'https://www.lemontreehotels.com/getattachment/84aa46b2-7c95-4714-9557-1776f9552f6a/.aspx', 'https://r1imghtlak.mmtcdn.com/ea85c21a4fd611eab32a0242ac11000a.jpg?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/ea08c7424fd611ea9bf00242ac110009.jpg?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'These large rooms are inside a restored century old Portuguese mansion. A unique feature of this hotel, these magnificent rooms offer a great view of the manicured gardens.'),
('7', '704', 'Heritage Studio', '12,619', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/200705090718362615-706f9c5a788e11e9a4b20242ac110004.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/200705090718362615-8637b496788e11e9a5670242ac110002.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/ffd8f93e4fd611ea896d0242ac110007.jpg?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'Similar to Heritage rooms, these rooms are part of the restored Portuguese mansion. High ceilings, spacious and ergonomically designed with a view of our manicured gardens, these rooms feature a living room and bedroom into a duplex room type.'),
('8', '801', 'Superior ', '5,049', 'https://r1imghtlak.mmtcdn.com/c24a2a2c4fc511eaa0e40242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/67dd92b47d9911e783b90a4cef95d023.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/6da28a607d9911e789f00a4cef95d023.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'Our superior room features an expanded floor plan and convenient amenities like individual room climate control and a dual-line phone with a dataport and international direct dialling. '),
('8', '802', 'Deluxe', '6,399', 'https://r1imghtlak.mmtcdn.com/7e89b8947d9911e790c40a4cef95d023.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/61f662407d9911e7bf27025f77df004f.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/89a2d3404fc511eabea40242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'Find your Panjim oasis in our deluxe room, which boasts amenities like a plush king bed, a stylish seating area and a whirlpool with a rain shower. You can keep the room at a comfortable temperature using individual room climate control.'),
('8', '803', 'Junior Suite', '7,299', 'https://r1imghtlak.mmtcdn.com/23573ef2978811e787b40224510f5e5b.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/a4ef75f44fc511eaaf8a0242ac110002.jpg?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/a58599084fc511ea81100242ac110003.jpg?&output-quality=75&downsize=520:350&crop=520:350;0,20&output-format=jpg', 'Wake up refreshed in a king bed and sip on your coffee while you enjoy views of the Mandovi River in our junior suite. You can relax with a soak in the whirlpool that includes a rain shower.'),
('9', '901', 'Royal Deluxe', '5,999', 'http://kostamarbeachresort.com/assets/rooms/royal-deluxe/001.png', 'http://kostamarbeachresort.com/assets/rooms/royal-deluxe/002.png', 'https://ui.cltpstatic.com/places/hotels/8677/867786/images/0e4aa7f401ce11e492d7baaf629e9523_w.jpeg', 'Fireplace,Internet,Living Room,Newspaper,Hair Dryer'),
('9', '902', 'Royal Villa', '6,999', 'https://r1imghtlak.mmtcdn.com/b77430be2d9b11e89a640224510f5e5b.jfif?&output-quality=75&downsize=520:350&crop=520:350;4,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/e4bcba88736411e7ad67025f77df004f.jpg?&output-quality=75&downsize=520:350&crop=520:350;2,0&output-format=jpg', 'https://r1imghtlak.mmtcdn.com/c7d2008a4aeb11e98b0f0242ac110003.jfif?&output-quality=75&downsize=520:350&crop=520:350;0,5&output-format=jpg', 'Fireplace,Internet,Living Room,Newspaper,Hair Dryer');

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
  `user_id` int(12) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_name`, `email`, `contact_no`, `dob`, `gender`, `user_password`, `profile_pic`) VALUES
(3, 'Urvish', 'rajiv@gmail.com', '9727781834', '1998-01-09', 'Male', 'rajiv@123', ''),
(4, 'Harsh', 'harsh@gmail.com', '8796522554', '10-03-1998', 'Male', 'harsh@123', ''),
(5, 'Rahul', 'rahul@gmail.com', '8156087690', '1998-01-14', 'Male', 'rahul@123', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
