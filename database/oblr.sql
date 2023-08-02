-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 12:35 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oblr`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addressable_id` bigint(20) DEFAULT NULL,
  `addressable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `email`, `phone`, `gender`, `dob`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Strator', 'admin@admin.com', '0772300007', 'male', '2012-01-01', NULL, '$2y$10$dkc76pKGqC1xObHX4gGdY.0TM1ZRvkXe/jBjYlQ4sk29uTLcVKXVO', NULL, '2021-07-16 02:16:09', '2021-07-16 02:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `first_name`, `last_name`, `email`, `phone`, `gender`, `dob`, `email_verified_at`, `password`, `address_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Appli', 'Cant', 'applicant@gmail.com', '0772300007', 'male', '2012-01-01', NULL, '$2y$10$LYtg0QGsMx.S26ZHA7IMeuiUUb1KWaAggdfFoLZ78zjE0yIgDZswi', 1, NULL, '2021-07-16 02:16:09', '2021-07-16 02:16:09'),
(2, 'ewrwre', 'erwerwe', 'dwdwqw@mail', '3456789', 'male', '2019-08-19', NULL, '$2y$10$xFWWCfpkCizwWY6QENTfyOC98ikKUsdQMjUvJoHExc7v2tGgAKFgq', 12, NULL, '2021-07-16 11:41:42', '2021-07-16 11:41:42'),
(3, 'mercy', 'mtae', 'm@gmail.com', '0987733762', 'female', '2019-08-19', NULL, '$2y$10$H2GS25ZFyrsDZHdp0VqDE.ku3zDa7ZfIl78B.bb5L9.KetgyEdfW.', 12, NULL, '2021-07-16 14:44:53', '2021-07-16 14:44:53'),
(4, 'eliza', 'mtae', 'mtae@gmail.com', '0786544321', 'female', '2019-08-19', NULL, '$2y$10$8svdudfHvGRc20I8spFkOeS.aEZ6d8RLIPpoBZt.jWjxNvRrZAxQa', 12, NULL, '2021-07-16 15:34:24', '2021-07-16 15:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_details`
--

CREATE TABLE `applicant_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicant_details`
--

INSERT INTO `applicant_details` (`id`, `first_name`, `last_name`, `email`, `phone`, `gender`, `dob`, `nationality`, `address_id`, `created_at`, `updated_at`) VALUES
(1, 'eliza', 'mtae', 'mtae@gmail.com', '0786544321', 'female', '2019-08-19', 'citizen', 8, '2021-07-16 15:36:22', '2021-07-16 15:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) NOT NULL,
  `entity_type_id` bigint(20) NOT NULL,
  `business_type_id` bigint(20) NOT NULL,
  `applicant_details_id` bigint(20) NOT NULL,
  `business_details_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `application_type` enum('new','renewal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `applicant_id`, `entity_type_id`, `business_type_id`, `applicant_details_id`, `business_details_id`, `status`, `application_type`, `comment`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 1, 1, 1, 1, 'new', NULL, '2021-07-16 15:36:22', '2021-07-16 15:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `application_statuses`
--

CREATE TABLE `application_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_accepted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_statuses`
--

INSERT INTO `application_statuses` (`id`, `application_id`, `is_accepted`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '2021-07-16 15:39:01', '2021-07-16 15:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `business_details`
--

CREATE TABLE `business_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `address_status` enum('surveyed','un-surveyed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_details`
--

INSERT INTO `business_details` (`id`, `name`, `email`, `phone`, `address_id`, `address_status`, `created_at`, `updated_at`) VALUES
(1, 'hhh', 'mtae@gmail.com', '0786544321', 8, 'surveyed', '2021-07-16 15:36:22', '2021-07-16 15:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Civil Contractors Class V', 1, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(2, 'Civil Contractors Class VI', 1, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(3, 'Phone Accessories', 2, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(4, 'Building Contractors Class I', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(5, 'Building Contractors Class II', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(6, 'Building Contractors Class III', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(7, 'Building Contractors Class IV', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(8, 'Building Contractors Class IV', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(9, 'Building Contractors Class V', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(10, 'Building Contractors Class VI', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(11, 'Building Contractors Class VII', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(12, 'Mechanical Contractors Class I', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(13, 'Mechanical Contractors Class II', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(14, 'Mechanical Contractors Class III', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(15, 'Mechanical Contractors Class IV', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(16, 'Mechanical Contractors Class IV', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(17, 'Mechanical Contractors Class V', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(18, 'Mechanical Contractors Class VI', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(19, 'Mechanical Contractors Class VII', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(20, 'Day care', 5, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(21, 'Driving Schools', 6, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(22, 'Education Equipments', 7, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(23, 'Nursery Schools', 8, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(24, 'Private College', 9, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(25, 'Private Primary School-Foreign', 9, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(26, 'Private Primary School', 9, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(27, 'Private Secondary school', 9, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(28, 'Duplicate License', 10, '2021-07-16 02:16:08', '2021-07-16 02:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `business_type_permission`
--

CREATE TABLE `business_type_permission` (
  `business_type_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_type_permission`
--

INSERT INTO `business_type_permission` (`business_type_id`, `permission_id`) VALUES
(1, 1),
(2, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(21, 3),
(23, 4),
(24, 4),
(26, 4),
(27, 4);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `sector_id`, `created_at`, `updated_at`) VALUES
(1, 'Civil Contractors', 1, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(2, 'Phone Accessories', 2, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(3, 'Building Contractors', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(4, 'Mechanical Contractors', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(5, 'Day care schools', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(6, 'Driving Schools', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(7, 'Education Equipments', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(8, 'Nursery Schools', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(9, 'Schools and Colleges', 4, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(10, 'Duplicate License', 5, '2021-07-16 02:16:08', '2021-07-16 02:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `region_id`, `created_at`, `updated_at`) VALUES
(1, 'Meru', 1, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(2, 'Arusha City', 1, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(3, 'Arusha Rural District', 1, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(4, 'Karatu', 1, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(5, 'Longido', 1, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(6, 'Monduli', 1, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(7, 'Ngorongoro', 1, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(8, 'Ilala', 2, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(9, 'Kinondoni', 2, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(10, 'Temeke', 2, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(11, 'Kigamboni', 2, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(12, 'Ubungo', 2, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(13, 'Bahi', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(14, 'Chamwino', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(15, 'Chemba', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(16, 'Dodoma', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(17, 'Kondoa', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(18, 'Kongwa', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(19, 'Mpwapwa', 3, '2021-07-16 02:16:08', '2021-07-16 02:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `document_type_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `file`, `application_id`, `document_type_id`, `created_at`, `updated_at`) VALUES
(1, 'permission_document_eliza_mtae_4_1626460582.pdf', 1, 4, '2021-07-16 15:36:22', '2021-07-16 15:36:22'),
(2, 'citizenship_or_residence_proof_doc_eliza_mtae_4_1626460582.pdf', 1, 3, '2021-07-16 15:36:22', '2021-07-16 15:36:22'),
(3, 'memorandum_doc_eliza_mtae_4_1626460582.pdf', 1, 2, '2021-07-16 15:36:22', '2021-07-16 15:36:22'),
(4, 'tax_identification_no_eliza_mtae_4_1626460582.pdf', 1, 1, '2021-07-16 15:36:22', '2021-07-16 15:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `document_types`
--

CREATE TABLE `document_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_types`
--

INSERT INTO `document_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tax Identification No', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(2, 'Memorandum and Articles of Association', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(3, 'Proof of Tanzanian Citizenship/Residence Class Permit', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(4, 'Permit', '2021-07-16 02:16:08', '2021-07-16 02:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `entity_types`
--

CREATE TABLE `entity_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entity_types`
--

INSERT INTO `entity_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Foreign Corporation', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(2, 'Individual', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(3, 'Limited Company', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(4, 'Limited Liability Company', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(5, 'Partnership', '2021-07-16 02:16:08', '2021-07-16 02:16:08');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `government_officials`
--

CREATE TABLE `government_officials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `government_officials`
--

INSERT INTO `government_officials` (`id`, `first_name`, `last_name`, `email`, `phone`, `gender`, `dob`, `email_verified_at`, `password`, `created_by`, `address_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rex', 'Official', 'gvt@gmail.com', '0772300007', 'male', '2012-01-01', NULL, '$2y$10$7gLVb.lE7Mrs1easGvAs8O3dYkGFanWQ8dX4CZdVnI14opwrN8tWy', 1, 1, NULL, '2021-07-16 02:16:09', '2021-07-16 02:16:09'),
(2, 'david', 'mabula', 'd@gmail.com', '0712544816', 'male', '2021-07-16', NULL, '$2y$10$ai9B4dQ6x71t8DdmAIWnT.BGuBh6FGWOw2HJ0elroWc8XBeKjTYHW', 1, 8, NULL, '2021-07-16 15:38:08', '2021-07-16 15:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `license_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_type_id` bigint(20) NOT NULL,
  `entity_id` bigint(20) NOT NULL,
  `applicant_details_id` bigint(20) NOT NULL,
  `business_details_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`license_number`, `business_type_id`, `entity_id`, `applicant_details_id`, `business_details_id`, `created_at`, `updated_at`) VALUES
('AAA111AA11', 1, 2, 1, 1, '2021-07-16 15:39:01', '2021-07-16 15:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `license_histories`
--

CREATE TABLE `license_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `license_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_issue` date NOT NULL,
  `expiry_date` date NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_histories`
--

INSERT INTO `license_histories` (`id`, `license_number`, `date_of_issue`, `expiry_date`, `application_id`, `created_at`, `updated_at`) VALUES
(1, 'AAA111AA11', '2021-07-16', '2022-07-16', 1, '2021-07-16 15:39:01', '2021-07-16 15:39:01');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_14_184940_create_entity_type_table', 1),
(5, '2020_07_14_184948_create_sectors_table', 1),
(6, '2020_07_14_184954_create_applications_table', 1),
(7, '2020_07_14_185007_create_licenses_table', 1),
(8, '2020_07_14_185016_create_documents_table', 1),
(9, '2020_07_14_191054_create_permissions_table', 1),
(10, '2020_07_15_160620_create_addresses_table', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuing_agency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `issuing_agency`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Approval Letter from Health Officer	', 'Town Planner Office', 'Letter of approval from the Town / Municipal Health Officer', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(2, 'CRB License	', 'Contractors Registration Board', 'License issued by the Contractors Registration Board', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(3, 'Permit from the Regulatory Bodies', 'Regulatory Bodies', 'License issued by the Contractors Registration Board', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(4, 'Permit from Ministry of Education', 'Ministry of Education and Vocation Training', 'Permit issued by Ministry of Education and Vocation Training', '2021-07-16 02:16:08', '2021-07-16 02:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Arusha', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(2, 'Dar es Salaam', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(3, 'Dodoma', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(4, 'Kagera', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(5, 'Katavi', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(6, 'Kilimanjaro', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(7, 'Lindi', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(8, 'Manyara', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(9, 'Mara', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(10, 'Mbeya', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(11, 'Morogoro', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(12, 'Mtwara', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(13, 'Mwanza', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(14, 'Njombe', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(15, 'Pwani', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(16, 'Rukwa', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(17, 'Ruvuma', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(18, 'Shinyanga', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(19, 'Simiyu', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(20, 'Tabora', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(21, 'Tanga', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(22, 'Zanzibar', '2021-07-16 02:16:08', '2021-07-16 02:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Civil Contractors', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(2, 'Communication', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(3, 'Contracting Business', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(4, 'Education', '2021-07-16 02:16:08', '2021-07-16 02:16:08'),
(5, 'Duplicate', '2021-07-16 02:16:08', '2021-07-16 02:16:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applicants_email_unique` (`email`),
  ADD UNIQUE KEY `applicants_phone_unique` (`phone`);

--
-- Indexes for table `applicant_details`
--
ALTER TABLE `applicant_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applicant_details_email_unique` (`email`),
  ADD UNIQUE KEY `applicant_details_phone_unique` (`phone`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_statuses`
--
ALTER TABLE `application_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_details`
--
ALTER TABLE `business_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `business_details_email_unique` (`email`),
  ADD UNIQUE KEY `business_details_phone_unique` (`phone`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entity_types`
--
ALTER TABLE `entity_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `government_officials`
--
ALTER TABLE `government_officials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `government_officials_email_unique` (`email`),
  ADD UNIQUE KEY `government_officials_phone_unique` (`phone`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`license_number`);

--
-- Indexes for table `license_histories`
--
ALTER TABLE `license_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `applicant_details`
--
ALTER TABLE `applicant_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `application_statuses`
--
ALTER TABLE `application_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_details`
--
ALTER TABLE `business_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `entity_types`
--
ALTER TABLE `entity_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `government_officials`
--
ALTER TABLE `government_officials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_histories`
--
ALTER TABLE `license_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
