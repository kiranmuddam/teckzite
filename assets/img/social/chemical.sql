-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 23, 2018 at 09:57 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chemical`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `sno` int(100) NOT NULL,
  `id` varchar(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`sno`, `id`, `name`, `password`) VALUES
(1, 'chem@admin', 'admin', 'chem@2017');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `currentstatus` varchar(100) NOT NULL,
  `org` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `batch`, `fullname`, `currentstatus`, `org`, `location`) VALUES
(2, '2008-2014', 'Chinnam Bhagya Lakshmi', 'Higher Studies', 'NIT Warangal', 'Warangal'),
(3, '2008-2014', 'Digumatla Mehareswar', 'Doing Job', 'JK Paper Ltd.', 'Rayagada , Odisha'),
(4, '2008-2014', 'NAVEEN GUBBALA', 'Doing Job', 'MORDOR INTELLIGENCE', 'HYDERABAD'),
(8, '2008-2014', 'Shaik Mahammad Riyaz', 'Doing Job', 'ITC PSPD', 'Bhadrachalam, Telangana'),
(9, '2010-2016', 'Swathi', 'Doing Job', 'Srikar laboratories Pvt ltd', 'Vizag'),
(10, '2010-2016', 'Akhila sree Kotha', 'Doing Job', 'Genpact ', 'Hyderabad '),
(11, '2008-2014', 'Subbarao dhanikonda', 'Doing Job', 'Ushodaya publications Eenadu, ramojifilmcity', 'Hyderabad'),
(12, '2009-2015', 'KURAPATI RAMAKOTESH', 'Doing Job', 'Hetero Labs Ltd ', 'Visakhapatnam'),
(13, '2008-2014', 'Gundubogula manikanta', 'Doing Job', 'Sheela foam limited', 'Hyderabad'),
(14, '2009-2015', 'DivyaSri Gummadi', 'Higher Studies', 'Indus Business Academy', 'Banglore'),
(15, '2009-2015', 'Lovaraju nudurumati', 'Doing Job', 'Hetero labs', 'Vizag'),
(16, '2009-2015', 'Mummidisetty Devi', 'Doing Job', 'TechMahindra', 'Hyderabad'),
(18, '2008-2014', 'Krishnaveni Thota', 'Higher Studies', 'IIT Madras', 'Chennai'),
(19, '2008-2014', 'Kasyap Macharla', 'Doing Job', 'ITC PSPD', 'Bhadrachalam'),
(20, '2008-2014', 'China Subba Rao Chikkam', 'Doing Job', 'Aditya Engineering College ', 'Surampalem,Peddapuram'),
(22, '2009-2015', 'Maniteja kommineni ', 'Higher Studies', 'Vnit nagpur', 'Nagpur'),
(23, '2011-2017', 'Yelika Mahendra', 'Higher Studies', 'IIM', 'Amritsir or bodhgaya'),
(24, '2011-2017', 'sivaji thota', 'Higher Studies', 'mit', 'pune'),
(25, '2010-2016', 'Satyaveni Vanga', 'Doing Job', 'Alacriti info systems', 'Hyderabad'),
(26, '2008-2014', 'Sangabattula Prashanthi', 'Doing Job', 'HPCL VIZAG', 'Visakhapatnam'),
(27, '', '', '', '', ''),
(28, '2008-2014', 'Suresh m', 'Doing Job', 'Nuclear power corporation of India Limited', 'Kudankulam nuclear power project'),
(29, '', '', '', '', ''),
(30, '', '', '', '', ''),
(31, '2008-2014', 'Srikanth chinthagunta', 'Doing Job', 'ITC PSPD', 'Bhadrachalam'),
(32, '2008-2014', 'Bharathi Bandi', 'Higher Studies', 'Indian Institute of Space Science and Technology ', 'Thiruvananthapuram, Kerala'),
(33, '2011-2017', 'Eegala Vasudevarao', 'Higher Studies', 'Nit trichy', 'Trichy'),
(34, '', '', '', '', ''),
(35, '2010-2016', 'SATISH VALLURI', 'Higher Studies', 'National Institute of Technology, Tiruchirapalli', 'Tiruchirapalli'),
(36, '2010-2016', 'MADDINENI srinivasarao', 'Doing Job', 'Divis laboratories,unit 2 ,visakhapatnam', 'Visakhapatnam'),
(37, '2008-2014', 'Subbalakshmi Paamdramki', 'Doing Job', 'Nalco Water, An Ecolab Company', 'Pune'),
(38, '2009-2015', 'Edadasu lakshmana rao', 'Doing Job', 'Divis laboratories ltd', 'Choutuppal,nalgonda'),
(39, '2008-2014', 'Kasimkota karunasri', 'Doing Job', 'Hetero Labs,Kazipally,Hyd', 'Hyderabad'),
(40, '2008-2014', 'Ramaraju K', 'Doing Job', 'Research Wallet ', 'Hyderabad'),
(43, '2010-2016', 'Maddi sivaram reddy ', 'Doing Job', 'sv labs pvt ltd ', 'nalgonda ,chauttapal '),
(44, '2010-2016', 'Maddi sivaram reddy ', 'Doing Job', 'sv labs pvt ltd ', 'nalgonda ,chauttapal '),
(45, '2010-2016', 'Maddi sivaram reddy ', 'Doing Job', 'sv labs pvt ltd ', 'nalgonda ,chauttapal '),
(46, '2010-2016', 'RAVIKIRAN YALAMARTHI ', 'Doing Job', 'Chegg India Pvt ltd.', 'VISAKHAPATNAM '),
(47, '2009-2015', 'Eedupuganti spandana', 'Doing Job', 'Hetero labs limited ', 'Nakapalli , Vishakhapatnam district'),
(48, '2008-2014', 'SIVA REDDY ISUKA', 'Doing Job', 'HPCL Visakh Refinery', 'VISAKHAPATNAM'),
(49, '2010-2016', 'Mounika Kumari Pandranki ', 'Doing Job', 'IOCL', 'Paradip'),
(50, '', '', '', '', ''),
(51, '2008-2014', 'Prathibha Bezawada', 'Higher Studies', 'Andhra University', 'Visakhapatnam'),
(52, '2009-2015', 'LOVA PRASAD KOTHANGI', 'Doing Job', 'HETERO ', 'HYDERABAD'),
(53, '', '', '', '', ''),
(54, '2008-2014', 'Allimunnisha Begum Shaik', 'Doing Job', 'SAMI LABS LIMITED', 'Hyderabad'),
(55, '2009-2015', 'nallagundla Srichandana', 'Doing Job', 'ryali technologies ', 'Hyderabad '),
(56, '2008-2014', 'Rambabu Tamalapakula', 'Doing Job', 'Piramal Enterprises Ltd', 'Digwal, Medak dist'),
(57, '2011-2017', 'meerja mahaboob jani', 'Doing Job', 'IBM', 'Hyderabad'),
(58, '2009-2015', 'Naga Sai Swaroop Gannavarapu', 'Doing Job', 'Cipla LTD.', 'Bangalore'),
(61, '2009-2015', 'LOVA PRASAD KOTHANGI', 'Doing Job', 'HETERO ', 'HYDERABAD'),
(62, '2008-2014', 'Priyadarshini Velpula', 'Doing Job', 'RGUKT IIIT BASAR', 'Basar'),
(63, '2010-2016', 'PARSI SURYA KUMARI', 'Doing Job', 'V.S.M COLLEGE OF ENGINEERING', 'RAMACHANDARAPURAM'),
(64, '2008-2014', 'PINGULA SIREESGA', 'Doing Job', 'STATE BANK OF INDIA', 'Chintalapudi'),
(65, '2008-2014', 'Kandi neelima ', 'Doing Job', 'Sub inspector of police going for  training To ananthapur  ', 'Ananthapur '),
(66, '2008-2014', 'Prasanthi Yaragarla', 'Doing Job', 'IIT Hyderabad', 'Kandhi, Medak District'),
(67, '2008-2014', 'Usharani pasam', 'Doing Job', 'Granules India Limited', 'Hyderabad'),
(68, '2009-2015', 'AVINASH KOLLA', 'Higher Studies', 'UNIVERSITY OF PETROLEUM AND ENERGY STUDIES', 'DEHRADUN, UTTARAKHAND'),
(69, '2010-2016', 'Gowtham Kumar D', 'Doing Job', 'Amara Raja Batteries Ltd...', 'Tirupati'),
(70, '2009-2015', 'kinjangi Bala Raju', 'Doing Job', 'HETERO LABS LIMITED -UNIT-I', 'HYDERABAD'),
(71, '2008-2014', 'Sorry Naga Suryanarayana', 'Doing Job', 'Chola Ms risk services', 'chennai'),
(72, '2008-2014', 'Dhanavath Ramesh', 'Doing Job', 'SAIL', 'Bokaro steel city,jharkhand'),
(73, '2008-2014', 'kottakuppam suresh', 'Doing Job', 'axis bank ltd', 'nellore'),
(74, '2010-2016', 'Tarakeswari Tulugu', 'Doing Job', 'Quagen pharma India Pvt limited', 'Vishakhapatnam'),
(75, '', '', '', '', ''),
(76, '2008-2014', 'Pavan Kumar', 'Doing Job', 'Sai Life sciencea', 'Hyderabad'),
(77, '2008-2014', 'Vijaya Lakshmi Talla', 'Doing Job', 'Hetero Labs Ltd', 'Vizag'),
(78, '2008-2014', 'Mogilicharla siva sankar', 'Doing Job', 'ITC PSPD', 'Bhadrachalam'),
(79, '2008-2014', 'Ashok kumar', 'Doing Job', 'Omics International', 'Hyderabad'),
(80, '2009-2015', 'Balivada Naga Sravanthi ', 'Doing Job', 'Intas pharmaceuticals limited', 'Ahmedabad'),
(81, '', '', '', '', ''),
(82, '2010-2016', 'Gangula sai', 'Doing Job', 'Hetero labs limited', 'Nakkapalli,(near tuni),vizag dist'),
(83, '2009-2015', 'MANITEJA KOMMINENI', 'Higher Studies', 'VNIT-NAGPUR', 'NAGPUR'),
(84, '2008-2014', 'Bisetti Gopi ', 'Doing Job', 'HPCL', 'Visakhapatnam '),
(85, '2010-2016', 'Srikanth Panthangi', 'Doing Job', 'Hetero Labs', 'Hyderabad'),
(86, '2008-2014', 'DURGA PRASAD GUDIVADA', 'Doing Job', 'Indian Oil Corporation Ltd.', 'PARADEEP (ODISHA)'),
(87, '2009-2015', 'Prashanth Panduga', 'Doing Job', 'Aurobindo Pharma Limited', 'Sangareddy '),
(88, '2009-2015', 'NALI VENKATA TRIVENI', 'Higher Studies', 'IIT BHU', 'Varanasi'),
(89, '2009-2015', 'Lakshmi Lavanya Jyothi badri', 'Higher Studies', 'Aditya engineering college', 'Kakinada'),
(90, '2009-2015', 'I DHARMATEJA', 'Higher Studies', 'Andhra university', 'Visakapatnam'),
(91, '2008-2014', 'KoteswaraRao Karri', 'Doing Job', 'Coromandel International Ltd', 'Kakinada'),
(92, '2008-2014', 'Ravi Teja Galavila', 'Higher Studies', 'National Institute of Technology, Trichy', 'Tiruchirappalli, Tamilnadu'),
(95, '', '', '', '', ''),
(96, '2009-2015', 'NARSINGA RAO MURAPALA', 'Doing Job', 'DELTA PAPER MILLS LIMITED', ' Bhimavaram W.G., AP'),
(97, '', '', '', '', ''),
(98, '', '', '', '', ''),
(99, '2009-2015', 'Venkataramana.tangudu', 'Doing Job', 'Hetero drugs unit 9', 'Nakkapalli'),
(100, '2008-2014', 'Anusha Nalamala', 'Doing Job', 'Vipany Management Consulting Pvt Ltd', 'Hyderabad'),
(101, '2008', 'SHAIK NAZEEMA', 'Job', 'HPCL', ''),
(102, '2008', 'GODI SWATHI', 'Job', 'ITC', 'Badrachalam'),
(103, '2008', 'YACHAMANENI PRIYANKA', 'Job', 'ITC', 'Badrachalam'),
(104, '2008', 'PICHIKA NAGA VENKATA PRAMEELA', 'Job', 'ITC', 'Badrachalam'),
(105, '2008', 'KAKARLA NIROSHA', 'Job', 'State Bank of India - Bank', ''),
(106, '2008', 'PASAM USHA RANI', 'Job', 'Apex drugs', 'Hyderabad'),
(107, '2008', 'PILLI SWATHI', 'Job', 'ITC', 'Badrachalam'),
(108, '2008', 'TALLA VIJAYA LAKSHMI', 'Job', 'heterodrugs', 'Nakkapalli'),
(109, '2008', 'TADIKALA ANUSHA', 'Job', 'penn bio chemia India pvt ltd', ''),
(110, '2008', 'NALLAGTLA NAGAMANI', 'Job', 'MMC APPCO', 'Hyderabad'),
(111, '2008', 'KONDA GIRIJA RANI', 'Job', 'Mortor Intelligence', ''),
(112, '2009', 'KALLA LAVANYA', 'Job', 'Hetero drugs', 'nakkapali'),
(113, '2009', 'MAANYAM HEMA SUSMITHA', 'Job', 'ITC', 'Bhadrachalam'),
(114, '2009', 'MADDINENI VANAJA', 'Job', 'Hetrodrugs', 'nakkapalli'),
(115, '2009', 'GANJI  SRAVANI', 'Job', '', 'bangalore'),
(116, '2009', 'MAJJI  ANASUYA', 'Job', 'Hetrodrugs', 'Nakkapalli'),
(117, '2009', 'MUMMIDISETTY DEVI', 'Job', 'AKZONOBEL India limited', 'Hyderabad'),
(118, '2009', 'GALI MOUNIKA LAKSHMI', 'Job', 'Hetrodrugs', 'Nakkapalli'),
(119, '2009', 'KASUKURTHI ANURADHA', 'Job', 'Hetrodrugs', 'nakkapalli'),
(120, '2009', 'DWARAMPUDI BHARGAVI', 'Job', 'ITC', 'Badrachalam'),
(121, '2009', 'POLISETTI PREETHI SOWMYASRI', 'Job', 'Hetrodrugs', 'Nakkapalli'),
(122, '2009', 'CHEDUGONDI RUTHU KUMARI', 'Job', 'hetrodrugs', 'Nakkapalli'),
(123, '2009', 'KEESARI PRIYANKA', 'Job', 'Hetrodrugs', 'Nakkapalli'),
(124, '2009', 'VADDIREDDI MOUNIKA DEVI', 'Job', 'APPCO', 'vijayawada'),
(125, '2009', 'VALLEPU NAGALAKSHMI', 'Job', 'kiriti soft technology', ''),
(126, '2008', 'ROKALLA CHINA VARAHALANAIDU', 'Job', 'Arabindo research center', 'Hyderabad'),
(127, '2008', 'DASARI SRIKANTH', 'Job', 'Symed', 'jeedimetla , hyderabad'),
(128, '2008', 'KETHA SRAVAN KUMAR', 'Job', 'DCM innnovation management', 'Hyderabad'),
(129, '2008', 'BUDI KIRANKUMAR', 'Job', 'Divis Labs', 'Nalgonda'),
(130, '2008', 'NEELAPALLI SATHI BABU', 'Job', 'Divis Labs', 'Vizag'),
(131, '2008', 'KUTCHARLAPATI RAMA RAJU', 'Job', 'Osmics research publications ', 'Hyderabad'),
(132, '2008', 'KOMMOJU ANIL KUMAR', 'Job', 'ITC', 'Bhadrachalam'),
(133, '2008', 'DOMMETI UMESH CHANDRA', 'Job', 'Deccanfine chemicals', 'Tuni'),
(134, '2008', 'BARRE DURGA RAO', 'Job', 'Divis Labs', 'vizag'),
(135, '2008', 'POLUBOTHU PRASANNA KUMAR', 'Job', 'East india petroluem pvt limited', 'Naval dacklack'),
(136, '2008', 'GUDIVADA RAMSAIKUMAR', 'Job', 'ITC', 'Badrachalam'),
(137, '2008', 'LATCHUBUGATA CHANDRA SEKHAR', 'Job', 'IICT', 'Hyderabad'),
(138, '2009', 'TANGUDU VENKATA RAMANA', 'Job', 'Hetrodrugs', 'Nakkapalli'),
(139, '2009', 'KUNDRAPU PRASAD', 'Job', '', 'Hyderabad'),
(140, '2009', 'CHITTIPROLU VEERARAMANJANEYULU', 'Job', '', 'Bangalore'),
(141, '2009', 'MUGGALLA SIVA NAGA RAJU', 'Job', 'NFCL', ''),
(142, '2009', 'SUDAGANI JAGADEESWARA RAO', 'Job', 'hetrodrugs', ''),
(143, '2009', 'LANKI YERNAIDU', 'Job', 'hetrodrugs', ''),
(144, '2009', 'SYED SHAKEEL AHAMED', 'Job', 'Hetrodrugs', ''),
(145, '2009', 'DUVVADA SURENDRA BABU', 'Job', 'ITC', 'bhadrachalam'),
(146, '2009', 'KARRA DINESH', 'Job', 'Hetrodrugs', 'Nakkapalli'),
(147, '2009', 'NANDYALA PURUSHOTHAMA NAIDU', 'Job', 'heterodrugs', 'Nakkapalli'),
(148, '2009', 'OLETI SAI KALYAN', 'Job', 'vindhya organics pvt ltd', 'medak'),
(149, '2009', 'PALLI RAVANAYYA', 'Job', 'BGM policy innovations pvt ltd', 'secundrabad'),
(150, '2009', 'RAVI MAHESH KUMAR', 'Job', 'Infosys', ''),
(151, '2009', 'RUDRA NAGA CHANDRA KUMAR', 'Job', 'NFCL', ''),
(152, '2009', 'SHAIK KALISHA VALI', 'Job', 'vindhya pharma pvt ltd', 'miyapur, secundrabad'),
(153, '2009', 'CHEPARTHI CHAKRAVARTHY', 'Job', 'Hetrodrugs', 'Hyderabad'),
(154, '2009', 'MAKKE NAGA SAI BABU', 'Job', 'ITC', ''),
(155, '2009', 'BEJJIPURAM GANGU NAIDU', 'Job', 'heterodrugs', 'Hyderabad'),
(156, '2009', 'KHANDAVILLI VEERANJANEYULU', 'Job', '', 'bangalore'),
(157, '2009', 'NUDURUMATI LOVA RAJU', 'Job', 'Hetrodrugs', 'Hyderabad'),
(158, '2009', 'VUTTLA SIDDHARTHA', 'Job', 'Hetrodrugs', 'Hyderabad'),
(159, '2008', 'SHAIKK JULEKHA BEGUM', 'M.Tech', 'AU', ''),
(160, '2008', 'MANGA RAMYA DURGA', 'M.Tech', 'IIT Rurke', ''),
(161, '2008', 'CHILAKA THIRUPATHAMMA', 'M.Tech', 'AU', ''),
(162, '2009', 'BALIVADA NAGASRAVANTHI', 'M.Tech', 'IIT KGP', ''),
(163, '2009', 'POTHARLANKA VANI SRUTHI', 'M.S', '', ''),
(164, '2008', 'SUDIKONDALA PURUSHOTHAM', 'M.Tech', 'AU', ''),
(165, '2008', 'CHIKKAM CHINA SUBBARAO', 'M.Tech', 'JNTU,kakinada', ''),
(166, '2008', 'KOKKIRAPATI V V SATYANNARAYANA', 'M.Tech', 'AU', ''),
(167, '2008', 'LALAM NARESH', 'M.Tech', 'NIT,Surat', ''),
(168, '2008', 'ATTI SRINIVAS', 'M.Tech', 'AU', ''),
(169, '2008', 'THANGULA KRUSHNA', 'M.Tech', 'Andhra university', ''),
(170, '2008', 'KARANAM MAHESH', 'M.Tech', 'IIT,kGP', ''),
(171, '2008', 'JUEREDDI SANYASINAIDU', 'M.Tech', 'AU', ''),
(172, '2008', 'MALLURI SAI VIJAYA KRISHNA', 'M.Tech', 'NIT, Tiruchurapalli Tamilnadu', ''),
(173, '2008', 'RELANGI VENUGOPALAKRISHNAGOWDA', 'M.Tech', 'NIT, Tiruchurapalli Tamilnadu', ''),
(174, '2009', 'SHAIK SHAHID', 'M.Tech', 'IIT GAUHATI', '');

-- --------------------------------------------------------

--
-- Table structure for table `cdpc`
--

CREATE TABLE `cdpc` (
  `id` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(20000) NOT NULL,
  `from` varchar(255) NOT NULL,
  `sendto` varchar(255) NOT NULL,
  `time` varchar(10) NOT NULL,
  `date` varchar(10) NOT NULL,
  `attachment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cdpc`
--

INSERT INTO `cdpc` (`id`, `title`, `body`, `from`, `sendto`, `time`, `date`, `attachment`) VALUES
(1, 'safdf', 'sdfdf', 'admin', 'E2-CH-01', '10:32 PM', '3 08 2017', ''),
(2, 'HELLO', 'SFSDFGHHFSDFGFDGFD', 'admin', 'ALL', '11:14 AM', '5 08 2017', '');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `sno` int(100) NOT NULL,
  `id` varchar(7) DEFAULT NULL,
  `name` varchar(39) DEFAULT NULL,
  `year` varchar(2) DEFAULT NULL,
  `branch` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`sno`, `id`, `name`, `year`, `branch`) VALUES
(1, 'N120011', 'Turlapati Anusha', 'E4', 'CHE'),
(2, 'N120151', 'Sanchana Bharathi', 'E4', 'CHE'),
(3, 'N120203', 'Gudida Bhavani', 'E4', 'CHE'),
(4, 'N120338', 'Aviri Prasanna', 'E4', 'CHE'),
(5, 'N120354', 'Gollapalli Mani Veera Santhoshi', 'E4', 'CHE'),
(6, 'N120392', 'Varre Lakshmi', 'E4', 'CHE'),
(7, 'N120404', 'Dhupam Divya Jyothi', 'E4', 'CHE'),
(8, 'N120874', 'Killada Ramya', 'E4', 'CHE'),
(9, 'N120879', 'Shaik Ruksana', 'E4', 'CHE'),
(10, 'N120971', 'Thmalapakula Vinolya', 'E4', 'CHE'),
(11, 'N120122', 'Ejjagiri Srikanth', 'E4', 'CHE'),
(12, 'N120135', 'Bade Upendra', 'E4', 'CHE'),
(13, 'N120265', 'Chittipalla Venkatesh', 'E4', 'CHE'),
(14, 'N120370', 'Tadivalasa  Prem Swaroop', 'E4', 'CHE'),
(15, 'N120506', 'Puppala Pavan Kumar', 'E4', 'CHE'),
(16, 'N120651', 'Vadlana David Raju', 'E4', 'CHE'),
(17, 'N120751', 'Nadipamu Praveen', 'E4', 'CHE'),
(18, 'N120853', 'Ukkujuri Raj Kumar', 'E4', 'CHE'),
(19, 'N120892', 'Pasupula Rama Tejaswi', 'E4', 'CHE'),
(20, 'B141261', 'Vajrapu Swathi', 'E2', 'CHE'),
(21, 'N140002', 'Somaraju Chandrakala', 'E2', 'CHE'),
(22, 'N140004', 'Turubilli Rama Devi', 'E2', 'CHE'),
(23, 'N140018', 'Vangapandu Nagamani', 'E2', 'CHE'),
(24, 'N140023', 'Karri Veeralakshmi', 'E2', 'CHE'),
(25, 'N140024', 'Yedlapalli Gowri', 'E2', 'CHE'),
(26, 'N140033', 'Vangapandu Siva', 'E2', 'CHE'),
(27, 'N140036', 'Adurthi Sai Naresh', 'E2', 'CHE'),
(28, 'N140037', ' Medisetti Arjun Sai Prasad', 'E2', 'CHE'),
(29, 'N140054', 'Chinapana Swathi', 'E2', 'CHE'),
(30, 'N140060', 'Kanda Divya', 'E2', 'CHE'),
(31, 'N140063', 'Neredimilli Naga Lakshmi', 'E2', 'CHE'),
(32, 'N140064', 'Chitturi Syamala', 'E2', 'CHE'),
(33, 'N140066', 'Kollu Umadevi', 'E2', 'CHE'),
(34, 'N140067', 'Relli Teja', 'E2', 'CHE'),
(35, 'N140074', 'Navudu Veera Deepika Sai', 'E2', 'CHE'),
(36, 'N140075', 'Chedalla Sri Teja Naidu', 'E2', 'CHE'),
(37, 'N140090', 'Tompala Rambabu', 'E2', 'CHE'),
(38, 'N140091', 'Kondeti Vijaya Satyanarayana', 'E2', 'CHE'),
(39, 'N140102', 'Kurakula Yallamma', 'E2', 'CHE'),
(40, 'N140105', 'Masimukkala Naga Ramya', 'E2', 'CHE'),
(41, 'N140110', 'Degala Siva Parvathi', 'E2', 'CHE'),
(42, 'N140112', ' Putti Naga Rangamma', 'E2', 'CHE'),
(43, 'N140128', 'Silpa Pandyani', 'E2', 'CHE'),
(44, 'N140137', 'Baki Yogesh', 'E2', 'CHE'),
(45, 'N140138', 'Medisetti Varahala Babu', 'E2', 'CHE'),
(46, 'N140149', 'Mypala Sekhar', 'E2', 'CHE'),
(47, 'N140208', 'Nookella Siva Rani', 'E2', 'CHE'),
(48, 'N140210', 'Sesetti Tripura Sireesha', 'E2', 'CHE'),
(49, 'N140214', 'Lakkaraju Vasudha Kumari', 'E2', 'CHE'),
(50, 'N140219', 'Nuka Rajakumari', 'E2', 'CHE'),
(51, 'N140311', 'Samanthakurthi Geetha Priya', 'E2', 'CHE'),
(52, 'N140352', 'Ponna mohana P P Vijaya Surya Rajeswari', 'E2', 'CHE'),
(53, 'N140366', 'Kappa Santhoshi', 'E2', 'CHE'),
(54, 'N140368', 'Siripurapu Durga Devi', 'E2', 'CHE'),
(55, 'N140383', 'Kurra Srinu', 'E2', 'CHE'),
(56, 'N140414', 'Potnuru Sandhya', 'E2', 'CHE'),
(57, 'N140421', ' Muchhu Jayasri', 'E2', 'CHE'),
(58, 'N140443', 'Nekkala Prasanth', 'E2', 'CHE'),
(59, 'N140533', 'Gandiboyana Sudheer Kumar', 'E2', 'CHE'),
(60, 'N140563', 'Pulipati Sravani', 'E2', 'CHE'),
(61, 'N140582', 'Kethavath Kumar Naik', 'E2', 'CHE'),
(62, 'N140626', 'Vandana Ajay', 'E2', 'CHE'),
(63, 'N140652', 'Malluri Surekha Bhavani', 'E2', 'CHE'),
(64, 'N140673', 'Chowtupalli Kousalya', 'E2', 'CHE'),
(65, 'N140764', 'Malapolu Supriya Dass', 'E2', 'CHE'),
(66, 'N140765', 'Rongali Jyothsna', 'E2', 'CHE'),
(67, 'N140778', 'Mareedu Ganesh', 'E2', 'CHE'),
(68, 'N140779', 'Vangalapudi Suresh', 'E2', 'CHE'),
(69, 'N140801', ' Pichika Syamalamba', 'E2', 'CHE'),
(70, 'N140806', 'Udatha Tulasi', 'E2', 'CHE'),
(71, 'N140853', 'Duvvapu Naga Lakshmi', 'E2', 'CHE'),
(72, 'N140856', 'Sali Praneetha', 'E2', 'CHE'),
(73, 'N140867', 'Paila Vasantha', 'E2', 'CHE'),
(74, 'N140868', 'Madu Bhanu', 'E2', 'CHE'),
(75, 'N140880', 'Kondayapalepu Divakar Venkata Satish', 'E2', 'CHE'),
(76, 'N140906', 'Jana Parvathi', 'E2', 'CHE'),
(77, 'N140908', 'Shaik Khajurun', 'E2', 'CHE'),
(78, 'N140960', 'Shaik Reshma Afreen', 'E2', 'CHE'),
(79, 'N140968', 'Maade Manikanta', 'E2', 'CHE'),
(80, 'N140984', 'Kota Gowtham', 'E2', 'CHE'),
(81, 'N140183', 'Boorlu Mani Babu', 'E1', 'CHE'),
(82, 'N150026', 'Jinde Dinesh', 'E1', 'CHE'),
(83, 'N150027', 'Marlapati Jayanth', 'E1', 'CHE'),
(84, 'N150089', 'Bommidi Akhila', 'E1', 'CHE'),
(85, 'N150170', 'Moodu Rajeswari', 'E1', 'CHE'),
(86, 'N150175', 'Jinnabattina Hari Sindhuja', 'E1', 'CHE'),
(87, 'N150176', 'Boddu Manisha', 'E1', 'CHE'),
(88, 'N150182', 'Jinnabattina Hari Hindhuja', 'E1', 'CHE'),
(89, 'N150216', 'Mohammad Arshia Hasen', 'E1', 'CHE'),
(90, 'N150304', 'Uppada Priyanka', 'E1', 'CHE'),
(91, 'N150305', 'Chinta Satya Srilakshmi', 'E1', 'CHE'),
(92, 'N150346', 'Kolipakula Venkatalakshmisivachandana', 'E1', 'CHE'),
(93, 'N150347', 'Pulapakula Usharani', 'E1', 'CHE'),
(94, 'N150362', 'Salapu Pydiraju', 'E1', 'CHE'),
(95, 'N150372', 'Apiganta Chinnari', 'E1', 'CHE'),
(96, 'N150382', 'Pammina Devi', 'E1', 'CHE'),
(97, 'N150425', 'Netheti Sirisha', 'E1', 'CHE'),
(98, 'N150434', 'Harsha Deepthi Gunana', 'E1', 'CHE'),
(99, 'N150445', 'Nasika Charishma Ganesh', 'E1', 'CHE'),
(100, 'N150454', 'Ketireddi Kumari', 'E1', 'CHE'),
(101, 'N150468', 'Bommidi Maha Lakshmi', 'E1', 'CHE'),
(102, 'N150472', 'C Ravi Surya', 'E1', 'CHE'),
(103, 'N150486', 'Chattu Sambasiva Rao', 'E1', 'CHE'),
(104, 'N150487', 'Allanki Pavan Sai', 'E1', 'CHE'),
(105, 'N150499', 'Shaik Tasleem Sultana', 'E1', 'CHE'),
(106, 'N150507', 'Sesetti Jayaraju', 'E1', 'CHE'),
(107, 'N150521', 'Sanapala Pavani', 'E1', 'CHE'),
(108, 'N150532', 'Balumuri Naga Chandipriya', 'E1', 'CHE'),
(109, 'N150560', 'Pathan Areeff', 'E1', 'CHE'),
(110, 'N150638', 'Meesala Satish', 'E1', 'CHE'),
(111, 'N150643', 'Kolli Ramakrishna', 'E1', 'CHE'),
(112, 'N150644', 'Bonu Uday Kiran', 'E1', 'CHE'),
(113, 'N150656', 'Kollu Divya', 'E1', 'CHE'),
(114, 'N150660', 'Dibbidi Sateesh', 'E1', 'CHE'),
(115, 'N150668', 'Vavilapalli Sankara Rao', 'E1', 'CHE'),
(116, 'N150734', 'Duggi Sarala', 'E1', 'CHE'),
(117, 'N150735', 'Kunam Praveen Kumar', 'E1', 'CHE'),
(118, 'N150775', 'Saladi Sri Lakshmi Durga', 'E1', 'CHE'),
(119, 'N150810', 'Kondakrindi Siva Reddy', 'E1', 'CHE'),
(120, 'N150828', 'Meesala Suresh', 'E1', 'CHE'),
(121, 'N150839', 'Tumu Pavani', 'E1', 'CHE'),
(122, 'N150843', 'Kondrothu Suryanarayana', 'E1', 'CHE'),
(123, 'N150866', 'Nidikonda Srilakshmi', 'E1', 'CHE'),
(124, 'N150871', 'Boddeda Chandrika', 'E1', 'CHE'),
(125, 'N150923', 'Dadi Divya', 'E1', 'CHE'),
(126, 'N150927', 'Vakada Sai Kumar', 'E1', 'CHE'),
(127, 'N150949', 'Velnati Swathi', 'E1', 'CHE'),
(128, 'N150951', 'Midathani Chinnari', 'E1', 'CHE'),
(129, 'N150982', 'Kadali Lakshmi Durga', 'E1', 'CHE'),
(130, 'N150987', 'Dondapati Vamsi', 'E1', 'CHE'),
(131, 'N150993', 'Tummala Badarinadh', 'E1', 'CHE'),
(132, 'N151023', 'Velamala Satyashekhar', 'E1', 'CHE'),
(133, 'N151030', 'Kada Satya Bhavani', 'E1', 'CHE'),
(134, 'N151063', 'Kuditeeri Naveen', 'E1', 'CHE'),
(135, 'N151074', 'Kadali Madhuri', 'E1', 'CHE'),
(136, 'N151084', 'Allam Yamini Koteswari', 'E1', 'CHE'),
(137, 'N151104', 'Yakkanti Yamini Saraswathi', 'E1', 'CHE'),
(138, 'N151112', 'Dandangi Suryakala', 'E1', 'CHE'),
(139, 'N151124', 'Pittu Jyothi', 'E1', 'CHE'),
(140, 'N151142', 'Guttula Durga Venkata Nagesh', 'E1', 'CHE'),
(141, 'N151144', 'Bandaru Hema Lakshmi Durga', 'E1', 'CHE'),
(142, 'N151159', 'Madireddy Nagasri', 'E1', 'CHE'),
(143, 'N151193', 'Kuppili Anuradha', 'E1', 'CHE'),
(144, 'N151206', 'Nagula Mangarani', 'E1', 'CHE'),
(145, 'N151229', 'Gali Anilkumar', 'E1', 'CHE'),
(146, 'N151299', 'Vuppala Venkatesh', 'E1', 'CHE'),
(147, 'N151300', 'Shaik Firoz', 'E1', 'CHE'),
(148, 'N150155', 'N. Sireesha', 'E1', 'CHE'),
(149, 'N150466', 'B.Bhavani', 'E1', 'CHE'),
(150, 'N140038', 'GANDHAM KIRAN', 'E1', 'CHE'),
(151, 'N150160', 'SHAIK AYESHA SIDDIKHAANSARI', 'E1', 'CHE'),
(152, 'N150294', 'MYLE DINAKAR', 'E1', 'CHE'),
(153, 'N150619', 'BAYYA DEVI', 'E1', 'CHE'),
(154, 'N150926', 'GHANTASALA YASWANTHI', 'E1', 'CHE'),
(155, 'N150941', 'KANKANALA REVATHI', 'E1', 'CHE'),
(156, 'N151212', 'GOSALA YAZNA PRIYA', 'E1', 'CHE');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `sno` int(100) NOT NULL,
  `id` varchar(255) NOT NULL,
  `qno` varchar(255) NOT NULL,
  `reply` varchar(2000) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`sno`, `id`, `qno`, `reply`, `message`) VALUES
(5, 'N140233', '1', 'YES', 'hhhiiiiiiiiiiiiiiii'),
(6, 'N140233', '2', 'YES', 'chemical');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `Sno` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`Sno`, `Name`, `Type`, `Status`, `Website`, `Location`) VALUES
(1, 'Coromandel Fertilizers Ltd', 'Fertilizers', '', 'www.coromandel.biz/', ''),
(2, 'Deepak Fertilizers & Petrochem Corp Ltd', 'Fertilizers', '', 'www.dfpcl.com', ''),
(3, 'Duncans Industries Ltd ', 'Fertilizers', '', 'www.duncansindustries.com', ''),
(4, 'Gujarat Narmada Valley Fertilizers Co.Ltd', 'Fertilizers', 'private sector', 'www.gnfc.in/', ''),
(5, 'Gujarat State Fertilizers & Chemicals Ltd', 'Fertilizers', '', 'www.gsfclimited.com/', ''),
(6, 'Nagarjuna Fertilizers & Chemicals Ltd', 'Fertilizers', '', 'www.nagarjunafertilizers.com/', ''),
(7, 'Rashtriya Chemicals and Fertilizers Ltd', 'Fertilizers', '', 'www.rcfltd.com', ''),
(8, 'Tuticorin Alkali Chemicals & Fertilizers Ltd', 'Fertilizers', '', 'www.tacfert.in', ''),
(9, 'Mafatlal Dyes & Chemicals Ltd', 'Dyes', '', '', ''),
(10, 'Sandhya Dyes & Chemicals ', 'Dyes', '', '', ''),
(11, 'Vanavil Dyes and Chemicals Ltd', 'Dyes', '', 'www.niir.org ›', ''),
(12, 'BPCL(Bharat Petroleum Corporation Ltd)', 'Petro Chemical Industries', 'Public-Navaratna', 'https://www.bharatpetroleum.com/', ''),
(13, 'BOC(Bharat Oil Company)', 'Petro Chemical Industries', '', 'www.bharatoil.com/', 'India'),
(14, 'Castrol India', 'Petro Chemical Industries', '', 'www.castrol.com/', ''),
(15, 'Essar Oil', 'Petro Chemical Industries', 'private sector', 'https://www.essaroil.co.in/', ''),
(16, 'GAIL(Gas Authority of India Ltd)', 'Petro Chemical Industries', 'Public-Maharatna', 'www.gailonline.com/', ''),
(17, 'HPCL(Hindustan Petroleum Corporation Ltd)', 'Petro Chemical Industries', 'Public-Navaratna', 'www.hindustanpetroleum.com/', ''),
(18, 'IOC(Indian Oil Company)', 'Petro Chemical Industries', 'Public-Maharatna', 'https://www.iocl.com/', ''),
(19, 'ONGC(Oil and Natural Gas Commision)', 'Petro Chemical Industries', 'Public-Maharatna', 'www.ongcindia.com', ''),
(20, 'Reliance Industries Ltd', 'Petro Chemical Industries', '', 'www.ril.com', ''),
(21, 'Bongaigaon Refinery', 'Petro Chemical Industries', '', '', ''),
(22, 'Indraprastha Gas', 'Petro Chemical Industries', '', 'www.iglonline.net/', ''),
(23, 'Baker Oil Treating', 'Petro Chemical Industries', '', 'bakeroiltreatingiltd.zumvu.com', ''),
(24, 'Jindal Drilling & Industries', 'Petro Chemical Industries', '', 'www.jindal.com/jdil/', ''),
(25, 'Lan India', 'Petro Chemical Industries', '', '', ''),
(26, 'Shell India', 'Petro Chemical Industries', 'private sector', 'www.shell.in/', 'Multinational'),
(27, 'Shiv Vani Universal', 'Petro Chemical Industries', '', 'www.shiv-vani.co.in/', ''),
(28, 'Deepak Fertilizers & Petrochem Corp Ltd', 'Petro Chemical Industries', '', 'www.dfpcl.com/', ''),
(29, 'Assam Petrochemicals Ltd', 'Petro Chemical Industries', '', 'assampetrochemicals.co.in/', ''),
(30, 'Cetex Petrochemicals', 'Petro Chemical Industries', '', 'www.cetexpetro.com/', ''),
(31, 'Daga Petrochemicals Ltd', 'Petro Chemical Industries', '', 'www.dagaglobal.com/', ''),
(32, 'Haldia Petrochemicals Ltd', 'Petro Chemical Industries', '', 'www.haldiapetrochemicals.com/', ''),
(33, 'Indian Petrochemicals Corporation Ltd', 'Petro Chemical Industries', '', 'www.ipcl.co.in', ''),
(34, 'Narmada Chematur petrochemicals Ltd', 'Petro Chemical Industries', '', 'narmada-chematur.lookchem.com', ''),
(35, 'Rama Petrochemicals Ltd', 'Petro Chemical Industries', '', 'www.ramapetrochemicals.com/', ''),
(36, 'Southern Petrochemicals Industries Corporation Ltd', 'Petro Chemical Industries', '', 'spic.in', ''),
(37, 'Perfect Polymers', 'Polymer Manufacturers', '', 'perfectpolymers.net/', ''),
(38, 'Unimers India Ltd', 'Polymer Manufacturers', '', 'www.unimers.in', ''),
(39, 'Aquapharm', 'Polymer Manufacturers', '', 'www.aquapharm-india.com', ''),
(40, 'Bhansali Engineering Polymers Ltd', 'Polymer Manufacturers', '', 'bhansaliabs.com', ''),
(41, 'Effetech', 'Polymer Manufacturers', '', 'www.effectech.co.uk', ''),
(42, 'Essen Multipack Ltd', 'Polymer Manufacturers', '', 'www.essenpoly.com', 'Rajkot,Gujarat'),
(43, 'Formulated Polymers Ltd (SIDCO Industrial Estate)', 'Polymer Manufacturers', '', 'www.formulatedpolymers.com/', 'Thirumazhisai,Chennai,Tamilnadu'),
(45, 'Haryana Leather Chemical Ltd', 'Polymer Manufacturers', '', 'www.leatherchem.com', 'Bhikaji Cama Place,New Delhi'),
(46, 'Horizon Polymer Engineering Pvt.Ltd', 'Polymer Manufacturers', '', 'horizonpolymer.com', 'Umer Kendra, P.B Marg, Worli,Mumbai'),
(47, 'Inyech Orchem Pvt.Ltd', 'Polymer Manufacturers', '', 'www.indiamart.com/intech-orchem/', 'Near Shah Kitwear,GIDC,Vapi,Gujarat'),
(48, 'Kamsons Chemicals Pvt.Ltd', 'Polymer Manufacturers', '', 'www.kamsons.com/', 'Ttc Industrial Area,Thane Belapur Road,MIDC, Mumbai'),
(49, 'M.K.Petro Products India Pvt.Ltd', 'Polymer Manufacturers', '', 'www.makphalt.com', 'Jeevan Nagar, Ashram,New Delhi'),
(50, 'Marudhar Paints and Polymers', 'Polymer Manufacturers', '', 'www.marudharpolymers.co.in', 'Jodhpur(Rajasthan) '),
(51, 'Meron Bio Polymers ', 'Polymer Manufacturers', '', 'www.meronbiopolymers.com/', ''),
(52, 'Monarch Catalyst Pvt.Ltd', 'Polymer Manufacturers', '', 'www.monarchcatalyst.com', ''),
(53, 'Neel Chem(india)', 'Polymer Manufacturers', '', 'www.neelchem.com/', 'Gujarat Society, Paldi'),
(54, 'Newgen Specialty Plastics ', 'Polymer Manufacturers', '', 'www.newgenspecialty.com/', 'Greater Noida,Uttar Pradesh'),
(55, 'Nikhil Adhesives Ltd', 'Polymer Manufacturers', '', 'www.nikhiladhesives.com/', 'Andheri (East), Mumbai'),
(56, 'Polyols & Polymers', 'Polymer Manufacturers', '', 'www.polyolsandpolymers.net', 'Chanod,Vapi, Gujarat'),
(57, 'Power Additives', 'Polymer Manufacturers', '', '', 'Sakinaka,Maharashtra'),
(58, 'Rand Polyproducts Pvt.Ltd', 'Polymer Manufacturers', '', 'randpoly.com/', 'Ghotawade, Maharashtra'),
(59, 'Resadh Groups', 'Polymer Manufacturers', '', 'www.satyenpolymers.com', ''),
(60, 'Rishabh Metals & Chemicals Pvt.Ltd', 'Polymer Manufacturers', '', 'www.rmc.in/', 'Churchgate,Mumnbai'),
(61, 'Roop Automotives Ltd', 'Polymer Manufacturers', '', 'www.roopauto.com/', 'Sohna,Rojka, Haryana'),
(62, 'Roto Polymers and Chemicals', 'Polymer Manufacturers', '', 'www.rotexepoxy.com', 'Ambattur Industrial Estate,Chennai'),
(63, 'RAN Chemicals & RSA Industries', 'Polymer Manufacturers', '', 'ranchemicals.in/', 'Hingana Industrial Estate, Nagpur'),
(64, 'Sai Group India', 'Polymer Manufacturers', '', '', ''),
(65, 'Sanmar Group ', 'Polymer Manufacturers', '', 'www.sanmargroup.com', ''),
(66, 'SK Formulations', 'Polymer Manufacturers', '', 'www.skformulations.com/', 'Rabale, Navi, Mumbai'),
(67, 'Synpol Products /Synthetic Resin Manufacturer ', 'Polymer Manufacturers', '', 'www.synpolproducts.net', ''),
(68, 'Transpek Industry Ltd', 'Polymer Manufacturers', '', 'www.transpek.com', 'Arch Race Cource Circle Vadodora'),
(69, 'Tuff Coat Polymers Pvt.Ltd', 'Polymer Manufacturers', '', 'www.tuffcoats.com/', 'Sinhagad Road, Pune, Maharashtra'),
(70, 'Valia Impex Pvt.Ltd', 'Polymer Manufacturers', '', 'vipl.com', 'Andheri (East), Mumbai'),
(71, 'Wriston Polymers Pvt.Ltd', 'Polymer Manufacturers', '', 'www.indiarubberdirectory.com/wriston/', 'Chennai, Tamilnadu'),
(72, 'Xpro India Ltd', 'Polymer Manufacturers', '', 'www.xproindia.com', 'Multilocational'),
(73, 'Zyndex Industries ', 'Polymer Manufacturers', '', 'www.zydexindustries.com/', 'Narol, Gujarat'),
(74, 'Aarti Drugs Ltd', 'Pharmaceuticals', '', 'www.aartidrugs.co.in', 'Mumbai'),
(75, 'Abbott India Ltd', 'Pharmaceuticals', '', 'www.abbott.co.in/', 'Chembur,Mumbai'),
(76, 'Advik Laboratories Ltd', 'Pharmaceuticals', '', 'www.advikindia.com/', 'Dr Ambedkar Road, New Delhi'),
(77, 'Ahlcon Parenterals Ltd', 'Pharmaceuticals', '', 'www.ahlconindia.com', 'Community centre Saket,New Delhi'),
(78, 'Ajanta Pharma Ltd', 'Pharmaceuticals', '', 'www.ajantapharma.com', 'Nayandahalli, bangalore'),
(79, 'Alembic Ltd', 'Pharmaceuticals', '', 'www.alembiclimited.com/', 'Whitefield,Bengaluru'),
(80, 'Alpha Drug India Ltd', 'Pharmaceuticals', '', 'www.sify.com ', 'Chandigarh Punjab'),
(81, 'Ambalal Sarabhai Enterprises Ltd', 'Pharmaceuticals', '', '', 'Mirzapur Road, Ahmedabad,Gujarat'),
(82, 'Arvind Remedies Ltd', 'Pharmaceuticals', '', '', ''),
(83, 'Astrazeneca Pharma India Ltd', 'Pharmaceuticals', '', '', 'Pan Bazar, Guwahati, Assam'),
(84, 'Atul Ltd', 'Pharmaceuticals', '', 'www.atul.co.in/', 'Valsad,Gujarat'),
(85, 'Aurobindo Pharma Ltd', 'Pharmaceuticals', '', 'www.aurobindo.com', 'Hyderabad'),
(86, 'BAL Pharma Ltd', 'Pharmaceuticals', '', 'www.balpharma.com', ''),
(87, 'Bharat Serums & Vaccines Ltd', 'Pharmaceuticals', '', 'www.bharatserums.com/', 'Ambernath, Maharashtra'),
(88, 'BIOCON', 'Pharmaceuticals', '', 'www.biocon.com/', 'Bengaluru, Karnataka'),
(89, 'Biological E Ltd', 'Pharmaceuticals', '', 'www.biologicale.com/', 'Hyderabad, Andhra Pradesh'),
(90, 'Cadila Healthcare Ltd ', 'Pharmaceuticals', '', 'zyduscadila.com/', 'Ahmedabad'),
(91, 'CIPLA', 'Pharmaceuticals', '', 'www.cipla.com', 'Mumbai Bangalore'),
(92, 'Citurgia Biochemicals Ltd', 'Pharmaceuticals', '', '', 'Mulund West, Mumbai'),
(93, 'Coral Laboratories Ltd', 'Pharmaceuticals', '', 'www.corallab.com/', 'Ghatkopar(West),Mumbai'),
(94, 'Dabur Pharma Ltd', 'Pharmaceuticals', '', 'www.dabur.com/', 'Rash Behari Avenue, Kolkata'),
(95, 'Dishman Pharmaceuticals & Chemicals', 'Pharmaceuticals', '', 'www.dishmangroup.com', 'Sanand Dist.Ahmedabad'),
(96, 'Divi''s Laboratories Ltd', 'Pharmaceuticals', '', 'www.divislabs.com', ''),
(97, 'Dr. Reddy''s Laboratories Ltd', 'Pharmaceuticals', '', 'www.drreddys.com/', 'Hyderabad'),
(98, 'East India Pharmaceuticals works Ltd', 'Pharmaceuticals', '', 'www.eastindiapharma.org', 'Multilocational'),
(99, 'Emami Ltd', 'Pharmaceuticals', '', '', 'J P Nagar, Banglore, Karnataka'),
(100, 'Emcure Pharmaceuticals Ltd', 'Pharmaceuticals', '', 'www.emcure.co.in/', 'Indiranagar, Banglore'),
(101, 'FDC Ltd', 'Pharmaceuticals', '', 'www.fdcindia.com/', 'Yashwanthpur,Banglore'),
(102, 'Fulford (India) Ltd', 'Pharmaceuticals', '', 'www.fulfordindia.com', 'Pune&Goa'),
(103, 'Glaxo Smithkline Pharma Ltd', 'Pharmaceuticals', '', 'www.india-pharma.gsk.com/', 'Vasanth Nagar, Banglore,Karnataka'),
(104, 'Glenmark Pharmaceuticals Ltd', 'Pharmaceuticals', '', 'www.glenmarkpharma.com/', 'Rajaji Nagar, Banglore,Karnataka'),
(105, 'Granules India Ltd', 'Pharmaceuticals', '', 'www.granulesindia.com/', 'Multinational'),
(106, 'Gufic bioscience Ltd', 'Pharmaceuticals', '', 'gufic.com/', 'Andheri (East), Mumbai,Maharashtra'),
(107, 'Gujarat Themis Biosyn Ltd', 'Pharmaceuticals', '', 'www.gtbl.in/', 'Pardi, Vapi, Gujarat'),
(108, 'Hester Pharmaceuticals Ltd', 'Pharmaceuticals', '', 'www.hester.in/', 'Bodakdev, Ahmedabad,Gujarat'),
(109, 'Hikal Ltd', 'Pharmaceuticals', '', 'www.hikal.com/', 'Bangalore,Karnataka'),
(110, 'Hiran Orgachem Ltd', 'Pharmaceuticals', '', 'www.hiranorgochem.com/', 'Malad(West), Mumbai'),
(111, 'Indoco Remedies Ltd', 'Pharmaceuticals', '', 'www.indoco.com/', 'Multillocation'),
(112, 'IND-SWIFT Laboratories Ltd', 'Pharmaceuticals', '', 'www.indswiftlabs.com/', 'N.A.C Manimajra, Chandigarh'),
(113, 'IND-SWIFT Ltd ', 'Pharmaceuticals', '', 'www.indswiftltd.com/', 'Industrial Area Phase-2 Chandigarh'),
(114, 'Intas Pharmaceuticals Ltd', 'Pharmaceuticals', '', 'www.intaspharma.com/', 'Bangalore,Karnataka'),
(115, 'IPCA Laboratories Ltd', 'Pharmaceuticals', '', 'www.ipcalabs.com/', 'Bangalore,Karnataka'),
(116, 'J.Kpharmachem.Ltd', 'Pharmaceuticals', '', 'www.indiainfoline.com/', 'Chennai, Tamilnadu'),
(117, 'KDL Biotech Ltd', 'Pharmaceuticals', '', 'www.moneycontrol.com', 'Mumbai '),
(118, 'Kerala Ayurveda Pharmacy Ltd', 'Pharmaceuticals', '', 'www.keralaayurveda.biz/', 'Bangalore,Karnataka'),
(119, 'Krebs Biochemicals & Industries Ltd', 'Pharmaceuticals', '', 'krebsbiochem.com', 'Banjara Hills, Hyderabad'),
(120, 'Litaka Pharmaceuticals Ltd', 'Pharmaceuticals', '', 'www.medindia.net/', 'Pune, Maharashtra'),
(121, 'Lupin Ltd', 'Pharmaceuticals', '', 'www.lupin.com/', 'Mysore Road, Banglore, Karnataka'),
(122, 'Matrix Laboratories Ltd', 'Pharmaceuticals', '', 'www.mylan.in', 'Secunderabad, Telangana'),
(123, 'Medi Caps Ltd', 'Pharmaceuticals', '', 'medicaps.com/', 'Indore, Madhya Pradesh'),
(124, 'Nicholas Piramal India Ltd', 'Pharmaceuticals', '', 'www.piramal.com/ & www.nicholaspiramal.com/', 'Koramangala,Banglore'),
(125, 'Orchid Chemicals & Pharmaceuticals Ltd', 'Pharmaceuticals', '', 'www.orchidpharma.com/', 'Multinational'),
(126, 'Punjab Chemicals & Crop Protection Ltd', 'Pharmaceuticals', '', 'www.punjabchemicals.com/', 'Mumbai, Maharashtra'),
(127, 'RPG Life Sciences Ltd', 'Pharmaceuticals', '', 'www.rpglifesciences.com/', 'Basavanagudi, Banglore,Karnataka'),
(128, 'Samrat Pharmachem Ltd', 'Pharmaceuticals', '', 'www.samratpharmachem.com/', 'Ankeshwar,Gujarat'),
(129, 'Shantha Biotechnics Pvt Ltd', 'Pharmaceuticals', '', 'www.shanthabiotech.com/', 'Bangalore,Karnataka'),
(130, 'Shasun Chemicals & Drugs', 'Pharmaceuticals', '', 'www.poulvet.com/', 'Chennai, Tamilnadu'),
(131, 'Shilpa Medicare Ltd', 'Pharmaceuticals', '', 'www.vbshilpa.com/', 'Shaktinagar, Raichur dist, Karnataka '),
(132, 'Sterling Biotech Ltd', 'Pharmaceuticals', '', 'www.sterlingbiotech.in/', 'Mumbai, Maharashtra'),
(133, 'Strides Arcolab Ltd', 'Pharmaceuticals', '', 'www.stridesarco.com/', 'Bangalore,Karnataka'),
(134, 'Sun Pharmaceuticals Industries Ltd', 'Pharmaceuticals', '', 'www.sunpharma.com/', 'Mumbai'),
(135, 'Surya Pharmaceuticals Ltd', 'Pharmaceuticals', '', 'www.suryapharmaceuticals.com/', 'Madhya Marg , Chandigarh'),
(136, 'Suven life sciences Ltd', 'Pharmaceuticals', '', 'www.suven.com/', 'Banjara Hills, Hyderabad'),
(137, 'Torrent Gujarat Biotech Ltd', 'Pharmaceuticals', '', 'www.sify.com ', 'Ahmedabad,Gujarat'),
(138, 'TTK Healthcare Ltd', 'Pharmaceuticals', '', 'www.ttkhealthcare.com/', 'Bangalore,Karnataka'),
(139, 'Unichem Laboratories Ltd', 'Pharmaceuticals', '', 'unichemlabs.com/', 'Mumbai'),
(140, 'Venus Remedies Ltd ', 'Pharmaceuticals', '', 'www.venusremedies.com', 'Multilocation'),
(141, 'Veronica Laboratories Ltd', 'Pharmaceuticals', '', 'money.rediff.com/', 'Nashik road, Latur , Maharashtra'),
(142, 'Vimta Labs Ltd ', 'Pharmaceuticals', '', 'www.vimta.com', 'Multilocation'),
(143, 'Vinati Organics Ltd', 'Pharmaceuticals', '', 'www.vinatiorganics.com/', 'Mumbai, Maharashtra'),
(144, 'Wockhardt Ltd.WYETH Ltd', 'Pharmaceuticals', '', 'www.wockhardt.com/', 'Bandra (East) Mumbai'),
(145, 'Zandu Pharmaceutical Works Ltd', 'Pharmaceuticals', '', 'www.zanduayurveda.com/', 'Bangalore,Karnataka'),
(146, 'Rallis India Ltd', 'Pesticide Manufacturers', '', 'www.rallis.co.in', 'Bangalore,Karnataka'),
(147, 'Bayer India Ltd', 'Pesticide Manufacturers', '', 'www.bayer.in', 'Bangalore,Karnataka'),
(148, 'United Phosphorous Ltd', 'Pesticide Manufacturers', '', '', 'Hursungi, Maharashtra'),
(149, 'Syngenta India Ltd', 'Pesticide Manufacturers', '', 'www.syngenta.co.in/', 'Pune, Maharashtra'),
(150, 'Gharda Chemicals Ltd', 'Pesticide Manufacturers', '', 'www.gharda.com', 'Bandra (west) Mumbai'),
(151, 'De-Nocil Crop Protection', 'Pesticide Manufacturers', '', '', 'Coimbatore, Tamilnadu'),
(152, 'Cheminova India', 'Pesticide Manufacturers', '', '', 'Mumbai'),
(153, 'DUPONT', 'Pesticide Manufacturers', '', 'www.dupont.co.in', 'Multinational'),
(154, 'DOW', 'Pesticide Manufacturers', '', 'www.dow.com', 'Multinational'),
(155, 'BASF', 'Pesticide Manufacturers', '', 'www.basf.com', 'Multinational'),
(156, 'Bayer', 'Pesticide Manufacturers', '', 'pharma.bayer.com/', 'Multinational'),
(157, 'Monsanto ', 'Pesticide Manufacturers', '', 'monsanto.com', 'Multinational'),
(158, 'Syngenta ', 'Pesticide Manufacturers', '', 'www4.syngenta.com', 'Multinational'),
(159, 'Asian Peroxides Ltd', 'Industrial Gases Manufacturers', '', 'www.apl.in/', 'Chennai, Tamilnadu'),
(160, 'Bhoruka Gases Ltd', 'Industrial Gases Manufacturers', '', 'bhurukagases.com/', 'Mahadevpura,Banglore'),
(161, 'Ekasila Chemicals Ltd ', 'Industrial Gases Manufacturers', '', 'ekasila.lookchem.com', 'Mallapur, Hyderabad'),
(162, 'Gujarat Gas company Ltd', 'Industrial Gases Manufacturers', '', 'www.gujaratgas.com', 'Ahmedabad,Gujarat'),
(163, 'Hotz Industries Ltd', 'Industrial Gases Manufacturers', '', '', 'Greater Noida,Uttar Pradesh'),
(164, 'Kanoria Chemicals & Industries Ltd(KCIL)', 'Industrial Gases Manufacturers', '', 'www.kanoriachem.com/', 'Calcutta'),
(165, 'Sanghi Oxygen Pvt Ltd', 'Industrial Gases Manufacturers', '', 'www.sanghioxygen.com/', 'Girgaon, Mumbai'),
(166, 'United Oxygen', 'Industrial Gases Manufacturers', '', 'www.unitedoxygen.com/', 'Krishnarajapura,Banglore'),
(167, 'Vadial Chemicals Ltd', 'Industrial Gases Manufacturers', '', '', 'Ahmedabad,Gujarat'),
(168, 'Yamuna Gases & Chemicals Ltd', 'Industrial Gases Manufacturers', '', '', 'Jagadhri, Haryana'),
(169, 'Aero Agro Chemical Industries Ltd', 'Agro-Chemicals Manufacturers', '', 'www.aacil.com/', 'Bhanpuri, Raipur'),
(170, 'Bharat Group of Companies', 'Agro-Chemicals Manufacturers', '', 'www.bharatgroup.co.in/', 'New-Delhi'),
(171, 'Excel Industries Ltd', 'Agro-Chemicals Manufacturers', '', 'www.excelind.co.in', 'Jogeshwari(West),Mumbai'),
(172, 'Everest Fertilizers and Chemical Pvt Ltd', 'Agro-Chemicals Manufacturers', '', 'www.efcindia.com', 'Rajkot,Gujarat'),
(173, 'Gharda Chemicals Ltd (GCL)', 'Agro-Chemicals Manufacturers', '', '', 'Bandra West Mumbai'),
(174, 'Gujarat Narmada Valley Fertilizers Co.Ltd', 'Agro-Chemicals Manufacturers', '', 'www.gnfc.in/', 'Domlur,Banglore'),
(175, 'Hikal Ltd', 'Agro-Chemicals Manufacturers', '', 'www.hikal.com', 'Mumbai'),
(176, 'Sabero Organics Gujarat Ltd', 'Agro-Chemicals Manufacturers', '', '', 'Sarigam,Gujarat'),
(177, 'Swati Chemical Industries', 'Agro-Chemicals Manufacturers', '', 'www.swatichemicalindustries.com', 'Vadodara,Gujarat'),
(178, 'Tagros Chemicals India Ltd', 'Agro-Chemicals Manufacturers', '', 'www.tagros.com/', 'Egmore, Chennai'),
(179, 'United Phosphorous Ltd (UPL)', 'Agro-Chemicals Manufacturers', '', 'www.upleurope.com', 'Worli, Mumbai'),
(180, 'Harinagar Sugar Mills Ltd', 'Sugar Industries', '', '', 'Harinagar,west Champaran'),
(181, 'Harinagar Sugar Mills Ltd', 'Sugar Industries', '', '', 'Harinagar, West Champaran '),
(182, 'New Swadeshi Sugar Mills', 'Sugar Industries', '', '', 'Narkatiaganj, West Champaran '),
(183, 'Akbarpur Chini Mills', 'Sugar Industries', '', '', 'Akbarpur'),
(184, 'Balrampur Chini Mills Ltd', 'Sugar Industries', '', 'www.chini.com', 'Babhnan'),
(185, 'Balrampur Chini Mills Ltd', 'Sugar Industries', '', '', 'Balrampur'),
(186, 'BHL ', 'Sugar Industries', '', '', 'Multi location'),
(187, 'BHSIL', 'Sugar Industries', '', 'www.bajajhindusthan.com', 'Multi location'),
(188, 'Dalmia Chini Mills ', 'Sugar Industries', '', 'www.dalmiasugar.com', 'Multi location'),
(189, 'Daurala Sugar Works ', 'Sugar Industries', '', 'www.dcmsr.com', 'Daurala, Meerut'),
(190, 'Dhampur Sugar Mills Ltd ', 'Sugar Industries', '', 'www.dhampur.com', 'Dhampur, Bijno'),
(191, 'DSCL Sugar ', 'Sugar Industries', '', 'www.dsclsugar.com', 'Multi Location '),
(192, 'Dwarikesh Sugar Industries Ltd', 'Sugar Industries', '', 'dwarikesh.com', 'Multi Location '),
(193, 'Gularia Chini Mills ', 'Sugar Industries', '', '', 'Lakhimpur'),
(194, 'J. K. Sugar Ltd ', 'Sugar Industries', '', 'www.jksugars.com', 'Mirganj, Bareilly'),
(195, 'K. M. Sugar Mills Ltd ', 'Sugar Industries', '', 'www.kmsugar.com/', 'Motinagar, Faizabad'),
(196, 'Kumbhi Chini Mills ', 'Sugar Industries', '', '', 'Lakhimpur'),
(197, 'L. H. Sugar Factories Ltd', 'Sugar Industries', '', 'www.lhsugar.in', 'Pilibhit'),
(198, 'Mankapur Chini Mills Ltd ', 'Sugar Industries', '', '', 'Mankapur, Gonda'),
(199, 'Mawana Sugar Works ', 'Sugar Industries', '', 'www.mawanasugars.com/', 'Mawana, Meerut'),
(200, 'New India Sugar Mills ', 'Sugar Industries', '', 'www.ssi.org.in/13188/new-india-sugar-mills-ltd/', 'Hata, Kushinagar'),
(201, 'Oudh Sugar Mills Ltd', 'Sugar Industries', '', '', 'Hargaon, Sitapur '),
(202, 'Parle Biscuits Pvt. Ltd', 'Sugar Industries', '', '', 'Parsendi, Bahraich'),
(203, 'Rana Sugar, Belwara', 'Sugar Industries', '', 'ranasugars.com/', 'Rampurwww'),
(204, 'Rauzagaon Chini Mills ', 'Sugar Industries', '', '', 'Rauzagaon, Faizabad'),
(205, 'SBEC Sugar Ltd ', 'Sugar Industries', '', 'sbecsugar.com/', 'Malakpur, Baghpat'),
(206, 'Simbhaoli Sugars Ltd', 'Sugar Industries', '', 'www.simbhaolisugars.com', 'Chilwaria, Bahraich '),
(207, 'Tikaula Sugar Mills Ltd ', 'Sugar Industries', '', '', 'Tikaula, Muzaffarnagar '),
(208, 'Triveni Engg. & Ind. Ltd ', 'Sugar Industries', '', 'www.trivenigroup.com/', 'Deoband, Muzaffarnagar'),
(209, 'Upper Ganges Sugar & Industries Ltd ', 'Sugar Industries', '', '', 'Seohara, Bijnor'),
(210, 'Uttam Sugar', 'Sugar Industries', '', 'www.uttamsugar.in/', 'Multi location '),
(211, 'Wave Industries Pvt. Ltd', 'Sugar Industries', '', 'waveindustries.in', 'Dhanaura, J P Nagar'),
(212, 'RBNS Sugar Mills Ltd ', 'Sugar Industries', '', '', 'Lhaksar'),
(213, 'Ch. Devilal Coop. Sugar Mills Ltd ', 'Sugar Industries', '', 'gohanasugars.com', 'Sonipat '),
(214, 'The Shahabad Coop. Sugar Mills Ltd ', 'Sugar Industries', '', '', 'Shahabad '),
(215, 'The Meham Coop Sugar Mills Ltd', 'Sugar Industries', '', 'www.anekantprakashan.com', 'Meham '),
(216, 'Haryana Coop. Sugar Mills Ltd', 'Sugar Industries', '', '', 'Rohtak '),
(217, 'HAFED Sugar Mills ', 'Sugar Industries', '', 'www.hafed.gov.in', 'Phaphrana, Assandh, Karnal'),
(218, 'The Sonipat Coop. Sugar Mills Ltd', 'Sugar Industries', '', '', 'Sonipat'),
(219, 'Indian Sucrose Ltd', 'Sugar Industries', '', 'www.muksug.com', 'Mukerian, Hoshiarpur'),
(220, 'Nahar Industrial Enterprises Ltd ', 'Sugar Industries', '', '', 'Khanna '),
(221, 'Ajnala CSM Ltd', 'Sugar Industries', '', 'ajnalasugar.in', 'Bhalapind, Ajnala, Amritser '),
(222, 'The Fazilka CSM Ltd ', 'Sugar Industries', '', 'fazilkasugar.com/', 'Bodiwala Pitha, Fazilka'),
(223, 'The Budhewal CSM Ltd', 'Sugar Industries', '', 'www.smbudhewal.com', 'Budhewal, Ludhiana'),
(224, 'The Nawanshahr CSM Ltd ', 'Sugar Industries', '', 'nawanshahrsugar.com/', 'Nawanshahr '),
(225, 'The Morinda CSM Ltd ', 'Sugar Industries', '', 'www.morindasugar.in', 'Morinda, Rupnagar'),
(226, 'Rana Sugars Ltd', 'Sugar Industries', '', 'ranagroup.com', 'Sevian, Baba Bakla, Amritser'),
(227, 'The Nakodar Coop. Sugar Mills Ltd ', 'Sugar Industries', '', 'www.nakodarsugar.com', 'Mahatpur '),
(228, 'Wahid Sandhar Sugars Ltd', 'Sugar Industries', '', 'www.wahidsandharsugars.com', 'Phagwara, '),
(229, 'Empee Sugars & Chemicals Ltd', 'Sugar Industries', '', 'www.empeegroup.co.in', 'Nayudupeta, Nellore'),
(230, 'Ganpati Sugar Industries Ltd', 'Sugar Industries', '', '', 'Medak'),
(231, 'Gayatri Sugars Ltd', 'Sugar Industries', '', 'www.gayatrisugars.com', 'Nizamabad'),
(232, 'Kakatiya Cement Sugar & Ind. Ltd', 'Sugar Industries', '', 'www.kakatiyacements.com', 'Khammam '),
(233, 'KCP Sugar & Industries Corp. Ltd', 'Sugar Industries', '', 'www.kcpsugar.com', 'Krishna'),
(234, 'Krishnaveni Sugars Ltd ', 'Sugar Industries', '', '', 'Mahabubnagar'),
(235, 'Madhucon Sugars Ltd ', 'Sugar Industries', '', 'www.madhuconsugars.com', 'Khammam '),
(236, 'Navbharat Ventures Ltd', 'Sugar Industries', '', 'www.nbventures.com', 'Samalkot, East Godavari'),
(237, 'NCS Sugars Ltd ', 'Sugar Industries', '', 'www.ncsgroup.in/sugar.htm', 'Latchayyapeta, Vizianagaram'),
(238, 'Parrys Sugar Industries Ltd', 'Sugar Industries', '', '', 'Srikakulam'),
(239, 'Sri Sarvaraya Sugars Ltd ', 'Sugar Industries', '', '', 'East Godavari '),
(240, 'The Andhra sugars Ltd', 'Sugar Industries', '', 'https://theandhrasugars.com', 'Unit-I, West Godavari '),
(241, 'The Etikoppaka Coop. Agricultural & Industrial Society Ltd ', 'Sugar Industries', '', '', 'Etikoppaka, Yelamanchili, Vishakhapatnam'),
(242, 'The Jeypore Sugars Ltd', 'Sugar Industries', '', 'jeyporesugars.com/', 'Chagallu, West Godavari'),
(243, 'Trident Sugars Ltd', 'Sugar Industries', '', '', 'Madhunagar, Zaheerabad, Medak'),
(244, 'Bannari Amman Sugars Ltd', 'Sugar Industries', '', 'www.bannari.com/sugar.html', 'Thiruvannamalai'),
(245, 'Dhanalakshmi Srinivasan Sugars Pvt. Ltd', 'Sugar Industries', '', 'dssugars.com/', 'Perambalur '),
(246, 'Dharani Sugars & Chemicals Ltd ', 'Sugar Industries', '', '', 'Tirunelveli'),
(247, 'EID Parry (India) Ltd ', 'Sugar Industries', '', 'www.eidparry.com/', 'Multi Location,Pudukkottai '),
(248, 'Empee Sugars & Chemicals Ltd ', 'Sugar Industries', '', 'www.empeegroup.co.in', 'Tirunelveli'),
(249, 'Kothari Sugars & Chemicals Ltd', 'Sugar Industries', '', 'hckotharigroup.com/kscl', 'Tiruchirapalli'),
(250, 'M. R. Krishnamurthy Coop. Sugar Mills Ltd', 'Sugar Industries', '', '', 'Cuddalore '),
(251, 'Ponni Sugars (Erode) Ltd', 'Sugar Industries', '', 'www.ponnisugars.com/', 'Namakkal '),
(252, 'Rajshree Sugars & Chemicals Ltd', 'Sugar Industries', '', 'rajshreesugars.com/', 'Villupuram'),
(253, 'Sakthi Sugar Ltd', 'Sugar Industries', '', 'www.sakthisugars.com', 'Semur, Erode'),
(254, 'Subramaniya Siva Coop. Sugar Mills Ltd ', 'Sugar Industries', '', '', 'Dharmapuri'),
(255, 'Daund Sugar Ltd ', 'Sugar Industries', '', 'www.daundsugar.com', 'Alegaon, Daund, Pune'),
(256, 'Deshbhakta Ratnappanna Kumbhar Panchganga SSK Ltd ', 'Sugar Industries', '', 'npcs.in', 'Kolhapur'),
(257, 'Dr. Babasaheb Ambedkar SSK Ltd', 'Sugar Industries', '', 'www.ambedkarsugar.com', 'Osmanabad '),
(258, 'Coromandel Sugars Ltd ', 'Sugar Industries', '', '', 'Makavalli, K. R. Pet, Mandya '),
(259, 'Indian Cane Power Ltd ', 'Sugar Industries', '', 'www.icpluttur.com/', 'Uttur, Bagalkot'),
(260, 'Zuari cement Ltd', 'Cement Industries', '', 'www.zuaricements.com/', 'Multi location, Mumbai'),
(261, 'Ambala cements Ltd', 'Cement Industries', '', '', 'Multi location'),
(262, 'Andhra cements Ltd', 'Cement Industries', '', 'www.andhracements.com', 'Multi location'),
(263, 'Ambuja cements Ltd', 'Cement Industries', '', 'www.ambujacement.com', 'Multi location'),
(264, 'Anjani portland cements Ltd', 'Cement Industries', '', 'www.anjanicement.com', 'Multi location'),
(265, 'Anjanee cements Ltd', 'Cement Industries', '', '', 'Multi location'),
(266, 'Barak Valley cements Ltd', 'Cement Industries', '', 'www.barakcement.com/', 'Multi location'),
(267, 'Bheema cements Ltd', 'Cement Industries', '', '', 'Multi location'),
(268, 'Binami Cement Ltd', 'Cement Industries', '', 'binaniindustries.com', 'Multi location'),
(269, 'Burnpur cements Ltd', 'Cement Industries', '', 'burnpurcement.com', 'West Bengal'),
(270, 'Chettind cements Corporation Ltd', 'Cement Industries', '', 'www.chettinad.com', 'Multi location'),
(271, 'Dalmia cement Bharat Ltd', 'Cement Industries', '', 'www.dalmiabharat.com', 'Ariyalur, Tamilnadu'),
(272, 'Deccan cement Ltd(DCL)', 'Cement Industries', '', 'www.deccancements.com', 'Sounth India(Huzur nagar), Nalgonda'),
(273, 'Gangotri cements Ltd', 'Cement Industries', '', '', 'Chattisgarh(Raipur)'),
(274, 'Gujarat Sidhee cement Ltd', 'Cement Industries', '', 'www.hathi-sidheecements.com', 'Ahmedabad'),
(275, 'Heidelberg cement Ltd', 'Cement Industries', '', 'www.mycemco.com/', 'MNC'),
(276, 'Hemadri cements Ltd', 'Cement Industries', '', 'www.hemadricements.com', 'Andhrapradesh,Telangana'),
(277, 'Jaypee cements Ltd', 'Cement Industries', '', '', 'Multi location'),
(278, 'J.K.Cements.Ltd', 'Cement Industries', '', '', 'Chandigarh'),
(279, 'J.K.Lakshmi Cement Ltd', 'Cement Industries', '', 'www.jklakshmicement.com', 'sirohi,Rajastan'),
(280, 'Coromandel cements', 'Cement Industries', '', '', 'Multi location'),
(281, 'ITD cementation', 'Cement Industries', '', 'www.itdcem.co.in', 'Multi location'),
(282, 'India cements capital Ltd', 'Cement Industries', '', 'www.iccaps.com', 'Multi location,Chennai'),
(283, 'Kakatiya Cement Sugar & Ind. Ltd', 'Cement Industries', '', 'www.kakatiyacements.com', 'Andhrapradesh,Telangana'),
(284, 'Kalyanpur cements Ltd', 'Cement Industries', '', 'www.kalyanpur.com', 'Bihar,UP,Jharkhand'),
(285, 'Katwa cements Ltd', 'Cement Industries', '', 'katwa.in/katwa-cements-pvt-ltd', 'Belgaum(Karnataka)'),
(286, 'Lakshmi cements and ceramic industries Ltd', 'Cement Industries', '', '', 'Bihar'),
(287, 'Madras cements Ltd', 'Cement Industries', '', 'www.ramcocements.in', 'Multi location'),
(288, 'Mangalam cements Ltd', 'Cement Industries', '', 'www.mangalamcement.com', 'multi location,Kolakata, Rajastan'),
(289, 'Niraj cement industries Ltd', 'Cement Industries', '', '', 'Multi location,kolakata, Rajastan'),
(290, 'Nirman cement Ltd', 'Cement Industries', '', '', 'Himachal Pradesh'),
(291, 'Orient cement Ltd', 'Cement Industries', '', 'www.orientcement.com/', 'Multi location, Delhi'),
(292, 'L. H. Sugar Factories Ltd', 'Cement Industries', '', 'www.lhsugar.in', 'Multi location, Delhi'),
(293, 'Panyam cements & Mineral Ltd', 'Cement Industries', '', 'www.panyamcements.com', 'Multi location, Delhi'),
(294, 'Prism cement Ltd', 'Cement Industries', '', 'www.prismcement.com', 'Multi location, Madhya Pradesh'),
(295, 'Raghoji cement Mfg company Ltd', 'Cement Industries', '', '', 'Gulbarga , Karnataka'),
(296, 'Sagar cements Ltd', 'Cement Industries', '', 'www.sagarcements.in/', 'Andhrapradesh,Telangana'),
(297, 'sanghavi asbestos cements Ltd', 'Cement Industries', '', 'www.siddhart.com/asbestos/', 'Madhya Pradesh'),
(298, 'Saurashtra cements Ltd', 'Cement Industries', '', '', 'Gujarat'),
(299, 'shiva cement Ltd', 'Cement Industries', '', 'www.shivacement.com', 'Orissa'),
(300, 'Shree cement Ltd', 'Cement Industries', '', 'www.shreecement.in/', 'Delhi'),
(301, 'Shrudigvijay cements co Ltd', 'Cement Industries', '', 'digvijaycement.com/', 'Multi location'),
(302, 'Somani cement Ltd', 'Cement Industries', '', 'www.lkpsec.com', 'Kutch, Gujarat'),
(303, 'Srichakra cement Ltd', 'Cement Industries', '', 'www.srichakracement.com/', 'andhrapradesh,Telangana'),
(304, 'Star ferro and cement Ltd', 'Cement Industries', '', 'www.starferrocement.co.in/', 'Multi location'),
(305, 'The India cements Ltd', 'Cement Industries', '', 'www.indiacements.co.in/', 'Multi location'),
(306, 'Trinetra cement Ltd', 'Cement Industries', '', 'www.trinetracement.com/', 'Tamilnadu'),
(307, 'Acro Paints', 'PAINTS', '', 'www.acropaints.net/', 'New Delhi, India'),
(308, 'Advance Paints', 'PAINTS', '', 'advancepaints.com/', 'Mumbai, India'),
(309, 'Apollo Paints Pvt Ltd ', 'PAINTS', '', 'www.apollopaintsindia.com/', 'Location-Bangalore , Karnataka, 560058 '),
(310, 'Asgar Paints', 'PAINTS', '', 'www.agsar.com/', 'Tuticorin, TamilNadu'),
(311, 'Asian Paints ', 'PAINTS', '', 'www.asianpaints.com/', 'Location-Mumbai, Maharashtra '),
(312, 'Berger Paints India Limited ', 'PAINTS', '', '/www.bergerpaints.com/', 'Kolkata, West Bengal '),
(313, 'Bombay Paints', 'PAINTS', '', 'www.tradeindia.com/', 'Mumbai, Maharashtra'),
(314, 'British Paints', 'PAINTS', '', 'www.britishpaints.in/', 'New Delhi, India'),
(316, 'Dera Paints & Chemicals Ltd ', 'PAINTS', '', 'mitshi.in/', 'Juhu Lane, Andheri (W), Mumbai, Maharashtra '),
(317, 'Dulux Paints', 'PAINTS', '', 'www.dulux.in/en', 'Gurgaon, Haryana '),
(318, 'Jenson& Nicholson (I) Ltd', 'PAINTS', '', 'www.jensonnicholson.com/', 'Gurgaon, Haryana '),
(319, 'Kansai Nerolac Paints Ltd ', 'PAINTS', '', 'nerolac.com/', 'Mumbai, Maharashtra '),
(320, 'Mysore Paints and Varnish Limited', 'PAINTS', '', 'mysorepaints.com/', 'Mysore, India'),
(321, 'Nippon Paints', 'PAINTS', '', 'www.nipponpaint.co.in', 'Japan '),
(322, 'Nitco Paints', 'PAINTS', '', 'www.nitco.in/', 'Mumbai, Maharashtra'),
(323, 'Sarika Paints Limited', 'PAINTS', '', 'www.indiainfoline.com', 'Ahmedabad, Gujarat '),
(324, 'Shalimar paints ', 'PAINTS', '', '/www.shalimarpaints.com/', 'Mumbai, Maharashtra |'),
(325, 'Sheenlac ', 'PAINTS', '', 'www.sheenlac.in/', 'Chennai, Tamil Nadu '),
(326, 'Snowcem Paints', 'PAINTS', '', 'www.snowcempaints.com/', 'Mumbai, Maharashtra'),
(327, 'ITC Paper Boards and Specialty Paper Division', 'PAPER', '', 'www.itcpspd.com/', 'Secunderabad, Andhra Pradesh with branches in New Delhi, Mumbai, Kolkata, Chennai '),
(328, 'Ballarpur Industries Limited', 'PAPER', '', 'bilt.com/', 'Head office in Gurgaon, Haryana, branches in Kolkata, Mumbai, Chennai, New Delhi with 6 units all ov'),
(329, 'Abhishek Industries Limited', 'PAPER', '', 'www.rieter.com/', 'Ludhiana, Punjab, branches in Chandigarh and New Delhi'),
(330, 'JK Paper Limited', 'PAPER', '', 'www.jkpaper.com/', 'Corporate Office in New Delhi with units in Orissa, Central Pulp in Gujarat etc '),
(331, 'Tamilnadu Newsprint and Papers Limited', 'PAPER', '', 'www.tnpl.com/', 'Chennai, Tamilnadu, branches in Bangalore, Ahmadabad, Kolkata, Nagpur, New Delhi etc'),
(332, 'Century Pulp and Paper', 'PAPER', '', 'www.centurypaperindia.com/', 'mumbai, It has one more unit in Uttarakhand and 2 branches in New Delhi and Kolkata'),
(333, 'The Andhra Pradesh Paper Mills Limited', 'PAPER', '', 'www.ipappm.com/', 'Secunderabad, Andhra Pradesh with 2 units in AP and branches in 4 other cities of India'),
(334, 'West Coast Paper Mills Limited', 'PAPER', '', 'www.westcoastpaper.com/', 'Bangalore, Karnataka, 1 unit in Karnataka and branches in 3 other cities'),
(335, 'Murli Industries Limited', 'PAPER', '', 'www.murliindustries.com/', 'Corporate office in Nagpur and only one unit'),
(336, 'Emami Paper Mills Limited', 'PAPER', '', 'www.emamipaper.in/', 'Kolkata, 2 mills in West Bengal and Orissa '),
(337, 'Rainbow Papers Limited', 'PAPER', '', 'www.rainbowpapers.com/', 'Ahmadabad, Gujarat, 2 mills in Gujarat '),
(338, 'ABC Paper Limited', 'PAPER', '', 'www.kuantumpapers.com/', 'Headquarter in Chandigarh, with one unite in Punjab '),
(339, 'Orient Paper and Industries Limited', 'PAPER', '', 'www.orientpaperindia.com/', 'Kolkata and 3 more units'),
(340, 'Yash Paper Limited', 'PAPER', '', 'www.yash-papers.com/', 'Head office in Faizabad, UP with only one unit'),
(341, 'Seshasayee Paper and Boards Ltd', 'PAPER', '', 'www.spbltd.com/', 'Erode, Tamilnadu'),
(342, 'Sidharth Papers Limited', 'PAPER', '', 'www.sidharthpapers.com/', 'Shahganj, Uttarakhand'),
(343, 'Murli Industries Ltd', 'PAPER', '', 'www.murliindustries.com/', 'Chandrapur, Maharashtra'),
(344, 'Bindals Papers Mills Limited', 'PAPER', '', 'www.bindalpapers.com/', ''),
(345, 'Rustx-Hi Tech International', 'LUBRICANTS', '', 'www.rustx.net/', 'Ludhiana, Mumbai'),
(346, 'KK India Petroleum specialties pvt Ltd', 'LUBRICANTS', '', 'www.kkindia.net/', 'Mumbai, Maharashtra'),
(347, 'Ganesh Benzoplast Ltd', 'LUBRICANTS', '', 'www.ganeshbenzoplast.com/', 'Mumbai, Maharashtr'),
(348, 'Leo Lubricants pvt Ltd', 'LUBRICANTS', '', 'www.leolubes.com/', 'Mumbai, Maharashtra '),
(349, 'Grauer & Weil India Ltd', 'LUBRICANTS', '', 'growel.com/', 'Kolkata, Mumbai '),
(350, 'Cosmotech', 'LUBRICANTS', '', 'www.cosmotechexpoindia.com/', 'Mumbai, Maharashtra '),
(351, 'Ram Petro Products', 'LUBRICANTS', '', 'www.indiamart.com', 'Chennai, Tamil Nadu '),
(352, 'Pentagon Lubricants Pvt Ltd', 'LUBRICANTS', '', 'www.pentagonlubricants.org', 'Chennai, Tamil Nadu '),
(353, 'Oil Base India', 'LUBRICANTS', '', 'www.oilbaseindia.com/', 'New Delhi, India '),
(354, 'Unicorn Petroleum Industries Pvt Ltd', 'LUBRICANTS', '', 'unicornpetro.co.in/', 'Mumbai Maharashtra '),
(355, 'National Mineral Development Corporation', 'MINING', '', 'www.nmdc.co.in/', 'Company is based in Hyderabad with units in Maharashtra, Karnataka and M.P'),
(356, 'Coal India', 'MINING', '', 'www.coalindia.in/', 'Company is headquartered at Kolkata, and has presence throughout the country such as Orissa, Jharkha'),
(357, 'Sesa Sterlite', 'MINING', '', 'www.vedantalimited.com/', 'Company is headquartered in London and they serve worldwide. '),
(358, 'MOIL', 'MINING', '', 'moil.nic.in/', 'This is a Nagpur based company with units in MP also. '),
(359, 'Guj Mineral', 'MINING', '', 'www.moneycontrol.com and www.gmdcltd.com/', 'Company is headquartered at Ahmadabad. '),
(360, 'Rohit Ferro Tec', 'MINING', '', 'www.rohitferrotech.com/', 'The company is based in West Bengal with plants in Orissa'),
(361, 'Indian Metals', 'MINING', '', 'www.moneycontrol.com ', 'Company is headquartered in Odisha with units around the country and overseas also. '),
(362, 'Orissa Minerals', 'MINING', '', 'www.orissaminerals.gov.in/', 'Company is based in Orissa and it is limited to one state of India only. '),
(363, 'Parrys Sugar', 'MINING', '', 'www.eidparry.com/', 'Company is headquartered in Chennai and with presence in Karnataka also. '),
(364, 'www.eidparry.com', 'MINING', '', 'www.eidparry.com', 'Corporate office is in Mumbai however their operational units are in Orissa. '),
(365, 'IndiaApollo Tyres Limited', 'TYRES', '', ' www.apollotyres.com', 'Gurgaon, Haryana?, '),
(366, 'Automotive Tyre Manufacturers’ Association', 'TYRES', '', 'atmaindia.org/', 'New Delhi, Delhi'),
(367, 'Birla Tyres', 'TYRES', '', 'www.birlatyre.com/', ''),
(368, 'MRF Tyres', 'TYRES', '', 'www.mrftyres.com/', 'Chennai, India'),
(369, 'Modi Rubbers Ltd', 'TYRES', '', 'www.modirubberlimited.com/', 'Mumbai, Maharashtra'),
(370, 'Metro Tyres Ltd. ', 'TYRES', '', 'www.metrotyres.com/', 'Sultanpete, Bengaluru, Karnataka'),
(371, 'Malhotra Rubbers Limited', 'TYRES', '', 'mrltires.com/', 'Multi location'),
(372, 'JK tyres', 'TYRES', '', 'www.jktyre.com/', 'Bengaluru'),
(373, 'Govind Rubber Limited', 'TYRES', '', 'www.grltires.com/', ''),
(374, 'Falcon Tyres Ltd', 'TYRES', '', 'www.moneycontrol.com', 'Bengaluru, Karnataka'),
(375, 'Elgi Tread (India) Limited', 'TYRES', '', 'www.elgirubber.com/', 'Coimbatore, Tamil Nadu '),
(376, 'UnitedHealth Group', 'software', '', 'www.unitedhealthgroup.com/', '9900 Bren Rd E, Minnetonka, MN 55343, United States'),
(377, 'Accenture', 'software', '', 'www.accenture.com/', 'india'),
(378, 'Invensys ', 'software', '', 'www.schneider-electric.com/', 'Orion Block, Place-17, Vanon Burg, It Park, Madhapur, Madhapur, Hyderabad, Andhra Pradesh 500081'),
(379, 'KNR management consultatns Pvt Ltd', 'software', '', 'www.knrglobal.com/', ''),
(380, 'Unsion International Consulting Pvt.Ltd', 'software', '', 'unisoninternational.net/', ''),
(381, 'Essar Heavy Engineering Services,', 'Designing', '', 'www.essar.com', 'NH6, Surat Hazira Road, Gujarat, India '),
(382, 'Larsen and Toubro (L and T). Technology', 'Designing', '', 'www.larsentoubro.com/', 'L&T House, Ballard Estate,Mumbai,Maharashtra,India.'),
(383, 'India Tube Mills & Metal Industries Pvt. Ltd.', 'Designing', '', 'www.itmprojects.com/', 'Item Compound, Lal Bahadur Shastri Mg, Tagore Nagar, Tagore Nagar, Mumbai,Maharashtra 400083'),
(384, 'Vijay Tanks & Vessels Limited', 'Designing', '', 'www.vijaytanks.com/', 'Jamnagar, Gujarat 361280'),
(385, 'Techno Process Equipments India Ltd', 'Designing', '', 'technoprocess.com/', 'R-261, MIDC, Rabale, Navi Mumbai, Maharashtra 400701'),
(386, 'Lloyds Steel Industries Limited', 'Mining', '', 'www.lloyds.in/', 'Modern Centre B Wing 2nd Floor, Sane Guruji Marg, Keshavrao Khadye Marg, Jacob Circle, Mahalaxmi, Ja'),
(387, 'Honeywell(uop)', 'Designing', '', '/www.uop.com/', 'India'),
(388, 'Geecy Engineering Pvt. Ltd.', 'Designing', '', 'www.geecy.com/', 'Plot No. 33, TTC MIDC, Near Millennium Business Park, Mahape, CMS Info Systems, MIDC, Navi Mumbai, M'),
(389, 'EPC - Engineering Procurement Construction', 'Designing', '', '/www.epcengineer.com/', 'Plot No. H-109, MIDC, Ambad;Nasik – 422010;Maharashtra – India.'),
(390, 'Godrej & Boyce (G n B)', 'Designing', '', 'www.godrejandboyce.com/', '28, Karnataka Film Chamber Of Commerce Building, Crescent Road, Near Shivananda Circle, Crescent Roa'),
(391, 'Tata Consulting Engineers Limited', 'Designing', '', 'www.tce.co.in/', 'Matulya Centre A, 1st Floor 249 Senapati Bapat Marg Lower Parel (West) Mumbai 400 013, India'),
(392, 'Vizag Steel Plant ', 'Mining ', '', 'www.vizagsteel.com/', ''),
(393, 'Jindal Steel', 'Mining ', '', 'www.jindalsteelpower.com/', ''),
(394, 'Essar Steels', 'Mining ', '', 'www.essarsteel.com/', ''),
(395, 'JSW steel LTD', 'Mining ', '', 'www.jsw.in/', ''),
(396, 'SAIL', 'Mining ', '', '/www.sail.co.in/', ''),
(397, 'Tata Steels', 'Mining', '', 'www.tatasteel.com/', ''),
(398, 'National Fertilizers limited', 'Fertilizers', '', 'www.nationalfertilizers.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `library_list`
--

CREATE TABLE `library_list` (
  `sno` int(10) NOT NULL,
  `books` varchar(255) NOT NULL,
  `stock` int(10) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_list`
