-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2024 at 07:31 AM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quickjot_updatedv7`
--

-- --------------------------------------------------------

--
-- Table structure for table `airtime`
--

CREATE TABLE `airtime` (
  `aId` int(11) NOT NULL,
  `aNetwork` varchar(10) NOT NULL,
  `aBuyDiscount` float NOT NULL DEFAULT 96,
  `aUserDiscount` float NOT NULL,
  `aAgentDiscount` float NOT NULL,
  `aVendorDiscount` float NOT NULL,
  `aType` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airtime`
--

INSERT INTO `airtime` (`aId`, `aNetwork`, `aBuyDiscount`, `aUserDiscount`, `aAgentDiscount`, `aVendorDiscount`, `aType`) VALUES
(1, '1', 99, 99, 99, 99, 'VTU'),
(2, '2', 99, 99, 99, 99, 'VTU'),
(3, '3', 99, 99, 99, 99, 'VTU'),
(4, '4', 99, 99, 99, 99, 'VTU'),
(5, '1', 99, 99, 99, 99, 'Share And Sell'),
(6, '2', 99, 99, 99, 99, 'Share And Sell'),
(7, '3', 99, 99, 99, 99, 'Share And Sell'),
(8, '4', 99, 99, 99, 99, 'Share And Sell');

-- --------------------------------------------------------

--
-- Table structure for table `airtimepin`
--

