-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 12, 2018 at 02:40 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(15, '2018_07_12_061045_create_tbl_publications', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_awards`
--

DROP TABLE IF EXISTS `tbl_awards`;
CREATE TABLE IF NOT EXISTS `tbl_awards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `awr_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `awr_year` int(11) NOT NULL,
  `awr_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `awr_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `awr_teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_awards`
--

INSERT INTO `tbl_awards` (`id`, `awr_name`, `awr_year`, `awr_desc`, `awr_date`, `awr_teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Distinguished Scientific', 2015, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas dapibus lectus non dignissim. Pellentesque auctor ornare urna, volutpat condimentum quam porttitor at. Vestibulum tincidunt diam in eros aliquam luctus. Donec sagittis a purus a porttitor. Sed non feugiat enim. Donec eget metus erat. Vivamus sed consequat orci. <a href=\"http://themeforest.net/item/faculty-responsive-academic-wordpress-theme/6817161\" target=\"_blank\">Aenean</a> commodo lectus sed purus auctor ullamcorper.', '12/12/2015', 25, NULL, NULL),
(2, 'Building Innovative Brands', 1017, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas dapibus lectus non dignissim. Pellentesque auctor ornare urna, volutpat condimentum quam porttitor at. Vestibulum tincidunt diam in eros aliquam luctus. Donec sagittis a purus a porttitor. Sed non feugiat enim. Donec eget metus erat. Vivamus sed consequat orci. <a href=\"http://themeforest.net/item/faculty-responsive-academic-wordpress-theme/6817161\" target=\"_blank\">Aenean</a> commodo lectus sed purus auctor ullamcorper.', '12/12/2017', 25, NULL, NULL),
(3, 'Game', 2019, 'sdfsdf', '2015', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contacts`
--

DROP TABLE IF EXISTS `tbl_contacts`;
CREATE TABLE IF NOT EXISTS `tbl_contacts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher-id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_contacts`
--

INSERT INTO `tbl_contacts` (`id`, `name`, `number`, `email`, `message`, `teacher-id`, `created_at`, `updated_at`) VALUES
(1, 'Md.Nazmul Hossain', 1931039338, 'csenazmul96@gmail.com', 'Hello ', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_educations`
--

DROP TABLE IF EXISTS `tbl_educations`;
CREATE TABLE IF NOT EXISTS `tbl_educations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `edu_degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_board` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_pass_year` int(11) NOT NULL,
  `edu_gpa` double(8,2) NOT NULL,
  `edu_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_educations`
--

INSERT INTO `tbl_educations` (`id`, `edu_degree`, `edu_board`, `edu_pass_year`, `edu_gpa`, `edu_subject`, `edu_teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'SSC', 'Jessore', 2009, 3.31, 'Business', 25, NULL, NULL),
(2, 'Diploma in engineering', 'Technical', 2013, 3.35, 'Business', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expriences`
--

DROP TABLE IF EXISTS `tbl_expriences`;
CREATE TABLE IF NOT EXISTS `tbl_expriences` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `exp_company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_post_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_strt_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_teacher_id` int(11) NOT NULL,
  `exp_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_expriences`
--

INSERT INTO `tbl_expriences` (`id`, `exp_company_name`, `exp_post_name`, `exp_strt_date`, `exp_end_date`, `exp_teacher_id`, `exp_desc`, `exp_department`, `created_at`, `updated_at`) VALUES
(1, 'BRWSSP', 'Data Processing Operator', 'Feb/2015', 'Jan/2017', 25, 'Good Job', 'CSE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallerys`
--

DROP TABLE IF EXISTS `tbl_gallerys`;
CREATE TABLE IF NOT EXISTS `tbl_gallerys` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `glry_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `glry_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_gallerys`
--

INSERT INTO `tbl_gallerys` (`id`, `glry_name`, `glry_cover`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'My Gallery', 'public/uploads/MsV84M9mx2parBcq2gSO.jpg', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_interests`
--

DROP TABLE IF EXISTS `tbl_interests`;
CREATE TABLE IF NOT EXISTS `tbl_interests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `inst_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_interests`
--

INSERT INTO `tbl_interests` (`id`, `inst_name`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Time, Money and Happiness', 25, NULL, NULL),
(2, 'Building Innovative Brands', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profiles`
--

DROP TABLE IF EXISTS `tbl_profiles`;
CREATE TABLE IF NOT EXISTS `tbl_profiles` (
  `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_profiles`
--

INSERT INTO `tbl_profiles` (`teacher_id`, `fullname`, `image`, `birth_date`, `password`, `email`, `address`, `dept_name`, `position`, `contact`, `last_institute`, `note`, `created_at`, `updated_at`) VALUES
(26, 'sdfsdfsdfsd', 'public/uploads/MsV84M9mx2parBcq2gSO.jpg', '2018-07-01', 'e10adc3949ba59abbe56e057f20f883e', 'nadia@gmail.com', NULL, 'CSE', 'Teacher', 234234, 'North Western University', '<p><span style=\"color: #000000;\">A social psychologist and marketer, Jennifer Doe is the General Atlantic Professor of Marketing and Ormond Family Faculty at Stanford University’s Graduate School of Business. Her research spans time, money and happiness. She focuses on questions such as: What actually makes people happy, as opposed to what they think makes them happy?</span></p>\r\n								<p><span style=\"color: #000000;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor.sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</span></p>', NULL, NULL),
(25, 'Md.Shariful Islam', 'public/uploads/1GhNJqZSCLEZnjQJxz2T.jpg', '2018-07-04', 'e10adc3949ba59abbe56e057f20f883e', 'csenazmul96@gmail.com', NULL, 'CSE', 'Teacher', 123456, 'North Western University', '<p><span style=\"color: #000000;\">A social psychologist and marketer, Jennifer Doe is the General Atlantic Professor of Marketing and Ormond Family Faculty at Stanford University’s Graduate School of Business. Her research spans time, money and happiness. She focuses on questions such as: What actually makes people happy, as opposed to what they think makes them happy?</span></p>\r\n								<p><span style=\"color: #000000;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor.sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</span></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

DROP TABLE IF EXISTS `tbl_projects`;
CREATE TABLE IF NOT EXISTS `tbl_projects` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_end` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_shortdesc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`id`, `pro_name`, `pro_cover`, `pro_start`, `pro_end`, `pro_desc`, `pro_shortdesc`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh Car Management System', 'public/uploads/MsV84M9mx2parBcq2gSO.jpg', 'june-2018', 'june-2019', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit,', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<a href=\"#\" target=\"_blank\">Aenean</a></p>\r\n								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<a href=\"#\" target=\"_blank\">Aenean</a></p>\r\n								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p> ', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_publications`
--

DROP TABLE IF EXISTS `tbl_publications`;
CREATE TABLE IF NOT EXISTS `tbl_publications` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pub_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_teacher_id` int(11) NOT NULL,
  `pub_way` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_short_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_long_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_publications`
--

INSERT INTO `tbl_publications` (`id`, `pub_name`, `pub_cover`, `pub_date`, `pub_teacher_id`, `pub_way`, `pub_short_desc`, `pub_long_desc`, `created_at`, `updated_at`) VALUES
(1, 'Inheritance of Resistance to Soybean Mosaic Virus Strains SC4 and SC8 in Soybean', 'public/uploads/MsV84M9mx2parBcq2gSO.jpg', 'Jun-2017', 25, 'Online Jurnal', 'Journal of Consumer Psychology, Volume 22, Issue 2, April 2012, Pages 191-194', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<a href=\"#\" target=\"_blank\">Aenean</a></p>\r\n								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<a href=\"#\" target=\"_blank\">Aenean</a></p>\r\n								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p> ', NULL, NULL),
(2, 'dfgfdgfdg', 'public/uploads/MsV84M9mx2parBcq2gSO.jpg', 'Jul-2018', 25, 'online', 'Journal of Consumer Psychology, Volume 22, Issue 2, April 2012, Pages 191-194', 'sadfsdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_researchs`
--

DROP TABLE IF EXISTS `tbl_researchs`;
CREATE TABLE IF NOT EXISTS `tbl_researchs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `re_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_strt_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_team` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_researchs`
--

INSERT INTO `tbl_researchs` (`id`, `re_title`, `re_desc`, `re_strt_date`, `re_end_date`, `re_team`, `org_name`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Recent Research Topics', 'Recent trends in deep-submicron very large-scale integration (VLSI) circuit technology have resulted in new requirements for algorithms in integrated circuit layout. Much of my work centers on new formulations that capture performance and density criteria in the physical layout phases of computer-aided design (CAD). Our results include near-optimal approximation algorithms for such computationally difficult problems as minimum-cost Steiner tree routing, low-skew clock networks, cost-radius tradeoffs, bounded-density trees, circuit probe testing, high-performing Elmore-based constructions, layout density control, and improved manufacturability.', 'jun-2015', 'jun-2015', 'CSE-BDCMS', 'North Western University', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sections`
--

DROP TABLE IF EXISTS `tbl_sections`;
CREATE TABLE IF NOT EXISTS `tbl_sections` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `home_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `research_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallary_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sections`
--

INSERT INTO `tbl_sections` (`id`, `home_note`, `home_cover`, `public_cover`, `research_cover`, `project_cover`, `train_cover`, `gallary_cover`, `contact_cover`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'I always like to look on the optimistic side of life, but I am realistic enough to know that life is a complex matter.', 'public/uploads/woman-692785_19203b75.jpg', 'public/uploads/publications-1024x683.jpg', 'public/uploads/MsV84M9mx2parBcq2gSO.jpg', 'public/uploads/fashion-605508.jpg', 'public/uploads/girl-569117_1920.jpg', 'public/uploads/gallery-head.jpg', 'public/uploads/gallery-head.jpg', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_securitys`
--

DROP TABLE IF EXISTS `tbl_securitys`;
CREATE TABLE IF NOT EXISTS `tbl_securitys` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_securitys`
--

INSERT INTO `tbl_securitys` (`id`, `keyword`, `created_at`, `updated_at`) VALUES
(2, '1234', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_socials`
--

DROP TABLE IF EXISTS `tbl_socials`;
CREATE TABLE IF NOT EXISTS `tbl_socials` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_socials`
--

INSERT INTO `tbl_socials` (`id`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'www.facebook.com', 'www.twitter.com', 'www.linkedin.com', 'www.youtube.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trainings`
--

DROP TABLE IF EXISTS `tbl_trainings`;
CREATE TABLE IF NOT EXISTS `tbl_trainings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tropic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `strt_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher-id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_trainings`
--

INSERT INTO `tbl_trainings` (`id`, `title`, `org_name`, `duration`, `tropic`, `desc`, `strt_date`, `end_date`, `teacher-id`, `created_at`, `updated_at`) VALUES
(1, 'Training Title one', 'Asia IT Training Center', '6 month.', 'CCNA', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<a href=\"#\" target=\"_blank\">Aenean</a></p>\r\n								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<a href=\"#\" target=\"_blank\">Aenean</a></p> ', 'jan-2015', 'Desc-2015', 25, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