--

INSERT INTO `library_list` (`sno`, `books`, `stock`, `id`) VALUES
(1, 'Advance Engineering Mathematics(8th edition)', 5, 1),
(2, 'Algorithem design', 4, 2),
(3, 'Advance Engineering Mathematics(3rd edition)', 5, 3),
(4, 'An Introduction to Laplace Transforms', 7, 4),
(5, 'Basic Principles & Calculation in Chemical Engg.', 62, 5),
(6, 'Chemical Process Principles(2nd edition)', 24, 6),
(7, 'Engineering Thermodynamics(4th edition)', 7, 7),
(8, 'Introduction To Fluid Mechanics(7th edition)', 47, 8),
(9, 'MAT LAB', 48, 9),
(10, 'Introduction To Chem Engineering Thermodynamics', 51, 10),
(11, 'Introduction To Algorithm(3rd edition)', 9, 11),
(12, 'Laplace Transforms', 13, 12),
(13, 'Outline of Chemical technology(3rd edition)', 26, 13),
(14, 'Process Heat Transfer', 8, 14),
(15, 'Heat Transfer', 27, 15),
(16, 'Shreves Chemical Process Industries(5th edition)', 19, 16),
(17, 'Unit Operations Of Chemical Engineering', 81, 17),
(18, 'Chemical process Equipment(design& Drawing)', 5, 18),
(19, 'Chemical Engineering Design(5th)', 25, 19),
(20, 'Chemical Reactor Analysis & Design', 9, 20),
(21, 'Chemical Reaction Engineering', 38, 21),
(22, 'Chemical Process Control', 28, 22),
(23, 'Diffusion Masstransfer in Fluid System(3rd)', 4, 23),
(24, 'Elements Of Chemical Reaction Engineering', 9, 24),
(25, 'Fundamentals Of Momentum,Heat,Mass Transfer(5th)', 4, 25),
(26, 'Industrial Instrumentation', 33, 26),
(27, 'Mass Transfer operations(3rd)', 36, 27),
(28, 'Process Equipment Design', 13, 28),
(29, 'Process System Analysis And Control(3rd)', 24, 29),
(30, 'Product And Process Design Principles(2nd edition)', 27, 30),
(31, 'Principles of Industrial Instrumentation(3rd edition)', 3, 31),
(32, 'Priniciles of MassTransfer And Seperation Process', 18, 32),
(33, 'Process Control (Modeling, Design, Simulation)', 4, 33),
(34, 'Process Simulation and Control using ASPEN', 3, 34),
(35, 'Analysis Of Transport Phenomena', 3, 35),
(36, 'Applied Process Design(vol1,vol2&vol3)(3rd edition)', 9, 36),
(37, 'Chemical Engineering Vol-1(6th edition)', 8, 37),
(38, 'Chemical Process Design& Intigration', 8, 38),
(39, 'Chemical Engineering Vol-2(5th edition)', 8, 39),
(40, 'Chemical Engineering Vol-3(3rd edition)', 8, 40),
(41, 'Introduction To Chem Engineering Computing', 7, 41),
(42, 'Perry''s Chemical Engineering Hand Book', 4, 42),
(43, 'Process Plant Simulation', 4, 43),
(44, 'Process Modeling, Simulation and controle for chem', 12, 44),
(45, 'Seperation Process Principles', 3, 45),
(46, 'Transport Phenomena', 29, 46),
(47, 'Fluidization engineering(2nd edition)', 9, 47),
(48, 'lees'' loss prevention in process industiries( 3rd edition)(vol1-4,vol2-4,vol3-4)', 12, 48),
(49, 'Numerical methods for engineers', 4, 49),
(50, 'mathematical methods in chemical engineering', 9, 50),
(51, 'Advanced membrane technology and applications', 4, 51),
(52, 'handbook of separation process technology', 4, 52),
(53, 'numerical solution of differencial equations', 6, 53);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(255) NOT NULL,
  `notype` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(2000) NOT NULL,
  `from` varchar(255) NOT NULL,
  `sendto` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notype`, `title`, `body`, `from`, `sendto`, `date`, `time`, `attachment`) VALUES
(45, '', 'this is notice', 'this is notice', 'Surya Prakash Manne', 'E2-CH-01', '1 11 2017', '11:23 AM', 'avatar1.jpg'),
(46, '', 'general notice  test', 'This is test for notice', 'Surya Prakash Manne', 'E2-CH-01', '1 11 2017', '11:40 AM', ''),
(47, '', 'asdf', 'sdf', 'Surya Prakash Manne', 'E2-CH-01', '1 11 2017', '11:56 AM', ''),
(48, 'notice', 'asdf', 'sdf', 'Surya Prakash Manne', 'E2-CH-01', '1 11 2017', '11:57 AM', ''),
(49, 'cdpc', 'tst', 'test', 'Surya Prakash Manne', 'E2-CH-01', '1 11 2017', '12:01 PM', ''),
(50, 'event', 'hi this is kiran', 'this is test take it easy', 'Surya Prakash Manne', 'E2-CH-01', '1 11 2017', '06:08 PM', ''),
(51, 'notice', 'take it easy', 'easy', 'Surya Prakash Manne', 'E2-CH-01', '1 11 2017', '06:08 PM', ''),
(52, 'cdpc', 'This is a cdpc notice', '&lt;p&gt;this is a notice&lt;/p&gt;\\r\\n', 'Surya Prakash Manne', 'E2-CH-01', '2 11 2017', '11:45 AM', 'Report.pdf'),
(53, 'cdpc', 'cdpc notice', '&lt;p&gt;body&lt;/p&gt;\\r\\n', 'Surya Prakash Manne', 'ALL', '2 11 2017', '12:49 PM', '_sfm_deadpool_wallpaper_by_jomajorsh-d72vqtu.jpg'),
(54, 'cdpc', 'this is notice of cdpc', '', 'Surya Prakash Manne', 'E2-CH-01', '20 11 2017', '03:26 PM', ''),
(55, 'cdpc', 'this iasdasdfs', '', 'Surya Prakash Manne', 'E3-CH-01', '30 11 2017', '05:28 PM', ''),
(56, 'notice', 'admin', '&lt;p&gt;&lt;strong&gt;asldaflasjdlf&lt;/strong&gt;&lt;/p&gt;\\r\\n', 'Surya Prakash Manne', 'E2-CH-01', '6 12 2017', '04:12 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` varchar(7) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `interested` varchar(255) NOT NULL,
  `goal` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `quote` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `filled` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `dob`, `email`, `gender`, `interested`, `goal`, `about`, `quote`, `status`, `filled`, `pic`) VALUES
