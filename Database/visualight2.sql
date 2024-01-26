-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2024 at 04:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visualight2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('ADMIN', '1', 1689780894),
('ADMIN', '105', 1694766762),
('ADMIN', '20', 1690011233),
('ADMIN', '39', 1690012712),
('ADMIN', '40', 1690012718),
('ADMIN', '41', 1690012726),
('ADMINISTRATOR', '1', 1689777903),
('ADMINISTRATOR', '100', 1693228952),
('ADMINISTRATOR', '104', 1694429543),
('ADMINISTRATOR', '11', 1689947821),
('ADMINISTRATOR', '146', 1695058762),
('ADMINISTRATOR', '149', 1699802641),
('ADMINISTRATOR', '163', 1702553359),
('ADMINISTRATOR', '164', 1702688430),
('ADMINISTRATOR', '165', 1702715521),
('ADMINISTRATOR', '166', 1702716166),
('ADMINISTRATOR', '20', 1690011232),
('ADMINISTRATOR', '40', 1690012718),
('ADMINISTRATOR', '41', 1690012726),
('ADMINISTRATOR', '58', 1690603643),
('ADMINISTRATOR', '94', 1693129603),
('ADMINISTRATOR', '98', 1693198461),
('ADMINISTRATOR', '99', 1693213178),
('NMD-DIVISION HEAD', '151', 1701079851),
('NMD-DIVISION HEAD', '161', 1702476052),
('NMD-DIVISION HEAD', '39', 1701456195),
('NMD-DIVISION HEAD', '78', 1693020501),
('NMD-DIVISION HEAD', '88', 1693046329),
('STD-DIVISION HEAD', '101', 1694921903),
('STD-DIVISION HEAD', '148', 1701457007),
('STD-DIVISION HEAD', '79', 1693020508),
('STD-DIVISION HEAD', '89', 1693046622),
('TOP MANAGEMENT', '150', 1699803469),
('TOP MANAGEMENT', '152', 1701616545),
('TOP MANAGEMENT', '153', 1701885834),
('TOP MANAGEMENT', '154', 1701885959),
('TOP MANAGEMENT', '155', 1701886077),
('TOP MANAGEMENT', '156', 1701886153),
('TOP MANAGEMENT', '157', 1701886397),
('TOP MANAGEMENT', '158', 1701886801),
('TOP MANAGEMENT', '159', 1701887038),
('TOP MANAGEMENT', '160', 1702052248),
('TOP MANAGEMENT', '77', 1695037471),
('TOP MANAGEMENT', '82', 1693042413),
('TOP MANAGEMENT', '87', 1693045986),
('TOP MANAGEMENT', '90', 1693058368);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text DEFAULT NULL,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/admin/*', 2, NULL, NULL, NULL, 1689961959, 1689961959),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1700582742, 1700582742),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1695048782, 1695048782),
('/admin/base/*', 2, NULL, NULL, NULL, 1694430939, 1694430939),
('/admin/default/*', 2, NULL, NULL, NULL, 1694486793, 1694486793),
('/admin/menu/*', 2, NULL, NULL, NULL, 1694487393, 1694487393),
('/admin/permission/*', 2, NULL, NULL, NULL, 1700582756, 1700582756),
('/admin/permission/update', 2, NULL, NULL, NULL, 1690437810, 1690437810),
('/admin/role/*', 2, NULL, NULL, NULL, 1700582751, 1700582751),
('/admin/role/update', 2, NULL, NULL, NULL, 1690437821, 1690437821),
('/admin/route/*', 2, NULL, NULL, NULL, 1700582762, 1700582762),
('/admin/user/*', 2, NULL, NULL, NULL, 1690433121, 1690433121),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1690385480, 1690385480),
('/chart/*', 2, NULL, NULL, NULL, 1694437000, 1694437000),
('/dbeditor/*', 2, NULL, NULL, NULL, 1694920921, 1694920921),
('/dbeditor/customer-type/*', 2, NULL, NULL, NULL, 1694921553, 1694921553),
('/dbeditor/customer/*', 2, NULL, NULL, NULL, 1694920850, 1694920850),
('/dbeditor/division/*', 2, NULL, NULL, NULL, 1694920852, 1694920852),
('/dbeditor/payment-method/*', 2, NULL, NULL, NULL, 1694920855, 1694920855),
('/dbeditor/query/*', 2, NULL, NULL, NULL, 1695728065, 1695728065),
('/dbeditor/transaction-status/*', 2, NULL, NULL, NULL, 1694920857, 1694920857),
('/dbeditor/transaction-type/*', 2, NULL, NULL, NULL, 1694920841, 1694920841),
('/dbeditor/transaction/*', 2, NULL, NULL, NULL, 1694925195, 1694925195),
('/nmd/chart/index', 2, NULL, NULL, NULL, 1691764200, 1691764200),
('/password-reset/*', 2, NULL, NULL, NULL, 1690385047, 1690385047),
('/password-reset/reset', 2, NULL, NULL, NULL, 1690374122, 1690374122),
('/predict/chart/*', 2, NULL, NULL, NULL, 1694487689, 1694487689),
('/predict/chart/index', 2, NULL, NULL, NULL, 1694447806, 1694447806),
('/rbac/*', 2, NULL, NULL, NULL, 1689961950, 1689961950),
('/site/*', 2, NULL, NULL, NULL, 1689961944, 1689961944),
('/site/upload-pdf', 2, NULL, NULL, NULL, 1700565797, 1700565797),
('/std/chart/index', 2, NULL, NULL, NULL, 1692630771, 1692630771),
('/terms/index', 2, NULL, NULL, NULL, 1692545853, 1692545853),
('/test/transaction/*', 2, NULL, NULL, NULL, 1694886091, 1694886091),
('/user/*', 2, NULL, NULL, NULL, 1689961942, 1689961942),
('/user/send-verification-code', 2, NULL, NULL, NULL, 1700565184, 1700565184),
('/userprofile/*', 2, NULL, NULL, NULL, 1690428311, 1690428311),
('ADMIN', 2, NULL, NULL, NULL, 1689777863, 1689777863),
('ADMINISTRATOR', 1, NULL, NULL, NULL, 1689777881, 1689777881),
('canAssignRole', 2, NULL, NULL, NULL, 1700582796, 1700582796),
('canCreateRole', 2, NULL, NULL, NULL, 1700582823, 1700582823),
('canCreateUser', 2, NULL, NULL, NULL, 1700582863, 1700582863),
('canPermit', 2, NULL, NULL, NULL, 1700582812, 1700582812),
('canPredict', 2, NULL, NULL, NULL, 1694920347, 1694920347),
('canResendEmailVerification', 2, NULL, NULL, NULL, 1700583896, 1700583896),
('canRoute', 2, NULL, NULL, NULL, 1700582853, 1700582853),
('canSeeAllChart', 2, NULL, NULL, NULL, 1694961725, 1694961725),
('canSendPDF', 2, NULL, NULL, NULL, 1700568556, 1700568556),
('Customer_Permission', 2, NULL, NULL, NULL, 1694921657, 1694921657),
('CustomerType_Permission', 2, NULL, NULL, NULL, 1694921458, 1694921458),
('dbPermission', 2, NULL, NULL, NULL, 1694920930, 1694920930),
('dbQuery', 2, NULL, NULL, NULL, 1695728078, 1695728078),
('Division_Permission', 2, NULL, NULL, NULL, 1694921326, 1694921326),
('NMD-DIVISION HEAD', 1, NULL, NULL, NULL, 1693020446, 1700568091),
('NMDpermission', 2, NULL, NULL, NULL, 1694920292, 1694920292),
('PaymentMethod_Permission', 2, NULL, NULL, NULL, 1694921142, 1694921142),
('practiceChart', 2, NULL, NULL, NULL, 1694920187, 1694920187),
('SECRETARY', 1, NULL, NULL, NULL, 1700567190, 1700567945),
('STD-DIVISION HEAD', 1, NULL, NULL, NULL, 1693020479, 1693021446),
('STDpermission', 2, NULL, NULL, NULL, 1694920394, 1694920394),
('TOP MANAGEMENT', 1, NULL, NULL, NULL, 1693020068, 1693020068),
('Transaction_Permission', 2, 'can create, read, update, and delete transactions', NULL, NULL, 1694920038, 1694921407),
('TransactionStatus_Permission', 2, NULL, NULL, NULL, 1694921082, 1694921082),
('TransactionType_Permission', 2, NULL, NULL, NULL, 1694920801, 1694921504),
('USERS', 2, NULL, NULL, NULL, 1690944942, 1690944942);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('ADMIN', '/site/*'),
('ADMIN', '/terms/index'),
('ADMIN', '/user/*'),
('ADMIN', '/userprofile/*'),
('ADMINISTRATOR', 'ADMIN'),
('ADMINISTRATOR', 'canAssignRole'),
('ADMINISTRATOR', 'canCreateRole'),
('ADMINISTRATOR', 'canCreateUser'),
('ADMINISTRATOR', 'canPermit'),
('ADMINISTRATOR', 'canResendEmailVerification'),
('ADMINISTRATOR', 'canRoute'),
('ADMINISTRATOR', 'canSeeAllChart'),
('ADMINISTRATOR', 'canSendPDF'),
('ADMINISTRATOR', 'Customer_Permission'),
('ADMINISTRATOR', 'CustomerType_Permission'),
('ADMINISTRATOR', 'dbPermission'),
('ADMINISTRATOR', 'dbQuery'),
('ADMINISTRATOR', 'Division_Permission'),
('ADMINISTRATOR', 'PaymentMethod_Permission'),
('ADMINISTRATOR', 'Transaction_Permission'),
('ADMINISTRATOR', 'TransactionStatus_Permission'),
('ADMINISTRATOR', 'TransactionType_Permission'),
('canAssignRole', '/admin/assignment/*'),
('canCreateRole', '/admin/role/*'),
('canCreateUser', '/admin/user/*'),
('canCreateUser', '/user/*'),
('canPermit', '/admin/permission/*'),
('canPredict', '/predict/chart/*'),
('canResendEmailVerification', '/user/send-verification-code'),
('canSeeAllChart', 'canPredict'),
('canSeeAllChart', 'NMDpermission'),
('canSeeAllChart', 'STDpermission'),
('canSendPDF', '/site/upload-pdf'),
('Customer_Permission', '/dbeditor/customer/*'),
('CustomerType_Permission', '/dbeditor/customer-type/*'),
('dbPermission', '/dbeditor/*'),
('dbQuery', '/dbeditor/query/*'),
('Division_Permission', '/dbeditor/division/*'),
('NMD-DIVISION HEAD', 'NMDpermission'),
('NMD-DIVISION HEAD', 'USERS'),
('NMDpermission', '/nmd/chart/index'),
('PaymentMethod_Permission', '/dbeditor/payment-method/*'),
('practiceChart', '/chart/*'),
('SECRETARY', 'USERS'),
('STD-DIVISION HEAD', 'STDpermission'),
('STD-DIVISION HEAD', 'USERS'),
('STDpermission', '/std/chart/index'),
('TOP MANAGEMENT', 'canPredict'),
('TOP MANAGEMENT', 'NMDpermission'),
('TOP MANAGEMENT', 'STDpermission'),
('TOP MANAGEMENT', 'USERS'),
('Transaction_Permission', '/dbeditor/transaction/*'),
('TransactionStatus_Permission', '/dbeditor/transaction-status/*'),
('TransactionType_Permission', '/dbeditor/transaction-type/*'),
('USERS', '/site/*'),
('USERS', '/terms/index'),
('USERS', '/userprofile/*');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1689773537),
('m130524_201442_init', 1689773539),
('m140506_102106_rbac_init', 1689774849),
('m140602_111327_create_menu_table', 1689775049),
('m160312_050000_create_user', 1689775049),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1689774849),
('m180523_151638_rbac_updates_indexes_without_prefix', 1689774850),
('m181018_070730_create_table_survey', 1691456470),
('m181018_070730_create_table_survey_answer', 1691456470),
('m181018_070730_create_table_survey_question', 1691456602),
('m181018_070730_create_table_survey_stat', 1691457231),
('m181018_070730_create_table_survey_type', 1691457231),
('m181018_070730_create_table_survey_user_answer', 1691457231),
('m190124_110200_add_verification_token_column_to_user_table', 1689773539),
('m200409_110543_rbac_update_mssql_trigger', 1689774850);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
