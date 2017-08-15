-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2017 at 08:53 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_cookies`
--

CREATE TABLE `ci_cookies` (
  `id` int(11) NOT NULL,
  `cookie_id` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `netid` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `orig_page_requested` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `php_session_id` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `ip_address` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `user_agent` varchar(120) CHARACTER SET latin1 NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('6cf56906eb51c65cabd0342906fb9cf6', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1502003101, 'a:7:{s:9:"user_data";s:0:"";s:9:"user_name";s:8:"zhang901";s:12:"is_logged_in";b:1;s:20:"manufacture_selected";N;s:22:"search_string_selected";N;s:5:"order";N;s:10:"order_type";N;}'),
('f305bda1cdf0d74fb5fa507cbecb07ef', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1502043416, 'a:7:{s:9:"user_data";s:0:"";s:9:"user_name";s:8:"zhang901";s:12:"is_logged_in";b:1;s:20:"manufacture_selected";N;s:22:"search_string_selected";N;s:5:"order";N;s:10:"order_type";N;}'),
('150b8f0f18b47212d777b984c4f911bf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1502096588, 'a:7:{s:9:"user_data";s:0:"";s:9:"user_name";s:8:"zhang901";s:12:"is_logged_in";b:1;s:20:"manufacture_selected";N;s:22:"search_string_selected";N;s:5:"order";N;s:10:"order_type";N;}');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`) VALUES
(1, 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `email_addres` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `pass_word` varchar(32) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `first_name`, `last_name`, `email_addres`, `user_name`, `pass_word`) VALUES
(1, 'guohong', 'zhang', 'zhang901@outlook.com', 'zhang901', '46374d09c812d3d0c78639ffbb96e640');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data1` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `data2` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `data3` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `uid`, `name`, `create_date`, `data1`, `data2`, `data3`, `update_date`, `object`) VALUES
(13, '1b1fa51b7dcac8d350116003ffc4214a', 'rkslwdyd', '2017-08-07 12:56:14', 'fjdlkgjrjd', 'ehkrsj', 'whrlak', '2017-08-07 14:37:01', 'gifxos'),
(14, '11677131bcd48f7a1c94b6b98c7f8849', 'durksngkr', '2017-08-07 13:02:17', 'fjdlkgjrjd', 'gifxos', 'ajrsjrj', '2017-08-07 13:02:17', 'wkro'),
(15, '6d730d3a71e9d62a293a01d93d8ecace', 'durksngkr', '2017-08-07 13:06:53', 'fjdlkgjrjd', 'gifxos', 'ajrsjrj', '2017-08-07 13:06:53', 'wkro'),
(16, '5a908330246fe4876203a5e03df153e4', 'durksngkr', '2017-08-07 13:07:38', 'fjdlkgjrjd', 'gifxos', 'ajrsjrj', '2017-08-07 13:07:38', 'wkro'),
(17, '31bdeaa3a6a9db376d29f65fdf7b8113', 'durksngkr', '2017-08-07 13:08:28', 'fjdlkgjrjd', 'gifxos', 'ajrsjrj', '2017-08-07 13:08:28', 'wkro'),
(18, '8db8039fac92b45771c2bac164ea82c8', 'fjdlkgjrjd', '2017-08-07 13:16:07', 'zhwcbxi', 'ausdlrj', 'wkro', '2017-08-07 13:16:07', 'gkfgkw'),
(19, '875550ab1f9c18ac13a5049f9225df51', 'fjdlkgjrjd', '2017-08-07 13:16:36', 'zhwcbxi', 'ausdlrj', 'wkro', '2017-08-07 13:16:36', 'gkfgkw'),
(20, '07f38ed81cf4e12588f4e5551e713cf8', 'fjdlkgjrjd', '2017-08-07 13:17:03', 'zhwcbxi', 'ausdlrj', 'wkro', '2017-08-07 13:17:03', 'gkfgkw'),
(21, 'fcadce26e1925e4348ab15421736a794', 'fjdlkgjrjd', '2017-08-07 13:35:15', 'zhwcbxi', 'ausdlrj', 'wkro', '2017-08-07 13:35:15', 'gkfgkw'),
(22, '0944826cf3af2f5cfcdd18721084fe88', 'rkslwdyd', '2017-08-07 14:41:38', 'wkro', 'tlkwjd', 'gkfgkw', '2017-08-07 14:41:38', 'rjsshjf'),
(23, 'd726055aaf265992b198b24f90259406', 'rkslwdyd', '2017-08-07 14:41:59', 'djcfjr', 'tlkwjd', 'gkfgkw', '2017-08-07 14:41:59', 'rjsshjf'),
(24, '76ac7e31a181eb8e627364328efae036', 'rkslwdyd', '2017-08-07 14:42:46', 'djcfjr', 'ehdwu', 'gkfgkw', '2017-08-07 14:42:46', 'rjsshjf'),
(25, '885d8495e3fa6a00176574b366398595', 'gkfgkw', '2017-08-08 07:30:56', NULL, NULL, NULL, '2017-08-08 07:30:56', NULL),
(26, '5cb3952c0da09b30cc505efc8eb53ccd', 'gkfgkw', '2017-08-08 07:33:16', NULL, NULL, NULL, '2017-08-08 07:33:16', NULL),
(27, '6514fec00cfaebdbfabc0eb53a575c1c', 'gkfgkw', '2017-08-08 07:33:26', NULL, NULL, NULL, '2017-08-08 07:33:26', NULL),
(28, '5070327f8ceca460f204eb58eeec4b6e', 'gkfgkw', '2017-08-08 07:35:30', NULL, NULL, NULL, '2017-08-08 07:35:30', NULL),
(29, '527704bc7b1bcdc732a4c63644980fc7', 'gkfgkw', '2017-08-08 08:01:46', './uploads/527704bc7b1bcdc732a4c63644980fc7/student_details.xlsx', NULL, './uploads/527704bc7b1bcdc732a4c63644980fc7/index.php', '2017-08-08 08:01:57', NULL),
(30, 'c9a42e8bcbb825ac17976c3e492915f3', 'gkfgkw', '2017-08-08 08:45:36', NULL, NULL, NULL, '2017-08-08 08:45:36', NULL),
(31, '6e5c130dc3206a85c1fa54a9fb1068fb', 'gkfgkw', '2017-08-08 08:56:10', NULL, NULL, NULL, '2017-08-08 08:56:10', NULL),
(32, '8a72904374fbb4004dd0e1de1aeca172', 'gkfgkw', '2017-08-08 09:19:20', NULL, NULL, NULL, '2017-08-08 09:19:20', NULL),
(33, '3c071007c18625aa0a6c1cb7ccf7217b', 'gkfgkw', '2017-08-08 09:20:26', NULL, NULL, NULL, '2017-08-08 09:20:26', NULL),
(34, '2d336bbc7a5bd5f09259e41934284927', NULL, '2017-08-08 09:21:08', NULL, NULL, NULL, '2017-08-08 09:21:08', NULL),
(35, 'ced2dd2a53cc2b42e76c24e600c05cb6', NULL, '2017-08-08 09:21:18', NULL, NULL, NULL, '2017-08-08 09:21:18', NULL),
(36, '5951726e1ca788288c874c283ca93bd5', NULL, '2017-08-08 12:18:06', NULL, NULL, NULL, '2017-08-08 12:18:06', NULL),
(37, 'd62e9c6c07933d9fe9e4d4973c1a8ab1', NULL, '2017-08-08 12:19:38', NULL, NULL, NULL, '2017-08-08 12:19:38', NULL),
(38, 'a1f625c79774c2c16d3295b0be9fb087', NULL, '2017-08-08 12:20:39', NULL, NULL, NULL, '2017-08-08 12:20:39', NULL),
(39, '5d3d8936e0e9943568e14712d21cfb2f', NULL, '2017-08-08 12:22:03', './uploads/5d3d8936e0e9943568e14712d21cfb2f/student_details.xlsx', './uploads/5d3d8936e0e9943568e14712d21cfb2f/AngularJs .pptx', './uploads/5d3d8936e0e9943568e14712d21cfb2f/index.php', '2017-08-08 12:22:20', NULL),
(40, '6a48f3f0de497c6566ab20da8cc38e19', NULL, '2017-08-08 12:24:53', NULL, NULL, NULL, '2017-08-08 12:24:53', NULL),
(41, '2ff20413131d16bfaaaf540c71592640', NULL, '2017-08-08 12:25:11', './uploads/2ff20413131d16bfaaaf540c71592640/student_details.xlsx', './uploads/2ff20413131d16bfaaaf540c71592640/AngularJs .pptx', './uploads/2ff20413131d16bfaaaf540c71592640/index.php', '2017-08-08 12:25:21', NULL),
(42, '6691dce6f2ccf9ab63e13188d4a6fba2', NULL, '2017-08-08 12:37:45', './uploads/6691dce6f2ccf9ab63e13188d4a6fba2/student_details.xlsx', './uploads/6691dce6f2ccf9ab63e13188d4a6fba2/Backbone js ? ???.pptx', './uploads/6691dce6f2ccf9ab63e13188d4a6fba2/index.php', '2017-08-08 12:37:45', NULL),
(43, '5198b3d3f533d201c25d3f2d1c27e0c8', NULL, '2017-08-08 12:47:08', './uploads/5198b3d3f533d201c25d3f2d1c27e0c8/student_details.xlsx', './uploads/5198b3d3f533d201c25d3f2d1c27e0c8/Backbone js ? ???.pptx', './uploads/5198b3d3f533d201c25d3f2d1c27e0c8/index.php', '2017-08-08 12:47:08', NULL),
(44, '535017e97d8b8516bf57da7318bda465', NULL, '2017-08-08 12:47:21', './uploads/535017e97d8b8516bf57da7318bda465/student_details.xlsx', './uploads/535017e97d8b8516bf57da7318bda465/Backbone js ? ???.pptx', './uploads/535017e97d8b8516bf57da7318bda465/index.php', '2017-08-08 12:48:31', NULL),
(45, 'a80ddf73fc2c1e712b2ae79070485f55', NULL, '2017-08-08 12:56:09', './uploads/a80ddf73fc2c1e712b2ae79070485f55/student_details.xlsx', '0', './uploads/a80ddf73fc2c1e712b2ae79070485f55/index.php', '2017-08-08 12:56:09', NULL),
(46, 'd2a867976ec8d8e0aa7a1ff1f73ddc29', NULL, '2017-08-08 12:57:02', './uploads/d2a867976ec8d8e0aa7a1ff1f73ddc29/student_details.xlsx', './uploads/d2a867976ec8d8e0aa7a1ff1f73ddc29/Backbone js ? ???.pptx', './uploads/d2a867976ec8d8e0aa7a1ff1f73ddc29/index.php', '2017-08-08 12:57:02', NULL),
(47, '8689999d4bebd26974ecd8e5d561fa2e', NULL, '2017-08-08 13:06:11', './uploads/8689999d4bebd26974ecd8e5d561fa2e/student_details.xlsx', './uploads/8689999d4bebd26974ecd8e5d561fa2e/Backbone js ? ???.pptx', './uploads/8689999d4bebd26974ecd8e5d561fa2e/index.php', '2017-08-08 13:06:12', NULL),
(48, 'cde5c2185f7918d0c419af0f471d92d2', NULL, '2017-08-08 13:09:36', NULL, NULL, NULL, '2017-08-08 13:09:36', NULL),
(49, 'df605845e2414ed1b7421b3bc1f31ccb', NULL, '2017-08-08 13:09:49', NULL, NULL, NULL, '2017-08-08 13:09:49', NULL),
(50, '22258642988259529b857c452ee6b160', NULL, '2017-08-08 13:10:29', NULL, NULL, NULL, '2017-08-08 13:10:29', NULL),
(51, '0cf189f8ce35b1bda71cc5f4c606c2cb', NULL, '2017-08-08 13:10:51', NULL, NULL, NULL, '2017-08-08 13:10:51', NULL),
(52, '0baed5a01fee4c44b60699e965918785', NULL, '2017-08-08 13:11:41', NULL, NULL, NULL, '2017-08-08 13:11:41', NULL),
(53, '4f71376ad993a48480c16d7480a8c25b', NULL, '2017-08-08 13:11:48', './uploads/4f71376ad993a48480c16d7480a8c25b/student_details.xlsx', './uploads/4f71376ad993a48480c16d7480a8c25b/Backbone js ? ???.pptx', './uploads/4f71376ad993a48480c16d7480a8c25b/index.php', '2017-08-08 13:11:48', NULL),
(54, 'f6992eb078ce15b413926a460823630f', NULL, '2017-08-08 13:16:45', './uploads/f6992eb078ce15b413926a460823630f/student_details.xlsx', './uploads/f6992eb078ce15b413926a460823630f/Backbone js ? ???.pptx', './uploads/f6992eb078ce15b413926a460823630f/index.php', '2017-08-08 13:16:45', NULL),
(55, 'a93aae317b894e0251863a85e0b794ba', NULL, '2017-08-08 13:19:59', './uploads/a93aae317b894e0251863a85e0b794ba/student_details.xlsx', './uploads/a93aae317b894e0251863a85e0b794ba/Backbone js ? ???.pptx', './uploads/a93aae317b894e0251863a85e0b794ba/index.php', '2017-08-08 13:24:14', NULL),
(56, '7699429e90b6a3b2e8589b307be539b0', NULL, '2017-08-08 13:46:19', './uploads/7699429e90b6a3b2e8589b307be539b0/student_details.xlsx', './uploads/7699429e90b6a3b2e8589b307be539b0/Backbone js ? ???.pptx', './uploads/7699429e90b6a3b2e8589b307be539b0/index.php', '2017-08-08 13:46:19', NULL),
(57, '387da7fd754441ba687e9e3699650af2', NULL, '2017-08-08 13:48:37', './uploads/387da7fd754441ba687e9e3699650af2/student_details.xlsx', './uploads/387da7fd754441ba687e9e3699650af2/Backbone js ? ???.pptx', './uploads/387da7fd754441ba687e9e3699650af2/index.php', '2017-08-08 13:48:37', NULL),
(58, '1fd6d417b1270e2f4adcc7b6e953bd19', NULL, '2017-08-08 17:52:16', NULL, NULL, NULL, '2017-08-08 17:52:16', NULL),
(59, '539637dfe352491fe6cfd09d851c08dc', NULL, '2017-08-08 18:09:54', NULL, NULL, NULL, '2017-08-08 18:09:54', NULL),
(60, '65a55625d4ec8da25062972e9cfc85dd', NULL, '2017-08-08 18:10:37', NULL, NULL, NULL, '2017-08-08 18:10:37', NULL),
(61, 'e772a2453eb20b3cf353950feee0a65e', NULL, '2017-08-08 18:11:19', './uploads/e772a2453eb20b3cf353950feee0a65e/Beacon.pptx', './uploads/e772a2453eb20b3cf353950feee0a65e/blockhain2p0.pdf', './uploads/e772a2453eb20b3cf353950feee0a65e/IMG_3020.MOV', '2017-08-08 18:11:22', NULL),
(62, '0d85d02232921b646ab9c7f174b1ef19', NULL, '2017-08-08 18:12:04', NULL, NULL, NULL, '2017-08-08 18:12:04', NULL),
(63, '9f4f13e450cf4b50a3d4d2c80edd8815', NULL, '2017-08-08 18:21:23', NULL, NULL, NULL, '2017-08-08 18:21:23', NULL),
(64, '9662e40ca45b40778e928bcfc4aaa5c8', NULL, '2017-08-08 18:22:25', NULL, NULL, NULL, '2017-08-08 18:22:25', NULL),
(65, '95748536f5084cce10390cc87ade3dc9', NULL, '2017-08-08 18:23:03', NULL, NULL, NULL, '2017-08-08 18:23:03', NULL),
(66, '28fe90491fe05fdbc5f49d1750f37a83', NULL, '2017-08-08 18:23:24', NULL, NULL, NULL, '2017-08-08 18:23:24', NULL),
(67, '4dceb9ea5ae7c5839d969bcbfeb6f94b', NULL, '2017-08-08 18:24:17', NULL, NULL, NULL, '2017-08-08 18:24:17', NULL),
(68, '0a45c997a4719da737879fa6ae4bd073', NULL, '2017-08-08 18:24:31', NULL, NULL, NULL, '2017-08-08 18:24:31', NULL),
(69, '44794ac5785d171f758adf2c11f74f2f', NULL, '2017-08-08 18:24:44', NULL, NULL, NULL, '2017-08-08 18:24:44', NULL),
(70, '69dae12c4acbbdd22222d90bdb69d647', NULL, '2017-08-08 18:24:51', './uploads/69dae12c4acbbdd22222d90bdb69d647/Beacon.pptx', './uploads/69dae12c4acbbdd22222d90bdb69d647/blockhain2p0.pdf', './uploads/69dae12c4acbbdd22222d90bdb69d647/IMG_3020.MOV', '2017-08-08 18:24:51', NULL),
(71, 'c84bfa2bc9955cea41d797559d4d59c6', NULL, '2017-08-08 18:25:50', './uploads/c84bfa2bc9955cea41d797559d4d59c6/Beacon.pptx', './uploads/c84bfa2bc9955cea41d797559d4d59c6/blockhain2p0.pdf', './uploads/c84bfa2bc9955cea41d797559d4d59c6/IMG_3020.MOV', '2017-08-08 18:25:51', NULL),
(72, 'f39d916ccf1d5601b351d7fff0a3864f', NULL, '2017-08-08 18:26:29', './uploads/f39d916ccf1d5601b351d7fff0a3864f/3.pptx', './uploads/f39d916ccf1d5601b351d7fff0a3864f/file_download.php', './uploads/f39d916ccf1d5601b351d7fff0a3864f/AngularJs .pptx', '2017-08-08 18:26:29', NULL),
(73, '3ef9a660bb54dc8f489f3ba200cf29bf', NULL, '2017-08-08 18:26:45', './uploads/3ef9a660bb54dc8f489f3ba200cf29bf/3.pptx', './uploads/3ef9a660bb54dc8f489f3ba200cf29bf/datapackage.json', './uploads/3ef9a660bb54dc8f489f3ba200cf29bf/AngularJs .pptx', '2017-08-08 18:26:46', NULL),
(74, 'e720a9e7e64e66da3ba234e5ebbccd6c', NULL, '2017-08-08 18:27:22', NULL, NULL, NULL, '2017-08-08 18:27:22', NULL),
(75, 'ef7dc0fb940b396b661e56a29b2edd07', NULL, '2017-08-08 18:27:33', NULL, NULL, NULL, '2017-08-08 18:27:33', NULL),
(76, '540b9a25c2f14d22d16c36881263ebfb', NULL, '2017-08-08 18:29:25', './uploads/540b9a25c2f14d22d16c36881263ebfb/3.pptx', './uploads/540b9a25c2f14d22d16c36881263ebfb/datapackage.json', './uploads/540b9a25c2f14d22d16c36881263ebfb/Beacon.pptx', '2017-08-08 18:29:26', NULL),
(77, '0ff88430a95ee41dd5e0476f9794b719', NULL, '2017-08-08 18:30:13', './uploads/0ff88430a95ee41dd5e0476f9794b719/3.pptx', './uploads/0ff88430a95ee41dd5e0476f9794b719/datapackage.json', './uploads/0ff88430a95ee41dd5e0476f9794b719/Beacon.pptx', '2017-08-08 18:30:13', NULL),
(78, 'eab062e02d0a3241d891c35a4cc62547', NULL, '2017-08-08 18:30:17', './uploads/eab062e02d0a3241d891c35a4cc62547/3.pptx', './uploads/eab062e02d0a3241d891c35a4cc62547/datapackage.json', './uploads/eab062e02d0a3241d891c35a4cc62547/Beacon.pptx', '2017-08-08 18:30:18', NULL),
(79, '8a6f08691b01d9d7ca196f821727c124', NULL, '2017-08-08 18:30:49', NULL, NULL, NULL, '2017-08-08 18:30:49', NULL),
(80, 'ae28911288ef800b059ee48d4218499e', NULL, '2017-08-08 18:31:22', NULL, NULL, NULL, '2017-08-08 18:31:22', NULL),
(81, 'ef939ee5389e6e3030dd4842e7b7ce49', NULL, '2017-08-08 18:31:23', NULL, NULL, NULL, '2017-08-08 18:31:23', NULL),
(82, '79d7d06528ef983ed1e428e75d8b5982', NULL, '2017-08-08 18:31:27', NULL, NULL, NULL, '2017-08-08 18:31:27', NULL),
(83, '51f25560fac32f64967efaf8603a3cc7', NULL, '2017-08-08 18:31:33', NULL, NULL, NULL, '2017-08-08 18:31:33', NULL),
(84, 'fa2069a280607dffe4846d0ab07858c9', NULL, '2017-08-08 18:31:35', NULL, NULL, NULL, '2017-08-08 18:31:35', NULL),
(85, '9077e1be55403eff0bd60fac5368daed', NULL, '2017-08-08 18:31:40', NULL, NULL, NULL, '2017-08-08 18:31:40', NULL),
(86, '04b41b73327c9ff7141b38895560aefc', NULL, '2017-08-08 18:32:00', './uploads/04b41b73327c9ff7141b38895560aefc/3.pptx', './uploads/04b41b73327c9ff7141b38895560aefc/datapackage.json', './uploads/04b41b73327c9ff7141b38895560aefc/Beacon.pptx', '2017-08-08 18:32:00', NULL),
(87, '4dc90bbaec674cf5580c412c279f135b', NULL, '2017-08-08 18:32:08', './uploads/4dc90bbaec674cf5580c412c279f135b/3.pptx', './uploads/4dc90bbaec674cf5580c412c279f135b/datapackage.json', './uploads/4dc90bbaec674cf5580c412c279f135b/Beacon.pptx', '2017-08-08 18:32:08', NULL),
(88, 'eaea884b1c38adc96ff1674a9fa1660d', NULL, '2017-08-08 18:32:52', './uploads/eaea884b1c38adc96ff1674a9fa1660d/3.pptx', './uploads/eaea884b1c38adc96ff1674a9fa1660d/datapackage.json', './uploads/eaea884b1c38adc96ff1674a9fa1660d/star.png', '2017-08-08 18:32:53', NULL),
(89, '02d06a177efcdacd520897b4acfec88c', NULL, '2017-08-08 18:33:31', './uploads/02d06a177efcdacd520897b4acfec88c/3.pptx', './uploads/02d06a177efcdacd520897b4acfec88c/111.jpg', './uploads/02d06a177efcdacd520897b4acfec88c/star.png', '2017-08-08 18:33:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_cookies`
--
ALTER TABLE `ci_cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_cookies`
--
ALTER TABLE `ci_cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
