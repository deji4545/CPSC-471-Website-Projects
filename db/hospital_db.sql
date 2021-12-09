-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2021 at 06:53 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `biometric`
--

CREATE TABLE `biometric` (
  `h_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `height` double NOT NULL,
  `bloodsugar` double NOT NULL,
  `bloodpressure_s` double NOT NULL,
  `bloodpressure_d` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `biometric`
--

INSERT INTO `biometric` (`h_no`, `date`, `height`, `bloodsugar`, `bloodpressure_s`, `bloodpressure_d`) VALUES
(701940, '2012-09-30', 247.69, 285, 184, 66),
(701940, '2016-04-22', 128.18, 250, 134, 124),
(701940, '2019-09-18', 120.38, 131, 184, 156),
(4480857, '2012-10-04', 169.42, 186, 160, 92),
(4480857, '2012-12-27', 145.55, 285, 185, 137),
(4480857, '2016-10-18', 236.11, 223, 128, 61),
(38865301, '2011-02-24', 231.65, 167, 189, 76),
(38865301, '2012-09-25', 224.3, 200, 141, 121),
(38865301, '2013-08-04', 170.23, 216, 125, 61),
(38865301, '2018-09-19', 206.88, 248, 130, 70),
(38865301, '2020-12-08', 190.06, 203, 172, 114),
(58143759, '2012-12-02', 155.54, 84, 183, 119),
(58143759, '2014-03-22', 176.18, 181, 115, 121),
(58143759, '2015-05-24', 197.82, 169, 162, 157),
(58143759, '2017-07-21', 212.48, 140, 178, 93),
(58143759, '2018-01-05', 148.84, 221, 169, 94),
(58143759, '2020-10-19', 158.62, 258, 173, 151),
(69036544, '2014-12-27', 216.71, 195, 160, 90),
(69036544, '2018-01-01', 143.57, 144, 145, 109),
(69036544, '2018-05-21', 239.87, 132, 106, 78),
(69036544, '2019-07-26', 157.9, 286, 112, 121),
(69036544, '2020-08-25', 153.04, 164, 189, 92),
(73753372, '2011-01-07', 107, 213, 173, 115),
(73753372, '2012-12-09', 143.51, 274, 121, 140),
(73753372, '2013-09-23', 197.07, 185, 155, 63),
(73753372, '2016-04-30', 172.82, 184, 110, 130),
(73753372, '2018-04-29', 235.53, 274, 179, 70),
(73753372, '2021-05-17', 201.28, 181, 176, 133),
(159097031, '2012-01-22', 237.27, 270, 156, 67),
(159097031, '2013-07-01', 227.15, 109, 162, 108),
(159097031, '2013-08-24', 175.25, 194, 152, 139),
(159097031, '2017-06-21', 228.25, 280, 139, 64),
(159097031, '2018-11-14', 151.87, 214, 173, 87),
(159097031, '2021-03-27', 232.29, 221, 170, 144),
(316180998, '2011-01-25', 248.65, 147, 182, 66),
(316180998, '2015-05-29', 168.78, 74, 189, 65),
(316180998, '2021-04-04', 104.96, 74, 193, 107),
(350940381, '2011-05-19', 224.22, 72, 164, 113),
(350940381, '2012-08-10', 213.34, 179, 160, 82),
(350940381, '2013-11-05', 139.5, 242, 144, 66),
(350940381, '2015-02-01', 136.37, 104, 153, 152),
(350940381, '2020-06-04', 235.42, 130, 129, 130),
(350940381, '2021-01-10', 138.37, 72, 194, 123),
(529221882, '2013-02-15', 234.52, 137, 167, 147),
(529221882, '2013-10-16', 204.67, 242, 142, 98),
(529221882, '2019-11-01', 192.49, 96, 119, 155),
(529221882, '2019-11-04', 215.91, 172, 189, 144),
(611859931, '2011-06-25', 249.77, 109, 185, 86),
(611859931, '2011-09-05', 132.86, 207, 186, 105),
(611859931, '2014-12-21', 175.3, 177, 171, 132),
(611859931, '2018-11-26', 222.34, 174, 195, 155),
(611859931, '2020-06-28', 216.06, 237, 197, 132),
(611859931, '2020-08-09', 141.55, 151, 133, 102),
(635178813, '2011-12-27', 103.8, 157, 105, 110),
(635178813, '2012-10-09', 235.4, 265, 123, 64),
(635178813, '2013-05-14', 215.4, 87, 198, 60),
(635178813, '2018-04-12', 240.85, 256, 157, 134),
(635178813, '2020-09-28', 187.01, 110, 134, 140),
(635178813, '2021-12-03', 102.86, 139, 108, 85),
(664925238, '2010-12-11', 145.89, 262, 185, 135),
(664925238, '2015-01-08', 205.96, 77, 169, 108),
(664925238, '2020-06-07', 116.73, 237, 136, 95),
(664925238, '2020-11-12', 175.34, 177, 101, 134),
(664925238, '2021-03-14', 195.78, 225, 143, 94),
(664925238, '2021-03-27', 164.98, 125, 200, 104),
(664925238, '2021-06-06', 108.98, 216, 153, 121),
(696306699, '2012-11-30', 246.08, 297, 143, 65),
(696306699, '2013-10-17', 153, 268, 190, 101),
(696306699, '2013-11-22', 134.39, 98, 158, 65),
(696306699, '2017-10-02', 223.54, 82, 171, 80),
(696306699, '2018-08-27', 181.67, 279, 118, 114),
(696306699, '2020-07-24', 243.5, 94, 133, 67),
(746704007, '2014-02-14', 234.16, 97, 142, 90),
(746704007, '2016-10-12', 102.56, 163, 107, 137),
(746704007, '2016-11-17', 214.88, 121, 154, 129),
(746704007, '2021-10-07', 179.29, 243, 131, 117),
(772308697, '2012-08-28', 181.08, 119, 183, 86),
(772308697, '2018-04-27', 213.48, 122, 132, 91),
(772308697, '2018-08-01', 221.82, 192, 107, 96),
(779808608, '2013-04-17', 187.85, 223, 189, 124),
(779808608, '2015-10-14', 163.86, 229, 193, 127),
(779808608, '2021-01-15', 103.75, 135, 147, 61),
(865328196, '2011-05-30', 198.22, 179, 170, 132),
(865328196, '2012-02-16', 159.32, 107, 146, 124),
(865328196, '2013-11-27', 222.99, 172, 190, 147),
(865328196, '2014-01-08', 207.98, 156, 131, 87),
(865328196, '2014-04-23', 169.7, 197, 177, 116),
(865328196, '2015-07-29', 234.66, 172, 166, 128),
(865328196, '2017-09-15', 102.3, 145, 186, 160),
(987089222, '2015-12-25', 160.05, 99, 200, 110),
(987089222, '2017-04-15', 130.68, 141, 186, 64),
(987089222, '2018-09-13', 124.42, 173, 184, 144),
(987089222, '2021-03-04', 170.87, 297, 125, 74),
(994072237, '2014-07-09', 216.15, 88, 113, 73),
(994072237, '2016-12-27', 142.3, 260, 167, 91),
(994072237, '2020-10-08', 151.01, 161, 195, 120),
(994072237, '2020-11-23', 117.71, 146, 178, 160),
(994072237, '2021-02-12', 142.78, 171, 112, 108),
(994072237, '2021-03-09', 161.61, 245, 178, 142),
(994072237, '2021-09-29', 100.86, 118, 120, 139);

-- --------------------------------------------------------

--
-- Table structure for table `dependents`
--

CREATE TABLE `dependents` (
  `id_no` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `m_initial` varchar(45) DEFAULT NULL,
  `lname` varchar(255) NOT NULL,
  `relationship` varchar(45) NOT NULL,
  `phone_number` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dependents`
--

INSERT INTO `dependents` (`id_no`, `fname`, `m_initial`, `lname`, `relationship`, `phone_number`) VALUES
(895171, 'Barclay', 'G', 'Warwick', 'child', 7494692070),
(895171, 'Roland', 'p', 'Cotherill', 'spouse', 2517647325),
(81595444, 'Maurice', 'R', 'Lesly', 'spouse', 6618246958),
(81595444, 'Robers', 'k', 'Pimmocke', 'spouse', 4592792943),
(153371888, 'Josiah', 'v', 'Guerry', 'spouse', 6527531798),
(153371888, 'Lindy', 'G', 'Lavrick', 'spouse', 3054779313),
(313282358, 'Eleanora', 'm', 'Demongeot', 'child', 1237814637),
(550795978, 'Samuel', 'J', 'Colvin', 'spouse', 4111185158),
(550795978, 'Simon', 'i', 'Jeans', 'spouse', 4159158084),
(580268862, 'Crissie', 'k', 'Prettyman', 'child', 4097597891),
(580268862, 'Falkner', 'n', 'Neathway', 'parent', 1716254156),
(584663073, 'Morgan', 'd', 'Lundbech', 'child', 8497969711),
(584663073, 'Rhona', 't', 'Wroth', 'child', 2668742355),
(673831710, 'Guinevere', 'd', 'Thurstance', 'child', 3092473745),
(673831710, 'Klaus', 'Y', 'Schubbert', 'child', 4765828006),
(764118558, 'Mia', 'Z', 'Porch', 'child', 8894918785),
(764118558, 'Zebulon', 'G', 'Guerrero', 'parent', 1784354494),
(851802243, 'Antonie', 'b', 'Creavin', 'parent', 6249038442),
(851802243, 'Ase', 'H', 'Dimmick', 'child', 9316805684),
(876009889, 'Elka', 'q', 'Lamond', 'child', 5793893620),
(887888122, 'Anson', 's', 'Cicchitello', 'spouse', 5776655731),
(887888122, 'Lamar', 'J', 'Rego', 'spouse', 3646355082),
(931436886, 'George', 'c', 'Howis', 'spouse', 4022521612),
(931436886, 'Zuzana', 'l', 'Goodluck', 'parent', 1277594710),
(956296465, 'Livvie', 'L', 'Banke', 'child', 2794670518),
(956296465, 'Sylvia', 'y', 'Boldecke', 'child', 7657623968),
(968924598, 'Bancroft', 'y', 'Kubasiewicz', 'child', 5798305876),
(968924598, 'Elly', 'W', 'Faloon', 'child', 4911452594);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosed_with`
--

CREATE TABLE `diagnosed_with` (
  `name` varchar(255) NOT NULL,
  `healthcard_no` int(11) NOT NULL,
  `date_diagnosed` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id_no`) VALUES
