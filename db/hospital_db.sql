-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2021 at 02:35 AM
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

--
-- Dumping data for table `diagnosed_with`
--

INSERT INTO `diagnosed_with` (`name`, `healthcard_no`, `date_diagnosed`) VALUES
('Aseptic meningitis', 865328196, '2013-11-27'),
('Bacterial meningitis', 987089222, '2017-04-15'),
('Cardiomyopathy', 69036544, '2018-05-21'),
('Chlamydophila pneumoniae infection', 529221882, '2019-11-01'),
('Diphtheria', 350940381, '2012-08-10'),
('Gastroenteritis', 611859931, '2020-06-28'),
('Huntington\'s disease', 316180998, '2011-01-25'),
('Idiopathic pulmonary fibrosis', 772308697, '2018-04-27'),
('Ignious Syndrome', 73753372, '2012-12-09'),
('Leptospirosis', 38865301, '2011-02-24'),
('Marburg hemorrhagic fever', 701940, '2012-09-30'),
('Paracoccidioidomycosis', 58143759, '2017-07-21'),
('Pneumocystis pneumonia', 159097031, '2013-08-24'),
('Pyoderma gangrenosum', 4480857, '2016-10-18'),
('Rickettsial infection', 696306699, '2012-11-30'),
('Rubella', 779808608, '2016-12-27'),
('SARS', 994072237, '2021-02-12'),
('Scarlet fever', 746704007, '2014-02-14'),
('Shigellosis', 635178813, '2020-09-28'),
('Subacute bacterial endocarditis', 664925238, '2020-06-07'),
('Varicose veins', 779808608, '2015-10-14');

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

--
-- Dumping data for table `illness`
--

INSERT INTO `illness` (`name`) VALUES
('Aneurdu'),
('Aseptic meningitis'),
('Bacterial meningitis'),
('Bacterial vaginosis'),
('Bacteroides infection'),
('Cardiomyopathy'),
('Chlamydophila pneumoniae infection'),
('Chronic fatigue syndrome'),
('Churg-Strauss syndrome'),
('Common cold'),
('Crohn\'s disease'),
('Dengue fever'),
('Diphtheria'),
('Diphyllobothriasis'),
('Foodborne illness'),
('Gastroenteritis'),
('Gonorrhea'),
('Goodpasture\'s syndrome'),
('Hepatitis A'),
('Human bocavirus infection'),
('Huntington\'s disease'),
('Idiopathic pulmonary fibrosis'),
('Ignious Syndrome'),
('illness'),
('Leptospirosis'),
('Lymphoma'),
('Marburg hemorrhagic fever'),
('Microscopic polyangiitis'),
('Paracoccidioidomycosis'),
('Periodontal disease'),
('Peritonitis'),
('Pneumocystis pneumonia'),
('Postpericardiotomy syndrome'),
('Progesterone dermatitis'),
('Psoriatic arthritis'),
('Pyoderma gangrenosum'),
('Reflex sympathetic dystrophy'),
('Repetitive strain injury'),
('Rickettsial infection'),
('Rubella'),
('SARS'),
('Scarlet fever'),
('Scrapie'),
('Shigellosis'),
('Subacute bacterial endocarditis'),
('Ulcers'),
('Varicose veins'),
('Venezuelan equine encephalitis'),
('Warts'),
('Zygomycosis');

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

--
-- Dumping data for table `maintain`
--

INSERT INTO `maintain` (`id_no`, `healthcard_no`) VALUES
(806679732, 701940),
(514086348, 4480857),
(514086348, 38865301),
(514086348, 58143759),
(514086348, 69036544),
(514086348, 73753372),
(806679732, 159097031),
(514086348, 316180998),
(806679732, 350940381),
(806679732, 529221882),
(806679732, 611859931),
(514086348, 635178813),
(514086348, 664925238),
(806679732, 696306699),
(514086348, 746704007),
(806679732, 772308697),
(806679732, 779808608),
(806679732, 865328196),
(806679732, 987089222),
(514086348, 994072237);

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

--
-- Dumping data for table `medical_bills`
--

