-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2023 at 03:28 AM
-- Server version: 10.5.21-MariaDB-cll-lve
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sunbnjwr_ec`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dashboard_style` varchar(255) NOT NULL DEFAULT 'dark',
  `remember_token` varchar(255) DEFAULT NULL,
  `acnt_type_active` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstName`, `lastName`, `email`, `email_verified_at`, `password`, `phone`, `dashboard_style`, `remember_token`, `acnt_type_active`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Tester', 'Test', 'barfumehouse@gmail.com', NULL, '$2y$10$LSDcEcXYkuDxG8rUSY1W/uT4rUTrLQz1.mb.3.bBcCj77ajSeusZ2', '3444444', 'light', NULL, 'active', 'active', 'Super Admin', '2021-03-10 12:55:53', '2022-08-17 00:15:25'),
(5, 'Crypto', 'Admin', 'info@ecurrencytrade.us', NULL, '$2y$10$MKjhhE06cZEOCoJx6cEQ5OmkrPK0n/4mH6Apjj1YLFJBDea/ZHk1q', '07451274578', 'dark', NULL, 'active', 'active', 'Admin', '2022-08-07 20:56:07', '2023-07-16 15:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `total_refered` varchar(255) NOT NULL DEFAULT '0',
  `total_activated` varchar(255) NOT NULL DEFAULT '0',
  `earnings` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `agent`, `total_refered`, `total_activated`, `earnings`, `created_at`, `updated_at`) VALUES
(1, '24', '1', '0', '0', '2022-04-24 14:50:32', '2022-04-24 14:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(255) NOT NULL,
  `ref_key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `ref_key`, `title`, `description`, `created_at`, `updated_at`) VALUES