(584663073),
(764118558),
(931436886),
(968924598);

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contact`
--

CREATE TABLE `emergency_contact` (
  `healthcard_no` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `m_initial` varchar(45) DEFAULT NULL,
  `lname` varchar(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `phone_number` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `emergency_contact`
--

INSERT INTO `emergency_contact` (`healthcard_no`, `fname`, `m_initial`, `lname`, `relationship`, `phone_number`) VALUES
(701940, 'Trever', 'T', 'Ingerfield', 'spouse', 5744604833),
(4480857, 'Augustine', 'n', 'Kleinholz', 'parent', 8423027293),
(38865301, 'Orton', 'L', 'Frudd', 'parent', 6178959408),
(58143759, 'Stu', 'c', 'Purnell', 'parent', 2434164700),
(69036544, 'Imelda', 'x', 'Tichelaar', 'spouse', 2883227550),
(73753372, 'Burlie', 'k', 'Trumble', 'spouse', 9397201613),
(159097031, 'Gan', 's', 'Riggulsford', 'sibling', 1176592874),
(316180998, 'Jada', 'o', 'Rojahn', 'spouse', 3729712885),
(350940381, 'Nanete', 'f', 'Olliff', 'child', 8036595004),
(529221882, 'Perkin', 'X', 'Ronnay', 'parent', 9614956839),
(611859931, 'Che', 'd', 'Gannaway', 'spouse', 6321178069),
(635178813, 'Codie', 'Q', 'Ivanaev', 'spouse', 8807648093),
(664925238, 'Jemmie', 'f', 'Mulran', 'spouse', 1873751456),
(696306699, 'Odie', 't', 'Robyns', 'spouse', 6136555141),
(746704007, 'Matt', 'R', 'Rowles', 'child', 7297908066),
(772308697, 'Penni', 'x', 'Freak', 'parent', 2758018683),
(779808608, 'John', 'm', 'Doe', 'spouse', 5875674567),
(865328196, 'Tamarra', 'z', 'Badam', 'child', 5996724385),
(987089222, 'Derk', 's', 'Towhey', 'parent', 7888901181),
(994072237, 'Iago', 'M', 'Haycroft', 'spouse', 8485607895);

-- --------------------------------------------------------

--
-- Table structure for table `human_resource`
--

CREATE TABLE `human_resource` (
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `human_resource`
--

INSERT INTO `human_resource` (`id_no`) VALUES
(887888122);

-- --------------------------------------------------------

--
-- Table structure for table `illness`
--

CREATE TABLE `illness` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it`
--