INSERT INTO `medical_bills` (`treatment_no`, `date`, `healthcard_no`, `outstanding_charges`) VALUES
(0, '0000-00-00', 0, 0),
(11328, '2016-10-18', 38865301, 430.72),
(12096, '2014-07-09', 779808608, 296.98),
(15593, '2020-12-08', 58143759, 586.41),
(15604, '2020-06-28', 159097031, 948.61),
(17569, '2011-01-25', 635178813, 385.2),
(24041, '2017-04-15', 350940381, 0),
(24517, '2011-02-24', 316180998, 0),
(26962, '2019-07-26', 865328196, 259.27),
(33560, '2013-08-24', 779808608, 0),
(51538, '2020-06-04', 4480857, 404.14),
(52990, '2020-06-07', 4480857, 937.19),
(53459, '2013-02-15', 316180998, 55.51),
(54219, '2020-09-28', 58143759, 248.14),
(54418, '2012-09-30', 350940381, 382.52),
(61137, '2021-12-03', 635178813, 268.85),
(61335, '2013-08-04', 611859931, 741.64),
(65472, '2016-12-27', 664925238, 293.33),
(66589, '2018-04-29', 316180998, 464.34),
(69056, '2016-11-17', 772308697, 277.2),
(69438, '2021-03-27', 664925238, 597.94),
(71847, '2011-09-05', 611859931, 634.41),
(72250, '2013-10-17', 772308697, 838.31),
(75624, '2019-11-01', 159097031, 0),
(77777, '2013-11-27', 701940, 804.69),
(79968, '2018-04-27', 611859931, 748.68),
(80113, '2012-11-30', 701940, 0),
(81226, '2012-08-10', 772308697, 0),
(81441, '2021-03-04', 664925238, 162.11),
(82518, '2012-12-09', 664925238, 0),
(83160, '2018-11-14', 701940, 41.78),
(83929, '2017-10-02', 58143759, 133.35),
(86753, '2014-02-14', 38865301, 0),
(89978, '2013-11-05', 779808608, 931.85),
(92955, '2017-07-21', 73753372, 803.86),
(92982, '2014-01-08', 865328196, 367.97),
(93968, '2018-05-21', 73753372, 0),
(94895, '2015-05-24', 4480857, 326.62),
(95978, '2013-09-23', 701940, 460.11),
(96351, '2021-02-12', 58143759, 0),
(96748, '2015-10-14', 865328196, 502.42),
(127435, '2012-08-28', 4480857, 0),
(135234, '2019-09-18', 73753372, 0),
(147891, '2013-11-22', 611859931, 0),
(150789, '2021-01-10', 611859931, 0),
(171118, '2012-12-02', 772308697, 565.53),
(172698, '2014-12-21', 779808608, 0),
(174856, '2011-05-19', 159097031, 0),
(177684, '2013-10-17', 987089222, 188.09),
(190924, '2015-10-14', 779808608, 944.98),
(195492, '2016-11-17', 611859931, 0),
(200794, '2020-11-23', 58143759, 0),
(207300, '2013-10-16', 696306699, 206.87),
(218171, '2012-08-10', 350940381, 937.22),
(221363, '2015-07-29', 350940381, 0),
(222551, '2016-04-30', 4480857, 0),
(222561, '2013-08-04', 779808608, 0),
(235097, '2021-03-14', 701940, 0),
(244238, '2020-06-28', 611859931, 119.18),
(250007, '2020-11-12', 316180998, 0),
(270442, '2011-09-05', 350940381, 192.2),
(291035, '2011-12-27', 58143759, 0),
(327513, '2020-08-25', 611859931, 0),
(343194, '2021-03-04', 4480857, 0),
(344564, '2015-05-24', 73753372, 392.54),
(359626, '2011-01-07', 635178813, 0),
(364765, '2021-05-17', 38865301, 0),
(369534, '2012-12-27', 350940381, 0),
(377370, '2012-09-25', 664925238, 0),
(383867, '2021-03-09', 4480857, 0),
(384734, '2020-12-08', 994072237, 0),
(409133, '2017-09-15', 58143759, 0),
(431364, '2012-10-09', 159097031, 0),
(441554, '2010-12-11', 38865301, 0),
(453768, '2018-01-05', 696306699, 0),
(470192, '2016-12-27', 69036544, 0),
(473713, '2012-10-04', 316180998, 0),
(497421, '2021-12-03', 38865301, 0),
(519305, '2021-09-29', 865328196, 0),
(520867, '2012-09-30', 701940, 0),
(526506, '2014-01-08', 159097031, 0),
(527347, '2013-08-24', 159097031, 864.55),
(538966, '2021-02-12', 994072237, 338.98),
(539748, '2019-11-01', 529221882, 0),
(543274, '2017-06-21', 994072237, 0),
(546513, '2020-09-28', 635178813, 0),
(578639, '2016-10-12', 994072237, 353.4),
(580183, '2021-03-27', 58143759, 0),
(603618, '2021-01-15', 635178813, 0),
(611042, '2013-11-27', 865328196, 552.76),
(620421, '2014-12-27', 746704007, 409.23),
(623951, '2017-10-02', 664925238, 0),
(624380, '2018-11-26', 316180998, 900.99),
(636521, '2011-02-24', 38865301, 0),
(647352, '2015-01-08', 4480857, 0),
(657145, '2019-11-04', 664925238, 0),
(658838, '2015-12-25', 529221882, 357.32),
(661417, '2020-06-04', 316180998, 0),
(663858, '2020-06-07', 664925238, 92.57),
(681012, '2013-02-15', 635178813, 0),
(681132, '2018-04-12', 779808608, 329.04),
(685247, '2018-01-01', 779808608, 0),
(698256, '2018-11-14', 696306699, 603.06),
(700176, '2014-07-09', 865328196, 0),
(706790, '2017-04-15', 987089222, 156.38),
(709815, '2018-04-29', 746704007, 276.75),
(729075, '2020-10-08', 73753372, 0),
(741271, '2018-05-21', 69036544, 536.88),
(754425, '2019-07-26', 701940, 0),
(755898, '2014-03-22', 664925238, 0),
(757059, '2018-04-27', 772308697, 0),
(761942, '2011-05-30', 701940, 0),
(772785, '2014-04-23', 772308697, 0),
(787978, '2021-10-07', 865328196, 0),
(800618, '2020-07-24', 701940, 0),
(814058, '2016-04-22', 772308697, 0),
(843380, '2013-11-05', 529221882, 44.2),
(859263, '2013-05-14', 73753372, 0),
(864865, '2012-12-09', 73753372, 36.16),
(866291, '2013-04-17', 701940, 0),
(869031, '2020-08-09', 779808608, 0),
(875576, '2014-02-14', 746704007, 382.66),
(876775, '2011-06-25', 38865301, 0),
(884279, '2015-02-01', 865328196, 0),
(885099, '2017-07-21', 58143759, 0),
(886264, '2018-09-13', 635178813, 0),
(895578, '2013-09-23', 772308697, 0),
(905382, '2016-10-18', 4480857, 0),
(914638, '2018-08-01', 159097031, 0),
(921506, '2015-05-29', 58143759, 0),
(925800, '2020-10-19', 316180998, 0),
(929198, '2018-08-27', 350940381, 0),
(930838, '2011-01-25', 316180998, 555.24),
(934707, '2018-09-19', 635178813, 0),
(951080, '2021-04-04', 611859931, 0),
(958327, '2013-07-01', 865328196, 0),
(960057, '2012-01-22', 664925238, 477.08),
(960553, '2012-02-16', 69036544, 705.8),
(983120, '2012-11-30', 696306699, 86.84),
(987349, '2021-03-27', 772308697, 0),
(989899, '2021-06-06', 987089222, 492.5);

