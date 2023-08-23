-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 06:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lb_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `name`, `email`, `status`) VALUES
(1, 'N/A', 'na@correo.com', 'Active'),
(2, 'Jairo Fortunato Torres Ibarra', 'jairo@lionbuildings.com', 'Active'),
(3, 'Nicolas Ayon Lopez', 'nicolas@lionbuildings.com', 'Active'),
(4, 'Ivan Luis Torres Ibarra', 'info@lionbuildings.com', 'Active'),
(5, 'Erick Alejandro Aguilar Quevedo', 'erick@lionbuildings.com', 'Active'),
(6, 'Rosa Isela Boyzo Perez', 'isela@lionbuildings.com', 'Active'),
(7, 'Jose Rodolfo Gutierrez Romero', 'rodolfo@lionbuildings.com', 'Active'),
(8, 'Jose Luis Perez Lara', 'jose@lionbuildings.com', 'Active'),
(9, 'Sergio Alejandro Sierra Rubio', 'sergio@lionbuildings.com', 'Active'),
(10, 'Edgar  Esquivel Alcantara', 'edgar@lionbuildings.com', 'Active'),
(11, 'Francisco Sanchez', 'lion4@lionbuildings.com', 'Active'),
(12, 'Jose  Avila', 'lion8@lionbuildings.com', 'Active'),
(13, 'Yasmin  Mendez Meneses', 'lion5@lionbuildings.com', 'Active'),
(14, 'Moises Alexander Avila Silva', 'lion6@lionbuildings.com', 'Active'),
(15, 'Brandon Fabian Olguin Tovar', 'lion7@lionbuildings.com', 'Active'),
(16, 'Nemesio Antonio Herrera Cruz', 'it@lionbuildings.com', 'Active'),
(17, 'Diego Torres', 'diego@lionbuildings.com', 'Active'),
(18, 'Unavailable Agent', 'correo@correo.com', 'Active'),
(19, 'Jose Calderon', 'lion9@lionbuildings.com', 'Active'),
(20, 'Jasmine Torres', 'jasmine@lionbuildings.com', 'Active'),
(22, 'Santiago Torres Ibarra', 'director@lionbuildings.com', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `installation`
--

CREATE TABLE `installation` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installation_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sales_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sales_caller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building_pi_taxes` double DEFAULT NULL,
  `price_no_taxes` double DEFAULT NULL,
  `downpayment` double DEFAULT NULL,
  `dp_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dp_date` date DEFAULT NULL,
  `payment2` double DEFAULT NULL,
  `payment2_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment2_date` date DEFAULT NULL,
  `balance_du_installation` double DEFAULT NULL,
  `financed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `financing_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `financing_other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_lead` date DEFAULT NULL,
  `quoted` date DEFAULT NULL,
  `contract_signed` date DEFAULT NULL,
  `notes_sensei` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quote_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calls_before_payments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `texts_before_payments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `any_changes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_confirmation` date DEFAULT NULL,
  `confirmation_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_manufacturer` date DEFAULT NULL,
  `installation_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_number` bigint(20) DEFAULT NULL,
  `manufacturer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installation_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installation_date` date DEFAULT NULL,
  `days_customer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `days_install` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `links_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `register_created` date NOT NULL,
  `hot_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_specifics` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `step_ordered` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installation_date_set` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_date_set` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `installation`
--

INSERT INTO `installation` (`id`, `customer_name`, `customer_phone`, `customer_email`, `installation_address`, `city`, `state`, `zip_code`, `description`, `sales_owner`, `sales_caller`, `building_pi_taxes`, `price_no_taxes`, `downpayment`, `dp_method`, `dp_date`, `payment2`, `payment2_method`, `payment2_date`, `balance_du_installation`, `financed`, `financing_company`, `financing_other`, `added_lead`, `quoted`, `contract_signed`, `notes_sensei`, `quote_number`, `order_number`, `invoice_number`, `calls_before_payments`, `texts_before_payments`, `any_changes`, `order_confirmation`, `confirmation_agent`, `to_manufacturer`, `installation_company`, `manufacturer_number`, `manufacturer_email`, `installation_status`, `installation_date`, `days_customer`, `days_install`, `links_info`, `review_link`, `notes`, `register_created`, `hot_status`, `last_update`, `site_specifics`, `created_by`, `step_ordered`, `installation_date_set`, `confirmation_date_set`) VALUES
(1, 'Michael Gardner', '555 555-5555', 'mkgman69.mg@gmail.com ', '123 Address', 'City', 'NA', '99999', ' Paid Engineer Stamped Plan 450 ', NULL, NULL, 0, 0, 0, 'Stripe', '2010-01-01', 0, 'NA', '2010-01-01', 0, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'Unavailable Agent', '2023-08-18', 'TBD', 0, 'lion@email.com', 'Installed', '2023-08-18', '0', '4978', 'pi_3Km3ivBPmiVxRVUJ0UIptK1k', '-', '-', '2023-08-14', 'No', '2023-08-14', 'Yes', 'Erick', 'Yes', 'Yes', 'Yes'),
(2, 'Alejandro Ontiveros', '555 555-5555', 'alejoomar1@hotmail.com ', '123 Address', 'City', 'NA', '99999', '20x30x12 Vertical Tan Roof on Concrete White Trim Light Stone Sides Ends 12Gauge Horizontal fully encolsed 1 Garage Door 14 X 12 Front 1 Walk-in Door 36x80 2 Windows 24x36', NULL, NULL, 14904, 0, 2070, 'Stripe', '2022-05-05', 0, 'NA', '2010-01-01', 12834, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'N/A', '2018-01-01', 'Jesus', 0, '-', 'Pending to install', '2018-01-01', '0', '475', 'pi_3Kw8FXBPmiVxRVUJ2abISqw8', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(3, 'Ruben Sanchez', '555 555-5555', 'rubenmrice@gmail.com', '123 Address', 'City', 'NA', '99999', '15x30x14 Vertical Earth Brown Roof on Concrete Earth Brown Trim Raw Hide Sides and Ends 12Gauge 2 White Garage Rollup Door 10x8 on the right side 2 White Walk-in Door 36x80 one on the right and one on the left 6 White Window 30x30', NULL, NULL, 14267.5, 0, 1950, 'Stripe', '2022-05-06', 0, 'NA', '2010-01-01', 12317.5, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'Unavailable Agent', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Pending to Install', '2018-01-01', '0', '474', 'pi_3KwAxgBPmiVxRVUJ0lFjm3U1', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(4, 'Raul Villega NOE SIERRA', '909-844-4401 ', 'Noesierra7sx@yahoo.com', '12295 Belmont St', 'Oak Hills', 'CA', '92344', '30x45x12 Vertical Brown Roof on Concrete Brown Trim Light Stone Sides and Ends 14Gauge fully enclosed Walk-in Door 3 Garage Doors 10x10', NULL, NULL, 32400, 0, 5400, 'Stripe', '2022-05-27', 0, 'NA', '2010-01-01', 27000, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', NULL, NULL, NULL, 'Enterprise Steel Structures', 5597151868, 'orders@enterprisesteel.com', 'Pending to Install', '2018-01-01', '0', '453', 'pi_3KvnmHBPmiVxRVUJ0RkfqP4m', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(5, 'Leonel Hernandez Diaz', '336-260-7307', 'Leonelh@live.com ', '123 Address', 'Burlington', 'NC', '27217', 'Down Payment for Steel Building', NULL, NULL, 62130, 0, 19000, 'Check', '2022-07-02', 0, 'NA', '2010-01-01', 43130, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', NULL, NULL, NULL, 'GA Southern Steel Buildings', 2298900858, 'cathyb@aasouthernsteelbuildings.com', 'Pending to Install', '2018-01-01', '0', '417', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(6, 'Jim k. Crandell', '555 555-5555', 'jcrv24@aol.com', '10209 Dusty Hill Loop', 'Dade City', 'FL', '33525', 'Down Payment for Steel Building', NULL, NULL, 38950, 0, 6150, 'Stripe', '2022-08-29', 0, 'NA', '2010-01-01', 32800, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', NULL, NULL, NULL, 'GA Southern Steel Buildings', 2298900858, 'cathyb@aasouthernsteelbuildings.com', 'Pending to Install', '2018-01-01', '0', '0', '-', '-', 'pending', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', NULL),
(7, 'Marcos Garcia', '831-277-3860 ', 'mgarcia@stockerallaire.com', '3755 Tustin Rd', 'Salinas', 'CA', '93907', 'Down Payment for Steel Building', NULL, NULL, 10335.05, 0, 1135.2, 'Stripe', '2022-09-26', 0, 'NA', '2010-01-01', 9199.85, 'No', 'No', 'No', '2018-01-01', '2018-01-01', '2022-09-26', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', NULL, NULL, NULL, 'Enterprise Steel Structures', 5597151868, 'orders@enterprisesteel.com', 'Pending to Install', '2018-01-01', '1729', '327', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(8, 'Tim Wagemann', '408-802-0066 ', 'wagemannt@gmail.com', '123 Address', 'San Martin', 'CA', '95046', 'Down Payment for Steel Building', NULL, NULL, 35456, 0, 6498, 'Stripe', '2022-10-30', 0, 'NA', '2010-01-01', 28958, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'Unavailable Agent', '2018-01-01', 'Enterprise Steel Structures', 5597151868, 'orders@enterprisesteel.com', 'Pending to Install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(9, 'Jose Antonio Gonzalez Figueroa', '555 555-5555', 'gonzalezantonio1974@icloud.com', '12627 Ingomar Grade', 'Banos', 'CA', '93635', 'Down Payment for Steel Building', NULL, NULL, 39563.18, 0, 5053.18, 'Stripe', '2022-11-10', 0, 'NA', '2010-01-01', 34510, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', NULL, NULL, NULL, 'Enterprise Steel Structures', 5597151868, 'orders@enterprisesteel.com', 'Pending to Install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(10, 'Luis Carlos ', '505-795-3404 ', 'louis.carlos@comcast.net', '30 Calle Prado', 'Santa Fe', 'NM', '87507', 'Down Payment for Steel Building', NULL, NULL, 20923.2, 0, 3487.2, 'Stripe', '2023-01-16', 0, 'NA', '2010-01-01', 17436, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', NULL, NULL, NULL, 'Top Tier Metal Buildings', 9365603707, 'toptmetalbuildings@outlook.com', 'Pending', '2018-01-01', '0', '215', '-', '-', 'WAITING ON PERMITS', '2023-08-14', 'No', '2023-08-14', 'Yes', 'Erick', 'No', 'No', 'No'),
(11, 'Richard Perez', '786-217-4656 ', 'jose1980ci@gmail.com', '2201 Powdersville Rd', 'Easley', 'SC', '29642', 'Commercial Buildings - 50 x 90 x 13 ', 'Jose Luis', 'Edgar', 101977.2, 0, 21578.7, 'Wire Transfer', '2023-02-02', 0, 'NA', '2010-01-01', 80398.5, 'No', 'No', 'No', '2023-02-01', '2010-01-01', '2010-01-01', '0', 'QTE-006191 ', 'ODR-000181', 'INV-000083 ', '13', '0', 'Yes', '2023-04-17', 'Edgar  Esquivel Alcantara', '2023-02-07', 'Elk Superior Buildings', 3364155344, 'elksuperiorbuilding@gmail.com', 'Pending to Install', '2023-08-21', '4779', '201', '-', '-', 'possible of the Augs 21 of that work', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(12, 'Eddie Bynum', '817-564-3743 ', 'eddie_bynum@yahoo.com', '929 Crystal Lane', 'Crowley', 'TX', '76036', 'Triple Wide Garages  - 30 x 40 x 14 ', NULL, NULL, 20379.6, 16983, 3396.6, 'Stripe', '2023-02-21', 0, 'NA', '2010-01-01', 16983, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'N/A', '2023-08-18', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Hold', '2018-01-01', '0', '181', '-', NULL, 'NOT READY', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(13, 'Tracey Desking', '304-923-3568 ', 'ttdeskins@hotmail.com', '107 Sour St', 'Beckley', 'WV', '25801', 'Down Payment for Steel Building', NULL, NULL, 15871.2, 0, 2645.2, 'Stripe', '2023-03-06', 0, 'NA', '2010-01-01', 13226, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'Unavailable Agent', '2018-01-01', 'Elk Superior Buildings', 3364155344, 'elksuperiorbuilding@gmail.com', 'Pending to Install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(14, 'Douglas Zamora', '323 891-9074 ', 'josezamore1980@gmail.com', '35720 Buckhaven Rd', 'Green', 'CA', '91390', 'Down Payment for Steel Building', NULL, NULL, 33482.69, 0, 5580.45, 'Stripe', '2023-03-22', 0, 'NA', '2010-01-01', 27902.24, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'N/A', '2018-01-01', 'Complex Steel Buildings', 8889081401, 'orders@complexsteelbuildings.com', 'Hold', '2018-01-01', '0', '152', '-', '-', 'ON HOLD', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(15, 'Bryan Pence ', '937269-3130', 'bphd63@gmail.com', '4564 Sulphur Springs Rd ', 'Brookville', 'OH', '45309', 'Down Payment for Steel Building', NULL, NULL, 31203.97, 0, 4894.74, 'Stripe', '2023-03-27', 0, 'NA', '2010-01-01', 26309.23, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-07-24', 'Edgar  Esquivel Alcantara', '2023-07-24', 'Super Metal Structures', 8337212346, 'supermetalstructures0@gmail.com', 'Pending', '2018-01-01', '0', '147', '-', NULL, 'Edgar Esquivel\r\nJul 24, 2023, 6:46 AM \r\nI have shown in the log that it went to Super Metal Structures, we would need to check Hugos email to find out. \r\nThat customer is still not ready site drawings were sent and has not confirmed permit.', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(16, 'Jeffrey Meurer ', '352302-5555 ', 'thefordman@bellsouth.net', '1000 Wildwood Ct', 'Lawrenceburg', 'KY', '40342', 'Down Payment for Steel Building', NULL, NULL, 88105.7, 0, 20000, 'Wire Transfer', '2023-04-03', 0, 'NA', '2010-01-01', 68105.7, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', NULL, NULL, NULL, NULL, 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2018-01-01', '0', '0', '-', NULL, '-\r\nLaura Carreon\r\n2:14 PM (52 minutes ago)\r\nto me\r\n\r\nGetting ready for 1st week of Sept\r\n\r\nSent from AOL on Android', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(17, 'Barry Greer', '561441-2074', 'barry@silkroadwines.com', '4780 Old Huston Rd', 'Conroe', 'TX', '77302', 'Down Payment for Steel Building', NULL, NULL, 160294.2, 0, 53411.4, 'Wire Transfer', '2023-05-16', 0, 'NA', '2010-01-01', 106882.8, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'Unavailable Agent', '2018-01-01', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2018-01-01', '0', '97', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(18, 'Mike And Marion Waters', '941-915-5217 ', 'oceanhunter1@yahoo.com', '3348 Alamo Ln', 'Sarasota', 'FL', '34235', 'Down Payment for Steel Building', NULL, NULL, 63881.82, 0, 20000, 'Check', '2023-04-03', 0, 'NA', '2010-01-01', 43881.82, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', NULL, NULL, NULL, 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to Install', '2018-01-01', '0', '0', '-', NULL, '-Laura Carreon\r\n2:13 PM (1 hour ago)\r\nWaiting on the permit.', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(19, 'Frank Gugliotta ', '417861-5483', 'gugconstruction@gmail.com', '1875 S Farm Rd 87', 'Springfield', 'MO', '65802', 'Down Payment for Steel Building', NULL, NULL, 23246.4, 0, 3874.4, 'Check', '2023-03-30', 0, 'NA', '2010-01-01', 19372, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'N/A', '2018-01-01', 'US Steel Buildings', 6622463868, 'crystal@us-steelbuildings.net', 'Pending', '2018-01-01', '0', '144', '-', NULL, 'customer is still waiting on permits 8/14/23', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(20, 'Curtis Fulghum', '910-723-9415 ', 'cwfulghum@yahoo.com', '2581 Waterscape Dr SW', 'Supply', 'NC', '28462', 'Down Payment for Steel Building', NULL, NULL, 22732.52, 0, 3788.75, 'Stripe', '2023-04-10', 0, 'NA', '2010-01-01', 18943.77, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'Unavailable Agent', '2023-08-18', 'Super Metal Structures', 8337212346, 'supermetalstructures0@gmail.com', 'Installed', '2023-08-16', '0', '133', '-', '-', 'PENDING 8/14/23', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(21, 'Adam Parrish', '703-963-1170 ', 'itsajeepthingtj@gmail.com', '123 Address', 'Stafford', 'VA', '22554', 'Down Payment for Steel Building', NULL, NULL, 76738.68, 0, 25579.56, 'Stripe', '2023-04-05', 0, 'NA', '2010-01-01', 51159.12, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'N/A', '2018-01-01', 'Elk Superior Buildings', 3364155344, 'elksuperiorbuilding@gmail.com', 'Pending', '2018-01-01', '0', '138', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(22, 'Michael Gardner ', '555 555-5555', 'mkgman69.mg@gmail.com', '123 Address', 'City', 'NA', '99999', ' Paid Engineer Stamped Plan 450 ', NULL, NULL, 0, 0, 0, 'Stripe', '2010-01-01', 0, 'NA', '2010-01-01', 0, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2023-08-18', 'Unavailable Agent', '2018-01-01', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Installed', '2018-01-01', '0', '4978', 'pi_3Km3ivBPmiVxRVUJ0UIptK1k', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'Yes', 'Yes', 'Yes'),
(23, 'Jeff Higman', '417-861-5483', 'gugconstruction@gmail.com', '1875 S Farm Rd 87', 'Springfield', 'MO', '65802', 'Down Payment for Steel Building', NULL, NULL, 23246.4, 0, 3874.4, 'Check', '2023-03-30', 0, 'NA', '2010-01-01', 19372, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2018-01-01', 'N/A', '2018-01-01', 'US Steel Buildings', 6622463868, 'crystal@us-steelbuildings.net', 'Hold', '2018-01-01', '0', '146', '-', NULL, 'waiting for customer to sign EZ Pay, we can not move forward yet', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(24, 'JUAN SOTELO', '818-212-0338', 'genesiss2122@yahoo.com', '9870 W8', 'Pearblossom', 'CA', '79705', 'Down Payment for Steel Building', NULL, NULL, 11230.9, 0, 1464.9, 'Stripe', '2023-04-21', 0, 'NA', '2010-01-01', 9766, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', NULL, NULL, NULL, 'Enterprise Steel Structures', 5597151868, 'orders@enterprisesteel.com', 'Hold', '2018-01-01', '0', '0', '-', NULL, 'does not resonse he needs a follow up', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(25, 'David Naskrent', '847-489-6060', 'david@hempshire.pro', '1368 Commercial Ave', 'Crystal Falls', 'MI', '49920', ' Deluxe Commercial Buildings - 40 x 60 x 14', 'Ivan', 'Nick', 50470.11, 47613.3, 11903.33, 'Stripe', '2023-05-08', 0, 'NA', '2010-01-01', 38566.78, 'No', 'No', 'No', '2023-03-09', '2023-03-09', '2023-05-08', '0', 'QTE-021151', 'ODR-000561', 'INV-000172', '0', '0', 'No', '2023-05-15', 'Unavailable Agent', '2023-07-08', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2023-08-18', '60', '105', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(26, 'Geovany Silva', '954-708-9306', 'excellwoodwork@gmail.com', '15418 NW 308th St', 'Yeehaw Junction', 'FL', '34972', 'Down Payment for Steel Building', 'Ivan', 'Alan', 12646.2, 0, 2529.24, 'Check', '2023-05-09', 0, 'NA', '2010-01-01', 11065.42, 'No', 'No', 'No', '2023-04-01', '2018-04-01', '2018-04-25', '0', 'QTE-021333', 'ODR-000525', 'INV-000000', '17', '3', 'No', '2023-05-23', 'Unavailable Agent', '2023-06-08', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending', '2018-01-01', '1802', '104', '-', NULL, '\"QUIERE SABER CUÁNTO CUESTAN LOS SITE SPECIFIC PARA EL EDIFICIO Y CUÁNTOTIEMPO SE TARDARÍAN. \r\nMay 23, 2023, 5:21 PM\"', '2023-08-14', 'No', '2023-08-14', 'Yes', 'Erick', 'Yes', 'No', 'Yes'),
(27, 'Stanley Phillips', '601 946 - 9629', 'boggy13@bellsouth.net', '441 Garth Farm Rd', 'Brandon', 'MS', '39042', 'Triple Wide Garages - 26 x 35 x 12', 'Santiago', NULL, 20550.72, 0, 19206.28, 'Wire Transfer', '2023-05-15', 0, 'NA', '2010-01-01', 1344.44, 'No', 'No', 'No', '2023-02-01', '2010-01-01', '2010-01-01', '0', 'QTE-021958', 'ODR-000574', 'INV-000183', '15', '0', 'No', '2010-01-01', 'Alan Reyes', '2018-01-01', 'US Steel Buildings', 6622463868, 'crystal@us-steelbuildings.net', 'Pending to Install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(28, 'Nick Chivily', '804-502-2776', 'crosstrailsllc@gmail.com', '909 Natchburg Rd', 'Milton', 'NC', '27305', 'Down Payment for Steel Building', NULL, NULL, 84106.06, 0, 19409.09, 'Stripe', '2023-05-16', 0, 'NA', '2010-01-01', 64696.97, 'No', 'No', 'No', '2023-03-26', '2023-03-27', '2023-05-16', '0', 'QTE-020713', 'ODR-000576', 'INV-000181', '47', '0', 'No', NULL, NULL, NULL, 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending', '2018-01-01', '0', '0', '-', '-', 'IS WAITING ON PERMITS AND SITE SPECIFICS.', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(29, 'David McKenzie', '601 479 - 8696', 'davidmckenzie74@gmail.com', '1299 County Rd 125', 'Quitman', 'MS', '39355', 'Down Payment for Steel Building', 'Jose Luis', NULL, 10164.75, 0, 1899.95, 'Stripe', '2023-05-17', 0, 'NA', '2010-01-01', 8264.8, 'No', 'No', 'No', '2023-02-14', '2018-02-18', '2018-05-17', '0', 'QTE-020930', 'ODR-000582', 'INV-000187', '0', '0', 'No', '2023-06-09', 'N/A', '2023-06-09', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending to install', '2023-08-17', '1734', '96', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'No'),
(30, 'James Tucker Jr', '309 229 - 6856', 'jamestucker67@live.com', '675 Falls Rd', 'Monterey', 'TN', '38574', 'Down Payment for Steel Building', NULL, NULL, 24450.66, 0, 4075.11, 'Stripe', '2023-05-26', 0, 'NA', '2010-01-01', 20375.55, 'No', 'No', 'No', '2023-02-22', '2023-02-22', '2023-05-26', '0', 'QTE-014648', 'ODR-000600', 'INV-000203', '2', '22', 'No', '2023-08-18', 'Jasmine Torres', '2023-06-13', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2023-08-21', '93', '87', '-', NULL, 'scheduled for 21-24th', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(31, 'Thomas Kloiber', '913 223-6251', 'Lv2ridecitw@yahoo.com', '926 Caligula SE Palm Bay', 'Melborne', 'FL', '32909', 'Triple Wide Garages - 30 x 30 x 12', 'Santiago', 'Santiago', 13050.8, 0, 2693.48, 'Stripe', '2023-05-26', 0, 'NA', '2010-01-01', 11354.2, 'No', 'No', 'No', '2023-03-03', '2010-01-01', '2010-01-01', '0', 'QTE-024191', 'ODR-000603', 'INV-000204', '22', '3', 'No', '2010-01-01', 'Alejandro Aguilar', '2023-06-08', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2023-06-30', '0', '0', '-', '-', 'after the 26 of june? ', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(32, 'Ruben Sandoval', '863 612 - 6258', 'rubesandoval19@yahoo.com', '8269 Larrimore Ave', 'North Port', 'FL', '34291', 'Down Payment for Steel Building', 'Jose Luis', 'Alan', 21500.95, 0, 4300.19, 'Stripe', '2023-05-26', 0, 'NA', '2010-01-01', 18705.83, 'No', 'No', 'No', '2023-05-26', '2010-01-01', '2010-01-01', '0', 'QTE-024238', 'ODR-000606', 'INV-000206', '8', '2', 'No', '2023-06-08', 'Unavailable Agent', '2023-06-08', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to Install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(33, 'Troy Pratte', '573 747 - 9178', 'troypratte@gmail.com', '1990 Madison 537', 'Fredericktown', 'MO', '63645', 'Down Payment for Steel Building', 'Nestor', 'Nick', 17997.67, 0, 3599.53, 'Stripe', '2023-05-31', 0, 'NA', '2010-01-01', 15449.2, 'No', 'No', 'No', '2023-05-29', '2010-01-01', '2010-01-01', '0', 'QTE-024358', 'ODR-000612', 'INV-000213', '11', '1', 'No', '2023-06-09', 'Unavailable Agent', '2023-06-09', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Installed', '2023-08-15', '0', '0', '-', '-', 'Tuesday August 15 2023', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(34, 'Carlos Toledo', '312 834 - 9941', 'robertocarlistoledo@gmail.com', '1309 S Keeler', 'Chicago', 'IL', '60623', 'Down Payment for Steel Building', 'Jose Luis', 'Isela', 11656.8, 0, 1748.52, 'Stripe', '2023-05-30', 0, 'NA', '2010-01-01', 11103.1, 'No', 'No', 'No', '2023-04-03', '2010-01-01', '2010-01-01', '0', 'QTE-026181', 'ODR-000613', 'INV-000211', '16', '1', 'No', '2023-05-31', 'Unavailable Agent', '2023-05-31', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending', '2023-08-25', '4840', '83', '-', '-', '2 MORE WEEKS', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(35, 'Ormabuk Motors LLC', '762 244 - 3105', 'ormabukmotors@gmail.com', '2802 E 5th Ave', 'Columbus', 'OH', '43219', 'Down Payment for Steel Building', 'Alex', 'Alex', 20932.87, 0, 4186.57, 'Stripe', '2023-05-30', 0, 'NA', '2010-01-01', 16746.3, 'No', 'No', 'No', '2023-03-12', '2010-01-01', '2010-01-01', '0', 'QTE-023386', 'ODR-000591', 'INV-000215', '22', '14', 'No', '2023-05-31', 'Alan Reyes', NULL, 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Hold', '2018-01-01', '0', '0', '-', NULL, 'Waiting for permits', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'Yes', 'No', 'Yes'),
(36, 'Ken Ken', '847 899 - 3826', 'kensubaru03@yahoo.com', '1152 Cary Rd', 'Algonquin', 'IL', '60102', 'Down Payment for Steel Building', 'Diego', 'Alan', 13871.44, 12873.73, 1931.06, 'Stripe', '2023-05-31', 0, NULL, '2018-01-01', 11940.38, 'No', NULL, 'No', '2023-05-04', '2018-05-12', '2018-05-31', '0', 'QTE-022134', 'ODR-000638', 'INV-000223', '0', '0', 'Yes', NULL, NULL, NULL, 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Installed', '2023-08-13', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(37, 'Cruz Ochoa', '620 675-0202', 'cruzochoa10768@gmail.com', 'Sunset st. Lot 4', 'Ulysses', 'KS', '67880', 'Commercial Buildings - 40 x 80 x 16', 'Edgar', 'Nick', 50017.18, 0, 23049.39, 'Stripe', '2023-05-30', 0, 'NA', '2010-01-01', 26967.79, 'No', 'No', 'No', '2023-06-09', '2010-01-01', '2010-01-01', '0', 'QTE-024303', 'ODR-000609', 'INV-000214', '29', '2', 'No', '2023-07-10', 'Rosa Isela Boyzo Perez', '2023-06-09', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Pending', '2018-01-01', '4907', '83', '-', '-', 'changing the order', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(38, 'Jeffrey Colby', '804 349-5022', '71colby@gmail.com', '598 Ebony Rd', 'Littleton', 'NC', '27850', 'Triple Wide Garages - 30 x 40 x 12', 'Santiago', 'Rudy', 16557.28, 0, 3311.46, 'Stripe', '2023-05-31', 0, 'NA', '2010-01-01', 14404.83, 'No', 'No', 'No', '2023-06-07', '2023-06-07', '2023-05-31', '0', 'QTE-025070', 'ODR-000644', 'INV-000228', '15', '2', 'No', NULL, NULL, NULL, 'NC Steel Buildings', 8339551556, 'ncsteelbuildings21@gmail.com', 'Pending', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(39, 'Phil Iseman', '419 564-6307', 'philiseman70@gmail.com', '1413 Beal Rd', 'Mansfield', 'OH', '44903', 'Triple Wide Garages - 30 x 50 x 12', 'Santiago', 'Nick', 15720.01, 15720.01, 3144, 'Stripe', '2023-08-05', 0, 'NA', '2010-01-01', 12576.01, 'No', 'No', 'No', '2023-03-19', '2010-01-01', '2010-01-01', '0', 'QTE-025094', 'ODR-000650', 'INV-000231-000383', '0', '0', 'No', '2023-06-07', 'Jasmine Torres', NULL, 'Super Metal Structures', 8337212346, 'supermetalstructures0@gmail.com', 'Pending to Install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(40, 'Marcelino Perez', '773 851-6397', 'loteriajamay@gmail.com', '2004 W. Eagle Lake Rd', 'Beecher', 'IL', '60401', 'Commercial Buildings - 50 x 100 x 16', 'Santiago', 'Edgar', 70273.98, 0, 12864.8, 'Stripe', '2023-05-31', 0, 'NA', '2010-01-01', 57409.18, 'No', 'No', 'No', '2023-05-22', '2023-05-22', '2023-05-31', '0', 'QTE-024944', 'ODR-000611', 'INV-000240', '1', '1', 'No', NULL, NULL, '2023-06-09', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending to install', '2023-08-31', '9', '80', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'No'),
(41, 'Rusty David', '706 338 - 0648', 'rdoc2000@aol.com', '501 cooper farm rd Nicholson Georgia 30565', 'Nicholson', 'GA', '30565', 'Commercial Buildings - 40 x 80 x 18', 'Ivan', 'Alan', 74683.75, 0, 18670.69, 'Stripe', '2023-05-31', 0, 'NA', '2010-01-01', 56013.06, 'No', 'No', 'No', '2023-05-31', '2010-01-01', '2010-01-01', '0', 'QTE-024997', 'ODR-000631', 'INV-000226', '15', '1', 'Yes', '2010-01-01', 'Alejandro Aguilar', '2023-06-08', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to Install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(42, 'Ted Ginn', '706 888-1564', 'Ted.ginn@prattwhitney.com', '1197 Ginn Road Ellerslie', 'Ellerslie Harris', 'GA', '31807', 'Triple Wide Garages - 30 x 50 x 12', 'Ivan', 'Alan', 20222.28, 0, 5871.08, 'Stripe', '2023-06-02', 0, 'NA', '2010-01-01', 14351.2, 'No', 'No', 'No', '2023-05-31', '2010-01-01', '2010-01-01', '0', 'QTE-025003', 'ODR-000633', 'INV-000242', '6', '0', 'No', '2010-01-01', 'Jasmine Torres', '2023-06-08', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2023-07-10', '0', '0', '-', '-', '7 to 11 July 2023', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(43, 'Dick Harris', '615 971-6496', 'richardaharris23@gmail.com', '2937 Arthur Dr', 'Murfreesboro', 'TN', '37127', 'Standard Garages  - 24 x 30 x 9', 'Ivan', NULL, 12072.08, 0, 2199.92, 'Stripe', '2023-06-11', 0, NULL, '2018-01-01', 9872.16, 'No', NULL, 'No', '2023-04-01', '2023-04-01', '2023-06-11', '0', 'QTE-026082', 'ODR-000663', 'INV-000247', '4', '4', 'No', '2023-06-12', 'Unavailable Agent', '2022-06-12', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending to install', '2023-08-25', '71', '71', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(44, 'David crowell', '618 520-9754', 'dacrowell62035@yahoo.com', '262 State Rte 13', 'Marissa', 'IL', '62257', 'Standard Garages - 24 x 25 x 12', 'Santiago', 'Rudy', 4894.42, 0, 598.52, 'Stripe', '2023-06-09', 0, 'NA', '2010-01-01', 4295.9, 'No', 'No', 'No', '2023-03-09', '2023-03-10', '2023-06-01', '0', 'QTE-025126', 'ODR-000652', 'INV-000235', '4', '1', 'No', '2023-06-07', 'Jasmine Torres', '2023-06-09', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending to install', '2018-01-01', '84', '73', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(45, 'Raidel La O', '786 290-5605', 'rlao1972@yahoo.es', '30505 SW 202 Ave', 'Miami Dade', 'FL', '33030', 'Commercial Buildings - 60 x 120 x 18', 'Edgar', 'Rudy', 0, 0, 37245.6, 'Wire Transfer', '2023-06-14', 0, 'NA', '2010-01-01', 86906.4, 'No', 'No', 'No', '2023-05-02', '2010-01-01', '2010-01-01', '0', 'QTE-023948', 'ODR-000594', 'INV-000249', '24', '0', 'Yes', '2023-06-14', 'Rodolfo Gutierrez', '2023-06-15', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to Install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(46, 'Harry Romell', '419 905-1996', 'hpromell@gmail.com', '149 N Main St 197', 'Lima', 'OH', '45850', 'Standard Carports - 24 x 30 x 12', 'Sergio', NULL, 19041.03, 17820.43, 3564, 'Credit Note', '2023-06-30', 0, 'NA', '2010-01-01', 15477.03, 'No', 'No', 'No', '2023-05-10', '2023-05-11', '2023-06-30', '0', 'QTE-029455', 'ODR-000698', 'INV-000261', '2', '0', 'Yes', '2023-07-10', 'Sergio Alejandro Sierra Rubio', '2023-07-06', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending to install', '2018-01-01', '51', '52', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(47, 'Robert Brower', '843 575-5139', 'bobbrower@earthlink.net', '12 Chaplin Dr', 'St Helena Island', 'SC', '29920', 'SPECIAL PROMO 30 x 30 x 12', 'Jose Luis', 'Nick', 13271.34, 12403.12, 2480.62, 'Stripe', '2023-06-29', 0, 'NA', '2010-01-01', 10790.72, 'No', 'No', 'No', '2023-06-12', '2010-01-01', '2010-01-01', '0', 'QTE-028886', 'ODR-000701', 'INV-000263', '4', '1', 'No', '2023-07-06', 'Alejandro Aguilar', '2023-07-06', 'Elk Superior Buildings', 3364155344, 'elksuperiorbuilding@gmail.com', 'Pending to install', '2023-08-17', '0', '0', '-', '-', 'Thursday August 17 2023', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(48, 'Shannon Wright', '606 454-3225', 'l.rose@wrightconcrete.com', '474 S Mayo Trail', 'Pikeville', 'KY', '41501', 'Commercial Buildings - 45 x 60 x 18', 'Ivan', 'Rudy', 45545.55, 42967.5, 21483.75, 'Wire Transfer', '2023-06-29', 0, 'NA', '2010-01-01', 24061.8, 'No', 'No', 'No', '2023-03-04', '2010-01-01', '2010-01-01', '0', 'QTE-029360', 'ODR-000695', 'INV-000262', '0', '1', 'No', '2023-07-05', 'Erick Alejandro Aguilar Quevedo', '2023-07-06', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Installed', '2023-08-16', '4810', '53', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(49, 'Sergio Hernandez', '317 514-0089', 'naherinc2433@gmail.com', '2419 Massachusetts Ave', 'Indianapolis', 'IN', '46218', 'Triple Wide Garages - 30 x 70 x 12', 'Daniel', 'Isela', 24365.51, 22771.5, 4554.3, 'Stripe', '2023-06-30', 0, 'NA', '2010-01-01', 19811.21, 'No', 'No', 'No', '2023-03-24', '2010-01-01', '2010-01-01', '0', 'QTE-013937', 'ODR-000435', 'INV-000265', '11', '1', 'No', '2023-07-05', 'Erick Alejandro Aguilar Quevedo', '2023-07-06', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending to install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(50, 'Larry Severson', '507 521-2912', 'lseve123@gmail.com', '603 Main st South', 'Clinton', 'MO', '64735', 'Standard Garages - 24 x 30 x 9', 'Santiago', 'Nick', 11646.22, 10766.59, 1614.99, 'Stripe', '2023-07-04', 0, 'NA', '2010-01-01', 10031.23, 'No', 'No', 'No', '2023-03-14', '2018-05-08', '2018-07-04', '0', 'QTE-022356', 'ODR-000712', 'INV-000270', '5', '1', 'No', '2023-07-04', 'Erick Alejandro Aguilar Quevedo', '2023-07-04', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Installed', '2023-08-17', '1714', '46', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(51, 'Charles Waller', '585 355-2883', 'Cjw0217@aol.com', '5101 Tillman Rd', 'Ridgeland', 'SC', '29936', 'Standard Garages - 20 x 20 x 9', 'Jose Luis', 'Frank', 6658.2, 6165, 924.75, 'Stripe', '2023-07-04', 0, 'NA', '2010-01-01', 5733.45, 'No', 'No', 'No', '2023-06-26', '2010-01-01', '2010-01-01', '0', 'QTE-030248', 'ODR-000714', 'INV-000271', '2', '1', 'No', '2023-07-06', 'Erick Alejandro Aguilar Quevedo', '2023-07-06', 'Elk Superior Buildings', 3364155344, 'elksuperiorbuilding@gmail.com', 'Hold', '2018-01-01', '4924', '48', '-', '-', 'ON HOLD', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(52, 'Doel Martinez', '240 246-5800', 'doel3780@yahoo.com', '3545 Hope land Road', 'Frederick', 'MD', '21704', 'Triple Wide Garages - 28 x 45 x 10', 'Santiago', 'Moises', 15025.5, 14175, 2835, 'Stripe', '2023-07-05', 0, 'NA', '2010-01-01', 12190.5, 'No', 'No', 'No', '2023-04-18', '2018-05-08', '2018-07-05', '0', 'QTE-030592', 'ODR-000723', 'INV-000274', '2', '1', 'No', '2023-07-13', 'Rosa Isela Boyzo Perez', '2023-07-21', 'Super Metal Structures', 8337212346, 'supermetalstructures0@gmail.com', 'Pending to install', '2018-01-01', '1748', '47', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(53, 'Carlos Calzadillaz', '719 252-6108', 'carloscalzadillaz2017@gmail.com', '207 S Clarion Ct', 'Pueblo West', 'CO', '81007', 'Standard Garages - 24 x 30 x 9', 'Sergio', 'Frank', 14563.37, 13752, 2475.36, 'Stripe', '2023-07-06', 0, 'NA', '2010-01-01', 12088.01, 'No', 'No', 'No', '2023-06-27', '2010-01-01', '2010-01-01', '0', 'QTE-030760', 'ODR-000730', 'INV-000277', '5', '1', NULL, '2018-01-01', 'N/A', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Hold', '2018-01-01', '4925', '46', '-', '-', 'ON HOLD', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'No'),
(54, 'Jason Kinney', ' 918 619-5563', 'n5zzyjk@gmail.com', '505 South Front street', 'Catoosa', 'Ok', '74015', 'Commercial Buildings - 40 x 100 x 14', 'Diego', 'Frank', 71741.56, 64995.07, 12999.01, 'Stripe', '2023-07-06', 0, 'NA', '2010-01-01', 58742.55, 'No', 'No', 'No', '2023-04-06', '2023-04-06', '2023-07-06', '0', 'QTE-030943', 'ODR-000737', 'INV-000280', '2', '0', 'No', '2023-07-14', 'N/A', '2023-07-14', 'Deer Buildings & Carports', 9365643733, 'deerbuildingsandcarports@gmail.com', 'Pending to install', '2018-01-01', '91', '46', '-', NULL, 'He will be getting his slab poured Tuesday 22nd', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(55, 'Ronnie Bland ', '252 287-0586', ' Plo122908@hotmail.com', '10366 US HWY 158', 'Conway Northampton', 'NC', '27876', 'Special Promo 30 x 40 x 9', 'Santiago', 'Moises', 12873.49, 12144.8, 2428.96, 'Stripe', '2023-07-06', 0, 'NA', '2010-01-01', 10444.53, 'No', 'No', 'No', '2022-12-20', '2010-01-01', '2010-01-01', '0', 'QTE-030942', 'ODR-000736', 'INV-000281', '3', '1', 'No', '2023-07-21', 'Unavailable Agent', '2023-07-21', 'Super Metal Structures', 8337212346, 'supermetalstructures0@gmail.com', 'Pending to install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(56, 'Koby L Singletary ', '713 240-7864', 'Koby@GranitiVicentia.com', '10047 Hardison Lane', 'Houston Harris', 'TX', '77041', 'Standard Garages  - 24 x 25 x 9', 'Diego', 'Moises', 11790.12, 10993.12, 1648.97, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 10141.15, 'No', 'No', 'No', '2023-06-18', '2018-06-19', '2018-07-07', '0', 'QTE-030649', 'ODR-000726', 'INV-000283', '6', '1', 'No', NULL, NULL, '2023-07-14', 'Deer Buildings & Carports', 9365643733, 'deerbuildingsandcarports@gmail.com', 'Pending to install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(57, 'Phillip Robbins ', '252 363-5401', 'gunsdell@gmail.com', '7134 Landrush Rd', 'Sims Wilson', 'NC', '27880', 'Triple Wide Garages - 28 x 45 x 14', 'Ivan', 'Moises', 21154.65, 19817, 3963.4, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 17191.25, 'No', 'No', 'No', '2023-06-19', '2010-01-01', '2010-01-01', '0', 'QTE-030628', 'ODR-000725', 'INV-000284', '5', '1', 'No', '2023-07-14', 'Jasmine Torres', '2023-07-21', 'Super Metal Structures', 8337212346, 'supermetalstructures0@gmail.com', 'Pending to install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(58, 'Yumond Edwards ', '256 534-4909', 'slickfinish321@yahoo.com', '3194 Old Railroad Bed Rd', 'Harvest', 'AL', '35749', 'Triple Wide Garages - 30 x 50 x 11', 'Jose Luis', 'Frank', 25739.91, 24398.02, 4879.6, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 20860.31, 'No', 'No', 'No', '2023-06-13', '2010-01-01', '2010-01-01', '0', 'QTE-031052', 'ODR-000742', 'INV-000285', '7', '1', 'No', '2023-08-07', 'Unavailable Agent', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Pending', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'Yes', 'Erick', 'Yes', 'Yes', NULL),
(59, 'Harold Moore ', '573 210-2014', 'moobigfoot18@aol.com', '704 Bonnie st', 'Potosi Washington', 'MO', '63664', 'Standard Garages - 24 x 30 x 9', 'Diego', 'Frank', 6612.24, 6081.89, 912.28, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 5699.96, 'No', 'No', 'No', '2023-05-01', '2023-05-01', '2023-06-07', '0', 'QTE-031084', 'ODR-000745', 'INV-000286', '15', '1', 'No', '2023-07-12', 'Erick Alejandro Aguilar Quevedo', '2023-07-14', 'Deer Buildings & Carports', 9365643733, 'deerbuildingsandcarports@gmail.com', 'Installed', '2023-07-30', '37', '45', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(60, 'Donald Davis', '903 646-4453', 'donnied694@gmail.com', '23368 county rd 244', 'New London Rusk', 'TX', '75684', 'Commercial Buildings  - 40 x 80 x 12', 'Sergio', 'Nick', 43013.66, 40483.44, 1000, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 42013.66, 'No', 'No', 'No', '2023-07-04', '2023-07-04', '2023-07-07', '0', 'QTE-030485', 'ODR-000750', 'INV-000290', '2', '1', 'No', '2023-08-18', 'N/A', '2018-01-01', 'Deer Buildings & Carports', 9365643733, 'deerbuildingsandcarports@gmail.com', 'Pending to install', '2018-01-01', '3', '45', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(61, 'Vinson Branford ', '706 975-6943', 'Vbranford@gmail.com', '615 County Rd.71', 'Waverly Hall', 'GA', '31831', 'Triple Wide Garages - 30 x 60 x 16', 'Ivan', 'Nick', 31546.91, 29483.1, 500, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 31046.91, 'No', 'No', 'No', '2023-05-25', '2010-01-01', '2010-01-01', '0', 'QTE-034513', 'ODR-000836', 'INV-000358', '5', '1', 'Yes', '2010-01-01', 'edgar', '2023-07-31', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(62, 'Neale Lydell Fahlsing ', '417 229-0543', 'nlfahlsing@gmail.com', '8705 ivy rd', 'Reeds Jasper', 'MO ', '64859', 'Triple Wide Garages - 30 x 50 x 11', 'Jose Luis', 'Rudy', 18995.22, 17986.19, 3597.24, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 15397.98, 'No', 'No', 'No', '2023-06-06', '2010-01-01', '2010-01-01', '0', 'QTE-026863', 'ODR-000752', 'INV-000295', '5', '1', 'No', '2023-07-12', 'Alejandro Aguilar', '2023-07-14', 'Deer Buildings & Carports', 9365643733, 'deerbuildingsandcarports@gmail.com', 'Pending', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(63, 'Gilbert Sandoval ', '505 927-5628', 'zia4life@outlook.com', '123 Address', 'Española', 'NM', '87532', 'SPECIAL PROMO 30 x 60 x 12', 'Santiago', 'Edgar', 21886.42, 20527.5, 4105.5, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 1358.92, 'No', 'No', 'No', '2023-06-08', '2018-06-27', '2018-07-07', '0', 'QTE-029373', 'ODR-000756', 'INV-000296', '2', '1', 'No', '2018-01-01', 'N/A', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Hold', '2018-01-01', '1797', '45', '-', '-', 'ON HOLD ', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'No'),
(64, 'Mark McDonald ', '703 927-1837', 'markmcdonald87@yahoo.com', '195 Honda Dr.', 'Gainesville Prince William', 'VA', '20155', 'Standard Garages - 24 x 30 x 14', 'Ivan', 'Moises', 29054.55, 27592.17, 5518.43, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 23536.12, 'No', 'No', 'No', '2023-06-19', '2023-06-20', '2023-07-07', '0', 'QTE-031024', 'ODR-000757', 'INV-000297', '2', '1', 'No', NULL, NULL, NULL, 'TBD', 0, 'lion@email.com', 'Hold', '2018-01-01', '18', '43', '-', '-', 'ON HOLD ', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(65, 'Brennan Shanks ', '603 252-8778', 'isend2c@gmail.com', '1406 E Avenue B', 'Killeen', 'TX', '76549', 'Standard Garages  - 24 x 40 x 11', 'Jose Luis', 'Nick', 15721.96, 14523.75, 500, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 12284.21, 'No', 'No', 'No', '2023-04-03', '2010-01-01', '2010-01-01', '0', 'QTE-031088', 'ODR-000749', 'INV-000300', '6', '1', 'No', '2023-07-25', 'Diego Torres', '2023-07-26', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Pending', '2018-01-01', '4840', '45', '-', '-', 'NOT READY', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(66, 'Justin Joe Melton ', '731 225-7243', 'mmraceca@gmail.com', '3409 Gleason Como Rd', 'Gleason', 'TN', '38229', 'Commercial Buildings - 46 x 60 x 12', 'Edgar', 'Moises', 34001.48, 34001.48, 6800.3, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 27201.18, 'No', 'No', 'No', '2023-06-23', '2018-07-07', '2018-07-07', '0', 'QTE-031101', 'ODR-000753', 'INV-000302', '5', '2', 'No', '2023-07-13', 'Erick Alejandro Aguilar Quevedo', '2023-07-13', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Hold', '2018-01-01', '0', '0', '-', '-', 'NOT READY', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(67, 'Edgar Hernandez ', '702 514-4228', 'esiairnheat@icloud.com', '123 Address', 'Las Vegas Clark', 'NV', '89110', 'SPECIAL PROMO 24 x 30 x 14', 'Santiago', 'Jose Luis', 34001.48, 34001.48, 3517.65, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 30483.83, 'No', 'No', 'No', '2023-05-07', '2018-05-07', '2018-07-07', '0', 'QTE-030982', 'ODR-000738', 'INV-000304', '3', '1', 'No', '2023-07-17', 'Edgar  Esquivel Alcantara', '2023-07-21', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending to install', '2018-01-01', '1765', '45', '-', '-', 'PENDING ON INSTALLERS END', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(68, 'Carlos Calzadillaz', '719 252-6108', 'carloscalzadillaz2017@gmail.com', '207 S Clarion Ct', 'Pueblo West', 'CO', '81007', 'Standing Lean-tos - 8 x 40 x 11', 'Sergio', 'Frank', 5574.35, 5180.62, 777.09, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 5574.35, 'No', 'No', 'No', '2023-06-27', '2010-01-01', '2010-01-01', '0', 'QTE-031062', 'ODR-000759', 'INV-000308', '10', '1', 'No', '2018-01-01', 'N/A', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Hold', '2018-01-01', '4925', '45', '-', '-', 'waiting on permits', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(69, 'Dillon Tommeraasen', '605 305-2424', 'Rhsroosevelt12@yahoo.com', '123 Address', 'Altus', 'OK', '73521', 'SPECIAL PROMO - 24 x 30 x 11', 'Santiago', 'Brandon', 11207.88, 10213.12, 2042.62, 'Stripe', '2023-07-07', 0, 'NA', '2010-01-01', 9165.26, 'No', 'No', 'No', '2023-06-29', '2023-06-29', '2023-07-07', '0', 'QTE-031157', 'ODR-000760', 'INV-000307', '4', '1', 'No', '2023-07-14', 'N/A', '2023-07-14', 'Deer Buildings & Carports', 9365643733, 'deerbuildingsandcarports@gmail.com', 'Pending to install', '2018-01-01', '8', '47', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(70, 'Greg Kasman', '317 560-3719 ', 'Gkasman@gmail.com', '7913 w 300n', 'Greenfield', 'IN        ', '46140', 'Triple Wide Garages - 26 x 40 x 12 ', 'Ivan', 'Moises', 18891.88, 17907, 3581.4, 'Stripe', '2023-07-08', 0, 'NA', '2010-01-01', 15310.48, 'No', 'No', 'No', '2023-03-29', '2023-03-29', '2023-07-08', '0', 'QTE-031040', 'ODR-000743', 'INV-000310', '2', '1', 'No', '2023-07-24', 'Diego Torres', '2023-07-29', 'US Steel Buildings', 6622463868, 'crystal@us-steelbuildings.net', 'Pending', '2018-01-01', '101', '44', '-', '-', 'waiting on drawings', '2023-08-14', 'No', '2023-08-14', 'Yes', 'Erick', 'Yes', 'No', 'Yes'),
(71, 'Francisco J Dominguez Garcia ', '213 477-5023 ', 'pc_dominguez@yahoo.com', '123 Address', 'Kissimmee Osceola ', 'FL', '34746', 'Triple Wide Garages - 30 x 70 x 12 ', 'Ivan', 'Isela', 23062.78, 21453.75, 2145.37, 'Stripe', '2023-07-08', 0, 'NA', '2010-01-01', 20917.41, 'No', 'No', 'No', '2023-07-04', '2023-07-05', '2023-07-08', '0', 'QTE-030564', 'ODR-000761', 'INV-000312', '2', '1', 'No', '2010-01-01', NULL, '2018-01-01', 'TBD', 0, 'lion@email.com', 'Hold', '2018-01-01', '4', '44', '-', '-', 'ON HOLD ', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(72, 'Rick Bolton', '816 238-5555 ', 'rickdbolton@yahoo.com', '2410 Meadow Ridge Dr', 'St Joseph Buchanan', 'MO', '64504', 'SPECIAL PROMO 24 x 25 x 10 ', 'Ivan', 'Joseph', 9074.52, 8310, 1495.8, 'Stripe', '2023-07-08', 0, 'NA', '2010-01-01', 7578.72, 'No', 'No', 'No', '2023-05-20', '2010-01-01', '2010-01-01', '0', 'QTE-030902', 'ODR-000733', 'INV-000309', '2', '1', 'No', '2023-07-24', 'Diego Torres', '2023-07-26', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Pending', '2018-01-01', '0', '0', '-', '-', 'GETTING HIS PERMITS', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(73, 'Aramis Morales', ' 304 620-9689', ' aramismorales347@gmail.com', '109 Strong Lucas Ct', 'Gerrardstown Berkeley', 'WV', '25420', 'Standard Garages - 24 x 40 x 9', 'Jose Luis', 'Isela', 11841.52, 11171.25, 1675.69, 'Stripe', '2023-07-08', 0, 'NA', '2010-01-01', 10165.83, 'No', 'No', 'No', '2023-06-26', '2018-07-07', '2018-07-11', '0', 'QTE-031133', 'ODR-000755', 'INV-000311', '4', '1', 'No', '2023-08-02', 'Edgar  Esquivel Alcantara', '2023-08-01', 'C&A Carports', 3364884555, 'salescna.nc@gmail.com', 'Installed', '2023-08-17', '1811', '44', '-', '-', '8/17/2023', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(74, 'Elias Morales ', '708 655-7732', 'Ibarraclaudia64@yahoo.com', '30643 south Egyptian trail', 'Peotone', 'IL', '60468', 'Triple Wide Garages - 30 x 50 x 11', 'Sergio', 'Isela', 26105.88, 24398.02, 500, 'Stripe', '2023-07-10', 0, 'NA', '2010-01-01', 25605.88, 'No', 'No', 'No', '2023-06-07', '2023-06-13', '2023-07-07', '0', 'QTE-029946', 'ODR-000758', 'INV-000313', '8', '1', 'No', '2023-07-13', 'N/A', '2023-07-13', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending to install', '2018-01-01', '30', '42', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(75, 'Yumond Edwards ', '256 534-4909', 'slickfinish321@yahoo.com', '3194 Old Railroad Bed Rd', 'Harvest', 'AL', '35749', 'Triple Wide Garages - 30 x 50 x 11', 'Jose Luis', 'Frank', 25739.91, 24398.02, 860, 'Stripe', '2023-07-10', 0, 'NA', '2010-01-01', 24879.91, 'No', 'No', 'No', '2023-06-13', '2010-01-01', '2010-01-01', '0', 'QTE-031052', 'ODR-000742', 'INV-000315', '12', '1', 'No', '2010-01-01', NULL, '2023-08-07', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Hold', '2018-01-01', '0', '0', '-', '-', 'ON HOLD ', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(76, 'Donald Davis ', '903 646-4453', 'donnied694@gmail.com', '23368 county rd 244', 'New London Rusk', 'TX', '75684', 'Commercial Buildings  - 40 x 80 x 12', 'Sergio', 'Nick', 43013.66, 40483.44, 7096.69, 'check', '2023-07-10', 0, 'NA', '2010-01-01', 35916.97, 'No', 'No', 'No', '2023-07-04', '2010-01-01', '2010-01-01', '0', 'QTE-030485', 'ODR-000750', 'INV-000316', '2', '1', 'No', '2023-07-14', 'N/A', '2023-07-14', 'Deer Buildings & Carports', 9365643733, 'deerbuildingsandcarports@gmail.com', 'Pending to install', '2018-01-01', '4932', '42', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(77, 'Joshua DeHart ', '951 840-6433 ', 'joshua@eldercreekranch.com', '53057 Elder Creek Rd', 'Aguanga', 'CA', '92536', 'SPECIAL PROMO - 24 x 50 x 14', 'Santiago', 'Moises', 43738.75, 41538.75, 8307.75, 'Wire Transfer', '2023-07-10', 0, 'NA', '2010-01-01', 35431, 'No', 'No', 'No', '2023-01-23', '2023-01-23', '2023-07-07', '0', 'QTE-029512', 'ODR-000699', 'INV-000299', '1', '1', 'No', '2023-07-07', 'Edgar  Esquivel Alcantara', '2023-07-21', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending to install', '2018-01-01', '165', '43', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(78, 'Jason Rucker', '407 970-2011', 'theruckers@cfl.rr.com', '257 Stewart st ', 'Geneva', 'FL', '32732', 'Triple Wide Garages - 30 x 40 x 12', 'Ivan', 'Edgar', 16621.14, 15533.77, 2942.25, 'Stripe', '2023-04-17', 0, 'NA', '2010-01-01', 12798.78, 'No', 'No', 'No', '2023-03-27', '2023-03-27', '2023-04-17', '0', 'QTE-016971', 'ODR-000482', 'INV-000149', '1', '0', 'No', '2023-07-25', 'Diego Torres', '2023-07-27', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2018-01-01', '21', '128', '-', NULL, 'READY -SENT EMAIL TO INSTALLER', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes');
INSERT INTO `installation` (`id`, `customer_name`, `customer_phone`, `customer_email`, `installation_address`, `city`, `state`, `zip_code`, `description`, `sales_owner`, `sales_caller`, `building_pi_taxes`, `price_no_taxes`, `downpayment`, `dp_method`, `dp_date`, `payment2`, `payment2_method`, `payment2_date`, `balance_du_installation`, `financed`, `financing_company`, `financing_other`, `added_lead`, `quoted`, `contract_signed`, `notes_sensei`, `quote_number`, `order_number`, `invoice_number`, `calls_before_payments`, `texts_before_payments`, `any_changes`, `order_confirmation`, `confirmation_agent`, `to_manufacturer`, `installation_company`, `manufacturer_number`, `manufacturer_email`, `installation_status`, `installation_date`, `days_customer`, `days_install`, `links_info`, `review_link`, `notes`, `register_created`, `hot_status`, `last_update`, `site_specifics`, `created_by`, `step_ordered`, `installation_date_set`, `confirmation_date_set`) VALUES
(79, 'Michael Perrino', '630 643-0407', 'perrinofamily@hotmail.com', '1191 Naylor rd', 'Dixon', 'IL', '61021', 'Triple Wide Garages - 28 x 30 x 11', 'Ivan', 'Nick', 0, 0, 1016.84, 'Wire Transfer', '2010-01-01', 0, 'NA', '2010-01-01', 13342.15, 'No', 'No', 'No', '2023-06-08', '2023-06-13', '2023-07-06', '0', 'QTE-030924', 'ODR-000734', 'INV-000282', '17', '16', 'No', '2023-07-12', 'Erick Alejandro Aguilar Quevedo', '2023-07-13', 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending to install', '2018-01-01', '4906', '4978', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(80, 'ROMEL MOREANO ', '201 220-2752', 'RMSV1978@YAHOO.COM', '86 Birch St', 'Old Bridge Middlesex', 'NJ', '8857', 'Revision 3 RV Covers - 20 x 30 x 15', 'Edgar', 'Nick', 16703.06, 15664.5, 2349.68, 'Stripe', '2023-07-18', 0, 'NA', '2010-01-01', 14353.38, 'No', 'No', 'No', '2023-07-07', '2010-01-01', '2010-01-01', '0', 'QTE-031825', 'ODR-000773', 'INV-000327', '2', '1', 'No', NULL, 'Edgar  Esquivel Alcantara', NULL, 'TBD', 0, 'lion@email.com', 'Pending', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(81, 'Nick Getzendanner ', '469 323-5295', 'nick@getzweb.us', '624 Dickens Dr', 'Aledo ', 'TX ', '76008', 'Standard Garages - 24 x 40 x 10', 'Edgar', 'Rudy', 18133.76, 18133.76, 3626.75, 'Stripe', '2023-07-17', 0, 'NA', '2010-01-01', 14507.01, 'No', 'No', 'No', '2023-01-30', '2010-01-01', '2010-01-01', '0', 'QTE-031623 ', 'ODR-000771', 'INV-000326', '14', '1', 'No', '2010-01-01', 'Diego', '2023-07-26', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Installed', '2023-08-15', '0', '0', '-', '-', '8/15/2023', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(82, 'KENNETT THOMAS ', '336 540-4337', 'kenneththomas61@icloud.com', '3018 Karlingdale Dr', 'Greensboro', 'NC', '27455', 'Standard Garages - 17 x 20 x 10', 'Ivan', 'Frank', 6248.88, 5853.75, 878.06, 'Stripe', '2023-07-19', 0, 'NA', '2010-01-01', 5370.82, 'No', 'No', 'No', '2023-06-26', '2023-07-05', '2023-07-19', '0', 'QTE-032287', 'ODR-000780', 'INV-000328', '10', '1', 'No', '2023-07-26', 'Edgar Esquivel Alcantara', '2023-08-01', 'C&A Carports', 3364884555, 'salescna.nc@gmail.com', 'Installed', '2023-08-16', '23', '35', '-', '-', '8/14/2023', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(83, 'Robert Roohms ', '316 215-2022', 'roohmsracing@gmail.com', '61 N E 10th', 'St john', 'KS', '67576', 'Triple Wide Carports  - 30 x 24 x 14', 'Jose Luis', NULL, 6320.4, 6320.4, 948.06, 'Stripe', '2023-07-20', 0, 'NA', '2010-01-01', 5372.34, 'No', 'No', 'No', '2023-07-18', '2010-01-01', '2010-01-01', '0', 'QTE-032937', 'ODR-000782', 'INV-000330', '0', '0', 'No', '2023-07-24', 'Diego Torres', '2023-07-26', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Pending to install', '2023-08-24', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(84, 'Lee Lee Thorn', '256 577-0021', 'thornjames72@icloud.com', '3487 mulberry lane', 'Cherokee', 'AL', '35616', 'BLAZING HOT Garages - 30 x 80 x 14', 'Santiago', 'Calderon', 35003.79, 32261.56, 6452.31, 'Stripe', '2023-07-24', 0, 'NA', '2010-01-01', 28551.48, 'No', 'No', 'No', '2023-07-19', '2023-07-23', '2023-07-24', '0', 'QTE-033386', 'ODR-000794', 'INV-000335', '5', '1', 'No', '2023-07-26', 'Diego Torres', '2023-07-27', 'Elk Superior Buildings', 3364155344, 'elksuperiorbuilding@gmail.com', 'Pending to install', '2023-08-30', '5', '29', '-', NULL, '-Elk Superior Building\r\n2:27 PM (1 hour ago)\r\nHi Lion Buildings, we will get his building scheduled for next week.!', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(85, 'Cheryl Schultz ', '505 920-0733', 'wheeler8958@gmail.com', '28A AVENIDA DE MOLINO', 'Española', 'NM', '87532', 'Triple Wide Garages - 30 x 80 x 12', 'Edgar', 'Rudy', 32651.16, 30007.5, 6001.5, 'Stripe', '2023-07-24', 0, 'NA', '2010-01-01', 29002.29, 'No', 'No', 'No', '2023-01-20', '2010-01-01', '2010-01-01', '0', 'QTE-032545 ', 'ODR-000779', 'INV-000332', '5', '4', 'No', '2018-01-01', 'N/A', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Hold', '2018-01-01', '4767', '28', '-', '-', 'ON HOLD', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(86, 'Richard Arnold', '352 573-8172', 'ricksgames7788@gmail.com', '5716 South 5 Way', 'Homosassa Springs Citrus ', 'FL', '34446', ' Blazing Hot Sale - Standard - 24 x 30 x 9', 'Diego', 'Nick', 9743.24, 9743.24, 1461.49, 'Stripe', '2023-07-26', 0, 'NA', '2010-01-01', 8915.06, 'No', 'No', 'No', '2023-07-11', '2010-01-01', '2010-01-01', '0', 'QTE-032020', 'ODR-000798', 'INV-000337', '2', '0', 'Yes', '2023-07-27', 'Jasmine Torres', '2023-07-17', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(87, 'Francisco Perez', '979-900-4827', 'Jimador3870@gmail.com', '326 Country Rd 727 a', 'Angleton', 'TX', '77515', 'blazing hot sale  - 30 x 40 x 12', 'Ivan', 'Frank', 15426.27, 14812.2, 2962.44, 'Stripe', '2023-08-04', 0, 'NA', '2010-01-01', 13071.76, 'No', 'No', 'No', '2023-07-25', '2023-08-04', '2023-08-04', '0', 'QTE-033741', 'ODR-000800', 'INV-000338-000382', '4', '1', 'No', '2023-07-26', 'Jasmine Torres', '2023-07-28', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Pending to install', '2018-01-01', '10', '18', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(88, 'Michael Berlin', '310 547-7507 ', 'michaelberlin4u@gmail.com', '18177 Larue Rd ', 'Vancleave', 'MS', '39565', 'Standard - 24 x 25 x 10', 'Diego', 'Joseph', 12998.33, 12147.97, 1822.2, 'Stripe', '2023-07-26', 0, 'NA', '2010-01-01', 11176.13, 'No', 'No', 'No', '2023-02-10', '2023-06-27', '2023-07-26', '0', 'QTE-033782', 'ODR-000799', 'INV-000339', '1', '0', 'No', '2023-07-26', 'Jasmine Torres', '2023-07-27', 'US Steel Buildings', 0, 'lion@email.com', 'Pending to install', '2018-07-27', '166', '24', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(89, 'Rick Smock', '309 846-0679', 'crsmock@hotmail.com', '10865 Lake Road', 'De Witt', 'IL', '61735', 'Triple Wide Garages - 30 x 50 x 12', 'Ivan', 'Frank', 18994.95, 17877.6, 3575.52, 'Stripe', '2023-07-27', 0, 'NA', '2010-01-01', 15419.43, 'No', 'No', 'No', '2023-07-03', '2010-01-01', '2010-01-01', '0', 'QTE-034025', 'ODR-000804', 'INV-000340', '1', '1', 'No', '2023-07-28', 'Jasmine Torres', '2023-08-04', 'US Steel Buildings', 6622463868, 'crystal@us-steelbuildings.net', 'Pending to install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(90, 'James Jacobs', '407 408-3412', 'bub121972@aol.com', '1701 old 100 rd', 'Geneva', 'FL', '32732', 'Standard Garages - 20 x 30 x 12', 'Ivan', 'Calderon', 12138.29, 11344.2, 2268.84, 'Stripe', '2023-07-28', 0, 'NA', '2010-01-01', 9869.45, 'No', 'No', 'No', '2023-03-08', '2023-03-08', '2023-07-28', '0', 'QTE-034177', 'ODR-000811', 'INV-000341', '4', '1', 'No', '2023-07-31', 'Jasmine Torres', '2023-08-05', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2018-01-01', '142', '25', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(91, 'Hugo Garcia', '470 772-6067', 'garciahugof79@gmail.com', '3948 Carter Dr NW', 'Lilburn Gwinnett', 'GA', '30047', 'Standard Garages - 20 x 20 x 9', 'Ivan', 'Isela', 7135.92, 6732, 1009.8, 'Stripe', '2023-07-28', 0, 'NA', '2010-01-01', 6126.12, 'No', 'No', 'No', '2023-07-19', '2023-07-28', '2023-07-28', '0', 'QTE-034201', 'ODR-000814', 'INV-000345', '2', '1', 'No', '2023-07-31', 'Jasmine Torres', '2023-08-04', 'US Steel Buildings', 6622463868, 'crystal@us-steelbuildings.net', 'Pending to install', '2023-08-17', '9', '24', '-', '-', 'aug14-18', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(92, 'Alberto Bustamante ', '414 243-5982', 'bustamanteal816@gmail.com', '816 S. 32 ND ST.', 'West Milwaukee', 'WI', '53215', 'Standard Garages - 24 x 25 x 12', 'Ivan', 'Nick', 13764.06, 13046.5, 2348.37, 'Stripe', '2023-07-31', 0, 'NA', '2010-01-01', 11415.69, 'No', 'No', 'No', '2023-06-30', '2010-01-01', '2010-01-01', '0', 'QTE-034361', 'ODR-000825', 'INV-000349', '3', '1', 'No', '2023-08-02', 'Rosa Isela Boyzo Perez', '2023-08-04', 'American Steel Carports', 0, 'lion@lion.com', 'Pending to install', '2018-01-01', '4928', '21', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(93, 'Felix Alvarez ', '239 227-7556', 'Felixalvarez7180@icloud.com', '2565 4 Ave North east Naples', 'Collier', 'FL', '34120', 'Standard Carports - 20 x 45 x 11 ', 'Ivan', 'Nick', 21528.82, 20120.4, 4024.08, 'Stripe', '2023-07-31', 0, 'NA', '2010-01-01', 17504.74, 'No', 'No', 'No', '2023-06-28', '2023-06-29', '2023-07-31', '0', 'QTE-034435', 'ODR-000833', 'INV-000353', '6', '1', 'No', '2023-08-02', 'Rosa Isela Boyzo Perez', '2023-08-04', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending', '2018-01-01', '33', '21', '-', '-', 'waiting on permitsandconcrete', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(94, 'Jacob Foster ', '336 317-8617 ', 'jtcustomwraps@gmail.com', '341 Ram Loop', 'Stokesdale', 'NC', '27357', 'Standard Garages - 20 x 30 x 14', 'Diego', 'Nick', 10673.46, 9975.2, 1496.28, 'Stripe', '2023-07-31', 0, 'NA', '2010-01-01', 20032.54, 'No', 'No', 'No', '2023-07-04', '2023-07-05', '2023-07-31', '0', 'QTE-034406', 'ODR-000829', 'INV-000355', '1', '1', 'No', '2023-08-02', 'Jasmine Torres', '2023-08-04', 'Super Metal Structures', 8337212346, 'supermetalstructures0@gmail.com', 'Hold', '2018-01-01', '27', '21', '-', NULL, 'NEEDS DOWN PAYMENT waiting on permits&concrete', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(95, 'Keith Welch', '985 217-4358 ', 'keith_w1266@yahoo.com', '125 Jasmine ct.', 'Houma Terrebonne Parish', 'LA', '70363', 'Standard Garages - 24 x 35 x 10', 'Jose Luis', 'Nick', 15266.17, 13884.64, 2082.7, 'Stripe', '2023-07-31', 0, 'NA', '2010-01-01', 13183.47, 'No', 'No', 'No', '2023-05-03', '2023-05-04', '2023-07-31', '0', 'QTE-034415', 'ODR-000831', 'INV-000356', '3', '1', 'No', '2023-08-08', 'Jasmine Torres', '2023-08-09', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Pending', '2018-01-01', '0', '0', '-', NULL, 'Betzaida Barrios\r\n12:47 PM (3 minutes ago)\r\nGood afternoon,\r\nNot just yet. It looks like the customer is still working on getting his permit. I will let you know when he is ready and we have him scheduled.', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(96, 'Richard Castanon JR', '915 588-9463 ', 'Castrucking@sbcglobal.net', '1732 Trawood Dr', 'El Paso', 'TX', '79925', 'Blazing Hot Sale - 24 x 25 x 12', 'Diego', 'Joseph', 8373.25, 7771, 1165.65, 'Stripe', '2023-07-31', 0, 'NA', '2010-01-01', 7207.6, 'No', 'No', 'No', '2023-07-04', '2010-01-01', '2010-01-01', '0', 'QTE-034538', 'ODR-000839', 'INV-000361', '6', '1', 'No', '2023-08-04', 'Edgar Esquivel Alcantara', '2023-08-07', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Pending to install', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(97, 'Dustin Ruble', '317 395-4211 ', 'dustinruble85@icloud.com', '123 Address', 'Wanamaker Marion', 'IN        ', '46239', 'Triple Wide Garages - 30 x 40 x 12', 'Ivan', 'Jairo', 15297.87, 14500.35, 2900.07, 'Stripe', '2023-07-31', 0, 'NA', '2010-01-01', 12397.8, 'No', 'No', 'No', '2023-07-26', '2023-07-26', '2023-07-31', '0', 'QTE-033855', 'ODR-000801', 'INV-000360', '1', '1', 'No', '2023-08-02', 'Jasmine Torres', '2023-08-07', 'US Steel Buildings', 6622463868, 'crystal@us-steelbuildings.net', 'Pending to install', '2018-01-01', '5', '21', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(98, 'William Dabb', '716 208-7195 ', 'laseraceengraving@yahoo.com', '3647 Crittenden Rd', 'Alden', 'NY', '14004', 'Triple Wide - 30 x 45 x 12 ', 'Diego', 'Rudy', 23611.55, 21711.77, 4342.35, 'Stripe', '2023-08-01', 0, 'NA', '2010-01-01', 19269.2, 'No', 'No', 'No', '2023-06-05', '2010-01-01', '2010-01-01', '0', 'QTE-034401        ', 'ODR-000830', 'INV-000352', '3', '1', 'No', '2023-08-11', 'Jasmine Torres', '2023-08-11', 'Universal Metal Structures', 8445071309, 'orders.universalmetalsales@gmail.com', 'Pending to install', '2018-01-01', '4903', '22', '-', NULL, '-8/2/23-  getting concrete poured within 1 or 2 weeks', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(99, 'Richard Whaley ', '919 369-7432', 'whaleyrichard4@gmail.com', '7416 chouder ln.', 'Wake Forest', 'NC', '27587', 'BLAZING HOT SALE - 24 x 40 x 14 ', 'Jairo', 'Moises', 15891.23, 14851.62, 2970.32, 'Stripe', '2023-08-01', 0, 'NA', '2010-01-01', 12920.91, 'No', 'No', 'No', '2023-07-24', '2010-01-01', '2010-01-01', '0', 'QTE-034536', 'ODR-000838', 'INV-000365', '3', '1', 'No', NULL, NULL, NULL, 'TBD', 0, 'lion@email.com', 'Hold', '2018-01-01', '4952', '19', '-', '-', 'NOT READY', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'No'),
(100, 'Steven Gilcrease', '864 616-6658 ', 'sgilcrease1961@gmail.com', '211 snow dr', 'Pickens', 'SC', '29671', 'Commercial Buildings - 42 x 60 x 16', 'Santiago', 'Edgar', 66364.98, 62023.35, 12438.42, 'Stripe', '2023-08-01', 0, NULL, '2018-01-01', 53926.56, 'No', 'Other', 'No', '2023-03-21', '2010-01-01', '2010-01-01', '0', 'QTE-034663', 'ODR-000843', 'INV-000376', '1', '1', 'No', '2023-08-03', 'N/A', '2023-08-04', 'Super Metal Structures', 8337212346, 'supermetalstructures0@gmail.com', 'Pending to install', '2018-01-01', '4827', '18', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(101, 'Jose Luis Perez', '423 470-9854', 'jlppro17@gmail.com', '118 Walnut ct', 'Limestone', 'TN', '37681', 'HUGE FLASH SALE - 30 x 60 x 12', 'Jose Luis', 'Isela', 27538.94, 25092.43, 5018.49, 'Stripe', '2023-08-02', 0, 'NA', '2010-01-01', 22520.45, 'No', 'No', 'No', '2023-07-17', '2023-07-18', '2023-08-01', '0', 'QTE-034612', 'ODR-000840', 'INV-000371', '13', '1', 'No', '2023-08-03', 'Erick Alejandro Aguilar Quevedo', '2023-08-04', 'Super Metal Structures', 8337212346, 'supermetalstructures0@gmail.com', 'Pending', '2018-01-01', '15', '18', '-', '-', 'waiting on concrete', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(102, 'Scott Mallory ', '863 287-0600', 'Sdnc.mallory@gmail.com', '518 Peninsula Drive', 'Haines City', 'FL', '33844', 'Triple Wide Garages - 30 x 45 x 14', 'Santiago', 'Nick', 24267.97, 22680.35, 4536.07, 'Stripe', '2023-08-02', 0, 'NA', '2010-01-01', 19731.9, 'No', 'No', 'No', '2022-12-26', '2010-01-01', '2010-01-01', '0', 'QTE-034745', 'ODR-000844', 'INV-000372', '0', '0', 'No', '2023-08-04', 'Erick Alejandro Aguilar Quevedo', '2023-08-04', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2018-01-01', '4742', '18', '-', '-', 'waiting on permits', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(103, 'Angela Bates', '803 257-7908', 'angelabates1221@gmail.com', '123 Address', 'Beech Island', 'SC', '29842', 'Commercial Buildings - 40 x 60 x 12 ', 'Santiago', 'Frank', 25815, 25815, 5163, 'Stripe', '2023-08-02', 0, 'NA', '2010-01-01', 20652, 'No', 'No', 'No', '2023-06-01', '2010-01-01', '2010-01-01', '0', 'QTE-034314', 'ODR-000822', 'INV-000373', '3', '1', 'No', '2023-08-04', 'Edgar  Esquivel Alcantara', '2023-08-12', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending', '2018-01-01', '4899', '19', '-', '-', 'site specfics ', '2023-08-14', 'No', '2023-08-14', 'Yes', 'Erick', 'Yes', 'No', 'Yes'),
(104, 'Greg Lander', '817 609-6169', 'glinsolake@hotmail.com', '2442 Shakertown Way', 'North Vernon', 'IN', '47265', 'HUGE FLASH SALE- 24 x 28 x 9', 'Santiago', 'Brandon Contreras', 9368.76, 8755.85, 1313.38, 'Stripe', '2023-08-03', 0, 'NA', '2010-01-01', 8055.38, 'No', 'No', 'No', '2023-05-15', '2023-05-17', '2023-08-12', '0', 'QTE-035004', 'ODR-000846', 'INV-000377', '1', '1', 'No', '2023-08-08', 'Jasmine Torres', '2018-01-01', 'NC Structures & Carports', 0, '3366730399', 'Pending to install', '2018-01-01', '89', '18', '-', NULL, 'Jasmine Torres\r\n8/11/23 - NC STRUCTURES waiting for approval if they will take it.', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(105, 'Agripino Cruz Guadarrama ', '815 546-4935', 'abrilbella.25@yahoo.com', '1706 cascade ridge drive', 'Plainfield', 'IL', '60586', ' blazing hot- 20 x 25 x 10', 'Jairo', 'Jose Calderon', 4286.43, 3932.5, 786.5, 'Stripe', '2023-08-03', 0, 'NA', '2010-01-01', 3499.93, 'No', 'No', 'No', '2023-07-24', '2010-01-01', '2010-01-01', '0', 'QTE-034677 ', 'ODR-000841', 'INV-000378', '0', '0', 'No', '2023-08-04', 'Edgar  Esquivel Alcantara', '2018-01-01', 'NC Structures & Carports', 0, '3366730399', 'Pending to install', '2018-01-01', '4952', '18', '-', NULL, 'Aug 16, 2023:\r\n\r\nmentioned that it would take 2 weeks for them to get approval', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(106, 'David Naskrent ', '847 489-6060', 'david@hempshire.pro', '1368 Commercial Ave', 'Crystal Falls Iron', 'MI', '49920', 'Deluxe Commercial Buildings - 40 x 65 x 14', 'Ivan', 'Nick', 36798.96, 34716, 6943.2, 'Stripe', '2023-08-04', 0, 'NA', '2010-01-01', 19440.96, 'No', 'No', 'No', '2023-03-09', '2023-03-09', '2023-08-04', '0', 'QTE-033534', 'ODR-000845', 'INV-000379', '0', '0', 'No', '2023-08-04', 'Edgar  Esquivel Alcantara', '2023-08-07', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2023-08-18', '148', '17', '-', '-', 'next week Aug 14-18', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', 'Yes'),
(107, 'Pedro Franco', '404 886-3855', 'pedrojr4@gmail.com', 'Laborers local 515 1004 Edgewood Ave', 'Atlanta', 'GA', '30307', 'HUGE FLASH SALE - Triple Wide - 26 x 25 x 7 ', 'Diego', 'Isela', 3505.68, 3231.04, 484.66, 'Stripe', '2023-08-07', 0, 'NA', '2010-01-01', 3021.02, 'No', 'No', 'No', '2023-07-08', '2010-01-01', '2010-01-01', '0', 'QTE-035594', 'ODR-000855', 'INV-000387', '0', '0', 'No', '2023-08-07', 'Edgar  Esquivel Alcantara', '2023-08-09', 'Real Steel Buildings (Georgia)', 2293050517, 'realsteelmetalbuildings@aol.com', 'Pending to install', '2018-01-01', '4936', '13', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(108, 'Chris Lona ', '816 372-2560 ', 'chrislona1@gmail.com', '1004west 24th ST', 'Downtown Kansas City', 'MO', '64108', 'HUGE FLASH SALE - Standard  - 24 x 34 x 14', 'Diego', 'Moises', 13695.68, 12597.2, 2519.44, 'Stripe', '2023-08-07', 0, 'NA', '2010-01-01', 11176.24, 'No', 'No', 'No', '2023-07-05', '2023-07-06', '2023-08-07', '0', 'QTE-035612', 'ODR-000857', 'INV-000388', '0', '0', 'No', '2023-08-08', 'Jasmine Torres', '2023-08-09', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Pending to install', '2018-01-01', '33', '14', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(109, 'Kyle Feste', '620 660-3120', 'feste3000@yahoo.com', '24315 41st rd', 'Arkansas city Cowley', 'KS', '67005', 'HUGE FLASH SALE  - 30 x 65 x 13', 'Santiago', 'Brandon Contreras', 0, 22642.5, 4528.5, 'Stripe', '2023-08-09', 0, 'NA', '2010-01-01', 20038.61, 'No', 'No', 'No', '2023-07-27', '2023-08-08', '2023-08-09', '0', 'QTE-035932', 'ODR-000863', 'INV-000390', '0', '0', 'No', '2023-08-11', 'Jasmine Torres', '2023-08-14', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Hold', '2024-01-01', '13', '11', '-', NULL, '-8/11/23 - HOLD ORDER UNTIL JANUARY-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(110, 'Terrence Hurssey', '662 392-3196', 'Terryhurssey@gmail.com', '409 central st', 'Belzoni', 'MS', '39038', 'HUGE FLASH SALE - 30 x 60 x 12', 'Sergio', 'Nick', 23634.16, 22088, 4417.6, 'Stripe', '2023-08-09', 0, 'NA', '2010-01-01', 19216.56, 'No', 'No', 'No', '2023-07-04', '2010-01-01', '2010-01-01', '0', 'QTE-036085', 'ODR-000867', 'INV-000392', '0', '0', 'Yes', '2023-08-11', 'Jasmine Torres', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Pending', '2018-01-01', '4932', '11', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', NULL),
(111, 'Abraham Carreon ', '505 922-5242', 'Arc_carreon@yahoo.com', '10011 NM 337', 'Tijeras', 'NM', '87059', 'Revision 2 huge flash sales  - 40 x 50 x 16', 'Ivan', 'Moises', 53420.78, 49578.45, 9915.69, 'Wire Transfer', '2023-08-10', 0, 'NA', '2010-01-01', 43505.09, 'No', 'No', 'No', '2023-07-12', '2018-08-08', '2018-08-09', '0', 'QTE-035914', 'ODR-000860', 'INV-000393', '0', '0', 'No', '2023-08-07', 'Edgar  Esquivel Alcantara', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Pending', '2019-01-01', '1798', '13', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(112, 'Pablo Padilla', '505 480-5379', 'cyrus49er@msn.com', '505 Ontario Elephant Butte', 'ELEPHANT BTTE Sierra', 'NM', '87935', 'Commercial Buildings  - 36 x 50 x 16 ', 'Edgar', 'Nick', 39401.27, 36462.4, 7292.48, 'Stripe', '2023-08-10', 0, 'NA', '2010-01-01', 32108.79, 'No', 'No', 'No', '2023-05-11', '2010-01-01', '2010-01-01', '0', 'QTE-030714', 'ODR-000816', 'INV-000385', '0', '0', 'No', '2023-08-11', 'Jasmine Torres', '2023-08-15', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Pending to install', '2018-01-01', '4878', '10', '-', NULL, 'Waiting on permits', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(113, 'Shane Hight', '870 277-8500', 'a1workcall@aol.com', '1570 cr 963', 'Brookland Craighead', 'AR', '72417', 'Standard Garages  - 24 x 30 x 9', 'Sensei', 'Rudy', 8387.98, 7730.85, 1546.17, 'Stripe', '2023-07-31', 0, 'NA', '2010-01-01', 6841.81, 'No', 'No', 'No', '2023-06-09', '2010-01-01', '2010-01-01', '0', 'QTE-034359 ', 'ODR-000826 ', 'INV-000347 ', '0', '0', 'No', '2010-01-01', NULL, '2018-01-01', 'TBD', 0, 'lion@email.com', 'Hold', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(114, 'Shane Hight ', '870 277-8500', 'a1workcall@aol.com', '1570 cr 963', 'Brookland Craighead', 'AR', '72417', ' Blazing Hot Sale  - 30 x 60 x 12 ', 'Sensei', 'Rudy', 20608.85, 18994.34, 3798.87, 'Stripe', '2023-07-30', 0, 'NA', '2010-01-01', 16809.98, 'No', 'No', 'No', '2023-06-09', '2010-01-01', '2010-01-01', '0', 'QTE-034358 ', 'ODR-000824', 'INV-000348', '0', '0', 'No', '2010-01-01', NULL, '2018-01-01', 'TBD', 0, 'lion@email.com', 'Hold', '2018-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'Yes', NULL),
(115, 'Shelly Kness ', '970 541-8967', 'shell927@hotmail.com', '281 SW Whitetail Dr', 'Cache', 'OK', '73527', 'Free Standing Lean-tos  - 24 x 30 x 8 ', 'Diego', 'Moises', 5980.9, 5493.12, 823.97, 'Stripe', '2023-08-11', 0, 'NA', '2010-01-01', 5156.93, 'No', 'No', 'No', '2023-07-05', '2023-07-05', '2023-08-11', '0', 'QTE-036405', 'ODR-000870', 'INV-000395', '0', '0', 'No', '2023-08-17', 'Jasmine Torres', '2023-08-21', 'Top Tier Metal Buildings', 9365603707, 'toptmetalbuildings@outlook.com', 'Pending', '2018-01-01', '37', '10', '-', NULL, '-Lead time is 2-3 weeks.', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', NULL),
(116, 'Shelly Kness ', '970 541-8967', 'shell927@hotmail.com', '281 SW Whitetail Dr', 'Cache', 'OK', '73527', 'HUGE FLASH SALE - Triple Wide - 30 x 50 x 13 ', 'Diego', 'Moises', 26492.68, 24332, 4866.4, 'Stripe', '2023-08-11', 0, 'NA', '2010-01-01', 21626.28, 'No', 'No', 'No', '2023-07-07', '2023-07-05', '2023-08-11', '0', 'QTE-036388', 'ODR-000872', 'INV-000396-000397-000398-000401', '0', '0', 'No', '2023-08-17', 'Jasmine Torres', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Pending', '2018-01-01', '4935', '9', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', NULL),
(117, 'Jonathan Holifield', '662 640-2784', 'Jholifield30@gmail.com', '50043 Ashley Rd', 'Amory Monroe', 'MS', '38821', 'BLAZING HOT SALE - 20 x 70 x 7', 'Santiago', 'Rudy', 14517.44, 13567.7, 2713.54, 'Stripe', '2023-08-14', 0, 'NA', '2010-01-01', 11803.9, 'No', 'No', 'No', '2023-04-11', '2023-04-11', '2023-08-14', '0', 'QTE-017246', 'ODR-000488', 'INV-000403', '0', '0', 'No', '2023-08-15', 'Jasmine Torres', NULL, 'TBD', 0, 'lion@email.com', 'Hold', '2018-01-01', '125', '6', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No', 'No', 'Yes'),
(118, 'David Nicol', '(770) 329-6704', 'dnichol@ftsvalves.com', '13739 SOUTHWEST 16TH DRIVE', 'Okeechobee', 'Florida', '34974', 'Standard Garages - 20 x 55 x 20', 'Ivan Luis Torres Ibarra', 'Jose Calderon', 53336.5, 49615.35, 9923.07, 'Check', '2023-08-16', 0, NULL, '2018-01-01', 43413.43, NULL, NULL, 'no', '2023-07-07', '2023-07-26', '2023-08-23', '0', 'QTE-036898', 'ODR-000878', 'INV-000414', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, '47', '5', NULL, NULL, NULL, '2023-08-17', NULL, NULL, NULL, 'jairo', NULL, 'No', NULL),
(119, 'Jason Shane Mitchell', '(713) 875-9792', 'mitchell_electric40@yahoo.com', '44170 hwy 17', 'Fort Davis', 'Texas', '79734', 'HUGE FLASH SALE !!  - 40 x 50 x 16', 'Jose Luis Perez Lara', 'Nicolas Ayon Lopez', 45832.78, 42339.75, 8467.95, 'Stripe', '2023-08-16', 0, NULL, '2018-01-01', 0, 'No', NULL, '0', '2023-06-05', '2023-08-15', '2023-08-15', '0', 'QTE-037002', 'ODR-000880', 'INV-000410', '0', '0', NULL, '2023-08-21', 'Jasmine Torres', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Pending', '2018-01-01', '71', '7', NULL, NULL, NULL, '2023-08-17', NULL, NULL, 'No', 'jairo', 'No', 'No', 'Yes'),
(120, 'Cory Bricking', '(859)539-2740', 'Thebrickings@yahoo.com', '3949 Kirksville Rd', 'Lancaster', 'Kentucky', '40444', 'HUGE FLASH SPECIAL Buildings - 50 x 80 x 18', NULL, NULL, 67732.28, 63898.38, 12779.68, 'Wire Transfer', '2023-08-15', 0, 'NA', '2010-01-01', 54952.6, 'No', 'Other', 'No', '2023-07-20', '2023-07-20', '2023-08-14', '0', 'QTE-036327', 'ODR-000875', 'INV-000404', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, '25', '6', NULL, NULL, NULL, '2023-08-18', NULL, NULL, NULL, 'jairo', NULL, 'No', NULL),
(122, 'John H Moore', '(512) 796-2208', 'johnhenerymoore@gmail.com', '821 Fir Ln', 'Cottonwood', 'TX', '78657', 'HUGE FLASH SALE!! - Triple Wide - 30 x 40 x 12', NULL, NULL, 14598.52, 13548.5, 2032.28, 'Stripe', '2023-08-15', 0, NULL, '2018-01-01', 12566.24, 'No', NULL, 'n/a', '2023-01-30', '2023-08-14', '2023-08-14', 'n/a', 'QTE-036727', 'ODR-000876', 'INV-000406', '2', '1', 'No', '2023-08-15', 'Jasmine Torres', NULL, 'Carlitos (New Era Structures)', 0, 'dealersorders0005@gmail.com', 'Pending to install', '2023-08-24', '196', '7', NULL, NULL, NULL, '2023-08-18', NULL, NULL, 'No', 'jasmine', 'No', 'No', 'Yes'),
(123, 'Frederick Townsend', '831 905-0766', 'Fat.2113@yahoo.com', '3962 Talledega Springs Rd', 'Fayetteville', 'Alabama', '35151', 'Commercial Buildings - 40 x 50 x 10', 'Edgar  Esquivel Alcantara', 'Nicolas Ayon Lopez', 33451.11, 30689.1, 7055.15, 'Stripe', '2023-08-15', 0, NULL, '2018-01-01', 26395.96, 'No', 'Other', 'No', '2023-04-27', '2023-04-27', '2023-08-14', NULL, 'QTE-036245', 'ODR-000868', 'INV-000408', NULL, NULL, 'No', '2023-07-15', 'N/A', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Hold', '2018-01-01', '109', '6', '-', NULL, 'The customer called to downsize building due to not fitting in hit lot, New PO has been made and sent for signature.', '2023-08-20', NULL, NULL, 'No', 'erick', 'No', 'Yes', 'Yes'),
(124, 'Steven Vaughan', '520 991-4521', 'vaughandrs@gmail.com', '1484 Taylor Rd', 'Olney', 'Texas', '76374', 'HUGE SALE 30 x 60 x 12', NULL, NULL, 24609.21, 23053.12, 4610.62, 'Stripe', '2023-08-15', 0, NULL, '2018-01-01', 19998.59, 'Yes', 'RTO', 'No', '2023-06-20', '2023-06-21', '2023-08-15', NULL, 'QTE-037046', 'ODR-000885', 'INV-000411', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, '56', '5', NULL, NULL, NULL, '2023-08-20', NULL, NULL, NULL, 'erick', NULL, 'No', NULL),
(125, 'Fernando Jurado', '303 378-7856', 'fjurado566@gmail.com', '4874 county road 307', 'La Vernia', 'Texas', '78121', 'HUGE SALE - 30 x 50 x 12', NULL, NULL, 17306.18, 15987.23, 3197.45, 'Stripe', '2023-08-15', NULL, NULL, NULL, 14108.73, 'No', 'Other', 'No', '2023-06-20', '2023-06-21', '2023-08-18', '11', 'QTE-036838', 'ODR-000886', 'INV-000417', '0', '0', 'No', '2018-01-01', 'N/A', '2023-08-22', 'TBD', 0, 'lion@email.com', 'Pending', '2018-01-01', '59', '7', 'NA', NULL, 'NEEDS TO PAY THE REST OF DOWN PAYMENT & SIGN', '2023-08-20', NULL, NULL, 'No', 'erick', 'No', 'No', NULL),
(126, 'Mariano Contrera', '305 609-8945', 'marianocontrera6142@gmail.com', '501 lake av', 'Lehigh Acres', 'Florida', '33972', 'Triple Wide Garages - 30 x 50 x 12', NULL, NULL, 21543, 20040, 4008, 'Stripe', '2023-08-18', 0, 'NA', NULL, 17535, 'No', 'Other', 'No', '2023-06-13', '2023-06-14', '2023-08-18', NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, 'TBD', 0, 'lion@email.com', 'Pending', '2018-01-01', '66', '3', NULL, NULL, NULL, '2023-08-20', NULL, NULL, 'No', 'erick', 'No', 'No', 'No'),
(127, 'Gilberto V Martinez', '806 316-7627', 'gilvmartinez66@gmail.com', '321 Martin Luther King Blvd', 'Clovis', 'New Mexico', '88101', 'Free Standing Buildings - 24 x 30 x 12', NULL, NULL, 11045.83, 10204, 1836.72, 'Stripe', '2023-08-18', 0, NULL, NULL, 9209.11, 'No', 'Other', 'No', '2023-03-20', '2023-03-20', '2023-08-18', NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2018-01-01', 'N/A', '2018-01-01', 'TBD', 0, 'lion@email.com', 'Pending', '2018-01-01', '151', '5', NULL, NULL, NULL, '2023-08-20', NULL, NULL, 'No', 'erick', 'No', 'Yes', NULL),
(129, 'Jesus Suarez', '501-231-2886', 'lorenzosuarez19@gmail.com', '14525 Overstreet rd', 'Maumelle', 'AR', '72113', 'Triple Wide Garages  - 30 x 80 x 12', NULL, NULL, 25357.07, 23157.15, 4631.43, 'Stripe', '2023-08-21', 0, NULL, '2018-01-01', 20725.64, 'No', NULL, 'n/a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', '2023-08-21', 'Jasmine Torres', '2023-08-22', 'New Vision Carports', 9367150010, 'newvisioncarports@gmail.com', 'Pending to install', '2018-01-01', NULL, '2', NULL, NULL, NULL, '2023-08-22', NULL, NULL, 'No', 'jasmine', 'No', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `layout`
--

CREATE TABLE `layout` (
  `id` int(11) NOT NULL,
  `frontendText` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `frontendImage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backendText` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `backendImage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rightsideText` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `rightsideImage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leftsideText` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `leftsideImage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installationId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `email`, `number`) VALUES
(1, 'TBD', 'lion@email.com', '-'),
(2, 'C&A Carports', 'salescna.nc@gmail.com', '3364884555'),
(3, 'Carlitos (New Era Structures)', 'dealersorders0005@gmail.com', '0'),
(4, 'Carports Outlet', 'A@A.com', '2299850020'),
(5, 'Complex Steel Buildings', 'orders@complexsteelbuildings.com', '8889081401'),
(6, 'Cyclone Steel Structures', 'a@a.com', '3367558244'),
(7, 'Deer Buildings & Carports', 'deerbuildingsandcarports@gmail.com', '9365643733'),
(8, 'East Texas Carports', 'sales@easttexascarport.com', '9032348922'),
(9, 'EB Carports & Metal Structures', 'ebcarports4@gmail.com', '8602633797'),
(10, 'Elevate Steel Carports', 'info@elevatesteelcarports.com', '8016075780'),
(11, 'Elk Superior Buildings', 'elksuperiorbuilding@gmail.com', '3364155344'),
(12, 'Enterprise Steel Structures', 'orders@enterprisesteel.com', '5597151868'),
(13, 'GA Southern Steel Buildings', 'cathyb@aasouthernsteelbuildings.com', '2298900858'),
(14, 'NC Steel Buildings', 'ncsteelbuildings21@gmail.com', '8339551556'),
(15, 'New Vision Carports', 'newvisioncarports@gmail.com', '9367150010'),
(16, 'Northedge Steel', 'sales@northedegsteel.us', '7655918081'),
(17, 'Rafael', '1newhorizoncarports@gmail.com', '3363016785'),
(18, 'Real Steel Buildings (Georgia)', 'realsteelmetalbuildings@aol.com', '2293050517'),
(19, 'Super Metal Structures', 'supermetalstructures0@gmail.com', '8337212346'),
(20, 'Texas Metal Carports', 'orders@texasmetalcarports.com', '9036302013'),
(21, 'Texas Star Steel', 'texasfastcarports@gmail.com', '9157039647'),
(22, 'TOL Buildings', 'ncdiv@tolbuildings.com', '3363688903'),
(23, 'Top Tier Metal Buildings', 'toptmetalbuildings@outlook.com', '9365603707'),
(24, 'Unified Steel Structures', 'dealersorders0005@gmail.com', '3367568458'),
(25, 'United Metal Buildings LLC', 'liz@unitedmetalbuildings.us', '8882788004'),
(26, 'Universal Metal Structures', 'orders.universalmetalsales@gmail.com', '8445071309'),
(27, 'US Steel Buildings', 'crystal@us-steelbuildings.net', '6622463868'),
(28, 'N/A', 'lion@email.com', '-'),
(29, 'American Steel Carports', 'lion@lion.com', '-'),
(30, 'NC Structures & Carports', '3366730399', 'n.cstructures1@gmail.com'),
(31, '1st Choice Metal Buildings and Carports (Ulises)', '1stchoicemetal@gmail.com', '9363054000'),
(33, 'Jesus', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `role_app` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `username`, `email`, `password`, `role_app`) VALUES
(1, 'antonio', 'it@lionbuildings.com', '$2y$13$XlbkCffMCUxulwmfIKMWyOgRs3FabGQiDhUSEdWRFYqSzk7QicI0G', 'SuperAdmin'),
(2, 'creator1', 'creator1@correo.com', '$2y$13$EayGa5sDzvutrHAsZDpNZu6PXTV02pCIoUxITXS7pGY.liBr1OkGK', 'Admin'),
(3, 'creator2', 'creator2@correo.com', '$2y$13$5iWZ7Mq6fc0mcKFY//8AOO5iYakKtwgPiWoiDoFJXypVJU70vKLnK', 'Admin'),
(4, 'creator3', 'creator3@lionbuildings.com', '$2y$13$wleO1J08aVXDo5sTvxDC5uq.JAdczTduSCC.LmtDmRiCrKIu9ik5C', 'Admin'),
(5, 'jairo', 'Jairo@lionbuildings.com', '$2y$13$vyQIA3Vn8QlPGG7Q6sbg0.Co/OV18GrBxYlkVEBctw1YPFPg/qEti', 'Admin'),
(6, 'santiago', 'director@lionbuildings.com', '$2y$13$zuaYocFKOfUfChBH1X3Hf.WfK5jpHQt7uCK5YEKB.eJUYSykq6pA6', 'Admin'),
(7, 'edgar', 'edgar@lionbuildings.com', '$2y$13$crcb0mJbVdseOz6/3oJ3Ouf.AfCdVoPiUbYuB13cUV.tSWyLi/3.K', 'Admin'),
(8, 'erick', 'erick@lionbuildings.com', '$2y$13$XciYoC5vT.vPvhQqZunfs.6UKB//nzKJ2uQ0HkM0hnNc0SCdDqvMq', 'Admin'),
(9, 'jasmine', 'jasmine@lionbuildings.com', '$2y$13$vyQIA3Vn8QlPGG7Q6sbg0.Co/OV18GrBxYlkVEBctw1YPFPg/qEti', 'Admin'),
(10, 'jacqueline', 'jacqueline@lionbuildings.com', '$2y$13$y8PmY1m880d61SoUoSrniObdUvs74IxZ3V2BCg2Cvh40XKaUITr7O', 'Admin'),
(11, 'logan', 'logan@lionbuildings.com', '$2y$13$KZl.Qkq8vgRXcLPZyFlSPOB.UcBo4kFtqM9lApViZANCiNlKbs62S', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `modification`
--

CREATE TABLE `modification` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installation_id` int(11) NOT NULL,
  `placeChanged` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modificationDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modification`
--

INSERT INTO `modification` (`id`, `userId`, `installation_id`, `placeChanged`, `modificationDate`) VALUES
(1, 'antonio', 1, 'Balance Info', '2023-08-03 02:15:15'),
(2, 'antonio', 1, 'Balance Info', '2023-08-03 02:29:06'),
(3, 'antonio', 1, 'Sensei Info', '2023-08-03 02:33:05'),
(4, 'antonio', 2, 'Balance Info', '2023-08-03 02:46:17'),
(5, 'antonio', 2, 'Sensei Info', '2023-08-03 02:48:20'),
(6, 'antonio', 3, 'Balance Info', '2023-08-03 02:55:57'),
(7, 'antonio', 3, 'Sensei Info', '2023-08-03 02:58:14'),
(8, 'erick', 4, 'Balance Info', '2023-08-03 19:11:34'),
(9, 'erick', 4, 'Owners', '2023-08-03 19:12:03'),
(10, 'erick', 4, 'Sensei Info', '2023-08-03 19:14:30'),
(11, 'erick', 5, 'Balance Info', '2023-08-03 19:18:57'),
(12, 'erick', 5, 'Owners', '2023-08-03 19:19:23'),
(13, 'erick', 6, 'Balance Info', '2023-08-03 19:20:44'),
(14, 'erick', 5, 'Sensei Info', '2023-08-03 19:20:48'),
(15, 'erick', 6, 'Sensei Info', '2023-08-03 19:24:45'),
(16, 'erick', 7, 'Balance Info', '2023-08-03 19:24:55'),
(17, 'erick', 7, 'Owners', '2023-08-03 19:25:20'),
(18, 'erick', 7, 'Sensei Info', '2023-08-03 19:27:35'),
(19, 'erick', 6, 'Manufacturer Info', '2023-08-03 19:28:16'),
(20, 'erick', 9, 'Information About Installation', '2023-08-03 19:32:51'),
(21, 'erick', 9, 'Balance Info', '2023-08-03 19:35:33'),
(22, 'erick', 9, 'Sensei Info', '2023-08-03 19:37:10'),
(23, 'erick', 9, 'Changes Info', '2023-08-03 19:45:32'),
(24, 'erick', 9, 'Manufacturer Info', '2023-08-03 19:46:07'),
(25, 'erick', 8, 'Balance Info', '2023-08-03 19:50:15'),
(26, 'erick', 10, 'Balance Info', '2023-08-03 19:52:10'),
(27, 'erick', 8, 'Owners', '2023-08-03 19:53:40'),
(28, 'erick', 10, 'Owners', '2023-08-03 19:53:53'),
(29, 'erick', 8, 'Sensei Info', '2023-08-03 19:55:36'),
(30, 'erick', 10, 'Sensei Info', '2023-08-03 19:57:20'),
(31, 'erick', 10, 'Changes Info', '2023-08-03 20:01:21'),
(32, 'erick', 10, 'Manufacturer Info', '2023-08-03 20:02:44'),
(33, 'erick', 8, 'Changes Info', '2023-08-03 20:04:42'),
(34, 'erick', 11, 'Balance Info', '2023-08-03 20:11:23'),
(35, 'erick', 11, 'Owners', '2023-08-03 20:11:58'),
(36, 'erick', 11, 'Sensei Info', '2023-08-03 20:16:43'),
(37, 'erick', 11, 'Changes Info', '2023-08-03 20:17:14'),
(38, 'erick', 11, 'Changes Info', '2023-08-03 20:17:38'),
(39, 'erick', 11, 'Changes Info', '2023-08-03 20:17:52'),
(40, 'erick', 11, 'Changes Info', '2023-08-03 20:19:35'),
(41, 'erick', 11, 'Manufacturer Info', '2023-08-03 20:21:00'),
(42, 'erick', 12, 'Balance Info', '2023-08-03 20:24:00'),
(43, 'erick', 12, 'Owners', '2023-08-03 20:24:19'),
(44, 'erick', 12, 'Sensei Info', '2023-08-03 20:31:59'),
(45, 'erick', 12, 'Changes Info', '2023-08-03 20:32:30'),
(46, 'erick', 12, 'Changes Info', '2023-08-03 20:32:59'),
(47, 'erick', 12, 'Manufacturer Info', '2023-08-03 20:34:05'),
(48, 'erick', 12, 'Changes Info', '2023-08-03 20:34:20'),
(49, 'erick', 13, 'Balance Info', '2023-08-03 20:38:24'),
(50, 'erick', 13, 'Sensei Info', '2023-08-03 20:39:36'),
(51, 'erick', 13, 'Owners', '2023-08-03 20:39:59'),
(52, 'erick', 13, 'Changes Info', '2023-08-03 20:43:55'),
(53, 'erick', 13, 'Manufacturer Info', '2023-08-03 20:44:31'),
(54, 'erick', 14, 'Balance Info', '2023-08-03 20:55:54'),
(55, 'erick', 14, 'Owners', '2023-08-03 20:56:23'),
(56, 'erick', 14, 'Sensei Info', '2023-08-03 20:57:43'),
(57, 'erick', 14, 'Changes Info', '2023-08-03 21:00:03'),
(58, 'erick', 14, 'Manufacturer Info', '2023-08-03 21:01:03'),
(59, 'erick', 15, 'Balance Info', '2023-08-04 01:54:55'),
(60, 'erick', 15, 'Owners', '2023-08-04 01:55:21'),
(61, 'erick', 15, 'Sensei Info', '2023-08-04 01:56:55'),
(62, 'erick', 15, 'Changes Info', '2023-08-04 01:58:43'),
(63, 'erick', 15, 'Manufacturer Info', '2023-08-04 02:01:21'),
(64, 'edgar', 1, 'Changes Info', '2023-08-15 00:02:16'),
(65, 'antonio', 1, 'Hot Status to Yes', '2023-08-16 03:09:05'),
(66, 'antonio', 1, 'Hot Status to No', '2023-08-16 03:09:11'),
(67, 'antonio', 1, 'Hot Status to No', '2023-08-16 18:25:47'),
(68, 'erick', 111, 'Status to Pending', '2023-08-16 20:30:46'),
(69, 'erick', 103, 'Changes Info', '2023-08-16 20:37:44'),
(70, 'erick', 103, 'Changes Info', '2023-08-16 20:41:06'),
(71, 'erick', 103, 'Changes Info', '2023-08-16 20:41:11'),
(72, 'erick', 103, 'Status to Pending', '2023-08-16 20:56:12'),
(73, 'erick', 103, 'Changes Info', '2023-08-16 20:56:32'),
(74, 'erick', 103, 'Changes Info', '2023-08-16 20:56:32'),
(75, 'erick', 73, 'Status to Cancelled', '2023-08-16 20:58:47'),
(76, 'erick', 73, 'Manufacturer Info', '2023-08-16 20:59:00'),
(77, 'erick', 73, 'Status to Cancelled', '2023-08-16 20:59:04'),
(78, 'erick', 73, 'Status to Cancelled', '2023-08-16 20:59:42'),
(79, 'erick', 73, 'Status to Cancelled', '2023-08-16 20:59:55'),
(80, 'erick', 53, 'Status to Hold', '2023-08-16 21:02:35'),
(81, 'erick', 68, 'Status to Pending', '2023-08-16 21:03:04'),
(82, 'erick', 34, 'Status to Hold', '2023-08-16 21:05:23'),
(83, 'erick', 51, 'Status to Hold', '2023-08-16 21:05:44'),
(84, 'erick', 85, 'Status to Hold', '2023-08-16 21:06:03'),
(85, 'erick', 34, 'Manufacturer Info', '2023-08-16 21:14:08'),
(86, 'erick', 51, 'Manufacturer Info', '2023-08-16 21:15:13'),
(87, 'erick', 51, 'Changes Info', '2023-08-16 21:16:04'),
(88, 'erick', 85, 'Manufacturer Info', '2023-08-16 21:25:09'),
(89, 'erick', 108, 'Status to Cancelled', '2023-08-16 21:25:35'),
(90, 'erick', 108, 'Changes Info', '2023-08-16 21:26:53'),
(91, 'erick', 108, 'Manufacturer Info', '2023-08-16 21:27:27'),
(92, 'erick', 108, 'Status to Pending to Install', '2023-08-16 21:30:31'),
(93, 'erick', 108, 'Status to Pending to Install', '2023-08-16 21:30:34'),
(94, 'erick', 108, 'Changes Info', '2023-08-16 21:34:14'),
(95, 'erick', 37, 'Changes Info', '2023-08-16 21:35:37'),
(96, 'erick', 37, 'Manufacturer Info', '2023-08-16 21:36:14'),
(97, 'erick', 20, 'Changes Info', '2023-08-16 21:37:56'),
(98, 'erick', 20, 'Manufacturer Info', '2023-08-16 21:39:09'),
(99, 'erick', 25, 'Changes Info', '2023-08-16 21:42:02'),
(100, 'erick', 25, 'Manufacturer Info', '2023-08-16 21:42:59'),
(101, 'erick', 106, 'Changes Info', '2023-08-16 21:43:38'),
(102, 'erick', 106, 'Manufacturer Info', '2023-08-16 21:44:15'),
(103, 'erick', 106, 'Status to Pending to Install', '2023-08-16 21:44:18'),
(104, 'erick', 70, 'Status to Hold', '2023-08-16 21:46:14'),
(105, 'erick', 70, 'Changes Info', '2023-08-16 21:46:23'),
(106, 'erick', 91, 'Manufacturer Info', '2023-08-16 21:49:55'),
(107, 'erick', 91, 'Status to Pending to Install', '2023-08-16 21:50:05'),
(108, 'erick', 30, 'Status to Hold', '2023-08-16 21:50:54'),
(109, 'erick', 82, 'Manufacturer Info', '2023-08-16 21:53:04'),
(110, 'erick', 82, 'Changes Info', '2023-08-16 21:54:17'),
(111, 'erick', 82, 'Status to Pending to Install', '2023-08-16 21:54:21'),
(112, 'erick', 50, 'Changes Info', '2023-08-16 21:56:40'),
(113, 'erick', 50, 'Changes Info', '2023-08-16 21:57:23'),
(114, 'erick', 50, 'Manufacturer Info', '2023-08-16 21:58:08'),
(115, 'erick', 50, 'Manufacturer Info', '2023-08-16 21:58:59'),
(116, 'erick', 1, 'Manufacturer Info', '2023-08-16 22:03:12'),
(117, 'erick', 2, 'Manufacturer Info', '2023-08-16 22:03:36'),
(118, 'erick', 3, 'Manufacturer Info', '2023-08-16 22:04:10'),
(119, 'erick', 4, 'Manufacturer Info', '2023-08-16 22:04:56'),
(120, 'erick', 5, 'Manufacturer Info', '2023-08-16 22:05:35'),
(121, 'erick', 6, 'Manufacturer Info', '2023-08-16 22:10:57'),
(122, 'erick', 7, 'Manufacturer Info', '2023-08-16 22:11:20'),
(123, 'erick', 8, 'Manufacturer Info', '2023-08-16 22:11:56'),
(124, 'erick', 9, 'Manufacturer Info', '2023-08-16 22:13:46'),
(125, 'erick', 10, 'Changes Info', '2023-08-16 22:14:33'),
(126, 'erick', 10, 'Manufacturer Info', '2023-08-16 22:16:40'),
(127, 'erick', 11, 'Manufacturer Info', '2023-08-16 22:20:12'),
(128, 'erick', 11, 'Manufacturer Info', '2023-08-16 22:20:30'),
(129, 'erick', 11, 'Manufacturer Info', '2023-08-16 22:20:39'),
(130, 'erick', 12, 'Manufacturer Info', '2023-08-16 22:21:28'),
(131, 'erick', 13, 'Manufacturer Info', '2023-08-16 22:22:23'),
(132, 'erick', 14, 'Manufacturer Info', '2023-08-16 22:22:44'),
(133, 'erick', 15, 'Manufacturer Info', '2023-08-16 22:23:21'),
(134, 'erick', 16, 'Manufacturer Info', '2023-08-16 22:24:34'),
(135, 'erick', 17, 'Manufacturer Info', '2023-08-16 22:25:04'),
(136, 'erick', 18, 'Manufacturer Info', '2023-08-16 22:26:06'),
(137, 'erick', 19, 'Manufacturer Info', '2023-08-16 22:26:40'),
(138, 'erick', 21, 'Manufacturer Info', '2023-08-16 22:27:29'),
(139, 'erick', 1, 'Changes Info', '2023-08-16 22:30:29'),
(140, 'erick', 22, 'Manufacturer Info', '2023-08-16 22:30:39'),
(141, 'erick', 23, 'Manufacturer Info', '2023-08-16 22:31:59'),
(142, 'erick', 24, 'Manufacturer Info', '2023-08-16 22:32:21'),
(143, 'erick', 26, 'Manufacturer Info', '2023-08-16 22:33:06'),
(144, 'erick', 26, 'Changes Info', '2023-08-16 22:33:35'),
(145, 'erick', 27, 'Manufacturer Info', '2023-08-16 22:35:44'),
(146, 'erick', 28, 'Manufacturer Info', '2023-08-16 22:37:09'),
(147, 'erick', 29, 'Manufacturer Info', '2023-08-16 22:38:28'),
(148, 'erick', 30, 'Manufacturer Info', '2023-08-16 22:38:59'),
(149, 'erick', 31, 'Manufacturer Info', '2023-08-16 22:40:01'),
(150, 'erick', 32, 'Manufacturer Info', '2023-08-16 22:41:00'),
(151, 'erick', 33, 'Manufacturer Info', '2023-08-16 22:41:38'),
(152, 'erick', 33, 'Manufacturer Info', '2023-08-16 22:42:46'),
(153, 'erick', 35, 'Manufacturer Info', '2023-08-16 22:43:24'),
(154, 'erick', 36, 'Manufacturer Info', '2023-08-16 22:44:01'),
(155, 'erick', 38, 'Manufacturer Info', '2023-08-16 22:44:41'),
(156, 'erick', 39, 'Manufacturer Info', '2023-08-16 22:45:41'),
(157, 'erick', 40, 'Manufacturer Info', '2023-08-16 22:46:44'),
(158, 'erick', 41, 'Manufacturer Info', '2023-08-16 22:47:00'),
(159, 'erick', 42, 'Manufacturer Info', '2023-08-16 22:47:43'),
(160, 'erick', 43, 'Manufacturer Info', '2023-08-16 22:48:28'),
(161, 'erick', 44, 'Manufacturer Info', '2023-08-16 22:48:46'),
(162, 'erick', 45, 'Manufacturer Info', '2023-08-16 22:48:57'),
(163, 'erick', 46, 'Manufacturer Info', '2023-08-16 22:50:01'),
(164, 'erick', 47, 'Manufacturer Info', '2023-08-16 22:50:19'),
(165, 'erick', 48, 'Manufacturer Info', '2023-08-16 22:50:56'),
(166, 'erick', 49, 'Manufacturer Info', '2023-08-16 22:51:18'),
(167, 'erick', 52, 'Manufacturer Info', '2023-08-16 22:53:12'),
(168, 'erick', 53, 'Manufacturer Info', '2023-08-16 22:54:00'),
(169, 'erick', 54, 'Manufacturer Info', '2023-08-16 22:54:19'),
(170, 'erick', 55, 'Manufacturer Info', '2023-08-16 22:54:38'),
(171, 'erick', 56, 'Manufacturer Info', '2023-08-16 22:54:57'),
(172, 'erick', 57, 'Manufacturer Info', '2023-08-16 22:55:21'),
(173, 'erick', 58, 'Manufacturer Info', '2023-08-16 22:55:41'),
(174, 'erick', 59, 'Manufacturer Info', '2023-08-16 22:56:24'),
(175, 'erick', 60, 'Manufacturer Info', '2023-08-16 22:57:01'),
(176, 'erick', 61, 'Manufacturer Info', '2023-08-16 22:57:27'),
(177, 'erick', 62, 'Manufacturer Info', '2023-08-16 23:05:51'),
(178, 'erick', 63, 'Manufacturer Info', '2023-08-16 23:06:11'),
(179, 'erick', 64, 'Manufacturer Info', '2023-08-16 23:06:51'),
(180, 'erick', 65, 'Manufacturer Info', '2023-08-16 23:07:40'),
(181, 'erick', 66, 'Manufacturer Info', '2023-08-16 23:08:04'),
(182, 'erick', 67, 'Manufacturer Info', '2023-08-16 23:08:45'),
(183, 'erick', 68, 'Manufacturer Info', '2023-08-16 23:09:07'),
(184, 'erick', 69, 'Manufacturer Info', '2023-08-16 23:09:48'),
(185, 'erick', 70, 'Manufacturer Info', '2023-08-16 23:10:30'),
(186, 'erick', 71, 'Manufacturer Info', '2023-08-16 23:12:21'),
(187, 'erick', 72, 'Manufacturer Info', '2023-08-16 23:12:38'),
(188, 'erick', 74, 'Manufacturer Info', '2023-08-16 23:13:10'),
(189, 'erick', 75, 'Manufacturer Info', '2023-08-16 23:13:26'),
(190, 'erick', 76, 'Manufacturer Info', '2023-08-16 23:14:20'),
(191, 'erick', 77, 'Manufacturer Info', '2023-08-16 23:14:35'),
(192, 'erick', 78, 'Manufacturer Info', '2023-08-16 23:14:48'),
(193, 'erick', 79, 'Manufacturer Info', '2023-08-16 23:15:38'),
(194, 'erick', 80, 'Manufacturer Info', '2023-08-16 23:16:39'),
(195, 'erick', 81, 'Manufacturer Info', '2023-08-16 23:17:23'),
(196, 'erick', 26, 'Changes Info', '2023-08-16 23:18:30'),
(197, 'erick', 83, 'Manufacturer Info', '2023-08-16 23:18:57'),
(198, 'erick', 84, 'Manufacturer Info', '2023-08-16 23:19:15'),
(199, 'erick', 86, 'Manufacturer Info', '2023-08-16 23:19:28'),
(200, 'erick', 87, 'Manufacturer Info', '2023-08-16 23:19:49'),
(201, 'erick', 88, 'Manufacturer Info', '2023-08-16 23:20:16'),
(202, 'erick', 88, 'Manufacturer Info', '2023-08-16 23:21:01'),
(203, 'erick', 89, 'Manufacturer Info', '2023-08-16 23:21:12'),
(204, 'erick', 90, 'Manufacturer Info', '2023-08-16 23:21:31'),
(205, 'erick', 91, 'Manufacturer Info', '2023-08-16 23:21:45'),
(206, 'erick', 91, 'Manufacturer Info', '2023-08-16 23:22:00'),
(207, 'erick', 91, 'Manufacturer Info', '2023-08-16 23:23:01'),
(208, 'erick', 92, 'Manufacturer Info', '2023-08-16 23:25:41'),
(209, 'erick', 93, 'Manufacturer Info', '2023-08-16 23:39:42'),
(210, 'erick', 94, 'Manufacturer Info', '2023-08-16 23:40:03'),
(211, 'erick', 95, 'Manufacturer Info', '2023-08-16 23:40:25'),
(212, 'erick', 96, 'Manufacturer Info', '2023-08-16 23:40:45'),
(213, 'erick', 97, 'Manufacturer Info', '2023-08-16 23:43:03'),
(214, 'erick', 98, 'Manufacturer Info', '2023-08-16 23:43:27'),
(215, 'erick', 99, 'Manufacturer Info', '2023-08-16 23:43:47'),
(216, 'erick', 100, 'Manufacturer Info', '2023-08-16 23:44:21'),
(217, 'erick', 101, 'Manufacturer Info', '2023-08-16 23:44:38'),
(218, 'erick', 102, 'Manufacturer Info', '2023-08-16 23:44:48'),
(219, 'erick', 103, 'Manufacturer Info', '2023-08-16 23:45:01'),
(220, 'erick', 104, 'Manufacturer Info', '2023-08-16 23:46:49'),
(221, 'erick', 105, 'Manufacturer Info', '2023-08-16 23:47:06'),
(222, 'erick', 106, 'Manufacturer Info', '2023-08-16 23:47:47'),
(223, 'erick', 107, 'Manufacturer Info', '2023-08-16 23:48:04'),
(224, 'erick', 109, 'Manufacturer Info', '2023-08-16 23:48:52'),
(225, 'erick', 110, 'Manufacturer Info', '2023-08-16 23:49:21'),
(226, 'erick', 111, 'Manufacturer Info', '2023-08-16 23:49:30'),
(227, 'erick', 112, 'Manufacturer Info', '2023-08-16 23:49:40'),
(228, 'erick', 113, 'Manufacturer Info', '2023-08-16 23:49:48'),
(229, 'erick', 114, 'Manufacturer Info', '2023-08-16 23:50:02'),
(230, 'erick', 115, 'Manufacturer Info', '2023-08-16 23:50:11'),
(231, 'erick', 116, 'Manufacturer Info', '2023-08-16 23:50:18'),
(232, 'erick', 117, 'Manufacturer Info', '2023-08-16 23:50:26'),
(233, 'erick', 2, 'Changes Info', '2023-08-17 00:22:24'),
(234, 'erick', 3, 'Changes Info', '2023-08-17 00:22:43'),
(235, 'erick', 4, 'Changes Info', '2023-08-17 00:23:02'),
(236, 'erick', 5, 'Changes Info', '2023-08-17 00:23:21'),
(237, 'erick', 6, 'Changes Info', '2023-08-17 00:23:36'),
(238, 'erick', 7, 'Changes Info', '2023-08-17 00:23:59'),
(239, 'erick', 8, 'Changes Info', '2023-08-17 00:24:13'),
(240, 'erick', 9, 'Changes Info', '2023-08-17 00:24:26'),
(241, 'erick', 12, 'Changes Info', '2023-08-17 00:24:52'),
(242, 'erick', 13, 'Changes Info', '2023-08-17 00:25:16'),
(243, 'erick', 14, 'Changes Info', '2023-08-17 00:25:43'),
(244, 'erick', 15, 'Changes Info', '2023-08-17 00:26:00'),
(245, 'erick', 16, 'Changes Info', '2023-08-17 00:26:15'),
(246, 'erick', 17, 'Changes Info', '2023-08-17 00:26:32'),
(247, 'erick', 18, 'Changes Info', '2023-08-17 00:27:43'),
(248, 'erick', 19, 'Changes Info', '2023-08-17 00:27:48'),
(249, 'erick', 21, 'Changes Info', '2023-08-17 00:28:32'),
(250, 'erick', 22, 'Changes Info', '2023-08-17 00:28:47'),
(251, 'erick', 23, 'Changes Info', '2023-08-17 00:28:56'),
(252, 'erick', 24, 'Changes Info', '2023-08-17 00:29:02'),
(253, 'erick', 28, 'Changes Info', '2023-08-17 00:29:30'),
(254, 'erick', 29, 'Changes Info', '2023-08-17 00:39:45'),
(255, 'erick', 29, 'Changes Info', '2023-08-17 00:39:52'),
(256, 'erick', 30, 'Changes Info', '2023-08-17 00:40:32'),
(257, 'erick', 32, 'Changes Info', '2023-08-17 00:40:54'),
(258, 'erick', 33, 'Changes Info', '2023-08-17 00:41:21'),
(259, 'erick', 36, 'Changes Info', '2023-08-17 00:41:40'),
(260, 'erick', 111, 'Changes Info', '2023-08-17 20:47:00'),
(261, 'erick', 111, 'Manufacturer Info', '2023-08-17 20:50:45'),
(262, 'erick', 111, 'Manufacturer Info', '2023-08-17 20:51:16'),
(263, 'erick', 1, 'Status to Pending', '2023-08-17 20:51:48'),
(264, 'erick', 111, 'Status to Hold', '2023-08-17 20:58:36'),
(265, 'erick', 1, 'Status to Hold', '2023-08-17 20:59:28'),
(266, 'erick', 1, 'Status to Pending', '2023-08-17 20:59:38'),
(267, 'erick', 1, 'Manufacturer Info', '2023-08-17 21:00:26'),
(268, 'jairo', 20, 'Status to Installed', '2023-08-17 21:30:56'),
(269, 'jairo', 118, 'Balance Info', '2023-08-17 21:37:35'),
(270, 'jairo', 118, 'Owners', '2023-08-17 21:38:38'),
(271, 'jairo', 118, 'Sensei Info', '2023-08-17 21:41:21'),
(272, 'jairo', 119, 'Balance Info', '2023-08-17 21:55:39'),
(273, 'jairo', 119, 'Owners', '2023-08-17 21:56:05'),
(274, 'jairo', 119, 'Sensei Info', '2023-08-17 21:58:04'),
(275, 'jairo', 36, 'Changes Info', '2023-08-17 22:02:22'),
(276, 'jairo', 36, 'Balance Info', '2023-08-17 22:04:05'),
(277, 'jasmine', 16, 'Manufacturer Info', '2023-08-17 22:58:41'),
(278, 'jasmine', 16, 'Extra Info', '2023-08-17 23:06:37'),
(279, 'jasmine', 18, 'Extra Info', '2023-08-17 23:26:00'),
(280, 'jasmine', 18, 'Extra Info', '2023-08-17 23:26:21'),
(281, 'jasmine', 84, 'Extra Info', '2023-08-17 23:36:02'),
(282, 'jasmine', 117, 'Changes Info', '2023-08-18 00:05:21'),
(283, 'jasmine', 117, 'Changes Info', '2023-08-18 00:05:46'),
(284, 'erick', 1, 'Changes Info', '2023-08-18 17:41:29'),
(285, 'erick', 1, 'Manufacturer Info', '2023-08-18 17:42:24'),
(286, 'erick', 2, 'Changes Info', '2023-08-18 17:42:58'),
(287, 'erick', 3, 'Changes Info', '2023-08-18 17:43:44'),
(288, 'erick', 3, 'Status to Pending to Install', '2023-08-18 17:43:50'),
(289, 'erick', 4, 'Changes Info', '2023-08-18 17:44:51'),
(290, 'erick', 4, 'Status to Pending to Install', '2023-08-18 17:45:00'),
(291, 'erick', 5, 'Changes Info', '2023-08-18 17:46:09'),
(292, 'erick', 5, 'Status to Pending to Install', '2023-08-18 17:46:13'),
(293, 'erick', 6, 'Changes Info', '2023-08-18 17:46:54'),
(294, 'erick', 6, 'Status to Pending to Install', '2023-08-18 17:46:58'),
(295, 'erick', 7, 'Changes Info', '2023-08-18 17:47:40'),
(296, 'erick', 7, 'Status to Pending to Install', '2023-08-18 17:47:44'),
(297, 'erick', 8, 'Changes Info', '2023-08-18 17:48:20'),
(298, 'erick', 8, 'Status to Pending to Install', '2023-08-18 17:48:24'),
(299, 'erick', 9, 'Changes Info', '2023-08-18 17:49:22'),
(300, 'erick', 9, 'Status to Pending to Install', '2023-08-18 17:50:07'),
(301, 'erick', 10, 'Changes Info', '2023-08-18 17:51:06'),
(302, 'erick', 10, 'Status to Hold', '2023-08-18 17:51:16'),
(303, 'erick', 10, 'Changes Info', '2023-08-18 17:51:47'),
(304, 'erick', 12, 'Changes Info', '2023-08-18 17:52:30'),
(305, 'erick', 12, 'Status to Pending to Install', '2023-08-18 17:52:33'),
(306, 'erick', 13, 'Changes Info', '2023-08-18 17:53:20'),
(307, 'erick', 13, 'Status to Pending to Install', '2023-08-18 17:53:24'),
(308, 'erick', 14, 'Changes Info', '2023-08-18 17:54:01'),
(309, 'erick', 15, 'Changes Info', '2023-08-18 17:58:13'),
(310, 'erick', 15, 'Status to Pending to Install', '2023-08-18 17:58:18'),
(311, 'erick', 16, 'Changes Info', '2023-08-18 17:59:33'),
(312, 'erick', 17, 'Changes Info', '2023-08-18 18:02:00'),
(313, 'erick', 17, 'Status to Pending to Install', '2023-08-18 18:02:05'),
(314, 'erick', 18, 'Changes Info', '2023-08-18 18:02:47'),
(315, 'erick', 18, 'Status to Pending to Install', '2023-08-18 18:02:53'),
(316, 'erick', 19, 'Changes Info', '2023-08-18 18:03:23'),
(317, 'erick', 19, 'Status to Pending to Install', '2023-08-18 18:03:27'),
(318, 'erick', 19, 'Status to Pending', '2023-08-18 18:03:32'),
(319, 'erick', 20, 'Changes Info', '2023-08-18 18:04:05'),
(320, 'erick', 21, 'Changes Info', '2023-08-18 18:04:32'),
(321, 'erick', 21, 'Status to Pending to Install', '2023-08-18 18:04:42'),
(322, 'erick', 22, 'Changes Info', '2023-08-18 18:05:10'),
(323, 'jasmine', 122, 'Balance Info', '2023-08-18 18:05:15'),
(324, 'erick', 22, 'Status to Installed', '2023-08-18 18:05:19'),
(325, 'erick', 23, 'Changes Info', '2023-08-18 18:06:46'),
(326, 'erick', 23, 'Extra Info', '2023-08-18 18:07:04'),
(327, 'erick', 24, 'Changes Info', '2023-08-18 18:07:49'),
(328, 'erick', 24, 'Extra Info', '2023-08-18 18:08:04'),
(329, 'erick', 24, 'Extra Info', '2023-08-18 18:08:15'),
(330, 'erick', 25, 'Changes Info', '2023-08-18 18:09:06'),
(331, 'erick', 25, 'Manufacturer Info', '2023-08-18 18:09:58'),
(332, 'erick', 25, 'Status to Pending to Install', '2023-08-18 18:10:04'),
(333, 'erick', 26, 'Changes Info', '2023-08-18 18:12:14'),
(334, 'erick', 26, 'Status to Pending', '2023-08-18 18:12:35'),
(335, 'erick', 28, 'Changes Info', '2023-08-18 18:14:53'),
(336, 'erick', 28, 'Status to Pending', '2023-08-18 18:14:58'),
(337, 'erick', 28, 'Changes Info', '2023-08-18 18:19:30'),
(338, 'erick', 29, 'Changes Info', '2023-08-18 18:32:08'),
(339, 'erick', 29, 'Manufacturer Info', '2023-08-18 18:32:35'),
(340, 'erick', 30, 'Changes Info', '2023-08-18 18:33:24'),
(341, 'erick', 30, 'Status to Pending to Install', '2023-08-18 18:33:28'),
(342, 'erick', 30, 'Manufacturer Info', '2023-08-18 18:33:56'),
(343, 'erick', 32, 'Changes Info', '2023-08-18 18:34:34'),
(344, 'erick', 32, 'Status to Pending to Install', '2023-08-18 18:34:44'),
(345, 'erick', 33, 'Changes Info', '2023-08-18 18:37:37'),
(346, 'erick', 33, 'Manufacturer Info', '2023-08-18 18:38:29'),
(347, 'erick', 36, 'Changes Info', '2023-08-18 18:40:12'),
(348, 'erick', 38, 'Changes Info', '2023-08-18 18:42:08'),
(349, 'erick', 38, 'Manufacturer Info', '2023-08-18 18:42:36'),
(350, 'erick', 40, 'Changes Info', '2023-08-18 18:43:18'),
(351, 'erick', 40, 'Manufacturer Info', '2023-08-18 18:44:05'),
(352, 'erick', 53, 'Changes Info', '2023-08-18 18:45:02'),
(353, 'erick', 53, 'Changes Info', '2023-08-18 18:45:15'),
(354, 'erick', 53, 'Status to Pending', '2023-08-18 18:45:21'),
(355, 'erick', 54, 'Changes Info', '2023-08-18 18:47:35'),
(356, 'erick', 55, 'Changes Info', '2023-08-18 18:48:50'),
(357, 'erick', 56, 'Changes Info', '2023-08-18 18:53:20'),
(358, 'erick', 58, 'Changes Info', '2023-08-18 18:54:53'),
(359, 'erick', 60, 'Changes Info', '2023-08-18 18:56:18'),
(360, 'erick', 69, 'Changes Info', '2023-08-18 19:00:00'),
(361, 'erick', 70, 'Changes Info', '2023-08-18 19:01:06'),
(362, 'erick', 74, 'Changes Info', '2023-08-18 19:04:11'),
(363, 'erick', 76, 'Changes Info', '2023-08-18 19:05:56'),
(364, 'erick', 80, 'Changes Info', '2023-08-18 19:06:44'),
(365, 'erick', 80, 'Status to Pending', '2023-08-18 19:06:50'),
(366, 'erick', 85, 'Changes Info', '2023-08-18 19:07:27'),
(367, 'erick', 103, 'Changes Info', '2023-08-18 19:08:45'),
(368, 'erick', 109, 'Changes Info', '2023-08-18 19:10:24'),
(369, 'erick', 110, 'Changes Info', '2023-08-18 19:12:03'),
(370, 'erick', 112, 'Changes Info', '2023-08-18 19:14:43'),
(371, 'erick', 112, 'Manufacturer Info', '2023-08-18 19:15:15'),
(372, 'erick', 2, 'Status to Pending to Install', '2023-08-18 19:16:30'),
(373, 'erick', 10, 'Status to Pending', '2023-08-18 19:19:11'),
(374, 'erick', 11, 'Status to Pending to Install', '2023-08-18 19:19:56'),
(375, 'erick', 11, 'Changes Info', '2023-08-18 19:21:24'),
(376, 'erick', 11, 'Changes Info', '2023-08-18 19:21:55'),
(377, 'erick', 27, 'Status to Pending to Install', '2023-08-18 19:24:30'),
(378, 'erick', 34, 'Status to Pending to Install', '2023-08-18 19:25:29'),
(379, 'erick', 34, 'Changes Info', '2023-08-18 19:25:52'),
(380, 'erick', 34, 'Manufacturer Info', '2023-08-18 19:26:22'),
(381, 'erick', 35, 'Extra Info', '2023-08-18 19:26:44'),
(382, 'erick', 37, 'Status to Pending', '2023-08-18 19:27:59'),
(383, 'erick', 39, 'Changes Info', '2023-08-18 19:30:20'),
(384, 'erick', 39, 'Status to Pending to Install', '2023-08-18 19:30:44'),
(385, 'jasmine', 122, 'Sensei Info', '2023-08-18 19:31:23'),
(386, 'erick', 41, 'Status to Pending to Install', '2023-08-18 19:31:29'),
(387, 'erick', 44, 'Status to Pending to Install', '2023-08-18 19:34:12'),
(388, 'erick', 45, 'Status to Pending to Install', '2023-08-18 19:41:48'),
(389, 'erick', 46, 'Status to Pending to Install', '2023-08-18 19:42:03'),
(390, 'erick', 48, 'Status to Installed', '2023-08-18 19:44:26'),
(391, 'erick', 48, 'Changes Info', '2023-08-18 19:45:03'),
(392, 'erick', 48, 'Manufacturer Info', '2023-08-18 19:45:33'),
(393, 'erick', 48, 'Changes Info', '2023-08-18 19:45:41'),
(394, 'erick', 49, 'Changes Info', '2023-08-18 19:46:34'),
(395, 'erick', 49, 'Manufacturer Info', '2023-08-18 19:46:58'),
(396, 'erick', 65, 'Status to Pending', '2023-08-18 19:57:36'),
(397, 'erick', 66, 'Status to Pending', '2023-08-18 19:58:17'),
(398, 'erick', 101, 'Status to Pending', '2023-08-18 20:00:39'),
(399, 'erick', 105, 'Status to Pending to Install', '2023-08-18 20:01:23'),
(400, 'erick', 110, 'Status to Pending', '2023-08-18 20:02:20'),
(401, 'erick', 111, 'Status to Pending', '2023-08-18 20:02:53'),
(402, 'erick', 111, 'Status to Hold', '2023-08-18 20:06:30'),
(403, 'erick', 111, 'Sensei Info', '2023-08-18 20:08:06'),
(404, 'erick', 105, 'Changes Info', '2023-08-18 20:11:11'),
(405, 'erick', 92, 'Changes Info', '2023-08-18 20:11:52'),
(406, 'erick', 73, 'Sensei Info', '2023-08-18 20:14:58'),
(407, 'erick', 73, 'Changes Info', '2023-08-18 20:15:25'),
(408, 'erick', 73, 'Manufacturer Info', '2023-08-18 20:16:06'),
(409, 'erick', 108, 'Sensei Info', '2023-08-18 20:48:29'),
(410, 'erick', 44, 'Sensei Info', '2023-08-18 21:08:10'),
(411, 'erick', 29, 'Sensei Info', '2023-08-18 21:12:40'),
(412, 'erick', 106, 'Manufacturer Info', '2023-08-18 21:17:43'),
(413, 'erick', 43, 'Sensei Info', '2023-08-18 21:19:41'),
(414, 'erick', 43, 'Changes Info', '2023-08-18 21:20:40'),
(415, 'erick', 43, 'Manufacturer Info', '2023-08-18 21:21:15'),
(416, 'erick', 69, 'Sensei Info', '2023-08-18 21:25:54'),
(417, 'erick', 69, 'Status to Pending', '2023-08-18 21:27:43'),
(418, 'erick', 69, 'Status to Pending to Install', '2023-08-18 21:27:55'),
(419, 'erick', 52, 'Sensei Info', '2023-08-18 21:38:16'),
(420, 'erick', 52, 'Changes Info', '2023-08-18 21:38:44'),
(421, 'erick', 60, 'Sensei Info', '2023-08-18 21:41:48'),
(422, 'erick', 60, 'Sensei Info', '2023-08-18 21:42:34'),
(423, 'erick', 97, 'Sensei Info', '2023-08-18 21:53:31'),
(424, 'erick', 97, 'Changes Info', '2023-08-18 21:55:04'),
(425, 'erick', 12, 'Extra Info', '2023-08-18 21:58:24'),
(426, 'erick', 12, 'Manufacturer Info', '2023-08-18 21:59:23'),
(427, 'erick', 67, 'Sensei Info', '2023-08-18 22:02:31'),
(428, 'erick', 67, 'Changes Info', '2023-08-18 22:03:20'),
(429, 'erick', 67, 'Status to Pending', '2023-08-18 22:03:36'),
(430, 'erick', 74, 'Sensei Info', '2023-08-18 22:05:24'),
(431, 'erick', 93, 'Sensei Info', '2023-08-18 22:11:05'),
(432, 'erick', 93, 'Changes Info', '2023-08-18 22:15:18'),
(433, 'erick', 71, 'Sensei Info', '2023-08-18 22:18:03'),
(434, 'erick', 87, 'Sensei Info', '2023-08-18 22:19:11'),
(435, 'erick', 87, 'Changes Info', '2023-08-18 22:19:53'),
(436, 'erick', 26, 'Sensei Info', '2023-08-18 22:23:40'),
(437, 'erick', 63, 'Sensei Info', '2023-08-18 22:29:10'),
(438, 'erick', 70, 'Sensei Info', '2023-08-18 22:30:22'),
(439, 'erick', 59, 'Sensei Info', '2023-08-18 22:33:08'),
(440, 'erick', 59, 'Changes Info', '2023-08-18 22:33:43'),
(441, 'erick', 46, 'Sensei Info', '2023-08-18 22:38:13'),
(442, 'erick', 46, 'Changes Info', '2023-08-18 22:39:37'),
(443, 'erick', 46, 'Changes Info', '2023-08-18 22:40:06'),
(444, 'erick', 91, 'Sensei Info', '2023-08-18 22:41:17'),
(445, 'erick', 91, 'Changes Info', '2023-08-18 22:42:36'),
(446, 'erick', 94, 'Sensei Info', '2023-08-18 22:48:57'),
(447, 'erick', 94, 'Changes Info', '2023-08-18 22:51:06'),
(448, 'erick', 94, 'Status to Hold', '2023-08-18 22:51:50'),
(449, 'erick', 94, 'Extra Info', '2023-08-18 22:52:11'),
(450, 'erick', 90, 'Changes Info', '2023-08-18 22:54:58'),
(451, 'erick', 90, 'Sensei Info', '2023-08-18 22:55:39'),
(452, 'erick', 30, 'Sensei Info', '2023-08-18 22:57:26'),
(453, 'erick', 54, 'Sensei Info', '2023-08-18 22:59:54'),
(454, 'erick', 54, 'Extra Info', '2023-08-18 23:00:26'),
(455, 'erick', 54, 'Extra Info', '2023-08-18 23:01:25'),
(456, 'erick', 78, 'Sensei Info', '2023-08-18 23:02:53'),
(457, 'erick', 78, 'Changes Info', '2023-08-18 23:03:30'),
(458, 'erick', 78, 'Extra Info', '2023-08-18 23:04:38'),
(459, 'erick', 119, 'Sensei Info', '2023-08-18 23:05:27'),
(460, 'erick', 38, 'Sensei Info', '2023-08-18 23:10:44'),
(461, 'jasmine', 30, 'Manufacturer Info', '2023-08-18 23:12:32'),
(462, 'jasmine', 30, 'Extra Info', '2023-08-18 23:13:06'),
(463, 'jasmine', 30, 'Extra Info', '2023-08-18 23:13:18'),
(464, 'erick', 16, 'Manufacturer Info', '2023-08-18 23:13:54'),
(465, 'erick', 6, 'Manufacturer Info', '2023-08-18 23:16:05'),
(466, 'erick', 6, 'Status to Pending to Install', '2023-08-18 23:16:13'),
(467, 'erick', 122, 'Changes Info', '2023-08-18 23:17:40'),
(468, 'erick', 101, 'Sensei Info', '2023-08-18 23:20:52'),
(469, 'erick', 101, 'Changes Info', '2023-08-18 23:21:37'),
(470, 'erick', 77, 'Sensei Info', '2023-08-18 23:53:36'),
(471, 'erick', 77, 'Changes Info', '2023-08-18 23:54:09'),
(472, 'erick', 77, 'Manufacturer Info', '2023-08-18 23:54:29'),
(473, 'erick', 66, 'Sensei Info', '2023-08-18 23:56:00'),
(474, 'erick', 66, 'Changes Info', '2023-08-18 23:56:34'),
(475, 'erick', 66, 'Manufacturer Info', '2023-08-18 23:56:50'),
(476, 'erick', 95, 'Sensei Info', '2023-08-18 23:58:49'),
(477, 'erick', 95, 'Changes Info', '2023-08-19 00:00:05'),
(478, 'erick', 95, 'Extra Info', '2023-08-19 00:00:36'),
(479, 'erick', 95, 'Status to Pending', '2023-08-19 00:00:47'),
(480, 'erick', 36, 'Sensei Info', '2023-08-19 00:03:34'),
(481, 'erick', 82, 'Sensei Info', '2023-08-19 00:05:04'),
(482, 'erick', 82, 'Manufacturer Info', '2023-08-19 00:05:28'),
(483, 'erick', 56, 'Sensei Info', '2023-08-19 00:06:12'),
(484, 'erick', 109, 'Sensei Info', '2023-08-19 00:07:50'),
(485, 'erick', 50, 'Sensei Info', '2023-08-19 00:09:38'),
(486, 'erick', 50, 'Manufacturer Info', '2023-08-19 00:09:59'),
(487, 'erick', 84, 'Sensei Info', '2023-08-19 18:04:11'),
(488, 'erick', 84, 'Sensei Info', '2023-08-19 18:06:32'),
(489, 'erick', 84, 'Sensei Info', '2023-08-19 18:06:43'),
(490, 'erick', 84, 'Sensei Info', '2023-08-19 18:06:52'),
(491, 'erick', 84, 'Sensei Info', '2023-08-19 18:14:49'),
(492, 'erick', 84, 'Changes Info', '2023-08-19 18:22:34'),
(493, 'erick', 40, 'Sensei Info', '2023-08-19 18:29:12'),
(494, 'erick', 7, 'Sensei Info', '2023-08-19 18:30:38'),
(495, 'erick', 64, 'Sensei Info', '2023-08-19 18:32:05'),
(496, 'erick', 88, 'Sensei Info', '2023-08-19 18:34:18'),
(497, 'erick', 88, 'Changes Info', '2023-08-19 18:37:00'),
(498, 'erick', 88, 'Manufacturer Info', '2023-08-19 18:42:16'),
(499, 'erick', 88, 'Changes Info', '2023-08-19 18:45:45'),
(500, 'erick', 88, 'Changes Info', '2023-08-19 18:49:40'),
(501, 'erick', 88, 'Changes Info', '2023-08-19 18:50:17'),
(502, 'erick', 79, 'Sensei Info', '2023-08-19 18:53:12'),
(503, 'erick', 79, 'Changes Info', '2023-08-19 20:23:52'),
(504, 'erick', 1, 'Status to Pending', '2023-08-20 16:33:17'),
(505, 'erick', 98, 'Changes Info', '2023-08-20 17:30:12'),
(506, 'erick', 98, 'Manufacturer Info', '2023-08-20 17:32:50'),
(507, 'erick', 98, 'Extra Info', '2023-08-20 17:33:10'),
(508, 'erick', 99, 'Changes Info', '2023-08-20 17:45:36'),
(509, 'erick', 100, 'Balance Info', '2023-08-20 17:50:23'),
(510, 'erick', 100, 'Balance Info', '2023-08-20 17:50:36'),
(511, 'erick', 100, 'Changes Info', '2023-08-20 17:50:58'),
(512, 'erick', 100, 'Changes Info', '2023-08-20 17:51:08'),
(513, 'erick', 101, 'Status to Pending to Install', '2023-08-20 17:54:36'),
(514, 'erick', 101, 'Status to Pending', '2023-08-20 17:57:23'),
(515, 'erick', 102, 'Changes Info', '2023-08-20 18:06:25'),
(516, 'erick', 43, 'Balance Info', '2023-08-20 18:08:22'),
(517, 'erick', 103, 'Manufacturer Info', '2023-08-20 18:32:59'),
(518, 'erick', 104, 'Sensei Info', '2023-08-20 18:50:35'),
(519, 'erick', 104, 'Sensei Info', '2023-08-20 18:50:52'),
(520, 'erick', 104, 'Changes Info', '2023-08-20 19:01:16'),
(521, 'erick', 104, 'Status to Pending', '2023-08-20 19:01:42'),
(522, 'erick', 104, 'Extra Info', '2023-08-20 19:02:11'),
(523, 'erick', 105, 'Extra Info', '2023-08-20 19:05:28'),
(524, 'erick', 105, 'Manufacturer Info', '2023-08-20 19:07:32'),
(525, 'erick', 25, 'Sensei Info', '2023-08-20 19:27:52'),
(526, 'erick', 25, 'Sensei Info', '2023-08-20 19:30:24'),
(527, 'erick', 25, 'Manufacturer Info', '2023-08-20 19:31:25'),
(528, 'erick', 106, 'Sensei Info', '2023-08-20 19:36:35'),
(529, 'erick', 107, 'Changes Info', '2023-08-20 19:57:26'),
(530, 'erick', 108, 'Manufacturer Info', '2023-08-20 20:04:50'),
(531, 'erick', 108, 'Manufacturer Info', '2023-08-20 20:20:56'),
(532, 'erick', 109, 'Manufacturer Info', '2023-08-20 20:28:49'),
(533, 'erick', 109, 'Extra Info', '2023-08-20 20:29:02'),
(534, 'erick', 110, 'Changes Info', '2023-08-20 20:34:38'),
(535, 'erick', 111, 'Changes Info', '2023-08-20 20:36:25'),
(536, 'erick', 112, 'Extra Info', '2023-08-20 20:43:48'),
(537, 'erick', 112, 'Changes Info', '2023-08-20 20:45:17'),
(538, 'erick', 115, 'Changes Info', '2023-08-20 21:12:54'),
(539, 'erick', 115, 'Sensei Info', '2023-08-20 21:16:48'),
(540, 'erick', 115, 'Status to Pending to Install', '2023-08-20 21:17:06'),
(541, 'erick', 115, 'Status to Pending', '2023-08-20 21:18:15'),
(542, 'erick', 116, 'Sensei Info', '2023-08-20 21:21:16'),
(543, 'erick', 116, 'Changes Info', '2023-08-20 21:21:53'),
(544, 'erick', 116, 'Status to Pending', '2023-08-20 21:21:58'),
(545, 'erick', 117, 'Changes Info', '2023-08-20 21:24:04'),
(546, 'erick', 117, 'Changes Info', '2023-08-20 21:27:26'),
(547, 'erick', 117, 'Changes Info', '2023-08-20 21:35:48'),
(548, 'erick', 123, 'Changes Info', '2023-08-20 22:31:40'),
(549, 'erick', 123, 'Balance Info', '2023-08-20 22:37:17'),
(550, 'erick', 123, 'Owners', '2023-08-20 22:39:13'),
(551, 'erick', 123, 'Extra Info', '2023-08-20 22:40:00'),
(552, 'erick', 123, 'Status to Hold', '2023-08-20 22:40:05'),
(553, 'erick', 122, 'Manufacturer Info', '2023-08-20 23:05:20'),
(554, 'erick', 124, 'Balance Info', '2023-08-20 23:20:46'),
(555, 'erick', 125, 'Extra Info', '2023-08-21 01:04:11'),
(556, 'erick', 125, 'Sensei Info', '2023-08-21 01:05:49'),
(557, 'erick', 125, 'Changes Info', '2023-08-21 01:06:13'),
(558, 'erick', 125, 'Manufacturer Info', '2023-08-21 01:06:29'),
(559, 'erick', 126, 'Manufacturer Info', '2023-08-21 01:07:25'),
(560, 'erick', 127, 'Manufacturer Info', '2023-08-21 01:07:44'),
(561, 'erick', 127, 'Changes Info', '2023-08-21 01:07:55'),
(562, 'erick', 126, 'Changes Info', '2023-08-21 01:08:17'),
(563, 'jasmine', 82, 'Manufacturer Info', '2023-08-21 16:31:13'),
(564, 'jasmine', 73, 'Manufacturer Info', '2023-08-21 16:34:27'),
(565, 'erick', 11, 'Changes Info', '2023-08-21 17:51:47'),
(566, 'erick', 46, 'Changes Info', '2023-08-21 17:54:03'),
(567, 'erick', 46, 'Status to Pending', '2023-08-21 17:54:30'),
(568, 'erick', 46, 'Status to Pending', '2023-08-21 17:55:15'),
(569, 'erick', 48, 'Changes Info', '2023-08-21 18:00:23'),
(570, 'erick', 53, 'Status to Hold', '2023-08-21 18:01:35'),
(571, 'erick', 53, 'Status to Hold', '2023-08-21 18:02:36'),
(572, 'jasmine', 25, 'Manufacturer Info', '2023-08-21 18:13:44'),
(573, 'jasmine', 25, 'Manufacturer Info', '2023-08-21 18:13:54'),
(574, 'jasmine', 106, 'Manufacturer Info', '2023-08-21 18:14:20'),
(575, 'erick', 111, 'Changes Info', '2023-08-21 19:42:13'),
(576, 'erick', 111, 'Changes Info', '2023-08-21 19:44:32'),
(577, 'erick', 111, 'Manufacturer Info', '2023-08-21 19:44:49'),
(578, 'erick', 21, 'Changes Info', '2023-08-21 19:50:27'),
(579, 'erick', 21, 'Status to Pending', '2023-08-21 19:50:31'),
(580, 'erick', 105, 'Changes Info', '2023-08-21 19:51:19'),
(581, 'erick', 105, 'Manufacturer Info', '2023-08-21 19:52:03'),
(582, 'erick', 92, 'Changes Info', '2023-08-21 19:53:06'),
(583, 'erick', 92, 'Manufacturer Info', '2023-08-21 19:53:37'),
(584, 'erick', 2, 'Changes Info', '2023-08-21 19:54:32'),
(585, 'erick', 2, 'Manufacturer Info', '2023-08-21 19:57:06'),
(586, 'erick', 103, 'Changes Info', '2023-08-21 19:59:02'),
(587, 'erick', 103, 'Manufacturer Info', '2023-08-21 20:01:05'),
(588, 'erick', 73, 'Changes Info', '2023-08-21 20:07:10'),
(589, 'erick', 73, 'Manufacturer Info', '2023-08-21 20:07:43'),
(590, 'erick', 17, 'Changes Info', '2023-08-21 20:10:19'),
(591, 'erick', 17, 'Manufacturer Info', '2023-08-21 20:10:51'),
(592, 'erick', 65, 'Changes Info', '2023-08-21 20:12:47'),
(593, 'erick', 65, 'Manufacturer Info', '2023-08-21 20:13:35'),
(594, 'erick', 15, 'Extra Info', '2023-08-21 20:15:16'),
(595, 'erick', 15, 'Changes Info', '2023-08-21 20:16:00'),
(596, 'erick', 15, 'Manufacturer Info', '2023-08-21 20:16:55'),
(597, 'erick', 53, 'Changes Info', '2023-08-21 20:17:45'),
(598, 'erick', 53, 'Manufacturer Info', '2023-08-21 20:22:56'),
(599, 'erick', 68, 'Changes Info', '2023-08-21 20:26:31'),
(600, 'erick', 68, 'Manufacturer Info', '2023-08-21 20:26:58'),
(601, 'erick', 34, 'Changes Info', '2023-08-21 20:28:09'),
(602, 'erick', 34, 'Manufacturer Info', '2023-08-21 20:28:55'),
(603, 'erick', 51, 'Changes Info', '2023-08-21 20:30:34'),
(604, 'erick', 51, 'Manufacturer Info', '2023-08-21 20:31:02'),
(605, 'erick', 85, 'Changes Info', '2023-08-21 20:34:44'),
(606, 'erick', 85, 'Manufacturer Info', '2023-08-21 20:34:55'),
(607, 'erick', 85, 'Changes Info', '2023-08-21 20:36:24'),
(608, 'erick', 85, 'Manufacturer Info', '2023-08-21 20:36:52'),
(609, 'erick', 108, 'Changes Info', '2023-08-21 20:37:47'),
(610, 'erick', 108, 'Changes Info', '2023-08-21 20:43:57'),
(611, 'erick', 108, 'Manufacturer Info', '2023-08-21 20:44:21'),
(612, 'erick', 37, 'Changes Info', '2023-08-21 20:47:07'),
(613, 'erick', 37, 'Manufacturer Info', '2023-08-21 20:56:26'),
(614, 'erick', 20, 'Changes Info', '2023-08-21 20:59:37'),
(615, 'erick', 20, 'Manufacturer Info', '2023-08-21 21:00:43'),
(616, 'erick', 44, 'Changes Info', '2023-08-21 21:02:14'),
(617, 'erick', 44, 'Manufacturer Info', '2023-08-21 21:03:40'),
(618, 'erick', 29, 'Changes Info', '2023-08-21 21:04:21'),
(619, 'erick', 29, 'Manufacturer Info', '2023-08-21 21:04:33'),
(620, 'erick', 29, 'Changes Info', '2023-08-21 21:08:33'),
(621, 'erick', 29, 'Manufacturer Info', '2023-08-21 21:09:05'),
(622, 'erick', 25, 'Changes Info', '2023-08-21 21:10:19'),
(623, 'erick', 25, 'Manufacturer Info', '2023-08-21 21:10:48'),
(624, 'erick', 25, 'Manufacturer Info', '2023-08-21 21:13:40'),
(625, 'erick', 106, 'Changes Info', '2023-08-21 21:15:48'),
(626, 'erick', 106, 'Manufacturer Info', '2023-08-21 21:16:19'),
(627, 'erick', 106, 'Manufacturer Info', '2023-08-21 21:18:56'),
(628, 'jasmine', 111, 'Hot Status to Yes', '2023-08-21 21:27:14'),
(629, 'jasmine', 111, 'Hot Status to No', '2023-08-21 21:27:21'),
(630, 'erick', 43, 'Changes Info', '2023-08-21 21:34:33'),
(631, 'erick', 43, 'Manufacturer Info', '2023-08-21 21:35:10'),
(632, 'erick', 69, 'Changes Info', '2023-08-21 21:41:01'),
(633, 'jasmine', 115, 'Manufacturer Info', '2023-08-21 21:41:24'),
(634, 'erick', 69, 'Manufacturer Info', '2023-08-21 21:41:40'),
(635, 'jasmine', 115, 'Extra Info', '2023-08-21 21:42:06'),
(636, 'erick', 52, 'Changes Info', '2023-08-21 21:43:41'),
(637, 'erick', 52, 'Changes Info', '2023-08-21 21:49:07'),
(638, 'erick', 52, 'Manufacturer Info', '2023-08-21 21:50:15'),
(639, 'erick', 60, 'Changes Info', '2023-08-21 21:52:32'),
(640, 'erick', 60, 'Manufacturer Info', '2023-08-21 21:53:53'),
(641, 'erick', 76, 'Changes Info', '2023-08-21 21:56:37'),
(642, 'erick', 76, 'Manufacturer Info', '2023-08-21 21:59:10'),
(643, 'erick', 14, 'Changes Info', '2023-08-21 21:59:42'),
(644, 'erick', 14, 'Manufacturer Info', '2023-08-21 22:01:27'),
(645, 'erick', 97, 'Changes Info', '2023-08-21 22:02:27'),
(646, 'erick', 97, 'Manufacturer Info', '2023-08-21 22:02:56'),
(647, 'erick', 12, 'Changes Info', '2023-08-21 22:05:50'),
(648, 'erick', 12, 'Manufacturer Info', '2023-08-21 22:06:41'),
(649, 'erick', 67, 'Changes Info', '2023-08-21 22:09:18'),
(650, 'erick', 67, 'Manufacturer Info', '2023-08-21 22:09:42'),
(651, 'erick', 74, 'Changes Info', '2023-08-21 22:11:17'),
(652, 'erick', 74, 'Manufacturer Info', '2023-08-21 22:12:15'),
(653, 'erick', 93, 'Changes Info', '2023-08-21 22:14:42'),
(654, 'erick', 93, 'Manufacturer Info', '2023-08-21 22:15:50'),
(655, 'erick', 125, 'Extra Info', '2023-08-21 22:16:23'),
(656, 'erick', 87, 'Changes Info', '2023-08-21 22:21:34'),
(657, 'erick', 87, 'Manufacturer Info', '2023-08-21 22:23:23'),
(658, 'erick', 19, 'Changes Info', '2023-08-21 22:24:28'),
(659, 'erick', 19, 'Extra Info', '2023-08-21 22:24:48'),
(660, 'erick', 123, 'Changes Info', '2023-08-21 22:26:57'),
(661, 'erick', 123, 'Changes Info', '2023-08-21 22:27:12'),
(662, 'erick', 123, 'Manufacturer Info', '2023-08-21 22:29:24'),
(663, 'erick', 26, 'Extra Info', '2023-08-21 22:32:22'),
(664, 'erick', 26, 'Changes Info', '2023-08-21 22:37:34'),
(665, 'erick', 63, 'Changes Info', '2023-08-21 22:41:36'),
(666, 'erick', 70, 'Changes Info', '2023-08-21 22:55:51'),
(667, 'erick', 70, 'Manufacturer Info', '2023-08-21 22:56:06'),
(668, 'erick', 104, 'Changes Info', '2023-08-21 22:57:45'),
(669, 'erick', 104, 'Manufacturer Info', '2023-08-21 22:58:24'),
(670, 'erick', 59, 'Changes Info', '2023-08-21 23:10:43'),
(671, 'erick', 59, 'Manufacturer Info', '2023-08-21 23:11:03'),
(672, 'erick', 46, 'Changes Info', '2023-08-21 23:12:41'),
(673, 'erick', 46, 'Manufacturer Info', '2023-08-21 23:13:05'),
(674, 'erick', 91, 'Changes Info', '2023-08-21 23:14:21'),
(675, 'erick', 91, 'Manufacturer Info', '2023-08-21 23:15:03'),
(676, 'erick', 94, 'Changes Info', '2023-08-21 23:17:06'),
(677, 'erick', 94, 'Manufacturer Info', '2023-08-21 23:17:35'),
(678, 'erick', 90, 'Changes Info', '2023-08-21 23:18:42'),
(679, 'erick', 90, 'Manufacturer Info', '2023-08-21 23:19:12'),
(680, 'erick', 30, 'Changes Info', '2023-08-21 23:21:19'),
(681, 'erick', 30, 'Manufacturer Info', '2023-08-21 23:21:53'),
(682, 'erick', 54, 'Changes Info', '2023-08-21 23:22:30'),
(683, 'erick', 54, 'Manufacturer Info', '2023-08-21 23:31:41'),
(684, 'jasmine', 122, 'Manufacturer Info', '2023-08-22 17:16:22'),
(685, 'jasmine', 11, 'Manufacturer Info', '2023-08-22 18:00:20'),
(686, 'jasmine', 11, 'Manufacturer Info', '2023-08-22 18:00:34'),
(687, 'jasmine', 11, 'Status to Pending to Install', '2023-08-22 18:00:42'),
(688, 'jasmine', 84, 'Manufacturer Info', '2023-08-22 18:01:17'),
(689, 'jasmine', 125, 'Manufacturer Info', '2023-08-22 22:08:07'),
(690, 'jasmine', 125, 'Manufacturer Info', '2023-08-22 22:08:28'),
(691, 'jasmine', 129, 'Balance Info', '2023-08-22 23:33:23'),
(692, 'jasmine', 119, 'Manufacturer Info', '2023-08-22 23:57:27'),
(693, 'erick', 78, 'Changes Info', '2023-08-23 17:01:15'),
(694, 'erick', 78, 'Manufacturer Info', '2023-08-23 17:04:51'),
(695, 'erick', 119, 'Changes Info', '2023-08-23 17:10:06'),
(696, 'erick', 119, 'Manufacturer Info', '2023-08-23 17:10:37'),
(697, 'erick', 23, 'Changes Info', '2023-08-23 17:12:12'),
(698, 'erick', 23, 'Manufacturer Info', '2023-08-23 17:13:32'),
(699, 'erick', 129, 'Changes Info', '2023-08-23 17:20:33'),
(700, 'erick', 129, 'Manufacturer Info', '2023-08-23 17:20:54'),
(701, 'erick', 82, 'Changes Info', '2023-08-23 17:35:34'),
(702, 'erick', 82, 'Manufacturer Info', '2023-08-23 17:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `number`
--

CREATE TABLE `number` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `phone` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installation`
--
ALTER TABLE `installation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layout`
--
ALTER TABLE `layout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_70E4FA78F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_70E4FA78E7927C74` (`email`);

--
-- Indexes for table `modification`
--
ALTER TABLE `modification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `number`
--
ALTER TABLE `number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_96901F54E7A1254A` (`contact_id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `installation`
--
ALTER TABLE `installation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `layout`
--
ALTER TABLE `layout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `modification`
--
ALTER TABLE `modification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703;

--
-- AUTO_INCREMENT for table `number`
--
ALTER TABLE `number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `number`
--
ALTER TABLE `number`
  ADD CONSTRAINT `FK_96901F54E7A1254A` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