CREATE TABLE `airtimepin` (
  `id` int(11) NOT NULL,
  `aNetwork` int(11) NOT NULL,
  `planSize` varchar(255) NOT NULL,
  `aBuyPrice` decimal(10,2) NOT NULL,
  `aUserPrice` decimal(10,2) NOT NULL,
  `aAgentPrice` decimal(10,2) NOT NULL,
  `aVendorPrice` decimal(10,2) NOT NULL,
  `loadpin` varchar(255) DEFAULT NULL,
  `checkbalance` varchar(255) DEFAULT NULL,
  `planid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airtimepin`
--

INSERT INTO `airtimepin` (`id`, `aNetwork`, `planSize`, `aBuyPrice`, `aUserPrice`, `aAgentPrice`, `aVendorPrice`, `loadpin`, `checkbalance`, `planid`) VALUES
(4, 1, '100', 98.00, 98.00, 98.00, 98.00, '555', '444', 1),
(5, 1, '200', 198.00, 197.00, 196.00, 195.00, '444', '444', 2),
(6, 1, '1000', 100.00, 99.00, 99.00, 96.50, '*555#', '*555#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `airtimepinprice`
--

CREATE TABLE `airtimepinprice` (
  `aId` int(100) NOT NULL,
  `aNetwork` varchar(10) NOT NULL,
  `aUserDiscount` float NOT NULL,
  `aAgentDiscount` float NOT NULL,
  `aVendorDiscount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airtimepinprice`
--

INSERT INTO `airtimepinprice` (`aId`, `aNetwork`, `aUserDiscount`, `aAgentDiscount`, `aVendorDiscount`) VALUES
(1, '1', 99, 98, 97),
(2, '2', 99, 98, 97),
(3, '3', 99, 98, 97),
(4, '4', 99, 98, 97);

-- --------------------------------------------------------

--
-- Table structure for table `airtimepinstock`
--

CREATE TABLE `airtimepinstock` (
  `id` int(11) NOT NULL,
  `aNetwork` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `tokens` varchar(55) DEFAULT NULL,
  `serial` varchar(55) DEFAULT NULL,
  `status` enum('Unused','Bought') DEFAULT 'Unused',
  `soldto` varchar(55) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airtimepinstock`
--

INSERT INTO `airtimepinstock` (`id`, `aNetwork`, `amount`, `tokens`, `serial`, `status`, `soldto`, `date`) VALUES
(1, 1, 100.00, '1234567890123456', 'ABC123', 'Unused', NULL, '2024-08-26 21:48:50'),
(2, 2, 200.00, '9876543210987654', 'XYZ789', 'Unused', NULL, '2024-08-26 21:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `alphatopupprice`
--

CREATE TABLE `alphatopupprice` (
  `alphaId` int(11) NOT NULL,
  `buyingPrice` int(11) NOT NULL,
  `sellingPrice` int(11) NOT NULL,
  `agent` int(11) NOT NULL,
  `vendor` int(11) NOT NULL,
  `dPosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apiconfigs`
--

CREATE TABLE `apiconfigs` (
  `aId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `apiconfigs`
--

INSERT INTO `apiconfigs` (`aId`, `name`, `value`) VALUES
(1, 'monifyCharges', '3'),
(2, 'monifyApi', 'MK_PROD_2GSQ3JUJFJ'),
(3, 'monifySecrete', 'CCDS3NK2ZJD47UCNUV3HJJ8J0N3CEDVU'),
(4, 'monifyContract', '873309372131'),
(5, 'monifyWeStatus', 'On'),
(6, 'monifyMoStatus', 'Off'),
(7, 'monifyFeStatus', 'Off'),
(8, 'monifySaStatus', 'Off'),
(9, 'monifyStatus', 'On'),
(13, 'mtnVtuKey', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(14, 'mtnVtuProvider', 'https://api.hbi.com.ng/api/airtime/'),
(15, 'mtnSharesellKey', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(16, 'mtnSharesellProvider', 'https://api.hbi.com.ng/api/airtime/'),
(17, 'airtelVtuKey', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(18, 'airtelVtuProvider', 'https://api.hbi.com.ng/api/airtime/'),
(19, 'airtelSharesellKey', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(20, 'airtelSharesellProvider', 'https://api.hbi.com.ng/api/airtime/'),
(21, 'gloVtuKey', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(22, 'gloVtuProvider', 'https://api.hbi.com.ng/api/airtime/'),
(23, 'gloSharesellKey', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(24, 'gloSharesellProvider', 'https://api.hbi.com.ng/api/airtime/'),
(25, '9mobileVtuKey', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(26, '9mobileVtuProvider', 'https://api.hbi.com.ng/api/airtime/'),
(27, '9mobileSharesellKey', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(28, '9mobileSharesellProvider', 'https://api.hbi.com.ng/api/airtime/'),
(29, 'mtnSmeApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(30, 'mtnSmeProvider', 'https://api.hbi.com.ng/api/data/'),
(31, 'mtnGiftingApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(32, 'mtnGiftingProvider', 'https://api.hbi.com.ng/api/data/'),
(33, 'mtnCorporateApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(34, 'mtnCorporateProvider', 'https://api.hbi.com.ng/api/data/'),
(35, 'airtelSmeApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(36, 'airtelSmeProvider', 'https://api.hbi.com.ng/api/data/'),
(37, 'airtelGiftingApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(38, 'airtelGiftingProvider', 'https://api.hbi.com.ng/api/data/'),
(39, 'airtelCorporateApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(40, 'airtelCorporateProvider', 'https://api.hbi.com.ng/api/data/'),
(41, 'gloSmeApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(42, 'gloSmeProvider', 'https://api.hbi.com.ng/api/data/'),
(43, 'gloGiftingApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(44, 'gloGiftingProvider', 'https://api.hbi.com.ng/api/data/'),
(45, 'gloCorporateApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(46, 'gloCorporateProvider', 'https://api.hbi.com.ng/api/data/'),
(47, '9mobileSmeApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(48, '9mobileSmeProvider', 'https://api.hbi.com.ng/api/data/'),
(49, '9mobileGiftingApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(50, '9mobileGiftingProvider', 'https://api.hbi.com.ng/api/data/'),
(51, '9mobileCorporateApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(52, '9mobileCorporateProvider', 'https://api.hbi.com.ng/api/data/'),
(53, 'cableVerificationApi', 'asdaaerawweatbU(Y899yt98'),
(54, 'cableVerificationProvider', 'https://goocredit.mwb.ng/api/cabletv/verify/'),
(55, 'cableApi', 'asdaaerawweatbU(Y899yt98'),
(56, 'cableProvider', 'https://goocredit.mwb.ng/api/cabletv/'),
(57, 'meterVerificationApi', 'asdaaerawweatbU(Y899yt98'),
(58, 'meterVerificationProvider', 'https://goocredit.mwb.ng/api/electricity/verify/'),
(59, 'meterApi', 'asdaaerawweatbU(Y899yt98'),
(60, 'meterProvider', 'https://goocredit.mwb.ng/api/electricity/'),
(61, 'examApi', 'asdaaerawweatbU(Y899yt98'),
(62, 'examProvider', 'https://goocredit.mwb.ng/api/exam/'),
(63, 'rechargePinApi', 'asdaaerawweatbU(Y899yt98'),
(64, 'rechargePinProvider', 'https://goocredit.mwb.ng/api/user/'),
(65, 'walletOneApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(66, 'walletOneProvider', 'https://api.hbi.com.ng/api/user/'),
(67, 'walletOneProviderName', 'Quickjot'),
(68, 'walletTwoApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(69, 'walletTwoProvider', 'https://api.hbi.com.ng/api/user/'),
(70, 'walletTwoProviderName', 'Quickjot'),
(71, 'walletThreeApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(72, 'walletThreeProvider', 'https://api.hbi.com.ng/api/user/'),
(73, 'walletThreeProviderName', 'Quickjot'),
(74, 'walletFourApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(75, 'walletFourProvider', 'https://api.hbi.com.ng/api/user/'),
(76, 'walletFourProviderName', 'Quickjot'),
(77, 'walletFiveApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(78, 'walletFiveProvider', 'https://api.hbi.com.ng/api/user/'),
(79, 'walletFiveProviderName', 'Quickjot'),
(80, 'walletSixApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(81, 'walletSixProvider', 'https://api.hbi.com.ng/api/user/'),
(82, 'walletSixProviderName', 'Quickjot'),
(83, 'kudaEmail', 'checom@gmail.com'),
(84, 'kudaApi', 'hhh'),
(85, 'kudaWebhookUser', 'chG'),
(86, 'kudaWebhookPass', 'cheNG'),
(87, 'kudaChargesType', 'flat'),
(88, 'kudaCharges', '20'),
(89, 'kudaStatus', 'Off'),
(90, 'monifyGtStatus', 'On'),
(91, 'airtime2cashstatus', 'On'),
(92, 'airtime2cashmtnno', '0'),
(93, 'airtime2cashmtnrate', '80'),
(94, 'airtime2cashairtelno', '0000000000'),
(95, 'airtime2cashairtelrate', '70'),
(96, 'airtime2cashglono', '00000000000'),
(97, 'airtime2cashglorate', '70'),
(98, 'airtime2cash9mobileno', '00000000000'),
(99, 'airtime2cash9mobilerate', '70'),
(100, 'asfiyApi', 'Aspfiy-94aa184dd97e8044eb7b8eef832605a7'),
(101, 'asfiyWebhook', 'https://quickjot.com.ng/webhook/aspfiy/index.php'),
(102, 'asfiyChargesType', 'per'),
(103, 'asfiyCharges', '2'),
(104, 'asfiyStatus', 'On'),
(105, 'dataPinApi', 'asdaaerawweatbU(Y899yt98'),
(106, 'dataPinProvider', 'https://goocredit.mwb.ng/api/datapin/'),
(107, 'mtnSme2Api', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(108, 'mtnSme2Provider', 'https://api.hbi.com.ng/api/data/'),
(109, 'mtnCorporate2Api', '71smn1Ab48axiBCkwDIo6q11ss'),
(110, 'mtnCorporate2Provider', 'https://myaabaxztech.com/api/data/'),
(116, 'mtnBononzaProvider', 'https://legitdataway.com/api/data/'),
(115, 'mtnBononzaApi', 'RGFuYXl1OkBAMDgwQEBhWi0w'),
(117, 'mtnCouponProvider', 'https://api.hbi.com.ng/api/data/'),
(118, 'mtnCouponApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(119, 'payvesselBusinessId', 'C32328D07C48438E9FD9E1BFC1CB750C'),
(120, 'payvesselApiKey', 'PVKEY-0J5JFYLTDILTAOFC7KSPMPW0Q1ZDRAWM'),
(121, 'payvesselSecret', 'PVSECRET-0DL8PD5MS16LSMS5FNUW1TN0MF0OL3JJ54CD65492086FN9ON6W3EJT390BIQF6G'),
(122, 'payvesselChargesType', 'per'),
(123, 'payvesselStatus', 'On'),
(124, 'payvesselCharges', '2'),
(125, 'paystackCharges', '5'),
(126, 'paystackApi', 'sk_live_b38ead3ba731b018376c40aa6e00bc17debd2f95'),
(128, 'alphaApi', 'asdaaerawweatbU(Y899yt98'),
(129, 'alphaProvider', 'https://goocredit.mwb.ng/api/user/'),
(130, 'airtelSme2Api', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(131, 'airtelSme2Provider', 'https://api.hbi.com.ng/api/data/'),
(132, 'airtelCouponApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(133, 'airtelCouponProvider', 'https://api.hbi.com.ng/api/data/'),
(134, 'gloSme2Api', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(135, 'gloSme2Provider', 'https://api.hbi.com.ng/api/data/'),
(136, 'gloCouponApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(137, 'gloCouponProvider', 'https://api.hbi.com.ng/api/data/'),
(138, '9mobileSme2Api', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(139, '9mobileSme2Provider', 'https://api.hbi.com.ng/api/data/'),
(140, '9mobileCouponApi', 'hb0CCCcHkz3aA8nwfC17s6pd52meAxCA23qt4i73cCBAA4GrEDB6CBxdCCCF1732429287'),
(141, '9mobileCouponProvider', 'https://api.hbi.com.ng/api/data/'),
(142, 'paystackStatus', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `apilinks`
--

CREATE TABLE `apilinks` (
  `aId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `apilinks`
--

INSERT INTO `apilinks` (`aId`, `name`, `value`, `type`) VALUES
(123, 'GooCredit', 'https://goocredit.mwb.ng/api/cabletv/verify/', 'CableVer'),
(122, 'GooCredit', 'https://goocredit.mwb.ng/api/cabletv/', 'Cable'),
(121, 'GooCredit', 'https://goocredit.mwb.ng/api/airtime/', 'Airtime'),
(120, 'GooCredit', 'https://goocredit.mwb.ng/api/data/', 'Data'),
(119, 'GooCredit', 'https://goocredit.mwb.ng/api/user/', 'Wallet'),
(124, 'GooCredit', 'https://goocredit.mwb.ng/api/electricity/', 'Electricity'),
(125, 'GooCredit', 'https://goocredit.mwb.ng/api/electricity/verify/', 'ElectricityVer'),
(126, 'GooCredit', 'https://goocredit.mwb.ng/api/exam/', 'Exam'),
(127, 'GooCredit', 'https://goocredit.mwb.ng/api/datapin/', 'Data Pin'),
(128, 'hbi.com.ng', 'https://api.hbi.com.ng/api/user/', 'Wallet'),
(129, 'hbi.com.ng', 'https://api.hbi.com.ng/api/airtime/', 'Airtime'),
(130, 'hbi.com.ng', 'https://api.hbi.com.ng/api/data/', 'Data'),
(131, 'hbi.com.ng', 'https://api.hbi.com.ng/api/datapin/', 'Data Pin'),
(132, 'hbi.com.ng', 'https://api.hbi.com.ng/api/exam/', 'Exam'),
(133, 'VtuNaija', 'https://vtunaija.com.ng/api/user/', 'Wallet'),
(134, 'VtuNaija', 'https://vtunaija.com.ng/api/data/', 'Data'),
(135, 'hbi.com.ng', ' https://api.hbi.com.ng/api/user/', 'Wallet'),
(136, 'hbi.com.ng', ' https://api.hbi.com.ng/api/airtime/', 'Airtime');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary`
--

CREATE TABLE `beneficiary` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `id` int(11) NOT NULL,
  `bPhone` varchar(50) NOT NULL,
  `date_added` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulk_sms_messages`
--

CREATE TABLE `bulk_sms_messages` (
  `id` int(11) NOT NULL,
  `senderName` varchar(50) NOT NULL,
  `phoneNumbers` text NOT NULL,
  `message` text NOT NULL,
  `status` enum('Pending','Sent','Failed') NOT NULL DEFAULT 'Sent',
  `amountPaid` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cableid`
--

CREATE TABLE `cableid` (
  `cId` int(11) NOT NULL,
  `cableid` varchar(10) DEFAULT NULL,
  `provider` varchar(10) NOT NULL,
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cableid`
--

INSERT INTO `cableid` (`cId`, `cableid`, `provider`, `providerStatus`) VALUES
(1, '1', 'GOTV', 'On'),
(2, '2', 'DSTV', 'On'),
(3, '3', 'STARTIMES', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `cableplans`
--

CREATE TABLE `cableplans` (
  `cpId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cableprovider` tinyint(4) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cableplans`
--

INSERT INTO `cableplans` (`cpId`, `name`, `price`, `userprice`, `agentprice`, `vendorprice`, `planid`, `type`, `cableprovider`, `day`) VALUES
(1, 'GOtv Smallie  - Monthly', '1350', '1400', '1380', '1380', '1', NULL, 1, '30'),
(2, 'GOtv Smallie - Quarterly', '3500', '3560', '3550', '3550', '2', NULL, 1, '90'),
(3, 'GOtv Smallie - Yearly', '8600', '8660', '8650', '8650', '3', NULL, 1, '365'),
(4, 'GOtv Jinja', '2700', '2750', '2740', '2740', '4', NULL, 1, '30'),
(5, 'GOtv Jolli', '3950', '3970', '3965', '3964', '5', NULL, 1, '30'),
(6, 'GOtv Max', '5700', '5750', '5750', '5750', '6', NULL, 1, '30'),
(7, 'GOtv Supa', '7600', '7650', '7640', '7640', '7', NULL, 1, '30'),
(8, 'GOtv Super Plus', '12550', '12590', '12580', '12580', '8', NULL, 1, '30'),
(9, 'DStv Padi', '2960', '3000', '2990', '2990', '9', NULL, 2, '30'),
(10, 'DStv Yanga', '4200', '4250', '4240', '4240', '10', NULL, 2, '30'),
(11, 'DStv Confam', '7400', '7450', '7440', '7440', '11', NULL, 2, '30'),
(12, 'DStv Asia', '9950', '9990', '9980', '9980', '12', NULL, 2, '30'),
(13, 'DStv Compact', '12600', '12700', '12700', '12700', '13', NULL, 2, '30'),
(14, 'DStv Premium', '29500', '29550', '29550', '29550', '14', NULL, 2, '30'),
(15, 'Nova - 1 Day', '160', '180', '170', '170', '15', NULL, 3, '1'),
(16, 'Basic - 1 Day', '310', '320', '320', '320', '16', NULL, 3, '1'),
(17, 'Classic - 1 Day', '430', '450', '440', '440', '17', NULL, 3, '1'),
(18, 'Super - 1 Day', '620', '650', '640', '640', '18', NULL, 3, '1'),
(19, 'Nova - 1 Week', '650', '700', '690', '690', '19', NULL, 3, '7'),
(20, 'Basic - 1 Week', '9851050', '1100', '1100', '1100', '20', NULL, 3, '8'),
(21, 'Smart - 1 Week', '1350', '1400', '1390', '1390', '21', NULL, 3, '8'),
(22, 'Classic - 1 Week', '1550', '1600', '1590', '1590', '22', NULL, 3, '8');

-- --------------------------------------------------------

--
-- Table structure for table `CAC`
--

CREATE TABLE `CAC` (
  `id` int(11) NOT NULL,
  `certType` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comp_name` varchar(255) NOT NULL,
  `alt_comp_name` varchar(255) DEFAULT NULL,
  `share_cap` decimal(15,2) NOT NULL,
  `comp_addr` varchar(255) NOT NULL,
  `res_addr` varchar(255) NOT NULL,
  `bus_nature` varchar(255) NOT NULL,
  `dir_id_card` varchar(255) DEFAULT NULL,
  `passport_photo` varchar(255) DEFAULT NULL,
  `phone_num` varchar(15) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `sId` int(11) DEFAULT NULL,
  `submit_date` date DEFAULT NULL,
  `note` varchar(255) NOT NULL DEFAULT 'Your CAC certificate will be ready in 3 to 14 days. The process will be sent to your email.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `msgId` int(11) NOT NULL,
  `sId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `dPosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datapins`
--

CREATE TABLE `datapins` (
  `dpId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `datanetwork` tinyint(4) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `datapins`
--

INSERT INTO `datapins` (`dpId`, `name`, `price`, `userprice`, `agentprice`, `vendorprice`, `planid`, `type`, `datanetwork`, `day`) VALUES
(1, '1.5GB', '200', '300', '300', '300', '1', 'Gifting', 1, '30'),
(2, '500 MB', '108', '120', '120', '120', '2', 'SME', 1, '30'),
(3, '1GB', '215', '220', '220', '220', '3', 'SME', 1, '30'),
(4, '2GB', '430', '450', '450', '450', '4', 'SME', 1, '30'),
(5, '3GB', '645', '650', '650', '650', '5', 'SME', 1, '30'),
(6, '5GB', '1075', '1090', '1090', '1090', '6', 'SME', 1, '30'),
(7, '10GB', '2150', '2200', '2200', '2200', '7', 'SME', 1, '30'),
(8, '500 MB', '100', '120', '120', '120', '8', 'Corporate', 2, '30'),
(9, '1GB', '200', '220', '220', '220', '9', 'Corporate', 2, '30'),
(10, '2GB', '400', '420', '420', '420', '10', 'Corporate', 2, '30'),
(11, '5GB', '1000', '1200', '1200', '1200', '11', 'Corporate', 2, '30'),
(12, '10GB', '2000', '2200', '2200', '2200', '12', 'Corporate', 2, '30');

-- --------------------------------------------------------

--
-- Table structure for table `dataplans`
--

CREATE TABLE `dataplans` (
  `pId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `datanetwork` tinyint(4) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dataplans`
--

INSERT INTO `dataplans` (`pId`, `name`, `price`, `userprice`, `agentprice`, `vendorprice`, `planid`, `type`, `datanetwork`, `day`) VALUES
(42, '500MB', '131', '138', '137', '135', '44', 'SME', 1, '30'),
(43, '1GB', '258', '269', '268', '267', '2', 'Gifting', 1, '30'),
(44, '2 GB', '516', '528', '526', '522', '3', 'SME', 1, '30'),
(45, '3 GB', '774', '780', '779', '777', '46', 'SME', 1, '30'),
(46, '5 GB', '1290', '1299', '1296', '1294', '47', 'SME', 1, '30'),
(47, '10GB', '2576', '2598', '2594', '2590', '48', 'SME', 1, '30'),
(48, '500 MB', '128', '138', '138', '136', '49', 'SME2', 1, '30'),
(49, '1GB', '254', '259', '258', '258', '50', 'SME2', 1, '30'),
(50, '1.5G', '380', '395', '393', '391', '51', 'SME2', 1, '30'),
(51, '2 GB', '508', '519', '518', '515', '52', 'SME2', 1, '30'),
(52, '3 GB', '758', '769', '769', '768', '53', 'SME2', 1, '30'),
(53, '5 GB', '1262', '1285', '1283', '1281', '54', 'SME2', 1, '30'),
(54, '10GB', '2522', '2552', '2550', '2548', '55', 'SME2', 1, '30'),
(55, '1GB', '224', '239', '238', '238', '56', 'Gifting', 1, '30'),
(56, '3.5GB', '527', '547', '545', '540', '57', 'Gifting', 1, '30'),
(57, '15GB', '2053', '2153', '2143', '2133', '58', 'Gifting', 1, '30'),
(58, '100MB', '57', '80', '79', '78', '59', 'SME', 4, '30'),
(59, '300MB', '117', '129', '128', '127', '60', 'SME', 4, '30');

-- --------------------------------------------------------

--
-- Table structure for table `datatokens`
--

CREATE TABLE `datatokens` (
  `tId` int(11) NOT NULL,
  `sId` int(11) NOT NULL,
  `tRef` varchar(255) NOT NULL,
  `business` varchar(30) NOT NULL,
  `network` varchar(30) NOT NULL,
  `datasize` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `serial` text NOT NULL,
  `tokens` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dsitesettings`
--

CREATE TABLE `dsitesettings` (
  `sId` int(200) NOT NULL,
  `sitename` varchar(20) DEFAULT NULL,
  `siteurl` varchar(100) DEFAULT NULL,
  `agentupgrade` varchar(20) DEFAULT NULL,
  `vendorupgrade` varchar(20) DEFAULT NULL,
  `apiupgrade` varchar(20) DEFAULT NULL,
  `apidocumentation` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `whatsappgroup` varchar(100) DEFAULT NULL,
  `facebook` varchar(10) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `telegram` varchar(100) DEFAULT NULL,
  `referalupgradebonus` float NOT NULL DEFAULT 100,
  `referalairtimebonus` float NOT NULL DEFAULT 1,
  `referaldatabonus` float NOT NULL DEFAULT 1,
  `referalwalletbonus` float NOT NULL DEFAULT 1,
  `referalcablebonus` float NOT NULL DEFAULT 1,
  `referalexambonus` float NOT NULL DEFAULT 1,
  `referalmeterbonus` float NOT NULL DEFAULT 1,
  `wallettowalletcharges` float NOT NULL DEFAULT 50,
  `sitecolor` varchar(10) NOT NULL DEFAULT '#0000e6',
  `logindesign` varchar(10) NOT NULL DEFAULT '5',
  `homedesign` varchar(10) NOT NULL DEFAULT '5',
  `notificationStatus` varchar(5) NOT NULL DEFAULT 'Off',
  `accountname` varchar(50) DEFAULT NULL,
  `accountno` varchar(15) DEFAULT NULL,
  `bankname` varchar(20) DEFAULT NULL,
  `electricitycharges` varchar(5) DEFAULT NULL,
  `airtimemin` varchar(10) NOT NULL DEFAULT '50',
  `airtimemax` varchar(10) NOT NULL DEFAULT '500',
  `airtimedaily` varchar(255) NOT NULL DEFAULT '5000',
  `smilediscount` varchar(3) DEFAULT NULL,
  `kycOption` varchar(5) NOT NULL DEFAULT 'nin',
  `kycBvnCharges` varchar(5) NOT NULL DEFAULT '5',
  `kycNinCharges` varchar(5) NOT NULL DEFAULT '30',
  `kycShouldVerify` varchar(5) NOT NULL DEFAULT 'no',
  `kycShouldEnable` varchar(5) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dsitesettings`
--

INSERT INTO `dsitesettings` (`sId`, `sitename`, `siteurl`, `agentupgrade`, `vendorupgrade`, `apiupgrade`, `apidocumentation`, `phone`, `email`, `whatsapp`, `whatsappgroup`, `facebook`, `twitter`, `instagram`, `telegram`, `referalupgradebonus`, `referalairtimebonus`, `referaldatabonus`, `referalwalletbonus`, `referalcablebonus`, `referalexambonus`, `referalmeterbonus`, `wallettowalletcharges`, `sitecolor`, `logindesign`, `homedesign`, `notificationStatus`, `accountname`, `accountno`, `bankname`, `electricitycharges`, `airtimemin`, `airtimemax`, `airtimedaily`, `smilediscount`, `kycOption`, `kycBvnCharges`, `kycNinCharges`, `kycShouldVerify`, `kycShouldEnable`) VALUES
(1, 'GooCredit', 'https://goocredit.mwb.ng', '3000', '5000', '4800', '/mobile/home/apidoc', '09110258589', 'help@goocredit.mwb.ng', '09110258589', 'https://chat.whatsapp.com/FEjg9M0DvCk2hquv3z0ZMF', '', '', '', '', 500, 1, 1, 2, 1, 1, 2, 3, '#ff7614', '4', '7', 'Off', 'GooCredit (MWB)', '3002298868', 'Kuda Bank Nig', '50', '50', '50000', '', '2', 'both', '50', '100', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `electricityid`
--

CREATE TABLE `electricityid` (
  `eId` int(11) NOT NULL,
  `electricityid` varchar(50) DEFAULT NULL,
  `provider` varchar(50) NOT NULL,
  `abbreviation` varchar(5) NOT NULL,
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `electricityid`
--

INSERT INTO `electricityid` (`eId`, `electricityid`, `provider`, `abbreviation`, `providerStatus`) VALUES
(1, '1', 'Ikeja Electric', 'IE', 'On'),
(2, '2', 'Eko Electric', 'EKEDC', 'On'),
(3, '3', 'Kano Electric', 'KEDCO', 'Off'),
(4, '4', 'Port Harcourt Electric', 'PHEDC', 'On'),
(5, '9', 'Jos Electric', 'JED', 'Off'),
(6, '6', 'Ibadan Electric', 'IBEDC', 'On'),
(7, '7', 'Kaduna Electric', 'KEDC', 'On'),
(8, '8', 'Abuja Electric', 'AEDC', 'On'),
(9, '9', 'Enugu Electric', 'ENUGU', 'On'),
(10, '10', 'Benin Electric', 'BENIN', 'On'),
(11, '11', 'Yola Electric', 'YOLA', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `examid`
--

CREATE TABLE `examid` (
  `eId` int(11) NOT NULL,
  `examid` varchar(10) DEFAULT NULL,
  `provider` varchar(50) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `buying_price` int(11) NOT NULL DEFAULT 0,
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `examid`
--

INSERT INTO `examid` (`eId`, `examid`, `provider`, `price`, `buying_price`, `providerStatus`) VALUES
(1, '1', 'WAEC', 3500, 3550, 'On'),
(2, '2', 'NECO', 850, 900, 'On'),
(3, '3', 'NABTEB', 950, 1000, 'On');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int(11) NOT NULL,
  `sId` varchar(50) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `query` text DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `add_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_read` tinyint(1) DEFAULT 0,
  `admin_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Jjjtransactions`
--

CREATE TABLE `Jjjtransactions` (
  `tId` int(11) NOT NULL,
  `sId` int(11) NOT NULL,
  `transref` varchar(255) NOT NULL,
  `servicename` varchar(100) NOT NULL,
  `servicedesc` varchar(255) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `oldbal` varchar(100) NOT NULL,
  `newbal` varchar(100) NOT NULL,
  `profit` float NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manualfunds`
--

CREATE TABLE `manualfunds` (
  `tId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `account` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `dPosted` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monnify_accounts`
--

CREATE TABLE `monnify_accounts` (
  `id` int(11) NOT NULL,
  `accountReference` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkid`
--

CREATE TABLE `networkid` (
  `nId` int(11) NOT NULL,
  `networkid` varchar(10) NOT NULL,
  `smeId` varchar(10) NOT NULL,
  `sme2Id` varchar(10) NOT NULL,
  `couponId` varchar(10) NOT NULL,
  `giftingId` varchar(10) NOT NULL,
  `corporateId` varchar(10) NOT NULL,
  `corporate2Id` varchar(10) NOT NULL,
  `vtuId` varchar(10) NOT NULL,
  `sharesellId` varchar(10) NOT NULL,
  `network` varchar(20) NOT NULL,
  `networkStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `vtuStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `sharesellStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `airtimepinStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `smeStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `sme2Status` varchar(10) NOT NULL,
  `couponStatus` varchar(10) NOT NULL,
  `giftingStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `corporateStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `corporate2Status` varchar(10) NOT NULL,
  `datapinStatus` varchar(10) NOT NULL DEFAULT 'Off'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `networkid`
--

INSERT INTO `networkid` (`nId`, `networkid`, `smeId`, `sme2Id`, `couponId`, `giftingId`, `corporateId`, `corporate2Id`, `vtuId`, `sharesellId`, `network`, `networkStatus`, `vtuStatus`, `sharesellStatus`, `airtimepinStatus`, `smeStatus`, `sme2Status`, `couponStatus`, `giftingStatus`, `corporateStatus`, `corporate2Status`, `datapinStatus`) VALUES
(1, '1', '1', '1', '1', '1', '1', '1', '1', '1', 'MTN', 'On', 'On', 'On', 'On', 'On', 'On', 'On', 'On', 'On', 'Off', 'On'),
(2, '2', '2', '2', '2', '2', '2', '2', '2', '2', 'GLO', 'On', 'On', 'On', 'On', 'On', 'Off', 'Off', 'On', 'On', 'Off', 'On'),
(3, '3', '3', '3', '3', '3', '3', '3', '3', '3', '9MOBILE', 'On', 'On', 'On', 'On', 'On', 'Off', 'Off', 'On', 'On', 'Off', 'On'),
(4, '4', '4', '4', '4', '4', '4', '4', '4', '4', 'AIRTEL', 'On', 'On', 'On', 'On', 'On', 'Off', 'Off', 'On', 'On', 'Off', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `msgId` int(11) NOT NULL,
  `msgfor` tinyint(4) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `dPosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rechargetokens`
--

CREATE TABLE `rechargetokens` (
  `tId` int(11) NOT NULL,
  `sId` int(11) NOT NULL,
  `tRef` varchar(255) NOT NULL,
  `business` varchar(30) NOT NULL,
  `network` varchar(30) NOT NULL,
  `datasize` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `serial` text NOT NULL,
  `tokens` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rechargetokens`
--

INSERT INTO `rechargetokens` (`tId`, `sId`, `tRef`, `business`, `network`, `datasize`, `quantity`, `serial`, `tokens`, `date`) VALUES
(7, 95, 'TR-1711269342-ce3b9e61a83e7a21', 'Habib JS', 'MTN', '*311*PIN #', 1, '10656', '47058617346571967\r', '2024-03-24 04:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `Id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `replyby` varchar(20) DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `reply_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `transid` varchar(255) NOT NULL,
  `placeholder` varchar(255) NOT NULL,
  `idNumber` varchar(100) NOT NULL,
  `response` text NOT NULL,
  `slip` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitesettings`
--

CREATE TABLE `sitesettings` (
  `sId` int(11) NOT NULL,
  `sitename` varchar(20) DEFAULT NULL,
  `siteurl` varchar(100) DEFAULT NULL,
  `agentupgrade` varchar(20) DEFAULT NULL,
  `vendorupgrade` varchar(20) DEFAULT NULL,
  `apidocumentation` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `whatsappgroup` varchar(100) DEFAULT NULL,
  `facebook` varchar(10) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `telegram` varchar(100) DEFAULT NULL,
  `referalupgradebonus` float NOT NULL DEFAULT 100,
  `referalairtimebonus` float NOT NULL DEFAULT 1,
  `referaldatabonus` float NOT NULL DEFAULT 1,
  `referalwalletbonus` float NOT NULL DEFAULT 1,
  `referalcablebonus` float NOT NULL DEFAULT 1,
  `referalexambonus` float NOT NULL DEFAULT 1,
  `referalmeterbonus` float NOT NULL DEFAULT 1,
  `wallettowalletcharges` float NOT NULL DEFAULT 50,
  `sitecolor` varchar(10) NOT NULL DEFAULT '#0000e6',
  `logindesign` varchar(10) NOT NULL DEFAULT '5',
  `homedesign` varchar(10) NOT NULL DEFAULT '5',
  `notificationStatus` varchar(5) NOT NULL DEFAULT 'Off',
  `accountname` varchar(50) DEFAULT NULL,
  `accountno` varchar(15) DEFAULT NULL,
  `bankname` varchar(20) DEFAULT NULL,
  `electricitycharges` varchar(5) DEFAULT NULL,
  `airtimemin` varchar(10) NOT NULL DEFAULT '50',
  `airtimemax` varchar(10) NOT NULL DEFAULT '500',
  `kycOption` varchar(5) NOT NULL,
  `kycBvnCharges` varchar(5) NOT NULL,
  `kycNinCharges` varchar(5) NOT NULL,
  `kycShouldVerify` varchar(5) NOT NULL,
  `kycShouldEnable` varchar(5) NOT NULL,
  `smilediscount` varchar(3) DEFAULT NULL,
  `Airtimedally` varchar(255) DEFAULT NULL,
  `airtimedaily` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sitesettings`
--

INSERT INTO `sitesettings` (`sId`, `sitename`, `siteurl`, `agentupgrade`, `vendorupgrade`, `apidocumentation`, `phone`, `email`, `whatsapp`, `whatsappgroup`, `facebook`, `twitter`, `instagram`, `telegram`, `referalupgradebonus`, `referalairtimebonus`, `referaldatabonus`, `referalwalletbonus`, `referalcablebonus`, `referalexambonus`, `referalmeterbonus`, `wallettowalletcharges`, `sitecolor`, `logindesign`, `homedesign`, `notificationStatus`, `accountname`, `accountno`, `bankname`, `electricitycharges`, `airtimemin`, `airtimemax`, `kycOption`, `kycBvnCharges`, `kycNinCharges`, `kycShouldVerify`, `kycShouldEnable`, `smilediscount`, `Airtimedally`, `airtimedaily`) VALUES
(1, 'Quickjot', 'https://quickjot.com.ng', '0', '0', 'https:///mobile/home/pricing', '08101820177', 'help@goocredit.mwb.ng', '08101820177 ', 'https://chat.whatsapp.com/FEjg9M0DvCk2hquv3z0ZMF', '', '', '', '', 0, 0.2, 1, 0, 15, 20, 10, 10, '#ff7614', '4', '7', 'Off', 'GooCredit (MWB)', '3002298868', 'Kuda Bank Nig', '0', '50', '4000', 'both', '50', '100', 'yes', 'yes', '', '10000', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `sms_campaigns`
--

CREATE TABLE `sms_campaigns` (
  `id` int(11) NOT NULL,
  `sender_name` varchar(225) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `amount_to_pay` decimal(10,2) DEFAULT NULL,
  `save_message` tinyint(1) NOT NULL DEFAULT 0,
  `send_message` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_campaigns`
--

INSERT INTO `sms_campaigns` (`id`, `sender_name`, `phone_number`, `message`, `amount_to_pay`, `save_message`, `send_message`, `created_at`) VALUES
(1, '$senderName', '$phoneNumber', '$message', 0.00, 0, 0, '2024-10-09 14:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL,
  `smsApi` varchar(255) NOT NULL,
  `smsWebhook` varchar(255) NOT NULL,
  `smsChargesType` enum('flat','per') NOT NULL,
  `smsCharges` decimal(10,2) NOT NULL,
  `smsStatus` enum('On','Off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_config`
--

INSERT INTO `sms_config` (`id`, `smsApi`, `smsWebhook`, `smsChargesType`, `smsCharges`, `smsStatus`) VALUES
(1, 'eeeeeeeeeee', 'https://goocredit.mwb.ng/admingc/dashboard/bulksms', 'flat', 3.00, 'On');

-- --------------------------------------------------------

--
-- Table structure for table `sms_logs`
--

CREATE TABLE `sms_logs` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(12) DEFAULT NULL,
  `phone_numbers` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `amount_to_pay` decimal(10,2) NOT NULL,
  `status` enum('pending','sent','failed') NOT NULL DEFAULT 'sent',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `smsApi` varchar(255) DEFAULT NULL,
  `smsWebhook` varchar(255) DEFAULT NULL,
  `smsChargesType` enum('flat','per') NOT NULL,
  `smsCharges` decimal(10,3) DEFAULT NULL,
  `smsStatus` enum('On','Off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_logs`
--

INSERT INTO `sms_logs` (`id`, `sender_id`, `phone_numbers`, `message`, `amount_to_pay`, `status`, `created_at`, `updated_at`, `smsApi`, `smsWebhook`, `smsChargesType`, `smsCharges`, `smsStatus`) VALUES
(1, '', '', '', 0.00, 'sent', '2024-10-21 03:32:26', '2024-10-21 03:32:26', 'your_api_key_here', 'https://api.ng.termii.com/api/sms/send', 'flat', 0.100, 'On');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `sId` int(11) NOT NULL,
  `sApiKey` varchar(200) NOT NULL,
  `sFname` varchar(50) NOT NULL,
  `sLname` varchar(50) NOT NULL,
  `sEmail` varchar(50) DEFAULT NULL,
  `sPhone` varchar(20) NOT NULL,
  `sPass` varchar(150) NOT NULL,
  `sState` varchar(50) NOT NULL,
  `sPin` int(11) NOT NULL DEFAULT 123456,
  `sPinStatus` tinyint(4) DEFAULT 0,
  `sType` tinyint(4) NOT NULL DEFAULT 1,
  `sWallet` int(11) NOT NULL DEFAULT 0,
  `sRefWallet` int(11) NOT NULL DEFAULT 0,
  `sBankNo` varchar(20) DEFAULT NULL,
  `sRolexBank` varchar(20) DEFAULT NULL,
  `sSterlingBank` varchar(20) DEFAULT NULL,
  `sFidelityBank` varchar(20) DEFAULT NULL,
  `sKudaBank` varchar(20) DEFAULT NULL,
  `sAsfiyBank` varchar(20) DEFAULT NULL,
  `sGtBank` varchar(20) DEFAULT NULL,
  `sBankName` varchar(30) DEFAULT NULL,
  `sRegStatus` tinyint(4) NOT NULL DEFAULT 0,
  `sVerCode` smallint(6) NOT NULL DEFAULT 0,
  `sRegDate` datetime NOT NULL DEFAULT current_timestamp(),
  `sLastActivity` datetime DEFAULT NULL,
  `sReferal` varchar(15) DEFAULT NULL,
  `rolexBankRef` varchar(255) DEFAULT NULL,
  `wemaBankRef` varchar(255) DEFAULT NULL,
  `sterlingBankRef` varchar(255) DEFAULT NULL,
  `fidelityBankRef` varchar(255) DEFAULT NULL,
  `sBvn` varchar(40) DEFAULT NULL,
  `sNin` varchar(40) DEFAULT NULL,
  `sDob` varchar(40) DEFAULT NULL,
  `sKycStatus` varchar(15) DEFAULT NULL,
  `accountReference` varchar(50) DEFAULT NULL,
  `sPayvesselBank` varchar(30) DEFAULT NULL,
  `sAccountLimit` varchar(255) DEFAULT '10000',
  `pVerify` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`sId`, `sApiKey`, `sFname`, `sLname`, `sEmail`, `sPhone`, `sPass`, `sState`, `sPin`, `sPinStatus`, `sType`, `sWallet`, `sRefWallet`, `sBankNo`, `sRolexBank`, `sSterlingBank`, `sFidelityBank`, `sKudaBank`, `sAsfiyBank`, `sGtBank`, `sBankName`, `sRegStatus`, `sVerCode`, `sRegDate`, `sLastActivity`, `sReferal`, `rolexBankRef`, `wemaBankRef`, `sterlingBankRef`, `fidelityBankRef`, `sBvn`, `sNin`, `sDob`, `sKycStatus`, `accountReference`, `sPayvesselBank`, `sAccountLimit`, `pVerify`) VALUES
(411, 'CvC3qld5acz2F4d26xA32BrDxAB718C396nACECAAtoBIHbACBmyixbgkChp1728535358', 'Onyeka', 'Okonkwo', 'henry.onyek@gmail.com', '08101820177', '70c3b4b1fe', 'Oyo', 19844, 0, 1, 797, 0, NULL, NULL, NULL, NULL, NULL, '6691107496', NULL, NULL, 0, 4128, '2024-10-10 05:42:38', '2024-12-13 07:22:01', '', NULL, NULL, NULL, NULL, '7mE+3bpoPLBz1Ja7XEKsvQ==', 'mIhLTKvCevuRoHomNTW5lQ==', 'dC582MGNDjfVvFkDjlKIXw==', 'verified', NULL, NULL, '5000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sysusers`
--

CREATE TABLE `sysusers` (
  `sysId` int(11) NOT NULL,
  `sysName` varchar(50) NOT NULL,
  `sysRole` tinyint(4) NOT NULL,
  `sysUsername` varchar(20) NOT NULL,
  `sysToken` varchar(30) NOT NULL,
  `sysStatus` tinyint(4) NOT NULL DEFAULT 0,
  `sysPinToken` varchar(30) NOT NULL DEFAULT '03d258c7ef',
  `sysPinStatus` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sysusers`
--

INSERT INTO `sysusers` (`sysId`, `sysName`, `sysRole`, `sysUsername`, `sysToken`, `sysStatus`, `sysPinToken`, `sysPinStatus`) VALUES
(2, 'Quickjot', 1, 'Quickjot', '08101820177', 0, '03d258c7ef', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `tId` int(11) NOT NULL,
  `sId` int(11) NOT NULL,
  `transref` varchar(255) NOT NULL,
  `servicename` varchar(100) NOT NULL,
  `servicedesc` varchar(255) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `oldbal` varchar(100) NOT NULL,
  `newbal` varchar(100) NOT NULL,
  `profit` float NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `api_response` text DEFAULT NULL,
  `api_response_log` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`tId`, `sId`, `transref`, `servicename`, `servicedesc`, `amount`, `status`, `oldbal`, `newbal`, `profit`, `date`, `api_response`, `api_response_log`) VALUES
(1, 3, '41821732394498', 'Wallet Credit', 'Wallet Credit of N2200 for user bwalajamesdaniel@gmail.com. Reason: m', '2200', 0, '0', '2200', 0, '2024-11-23 21:41:38', NULL, NULL),
(2, 3, '86151732394502', 'ID Verification', 'NIN Verification', '150', 1, '2200', '2200', 0, '2024-11-23 21:41:58', NULL, NULL),
(3, 3, '99791732394518', 'ID Verification', 'NIN Verification', '150', 1, '2200', '2200', 0, '2024-11-23 21:42:16', NULL, NULL),
(4, 3, '90231732394997', 'ID Verification', 'NIN Verification', '150', 0, '2200', '2050', 0, '2024-11-23 21:50:11', NULL, NULL),
(5, 3, '12801732395419', 'ID Verification', 'NIN Verification', '150', 0, '2050', '1900', 0, '2024-11-23 21:57:14', NULL, NULL),
(6, 411, '70771733908913', 'Data', 'Dear Customer, You have successfully shared 500MB Data to 2348160288814. Thankyou', '138', 0, '211', '73', 7, '2024-12-11 10:32:56', NULL, ' {\"status\":\"success\",\"Status\":\"successful\",\"api_response\":\"Dear Customer, You have successfully shared 500MB Data to 2348160288814. Thankyou\"}'),
(7, 411, '34251733909693', 'Airtime', 'MTN Airtime purchase of N60 for phone number 08160288814', '59.4', 1, '73', '73', 0, '2024-12-11 10:36:59', NULL, ' {\"status\":\"fail\",\"Status\":\"failed\",\"msg\":\"Transaction Failed, Please Try Again Later\"}'),
(8, 411, '17671733909912', 'Wallet Credit', 'Wallet Credit of N500 for user henry.onyek@gmail.com. Reason: You are successfully credited N500 and balance of N500 with N0 bank transfer charges ', '500', 0, '73', '573', 0, '2024-12-11 10:38:32', NULL, NULL),
(9, 411, '29511733909929', 'Data', 'Dear Customer, You have successfully shared 500MB Data to 2348160288814. Thankyou', '138', 0, '573', '435', 7, '2024-12-11 10:39:18', NULL, ' {\"status\":\"success\",\"Status\":\"successful\",\"api_response\":\"Dear Customer, You have successfully shared 500MB Data to 2348160288814. Thankyou\"}'),
(10, 411, '12141733910182', 'Wallet Credit', 'Wallet Credit of N500 for user henry.onyek@gmail.com. Reason: You are successfully credited N500 and balance of N500 with N0 bank transfer charges ', '500', 0, '435', '935', 0, '2024-12-11 10:43:02', NULL, NULL),
(11, 411, '74331734070220', 'Data', 'Dear Customer, You have successfully shared 500MB Data to 2348160288814. Thankyou', '138', 0, '935', '797', 7, '2024-12-13 07:11:54', NULL, ' {\"status\":\"success\",\"Status\":\"successful\",\"api_response\":\"Dear Customer, You have successfully shared 500MB Data to 2348160288814. Thankyou\"}');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `user`, `token`) VALUES
(141, 411, '1733702468JotnpDFmlE846'),
(142, 411, '1733813140kzyoGqHvCE412'),
(143, 411, '1733873912pIqowlyJtx544'),
(145, 411, '1733906552mslxGtzJHF872'),
(146, 411, '1734064151mEoDrAFIkH848');

-- --------------------------------------------------------

--
-- Table structure for table `uservisits`
--

CREATE TABLE `uservisits` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `state` varchar(10) NOT NULL,
  `visitTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uservisits`
--

INSERT INTO `uservisits` (`id`, `user`, `state`, `visitTime`) VALUES
(56, 411, 'Oyo', '1733873915');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airtime`
--
ALTER TABLE `airtime`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `airtimepin`
--
ALTER TABLE `airtimepin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aNetwork` (`aNetwork`);

--
-- Indexes for table `airtimepinprice`
--
ALTER TABLE `airtimepinprice`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `airtimepinstock`
--
ALTER TABLE `airtimepinstock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aNetwork` (`aNetwork`);

--
-- Indexes for table `alphatopupprice`
--
ALTER TABLE `alphatopupprice`
  ADD PRIMARY KEY (`alphaId`);

--
-- Indexes for table `apiconfigs`
--
ALTER TABLE `apiconfigs`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `apilinks`
--
ALTER TABLE `apilinks`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulk_sms_messages`
--
ALTER TABLE `bulk_sms_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cableid`
--
ALTER TABLE `cableid`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `cableplans`
--
ALTER TABLE `cableplans`
  ADD PRIMARY KEY (`cpId`);

--
-- Indexes for table `CAC`
--
ALTER TABLE `CAC`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`msgId`);

--
-- Indexes for table `datapins`
--
ALTER TABLE `datapins`
  ADD PRIMARY KEY (`dpId`);

--
-- Indexes for table `dataplans`
--
ALTER TABLE `dataplans`
  ADD PRIMARY KEY (`pId`),
  ADD UNIQUE KEY `planid` (`planid`);

--
-- Indexes for table `datatokens`
--
ALTER TABLE `datatokens`
  ADD PRIMARY KEY (`tId`);

--
-- Indexes for table `dsitesettings`
--
ALTER TABLE `dsitesettings`
  ADD PRIMARY KEY (`sId`);

--
-- Indexes for table `electricityid`
--
ALTER TABLE `electricityid`
  ADD PRIMARY KEY (`eId`);

--
-- Indexes for table `examid`
--
ALTER TABLE `examid`
  ADD PRIMARY KEY (`eId`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Jjjtransactions`
--
ALTER TABLE `Jjjtransactions`
  ADD PRIMARY KEY (`tId`),
  ADD UNIQUE KEY `transref` (`transref`);

--
-- Indexes for table `manualfunds`
--
ALTER TABLE `manualfunds`
  ADD PRIMARY KEY (`tId`);

--
-- Indexes for table `networkid`
--
ALTER TABLE `networkid`
  ADD PRIMARY KEY (`nId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`msgId`);

--
-- Indexes for table `rechargetokens`
--
ALTER TABLE `rechargetokens`
  ADD PRIMARY KEY (`tId`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitesettings`
--
ALTER TABLE `sitesettings`
  ADD PRIMARY KEY (`sId`);

--
-- Indexes for table `sms_campaigns`
--
ALTER TABLE `sms_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_config`
--
ALTER TABLE `sms_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_logs`
--
ALTER TABLE `sms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`sId`),
  ADD UNIQUE KEY `sApiKey` (`sApiKey`),
  ADD UNIQUE KEY `sPhone` (`sPhone`),
  ADD UNIQUE KEY `sEmail` (`sEmail`);

--
-- Indexes for table `sysusers`
--
ALTER TABLE `sysusers`
  ADD PRIMARY KEY (`sysId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`tId`),
  ADD UNIQUE KEY `transref` (`transref`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uservisits`
--
ALTER TABLE `uservisits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airtime`
--
ALTER TABLE `airtime`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `airtimepin`
--
ALTER TABLE `airtimepin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `airtimepinprice`
--
ALTER TABLE `airtimepinprice`
  MODIFY `aId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `airtimepinstock`
--
ALTER TABLE `airtimepinstock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `alphatopupprice`
--
ALTER TABLE `alphatopupprice`
  MODIFY `alphaId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apiconfigs`
--
ALTER TABLE `apiconfigs`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `apilinks`
--
ALTER TABLE `apilinks`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `beneficiary`
--
ALTER TABLE `beneficiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `bulk_sms_messages`
--
ALTER TABLE `bulk_sms_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cableid`
--
ALTER TABLE `cableid`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cableplans`
--
ALTER TABLE `cableplans`
  MODIFY `cpId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `CAC`
--
ALTER TABLE `CAC`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `msgId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datapins`
--
ALTER TABLE `datapins`
  MODIFY `dpId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dataplans`
--
ALTER TABLE `dataplans`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `datatokens`
--
ALTER TABLE `datatokens`
  MODIFY `tId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dsitesettings`
--
ALTER TABLE `dsitesettings`
  MODIFY `sId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `electricityid`
--
ALTER TABLE `electricityid`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `examid`
--
ALTER TABLE `examid`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Jjjtransactions`
--
ALTER TABLE `Jjjtransactions`
  MODIFY `tId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `manualfunds`
--
ALTER TABLE `manualfunds`
  MODIFY `tId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `networkid`
--
ALTER TABLE `networkid`
  MODIFY `nId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `msgId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `rechargetokens`
--
ALTER TABLE `rechargetokens`
  MODIFY `tId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sitesettings`
--
ALTER TABLE `sitesettings`
  MODIFY `sId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_campaigns`
--
ALTER TABLE `sms_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_config`
--
ALTER TABLE `sms_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_logs`
--
ALTER TABLE `sms_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `sId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `sysusers`
--
ALTER TABLE `sysusers`
  MODIFY `sysId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `tId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `uservisits`
--
ALTER TABLE `uservisits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