CREATE TABLE `it` (
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `it`
--

INSERT INTO `it` (`id_no`) VALUES
(623907731);

-- --------------------------------------------------------

--
-- Table structure for table `lab_technician`
--

CREATE TABLE `lab_technician` (
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lab_technician`
--

INSERT INTO `lab_technician` (`id_no`) VALUES
(876009889);

-- --------------------------------------------------------

--
-- Table structure for table `maintain`
--

CREATE TABLE `maintain` (
  `id_no` int(11) NOT NULL,
  `healthcard_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical`
--

CREATE TABLE `medical` (
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `medical`
--

INSERT INTO `medical` (`id_no`) VALUES
(895171),
(81595444),
(153371888),
(313282358),
(550795978),
(580268862),
(584663073),
(673831710),
(764118558),
(851802243),
(876009889),
(931436886),
(956296465),
(967487788),
(968924598);

-- --------------------------------------------------------

--
-- Table structure for table `medical_bills`
--

CREATE TABLE `medical_bills` (
  `treatment_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `healthcard_no` int(11) NOT NULL,
  `outstanding_charges` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_ward`
--

CREATE TABLE `medical_ward` (
  `ward_no` int(11) NOT NULL,
  `ward_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `t_no` int(11) NOT NULL,
  `drug_name` varchar(255) DEFAULT NULL,
  `dose` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `non_medical`
--

CREATE TABLE `non_medical` (
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `non_medical`
--

INSERT INTO `non_medical` (`id_no`) VALUES
(514086348),
(623907731),
(806679732),
(887888122);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id_no`) VALUES
(895171),
(81595444),
(153371888),
(550795978),
(580268862),
(673831710),
(956296465),
(967487788);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `healthcard_no` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `m_initial` varchar(45) DEFAULT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`healthcard_no`, `fname`, `m_initial`, `lname`, `gender`, `dob`) VALUES
(701940, 'Dugald', 'f', 'Durrett', 'Female', '1985-07-02'),
(4480857, 'Megen', 'h', 'Nother', 'Male', '2020-12-29'),
(38865301, 'Arley', 'Q', 'Cattlemull', 'Male', '2012-11-12'),
(58143759, 'Shanda', 'T', 'Cromett', 'Female', '1961-05-23'),
(69036544, 'Cletus', 'X', 'Keets', 'Male', '1991-06-24'),
(73753372, 'Chalmers', 'I', 'Pott', 'Female', '2013-01-10'),
(159097031, 'Kizzee', 'u', 'Williscroft', 'Male', '2001-11-01'),
(316180998, 'Shelba', 'Y', 'Gentiry', 'Female', '2014-11-03'),
(350940381, 'Candi', 'l', 'Reddihough', 'Female', '1968-08-22'),
(529221882, 'Beret', 'h', 'Ruppertz', 'Male', '2019-09-27'),
(611859931, 'Rodge', 'e', 'Landrean', 'Male', '2021-06-29'),
(635178813, 'Bernete', 'P', 'Dellow', 'Male', '2016-01-28'),
(664925238, 'Jenica', 'H', 'Yoskowitz', 'Male', '1969-03-15'),
(696306699, 'Emlen', 'K', 'Clout', 'Female', '1979-02-07'),
(746704007, 'Mahmoud', 'u', 'Kording', 'Female', '1989-12-23'),
(772308697, 'Hailee', 'b', 'Drance', 'Male', '1963-01-09'),
(779808608, 'Jerrie', 'Y', 'MacKain', 'Male', '1980-05-05'),
(865328196, 'Ferd', 's', 'Marcos', 'Male', '1967-06-24'),
(987089222, 'Bryn', 'e', 'Crookes', 'Male', '2019-10-27'),
(994072237, 'Les', 'w', 'Matthews', 'Male', '1993-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id_no`) VALUES
(851802243);

-- --------------------------------------------------------

--
-- Table structure for table `receives`
--

CREATE TABLE `receives` (
  `t_no` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `illness_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reception`
--

CREATE TABLE `reception` (
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reception`
--

INSERT INTO `reception` (`id_no`) VALUES
(514086348),
(806679732);

-- --------------------------------------------------------

--
-- Table structure for table `social_worker`
--

CREATE TABLE `social_worker` (
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_no` int(11) NOT NULL,
  `sin` bigint(12) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `m_initial` varchar(255) DEFAULT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `salary` double NOT NULL,
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_no`, `sin`, `fname`, `m_initial`, `lname`, `address`, `dob`, `salary`, `gender`) VALUES
(895171, 1418692934, 'Tymon', 'D', 'Lapley', '595 Onsgard Place', '1993-01-19', 36263.81, 'Male'),
(81595444, 2147483647, 'Rosie', 'g', 'Senogles', '1323 Anthes Road', '1978-11-26', 14785.95, 'Male'),
(153371888, 2147483647, 'Earlie', 'b', 'Bodleigh', '266 Myrtle Trail', '1976-05-03', 13584.71, 'Male'),
(313282358, 2147483647, 'Othilia', 'o', 'Fleury', '77388 Memorial Place', '1994-07-04', 50198.27, 'Female'),
(514086348, 2147483647, 'Gustav', 'T', 'Rule', '44662 Ilene Drive', '1963-07-12', 38925.36, 'Female'),
(550795978, 2147483647, 'Ninnetta', 'f', 'Sporrij', '6 Raven Alley', '1995-01-15', 36096.45, 'Female'),
(580268862, 356718137, 'Debora', 'u', 'Camin', '1289 Fairfield Plaza', '1999-07-16', 26476.02, 'Male'),
(584663073, 1418692932, 'Minetta', 'n', 'Pietrowicz', '4009 Hagan Avenue', '1963-03-06', 31153.82, 'Male'),
(623907731, 2147483647, 'Fremont', 'D', 'MacPharlain', '60 Packers Drive', '1997-05-25', 32385.21, 'Female'),
(673831710, 2147483647, 'Danna', 'n', 'Moyes', '70 Kim Point', '1981-04-07', 31883.89, 'Male'),
(764118558, 2147483647, 'Gail', 'M', 'Bothen', '81791 Quincy Lane', '1973-04-03', 36567.93, 'Female'),
(806679732, 2147483647, 'Celestyn', 'U', 'Pembery', '64055 Westridge Junction', '1976-12-16', 17853.78, 'Male'),
(851802243, 2121046762, 'Lula', 'J', 'Million', '98387 Granby Circle', '1997-05-20', 22536.42, 'Male'),
(876009889, 2147483647, 'Bettina', 'K', 'Tudgay', '884 Pankratz Junction', '1960-11-30', 45349.69, 'Male'),
(887888122, 2147483647, 'Yoshiko', 'O', 'Divina', '93 Charing Cross Center', '1989-12-29', 21998.55, 'Female'),
(931436886, 2147483647, 'Yance', 'u', 'Kent', '255 Eagan Park', '1975-09-11', 3984.25, 'Female'),
(956296465, 105553301, 'Lars', 'C', 'Trevna', '31948 Longview Hill', '1996-07-06', 9679.78, 'Male'),
(967487788, 2147483647, 'Eleonore', 'u', 'Imort', '2 Transport Lane', '1968-10-02', 53537.75, 'Male'),
(968924598, 2147483647, 'Tanner', 'f', 'Bauld', '6577 Kropf Way', '1992-06-15', 51670.01, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `surgery`
--

CREATE TABLE `surgery` (
  `t_no` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treat`
--

CREATE TABLE `treat` (
  `doctor_id_no` int(11) NOT NULL,
  `nurse_id_no` int(11) NOT NULL,
  `healthcard_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatment_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `update`
--

CREATE TABLE `update` (
  `hr_id_no` int(11) NOT NULL,
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_in`
--

CREATE TABLE `work_in` (
  `sid_no` int(11) NOT NULL,
  `wardno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biometric`
--
ALTER TABLE `biometric`
  ADD PRIMARY KEY (`h_no`,`date`);

--
-- Indexes for table `dependents`
--
ALTER TABLE `dependents`
  ADD PRIMARY KEY (`id_no`,`fname`,`lname`);

--
-- Indexes for table `diagnosed_with`
--
ALTER TABLE `diagnosed_with`
  ADD PRIMARY KEY (`name`,`healthcard_no`),
  ADD KEY `h_no2_idx` (`healthcard_no`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `emergency_contact`
--
ALTER TABLE `emergency_contact`
  ADD PRIMARY KEY (`healthcard_no`,`fname`);

--
-- Indexes for table `human_resource`
--
ALTER TABLE `human_resource`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `illness`
--
ALTER TABLE `illness`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `it`
--
ALTER TABLE `it`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `lab_technician`
--
ALTER TABLE `lab_technician`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `maintain`
--
ALTER TABLE `maintain`
  ADD PRIMARY KEY (`id_no`,`healthcard_no`),
  ADD KEY `h_no4_idx` (`healthcard_no`),
  ADD KEY `h_no5_idx` (`healthcard_no`);

--
-- Indexes for table `medical`
--
ALTER TABLE `medical`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `medical_bills`
--
ALTER TABLE `medical_bills`
  ADD PRIMARY KEY (`treatment_no`,`date`);

--
-- Indexes for table `medical_ward`
--
ALTER TABLE `medical_ward`
  ADD PRIMARY KEY (`ward_no`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`t_no`);

--
-- Indexes for table `non_medical`
--
ALTER TABLE `non_medical`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`healthcard_no`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `receives`
--
ALTER TABLE `receives`
  ADD PRIMARY KEY (`t_no`,`illness_name`);

--
-- Indexes for table `reception`
--
ALTER TABLE `reception`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `social_worker`
--
ALTER TABLE `social_worker`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `surgery`
--
ALTER TABLE `surgery`
  ADD PRIMARY KEY (`t_no`);

--
-- Indexes for table `treat`
--
ALTER TABLE `treat`
  ADD PRIMARY KEY (`doctor_id_no`,`nurse_id_no`,`healthcard_no`),
  ADD KEY `h_no4_idx` (`healthcard_no`),
  ADD KEY `n_id_idx` (`nurse_id_no`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatment_no`);

--
-- Indexes for table `update`
--
ALTER TABLE `update`
  ADD PRIMARY KEY (`hr_id_no`,`id_no`),
  ADD KEY `sid4_idx` (`id_no`);

--
-- Indexes for table `work_in`
--
ALTER TABLE `work_in`
  ADD PRIMARY KEY (`sid_no`,`wardno`),
  ADD KEY `ward_no_idx` (`wardno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biometric`
--
ALTER TABLE `biometric`
  ADD CONSTRAINT `h_no3` FOREIGN KEY (`h_no`) REFERENCES `patient` (`healthcard_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dependents`
--
ALTER TABLE `dependents`
  ADD CONSTRAINT `id_no` FOREIGN KEY (`id_no`) REFERENCES `staff` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diagnosed_with`
--
ALTER TABLE `diagnosed_with`
  ADD CONSTRAINT `h_no2` FOREIGN KEY (`healthcard_no`) REFERENCES `patient` (`healthcard_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `m_id3` FOREIGN KEY (`id_no`) REFERENCES `medical` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emergency_contact`
--
ALTER TABLE `emergency_contact`
  ADD CONSTRAINT `h_no1` FOREIGN KEY (`healthcard_no`) REFERENCES `patient` (`healthcard_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `human_resource`
--
ALTER TABLE `human_resource`
  ADD CONSTRAINT `nm_id4` FOREIGN KEY (`id_no`) REFERENCES `non_medical` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `it`
--
ALTER TABLE `it`
  ADD CONSTRAINT `nm_id3` FOREIGN KEY (`id_no`) REFERENCES `non_medical` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lab_technician`
--
ALTER TABLE `lab_technician`
  ADD CONSTRAINT `m_id4` FOREIGN KEY (`id_no`) REFERENCES `medical` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maintain`
--
ALTER TABLE `maintain`
  ADD CONSTRAINT `h_no5` FOREIGN KEY (`healthcard_no`) REFERENCES `patient` (`healthcard_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `r_id` FOREIGN KEY (`id_no`) REFERENCES `reception` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical`
--
ALTER TABLE `medical`
  ADD CONSTRAINT `sid2` FOREIGN KEY (`id_no`) REFERENCES `staff` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medication`
--
ALTER TABLE `medication`
  ADD CONSTRAINT `t_no1` FOREIGN KEY (`t_no`) REFERENCES `treatment` (`treatment_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `non_medical`
--
ALTER TABLE `non_medical`
  ADD CONSTRAINT `sid3` FOREIGN KEY (`id_no`) REFERENCES `staff` (`id_no`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `m_id2` FOREIGN KEY (`id_no`) REFERENCES `medical` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD CONSTRAINT `m_id1` FOREIGN KEY (`id_no`) REFERENCES `medical` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receives`
--
ALTER TABLE `receives`
  ADD CONSTRAINT `t_no2` FOREIGN KEY (`t_no`) REFERENCES `treatment` (`treatment_no`);

--
-- Constraints for table `reception`
--
ALTER TABLE `reception`
  ADD CONSTRAINT `nm_id1` FOREIGN KEY (`id_no`) REFERENCES `non_medical` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `social_worker`
--
ALTER TABLE `social_worker`
  ADD CONSTRAINT `nm_id2` FOREIGN KEY (`id_no`) REFERENCES `non_medical` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `surgery`
--
ALTER TABLE `surgery`
  ADD CONSTRAINT `t_no3` FOREIGN KEY (`t_no`) REFERENCES `treatment` (`treatment_no`);

--
-- Constraints for table `treat`
--
ALTER TABLE `treat`
  ADD CONSTRAINT `d_id` FOREIGN KEY (`doctor_id_no`) REFERENCES `doctor` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h_no4` FOREIGN KEY (`healthcard_no`) REFERENCES `patient` (`healthcard_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `n_id` FOREIGN KEY (`nurse_id_no`) REFERENCES `nurse` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `update`
--
ALTER TABLE `update`
  ADD CONSTRAINT `hr_id` FOREIGN KEY (`hr_id_no`) REFERENCES `human_resource` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sid4` FOREIGN KEY (`id_no`) REFERENCES `staff` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `work_in`
--
ALTER TABLE `work_in`
  ADD CONSTRAINT `sid` FOREIGN KEY (`sid_no`) REFERENCES `staff` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ward` FOREIGN KEY (`wardno`) REFERENCES `medical_ward` (`ward_no`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