('N090161', 'surya prkash', '12-12-2012', 'chem@gmail.com', 'male', 'rgukt', 'rgukt', 'rgukt', 'rgukt', 'rgukt', 'Y', 'profiles/1499159137about(1).jpg'),
('', 'a', '1999-01-01', 'g@gmail.com', 'male', 'no', 'no', 'no', 'no', 'no', 'Y', ''),
('N090169', 'a', '1999-01-01', 'g@gmail.com', 'male', 'g', 'no', 'no', 'no', 'no', 'Y', 'profiles/1499160959Aviary Stock Photo 2.png'),
('N090161', 'surya prkash', '12-12-2012', 'chem@gmail.com', 'male', 'rgukt', 'rgukt', 'rgukt', 'rgukt', 'rgukt', 'Y', ''),
('N100161', '', '', '', '', '', '', '', '', '', 'N', ''),
('N100100', 'vivekavardhan', '123', '123@gmail.com', 'male', '123', '123', '123', '123', '123', 'Y', 'profiles/1499316759about(1).jpg'),
('N100102', '', '', '', '', '', '', '', '', '', 'N', ''),
('N100100', 'vivekavardhan', '123', '123@gmail.com', 'male', '123', '123', '123', '123', '123', 'Y', 'profiles/1499316759about(1).jpg'),
('N100100', 'vivekavardhan', '123', '123@gmail.com', 'male', '123', '123', '123', '123', '123', 'Y', ''),
('N140233', 'surya', '30-08-1999', 'srisurya092@gmail.com', 'male', 'ntg', 'NO', 'ntg', 'ntg', 'ntg', 'Y', 'profiles/1499572629surya.jpg'),
('N140233', 'surya', '30-08-1999', 'srisurya092@gmail.com', 'male', 'ntg', 'NO', 'ntg', 'ntg', 'ntg', 'Y', ''),
('N140233', 'surya', '30-08-1999', 'srisurya092@gmail.com', 'male', 'ntg', 'NO', 'ntg', 'ntg', 'ntg', 'Y', ''),
('N140443', '', '', '', '', '', '', '', '', '', 'N', ''),
('N140233', 'surya', '30-08-1999', 'srisurya092@gmail.com', 'male', 'ntg', 'NO', 'ntg', 'ntg', 'ntg', 'Y', ''),
('N140233', 'surya', '30-08-1999', 'srisurya092@gmail.com', 'male', 'ntg', 'NO', 'ntg', 'ntg', 'ntg', 'Y', ''),
('N140233', 'surya', '30-08-1999', 'srisurya092@gmail.com', 'male', 'ntg', 'NO', 'ntg', 'ntg', 'ntg', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `sno` int(100) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sendto` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`sno`, `message`, `date`, `time`, `type`, `sendto`, `from`) VALUES
(1, 'feedback', '11 07 2017', '11:56 PM', 'YES/NO', 'ALL', 'sekhar'),
(2, 'hhhhh', '12 07 2017', '12:14 AM', 'YES/NO', 'E2-CH-01', 'sekhar');

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `sno` int(100) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `tmp_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `active` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`sno`, `sname`, `type`, `size`, `tmp_name`, `year`, `active`) VALUES
(1, 'chemical.pdf', 'pdf', '1200kb', 'chem', 'e4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `resource1`
--

CREATE TABLE `resource1` (
  `sno` int(100) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `sno` int(11) NOT NULL,
  `id` varchar(100) NOT NULL,
  `rno` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(15) NOT NULL,
  `father_mobile` int(15) NOT NULL,
  `door_no` varchar(100) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `village` varchar(100) NOT NULL,
  `mandal` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`sno`, `id`, `rno`, `name`, `father_name`, `class`, `dob`, `gender`, `email`, `mobile`, `father_mobile`, `door_no`, `Street`, `village`, `mandal`, `district`, `category`) VALUES
(1, 'N090161', 1, 'ram', 'raj', 'sg1', '12-2-1996', 'male', 'info@gmail.com', 2147483647, 2147483647, '2-3', 'rgukt', 'rgukt', 'rgukt', 'rgukt', 'bc');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `sno` int(10) NOT NULL,
  `books` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`sno`, `books`) VALUES
(2, '1.Chemical Process Modelling and Computer Simulation A K JANA.pdf'),
(3, '2.Process Simulation and Control Using Aspen.pdf'),
(4, '3.Chemical Process Calculations - Copy.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(100) NOT NULL,
  `id` varchar(7) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'student',
  `name` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `id`, `role`, `name`, `password`, `year`) VALUES
(7, 'N140233', 'student', 'Surya Prakash Manne', '1122', 'E2'),
(8, 'N140443', 'admin', 'Nekkala Prasanth', '1122', 'E2'),
(9, 'N140137', 'student', 'Baki Yogesh', '123', 'E2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `cdpc`
--
ALTER TABLE `cdpc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `library_list`
--
ALTER TABLE `library_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `resource1`
--
ALTER TABLE `resource1`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT for table `cdpc`
--
ALTER TABLE `cdpc`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `library_list`
--
ALTER TABLE `library_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `resource1`
--
ALTER TABLE `resource1`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
