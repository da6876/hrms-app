-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 08:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soc_hrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `url`, `icon`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'index.html', 'typcn typcn-device-desktop', NULL, 1, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(2, 'UI Elements', '#', 'typcn typcn-document-text', NULL, 2, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(3, 'Form elements', '#', 'typcn typcn-film', NULL, 3, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(4, 'Charts', '#', 'typcn typcn-chart-pie-outline', NULL, 4, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(5, 'Tables', '#', 'typcn typcn-th-small-outline', NULL, 5, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(6, 'Icons', '#', 'typcn typcn-compass', NULL, 6, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(7, 'User Pages', '#', 'typcn typcn-user-add-outline', NULL, 7, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(8, 'Buttons', 'pages/ui-features/buttons.html', '', 2, 1, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(9, 'Dropdowns', 'pages/ui-features/dropdowns.html', '', 2, 2, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(10, 'Typography', 'pages/ui-features/typography.html', '', 2, 3, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(11, 'Basic Elements', 'pages/forms/basic_elements.html', '', 3, 1, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(12, 'ChartJs', 'pages/charts/chartjs.html', '', 4, 1, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(13, 'Basic table', 'pages/tables/basic-table.html', '', 5, 1, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(14, 'Font Awesome', 'pages/icons/font-awesome.html', '', 6, 1, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(15, 'Blank Page', 'pages/samples/blank-page.html', '', 7, 1, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(16, '404', 'pages/samples/error-404.html', '', 7, 2, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(17, '500', 'pages/samples/error-500.html', '', 7, 3, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(18, 'Login', 'pages/samples/login.html', '', 7, 4, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(19, 'Register', 'pages/samples/register.html', '', 7, 5, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(20, 'Item Setup', '#', 'typcn typcn-puzzle-outline', NULL, 8, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(21, 'Auxiliary Item Type', 'auxiliaryItemType', '', 20, 1, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(22, 'Major Category', 'mjrCat', '', 20, 2, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(23, 'Sub Major Category', 'mjrSubCat', '', 20, 3, '2024-09-09 13:36:17', '2024-09-09 13:36:17'),
(24, 'Measure Unit', 'measureUnit', '', 20, 4, '2024-09-09 13:36:17', '2024-09-09 13:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_02_194001_create_menus_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `st_auxiliary_item_type`
--

CREATE TABLE `st_auxiliary_item_type` (
  `id` int(11) NOT NULL,
  `aux_type` varchar(5) DEFAULT NULL,
  `aux_type_descr` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT 'n',
  `create_by` varchar(30) DEFAULT current_user(),
  `create_date` datetime DEFAULT current_timestamp(),
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `st_auxiliary_item_type`
--

INSERT INTO `st_auxiliary_item_type` (`id`, `aux_type`, `aux_type_descr`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'A', 'Auxiliary Item', 'N', 'SFS_STORE', '2025-01-15 16:38:32', NULL, NULL),
(2, 'M', 'Main Item', 'N', 'SFS_STORE', '2025-01-15 16:39:59', NULL, NULL),
(3, 'C', 'Child Item', 'N', 'SFS_STORE', '2025-01-15 16:39:59', NULL, NULL),
(4, 'P', 'Parent Item', 'N', 'SFS_STORE', '2025-01-15 16:39:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `st_item_mst`
--

CREATE TABLE `st_item_mst` (
  `item_id` int(11) NOT NULL,
  `item_code` varchar(40) NOT NULL,
  `item_desc` longtext DEFAULT NULL,
  `msr_unit_code` varchar(3) NOT NULL,
  `item_part_no` varchar(4000) DEFAULT NULL,
  `item_hs_code` varchar(200) DEFAULT NULL,
  `item_reorder_qty` varchar(20) DEFAULT NULL,
  `item_avg_lead_time` decimal(5,2) DEFAULT NULL,
  `item_req_qty` decimal(13,2) DEFAULT NULL,
  `item_max_qty` decimal(13,2) DEFAULT NULL,
  `item_min_qty` decimal(13,2) DEFAULT NULL,
  `item_eco_qty` decimal(13,2) DEFAULT NULL,
  `item_tolr_qty` decimal(13,2) DEFAULT NULL,
  `mjr_code` varchar(5) NOT NULL,
  `mjr_sub_code` varchar(5) NOT NULL,
  `mnr_sub_code` varchar(5) DEFAULT NULL,
  `origin` char(1) DEFAULT NULL,
  `item_status` char(1) DEFAULT NULL,
  `item_wa_reorder_qty` decimal(13,2) DEFAULT NULL,
  `item_po_reorder_qty` decimal(13,2) DEFAULT NULL,
  `sl_no` varchar(4) DEFAULT NULL,
  `country_code` varchar(3) DEFAULT NULL,
  `item_basic_category` char(1) DEFAULT NULL,
  `item_base_store` varchar(4) DEFAULT NULL,
  `item_base_sub_section` varchar(4) DEFAULT NULL,
  `item_basic_sub_category` char(1) DEFAULT NULL,
  `account_card_no` varchar(25) DEFAULT NULL,
  `mnr_code` varchar(5) DEFAULT NULL,
  `main_item_msr_code` varchar(3) DEFAULT NULL,
  `contain_qty` decimal(10,0) DEFAULT NULL,
  `auxiliary_item` char(1) DEFAULT 'm',
  `item_size` varchar(4000) DEFAULT NULL,
  `item_capacity` varchar(4000) DEFAULT NULL,
  `item_sub_name` varchar(100) DEFAULT NULL,
  `volume_info` varchar(200) DEFAULT NULL,
  `s_item_code` varchar(40) DEFAULT NULL,
  `mak_qty` decimal(10,0) DEFAULT NULL,
  `mak_phy_bal_qty` decimal(10,0) DEFAULT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  `shortage_excess` decimal(10,0) DEFAULT NULL,
  `box_or_ledger` varchar(20) DEFAULT NULL,
  `bbc_no` varchar(10) DEFAULT NULL,
  `it_remarks` varchar(500) DEFAULT NULL,
  `data_error` char(1) DEFAULT 'n',
  `unit_3_4_qty` decimal(10,0) DEFAULT NULL,
  `unit_5_qty` decimal(10,0) DEFAULT NULL,
  `item_pic_name` varchar(600) DEFAULT NULL,
  `consignee` varchar(100) DEFAULT NULL,
  `status` char(1) DEFAULT 'n',
  `create_by` varchar(30) DEFAULT current_user(),
  `create_date` datetime DEFAULT current_timestamp(),
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `item_short_desc` text DEFAULT NULL,
  `item_old_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `st_measure_unit`
--

CREATE TABLE `st_measure_unit` (
  `id` int(11) NOT NULL,
  `msr_unit_code` varchar(3) NOT NULL,
  `msr_unit_desc` varchar(40) DEFAULT NULL,
  `status` char(1) DEFAULT 'n',
  `create_by` varchar(30) DEFAULT current_user(),
  `create_date` datetime DEFAULT current_timestamp(),
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `st_measure_unit`
--

INSERT INTO `st_measure_unit` (`id`, `msr_unit_code`, `msr_unit_desc`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, '029', 'NOS', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(42, '001', 'YD', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(43, '002', 'BOTTLE', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(44, '003', 'KIT', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(45, '004', 'MILE', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(46, '005', 'M/T', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(47, '006', 'BOOK', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(48, '007', 'LOT', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(49, '008', 'PCS', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(50, '009', 'LBS', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(51, '010', 'PAIR', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(52, '011', 'KG', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(53, '012', 'DOZEN', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(54, '013', 'BOX', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(55, '014', 'KM', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(56, '015', 'DRUM', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(57, '016', 'COIL', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(58, '017', 'PER 1000 YDS', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(59, '018', 'SET', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(60, '019', 'METER', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(61, '020', 'RFT', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(62, '021', 'GAL', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(63, '022', 'CONTAINER', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(64, '023', 'POT', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(65, '024', 'TUBE', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(66, '025', 'LITRE', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(67, '026', 'TON', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(68, '027', 'CAN', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(69, '028', 'ROLL', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(70, '030', 'Acrs', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(71, '031', 'Sqm', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(72, '032', 'Sqm.', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(73, '033', 'Pcs', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(74, '034', 'Acre and Decimal', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(75, '035', 'Barrel', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(76, '036', 'Cylin.', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(77, '037', 'DM', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(78, '038', 'DMT', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(79, '039', 'Feet', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(80, '040', 'GM', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(81, '041', 'Packet', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(82, '042', 'M3', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(83, '043', 'Sft.', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(84, '044', 'ML', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(85, '045', 'Bundle', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(86, '046', 'CFT', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(87, '047', 'Gross', 'N', 'SFS', '2025-01-15 17:57:00', NULL, NULL),
(89, '048', 'EA', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(90, '049', 'Tin', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(91, '050', 'Inch', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(92, '051', 'Bag', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(93, '052', 'Mon', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(94, '053', 'Tola', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(95, '054', 'Sheet', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(96, '055', 'Hz', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(97, '056', 'mm3', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(98, '057', 'Rim', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(99, '058', 'RM', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(100, '059', 'Quire', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(101, '060', 'Quintal', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(102, '061', 'Each/cft', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(103, '062', 'Amp', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(104, '063', 'Vial', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(105, '064', 'wrap', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(106, '065', 'strip', 'N', 'ADMIN', '2025-01-15 17:57:00', NULL, NULL),
(107, '111', 'asdad2222', 'D', '2', '2025-01-15 19:19:43', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `st_mjr_cat`
--

CREATE TABLE `st_mjr_cat` (
  `id` int(11) NOT NULL,
  `mjr_code` varchar(5) NOT NULL,
  `mjr_desc` varchar(400) DEFAULT NULL,
  `status` char(1) DEFAULT 'n',
  `create_by` varchar(30) DEFAULT current_user(),
  `create_date` datetime DEFAULT current_timestamp(),
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `st_mjr_cat`
--

INSERT INTO `st_mjr_cat` (`id`, `mjr_code`, `mjr_desc`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, '01', 'BATTERIES AND CHARGING EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(2, '02', 'BUILDING MATERIALS', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(3, '03', 'COMMUNICATION EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(4, '04', 'CONTROL EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(5, '05', 'CONTROLLED EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(6, '06', 'ELECTRICAL EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(7, '07', 'ELECTRONIC EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(8, '08', 'FUELS, LUBRICANTS AND CHEMICALS', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(9, '09', 'HOISTING & CONVEYING EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(10, '10', 'INSTRUMENTATION AND CONTROL', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(11, '11', 'LAMPS AND EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(12, '12', 'MEASURING INSTRUMENT', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(13, '13', 'MECHANICAL', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(14, '14', 'METALS', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(15, '15', 'METERING EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(16, '16', 'MISCELLANEOUS TOOLS AND FASTENERS', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(17, '17', 'OFFICE EQUIPMENT AND SUPPLIES', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(18, '18', 'OTHERS', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(19, '19', 'PIPES, TUBES AND PUMPS', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(20, '20', 'POWER LINE EQUIPMENTS AND CONDUCTORS', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(21, '21', 'SAFETY', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(22, '22', 'SCRAP', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(23, '23', 'SUBSTATIONS', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(24, '24', 'VEHICLES', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(25, '25', 'WINCHING AND HOISTING', 'N', 'SFS_STORE', '2025-01-15 18:01:01', NULL, NULL),
(41, '26', 'dddd', 'N', 'ADMIN', '2025-01-15 18:01:01', NULL, NULL),
(42, '99', 'asdasd asdasd', 'D', '2', '2025-01-15 19:22:20', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `st_mjr_sub_cat`
--

CREATE TABLE `st_mjr_sub_cat` (
  `id` int(11) NOT NULL,
  `mjr_sub_code` varchar(5) NOT NULL,
  `mjr_sub_desc` varchar(100) DEFAULT NULL,
  `mjr_code` varchar(5) NOT NULL,
  `status` char(1) DEFAULT 'n',
  `create_by` varchar(30) DEFAULT current_user(),
  `create_date` datetime DEFAULT current_timestamp(),
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `st_mjr_sub_cat`
--

INSERT INTO `st_mjr_sub_cat` (`id`, `mjr_sub_code`, `mjr_sub_desc`, `mjr_code`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, '01', 'BATTERIES AND CHARGING EQUIPMENT SUPPLIES', '01', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(2, '01', 'BUILDING CONSTRUCTION MATERIALS', '02', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(3, '02', 'BUILDING EQUIPMENT AND FURNISHINGS', '02', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(4, '03', 'PAINTS AND COATING', '02', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(5, '04', 'TIMBER AND WOOD PRODUCTS (WOOD POLES EXCLUDE)', '02', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(6, '01', 'COMMUNICATION EQUIPMENT AND COMPONENTS', '03', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(7, '01', 'APPLICATION SERVER', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(8, '02', 'AUTOMATION SERVER', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(9, '03', 'CONTROL CABINET ACCESSORIES', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(10, '04', 'CONTROL SWITCH', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(11, '05', 'CONTROLLER', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(12, '06', 'DATALOGGER', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(13, '07', 'EMISSION MANAGEMENT SYSTEM', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(14, '08', 'FIRE FIGHTING SYSTEM', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(15, '09', 'I/O MODULES', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(16, '10', 'NETWORK CARD', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(17, '11', 'OPERATING AND ENGINEERING STATION', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(18, '12', 'OTHER CONTROL EQUIPMENT', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(19, '13', 'OTHER CONTROLLED EQUIPMENT', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(20, '14', 'RF UNIT', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(21, '15', 'START-UP FREQUENCY CONVERTER', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(22, '16', 'THIN CLIENT SERVER', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(23, '17', 'TIME SERVER', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(24, '18', 'TURBINE CONTROL SYSTEM', '04', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(25, '01', 'ACTUATORS', '05', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(26, '02', 'BURNER MANAGEMENT SYSTEM', '05', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(27, '03', 'CONTROL CARD', '05', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(28, '04', 'CONTROL VALVE', '05', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(29, '05', 'ELECTRO PNEUMATIC POSITIONER', '05', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(30, '06', 'LIMIT SWITCH', '05', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(31, '07', 'MOTOR', '05', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(32, '08', 'OTHER CONTROLLED EQUIPMENT', '05', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(33, '01', 'ELECTRICAL EQUIPMENT', '06', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(34, '02', 'ELECTRICAL INDICATING AND MEASURING', '06', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(35, '03', 'GENERATOR', '06', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(36, '04', 'MOTOR', '06', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(37, '01', 'ELECTRONIC EQUIPMENT AND COMPONENTS', '07', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(38, '01', 'CHEMICALS AND LAB', '08', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(39, '02', 'FUELS, LUBRICANTS AND INSULATING OILS', '08', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(40, '01', 'CRANES, FORKLIFT TRUCKS', '09', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(41, '01', 'ELECTRICAL INSTRUMENTATION AND CONTROL DEVICES', '10', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(42, '02', 'INDICATING & RECORDING INSTRUMENTS', '10', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(43, '03', 'MECHANICAL INSTRUMENTATION AND CONTROL DEVICES', '10', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(44, '01', 'LAMPS', '11', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(45, '02', 'LIGHTING EQUIPMENT', '11', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(46, '01', 'BALANCING INSTRUMENT', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(47, '02', 'FLOW', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(48, '03', 'GAUGE', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(49, '04', 'INDICATING AND RECORDING METERS', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(50, '05', 'LEVEL', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(51, '06', 'PRESSURE', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(52, '07', 'SENSOR', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(53, '08', 'SPEED', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(54, '09', 'TEMPERATURE', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(55, '10', 'TRANSMITTER', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(56, '11', 'TURBINE SUPERVISORY', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(57, '12', 'VIBRATION', '12', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(58, '01', 'BEARINGS', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(59, '02', 'BOILER', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(60, '03', 'BOILER SPARES AND OTHER ACCESSORIES', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(61, '04', 'COAL AND ASH', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(62, '05', 'COAL MILL/ PULVERIZER', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(63, '06', 'COMPRESSOR', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(64, '07', 'ENGINE', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(65, '08', 'FILTER', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(66, '09', 'INSULATION', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(67, '10', 'MACHINE', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(68, '11', 'MAINTENANCE AND SHOP EQUIPMENT', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(69, '12', 'MECHANICAL POWER TRANSMISSION PARTS', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(70, '13', 'MOTOR', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(71, '14', 'TURBINE', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(72, '15', 'WELDING', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(73, '16', 'WORKSHOP', '13', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(74, '01', 'FERROUS METALS', '14', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(75, '02', 'NON-FERROUS METALS', '14', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(76, '01', 'CT', '15', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(77, '02', 'ENERGY METER', '15', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(78, '03', 'PT', '15', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(79, '04', 'SEAL', '15', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(80, '05', 'SERVER', '15', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(81, '01', 'FASTENERS', '16', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(82, '02', 'TOOLS', '16', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(83, '01', 'OFFICE EQUIPMENT AND SUPPLIES', '17', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(84, '01', 'METALLIC, NON-METALLIC AND OTHER MATERIALS', '18', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(85, '01', 'GASKETS AND SEALS', '19', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(86, '02', 'METALLIC PIPES AND TUBES (INCLUDING FITTINGS)', '20', 'N', 'SFS_STORE', '2025-01-15 18:23:43', NULL, NULL),
(87, '03', 'MOTOR', '19', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(88, '04', 'NON-METALLIC PIPES AND TUBES (INCLUDING FITTINGS)', '19', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(89, '05', 'PUMPS (INDEPENDENT)', '19', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(90, '06', 'VALVES', '19', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(91, '01', 'ELECTRICAL CABLES (INSULATED CONDUCTORS )', '20', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(92, '02', 'ELECTRICAL CONDUCTORS (BARE)', '20', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(93, '03', 'ELECTRICAL CONDUCTORS, HARDWARE, INSTALLING DEVICES POT', '20', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(94, '04', 'ELECTRICAL INSULATION AND INSULATORS', '20', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(95, '05', 'POWER LINE MATERIALS AND HARDWARES', '20', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(96, '06', 'POWER RESISTORS, INDUCTORS AND CAPACITORS', '20', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(97, '07', 'UTILITY POLES AND TOWERS (STRUCTURES)', '20', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(98, '01', 'SAFETY EQUIPMENTS', '21', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(99, '01', 'SCRAP', '22', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(100, '01', 'CIRCUIT BREAKERS, SWITCHES AND ISOLATING DEVICES', '23', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(101, '02', 'FUSES, FUSE DISCONNECTS AND LIGHTNING ARRESTERS', '23', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(102, '03', 'GENERATOR', '23', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(103, '04', 'METALED SWITCHGEAR AND CONTROL SWITCHBOARDS', '23', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(104, '05', 'PROTECTIVE RELAYS', '23', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(105, '06', 'SUB-STATION STRUCTURES (INCLUDES: POLE MOUNTING TRANSFORMER ST)', '23', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(106, '07', 'TRANSFORMER, REGULATORS, ELECTRICAL REACTORS AND ACCESSORIES', '23', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(107, '08', 'WIRING SUPPLIES AND SWITCHBOARD EQUIMENT-74', '23', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(108, '01', 'TRANSPORT EQUIPMENT (VEHICULAR)', '24', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(109, '01', 'HOISTING AND CONVEYING EQUIPMENT', '25', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(110, '02', 'ROPE, CHAIN, CABLE, CORDS (EXCLUDING ELECTRICAL CABLES)', '25', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL),
(121, '02', 'New Batteries', '01', 'N', 'SFS_STORE', '2025-01-15 18:27:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `st_mnr_cat`
--

CREATE TABLE `st_mnr_cat` (
  `id` int(11) NOT NULL,
  `mnr_code` varchar(4) NOT NULL,
  `mjr_code` varchar(2) NOT NULL,
  `mjr_sub_code` varchar(2) NOT NULL,
  `mnr_desc` varchar(100) DEFAULT NULL,
  `status` char(1) DEFAULT 'n',
  `create_by` varchar(30) DEFAULT current_user(),
  `create_date` datetime DEFAULT current_timestamp(),
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `st_mnr_cat`
--

INSERT INTO `st_mnr_cat` (`id`, `mnr_code`, `mjr_code`, `mjr_sub_code`, `mnr_desc`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, '0001', '01', '01', 'BATTERIES, STATION STORAGE', 'N', 'SFS_STORE', NULL, NULL, NULL),
(2, '0002', '01', '01', 'CHARGERS FOR BATTERIES (INCLUDES: POWER SUPPLY UNITS)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(3, '0003', '01', '01', 'DRY BATTERIES (INCLUDES: DRY CELLS AND SPECIAL CELLS)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(4, '0004', '01', '01', 'MISCELLANEOUS BATTERIES CHARGING EQUIPMENT AND ACCESSORIES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(5, '0001', '02', '01', 'ASPHALT AND BITUMINOUS SURFACE-MATERIALS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(6, '0002', '02', '01', 'CEMENTING MATERIALS (INCLUDES: CEMENT, LIME, PLASTER, GROUT ETC.)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(7, '0003', '02', '01', 'CONSTRUCTION MATERIALS (INCLUDES: AGGREGATES, SAND AND STONE CHIPS, PEBBLE ETC.)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(8, '0004', '02', '01', 'FLOOR COVERING MATERIALS (INCLUDES: TILES, LIME TERRACING, MARBLE ETC.)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(9, '0005', '02', '01', 'GLASS GLAZING MATERIALS (INCLUDES: WINDOWS, DOORS AND ROOF GLASS)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(10, '0006', '02', '01', 'MISCELLANEOUS BUILDING CONSTRUCTION MATERIALS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(11, '0007', '02', '01', 'PARTITIONBOARDS, HARDBOARDS, PLYWOOD (INCLUDES: VENCOR PANELS, PLASTIC BOARDS)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(12, '0008', '02', '01', 'PREFORMED BUILDING SHAPES (INCLUDES: BRICKS)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(13, '0009', '02', '01', 'ROOFING SIDING MATERIALS (INCLUDES: CORRUGATED IRON SHEETS .ROOLED ROOF)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(14, '0001', '02', '02', 'MISCELLANEOUS BUILDING EQUIPMENT AND ACCESSORIES (HINGE, BUCKET ETC.)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(15, '0002', '02', '02', 'PLUMBING FIXTURES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(16, '0003', '02', '02', 'PLUMBING FIXTURES ( INCLUDES: BATHROOM FITTINGS)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(17, '0004', '02', '02', 'WALL FIXTURES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(18, '0001', '02', '03', 'LACQUER, PAINT AND STANDARD COLORS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(19, '0002', '02', '03', 'MISCELLANEOUS PROTECTIVE COATINGS (INCLUDES: TOWER PAINT, WOOD PRESERVATION, RUSTIC INHIBITOR ETC.)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(20, '0003', '02', '03', 'PAINTS-VEHICLES (BINDERS) (INCLUDES: LINSEED OIL, THINNERS, PAINT CLEAN-UP S)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(21, '0004', '02', '03', 'PRIMERS AND SEALERS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(22, '0005', '02', '03', 'SHELLACS AND VARNISH (INCLUDES: INSULATING VARNISH)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(23, '0001', '02', '04', 'LUMBER (PLANK)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(24, '0002', '02', '04', 'MISCELLANEOUS WOOD LINE MATERIALS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(25, '0003', '02', '04', 'MISCELLANEOUS WOOD PRODUCTS (BOX)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(26, '0004', '02', '04', 'PARTITIONBOARDS, HARDBOARDS, PLYWOOD (INCLUDES: VENCOR PANELS, PLASTIC BOARDS)', 'N', 'SFS_STORE', NULL, NULL, NULL),
(27, '0005', '02', '04', 'WOODEN CROSSARMS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(28, '0006', '02', '04', 'WOODEN SCREW, BOARDS ETC.', 'N', 'SFS_STORE', NULL, NULL, NULL),
(29, '0001', '03', '01', 'MISCELLANEOUS COMMUNICATION EQUIPMENT AND COMPONENTS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(30, '0002', '03', '01', 'POWER LINE CARRIER COUPLING EQUIPMENT', 'N', 'SFS_STORE', NULL, NULL, NULL),
(31, '0003', '03', '01', 'RADIO EQUIPMENT', 'N', 'SFS_STORE', NULL, NULL, NULL),
(32, '0004', '03', '01', 'TELEPHONE AND ACCESSORIES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(33, '0001', '04', '01', 'APPLICATION SERVER', 'N', 'SFS_STORE', NULL, NULL, NULL),
(34, '0001', '04', '02', 'AUTOMATION SERVER PC UNIT-1', 'N', 'SFS_STORE', NULL, NULL, NULL),
(35, '0001', '04', '03', 'CONTROL CABINET ACCESSORIES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(36, '0001', '04', '04', 'CONTROL SWITCH', 'N', 'SFS_STORE', NULL, NULL, NULL),
(37, '0001', '04', '05', 'CONTROLLER', 'N', 'SFS_STORE', NULL, NULL, NULL),
(38, '0001', '04', '06', 'DATALOGGER', 'N', 'SFS_STORE', NULL, NULL, NULL),
(39, '0001', '04', '07', 'EMISSION MANAGEMENT SYSTEM', 'N', 'SFS_STORE', NULL, NULL, NULL),
(40, '0001', '04', '08', 'FIRE FIGHTING SYSTEM', 'N', 'SFS_STORE', NULL, NULL, NULL),
(41, '0001', '04', '09', 'AI MODULES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(42, '0002', '04', '09', 'AO MODULES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(43, '0003', '04', '09', 'DI MODULES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(44, '0004', '04', '09', 'DO MODULES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(45, '0005', '04', '09', 'MISCELLANEOUS MODULES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(46, '0001', '04', '10', 'NETWORK CARD', 'N', 'SFS_STORE', NULL, NULL, NULL),
(47, '0001', '04', '11', 'OPERATING AND ENGINEERING STATION', 'N', 'SFS_STORE', NULL, NULL, NULL),
(48, '0001', '04', '12', 'MISCELLANEOUS CONTROL EQUIPMENT', 'N', 'SFS_STORE', NULL, NULL, NULL),
(49, '0001', '04', '13', 'MISCELLANEOUS CONTROL EQUIPMENT', 'N', 'SFS_STORE', NULL, NULL, NULL),
(50, '0001', '04', '14', 'RF MODULES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(51, '0001', '04', '15', 'SFC', 'N', 'SFS_STORE', NULL, NULL, NULL),
(52, '0001', '04', '16', 'CLIENT SERVER UNIT COMPUTER', 'N', 'SFS_STORE', NULL, NULL, NULL),
(53, '0001', '04', '17', 'TIME SERVER UNIT-1 COMPUTER', 'N', 'SFS_STORE', NULL, NULL, NULL),
(54, '0001', '04', '18', 'TURBINE CONTROL SYSTEM', 'N', 'SFS_STORE', NULL, NULL, NULL),
(55, '0001', '05', '01', 'ACTUATORS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(56, '0001', '05', '02', 'BURNER MANAGEMENT SYSTEM', 'N', 'SFS_STORE', NULL, NULL, NULL),
(57, '0001', '05', '03', 'CONTROL CARD', 'N', 'SFS_STORE', NULL, NULL, NULL),
(58, '0001', '05', '04', 'CONTROL VALVE', 'N', 'SFS_STORE', NULL, NULL, NULL),
(59, '0002', '05', '04', 'CONTROLLED MOTOR AND ACCESSORIES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(60, '0001', '05', '05', 'ELECTRO PNEUMATIC POSITIONER', 'N', 'SFS_STORE', NULL, NULL, NULL),
(61, '0001', '05', '06', 'LIMIT SWITCH', 'N', 'SFS_STORE', NULL, NULL, NULL),
(62, '0001', '05', '07', 'CONTROLLED MOTOR AND ACCESSORIES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(63, '0001', '05', '08', 'MISCELLANEOUS CONTROL EQUIPMENT', 'N', 'SFS_STORE', NULL, NULL, NULL),
(64, '0002', '05', '08', 'MISCELLANEOUS CONTROLLED EQUIPMENT', 'N', 'SFS_STORE', NULL, NULL, NULL),
(65, '0001', '06', '01', 'ELECTRICAL EQUIPMENTS AND ACCESSORIES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(66, '0001', '06', '02', 'AMMETER', 'N', 'SFS_STORE', NULL, NULL, NULL),
(67, '0002', '06', '02', 'MISCELLANEOUS INSTRUMENTS AND METERS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(68, '0003', '06', '02', 'MISCELLANEOUS INTEGRATING METERS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(69, '0004', '06', '02', 'POWER FACTOR METERS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(70, '0005', '06', '02', 'RECORDING INSTRUMENTS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(71, '0006', '06', '02', 'VARIOUS TESTING EQUIPMENTS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(72, '0007', '06', '02', 'VOLT METER', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(73, '0008', '06', '02', 'WATT METER', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(74, '0001', '06', '03', 'GENERATOR', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(75, '0002', '06', '03', 'MISCELLANEOUS GENERATOR PARTS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(76, '0001', '06', '04', 'MISCELLANEOUS MOTOR ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(77, '0002', '06', '04', 'MOTORS', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(78, '0001', '07', '01', 'CARBON RESISTORS AND POTENTOMENTS', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(79, '0002', '07', '01', 'COMPUTERS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(80, '0003', '07', '01', 'ELECTRIC CAPACITORS AND MOUNTING HARDWARE', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(81, '0004', '07', '01', 'ELECTRONIC TUBES AND ASSOCIATED HARDWARE', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(82, '0005', '07', '01', 'MINIATURE TRANSFORMER AND ELECTRONIC CIRCUITS', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(83, '0006', '07', '01', 'MISCELLANEOUS ELECTRONIC EQUIPMENT AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(84, '0007', '07', '01', 'SEMICONDUCTORS AND ASSOCIATED', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(85, '0001', '08', '01', 'CHEMICALS, LAB AND OTHER ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(86, '0001', '08', '02', 'COAL', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(87, '0002', '08', '02', 'FUEL OILS (INCLUDES: GASOLINE DIESEL OIL KEROSENE)', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(88, '0003', '08', '02', 'INSULATING OILS', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(89, '0004', '08', '02', 'LUBRICANTS AND HYDRAULIC OILS', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(90, '0005', '08', '02', 'MISCELLANEOUS FUELS, LUBRICANTS, CONVEYING AND STORING ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(91, '0006', '08', '02', 'OIL TANK', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(92, '0001', '09', '01', 'MISCELLANEOUS WOOD PRODUCTS (BOX)', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(93, '0001', '10', '01', 'INSTRUMENTATION AND CONTROL', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(94, '0002', '10', '01', 'MISCELLANEOUS INSTRUMENTATION AND CONTROL DEVICES', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(95, '0001', '10', '02', 'MISCELLANEOUS INSTRUMENTS AND METERS', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(96, '0002', '10', '02', 'MISCELLANEOUS INTEGRATING METERS', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(97, '0001', '10', '03', 'MECHANICAL MEASUREMENT DEVICES', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(98, '0002', '10', '03', 'MISCELLANEOUS MECHANICAL MEASURING INSTRUMENTS', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(99, '0003', '10', '03', 'TEMPERATURE PRESSURE AND LIQUID LEVEL MEASUREMENT DEVICES', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(100, '0001', '11', '01', 'FLUORESCENT LAMPS', 'N', 'SFS_STORE', '2025-01-15 18:41:02', NULL, NULL),
(101, '0002', '11', '01', 'HALOGEN LIGHT', 'N', 'SFS_STORE', '2025-01-15 18:48:32', NULL, NULL),
(102, '0003', '11', '01', 'INCANDESCENT LAMPS', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(103, '0004', '11', '01', 'MINIATURE LAMPS', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(104, '0005', '11', '01', 'MISCELLANEOUS LAMPS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(105, '0001', '11', '02', 'INDOOR LIGHTING EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(106, '0002', '11', '02', 'MISCELLANEOUS LIGHTING EQUIPMENT AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(107, '0003', '11', '02', 'OUTDOOR LIGHTING EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(108, '0001', '12', '01', 'BALANCING INSTRUMENT', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(109, '0001', '12', '02', 'FLOW METER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(110, '0002', '12', '02', 'FLOW TRANSMITTER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(111, '0001', '12', '03', 'LEVEL GAUGE, LEVEL METER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(112, '0002', '12', '03', 'MISCELLANEOUS GAUGES AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(113, '0003', '12', '03', 'OIL GAUGE', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(114, '0004', '12', '03', 'PRESSURE GAUGE', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(115, '0001', '12', '04', 'INDICATING AND RECORDING METERS', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(116, '0001', '12', '05', 'LEVEL TRANSMITTER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(117, '0002', '12', '05', 'MISCELLANEOUS LEVEL ITEMS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(118, '0001', '12', '06', 'DIFFERENTIAL PRESSURE SWITCH', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(119, '0002', '12', '06', 'DIFFERENTIAL PRESSURE TRANSMITTER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(120, '0003', '12', '06', 'PRESSURE SWITCH', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(121, '0004', '12', '06', 'PRESSURE TRANSMITTER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(122, '0001', '12', '07', 'MISCELLANEOUS SENSOR ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(123, '0002', '12', '07', 'SENSORS', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(124, '0001', '12', '08', 'SPEED TRANSMITTER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(125, '0002', '12', '08', 'TACHOMETER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(126, '0001', '12', '09', 'RTD', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(127, '0002', '12', '09', 'TEMPERATURE TRANSMITTER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(128, '0003', '12', '09', 'THERMAL RESISTANCE', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(129, '0004', '12', '09', 'THERMOCOUPLE', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(130, '0005', '12', '09', 'THERMOMETER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(131, '0001', '12', '10', 'MISCELLANEOUS TRANSMITTER AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(132, '0001', '12', '11', 'TURBINE SUPERVISORY', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(133, '0001', '12', '12', 'VIBRATION TRANSMITTER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(134, '0002', '12', '12', 'VIBROMETER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(135, '0001', '13', '01', 'BALL BEARING', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(136, '0002', '13', '01', 'MISCELLANEOUS BEARINGS AND SPARE PARTS', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(137, '0003', '13', '01', 'PLAIN BEARING', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(138, '0004', '13', '01', 'ROLLER BEARING', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(139, '0001', '13', '02', 'BOILER SPARES AND OTHER ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(140, '0002', '13', '02', 'F.D. FAN AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(141, '0003', '13', '02', 'I.D. FAN AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(142, '0001', '13', '03', 'BOILER SPARES AND OTHER ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(143, '0001', '13', '04', 'COAL AND ASH AND OTHER ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(144, '0001', '13', '05', 'COAL MILL SPARES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(145, '0001', '13', '06', 'COMPRESSOR AND COMPRESSOR ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(146, '0001', '13', '07', 'ENGINE AND ENGINES ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(147, '0001', '13', '08', 'AIR FILTER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(148, '0002', '13', '08', 'MISCELLANEOUS FILTERS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(149, '0003', '13', '08', 'OIL FILTER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(150, '0004', '13', '08', 'WATER FILTER', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(151, '0001', '13', '09', 'HEAT INSULATION', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(152, '0001', '13', '10', 'MISCELLANEOUS MACHINERIES AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(153, '0001', '13', '11', 'MISCELLANEOUS SHOP EQUIPMENT AND SPARE PARTS', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(154, '0002', '13', '11', 'PURIFYING PLANTS (INSULATING OIL)', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(155, '0003', '13', '11', 'TEST SETS (INSULATING OIL)', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(156, '0001', '13', '12', 'POWER TRANSMISSION PARTS ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:49:27', NULL, NULL),
(157, '0001', '13', '13', 'MISCELLANEOUS MOTOR ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(158, '0002', '13', '13', 'MOTORS', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(159, '0001', '13', '14', 'TURBINE SPARES AND OTHER ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(160, '0001', '13', '15', 'WELDING EQUIPMENTS AND MATERIALS', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(161, '0001', '13', '16', 'GRINDING EQUIPMENTS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(162, '0002', '13', '16', 'MISCELLANEOUS GAS', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(163, '0003', '13', '16', 'MISCELLANEOUS WORKSHOP ITEMS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(164, '0004', '13', '16', 'NOZZLE, BUSH, GEAR AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(165, '0001', '14', '01', 'FABRICATED STEEL SHAPES', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(166, '0002', '14', '01', 'MISCELLANEOUS FERROUS METALS (SHEET)', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(167, '0003', '14', '01', 'REINFORCING STEEL (CARBON SHEET)', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(168, '0004', '14', '01', 'STEEL MILL SHAPES (INCLUDES: ANGLES, FLAT AND ROUND BARS, BEAMS, CHAIN, PLATE, BEND)', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(169, '0001', '14', '02', 'ALUMINIUM SHEET', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(170, '0002', '14', '02', 'BRASS, BRONZE AND COPPER', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(171, '0003', '14', '02', 'FABRICATED NON-FERROUS METAL SHAPES', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(172, '0004', '14', '02', 'MISCELLANEOUS METALS', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(173, '0001', '15', '01', '11KV CT', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(174, '0002', '15', '01', '132KV CT', 'N', 'SFS_STORE', '2025-01-15 18:53:09', NULL, NULL),
(175, '0003', '15', '01', '33KV CT', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(176, '0001', '15', '02', 'POSTPAID METER', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(177, '0002', '15', '02', 'PREPAID METER', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(178, '0003', '15', '02', 'SMART PREPAID METER', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(179, '0001', '15', '03', '11KV PT', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(180, '0002', '15', '03', '132KV PT', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(181, '0003', '15', '03', '33KV PT', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(182, '0001', '15', '04', 'BARCODE SEAL', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(183, '0002', '15', '04', 'QR CODE SEAL', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(184, '0003', '15', '04', 'TWIST TYPE SEAL', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(185, '0001', '15', '05', 'BILLING SERVER', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(186, '0002', '15', '05', 'PREPAID METER SERVER', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(187, '0001', '16', '01', 'BOLTS', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(188, '0002', '16', '01', 'DRIVEN FASTENERS (INCLUDING NAILS)', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(189, '0003', '16', '01', 'G.I. JUM NUTS', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(190, '0004', '16', '01', 'MISCELLANEOUS FASTENERS (CONNECTOR)', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(191, '0005', '16', '01', 'NUTS', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(192, '0006', '16', '01', 'NUTS AND BOLTS', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(193, '0007', '16', '01', 'SCREWS', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(194, '0008', '16', '01', 'WASHERS', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(195, '0001', '16', '02', 'HAND POWER TOOLS-ELECTRIC (INCLUDES, PORTABLE DRILLS, CUTTER AND SHAPE)', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(196, '0002', '16', '02', 'HAND POWER TOOLS-NON ELECTRIC', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(197, '0003', '16', '02', 'HAND TOOLS-NON POWERED (INCLUDES: PORTABLE HOISTS, CHISELS, HAMMERS)', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(198, '0004', '16', '02', 'LIVE LINE TOOLS', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(199, '0005', '16', '02', 'MISCELLANEOUS CONDUCTOR HARDWARE AND ACCESSORIES (SOCKET, PLUG, HOLDER ETC.)', 'N', 'SFS_STORE', '2025-01-15 18:53:31', NULL, NULL),
(200, '0006', '16', '02', 'MISCELLANEOUS TOOLS', 'N', 'SFS_STORE', '2025-01-15 18:54:21', NULL, NULL),
(201, '0001', '17', '01', 'DRAFTING AND STATIONARY SUPPLIES AND EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:54:27', NULL, NULL),
(202, '0002', '17', '01', 'ENVELOPS', 'N', 'SFS_STORE', '2025-01-15 18:54:34', NULL, NULL),
(203, '0003', '17', '01', 'FURNITURE AND CABINETS', 'N', 'SFS_STORE', '2025-01-15 18:54:40', NULL, NULL),
(204, '0004', '17', '01', 'MISCELLANEOUS OFFICE SUPPLIES AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:54:46', NULL, NULL),
(205, '0005', '17', '01', 'OFFICE MACHINE AND PARTS', 'N', 'SFS_STORE', '2025-01-15 18:54:56', NULL, NULL),
(206, '0006', '17', '01', 'PAPER, LOOSE AND BOUND (INCLUDES: REGISTERS)', 'N', 'SFS_STORE', '2025-01-15 18:55:33', NULL, NULL),
(207, '0007', '17', '01', 'PRINTED FORMS', 'N', 'SFS_STORE', '2025-01-15 18:55:45', NULL, NULL),
(208, '0008', '17', '01', 'PRINTER ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:56:00', NULL, NULL),
(209, '0009', '17', '01', 'PRINTING EQUIPMENT AND SUPPLIES', 'N', 'SFS_STORE', '2025-01-15 18:56:10', NULL, NULL),
(210, '0001', '18', '01', 'COOLER/FAN AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:56:15', NULL, NULL),
(211, '0002', '18', '01', 'JUTE ROPES, MANILA, COTTON AND SYNTHETIC ROPES', 'N', 'SFS_STORE', '2025-01-15 18:56:20', NULL, NULL),
(212, '0003', '18', '01', 'LEATHER GOODS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(213, '0004', '18', '01', 'MISCELLANEOUS ITEMS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(214, '0005', '18', '01', 'MOISTURE ABSORBER', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(215, '0006', '18', '01', 'PAPER PRODUCTS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(216, '0007', '18', '01', 'PLASTIC', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(217, '0008', '18', '01', 'STORING ITEM', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(218, '0009', '18', '01', 'TEXTILE AND TEXTILE PRODUCTS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(219, '0010', '18', '01', 'WEARING APPAREL', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(220, '0001', '19', '01', 'ASBESTOS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(221, '0002', '19', '01', 'GLAND PACKING', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(222, '0003', '19', '01', 'MISCELLANEOUS GASKET, SEALS, PACKING AND OTHER ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(223, '0004', '19', '01', 'RING', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(224, '0001', '19', '02', 'ALUMINIUM PIPES AND TUBES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(225, '0002', '19', '02', 'COPPER, BRASS AND BRONZE PIPES AND TUBES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(226, '0003', '19', '02', 'IRON, STEEL PIPES AND TUBES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(227, '0004', '19', '02', 'MISCELLANEOUS METALLIC PIPES AND FITTINGS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(228, '0001', '19', '03', 'MISCELLANEOUS MOTOR ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(229, '0001', '19', '04', 'FLEXIBLE HOUSE FITTINGS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(230, '0002', '19', '04', 'FLEXIBLE REINFORCED HOSE AND FITTINGS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(231, '0003', '19', '04', 'MISCELLANEOUS (NON METALLIC PIPES, TUBES AND FITTINGS)', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(232, '0004', '19', '04', 'PLASTIC PIPE FITTINGS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(233, '0005', '19', '04', 'RUBBER AND PLASTIC PIPES AND TUBES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(234, '0001', '19', '05', 'MISCELLANEOUS PUMPS (INDEPENDENT) AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(235, '0001', '19', '06', 'GATE VALVE', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(236, '0002', '19', '06', 'INTAKE VALVE', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(237, '0003', '19', '06', 'MISCELLANEOUS VALVES AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(238, '0004', '19', '06', 'SAFETY VALVE', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(239, '0005', '19', '06', 'STOP VALVE', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(240, '0001', '20', '01', 'AAC CONDUCTORS (INCLUDING ALUMINIUM BUSBARS)', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(241, '0002', '20', '01', 'CONTROL CABLES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(242, '0003', '20', '01', 'H.T. POWER CABLES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(243, '0004', '20', '01', 'L.T. POWER CABLE (INCLUDING INSULATED ACSR AND AAC CONDUCTORS)', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(244, '0005', '20', '01', 'MISCELLANEOUS CABLES AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(245, '0006', '20', '01', 'PORTABLE L.T. CABLES FOR DOMESTIC USE', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(246, '0007', '20', '01', 'PVC CABLES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(247, '0001', '20', '02', 'AAC CONDUCTORS (INCLUDING ALUMINIUM BUSBARS)', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(248, '0002', '20', '02', 'ACSR CONDUCTORS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(249, '0003', '20', '02', 'COPPER CONDUCTORS (INCLUDING: COPPER BUSBARS)', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(250, '0004', '20', '02', 'MISCELLANEOUS CONDUCTORS AND HARDWARE', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(251, '0001', '20', '03', 'COMPRESSION CONNECTOR', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(252, '0002', '20', '03', 'CONDUCTOR HARDWARE', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(253, '0003', '20', '03', 'INSTALLING DEVICES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(254, '0004', '20', '03', 'MISCELLANEOUS CONDUCTOR HARDWARE AND ACCESSORIES (SOCKET, PLUG, HOLDER ETC.)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(255, '0005', '20', '03', 'POTHEADS', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(256, '0001', '20', '04', 'GUY INSULATOR', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(257, '0002', '20', '04', 'INSULATION, ELECTRICAL', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(258, '0003', '20', '04', 'INSULATOR FITTING', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(259, '0004', '20', '04', 'INSULATORS, PIN, DISC AND BUSHING', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(260, '0005', '20', '04', 'INSULATORS, POST (SUPPORT)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(261, '0006', '20', '04', 'INSULATORS, SPOOL (INSULATOR ROD)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(262, '0007', '20', '04', 'INSULATORS, SUSPENSION', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(263, '0008', '20', '04', 'MISCELLANEOUS INSULATORS AND FITTINGS', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(264, '0009', '20', '04', 'SHACKLE INSULATOR', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(265, '0001', '20', '05', 'CLAMP: CABLE LUG', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(266, '0002', '20', '05', 'GUY ASSEMBLY ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(267, '0003', '20', '05', 'GUY ASSEMBLY AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(268, '0004', '20', '05', 'H.T. POWER LINE CROSSARMS (EXCLUDES: WOODEN CROSSARMS COVERED BY 141)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(269, '0005', '20', '05', 'L.T. POWER LINE CROSSARMS (EXCLUDES: WOODEN CROSSARMS COVERED BY 141)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(270, '0006', '20', '05', 'MISCELLANEOUS POWER LINE MATERIALS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(271, '0007', '20', '05', 'POWER LINE HARDWARE (EXCLUDES: BOLTS COVERED BY 251)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(272, '0001', '20', '06', 'INDUCTORS (INCLUDES CHOCKS, COIL)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(273, '0002', '20', '06', 'MISCELLANEOUS POWER RESISTORS, INDUCTORS, INSULATORS CAPACITORS ETC.', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(274, '0003', '20', '06', 'POWER CAPACITORS (EXCLUDES ELECTRICAL CAPACITORS)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(275, '0004', '20', '06', 'RESISTORS (EXCLUDES CARBON RESISTORS AND POTENTIOMETERS)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(276, '0001', '20', '07', 'CONCRETE POLES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(277, '0002', '20', '07', 'LIGHT ANGLE TOWERS', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(278, '0003', '20', '07', 'MISCELLANEOUS POWER LINE STRUCTURES AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(279, '0004', '20', '07', 'PANZERMAST STEEL POLES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(280, '0005', '20', '07', 'SUSPENSION TOWERS', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(281, '0006', '20', '07', 'TUBULAR STEEL POLES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(282, '0007', '20', '07', 'WOODEN POLES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(283, '0001', '21', '01', 'FIRE FIGHTING EQUIPMENTS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(284, '0002', '21', '01', 'GAS MASK', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(285, '0003', '21', '01', 'GLOVES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(286, '0004', '21', '01', 'GOGGLES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(287, '0005', '21', '01', 'GUM BOOT', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(288, '0006', '21', '01', 'HELMET', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(289, '0007', '21', '01', 'MISCELLANEOUS SAFETY EQUIPMENTS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(290, '0008', '21', '01', 'SAFETY BELT', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(291, '0009', '21', '01', 'SAFETY NET', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(292, '0001', '22', '01', 'MISCELLANEOUS SCRAP (INCLUDES: WOOD, PLASTIC ETC.)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(293, '0002', '22', '01', 'SCRAP COPPER', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(294, '0003', '22', '01', 'SCRAP INSULATORS', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(295, '0004', '22', '01', 'SCRAP STEEL', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(296, '0005', '22', '01', 'SCRAP TRANSFORMERS', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(297, '0001', '23', '01', 'ACBS (INCLUDING MCBS, MCCBS AND AIR BREAK CIRCUIT BREAKERS)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(298, '0002', '23', '01', 'AIR BLAST CIRCUIT BREAKERS', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(299, '0003', '23', '01', 'ISOLATING DEVICES AND SWITCHES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(300, '0004', '23', '01', 'LOCBS (LOW OIL CONTENT CIRCUIT BREAKERS/MINIMUM OIL CIRCUIT BREAKERS)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(301, '0005', '23', '01', 'MISCELLANEOUS ISOLATING DEVICES AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(302, '0006', '23', '01', 'OCBS (BULK OIL TYPE CIRCUIT BREAKERS)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(303, '0007', '23', '01', 'RECLOSERS (SPECIAL RECLOSING CIRCUIT BREAKERS /OCRS/ACRS)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(304, '0008', '23', '01', 'SF6CBS (SULPHUR HEXAFLUORIDE CIRCUIT BREAKERS)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(305, '0009', '23', '01', 'VACUUM CBS (VACUUM CIRCUIT BREAKERS)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(306, '0001', '23', '02', 'H.T. FUSE DISCONNECTS AND DROP OUT FUSES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(307, '0002', '23', '02', 'H.T. FUSE LINKS AND UNITS', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(308, '0003', '23', '02', 'L.T. FUSES AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(309, '0004', '23', '02', 'LIGHTNING ARRESTERS', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(310, '0005', '23', '02', 'MISCELLANEOUS DISCONNECTING AND ACCESSORIES (BLOCK)', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(311, '0001', '23', '03', 'GENERATOR', 'N', 'SFS_STORE', '2025-01-15 18:35:30', NULL, NULL),
(312, '0001', '23', '04', 'CONTROL SWITCHBOARDS AND ACCESSORIES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(313, '0002', '23', '04', 'GIS PANEL AND ACCESSORIES', 'N', 'SFS_STORE', NULL, NULL, NULL),
(314, '0003', '23', '04', 'METAL ENCLOSED SWITCHGEAR AND CONTROL PANELS', 'N', 'SFS_STORE', NULL, NULL, NULL),
(315, '0004', '23', '04', 'METALED SWITCHGEAR WITH ACBS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(316, '0005', '23', '04', 'METALED SWITCHGEAR WITH SF6CBS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(317, '0006', '23', '04', 'METALED SWITCHGEAR WITH VACUUM CBS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(318, '0007', '23', '04', 'MISCELLANEOUS SWITCHGEAR AND CONTROL DEVICES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(319, '0001', '23', '05', 'AUXILIARY RELAYS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(320, '0002', '23', '05', 'DIFFERENTIAL RELAYS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(321, '0003', '23', '05', 'DIRECTIONAL RELAYS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(322, '0004', '23', '05', 'DISTANCE RELAYS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(323, '0005', '23', '05', 'MISCELLANEOUS RELAYS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(324, '0006', '23', '05', 'OVERCURRENT RELAYS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(325, '0001', '23', '06', 'MISCELLANEOUS SUB-STATION STRUCTURE AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(326, '0002', '23', '06', 'POLE MOUNTING TRANSFORMER SUB-STATION STRUCTURES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(327, '0001', '23', '07', 'AUXILIARY TRANSFORMERS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(328, '0002', '23', '07', 'MEASURING AND PROTECTION CURRENT TRANSFORMERS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(329, '0003', '23', '07', 'MEASURING AND PROTECTION POTENTIAL TRANSFORMERS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(330, '0004', '23', '07', 'MISCELLANEOUS TRANSFORMERS, REGULATORS, REACTORS AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(331, '0005', '23', '07', 'ON LEAD TAP CHANGERS FOR H.V. TRANSFORMERS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(332, '0006', '23', '07', 'POWER TRANSFORMERS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(333, '0007', '23', '07', 'SINGLE PHASE DISTRIBUTION TRANSFORMERS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(334, '0008', '23', '07', 'THREE PHASE DISTRIBUTION TRANSFORMERS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(335, '0001', '23', '08', 'BILLING EQUIPMENT AND HOUSINGS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(336, '0002', '23', '08', 'MISCELLANEOUS WIRING SUPPLIES INCLUDING CUSTOMER METERING KITS ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(337, '0003', '23', '08', 'PANEL BOARD DEVICES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(338, '0004', '23', '08', 'SPECIAL WIRING BOXES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(339, '0005', '23', '08', 'WIRING DEVICES AND ELECTRICAL', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(340, '0001', '24', '01', 'CAR, JEEP, MOTORBIKE, PICK-UP ETC.', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(341, '0002', '24', '01', 'MISCELLANEOUS TRANSPORT EQUIPMENT AND ACCESSORIES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(342, '0003', '24', '01', 'TIRES AND TUBES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(343, '0004', '24', '01', 'VEHICLE ACCESSORIES AND AUXILIARY EQUIPMENT', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(344, '0001', '25', '01', 'CRANES, FORKLIFT TRUCKS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(345, '0002', '25', '01', 'MISCELLANEOUS HOISTING AND CONVEYING EQUIPMENT AND ACCESSORIES (PULLEY)', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(346, '0003', '25', '01', 'TRACTORS', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(347, '0001', '25', '02', 'JUTE ROPES, MANILA, COTTON AND SYNTHETIC ROPES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(348, '0002', '25', '02', 'ROPE, CHAIN, CABLE, CORDS (EXCLUDING ELECTRICAL CABLES)', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(349, '0003', '25', '02', 'WIRE AND WINCH CABLES', 'N', 'SFS_STORE', '2025-01-15 18:32:17', NULL, NULL),
(352, '0001', '01', '02', 'New Batteries Test', 'N', 'SFS_STORE', '2025-01-15 18:56:46', NULL, NULL),
(353, '0002', '01', '02', 'Test 2', 'N', 'SFS_STORE', '2025-01-15 18:56:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `mac` varchar(255) DEFAULT NULL,
  `last_login` varchar(255) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `name`, `user_name`, `email`, `phone`, `email_verified_at`, `password`, `longitude`, `latitude`, `ip`, `mac`, `last_login`, `create_by`, `create_date`, `update_date`, `update_by`, `token`) VALUES
(1, 'admin001', 'Admin User', 'adminuser', 'admin@example.com', '0131010101', '2024-09-09 13:36:16', '$2y$10$AMNfVPayn6xpOl4zsrXvZ.05prCJu4JqBgMNRhrty/.SeQlWfJm4u', '0.000000', '0.000000', '127.0.0.1', '00:00:00:00:00:00', '2024-09-09 19:36:16', 'system', '2024-09-09 19:36:16', '2024-09-09 19:36:16', 'system', 'iR7xjCyBW5nMJhQbRIcLI1aON9tSaUkiiielk5ViEpOLCN6BGvBWW1PcsNo2'),
(2, 'superadmin001', 'Super Admin', 'superadmin', 'superadmin@example.com', '0101010101', '2024-09-09 13:36:16', '$2y$10$zSIQI3DyuXFEnbQFWL4TbOPnhkyGnD36s1wjMgGhxhm8VqxhxAd2G', '90.3613459', '23.7857136', '103.142.184.97', '00:00:00:00:00:01', '2025-01-15 17:20:53', 'system', '2024-09-09 19:36:16', 'gHfd6mVxPklFt66W1xnH3MUnZIKzYE7UnYwNnrSI', '2', 'gHfd6mVxPklFt66W1xnH3MUnZIKzYE7UnYwNnrSI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `st_auxiliary_item_type`
--
ALTER TABLE `st_auxiliary_item_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_item_mst`
--
ALTER TABLE `st_item_mst`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `st_measure_unit`
--
ALTER TABLE `st_measure_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_mjr_cat`
--
ALTER TABLE `st_mjr_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_mjr_sub_cat`
--
ALTER TABLE `st_mjr_sub_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_mnr_cat`
--
ALTER TABLE `st_mnr_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_uid_unique` (`uid`),
  ADD UNIQUE KEY `users_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_auxiliary_item_type`
--
ALTER TABLE `st_auxiliary_item_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `st_item_mst`
--
ALTER TABLE `st_item_mst`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_measure_unit`
--
ALTER TABLE `st_measure_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `st_mjr_cat`
--
ALTER TABLE `st_mjr_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `st_mjr_sub_cat`
--
ALTER TABLE `st_mjr_sub_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `st_mnr_cat`
--
ALTER TABLE `st_mnr_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