-- --------------------------------------------------------

--
-- Table structure for table `medical_ward`
--

CREATE TABLE `medical_ward` (
  `ward_no` int(11) NOT NULL,
  `ward_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `medical_ward`
--

INSERT INTO `medical_ward` (`ward_no`, `ward_name`) VALUES
(1, 'general surgery'),
(2, 'gastroenterology'),
(3, 'nerosurgery and high dependency unit'),
(4, 'renal'),
(5, 'stroke unit'),
(6, 'neurology/infectious diseases'),
(7, 'medical assessment and planning unit/surgical short stay'),
(8, 'cardio, endocrine, respiratory'),
(9, 'urology, vascular, cardio=thoracic, thoracic'),
(10, 'orthopaedics'),
(11, 'orthopaedics, oral maxillo-facial surgery, ENT and plastic surgery'),
(12, 'cardiology'),
(13, 'coronary care unit'),
(14, 'chest pain evaluation unit'),
(15, 'discharge lounge'),
(16, 'radiation oncology/oncology'),
(17, 'haematology/oncology/radiation oncology'),
(18, 'aged care unit'),
(19, 'geriatiric unit'),
(20, 'rehabilitation unit'),
(21, 'paediatric unit'),
(22, 'paediatric high care unit'),
(23, 'paediatric medical ward'),
(24, 'postnatal'),
(25, 'antenatal'),
(26, 'neontalogy'),
(27, 'special care nursery'),
(28, 'birth center'),
(29, 'birthing'),
(30, 'day surgery unit'),
(31, 'extended day surgery unit'),
(32, 'surgical assessment and planning unit'),
(33, 'emergency medicine unit'),
(34, 'intensive care unit'),
(35, 'psychiatry - high dependency'),
(36, 'psychiatry - low dependency');

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `t_no` int(11) NOT NULL,
  `drug_name` varchar(255) DEFAULT NULL,
  `dose` int(5) DEFAULT NULL,
  `frequency_per_day` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`t_no`, `drug_name`, `dose`, `frequency_per_day`) VALUES
(127435, 'Keppra', 191, 3),
(135234, 'OPI Personal Care Supplies Instant Foaming Hand Sanitizer Non Alcohol', 190, 3),
(147891, 'Maxixum Security Gel Toothpaste', 209, 3),
(150789, 'Isosorbide Dinitrate', 148, 2),
(171118, 'Lantus', 238, 3),
(172698, 'Lipitor', 105, 2),
(174856, 'FENTANYL', 168, 1),
(177684, 'Health Smart Natural Epsom Salt', 235, 2),
(190924, 'UMCKA THROAT', 133, 3),
(195492, 'Kali bichromicum', 160, 1),
(200794, 'PERFECTION LUMIERE', 184, 3),
(207300, 'Tobramycin and Dexamethasone', 102, 1),
(218171, 'Met-Tox', 141, 1),
(221363, 'Dexamethasone Sodium Phosphate', 172, 1),
(222551, 'diltiazem hydrochloride', 167, 3),
(222561, 'Pure and Gentle Mineral Oil Enema', 113, 2),
(235097, 'Malvin', 128, 2),
(244238, 'Diorskin Nude Natural Glow Makeup 022 Cameo', 196, 3),
(250007, 'health mart cold and allergy', 163, 1),
(270442, 'Allerfed', 190, 2),
(291035, 'Clindamycin hydrochloride', 226, 3),
(327513, 'Folic Acid', 184, 3),
(343194, 'Stannum 5', 208, 3),
(344564, 'Halls', 163, 3),
(359626, 'good sense ibuprofen', 141, 2),
(364765, 'Cholestyramine', 174, 1),
(369534, 'Rexall Vanishing Scent Pain Relieving', 100, 2),
(377370, 'Colgate Optic White', 180, 1),
(383867, 'Arthritis Relief', 196, 1),
(384734, 'SHISEIDO SUN PROTECTION FOUNDATION', 183, 2),
(409133, 'Freshmint Anticavity Flouride Toothpaste', 112, 1),
(431364, 'Appetite Increase', 200, 2),
(441554, 'Fentanyl buccal', 123, 1),
(453768, 'Real Deal Foundation', 178, 3),
(470192, 'Isopropyl Alcohol', 116, 2),
(473713, 'Heartburn Relief 24 hour', 234, 3),
(497421, 'Carbidopa, Levodopa, and Entacapone', 176, 3),
(519305, 'HYDROXYUREA', 229, 3),
(520867, 'Hog Epithelium', 120, 1),
(526506, 'Good Neighbor Pharmacy Day Time', 193, 2),
(527347, 'Privet', 135, 2),
(538966, 'Severe Daytime', 243, 1),
(539748, 'Lovastatin', 138, 2),
(543274, 'Gabapentin', 145, 1),
(546513, 'Primaquine Phosphate', 159, 1),
(578639, 'Carrington Moisture Barrier', 150, 2),
(580183, 'Allerstat', 148, 2),
(603618, 'CVS Fast Acting Baby Teething', 198, 2),
(611042, 'Meijer Suscreen SPF 8', 105, 1),
(620421, 'aspirin', 210, 3),
(623951, 'Leader', 246, 2),
(624380, 'Neomycin and Polymyxin B Sulfates', 166, 1),
(636521, 'clindamycin phosphate', 155, 1),
(647352, 'Leader Medicated', 116, 1),
(657145, 'RENO CAPS', 151, 3),
(658838, 'Rimmel London', 224, 3),
(661417, 'MoodBrite', 125, 2),
(663858, 'Naproxen Sodium', 204, 1),
(681012, 'Wal-Som', 194, 3),
(681132, 'RIBASPHERE RibaPak', 130, 2),
(685247, 'Multi-Strain FluCare', 248, 1),
(698256, 'Fluconazole', 228, 1),
(700176, '8 hour pain relief', 184, 2),
(706790, 'Red Alder', 149, 3),
(709815, 'Okra', 228, 2),
(729075, 'Oxybutynin Chloride', 192, 3),
(741271, 'Western Ragweed', 132, 3),
(754425, 'PerioMed', 126, 3),
(755898, 'Ailanthus', 118, 3),
(757059, 'Maracuja Miracle Foundation 12-Hour Foundation Broad Spectrum SPF 15 Sunscreen', 163, 3),
(761942, 'Clozapine', 218, 3),
(772785, 'Silicea Kit Refill', 170, 1),
(787978, 'Valium', 231, 1),
(800618, 'Instant Hand Sanitizer', 216, 1),
(814058, 'Telmisartan', 142, 2),
(843380, 'nicotine', 246, 1),
(859263, 'English Plantain', 108, 3),
(864865, 'HAND SANITIZER', 201, 1),
(866291, 'LE TECHNIQ', 135, 1),
(869031, 'HOLYWOOD BEAUTY', 138, 3),
(875576, 'Clindamycin Hydrochloride', 215, 1),
(876775, 'Oxycodone Hydrochloride', 197, 1),
(884279, 'Belladonna Alkaloids with Phenobartbital', 239, 1),
(885099, 'Male Stimulant', 120, 2),
(886264, 'Laura Mercier Tinted Moisturizer SPF 20 MOCHA', 202, 2),
(895578, 'Torsemide', 133, 2),
(905382, 'oxygen', 149, 2),
(914638, 'VERAMYST', 217, 1),
(921506, 'Lisinopril', 191, 2),
(925800, 'Lisinopril', 142, 2),
(929198, 'CAREALL Eyedrops Original', 179, 3),
(930838, 'Witch Hazel', 149, 3),
(934707, 'Enalapril Maleate', 104, 1),
(951080, 'Mango papaya anti-bacterial SCENTED HAND SANITIZER', 246, 2),
(958327, 'Doxycycline Hyclate', 108, 3),
(960057, 'Cefadroxil', 116, 3),
(960553, 'Lisinopril', 116, 2),
(983120, 'Givenchy Photo Perfexion Fluid Foundation SPF 20 Perfect Spice Tint 9', 157, 3),
(987349, 'good neighbor pharmacy omeprazole', 145, 3),
(989899, 'equate allergy relief d', 112, 1);

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

--
-- Dumping data for table `receives`
--

INSERT INTO `receives` (`t_no`, `date`, `illness_name`) VALUES
(11328, '2020-10-19', 'Postpericardiotomy syndrome'),
(12096, '2018-01-01', 'Common cold'),
(15593, '2020-10-19', 'Ulcers'),
(15604, '2014-12-21', 'Progesterone dermatitis'),
(17569, '2018-09-13', 'Repetitive strain injury'),
(24041, '2014-12-21', 'Venezuelan equine encephalitis'),
(24517, '2019-11-04', 'Churg-Strauss syndrome'),
(26962, '2021-10-07', 'Progesterone dermatitis'),
(33560, '2014-04-23', 'Repetitive strain injury'),
(51538, '2014-04-23', 'Common cold'),
(52990, '2015-01-08', 'Psoriatic arthritis'),
(53459, '2020-11-12', 'Psoriatic arthritis'),
(54219, '2011-12-27', 'Peritonitis'),
(54418, '2018-01-01', 'Hepatitis A'),
(61137, '2015-01-08', 'Microscopic polyangiitis'),
(61335, '2020-11-12', 'Common cold'),
(65472, '2019-11-04', 'Hepatitis A'),
(66589, '2020-11-12', 'Progesterone dermatitis'),
(69056, '2014-04-23', 'Ulcers'),
(69438, '2018-09-13', 'Postpericardiotomy syndrome'),
(71847, '2011-05-30', 'Repetitive strain injury'),
(72250, '2014-04-23', 'Postpericardiotomy syndrome'),
(75624, '2011-05-30', 'Goodpasture\'s syndrome'),
(77777, '2011-05-30', 'Ulcers'),
(79968, '2020-08-25', 'Common cold'),
(80113, '2020-08-25', 'Zygomycosis'),
(81226, '2021-10-07', 'Dengue fever'),
(81441, '2019-11-04', 'Peritonitis'),
(82518, '2018-09-13', 'Periodontal disease'),
(83160, '2014-12-21', 'Psoriatic arthritis'),
(83929, '2021-10-07', 'Ulcers'),
(86753, '2011-12-27', 'Crohn\'s disease'),
(89978, '2018-01-01', 'Peritonitis'),
(92955, '2020-11-12', 'Microscopic polyangiitis'),
(92982, '2020-08-25', 'Hepatitis A'),
(93968, '2020-10-19', 'Chronic fatigue syndrome'),
(94895, '2011-12-27', 'Common cold'),
(95978, '2019-11-04', 'Psoriatic arthritis'),
(96351, '2015-01-08', 'Bacterial vaginosis'),
(96748, '2021-10-07', 'Microscopic polyangiitis'),
(127435, '2012-08-28', 'Psoriatic arthritis'),
(135234, '2019-09-18', 'Microscopic polyangiitis'),
(147891, '2013-11-22', 'Aseptic meningitis'),
(150789, '2021-01-10', 'Bacterial meningitis'),
(171118, '2012-12-02', 'Postpericardiotomy syndrome'),
(172698, '2014-12-21', 'Scrapie'),
(174856, '2011-05-19', 'Ulcers'),
(177684, '2013-10-17', 'Scrapie'),
(190924, '2015-10-14', 'Varicose veins'),
(195492, '2016-11-17', 'Venezuelan equine encephalitis'),
(200794, '2020-11-23', 'Psoriatic arthritis'),
(207300, '2013-10-16', 'Hepatitis A'),
(218171, '2012-08-10', 'Diphtheria'),
(221363, '2015-07-29', 'Pneumocystis pneumonia'),
(222551, '2016-04-30', 'Cardiomyopathy'),
(222561, '2013-08-04', 'Dengue fever'),
(235097, '2021-03-14', 'Ulcers'),
(244238, '2020-06-28', 'Gastroenteritis'),
(250007, '2020-11-12', 'Lymphoma'),
(270442, '2011-09-05', 'Diphyllobothriasis'),
(291035, '2011-12-27', 'Aneurdu'),
(327513, '2020-08-25', 'Reflex sympathetic dystrophy'),
(343194, '2021-03-04', 'Chronic fatigue syndrome'),
(344564, '2015-05-24', 'Human bocavirus infection'),
(359626, '2011-01-07', 'Subacute bacterial endocarditis'),
(364765, '2021-05-17', 'Peritonitis'),
(369534, '2012-12-27', 'Hepatitis A'),
(377370, '2012-09-25', 'Huntington\'s disease'),
(383867, '2021-03-09', 'Shigellosis'),
(384734, '2020-12-08', 'Gonorrhea'),
(409133, '2017-09-15', 'Peritonitis'),
(431364, '2012-10-09', 'Progesterone dermatitis'),
(441554, '2010-12-11', 'Paracoccidioidomycosis'),
(453768, '2018-01-05', 'Repetitive strain injury'),
(470192, '2016-12-27', 'Rubella'),
(473713, '2012-10-04', 'Ignious Syndrome'),
(497421, '2021-12-03', 'Warts'),
(519305, '2021-09-29', 'Microscopic polyangiitis'),
(520867, '2012-09-30', 'Marburg hemorrhagic fever'),
(526506, '2014-01-08', 'Rickettsial infection'),
(527347, '2013-08-24', 'Pneumocystis pneumonia'),
(538966, '2021-02-12', 'SARS'),
(539748, '2019-11-01', 'Chlamydophila pneumoniae infection'),
(543274, '2017-06-21', 'Churg-Strauss syndrome'),
(546513, '2020-09-28', 'Shigellosis'),
(578639, '2016-10-12', 'Microscopic polyangiitis'),
(580183, '2021-03-27', 'Lymphoma'),
(603618, '2021-01-15', 'Repetitive strain injury'),
(611042, '2013-11-27', 'Aseptic meningitis'),
(620421, '2014-12-27', 'Common cold'),
(623951, '2017-10-02', 'Bacterial vaginosis'),
(624380, '2018-11-26', 'Progesterone dermatitis'),
(636521, '2011-02-24', 'Leptospirosis'),
(647352, '2015-01-08', 'Gonorrhea'),
(657145, '2019-11-04', 'Warts'),
(658838, '2015-12-25', 'Repetitive strain injury'),
(661417, '2020-06-04', 'Periodontal disease'),
(663858, '2020-06-07', 'Subacute bacterial endocarditis'),
(681012, '2013-02-15', 'Crohn\'s disease'),
(681132, '2018-04-12', 'Peritonitis'),
(685247, '2018-01-01', 'Bacteroides infection'),
(698256, '2018-11-14', 'Reflex sympathetic dystrophy'),
(700176, '2014-07-09', 'Goodpasture\'s syndrome'),
(706790, '2017-04-15', 'Bacterial meningitis'),
(709815, '2018-04-29', 'Aneurdu'),
(729075, '2020-10-08', 'Postpericardiotomy syndrome'),
(741271, '2018-05-21', 'Cardiomyopathy'),
(754425, '2019-07-26', 'Bacteroides infection'),
(755898, '2014-03-22', 'SARS'),
(757059, '2018-04-27', 'Idiopathic pulmonary fibrosis'),
(761942, '2011-05-30', 'Foodborne illness'),
(772785, '2014-04-23', 'Rickettsial infection'),
(787978, '2021-10-07', 'Diphyllobothriasis'),
(800618, '2020-07-24', 'Common cold'),
(814058, '2016-04-22', 'Rickettsial infection'),
(843380, '2013-11-05', 'Foodborne illness'),
(859263, '2013-05-14', 'Leptospirosis'),
(864865, '2012-12-09', 'Ignious Syndrome'),
(866291, '2013-04-17', 'Gastroenteritis'),
(869031, '2020-08-09', 'Diphtheria'),
(875576, '2014-02-14', 'Scarlet fever'),
(876775, '2011-06-25', 'Postpericardiotomy syndrome'),
(884279, '2015-02-01', 'Idiopathic pulmonary fibrosis'),
(885099, '2017-07-21', 'Paracoccidioidomycosis'),
(886264, '2018-09-13', 'Human bocavirus infection'),
(895578, '2013-09-23', 'Zygomycosis'),
(905382, '2016-10-18', 'Pyoderma gangrenosum'),
(914638, '2018-08-01', 'Marburg hemorrhagic fever'),
(921506, '2015-05-29', 'Pyoderma gangrenosum'),
(925800, '2020-10-19', 'Rubella'),
(929198, '2018-08-27', 'Progesterone dermatitis'),
(930838, '2011-01-25', 'Huntington\'s disease'),
(934707, '2018-09-19', 'Scarlet fever'),
(951080, '2021-04-04', 'Common cold'),
(958327, '2013-07-01', 'Chlamydophila pneumoniae infection'),
(960057, '2012-01-22', 'Hepatitis A'),
(960553, '2012-02-16', 'Ulcers'),
(983120, '2012-11-30', 'Rickettsial infection'),
(987349, '2021-03-27', 'Varicose veins'),
(989899, '2021-06-06', 'Psoriatic arthritis');

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

--
-- Dumping data for table `surgery`
--

INSERT INTO `surgery` (`t_no`, `date`, `type`) VALUES
(11328, '2019-07-19', 'Angioplasty & Stent Placement'),
(12096, '2015-07-11', 'Hernia Surgery'),
(15593, '2021-08-17', 'CT Scan'),
(15604, '2020-03-05', 'Aortic Valve Replacements / TAVR'),
(17569, '2013-04-14', 'Heart Valve Repair'),
(24041, '2020-02-12', 'Cataract Surgery / Refractive Lens Exchange'),
(24517, '2012-01-18', 'Upper Endoscopy'),
(26962, '2012-12-05', 'Hernia Surgery'),
(33560, '2012-11-11', 'X-Ray'),
(51538, '2018-01-27', 'Neonatal / NICU Pro'),
(52990, '2012-03-07', 'Carotid Surgery'),
(53459, '2018-04-20', 'Neonatal / NICU Pro'),
(54219, '2013-04-13', 'Cardiac Catheterization'),
(54418, '2020-08-02', 'Aneurysm Repair'),
(61137, '2017-11-15', 'MRI'),
(61335, '2010-12-29', 'CT Scan'),
(65472, '2014-06-29', 'Pacemakers'),
(66589, '2017-08-24', 'Cataract Surgery / Refractive Lens Exchange'),
(69056, '2015-06-04', 'Weight Loss Surgery'),
(69438, '2013-05-06', 'Continuous Glucose Monitoring'),
(71847, '2014-10-03', 'Hip Replacement Surgery'),
(72250, '2018-05-26', 'Trans-myocardial Revascularization'),
(75624, '2020-08-10', 'CT Scan'),
(77777, '2019-04-18', 'Cardioversion'),
(79968, '2013-11-14', 'Heart Bypass Surgery'),
(80113, '2019-11-27', 'Heart Bypass Surgery'),
(81226, '2012-07-03', 'MRI'),
(81441, '2015-11-08', 'Sleep Study / Polysomnogram (PSG)'),
(82518, '2018-10-04', 'Hip Replacement Surgery'),
(83160, '2021-05-07', 'Echocardiogram'),
(83929, '2012-04-30', 'Sleep Study / Polysomnogram (PSG)'),
(86753, '2015-08-12', 'C-Section'),
(89978, '2015-07-13', 'C-Section'),
(92955, '2014-08-22', 'Ablation'),
(92982, '2021-09-18', 'Appendectomy'),
(93968, '2020-01-30', 'Appendectomy'),
(94895, '2017-05-07', 'Heart Bypass Surgery'),
(95978, '2014-01-19', 'Weight Loss Surgery'),
(96351, '2021-05-20', 'Echocardiogram'),
(96748, '2014-01-12', 'Left Ventricular Assist Device');

-- --------------------------------------------------------

--
-- Table structure for table `treat`
--

CREATE TABLE `treat` (
  `doctor_id_no` int(11) NOT NULL,
  `nurse_id_no` int(11) NOT NULL,
  `healthcard_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `treat`
--

INSERT INTO `treat` (`doctor_id_no`, `nurse_id_no`, `healthcard_no`) VALUES
(931436886, 673831710, 701940),
(931436886, 967487788, 701940),
(764118558, 81595444, 4480857),
(968924598, 895171, 38865301),
(968924598, 153371888, 38865301),
(764118558, 81595444, 58143759),
(764118558, 673831710, 58143759),
(764118558, 895171, 69036544),
(764118558, 550795978, 69036544),
(931436886, 550795978, 73753372),
(931436886, 580268862, 73753372),
(584663073, 81595444, 159097031),
(584663073, 153371888, 159097031),
(968924598, 956296465, 316180998),
(968924598, 673831710, 529221882),
(968924598, 967487788, 529221882),
(931436886, 673831710, 611859931),
(968924598, 956296465, 611859931),
(584663073, 580268862, 635178813),
(931436886, 673831710, 664925238),
(764118558, 580268862, 696306699),
(764118558, 956296465, 696306699),
(584663073, 580268862, 779808608),
(764118558, 550795978, 865328196),
(931436886, 81595444, 987089222),
(931436886, 153371888, 987089222),
(584663073, 956296465, 994072237),
(584663073, 967487788, 994072237);

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatment_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatment_no`) VALUES
(0),
(11328),
(12096),
(15593),
(15604),
(17569),
(24041),
(24517),
(26962),
(33560),
(51538),
(52990),
(53459),
(54219),
(54418),
(61137),
(61335),
(65472),
(66589),
(69056),
(69438),
(71847),
(72250),
(75624),
(77777),
(79968),
(80113),
(81226),
(81441),
(82518),
(83160),
(83929),
(86753),
(89978),
(92955),
(92982),
(93968),
(94895),
(95978),
(96351),
(96748),
(127435),
(135234),
(147891),
(150789),
(171118),
(172698),
(174856),
(177684),
(190924),
(195492),
(200794),
(207300),
(218171),
(221363),
(222551),
(222561),
(235097),
(244238),
(250007),
(270442),
(291035),
(327513),
(343194),
(344564),
(359626),
(364765),
(369534),
(377370),
(383867),
(384734),
(409133),
(431364),
(441554),
(453768),
(470192),
(473713),
(497421),
(519305),
(520867),
(526506),
(527347),
(538966),
(539748),
(543274),
(546513),
(578639),
(580183),
(603618),
(611042),
(620421),
(623951),
(624380),
(636521),
(647352),
(657145),
(658838),
(661417),
(663858),
(681012),
(681132),
(685247),
(698256),
(700176),
(706790),
(709815),
(729075),
(741271),
(754425),
(755898),
(757059),
(761942),
(772785),
(787978),
(800618),
(814058),
(843380),
(859263),
(864865),
(866291),
(869031),
(875576),
(876775),
(884279),
(885099),
(886264),
(895578),
(905382),
(914638),
(921506),
(925800),
(929198),
(930838),
(934707),
(951080),
(958327),
(960057),
(960553),
(983120),
(987349),
(989899);

-- --------------------------------------------------------

--
-- Table structure for table `update`
--

CREATE TABLE `update` (
  `hr_id_no` int(11) NOT NULL,
  `id_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `update`
--

INSERT INTO `update` (`hr_id_no`, `id_no`) VALUES
(887888122, 895171),
(887888122, 81595444),
(887888122, 153371888),
(887888122, 514086348),
(887888122, 550795978),
(887888122, 580268862),
(887888122, 584663073),
(887888122, 623907731),
(887888122, 673831710),
(887888122, 806679732),
(887888122, 887888122),
(887888122, 956296465),
(887888122, 967487788);

-- --------------------------------------------------------

--
-- Table structure for table `work_in`
--

CREATE TABLE `work_in` (
  `sid_no` int(11) NOT NULL,
  `wardno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `work_in`
--

INSERT INTO `work_in` (`sid_no`, `wardno`) VALUES
(764118558, 1),
(895171, 6),
(673831710, 9),
(550795978, 21),
(967487788, 21),
(81595444, 24),
(968924598, 24),
(153371888, 27),
(956296465, 31),
(584663073, 35),
(931436886, 35),
(580268862, 36);

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
