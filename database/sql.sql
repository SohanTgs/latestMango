-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 21, 2022 at 02:14 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add general setting', 7, 'add_generalsetting'),
(26, 'Can change general setting', 7, 'change_generalsetting'),
(27, 'Can delete general setting', 7, 'delete_generalsetting'),
(28, 'Can view general setting', 7, 'view_generalsetting'),
(29, 'Can add setting', 8, 'add_setting'),
(30, 'Can change setting', 8, 'change_setting'),
(31, 'Can delete setting', 8, 'delete_setting'),
(32, 'Can view setting', 8, 'view_setting');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$pxnI6wfmnQxV$5E3DNVMjizyPVYp5P1pqMamy84PlanO+Wmt/H5B5bC4=', '2022-02-21 14:11:49.301690', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2021-11-24 12:29:04.755174');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'setting', 'generalsetting'),
(8, 'general', 'setting');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-24 12:28:29.709169'),
(2, 'auth', '0001_initial', '2021-11-24 12:28:30.187197'),
(3, 'admin', '0001_initial', '2021-11-24 12:28:31.743286'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-24 12:28:32.170310'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-24 12:28:32.204312'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-24 12:28:32.346320'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-24 12:28:32.413324'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-24 12:28:32.499329'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-24 12:28:32.510330'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-24 12:28:32.669339'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-24 12:28:32.671339'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-24 12:28:32.686340'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-24 12:28:32.754344'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-24 12:28:32.823348'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-24 12:28:32.942354'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-24 12:28:32.953355'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-24 12:28:33.042360'),
(18, 'sessions', '0001_initial', '2021-11-24 12:28:33.096363'),
(27, 'general', '0001_initial', '2021-12-10 15:01:17.417394');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qytsaxszkimki4j44na0hd1hmd03kbgt', '.eJxVjEEOwiAQRe_C2hCZaTvg0n3PQGAGpGpKUtqV8e7apAvd_vfefykftrX4raXFT6IuyqjT7xYDP9K8A7mH-VY113ldpqh3RR-06bFKel4P9--ghFa-taMeqbMcMZ8tQgLp3CAgBHmgxEjMROjcAGxNYLCcJZNFykimB1LvD8rKNz8:1mpvi0:_2P5o4qVCfnPTfJJg0QF1hCZK0ZT3MJJ8piVHxEVzFA', '2021-12-08 17:05:24.007011'),
('8ouryw6oyylsjd78da3dv2jtzh07dp9r', '.eJxVjr1ywyAQhN-FNhHDHRYHKt27c8-gAywnGjEWqPL43SNNXCTt_ny7T-HD1ia_1bT6exSDAPH5VxsDf6flMOJXWG5Fclnaeh_lEZFvt8pLiWk-v7P_AFOo09521Gs6WR51VlZjwnhyJmIkzIYSa2Im0s4ZZAuB0XKOmaymrAl6pB36e-BAFz-XW9man0Ntfk2PLdW2j6BC6AA6NFfQgzKD6iU6A9B_KDUoJV4_2rFLlw:1mqavV:VvMRKeWbAm8388pkDgNHyUbz5Ei4WYnOH7jePrcn7Ls', '2021-12-10 13:06:05.367119'),
('poexr1zyd1n6zl0aidpdufe7ysea6v1e', 'e30:1mpwe0:UHLuNVwKsIqtE30ECNWja86syQVsh6o5PHekyMhJQg4', '2021-12-08 18:05:20.837941'),
('8u0tfgsuexc6sfr71sg44r9q2a8440us', '.eJxVjr0SwiAQhN-FVmXgIDlIaW9nz5ADjJoJYyCV47ubjBba7s-3-2TOL3VwS4mzuwbWMcn2v1rv6R6nzQg3P10ypzzV-drzLcK_buGnHOJ4_Gb_AIMvw9q22CjUhnqVhFEQIWjbBggIqcVICokQlbUtkJGewFAKCY3CpFA2gCv0c2BDZzfmS16qG32pbo6PJZa6joAAeZBwEOossZO2kw3XoK1ud0J0QrDXG9ssS6E:1mtCDL:Z_GK_NJqQ-2aow_ZErTGvoJYqkh1203MNK0brcIpU7w', '2021-12-17 17:19:15.631958'),
('wam7g85muckd1ncvs0nsrf19wabtmr7a', '.eJxVjr1ygzAQhN9FbWyNdAecROk-XXqNOElAzKAxEpXH7x6YuEja_fl2n8L5vU5uL3FzcxC90OLyVxs83-N6GuHbr2OWnNe6zYM8I_LtFvmZQ1xu7-w_wOTLdLQttUiN4QGTMggRQmO7AIEgdRQZiZkIre2AjfYMhlNIZJASkm6BDujvgROd3ZLHvFe3-FLdFh97LPUYAQX6quGq6UtTr9oeUWLXWDAfSvVKidcP23BLpA:1myGfl:LPCb8o2HdKMb4FUQRyUC4mUbNAbPzVVTbrZCShfCvVM', '2021-12-31 17:05:33.831954'),
('nz7agbb2115r36uvn3756o37tesvskhn', '.eJxVjr2ywiAQhd-FVmVgN2Yh5e3t7BmygFEzYW4gleO7m4wW2p6f75yHcH6pg1tKnN01iE5osf_Wes_3OG1GuPnpkiXnqc7XXm4R-XGLPOUQx79P9gcw-DKsbUtHpMZwj0kZhAihsW2AQJBaiozETITWtsBGewbDKSQySAlJH4FW6PvAhs5uzJe8VDf6Ut0c_5dY6joCCvRBw0HhWVMH0DUkUZOyzU6pTinxfAHa1Eub:1mtCGl:zItVgjx5chfVmje9roqBjebSi3G1glXUWQmxpl3Z6c8', '2021-12-17 17:22:47.478103'),
('d1lmzd4rdbqtx4rvv9z39np24yohv657', '.eJxVjEEOwiAQRe_C2hCZaTvg0n3PQGAGpGpKUtqV8e7apAvd_vfefykftrX4raXFT6IuyqjT7xYDP9K8A7mH-VY113ldpqh3RR-06bFKel4P9--ghFa-taMeqbMcMZ8tQgLp3CAgBHmgxEjMROjcAGxNYLCcJZNFykimB1LvD8rKNz8:1mvhDB:qDh9Ji7_XAZeuT2SGtt2yXMbWrpnX8fgzFiE1dlsAcI', '2021-12-24 14:49:25.427930'),
('pvavxs6s73p4l6n4kq0g6unggqnxaaby', '.eJxVjr1uxCAQhN-FNjnE7tpecJk-XXqEFzhfYhnF4Op07x5buSJp5-ebuSsf9jb7vabN36IaFajXv9oU5CutpxE_w3otWsrattukz4h-ulW_l5iWt2f2H2AOdT7ajnvizspE2VjChLFzQ8TImAdOQizCTM4NKBaCoJUcM1viTAw98gH9PXCii1_KtezNL6E2v6XvPdV2jKBBuABewHxAPwKNHWtwRMwvxozGqMcP2rpLnQ:1mvhal:atYFd50Gt8ae414dfl2EQguHIVnGLbE-kr6y4Xwdvpg', '2021-12-24 15:13:47.410390'),
('guc9gj8wkr6dm32hndquxezueqvfqnxi', '.eJxVjr1uxCAQhN-FNjm0u9hecJk-XXqEFzhfYhnF4Op07x5buSJp5-ebuSsf9jb7vabN36IaFarXv9oU5CutpxE_w3otWsrattukz4h-ulW_l5iWt2f2H2AOdT7ajnvDnZXJZLCGEsXODZEiUx44iWERZuPcQGIxCFnJMbM1nA1jT3xAfw-c6OKXci1780uozW_pe0-1HSMEhBekC8IH9iPhiJ22PbgOXgBGAPX4Ado0S5I:1mvhhz:W8-2nTeJMDgSFunVTn1fzqQNYom0PhvZukRSkqPxL9I', '2021-12-24 15:21:15.009949'),
('l8njusejox4fp69v0cycwp5110ip2vnj', '.eJxVjr0SgjAQhN8lrZpJ7oALlPZ29plwSURlyEhC5fjuwmih7f58u09h3VIGu-Qw26sXndBi_6v1ju9h2gx_c9MlSU5Tma-93CLy62Z5Sj6Mx2_2DzC4PKztlmqkynCPURmEAL5qGw-eIDYUGImZCNu2ATbaMRiOPpJBiki6BlqhnwMbOtkxXdJS7OhysXN4LCGXdQQUwEHBAfRZV52GrjYSa2wqtVOqU0q83tqTS5Y:1nM9Qw:7hDyG8SRuzFMV2F9q6qWWTyO4aqUXj8G2plyUU4iPsE', '2022-03-07 14:12:58.465646');

