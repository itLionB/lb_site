-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 11:05 PM
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
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `name`, `status`, `email`) VALUES
(1, 'Jairo Fortunato Torres Ibarra', 'Active', 'jairo@lionbuildings.com'),
(2, 'Santiago Torres Ibarra', 'Active', 'director@lionbuildings.com'),
(3, 'Nicolas Ayon Lopez', 'Active', 'nicolas@lionbuildings.com'),
(4, 'Ivan Luis Torres Ibarra', 'Active', 'info@lionbuildings.com'),
(5, 'Erick Alejandro Aguilar Quevedo', 'Active', 'erick@lionbuildings.com'),
(6, 'Rosa Isela Boyzo Perez', 'Active', 'isela@lionbuildings.com'),
(7, 'Jose Rodolfo Gutierrez Romero', 'Active', 'rodolfo@lionbuildings.com'),
(8, 'Jose Luis Perez Lara', 'Active', 'jose@lionbuildings.com'),
(9, 'Sergio Alejandro Sierra Rubio', 'Active', 'sergio@lionbuildings.com'),
(10, 'Edgar  Esquivel Alcantara', 'Active', 'edgar@lionbuildings.com'),
(11, 'Francisco  Sanchez', 'Active', 'lion4@lionbuildings.com'),
(12, 'Jose Avila', 'Active', 'lion8@lionbuildings.com'),
(13, 'Yasmin Mendez Meneses', 'Active', 'lion5@lionbuildings.com'),
(14, 'Moises Alexander Avila Silva', 'Active', 'lion6@lionbuildings.com'),
(15, 'Brandon Fabian Olguin Tovar', 'Active', 'lion7@lionbuildings.com'),
(16, 'Nemesio Antonio Herrera Cruz', 'Active', 'it@lionbuildings.com');

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
  `step_ordered` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `installation`
--

