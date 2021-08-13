-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2021 at 08:27 PM
-- Server version: 5.7.35
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digiprof_nexusdoc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about_description`, `sort_description`, `about_image`, `background_image`, `mission_description`, `mission_image`, `vision_description`, `vision_image`, `created_at`, `updated_at`) VALUES
(4, '<h1 style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; border: 0px; outline: none; line-height: 1.3; font-size: 36px; font-family: Nunito, sans-serif; color: rgb(51, 51, 51);\">Special Doctors Are Dedicated to Our Patients</h1><div><div>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</div><div><br></div><div>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</div><div><br></div><div>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</div></div>', 'psum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at upsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at upsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at upsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum khalil ridens expetenda id sit, at u', 'uploads/website-images/about-2021-07-14-11-58-01-8406.jpg', 'uploads/website-images/about-background-2021-07-14-11-57-25-4800.jpg', '<h1><b>Our Mission</b></h1><p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'uploads/website-images/mission-2021-07-14-11-56-43-5678.jpg', '<h1><span style=\"font-weight: bolder;\">Our Vision</span></h1><p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'uploads/website-images/mission-2021-07-14-11-56-57-1836.jpg', '2021-07-12 01:11:22', '2021-07-14 17:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `admin_type` int(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `image`, `forget_password_token`, `status`, `admin_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'John Doe', 'admin@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uploads/website-images/John Doe-2021-07-13-12-19-54-9897.jpg', NULL, 1, 1, 'myPzDtshWsA36iMI0rztNeLD2gXmnpxLUyE4qz41mq8w5TvD0avukJLu3E3I', '2021-06-25 23:14:28', '2021-07-13 06:20:41'),
(9, 'John Peter', 'john@gmail.com', '$2y$10$tfhP/W1b7NzP5Up8sK35wOrPJJo0wlcAQA4WjSArO4k3QHtcEXDN6', 'uploads/website-images/John Peter-2021-07-13-12-09-24-5551.jpg', NULL, 1, 0, NULL, '2021-07-13 05:59:06', '2021-07-13 06:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `advice`
--

CREATE TABLE `advice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `advice` text COLLATE utf8mb4_unicode_ci,
  `test_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advice`
--

INSERT INTO `advice` (`id`, `appointment_id`, `advice`, `test_name`, `test_description`, `created_at`, `updated_at`) VALUES
(1, 22, 'N/A', NULL, 'N/A', '2021-07-13 19:09:34', '2021-07-26 02:58:05'),
(2, 2, 'N/A', NULL, 'N/A', '2021-07-26 03:32:44', '2021-07-26 03:32:44'),
(3, 4, '', NULL, '', '2021-07-26 03:38:42', '2021-07-26 03:39:04'),
(4, 6, NULL, NULL, NULL, '2021-08-07 16:28:27', '2021-08-07 16:28:27'),
(5, 3, NULL, NULL, NULL, '2021-08-07 16:31:26', '2021-08-07 16:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(191) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `appointment_fee` double NOT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT '0',
  `payment_transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_description` text COLLATE utf8mb4_unicode_ci,
  `blood_pressure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulse_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temperature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem_description` text COLLATE utf8mb4_unicode_ci,
  `habits` text COLLATE utf8mb4_unicode_ci,
  `already_treated` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `order_id`, `doctor_id`, `user_id`, `day_id`, `schedule_id`, `date`, `appointment_fee`, `payment_status`, `payment_transaction_id`, `payment_method`, `payment_description`, `blood_pressure`, `pulse_rate`, `temperature`, `problem_description`, `habits`, `already_treated`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 6, 6, '2021-07-26', 10, 1, 'txn_1JCqU1HWLjS9yT0SIqsh3is8', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-07-13 18:37:28', '2021-07-13 18:37:28'),
(2, 1, 2, 1, 5, 11, '2021-07-14', 14, 1, 'txn_1JCqU1HWLjS9yT0SIqsh3is8', 'Stripe', NULL, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.', '[\"3\",\"4\"]', 1, 0, '2021-07-13 18:37:28', '2021-07-14 16:26:27'),
(3, 2, 1, 1, 6, 6, '2021-08-07', 10, 1, NULL, 'Paypal', NULL, '56', '56', '56', 'test problem', '[\"3\",\"4\"]', 1, 0, '2021-07-15 15:25:27', '2021-08-07 16:31:26'),
(4, 3, 2, 1, 6, 12, '2021-07-26', 14, 1, 'txn_1JDWTMHWLjS9yT0SQ7HfKQEr', 'Stripe', NULL, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.', '[\"3\",\"4\"]', 1, 0, '2021-07-15 15:27:34', '2021-07-26 03:38:42'),
(5, 4, 2, 1, 6, 12, '2021-08-07', 14, 1, NULL, 'Bank Transfer', 'Sent money from:\r\nBank: ABC\r\nAcc Name: AAA\r\nRouting Number: 023829389', NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.', '[\"3\",\"4\"]', 1, 0, '2021-07-15 17:02:37', '2021-07-26 03:36:06'),
(6, 5, 1, 1, 5, 5, '2021-08-07', 10, 1, NULL, 'Bank Transfer', 'dbbl test bank name', '45', '45', '45', 'test problem', '[\"2\",\"3\"]', 1, 0, '2021-08-07 16:23:35', '2021-08-07 16:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us_bg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_and_condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_and_policy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `admin_login`, `doctor_login`, `about_us`, `subscribe_us`, `doctor`, `service`, `department`, `testimonial`, `faq`, `contact`, `profile`, `login`, `payment`, `overview`, `about_us_bg`, `custom_page`, `blog`, `terms_and_condition`, `privacy_and_policy`, `default_profile`, `created_at`, `updated_at`) VALUES
(1, 'uploads/website-images/admin_login-banner-2021-07-13-01-08-56-9245.jpg', 'uploads/website-images/doctor_login-banner-2021-07-13-01-08-36-4988.jpg', 'uploads/website-images/about-us-banner-2021-07-13-01-05-26-1473.png', 'uploads/website-images/subscribe-us-banner-2021-07-13-01-05-41-9006.png', 'uploads/website-images/doctor-banner-2021-07-13-01-05-49-8139.png', 'uploads/website-images/service-banner-2021-07-13-01-05-54-1779.png', 'uploads/website-images/department-banner-2021-07-13-01-06-00-3980.png', 'uploads/website-images/testimonial-banner-2021-07-13-01-06-06-7179.png', 'uploads/website-images/faq-banner-2021-07-13-01-06-13-2415.png', 'uploads/website-images/contact-banner-2021-07-13-01-06-20-4615.png', 'uploads/website-images/profile-banner-2021-07-13-01-06-33-7252.png', 'uploads/website-images/login-banner-2021-07-13-01-06-27-7536.png', 'uploads/website-images/payment-banner-2021-07-13-01-06-40-9177.png', 'uploads/website-images/overview-banner-2021-07-13-04-02-53-5069.png', 'default-images/about-us-banner-2021-07-11-06-16-08-2518.jpg', 'uploads/website-images/custom_page-banner-2021-07-13-01-06-46-2169.png', 'uploads/website-images/blog-banner-2021-07-13-01-06-52-4914.png', 'uploads/website-images/terms_and_condition-banner-2021-07-13-01-07-06-6500.png', 'uploads/website-images/privacy_and_policy-banner-2021-07-13-01-06-59-8605.png', 'uploads/website-images/default_profile-2021-07-13-12-03-28-7216.jpg', NULL, '2021-07-13 10:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `show_feature_blog` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `title`, `slug`, `sort_description`, `description`, `seo_title`, `seo_description`, `thumbnail_image`, `feature_image`, `status`, `show_feature_blog`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet per mollis', 'lorem-ipsum-dolor-sit-amet-per-mollis', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br><br>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br><br>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 'Lorem ipsum dolor sit amet per mollis', 'Lorem ipsum dolor sit amet per mollis', 'uploads/custom-images/blog-thumbnail-2021-07-14-11-23-20-7253.jpg', 'uploads/custom-images/blog-feature-2021-07-14-11-23-21-5744.jpg', 1, 1, '2021-07-13 04:00:22', '2021-07-14 17:23:21'),
(2, 2, 'Ut alterum dissen eam nobis audire', 'ut-alterum-dissen-eam-nobis-audire', 'Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br><br>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br><br>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 'Ut alterum dissentiunt eam nobis audire verterem', 'Ut alterum dissentiunt eam nobis audire verterem', 'uploads/custom-images/blog-thumbnail-2021-07-14-11-23-34-6988.jpg', 'uploads/custom-images/blog-feature-2021-07-14-11-23-34-2660.jpg', 1, 1, '2021-07-13 04:03:25', '2021-07-14 17:23:34'),
(3, 1, 'Nobis audire verterem ut vel vidisse', 'nobis-audire-verterem-ut-vel-vidisse', 'Nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br><br>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br><br>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 'Nobis audire verterem ut vel vidisse', 'Nobis audire verterem ut vel vidisse', 'uploads/custom-images/blog-thumbnail-2021-07-14-11-22-51-8321.jpg', 'uploads/custom-images/blog-feature-2021-07-14-11-22-51-2976.jpg', 1, 1, '2021-07-14 17:22:52', '2021-07-14 17:22:52'),
(4, 1, 'Omittam adversarium suscipiantur mea ea', 'omittam-adversarium-suscipiantur-mea-ea', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br><br>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br><br>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 'Omittam adversarium suscipiantur mea ea', 'Omittam adversarium suscipiantur mea ea', 'uploads/custom-images/blog-thumbnail-2021-07-14-11-24-25-8495.jpg', 'uploads/custom-images/blog-feature-2021-07-14-11-24-25-6322.jpg', 1, 1, '2021-07-14 17:24:25', '2021-07-14 17:24:25'),
(5, 2, 'Mea graece suscipiantur omnis dolorem expetenda', 'mea-graece-suscipiantur-omnis-dolorem-expetenda', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br><br>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br><br>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 'Mea graece suscipiantur omnis dolorem expetenda', 'Mea graece suscipiantur omnis dolorem expetenda', 'uploads/custom-images/blog-thumbnail-2021-07-14-11-25-29-7439.jpg', 'uploads/custom-images/blog-feature-2021-07-14-11-25-30-4883.jpg', 1, 1, '2021-07-14 17:25:30', '2021-07-14 17:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Persontal Treatment', 'persontal-treatment', 1, '2021-07-13 03:43:06', '2021-07-13 03:47:30'),
(2, 'Mental Health', 'mental-health', 1, '2021-07-13 03:46:40', '2021-07-14 17:08:05'),
(20, 'Dental Health', 'dental-health', 1, '2021-07-13 08:40:44', '2021-07-14 17:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `phone`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Robin', 'robin@gmail.com', NULL, 'Nice website.', 1, '2021-07-13 06:48:59', '2021-07-13 06:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `cancel_orders`
--

CREATE TABLE `cancel_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointment_fee` double NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointment_qty` int(11) NOT NULL,
  `return_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `condition_privacies`
--

CREATE TABLE `condition_privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_condition` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_policy` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `condition_privacies`
--

INSERT INTO `condition_privacies` (`id`, `terms_condition`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span><br></p><p><span style=\"font-size: 1rem;\">Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea, sensibus sententiae voluptatibus duo ad. Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.</span><br></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span><br></p><p><span style=\"font-size: 1rem;\">Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea, sensibus sententiae voluptatibus duo ad. Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.</span></p>', '2021-07-13 16:12:31', '2021-07-13 16:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phones` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emails` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_embed_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`id`, `header`, `description`, `phones`, `emails`, `address`, `about`, `map_embed_code`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', 'Please fill in the following form to contact us quickly.', '(347) 430-9510', 'support@websolutionus.com', '95 South Park Avenue,  New York, USA', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3026.929848957016!2d-73.65008138515348!3d40.65347674913173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c27b4c1cf34df7%3A0x83ce632b88556b58!2zOTUgUyBQYXJrIEF2ZSwgUm9ja3ZpbGxlIENlbnRyZSwgTlkgMTE1NzAsIOCmruCmvuCmsOCnjeCmleCmv-CmqCDgpq_gp4HgppXgp43gpqTgprDgpr7gprfgp43gpp_gp43gprA!5e0!3m2!1sbn!2sbd!4v1626145586281!5m2!1sbn!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Copyright 2021, Websolutionus. All Rights Reserved.', '2021-06-11 03:01:41', '2021-07-13 05:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_notification` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `phone`, `facebook`, `twitter`, `pinterest`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(3, 'info@website.com', '111-233-1273', '#', '#', '#', '#', NULL, '2021-06-11 03:18:20', '2021-07-13 03:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `custome_pages`
--

CREATE TABLE `custome_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custome_pages`
--

INSERT INTO `custome_pages` (`id`, `page_name`, `slug`, `description`, `seo_title`, `seo_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Custom Page 1', 'custom-page-1', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span><br></p>', 'Custom Page 1', 'Custom Page 1', 1, '2021-07-13 14:13:13', '2021-07-13 14:13:13'),
(2, 'Custom Page 2', 'custom-page-2', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span></p>', 'Custom Page 2', 'Custom Page 2', 1, '2021-07-13 14:13:29', '2021-07-13 14:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `day`, `custom_day`, `created_at`, `updated_at`) VALUES
(1, 'Saturday', 'Saturday', NULL, '2021-07-15 02:27:30'),
(2, 'Sunday', 'Sunday', NULL, '2021-07-15 02:27:35'),
(3, 'Monday', 'Monday', NULL, '2021-07-15 02:27:39'),
(4, 'Tuesday', 'Tuesday', NULL, '2021-07-15 02:27:45'),
(5, 'Wednesday', 'Wednesday', NULL, '2021-07-15 02:27:49'),
(6, 'Thursday', 'Thursday', NULL, '2021-07-15 02:27:53'),
(7, 'Friday', 'Friday', NULL, '2021-07-15 02:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `slug`, `description`, `seo_title`, `seo_description`, `thumbnail_image`, `show_homepage`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Neurology', 'neurology', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Neurology', 'Neurology', 'uploads/custom-images/department-feature-2021-07-13-10-17-19-8044.jpg', 1, 1, '2021-07-13 16:17:19', '2021-07-13 17:28:45'),
(2, 'Cardiology', 'cardiology', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Cardiology', 'Cardiology', 'uploads/custom-images/department-feature-2021-07-13-10-17-41-3768.jpg', 1, 1, '2021-07-13 16:17:41', '2021-07-13 16:17:41'),
(3, 'Ophthalmology', 'ophthalmology', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Ophthalmology', 'Ophthalmology', 'uploads/custom-images/department-feature-2021-07-13-10-18-02-4848.jpg', 1, 1, '2021-07-13 16:18:02', '2021-07-13 16:18:02'),
(4, 'Pediatric', 'pediatric', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Pediatric', 'Pediatric', 'uploads/custom-images/department-feature-2021-07-13-10-18-29-5800.jpg', 1, 1, '2021-07-13 16:18:29', '2021-07-13 16:18:29'),
(5, 'Radiology', 'radiology', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Radiology', 'Radiology', 'uploads/custom-images/department-feature-2021-07-13-10-18-50-4264.jpg', 1, 1, '2021-07-13 16:18:50', '2021-07-13 16:18:50'),
(6, 'Urology', 'urology', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Urology', 'Urology', 'uploads/custom-images/department-feature-2021-07-13-10-19-12-1632.jpg', 1, 1, '2021-07-13 16:19:12', '2021-07-13 16:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `department_faqs`
--

CREATE TABLE `department_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_faqs`
--

INSERT INTO `department_faqs` (`id`, `department_id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet per?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-14 17:02:06', '2021-07-14 17:02:06'),
(2, 1, 'Ut alterum dissentiunt eam nobis?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-14 17:02:20', '2021-07-14 17:02:20'),
(3, 2, 'Est odio quaeque legimus ad eu sumo diam?', '<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-14 17:02:39', '2021-07-14 17:02:39'),
(4, 2, 'At vel virtute inermis accusamus mei dicat labore in?', '<p>At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel.<br></p>', 1, '2021-07-14 17:02:54', '2021-07-14 17:02:54'),
(5, 3, 'Simul bonorum his id solum percipit probatus?', '<p>Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>', 1, '2021-07-14 17:03:12', '2021-07-14 17:03:12'),
(6, 3, 'Ne primis electram reformidans pro mea perpetua?', '<p>Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea, sensibus sententiae voluptatibus duo ad.<br></p>', 1, '2021-07-14 17:03:26', '2021-07-14 17:03:26'),
(7, 4, 'Ut clita scribentur quo in movet reprehendunt?', '<p>Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.<br></p>', 1, '2021-07-14 17:03:45', '2021-07-14 17:03:45'),
(8, 4, 'Lorem ipsum dolor sit amet per mollis?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-14 17:03:59', '2021-07-14 17:03:59'),
(9, 5, 'Ut alterum dissentiunt eam nobis audire?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-14 17:04:16', '2021-07-14 17:04:16'),
(10, 5, 'Eu sumo diam fabellas vim in mea?', '<p>Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-14 17:04:30', '2021-07-14 17:04:30'),
(11, 6, 'Mei dicat labore in te atqui aliquip duo?', '<p>Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel.&nbsp;<br></p>', 1, '2021-07-14 17:04:49', '2021-07-14 17:04:49'),
(12, 6, 'Simul bonorum his id solum percipit?', '<p>Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>', 1, '2021-07-14 17:05:01', '2021-07-14 17:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `department_images`
--

CREATE TABLE `department_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `small_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `large_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_images`
--

INSERT INTO `department_images` (`id`, `department_id`, `small_image`, `large_image`, `created_at`, `updated_at`) VALUES
(4, 10, 'uploads/custom-images/department-small-2021-07-13-10-39-34-73800.png', 'uploads/custom-images/department-large-2021-07-13-10-39-34-84430.png', '2021-07-13 16:39:34', '2021-07-13 16:39:34'),
(5, 10, 'uploads/custom-images/department-small-2021-07-13-10-39-34-45371.png', 'uploads/custom-images/department-large-2021-07-13-10-39-34-44881.png', '2021-07-13 16:39:35', '2021-07-13 16:39:35'),
(8, 13, 'uploads/custom-images/department-small-2021-07-13-10-44-20-28760.png', 'uploads/custom-images/department-large-2021-07-13-10-44-20-21160.png', '2021-07-13 16:44:20', '2021-07-13 16:44:20'),
(10, 1, 'uploads/custom-images/department-small-2021-07-14-10-02-50-65570.jpg', 'uploads/custom-images/department-large-2021-07-14-10-02-50-70010.jpg', '2021-07-14 16:02:51', '2021-07-14 16:02:51'),
(11, 1, 'uploads/custom-images/department-small-2021-07-14-10-02-51-18111.jpg', 'uploads/custom-images/department-large-2021-07-14-10-02-51-83791.jpg', '2021-07-14 16:02:51', '2021-07-14 16:02:51'),
(12, 1, 'uploads/custom-images/department-small-2021-07-14-10-02-51-60102.jpg', 'uploads/custom-images/department-large-2021-07-14-10-02-51-87122.jpg', '2021-07-14 16:02:51', '2021-07-14 16:02:51'),
(13, 1, 'uploads/custom-images/department-small-2021-07-14-10-02-51-94493.jpg', 'uploads/custom-images/department-large-2021-07-14-10-02-51-56583.jpg', '2021-07-14 16:02:51', '2021-07-14 16:02:51'),
(14, 2, 'uploads/custom-images/department-small-2021-07-14-10-09-43-74570.jpg', 'uploads/custom-images/department-large-2021-07-14-10-09-43-90280.jpg', '2021-07-14 16:09:44', '2021-07-14 16:09:44'),
(15, 2, 'uploads/custom-images/department-small-2021-07-14-10-09-44-60441.jpg', 'uploads/custom-images/department-large-2021-07-14-10-09-44-69371.jpg', '2021-07-14 16:09:44', '2021-07-14 16:09:44'),
(16, 2, 'uploads/custom-images/department-small-2021-07-14-10-09-44-41842.jpg', 'uploads/custom-images/department-large-2021-07-14-10-09-44-98882.jpg', '2021-07-14 16:09:44', '2021-07-14 16:09:44'),
(17, 2, 'uploads/custom-images/department-small-2021-07-14-10-09-44-22643.jpg', 'uploads/custom-images/department-large-2021-07-14-10-09-44-16243.jpg', '2021-07-14 16:09:45', '2021-07-14 16:09:45'),
(18, 2, 'uploads/custom-images/department-small-2021-07-14-10-09-45-23524.jpg', 'uploads/custom-images/department-large-2021-07-14-10-09-45-55814.jpg', '2021-07-14 16:09:45', '2021-07-14 16:09:45'),
(19, 3, 'uploads/custom-images/department-small-2021-07-14-10-24-15-74100.jpg', 'uploads/custom-images/department-large-2021-07-14-10-24-15-39260.jpg', '2021-07-14 16:24:15', '2021-07-14 16:24:15'),
(20, 3, 'uploads/custom-images/department-small-2021-07-14-10-24-15-47831.jpg', 'uploads/custom-images/department-large-2021-07-14-10-24-15-31391.jpg', '2021-07-14 16:24:15', '2021-07-14 16:24:15'),
(21, 3, 'uploads/custom-images/department-small-2021-07-14-10-24-15-16292.jpg', 'uploads/custom-images/department-large-2021-07-14-10-24-15-96972.jpg', '2021-07-14 16:24:16', '2021-07-14 16:24:16'),
(22, 3, 'uploads/custom-images/department-small-2021-07-14-10-24-16-41193.jpg', 'uploads/custom-images/department-large-2021-07-14-10-24-16-63033.jpg', '2021-07-14 16:24:16', '2021-07-14 16:24:16'),
(23, 3, 'uploads/custom-images/department-small-2021-07-14-10-24-16-77704.jpg', 'uploads/custom-images/department-large-2021-07-14-10-24-16-10014.jpg', '2021-07-14 16:24:16', '2021-07-14 16:24:16'),
(24, 4, 'uploads/custom-images/department-small-2021-07-14-10-47-57-85240.jpg', 'uploads/custom-images/department-large-2021-07-14-10-47-57-86060.jpg', '2021-07-14 16:47:57', '2021-07-14 16:47:57'),
(25, 4, 'uploads/custom-images/department-small-2021-07-14-10-47-57-57851.jpg', 'uploads/custom-images/department-large-2021-07-14-10-47-57-70751.jpg', '2021-07-14 16:47:57', '2021-07-14 16:47:57'),
(26, 4, 'uploads/custom-images/department-small-2021-07-14-10-47-57-47472.jpg', 'uploads/custom-images/department-large-2021-07-14-10-47-57-42522.jpg', '2021-07-14 16:47:57', '2021-07-14 16:47:57'),
(27, 4, 'uploads/custom-images/department-small-2021-07-14-10-47-57-31923.jpg', 'uploads/custom-images/department-large-2021-07-14-10-47-57-64253.jpg', '2021-07-14 16:47:57', '2021-07-14 16:47:57'),
(28, 4, 'uploads/custom-images/department-small-2021-07-14-10-47-58-52004.jpg', 'uploads/custom-images/department-large-2021-07-14-10-47-58-14064.jpg', '2021-07-14 16:47:58', '2021-07-14 16:47:58'),
(29, 4, 'uploads/custom-images/department-small-2021-07-14-10-47-58-18295.jpg', 'uploads/custom-images/department-large-2021-07-14-10-47-58-84275.jpg', '2021-07-14 16:47:58', '2021-07-14 16:47:58'),
(30, 5, 'uploads/custom-images/department-small-2021-07-14-10-51-50-65890.jpg', 'uploads/custom-images/department-large-2021-07-14-10-51-50-36190.jpg', '2021-07-14 16:51:51', '2021-07-14 16:51:51'),
(31, 5, 'uploads/custom-images/department-small-2021-07-14-10-51-51-49081.jpg', 'uploads/custom-images/department-large-2021-07-14-10-51-51-81901.jpg', '2021-07-14 16:51:51', '2021-07-14 16:51:51'),
(32, 5, 'uploads/custom-images/department-small-2021-07-14-10-51-51-40552.jpg', 'uploads/custom-images/department-large-2021-07-14-10-51-51-86752.jpg', '2021-07-14 16:51:51', '2021-07-14 16:51:51'),
(33, 5, 'uploads/custom-images/department-small-2021-07-14-10-51-51-17583.jpg', 'uploads/custom-images/department-large-2021-07-14-10-51-51-40843.jpg', '2021-07-14 16:51:52', '2021-07-14 16:51:52'),
(34, 5, 'uploads/custom-images/department-small-2021-07-14-10-51-52-11854.jpg', 'uploads/custom-images/department-large-2021-07-14-10-51-52-22254.jpg', '2021-07-14 16:51:52', '2021-07-14 16:51:52'),
(35, 6, 'uploads/custom-images/department-small-2021-07-14-10-56-14-72280.jpg', 'uploads/custom-images/department-large-2021-07-14-10-56-14-38210.jpg', '2021-07-14 16:56:14', '2021-07-14 16:56:14'),
(36, 6, 'uploads/custom-images/department-small-2021-07-14-10-56-14-51101.jpg', 'uploads/custom-images/department-large-2021-07-14-10-56-14-87921.jpg', '2021-07-14 16:56:14', '2021-07-14 16:56:14'),
(37, 6, 'uploads/custom-images/department-small-2021-07-14-10-56-14-15042.jpg', 'uploads/custom-images/department-large-2021-07-14-10-56-14-40512.jpg', '2021-07-14 16:56:14', '2021-07-14 16:56:14'),
(38, 6, 'uploads/custom-images/department-small-2021-07-14-10-56-14-31513.jpg', 'uploads/custom-images/department-large-2021-07-14-10-56-14-80673.jpg', '2021-07-14 16:56:15', '2021-07-14 16:56:15'),
(39, 6, 'uploads/custom-images/department-small-2021-07-14-10-56-15-73214.jpg', 'uploads/custom-images/department-large-2021-07-14-10-56-15-29004.jpg', '2021-07-14 16:56:15', '2021-07-14 16:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) NOT NULL,
  `location_id` int(191) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci,
  `educations` longtext COLLATE utf8mb4_unicode_ci,
  `designations` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `experience` longtext COLLATE utf8mb4_unicode_ci,
  `qualifications` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `slug`, `seo_title`, `seo_description`, `email`, `password`, `fee`, `location_id`, `phone`, `department_id`, `about`, `educations`, `designations`, `address`, `experience`, `qualifications`, `image`, `status`, `show_homepage`, `forget_password_token`, `remember_token`, `created_at`, `updated_at`, `facebook`, `twitter`, `linkedin`) VALUES
(1, 'Dr. Tommy Shank', 'dr-tommy-shank', 'Dr. Tommy Shank', 'Dr. Tommy Shank', 'tommy@gmail.com', '$2y$10$t79zYm851QBf7muOlR5H4O8HY9K87R/eiBQn7LV0Ekk1gFtxQx6C2', 10, 1, '111-222-1234', 1, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.\r\n\r\nUt alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'uploads/custom-images/doctor-2021-07-13-11-31-21-8791.png', 1, 1, NULL, NULL, '2021-07-13 17:31:21', '2021-07-14 15:55:33', '#', '#', NULL),
(2, 'Dr. Aaron Bemis', 'dr-aaron-bemis', 'Dr. Aaron Bemis', 'Dr. Aaron Bemis', 'doctor@gmail.com', '$2y$10$gMGBW24x1c8V6gU90qMgDuO3urT/XFrlAupr2YH2.ZvmiGvdK8cWe', 14, 1, '111-222-1236', 2, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.\r\n\r\nUt alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span><br></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span></p>', 'uploads/custom-images/doctor-2021-07-14-04-06-04-9713.jpg', 1, 1, NULL, NULL, '2021-07-13 17:35:27', '2021-07-14 10:06:10', NULL, '#', '#'),
(4, 'Dr. Jesse Moran', 'dr-jesse-moran', 'Dr. Jesse Moran', 'Dr. Jesse Moran', 'moran@gmail.com', '$2y$10$lISNQP7zIQRZRm90OG.I7uqzVNFfCYCtshY.2.ZYdu4QalKkXJeya', 12, 1, '111-222-3333', 3, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.\r\n\r\nUt alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'uploads/custom-images/doctor-2021-07-14-12-44-35-9321.jpg', 1, 1, NULL, NULL, '2021-07-14 06:44:35', '2021-07-14 06:58:40', NULL, NULL, NULL),
(5, 'Dr. Miguel Silva', 'dr-miguel-silva', 'Dr. Miguel Silva', 'Dr. Miguel Silva', 'silva@gmail.com', '$2y$10$FTV/PVYa2Urr/txQNYR2R..pI2BVOLJ1IPzFEbX0CG6MGgVl05uYG', 9, 1, '111-444-5454', 4, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.\r\n\r\nUt alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'uploads/custom-images/doctor-2021-07-14-12-49-15-3472.jpg', 1, 1, NULL, NULL, '2021-07-14 06:49:16', '2021-07-14 06:50:45', NULL, NULL, '#');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_social_links`
--

CREATE TABLE `doctor_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `social_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Password Reset', 'Password Reset', '<h4>Dear <b>{{name}}</b>,</h4>\r\n    <p>Do you want to reset your password? Please Click the following link and Reset Your Password.</p>', NULL, '2021-07-04 02:21:18'),
(2, 'contact email', 'Contact Email', '<p><span style=\"font-size: 1rem;\">Name: {{name}}</span></p><p><span style=\"font-size: 1rem;\">Email: {{email}}</span><br></p>\r\n<p>Phone: {{phone}}</p>\r\n<p>Subject: {{subject}}</p>\r\n<p>Message: {{message}}</p>', NULL, '2021-07-13 06:59:36'),
(3, 'doctor login information', 'Doctor Login Information', '<h4>Hi, <b>{{doctor_name}}</b></h4>\r\n<p>Your Account has been created successfully. Your login info here</p>\r\n<p>Email: <b>{{email}}</b></p>\r\n<p>Password: <b>{{password}}</b></p>', NULL, '2021-07-13 06:59:25'),
(4, 'subscribe notification', 'Subscribe Notification', '<h2>Hi there,</h2>\r\n<p>Congratulations! Your Subscription has been created successfully. Please Click the following link and Verified Your Subscription. If you won\'t approve this link, after 24hourse your subscription will be denay</p>', NULL, '2021-07-13 06:59:44'),
(5, 'user verification', 'User Verification', '<h4>Dear <b>{{user_name}}</b>,</h4>\r\n<p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>', NULL, '2021-07-13 06:59:52'),
(6, 'order successfull', 'Order Successfull', '<h4>Dear <b>{{patient_name}}</b>,</h4><p> Thanks for your new order. Your order id is <b>{{orderId}}</b>. </p><p>\r\nPayment Method :<b> {{payment_method}}</b>\r\n</p><p>Total amount:<b> {{amount}}</b></p><p><b>{{order_details}}</b></p><p><b><br></b></p>', NULL, '2021-07-13 07:00:02'),
(7, 'pre notification for appointment', 'Pre-Notification for Appointment', '<p>hi {{patient_name}},</p><p>your schedule time is&nbsp; {{schedule}}</p><p>Date:&nbsp;<span style=\"font-size: 1rem;\">{{date}}</span></p><p>Doctor: {{doctor_name}}</p>', NULL, '2021-07-13 07:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category_id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet per mollis?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu.&nbsp;<span style=\"font-size: 1rem;\">Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</span></p>', 1, '2021-07-13 15:25:48', '2021-07-16 10:57:54'),
(2, 1, 'Ut alterum dissentiunt eam nobis audire?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-13 15:26:06', '2021-07-13 15:26:06'),
(3, 1, 'Est odio quaeque legimus ad?', '<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro.<br></p>', 1, '2021-07-13 15:26:17', '2021-07-13 15:26:17'),
(4, 2, 'Amet facer eripuit cu his mea at quis?', '<p>Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-13 15:26:39', '2021-07-13 15:26:39'),
(5, 2, 'Mei dicat labore in te atqui aliquip?', '<p>Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea.<br></p>', 1, '2021-07-13 15:26:58', '2021-07-13 15:26:58'),
(6, 2, 'Qui populo oporteat eu sea no semper?', '<p>Qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>', 1, '2021-07-13 15:27:17', '2021-07-13 15:27:17'),
(7, 3, 'Ne primis electram reformidans pro mea?', '<p>Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea.<br></p>', 1, '2021-07-13 15:27:41', '2021-07-13 15:27:41'),
(8, 3, 'Sensibus sententiae voluptatibus duo ad?', '<p>Sensibus sententiae voluptatibus duo ad. Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.<br></p>', 1, '2021-07-13 15:27:53', '2021-07-13 15:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General Questions', 'general-questions', 1, '2021-07-13 15:24:44', '2021-07-13 15:24:44'),
(2, 'Payment Related Questions', 'payment-related-questions', 1, '2021-07-13 15:25:04', '2021-07-13 15:25:04'),
(3, 'Appointment Related Questions', 'appointment-related-questions', 1, '2021-07-13 15:25:10', '2021-07-13 15:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `description`, `background_image`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Operation Theater', 'We have modern and well furnished operation theatre in the city', 'uploads/custom-images/feature-bg-2021-07-13-04-12-13-4583.jpg', 'fas fa-heartbeat', 1, '2021-07-13 10:12:13', '2021-07-13 10:12:13'),
(2, 'Emergency Services', 'If you need any kind of emergency services, we are always available', 'uploads/custom-images/feature-bg-2021-07-13-04-14-44-8955.jpg', 'fas fa-ambulance', 1, '2021-07-13 10:14:44', '2021-07-13 10:14:44'),
(3, 'Qualified Doctors', 'We have the best qualified doctors to serve our valuable patients', 'uploads/custom-images/feature-bg-2021-07-13-04-15-19-3781.jpg', 'fas fa-user-md', 1, '2021-07-13 10:15:19', '2021-07-13 10:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `habits`
--

CREATE TABLE `habits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `habit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `habits`
--

INSERT INTO `habits` (`id`, `habit`, `created_at`, `updated_at`) VALUES
(2, 'Walking', '2021-07-13 18:56:47', '2021-07-13 18:56:47'),
(3, 'Smoking', '2021-07-13 18:56:47', '2021-07-13 18:56:47'),
(4, 'Alcohol', '2021-07-13 18:56:47', '2021-07-13 18:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_type` tinyint(4) NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `content_quantity` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `first_header`, `second_header`, `description`, `section_name`, `section_type`, `show_homepage`, `content_quantity`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'feature section', 1, 1, 6, NULL, '2021-07-13 10:16:23'),
(2, 'How', 'We Work', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'work section', 2, 1, NULL, NULL, '2021-07-13 13:59:25'),
(3, 'Our', 'Service', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'service section', 3, 1, 6, NULL, '2021-07-13 15:47:07'),
(4, 'Our', 'Departments', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'department ', 4, 1, 6, NULL, '2021-07-13 15:47:52'),
(5, 'Our', 'Patients', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'patient section', 5, 1, 4, NULL, '2021-07-13 15:48:43'),
(6, 'Our', 'Doctors', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'doctor section', 6, 1, 6, NULL, '2021-07-13 15:48:28'),
(7, 'Our', 'Blog', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'blog section', 7, 1, 5, NULL, '2021-07-14 17:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `doctor_id`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '2021-07-21', 0, '2021-07-15 02:31:33', '2021-07-15 02:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NewYork', 1, '2021-07-13 16:31:32', '2021-07-13 17:28:23'),
(2, 'Chicago', 1, '2021-07-13 16:31:38', '2021-07-13 17:28:29'),
(4, 'Boston', 1, '2021-07-13 16:31:59', '2021-07-13 16:31:59'),
(5, 'Los Angeles', 1, '2021-07-13 16:32:05', '2021-07-13 16:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `manage_navigations`
--

CREATE TABLE `manage_navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `show_homepage` tinyint(4) NOT NULL DEFAULT '1',
  `show_aboutus` tinyint(4) NOT NULL DEFAULT '1',
  `show_doctor` tinyint(4) NOT NULL DEFAULT '1',
  `show_department` tinyint(4) NOT NULL DEFAULT '1',
  `show_service` tinyint(4) NOT NULL DEFAULT '1',
  `show_testimonial` tinyint(4) NOT NULL DEFAULT '1',
  `show_faq` tinyint(4) NOT NULL DEFAULT '1',
  `show_blog` tinyint(4) NOT NULL DEFAULT '1',
  `show_contactus` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_navigations`
--

INSERT INTO `manage_navigations` (`id`, `show_homepage`, `show_aboutus`, `show_doctor`, `show_department`, `show_service`, `show_testimonial`, `show_faq`, `show_blog`, `show_contactus`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2021-08-07 17:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `manage_pages`
--

CREATE TABLE `manage_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactus_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactus_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_pages`
--

INSERT INTO `manage_pages` (`id`, `home_title`, `home_meta_description`, `aboutus_title`, `aboutus_meta_description`, `doctor_title`, `doctor_meta_description`, `service_title`, `service_meta_description`, `department_title`, `department_meta_description`, `testimonial_title`, `testimonial_meta_description`, `faq_title`, `faq_meta_description`, `blog_title`, `blog_meta_description`, `contactus_title`, `contactus_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'DocMent - Home', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - About', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Docotrs', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Service', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Departments', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Testimonails', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - FAQ', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Blog', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Contact', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-08-07 17:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `manage_texts`
--

CREATE TABLE `manage_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_modal_title` text COLLATE utf8mb4_unicode_ci,
  `appointment_submit_btn` text COLLATE utf8mb4_unicode_ci,
  `appointment_close_btn` text COLLATE utf8mb4_unicode_ci,
  `doctor_search_btn` text COLLATE utf8mb4_unicode_ci,
  `service_learn_more` text COLLATE utf8mb4_unicode_ci,
  `service_btn` text COLLATE utf8mb4_unicode_ci,
  `department_btn` text COLLATE utf8mb4_unicode_ci,
  `subscribe_btn` text COLLATE utf8mb4_unicode_ci,
  `email_address` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `footer_about_us` text COLLATE utf8mb4_unicode_ci,
  `footer_importent_link` text COLLATE utf8mb4_unicode_ci,
  `footer_recent_post` text COLLATE utf8mb4_unicode_ci,
  `department_read_more_btn` text COLLATE utf8mb4_unicode_ci,
  `department_doctor` text COLLATE utf8mb4_unicode_ci,
  `frequently_ask_questions` text COLLATE utf8mb4_unicode_ci,
  `related_video` text COLLATE utf8mb4_unicode_ci,
  `quick_contact` text COLLATE utf8mb4_unicode_ci,
  `blog_learn_more` text COLLATE utf8mb4_unicode_ci,
  `blog_category` text COLLATE utf8mb4_unicode_ci,
  `blog_recent_post` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `get_comment` text COLLATE utf8mb4_unicode_ci,
  `comment_submit_btn` text COLLATE utf8mb4_unicode_ci,
  `send_msg_btn` text COLLATE utf8mb4_unicode_ci,
  `appointment_fee` text COLLATE utf8mb4_unicode_ci,
  `doctor_info` text COLLATE utf8mb4_unicode_ci,
  `doctor_working_hours` text COLLATE utf8mb4_unicode_ci,
  `doctor_address` text COLLATE utf8mb4_unicode_ci,
  `doctor_education` text COLLATE utf8mb4_unicode_ci,
  `doctor_experience` text COLLATE utf8mb4_unicode_ci,
  `doctor_qualification` text COLLATE utf8mb4_unicode_ci,
  `doctor_book_appointment` text COLLATE utf8mb4_unicode_ci,
  `doctor_book_appointment_title` text COLLATE utf8mb4_unicode_ci,
  `login_btn` text COLLATE utf8mb4_unicode_ci,
  `login_text` text COLLATE utf8mb4_unicode_ci,
  `register_btn` text COLLATE utf8mb4_unicode_ci,
  `register_text` text COLLATE utf8mb4_unicode_ci,
  `forget_pass_btn` text COLLATE utf8mb4_unicode_ci,
  `forget_pass_text` text COLLATE utf8mb4_unicode_ci,
  `reset_pass_btn` text COLLATE utf8mb4_unicode_ci,
  `reset_pass_text` text COLLATE utf8mb4_unicode_ci,
  `appointment_list` text COLLATE utf8mb4_unicode_ci,
  `pay_now` text COLLATE utf8mb4_unicode_ci,
  `stripe` text COLLATE utf8mb4_unicode_ci,
  `stripe_card_error` text COLLATE utf8mb4_unicode_ci,
  `stripe_btn` text COLLATE utf8mb4_unicode_ci,
  `paypal` text COLLATE utf8mb4_unicode_ci,
  `paypal_btn` text COLLATE utf8mb4_unicode_ci,
  `bank_transfer` text COLLATE utf8mb4_unicode_ci,
  `bank_transfer_btn` text COLLATE utf8mb4_unicode_ci,
  `bank_account_info` text COLLATE utf8mb4_unicode_ci,
  `transaction_info` text COLLATE utf8mb4_unicode_ci,
  `total_order` text COLLATE utf8mb4_unicode_ci,
  `total_appointment` text COLLATE utf8mb4_unicode_ci,
  `pending_appointment` text COLLATE utf8mb4_unicode_ci,
  `dashboard` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci,
  `send_message_btn` text COLLATE utf8mb4_unicode_ci,
  `account_info` text COLLATE utf8mb4_unicode_ci,
  `order_list` text COLLATE utf8mb4_unicode_ci,
  `change_password` text COLLATE utf8mb4_unicode_ci,
  `logout` text COLLATE utf8mb4_unicode_ci,
  `update_profile_btn` text COLLATE utf8mb4_unicode_ci,
  `patient_id` text COLLATE utf8mb4_unicode_ci,
  `order_info` text COLLATE utf8mb4_unicode_ci,
  `appointment_history` text COLLATE utf8mb4_unicode_ci,
  `billing_info` text COLLATE utf8mb4_unicode_ci,
  `pyshical_info` text COLLATE utf8mb4_unicode_ci,
  `prescribe` text COLLATE utf8mb4_unicode_ci,
  `advice` text COLLATE utf8mb4_unicode_ci,
  `post_not_found` text COLLATE utf8mb4_unicode_ci,
  `doctor_not_found` text COLLATE utf8mb4_unicode_ci,
  `schedule_not_found` text COLLATE utf8mb4_unicode_ci,
  `select_department` text COLLATE utf8mb4_unicode_ci,
  `select_doctor` text COLLATE utf8mb4_unicode_ci,
  `select_date` text COLLATE utf8mb4_unicode_ci,
  `select_schedule` text COLLATE utf8mb4_unicode_ci,
  `select_location` text COLLATE utf8mb4_unicode_ci,
  `select_gender` text COLLATE utf8mb4_unicode_ci,
  `male` text COLLATE utf8mb4_unicode_ci,
  `female` text COLLATE utf8mb4_unicode_ci,
  `others` text COLLATE utf8mb4_unicode_ci,
  `admin` text COLLATE utf8mb4_unicode_ci,
  `week_day` text COLLATE utf8mb4_unicode_ci,
  `schedule` text COLLATE utf8mb4_unicode_ci,
  `doctor` text COLLATE utf8mb4_unicode_ci,
  `department` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `action` text COLLATE utf8mb4_unicode_ci,
  `total` text COLLATE utf8mb4_unicode_ci,
  `card_number` text COLLATE utf8mb4_unicode_ci,
  `cvc` text COLLATE utf8mb4_unicode_ci,
  `expiration_month` text COLLATE utf8mb4_unicode_ci,
  `expiration_year` text COLLATE utf8mb4_unicode_ci,
  `name` text COLLATE utf8mb4_unicode_ci,
  `guardian_name` text COLLATE utf8mb4_unicode_ci,
  `guardian_phone` text COLLATE utf8mb4_unicode_ci,
  `patient_age` text COLLATE utf8mb4_unicode_ci,
  `occupation` text COLLATE utf8mb4_unicode_ci,
  `gender` text COLLATE utf8mb4_unicode_ci,
  `country` text COLLATE utf8mb4_unicode_ci,
  `city` text COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `date_of_birth` text COLLATE utf8mb4_unicode_ci,
  `weight` text COLLATE utf8mb4_unicode_ci,
  `height` text COLLATE utf8mb4_unicode_ci,
  `helth_insurance_number` text COLLATE utf8mb4_unicode_ci,
  `helth_card_number` text COLLATE utf8mb4_unicode_ci,
  `helth_card_provider` text COLLATE utf8mb4_unicode_ci,
  `blood_group` text COLLATE utf8mb4_unicode_ci,
  `disablities` text COLLATE utf8mb4_unicode_ci,
  `Serial_number` text COLLATE utf8mb4_unicode_ci,
  `date` text COLLATE utf8mb4_unicode_ci,
  `payment` text COLLATE utf8mb4_unicode_ci,
  `treated` text COLLATE utf8mb4_unicode_ci,
  `order_id` text COLLATE utf8mb4_unicode_ci,
  `payment_method` text COLLATE utf8mb4_unicode_ci,
  `transaction_id` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `blood_pressure` text COLLATE utf8mb4_unicode_ci,
  `pulse_rate` text COLLATE utf8mb4_unicode_ci,
  `temperature` text COLLATE utf8mb4_unicode_ci,
  `habits` text COLLATE utf8mb4_unicode_ci,
  `problems` text COLLATE utf8mb4_unicode_ci,
  `medicine_type` text COLLATE utf8mb4_unicode_ci,
  `medicine_name` text COLLATE utf8mb4_unicode_ci,
  `dosage` text COLLATE utf8mb4_unicode_ci,
  `day` text COLLATE utf8mb4_unicode_ci,
  `time` text COLLATE utf8mb4_unicode_ci,
  `test_description` text COLLATE utf8mb4_unicode_ci,
  `password` text COLLATE utf8mb4_unicode_ci,
  `confirm_password` text COLLATE utf8mb4_unicode_ci,
  `change_password_btn` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `not_found` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_texts`
--

INSERT INTO `manage_texts` (`id`, `appointment_modal_title`, `appointment_submit_btn`, `appointment_close_btn`, `doctor_search_btn`, `service_learn_more`, `service_btn`, `department_btn`, `subscribe_btn`, `email_address`, `phone`, `address`, `footer_about_us`, `footer_importent_link`, `footer_recent_post`, `department_read_more_btn`, `department_doctor`, `frequently_ask_questions`, `related_video`, `quick_contact`, `blog_learn_more`, `blog_category`, `blog_recent_post`, `comments`, `get_comment`, `comment_submit_btn`, `send_msg_btn`, `appointment_fee`, `doctor_info`, `doctor_working_hours`, `doctor_address`, `doctor_education`, `doctor_experience`, `doctor_qualification`, `doctor_book_appointment`, `doctor_book_appointment_title`, `login_btn`, `login_text`, `register_btn`, `register_text`, `forget_pass_btn`, `forget_pass_text`, `reset_pass_btn`, `reset_pass_text`, `appointment_list`, `pay_now`, `stripe`, `stripe_card_error`, `stripe_btn`, `paypal`, `paypal_btn`, `bank_transfer`, `bank_transfer_btn`, `bank_account_info`, `transaction_info`, `total_order`, `total_appointment`, `pending_appointment`, `dashboard`, `message`, `send_message_btn`, `account_info`, `order_list`, `change_password`, `logout`, `update_profile_btn`, `patient_id`, `order_info`, `appointment_history`, `billing_info`, `pyshical_info`, `prescribe`, `advice`, `post_not_found`, `doctor_not_found`, `schedule_not_found`, `select_department`, `select_doctor`, `select_date`, `select_schedule`, `select_location`, `select_gender`, `male`, `female`, `others`, `admin`, `week_day`, `schedule`, `doctor`, `department`, `location`, `action`, `total`, `card_number`, `cvc`, `expiration_month`, `expiration_year`, `name`, `guardian_name`, `guardian_phone`, `patient_age`, `occupation`, `gender`, `country`, `city`, `photo`, `date_of_birth`, `weight`, `height`, `helth_insurance_number`, `helth_card_number`, `helth_card_provider`, `blood_group`, `disablities`, `Serial_number`, `date`, `payment`, `treated`, `order_id`, `payment_method`, `transaction_id`, `description`, `blood_pressure`, `pulse_rate`, `temperature`, `habits`, `problems`, `medicine_type`, `medicine_name`, `dosage`, `day`, `time`, `test_description`, `password`, `confirm_password`, `change_password_btn`, `subject`, `comment`, `not_found`, `created_at`, `updated_at`) VALUES
(1, 'Create Appointment', 'Submit', 'Close', 'Search', 'Detailed Service', 'All Services', 'All Departments', 'Subscribe', 'Email Address', 'Phone', 'Address', 'About Us', 'Important Links', 'Recent Posts', 'See Details', 'Department Doctors', 'Frequently Asked Questions', 'Related Videos', 'Quick Contact', 'Details', 'Blog Category', 'Recent Posts', 'Comments', 'Submit Comment', 'Submit', 'Send Message', 'Appointment Fee', 'Doctor Information', 'Working Hours', 'Address', 'Education', 'Experience', 'Qualification', 'Appointment', 'Make Appointment', 'Login', 'Existing Patient? Login Now', 'Register', 'New Patient Registration', 'Submit', 'Forget Your Password?', 'Reset Password', 'reset_pass_text', 'Appointment List', 'Pay Now', 'Stripe', 'Give correct card information', 'Pay with Stripe', 'PayPal', 'Pay with PayPal', 'Direct Bank Transfer', 'Bank Payment', 'Company Bank Account Information', 'Transaction Information', 'Total Orders', 'Total Appointments', 'Pending Appointments', 'Dashboard', 'Message', 'Send Message', 'Account Information', 'Orders', 'Change Password', 'Logout', 'Change Profile', 'Patient ID', 'Order Information', 'Appointment History', 'Billing Information', 'Physical Information', 'Prescribe', 'Advice', 'Post Not Found', 'Doctor Not Found', 'Schedule Not Found', 'Select Department', 'Select Doctor', 'Select Date', 'Select Schedule', 'Select Location', 'Select Gender', 'Male', 'Female', 'Other', 'Admin', 'Week Days', 'Schedule', 'Doctor', 'Department', 'Location', 'Action', 'Total', 'Card Number', 'CVC', 'Expire Month', 'Expire Year', 'Name', 'Guardian Name', 'Guardian Phone', 'Patient Age', 'Occupation', 'Gender', 'Country', 'City', 'Photo', 'Date of Birth', 'Weight', 'Height', 'Health Insurance Number', 'Health Card Number', 'Health Card Provider', 'Blood Group', 'Disablities', 'Serial Number', 'Date', 'Payment', 'Already Treated', 'Order Id', 'Payment Method', 'Transaction Id', 'Description', 'Blood Pressure', 'Pulse Rate', 'Health Temperature', 'Habits', 'Patient Problems', 'Medicine Type', 'Medicine Name', 'Dosage', 'Days', 'Time', 'Test Description', 'Password', 'Confirm Password', 'Change Password', 'Subject', 'Comment', 'Not Found', NULL, '2021-08-07 17:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Napa', 1, '2021-07-13 17:48:06', '2021-07-13 17:48:06'),
(2, 'Acetaminophen', 1, '2021-07-13 17:48:06', '2021-07-13 17:48:06'),
(3, 'Amoxicillin', 1, '2021-07-13 18:02:37', '2021-07-13 18:02:37'),
(4, 'Omeprazole', 1, '2021-07-13 18:02:37', '2021-07-13 18:02:37'),
(5, 'Doxycycline', 1, '2021-07-13 18:02:38', '2021-07-13 18:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_types`
--

CREATE TABLE `medicine_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_types`
--

INSERT INTO `medicine_types` (`id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tab', 1, '2021-07-13 17:47:19', '2021-07-13 17:47:19'),
(2, 'Cap', 1, '2021-07-13 17:47:23', '2021-07-13 17:47:23'),
(3, 'Syp', 1, '2021-07-13 17:47:30', '2021-07-13 17:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_view` tinyint(4) NOT NULL DEFAULT '0',
  `user_view` tinyint(4) NOT NULL DEFAULT '0',
  `send_doctor` int(11) NOT NULL DEFAULT '0',
  `send_user` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `doctor_id`, `user_id`, `message`, `doctor_view`, `user_view`, `send_doctor`, `send_user`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'Hello Sir', 1, 1, 0, 1, '2021-07-14 08:56:42', '2021-07-15 15:41:35'),
(3, 2, 1, 'I want to get treatment from you soon.', 1, 1, 0, 1, '2021-07-14 08:57:08', '2021-07-15 15:41:35'),
(4, 2, 1, 'Can you please provide me your information so that I can contact on your chambers.', 1, 1, 0, 1, '2021-07-14 08:58:39', '2021-07-15 15:41:35'),
(5, 1, 1, 'Hello', 1, 1, 0, 1, '2021-07-14 09:00:25', '2021-07-14 17:34:51'),
(6, 2, 1, 'Yes. You can contact me. My official phone is: 222-2323-1222', 1, 1, 2, 0, '2021-07-14 09:01:04', '2021-07-15 15:41:35'),
(7, 2, 1, 'Thank you very much, sir', 1, 1, 0, 1, '2021-07-14 13:53:41', '2021-07-15 15:41:35'),
(8, 2, 1, 'You are welcome', 1, 1, 2, 0, '2021-07-14 13:53:56', '2021-07-15 15:41:35'),
(9, 1, 1, 'Are you there?', 1, 1, 0, 1, '2021-07-14 13:54:10', '2021-07-14 17:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(53, '2021_06_07_155525_create_terms_policies_table', 13),
(55, '2014_10_12_000000_create_users_table', 14),
(56, '2014_10_12_100000_create_password_resets_table', 14),
(57, '2019_08_19_000000_create_failed_jobs_table', 14),
(58, '2021_06_01_154935_create_doctors_table', 14),
(59, '2021_06_01_154955_create_admins_table', 14),
(60, '2021_06_02_061442_create_departments_table', 14),
(61, '2021_06_02_061452_create_department_images_table', 14),
(62, '2021_06_02_105225_create_locations_table', 14),
(63, '2021_06_02_113729_create_blog_categories_table', 14),
(64, '2021_06_02_115615_create_blogs_table', 14),
(65, '2021_06_03_041937_create_features_table', 14),
(66, '2021_06_03_060558_create_home_sections_table', 14),
(67, '2021_06_03_143301_create_services_table', 14),
(68, '2021_06_03_143735_create_service_images_table', 14),
(69, '2021_06_03_161038_create_service_faqs_table', 14),
(70, '2021_06_04_041544_create_department_faqs_table', 14),
(71, '2021_06_04_053020_create_videos_table', 14),
(72, '2021_06_06_042100_create_faq_categories_table', 14),
(73, '2021_06_06_045120_create_faqs_table', 14),
(74, '2021_06_06_152014_create_blog_comments_table', 14),
(75, '2021_06_06_152604_create_testimonials_table', 14),
(76, '2021_06_07_050501_create_abouts_table', 14),
(77, '2021_06_07_101918_create_doctor_social_links_table', 14),
(78, '2021_06_07_160726_create_condition_privacies_table', 14),
(79, '2021_06_09_075611_create_contact_messages_table', 15),
(82, '2021_06_09_085640_create_contact_us_table', 16),
(83, '2021_06_09_131532_create_sliders_table', 17),
(84, '2021_06_10_044031_create_medicines_table', 18),
(85, '2021_06_10_090440_create_schedules_table', 19),
(86, '2021_06_10_093637_create_days_table', 20),
(87, '2021_06_11_083301_create_contact_information_table', 21),
(88, '2021_06_11_133427_create_works_table', 22),
(89, '2021_06_11_133553_create_work_faqs_table', 22),
(90, '2021_06_12_075620_create_appointments_table', 23),
(91, '2021_06_12_083244_create_leaves_table', 23),
(92, '2021_06_14_041145_create_habits_table', 24),
(93, '2021_06_14_050412_create_prescribes_table', 25),
(94, '2021_06_14_102344_create_advice_table', 26),
(95, '2021_06_15_111126_create_subscribes_table', 27),
(96, '2021_06_16_135618_create_payment_accounts_table', 28),
(97, '2021_06_18_042314_create_settings_table', 29),
(98, '2021_06_18_052104_create_manage_navigations_table', 30),
(99, '2021_06_18_052805_create_manage_pages_table', 31),
(100, '2021_06_19_052404_create_partners_table', 32),
(102, '2021_06_19_154658_create_custome_pages_table', 33),
(103, '2021_06_20_163121_create_overviews_table', 34),
(106, '2021_06_24_005829_create_medicine_types_table', 35),
(107, '2021_06_24_011107_create_orders_table', 35),
(111, '2021_06_24_175001_create_cancle_appointments_table', 36),
(113, '2021_06_25_041121_create_cancel_orders_table', 37),
(114, '2021_06_27_114416_create_banner_images_table', 38),
(117, '2021_06_28_100743_create_navigations_table', 39),
(119, '2021_06_28_110714_create_manage_texts_table', 40),
(121, '2021_07_01_113430_create_messages_table', 41),
(123, '2021_07_02_081300_create_manage_texts_table', 42),
(126, '2021_07_04_073021_create_email_templates_table', 43),
(128, '2021_07_05_091055_create_manage_texts_table', 44),
(129, '2021_07_05_153851_create_validation_texts_table', 45),
(130, '2021_07_06_023416_create_notification_texts_table', 46),
(131, '2021_07_08_132239_create_subscriber_emails_table', 47);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_home` tinyint(4) DEFAULT NULL,
  `about_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_aboutus` tinyint(4) DEFAULT NULL,
  `pages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_pages` tinyint(4) DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_department` tinyint(4) DEFAULT NULL,
  `doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_doctor` tinyint(4) DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_service` tinyint(4) DEFAULT NULL,
  `testimonial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_testimonial` tinyint(4) DEFAULT NULL,
  `faq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_faq` tinyint(4) DEFAULT NULL,
  `contact_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_contactus` tinyint(4) DEFAULT NULL,
  `appointment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_appointment` tinyint(4) DEFAULT NULL,
  `dashboard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_dashboard` tinyint(4) DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_payment` tinyint(4) DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_blog` tinyint(4) DEFAULT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_login` tinyint(4) DEFAULT NULL,
  `register` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_register` tinyint(4) DEFAULT NULL,
  `terms_and_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_terms_and_condition` tinyint(4) DEFAULT NULL,
  `privacy_policy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_privacy_policy` tinyint(4) DEFAULT NULL,
  `forget_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `home`, `show_home`, `about_us`, `show_aboutus`, `pages`, `show_pages`, `department`, `show_department`, `doctor`, `show_doctor`, `service`, `show_service`, `testimonial`, `show_testimonial`, `faq`, `show_faq`, `contact_us`, `show_contactus`, `appointment`, `show_appointment`, `dashboard`, `show_dashboard`, `payment`, `show_payment`, `blog`, `show_blog`, `login`, `show_login`, `register`, `show_register`, `terms_and_condition`, `show_terms_and_condition`, `privacy_policy`, `show_privacy_policy`, `forget_password`, `reset_password`, `created_at`, `updated_at`) VALUES
(1, 'Home', 1, 'About Us', 1, 'Pages', 1, 'Departments', 1, 'Doctors', 1, 'Services', 1, 'Testimonials', 1, 'FAQ', 1, 'Contact Us', 1, 'Appointment', 1, 'Dashboard', 1, 'Payment', 1, 'Blog', 1, 'Login', 1, 'Register', 1, 'Terms and Conditions', 1, 'Privacy Policy', 1, 'Forget Password', 'Reset Password', NULL, '2021-07-14 10:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `notification_texts`
--

CREATE TABLE `notification_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_success` text COLLATE utf8mb4_unicode_ci,
  `login_credential` text COLLATE utf8mb4_unicode_ci,
  `inactive_user` text COLLATE utf8mb4_unicode_ci,
  `invalid_email` text COLLATE utf8mb4_unicode_ci,
  `logout_success` text COLLATE utf8mb4_unicode_ci,
  `register_confirm` text COLLATE utf8mb4_unicode_ci,
  `successfull_verification` text COLLATE utf8mb4_unicode_ci,
  `invalid_token` text COLLATE utf8mb4_unicode_ci,
  `forget_password` text COLLATE utf8mb4_unicode_ci,
  `contact_message` text COLLATE utf8mb4_unicode_ci,
  `appointment_added` text COLLATE utf8mb4_unicode_ci,
  `appointment_removed` text COLLATE utf8mb4_unicode_ci,
  `fill_up_profile` text COLLATE utf8mb4_unicode_ci,
  `payment_successfull` text COLLATE utf8mb4_unicode_ci,
  `payment_faild` text COLLATE utf8mb4_unicode_ci,
  `account_update` text COLLATE utf8mb4_unicode_ci,
  `password_change` text COLLATE utf8mb4_unicode_ci,
  `comment_success` text COLLATE utf8mb4_unicode_ci,
  `verify_subscribe` text COLLATE utf8mb4_unicode_ci,
  `already_subscribe` text COLLATE utf8mb4_unicode_ci,
  `successfully_subscribe` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_texts`
--

INSERT INTO `notification_texts` (`id`, `login_success`, `login_credential`, `inactive_user`, `invalid_email`, `logout_success`, `register_confirm`, `successfull_verification`, `invalid_token`, `forget_password`, `contact_message`, `appointment_added`, `appointment_removed`, `fill_up_profile`, `payment_successfull`, `payment_faild`, `account_update`, `password_change`, `comment_success`, `verify_subscribe`, `already_subscribe`, `successfully_subscribe`, `created_at`, `updated_at`) VALUES
(1, 'Login is successful', 'Login credential is invalid', 'User is inactive', 'Email is invalid', 'Logout is successful', 'Registration is completed. Please check your email.', 'Email is verified successfully', 'Verification token is invalid', 'Forget password request is successful. Please check your email.', 'Contact message is sent successfully', 'Appointment is added successfully', 'Appointment is deleted successfully', 'Before completing the appointment, you must have to fill up this form', 'Payment is successful', 'Payment is failed. Please try again.', 'Account is updated', 'Password is changed successfully', 'Comment is successful', 'Please check your email and confirm subscription', 'You already have subscribed in this sytem', 'Subscription is successful', NULL, '2021-07-14 11:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_payment` double NOT NULL,
  `appointment_qty` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT '0',
  `payment_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_description` text COLLATE utf8mb4_unicode_ci,
  `last4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `show_notification` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_id`, `total_payment`, `appointment_qty`, `payment_method`, `payment_status`, `payment_transaction_id`, `payment_description`, `last4`, `status`, `show_notification`, `created_at`, `updated_at`) VALUES
(1, 1, '#2021072877', 24, 2, 'Stripe', 1, 'txn_1JCqU1HWLjS9yT0SIqsh3is8', NULL, '4242', 0, 1, '2021-07-13 18:37:28', '2021-07-14 03:16:57'),
(2, 1, '#2021072745', 10, 1, 'Paypal', 1, 'PAYID-MDYFGRQ46C79422PG115590L', NULL, NULL, 0, 1, '2021-07-15 15:25:27', '2021-07-15 15:55:20'),
(3, 1, '#2021073441', 14, 1, 'Stripe', 1, 'txn_1JDWTMHWLjS9yT0SQ7HfKQEr', NULL, '4242', 0, 1, '2021-07-15 15:27:34', '2021-07-15 15:55:20'),
(4, 1, '#2021073659', 14, 1, 'Bank Transfer', 1, NULL, 'Sent money from:\r\nBank: ABC\r\nAcc Name: AAA\r\nRouting Number: 023829389', NULL, 0, 1, '2021-07-15 17:02:36', '2021-08-13 22:14:52'),
(5, 1, '#2021083518', 10, 1, 'Bank Transfer', 0, NULL, 'dbbl test bank name', NULL, 0, 1, '2021-08-07 16:23:35', '2021-08-13 22:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `overviews`
--

CREATE TABLE `overviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overviews`
--

INSERT INTO `overviews` (`id`, `name`, `qty`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Patients', '500', 'fas fa-hospital-user', 1, '2021-07-13 09:41:44', '2021-07-13 09:43:15'),
(2, 'Departments', '16', 'fas fa-hospital-user', 1, '2021-07-13 09:44:31', '2021-07-13 09:44:31'),
(3, 'Expert Doctors', '50', 'fas fa-user-md', 1, '2021-07-13 09:45:00', '2021-07-13 09:45:00'),
(4, 'Lab Instruments', '300', 'fas fa-flask', 1, '2021-07-13 09:45:29', '2021-07-13 09:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/custom-images/partner-2021-07-13-08-06-23-3536.png', NULL, 1, '2021-07-13 14:06:23', '2021-07-13 14:06:23'),
(2, 'uploads/custom-images/partner-2021-07-13-08-06-34-4141.png', NULL, 1, '2021-07-13 14:06:34', '2021-07-13 14:06:34'),
(3, 'uploads/custom-images/partner-2021-07-13-08-06-42-6465.png', NULL, 1, '2021-07-13 14:06:42', '2021-07-13 14:06:42'),
(4, 'uploads/custom-images/partner-2021-07-13-08-06-56-3246.png', NULL, 1, '2021-07-13 14:06:56', '2021-07-13 14:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_accounts`
--

CREATE TABLE `payment_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_client_id` text COLLATE utf8mb4_unicode_ci,
  `paypal_secret` text COLLATE utf8mb4_unicode_ci,
  `stripe_key` text COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci,
  `captcha_key` text COLLATE utf8mb4_unicode_ci,
  `captcha_secret` text COLLATE utf8mb4_unicode_ci,
  `bank_account` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_accounts`
--

INSERT INTO `payment_accounts` (`id`, `account_mode`, `paypal_client_id`, `paypal_secret`, `stripe_key`, `stripe_secret`, `captcha_key`, `captcha_secret`, `bank_account`, `created_at`, `updated_at`) VALUES
(1, 'sandbox', 'ATNUEVlu6q5GWK29zJcO7QV989sT9Yno5eumZEnhgTz_89wG3vFKxdsWGWn0U12g0c7RHSdFVtkOLWMg', 'EFw7ctHHaifC_Ldy-_Hhf4xW8mNVBaywCcupSlA9UW2RTbvazQaj13O33utcIj09s4xOpRPHhYmNzDcT', 'pk_test_51HRx1ZHWLjS9yT0SlXNBrziVO9S4zUF6dialYIeewTSKHNAQS6GD4zJw1u1GMuMIDzpUuaYGHE3JdCrN8G3GdlRE009jEZJwkL', 'sk_test_51HRx1ZHWLjS9yT0SArpDKztTe6M9I8e7pv61S2GSDjCaVtRYpI7ciVCcEnNBr9DBxMczWcWe4DaOGwoAb2JHLjkH00Ywjuxdyq', NULL, NULL, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', '2021-06-17 10:51:03', '2021-07-15 15:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `prescribes`
--

CREATE TABLE `prescribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `medicine_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicine_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescribes`
--

INSERT INTO `prescribes` (`id`, `appointment_id`, `medicine_type`, `medicine_name`, `dosage`, `number_of_day`, `comment`, `time`, `created_at`, `updated_at`) VALUES
(19, 2, 'Tab', 'Acetaminophen', '1-0-1', '1', 'test', 'Befor Meal', '2021-07-26 03:32:44', '2021-07-26 03:32:44'),
(20, 2, 'Syp', 'Amoxicillin', '0-1-1', '6', 'test', 'After Meal', '2021-07-26 03:32:44', '2021-07-26 03:32:44'),
(21, 5, 'Syp', 'Acetaminophen', '0-1-0', '3', 'test', 'After Meal', '2021-07-26 03:36:06', '2021-07-26 03:36:06'),
(22, 5, 'Cap', 'Napa', '1-1-0', '8', 'test', 'Befor Meal', '2021-07-26 03:36:06', '2021-07-26 03:36:06'),
(25, 4, 'Cap', 'Amoxicillin', '0-1-1', '15', 'test', 'Befor Meal', '2021-07-26 03:39:04', '2021-07-26 03:39:04'),
(26, 4, 'Syp', 'Napa', '1-0-1', '7', 'test', 'After Meal', '2021-07-26 03:39:04', '2021-07-26 03:39:04'),
(27, 6, 'Cap', 'Doxycycline', '0-0-1', '2', 'test', 'After Meal', '2021-08-07 16:28:27', '2021-08-07 16:28:27'),
(28, 6, 'Syp', 'Acetaminophen', '1-0-1', '1', 'test', 'After Meal', '2021-08-07 16:28:27', '2021-08-07 16:28:27'),
(29, 3, 'Tab', 'Amoxicillin', '0-1-1', '4', 'test', 'After Meal', '2021-08-07 16:31:26', '2021-08-07 16:31:26'),
(30, 3, 'Cap', 'Napa', '1-1-0', '1', 'test', 'After Meal', '2021-08-07 16:31:26', '2021-08-07 16:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `day_id`, `doctor_id`, `start_time`, `end_time`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '9:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:08:37', '2021-07-13 18:08:37'),
(2, 2, 1, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:08:53', '2021-07-13 18:08:53'),
(3, 3, 1, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:09:03', '2021-07-13 18:09:03'),
(4, 4, 1, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:09:15', '2021-07-13 18:09:15'),
(5, 5, 1, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:09:24', '2021-07-13 18:09:24'),
(6, 6, 1, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:09:36', '2021-07-13 18:09:36'),
(7, 1, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:08', '2021-07-13 18:11:08'),
(8, 2, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:18', '2021-07-13 18:11:18'),
(9, 3, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:26', '2021-07-13 18:11:26'),
(10, 4, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:33', '2021-07-13 18:11:33'),
(11, 5, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:43', '2021-07-13 18:11:43'),
(12, 6, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:50', '2021-07-13 18:11:50'),
(13, 7, 4, '10:00 AM', '11:00 AM', 20, 1, '2021-07-14 15:57:59', '2021-07-14 15:57:59'),
(14, 1, 4, '5:00 PM', '9:00 PM', 30, 1, '2021-07-14 15:58:26', '2021-07-14 15:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `sort_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `header`, `slug`, `icon`, `seo_title`, `seo_description`, `sort_description`, `long_description`, `show_homepage`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Heart Surgery', 'heart-surgery', 'fas fa-heart', 'Heart Surgery', 'Heart Surgery', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 1, 1, '2021-07-13 10:21:36', '2021-07-13 10:21:36'),
(2, 'DNA Testing', 'dna-testing', 'fas fa-dna', 'DNA Testing', 'DNA Testing', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 1, 1, '2021-07-13 14:27:04', '2021-07-13 14:27:04'),
(3, 'General Treatment', 'general-treatment', 'fas fa-briefcase-medical', 'General Treatment', 'General Treatment', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 1, 1, '2021-07-13 14:33:00', '2021-07-13 14:33:00'),
(4, 'Eye Treatment', 'eye-treatment', 'fas fa-eye', 'Eye Treatment', 'Eye Treatment', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 1, 1, '2021-07-13 14:33:37', '2021-07-13 14:33:37'),
(5, 'Dental Service', 'dental-service', 'fas fa-tooth', 'Dental Service', 'Dental Service', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 1, 1, '2021-07-13 14:34:16', '2021-07-13 14:34:16'),
(6, 'Ambulance Service', 'ambulance-service', 'fas fa-ambulance', 'Ambulance Service', 'Ambulance Service', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 1, 1, '2021-07-13 14:35:24', '2021-07-13 14:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `service_faqs`
--

CREATE TABLE `service_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_faqs`
--

INSERT INTO `service_faqs` (`id`, `service_id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet per mollis?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-13 15:16:19', '2021-07-13 15:16:19'),
(2, 1, 'Ut alterum dissentiunt eam nobis audire?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-13 15:16:39', '2021-07-13 15:16:39'),
(3, 2, 'Lorem ipsum dolor sit amet per mollis?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-13 15:19:19', '2021-07-13 15:19:19'),
(4, 2, 'Ut alterum dissentiunt eam nobis?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-13 15:19:34', '2021-07-13 15:19:34'),
(5, 3, 'Est odio quaeque legimus ad eu sumo?', '<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-13 15:19:52', '2021-07-13 15:19:52'),
(6, 3, 'At vel virtute inermis accusamus mei dicat?', '<p>At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>', 1, '2021-07-13 15:20:07', '2021-07-13 15:20:07'),
(7, 4, 'Ne primis electram reformidans pro mea?', '<p>Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea, sensibus sententiae voluptatibus duo ad.<br></p>', 1, '2021-07-13 15:20:27', '2021-07-13 15:20:27'),
(8, 4, 'Ut clita scribentur quo in movet reprehendunt?', '<p>Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.<br></p>', 1, '2021-07-13 15:20:40', '2021-07-13 15:20:40'),
(9, 5, 'Lorem ipsum dolor sit amet per mollis?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-13 15:21:11', '2021-07-13 15:21:11'),
(10, 5, 'Ut alterum dissentiunt eam nobis?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-13 15:21:30', '2021-07-13 15:21:30'),
(11, 6, 'Est odio quaeque legimus ad eu sumo?', '<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-13 15:22:04', '2021-07-13 15:22:04'),
(12, 6, 'Simul bonorum his id solum percipit probatus ea?', '<p>Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>', 1, '2021-07-13 15:22:31', '2021-07-13 15:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `service_images`
--

CREATE TABLE `service_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `small_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `large_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_images`
--

INSERT INTO `service_images` (`id`, `service_id`, `small_image`, `large_image`, `created_at`, `updated_at`) VALUES
(13, 1, 'uploads/custom-images/service-small-2021-07-13-08-28-39-67840.jpg', 'uploads/custom-images/service-large-2021-07-13-08-28-39-95050.jpg', '2021-07-13 14:28:40', '2021-07-13 14:28:40'),
(14, 1, 'uploads/custom-images/service-small-2021-07-13-08-28-40-43941.jpg', 'uploads/custom-images/service-large-2021-07-13-08-28-40-35521.jpg', '2021-07-13 14:28:40', '2021-07-13 14:28:40'),
(19, 1, 'uploads/custom-images/service-small-2021-07-14-08-02-37-34510.jpg', 'uploads/custom-images/service-large-2021-07-14-08-02-37-59260.jpg', '2021-07-14 14:02:38', '2021-07-14 14:02:38'),
(20, 1, 'uploads/custom-images/service-small-2021-07-14-08-02-38-97711.jpg', 'uploads/custom-images/service-large-2021-07-14-08-02-38-62701.jpg', '2021-07-14 14:02:38', '2021-07-14 14:02:38'),
(21, 2, 'uploads/custom-images/service-small-2021-07-14-08-22-03-95310.jpg', 'uploads/custom-images/service-large-2021-07-14-08-22-03-95640.jpg', '2021-07-14 14:22:03', '2021-07-14 14:22:03'),
(22, 2, 'uploads/custom-images/service-small-2021-07-14-08-22-03-46591.jpg', 'uploads/custom-images/service-large-2021-07-14-08-22-03-9991.jpg', '2021-07-14 14:22:03', '2021-07-14 14:22:03'),
(23, 2, 'uploads/custom-images/service-small-2021-07-14-08-22-03-25902.jpg', 'uploads/custom-images/service-large-2021-07-14-08-22-03-64282.jpg', '2021-07-14 14:22:03', '2021-07-14 14:22:03'),
(24, 2, 'uploads/custom-images/service-small-2021-07-14-08-22-13-67370.jpg', 'uploads/custom-images/service-large-2021-07-14-08-22-13-94370.jpg', '2021-07-14 14:22:13', '2021-07-14 14:22:13'),
(25, 2, 'uploads/custom-images/service-small-2021-07-14-08-22-13-24651.jpg', 'uploads/custom-images/service-large-2021-07-14-08-22-13-42921.jpg', '2021-07-14 14:22:14', '2021-07-14 14:22:14'),
(26, 3, 'uploads/custom-images/service-small-2021-07-14-08-29-50-96740.jpg', 'uploads/custom-images/service-large-2021-07-14-08-29-50-61790.jpg', '2021-07-14 14:29:50', '2021-07-14 14:29:50'),
(27, 3, 'uploads/custom-images/service-small-2021-07-14-08-29-50-85291.jpg', 'uploads/custom-images/service-large-2021-07-14-08-29-50-57301.jpg', '2021-07-14 14:29:50', '2021-07-14 14:29:50'),
(28, 3, 'uploads/custom-images/service-small-2021-07-14-08-29-50-54182.jpg', 'uploads/custom-images/service-large-2021-07-14-08-29-50-73272.jpg', '2021-07-14 14:29:51', '2021-07-14 14:29:51'),
(29, 3, 'uploads/custom-images/service-small-2021-07-14-08-29-51-57543.jpg', 'uploads/custom-images/service-large-2021-07-14-08-29-51-21823.jpg', '2021-07-14 14:29:51', '2021-07-14 14:29:51'),
(30, 3, 'uploads/custom-images/service-small-2021-07-14-08-29-51-24744.jpg', 'uploads/custom-images/service-large-2021-07-14-08-29-51-48524.jpg', '2021-07-14 14:29:51', '2021-07-14 14:29:51'),
(31, 4, 'uploads/custom-images/service-small-2021-07-14-08-43-57-67230.jpg', 'uploads/custom-images/service-large-2021-07-14-08-43-57-51750.jpg', '2021-07-14 14:43:57', '2021-07-14 14:43:57'),
(32, 4, 'uploads/custom-images/service-small-2021-07-14-08-43-57-22641.jpg', 'uploads/custom-images/service-large-2021-07-14-08-43-57-77961.jpg', '2021-07-14 14:43:57', '2021-07-14 14:43:57'),
(33, 4, 'uploads/custom-images/service-small-2021-07-14-08-43-57-37612.jpg', 'uploads/custom-images/service-large-2021-07-14-08-43-57-98742.jpg', '2021-07-14 14:43:57', '2021-07-14 14:43:57'),
(34, 4, 'uploads/custom-images/service-small-2021-07-14-08-44-09-89420.jpg', 'uploads/custom-images/service-large-2021-07-14-08-44-09-80320.jpg', '2021-07-14 14:44:09', '2021-07-14 14:44:09'),
(35, 4, 'uploads/custom-images/service-small-2021-07-14-08-44-09-73451.jpg', 'uploads/custom-images/service-large-2021-07-14-08-44-09-32591.jpg', '2021-07-14 14:44:09', '2021-07-14 14:44:09'),
(36, 5, 'uploads/custom-images/service-small-2021-07-14-09-16-36-17510.jpg', 'uploads/custom-images/service-large-2021-07-14-09-16-36-39030.jpg', '2021-07-14 15:16:36', '2021-07-14 15:16:36'),
(37, 5, 'uploads/custom-images/service-small-2021-07-14-09-16-36-57901.jpg', 'uploads/custom-images/service-large-2021-07-14-09-16-36-73501.jpg', '2021-07-14 15:16:37', '2021-07-14 15:16:37'),
(38, 5, 'uploads/custom-images/service-small-2021-07-14-09-16-37-16062.jpg', 'uploads/custom-images/service-large-2021-07-14-09-16-37-69912.jpg', '2021-07-14 15:16:37', '2021-07-14 15:16:37'),
(39, 5, 'uploads/custom-images/service-small-2021-07-14-09-16-37-46253.jpg', 'uploads/custom-images/service-large-2021-07-14-09-16-37-50393.jpg', '2021-07-14 15:16:37', '2021-07-14 15:16:37'),
(40, 5, 'uploads/custom-images/service-small-2021-07-14-09-16-37-73604.jpg', 'uploads/custom-images/service-large-2021-07-14-09-16-37-90024.jpg', '2021-07-14 15:16:37', '2021-07-14 15:16:37'),
(41, 6, 'uploads/custom-images/service-small-2021-07-14-09-23-08-71440.jpg', 'uploads/custom-images/service-large-2021-07-14-09-23-08-87050.jpg', '2021-07-14 15:23:08', '2021-07-14 15:23:08'),
(42, 6, 'uploads/custom-images/service-small-2021-07-14-09-23-08-87771.jpg', 'uploads/custom-images/service-large-2021-07-14-09-23-08-49781.jpg', '2021-07-14 15:23:09', '2021-07-14 15:23:09'),
(43, 6, 'uploads/custom-images/service-small-2021-07-14-09-23-09-43482.jpg', 'uploads/custom-images/service-large-2021-07-14-09-23-09-94342.jpg', '2021-07-14 15:23:09', '2021-07-14 15:23:09'),
(44, 6, 'uploads/custom-images/service-small-2021-07-14-09-23-09-53803.jpg', 'uploads/custom-images/service-large-2021-07-14-09-23-09-41493.jpg', '2021-07-14 15:23:09', '2021-07-14 15:23:09'),
(45, 6, 'uploads/custom-images/service-small-2021-07-14-09-23-09-94704.jpg', 'uploads/custom-images/service-large-2021-07-14-09-23-09-51764.jpg', '2021-07-14 15:23:09', '2021-07-14 15:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_description` text COLLATE utf8mb4_unicode_ci,
  `slider_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_description` text COLLATE utf8mb4_unicode_ci,
  `show` tinyint(4) DEFAULT '1',
  `patient_can_register` int(2) DEFAULT '1',
  `save_contact_message` int(191) DEFAULT '0',
  `comment_type` int(1) DEFAULT '1',
  `preloader` int(1) DEFAULT '1',
  `preloader_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_comment_script` text COLLATE utf8mb4_unicode_ci,
  `cookie_text` text COLLATE utf8mb4_unicode_ci,
  `cookie_button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_cookie_consent` int(1) DEFAULT '0',
  `captcha_key` text COLLATE utf8mb4_unicode_ci,
  `captcha_secret` text COLLATE utf8mb4_unicode_ci,
  `allow_captcha` int(11) NOT NULL DEFAULT '0',
  `live_chat` int(1) NOT NULL DEFAULT '0',
  `livechat_script` text COLLATE utf8mb4_unicode_ci,
  `text_direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytic` int(1) NOT NULL DEFAULT '0',
  `google_analytic_code` text COLLATE utf8mb4_unicode_ci,
  `theme_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescription_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescription_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenotification_hour` int(191) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `email`, `subscribe_heading`, `subscribe_description`, `slider_heading`, `slider_description`, `show`, `patient_can_register`, `save_contact_message`, `comment_type`, `preloader`, `preloader_image`, `facebook_comment_script`, `cookie_text`, `cookie_button_text`, `allow_cookie_consent`, `captcha_key`, `captcha_secret`, `allow_captcha`, `live_chat`, `livechat_script`, `text_direction`, `currency_icon`, `currency_name`, `timezone`, `google_analytic`, `google_analytic_code`, `theme_one`, `theme_two`, `prescription_phone`, `prescription_email`, `prenotification_hour`, `created_at`, `updated_at`) VALUES
(10, 'uploads/website-images/logo-2021-07-15-06-22-40-7638.png', 'uploads/website-images/favicon-2021-07-13-03-38-54-4515.png', 'support@websolutionus.com', 'subscribe us', 'sum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum', 'Search The Best Doctors', 'Find out department and location based doctors near your area', 1, 1, 0, 1, 0, 'uploads/website-images/preloader_image-2021-07-13-11-56-58-8326.gif', '882238482112522', 'We use cookies to personalize content and ads, to provide social media features and to analyze our traffic. We also share information about your use of our site with our social media, advertising and analytics partners who may combine it with other information that you’ve provided to them or that they’ve collected from your use of their services.', 'Accept', 1, '6Lc9gjUbAAAAAN3s1TaTyOrE1hDdCUfg5ErMP9cy', '6Lc9gjUbAAAAABUslqC9XkznczQBeMU5dQSsvfoM', 0, 0, 'https://embed.tawk.to/5a7c31ded7591465c7077c48/default', 'LTR', '$', 'usd', 'America/New_York', 0, 'UA-84213520-6', '#1977f4', '#f1634c', '123-233-3455', 'prescription_contact@gmail.com', 3, '2021-06-18 09:25:14', '2021-07-16 12:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(8, 'uploads/website-images/slider-2021-07-12-08-54-29-9237.jpg', 1, '2021-07-12 02:54:31', '2021-07-13 09:40:20'),
(9, 'uploads/website-images/slider-2021-07-12-08-54-44-7820.jpg', 1, '2021-07-12 02:54:45', '2021-07-13 09:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_emails`
--

CREATE TABLE `subscriber_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriber_emails`
--

INSERT INTO `subscriber_emails` (`id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, '', '', NULL, '2021-07-13 02:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `verify_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'arefin2k@gmail.com', NULL, 1, '2021-07-13 02:24:05', '2021-07-13 02:25:01'),
(2, 'test@gmail.com', NULL, 1, '2021-07-13 02:25:25', '2021-07-13 02:25:36'),
(4, 'aa@gmail.com', 'zZnyV3whLojgPjJSTMbY9mH0b', 0, '2021-07-25 06:02:56', '2021-07-25 06:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `terms_policies`
--

CREATE TABLE `terms_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_condition` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_policy` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `designation`, `description`, `show_homepage`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hattie Peterman', 'uploads/custom-images/testimonial-2021-07-13-09-36-37-4903.jpg', 'CEO, ABC IT Limited', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam.', 1, 1, '2021-07-13 15:36:37', '2021-07-13 15:36:37'),
(2, 'Paul Kelley', 'uploads/custom-images/testimonial-2021-07-13-09-50-23-9981.jpg', 'MD, Nice Multimedia', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam.', 1, 1, '2021-07-13 15:50:23', '2021-07-13 15:50:55'),
(3, 'Thomas West', 'uploads/custom-images/testimonial-2021-07-13-09-51-21-1974.jpg', 'CTO, KMC Limited', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam.', 1, 1, '2021-07-13 15:51:21', '2021-07-13 15:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_insurance_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_card_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabilities` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int(2) NOT NULL DEFAULT '0',
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ready_for_appointment` int(2) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `patient_id`, `name`, `email`, `phone`, `image`, `address`, `city`, `country`, `guardian_name`, `guardian_phone`, `health_insurance_number`, `health_card_number`, `health_card_provider`, `occupation`, `age`, `date_of_birth`, `gender`, `weight`, `height`, `blood_group`, `disabilities`, `email_verified_token`, `email_verified`, `forget_password_token`, `password`, `ready_for_appointment`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '2107141535', 'Harold Lujan', 'patient@gmail.com', '111-222-3398', 'uploads/custom-images/Harold Lujan-2021-07-14-12-32-45-8345.jpg', '3130 Bungalow Road Omaha, NE 68114', 'Omaha', 'USA', 'Robert Santiago', '111-222-3433', NULL, NULL, NULL, 'Student', '20', NULL, 'Male', '56', NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$yuniAcPQLoOb/IU/rNTcGefgYQcx0g7ubusMCyGqUtTCUlTh7rO1W', 1, 1, NULL, '2021-07-13 18:15:35', '2021-08-07 16:31:26'),
(2, '2108080736', 'ibrahim khalil', 'aboutsoftmart@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'clJbzMjEfnzMickQIIZSmAxlJiHxioX5jYG0owA47WixCpqfDyp3xnvcv6ce8kCGMk9Sr0vDKJHCAtZkmLBBevQzcWWCVgXcqfpU', 0, NULL, '$2y$10$5SNOR7yOr/s1FcMCq2IieubD.82W2ayHHxZO2Q3YMkhTYVkzskWtK', 0, 0, NULL, '2021-08-07 18:07:36', '2021-08-07 18:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `validation_texts`
--

CREATE TABLE `validation_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `unique_email` text COLLATE utf8mb4_unicode_ci,
  `valid_email` text COLLATE utf8mb4_unicode_ci,
  `password` text COLLATE utf8mb4_unicode_ci,
  `confirm_password` text COLLATE utf8mb4_unicode_ci,
  `minimum_password` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `transaction_info` text COLLATE utf8mb4_unicode_ci,
  `age` text COLLATE utf8mb4_unicode_ci,
  `occupation` text COLLATE utf8mb4_unicode_ci,
  `gender` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `country` text COLLATE utf8mb4_unicode_ci,
  `city` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `validation_texts`
--

INSERT INTO `validation_texts` (`id`, `name`, `email`, `unique_email`, `valid_email`, `password`, `confirm_password`, `minimum_password`, `phone`, `subject`, `message`, `comment`, `transaction_info`, `age`, `occupation`, `gender`, `address`, `country`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Name field can not be empty', 'Email field can not be empty', 'Email already exists', 'Email must be valid', 'Password field can not be empty', 'Confirm password does not match with password', 'Password must be at least 6 characters', 'Phone field can not be empty', 'Subject field can not be empty', 'Message field can not be empty', 'Comment field can not be empty', 'Transaction Info field can not be empty', 'Age field can not be empty', 'Occupation field can not be empty', 'Gender field can not be empty', 'Address field can not be empty', 'Country field can not be empty', 'City field can not be empty', NULL, '2021-08-07 17:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_category` int(11) NOT NULL,
  `department_id` int(11) DEFAULT '0',
  `service_id` int(11) DEFAULT '0',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_category`, `department_id`, `service_id`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 1, 'https://www.youtube.com/watch?v=ZEjmGY6PG0U', 1, '2021-07-13 14:29:50', '2021-07-13 14:30:46'),
(2, 2, 0, 1, 'https://www.youtube.com/watch?v=SApPLEhd_34', 1, '2021-07-13 14:29:50', '2021-07-13 14:31:03'),
(3, 2, 0, 2, 'https://www.youtube.com/watch?v=TNKWgcFPHqw', 1, '2021-07-14 15:24:37', '2021-07-14 15:24:37'),
(4, 2, 0, 2, 'https://www.youtube.com/watch?v=gG7uCskUOrA', 1, '2021-07-14 15:24:37', '2021-07-14 15:24:37'),
(5, 2, 0, 3, 'https://www.youtube.com/watch?v=xSTUoWYCmdo', 1, '2021-07-14 15:25:55', '2021-07-14 15:25:55'),
(6, 2, 0, 3, 'https://www.youtube.com/watch?v=s7a7jdLdhus', 1, '2021-07-14 15:25:55', '2021-07-14 15:25:55'),
(7, 2, 0, 4, 'https://www.youtube.com/watch?v=f-YkzgfgN2k', 1, '2021-07-14 15:26:42', '2021-07-14 15:26:42'),
(8, 2, 0, 4, 'https://www.youtube.com/watch?v=HPDpSiAJj4k', 1, '2021-07-14 15:26:42', '2021-07-14 15:26:42'),
(9, 2, 0, 5, 'https://www.youtube.com/watch?v=kZ6HRcxjwLg', 1, '2021-07-14 15:27:24', '2021-07-14 15:27:24'),
(10, 2, 0, 5, 'https://www.youtube.com/watch?v=pKF_doN3Tz8', 1, '2021-07-14 15:27:24', '2021-07-14 15:27:24'),
(11, 2, 0, 6, 'https://www.youtube.com/watch?v=CZNmRPJjd4Y', 1, '2021-07-14 15:28:01', '2021-07-14 15:28:01'),
(12, 2, 0, 6, 'https://www.youtube.com/watch?v=mRjY4oREB-8', 1, '2021-07-14 15:28:01', '2021-07-14 15:28:01'),
(13, 1, 1, 0, 'https://www.youtube.com/watch?v=L6S7pFEX8hQ', 1, '2021-07-14 16:58:42', '2021-07-14 16:58:42'),
(14, 1, 1, 0, 'https://www.youtube.com/watch?v=kvB2fOFV5IA', 1, '2021-07-14 16:58:42', '2021-07-14 16:58:42'),
(15, 1, 2, 0, 'https://www.youtube.com/watch?v=bzW1ynK_J28', 1, '2021-07-14 16:59:25', '2021-07-14 16:59:25'),
(16, 1, 2, 0, 'https://www.youtube.com/watch?v=3wpT-4bSmoU', 1, '2021-07-14 16:59:25', '2021-07-14 16:59:25'),
(17, 1, 3, 0, 'https://www.youtube.com/watch?v=Aq3bCNGz_2E', 1, '2021-07-14 17:00:09', '2021-07-14 17:00:09'),
(18, 1, 3, 0, 'https://www.youtube.com/watch?v=tbtoUn2IhTA', 1, '2021-07-14 17:00:09', '2021-07-14 17:00:09'),
(19, 1, 4, 0, 'https://www.youtube.com/watch?v=KligsSBGk1s', 1, '2021-07-14 17:00:54', '2021-07-14 17:00:54'),
(20, 1, 4, 0, 'https://www.youtube.com/watch?v=YnbcVw9Zm20', 1, '2021-07-14 17:00:54', '2021-07-14 17:00:54'),
(21, 1, 5, 0, 'https://www.youtube.com/watch?v=39GQvW27Tx8', 1, '2021-07-14 17:01:18', '2021-07-14 17:01:18'),
(22, 1, 5, 0, 'https://www.youtube.com/watch?v=jGaGvfemDX8', 1, '2021-07-14 17:01:18', '2021-07-14 17:01:18'),
(23, 1, 6, 0, 'https://www.youtube.com/watch?v=kmERMlgfSbg', 1, '2021-07-14 17:01:40', '2021-07-14 17:01:40'),
(24, 1, 6, 0, 'https://www.youtube.com/watch?v=Yyehg2FL73c', 1, '2021-07-14 17:01:40', '2021-07-14 17:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `image`, `video`, `title`, `description`, `created_at`, `updated_at`) VALUES
(3, 'uploads/website-images/work-background-2021-07-13-08-02-39-8346.jpg', 'https://www.youtube.com/watch?v=G07V0aOmWTI', 'Get our medical service and ensure your physical health', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', '2021-06-11 08:43:51', '2021-07-13 14:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `work_faqs`
--

CREATE TABLE `work_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_faqs`
--

INSERT INTO `work_faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Who Are Our Patients?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-13 14:04:05', '2021-07-13 14:04:05'),
(2, 'When Is A Doctor Available?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-13 14:04:27', '2021-07-13 14:04:27'),
(3, 'How Do I Register In This System?', '<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-13 14:04:48', '2021-07-13 14:04:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `advice`
--
ALTER TABLE `advice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancel_orders`
--
ALTER TABLE `cancel_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `condition_privacies`
--
ALTER TABLE `condition_privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custome_pages`
--
ALTER TABLE `custome_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_faqs`
--
ALTER TABLE `department_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_images`
--
ALTER TABLE `department_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`);

--
-- Indexes for table `doctor_social_links`
--
ALTER TABLE `doctor_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `habits`
--
ALTER TABLE `habits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_navigations`
--
ALTER TABLE `manage_navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_pages`
--
ALTER TABLE `manage_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_texts`
--
ALTER TABLE `manage_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_types`
--
ALTER TABLE `medicine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_texts`
--
ALTER TABLE `notification_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overviews`
--
ALTER TABLE `overviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescribes`
--
ALTER TABLE `prescribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_faqs`
--
ALTER TABLE `service_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_images`
--
ALTER TABLE `service_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber_emails`
--
ALTER TABLE `subscriber_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_policies`
--
ALTER TABLE `terms_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `validation_texts`
--
ALTER TABLE `validation_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_faqs`
--
ALTER TABLE `work_faqs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `advice`
--
ALTER TABLE `advice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cancel_orders`
--
ALTER TABLE `cancel_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `condition_privacies`
--
ALTER TABLE `condition_privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custome_pages`
--
ALTER TABLE `custome_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `department_faqs`
--
ALTER TABLE `department_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `department_images`
--
ALTER TABLE `department_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor_social_links`
--
ALTER TABLE `doctor_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `habits`
--
ALTER TABLE `habits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manage_navigations`
--
ALTER TABLE `manage_navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manage_pages`
--
ALTER TABLE `manage_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manage_texts`
--
ALTER TABLE `manage_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicine_types`
--
ALTER TABLE `medicine_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_texts`
--
ALTER TABLE `notification_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `overviews`
--
ALTER TABLE `overviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prescribes`
--
ALTER TABLE `prescribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_faqs`
--
ALTER TABLE `service_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `service_images`
--
ALTER TABLE `service_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriber_emails`
--
ALTER TABLE `subscriber_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `terms_policies`
--
ALTER TABLE `terms_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `validation_texts`
--
ALTER TABLE `validation_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `work_faqs`
--
ALTER TABLE `work_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