-- --------------------------------------------------------

--
-- Table structure for table `general_seo`
--

DROP TABLE IF EXISTS `general_seo`;
CREATE TABLE IF NOT EXISTS `general_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_seo`
--

INSERT INTO `general_seo` (`id`, `keyword`, `description`, `image`, `updated_at`, `created_at`) VALUES
(1, '[\"Admin\", \"sohan\", \"mango\", \"python\", \"laravel\", \"hello python\", \"php\"]', 'Description', 'seo/nams_m76qKej.png', '2022-02-21 12:42:59.543551', '2021-12-17 00:39:06.000000');

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

DROP TABLE IF EXISTS `general_setting`;
CREATE TABLE IF NOT EXISTS `general_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(40) NOT NULL,
  `cur_text` varchar(40) NOT NULL,
  `cur_sym` varchar(40) NOT NULL,
  `base_color` varchar(40) NOT NULL,
  `g_translate` tinyint(1) NOT NULL,
  `agree_policy` tinyint(1) NOT NULL,
  `registration` tinyint(1) NOT NULL,
  `force_ssl` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `site_name`, `cur_text`, `cur_sym`, `base_color`, `g_translate`, `agree_policy`, `registration`, `force_ssl`, `logo`, `favicon`, `updated_at`, `created_at`) VALUES
(1, 'Mango', 'USD', '$', '60d14b', 0, 0, 0, 0, 'logo_icon/unnamedfsadfsadfasdf.png', 'logo_icon/iconsssssss.png', '2022-02-21 14:02:26.765136', '2021-12-10 21:19:44.000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