INSERT INTO `installation` (`id`, `customer_name`, `customer_phone`, `customer_email`, `installation_address`, `city`, `state`, `zip_code`, `description`, `sales_owner`, `sales_caller`, `building_pi_taxes`, `price_no_taxes`, `downpayment`, `dp_method`, `dp_date`, `payment2`, `payment2_method`, `payment2_date`, `balance_du_installation`, `financed`, `financing_company`, `financing_other`, `added_lead`, `quoted`, `contract_signed`, `notes_sensei`, `quote_number`, `order_number`, `invoice_number`, `calls_before_payments`, `texts_before_payments`, `any_changes`, `order_confirmation`, `confirmation_agent`, `to_manufacturer`, `installation_company`, `manufacturer_number`, `manufacturer_email`, `installation_status`, `installation_date`, `days_customer`, `days_install`, `links_info`, `review_link`, `notes`, `register_created`, `hot_status`, `last_update`, `site_specifics`, `created_by`, `step_ordered`) VALUES
(1, 'Michael Gardner', '555 555-5555', 'mkgman69.mg@gmail.com', '123 Address', 'City', 'NA', '99999', ' Paid Engineer Stamped Plan 450 ', NULL, NULL, 0, 0, 0, 'Stripe', '2010-01-01', 2010, 'NA', '2010-01-01', 0, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Plans', '2010-01-01', '0', '0', 'pi_3Km3ivBPmiVxRVUJ0UIptK1k', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'Yes '),
(2, 'Alejandro Ontiveros', '555 555-5555', 'alejoomar1@hotmail.com', '123 Address', 'City', 'NA', '99999', '20x30x12 Vertical Tan Roof on Concrete White Trim Light Stone Sides Ends 12Gauge Horizontal fully encolsed 1 Garage Door 14 X 12 Front 1 Walk-in Door 36x80 2 Windows 24x36', NULL, NULL, 14904, 0, 2070, 'Stripe', '2022-05-05', 2010, 'NA', '2010-01-01', 12834, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Jesus', 0, '-', 'Pending Install', '2010-01-01', '0', '0', 'pi_3Kw8FXBPmiVxRVUJ2abISqw8', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(3, 'Ruben Sanchez', '555 555-5555', 'rubenmrice@gmail.com', '123 Address', 'City', 'NA', '99999', '15x30x14 Vertical Earth Brown Roof on Concrete Earth Brown Trim Raw Hide Sides and Ends 12Gauge 2 White Garage Rollup Door 10x8 on the right side 2 White Walk-in Door 36x80 one on the right and one on the left 6 White Window 30x30', NULL, NULL, 14267.5, 0, 1950, 'Stripe', '2022-05-06', 2010, 'NA', '2010-01-01', 12317.5, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Jesus', 0, '-', 'Pending Install', '2010-01-01', '0', '0', 'pi_3KwAxgBPmiVxRVUJ0lFjm3U1', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(4, 'Raul Villega NOE SIERRA', '909-844-4401 ', 'Noesierra7sx@yahoo.com', '12295 Belmont St', 'Oak Hills', 'CA', '92344', '30x45x12 Vertical Brown Roof on Concrete Brown Trim Light Stone Sides and Ends 14Gauge fully enclosed Walk-in Door 3 Garage Doors 10x10', NULL, NULL, 32400, 0, 5400, 'Stripe', '2022-05-27', 2010, 'NA', '2010-01-01', 27000, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Enterprise Steel Structures', 559, 'orders@enterprisesteel.com', 'Pending Install', '2010-01-01', '0', '0', 'pi_3KvnmHBPmiVxRVUJ0RkfqP4m', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(5, 'David Vasquez', '949-306-4215 ', 'daveemail@server.comvasquez@hotmail.com', '2078 7th Ln', 'Big Bear', 'CA', '99999', '30x40x12 Vertical Green Roof on Concrete Black Trim Burgundy Sides and Ends 14Gauge fully enclosed 2 Garage Rollup Door 10x10 on Front End 2 Walkin Door 36x80 3 Windows 24x36 Frame-out', NULL, NULL, 25140, 0, 4190, 'Stripe', '2022-05-31', 2010, 'NA', '2010-01-01', 20950, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Enterprise Steel Structures', 559, 'orders@enterprisesteel.com', 'Pending Install', '2010-01-01', '0', '0', 'https://dashboard.stripe.com/payments/pi_3Kxe0TBPmiVxRVUJ0hGkw4UN', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(6, 'Habeebi Issa', '916-343-7358 ', 'Jala_m@msn.com', '123 Address', 'City', 'NA', '99999', '30x40x12 Vertical Roof on Asphalt 14Gauge fully enclosed 2 Garage Doors 10x10 Front End 1 Walk-in door 36x80 2 Windows 30x30 Roof Insulation', NULL, NULL, 28800, 0, 4800, 'Stripe', '2022-05-31', 2010, 'NA', '2010-01-01', 24000, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Enterprise Steel Structures', 559, 'orders@enterprisesteel.com', 'Pending Install', '2010-01-01', '0', '0', 'https://dashboard.stripe.com/payments/pi_3L5bZIBPmiVxRVUJ0opmdPys', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(7, 'Leonel Hernandez Diaz', '336-260-7307', 'Leonelh@live.com ', '123 Address', 'Burlington', 'NC', '27217', 'Down Payment for Steel Building', NULL, NULL, 62130, 0, 19000, 'Check', '2022-07-02', 2010, 'NA', '2010-01-01', 43130, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'GA Southern Steel Buildings', 229, 'cathyb@aasouthernsteelbuildings.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(8, 'Jim k. Crandell', '555 555-5555', 'jcrv24@aol.com', '10209 Dusty Hill Loop', 'Dade City', 'FL', '33525', 'Down Payment for Steel Building', NULL, NULL, 38950, 0, 6150, 'Stripe', '2022-08-29', 2010, 'NA', '2010-01-01', 32800, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'GA Southern Steel Buildings', 229, 'cathyb@aasouthernsteelbuildings.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'pending', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(9, 'Jim k. Crandell', '831-277-3860 ', 'mgarcia@stockerallaire.com', '3755 Tustin Rd', 'Salinas', 'CA', '93907', 'Down Payment for Steel Building', NULL, NULL, 10335.05, 0, 1135.2, 'Stripe', '2022-09-26', 2010, 'NA', '2010-01-01', 9199.85, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Enterprise Steel Structures', 559, 'orders@enterprisesteel.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(10, 'Tim Wagemann', '408-802-0066 ', 'wagemannt@gmail.com', '123 Address', 'San Martin', 'CA', '95046', 'Down Payment for Steel Building', NULL, NULL, 35456, 0, 6498, 'Stripe', '2022-10-30', 2010, 'NA', '2010-01-01', 28958, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Enterprise Steel Structures', 559, 'orders@enterprisesteel.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(11, 'Jose Antonio Gonzalez Figueroa', '555 555-5555', 'gonzalezantonio1974@icloud.com', '12627 Ingomar Grade', 'Banos', 'CA', '93635', 'Down Payment for Steel Building', NULL, NULL, 39563.18, 0, 5053.18, 'Stripe', '2022-11-10', 2010, 'NA', '2010-01-01', 34510, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Enterprise Steel Structures', 559, 'orders@enterprisesteel.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(12, 'Luis Carlos ', '505-795-3404 ', 'louis.carlos@comcast.net', '30 Calle Prado', 'Santa Fe', 'NM', '87507', 'Down Payment for Steel Building', NULL, NULL, 20923.2, 0, 3487.2, 'Stripe', '2023-01-16', 2010, 'NA', '2010-01-01', 17436, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Top Tier Metal Buildings', 936, 'toptmetalbuildings@outlook.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'WAITING ON PERMITS', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(13, 'Richard Perez', '786-217-4656 ', 'jose1980ci@gmail.com', '2201 Powdersville Rd', 'Easley', 'SC', '29642', 'Commercial Buildings - 50 x 90 x 13 ', 'Jose Luis', 'Edgar', 101977.2, 0, 21578.7, 'Wire Transfer', '2023-02-02', 2010, 'NA', '2010-01-01', 80398.5, 'No', 'No', 'No', '2023-02-01', '2010-01-01', '2010-01-01', '0', 'QTE-006191 ', 'ODR-000181', 'INV-000083 ', '13', '0', 'Yes', '2010-01-01', 'Edgar', '2023-02-07', 'Elk Superior Buildings', 336, 'elksuperiorbuilding@gmail.com', 'Pending Install', '2023-08-25', '0', '0', '-', '-', 'possible of the Augs 21 of that work', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(14, 'Eddie Bynum', '817-564-3743 ', 'eddie_bynum@yahoo.com', '929 Crystal Lane', 'Crowley', 'TX', '76036', 'Triple Wide Garages  - 30 x 40 x 14 ', NULL, NULL, 20379.6, 16983, 3396.6, 'Stripe', '2023-02-21', 2010, 'NA', '2010-01-01', 16983, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(15, 'Tracey Desking', '304-923-3568 ', 'ttdeskins@hotmail.com', '107 Sour St', 'Beckley', 'WV', '25801', 'Down Payment for Steel Building', NULL, NULL, 15871.2, 0, 2645.2, 'Stripe', '2023-03-06', 2010, 'NA', '2010-01-01', 13226, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Elk Superior Buildings', 336, 'elksuperiorbuilding@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(16, 'Norberto Torres ', '772206-6787 ', 'cienxcientofree@yahoo.com', '1775 45nd Ave', 'Vero Beach', 'FL ', '32960', 'Down Payment for Steel Building', NULL, NULL, 6607.96, 0, 861.91, 'Stripe', '2023-03-10', 2010, 'NA', '2010-01-01', 5746.05, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(17, 'Douglas Zamora', '323 891-9074 ', 'josezamore1980@gmail.com', '35720 Buckhaven Rd', 'Green', 'CA', '91390', 'Down Payment for Steel Building', NULL, NULL, 33482.69, 0, 5580.45, 'Stripe', '2023-03-22', 2010, 'NA', '2010-01-01', 27902.24, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'ON HOLD', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(18, 'Marc Metz ', '618600-4647', 'metz6515@gmail.com', '495 Overlook Drive ', 'Edwardsville', 'IL', '62025', 'Down Payment for Steel Building', NULL, NULL, 18603.63, 0, 2927.4, 'Stripe', '2023-03-23', 2010, 'NA', '2010-01-01', 15676.23, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'US Steel Buildings', 662, 'crystal@us-steelbuildings.net', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(19, 'Bryan Pence ', '937269-3130', 'bphd63@gmail.com', '4564 Sulphur Springs Rd ', 'Brookville', 'OH', '45309', 'Down Payment for Steel Building', NULL, NULL, 31203.97, 0, 4894.74, 'Stripe', '2023-03-27', 2010, 'NA', '2010-01-01', 26309.23, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Super Metal Structures', 833, 'supermetalstructures0@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(20, 'Jeffrey Meurer ', '352302-5555 ', 'thefordman@bellsouth.net', '1000 Wildwood Ct', 'Lawrenceburg', 'KY', '40342', 'Down Payment for Steel Building', NULL, NULL, 88105.7, 0, 20000, 'Wire Transfer', '2023-04-03', 2010, 'NA', '2010-01-01', 68105.7, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(21, 'Barry Greer', '561441-2074', 'barry@silkroadwines.com', '4780 Old Huston Rd', 'Conroe', 'TX', '77302', 'Down Payment for Steel Building', NULL, NULL, 160294.2, 0, 53411.4, 'Wire Transfer', '2023-05-16', 2010, 'NA', '2010-01-01', 106882.8, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(22, 'Mike And Marion Waters', '941-915-5217 ', 'oceanhunter1@yahoo.com', '3348 Alamo Ln', 'Sarasota', 'FL', '34235', 'Down Payment for Steel Building', NULL, NULL, 63881.82, 0, 20000, 'Check', '2023-04-03', 2010, 'NA', '2010-01-01', 43881.82, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(23, 'Frank Gugliotta ', '417861-5483', 'gugconstruction@gmail.com', '1875 S Farm Rd 87', 'Springfield', 'MO', '65802', 'Down Payment for Steel Building', NULL, NULL, 23246.4, 0, 3874.4, 'Check', '2023-03-30', 2010, 'NA', '2010-01-01', 19372, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'US Steel Buildings', 662, 'crystal@us-steelbuildings.net', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(24, 'Curtis Fulghum', '910-723-9415 ', 'cwfulghum@yahoo.com', '2581 Waterscape Dr SW', 'Supply', 'NC', '28462', 'Down Payment for Steel Building', NULL, NULL, 22732.52, 0, 3788.75, 'Stripe', '2023-04-10', 2010, 'NA', '2010-01-01', 18943.77, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Super Metal Structures', 833, 'supermetalstructures0@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'PENDING 8/14/23', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(25, 'Adam Parrish', '703-963-1170 ', 'itsajeepthingtj@gmail.com', '123 Address', 'Stafford', 'VA', '22554', 'Down Payment for Steel Building', NULL, NULL, 76738.68, 0, 25579.56, 'Stripe', '2023-04-05', 2010, 'NA', '2010-01-01', 51159.12, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Elk Superior Buildings', 336, 'elksuperiorbuilding@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(26, 'Matthew Collier ', '239-465-5064 ', 'matthewwcollier@hotmail.com', '460 5th St. SW', 'Naples', 'FL', '34117', 'Down Payment for Steel Building', NULL, NULL, 23529.3, 0, 4398, 'Wire Transfer', '2022-12-13', 2010, 'NA', '2010-01-01', 19131.3, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'Pending Confirmation', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(27, 'Rick Wilson ', '214-837-6702', 'rick_wilson@neimanmarcus.com', '349 Willow Dr', 'Willis Point', 'TX', '75169', 'Down Payment for Steel Building', NULL, NULL, 18680.64, 0, 3113.44, 'Stripe', '2023-02-24', 2010, 'NA', '2010-01-01', 15567.2, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Top Tier Metal Buildings', 936, 'toptmetalbuildings@outlook.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'Pending for Colors', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(28, 'Michael Gardner ', '555 555-5555', 'mkgman69.mg@gmail.com', '123 Address', 'City', 'NA', '99999', ' Paid Engineer Stamped Plan 450 ', NULL, NULL, 0, 0, 0, 'Stripe', '2010-01-01', 2010, 'NA', '2010-01-01', 0, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Plans', '2010-01-01', '0', '0', 'pi_3Km3ivBPmiVxRVUJ0UIptK1k', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(29, 'Henry Gerdes', '217-556-6272', 'henrygerdes@icloud.com', '3417 15th Ave', 'Litchfield', 'IL', '62056', 'Down Payment for Steel Building', NULL, NULL, 24790.09, 0, 4131.69, 'Wire Transfer', '2023-04-17', 2010, 'NA', '2010-01-01', 20658.4, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'US Steel Buildings', 662, 'crystal@us-steelbuildings.net', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(30, 'Jeff Higman', '417-861-5483', 'gugconstruction@gmail.com', '1875 S Farm Rd 87', 'Springfield', 'MO', '65802', 'Down Payment for Steel Building', NULL, NULL, 23246.4, 0, 3874.4, 'Check', '2023-03-30', 2010, 'NA', '2010-01-01', 19372, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'US Steel Buildings', 662, 'crystal@us-steelbuildings.net', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(31, 'JUAN SOTELO', '818-212-0338', 'genesiss2122@yahoo.com', '9870 W8', 'Pearblossom', 'CA', '79705', 'Down Payment for Steel Building', NULL, NULL, 11230.9, 0, 1464.9, 'Stripe', '2023-04-21', 2010, 'NA', '2010-01-01', 9766, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'Enterprise Steel Structures', 559, 'orders@enterprisesteel.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(32, 'David Naskrent', '847-489-6060', 'david@hempshire.pro', '1368 Commercial Ave', 'Crystal Falls', 'MI', '49920', ' Deluxe Commercial Buildings - 40 x 60 x 14', 'Ivan', 'Nick', 50470.11, 47613.3, 11903.33, 'Stripe', '2023-05-08', 2010, 'NA', '2010-01-01', 38566.78, 'No', 'No', 'No', '2010-01-01', '2010-01-01', '2010-01-01', '0', 'QTE-000000', 'ODR-000000', 'INV-000000', '0', '0', 'No', '2010-01-01', 'Alan Reyes', '2010-01-01', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(33, 'Geovany Silva', '954-708-9306', 'excellwoodwork@gmail.com', '15418 NW 308th St', 'Yeehaw Junction', 'FL', '34972', 'Down Payment for Steel Building', 'Ivan', 'Alan', 12646.2, 0, 2529.24, 'Check', '2023-05-09', 2010, 'NA', '2010-01-01', 11065.42, 'No', 'No', 'No', '2023-04-01', '2010-01-01', '2010-01-01', '0', 'QTE-021333', 'ODR-000525', 'INV-000000', '17', '3', 'No', '2010-01-01', 'Lion Buildings', '2023-06-08', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(34, 'Stanley Phillips', '601 946 - 9629', 'boggy13@bellsouth.net', '441 Garth Farm Rd', 'Brandon', 'MS', '39042', 'Triple Wide Garages - 26 x 35 x 12', 'Santiago', NULL, 20550.72, 0, 19206.28, 'Wire Transfer', '2023-05-15', 2010, 'NA', '2010-01-01', 1344.44, 'No', 'No', 'No', '2023-02-01', '2010-01-01', '2010-01-01', '0', 'QTE-021958', 'ODR-000574', 'INV-000183', '15', '0', 'No', '2010-01-01', 'Alan Reyes', '2010-01-01', 'US Steel Buildings', 662, 'crystal@us-steelbuildings.net', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(35, 'David McKenzie', '601 479 - 8696', 'davidmckenzie74@gmail.com', '1299 County Rd 125', 'Quitman', 'MS', '39355', 'Down Payment for Steel Building', 'Jose Luis', NULL, 10164.75, 0, 1899.95, 'Stripe', '2023-05-17', 2010, 'NA', '2010-01-01', 8264.8, 'No', 'No', 'No', '2023-02-14', '2010-01-01', '2010-01-01', '0', 'QTE-020930', 'ODR-000582', 'INV-000187', '0', '0', 'No', '2010-01-01', NULL, '2023-06-09', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(36, 'James Tucker Jr', '309 229 - 6856', 'jamestucker67@live.com', '675 Falls Rd', 'Monterey', 'TN', '38574', 'Down Payment for Steel Building', NULL, NULL, 24450.66, 0, 4075.11, 'Stripe', '2023-05-26', 2010, 'NA', '2010-01-01', 20375.55, 'No', 'No', 'No', '2023-02-22', '2010-01-01', '2010-01-01', '0', 'QTE-014648', 'ODR-000600', 'INV-000203', '2', '22', 'No', '2010-01-01', NULL, '2023-06-13', 'Universal Metal Structures', 844, 'orders.universalmetalsales@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'approx in 2 or 3 weeks. weather permitting', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(37, 'Thomas Kloiber', '913 223-6251', 'Lv2ridecitw@yahoo.com', '926 Caligula SE Palm Bay', 'Melborne', 'FL', '32909', 'Triple Wide Garages - 30 x 30 x 12', 'Santiago', 'Santiago', 13050.8, 0, 2693.48, 'Stripe', '2023-05-26', 2010, 'NA', '2010-01-01', 11354.2, 'No', 'No', 'No', '2023-03-03', '2010-01-01', '2010-01-01', '0', 'QTE-024191', 'ODR-000603', 'INV-000204', '22', '3', 'No', '2010-01-01', 'Alejandro Aguilar', '2023-06-08', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'after the 26 of june? ', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(38, 'Nick Chivily', '804 502 - 2776', 'crosstrailsllc@gmail.com', '909 Natchburg Rd', 'Milton', 'NC', '27305', '5519.9', 'Hugo Cesar', 'Rudy', 827.99, 0, 827.99, 'Cash', '2023-05-26', 2010, 'NA', '2010-01-01', 0, 'No', 'No', 'No', '2023-03-26', '2010-01-01', '2010-01-01', '0', 'QTE-023696', 'ODR-000604', 'INV-000205', '52', '0', 'No', '2010-01-01', 'edgar', '2023-05-30', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', 'Stripe/pending', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(39, 'Ruben Sandoval', '863 612 - 6258', 'rubesandoval19@yahoo.com', '8269 Larrimore Ave', 'North Port', 'FL', '34291', 'Down Payment for Steel Building', 'Jose Luis', 'Alan', 21500.95, 0, 4300.19, 'Stripe', '2023-05-26', 2010, 'NA', '2010-01-01', 18705.83, 'No', 'No', 'No', '2023-05-26', '2010-01-01', '2010-01-01', '0', 'QTE-024238', 'ODR-000606', 'INV-000206', '8', '2', 'No', '2010-01-01', NULL, '2023-06-08', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(40, 'Troy Pratte', '573 747 - 9178', 'troypratte@gmail.com', '1990 Madison 537', 'Fredericktown', 'MO', '63645', 'Down Payment for Steel Building', 'Nestor', 'Nick', 17997.67, 0, 3599.53, 'Stripe', '2023-05-31', 2010, 'NA', '2010-01-01', 15449.2, 'No', 'No', 'No', '2023-05-29', '2010-01-01', '2010-01-01', '0', 'QTE-024358', 'ODR-000612', 'INV-000213', '11', '1', 'No', '2010-01-01', NULL, '2023-06-09', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2023-08-15', '0', '0', '-', '-', 'Tuesday August 15 2023', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(41, 'Carlos Toledo', '312 834 - 9941', 'robertocarlistoledo@gmail.com', '1309 S Keeler', 'Chicago', 'IL', '60623', 'Down Payment for Steel Building', 'Jose Luis', 'Isela', 11656.8, 0, 1748.52, 'Stripe', '2023-05-30', 2010, 'NA', '2010-01-01', 11103.1, 'No', 'No', 'No', '2023-04-03', '2010-01-01', '2010-01-01', '0', 'QTE-026181', 'ODR-000613', 'INV-000211', '16', '1', 'No', '2010-01-01', 'Alan Reyes', '2010-01-01', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '2 MORE WEEKS', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(42, 'Ormabuk Motors LLC', '762 244 - 3105', 'ormabukmotors@gmail.com', '2802 E 5th Ave', 'Columbus', 'OH', '43219', 'Down Payment for Steel Building', 'Alex', 'Alex', 20932.87, 0, 4186.57, 'Stripe', '2023-05-30', 2010, 'NA', '2010-01-01', 16746.3, 'No', 'No', 'No', '2023-03-12', '2010-01-01', '2010-01-01', '0', 'QTE-023386', 'ODR-000591', 'INV-000215', '22', '14', 'No', '2010-01-01', 'Alan Reyes', '2010-01-01', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Plans', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(43, 'Ken Ken', '847 899 - 3826', 'kensubaru03@yahoo.com', '1152 Cary Rd', 'Algonquin', 'IL', '60102', 'Down Payment for Steel Building', 'Diego', 'Alan', 12873.73, 0, 1931.06, 'Stripe', '2023-05-31', 2010, 'NA', '2010-01-01', 11940.38, 'No', 'No', 'No', '2023-05-04', '2010-01-01', '2010-01-01', '0', 'QTE-022134', 'ODR-000638', 'INV-000223', '0', '0', 'No', '2010-01-01', NULL, '2023-06-09', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(44, 'Cruz Ochoa', '620 675-0202', 'cruzochoa10768@gmail.com', 'Sunset st. Lot 4', 'Ulysses', 'KS', '67880', 'Commercial Buildings - 40 x 80 x 16', 'Edgar', 'Nick', 50017.18, 0, 23049.39, 'Stripe', '2023-05-30', 2010, 'NA', '2010-01-01', 26967.79, 'No', 'No', 'No', '2023-06-09', '2010-01-01', '2010-01-01', '0', 'QTE-024303', 'ODR-000609', 'INV-000214', '29', '2', 'No', '2010-01-01', 'Isela Boyzo', '2023-06-09', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'changing the order', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(45, 'Jeffrey Colby', '804 349-5022', '71colby@gmail.com', '598 Ebony Rd', 'Littleton', 'NC', '27850', 'Triple Wide Garages - 30 x 40 x 12', 'Santiago', 'Rudy', 16557.28, 0, 3311.46, 'Stripe', '2023-05-31', 2010, 'NA', '2010-01-01', 14404.83, 'No', 'No', 'No', '2023-06-07', '2010-01-01', '2010-01-01', '0', 'QTE-025070', 'ODR-000644', 'INV-000228', '15', '2', 'No', '2010-01-01', NULL, '2023-06-09', 'NC Steel Buildings', 833, 'ncsteelbuildings21@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(46, 'Phil Iseman', '419 564-6307', 'philiseman70@gmail.com', '1413 Beal Rd', 'Mansfield', 'OH', '44903', 'Triple Wide Garages - 30 x 50 x 12', 'Santiago', 'Nick', 15720.01, 15720.01, 3144, 'Stripe', '2023-08-05', 2010, 'NA', '2010-01-01', 12576.01, 'No', 'No', 'No', '2023-03-19', '2010-01-01', '2010-01-01', '0', 'QTE-025094', 'ODR-000650', 'INV-000231-000383', '0', '0', 'No', '2010-01-01', 'Jasmine Torres', '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(47, 'Marcelino Perez', '773 851-6397', 'loteriajamay@gmail.com', '2004 W. Eagle Lake Rd', 'Beecher', 'IL', '60401', 'Commercial Buildings - 50 x 100 x 16', 'Santiago', 'Edgar', 70273.98, 0, 12864.8, 'Stripe', '2023-05-31', 2010, 'NA', '2010-01-01', 57409.18, 'No', 'No', 'No', '2023-05-22', '2010-01-01', '2010-01-01', '0', 'QTE-024944', 'ODR-000611', 'INV-000240', '1', '1', 'No', '2010-01-01', NULL, '2023-06-09', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(48, 'Rusty David', '706 338 - 0648', 'rdoc2000@aol.com', '501 cooper farm rd Nicholson Georgia 30565', 'Nicholson', 'GA', '30565', 'Commercial Buildings - 40 x 80 x 18', 'Ivan', 'Alan', 74683.75, 0, 18670.69, 'Stripe', '2023-05-31', 2010, 'NA', '2010-01-01', 56013.06, 'No', 'No', 'No', '2023-05-31', '2010-01-01', '2010-01-01', '0', 'QTE-024997', 'ODR-000631', 'INV-000226', '15', '1', 'Yes', '2010-01-01', 'Alejandro Aguilar', '2023-06-08', 'Real Steel Buildings Georgia', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(49, 'Ted Ginn', '706 888-1564', 'Ted.ginn@prattwhitney.com', '1197 Ginn Road Ellerslie', 'Ellerslie Harris', 'GA', '31807', 'Triple Wide Garages - 30 x 50 x 12', 'Ivan', 'Alan', 20222.28, 0, 5871.08, 'Stripe', '2023-06-02', 2010, 'NA', '2010-01-01', 14351.2, 'No', 'No', 'No', '2023-05-31', '2010-01-01', '2010-01-01', '0', 'QTE-025003', 'ODR-000633', 'INV-000242', '6', '0', 'No', '2010-01-01', 'Jasmine Torres', '2023-06-08', 'Real Steel Buildings Georgia', 0, '-', 'Pending Install', '2023-07-11', '0', '0', '-', '-', '7 to 11 July 2023', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(50, 'Dick Harris', '615 971-6496', 'richardaharris23@gmail.com', '2937 Arthur Dr', 'Murfreesboro', 'TN', '37127', 'Standard Garages  - 24 x 30 x 9', 'Ivan', NULL, 12072.08, 0, 2199.92, 'Stripe', '2023-06-11', 2010, 'NA', '2010-01-01', 9872.16, 'No', 'No', 'No', '2023-04-01', '2010-01-01', '2010-01-01', '0', 'QTE-026082', 'ODR-000663', 'INV-000247', '4', '4', 'No', '2010-01-01', 'Nestor Valladares', '2010-01-01', 'Carlitos New Era Structures', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(51, 'David crowell', '618 520-9754', 'dacrowell62035@yahoo.com', '262 State Rte 13', 'Marissa', 'IL', '62257', 'Standard Garages - 24 x 25 x 12', 'Santiago', 'Rudy', 4894.42, 0, 598.52, 'Stripe', '2023-06-09', 2010, 'NA', '2010-01-01', 4295.9, 'No', 'No', 'No', '2023-03-09', '2010-01-01', '2010-01-01', '0', 'QTE-025126', 'ODR-000652', 'INV-000235', '4', '1', 'No', '2010-01-01', 'Jasmine Torres', '2023-06-09', 'Carlitos New Era Structures', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(52, 'Raidel La O', '786 290-5605', 'rlao1972@yahoo.es', '30505 SW 202 Ave', 'Miami Dade', 'FL', '33030', 'Commercial Buildings - 60 x 120 x 18', 'Edgar', 'Rudy', 0, 0, 37245.6, 'Wire Transfer', '2023-06-14', 2010, 'NA', '2010-01-01', 86906.4, 'No', 'No', 'No', '2023-05-02', '2010-01-01', '2010-01-01', '0', 'QTE-023948', 'ODR-000594', 'INV-000249', '24', '0', 'Yes', '2010-01-01', 'Rodolfo Gutierrez', '2023-06-15', 'Real Steel Buildings Georgia', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(53, 'Charles Grimmett', '206 619-6419', 'cgrimmett@gmail.com', '122 Kem Ln', 'Mt Holly', 'NC', '28120', 'Standard Garages - 18 x 20 x 10', 'Jose Luis', 'Nick', 7026.22, 6551.25, 982.69, 'Cash', '2023-06-28', 2010, 'NA', '2010-01-01', 6043.53, 'No', 'No', 'No', '2023-03-05', '2010-01-01', '2010-01-01', '0', 'QTE-028836', 'ODR-000690', 'INV-000260', '3', '1', 'No', '2010-01-01', 'Alejandro Aguilar', '2023-07-06', 'Elk Superior Buildings', 336, 'elksuperiorbuilding@gmail.com', 'Pending Install', '2023-08-11', '0', '0', '-', '-', 'Friday August 11 2023', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(54, 'Harry Romell', '419 905-1996', 'hpromell@gmail.com', '149 N Main St 197', 'Lima', 'OH', '45850', 'Standard Carports - 24 x 30 x 12', 'Sergio', NULL, 19041.03, 17820.43, 3564, 'Credit Note', '2023-06-30', 2010, 'NA', '2010-01-01', 15477.03, 'No', 'No', 'No', '2023-05-10', '2010-01-01', '2010-01-01', '0', 'QTE-029455', 'ODR-000698', 'INV-000261', '2', '0', 'Yes', '2010-01-01', 'Sergio Rubio', '2023-07-06', 'Carlitos New Era Structures', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(55, 'Robert Brower', '843 575-5139', 'bobbrower@earthlink.net', '12 Chaplin Dr', 'St Helena Island', 'SC', '29920', 'SPECIAL PROMO 30 x 30 x 12', 'Jose Luis', 'Nick', 13271.34, 12403.12, 2480.62, 'Stripe', '2023-06-29', 2010, 'NA', '2010-01-01', 10790.72, 'No', 'No', 'No', '2023-06-12', '2010-01-01', '2010-01-01', '0', 'QTE-028886', 'ODR-000701', 'INV-000263', '4', '1', 'No', '2010-01-01', 'Alejandro Aguilar', '2023-07-06', 'Elk Superior Buildings', 336, 'elksuperiorbuilding@gmail.com', 'Pending Install', '2023-08-17', '0', '0', '-', '-', 'Thursday August 17 2023', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(56, 'Shannon Wright', '606 454-3225', 'l.rose@wrightconcrete.com', '474 S Mayo Trail', 'Pikeville', 'KY', '41501', 'Commercial Buildings - 45 x 60 x 18', 'Ivan', 'Rudy', 45545.55, 42967.5, 21483.75, 'Wire Transfer', '2023-06-29', 2010, 'NA', '2010-01-01', 24061.8, 'No', 'No', 'No', '2023-03-04', '2010-01-01', '2010-01-01', '0', 'QTE-029360', 'ODR-000695', 'INV-000262', '0', '1', 'Yes', '2010-01-01', 'Alejandro Aguilar', '2023-07-06', 'Carlitos New Era Structures', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(57, 'Sergio Hernandez', '317 514-0089', 'naherinc2433@gmail.com', '2419 Massachusetts Ave', 'Indianapolis', 'IN', '46218', 'Triple Wide Garages - 30 x 70 x 12', 'Daniel', 'Isela', 24365.51, 22771.5, 4554.3, 'Stripe', '2023-06-30', 2010, 'NA', '2010-01-01', 19811.21, 'No', 'No', 'No', '2023-03-24', '2010-01-01', '2010-01-01', '0', 'QTE-013937', 'ODR-000435', 'INV-000265', '11', '1', 'Yes', '2010-01-01', 'Alejandro Aguilar', '2023-07-06', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(58, 'Larry Severson', '507 521-2912', 'lseve123@gmail.com', '603 Main st South', 'Clinton', 'MO', '64735', 'Standard Garages - 24 x 30 x 9', 'Santiago', 'Nick', 11646.22, 10766.59, 1614.99, 'Stripe', '2023-07-04', 2010, 'NA', '2010-01-01', 10031.23, 'No', 'No', 'No', '2023-03-14', '2010-01-01', '2010-01-01', '0', 'QTE-022356', 'ODR-000712', 'INV-000270', '5', '1', 'Yes', '2010-01-01', 'Alejandro Aguilar', '2023-07-04', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2023-08-17', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(59, 'Charles Waller', '585 355-2883', 'Cjw0217@aol.com', '5101 Tillman Rd', 'Ridgeland', 'SC', '29936', 'Standard Garages - 20 x 20 x 9', 'Jose Luis', 'Frank', 6658.2, 6165, 924.75, 'Stripe', '2023-07-04', 2010, 'NA', '2010-01-01', 5733.45, 'No', 'No', 'No', '2023-06-26', '2010-01-01', '2010-01-01', '0', 'QTE-030248', 'ODR-000714', 'INV-000271', '2', '1', 'No', '2010-01-01', 'Alejandro Aguilar', '2023-07-06', 'Elk Superior Buildings', 336, 'elksuperiorbuilding@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'ON HOLD', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(60, 'Doel Martinez', '240 246-5800', 'doel3780@yahoo.com', '3545 Hope land Road', 'Frederick', 'MD', '21704', 'Triple Wide Garages - 28 x 45 x 10', 'Santiago', 'Moises', 15025.5, 14175, 2835, 'Stripe', '2023-07-05', 2010, 'NA', '2010-01-01', 12190.5, 'No', 'No', 'No', '2023-04-18', '2010-01-01', '2010-01-01', '0', 'QTE-030592', 'ODR-000723', 'INV-000274', '2', '1', 'No', '2010-01-01', 'Isela', '2023-07-21', 'Super Metal Structures', 833, 'supermetalstructures0@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(61, 'Carlos Calzadillaz', '719 252-6108', 'carloscalzadillaz2017@gmail.com', '207 S Clarion Ct', 'Pueblo West', 'CO', '81007', 'Standard Garages - 24 x 30 x 9', 'Sergio', 'Frank', 14563.37, 13752, 2475.36, 'Stripe', '2023-07-06', 2010, 'NA', '2010-01-01', 12088.01, 'No', 'No', 'No', '2023-06-27', '2010-01-01', '2010-01-01', '0', 'QTE-030760', 'ODR-000730', 'INV-000277', '5', '1', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'ON HOLD', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(62, 'Jason Kinney', ' 918 619-5563', 'n5zzyjk@gmail.com', '505 South Front street', 'Catoosa', 'Ok', '74015', 'Commercial Buildings - 40 x 100 x 14', 'Diego', 'Frank', 71741.56, 64995.07, 12999.01, 'Stripe', '2023-07-06', 2010, 'NA', '2010-01-01', 58742.55, 'No', 'No', 'No', '2023-04-06', '2010-01-01', '2010-01-01', '0', 'QTE-030943', 'ODR-000737', 'INV-000280', '2', '0', 'No', '2010-01-01', NULL, '2023-07-14', 'Deer Buildings and Carports', 936, 'deerbuildingsandcarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(63, 'Ronnie Bland ', '252 287-0586', ' Plo122908@hotmail.com', '10366 US HWY 158', 'Conway Northampton', 'NC', '27876', 'Special Promo 30 x 40 x 9', 'Santiago', 'Moises', 12873.49, 12144.8, 2428.96, 'Stripe', '2023-07-06', 2010, 'NA', '2010-01-01', 10444.53, 'No', 'No', 'No', '2022-12-20', '2010-01-01', '2010-01-01', '0', 'QTE-030942', 'ODR-000736', 'INV-000281', '3', '1', 'No', '2010-01-01', NULL, '2023-07-21', 'Super Metal Structures', 833, 'supermetalstructures0@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(64, 'Koby L Singletary ', '713 240-7864', 'Koby@GranitiVicentia.com', '10047 Hardison Lane', 'Houston Harris', 'TX', '77041', 'Standard Garages  - 24 x 25 x 9', 'Diego', 'Moises', 11790.12, 10993.12, 1648.97, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 10141.15, 'No', 'No', 'No', '2023-06-18', '2010-01-01', '2010-01-01', '0', 'QTE-030649', 'ODR-000726', 'INV-000283', '6', '1', 'No', '2010-01-01', NULL, '2023-07-14', 'Deer Buildings and Carports', 936, 'deerbuildingsandcarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(65, 'Phillip Robbins ', '252 363-5401', 'gunsdell@gmail.com', '7134 Landrush Rd', 'Sims Wilson', 'NC', '27880', 'Triple Wide Garages - 28 x 45 x 14', 'Ivan', 'Moises', 21154.65, 19817, 3963.4, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 17191.25, 'No', 'No', 'No', '2023-06-19', '2010-01-01', '2010-01-01', '0', 'QTE-030628', 'ODR-000725', 'INV-000284', '5', '1', 'No', '2010-01-01', 'jasmine', '2023-07-21', 'Super Metal Structures', 833, 'supermetalstructures0@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(66, 'Yumond Edwards ', '256 534-4909', 'slickfinish321@yahoo.com', '3194 Old Railroad Bed Rd', 'Harvest', 'AL', '35749', 'Triple Wide Garages - 30 x 50 x 11', 'Jose Luis', 'Frank', 25739.91, 24398.02, 4879.6, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 20860.31, 'No', 'No', 'No', '2023-06-13', '2010-01-01', '2010-01-01', '0', 'QTE-031052', 'ODR-000742', 'INV-000285', '7', '1', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Drawings', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(67, 'Harold Moore ', '573 210-2014', 'moobigfoot18@aol.com', '704 Bonnie st', 'Potosi Washington', 'MO', '63664', 'Standard Garages - 24 x 30 x 9', 'Diego', 'Frank', 6612.24, 6081.89, 912.28, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 5699.96, 'No', 'No', 'No', '2023-05-01', '2010-01-01', '2010-01-01', '0', 'QTE-031084', 'ODR-000745', 'INV-000286', '15', '1', 'No', '2010-01-01', 'Alejandro Aguilar', '2023-07-14', 'Deer Buildings and Carports', 936, 'deerbuildingsandcarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(68, 'Donald Davis', '903 646-4453', 'donnied694@gmail.com', '23368 county rd 244', 'New London Rusk', 'TX', '75684', 'Commercial Buildings  - 40 x 80 x 12', 'Sergio', 'Nick', 43013.66, 40483.44, 1000, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 42013.66, 'No', 'No', 'No', '2023-07-04', '2010-01-01', '2010-01-01', '0', 'QTE-030485', 'ODR-000750', 'INV-000290', '2', '1', 'No', '2010-01-01', NULL, '2010-01-01', 'Deer Buildings and Carports', 936, 'deerbuildingsandcarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(69, 'Vinson Branford ', '706 975-6943', 'Vbranford@gmail.com', '615 County Rd.71', 'Waverly Hall', 'GA', '31831', 'Triple Wide Garages - 30 x 60 x 16', 'Ivan', 'Nick', 31546.91, 29483.1, 500, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 31046.91, 'No', 'No', 'No', '2023-05-25', '2010-01-01', '2010-01-01', '0', 'QTE-034513', 'ODR-000836', 'INV-000358', '5', '1', 'Yes', '2010-01-01', 'edgar', '2023-07-31', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(70, 'Neale Lydell Fahlsing ', '417 229-0543', 'nlfahlsing@gmail.com', '8705 ivy rd', 'Reeds Jasper', 'MO ', '64859', 'Triple Wide Garages - 30 x 50 x 11', 'Jose Luis', 'Rudy', 18995.22, 17986.19, 3597.24, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 15397.98, 'No', 'No', 'No', '2023-06-06', '2010-01-01', '2010-01-01', '0', 'QTE-026863', 'ODR-000752', 'INV-000295', '5', '1', 'No', '2010-01-01', 'Alejandro Aguilar', '2023-07-14', 'Deer Buildings and Carports', 936, 'deerbuildingsandcarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(71, 'Gilbert Sandoval ', '505 927-5628', 'zia4life@outlook.com', '123 Address', 'Española', 'NM', '87532', 'SPECIAL PROMO 30 x 60 x 12', 'Santiago', 'Edgar', 21886.42, 20527.5, 4105.5, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 1358.92, 'No', 'No', 'No', '2023-06-08', '2010-01-01', '2010-01-01', '0', 'QTE-029373', 'ODR-000756', 'INV-000296', '2', '1', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'ON HOLD ', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(72, 'Mark McDonald ', '703 927-1837', 'markmcdonald87@yahoo.com', '195 Honda Dr.', 'Gainesville Prince William', 'VA', '20155', 'Standard Garages - 24 x 30 x 14', 'Ivan', 'Moises', 29054.55, 27592.17, 5518.43, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 23536.12, 'No', 'No', 'No', '2023-06-19', '2010-01-01', '2010-01-01', '0', 'QTE-031024', 'ODR-000757', 'INV-000297', '2', '1', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'ON HOLD ', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(73, 'Brennan Shanks ', '603 252-8778', 'isend2c@gmail.com', '1406 E Avenue B', 'Killeen', 'TX', '76549', 'Standard Garages  - 24 x 40 x 11', 'Jose Luis', 'Nick', 15721.96, 14523.75, 500, 'Stripe', '2023-07-07', 1908, 'NA', '2010-01-01', 12284.21, 'No', 'No', 'No', '2023-04-03', '2010-01-01', '2010-01-01', '0', 'QTE-031088', 'ODR-000749', 'INV-000300', '6', '1', 'Yes', '2010-01-01', 'Diego ', '2023-07-26', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'NOT READY', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(74, 'Justin Joe Melton ', '731 225-7243', 'mmraceca@gmail.com', '3409 Gleason Como Rd', 'Gleason', 'TN', '38229', 'Commercial Buildings - 46 x 60 x 12', 'Edgar', 'Moises', 34001.48, 34001.48, 6800.3, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 27201.18, 'No', 'No', 'No', '2023-06-23', '2010-01-01', '2010-01-01', '0', 'QTE-031101', 'ODR-000753', 'INV-000302', '5', '2', 'No', '2010-01-01', 'Alejandro Aguilar', '2023-07-13', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'NOT READY', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(75, 'Edgar Hernandez ', '702 514-4228', 'esiairnheat@icloud.com', '123 Address', 'Las Vegas Clark', 'NV', '89110', 'SPECIAL PROMO 24 x 30 x 14', 'Santiago', 'Jose Luis', 34001.48, 34001.48, 3517.65, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 30483.83, 'No', 'No', 'No', '2023-05-07', '2010-01-01', '2010-01-01', '0', 'QTE-030982', 'ODR-000738', 'INV-000304', '3', '1', 'No', '2010-01-01', 'Edgar ', '2023-07-21', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'PENDING ON INSTALLERS END', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(76, 'Carlos Calzadillaz', '719 252-6108', 'carloscalzadillaz2017@gmail.com', '207 S Clarion Ct', 'Pueblo West', 'CO', '81007', 'Standing Lean-tos - 8 x 40 x 11', 'Sergio', 'Frank', 5574.35, 5180.62, 777.09, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 5574.35, 'No', 'No', 'No', '2023-06-27', '2010-01-01', '2010-01-01', '0', 'QTE-031062', 'ODR-000759', 'INV-000308', '10', '1', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'waiting on permits', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(77, 'Dillon Tommeraasen', '605 305-2424', 'Rhsroosevelt12@yahoo.com', '123 Address', 'Altus', 'OK', '73521', 'SPECIAL PROMO - 24 x 30 x 11', 'Santiago', 'Brandon', 11207.88, 10213.12, 2042.62, 'Stripe', '2023-07-07', 2010, 'NA', '2010-01-01', 9165.26, 'No', 'No', 'No', '2023-06-29', '2010-01-01', '2010-01-01', '0', 'QTE-031157', 'ODR-000760', 'INV-000307', '4', '1', 'No', '2010-01-01', NULL, '2023-07-14', 'Deer Buildings and Carports', 936, 'deerbuildingsandcarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(78, 'Greg Kasman', '317 560-3719 ', 'Gkasman@gmail.com', '7913 w 300n', 'Greenfield', 'IN        ', '46140', 'Triple Wide Garages - 26 x 40 x 12 ', 'Ivan', 'Moises', 18891.88, 17907, 3581.4, 'Stripe', '2023-07-08', 2010, 'NA', '2010-01-01', 15310.48, 'No', 'No', 'No', '2023-03-29', '2010-01-01', '2010-01-01', '0', 'QTE-031040', 'ODR-000743', 'INV-000310', '2', '1', 'No', '2010-01-01', 'Diego', '2023-07-29', 'US Steel Buildings', 662, 'crystal@us-steelbuildings.net', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'waiting on drawings', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'Yes '),
(79, 'Francisco J Dominguez Garcia ', '213 477-5023 ', 'pc_dominguez@yahoo.com', '123 Address', 'Kissimmee Osceola ', 'FL', '34746', 'Triple Wide Garages - 30 x 70 x 12 ', 'Ivan', 'Isela', 23062.78, 21453.75, 2145.37, 'Stripe', '2023-07-08', 2010, 'NA', '2010-01-01', 20917.41, 'No', 'No', 'No', '2023-07-04', '2010-01-01', '2010-01-01', '0', 'QTE-030564', 'ODR-000761', 'INV-000312', '2', '1', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'ON HOLD ', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(80, 'Rick Bolton', '816 238-5555 ', 'rickdbolton@yahoo.com', '2410 Meadow Ridge Dr', 'St Joseph Buchanan', 'MO', '64504', 'SPECIAL PROMO 24 x 25 x 10 ', 'Ivan', 'Joseph', 9074.52, 8310, 1495.8, 'Stripe', '2023-07-08', 2010, 'NA', '2010-01-01', 7578.72, 'No', 'No', 'No', '2023-05-20', '2010-01-01', '2010-01-01', '0', 'QTE-030902', 'ODR-000733', 'INV-000309', '2', '1', 'No', '2010-01-01', 'Diego', '2023-07-26', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'GETTING HIS PERMITS', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(81, 'Aramis Morales', ' 304 620-9689', ' aramismorales347@gmail.com', '109 Strong Lucas Ct', 'Gerrardstown Berkeley', 'WV', '25420', 'Standard Garages - 24 x 40 x 9', 'Jose Luis', 'Isela', 11841.52, 11171.25, 1675.69, 'Stripe', '2023-07-08', 2010, 'NA', '2010-01-01', 10165.83, 'No', 'No', 'No', '2023-06-26', '2010-01-01', '2010-01-01', '0', 'QTE-031133', 'ODR-000755', 'INV-000311', '4', '1', 'No', '2010-01-01', 'EDGAR', '2023-08-01', 'CandA Carports ', 336, 'salescna.nc@gmail.com', 'Pending Install', '2023-08-17', '0', '0', '-', '-', '2023-08-17', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(82, 'Elias Morales ', '708 655-7732', 'Ibarraclaudia64@yahoo.com', '30643 south Egyptian trail', 'Peotone', 'IL', '60468', 'Triple Wide Garages - 30 x 50 x 11', 'Sergio', 'Isela', 26105.88, 24398.02, 500, 'Stripe', '2023-07-10', 2010, 'NA', '2010-01-01', 25605.88, 'No', 'No', 'No', '2023-06-07', '2010-01-01', '2010-01-01', '0', 'QTE-029946', 'ODR-000758', 'INV-000313', '8', '1', 'No', '2010-01-01', NULL, '2023-07-13', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No');
INSERT INTO `installation` (`id`, `customer_name`, `customer_phone`, `customer_email`, `installation_address`, `city`, `state`, `zip_code`, `description`, `sales_owner`, `sales_caller`, `building_pi_taxes`, `price_no_taxes`, `downpayment`, `dp_method`, `dp_date`, `payment2`, `payment2_method`, `payment2_date`, `balance_du_installation`, `financed`, `financing_company`, `financing_other`, `added_lead`, `quoted`, `contract_signed`, `notes_sensei`, `quote_number`, `order_number`, `invoice_number`, `calls_before_payments`, `texts_before_payments`, `any_changes`, `order_confirmation`, `confirmation_agent`, `to_manufacturer`, `installation_company`, `manufacturer_number`, `manufacturer_email`, `installation_status`, `installation_date`, `days_customer`, `days_install`, `links_info`, `review_link`, `notes`, `register_created`, `hot_status`, `last_update`, `site_specifics`, `created_by`, `step_ordered`) VALUES
(83, 'Yumond Edwards ', '256 534-4909', 'slickfinish321@yahoo.com', '3194 Old Railroad Bed Rd', 'Harvest', 'AL', '35749', 'Triple Wide Garages - 30 x 50 x 11', 'Jose Luis', 'Frank', 25739.91, 24398.02, 860, 'Stripe', '2023-07-10', 2010, 'NA', '2010-01-01', 24879.91, 'No', 'No', 'No', '2023-06-13', '2010-01-01', '2010-01-01', '0', 'QTE-031052', 'ODR-000742', 'INV-000315', '12', '1', 'No', '2010-01-01', NULL, '2023-08-07', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'ON HOLD ', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(84, 'Donald Davis ', '903 646-4453', 'donnied694@gmail.com', '23368 county rd 244', 'New London Rusk', 'TX', '75684', 'Commercial Buildings  - 40 x 80 x 12', 'Sergio', 'Nick', 43013.66, 40483.44, 7096.69, 'check', '2023-07-10', 2010, 'NA', '2010-01-01', 35916.97, 'No', 'No', 'No', '2023-07-04', '2010-01-01', '2010-01-01', '0', 'QTE-030485', 'ODR-000750', 'INV-000316', '2', '1', 'No', '2010-01-01', NULL, '2023-07-14', 'Deer Buildings and Carports', 936, 'deerbuildingsandcarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(85, 'Joshua DeHart ', '951 840-6433 ', 'joshua@eldercreekranch.com', '53057 Elder Creek Rd', 'Aguanga', 'CA', '92536', 'SPECIAL PROMO - 24 x 50 x 14', 'Santiago', 'Moises', 43738.75, 41538.75, 8307.75, 'Wire Transfer', '2023-07-10', 2010, 'NA', '2010-01-01', 35431, 'No', 'No', 'No', '2023-01-23', '2010-01-01', '2010-01-01', '0', 'QTE-029512', 'ODR-000699', 'INV-000299', '1', '1', 'No', '2010-01-01', 'edgar', '2023-07-21', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(86, 'Jason Rucker', '407 970-2011', 'theruckers@cfl.rr.com', '257 Stewart st ', 'Geneva', 'FL', '32732', 'Triple Wide Garages - 30 x 40 x 12', 'Ivan', 'Edgar', 16621.14, 15533.77, 2942.25, 'Stripe', '2023-04-17', 1900, 'NA', '2010-01-01', 12798.78, 'No', 'No', 'No', '2023-03-27', '2010-01-01', '2010-01-01', '0', 'QTE-016971', 'ODR-000482', 'INV-000149', '1', '0', 'No', '2010-01-01', 'Diego', '2023-07-27', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(87, 'Michael Perrino', '630 643-0407', 'perrinofamily@hotmail.com', '1191 Naylor rd', 'Dixon', 'IL', '61021', 'Triple Wide Garages - 28 x 30 x 11', 'Ivan', 'Nick', 0, 0, 1016.84, 'Wire Transfer', '2010-01-01', 2010, 'NA', '2010-01-01', 13342.15, 'No', 'No', 'No', '2023-06-08', '2010-01-01', '2010-01-01', '0', 'QTE-030924 ', 'ODR-000734', 'INV-000282', '17', '16', 'Yes', '2010-01-01', 'Alejandro Aguilar', '2023-07-13', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(88, 'Jerome Hickman  ', '601 504-3917', 'jeromehickman82@yahoo.com', '4851 new hope rd', 'De Kalb', 'MS', '39328', 'Standard Garages - 24 x 30 x 9 ', 'Jose Luis', 'Nick', 10117.27, 9499.78, 1424.97, 'Stripe', '2023-07-14', 2010, 'NA', '2010-01-01', 8692.3, 'No', 'No', 'No', '2023-07-11', '2010-01-01', '2010-01-01', '0', 'QTE-031820', 'ODR-000770', 'INV-000325        ', '3', '3', 'No', '2010-01-01', NULL, '2010-01-01', 'US Steel Buildings', 662, 'crystal@us-steelbuildings.net', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(89, 'ROMEL MOREANO ', '201 220-2752', 'RMSV1978@YAHOO.COM', '86 Birch St', 'Old Bridge Middlesex', 'NJ', '8857', 'Revision 3 RV Covers - 20 x 30 x 15', 'Edgar', 'Nick', 16703.06, 15664.5, 2349.68, 'Stripe', '2023-07-18', 2010, 'NA', '2010-01-01', 14353.38, 'No', 'No', 'No', '2023-07-07', '2010-01-01', '2010-01-01', '0', 'QTE-031825', 'ODR-000773', 'INV-000327', '2', '1', 'No', '2010-01-01', NULL, '2023-07-21', 'Carlitos New Era Structures', 0, 'dealersorders0005@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(90, 'Nick Getzendanner ', '469 323-5295', 'nick@getzweb.us', '624 Dickens Dr', 'Aledo ', 'TX ', '76008', 'Standard Garages - 24 x 40 x 10', 'Edgar', 'Rudy', 18133.76, 18133.76, 3626.75, 'Stripe', '2023-07-17', 2010, 'NA', '2010-01-01', 14507.01, 'No', 'No', 'No', '2023-01-30', '2010-01-01', '2010-01-01', '0', 'QTE-031623 ', 'ODR-000771', 'INV-000326', '14', '1', 'No', '2010-01-01', 'Diego', '2023-07-26', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2023-08-15', '0', '0', '-', '-', '2023-08-15', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(91, 'KENNETT THOMAS ', '336 540-4337', 'kenneththomas61@icloud.com', '3018 Karlingdale Dr', 'Greensboro', 'NC', '27455', 'Standard Garages - 17 x 20 x 10', 'Ivan', 'Frank', 6248.88, 5853.75, 878.06, 'Stripe', '2023-07-19', 2010, 'NA', '2010-01-01', 5370.82, 'No', 'No', 'No', '2023-06-26', '2010-01-01', '2010-01-01', '0', 'QTE-032287', 'ODR-000780', 'INV-000328', '10', '1', 'No', '2010-01-01', 'Edgar ', '2023-08-01', 'CandA Carports ', 336, 'salescna.nc@gmail.com', 'Pending Install', '2023-08-14', '0', '0', '-', '-', '2023-08-14', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(92, 'Robert Roohms ', '316 215-2022', 'roohmsracing@gmail.com', '61 N E 10th', 'St john', 'KS', '67576', 'Triple Wide Carports  - 30 x 24 x 14', 'Jose Luis', NULL, 6320.4, 6320.4, 948.06, 'Stripe', '2023-07-20', 2010, 'NA', '2010-01-01', 5372.34, 'No', 'No', 'No', '2023-07-18', '2010-01-01', '2010-01-01', '0', 'QTE-032937', 'ODR-000782', 'INV-000330', '0', '0', 'No', '2010-01-01', 'Diego', '2023-07-26', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(93, 'Lee Lee Thorn', '256 577-0021', 'thornjames72@icloud.com', '3487 mulberry lane', 'Cherokee', 'AL', '35616', 'BLAZING HOT Garages - 30 x 80 x 14', 'Santiago', 'Calderon', 35003.79, 32261.56, 6452.31, 'Stripe', '2023-07-24', 2010, 'NA', '2010-01-01', 28551.48, 'No', 'No', 'No', '2023-07-19', '2010-01-01', '2010-01-01', '0', 'QTE-033386', 'ODR-000794', 'INV-000335', '5', '1', 'No', '2010-01-01', 'Diego', '2023-07-27', 'Elk Superior Buildings', 336, 'elksuperiorbuilding@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(94, 'Cheryl Schultz ', '505 920-0733', 'wheeler8958@gmail.com', '28A AVENIDA DE MOLINO', 'Española', 'NM', '87532', 'Triple Wide Garages - 30 x 80 x 12', 'Edgar', 'Rudy', 32651.16, 30007.5, 6001.5, 'Stripe', '2023-07-24', 2010, 'NA', '2010-01-01', 29002.29, 'No', 'No', 'No', '2023-01-20', '2010-01-01', '2010-01-01', '0', 'QTE-032545 ', 'ODR-000779', 'INV-000332', '5', '4', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'ON HOLD', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(95, 'Richard Arnold', '352 573-8172', 'ricksgames7788@gmail.com', '5716 South 5 Way', 'Homosassa Springs Citrus ', 'FL', '34446', ' Blazing Hot Sale - Standard - 24 x 30 x 9', 'Diego', 'Nick', 9743.24, 9743.24, 1461.49, 'Stripe', '2023-07-26', 2010, 'NA', '2010-01-01', 8915.06, 'No', 'No', 'No', '2023-07-11', '2010-01-01', '2010-01-01', '0', 'QTE-032020', 'ODR-000798', 'INV-000337', '2', '0', 'Yes', '2010-01-01', 'Jasmine', '2023-07-17', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(96, 'Francisco Perez', '979-900-4827', 'Jimador3870@gmail.com', '326 Country Rd 727 a', 'Angleton', 'TX', '77515', 'blazing hot sale  - 30 x 40 x 12', 'Ivan', 'Frank', 15426.27, 14812.2, 2962.44, 'Stripe', '2023-08-04', 2010, 'NA', '2010-01-01', 13071.76, 'No', 'No', 'No', '2023-07-25', '2010-01-01', '2010-01-01', '0', 'QTE-033741', 'ODR-000800', 'INV-000338-000382', '4', '1', 'No', '2010-01-01', 'Jasmine', '2023-07-28', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(97, 'Michael Berlin', '310 547-7507 ', 'michaelberlin4u@gmail.com', '18177 Larue Rd ', 'Vancleave', 'MS', '39565', 'Standard - 24 x 25 x 10', 'Diego', 'Joseph', 12998.33, 12147.97, 1822.2, 'Stripe', '2023-07-26', 2010, 'NA', '2010-01-01', 11176.13, 'No', 'No', 'No', '2023-02-10', '2010-01-01', '2010-01-01', '0', 'QTE-033782', 'ODR-000799', 'INV-000339', '1', '0', 'No', '2010-01-01', 'Jasmine', '2023-07-27', 'US Steel Buildings', 662, 'crystal@us-steelbuildings.net', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(98, 'Rick Smock', '309 846-0679', 'crsmock@hotmail.com', '10865 Lake Road', 'De Witt', 'IL', '61735', 'Triple Wide Garages - 30 x 50 x 12', 'Ivan', 'Frank', 18994.95, 17877.6, 3575.52, 'Stripe', '2023-07-27', 2010, 'NA', '2010-01-01', 15419.43, 'No', 'No', 'No', '2023-07-03', '2010-01-01', '2010-01-01', '0', 'QTE-034025', 'ODR-000804', 'INV-000340', '1', '1', 'No', '2010-01-01', 'Jasmine', '2023-08-04', 'US Steel Buildings', 662, 'crystal@us-steelbuildings.net', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(99, 'James Jacobs', '407 408-3412', 'bub121972@aol.com', '1701 old 100 rd', 'Geneva', 'FL', '32732', 'Standard Garages - 20 x 30 x 12', 'Ivan', 'Calderon', 12138.29, 11344.2, 2268.84, 'Stripe', '2023-07-28', 2010, 'NA', '2010-01-01', 9869.45, 'No', 'No', 'No', '2023-03-08', '2010-01-01', '2010-01-01', '0', 'QTE-034177', 'ODR-000811', 'INV-000341', '4', '1', 'No', '2010-01-01', 'Jasmine', '2023-08-05', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(100, 'Hugo Garcia', '470 772-6067', 'garciahugof79@gmail.com', '3948 Carter Dr NW', 'Lilburn Gwinnett', 'GA', '30047', 'Standard Garages - 20 x 20 x 9', 'Ivan', 'Isela', 7135.92, 6732, 1009.8, 'Stripe', '2023-07-28', 2010, 'NA', '2010-01-01', 6126.12, 'No', 'No', 'No', '2023-07-19', '2010-01-01', '2010-01-01', '0', 'QTE-034201', 'ODR-000814', 'INV-000345', '2', '1', 'No', '2010-01-01', 'Jasmine', '2023-08-04', 'US Steel Buildings', 662, 'crystal@us-steelbuildings.net', 'Pending Install', '2023-08-18', '0', '0', '-', '-', 'aug14-18', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(101, 'Alberto Bustamante ', '414 243-5982', 'bustamanteal816@gmail.com', '816 S. 32 ND ST.', 'West Milwaukee', 'WI', '53215', 'Standard Garages - 24 x 25 x 12', 'Ivan', 'Nick', 13764.06, 13046.5, 2348.37, 'Stripe', '2023-07-31', 2010, 'NA', '2010-01-01', 11415.69, 'No', 'No', 'No', '2023-06-30', '2010-01-01', '2010-01-01', '0', 'QTE-034361', 'ODR-000825', 'INV-000349', '3', '1', 'No', '2010-01-01', 'Isela', '2023-08-04', 'American Steel Carports', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(102, 'Felix Alvarez ', '239 227-7556', 'Felixalvarez7180@icloud.com', '2565 4 Ave North east Naples', 'Collier', 'FL', '34120', 'Standard Carports - 20 x 45 x 11 ', 'Ivan', 'Nick', 21528.82, 20120.4, 4024.08, 'Stripe', '2023-07-31', 2010, 'NA', '2010-01-01', 17504.74, 'No', 'No', 'No', '2023-06-28', '2010-01-01', '2010-01-01', '0', 'QTE-034435', 'ODR-000833', 'INV-000353', '6', '1', 'No', '2010-01-01', 'Isela', '2023-08-04', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'waiting on permitsandconcrete', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(103, 'Jacob Foster ', '336 317-8617 ', 'jtcustomwraps@gmail.com', '341 Ram Loop', 'Stokesdale', 'NC', '27357', 'Standard Garages - 20 x 30 x 14', 'Diego', 'Nick', 10673.46, 9975.2, 1496.28, 'Stripe', '2023-07-31', 2010, 'NA', '2010-01-01', 20032.54, 'No', 'No', 'No', '2023-07-04', '2010-01-01', '2010-01-01', '0', 'QTE-034406', 'ODR-000829', 'INV-000355', '1', '1', 'No', '2010-01-01', 'Jasmine', '2023-08-04', 'Super Metal Structures', 833, 'supermetalstructures0@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'waiting on permitsandconcrete', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(104, 'Keith Welch', '985 217-4358 ', 'keith_w1266@yahoo.com', '125 Jasmine ct.', 'Houma Terrebonne Parish', 'LA', '70363', 'Standard Garages - 24 x 35 x 10', 'Jose Luis', 'Nick', 15266.17, 13884.64, 2082.7, 'Stripe', '2023-07-31', 2010, 'NA', '2010-01-01', 13183.47, 'No', 'No', 'No', '2023-05-03', '2010-01-01', '2010-01-01', '0', 'QTE-034415', 'ODR-000831', 'INV-000356', '3', '1', 'No', '2010-01-01', 'jasmine', '2023-08-09', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(105, 'Richard Castanon JR', '915 588-9463 ', 'Castrucking@sbcglobal.net', '1732 Trawood Dr', 'El Paso', 'TX', '79925', 'Blazing Hot Sale - 24 x 25 x 12', 'Diego', 'Joseph', 8373.25, 7771, 1165.65, 'Stripe', '2023-07-31', 2010, 'NA', '2010-01-01', 7207.6, 'No', 'No', 'No', '2023-07-04', '2010-01-01', '2010-01-01', '0', 'QTE-034538', 'ODR-000839', 'INV-000361', '6', '1', 'No', '2010-01-01', 'Edgar', '2023-08-07', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(106, 'Dustin Ruble', '317 395-4211 ', 'dustinruble85@icloud.com', '123 Address', 'Wanamaker Marion', 'IN        ', '46239', 'Triple Wide Garages - 30 x 40 x 12', 'Ivan', 'Jairo', 15297.87, 14500.35, 2900.07, 'Stripe', '2023-07-31', 2010, 'NA', '2010-01-01', 12397.8, 'No', 'No', 'No', '2023-07-26', '2010-01-01', '2010-01-01', '0', 'QTE-033855', 'ODR-000801', 'INV-000360', '1', '1', 'No', '2010-01-01', 'jasmine', '2023-08-07', 'US Steel Buildings', 662, 'crystal@us-steelbuildings.net', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(107, 'William Dabb', '716 208-7195 ', 'laseraceengraving@yahoo.com', '3647 Crittenden Rd', 'Alden', 'NY', '14004', 'Triple Wide - 30 x 45 x 12 ', 'Diego', 'Rudy', 23611.55, 21711.77, 4342.35, 'Stripe', '2023-08-01', 2010, 'NA', '2010-01-01', 19269.2, 'No', 'No', 'No', '2023-06-05', '2010-01-01', '2010-01-01', '0', 'QTE-034401        ', 'ODR-000830', 'INV-000352', '3', '1', 'No', '2010-01-01', 'jasmine', '2023-08-04', 'Universal Metal Structures', 844, 'orders.universalmetalsales@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(108, 'Richard Whaley ', '919 369-7432', 'whaleyrichard4@gmail.com', '7416 chouder ln.', 'Wake Forest', 'NC', '27587', 'BLAZING HOT SALE - 24 x 40 x 14 ', 'Jairo', 'Moises', 15891.23, 14851.62, 2970.32, 'Stripe', '2023-08-01', 2010, 'NA', '2010-01-01', 12920.91, 'No', 'No', 'No', '2023-07-24', '2010-01-01', '2010-01-01', '0', 'QTE-034536', 'ODR-000838', 'INV-000365', '3', '1', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'NOT READY', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(109, 'Steven Gilcrease', '864 616-6658 ', 'sgilcrease1961@gmail.com', '211 snow dr', 'Pickens', 'SC', '29671', 'Commercial Buildings - 42 x 60 x 16', 'Santiago', 'Edgar', 66364.98, 62023.35, 12438.42, 'Stripe', '2023-08-02', 2010, 'NA', '2010-01-01', 53926.56, 'No', 'No', 'No', '2023-03-21', '2010-01-01', '2010-01-01', '0', 'QTE-034663', 'ODR-000843', 'INV-000376', '1', '1', 'No', '2010-01-01', 'Alejandro', '2023-08-04', 'Super Metal Structures', 833, 'supermetalstructures0@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(110, 'Jose Luis Perez', '423 470-9854', 'jlppro17@gmail.com', '118 Walnut ct', 'Limestone', 'TN', '37681', 'HUGE FLASH SALE - 30 x 60 x 12', 'Jose Luis', 'Isela', 27538.94, 25092.43, 5018.49, 'Stripe', '2023-08-02', 2010, 'NA', '2010-01-01', 22520.45, 'No', 'No', 'No', '2023-07-17', '2010-01-01', '2010-01-01', '0', 'QTE-034612', 'ODR-000840', 'INV-000371', '13', '1', 'No', '2010-01-01', 'Alejandro', '2023-08-04', 'Super Metal Structures', 833, 'supermetalstructures0@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'waiting on concrete', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(111, 'Scott Mallory ', '863 287-0600', 'Sdnc.mallory@gmail.com', '518 Peninsula Drive', 'Haines City', 'FL', '33844', 'Triple Wide Garages - 30 x 45 x 14', 'Santiago', 'Nick', 24267.97, 22680.35, 4536.07, 'Stripe', '2023-08-02', 2010, 'NA', '2010-01-01', 19731.9, 'No', 'No', 'No', '2022-12-26', '2010-01-01', '2010-01-01', '0', 'QTE-034745', 'ODR-000844', 'INV-000372', '0', '0', 'No', '2010-01-01', 'Alejandro', '2023-08-04', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'waiting on permits', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(112, 'Angela Bates', '803 257-7908', 'angelabates1221@gmail.com', '123 Address', 'Beech Island', 'SC', '29842', 'Commercial Buildings - 40 x 60 x 12 ', 'Santiago', 'Frank', 25815, 25815, 5163, 'Stripe', '2023-08-02', 2010, 'NA', '2010-01-01', 20652, 'No', 'No', 'No', '2023-06-01', '2010-01-01', '2010-01-01', '0', 'QTE-034314', 'ODR-000822', 'INV-000373', '3', '1', 'No', '2010-01-01', 'edgar', '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', 'site specfics ', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(113, 'Greg Lander', '817 609-6169', 'glinsolake@hotmail.com', '2442 Shakertown Way', 'North Vernon', 'IN', '47265', 'HUGE FLASH SALE- 24 x 28 x 9', 'Santiago', 'Brandon Contreras', 9368.76, 8755.85, 1313.38, 'Stripe', '2023-08-03', 2010, 'NA', '2010-01-01', 8055.38, 'No', 'No', 'No', '2023-05-15', '2010-01-01', '2010-01-01', '0', 'QTE-035004 ', 'ODR-000846 ', 'INV-000377', '1', '1', 'No', '2010-01-01', 'jasmine', '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(114, 'Agripino Cruz Guadarrama ', '815 546-4935', 'abrilbella.25@yahoo.com', '1706 cascade ridge drive', 'Plainfield', 'IL', '60586', ' blazing hot- 20 x 25 x 10', 'Jairo', 'Jose Calderon', 4286.43, 3932.5, 786.5, 'Stripe', '2023-08-03', 2010, 'NA', '2010-01-01', 3499.93, 'No', 'No', 'No', '2023-07-24', '2010-01-01', '2010-01-01', '0', 'QTE-034677 ', 'ODR-000841', 'INV-000378', '0', '0', 'No', '2010-01-01', 'edgar', '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(115, 'David Naskrent ', '847 489-6060', 'david@hempshire.pro', '1368 Commercial Ave', 'Crystal Falls Iron', 'MI', '49920', 'Deluxe Commercial Buildings - 40 x 65 x 14', 'Ivan', 'Nick', 36798.96, 34716, 6943.2, 'Stripe', '2023-08-04', 2010, 'NA', '2010-01-01', 19440.96, 'No', 'No', 'No', '2023-03-09', '2010-01-01', '2010-01-01', '0', 'QTE-033534', 'ODR-000845', 'INV-000379', '0', '0', 'No', '2010-01-01', 'edgar', '2023-08-07', 'Real Steel Buildings Georgia', 229, 'realsteelmetalbuildings@aol.com', 'Pending Install', '2023-08-18', '0', '0', '-', '-', 'next week Aug 14-18', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(116, 'Pedro Franco', '404 886-3855', 'pedrojr4@gmail.com', 'Laborers local 515 1004 Edgewood Ave', 'Atlanta', 'GA', '30307', 'HUGE FLASH SALE - Triple Wide - 26 x 25 x 7 ', 'Diego', 'Isela', 3505.68, 3231.04, 484.66, 'Stripe', '2023-08-07', 2010, 'NA', '2010-01-01', 3021.02, 'No', 'No', 'No', '2023-07-08', '2010-01-01', '2010-01-01', '0', 'QTE-035594', 'ODR-000855', 'INV-000387', '0', '0', 'No', '2010-01-01', 'edgar', '2023-08-09', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(117, 'Chris Lona ', '816 372-2560 ', 'chrislona1@gmail.com', '1004west 24th ST', 'Downtown Kansas City', 'MO', '64108', 'HUGE FLASH SALE - Standard  - 24 x 34 x 14', 'Diego', 'Moises', 13695.68, 12597.2, 2519.44, 'Stripe', '2023-08-07', 2010, 'NA', '2010-01-01', 11176.24, 'No', 'No', 'No', '2023-07-05', '2010-01-01', '2010-01-01', '0', 'QTE-035612', 'ODR-000857', 'INV-000388', '0', '0', 'No', '2010-01-01', 'jasmine', '2023-08-09', 'New Vision Carports', 936, 'newvisioncarports@gmail.com', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(118, 'Kyle Feste', '620 660-3120', 'feste3000@yahoo.com', '24315 41st rd', 'Arkansas city Cowley', 'KS', '67005', 'HUGE FLASH SALE  - 30 x 65 x 13', 'Santiago', 'Brandon Contreras', 0, 22642.5, 4528.5, 'Stripe', '2023-08-09', 2010, 'NA', '2010-01-01', 20038.61, 'No', 'No', 'No', '2023-07-27', '2010-01-01', '2010-01-01', '0', 'QTE-035932 ', 'ODR-000863', 'INV-000390 ', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(119, 'Terrence Hurssey', '662 392-3196', 'Terryhurssey@gmail.com', '409 central st', 'Belzoni', 'MS', '39038', 'HUGE FLASH SALE - 30 x 60 x 12', 'Sergio', 'Nick', 23634.16, 22088, 4417.6, 'Stripe', '2023-08-09', 2010, 'NA', '2010-01-01', 19216.56, 'No', 'No', 'No', '2023-07-04', '2010-01-01', '2010-01-01', '0', 'QTE-036085', 'ODR-000867', 'INV-000392', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(120, 'Abraham Carreon ', '505 922-5242', 'Arc_carreon@yahoo.com', '10011 NM 337', 'Tijeras', 'NM', '87059', 'Revision 2 huge flash sales  - 40 x 50 x 16', 'Ivan', 'Moises', 53420.78, 49578.45, 9915.69, 'Wire Transfer', '2023-08-10', 2010, 'NA', '2010-01-01', 43505.09, 'No', 'No', 'No', '2023-07-12', '2010-01-01', '2010-01-01', '0', 'QTE-035914', 'ODR-000860 ', 'INV-000393', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(121, 'Pablo Padilla', '505 480-5379', 'cyrus49er@msn.com', '505 Ontario Elephant Butte', 'ELEPHANT BTTE Sierra', 'NM', '87935', 'Commercial Buildings  - 36 x 50 x 16 ', 'Edgar', 'Nick', 39401.27, 36462.4, 7292.48, 'Stripe', '2023-08-10', 2010, 'NA', '2010-01-01', 32108.79, 'No', 'No', 'No', '2023-05-11', '2010-01-01', '2010-01-01', '0', 'QTE-030714', 'ODR-000816', 'INV-000385', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(122, 'Shane Hight', '870 277-8500', 'a1workcall@aol.com', '1570 cr 963', 'Brookland Craighead', 'AR', '72417', 'Standard Garages  - 24 x 30 x 9', 'Sensei', 'Rudy', 8387.98, 7730.85, 1546.17, 'Stripe', '2023-07-31', 2010, 'NA', '2010-01-01', 6841.81, 'No', 'No', 'No', '2023-06-09', '2010-01-01', '2010-01-01', '0', 'QTE-034359 ', 'ODR-000826 ', 'INV-000347 ', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(123, 'Shane Hight ', '870 277-8500', 'a1workcall@aol.com', '1570 cr 963', 'Brookland Craighead', 'AR', '72417', ' Blazing Hot Sale  - 30 x 60 x 12 ', 'Sensei', 'Rudy', 20608.85, 18994.34, 3798.87, 'Stripe', '2023-07-30', 2010, 'NA', '2010-01-01', 16809.98, 'No', 'No', 'No', '2023-06-09', '2010-01-01', '2010-01-01', '0', 'QTE-034358 ', 'ODR-000824', 'INV-000348', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(124, 'Shelly Kness', '970 541-8967', 'shell927@hotmail.com', '281 SW Whitetail Dr', 'Cache', 'OK', '73527', 'Free Standing Lean-tos  - 24 x 30 x 8 ', 'Diego', 'Moises', 5980.9, 5493.12, 823.97, 'Stripe', '2023-08-11', 2010, 'NA', '2010-01-01', 5156.93, 'No', 'No', 'No', '2023-07-07', '2010-01-01', '2010-01-01', '0', 'QTE-036405', 'ODR-000870 ', 'INV-000395', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', '2010-01-01', '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(125, 'Shelly Kness', '970 541-8967', 'shell927@hotmail.com', '281 SW Whitetail Dr', 'Cache', 'OK', '73527', 'HUGE FLASH SALE - Triple Wide - 30 x 50 x 13 ', 'Diego', 'Moises', 26492.68, 24332, 4866.4, 'Stripe', '2023-08-11', 2010, 'NA', '2010-01-01', 21626.28, 'No', 'No', 'No', '2023-07-07', '2010-01-01', '2010-01-01', '0', 'QTE-036388', 'ODR-000872 ', 'INV-000396-000397-000398-000401', '0', '0', 'No', '2010-01-01', NULL, '2010-01-01', 'TBD', 0, '-', 'Pending Install', NULL, '0', '0', '-', '-', '-', '2023-08-14', 'No', '2023-08-14', 'No', 'Erick', 'No'),
(126, 'Jonathan Holifield', '6626402784', 'msholifield717@gmail.com', '50043 Ashley Rd', 'Amory', 'Mississippi', '38821', 'BLAZING HOT SALE - 20 x 70 x 7', 'Santiago Torres Ibarra', 'Jose Rodolfo Gutierrez Romero', 14517.44, 13567.7, 2713.54, 'Stripe', '2023-08-14', 0, NULL, '2018-01-01', 11803.9, 'No', NULL, '0', '2023-04-11', '2022-04-11', '2022-08-14', '0', 'QTE-017246', 'ODR-000488', 'INV-000403', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14', NULL, NULL, NULL, NULL, NULL);

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
(1, '1st Choice Metal Buildings and Carports (Ulises)', '1stchoicemetal@gmail.com', '9363054000'),
(2, 'East Texas Carports', 'sales@easttexascarport.com', '9032348922'),
(3, 'EB Carports & Metal Structures', 'ebcarports4@gmail.com', '8602633797'),
(4, 'Elevate Steel Carports', 'info@elevatesteelcarports.com', '8016075780'),
(5, 'Elk Superior Buildings', 'elksuperiorbuilding@gmail.com', '3364155344'),
(6, 'Enterprise Steel Structures', 'orders@enterprisesteel.com', '5597151868'),
(7, 'GA Southern Steel Buildings', 'cathyb@aasouthernsteelbuildings.com', '2298900858'),
(8, 'NC Steel Buildings', 'ncsteelbuildings21@gmail.com', '8339551556'),
(9, 'New Vision Carports', 'newvisioncarports@gmail.com', '9367150010'),
(10, 'Northedge Steel', 'sales@northedegsteel.us', '7655918081'),
(11, 'Rafael', '1newhorizoncarports@gmail.com', '3363016785'),
(12, 'Real Steel Buildings (Georgia)', 'realsteelmetalbuildings@aol.com', '2293050517'),
(13, 'Super Metal Structures', 'supermetalstructures0@gmail.com', '8337212346'),
(14, 'Texas Metal Carports', 'orders@texasmetalcarports.com', '9036302013'),
(15, 'Texas Star Steel', 'texasfastcarports@gmail.com', '9157039647'),
(16, 'TOL Buildings', 'ncdiv@tolbuildings.com', '3363688903'),
(17, 'Top Tier Metal Buildings', 'toptmetalbuildings@outlook.com', '9365603707'),
(18, 'Unified Steel Structures', 'dealersorders0005@gmail.com', '3367568458'),
(19, 'United Metal Buildings LLC', 'liz@unitedmetalbuildings.us', '8882788004'),
(20, 'Universal Metal Structures', 'orders.universalmetalsales@gmail.com', '8445071309'),
(21, 'US Steel Buildings', 'crystal@us-steelbuildings.net', '6622463868');

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
(1, 'antonio', 'it@lionbuildings.com', '$2y$13$iaeFJ7w5Uo2./YSGCo2LHuSgEbDT/bef6clVePCoX0vLbCT9xkBHi', 'SuperAdmin');

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
(1, 'antonio', 2, 'Manufacturer Info', '2023-08-09 17:44:10');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `installation`
--
ALTER TABLE `installation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `layout`
--
ALTER TABLE `layout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modification`
--
ALTER TABLE `modification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
