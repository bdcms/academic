-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2018 at 08:00 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nwu_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-07-17 14:21:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-17 14:22:14', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-07/my.jpg</td></tr><tr><td>contact</td><td>01969516500</td><td>01969516501</td></tr><tr><td>password</td><td>$2y$10$pKkWq5dKjg0z/jfxu8YWU.fl.SBnKMAxxTHnBrGxbPQtWSZF5dO.G</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-07-17 14:40:54', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-07-17 15:05:36', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-17 15:05:50', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-07-17 15:18:06', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-17 21:29:58', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/users/add-save', 'Add New Data Editor at Users Management', '', 1, '2018-07-17 21:31:34', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'editor@gmail.com login with IP Address ::1', '', 2, '2018-07-17 21:33:18', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/add-save', 'Add New Data User at Menu Management', '', 1, '2018-07-17 21:34:32', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/1', 'Update data User at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-07-17 21:35:03', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users/add-save', 'Add New Data Kamal at Users Management', '', 2, '2018-07-17 21:36:43', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'editor@gmail.com logout', '', 2, '2018-07-17 21:42:52', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'editor@gmail.com login with IP Address ::1', '', 2, '2018-07-17 21:43:25', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-17 22:48:30', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'editor@gmail.com logout', '', 2, '2018-07-17 23:02:08', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'editor@gmail.com login with IP Address ::1', '', 2, '2018-07-17 23:02:12', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users', 'Try view the data :name at Users Management', '', 2, '2018-07-17 23:02:15', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'editor@gmail.com logout', '', 2, '2018-07-17 23:03:00', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'editor@gmail.com login with IP Address ::1', '', 2, '2018-07-17 23:03:02', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users/edit-save/2', 'Update data Editor at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$GEmkE8m9fEImGV2ye7efQe49lcdMc95n40AT4TUbaW3yEDIaSarEC</td><td></td></tr><tr><td>contact</td><td>01969516500</td><td>01969516502</td></tr><tr><td>birth_date</td><td></td><td></td></tr><tr><td>address</td><td></td><td></td></tr><tr><td>dept_name</td><td></td><td></td></tr><tr><td>position</td><td></td><td></td></tr><tr><td>last_institute</td><td></td><td></td></tr><tr><td>note</td><td></td><td></td></tr><tr><td>id_cms_privileges</td><td>2</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr><tr><td>verify_token</td><td></td><td></td></tr></tbody></table>', 2, '2018-07-17 23:03:14', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users', 'Try view the data :name at Users Management', '', 2, '2018-07-17 23:03:25', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-18 01:45:29', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-18 13:32:16', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-18 13:41:43', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users/edit-save/3', 'Update data Kamal at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$o77b.EYZaD0UMpfGpGHvD.ZgfaX8MHs50eOqmcBdlSgti0du/BPgy</td><td>$2y$10$5zFqEpAJjsoX2ygt6tpAQOe5kX8VSI56CZfWf.etggvaCbgsAwT6y</td></tr><tr><td>address</td><td></td><td>Nirala Khulna</td></tr><tr><td>last_institute</td><td></td><td></td></tr><tr><td>note</td><td></td><td>I love my country Bangladesh.</td></tr><tr><td>id_cms_privileges</td><td>2</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr><tr><td>varifyToken</td><td>1</td><td></td></tr></tbody></table>', 3, '2018-07-18 14:08:03', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users/edit-save/3', 'Update data Kamal at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$5zFqEpAJjsoX2ygt6tpAQOe5kX8VSI56CZfWf.etggvaCbgsAwT6y</td><td></td></tr><tr><td>last_institute</td><td>Khulna University</td><td>Khulna University, Khulna.</td></tr><tr><td>id_cms_privileges</td><td>2</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr><tr><td>varifyToken</td><td>1</td><td></td></tr></tbody></table>', 3, '2018-07-18 14:10:12', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-18 14:11:06', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-18 14:32:15', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-18 14:32:26', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-18 14:32:41', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/delete/1', 'Delete data User at Menu Management', '', 1, '2018-07-18 15:27:56', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/add-save', 'Add New Data Security Keword at Menu Management', '', 1, '2018-07-18 15:30:31', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/1', 'Update data Security Keword at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-07-18 15:30:50', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/module_generator/delete/12', 'Delete data Cover Picture at Module Generator', '', 1, '2018-07-18 17:36:17', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete/6', 'Delete data 6 at Cover Picture', '', 1, '2018-07-18 17:39:26', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/add-save', 'Add New Data 6 at Cover Picture', '', 1, '2018-07-18 17:45:59', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Delete the image of 6 at Cover Picture', '', 1, '2018-07-18 17:47:50', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/edit-save/6', 'Update data  at Cover Picture', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>gallary_cover</td><td></td><td>uploads/1/2018-07/desktop_wallpaper_to_personalize_computer_high_wallpaper_hd_desktop.jpg</td></tr><tr><td>teacher_id</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-07-18 17:48:02', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/action-selected', 'Delete data 5,4,3,2,1 at Cover Picture', '', 1, '2018-07-18 17:50:03', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/3', 'Update data Cover Picture at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2018-07-18 17:55:27', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-18 17:55:47', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-18 17:56:04', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-18 17:56:57', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-18 17:56:59', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections', 'Try view the data :name at Cover Picture', '', 3, '2018-07-18 17:57:01', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections', 'Try view the data :name at Cover Picture', '', 3, '2018-07-18 17:57:04', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/3', 'Update data Cover Picture at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>URL</td></tr><tr><td>path</td><td>AdminTblSectionsControllerGetIndex</td><td>http://localhost/Academic/public/admin/tbl_sections/edit/6?return_url=http%3A%2F%2Flocalhost%2FAcademic%2Fpublic%2Fadmin%2Ftbl_sections&parent_id=&parent_field=</td></tr></tbody></table>', 1, '2018-07-18 17:57:54', NULL),
(48, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-18 17:58:02', NULL),
(49, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-18 17:58:03', NULL),
(50, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/edit/6', 'Try edit the data 6 at Cover Picture', '', 3, '2018-07-18 17:58:07', NULL),
(51, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/edit/6', 'Try edit the data 6 at Cover Picture', '', 3, '2018-07-18 17:58:09', NULL),
(52, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-18 17:58:42', NULL),
(53, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-18 17:58:44', NULL),
(54, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Try delete the image of 6 data at Cover Picture', '', 3, '2018-07-18 17:59:10', NULL),
(55, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-18 17:59:48', NULL),
(56, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-18 17:59:50', NULL),
(57, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Delete the image of 6 at Cover Picture', '', 3, '2018-07-18 17:59:55', NULL),
(58, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/edit-save/6', 'Update data  at Cover Picture', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>home_cover</td><td></td><td>uploads/3/2018-07/desktop_wallpaper_to_personalize_computer_high_wallpaper_hd_desktop.jpg</td></tr><tr><td>teacher_id</td><td>2</td><td></td></tr></tbody></table>', 3, '2018-07-18 18:00:12', NULL),
(59, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/edit-save/6', 'Update data  at Cover Picture', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>teacher_id</td><td>2</td><td></td></tr></tbody></table>', 3, '2018-07-18 18:04:32', NULL),
(60, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/edit-save/6', 'Update data  at Cover Picture', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>teacher_id</td><td>2</td><td></td></tr></tbody></table>', 3, '2018-07-18 18:06:19', NULL),
(61, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/edit-save/6', 'Update data  at Cover Picture', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>teacher_id</td><td>2</td><td></td></tr></tbody></table>', 3, '2018-07-18 18:06:33', NULL),
(62, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/edit-save/6', 'Update data  at Cover Picture', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>teacher_id</td><td>2</td><td></td></tr></tbody></table>', 3, '2018-07-18 18:08:05', NULL),
(63, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/edit-save/6', 'Update data  at Cover Picture', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>teacher_id</td><td>2</td><td></td></tr></tbody></table>', 3, '2018-07-18 18:08:43', NULL),
(64, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/3', 'Update data Cover Picture at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Module</td></tr><tr><td>path</td><td>http://localhost/Academic/public/admin/tbl_sections/edit/6?return_url=http%3A%2F%2Flocalhost%2FAcademic%2Fpublic%2Fadmin%2Ftbl_sections&parent_id=&parent_field=</td><td>tbl_sections</td></tr><tr><td>icon</td><td>fa fa-file-picture-o</td><td>fa fa-picture-o</td></tr></tbody></table>', 1, '2018-07-18 18:11:29', NULL),
(65, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-18 18:11:51', NULL),
(66, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-18 18:11:53', NULL),
(67, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Try delete the image of 6 data at Cover Picture', '', 3, '2018-07-18 18:12:03', NULL),
(68, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Try delete the image of 6 data at Cover Picture', '', 3, '2018-07-18 18:13:10', NULL),
(69, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-18 23:41:27', NULL),
(70, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Delete the image of 6 at Cover Picture', '', 1, '2018-07-19 01:04:45', NULL),
(71, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/edit-save/6', 'Update data  at Cover Picture', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>research_cover</td><td>https://lorempixel.com/1200/500/</td><td></td></tr><tr><td>teacher_id</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-07-19 01:04:59', NULL),
(72, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', ' logout', '', NULL, '2018-07-19 01:49:14', NULL),
(73, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 01:49:23', NULL),
(74, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/3', 'Update data Cover Picture at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-07-19 01:50:30', NULL),
(75, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 01:51:18', NULL),
(76, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 01:51:24', NULL),
(77, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-07-19 01:51:45', NULL),
(78, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 01:52:01', NULL),
(79, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 01:52:23', NULL),
(80, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-19 01:52:36', NULL),
(81, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/1', 'Update data Security Keword at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-07-19 01:54:11', NULL),
(82, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 01:54:24', NULL),
(83, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 01:54:27', NULL),
(84, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 01:54:56', NULL),
(85, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-19 01:55:47', NULL),
(86, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-19 01:56:46', NULL),
(87, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 01:58:04', NULL),
(88, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 02:47:02', NULL),
(89, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 02:47:06', NULL),
(90, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 02:47:23', NULL),
(91, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/1', 'Update data Security Keword at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-07-19 02:48:00', NULL),
(92, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 02:48:13', NULL),
(93, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 13:13:43', NULL),
(94, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 13:13:56', NULL),
(95, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 13:15:49', NULL),
(96, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 13:15:53', NULL),
(97, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 13:17:17', NULL),
(98, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 13:17:21', NULL),
(99, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 13:19:28', NULL),
(100, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 13:19:32', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 13:21:18', NULL),
(102, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 13:21:27', NULL),
(103, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 13:22:35', NULL),
(104, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 13:22:40', NULL),
(105, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 13:27:43', NULL),
(106, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 13:27:49', NULL),
(107, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 15:02:49', NULL),
(108, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 15:04:11', NULL),
(109, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-19 15:04:42', NULL),
(110, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-19 21:25:31', NULL),
(111, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-19 21:43:51', NULL),
(112, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 21:45:19', NULL),
(113, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 21:45:35', NULL),
(114, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-19 21:47:27', NULL),
(115, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-19 21:47:39', NULL),
(116, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-19 21:58:32', NULL),
(117, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-19 21:58:49', NULL),
(118, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-19 21:59:21', NULL),
(119, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 21:59:30', NULL),
(120, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 22:00:05', NULL),
(121, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/admin/login', 'lemon@gmail.com login with IP Address ::1', '', 15, '2018-07-19 22:01:33', NULL),
(122, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'lemon@gmail.com logout', '', 15, '2018-07-19 22:02:57', NULL),
(123, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-19 22:03:12', NULL),
(124, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users/edit-save/3', 'Update data Kamal at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$5zFqEpAJjsoX2ygt6tpAQOe5kX8VSI56CZfWf.etggvaCbgsAwT6y</td><td></td></tr><tr><td>contact</td><td>01931039338</td><td>019310393383</td></tr><tr><td>id_cms_privileges</td><td>2</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr><tr><td>varifyToken</td><td>1</td><td></td></tr></tbody></table>', 3, '2018-07-19 22:03:26', NULL),
(125, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users/edit-save/3', 'Update data Kamal at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$5zFqEpAJjsoX2ygt6tpAQOe5kX8VSI56CZfWf.etggvaCbgsAwT6y</td><td></td></tr><tr><td>contact</td><td>019310393383</td><td>019310393385</td></tr><tr><td>id_cms_privileges</td><td>2</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr><tr><td>varifyToken</td><td>1</td><td></td></tr></tbody></table>', 3, '2018-07-19 22:03:39', NULL),
(126, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users/delete-image', 'Try delete the image of Kamal data at Users Management', '', 3, '2018-07-19 22:03:44', NULL),
(127, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users/delete-image', 'Try delete the image of Kamal data at Users Management', '', 3, '2018-07-19 22:05:21', NULL),
(128, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-19 22:05:25', NULL),
(129, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-19 22:05:34', NULL),
(130, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users/delete-image', 'Delete the image of Kamal at Users Management', '', 3, '2018-07-19 22:05:43', NULL),
(131, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users/edit-save/3', 'Update data Kamal at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/3/2018-07/koala.jpg</td></tr><tr><td>password</td><td>$2y$10$5zFqEpAJjsoX2ygt6tpAQOe5kX8VSI56CZfWf.etggvaCbgsAwT6y</td><td></td></tr><tr><td>id_cms_privileges</td><td>2</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr><tr><td>varifyToken</td><td>1</td><td></td></tr></tbody></table>', 3, '2018-07-19 22:05:53', NULL),
(132, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-07-19 22:15:39', NULL),
(133, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-19 22:15:55', NULL),
(134, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-07-19 22:34:52', NULL),
(135, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-19 22:35:07', NULL),
(136, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-19 22:41:34', NULL),
(137, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'bis@gmail.com login with IP Address ::1', '', 16, '2018-07-19 22:41:47', NULL),
(138, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'bis@gmail.com logout', '', 16, '2018-07-19 22:47:32', NULL),
(139, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'kamal@gmail.com login with IP Address ::1', '', 3, '2018-07-19 22:48:15', NULL),
(140, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'kamal@gmail.com logout', '', 3, '2018-07-19 22:48:27', NULL),
(141, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'bis@gmail.com login with IP Address ::1', '', 16, '2018-07-19 22:48:34', NULL),
(142, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'bis@gmail.com logout', '', 16, '2018-07-19 22:49:17', NULL),
(143, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'bis@gmail.com login with IP Address ::1', '', 16, '2018-07-19 22:49:24', NULL),
(144, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'bis@gmail.com logout', '', 16, '2018-07-19 22:53:14', NULL),
(145, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/admin/login', 'again@gmail.com login with IP Address ::1', '', 18, '2018-07-19 23:02:27', NULL),
(146, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/users/edit-save/18', 'Update data again at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/18/2018-07/hydrangeas.jpg</td></tr><tr><td>password</td><td>$2y$10$b.Mt481CA4PcaAEgvQD30.4ji1rwbkkRs6XA1eertmCqDxjRJudeO</td><td></td></tr><tr><td>address</td><td></td><td>Nirala Khulna</td></tr><tr><td>last_institute</td><td>Khulna University</td><td>Khulna Universitysdfasdf</td></tr><tr><td>note</td><td></td><td>somethingasdfasdfasdfasdfasd</td></tr><tr><td>id_cms_privileges</td><td>2</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr><tr><td>varifyToken</td><td>1</td><td></td></tr></tbody></table>', 18, '2018-07-19 23:03:31', NULL),
(147, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'again@gmail.com logout', '', 18, '2018-07-19 23:03:42', NULL),
(148, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'bis@gmail.com login with IP Address ::1', '', 16, '2018-07-19 23:03:46', NULL),
(149, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'again@gmail.com login with IP Address ::1', '', 18, '2018-07-19 23:03:56', NULL),
(150, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/delete/4', 'Delete data Awards at Menu Management', '', 1, '2018-07-20 00:22:18', NULL),
(151, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_awards/action-selected', 'Delete data 9,8,7,6,5,4,3 at Awards', '', 1, '2018-07-20 00:26:35', NULL),
(152, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_awards/edit-save/2', 'Update data Building Innovative Brands at Awards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>awr_by</td><td></td><td>Bangladesh Goverment</td></tr><tr><td>awr_teacher_id</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-07-20 00:45:55', NULL),
(153, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_awards/edit-save/1', 'Update data Distinguished Scientific at Awards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>awr_by</td><td></td><td>BTCL</td></tr><tr><td>awr_teacher_id</td><td>14</td><td></td></tr></tbody></table>', 1, '2018-07-20 00:46:11', NULL),
(154, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/5', 'Update data Awards at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-07-20 00:47:04', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(155, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_awards', 'Try view the data :name at Awards', '', 18, '2018-07-20 00:47:12', NULL),
(156, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'again@gmail.com logout', '', 18, '2018-07-20 00:47:18', NULL),
(157, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'again@gmail.com login with IP Address ::1', '', 18, '2018-07-20 00:47:27', NULL),
(158, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_awards/add-save', 'Add New Data BCB Technical support at Awards', '', 18, '2018-07-20 00:53:22', NULL),
(159, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/5', 'Update data Awards at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-list-alt</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-07-20 00:53:58', NULL),
(160, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/admin/login', 'again@gmail.com login with IP Address ::1', '', 18, '2018-07-20 13:52:56', NULL),
(161, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-20 13:53:59', NULL),
(162, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_projects/action-selected', 'Delete data 17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1 at Projects', '', 1, '2018-07-20 14:09:54', NULL),
(163, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/6', 'Update data Projects at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-07-20 14:13:38', NULL),
(164, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_projects', 'Try view the data :name at Projects', '', 18, '2018-07-20 14:13:45', NULL),
(165, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'again@gmail.com logout', '', 18, '2018-07-20 14:13:50', NULL),
(166, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'again@gmail.com login with IP Address ::1', '', 18, '2018-07-20 14:13:55', NULL),
(167, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_projects/add-save', 'Add New Data BDCMS at Projects', '', 18, '2018-07-20 14:21:18', NULL),
(168, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_gallerys/action-selected', 'Delete data 33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14 at Gallery', '', 1, '2018-07-20 14:29:59', NULL),
(169, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_gallerys/action-selected', 'Delete data 13,12,11,10,9,8,7,6,5,4,3,2,1 at Gallery', '', 1, '2018-07-20 14:30:09', NULL),
(170, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_awards/add-save', 'Add New Data Educations at Awards', '', 18, '2018-07-20 14:39:35', NULL),
(171, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_gallerys/add-save', 'Add New Data First at Gallery', '', 1, '2018-07-20 14:40:46', NULL),
(172, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/7', 'Update data Gallery at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-07-20 14:44:19', NULL),
(173, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_publications/action-selected', 'Delete data 14,13,12,11,10,9,8,7,6,5,4,3,2,1 at Publications', '', 1, '2018-07-20 14:50:15', NULL),
(174, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/8', 'Update data Publications at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-07-20 14:54:12', NULL),
(175, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_publications', 'Try view the data :name at Publications', '', 18, '2018-07-20 14:54:43', NULL),
(176, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'again@gmail.com logout', '', 18, '2018-07-20 14:54:48', NULL),
(177, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'again@gmail.com login with IP Address ::1', '', 18, '2018-07-20 14:54:53', NULL),
(178, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_publications/add-save', 'Add New Data Himu History at Publications', '', 18, '2018-07-20 14:58:35', NULL),
(179, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_trainings/action-selected', 'Delete data 11,10,9,8,7,6,5,4,3,2,1 at Trainings', '', 1, '2018-07-20 15:12:02', NULL),
(180, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_trainings/add-save', 'Add New Data CCNA at Trainings', '', 1, '2018-07-20 15:16:18', NULL),
(181, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_trainings/edit-save/1', 'Update data CCNA at Trainings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>duration</td><td>6 Months</td><td>1 Year</td></tr><tr><td>desc</td><td><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 12px; text-align: justify; background-color: rgb(245, 245, 245);\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 12px; text-align: justify; background-color: rgb(245, 245, 245);\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 12px; text-align: justify; background-color: rgb(245, 245, 245);\"><br></span><br></p></td><td><p><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, sans-serif; font-size: 12px; text-align: justify; background-color: rgb(245, 245, 245);\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, sans-serif; font-size: 12px; text-align: justify; background-color: rgb(245, 245, 245);\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, sans-serif; font-size: 12px; text-align: justify; background-color: rgb(245, 245, 245);\"><br></span><br></p></td></tr><tr><td>teacher_id</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-07-20 17:12:29', NULL),
(182, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/9', 'Update data Trainings at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-07-20 17:14:43', NULL),
(183, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_trainings', 'Try view the data :name at Trainings', '', 18, '2018-07-20 17:15:00', NULL),
(184, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'again@gmail.com logout', '', 18, '2018-07-20 17:15:06', NULL),
(185, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'again@gmail.com login with IP Address ::1', '', 18, '2018-07-20 17:15:11', NULL),
(186, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_trainings/add-save', 'Add New Data Lorem Isupm at Trainings', '', 18, '2018-07-20 17:16:30', NULL),
(187, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-22 09:05:53', NULL),
(188, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_department/add-save', 'Add New Data 1 at Department', '', 1, '2018-07-22 09:11:16', NULL),
(189, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_department/add-save', 'Add New Data 2 at Department', '', 1, '2018-07-22 09:12:06', NULL),
(190, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_department/edit-save/1', 'Update data  at Department', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>department</td><td>Computer Science & Engineering.</td><td>Computer Science & Engineering</td></tr></tbody></table>', 1, '2018-07-22 09:12:18', NULL),
(191, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_department/add-save', 'Add New Data 3 at Department', '', 1, '2018-07-22 09:12:32', NULL),
(192, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_department/add-save', 'Add New Data 4 at Department', '', 1, '2018-07-22 09:12:37', NULL),
(193, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_department/add-save', 'Add New Data 5 at Department', '', 1, '2018-07-22 09:12:48', NULL),
(194, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_department/add-save', 'Add New Data 6 at Department', '', 1, '2018-07-22 09:13:03', NULL),
(195, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$NFM1qAYEdwkSf.zxgxUOZ.6e3DrI0VIpY6Hab5OvM4l9xZJTT0DDC</td><td></td></tr><tr><td>birth_date</td><td></td><td>1981-02-03</td></tr><tr><td>address</td><td></td><td>15/1 , Nirala , Khulna, Bangladesh</td></tr><tr><td>dept_name</td><td></td><td>1</td></tr><tr><td>position</td><td></td><td>3</td></tr><tr><td>last_institute</td><td></td><td>Khulna University</td></tr><tr><td>note</td><td></td><td>The world is very beutiful</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-07-22 12:11:58', NULL),
(196, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/users/edit-save/1', 'Update data Shariful Islam at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Super Admin</td><td>Shariful Islam</td></tr><tr><td>password</td><td>$2y$10$NFM1qAYEdwkSf.zxgxUOZ.6e3DrI0VIpY6Hab5OvM4l9xZJTT0DDC</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-07-22 12:12:15', NULL),
(197, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/add-save', 'Add New Data Teachers at Menu Management', '', 1, '2018-07-22 13:21:03', NULL),
(198, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_interests/add-save', 'Add New Data Python at Interests', '', 1, '2018-07-22 13:26:37', NULL),
(199, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_interests/action-selected', 'Delete data 28,27,26 at Interests', '', 1, '2018-07-22 13:28:43', NULL),
(200, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_educations/add-save', 'Add New Data 25 at Educations', '', 1, '2018-07-22 14:05:44', NULL),
(201, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-23 21:11:40', NULL),
(202, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_expriences/add-save', 'Add New Data BRAC at Expriences', '', 1, '2018-07-23 21:29:41', NULL),
(203, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-23 21:33:08', NULL),
(204, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_researchs/add-save', 'Add New Data Educations at Resarches', '', 1, '2018-07-23 21:48:03', NULL),
(205, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Delete the image of 9 at Cover Picture', '', 1, '2018-07-23 21:55:38', NULL),
(206, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Delete the image of 9 at Cover Picture', '', 1, '2018-07-23 21:55:41', NULL),
(207, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Delete the image of 9 at Cover Picture', '', 1, '2018-07-23 21:55:44', NULL),
(208, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Delete the image of 9 at Cover Picture', '', 1, '2018-07-23 21:55:47', NULL),
(209, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Delete the image of 9 at Cover Picture', '', 1, '2018-07-23 21:55:50', NULL),
(210, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Delete the image of 9 at Cover Picture', '', 1, '2018-07-23 21:55:55', NULL),
(211, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Delete the image of 9 at Cover Picture', '', 1, '2018-07-23 21:55:58', NULL),
(212, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/delete-image', 'Delete the image of 9 at Cover Picture', '', 1, '2018-07-23 21:56:03', NULL),
(213, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_sections/edit-save/9', 'Update data  at Cover Picture', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>home_cover</td><td></td><td>uploads/1/2018-07/cover1.jpg</td></tr><tr><td>public_cover</td><td></td><td>uploads/1/2018-07/cover2.jpg</td></tr><tr><td>research_cover</td><td></td><td>uploads/1/2018-07/cover3.jpg</td></tr><tr><td>project_cover</td><td></td><td>uploads/1/2018-07/cover4.jpg</td></tr><tr><td>train_cover</td><td></td><td>uploads/1/2018-07/cover5.jpg</td></tr><tr><td>gallary_cover</td><td></td><td>uploads/1/2018-07/cover6.jpg</td></tr><tr><td>contact_cover</td><td></td><td>uploads/1/2018-07/cover7.jpg</td></tr><tr><td>course_cover</td><td></td><td>uploads/1/2018-07/desktop_wallpaper_03.jpg</td></tr><tr><td>teacher_id</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-07-23 21:56:43', NULL),
(214, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_gallerys/delete/1', 'Delete data First at Gallery', '', 1, '2018-07-23 22:02:45', NULL),
(215, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_gallerys/add-save', 'Add New Data asdfasdf at Gallery', '', 1, '2018-07-23 22:04:54', NULL),
(216, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_gallerys/add-save', 'Add New Data dgadfg at Gallery', '', 1, '2018-07-23 22:05:28', NULL),
(217, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_gallerys/delete/2', 'Delete data dgadfg at Gallery', '', 1, '2018-07-23 22:06:09', NULL),
(218, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_courses/add-save', 'Add New Data Algorithm at Courses', '', 1, '2018-07-23 22:23:52', NULL),
(219, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/add-save', 'Add New Data Social Links at Menu Management', '', 1, '2018-07-23 22:54:13', NULL),
(220, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/admin/login', 'sojib@gmail.com login with IP Address ::1', '', 19, '2018-07-23 23:14:59', NULL),
(221, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/users/edit-save/19', 'Update data Sojib Khan at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/19/2018-07/tulips.jpg</td></tr><tr><td>password</td><td>$2y$10$9loRciNgvAepkBo1GhEBF.lRgIbYTvuTl86Gz8VOxR5k9scMAlxli</td><td></td></tr><tr><td>address</td><td></td><td>15/1 , Nirala , Khulna, Bangladesh</td></tr><tr><td>note</td><td></td><td>The world is very beutiful</td></tr><tr><td>status</td><td>Active</td><td></td></tr><tr><td>varifyToken</td><td>1</td><td></td></tr></tbody></table>', 19, '2018-07-23 23:15:37', NULL),
(222, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'sojib@gmail.com logout', '', 19, '2018-07-23 23:15:43', NULL),
(223, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'sojib@gmail.com login with IP Address ::1', '', 19, '2018-07-23 23:15:55', NULL),
(224, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'sojib@gmail.com logout', '', 19, '2018-07-23 23:17:12', NULL),
(225, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'sojib@gmail.com login with IP Address ::1', '', 19, '2018-07-23 23:17:20', NULL),
(226, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/10', 'Update data Department at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:40:32', NULL),
(227, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/12', 'Update data Interest at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:40:41', NULL),
(228, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/13', 'Update data Educations at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:40:52', NULL),
(229, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/14', 'Update data Expriences at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-times</td><td>fa fa-th</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:41:39', NULL),
(230, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/7', 'Update data Gallery at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-gamepad</td><td>fa fa-modx</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:42:13', NULL),
(231, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/8', 'Update data Publications at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-envelope-o</td><td>fa fa-list-alt</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:42:46', NULL),
(232, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/add-save', 'Add New Data Academic at Menu Management', '', 1, '2018-07-23 23:44:39', NULL),
(233, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/10', 'Update data Department at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:45:13', NULL),
(234, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/add-save', 'Add New Data Parsonal at Menu Management', '', 1, '2018-07-23 23:49:09', NULL),
(235, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/10', 'Update data Department at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-signal</td><td>fa fa-credit-card</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:51:02', NULL),
(236, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/18', 'Update data Academic at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:51:15', NULL),
(237, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/16', 'Update data Courses at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:51:25', NULL),
(238, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/15', 'Update data Resarches at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:51:37', NULL),
(239, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/9', 'Update data Trainings at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-user</td><td>fa fa-th-list</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:52:17', NULL),
(240, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/5', 'Update data Awards at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-list-alt</td><td>fa fa-briefcase</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-07-23 23:53:25', NULL),
(241, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_educations', 'Try view the data :name at Educations', '', 19, '2018-07-23 23:54:01', NULL),
(242, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'sojib@gmail.com logout', '', 19, '2018-07-23 23:54:08', NULL),
(243, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'sojib@gmail.com login with IP Address ::1', '', 19, '2018-07-23 23:54:22', NULL),
(244, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_trainings/add-save', 'Add New Data BRTA at Trainings', '', 19, '2018-07-23 23:56:55', NULL),
(245, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-24 13:31:05', NULL),
(246, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-24 13:40:57', NULL),
(247, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-07-24 21:11:03', NULL),
(248, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/add-save', 'Add New Data Visit Site at Menu Management', '', 1, '2018-07-24 21:18:42', NULL),
(249, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/20', 'Update data Visit Site at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdminCmsUsersController@getProfile</td><td>AdminCmsUsersController@getProfilesite</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-07-24 21:23:15', NULL),
(250, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/20', 'Update data Visit Site at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdminCmsUsersController@getProfilesite</td><td>ProfileController@getProfilesite</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-07-24 21:29:25', NULL),
(251, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/20', 'Update data Visit Site at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-07-24 21:30:03', NULL),
(252, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/add-save', 'Add New Data saasdfasdf at Menu Management', '', 1, '2018-07-24 21:31:29', NULL),
(253, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/delete/21', 'Delete data saasdfasdf at Menu Management', '', 1, '2018-07-24 21:31:38', NULL),
(254, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/20', 'Update data Visit Site at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Controller & Method</td><td>Route</td></tr><tr><td>path</td><td>ProfileController@getProfilesite</td><td>profiledashboard</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-07-24 21:33:40', NULL),
(255, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/admin/login', 'mijanur@gmail.com login with IP Address ::1', '', 20, '2018-07-24 22:33:16', NULL),
(256, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'mijanur@gmail.com logout', '', 20, '2018-07-24 22:35:27', NULL),
(257, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'mijanur@gmail.com login with IP Address ::1', '', 20, '2018-07-24 22:35:50', NULL),
(258, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'mijanur@gmail.com logout', '', 20, '2018-07-24 22:36:44', NULL),
(259, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'mijanur@gmail.com login with IP Address ::1', '', 20, '2018-07-24 22:36:56', NULL),
(260, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'mijanur@gmail.com logout', '', 20, '2018-07-24 22:39:19', NULL),
(261, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'mijanur@gmail.com login with IP Address ::1', '', 20, '2018-07-24 22:39:31', NULL),
(262, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/13', 'Update data Educations at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-medium</td><td>fa fa-graduation-cap</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-07-24 22:56:57', NULL),
(263, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/16', 'Update data Courses at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-qrcode</td><td>fa fa-leanpub</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr></tbody></table>', 1, '2018-07-24 23:00:29', NULL),
(264, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/Academic/public/admin/menu_management/edit-save/1', 'Update data Security Keword at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-adjust</td><td>fa fa-key</td></tr></tbody></table>', 1, '2018-07-24 23:00:51', NULL),
(265, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/logout', 'mijanur@gmail.com logout', '', 20, '2018-07-24 23:04:30', NULL),
(266, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/login', 'mijanur@gmail.com login with IP Address ::1', '', 20, '2018-07-24 23:04:45', NULL),
(267, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_educations/add-save', 'Add New Data 26 at Educations', '', 20, '2018-07-24 23:05:37', NULL),
(268, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_educations/add-save', 'Add New Data 27 at Educations', '', 20, '2018-07-24 23:06:48', NULL),
(269, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_educations/add-save', 'Add New Data 28 at Educations', '', 20, '2018-07-24 23:08:35', NULL),
(270, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_expriences/add-save', 'Add New Data Somaj Unnayan Songstha at Expriences', '', 20, '2018-07-24 23:19:29', NULL),
(271, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_expriences/edit-save/27', 'Update data Somaj Unnayan Songstha at Expriences', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>exp_teacher_id</td><td>20</td><td></td></tr><tr><td>exp_desc</td><td><p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p></td><td><p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p></td></tr><tr><td>exp_department</td><td>something</td><td></td></tr></tbody></table>', 20, '2018-07-24 23:20:07', NULL),
(272, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/7.0.185.1002 Safari/537.36', 'http://localhost/Academic/public/admin/tbl_expriences/add-save', 'Add New Data NGO at Expriences', '', 20, '2018-07-24 23:21:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Security Keword', 'URL', 'http://localhost/Academic/public/keywordEdit', 'normal', 'fa fa-key', 0, 1, 0, 1, 1, '2018-07-18 15:30:31', '2018-07-24 23:00:51'),
(3, 'Cover Picture', 'Module', 'tbl_sections', 'normal', 'fa fa-picture-o', 19, 1, 0, 1, 2, '2018-07-18 17:37:04', '2018-07-19 01:50:30'),
(5, 'Awards', 'Route', 'AdminTblAwards1ControllerGetIndex', 'normal', 'fa fa-briefcase', 18, 1, 0, 1, 6, '2018-07-20 00:22:40', '2018-07-23 23:53:25'),
(6, 'Projects', 'Route', 'AdminTblProjectsControllerGetIndex', 'normal', 'fa fa-heart', 19, 1, 0, 1, 4, '2018-07-20 13:58:16', '2018-07-20 14:13:38'),
(7, 'Gallery', 'Route', 'AdminTblGallerysControllerGetIndex', 'normal', 'fa fa-modx', 19, 1, 0, 1, 1, '2018-07-20 14:26:19', '2018-07-23 23:42:12'),
(8, 'Publications', 'Route', 'AdminTblPublicationsControllerGetIndex', 'normal', 'fa fa-list-alt', 18, 1, 0, 1, 4, '2018-07-20 14:45:48', '2018-07-23 23:42:46'),
(9, 'Trainings', 'Route', 'AdminTblTrainingsControllerGetIndex', 'normal', 'fa fa-th-list', 18, 1, 0, 1, 2, '2018-07-20 15:01:41', '2018-07-23 23:52:17'),
(10, 'Department', 'Route', 'AdminTblDepartmentControllerGetIndex', 'normal', 'fa fa-credit-card', 0, 1, 0, 1, 3, '2018-07-22 09:09:26', '2018-07-23 23:51:02'),
(11, 'Teachers', 'URL', 'http://localhost/Academic/public/admin/users', 'normal', 'fa fa-users', 0, 1, 0, 1, 2, '2018-07-22 13:21:03', NULL),
(12, 'Interest', 'Route', 'AdminTblInterestsControllerGetIndex', 'normal', 'fa fa-star-o', 19, 1, 0, 1, 5, '2018-07-22 13:22:26', '2018-07-23 23:40:41'),
(13, 'Educations', 'Route', 'AdminTblEducationsControllerGetIndex', 'normal', 'fa fa-graduation-cap', 18, 1, 0, 1, 3, '2018-07-22 13:29:46', '2018-07-24 22:56:57'),
(14, 'Expriences', 'Route', 'AdminTblExpriencesControllerGetIndex', 'normal', 'fa fa-th', 19, 1, 0, 1, 3, '2018-07-23 21:14:56', '2018-07-23 23:41:39'),
(15, 'Resarches', 'Route', 'AdminTblResearchsControllerGetIndex', 'normal', 'fa fa-pencil-square-o', 18, 1, 0, 1, 5, '2018-07-23 21:37:57', '2018-07-23 23:51:36'),
(16, 'Courses', 'Route', 'AdminTblCoursesControllerGetIndex', 'normal', 'fa fa-leanpub', 18, 1, 0, 1, 1, '2018-07-23 22:09:11', '2018-07-24 23:00:29'),
(17, 'Social Links', 'URL', 'http://localhost/Academic/public/socialEdit', 'normal', 'fa fa-qrcode', 19, 1, 0, 1, 6, '2018-07-23 22:54:12', NULL),
(18, 'Academic', 'URL', '#', 'normal', 'fa fa-pencil-square-o', 0, 1, 0, 1, 4, '2018-07-23 23:44:39', '2018-07-23 23:51:15'),
(19, 'Parsonal', 'URL', '#', 'normal', 'fa fa-user-secret', 0, 1, 0, 1, 5, '2018-07-23 23:49:09', NULL),
(20, 'Visit Site', 'Route', 'profiledashboard', 'normal', 'fa fa-delicious', 0, 1, 0, 1, NULL, '2018-07-24 21:18:41', '2018-07-24 21:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(2, 2, 1),
(3, 3, 1),
(4, 3, 2),
(6, 4, 1),
(9, 6, 1),
(10, 6, 2),
(18, 11, 1),
(24, 17, 1),
(25, 17, 2),
(28, 12, 1),
(29, 12, 2),
(32, 14, 1),
(33, 14, 2),
(34, 7, 1),
(35, 7, 2),
(36, 8, 1),
(37, 8, 2),
(41, 19, 1),
(42, 19, 2),
(43, 10, 1),
(44, 18, 1),
(45, 18, 2),
(48, 15, 1),
(49, 15, 2),
(50, 9, 1),
(51, 9, 2),
(52, 5, 1),
(53, 5, 2),
(56, 21, 1),
(57, 21, 2),
(58, 20, 1),
(59, 20, 2),
(60, 13, 1),
(61, 13, 2),
(62, 16, 1),
(63, 16, 2),
(64, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-07-17 14:21:17', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-07-17 14:21:17', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-07-17 14:21:17', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-07-17 14:21:17', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-07-17 14:21:17', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-07-17 14:21:17', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-07-17 14:21:17', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-07-17 14:21:17', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-07-17 14:21:17', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-07-17 14:21:17', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-07-17 14:21:17', NULL, NULL),
(13, 'Cover Picture', 'fa fa-file-picture-o', 'tbl_sections', 'tbl_sections', 'AdminTblSectionsController', 0, 0, '2018-07-18 17:37:04', NULL, NULL),
(14, 'Awards', 'fa fa-briefcase', 'tbl_awards', 'tbl_awards', 'AdminTblAwards1Controller', 0, 0, '2018-07-20 00:22:40', NULL, NULL),
(15, 'Projects', 'fa fa-heart', 'tbl_projects', 'tbl_projects', 'AdminTblProjectsController', 0, 0, '2018-07-20 13:58:16', NULL, NULL),
(16, 'Gallery', '	\r\nfa fa-modx\r\n', 'tbl_gallerys', 'tbl_gallerys', 'AdminTblGallerysController', 0, 0, '2018-07-20 14:26:19', NULL, NULL),
(17, 'Publications', 'fa fa-list-alt\r\n', 'tbl_publications', 'tbl_publications', 'AdminTblPublicationsController', 0, 0, '2018-07-20 14:45:48', NULL, NULL),
(18, 'Trainings', 'fa fa-th-list', 'tbl_trainings', 'tbl_trainings', 'AdminTblTrainingsController', 0, 0, '2018-07-20 15:01:41', NULL, NULL),
(19, 'Department', 'fa fa-credit-card', 'tbl_department', 'tbl_department', 'AdminTblDepartmentController', 0, 0, '2018-07-22 09:09:26', NULL, NULL),
(20, 'Interests', 'fa fa-star-o', 'tbl_interests', 'tbl_interests', 'AdminTblInterestsController', 0, 0, '2018-07-22 13:22:26', NULL, NULL),
(21, 'Educations', 'fa fa-graduation-cap', 'tbl_educations', 'tbl_educations', 'AdminTblEducationsController', 0, 0, '2018-07-22 13:29:46', NULL, NULL),
(22, 'Expriences', 'fa fa-th', 'tbl_expriences', 'tbl_expriences', 'AdminTblExpriencesController', 0, 0, '2018-07-23 21:14:56', NULL, NULL),
(23, 'Resarches', 'fa fa-pencil-square-o', 'tbl_researchs', 'tbl_researchs', 'AdminTblResearchsController', 0, 0, '2018-07-23 21:37:57', NULL, NULL),
(24, 'Courses', 'fa fa-leanpub', 'tbl_courses', 'tbl_courses', 'AdminTblCoursesController', 0, 0, '2018-07-23 22:09:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_notifications`
--

INSERT INTO `cms_notifications` (`id`, `id_cms_users`, `content`, `url`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 1, 'Wait for your approvement', 'http://localhost/Academic/public/admin/users', 1, NULL, NULL),
(2, 1, 'Bismillah from MBA department is waiting for your approval', 'http://localhost/Academic/public/admin/users', 1, '2018-07-19 15:39:02', '2018-07-19 15:39:02'),
(3, 1, 'again from MBA department is waiting for your approval', 'http://localhost/Academic/public/admin/users', 1, '2018-07-19 16:00:47', '2018-07-19 16:00:47'),
(4, 1, 'Md Mijanur Rahaman from 2 department is waiting for your approval', 'http://localhost/Academic/public/admin/users', 1, '2018-07-24 15:26:27', '2018-07-24 15:26:27'),
(5, 1, 'Rony Adikari from 4 department is waiting for your approval', 'http://localhost/Academic/public/admin/users', 1, '2018-07-24 15:43:57', '2018-07-24 15:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-green', '2018-07-17 14:21:17', NULL),
(2, 'Teacher', 0, 'skin-purple', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(54, 1, 1, 1, 1, 1, 2, 14, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(55, 1, 1, 1, 1, 1, 2, 24, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(56, 1, 0, 1, 1, 1, 2, 13, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(57, 1, 1, 1, 1, 1, 2, 19, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(58, 1, 1, 1, 1, 1, 2, 21, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(59, 1, 1, 1, 1, 1, 2, 22, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(60, 1, 1, 1, 1, 1, 2, 16, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(61, 1, 1, 1, 1, 1, 2, 20, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(62, 1, 1, 1, 1, 1, 2, 15, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(63, 1, 1, 1, 1, 1, 2, 17, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(64, 1, 1, 1, 1, 1, 2, 23, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(65, 1, 1, 1, 1, 1, 2, 18, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(66, 0, 0, 0, 1, 1, 2, 4, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(67, 1, 1, 1, 1, 1, 1, 14, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(68, 1, 1, 1, 1, 1, 1, 24, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(69, 1, 1, 1, 1, 1, 1, 13, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(70, 1, 1, 1, 1, 1, 1, 19, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(71, 1, 1, 1, 1, 1, 1, 21, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(72, 1, 1, 1, 1, 1, 1, 22, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(73, 1, 1, 1, 1, 1, 1, 16, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(74, 1, 1, 1, 1, 1, 1, 20, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(75, 1, 1, 1, 1, 1, 1, 15, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(76, 1, 1, 1, 1, 1, 1, 17, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(77, 1, 1, 1, 1, 1, 1, 23, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(78, 1, 1, 1, 1, 1, 1, 18, '2018-07-24 16:10:01', '2018-07-24 16:10:01'),
(79, 1, 1, 1, 1, 1, 1, 4, '2018-07-24 16:10:01', '2018-07-24 16:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-07-17 14:21:18', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-07-17 14:21:18', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2018-07-17 14:21:18', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@academicnwu.com', 'text', NULL, NULL, '2018-07-17 14:21:18', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-07-17 14:21:18', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2018-07-17 14:21:18', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-07-17 14:21:18', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2018-07-17 14:21:18', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2018-07-17 14:21:18', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Academic NWU', 'text', NULL, NULL, '2018-07-17 14:21:18', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-07-17 14:21:18', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', NULL, 'upload_image', NULL, NULL, '2018-07-17 14:21:18', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2018-07-17 14:21:18', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-07-17 14:21:18', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2018-07-17 14:21:18', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2018-07-17 14:21:18', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dept_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_institute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `id_cms_privileges` int(11) NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `varifyToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `contact`, `birth_date`, `address`, `dept_name`, `position`, `last_institute`, `note`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `varifyToken`) VALUES
(1, 'Shariful Islam', 'uploads/1/2018-07/my.jpg', 'admin@crudbooster.com', '$2y$10$NFM1qAYEdwkSf.zxgxUOZ.6e3DrI0VIpY6Hab5OvM4l9xZJTT0DDC', '01969516501', '1981-02-03', '15/1 , Nirala , Khulna, Bangladesh', '1', '3', 'Khulna University', 'The world is very beutiful', 1, '2018-07-17 14:21:17', '2018-07-22 12:12:15', 'Active', '1'),
(2, 'Editor', 'uploads/1/2018-07/images.png', 'editor@gmail.com', '$2y$10$GEmkE8m9fEImGV2ye7efQe49lcdMc95n40AT4TUbaW3yEDIaSarEC', '01969516502', '', '', '1', '2', '', NULL, 2, '2018-07-17 21:31:33', '2018-07-17 23:03:14', 'Active', '1'),
(3, 'Kamal', 'uploads/3/2018-07/koala.jpg', 'kamal@gmail.com', '$2y$10$5zFqEpAJjsoX2ygt6tpAQOe5kX8VSI56CZfWf.etggvaCbgsAwT6y', '019310393385', '1983-07-13', 'Nirala Khulna', '2', '3', 'Khulna University, Khulna.', 'I love my country Bangladesh.', 2, '2018-07-17 21:36:43', '2018-07-19 22:05:53', 'Active', '1'),
(14, 'Momen Ali', '	\r\nuploads/1/2018-07/images.png', 'momen@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01955454545', '1983-07-13', NULL, '1', '4', 'Khulna University', NULL, 2, '2018-07-18 01:42:34', '2018-07-18 01:43:37', 'Active', '1'),
(16, 'Bismillah', 'uploads/1/2018-07/images.png', 'bis@gmail.com', '$2y$10$vBsWhczgGDHm2dhTICVbseXOQIikiZqSItxlp/qWMBYf5Iq9XxxJO', '01952525252', '1982-07-20', NULL, '3', '3', 'Khulna University', NULL, 2, '2018-07-19 22:38:29', '2018-07-19 22:39:02', 'Active', '1'),
(17, 'Morshad Alom', 'images/profile.jpg', 'final@gmail.com', '$2y$10$2f5FxLsCcdcQCvCIjDyrxe9FY0ffenBNPRwuM8flcfvE4lH0udqrG', '01999999999', '1983-07-20', NULL, '4', '5', 'KUET', NULL, 2, '2018-07-19 22:54:19', '2018-07-19 22:54:19', 'Active', '1'),
(18, 'again', 'uploads/18/2018-07/hydrangeas.jpg', 'again@gmail.com', '$2y$10$b.Mt481CA4PcaAEgvQD30.4ji1rwbkkRs6XA1eertmCqDxjRJudeO', '01956565656', '1955-07-21', 'Nirala Khulna', '3', '3', 'Khulna Universitysdfasdf', 'somethingasdfasdfasdfasdfasd', 2, '2018-07-19 22:58:49', '2018-07-19 23:03:31', 'Active', '1'),
(19, 'Sojib Khan', 'uploads/19/2018-07/tulips.jpg', 'sojib@gmail.com', '$2y$10$9loRciNgvAepkBo1GhEBF.lRgIbYTvuTl86Gz8VOxR5k9scMAlxli', '01969696969', '1965-03-31', '15/1 , Nirala , Khulna, Bangladesh', '2', '3', 'Khulna University', 'The world is very beutiful', 2, '2018-07-22 09:41:52', '2018-07-23 23:15:37', 'Active', '1'),
(20, 'Md Mijanur Rahaman', 'images/profile.jpg', 'mijanur@gmail.com', '$2y$10$Dh5jLCo/H9arRZffr657o.Z6EQTCpmax2LMyY2o3OYVFUG6LNLHJO', '01969516522', '1983-12-31', NULL, '2', '3', 'Bangladesh University', NULL, 2, '2018-07-24 22:17:03', '2018-07-24 22:26:27', 'Active', '1'),
(21, 'Rony Adikari', 'images/profile.jpg', 'rony@gmail.com', '$2y$10$lr6J2MaMIwFUpgxXh0DLF.U6lSINN/rdVT96yJXGMEjJ5Ga2RfxEC', '01969696969', '2083-12-31', NULL, '4', '3', 'Khulna University, Khulna.', NULL, 2, '2018-07-24 22:43:15', '2018-07-24 22:43:57', 'Active', '1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_07_11_041832_create_tbl_profiles', 1),
(2, '2018_07_11_043202_create_tbl_projects', 2),
(3, '2018_07_11_043552_create_tbl_gallerys', 3),
(4, '2018_07_11_044101_create_tbl_interests', 4),
(5, '2018_07_11_044308_create_tbl_socials', 5),
(6, '2018_07_11_044415_create_tbl_sections', 5),
(7, '2018_07_11_044449_create_tbl_securitys', 5),
(8, '2018_07_11_060031_create_tbl_awards', 6),
(9, '2018_07_12_035618_create_tbl_researchs', 7),
(10, '2018_07_12_053525_create_tbl_educations', 8),
(11, '2018_07_12_053845_create_tbl_awards', 9),
(12, '2018_07_12_054107_create_tbl_contacts', 10),
(13, '2018_07_12_054216_create_tbl_trainings', 10),
(14, '2018_07_12_060823_create_tbl_expriences', 11),
(15, '2018_07_12_061045_create_tbl_publications', 12),
(16, '2018_07_14_095456_create_tbl_positions', 13),
(17, '2018_07_14_104352_create_tbl_courses', 14),
(18, '2018_07_14_104756_create_tbl_coursetypes', 15),
(19, '2016_08_07_145904_add_table_cms_apicustom', 16),
(20, '2016_08_07_150834_add_table_cms_dashboard', 16),
(21, '2016_08_07_151210_add_table_cms_logs', 16),
(22, '2016_08_07_151211_add_details_cms_logs', 16),
(23, '2016_08_07_152014_add_table_cms_privileges', 16),
(24, '2016_08_07_152214_add_table_cms_privileges_roles', 16),
(25, '2016_08_07_152320_add_table_cms_settings', 16),
(26, '2016_08_07_152421_add_table_cms_users', 16),
(27, '2016_08_07_154624_add_table_cms_menus_privileges', 16),
(28, '2016_08_07_154624_add_table_cms_moduls', 16),
(29, '2016_08_17_225409_add_status_cms_users', 16),
(30, '2016_08_20_125418_add_table_cms_notifications', 16),
(31, '2016_09_04_033706_add_table_cms_email_queues', 16),
(32, '2016_09_16_035347_add_group_setting', 16),
(33, '2016_09_16_045425_add_label_setting', 16),
(34, '2016_09_17_104728_create_nullable_cms_apicustom', 16),
(35, '2016_10_01_141740_add_method_type_apicustom', 16),
(36, '2016_10_01_141846_add_parameters_apicustom', 16),
(37, '2016_10_01_141934_add_responses_apicustom', 16),
(38, '2016_10_01_144826_add_table_apikey', 16),
(39, '2016_11_14_141657_create_cms_menus', 16),
(40, '2016_11_15_132350_create_cms_email_templates', 16),
(41, '2016_11_15_190410_create_cms_statistics', 16),
(42, '2016_11_17_102740_create_cms_statistic_components', 16),
(43, '2017_06_06_164501_add_deleted_at_cms_moduls', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_awards`
--

CREATE TABLE `tbl_awards` (
  `id` int(10) UNSIGNED NOT NULL,
  `awr_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `awr_year` int(11) NOT NULL,
  `awr_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `awr_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `awr_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `awr_teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_awards`
--

INSERT INTO `tbl_awards` (`id`, `awr_name`, `awr_year`, `awr_desc`, `awr_by`, `awr_date`, `awr_teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Distinguished Scientific', 2015, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas dapibus lectus non dignissim. Pellentesque auctor ornare urna, volutpat condimentum quam porttitor at. Vestibulum tincidunt diam in eros aliquam luctus. Donec sagittis a purus a porttitor. Sed non feugiat enim. Donec eget metus erat. Vivamus sed consequat orci. <a href=\"http://themeforest.net/item/faculty-responsive-academic-wordpress-theme/6817161\" target=\"_blank\">Aenean</a> commodo lectus sed purus auctor ullamcorper.', 'BTCL', '12/12/2015', 14, NULL, '2018-07-20 00:46:11'),
(2, 'Building Innovative Brands', 1017, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas dapibus lectus non dignissim. Pellentesque auctor ornare urna, volutpat condimentum quam porttitor at. Vestibulum tincidunt diam in eros aliquam luctus. Donec sagittis a purus a porttitor. Sed non feugiat enim. Donec eget metus erat. Vivamus sed consequat orci. <a href=\"http://themeforest.net/item/faculty-responsive-academic-wordpress-theme/6817161\" target=\"_blank\">Aenean</a> commodo lectus sed purus auctor ullamcorper.', 'Bangladesh Goverment', '12/12/2017', 2, NULL, '2018-07-20 00:45:55'),
(3, 'BCB Technical support', 2017, '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 'KDA', '2017-05-25', 18, '2018-07-20 00:53:22', NULL),
(4, 'Educations', 2018, '<p>kahdfk alkdfj hadsf asdf</p>', 'NWU', '2018-07-05', 18, '2018-07-20 14:39:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contacts`
--

CREATE TABLE `tbl_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_contacts`
--

INSERT INTO `tbl_contacts` (`id`, `name`, `number`, `email`, `message`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Md.Nazmul Hossain', '1931039338', 'csenazmul96@gmail.com', 'Hello ', 25, NULL, NULL),
(2, 'MD.NAZMUL HOSSAIN', '2', 'nadia@gmail.com', 'f', 25, NULL, NULL),
(3, 'MD.NAZMUL HOSSAIN', '2323', 'kamal@gmail.com', 'sdf', 25, NULL, NULL),
(4, 'MD.NAZMUL HOSSAIN', '2323', 'kamal@gmail.com', 'sdf', 25, NULL, NULL),
(5, 'MD.NAZMUL HOSSAIN', '3242343', 'kamal@gmail.com', 'fdsf', 25, NULL, NULL),
(6, 'MD.NAZMUL HOSSAIN', '345435645', 'sanazmul5@gmail.com', 'efdsfdsfdsf', 25, NULL, NULL),
(7, 'MD.NAZMUL HOSSAIN', '23', 'sanazmul5@gmail.com', 'dfgvxcv', 25, NULL, NULL),
(8, 'MD.NAZMUL HOSSAIN', '23', 'kamal@gmail.com', 'dfg', 25, NULL, NULL),
(9, 'MD.NAZMUL HOSSAIN', '234', 'kamal@gmail.com', 'sefsd', 27, NULL, NULL),
(10, 'MD.NAZMUL HOSSAIN', '34', 'nadia@gmail.com', 'efsdf', 25, NULL, NULL),
(11, 'ooooooo', '12345678911', 'sanazmul5@gmail.com', 'ertert', 25, NULL, NULL),
(12, 'MD.NAZMUL HOSSAIN', '3432432', 'kamal@gmail.com', 'scxcxc', 25, NULL, NULL),
(13, 'MD.NAZMUL HOSSAIN', '324234', 'kamal@gmail.com', 'wefsdfsd', 27, NULL, NULL),
(14, 'Kamal', '01969516500', 'kamal@gmail.com', 'asdf asdfa sdf', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`course_id`, `course_name`, `course_code`, `program`, `course_type`, `course_desc`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Numerical Analysis', 'CSE-2201', 'CSE 3y', 'Lab Course', 'Round robin', 2, NULL, NULL),
(2, 'Networking', 'cse-3101', 'CSE-4y', 'Theory', 'Routing', 2, NULL, NULL),
(3, 'Mathmetic', 'cse-2102', 'CIVIL 3y', 'Lab Course', 'Matrix', 2, NULL, NULL),
(4, 'Data analysis and design', 'CSE-3303', 'CSE 4y', 'Lab Course', 'Algorithm', 2, NULL, NULL),
(5, 'Arithmetic 2 ', 'CSE-3302', 'CSE-3y', 'Theory', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 1, NULL, NULL),
(6, 'English', 'CIVIL-3302', 'CIVIL 4y', 'Theory', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 1, NULL, NULL),
(7, 'Arithmetic 2 ', 'CSE-3302', 'CSE-3y', 'Theory', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 1, NULL, NULL),
(8, 'English', 'CIVIL-3302', 'CIVIL 4y', 'Theory', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 1, NULL, NULL),
(9, 'Arithmetic 2 ', 'CSE-3302', 'CSE-3y', 'Theory', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 1, NULL, NULL),
(10, 'English', 'CIVIL-3302', 'CIVIL 4y', 'Theory', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 1, NULL, NULL),
(11, 'Arithmetic 2 ', 'CSE-3302', 'CSE-3y', 'Theory', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 3, NULL, NULL),
(12, 'Data Structure', 'CSE-2201', 'CSE-4y', 'Lab', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 3, NULL, NULL),
(13, 'English', 'CIVIL-3302', 'CIVIL 4y', 'Theory', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 3, NULL, NULL),
(14, 'Arithmetic 2 ', 'CSE-3302', 'CSE-3y', 'Theory', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 3, NULL, NULL),
(15, 'Data Structure', 'CSE-2201', 'CSE-4y', 'Lab', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 3, NULL, NULL),
(16, 'English', 'CIVIL-3302', 'CIVIL 4y', 'Theory', 'tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 3, NULL, NULL),
(17, 'Algorithm', 'CSE 3301', 'CSE 4Y', 'Theory Course', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2018-07-23 22:23:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `department`) VALUES
(1, 'Computer Science & Engineering'),
(2, 'Electrical & Electronic Engineering'),
(3, 'MBA'),
(4, 'BBA'),
(5, 'Civil Engineering'),
(6, 'English Department');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_educations`
--

CREATE TABLE `tbl_educations` (
  `id` int(10) UNSIGNED NOT NULL,
  `edu_degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_board` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_pass_year` int(11) NOT NULL,
  `edu_gpa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_educations`
--

INSERT INTO `tbl_educations` (`id`, `edu_degree`, `edu_board`, `edu_pass_year`, `edu_gpa`, `edu_subject`, `edu_teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'SSC', 'Jessore', 2009, '3.31', 'Business', 1, NULL, NULL),
(2, 'Diploma in engineering', 'Technical', 2013, '3.35', 'Business', 2, NULL, NULL),
(3, 'S.S.C', 'Jessore', 2009, '4.30', 'Science', 2, NULL, NULL),
(4, 'H.S.C', 'Jessore', 2011, '4.50', 'Science', 3, NULL, NULL),
(5, 'S.S.C', 'Jessore', 2009, '4.30', 'Science', 2, NULL, NULL),
(6, 'B.S.C', 'KUET', 2011, '3.50', 'CSE', 2, NULL, NULL),
(7, 'H.S.C', 'Jessore', 2009, '4.30', 'Science', 14, NULL, NULL),
(8, 'M.S.C', 'Khulna University', 2011, '3.50', 'EEE', 18, NULL, NULL),
(9, 'S.S.C', 'Jessore', 2009, '4.30', 'Science', 16, NULL, NULL),
(10, 'B.S.C', 'KUET', 2011, '3.50', 'CSE', 16, NULL, NULL),
(11, 'S.S.C', 'Jessore', 2009, '4.30', 'Science', 18, NULL, NULL),
(12, 'M.S.C', 'Khulna University', 2011, '3.50', 'EEE', 18, NULL, NULL),
(13, 'S.S.C', 'Jessore', 2009, '4.30', 'Science', 2, NULL, NULL),
(14, 'B.S.C', 'KUET', 2011, '3.50', 'CSE', 3, NULL, NULL),
(15, 'S.S.C', 'Jessore', 2009, '4.30', 'Science', 3, NULL, NULL),
(16, 'M.S.C', 'Khulna University', 2011, '3.50', 'EEE', 1, NULL, NULL),
(17, 'S.S.C', 'Jessore', 2009, '4.30', 'Science', 1, NULL, NULL),
(18, 'B.S.C', 'KUET', 2011, '3.50', 'CSE', 16, NULL, NULL),
(19, 'H.S.C', 'Jessore', 2009, '4.30', 'Science', 18, NULL, NULL),
(20, 'M.S.C', 'Khulna University', 2011, '3.50', 'EEE', 16, NULL, NULL),
(21, 'S.S.C', 'Jessore', 2009, '4.30', 'Science', 3, NULL, NULL),
(22, 'B.S.C', 'KUET', 2011, '3.50', 'CSE', 3, NULL, NULL),
(23, 'S.S.C', 'Jessore', 2009, '4.30', 'Science', 1, NULL, NULL),
(24, 'M.S.C', 'Khulna University', 2011, '3.50', 'EEE', 1, NULL, NULL),
(25, 'SSC', 'Jessore', 2009, '3.38 out of (5.00)', 'Business', 1, '2018-07-22 14:05:44', NULL),
(26, 'SSC', 'Jessore', 2009, '3.38 out of (5.00)', 'Business', 20, '2018-07-24 23:05:37', NULL),
(27, 'Diploma In Engineering', 'BTEB', 2013, '3.71 out of (4.00)', 'Computer Technology', 20, '2018-07-24 23:06:48', NULL),
(28, 'B.SC.', 'North Western University', 2018, '3.91 out of (4.00)', 'Computer Science and Engineering', 20, '2018-07-24 23:08:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expriences`
--

CREATE TABLE `tbl_expriences` (
  `id` int(10) UNSIGNED NOT NULL,
  `exp_company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_post_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_strt_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_teacher_id` int(11) NOT NULL,
  `exp_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_expriences`
--

INSERT INTO `tbl_expriences` (`id`, `exp_company_name`, `exp_post_name`, `exp_strt_date`, `exp_end_date`, `exp_teacher_id`, `exp_desc`, `exp_department`, `created_at`, `updated_at`) VALUES
(1, 'BRWSSP', 'Data Processing Operator', 'Feb/2015', 'Jan/2017', 2, 'Good Job', 'CSE', NULL, NULL),
(2, 'Akij Group of Industry', 'Assistant programmers', 'Jan-2012', 'Continue', 2, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'CSE', NULL, NULL),
(3, 'City Medical College ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 2, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(4, 'Akij Group of Industry', 'Assistant programmers', 'Jan-2012', 'Continue', 3, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'CSE', NULL, NULL),
(5, 'City Medical College ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 2, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(6, 'Amzed Fish Feed LTD ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 16, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(7, 'Star Jut Mils LTD ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 17, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(8, 'Akij Group of Industry', 'Assistant programmers', 'Jan-2012', 'Continue', 18, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'CSE', NULL, NULL),
(9, 'City Medical College ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 17, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(10, 'Amzed Fish Feed LTD ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 19, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(11, 'Star Jut Mils LTD ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 14, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(12, 'Akij Group of Industry', 'Assistant programmers', 'Jan-2012', 'Continue', 14, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'CSE', NULL, NULL),
(13, 'City Medical College ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 19, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(14, 'Amzed Fish Feed LTD ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 19, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(15, 'Star Jut Mils LTD ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 3, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(16, 'Akij Group of Industry', 'Assistant programmers', 'Jan-2012', 'Continue', 3, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'CSE', NULL, NULL),
(17, 'City Medical College ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 14, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(18, 'Amzed Fish Feed LTD ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 3, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(19, 'City Medical College ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 1, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(20, 'Amzed Fish Feed LTD ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 1, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(21, 'Star Jut Mils LTD ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 1, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(22, 'Akij Group of Industry', 'Assistant programmers', 'Jan-2012', 'Continue', 3, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'CSE', NULL, NULL),
(23, 'City Medical College ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 3, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(24, 'Amzed Fish Feed LTD ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 2, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(25, 'Star Jut Mils LTD ', 'Executive IT officer', 'Jun-2009', 'Jan-2012', 2, 'sodales tincidunt lorem sit amet, vestibulum commodo tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tempor ex sed iaculis vulputate.', 'IT', NULL, NULL),
(26, 'BRAC', 'Computer Operator', 'May - 2011', 'Continue', 1, '<p>sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;</p><p>sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;sodales tincidunt lorem sit amet, vestibulum commodo tortor.&nbsp;<br></p>', 'Social', '2018-07-23 21:29:41', '2018-07-23 14:29:41'),
(27, 'Somaj Unnayan Songstha', 'Computer Operator', 'March 2011', 'August 2013', 20, '<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '', '2018-07-24 23:19:29', '2018-07-24 23:20:07'),
(28, 'NGO', 'Data entry oparator', 'February 2015', 'Continue', 20, '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '', '2018-07-24 23:21:06', '2018-07-24 16:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallerys`
--

CREATE TABLE `tbl_gallerys` (
  `id` int(10) UNSIGNED NOT NULL,
  `glry_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `glry_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_gallerys`
--

INSERT INTO `tbl_gallerys` (`id`, `glry_name`, `glry_cover`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'asdfasdf', 'uploads/1/2018-07/cover1.jpg', 1, '2018-07-23 22:04:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_interests`
--

CREATE TABLE `tbl_interests` (
  `id` int(10) UNSIGNED NOT NULL,
  `inst_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_interests`
--

INSERT INTO `tbl_interests` (`id`, `inst_name`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Time, Money and Happiness', 2, NULL, NULL),
(2, 'Building Innovative Brands', 18, NULL, NULL),
(3, 'Cricket', 14, NULL, NULL),
(4, 'Football', 2, NULL, NULL),
(5, 'Asian Game', 14, NULL, NULL),
(6, 'Long Tour', 18, NULL, NULL),
(7, 'Band Music', 2, NULL, NULL),
(8, 'Programming', 3, NULL, NULL),
(9, 'Asian Game', 2, NULL, NULL),
(10, 'Long Tour', 3, NULL, NULL),
(11, 'Band Music', 3, NULL, NULL),
(12, 'Programming', 2, NULL, NULL),
(13, 'Asian Game', 14, NULL, NULL),
(14, 'Long Tour', 18, NULL, NULL),
(15, 'Band Music', 18, NULL, NULL),
(16, 'Programming', 14, NULL, NULL),
(17, 'Asian Game', 16, NULL, NULL),
(18, 'Long Tour', 18, NULL, NULL),
(19, 'Band Music', 14, NULL, NULL),
(20, 'Programming', 16, NULL, NULL),
(21, 'Asian Game', 16, NULL, NULL),
(22, 'Long Tour', 1, NULL, NULL),
(23, 'Band Music', 1, NULL, NULL),
(24, 'Programming', 1, NULL, NULL),
(25, 'Asian Game', 16, NULL, NULL),
(29, 'Python', 1, '2018-07-22 13:26:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_positions`
--

CREATE TABLE `tbl_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `pos_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_positions`
--

INSERT INTO `tbl_positions` (`id`, `pos_name`, `created_at`, `updated_at`) VALUES
(1, 'Lecturer', NULL, NULL),
(2, 'Senior Lecturer', NULL, NULL),
(3, 'Assistant Professor', NULL, NULL),
(4, 'Associate Professor', NULL, NULL),
(5, 'Professor', NULL, NULL),
(6, 'Research Assistant', NULL, NULL),
(7, 'Researcher', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profiles`
--

CREATE TABLE `tbl_profiles` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dept_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` int(11) NOT NULL,
  `last_institute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_profiles`
--

INSERT INTO `tbl_profiles` (`teacher_id`, `fullname`, `image`, `birth_date`, `password`, `email`, `address`, `dept_name`, `position`, `contact`, `last_institute`, `note`, `status`, `created_at`, `updated_at`) VALUES
(26, 'Raton Kumer Mondal', 'public/uploads/MsV84M9mx2parBcq2gSO.jpg', '2018-07-01', 'e10adc3949ba59abbe56e057f20f883e', 'nadia@gmail.com', NULL, 'CSE', 'Teacher', 234234, 'North Western University', '<p><span style=\"color: #000000;\">A social psychologist and marketer, Jennifer Doe is the General Atlantic Professor of Marketing and Ormond Family Faculty at Stanford University’s Graduate School of Business. Her research spans time, money and happiness. She focuses on questions such as: What actually makes people happy, as opposed to what they think makes them happy?</span></p>\r\n								<p><span style=\"color: #000000;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor.sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</span></p>', 1, NULL, NULL),
(25, 'Md.Shariful Islam', 'public/uploads/1GhNJqZSCLEZnjQJxz2T.jpg', '2018-07-04', 'e10adc3949ba59abbe56e057f20f883e', 'csenazmul96@gmail.com', NULL, 'CSE', 'Teacher', 123456, 'North Western University', '<p><span style=\"color: #000000;\">A social psychologist and marketer, Jennifer Doe is the General Atlantic Professor of Marketing and Ormond Family Faculty at Stanford University’s Graduate School of Business. Her research spans time, money and happiness. She focuses on questions such as: What actually makes people happy, as opposed to what they think makes them happy?</span></p>\r\n								<p><span style=\"color: #000000;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor.sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</span></p>', 1, NULL, NULL),
(27, 'Md.Maruf Sheikh', 'public/uploads/lab4.jpg', '02/07/1994', 'e10adc3949ba59abbe56e057f20f883e', 'maruf@gmail.com', 'alaipur', 'CIVIL', 'ASSISTANT Lecturer', 1993395874, 'KUET', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat nulla placerat, tincidunt mi. Nullam vel orc', 0, NULL, NULL),
(28, 'Rita islam', 'public/uploads/girl-437989_1920-150x150.jpg', '9/12/1990', 'e10adc3949ba59abbe56e057f20f883e', 'rita@gmail.com', 'Borobazar,khulna-9000', 'EEE', 'Professor', 1723345678, 'Khulna University', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat nulla placerat, tincidunt mi. Nullam vel orc', 0, NULL, NULL),
(29, 'Asma akther', 'public/uploads/1GhNJqZSCLEZnjQJxz2T.jpg', '3/6/1980', 'e10adc3949ba59abbe56e057f20f883e', 'asma@gmail.com', 'Khalishpur,khulna', 'CSE', 'Lecturer', 1912456789, 'North Western University', 'Nullam non nisi ut dolor pellentesque eleifend. Aliquam commodo vitae risus malesuada varius. Nulla ornare lacus eu elit sollicitudin varius. Nulla aliquet ornare massa id tempor. Sed luctus dui non turpis sodales, ac tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 1, NULL, NULL),
(30, 'Prinka Tarafder', 'public/uploads/woman-578429_1920-150x150.jpg', '12/12/1978', 'e10adc3949ba59abbe56e057f20f883e', 'prinka@gmail.com', 'Nirala,khulna', 'EEE', 'Lecturer', 1912456789, 'North Western University', 'Nullam non nisi ut dolor pellentesque eleifend. Aliquam commodo vitae risus malesuada varius. Nulla ornare lacus eu elit sollicitudin varius. Nulla aliquet ornare massa id tempor. Sed luctus dui non turpis sodales, ac tristique risus consequat. Donec tincidunt mi a magna rhoncus dapibus. Integer ut lectus euismod', 0, NULL, NULL),
(31, 'Paglu Khan', 'public/uploads/eGZHwsx8eWwmrSGRN3PQ.jpg', '1994-07-19', 'e10adc3949ba59abbe56e057f20f883e', 'paglu@gmail.com', NULL, 'CSE', 'Select Position', 1969516500, 'Khulna University', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_end` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_shortdesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`id`, `pro_name`, `pro_cover`, `pro_start`, `pro_end`, `pro_desc`, `pro_shortdesc`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'BDCMS', 'uploads/18/2018-07/desert.jpg', 'January-2018', 'September-2018', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p><p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">.</span><br></p>', 'release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 18, '2018-07-20 14:21:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_publications`
--

CREATE TABLE `tbl_publications` (
  `id` int(10) UNSIGNED NOT NULL,
  `pub_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_teacher_id` int(11) NOT NULL,
  `pub_way` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_long_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_publications`
--

INSERT INTO `tbl_publications` (`id`, `pub_name`, `pub_cover`, `pub_date`, `pub_teacher_id`, `pub_way`, `pub_short_desc`, `pub_long_desc`, `created_at`, `updated_at`) VALUES
(1, 'Himu History', 'uploads/18/2018-07/jellyfish.jpg', '2018-03-21', 18, 'NWU', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2018-07-20 14:58:35', '2018-07-20 07:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_researchs`
--

CREATE TABLE `tbl_researchs` (
  `id` int(10) UNSIGNED NOT NULL,
  `re_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_strt_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_team` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_researchs`
--

INSERT INTO `tbl_researchs` (`id`, `re_title`, `re_desc`, `re_strt_date`, `re_end_date`, `re_team`, `org_name`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Nullam non nisi ut dolor pellentesque eleifend', 'Recent trends in deep-submicron very large-scale integration (VLSI) circuit technology have resulted in new requirements for algorithms in integrated circuit layout. Much of my work centers on new formulations that capture performance and density criteria in the physical layout phases of computer-aided design (CAD). Our results include near-optimal approximation algorithms for such computationally difficult problems as minimum-cost Steiner tree routing, low-skew clock networks, cost-radius tradeoffs, bounded-density trees, circuit probe testing, high-performing Elmore-based constructions, layout density control, and improved manufacturability.', 'jun-2015', 'jun-2015', 'CSE-BDCMS', 'North Western University', 2, NULL, NULL),
(2, 'Educations', '<p>Recent trends in deep-submicron very large-scale integration (VLSI) circuit&nbsp;</p><p>Recent trends in deep-submicron very large-scale integration (VLSI) circuit&nbsp;Recent trends in deep-submicron very large-scale integration (VLSI) circuit&nbsp;Recent trends in deep-submicron very large-scale integration (VLSI) circuit&nbsp;Recent trends in deep-submicron very large-scale integration (VLSI) circuit&nbsp;Recent trends in deep-submicron very large-scale integration (VLSI) circuit&nbsp;Recent trends in deep-submicron very large-scale integration (VLSI) circuit&nbsp;Recent trends in deep-submicron very large-scale integration (VLSI) circuit&nbsp;Recent trends in deep-submicron very large-scale integration (VLSI) circuit&nbsp;Recent trends in deep-submicron very large-scale integration (VLSI) circuit&nbsp;<br></p>', 'May 2016', 'June 2017', '', 'NWU', 1, '2018-07-23 21:48:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sections`
--

CREATE TABLE `tbl_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `home_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `research_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `train_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallary_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sections`
--

INSERT INTO `tbl_sections` (`id`, `home_note`, `home_cover`, `public_cover`, `research_cover`, `project_cover`, `train_cover`, `gallary_cover`, `contact_cover`, `course_cover`, `teacher_id`, `created_at`, `updated_at`) VALUES
(12, 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.', 'https://lorempixel.com/1201/500/', 'https://lorempixel.com/1200/501/', 'https://lorempixel.com/1202/500/', 'https://lorempixel.com/1200/502/', 'https://lorempixel.com/1203/500/', 'https://lorempixel.com/1200/503/', 'https://lorempixel.com/1204/500/', 'https://lorempixel.com/1200/504/', 17, NULL, NULL),
(11, 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.', 'https://lorempixel.com/1201/500/', 'https://lorempixel.com/1200/501/', 'https://lorempixel.com/1202/500/', 'https://lorempixel.com/1200/502/', 'https://lorempixel.com/1203/500/', 'https://lorempixel.com/1200/503/', 'https://lorempixel.com/1204/500/', 'https://lorempixel.com/1200/504/', 16, NULL, NULL),
(10, 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.', 'https://lorempixel.com/1201/500/', 'https://lorempixel.com/1200/501/', 'https://lorempixel.com/1202/500/', 'https://lorempixel.com/1200/502/', 'https://lorempixel.com/1203/500/', 'https://lorempixel.com/1200/503/', 'https://lorempixel.com/1204/500/', 'https://lorempixel.com/1200/504/', 2, NULL, NULL),
(8, 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.', 'https://lorempixel.com/1201/500/', 'https://lorempixel.com/1200/501/', 'https://lorempixel.com/1202/500/', 'https://lorempixel.com/1200/502/', 'https://lorempixel.com/1203/500/', 'https://lorempixel.com/1200/503/', 'https://lorempixel.com/1204/500/', 'https://lorempixel.com/1200/504/', 3, NULL, NULL),
(9, 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.', 'uploads/1/2018-07/cover1.jpg', 'uploads/1/2018-07/cover2.jpg', 'uploads/1/2018-07/cover3.jpg', 'uploads/1/2018-07/cover4.jpg', 'uploads/1/2018-07/cover5.jpg', 'uploads/1/2018-07/cover6.jpg', 'uploads/1/2018-07/cover7.jpg', 'uploads/1/2018-07/desktop_wallpaper_03.jpg', 1, NULL, '2018-07-23 21:56:43'),
(6, 'super admin note', 'uploads/3/2018-07/desktop_wallpaper_to_personalize_computer_high_wallpaper_hd_desktop.jpg', 'uploads/1/2018-07/cover1.jpg', NULL, 'uploads/1/2018-07/beautiful_and_elegant_hydrangeas_desktop_wallpaper_desktop_tzfb9yg.jpg', 'uploads/1/2018-07/desktop_wallpaper_green.jpg', 'uploads/1/2018-07/desktop_wallpaper_to_personalize_computer_high_wallpaper_hd_desktop.jpg', 'uploads/1/2018-07/desktop_wallpaper_03.jpg', 'uploads/1/2018-07/computer_desktop_wallpapers_3d.jpg', 18, '2018-07-18 17:45:59', '2018-07-19 01:04:59'),
(7, 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.', 'https://lorempixel.com/1201/500/', 'https://lorempixel.com/1200/501/', 'https://lorempixel.com/1202/500/', 'https://lorempixel.com/1200/502/', 'https://lorempixel.com/1203/500/', 'https://lorempixel.com/1200/503/', 'https://lorempixel.com/1204/500/', 'https://lorempixel.com/1200/504/', 14, NULL, NULL),
(13, 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.', 'https://lorempixel.com/1201/500/', 'https://lorempixel.com/1200/501/', 'https://lorempixel.com/1202/500/', 'https://lorempixel.com/1200/502/', 'https://lorempixel.com/1203/500/', 'https://lorempixel.com/1200/503/', 'https://lorempixel.com/1204/500/', 'https://lorempixel.com/1200/504/', 19, NULL, NULL),
(14, 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.', 'https://lorempixel.com/1201/500/', 'https://lorempixel.com/1200/501/', 'https://lorempixel.com/1202/500/', 'https://lorempixel.com/1200/502/', 'https://lorempixel.com/1203/500/', 'https://lorempixel.com/1200/503/', 'https://lorempixel.com/1204/500/', 'https://lorempixel.com/1200/504/', 20, NULL, NULL),
(15, 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.', 'https://lorempixel.com/1201/500/', 'https://lorempixel.com/1200/501/', 'https://lorempixel.com/1202/500/', 'https://lorempixel.com/1200/502/', 'https://lorempixel.com/1203/500/', 'https://lorempixel.com/1200/503/', 'https://lorempixel.com/1204/500/', 'https://lorempixel.com/1200/504/', 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_securitys`
--

CREATE TABLE `tbl_securitys` (
  `id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_securitys`
--

INSERT INTO `tbl_securitys` (`id`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_socials`
--

CREATE TABLE `tbl_socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `researchgate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_socials`
--

INSERT INTO `tbl_socials` (`id`, `facebook`, `twitter`, `linkedin`, `researchgate`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', 'https://www.researchgate.net', 1, NULL, NULL),
(2, 'http://www.facebook.com/sojibuddin', 'http://www.twitter.com', 'http://www.linkedin.com', 'https://www.researchgate.net', 19, NULL, NULL),
(3, 'http://www.facebook.com/', 'http://www.twitter.com/', 'http://www.linkedin.com/', 'http://www.researchgate.com/', 2, NULL, NULL),
(4, 'http://www.facebook.com/', 'http://www.twitter.com/', 'http://www.linkedin.com/', 'http://www.researchgate.com/', 3, NULL, NULL),
(5, 'http://www.facebook.com/', 'http://www.twitter.com/', 'http://www.linkedin.com/', 'http://www.researchgate.com/', 16, NULL, NULL),
(6, 'http://www.facebook.com/', 'http://www.twitter.com/', 'http://www.linkedin.com/', 'http://www.researchgate.com/', 14, NULL, NULL),
(7, 'http://www.facebook.com/', 'http://www.twitter.com/', 'http://www.linkedin.com/', 'http://www.researchgate.com/', 17, NULL, NULL),
(8, 'http://www.facebook.com/', 'http://www.twitter.com/', 'http://www.linkedin.com/', 'http://www.researchgate.com/', 18, NULL, NULL),
(12, 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', 'https://www.researchgate.net', 21, NULL, NULL),
(11, 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', 'https://www.researchgate.net', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trainings`
--

CREATE TABLE `tbl_trainings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tropic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `strt_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_trainings`
--

INSERT INTO `tbl_trainings` (`id`, `title`, `org_name`, `duration`, `tropic`, `desc`, `strt_date`, `end_date`, `teacher_id`, `created_at`, `updated_at`) VALUES
(2, 'Lorem Isupm', 'BCTX', '3 Months', 'CCNA', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2018-01-16 00:00:00', '2018-07-20 00:00:00', 18, '2018-07-20 17:16:30', '2018-07-20 10:16:30'),
(3, 'BRTA', 'BRAC', '3 Month', 'Programming', '<p style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"></p><p style=\"text-align: justify; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\"><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><span class=\"Apple-converted-space\">&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p style=\"text-align: justify; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\"><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><span class=\"Apple-converted-space\">&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span><br></p>', '2018-07-11 00:00:00', '2018-09-12 00:00:00', 19, '2018-07-23 23:56:55', '2018-07-23 16:56:55'),
(1, 'CCNA', 'BTCL', '1 Year', 'CCNA', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, sans-serif; font-size: 12px; text-align: justify; background-color: rgb(245, 245, 245);\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, sans-serif; font-size: 12px; text-align: justify; background-color: rgb(245, 245, 245);\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, sans-serif; font-size: 12px; text-align: justify; background-color: rgb(245, 245, 245);\"><br></span><br></p>', '2016-08-07 00:00:00', '2017-08-07 00:00:00', 1, '2018-07-20 15:16:18', '2018-07-20 17:12:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_awards`
--
ALTER TABLE `tbl_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contacts`
--
ALTER TABLE `tbl_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_educations`
--
ALTER TABLE `tbl_educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expriences`
--
ALTER TABLE `tbl_expriences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallerys`
--
ALTER TABLE `tbl_gallerys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_interests`
--
ALTER TABLE `tbl_interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_positions`
--
ALTER TABLE `tbl_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_profiles`
--
ALTER TABLE `tbl_profiles`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_publications`
--
ALTER TABLE `tbl_publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_researchs`
--
ALTER TABLE `tbl_researchs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sections`
--
ALTER TABLE `tbl_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_securitys`
--
ALTER TABLE `tbl_securitys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_socials`
--
ALTER TABLE `tbl_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_trainings`
--
ALTER TABLE `tbl_trainings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_awards`
--
ALTER TABLE `tbl_awards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_contacts`
--
ALTER TABLE `tbl_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_educations`
--
ALTER TABLE `tbl_educations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_expriences`
--
ALTER TABLE `tbl_expriences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_gallerys`
--
ALTER TABLE `tbl_gallerys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_interests`
--
ALTER TABLE `tbl_interests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_positions`
--
ALTER TABLE `tbl_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_profiles`
--
ALTER TABLE `tbl_profiles`
  MODIFY `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_publications`
--
ALTER TABLE `tbl_publications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_researchs`
--
ALTER TABLE `tbl_researchs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sections`
--
ALTER TABLE `tbl_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_securitys`
--
ALTER TABLE `tbl_securitys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_socials`
--
ALTER TABLE `tbl_socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_trainings`
--
ALTER TABLE `tbl_trainings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