(5, 'SMsJr1', 'TESTIMONIALS', 'Don\'t take our word for it, here\'s what some of our clients have to say about us', '2020-08-22 11:13:00', '2020-08-22 11:37:15'),
(6, 'toe3Ew', 'Trade in the Moment', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:29:36', '2020-08-22 11:29:36'),
(7, 'jJwh78', 'We process withdrawal request Promptly', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:30:22', '2020-08-22 11:30:22'),
(8, 'SLxaB2', 'Invest in the future', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:30:55', '2020-08-22 11:30:55'),
(9, 'BkP8pH', 'Trade on the Go', 'Trading on the go has be simplified and easy to go', '2020-08-22 11:31:38', '2020-08-22 11:31:38'),
(10, 'W6gTBN', 'Buy,sell,trade,invest has been simplified', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:31:55', '2020-08-22 11:31:55'),
(11, 'anvs8c', 'About', 'online trade is your no1 cryptocurrency investment portfolio management system', '2020-08-22 11:32:29', '2020-08-22 11:32:29'),
(12, 'epJ4LI', 'we Innovate', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit', '2020-08-22 11:33:32', '2020-08-22 11:33:32'),
(13, '5hbB6X', 'LINCENSE CERTIFIED', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit,', '2020-08-22 11:33:55', '2020-08-22 11:33:55'),
(14, 'Zrhm3I', 'WE ARE PROFESSIONAL', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit,', '2020-08-22 11:34:11', '2020-08-22 11:34:11'),
(15, 'yTKhlt', 'SAVINGS AND INVESTMENT', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit,', '2020-08-22 11:34:26', '2020-08-22 11:34:26'),
(16, 'u0Ervr', 'OUR SERVICES', 'Why you should Choose us', '2020-08-22 11:34:56', '2020-08-22 11:34:56'),
(17, 'Dwu6Bv', 'STABLE AND PROFITABLE', 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', '2020-08-22 11:35:22', '2020-08-22 11:35:22'),
(18, 'eMo1d2', 'INSTANT AND SECURE WITHDRAWALS', 'Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata', '2020-08-22 11:35:42', '2020-08-22 11:35:42'),
(19, 'kEJPm3', 'REFERRALS PROGRAM', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur', '2020-08-22 11:35:59', '2020-08-22 11:35:59'),
(20, 'bBSnFV', 'MULTI CURRENCY SUPPORT', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2020-08-22 11:36:17', '2020-08-22 11:36:17'),
(21, 'DUK9pc', '24/7 CUSTOMER SUPPORT', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque', '2020-08-22 11:36:31', '2020-08-22 11:36:31'),
(22, 'VaeiMW', 'ULTIMATE SECURITY', 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi', '2020-08-22 11:36:49', '2020-08-22 11:36:49'),
(23, 'vr6Xw0', 'OUR INVESTMENT PLAN', 'Choose how you want to invest with us', '2020-08-22 11:37:43', '2020-08-22 11:37:43'),
(25, 'OtEicb', 'LATEST TRANSACTIONS', 'Our goal is to simplify investing so that anyone can be an investor. With this in mind, we hand-pick the investments we offer on our platform.', '2020-08-22 11:38:06', '2020-08-22 11:38:06'),
(26, 'OLZt1I', 'FREQUENTLY ASKED QUESTIONS', 'Our goal is to simplify investing so that anyone can be an investor. With this in mind, we hand-pick the investments we offer on our platforms.', '2020-08-22 11:38:56', '2021-03-12 14:29:50'),
(27, 'U7zpEj', 'WE ACCEPT', 'we accept', '2020-08-22 11:39:43', '2020-08-22 11:39:43'),
(29, '9sNF7G', 'CONTACT US', 'Send us a message and we\'ll respond as soon as possible', '2020-08-22 11:40:06', '2020-08-22 11:40:06'),
(30, '52GPRA', 'ADDRESS', 'No 10 Mission Road, Nigeria', '2020-08-22 11:40:19', '2020-08-22 11:40:19'),
(31, '0EXbji', 'PHONE NUMBER', '+234 9xxxxxxxx', '2020-08-22 11:40:36', '2020-09-14 10:13:57'),
(32, 'HLgyaQ', 'EMAIL', 'support@brynamics.xyz', '2020-08-22 11:41:14', '2020-08-22 12:23:55'),
(33, 'ETsdbc', 'Website Description in Footer', 'Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.', '2020-08-22 11:42:05', '2020-08-22 11:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `cp_transactions`
--

CREATE TABLE `cp_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `Item_number` varchar(255) DEFAULT NULL,
  `amount_paid` varchar(255) DEFAULT NULL,
  `user_plan` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_tele_id` int(11) DEFAULT NULL,
  `amount1` varchar(255) DEFAULT NULL,
  `amount2` varchar(255) DEFAULT NULL,
  `currency1` varchar(255) DEFAULT NULL,
  `currency2` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_text` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cp_p_key` varchar(255) DEFAULT NULL,
  `cp_pv_key` varchar(255) DEFAULT NULL,
  `cp_m_id` varchar(255) DEFAULT NULL,
  `cp_ipn_secret` varchar(255) DEFAULT NULL,
  `cp_debug_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cp_transactions`
--

INSERT INTO `cp_transactions` (`id`, `txn_id`, `item_name`, `Item_number`, `amount_paid`, `user_plan`, `user_id`, `user_tele_id`, `amount1`, `amount2`, `currency1`, `currency2`, `status`, `status_text`, `type`, `cp_p_key`, `cp_pv_key`, `cp_m_id`, `cp_ipn_secret`, `cp_debug_email`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1b7f04bd88cf83407933f5d2a9beda3822c09ffe97c3f50a76637ac7493f5f20', '96DbA012f3382ecFDDA707b229e04cB110d81E18f9E5cc7DF0E3a4A614B277D2', '1ab2f73d79748c1d0787f33c30e33cff', 'Asdfghjkl61201@', 'info@crypto-investing.org', '2021-03-11 12:46:45', '2022-02-25 14:30:09'),
(2, 'CPFK7L6SHPQ12HSUXUG6NWFMMJ', 'Account deposit', NULL, '100', NULL, 19, NULL, NULL, NULL, 'USD', 'BTC', NULL, NULL, 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-11-26 16:52:08', '2021-11-26 16:52:08'),
(3, 'CPFK3F5HOYVCU24BGKCI9KELBC', 'Account deposit', NULL, '100', NULL, 19, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-11-26 17:11:36', '2021-11-27 10:00:20'),
(4, 'CPFK4FGFQJIQUYBUVWDXBWPNBM', 'Account deposit', NULL, '100', NULL, 19, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-11-26 17:11:43', '2021-11-27 10:00:22'),
(5, 'CPFK7SG1Y3U0JQWDOQNHYRSVPX', 'Account deposit', NULL, '100', NULL, 19, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-11-26 17:13:04', '2021-11-27 10:00:23'),
(6, 'CPFK3O11PVQASYEXTDWGAUNFB1', 'Account deposit', NULL, '100', NULL, 19, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-11-26 17:13:17', '2021-11-27 10:00:25'),
(7, 'CPFK43MLCBARVUWE2QKHXKZ6KJ', 'Account deposit', NULL, '100', NULL, 19, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-11-26 17:20:15', '2021-11-27 10:00:26'),
(8, 'CPFK49EKXN5U5KZZWHC9DVZGYX', 'Account deposit', NULL, '100', NULL, 19, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-11-26 17:23:50', '2021-11-27 10:00:27'),
(9, 'CPFK3BSA9OTBVUX9NC14WECKOX', 'Account deposit', NULL, '100', NULL, 19, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-11-26 18:10:23', '2021-11-27 10:00:29'),
(10, 'CPFK6MC7TRBSMA1MDKFMADLFCL', 'Account deposit', NULL, '100', NULL, 19, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-11-26 19:14:46', '2021-11-27 10:00:30'),
(11, 'CPFK1XZSARDHE71AY9IWAJAAYZ', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-11-29 11:28:31', '2021-11-30 10:00:28'),
(12, 'CPFK33AVVORZFJD3NQZJGCAHSS', 'Account deposit', NULL, '150', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-01 02:29:37', '2021-12-02 10:00:34'),
(13, 'CPFK7XOLLL6EDBAHUONOJE0Q4B', 'Account deposit', NULL, '100', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '100', 'Complete', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-01 02:31:23', '2021-12-01 10:00:25'),
(14, 'CPFL3RAKZNI9MCE0BZUDJQZNCD', 'Account deposit', NULL, '100', NULL, 26, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-05 02:33:13', '2021-12-07 10:00:51'),
(15, 'CPFL0H9OJSSMHGNQSX13WCYTLR', 'Account deposit', NULL, '100', NULL, 26, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-05 02:33:31', '2021-12-06 10:00:39'),
(16, 'CPFL56UO9X0HS9BCOMYPLKCJKR', 'Account deposit', NULL, '100', NULL, 26, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-05 02:34:11', '2021-12-06 10:00:40'),
(17, 'CPFL7QRUCQPYCBFPNPSPEBB1YS', 'Account deposit', NULL, '745', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-13 23:44:57', '2021-12-14 10:00:51'),
(18, 'CPFL0NCCFPLCZBN6SN0KKLFEGQ', 'Account deposit', NULL, '745', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-13 23:45:46', '2021-12-14 10:00:52'),
(19, 'CPFL5KX3PRUY68OMJAHEPJFQQV', 'Account deposit', NULL, '745', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-13 23:45:59', '2021-12-14 10:00:53'),
(20, 'CPFL7O62VHTJY9KRS8MJC8FA1O', 'Account deposit', NULL, '745', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '100', 'Complete', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-13 23:47:31', '2021-12-14 10:00:54'),
(21, 'CPFL4J1BR2WQVPY6EKF4T4XJUQ', 'Account deposit', NULL, '255', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-22 20:07:32', '2021-12-23 10:00:44'),
(22, 'CPFL6FWVCF2PEIQY76DFWWUGSN', 'Account deposit', NULL, '255', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '100', 'Complete', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-22 20:14:17', '2021-12-23 10:00:45'),
(23, 'CPFL7TSL1YODQCQLYGVIWZM2EQ', 'Account deposit', NULL, '100', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2021-12-28 07:23:41', '2021-12-29 10:00:52'),
(24, 'CPGA5IR9ELBT4G7GFWGMVVFHN4', 'Account deposit', NULL, '500', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-01-05 03:07:17', '2022-01-07 10:00:34'),
(25, 'CPGA0UMQ5Z9JCWCIUS1NAEHESE', 'Account deposit', NULL, '500', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '100', 'Complete', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-01-05 03:09:09', '2022-01-05 10:00:31'),
(26, 'CPGA2RIWEOZSNNVTA6QFA3DCLV', 'Account deposit', NULL, '15', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '100', 'Complete', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-01-05 03:14:18', '2022-01-07 10:00:35'),
(27, 'CPGA1YV9L1DP6O7YCF7Q41DJVM', 'Account deposit', NULL, '950', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '100', 'Complete', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-01-08 02:24:42', '2022-01-08 10:00:32'),
(28, 'CPGA7HLYVR5ROJ8PJ6VQC5BPPH', 'Account deposit', NULL, '440', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '100', 'Complete', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-01-10 03:19:53', '2022-01-10 10:00:40'),
(29, 'CPGA3LIFOYULZ4IMIPXVANVY7Y', 'Account deposit', NULL, '440', NULL, 25, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-01-10 03:21:35', '2022-01-11 10:00:27'),
(30, 'CPGB6KXCEQKN13MTG8QQIYPR98', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-02 17:46:48', '2022-02-03 10:00:32'),
(31, 'CPGB0C9KH7OHNLPB34HJMVHXCP', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-02 17:47:31', '2022-02-03 10:00:33'),
(32, 'CPGB0G8BRSCO3YZC4PBB6YQC6U', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-02 17:47:59', '2022-02-03 10:00:35'),
(33, 'CPGB15CY9XSH9PBBAB1U5UUPRZ', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-02 17:49:18', '2022-02-03 10:00:36'),
(34, 'CPGB3K3BHHRC9SHIX4CW4SAVXS', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-02 17:49:47', '2022-02-03 10:00:37'),
(35, 'CPGB3MNIAMRBIB97IDXPOLKOTX', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'ETH', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-02 17:50:13', '2022-02-03 10:00:37'),
(36, 'CPGB2TRUUZBUSH4IEWIEMXMLKG', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'ETH', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-02 17:50:24', '2022-02-03 10:00:38'),
(37, 'CPGB339VOG5L4T77SWJD8KCOXR', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-19 14:56:12', '2022-02-20 10:01:10'),
(38, 'CPGB6W1R8GQ3EHLJXI4ZBD7GM0', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-19 14:56:37', '2022-02-20 10:01:10'),
(39, 'CPGB4SY57HOM8SCCLPM7KDBEOF', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'ETH', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-19 14:59:55', '2022-02-20 10:01:11'),
(40, 'CPGB7N68NWSOWRPGRRERQ9HWOM', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-19 15:02:27', '2022-02-20 10:01:12'),
(41, 'CPGB72NJ52JCMWEL8PGEBJ4M10', 'Account deposit', NULL, '500', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-25 14:30:47', '2022-02-26 10:00:25'),
(42, 'CPGB5PKGJ1N1TVUVLCFSCPEBZA', 'Account deposit', NULL, '500', NULL, 24, NULL, NULL, NULL, 'USD', 'ETH', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-25 14:31:45', '2022-02-26 10:00:26'),
(43, 'CPGB2X04QIXPDKOENCTMKO0BGL', 'Account deposit', NULL, '60', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-25 17:42:50', '2022-02-26 10:00:27'),
(44, 'CPGB1IFUFQC9YKPRVZRWMJIYPD', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:12:22', '2022-02-27 10:01:05'),
(45, 'CPGB28LOQZT3I7VCDZSWSNMM4A', 'Account deposit', NULL, '200', NULL, 24, NULL, NULL, NULL, 'USD', 'ETH', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-03-01 04:04:55', '2022-03-01 10:00:33'),
(46, 'CPGB6AL47NVWYOZRDCKMMM2WHM', 'Account deposit', NULL, '20', NULL, 71, NULL, NULL, NULL, 'USD', 'BTC', '-1', 'Cancelled / Timed Out', 'Deposit', NULL, NULL, NULL, NULL, NULL, '2022-03-01 09:57:53', '2022-03-03 10:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `txn_id`, `user`, `uname`, `amount`, `payment_mode`, `plan`, `status`, `proof`, `created_at`, `updated_at`) VALUES
(30, NULL, 133, NULL, '1000', 'Bitcoin', NULL, 'Processed', '5tzJNradmin.jpg1659894513', '2022-08-07 21:48:34', '2022-08-07 21:49:20');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_key` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `ref_key`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, '8yZ6FC', 'How can i withdraw', 'This is how to withdraw', '2021-03-11 14:31:42', '2021-03-11 14:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(255) NOT NULL,
  `ref_key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `ref_key`, `title`, `description`, `img_path`, `created_at`, `updated_at`) VALUES
(3, '57VnOE', 'Slider1', 'This is carosel 1', 'upload-2.jpg1617292439', '2020-08-23 12:08:38', '2021-04-01 15:53:59'),
(4, 'dC6ZaA', 'Slider2', 'This is slider 2', '2.jpg', '2020-08-23 12:09:00', '2020-08-23 12:09:00'),
(5, '9kHash', 'Slider3', 'This is slider 3', '3.jpg', '2020-08-23 12:09:16', '2020-08-23 12:09:16'),
(6, 'CcW52g', 'Slider4', 'This is Slider 4', '4.jpg', '2020-08-23 12:09:38', '2020-08-23 12:09:38'),
(7, '96i7xH', 'Slider5', 'This is slider 5', '5.jpg', '2020-08-23 12:09:55', '2020-08-23 12:09:55'),
(8, 'DPd1Kn', 'Testimonial 1', 'Testimonial 1', 'testimonial-1.jpg', '2020-08-23 12:24:52', '2020-08-23 12:24:52'),
(9, 'ZqCgDz', 'Testimonial 2', 'Testimonial 2', 'testimonial-2.jpg', '2020-08-23 12:25:07', '2020-08-25 14:57:06'),
(10, 'zNNAgD', 'Testimonial 3', 'Testimonial 3', 'testimonial-3.jpg', '2020-08-23 12:25:22', '2020-08-23 12:25:22'),
(11, '2v0Ut5', 'Testimonial 4', 'Testimonial 4', 'GyDN8Rtestimonial-4.jpg1617380709', '2020-08-23 12:25:37', '2021-04-02 16:25:09'),
(12, '4Rp9Wz', 'Testimonial 5', 'Testimonial 5', 'upload-testimonial-5.jpg1617356092', '2020-08-23 12:25:54', '2021-04-02 09:34:52'),
(13, 'tXf1Zz', 'Testimonial 1', 'Testimonial 1', 'QmSJjKtestimonial-1.jpg1617381068', '2020-08-25 14:52:57', '2021-04-02 16:31:08');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_09_142220_create_sessions_table', 1),
(7, '2021_03_10_082445_create_admins_table', 2),
(8, '2021_03_10_082519_create_agents_table', 2),
(9, '2021_03_10_082715_create_assets_table', 2),
(10, '2021_03_10_082817_create_contents_table', 2),
(11, '2021_03_10_083110_create_cp_transactions_table', 2),
(12, '2021_03_10_083324_create_deposits_table', 2),
(13, '2021_03_10_083400_create_faqs_table', 2),
(14, '2021_03_10_083510_create_images_table', 2),
(15, '2021_03_10_083557_create_mt4_details_table', 2),
(16, '2021_03_10_083627_create_notifications_table', 2),
(17, '2021_03_10_083824_create_plans_table', 2),
(18, '2021_03_10_083850_create_settings_table', 2),
(19, '2021_03_10_083936_create_testimonies_table', 2),
(20, '2021_03_10_084009_create_tp__transactions_table', 2),
(21, '2021_03_10_084031_create_upgrades_table', 2),
(22, '2021_03_10_084120_create_userlogs_table', 2),
(23, '2021_03_10_084140_create_user_plans_table', 2),
(24, '2021_03_10_084235_create_wdmethods_table', 2),
(25, '2021_03_10_084300_create_withdrawals_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mt4_details`
--

CREATE TABLE `mt4_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `mt4_id` varchar(255) DEFAULT NULL,
  `mt4_password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `leverage` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(2, 9, 'This is a new mail Victory, kindly apprehiend', '2021-03-12 12:38:30', '2021-03-12 12:38:30'),
(4, 25, 'Hello Weldon,\r\nDo make referrals so to earn bonuses of $20 per active referral to boost your Returns On Investments (ROI).\r\n\r\nThanks.', '2021-12-13 17:22:58', '2021-12-13 17:22:58'),
(5, 26, 'Hello Hussain,\r\n\r\nIn line with our rules and regulations, all inactive accounts without deposits will be deactivated along with its sign up bonuses on the 20th of this month during the coming upgrade in which Basic Plans of $100 will be eliminated and replaced.\r\n\r\nAll deposits made prior to the stated date above will not be affected.\r\n\r\nThanks.', '2021-12-17 22:30:31', '2021-12-17 22:30:31'),
(6, 27, 'Hello Khan,\r\n\r\nIn line with our rules and regulations, all inactive accounts without deposits will be deactivated along with its existing sign up bonuses on the 20th of this month during the upgrade in which Basic Plans of $100 will be eliminated and replaced. \r\n\r\nAll deposits made prior the stated date above will not be affected.\r\n\r\nThanks', '2021-12-17 22:37:07', '2021-12-17 22:37:07'),
(7, 28, 'Hello Todd,\r\nIn line with our rules and regulations, all inactive accounts without deposits will be deactivated along with its sign up bonuses on the 20th of this month during the coming upgrade in which Basic Plans of $100 will be eliminated and replaced.\r\n\r\nAll deposits made prior to this date will not be affected.\r\n\r\nThanks.', '2021-12-17 22:42:10', '2021-12-17 22:42:10'),
(8, 29, 'Hello Sajjad,\r\nIn line with our terms and conditions, all inactive accounts will be deactivated along with its sign up bonuses during the coming upgrade on the 20th of this month in which Basic Plans of $100 will be eliminated and replaced.\r\n\r\nAll deposits made prior to the stated date above will not be affected.\r\n\r\nThanks.', '2021-12-17 22:46:35', '2021-12-17 22:46:35'),
(9, 24, 'Hello Victor,\r\nIn line with our terms and conditions, all inactive accounts will be deactivated along with its sign up bonuses on the 20th of this month during the coming upgrade in which Basic Plans of $100 will be eliminated and replaced.\r\n\r\nAll deposits made prior to the stated date above will not be affected.\r\n\r\nThanks.', '2021-12-17 22:49:33', '2021-12-17 22:49:33'),
(10, 30, 'Make deposit from an already existing bitcoin wallet you own e.g. Coinbase, Binance, Bitpay and so on. \r\n\r\nYour deposit was not received. Do make deposit from an existing Bitcoin Wallet.\r\n\r\nThanks.', '2021-12-20 22:49:58', '2021-12-20 22:49:58'),
(11, 31, 'Basic Plan has been totally eliminated. Do make deposits prior to or on the 25th of this month so to retain membership and to begin earning.\r\n\r\nThanks', '2021-12-20 23:55:35', '2021-12-20 23:55:35'),
(12, 31, 'Basic Plan has been totally eliminated. Do make deposits prior to or on the 25th of this month so to retain membership and to begin earning.\r\n\r\nThanks', '2021-12-20 23:55:36', '2021-12-20 23:55:36'),
(13, 30, 'Do make deposit prior to or on the 26th of December (this month) to prevent your account from being disabled.\r\n\r\nThanks.', '2021-12-20 23:59:13', '2021-12-20 23:59:13'),
(14, 30, 'Kindly upload or send proof of bitcoin deposit as an attachment to info@crypto-investing.org for trading to be enabled.\r\n\r\nThanks.', '2021-12-21 22:01:56', '2021-12-21 22:01:56'),
(15, 30, 'If you have not made deposit, kindly click on the \"Menu\" icon at the top left of your screen, Click \"Deposit\", make payment by BTC to your account wallet from an external BTC wallet, upload proof of payment deposit in the column stated and submit.\r\n\r\nIf you have made BTC deposit and it is yet to reflect in your account then attach the proof of deposit and send to info@crypto-investing.org for further verification.\r\n\r\nThanks.', '2021-12-22 23:04:40', '2021-12-22 23:04:40'),
(16, 30, 'This is to inform you of a suspicious activity observed in your account. \r\n\r\nYou are hereby advised to present a copy, photo or screenshot of the assumed Proof of Payment, attach and send via email as soon possible on or before the 26th of December so to prevent your account from being blocked, banned and deleted.\r\n\r\nThanks.', '2021-12-24 09:30:39', '2021-12-24 09:30:39'),
(17, 25, 'Wishing every investor a Merry Christmas and a Prosperous New Year ahead as you all refer more investors to earn from this programme.\r\n\r\nThanks.', '2021-12-25 16:36:03', '2021-12-25 16:36:03'),
(18, 24, 'Wishing every investor a Merry Christmas and a Prosperous New Year ahead as you all refer more investors to earn from this programme.\r\n\r\nThanks', '2021-12-25 16:36:36', '2021-12-25 16:36:36'),
(19, 34, 'Kindly send as attachment a copy of Proof of Deposit to support@crypto-investing.org for further verification as it shows there are no deposits made in account.\r\n\r\nThanks.', '2021-12-29 02:58:15', '2021-12-29 02:58:15'),
(20, 34, 'A screenshot of Proof of Deposit should be attached and sent via email to support@crypto-investing.org for further verification so account can be credited immediately for Auto-Trade.', '2021-12-29 19:12:06', '2021-12-29 19:12:06'),
(21, 33, 'Kindly complete KYC verification, choose a Plan from Standard to Premium, make deposits via credit/debit card or from external BTC wallet to your profile wallet and send screenshot of Proof of Deposit to support@crypto-investing.org for activation of Auto-Trading on your account.', '2021-12-29 19:15:45', '2021-12-29 19:15:45'),
(22, 32, 'Kindly complete KYC verification, choose a Plan from Standard to Premium, make deposits via credit/debit card or from external BTC wallet to your profile wallet and send screenshot of Proof of Deposit to support@crypto-investing.org for activation of Auto-Trading on your account.', '2021-12-29 19:17:31', '2021-12-29 19:17:31'),
(23, 39, 'Kindly send screenshot as attachment of Proof of Deposit to info@crypto-investing.org for activation.\r\n\r\nThanks.', '2021-12-31 03:34:06', '2021-12-31 03:34:06'),
(24, 39, 'Kindly complete KYC verification, choose a Plan from Standard to Premium, make deposits via credit/debit card or from external BTC wallet to your profile wallet and send screenshot of Proof of Deposit to support@crypto-investing.org for clarification & activation of Auto-Trading on your account.\r\n\r\nNote: Failure to comply with the above description within 48 hours will have your account disabled and deleted.', '2021-12-31 18:10:18', '2021-12-31 18:10:18'),
(25, 38, 'Kindly complete KYC verification, choose a Plan from Standard to Premium, make deposits via credit/debit card or from external BTC wallet to your profile wallet and send screenshot of Proof of Deposit to support@crypto-investing.org for clarification & activation of Auto-Trading on your account.\r\n\r\nNote: Failure to comply with the above description within 48hours will have your account disabled and deleted.', '2021-12-31 18:11:35', '2021-12-31 18:11:35'),
(26, 37, 'Kindly complete KYC verification, choose a Plan from Standard to Premium, make deposits via credit/debit card or from external BTC wallet to your profile wallet and send screenshot of Proof of Deposit to support@crypto-investing.org for clarification & activation of Auto-Trading on your account.\r\n\r\nNote: Failure to comply with the above description within 48 hours will have your account disabled and deleted.', '2021-12-31 18:12:54', '2021-12-31 18:12:54'),
(27, 35, 'Kindly complete KYC verification, choose a Plan from Standard to Premium, make deposits via credit/debit card or from external BTC wallet to your profile wallet and send screenshot of Proof of Deposit to support@crypto-investing.org for clarification & activation of Auto-Trading on your account.\r\n\r\nNote: Failure to comply with the above description within 48 hours will have your account disabled and deleted.', '2021-12-31 18:13:44', '2021-12-31 18:13:44'),
(28, 34, 'Kindly complete KYC verification, choose a Plan from Standard to Premium, make deposits via credit/debit card or from external BTC wallet to your profile wallet and send screenshot of Proof of Deposit to support@crypto-investing.org for clarification & activation of Auto-Trading on your account.\r\n\r\nNote: Failure to comply with the above description within 48 hours will have your account disabled and deleted.', '2021-12-31 18:15:07', '2021-12-31 18:15:07'),
(29, 33, 'Kindly complete KYC verification, choose a Plan from Standard to Premium, make deposits via credit/debit card or from external BTC wallet to your profile wallet and send screenshot of Proof of Deposit to support@crypto-investing.org for clarification & activation of Auto-Trading on your account.\r\n\r\nNote: Failure to comply with the above description within 48 hours will have your account disabled and deleted.', '2021-12-31 18:16:14', '2021-12-31 18:16:14'),
(30, 32, 'Kindly complete KYC verification, choose a Plan from Standard to Premium, make deposits via credit/debit card or from external BTC wallet to your profile wallet and send screenshot of Proof of Deposit to support@crypto-investing.org for clarification & activation of Auto-Trading on your account.\r\n\r\nNote: Failure to comply with the above description within 48 hours will have your account disabled and deleted.', '2021-12-31 18:17:10', '2021-12-31 18:17:10'),
(31, 34, 'Kindly send photo or screenshot of Proof of Deposit to support@crypto-investing.org for further clarification and activation of Auto-Trading on your Crypto Investing Profile.\r\n\r\nThanks.', '2022-01-10 04:11:51', '2022-01-10 04:11:51'),
(32, 34, 'Kindly send in a photo/screenshot of Proof of Deposit to support@crypto-investing.org to have Auto-Trade activated in your Crypto Investing Wallet.\r\n\r\nThanks.', '2022-01-13 00:39:52', '2022-01-13 00:39:52'),
(33, 41, 'Kindly reattach or send a screenshot of Proof of Deposit to support@crypto-investing.org for verification and the activation of Auto-Trading on your account. \r\nAlso ensure to complete KYC verification on your profile to avoid being banned from this platform.', '2022-01-16 08:26:47', '2022-01-16 08:26:47'),
(34, 34, 'Kindly reattach or send a screenshot of Proof of Deposit to support@crypto-investing.org for verification and the activation of Auto-Trading on your account. \r\nAlso ensure to complete KYC verification on your profile to avoid being banned from this platform.', '2022-01-16 08:28:24', '2022-01-16 08:28:24'),
(35, 42, 'Kindly attach or send a screenshot of Proof of Deposit to support@crypto-investing.org for further verification and activation of Auto-Trading on your account. \r\nAlso ensure to complete KYC verification on your profile to avoid being banned from this platform.', '2022-01-17 04:41:45', '2022-01-17 04:41:45'),
(36, 41, 'Kindly attach or send a screenshot of Proof of Deposit to support@crypto-investing.org for further verification and activation of Auto-Trading on your account. \r\nAlso ensure to complete KYC verification on your profile to avoid being banned from this platform.', '2022-01-17 04:42:44', '2022-01-17 04:42:44'),
(37, 38, 'Kindly attach or send a screenshot of Proof of Deposit to support@crypto-investing.org for further verification and activation of Auto-Trading on your account. \r\nAlso ensure to complete KYC verification on your profile to avoid being banned from this platform.', '2022-01-17 04:44:02', '2022-01-17 04:44:02'),
(38, 39, 'Kindly attach or send a screenshot of Proof of Deposit to support@crypto-investing.org for further verification and activation of Auto-Trading on your account. \r\nAlso ensure to complete KYC verification on your profile to avoid being banned from this platform.', '2022-01-17 04:46:07', '2022-01-17 04:46:07'),
(39, 34, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:34:39', '2022-01-24 02:34:39'),
(40, 41, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:35:50', '2022-01-24 02:35:50'),
(41, 44, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:36:30', '2022-01-24 02:36:30'),
(42, 43, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:36:56', '2022-01-24 02:36:56'),
(43, 42, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:37:21', '2022-01-24 02:37:21'),
(44, 39, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:37:49', '2022-01-24 02:37:49'),
(45, 39, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:38:14', '2022-01-24 02:38:14'),
(46, 38, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:38:40', '2022-01-24 02:38:40'),
(47, 37, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:39:11', '2022-01-24 02:39:11'),
(48, 33, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:39:57', '2022-01-24 02:39:57'),
(49, 32, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:40:30', '2022-01-24 02:40:30'),
(50, 25, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:41:35', '2022-01-24 02:41:35'),
(51, 24, 'Due to the recent upgrade on the system, all pending transactions was cancelled and we advice that you repeat same deposit made previously.\r\n\r\nThanks for the understanding.', '2022-01-24 02:42:00', '2022-01-24 02:42:00'),
(52, 51, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:45:48', '2022-02-06 00:45:48'),
(53, 50, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:46:15', '2022-02-06 00:46:15'),
(54, 49, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:46:39', '2022-02-06 00:46:39'),
(55, 48, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:47:01', '2022-02-06 00:47:01'),
(56, 47, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:47:31', '2022-02-06 00:47:31'),
(57, 46, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:48:05', '2022-02-06 00:48:05'),
(58, 45, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:48:27', '2022-02-06 00:48:27'),
(59, 45, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:48:28', '2022-02-06 00:48:28'),
(60, 44, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:48:51', '2022-02-06 00:48:51'),
(61, 43, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:49:18', '2022-02-06 00:49:18'),
(62, 43, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:49:40', '2022-02-06 00:49:40'),
(63, 42, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:50:06', '2022-02-06 00:50:06'),
(64, 41, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:50:52', '2022-02-06 00:50:52'),
(65, 39, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:51:17', '2022-02-06 00:51:17'),
(66, 38, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:51:41', '2022-02-06 00:51:41'),
(67, 37, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:52:18', '2022-02-06 00:52:18'),
(68, 35, 'Kindly check email Inbox or Spam box for Activation link to activate Profile and make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals.', '2022-02-06 00:52:48', '2022-02-06 00:52:48'),
(69, 59, 'An attempted deposit of $100 was rejected on your Profile due to not complying with the rules of Deposit. \r\n\r\nThe Bitcoin Wallet address shown on your screen should be copied or the Barcode scanned using a deposit procedure from an External Wallet.\r\n\r\nFor further inquiries contact support@crypto-investing.org or info@crypto-investing.org \r\n\r\nThanks.', '2022-02-09 19:30:35', '2022-02-09 19:30:35'),
(70, 64, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 16:48:47', '2022-02-16 16:48:47'),
(71, 63, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 16:49:09', '2022-02-16 16:49:09'),
(72, 61, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 16:49:31', '2022-02-16 16:49:31'),
(73, 60, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 16:49:58', '2022-02-16 16:49:58'),
(74, 59, 'Congratulations on successfully registering your Profile. A registration bonus of $50 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposits from your External Wallet or from a Coin Flip Machine nearest to you to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 16:52:51', '2022-02-16 16:52:51'),
(75, 58, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet or a Coin Flip Machine nearest to you to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 16:53:55', '2022-02-16 16:53:55'),
(76, 57, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 16:54:32', '2022-02-16 16:54:32'),
(77, 55, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 17:26:21', '2022-02-16 17:26:21'),
(78, 53, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 23:53:42', '2022-02-16 23:53:42'),
(79, 50, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 23:56:04', '2022-02-16 23:56:04'),
(80, 49, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 23:56:37', '2022-02-16 23:56:37'),
(81, 48, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 23:57:03', '2022-02-16 23:57:03'),
(82, 46, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 23:57:34', '2022-02-16 23:57:34'),
(83, 45, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 23:58:20', '2022-02-16 23:58:20'),
(84, 44, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-16 23:58:45', '2022-02-16 23:58:45'),
(85, 43, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:00:02', '2022-02-17 00:00:02'),
(86, 32, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:00:50', '2022-02-17 00:00:50'),
(87, 33, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:01:29', '2022-02-17 00:01:29'),
(88, 35, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:02:04', '2022-02-17 00:02:04'),
(89, 37, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:02:42', '2022-02-17 00:02:42'),
(90, 38, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:03:05', '2022-02-17 00:03:05'),
(91, 39, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:03:28', '2022-02-17 00:03:28'),
(92, 42, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:04:01', '2022-02-17 00:04:01'),
(93, 41, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:04:25', '2022-02-17 00:04:25'),
(94, 39, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:05:04', '2022-02-17 00:05:04'),
(95, 52, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:05:31', '2022-02-17 00:05:31'),
(96, 43, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-17 00:06:13', '2022-02-17 00:06:13'),
(97, 70, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-19 14:49:58', '2022-02-19 14:49:58'),
(98, 69, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-19 14:50:50', '2022-02-19 14:50:50'),
(99, 68, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-19 14:51:41', '2022-02-19 14:51:41'),
(100, 67, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-19 14:52:06', '2022-02-19 14:52:06'),
(101, 66, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-02-19 14:52:35', '2022-02-19 14:52:35'),
(102, 25, 'A $450 Bonus has been deposited in your Crypto-Investing Wallet as a sign of appreciation for your patience and we advice you make a $1,000 Deposit in your Crypto-Investing Wallet to activate Withdrawal API to enable you make Bank Transfers directly to your Bank Account as all Transfer Taxes has been cleared by us.\r\n\r\nWe do hope this is satisfactory to your request as an existing member from 30th November, 2021, having met your demands and expecting referrals from you.\r\n\r\nDo have us informed after withdrawals by sending in a Testimonial Video to support@crypto-investing.org\r\n\r\nThanks', '2022-02-19 15:22:46', '2022-02-19 15:22:46'),
(103, 24, 'A $450 Bonus has been deposited in your Crypto-Investing Wallet as a sign of appreciation for your patience and we advice you make a $1,000 Deposit in your Crypto-Investing Wallet to activate Withdrawal API to enable you make Bank Transfers directly to your Bank Account as all Transfer Taxes has been cleared by us.\r\n\r\nWe do hope this is satisfactory to your request as an existing member from 30th November, 2021, having met your demands and expecting referrals from you.\r\n\r\nDo have us informed after withdrawals by sending in a Testimonial Video to support@crypto-investing.org\r\n\r\nThanks', '2022-02-19 15:23:11', '2022-02-19 15:23:11'),
(104, 71, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:03:40', '2022-02-26 02:03:40'),
(105, 72, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:04:05', '2022-02-26 02:04:05'),
(106, 70, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:04:33', '2022-02-26 02:04:33'),
(107, 69, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:04:54', '2022-02-26 02:04:54'),
(108, 68, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:05:16', '2022-02-26 02:05:16'),
(109, 67, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:05:35', '2022-02-26 02:05:35'),
(110, 66, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:05:55', '2022-02-26 02:05:55'),
(111, 64, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:06:21', '2022-02-26 02:06:21'),
(112, 63, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:06:58', '2022-02-26 02:06:58'),
(113, 61, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:07:20', '2022-02-26 02:07:20'),
(114, 60, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:07:43', '2022-02-26 02:07:43'),
(115, 59, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:08:18', '2022-02-26 02:08:18'),
(116, 58, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:08:41', '2022-02-26 02:08:41'),
(117, 56, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:09:04', '2022-02-26 02:09:04'),
(118, 55, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:09:37', '2022-02-26 02:09:37'),
(119, 54, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:10:01', '2022-02-26 02:10:01'),
(120, 53, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:10:35', '2022-02-26 02:10:35'),
(121, 52, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:11:01', '2022-02-26 02:11:01'),
(122, 50, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:11:23', '2022-02-26 02:11:23'),
(123, 49, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:11:51', '2022-02-26 02:11:51'),
(124, 48, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:12:17', '2022-02-26 02:12:17'),
(125, 47, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:12:47', '2022-02-26 02:12:47'),
(126, 46, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:13:27', '2022-02-26 02:13:27'),
(127, 45, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:13:55', '2022-02-26 02:13:55'),
(128, 44, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:14:36', '2022-02-26 02:14:36'),
(129, 43, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:16:21', '2022-02-26 02:16:21'),
(130, 42, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:16:52', '2022-02-26 02:16:52'),
(131, 41, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:17:21', '2022-02-26 02:17:21'),
(132, 39, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:18:26', '2022-02-26 02:18:26'),
(133, 38, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:18:55', '2022-02-26 02:18:55'),
(134, 37, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:19:17', '2022-02-26 02:19:17'),
(135, 35, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:19:39', '2022-02-26 02:19:39'),
(136, 34, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:20:05', '2022-02-26 02:20:05'),
(137, 33, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:20:32', '2022-02-26 02:20:32'),
(138, 32, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-26 02:20:54', '2022-02-26 02:20:54'),
(139, 25, 'Kindly activate Withdrawal API by Depositing $1,000 in your Crypto-Investing Wallet as instructed for your Investment withdrawals.\r\n\r\nThanks.', '2022-02-26 02:23:07', '2022-02-26 02:23:07'),
(140, 73, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-27 23:05:48', '2022-02-27 23:05:48'),
(141, 71, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-27 23:06:14', '2022-02-27 23:06:14'),
(142, 72, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-27 23:06:32', '2022-02-27 23:06:32'),
(143, 46, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-27 23:07:24', '2022-02-27 23:07:24'),
(144, 59, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-27 23:07:47', '2022-02-27 23:07:47'),
(145, 34, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-27 23:08:13', '2022-02-27 23:08:13'),
(146, 33, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-28 04:45:54', '2022-02-28 04:45:54'),
(147, 38, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-28 04:46:23', '2022-02-28 04:46:23'),
(148, 64, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-28 04:46:52', '2022-02-28 04:46:52'),
(149, 59, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-28 04:47:35', '2022-02-28 04:47:35'),
(150, 39, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-02-28 04:48:17', '2022-02-28 04:48:17'),
(151, 73, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-01 00:33:44', '2022-03-01 00:33:44'),
(152, 72, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-01 00:34:06', '2022-03-01 00:34:06'),
(153, 71, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-01 00:34:29', '2022-03-01 00:34:29'),
(154, 74, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-01 22:38:44', '2022-03-01 22:38:44'),
(155, 75, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make deposit from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-01 22:39:07', '2022-03-01 22:39:07'),
(156, 75, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-03-01 22:40:37', '2022-03-01 22:40:37'),
(157, 74, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-03-01 22:41:03', '2022-03-01 22:41:03'),
(158, 24, 'Kindly activate earnings by making Bitcoin or Ethereum Deposits in your Crypto-Investing Wallet as instructed in the Deposit section.\r\n\r\nThanks.', '2022-03-01 22:42:48', '2022-03-01 22:42:48'),
(159, 71, 'As a reminder, minimum deposit allowed is $100 BTC equivalent on the Crypto-Investing Platform and maximum deposit limit on the platform is 100 BTC.\r\n\r\nThanks.\r\n\r\nThanks.', '2022-03-01 23:06:29', '2022-03-01 23:06:29'),
(160, 25, 'This is a reminder pertaining your $1,000 BTC deposit to be made into your Crypto-Investing Wallet for the Activation of your Withdrawal API.\r\n\r\nKindly comply as soon as possible.\r\n\r\nThanks.', '2022-03-01 23:26:00', '2022-03-01 23:26:00'),
(161, 76, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to activate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-05 00:32:04', '2022-03-05 00:32:04'),
(162, 25, 'In response to your withdrawal request, we advice that you withdraw all profits made on our Platform and contact Mr Donald Wikers through the below means necessary for complete withdrawals by initially sending an email of notification before calling.\r\n\r\nCiti Private Bank, US. \r\nEmail: info@citionline.com.co\r\nTel:  +13157415263\r\nInternational Operation Manager: Mr Donald Wikers\r\n\r\nThanks for your understanding.', '2022-03-08 21:17:02', '2022-03-08 21:17:02'),
(163, 59, 'Congratulations John! You have been randomly selected to request withdrawal of $20 to your external USDT Wallet as a means of encouragement and trust.\r\n\r\nKindly send us an email containing your USDT Wallet Address to receive this $20 gift from us. \r\n\r\nNote: The above gift from us expires after 48 hours from the time this mail is delivered if there are no response from you.', '2022-03-08 23:28:46', '2022-03-08 23:28:46'),
(164, 46, 'Congratulations Sananda! You have been randomly selected to make withdrawal of $20 to your external USDT Wallet as a means of encouragement and trust.\r\n\r\nKindly send us an email containing your USDT Wallet Address to receive this $20 from us. \r\n\r\nNote: The above gift from us expires in 48 hours from the time this mail is delivered if there are no response from you.', '2022-03-08 23:31:14', '2022-03-08 23:31:14'),
(165, 78, 'Do click on the activation link sent to your email to activate your profile and make Bitcoin Deposit to activate Auto-Trade for daily earnings.\r\n\r\nThanks.', '2022-03-12 15:45:24', '2022-03-12 15:45:24'),
(166, 79, 'Do validate your Profile by clicking on the link sent to your email and making BTC Investment Deposit to start earning daily.\r\n\r\nThanks.', '2022-03-12 22:32:43', '2022-03-12 22:32:43'),
(167, 83, 'Do validate your Profile by clicking on the link sent to your email and making BTC Investment Deposit to start earning daily.\r\n\r\nThanks.', '2022-03-20 20:54:42', '2022-03-20 20:54:42'),
(168, 82, 'Do validate your Profile by clicking on the link sent to your email and making BTC Investment Deposit to start earning daily.\r\n\r\nThanks.', '2022-03-20 20:55:07', '2022-03-20 20:55:07');
INSERT INTO `notifications` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(169, 81, 'Do validate your Profile by clicking on the link sent to your email and making BTC Investment Deposit to start earning daily.\r\n\r\nThanks.', '2022-03-20 20:55:37', '2022-03-20 20:55:37'),
(170, 79, 'Do validate your Profile by clicking on the link sent to your email and making BTC Investment Deposit to start earning daily.\r\n\r\nThanks.', '2022-03-20 20:56:18', '2022-03-20 20:56:18'),
(171, 83, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-20 20:57:57', '2022-03-20 20:57:57'),
(172, 82, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-20 20:58:28', '2022-03-20 20:58:28'),
(173, 81, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-20 20:58:54', '2022-03-20 20:58:54'),
(174, 80, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-20 20:59:38', '2022-03-20 20:59:38'),
(175, 77, 'Congratulations on successfully registering your Profile. A registration bonus of $20 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-20 21:00:40', '2022-03-20 21:00:40'),
(176, 84, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-21 04:21:06', '2022-03-21 04:21:06'),
(177, 24, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.\r\n\r\nThanks.', '2022-03-21 04:22:15', '2022-03-21 04:22:15'),
(178, 85, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-22 12:00:00', '2022-03-22 12:00:00'),
(179, 86, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-24 18:51:39', '2022-03-24 18:51:39'),
(180, 88, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-25 16:56:57', '2022-03-25 16:56:57'),
(181, 24, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-25 16:59:39', '2022-03-25 16:59:39'),
(182, 89, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-27 02:16:10', '2022-03-27 02:16:10'),
(183, 90, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-28 14:10:34', '2022-03-28 14:10:34'),
(184, 92, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-28 16:29:07', '2022-03-28 16:29:07'),
(185, 91, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-28 16:29:37', '2022-03-28 16:29:37'),
(186, 93, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-29 04:16:09', '2022-03-29 04:16:09'),
(187, 94, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-29 21:34:18', '2022-03-29 21:34:18'),
(188, 95, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-30 10:17:06', '2022-03-30 10:17:06'),
(189, 96, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-03-31 11:54:44', '2022-03-31 11:54:44'),
(190, 97, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-02 13:35:29', '2022-04-02 13:35:29'),
(191, 98, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-03 17:56:40', '2022-04-03 17:56:40'),
(193, 99, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-04 16:57:55', '2022-04-04 16:57:55'),
(194, 101, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-05 13:30:15', '2022-04-05 13:30:15'),
(195, 101, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks.', '2022-04-05 18:20:35', '2022-04-05 18:20:35'),
(196, 100, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks.', '2022-04-05 18:22:05', '2022-04-05 18:22:05'),
(197, 99, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks.', '2022-04-05 18:22:41', '2022-04-05 18:22:41'),
(198, 98, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks.', '2022-04-05 18:23:05', '2022-04-05 18:23:05'),
(199, 97, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks.', '2022-04-05 18:23:34', '2022-04-05 18:23:34'),
(200, 96, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks.', '2022-04-05 18:24:06', '2022-04-05 18:24:06'),
(201, 95, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks.', '2022-04-05 18:24:37', '2022-04-05 18:24:37'),
(202, 94, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks.', '2022-04-05 18:25:13', '2022-04-05 18:25:13'),
(203, 93, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks.', '2022-04-05 18:25:43', '2022-04-05 18:25:43'),
(204, 92, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks.', '2022-04-05 18:26:08', '2022-04-05 18:26:08'),
(205, 91, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:26:47', '2022-04-05 18:26:47'),
(206, 100, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:27:15', '2022-04-05 18:27:15'),
(207, 99, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:27:42', '2022-04-05 18:27:42'),
(208, 90, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:28:41', '2022-04-05 18:28:41'),
(209, 89, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:29:15', '2022-04-05 18:29:15'),
(210, 88, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:29:45', '2022-04-05 18:29:45'),
(211, 87, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:30:13', '2022-04-05 18:30:13'),
(212, 86, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:30:55', '2022-04-05 18:30:55'),
(213, 85, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:31:26', '2022-04-05 18:31:26'),
(214, 84, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:31:55', '2022-04-05 18:31:55'),
(215, 83, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:32:54', '2022-04-05 18:32:54'),
(216, 82, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:33:23', '2022-04-05 18:33:23'),
(217, 81, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:33:55', '2022-04-05 18:33:55'),
(218, 80, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:34:26', '2022-04-05 18:34:26'),
(219, 79, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:35:06', '2022-04-05 18:35:06'),
(220, 77, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:36:19', '2022-04-05 18:36:19'),
(221, 76, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.\r\n\r\nThanks', '2022-04-05 18:36:56', '2022-04-05 18:36:56'),
(222, 75, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:37:53', '2022-04-05 18:37:53'),
(223, 74, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:38:36', '2022-04-05 18:38:36'),
(224, 73, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:39:35', '2022-04-05 18:39:35'),
(225, 72, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:40:09', '2022-04-05 18:40:09'),
(226, 71, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:40:37', '2022-04-05 18:40:37'),
(227, 70, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:41:04', '2022-04-05 18:41:04'),
(228, 69, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:41:32', '2022-04-05 18:41:32'),
(229, 68, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:42:00', '2022-04-05 18:42:00'),
(230, 67, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:42:32', '2022-04-05 18:42:32'),
(231, 66, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:43:00', '2022-04-05 18:43:00'),
(232, 64, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:43:42', '2022-04-05 18:43:42'),
(233, 63, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:44:18', '2022-04-05 18:44:18'),
(234, 61, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:44:49', '2022-04-05 18:44:49'),
(235, 60, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:45:23', '2022-04-05 18:45:23'),
(236, 59, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:46:00', '2022-04-05 18:46:00'),
(237, 58, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:46:28', '2022-04-05 18:46:28'),
(238, 56, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:46:55', '2022-04-05 18:46:55'),
(239, 55, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:47:23', '2022-04-05 18:47:23'),
(240, 54, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:48:11', '2022-04-05 18:48:11'),
(241, 53, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:48:38', '2022-04-05 18:48:38'),
(242, 52, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:49:07', '2022-04-05 18:49:07'),
(243, 50, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:49:36', '2022-04-05 18:49:36'),
(244, 49, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:50:05', '2022-04-05 18:50:05'),
(245, 48, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:50:31', '2022-04-05 18:50:31'),
(246, 47, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:50:59', '2022-04-05 18:50:59'),
(247, 46, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:51:30', '2022-04-05 18:51:30'),
(248, 44, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:52:03', '2022-04-05 18:52:03'),
(249, 43, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for investment of $10,000 and above.', '2022-04-05 18:52:45', '2022-04-05 18:52:45'),
(250, 42, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for $10,000 investment and above.', '2022-04-05 18:53:59', '2022-04-05 18:53:59'),
(251, 41, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for $10,000 investment and above.', '2022-04-05 18:54:36', '2022-04-05 18:54:36'),
(252, 39, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for $10,000 investment and above.', '2022-04-05 18:55:06', '2022-04-05 18:55:06'),
(253, 38, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for $10,000 investment and above.', '2022-04-05 18:55:35', '2022-04-05 18:55:35'),
(254, 37, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for $10,000 investment and above.', '2022-04-05 18:56:04', '2022-04-05 18:56:04'),
(255, 35, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for $10,000 investment and above.', '2022-04-05 18:56:37', '2022-04-05 18:56:37'),
(256, 34, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for $10,000 investment and above.', '2022-04-05 18:57:02', '2022-04-05 18:57:02'),
(257, 33, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for $10,000 investment and above.', '2022-04-05 18:57:33', '2022-04-05 18:57:33');
INSERT INTO `notifications` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(258, 32, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for $10,000 investment and above.', '2022-04-05 18:58:08', '2022-04-05 18:58:08'),
(259, 24, 'Kindly make Bitcoin or Ethereum Investment Deposit for Fixed earnings of 30% to 69% Daily and Instant Withdrawals at due time.\r\n\r\nIf you have no registered external Bitcoin or Ethereum wallet then do make bank transfer deposit as stipulated in the \"Make a New Deposit\" section of your Profile where our Bank detail is available and attach a photo or screenshot of bank receipt after deposit as instructed so your Crypto-Investing wallet can be credited.\r\n\r\nPlease note: Bank Transfer Investment Deposits are only allowed for $10,000 investment and above.', '2022-04-05 18:58:36', '2022-04-05 18:58:36'),
(260, 102, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-09 15:37:29', '2022-04-09 15:37:29'),
(261, 103, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-12 19:28:59', '2022-04-12 19:28:59'),
(262, 105, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-13 20:40:09', '2022-04-13 20:40:09'),
(263, 104, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have done so already then do make Transfers from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-13 20:40:42', '2022-04-13 20:40:42'),
(264, 92, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:40:08', '2022-04-14 21:40:08'),
(265, 105, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:40:33', '2022-04-14 21:40:33'),
(266, 104, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:40:57', '2022-04-14 21:40:57'),
(267, 103, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:41:29', '2022-04-14 21:41:29'),
(268, 101, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:41:52', '2022-04-14 21:41:52'),
(269, 100, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:42:19', '2022-04-14 21:42:19'),
(270, 99, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:42:51', '2022-04-14 21:42:51'),
(271, 98, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:43:19', '2022-04-14 21:43:19'),
(272, 96, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:43:51', '2022-04-14 21:43:51'),
(273, 95, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:44:25', '2022-04-14 21:44:25'),
(274, 94, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:45:53', '2022-04-14 21:45:53'),
(275, 93, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:48:25', '2022-04-14 21:48:25'),
(276, 91, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:48:55', '2022-04-14 21:48:55'),
(277, 90, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:49:37', '2022-04-14 21:49:37'),
(278, 89, 'Kindly make Investment Deposit from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-14 21:50:06', '2022-04-14 21:50:06'),
(279, 24, 'We trade Cryptocurrencies only. \r\n\r\nPlans listed below:\r\n\r\nBasic Plan($100 to $1,000 maximum investment deposit)\r\n\r\nStandard Plan($200 to $4,000 maximum investment deposit)\r\n\r\nDeluxe Plan($500 to $10,000 maximum Investment deposit)\r\n\r\nPremium Plan($1,000 to $100,000 maximum investment deposit)\r\n\r\n\r\nEach Plan varies due to daily interest earned such as:\r\n\r\n•Basic Plan = 30% ROI (Returns on Investment)Monthly\r\n•Standard Plan = 40% ROI Monthly\r\n•Deluxe Plan = 45% ROI Monthly\r\n•Premium Plan = 69% ROI Weekly\r\n\r\nNote: Bank Deposits (as an option) are only accepted for Investment Deposits of $10,000 and above.', '2022-04-16 04:45:47', '2022-04-16 04:45:47'),
(280, 103, 'We trade Cryptocurrencies only. \r\n\r\nPlans listed below:\r\n\r\nBasic Plan($100 to $1,000 maximum investment deposit)\r\n\r\nStandard Plan($200 to $4,000 maximum investment deposit)\r\n\r\nDeluxe Plan($500 to $10,000 maximum Investment deposit)\r\n\r\nPremium Plan($1,000 to $100,000 maximum investment deposit)\r\n\r\n\r\nEach Plan varies due to daily interest earned such as:\r\n\r\n•Basic Plan = 30% ROI (Returns on Investment)Monthly\r\n•Standard Plan = 40% ROI Monthly\r\n•Deluxe Plan = 45% ROI Monthly\r\n•Premium Plan = 69% ROI Weekly\r\n\r\nNote: Bank Deposits (as an option) are only accepted for Investment Deposits of $10,000 and above.', '2022-04-16 04:48:43', '2022-04-16 04:48:43'),
(281, 106, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have previously done so already then do make Transfers from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-16 04:51:27', '2022-04-16 04:51:27'),
(282, 108, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have previously done so already then do make Transfers from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-18 00:45:11', '2022-04-18 00:45:11'),
(283, 107, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. If you have previously done so already then do make Transfers from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-18 00:45:41', '2022-04-18 00:45:41'),
(284, 109, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. \r\n\r\nIf you have previously done so already then do make Transfers from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-20 16:16:46', '2022-04-20 16:16:46'),
(285, 110, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. \r\n\r\nIf you have previously done so already then do make Transfers from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-22 14:10:14', '2022-04-22 14:10:14'),
(286, 111, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. \r\n\r\nIf you have previously done so already then do make Transfers from your External Wallet (such as Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-23 03:10:15', '2022-04-23 03:10:15'),
(287, 113, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. \r\n\r\nIf you have previously done so already then do make Transfers from your External Wallet (such as Guarda, Coinbase, Binance or Crypto.com) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-24 17:52:39', '2022-04-24 17:52:39'),
(288, 112, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. \r\n\r\nIf you have previously done so already then do make Transfers from your External Wallet (such as Guarda, Coinbase, Binance or Crypto.com) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-24 17:53:13', '2022-04-24 17:53:13'),
(289, 114, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. \r\n\r\nIf you have previously done so already then do make Transfers from your External Wallet (such as Guarda, Coinbase, Binance or Crypto.com) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-26 12:54:44', '2022-04-26 12:54:44'),
(290, 115, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet. Kindly click on the verification email sent to your inbox to validate Profile. \r\n\r\nIf you have previously done so already then do make Transfers from your External Wallet (such as Guarda, Coinbase, Binance or Crypto.com) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-04-29 12:43:21', '2022-04-29 12:43:21'),
(291, 116, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-03 09:55:04', '2022-05-03 09:55:04'),
(292, 117, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-03 09:55:54', '2022-05-03 09:55:54'),
(293, 118, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-03 23:00:58', '2022-05-03 23:00:58'),
(294, 119, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-05 00:33:21', '2022-05-05 00:33:21'),
(295, 120, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-05 00:34:17', '2022-05-05 00:34:17'),
(296, 121, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-06 10:49:44', '2022-05-06 10:49:44'),
(297, 25, 'Payment Deposit of $22,579 has been successfully returned to your Crypto-Investing Wallet from Citi Private Trust Bank with code number 02543 on request.\r\n\r\nKindly make instant withdrawals from your Crypto-Investing Wallet into your Local Bank or your Bitcoin Wallet on approval from support@crypto-investing.org\r\n\r\nWe sincerely apologize for the inconveniences experienced.\r\n\r\nThanks.', '2022-05-06 13:32:54', '2022-05-06 13:32:54'),
(298, 122, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-08 23:01:01', '2022-05-08 23:01:01'),
(299, 123, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com and so on) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-12 22:20:10', '2022-05-12 22:20:10'),
(300, 124, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-16 12:01:11', '2022-05-16 12:01:11'),
(301, 125, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-18 13:22:45', '2022-05-18 13:22:45'),
(302, 25, 'Kindly make deposit of $1,000 in your Crypto-Investing Wallet as charges for the removal of the \"Post No Debit\" tag and the finalizing of withdrawals or contact support@crypto-investing.org for withdrawals.\r\n\r\nThanks.', '2022-05-18 20:22:18', '2022-05-18 20:22:18'),
(303, 127, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\n\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:15:44', '2022-05-21 14:15:44'),
(304, 46, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:19:17', '2022-05-21 14:19:17'),
(305, 41, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:20:08', '2022-05-21 14:20:08'),
(306, 42, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:20:48', '2022-05-21 14:20:48'),
(307, 43, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:21:29', '2022-05-21 14:21:29'),
(308, 48, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:22:14', '2022-05-21 14:22:14'),
(309, 49, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:22:58', '2022-05-21 14:22:58'),
(310, 50, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:23:26', '2022-05-21 14:23:26'),
(311, 53, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:23:54', '2022-05-21 14:23:54'),
(312, 58, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:24:36', '2022-05-21 14:24:36'),
(313, 59, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:25:10', '2022-05-21 14:25:10'),
(314, 60, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:25:54', '2022-05-21 14:25:54'),
(315, 61, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:26:30', '2022-05-21 14:26:30'),
(316, 63, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:27:09', '2022-05-21 14:27:09'),
(317, 64, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:27:54', '2022-05-21 14:27:54'),
(318, 66, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:28:33', '2022-05-21 14:28:33'),
(319, 67, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:29:02', '2022-05-21 14:29:02'),
(320, 68, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:29:33', '2022-05-21 14:29:33'),
(321, 69, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:30:10', '2022-05-21 14:30:10'),
(322, 70, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:30:41', '2022-05-21 14:30:41'),
(323, 71, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:31:06', '2022-05-21 14:31:06'),
(324, 72, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:31:43', '2022-05-21 14:31:43'),
(325, 73, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:32:17', '2022-05-21 14:32:17'),
(326, 74, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:32:54', '2022-05-21 14:32:54'),
(327, 76, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:33:29', '2022-05-21 14:33:29'),
(328, 78, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:34:18', '2022-05-21 14:34:18'),
(329, 79, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:34:55', '2022-05-21 14:34:55'),
(330, 80, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:35:25', '2022-05-21 14:35:25'),
(331, 81, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:36:04', '2022-05-21 14:36:04'),
(332, 82, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:36:41', '2022-05-21 14:36:41'),
(333, 83, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:37:16', '2022-05-21 14:37:16'),
(334, 84, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:38:01', '2022-05-21 14:38:01'),
(335, 85, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:38:36', '2022-05-21 14:38:36'),
(336, 87, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:39:51', '2022-05-21 14:39:51'),
(337, 88, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:40:51', '2022-05-21 14:40:51'),
(338, 89, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:41:22', '2022-05-21 14:41:22'),
(339, 90, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:41:50', '2022-05-21 14:41:50'),
(340, 91, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:42:28', '2022-05-21 14:42:28'),
(341, 92, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:43:01', '2022-05-21 14:43:01'),
(342, 94, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:43:35', '2022-05-21 14:43:35'),
(343, 95, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:44:15', '2022-05-21 14:44:15'),
(344, 96, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:44:41', '2022-05-21 14:44:41'),
(345, 105, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:45:23', '2022-05-21 14:45:23'),
(346, 106, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:45:55', '2022-05-21 14:45:55'),
(347, 98, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:46:22', '2022-05-21 14:46:22'),
(348, 99, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:46:53', '2022-05-21 14:46:53'),
(349, 100, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:47:55', '2022-05-21 14:47:55'),
(350, 101, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:48:56', '2022-05-21 14:48:56'),
(351, 102, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:49:54', '2022-05-21 14:49:54'),
(352, 103, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:50:30', '2022-05-21 14:50:30'),
(353, 107, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:51:09', '2022-05-21 14:51:09'),
(354, 110, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:52:07', '2022-05-21 14:52:07'),
(355, 111, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:52:40', '2022-05-21 14:52:40'),
(356, 112, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:53:17', '2022-05-21 14:53:17'),
(357, 113, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:53:54', '2022-05-21 14:53:54'),
(358, 114, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:54:23', '2022-05-21 14:54:23'),
(359, 115, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:55:02', '2022-05-21 14:55:02'),
(360, 116, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:55:36', '2022-05-21 14:55:36'),
(361, 117, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:56:13', '2022-05-21 14:56:13'),
(362, 118, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:56:50', '2022-05-21 14:56:50'),
(363, 119, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:57:26', '2022-05-21 14:57:26'),
(364, 120, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:57:54', '2022-05-21 14:57:54'),
(365, 121, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:58:23', '2022-05-21 14:58:23'),
(366, 123, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 14:59:15', '2022-05-21 14:59:15'),
(367, 24, 'Kindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-21 15:01:36', '2022-05-21 15:01:36'),
(368, 128, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\n\r\nKindly make Investment Deposit from your External Wallet (such as Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-27 13:21:22', '2022-05-27 13:21:22'),
(369, 129, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\n\r\nKindly make Investment Deposit from your External Wallet (such as Coinmama, Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-05-29 01:09:49', '2022-05-29 01:09:49'),
(370, 131, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\n\r\nKindly make Investment Deposit from your External Wallet (such as Coinmama, Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-06-01 10:59:39', '2022-06-01 10:59:39'),
(371, 130, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\n\r\nKindly make Investment Deposit from your External Wallet (such as Coinmama, Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-06-01 11:00:05', '2022-06-01 11:00:05'),
(372, 132, 'Congratulations on successfully registering your Profile. A registration bonus of $10 has been added to your Crypto-Investing Wallet.\r\n\r\nKindly make an Investment Deposit from your External Wallet (such as Coinmama, Luno, Coinbase, Binance, Crypto.com, Paxful and more) to your Crypto-Investing Wallet to activate your daily earnings.', '2022-06-02 00:40:13', '2022-06-02 00:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `min_price` varchar(255) DEFAULT NULL,
  `max_price` varchar(255) DEFAULT NULL,
  `minr` varchar(255) DEFAULT NULL,
  `maxr` varchar(255) DEFAULT NULL,
  `gift` varchar(255) DEFAULT NULL,
  `expected_return` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `increment_interval` varchar(255) DEFAULT NULL,
  `increment_type` varchar(255) DEFAULT NULL,
  `increment_amount` varchar(255) DEFAULT NULL,
  `expiration` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `min_price`, `max_price`, `minr`, `maxr`, `gift`, `expected_return`, `type`, `increment_interval`, `increment_type`, `increment_amount`, `expiration`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '2000', '2000', '5000', '6600', '21500', '0', NULL, 'Main', 'Daily', 'Percentage', '55', 'Six Days', '2021-03-11 11:10:23', '2023-07-16 16:16:30'),
(2, 'Standard', '10000', '10000', '15000', '91000', '151500', '0', NULL, 'Main', 'Daily', 'Percentage', '65', 'Two weeks', '2021-11-26 12:49:36', '2023-07-16 16:16:51'),
(3, 'Deluxe', '20000', '20000', '40000', '510000', '1060000', '0', NULL, 'Main', 'Daily', 'Percentage', '85', 'One month', '2021-11-26 12:51:56', '2023-07-16 16:11:10'),
(4, 'Premium', '50000', '50000', '1500000', '975000', '1450000', '0', NULL, 'Main', 'Daily', 'Percentage', '95', 'Six months', '2021-11-26 12:53:51', '2023-07-16 16:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0j1dGh7qKwoM96HemugA9afoBbdFnnZTwN3ARWd8', NULL, '85.18.30.9', 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A715F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/21.0 Chrome/110.0.5481.154 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTJaVDN4cWVOMm9oYTNIVEJibXcwdnoxTHh2TlNpYzhwd0Q0MHU5dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690199432),
('14tbRNgunhzsGKJCzyGYfIDe19A0vwU2EC7p7DNI', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTlrMnp5VktBV2M0bE56MXkxOFZDNGFUUU9tMmRmQlpabnVtVnAyZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690457564),
('2UH38qmjhOecyKXVZABuEdz3ztydy9Z3jJNfa5Y8', NULL, '35.89.65.88', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFNNZmpFY2phcU80U2FoeTNRcW9VVzI1MXVucjgxMndOSTdTTnJYRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690315720),
('3bJMOumfrQbVKSV8g2tqfBMEt3Zbomc6YMNAWL6z', NULL, '52.40.26.73', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzlxQWYyalVwSU5NcXFCWXJNOXk1ZjlpYVBZRzFrSEltWFUwRDF6WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690666949),
('3gcSmkrpQC5HCAcfWGf4vxBkiPoFBAhijh9pP3m8', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlRrT2RYOGVDQkZJVWRHV21zTDlnbXRtZTBZWEphQnJpZDc5VVFKeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690457564),
('419mfvbMJTHhXiP4HZzMKBGfgOD1wWk2mCmpIPED', NULL, '51.77.118.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1hibENDRGZIVGg3czNCck0zY0QzdVQxNjJuOU1yNXlyUXE2dlM4aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690248688),
('4Hg8RRGI5Fg8ZYBmiBoh35IOX2BeMY4Jwq5AoOrY', NULL, '167.94.146.53', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGE2ZUNFMU5QUlN6b0pDa1g0VXdLUzNIMGcxNmlmMW5oRUpVUzViRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690676735),
('4xgPOHzGg0qqH1ZmOZFV2TNKtTEvbbCTSpXe8byb', NULL, '35.89.110.201', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczV2eWlzaUkyb3pteEZocmlZZHBGZms1bWtaT2pUMzlrbGZvT21JbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690573764),
('586mGJEPVSZsfcm0RPyJMy1lDAyrCMVuHX1qrcfZ', NULL, '50.18.139.154', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHl4TlZWallUR05vZDlSZlVNNWp3ZEhNVjdmd2lMRkxhZUU1c01XWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690598503),
('69THdqKw3hEKvJYI83KVBJFoltUYDh2kaBmwydyO', NULL, '69.160.160.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGs2d3NpRWFYSWo0YW5pb3I3cTZjUVVTY0pDbDlFNjVvYXNuY0NyRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690389550),
('7kIL7yt8AMVSCVwWXOy0mri4FR3c0NyPA6owNeLO', NULL, '79.45.179.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnBwUXkzYzNxRUUzSGw2ZlpRckpSSldHbXRmVDEyZTF2QmNqaUxPeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690318557),
('88tLQHkA3yJBMTCQBGMj0Gn9dxrMfGrjYm5YJiqO', NULL, '51.89.211.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnI5dGprUFFoclVPM3ZtdjB3RExxaFM0cWRZS2R5ZVhtY1hpS2VOeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690533645),
('8NJL0SNLsSXh9qQTGHrFJUtOtk2KujgAVPrvl0KV', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEQzbTlvd3NtQnA0MmU0RXgyNGY1dlNCQnFROGFWbHdUa0RYR0dONSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690457563),
('8VHidQxkeM9aZmgm1cvpenLQ5U0tCNya5kHmUFYB', NULL, '54.38.211.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclIwblZDNENIczYxMTdoTUNRUGNuaFJXQlFQcUdDMFNnQnVwaXpNciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690602544),
('A76Ck5ou8ImezGrxso958XfGrq0jhmu3nkz62OgB', NULL, '172.241.26.84', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlpkREpXdHJTd3JVS2dYdXdWODhueG1VQmxqNGtoTUYxU3NSSFAxaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690683833),
('al4EjuYtcsBTgGsJvRp7ROPeDPorVLCkR5fSPHr4', NULL, '205.210.31.133', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGZBNFRpUUtad0lWTmI1UWRHeGxPcDdnQ3NkNG1HVUR3d1A3SXM1SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690667458),
('AqjVxR9xsTHf6dJTWK0qaxgFFITjv2E3jURDcoQH', NULL, '54.187.25.186', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3dGalo0bFc1UVp0cG1yVEJpU0VtaVZsOHAwWml2cGhiSUlUSlRkNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690666902),
('bcGsddBsFgZ1KSYJWrqvuHYghymKXqm9a6qvsvNk', NULL, '170.247.221.168', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3BadkQ5UTVZVlBuOVNHSU5HYUhJanRha29oZXBtYXhMMnBpc2NBaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690661833),
('BkUhZ0t9xR2GHhmRY3l06dhV78ChwKle84Zxzclu', NULL, '130.255.166.80', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiak9GMGV1VHVaVFZISXpXb1NmUWFnVjluY1ZxTUhReWRqWEc3a2hqeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690341650),
('bVV0IVrUmsnxTMSD22yh76r7XpzwnuwBtXqEFa3l', NULL, '198.235.24.33', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3ZPcmhCdzg3akNPZVd2cFNUSVRXUkszR0hHWWZYMlR2UkZmRmtIYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690553419),
('bXgbWbvz8f6VxKsLLOU9f1N1cwGiewm7JzD9bOVX', NULL, '102.165.237.66', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDV1ZGdDNzR6OU44Qjg5V2ZqQ210VFRYd1hRemxZa3F1bmNkZkNZYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690386450),
('cGDujWe9KnPosr0t8jIYaB6PTwKiMh0OOAOC4oI9', NULL, '54.38.211.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWZMdU03NU1HWHNxRXRWVkJWMkVVbFRpTjJTd2pzM1lGbWtDa08wZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690403787),
('cKR8BAoW0KstP2oWbibMdNRwa7mbxV01xkQruEKr', NULL, '137.184.69.13', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmVCY2NMN3poOE1xbm5Kck9sbUZiVlk3TXNCOHpOMlYycFE4WTJXciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690195740),
('CQv9CghR6UjfRzF8Y97MSbbxuFyJjA3TegoJLhta', NULL, '159.65.157.131', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkwwNHFHRmJycGxBRTJiSUVZWG8xVFlyNDNwRFg5VUhZeGhJNEVCUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690439824),
('CyqLZeu7bUpbDCoMfQQ1HrpBLCDnz827MKWOp8iw', NULL, '51.89.211.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTlvaWdKQ1NaU2RFejRPSkpQV3ZZWVk4bGxINjZQOGpaMFFGUG4yYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690836470),
('DgAsf4cm3LU7ieiaPzbjvssKju60sRcdyujYLhKH', NULL, '162.142.125.214', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTQ3VXNEd0luOG5yc1ZLaXM3ZHRxWjBjRlFldHdsRWlPV3ZZbTQ2MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690699952),
('DLBZBw3oqX9x2VlB0HCGqYLd5DDAk1t61M0e7DHU', NULL, '35.171.144.152', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXN6dFFOVlRVNWpYSndmaDRiQUtmRHhBWFYxQzg0QXpkYndHb3pFWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690578193),
('DwYLRUhfnf8RCVIat9H7ofZ5W7bL48ysX0aHMccS', NULL, '51.89.211.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmJRVnFycUVDckp6WFNtbXdHRXBsZFVPem1MMU9PRmNTU3U5RGNkYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690248688),
('eu8FUZJOF5MhfoqaeVokF7ysx6u5janaok3IR0qY', NULL, '134.209.157.85', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXJWSFAxaWs1V1E5SXhIbFN2UmlDVHZwUUszeUU3VEx3aktGWElXRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690271770),
('F29pYr7IrXDeT9YXiARfrfiutcfsHUhAJBy56Dkn', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWVmSWVqTHlOdjF2N2FKRVdPUzNGOVNsSW14UGdaQjVLa3FXVnFkbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690578192),
('FfMOtumsevz6tddfHdMvZTCfI3s3w7ck099vMslT', NULL, '44.204.115.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmZOYm9pT0J3VWNzRlZFVTlUMmN3dXp6cmxkRUY5ZUJBd3kyVFJmcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690273655),
('fZpUpGVkM8hPF4g1rvsh80eOIwTpaImTeIze7jHi', NULL, '51.89.211.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3lSbFRzYmU0QVltM1c3NkRiR3lhdFREcmRZZ2k1bW16ZE1wbVRqViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690299657),
('Gn3uRzUIq3g4UjhSSxtQSesAHMc8I7H161Di8Stk', NULL, '54.244.180.139', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTNuOGVQZEVCTHF4ZDV0NDVlMjFwaU43QWRvYTR3amRzQjZxejNhWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690832925),
('GQmoPmJPDPealZM8eQ5oeqDiEycoTvbve57zzrXT', NULL, '54.38.211.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXg3WUlEYjhMUlI2S3o1ZFdCa3VsRGdJMDFvVVZTQVZ0aGJqUHZKaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690467588),
('Hdoc7YsOUr9Su9EIzvuOv6554lRnNeaZV07ClC3l', NULL, '172.241.26.84', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0Fubkt6eUlveVU0OEs5dVJCZmcwazZBNHM3akJLQlI5aHlNRkxSRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690685060),
('HEO2KSoTXGyu7IVprDcEZT65PTyTMnW3GBuYItFk', NULL, '84.39.224.55', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDdTY0xQMG1vRFZWYzJvNEZLMlZkckJqTVRSNjBlTGZBN3paN0ZJSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690621385),
('HGu813sSGaQI3NtSGTpU0KCnljra2c9xMpYOAh4E', NULL, '146.190.250.97', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0RKRHUwaHU3QnV3ZUdJdUVhTGFnRWpCUjdKbDAyR1RXb1VremlLQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690793555),
('HvApDJUMUk2D6DX0WZqpaUyyIhyqC9M6ReIThOXr', NULL, '69.160.160.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibE9UWVVNeDQ5Q1lTWlE0QjFzeFdHRUhYbEJlR0duT0hvQzR2OTlPOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMvcmVnaXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690389550),
('IbLbwalz09KmnwGCvCq7TDiMcQcferjDGKdU32DA', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlc1RHFJcnc4cmttcjg4emt5ZUh3OGh4a0JORGd2eXk2TUJ3RHRmSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690609716),
('IJFov8jEHt8OCrvFZffMqca2YcaPKDyIJPvT5twu', NULL, '170.247.220.244', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN21RQkFkYUdTZnZiUnV6WXN2WUlHYVZoZVUxNTM1VXdPekwwSU9rUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690486686),
('iTRkjmCLuer8tPDRdnD4y6bo7TWyuE2J3xV0AXiK', NULL, '209.127.110.130', 'Apache-HttpClient/5.1.4 (Java/11.0.18)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTlqODZxSGF3NVB1Qk9aYkFDd3B4cURvY3ZFZWl4eFJpVUhHT1lJRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690777706),
('JZtxc1gSuhyaQG733dwUzM8Z4wy7ykBZjoq13wVu', NULL, '217.174.240.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDB1VVFtTlJqUUNNY2ZUeXlQcENkeVhaa0VIdTdPSWdGN2IyeEJEVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690348593),
('kBMm2Uwx5eBDxKB7jZ6QJDXRpbrycnTrdHTgpUyT', NULL, '45.139.36.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVpvZXNuVVdnbnpHd0FNU3QySk5vYzJkOEZyeXdNejY1ZDgzZ1hsSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690434223),
('KE7Un8DvazstswYO16TEsv0P1FUIx79kr9SLwpwc', NULL, '99.224.2.156', 'WhatsApp/2.23.14.74 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkl3dUwyOTRDNVYycVBWOGJhQnIwc3AwMjlpNTNuSTJTNFZhdDY4RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690195741),
('KY3zKgbrb4uK5c5twBikqJX2pV7ic9lvJCoIIllZ', NULL, '79.42.52.98', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialhLbGJoMVNFYTZTVHIwQjFGVzZYb25Qb2VrODBub25KQ0t4RjlpQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690227893),
('L2bM1oU8jZuc2XgUJDjwhiWyBLQOvYqL7mf5jhEb', NULL, '51.77.118.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFBEcnVmTnNkVVZVc0NDYzJCcWVmZjlzN0ZEaDVoWFZjM3F0ZnhpNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690792375),
('l7VaMmz1gKKdmRrqNqFZWuaOolC2fpbKQhQx6sMK', NULL, '54.38.211.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkUxeTVkWFRZQ0pzNkE1TjlpR1RCUnExTTVvV3g2YnlGb3BnZ2Z2aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690671453),
('lAdabDfsz0KLC8g3iEvz1sMB23HZjlY1XrQyDIE2', NULL, '35.90.55.144', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ04yR3g1MVhwZHZRZUROZHdBNEtyc01FTUEyT0YySnpJZ3p0cERENSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690743414),
('lLetHGQXmLxjkLcgUv4t2RrzvqDv4mokgRzOdhZk', NULL, '35.194.57.250', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2049.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWJ1U2Jyc0ZhVzRmYVNoUU5FMDhIQ1Y1T0Mzbmp5ZFVhWnNxNXFTTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9tYWlsLmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690204336),
('lrJ255W1asike1V4TvKVtZAEd7CsQNeoXzgLxiRT', NULL, '69.160.160.59', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Nicecrawler/1.1; +http://www.nicecrawler.com/) Chrome/90.0.4430.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2haWnZqb1Izb1B6MG1mMmZaVkFVVm5xYjRxMHcyU3F6M2dLZk9ZcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690389545),
('LsE4ABmfrtrIfmjJT1T4ddxoJdn2wlHbBZFDFBrO', NULL, '209.171.88.146', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.2 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUm9qaW9rbHI5UU8zUnFIczdJMnIwZmRqUk5ldkVHN2ZNaFBvTkt1OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690199746),
('lUSduKHMrRlkwybDKuNIZKf6HiYpgyVxsofv8GC3', NULL, '35.171.144.152', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3RyZkZwV2t6czlxSjdVTEFkVk1zd2dFemQzOTQ3RlIwMkozYTIxTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690578192),
('Lzydlnph1pbRMT9yNtZbEKP5XGq9agaVfl5E8mIX', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid21ZSkRLWGdCc1N5ektMdmNrODBFQ1pPSnk1VDRhVHByVG13d0NlNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690457564),
('M2Cj3LhM9lRPofZKVXQfukKb7Jn0c0YtfJfDhfd7', NULL, '35.90.174.33', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGl4WEtwT0pNNTB0V1pScHZ5U3ZsdVlEOHhOZ0ZqTGNDOWdnVU5DQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690666749),
('mPZ94g0VSAkZ8J4rNjOljESRkQT7vaJejRxznYYu', NULL, '52.12.212.61', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVR0eTJOU2RBTWdVNTlES21La0c0MFJERUVNV2JUQmxuTDEySHEwbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690666825),
('mQkVr95sLeqbJ3Psd5JVntGR11uWVSJnPf0eyFDQ', NULL, '34.211.52.176', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEM5WXRQWjVCU015WDNMcW94QzdveEtYbHZKVVc0dUJXbHpxdTRZQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690315719),
('mTsjPY9oS4aft7Dy1i4oqNBpIk3ntRZRH5uwmofM', NULL, '89.34.79.88', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHhvUmxqalhhRVlKU0x2SklPOFVyUE1ESloxT3IwSTVaMjduUk9JeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690621626),
('n1OzlsAEJdHT9UaWIWzW2HSntnOHO8JxcGKJkJL3', NULL, '51.77.118.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVRIQ3ZQMWhGMmZZUVQ5VElVclRyb1gzaDA1NXBrSTRHQXdoZEE4aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690348677),
('nezESYDGTiUC1oGuNo4el86bEQshHX6PeVU5DIyi', NULL, '170.231.251.177', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0w1Rzd2czRCalFqQ1VXNFJJQlZpb0VqVXFHVEFTcU55NFRnRndhaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690777708),
('nJ7RvLednqkuyssVwN4Q7GhXIIL8Jc1bN03eCcSD', NULL, '209.171.88.146', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.2 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3ZCc040WlhyZVVCa0NRekVkSkU1RTBsNGFFZm1Dd2JhNmo3cDR2dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690199533),
('nWLWvUEacudU6jlKW2UO6myUnXlGvwPIZK9FCVQW', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0NKeXJ5YXphNDJqWktibE85eFpBUG52NVpkcW5Ec29UdGI4MmwybCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690609717),
('ogGyN8S5peDq8rJUgPbz7xfZ7guEEY1daUWwOL6I', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnpXZG1lTkY2aFZUVmNGbHlUWnJwa3RRQkVjeE9PSGtNM0dVN3NXMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690578193),
('omAcGK0GKaZ8RKn6mbyjIcmWfOgnNwggAPl7oKUB', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjV4bEpSMlQ5aTdRa1p3aWdxV0o2dHF6SkprVDFoYW95MXpnRUxMTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690609716),
('OQmZ1t4d2b465AQcBpZF5jZ3ZalxR4UV603ZiVlE', NULL, '35.90.205.174', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFNJRmFzZHU2QXZWazg3TXNjZ0V2UEU0dWlkZDRaaU5iR3QyclRrcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690224862),
('orEBCF3Q8HZKMmdBx71PneoT0w7scwak6uLN5MuB', NULL, '38.154.214.13', 'Apache-HttpClient/5.1.4 (Java/11.0.18)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjJSamFicFRKMVRSQ1dPaHVIbFRDaHphemV5UExUbDJDMUJmRDRieiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690691218),
('PGCkaYIzyDWax4CoFJcrSixaHn1lFAOdUFKDPA0D', NULL, '45.139.65.120', 'Apache-HttpClient/5.1.4 (Java/11.0.18)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTdqSEVuYUt5V3l3aGNtZkFZcU8wd3dndzFxSzdGQUdYVkpmRTVORCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690434221),
('PKkj1qjHfLyghODXhUTi9f2gjWaB0oBnyvrnPyZj', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnppU3M4eEVEdTRlWkRSclR2SnM2Tlp2RmlUVmJiTG1yMWtPMU9JNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690609715),
('PVxNT9SIu7DcMSIFsUfXOERL0RRqAeESG9z76JJ3', NULL, '52.12.46.159', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTW9sd0NZcmxSMXg4cTZpMU04d2llemR5bjU1ZHZCT0VHYUtERGhlSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690832921),
('qhN7yYrQBkSONrfl5GawOtjIgt3pYNBZeEJfb1jH', NULL, '69.160.160.59', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/92.0.4515.107 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSndLaGE4YXJBNmNzZXN3YlNyZnJsa1ZGaktaczlwdzZaM0xEWGF6MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690389545),
('qqSMZ76LRsJUY9pAG9tKiccAZMuNXzroK4YJaFel', NULL, '82.134.236.80', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1FqbVhycHQyd29WOVVYN3FERHoxZ3VweWFYeFdISUhSOTVPbTVhMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690205116),
('Sv5VzGqzmWU5je2lcBcGwEPnMP6nfhBw6g7qfRBz', NULL, '34.215.177.102', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXU1MmVpZnZuWGlLajJlUG9pOXkyT2xkeWNOSmpwNnlrejJvbEYwMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690224861),
('tfyRJsxhI36YORajuHIhGPWvwM9jQzlYPGZ7amap', NULL, '159.89.86.236', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1g3M1ZiSjlXQ2NuVnkxY2ZrcDI3RG9zVGx6dTdIU1Fld2d4bDh1dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690621472),
('tgzUxZBoI2uFmKGKx4YFQp52LC0EodYmaPFksQsa', NULL, '191.102.174.77', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1ZsU2tOc3oxeGtMRk5VQTB1RWZrNkhJN3k0VTVyU2lQV0Z0NTRiRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690606928),
('U0avjlonCPRJ2nTQ3JRFl9JRqMNTomgdfb9rOqMa', NULL, '198.235.24.237', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU21HT0lyZEZpNmJrMVIyd21lU1ZISTMxNzlnUXNRcGpoUFd1NFoxNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690543883),
('v6vpxbuJ6Q225oaY8k0qYbrMrinRuqZzDwFUOt3B', NULL, '51.89.211.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFlhc2ZBeW9XVUI3V01FR3NyUWRnYUVLa25sTkIyQm9xTEVDV0tOVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690836469),
('VNFAG78NWsq8ARDMINdg23lQsWGFEmTBFDg9tmja', NULL, '38.154.198.167', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUktDRVJ0dlFZNzAyWklvckVmU0xBb3gxNGlEMUpvU3huVDljVmFIQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690834232),
('VPywIWBGcBt5DvQNc88mEaDZSVWgbjR6cinIoBV4', NULL, '69.160.160.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1RBenhSTUdmZEFhbXNWanllVmxRYnFHMXZuM0ozajdENHI2SHB1byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690389550),
('vseP8rXBl72nt9S2eTiupm6oIXfAkCIpg4rzkfEt', NULL, '45.139.37.140', 'Apache-HttpClient/5.1.4 (Java/11.0.18)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVI3SmJDcFRSM09idzM0NEo5ZFVvTjVWTUFWNFRDWGdxTWJjQkdWdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690606925),
('W05l066Kxvv4bxNoaahQz4DPICOSM7OrPEK45uuk', NULL, '54.38.211.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWFHdFdZbzkwUEE2N1RYYVNKaWhSMEhRdFdjbDdycVQ3dnpiakVtdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690735209),
('wjWSGo4b9TO1EAQkpPvSvQfu27QFTK5e4PvDEppS', NULL, '51.77.118.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0lVQUhpWERBNkRpWGxPR09hdElubUxwbGdDVkhmZ3VSbU9tM21EcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690248688),
('xaf8CMdyQuQw5o0SdU7mcbYMtHMEaRyJMe8v8CbI', NULL, '170.247.222.4', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkxXWUpJZU5SZWNQTnBFWDJ4dk9KWm1YR3ZPMHJjcG9HM0d0SzcxdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690691219),
('xBhMB5MPYhN63KPi2v2q835oA6wWQM5WakJ0SYLA', NULL, '167.248.133.36', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWpXOVlGcmdqU0UyRU5IcThQUWczYkZ1OEpyOU5aU3dZbmo0Q1pBaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LmVjdXJyZW5jeXRyYWRlLnVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690760518),
('XP1dia08zKRws1KGawu4pSNHGSwlFVAFwO5ZAs9Q', NULL, '69.160.160.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieFBnbnNReURtbk5GMms0VkpUNG5JVnpaRWI5RnZ1djUyaE9VdmtqVCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cHM6Ly9lY3VycmVuY3l0cmFkZS51cy9mb3Jnb3QtcGFzc3dvcmQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMToiaHR0cHM6Ly9lY3VycmVuY3l0cmFkZS51cy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690389550),
('XzDfOycAudHCwBPyCqeMF5AUGoezSQX7ZUPWM058', NULL, '191.102.157.84', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVhidXU1ZzBNamVrWGpNcldINlBoTEFCTXFzU1dKYUNUU0txdFNYMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690743544),
('ZhI7tsUuP4t7c2b8kBzlAytFA8WA98vpUJ6A5NsF', NULL, '134.122.4.216', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1RkbW02NUVVS0NYRUxHZlVHa0ZrUXE4ZVpleHNzNFp6ZzFTSnJJTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690471020),
('zS9P0B1IwoKHgAd3NiQClwL84Yu8AfepHuvZWMvO', NULL, '51.89.211.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3JDUnNLOEpnMkpvODk4U2lldGIzaTBEcmpqVFhQMFpUMVRvTnVkNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vZWN1cnJlbmN5dHJhZGUudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690299657);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `s_currency` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `eth_address` varchar(255) DEFAULT NULL,
  `btc_address` varchar(255) DEFAULT NULL,
  `ltc_address` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `s_s_k` varchar(255) DEFAULT NULL,
  `s_p_k` varchar(255) DEFAULT NULL,
  `pp_cs` varchar(255) DEFAULT NULL,
  `pp_ci` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `site_address` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `qrcode` varchar(255) DEFAULT NULL,
  `trade_mode` varchar(255) DEFAULT NULL,
  `google_translate` varchar(255) DEFAULT NULL,
  `weekend_trade` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `referral_commission` varchar(255) DEFAULT NULL,
  `referral_commission1` varchar(255) DEFAULT NULL,
  `referral_commission2` varchar(255) DEFAULT NULL,
  `referral_commission3` varchar(255) DEFAULT NULL,
  `referral_commission4` varchar(255) DEFAULT NULL,
  `referral_commission5` varchar(255) DEFAULT NULL,
  `signup_bonus` varchar(255) DEFAULT NULL,
  `files_key` varchar(255) DEFAULT NULL,
  `tawk_to` varchar(255) DEFAULT NULL,
  `enable_2fa` varchar(255) NOT NULL DEFAULT 'no',
  `enable_kyc` varchar(255) NOT NULL DEFAULT 'no',
  `enable_with` varchar(255) DEFAULT NULL,
  `enable_verification` varchar(255) NOT NULL DEFAULT 'true',
  `withdrawal_option` varchar(255) NOT NULL DEFAULT 'auto',
  `dashboard_option` varchar(255) DEFAULT NULL,
  `site_preference` varchar(255) DEFAULT NULL,
  `enable_annoc` varchar(255) DEFAULT NULL,
  `commission_type` varchar(255) DEFAULT NULL,
  `commission_fee` varchar(255) DEFAULT NULL,
  `monthlyfee` varchar(255) DEFAULT NULL,
  `quarterlyfee` varchar(255) DEFAULT NULL,
  `yearlyfee` varchar(255) DEFAULT NULL,
  `newupdate` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `description`, `currency`, `s_currency`, `bank_name`, `account_name`, `account_number`, `eth_address`, `btc_address`, `ltc_address`, `payment_mode`, `location`, `s_s_k`, `s_p_k`, `pp_cs`, `pp_ci`, `keywords`, `site_title`, `site_address`, `logo`, `favicon`, `qrcode`, `trade_mode`, `google_translate`, `weekend_trade`, `contact_email`, `referral_commission`, `referral_commission1`, `referral_commission2`, `referral_commission3`, `referral_commission4`, `referral_commission5`, `signup_bonus`, `files_key`, `tawk_to`, `enable_2fa`, `enable_kyc`, `enable_with`, `enable_verification`, `withdrawal_option`, `dashboard_option`, `site_preference`, `enable_annoc`, `commission_type`, `commission_fee`, `monthlyfee`, `quarterlyfee`, `yearlyfee`, `newupdate`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'E-Currency Trade®', 'We are a leading Cryptocurrency trading Group that utilizes innovative proprietary technologies to provide managed crypto currency trading services to yield higher profits.', '$', 'USD', 'Bank of America', 'Brightokenterprises', '223028245527  (NOTE: For Deposits Above $100,000 USD only. Deposits below $100,000 USD will be lost and is non-refundable)', '0xaee30999d9672200ae8a6bdd923448c5346640e9', '1KLuknmqLrjYh7UPSXPumN9eNj49KHPE4', '20252525jkhjjhjhj', '124', 'Email', 'sk_test_4eC39HqLyjWDarjtT1zdp7dc', 'pk_test_TYooMQauvdEDq54NiTphI7jx', 'jijdjkdkdk', 'iidjdjdj', 'Online Trade, Forex, Coin Investing, BTC, Crypto Investing, E-Currency Trade', 'Welcome to E-Currency Trade®', 'ecurrencytrade.us', 'z2gONalogo.png1689508305', 'ghO7Ynfavicon.png1637871198', 'H3cpekshare_2022-01-22_20_06_25_673.jpeg_2022-01-22_20_06_25~2.jpg1646161544', 'on', 'on', 'true', 'info@ecurrencytrade.us', '40', '30', '20', '10', '5', '1', '0', 'OT_viXHf', '', 'no', 'yes', 'false', 'false', 'manual', 'dark', 'Web dashboard only', 'on', NULL, NULL, '30', '40', '80', 'Welcome to E-Currency Trade® with a lot of Security Features', NULL, NULL, '2023-07-16 15:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `testimonies`
--

CREATE TABLE `testimonies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_key` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `what_is_said` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonies`
--

INSERT INTO `testimonies` (`id`, `ref_key`, `position`, `name`, `what_is_said`, `picture`, `created_at`, `updated_at`) VALUES
(2, 'mZVhqO', 'Principal', 'Sarah Ona', 'I love this platform', 'upload-testimonial-1.jpg1617292794', '2021-04-01 15:00:56', '2021-04-01 15:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `tp__transactions`
--

CREATE TABLE `tp__transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan` varchar(250) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp__transactions`
--

INSERT INTO `tp__transactions` (`id`, `plan`, `user`, `amount`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Starter', 9, '50', 'Plan purchase', '2021-03-11 11:29:46', '2021-03-11 11:29:46'),
(2, 'Credit', 13, '100', 'Deposit', '2021-03-11 13:53:32', '2021-03-11 13:53:32'),
(3, 'Credit', 9, '10', 'Deposit', '2021-03-11 13:53:57', '2021-03-11 13:53:57'),
(4, 'Credit', 9, '10', 'Ref_Bonus', '2021-03-11 13:55:43', '2021-03-11 13:55:43'),
(5, 'Starter', 9, '20', 'ROI', '2021-03-11 14:03:06', '2021-03-11 14:03:06'),
(6, 'Credit', 9, '50', 'Deposit', '2021-03-12 13:34:08', '2021-03-12 13:34:08'),
(7, 'Credit', 18, '100', 'Deposit', '2021-03-19 12:58:10', '2021-03-19 12:58:10'),
(8, 'Credit', 19, '100', 'Deposit', '2021-03-22 09:33:39', '2021-03-22 09:33:39'),
(9, 'Starter', 19, '50', 'Plan purchase', '2021-03-22 09:34:27', '2021-03-22 09:34:27'),
(10, 'Credit', 19, '1000', 'Profit', '2021-11-26 12:19:13', '2021-11-26 12:19:13'),
(11, 'Basic', 25, '100', 'Plan purchase', '2021-12-09 01:46:11', '2021-12-09 01:46:11'),
(12, 'Basic', 25, '360', 'ROI', '2021-12-12 23:35:57', '2021-12-12 23:35:57'),
(13, 'Basic', 29, '26', 'Bonus', '2021-12-12 23:37:39', '2021-12-12 23:37:39'),
(14, 'Basic', 28, '35', 'Bonus', '2021-12-12 23:38:40', '2021-12-12 23:38:40'),
(15, 'Basic', 27, '34', 'Bonus', '2021-12-12 23:39:28', '2021-12-12 23:39:28'),
(16, 'Basic', 24, '12', 'Bonus', '2021-12-12 23:40:18', '2021-12-12 23:40:18'),
(17, 'Basic', 26, '27', 'Bonus', '2021-12-12 23:41:37', '2021-12-12 23:41:37'),
(18, 'Basic', 25, '52', 'Bonus', '2021-12-12 23:42:53', '2021-12-12 23:42:53'),
(19, 'Basic', 25, '764', 'Bonus', '2021-12-14 00:30:51', '2021-12-14 00:30:51'),
(20, 'Basic', 25, '30', 'ROI', '2021-12-14 00:41:24', '2021-12-14 00:41:24'),
(21, 'Premium', 25, '1100', 'Plan purchase', '2021-12-14 00:48:00', '2021-12-14 00:48:00'),
(22, 'Basic', 25, '259', 'ROI', '2021-12-14 21:09:16', '2021-12-14 21:09:16'),
(23, 'Basic', 25, '30', 'ROI', '2021-12-15 10:00:37', '2021-12-15 10:00:37'),
(24, 'Premium', 25, '759', 'ROI', '2021-12-15 10:00:41', '2021-12-15 10:00:41'),
(25, 'Basic', 25, '30', 'ROI', '2021-12-17 10:00:31', '2021-12-17 10:00:31'),
(26, 'Premium', 25, '759', 'ROI', '2021-12-17 10:00:36', '2021-12-17 10:00:36'),
(27, 'Basic', 25, '30', 'ROI', '2021-12-19 10:00:32', '2021-12-19 10:00:32'),
(28, 'Premium', 25, '759', 'ROI', '2021-12-19 10:00:36', '2021-12-19 10:00:36'),
(29, 'Basic', 25, '30', 'ROI', '2021-12-20 10:00:32', '2021-12-20 10:00:32'),
(30, 'Premium', 25, '759', 'ROI', '2021-12-20 10:00:37', '2021-12-20 10:00:37'),
(31, 'Premium', 30, '69', 'Bonus', '2021-12-20 23:51:49', '2021-12-20 23:51:49'),
(32, 'Premium', 25, '1100', 'Investment capital', '2021-12-21 10:00:28', '2021-12-21 10:00:28'),
(33, 'Premium', 25, '1000', 'Plan purchase', '2021-12-21 18:42:48', '2021-12-21 18:42:48'),
(34, 'XXX', 25, '0', 'ROI', '2021-12-22 10:00:32', '2021-12-22 10:00:32'),
(35, 'Premium', 30, '1000', 'Plan purchase', '2021-12-22 16:27:47', '2021-12-22 16:27:47'),
(36, 'Credit', 25, '255', 'Deposit', '2021-12-23 09:51:36', '2021-12-23 09:51:36'),
(37, 'XXX', 25, '0', 'ROI', '2021-12-23 10:00:32', '2021-12-23 10:00:32'),
(38, 'Premium', 25, '690', 'ROI', '2021-12-23 10:00:37', '2021-12-23 10:00:37'),
(39, 'XXX', 25, '0', 'ROI', '2021-12-25 10:00:32', '2021-12-25 10:00:32'),
(40, 'Premium', 25, '690', 'ROI', '2021-12-25 10:00:37', '2021-12-25 10:00:37'),
(41, 'XXX', 25, '0', 'ROI', '2021-12-27 10:00:07', '2021-12-27 10:00:07'),
(42, 'Premium', 25, '690', 'ROI', '2021-12-27 10:00:12', '2021-12-27 10:00:12'),
(43, 'XXX', 25, '0', 'ROI', '2021-12-28 10:00:38', '2021-12-28 10:00:38'),
(44, 'Premium', 25, '690', 'ROI', '2021-12-28 10:00:43', '2021-12-28 10:00:43'),
(45, 'Premium', 25, '1200', 'Plan purchase', '2021-12-29 02:26:46', '2021-12-29 02:26:46'),
(46, 'XXX', 25, '0', 'ROI', '2021-12-29 10:00:40', '2021-12-29 10:00:40'),
(47, 'Premium', 25, '1000', 'Investment capital', '2021-12-29 10:00:45', '2021-12-29 10:00:45'),
(48, 'XXX', 25, '0', 'ROI', '2021-12-30 10:00:41', '2021-12-30 10:00:41'),
(49, 'Premium', 25, '828', 'ROI', '2021-12-30 10:00:45', '2021-12-30 10:00:45'),
(50, 'Credit reversal', 24, '3000', 'Deposit', '2021-12-31 01:23:37', '2021-12-31 01:23:37'),
(51, 'Credit', 24, '3000', 'Deposit', '2021-12-31 01:25:14', '2021-12-31 01:25:14'),
(52, 'Basic', 25, '30', 'ROI', '2022-01-01 10:00:39', '2022-01-01 10:00:39'),
(53, 'Premium', 25, '828', 'ROI', '2022-01-01 10:00:44', '2022-01-01 10:00:44'),
(54, 'Basic', 25, '30', 'ROI', '2022-01-02 10:00:46', '2022-01-02 10:00:46'),
(55, 'Premium', 25, '828', 'ROI', '2022-01-02 10:00:51', '2022-01-02 10:00:51'),
(56, 'Premium', 25, '1200', 'Plan purchase', '2022-01-04 08:52:13', '2022-01-04 08:52:13'),
(57, 'Basic', 25, '30', 'ROI', '2022-01-04 10:00:01', '2022-01-04 10:00:01'),
(58, 'Premium', 25, '828', 'ROI', '2022-01-04 10:00:06', '2022-01-04 10:00:06'),
(59, 'Basic', 25, '30', 'ROI', '2022-01-05 10:00:13', '2022-01-05 10:00:13'),
(60, 'Premium', 25, '1200', 'Investment capital', '2022-01-05 10:00:19', '2022-01-05 10:00:19'),
(61, 'Premium', 25, '828', 'ROI', '2022-01-05 10:00:23', '2022-01-05 10:00:23'),
(62, 'Credit', 25, '513', 'Deposit', '2022-01-05 10:19:10', '2022-01-05 10:19:10'),
(63, 'Basic', 25, '30', 'ROI', '2022-01-06 10:00:34', '2022-01-06 10:00:34'),
(64, 'Premium', 25, '828', 'ROI', '2022-01-06 10:00:39', '2022-01-06 10:00:39'),
(65, 'Basic', 25, '30', 'ROI', '2022-01-08 10:00:18', '2022-01-08 10:00:18'),
(66, 'Premium', 25, '828', 'ROI', '2022-01-08 10:00:23', '2022-01-08 10:00:23'),
(67, 'Basic', 25, '30', 'ROI', '2022-01-10 10:00:28', '2022-01-10 10:00:28'),
(68, 'Premium', 25, '828', 'ROI', '2022-01-10 10:00:33', '2022-01-10 10:00:33'),
(69, 'Premium', 25, '1200', 'Investment capital', '2022-01-11 10:00:19', '2022-01-11 10:00:19'),
(70, 'Basic', 25, '30', 'ROI', '2022-01-12 10:00:42', '2022-01-12 10:00:42'),
(71, 'Basic', 25, '30', 'ROI', '2022-01-14 10:00:27', '2022-01-14 10:00:27'),
(72, 'Basic', 19, '100', 'Plan purchase', '2022-01-15 13:18:06', '2022-01-15 13:18:06'),
(73, 'Basic', 19, '100', 'Plan purchase', '2022-01-15 13:18:20', '2022-01-15 13:18:20'),
(74, 'Basic', 25, '30', 'ROI', '2022-01-16 10:00:07', '2022-01-16 10:00:07'),
(75, 'Basic', 25, '30', 'ROI', '2022-01-17 10:00:07', '2022-01-17 10:00:07'),
(76, 'Basic', 19, '30', 'ROI', '2022-01-17 10:00:12', '2022-01-17 10:00:12'),
(77, 'Basic', 19, '30', 'ROI', '2022-01-17 10:00:18', '2022-01-17 10:00:18'),
(78, 'Basic', 25, '30', 'ROI', '2022-01-18 10:00:38', '2022-01-18 10:00:38'),
(79, 'Basic', 19, '30', 'ROI', '2022-01-18 10:00:43', '2022-01-18 10:00:43'),
(80, 'Basic', 19, '30', 'ROI', '2022-01-18 10:00:48', '2022-01-18 10:00:48'),
(81, 'Basic', 25, '30', 'ROI', '2022-01-20 10:00:20', '2022-01-20 10:00:20'),
(82, 'Basic', 19, '30', 'ROI', '2022-01-20 10:00:25', '2022-01-20 10:00:25'),
(83, 'Basic', 19, '30', 'ROI', '2022-01-20 10:00:29', '2022-01-20 10:00:29'),
(84, 'Basic', 25, '30', 'ROI', '2022-01-21 10:00:38', '2022-01-21 10:00:38'),
(85, 'Basic', 19, '30', 'ROI', '2022-01-21 10:00:43', '2022-01-21 10:00:43'),
(86, 'Basic', 19, '30', 'ROI', '2022-01-21 10:00:50', '2022-01-21 10:00:50'),
(87, 'Basic', 25, '30', 'ROI', '2022-01-23 10:00:11', '2022-01-23 10:00:11'),
(88, 'Basic', 19, '30', 'ROI', '2022-01-23 10:00:16', '2022-01-23 10:00:16'),
(89, 'Basic', 19, '30', 'ROI', '2022-01-23 10:00:20', '2022-01-23 10:00:20'),
(90, 'Basic', 25, '30', 'ROI', '2022-01-24 10:00:50', '2022-01-24 10:00:50'),
(91, 'Basic', 19, '30', 'ROI', '2022-01-24 10:00:55', '2022-01-24 10:00:55'),
(92, 'Basic', 19, '30', 'ROI', '2022-01-24 10:00:59', '2022-01-24 10:00:59'),
(93, 'Basic', 24, '100', 'Plan purchase', '2022-01-24 22:40:10', '2022-01-24 22:40:10'),
(94, 'Basic', 25, '30', 'ROI', '2022-01-26 10:00:39', '2022-01-26 10:00:39'),
(95, 'Basic', 19, '30', 'ROI', '2022-01-26 10:00:45', '2022-01-26 10:00:45'),
(96, 'Basic', 19, '30', 'ROI', '2022-01-26 10:00:49', '2022-01-26 10:00:49'),
(97, 'Basic', 24, '30', 'ROI', '2022-01-26 10:00:54', '2022-01-26 10:00:54'),
(98, 'Premium', 24, '1000', 'Plan purchase', '2022-01-27 00:29:37', '2022-01-27 00:29:37'),
(99, 'Deluxe', 24, '500', 'Plan purchase', '2022-01-27 00:31:08', '2022-01-27 00:31:08'),
(100, 'Basic', 24, '1000', 'Plan purchase', '2022-01-27 00:32:41', '2022-01-27 00:32:41'),
(101, 'Basic', 25, '30', 'ROI', '2022-01-28 10:00:13', '2022-01-28 10:00:13'),
(102, 'Basic', 19, '30', 'ROI', '2022-01-28 10:00:18', '2022-01-28 10:00:18'),
(103, 'Basic', 19, '30', 'ROI', '2022-01-28 10:00:25', '2022-01-28 10:00:25'),
(104, 'Basic', 24, '30', 'ROI', '2022-01-28 10:00:31', '2022-01-28 10:00:31'),
(105, 'Premium', 24, '690', 'ROI', '2022-01-28 10:00:37', '2022-01-28 10:00:37'),
(106, 'Basic', 24, '300', 'ROI', '2022-01-28 10:00:43', '2022-01-28 10:00:43'),
(107, 'Basic', 25, '30', 'ROI', '2022-01-29 10:00:42', '2022-01-29 10:00:42'),
(108, 'Basic', 19, '30', 'ROI', '2022-01-29 10:00:47', '2022-01-29 10:00:47'),
(109, 'Basic', 19, '30', 'ROI', '2022-01-29 10:00:51', '2022-01-29 10:00:51'),
(110, 'Basic', 24, '30', 'ROI', '2022-01-29 10:00:56', '2022-01-29 10:00:56'),
(111, 'Premium', 24, '690', 'ROI', '2022-01-29 10:01:00', '2022-01-29 10:01:00'),
(112, 'Basic', 24, '300', 'ROI', '2022-01-29 10:01:04', '2022-01-29 10:01:04'),
(113, 'Basic', 25, '30', 'ROI', '2022-01-30 10:00:43', '2022-01-30 10:00:43'),
(114, 'Basic', 19, '30', 'ROI', '2022-01-30 10:00:55', '2022-01-30 10:00:55'),
(115, 'Basic', 19, '30', 'ROI', '2022-01-30 10:01:08', '2022-01-30 10:01:08'),
(116, 'Basic', 24, '30', 'ROI', '2022-01-30 10:01:13', '2022-01-30 10:01:13'),
(117, 'Premium', 24, '690', 'ROI', '2022-01-30 10:01:18', '2022-01-30 10:01:18'),
(118, 'Basic', 24, '300', 'ROI', '2022-01-30 10:01:23', '2022-01-30 10:01:23'),
(119, 'Basic', 25, '30', 'ROI', '2022-01-31 10:00:43', '2022-01-31 10:00:43'),
(120, 'Credit', 25, '690', 'Bonus', '2022-01-31 10:33:16', '2022-01-31 10:33:16'),
(121, 'Basic', 25, '30', 'ROI', '2022-02-01 10:00:47', '2022-02-01 10:00:47'),
(122, 'Basic', 19, '30', 'ROI', '2022-02-01 10:00:52', '2022-02-01 10:00:52'),
(123, 'Basic', 19, '30', 'ROI', '2022-02-01 10:00:57', '2022-02-01 10:00:57'),
(124, 'Basic', 24, '30', 'ROI', '2022-02-01 10:01:01', '2022-02-01 10:01:01'),
(125, 'Premium', 24, '690', 'ROI', '2022-02-01 10:01:05', '2022-02-01 10:01:05'),
(126, 'Basic', 24, '300', 'ROI', '2022-02-01 10:01:09', '2022-02-01 10:01:09'),
(127, 'Basic', 25, '30', 'ROI', '2022-02-03 10:00:03', '2022-02-03 10:00:03'),
(128, 'Basic', 19, '30', 'ROI', '2022-02-03 10:00:08', '2022-02-03 10:00:08'),
(129, 'Basic', 19, '30', 'ROI', '2022-02-03 10:00:12', '2022-02-03 10:00:12'),
(130, 'Basic', 24, '30', 'ROI', '2022-02-03 10:00:17', '2022-02-03 10:00:17'),
(131, 'Premium', 24, '1000', 'Investment capital', '2022-02-03 10:00:21', '2022-02-03 10:00:21'),
(132, 'Basic', 24, '300', 'ROI', '2022-02-03 10:00:25', '2022-02-03 10:00:25'),
(133, 'Basic', 25, '30', 'ROI', '2022-02-04 10:00:03', '2022-02-04 10:00:03'),
(134, 'Basic', 19, '30', 'ROI', '2022-02-04 10:00:08', '2022-02-04 10:00:08'),
(135, 'Basic', 19, '30', 'ROI', '2022-02-04 10:00:13', '2022-02-04 10:00:13'),
(136, 'Basic', 24, '30', 'ROI', '2022-02-04 10:00:17', '2022-02-04 10:00:17'),
(137, 'Basic', 25, '30', 'ROI', '2022-02-05 10:00:33', '2022-02-05 10:00:33'),
(138, 'Basic', 19, '30', 'ROI', '2022-02-05 10:00:38', '2022-02-05 10:00:38'),
(139, 'Basic', 19, '30', 'ROI', '2022-02-05 10:00:42', '2022-02-05 10:00:42'),
(140, 'Basic', 24, '30', 'ROI', '2022-02-05 10:00:47', '2022-02-05 10:00:47'),
(141, 'Basic', 24, '300', 'ROI', '2022-02-05 10:00:51', '2022-02-05 10:00:51'),
(142, 'Basic', 25, '30', 'ROI', '2022-02-06 10:00:46', '2022-02-06 10:00:46'),
(143, 'Basic', 19, '30', 'ROI', '2022-02-06 10:00:51', '2022-02-06 10:00:51'),
(144, 'Basic', 19, '30', 'ROI', '2022-02-06 10:00:57', '2022-02-06 10:00:57'),
(145, 'Basic', 24, '30', 'ROI', '2022-02-06 10:01:01', '2022-02-06 10:01:01'),
(146, 'Basic', 24, '300', 'ROI', '2022-02-06 10:01:06', '2022-02-06 10:01:06'),
(147, 'Basic', 24, '100', 'Plan purchase', '2022-02-06 19:47:49', '2022-02-06 19:47:49'),
(148, 'Standard', 24, '200', 'Plan purchase', '2022-02-07 13:45:14', '2022-02-07 13:45:14'),
(149, 'Basic', 25, '30', 'ROI', '2022-02-08 10:00:06', '2022-02-08 10:00:06'),
(150, 'Basic', 19, '30', 'ROI', '2022-02-08 10:00:11', '2022-02-08 10:00:11'),
(151, 'Basic', 19, '30', 'ROI', '2022-02-08 10:00:16', '2022-02-08 10:00:16'),
(152, 'Basic', 24, '30', 'ROI', '2022-02-08 10:00:20', '2022-02-08 10:00:20'),
(153, 'Basic', 24, '300', 'ROI', '2022-02-08 10:00:24', '2022-02-08 10:00:24'),
(154, 'Basic', 24, '30', 'ROI', '2022-02-08 10:00:29', '2022-02-08 10:00:29'),
(155, 'Basic', 25, '30', 'ROI', '2022-02-09 10:00:08', '2022-02-09 10:00:08'),
(156, 'Basic', 19, '30', 'ROI', '2022-02-09 10:00:13', '2022-02-09 10:00:13'),
(157, 'Basic', 19, '30', 'ROI', '2022-02-09 10:00:18', '2022-02-09 10:00:18'),
(158, 'Basic', 24, '30', 'ROI', '2022-02-09 10:00:22', '2022-02-09 10:00:22'),
(159, 'Basic', 24, '300', 'ROI', '2022-02-09 10:00:26', '2022-02-09 10:00:26'),
(160, 'Basic', 24, '30', 'ROI', '2022-02-09 10:00:31', '2022-02-09 10:00:31'),
(161, 'Basic', 25, '322', 'Bonus', '2022-02-09 18:34:57', '2022-02-09 18:34:57'),
(162, 'Credit', 62, '20', 'Bonus', '2022-02-09 18:47:05', '2022-02-09 18:47:05'),
(163, 'Credit', 61, '20', 'Bonus', '2022-02-09 18:47:55', '2022-02-09 18:47:55'),
(164, 'Credit', 60, '20', 'Bonus', '2022-02-09 18:48:36', '2022-02-09 18:48:36'),
(165, 'Credit', 58, '20', 'Bonus', '2022-02-09 18:49:03', '2022-02-09 18:49:03'),
(166, 'Credit', 57, '20', 'Bonus', '2022-02-09 18:49:42', '2022-02-09 18:49:42'),
(167, 'Credit', 56, '20', 'Bonus', '2022-02-09 18:50:44', '2022-02-09 18:50:44'),
(168, 'Credit', 55, '20', 'Bonus', '2022-02-09 18:51:20', '2022-02-09 18:51:20'),
(169, 'Credit', 54, '20', 'Bonus', '2022-02-09 18:51:50', '2022-02-09 18:51:50'),
(170, 'Credit', 53, '20', 'Bonus', '2022-02-09 18:52:25', '2022-02-09 18:52:25'),
(171, 'Credit', 52, '20', 'Bonus', '2022-02-09 18:53:27', '2022-02-09 18:53:27'),
(172, 'Credit', 50, '20', 'Bonus', '2022-02-09 18:54:23', '2022-02-09 18:54:23'),
(173, 'Credit', 49, '20', 'Bonus', '2022-02-09 18:55:00', '2022-02-09 18:55:00'),
(174, 'Credit', 48, '20', 'Bonus', '2022-02-09 18:55:45', '2022-02-09 18:55:45'),
(175, 'Credit', 47, '20', 'Bonus', '2022-02-09 18:56:22', '2022-02-09 18:56:22'),
(176, 'Credit', 32, '20', 'Bonus', '2022-02-09 18:58:07', '2022-02-09 18:58:07'),
(177, 'Credit', 46, '20', 'Bonus', '2022-02-09 18:59:06', '2022-02-09 18:59:06'),
(178, 'Credit', 45, '20', 'Bonus', '2022-02-09 18:59:50', '2022-02-09 18:59:50'),
(179, 'Credit', 44, '20', 'Bonus', '2022-02-09 19:00:43', '2022-02-09 19:00:43'),
(180, 'Credit', 43, '20', 'Bonus', '2022-02-09 19:01:19', '2022-02-09 19:01:19'),
(181, 'Credit', 42, '20', 'Bonus', '2022-02-09 19:03:04', '2022-02-09 19:03:04'),
(182, 'Credit', 41, '20', 'Bonus', '2022-02-09 19:04:56', '2022-02-09 19:04:56'),
(183, 'Credit', 39, '20', 'Bonus', '2022-02-09 19:07:30', '2022-02-09 19:07:30'),
(184, 'Credit', 38, '20', 'Bonus', '2022-02-09 19:08:19', '2022-02-09 19:08:19'),
(185, 'Credit', 37, '20', 'Bonus', '2022-02-09 19:08:55', '2022-02-09 19:08:55'),
(186, 'Credit', 33, '20', 'Bonus', '2022-02-09 19:09:46', '2022-02-09 19:09:46'),
(187, 'Credit', 34, '20', 'Bonus', '2022-02-09 19:10:39', '2022-02-09 19:10:39'),
(188, 'Credit', 35, '20', 'Bonus', '2022-02-09 19:11:19', '2022-02-09 19:11:19'),
(189, 'Basic', 25, '30', 'ROI', '2022-02-10 10:00:15', '2022-02-10 10:00:15'),
(190, 'Basic', 19, '30', 'ROI', '2022-02-10 10:00:20', '2022-02-10 10:00:20'),
(191, 'Basic', 19, '30', 'ROI', '2022-02-10 10:00:24', '2022-02-10 10:00:24'),
(192, 'Basic', 24, '30', 'ROI', '2022-02-10 10:00:29', '2022-02-10 10:00:29'),
(193, 'Basic', 24, '300', 'ROI', '2022-02-10 10:00:33', '2022-02-10 10:00:33'),
(194, 'Basic', 24, '30', 'ROI', '2022-02-10 10:00:39', '2022-02-10 10:00:39'),
(195, 'Credit', 59, '50', 'Bonus', '2022-02-10 16:45:15', '2022-02-10 16:45:15'),
(196, 'Basic', 25, '30', 'ROI', '2022-02-12 10:00:17', '2022-02-12 10:00:17'),
(197, 'Basic', 19, '30', 'ROI', '2022-02-12 10:00:22', '2022-02-12 10:00:22'),
(198, 'Basic', 19, '30', 'ROI', '2022-02-12 10:00:28', '2022-02-12 10:00:28'),
(199, 'Basic', 24, '30', 'ROI', '2022-02-12 10:00:37', '2022-02-12 10:00:37'),
(200, 'Basic', 24, '300', 'ROI', '2022-02-12 10:00:54', '2022-02-12 10:00:54'),
(201, 'Basic', 24, '30', 'ROI', '2022-02-12 10:01:24', '2022-02-12 10:01:24'),
(202, 'Basic', 25, '30', 'ROI', '2022-02-13 10:00:36', '2022-02-13 10:00:36'),
(203, 'Basic', 19, '30', 'ROI', '2022-02-13 10:00:41', '2022-02-13 10:00:41'),
(204, 'Basic', 19, '30', 'ROI', '2022-02-13 10:00:48', '2022-02-13 10:00:48'),
(205, 'Basic', 24, '30', 'ROI', '2022-02-13 10:00:52', '2022-02-13 10:00:52'),
(206, 'Basic', 24, '300', 'ROI', '2022-02-13 10:00:57', '2022-02-13 10:00:57'),
(207, 'Basic', 24, '30', 'ROI', '2022-02-14 10:00:16', '2022-02-14 10:00:16'),
(208, 'Basic', 25, '30', 'ROI', '2022-02-15 10:00:26', '2022-02-15 10:00:26'),
(209, 'Basic', 24, '30', 'ROI', '2022-02-15 10:00:31', '2022-02-15 10:00:31'),
(210, 'Basic', 24, '300', 'ROI', '2022-02-15 10:00:35', '2022-02-15 10:00:35'),
(211, 'Basic', 24, '30', 'ROI', '2022-02-15 10:00:40', '2022-02-15 10:00:40'),
(212, 'Standard', 24, '60', 'ROI', '2022-02-15 10:00:44', '2022-02-15 10:00:44'),
(213, 'Credit', 64, '20', 'Bonus', '2022-02-16 16:40:35', '2022-02-16 16:40:35'),
(214, 'Credit', 63, '20', 'Bonus', '2022-02-16 16:41:09', '2022-02-16 16:41:09'),
(215, 'Credit', 24, '20', 'Bonus', '2022-02-16 16:42:01', '2022-02-16 16:42:01'),
(216, 'Basic', 25, '30', 'ROI', '2022-02-17 10:00:30', '2022-02-17 10:00:30'),
(217, 'Basic', 24, '30', 'ROI', '2022-02-17 10:00:35', '2022-02-17 10:00:35'),
(218, 'Basic', 24, '300', 'ROI', '2022-02-17 10:00:39', '2022-02-17 10:00:39'),
(219, 'Basic', 24, '30', 'ROI', '2022-02-17 10:00:43', '2022-02-17 10:00:43'),
(220, 'Basic', 25, '30', 'ROI', '2022-02-19 10:00:46', '2022-02-19 10:00:46'),
(221, 'Basic', 24, '30', 'ROI', '2022-02-19 10:00:51', '2022-02-19 10:00:51'),
(222, 'Basic', 24, '300', 'ROI', '2022-02-19 10:00:56', '2022-02-19 10:00:56'),
(223, 'Basic', 24, '30', 'ROI', '2022-02-19 10:01:00', '2022-02-19 10:01:00'),
(224, 'Credit', 70, '20', 'Bonus', '2022-02-19 14:44:42', '2022-02-19 14:44:42'),
(225, 'Credit', 69, '10', 'Bonus', '2022-02-19 14:45:33', '2022-02-19 14:45:33'),
(226, 'Credit', 68, '20', 'Bonus', '2022-02-19 14:46:42', '2022-02-19 14:46:42'),
(227, 'Credit', 67, '20', 'Bonus', '2022-02-19 14:47:29', '2022-02-19 14:47:29'),
(228, 'Credit', 66, '20', 'Bonus', '2022-02-19 14:47:58', '2022-02-19 14:47:58'),
(229, 'Credit', 25, '450', 'Bonus', '2022-02-19 15:06:11', '2022-02-19 15:06:11'),
(230, 'Basic', 25, '30', 'ROI', '2022-02-20 10:00:47', '2022-02-20 10:00:47'),
(231, 'Basic', 24, '30', 'ROI', '2022-02-20 10:00:52', '2022-02-20 10:00:52'),
(232, 'Basic', 24, '300', 'ROI', '2022-02-20 10:00:56', '2022-02-20 10:00:56'),
(233, 'Basic', 24, '30', 'ROI', '2022-02-20 10:01:00', '2022-02-20 10:01:00'),
(234, 'Basic', 25, '30', 'ROI', '2022-02-22 10:00:21', '2022-02-22 10:00:21'),
(235, 'Basic', 24, '30', 'ROI', '2022-02-22 10:00:26', '2022-02-22 10:00:26'),
(236, 'Basic', 24, '300', 'ROI', '2022-02-22 10:00:30', '2022-02-22 10:00:30'),
(237, 'Basic', 24, '30', 'ROI', '2022-02-22 10:00:34', '2022-02-22 10:00:34'),
(238, 'Basic', 25, '30', 'ROI', '2022-02-23 10:00:32', '2022-02-23 10:00:32'),
(239, 'Basic', 24, '30', 'ROI', '2022-02-23 10:00:37', '2022-02-23 10:00:37'),
(240, 'Basic', 24, '300', 'ROI', '2022-02-23 10:00:41', '2022-02-23 10:00:41'),
(241, 'Basic', 24, '30', 'ROI', '2022-02-23 10:00:46', '2022-02-23 10:00:46'),
(242, 'Standard', 24, '60', 'ROI', '2022-02-23 10:00:50', '2022-02-23 10:00:50'),
(243, 'Basic', 25, '30', 'ROI', '2022-02-25 10:00:36', '2022-02-25 10:00:36'),
(244, 'Basic', 24, '30', 'ROI', '2022-02-25 10:00:41', '2022-02-25 10:00:41'),
(245, 'Basic', 24, '300', 'ROI', '2022-02-25 10:00:46', '2022-02-25 10:00:46'),
(246, 'Basic', 24, '30', 'ROI', '2022-02-25 10:00:50', '2022-02-25 10:00:50'),
(247, 'Deluxe', 24, '500', 'Investment capital', '2022-02-26 10:00:16', '2022-02-26 10:00:16'),
(248, 'Basic', 25, '30', 'ROI', '2022-02-27 10:00:38', '2022-02-27 10:00:38'),
(249, 'Basic', 24, '30', 'ROI', '2022-02-27 10:00:43', '2022-02-27 10:00:43'),
(250, 'Basic', 24, '300', 'ROI', '2022-02-27 10:00:47', '2022-02-27 10:00:47'),
(251, 'Basic', 24, '30', 'ROI', '2022-02-27 10:00:52', '2022-02-27 10:00:52'),
(252, 'Basic', 25, '30', 'ROI', '2022-02-28 10:00:39', '2022-02-28 10:00:39'),
(253, 'Basic', 24, '30', 'ROI', '2022-02-28 10:00:44', '2022-02-28 10:00:44'),
(254, 'Basic', 24, '300', 'ROI', '2022-02-28 10:00:48', '2022-02-28 10:00:48'),
(255, 'Basic', 24, '30', 'ROI', '2022-02-28 10:00:52', '2022-02-28 10:00:52'),
(256, 'Credit', 71, '20', 'Bonus', '2022-03-01 00:31:50', '2022-03-01 00:31:50'),
(257, 'Credit', 72, '20', 'Bonus', '2022-03-01 00:32:14', '2022-03-01 00:32:14'),
(258, 'Credit', 73, '20', 'Bonus', '2022-03-01 00:32:37', '2022-03-01 00:32:37'),
(259, 'Credit', 74, '20', 'Bonus', '2022-03-01 22:37:13', '2022-03-01 22:37:13'),
(260, 'Credit', 75, '20', 'Bonus', '2022-03-01 22:37:42', '2022-03-01 22:37:42'),
(261, 'Basic', 25, '30', 'ROI', '2022-03-02 10:00:01', '2022-03-02 10:00:01'),
(262, 'Basic', 24, '30', 'ROI', '2022-03-02 10:00:06', '2022-03-02 10:00:06'),
(263, 'Basic', 24, '300', 'ROI', '2022-03-02 10:00:10', '2022-03-02 10:00:10'),
(264, 'Basic', 24, '30', 'ROI', '2022-03-02 10:00:14', '2022-03-02 10:00:14'),
(265, 'Basic', 25, '30', 'ROI', '2022-03-03 10:00:10', '2022-03-03 10:00:10'),
(266, 'Basic', 24, '30', 'ROI', '2022-03-03 10:00:15', '2022-03-03 10:00:15'),
(267, 'Basic', 24, '300', 'ROI', '2022-03-03 10:00:19', '2022-03-03 10:00:19'),
(268, 'Basic', 24, '30', 'ROI', '2022-03-03 10:00:24', '2022-03-03 10:00:24'),
(269, 'Standard', 24, '60', 'ROI', '2022-03-03 10:00:28', '2022-03-03 10:00:28'),
(270, 'Basic', 25, '30', 'ROI', '2022-03-04 10:00:50', '2022-03-04 10:00:50'),
(271, 'Basic', 24, '30', 'ROI', '2022-03-04 10:00:55', '2022-03-04 10:00:55'),
(272, 'Basic', 24, '300', 'ROI', '2022-03-04 10:00:59', '2022-03-04 10:00:59'),
(273, 'Basic', 24, '30', 'ROI', '2022-03-04 10:01:04', '2022-03-04 10:01:04'),
(274, 'Credit', 76, '20', 'Bonus', '2022-03-05 00:29:40', '2022-03-05 00:29:40'),
(275, 'Basic', 25, '30', 'ROI', '2022-03-06 10:00:20', '2022-03-06 10:00:20'),
(276, 'Basic', 24, '30', 'ROI', '2022-03-06 10:00:25', '2022-03-06 10:00:25'),
(277, 'Basic', 24, '300', 'ROI', '2022-03-06 10:00:29', '2022-03-06 10:00:29'),
(278, 'Basic', 24, '30', 'ROI', '2022-03-06 10:00:33', '2022-03-06 10:00:33'),
(279, 'Basic', 25, '30', 'ROI', '2022-03-08 10:00:36', '2022-03-08 10:00:36'),
(280, 'Basic', 24, '30', 'ROI', '2022-03-08 10:00:42', '2022-03-08 10:00:42'),
(281, 'Basic', 24, '300', 'ROI', '2022-03-08 10:00:47', '2022-03-08 10:00:47'),
(282, 'Basic', 24, '30', 'ROI', '2022-03-08 10:00:52', '2022-03-08 10:00:52'),
(283, 'Credit', 77, '20', 'Bonus', '2022-03-08 21:10:15', '2022-03-08 21:10:15'),
(284, 'Basic', 25, '100', 'Investment capital', '2022-03-09 10:00:42', '2022-03-09 10:00:42'),
(285, 'Basic', 24, '30', 'ROI', '2022-03-09 10:00:47', '2022-03-09 10:00:47'),
(286, 'Basic', 24, '300', 'ROI', '2022-03-09 10:00:52', '2022-03-09 10:00:52'),
(287, 'Basic', 24, '30', 'ROI', '2022-03-09 10:00:57', '2022-03-09 10:00:57'),
(288, 'Deluxe', 25, '500', 'Plan purchase', '2022-03-10 02:21:44', '2022-03-10 02:21:44'),
(289, 'Standard', 24, '200', 'Investment capital', '2022-03-10 10:00:10', '2022-03-10 10:00:10'),
(290, 'Basic', 24, '30', 'ROI', '2022-03-11 10:00:44', '2022-03-11 10:00:44'),
(291, 'Basic', 24, '300', 'ROI', '2022-03-11 10:00:50', '2022-03-11 10:00:50'),
(292, 'Basic', 24, '30', 'ROI', '2022-03-11 10:00:54', '2022-03-11 10:00:54'),
(293, 'Credit', 78, '10', 'Bonus', '2022-03-12 15:46:00', '2022-03-12 15:46:00'),
(294, 'Credit', 79, '10', 'Bonus', '2022-03-12 22:28:03', '2022-03-12 22:28:03'),
(295, 'Basic', 24, '30', 'ROI', '2022-03-13 09:00:08', '2022-03-13 09:00:08'),
(296, 'Basic', 24, '300', 'ROI', '2022-03-13 09:00:13', '2022-03-13 09:00:13'),
(297, 'Basic', 24, '30', 'ROI', '2022-03-13 09:00:17', '2022-03-13 09:00:17'),
(298, 'Basic', 24, '30', 'ROI', '2022-03-15 08:00:50', '2022-03-15 08:00:50'),
(299, 'Basic', 24, '300', 'ROI', '2022-03-15 08:00:55', '2022-03-15 08:00:55'),
(300, 'Basic', 24, '30', 'ROI', '2022-03-15 08:00:59', '2022-03-15 08:00:59'),
(301, 'Credit', 81, '10', 'Bonus', '2022-03-15 10:06:45', '2022-03-15 10:06:45'),
(302, 'Credit', 80, '10', 'Bonus', '2022-03-15 10:07:11', '2022-03-15 10:07:11'),
(303, 'Credit reversal', 59, '30', 'Bonus', '2022-03-15 17:13:45', '2022-03-15 17:13:45'),
(304, 'Basic', 24, '30', 'ROI', '2022-03-17 08:00:20', '2022-03-17 08:00:20'),
(305, 'Basic', 24, '300', 'ROI', '2022-03-17 08:00:25', '2022-03-17 08:00:25'),
(306, 'Basic', 24, '30', 'ROI', '2022-03-17 08:00:29', '2022-03-17 08:00:29'),
(307, 'Credit', 82, '10', 'Bonus', '2022-03-17 20:38:11', '2022-03-17 20:38:11'),
(308, 'Basic', 24, '30', 'ROI', '2022-03-19 08:00:12', '2022-03-19 08:00:12'),
(309, 'Basic', 24, '300', 'ROI', '2022-03-19 08:00:17', '2022-03-19 08:00:17'),
(310, 'Basic', 24, '30', 'ROI', '2022-03-19 08:00:21', '2022-03-19 08:00:21'),
(311, 'Basic', 24, '30', 'ROI', '2022-03-20 08:00:29', '2022-03-20 08:00:29'),
(312, 'Basic', 24, '300', 'ROI', '2022-03-20 08:00:37', '2022-03-20 08:00:37'),
(313, 'Basic', 24, '30', 'ROI', '2022-03-20 08:00:42', '2022-03-20 08:00:42'),
(314, 'Credit', 83, '10', 'Bonus', '2022-03-20 20:53:41', '2022-03-20 20:53:41'),
(315, 'Credit', 84, '10', 'Bonus', '2022-03-21 04:19:42', '2022-03-21 04:19:42'),
(316, 'Basic', 24, '30', 'ROI', '2022-03-21 08:00:45', '2022-03-21 08:00:45'),
(317, 'Basic', 24, '300', 'ROI', '2022-03-21 08:00:50', '2022-03-21 08:00:50'),
(318, 'Basic', 24, '30', 'ROI', '2022-03-21 08:00:55', '2022-03-21 08:00:55'),
(319, 'Credit', 85, '10', 'Bonus', '2022-03-22 11:58:39', '2022-03-22 11:58:39'),
(320, 'Credit', 86, '10', 'Bonus', '2022-03-23 23:14:21', '2022-03-23 23:14:21'),
(321, 'Credit', 24, '10', 'Bonus', '2022-03-23 23:28:22', '2022-03-23 23:28:22'),
(322, 'Credit', 87, '10', 'Bonus', '2022-03-24 18:49:01', '2022-03-24 18:49:01'),
(323, 'Credit', 88, '10', 'Bonus', '2022-03-25 16:55:42', '2022-03-25 16:55:42'),
(324, 'Credit', 89, '10', 'Bonus', '2022-03-27 02:15:11', '2022-03-27 02:15:11'),
(325, 'Credit', 90, '10', 'Bonus', '2022-03-28 14:09:43', '2022-03-28 14:09:43'),
(326, 'Credit', 91, '10', 'Bonus', '2022-03-28 16:27:56', '2022-03-28 16:27:56'),
(327, 'Credit', 92, '10', 'Bonus', '2022-03-28 16:28:25', '2022-03-28 16:28:25'),
(328, 'Credit', 93, '10', 'Bonus', '2022-03-29 04:15:21', '2022-03-29 04:15:21'),
(329, 'Credit', 94, '10', 'Bonus', '2022-03-29 21:33:56', '2022-03-29 21:33:56'),
(330, 'Credit', 95, '10', 'Bonus', '2022-03-30 10:16:20', '2022-03-30 10:16:20'),
(331, 'Credit', 96, '10', 'Bonus', '2022-03-31 11:53:28', '2022-03-31 11:53:28'),
(332, 'Credit', 97, '10', 'Bonus', '2022-04-02 13:34:49', '2022-04-02 13:34:49'),
(333, 'Credit', 98, '10', 'Bonus', '2022-04-03 17:55:25', '2022-04-03 17:55:25'),
(334, 'Credit', 100, '10', 'Bonus', '2022-04-04 16:57:15', '2022-04-04 16:57:15'),
(335, 'Credit', 99, '10', 'Bonus', '2022-04-04 16:58:18', '2022-04-04 16:58:18'),
(336, 'Basic', 24, '30', 'ROI', '2022-04-05 08:00:36', '2022-04-05 08:00:36'),
(337, 'Basic', 24, '300', 'ROI', '2022-04-05 08:00:41', '2022-04-05 08:00:41'),
(338, 'Basic', 24, '30', 'ROI', '2022-04-05 08:00:45', '2022-04-05 08:00:45'),
(339, 'Credit', 101, '10', 'Bonus', '2022-04-05 13:29:29', '2022-04-05 13:29:29'),
(340, 'Basic', 24, '30', 'ROI', '2022-04-07 08:00:17', '2022-04-07 08:00:17'),
(341, 'Basic', 24, '300', 'ROI', '2022-04-07 08:00:22', '2022-04-07 08:00:22'),
(342, 'Basic', 24, '30', 'ROI', '2022-04-07 08:00:26', '2022-04-07 08:00:26'),
(343, 'Basic', 24, '30', 'ROI', '2022-04-08 08:00:36', '2022-04-08 08:00:36'),
(344, 'Basic', 24, '300', 'ROI', '2022-04-08 08:00:45', '2022-04-08 08:00:45'),
(345, 'Basic', 24, '30', 'ROI', '2022-04-08 08:00:49', '2022-04-08 08:00:49'),
(346, 'Deluxe', 25, '500', 'Investment capital', '2022-04-09 08:00:33', '2022-04-09 08:00:33'),
(347, 'Credit', 102, '10', 'Ref_Bonus', '2022-04-09 15:37:07', '2022-04-09 15:37:07'),
(348, 'Basic', 24, '30', 'ROI', '2022-04-10 08:00:23', '2022-04-10 08:00:23'),
(349, 'Basic', 24, '300', 'ROI', '2022-04-10 08:00:27', '2022-04-10 08:00:27'),
(350, 'Basic', 24, '30', 'ROI', '2022-04-10 08:00:32', '2022-04-10 08:00:32'),
(351, 'Basic', 24, '30', 'ROI', '2022-04-11 08:00:32', '2022-04-11 08:00:32'),
(352, 'Basic', 24, '300', 'ROI', '2022-04-11 08:00:37', '2022-04-11 08:00:37'),
(353, 'Basic', 24, '30', 'ROI', '2022-04-11 08:00:41', '2022-04-11 08:00:41'),
(354, 'Basic', 24, '30', 'ROI', '2022-04-12 08:00:33', '2022-04-12 08:00:33'),
(355, 'Basic', 24, '300', 'ROI', '2022-04-12 08:00:38', '2022-04-12 08:00:38'),
(356, 'Basic', 24, '30', 'ROI', '2022-04-12 08:00:42', '2022-04-12 08:00:42'),
(357, 'Credit', 103, '10', 'Bonus', '2022-04-12 19:28:00', '2022-04-12 19:28:00'),
(358, 'Basic', 24, '30', 'ROI', '2022-04-13 08:00:35', '2022-04-13 08:00:35'),
(359, 'Basic', 24, '300', 'ROI', '2022-04-13 08:00:40', '2022-04-13 08:00:40'),
(360, 'Basic', 24, '30', 'ROI', '2022-04-13 08:00:44', '2022-04-13 08:00:44'),
(361, 'Credit', 104, '10', 'Bonus', '2022-04-13 20:39:15', '2022-04-13 20:39:15'),
(362, 'Credit', 105, '10', 'Bonus', '2022-04-13 20:39:45', '2022-04-13 20:39:45'),
(363, 'Basic', 24, '30', 'ROI', '2022-04-15 08:00:38', '2022-04-15 08:00:38'),
(364, 'Basic', 24, '300', 'ROI', '2022-04-15 08:00:43', '2022-04-15 08:00:43'),
(365, 'Basic', 24, '30', 'ROI', '2022-04-15 08:00:47', '2022-04-15 08:00:47'),
(366, 'Credit', 106, '10', 'Bonus', '2022-04-16 04:51:02', '2022-04-16 04:51:02'),
(367, 'Credit', 24, '200', 'Bonus', '2022-04-16 04:52:00', '2022-04-16 04:52:00'),
(368, 'Basic', 24, '30', 'ROI', '2022-04-17 08:00:11', '2022-04-17 08:00:11'),
(369, 'Basic', 24, '300', 'ROI', '2022-04-17 08:00:15', '2022-04-17 08:00:15'),
(370, 'Basic', 24, '30', 'ROI', '2022-04-17 08:00:19', '2022-04-17 08:00:19'),
(371, 'Credit', 108, '10', 'Bonus', '2022-04-18 00:46:09', '2022-04-18 00:46:09'),
(372, 'Credit', 107, '10', 'Bonus', '2022-04-18 00:46:37', '2022-04-18 00:46:37'),
(373, 'Basic', 24, '30', 'ROI', '2022-04-18 08:00:32', '2022-04-18 08:00:32'),
(374, 'Basic', 24, '300', 'ROI', '2022-04-18 08:00:39', '2022-04-18 08:00:39'),
(375, 'Basic', 24, '30', 'ROI', '2022-04-18 08:00:44', '2022-04-18 08:00:44'),
(376, 'Basic', 24, '30', 'ROI', '2022-04-20 08:00:44', '2022-04-20 08:00:44'),
(377, 'Basic', 24, '300', 'ROI', '2022-04-20 08:00:49', '2022-04-20 08:00:49'),
(378, 'Basic', 24, '30', 'ROI', '2022-04-20 08:00:54', '2022-04-20 08:00:54'),
(379, 'Credit', 109, '10', 'Bonus', '2022-04-20 16:17:16', '2022-04-20 16:17:16'),
(380, 'Basic', 24, '30', 'ROI', '2022-04-22 08:00:14', '2022-04-22 08:00:14'),
(381, 'Basic', 24, '300', 'ROI', '2022-04-22 08:00:19', '2022-04-22 08:00:19'),
(382, 'Basic', 24, '30', 'ROI', '2022-04-22 08:00:23', '2022-04-22 08:00:23'),
(383, 'Credit', 110, '10', 'Bonus', '2022-04-22 14:09:39', '2022-04-22 14:09:39'),
(384, 'Credit', 111, '10', 'Bonus', '2022-04-23 03:09:09', '2022-04-23 03:09:09'),
(385, 'Basic', 24, '30', 'ROI', '2022-04-23 08:00:24', '2022-04-23 08:00:24'),
(386, 'Basic', 24, '300', 'ROI', '2022-04-23 08:00:29', '2022-04-23 08:00:29'),
(387, 'Basic', 24, '30', 'ROI', '2022-04-23 08:00:36', '2022-04-23 08:00:36'),
(388, 'Basic', 24, '30', 'ROI', '2022-04-24 08:00:25', '2022-04-24 08:00:25'),
(389, 'Basic', 24, '300', 'ROI', '2022-04-24 08:00:30', '2022-04-24 08:00:30'),
(390, 'Credit', 112, '10', 'Ref_Bonus', '2022-04-24 17:51:46', '2022-04-24 17:51:46'),
(391, 'Credit', 113, '10', 'Ref_Bonus', '2022-04-24 17:52:14', '2022-04-24 17:52:14'),
(392, 'Basic', 24, '100', 'Investment capital', '2022-04-25 08:00:46', '2022-04-25 08:00:46'),
(393, 'Basic', 24, '300', 'ROI', '2022-04-25 08:00:50', '2022-04-25 08:00:50'),
(394, 'Basic', 24, '30', 'ROI', '2022-04-25 08:00:54', '2022-04-25 08:00:54'),
(395, 'Credit', 114, '10', 'Ref_Bonus', '2022-04-26 12:55:18', '2022-04-26 12:55:18'),
(396, 'Basic', 24, '1000', 'Investment capital', '2022-04-27 08:00:44', '2022-04-27 08:00:44'),
(397, 'Basic', 24, '30', 'ROI', '2022-04-27 08:00:49', '2022-04-27 08:00:49'),
(398, 'Basic', 24, '30', 'ROI', '2022-04-29 08:00:50', '2022-04-29 08:00:50'),
(399, 'Credit', 115, '10', 'Ref_Bonus', '2022-04-29 12:42:13', '2022-04-29 12:42:13'),
(400, 'Basic', 24, '30', 'ROI', '2022-05-01 08:00:44', '2022-05-01 08:00:44'),
(401, 'Basic', 24, '30', 'ROI', '2022-05-03 08:00:13', '2022-05-03 08:00:13'),
(402, 'Credit', 116, '10', 'Ref_Bonus', '2022-05-03 09:54:38', '2022-05-03 09:54:38'),
(403, 'Credit', 117, '10', 'Ref_Bonus', '2022-05-03 09:55:37', '2022-05-03 09:55:37'),
(404, 'Credit', 118, '10', 'Ref_Bonus', '2022-05-03 23:00:04', '2022-05-03 23:00:04'),
(405, 'Basic', 24, '30', 'ROI', '2022-05-04 08:00:26', '2022-05-04 08:00:26'),
(406, 'Credit', 119, '10', 'Ref_Bonus', '2022-05-05 00:32:55', '2022-05-05 00:32:55'),
(407, 'Credit', 120, '10', 'Ref_Bonus', '2022-05-05 00:33:53', '2022-05-05 00:33:53'),
(408, 'Basic', 24, '30', 'ROI', '2022-05-06 08:00:19', '2022-05-06 08:00:19'),
(409, 'Credit', 121, '10', 'Ref_Bonus', '2022-05-06 10:48:56', '2022-05-06 10:48:56'),
(410, 'Credit', 25, '22579', 'Deposit', '2022-05-06 13:22:14', '2022-05-06 13:22:14'),
(411, 'Basic', 24, '100', 'Investment capital', '2022-05-08 08:00:17', '2022-05-08 08:00:17'),
(412, 'Credit', 122, '10', 'Ref_Bonus', '2022-05-08 23:00:03', '2022-05-08 23:00:03'),
(413, 'Credit', 123, '10', 'Ref_Bonus', '2022-05-12 22:19:01', '2022-05-12 22:19:01'),
(414, 'Credit', 124, '10', 'Ref_Bonus', '2022-05-16 11:59:57', '2022-05-16 11:59:57'),
(415, 'Credit', 125, '10', 'Ref_Bonus', '2022-05-18 13:21:40', '2022-05-18 13:21:40'),
(416, 'Credit', 125, '1000', 'Deposit', '2022-05-18 13:22:10', '2022-05-18 13:22:10'),
(417, 'Credit', 126, '10', 'Ref_Bonus', '2022-05-19 22:25:24', '2022-05-19 22:25:24'),
(418, 'Credit', 126, '2000', 'Deposit', '2022-05-19 22:25:50', '2022-05-19 22:25:50'),
(419, 'Credit', 127, '10', 'Ref_Bonus', '2022-05-21 14:14:36', '2022-05-21 14:14:36'),
(420, 'Credit', 128, '10', 'Ref_Bonus', '2022-05-27 13:19:38', '2022-05-27 13:19:38'),
(421, 'Credit', 129, '10', 'Ref_Bonus', '2022-05-29 01:09:00', '2022-05-29 01:09:00'),
(422, 'Credit', 131, '10', 'Ref_Bonus', '2022-06-01 10:58:11', '2022-06-01 10:58:11'),
(423, 'Credit', 130, '10', 'Ref_Bonus', '2022-06-01 10:58:34', '2022-06-01 10:58:34'),
(424, 'Credit', 132, '10', 'Ref_Bonus', '2022-06-02 00:39:20', '2022-06-02 00:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `upgrades`
--

CREATE TABLE `upgrades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) DEFAULT NULL,
  `times` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlogs`
--

CREATE TABLE `userlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dashboard_style` varchar(255) NOT NULL DEFAULT 'dark',
  `bank_name` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `acnt_type_active` varchar(255) DEFAULT NULL,
  `btc_address` varchar(255) DEFAULT NULL,
  `eth_address` varchar(255) DEFAULT NULL,
  `ltc_address` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `user_plan` varchar(255) DEFAULT NULL,
  `account_bal` int(11) NOT NULL DEFAULT 0,
  `roi` int(11) NOT NULL DEFAULT 0,
  `bonus` int(11) NOT NULL DEFAULT 0,
  `ref_bonus` int(11) NOT NULL DEFAULT 0,
  `signup_bonus` varchar(255) DEFAULT NULL,
  `auto_trade` varchar(255) DEFAULT NULL,
  `bonus_released` int(11) NOT NULL DEFAULT 0,
  `ref_by` varchar(255) DEFAULT NULL,
  `ref_link` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `account_verify` varchar(255) DEFAULT NULL,
  `entered_at` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT 'active',
  `trade_mode` varchar(255) DEFAULT NULL,
  `act_session` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `dob`, `address`, `country`, `phone`, `dashboard_style`, `bank_name`, `account_name`, `account_number`, `acnt_type_active`, `btc_address`, `eth_address`, `ltc_address`, `plan`, `user_plan`, `account_bal`, `roi`, `bonus`, `ref_bonus`, `signup_bonus`, `auto_trade`, `bonus_released`, `ref_by`, `ref_link`, `id_card`, `passport`, `account_verify`, `entered_at`, `activated_at`, `last_growth`, `status`, `trade_mode`, `act_session`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(133, 'Prima Credito', 'test@crypto.com', '2022-08-07 21:08:39', '$2y$10$K4l.YbOkIBasw4xry6RHl.zOc7/nSfbb7mFtYOQi/GWchO9BmxZIq', NULL, NULL, NULL, NULL, NULL, '07451274578', 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000, 0, 0, 0, 'received', NULL, 0, NULL, 'crypttradeexperts.us/ref/133', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, NULL, NULL, '2022-08-07 21:07:21', '2022-08-08 02:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_plans`
--

CREATE TABLE `user_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `inv_duration` varchar(255) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_plans`
--

INSERT INTO `user_plans` (`id`, `plan`, `user`, `amount`, `active`, `inv_duration`, `expire_date`, `activated_at`, `last_growth`, `created_at`, `updated_at`) VALUES
(1, 1, 25, '100', 'expired', 'Three months', NULL, '2021-12-08 20:46:11', '2022-03-08 05:00:36', '2021-12-09 01:46:11', '2022-03-09 10:00:42'),
(2, 4, 25, '1100', 'expired', 'One week', NULL, '2021-12-13 19:48:00', '2021-12-20 05:00:37', '2021-12-14 00:48:00', '2021-12-21 10:00:28'),
(3, 4, 25, '1000', 'expired', 'One week', NULL, '2021-12-21 13:42:48', '2021-12-28 05:00:43', '2021-12-21 18:42:48', '2021-12-29 10:00:45'),
(5, 4, 25, '1200', 'expired', 'One week', NULL, '2021-12-28 21:26:46', '2022-01-04 05:00:06', '2021-12-29 02:26:46', '2022-01-05 10:00:19'),
(6, 4, 25, '1200', 'expired', 'One week', NULL, '2022-01-04 03:52:13', '2022-01-10 05:00:33', '2022-01-04 08:52:13', '2022-01-11 10:00:19'),
(9, 1, 24, '100', 'expired', 'Three months', NULL, '2022-01-24 17:40:10', '2022-04-24 04:00:25', '2022-01-24 22:40:10', '2022-04-25 08:00:46'),
(10, 4, 24, '1000', 'expired', 'One week', NULL, '2022-01-26 19:29:37', '2022-02-01 05:01:05', '2022-01-27 00:29:37', '2022-02-03 10:00:21'),
(11, 3, 24, '500', 'expired', 'One month', NULL, '2022-01-26 19:31:08', '2022-01-26 19:31:08', '2022-01-27 00:31:08', '2022-02-26 10:00:16'),
(12, 1, 24, '1000', 'expired', 'Three months', NULL, '2022-01-26 19:32:41', '2022-04-25 04:00:50', '2022-01-27 00:32:41', '2022-04-27 08:00:44'),
(13, 1, 24, '100', 'expired', 'Three months', NULL, '2022-02-06 14:47:49', '2022-05-06 04:00:19', '2022-02-06 19:47:49', '2022-05-08 08:00:17'),
(14, 2, 24, '200', 'expired', 'One month', NULL, '2022-02-07 08:45:14', '2022-03-03 05:00:28', '2022-02-07 13:45:14', '2022-03-10 10:00:10'),
(15, 3, 25, '500', 'expired', 'One month', NULL, '2022-03-09 21:21:44', '2022-03-09 21:21:44', '2022-03-10 02:21:44', '2022-04-09 08:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `wdmethods`
--

CREATE TABLE `wdmethods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `minimum` varchar(255) DEFAULT NULL,
  `maximum` varchar(255) DEFAULT NULL,
  `charges_fixed` varchar(255) DEFAULT NULL,
  `charges_percentage` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wdmethods`
--

INSERT INTO `wdmethods` (`id`, `name`, `minimum`, `maximum`, `charges_fixed`, `charges_percentage`, `duration`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bitcoin', '10', '10000', '0', '2', 'Instant', 'withdrawal', 'enabled', '2021-03-11 11:53:32', '2022-01-23 00:27:45'),
(2, 'Ethereum', '10', '2100', '0', '0', 'Instant', 'withdrawal', 'enabled', '2021-03-22 10:36:03', '2021-03-22 10:36:03'),
(3, 'Litecoin', '100', '10000', '0', '0', 'Instant', 'withdrawal', 'enabled', '2021-03-22 10:36:33', '2021-03-22 10:36:33'),
(4, 'Bank transfer', '10', '2100', '0', '0', 'Instant', 'withdrawal', 'enabled', '2021-03-22 10:37:08', '2021-03-22 10:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `to_deduct` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `txn_id`, `user`, `uname`, `amount`, `to_deduct`, `status`, `payment_mode`, `created_at`, `updated_at`) VALUES
(6, NULL, 25, NULL, '15677', '15990.54', 'Processed', 'Bitcoin', '2022-03-09 01:13:09', '2022-03-09 01:25:39'),
(7, NULL, 25, NULL, '5000', '5100', 'Processed', 'Bitcoin', '2022-03-16 20:45:26', '2022-03-17 20:42:03'),
(8, NULL, 25, NULL, '10000', '10200', 'Pending', 'Bitcoin', '2022-05-06 22:09:02', '2022-05-06 22:09:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_transactions`
--
ALTER TABLE `cp_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt4_details`
--
ALTER TABLE `mt4_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonies`
--
ALTER TABLE `testimonies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp__transactions`
--
ALTER TABLE `tp__transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upgrades`
--
ALTER TABLE `upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogs`
--
ALTER TABLE `userlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wdmethods`
--
ALTER TABLE `wdmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cp_transactions`
--
ALTER TABLE `cp_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mt4_details`
--
ALTER TABLE `mt4_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonies`
--
ALTER TABLE `testimonies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tp__transactions`
--
ALTER TABLE `tp__transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `upgrades`
--
ALTER TABLE `upgrades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlogs`
--
ALTER TABLE `userlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `user_plans`
--
ALTER TABLE `user_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wdmethods`
--
ALTER TABLE `wdmethods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
