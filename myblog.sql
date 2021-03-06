-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-06-12 05:28:12
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
(5, 2, 5, 'Permission', 'fa-user', 'auth/permissions', NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
(8, 0, 8, 'Helpers', 'fa-gears', '', NULL, NULL),
(9, 8, 9, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', NULL, NULL),
(10, 8, 10, 'Database terminal', 'fa-database', 'helpers/terminal/database', NULL, NULL),
(11, 8, 11, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', NULL, NULL),
(12, 0, 0, 'Banner', 'fa-bars', '/banner', '2017-06-09 02:04:09', '2017-06-09 04:02:55'),
(13, 0, 0, '菜单', 'fa-bars', '/menu', '2017-06-09 04:05:24', '2017-06-09 04:05:24'),
(14, 0, 0, '分类', 'fa-bars', 'type', '2017-06-09 04:15:50', '2017-06-09 04:15:50'),
(15, 0, 0, '标签', 'fa-bars', 'tag', '2017-06-09 04:19:52', '2017-06-09 04:19:52'),
(16, 0, 0, '文章', 'fa-bars', 'post', '2017-06-09 04:28:37', '2017-06-09 04:28:37'),
(17, 0, 0, '评论', 'fa-bars', 'comment', '2017-06-09 05:22:14', '2017-06-09 05:22:14'),
(18, 0, 0, '友情链接', 'fa-bars', 'link', '2017-06-09 19:57:58', '2017-06-09 19:57:58');

-- --------------------------------------------------------

--
-- 表的结构 `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `input` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-06-09 02:03:31', '2017-06-09 02:03:31'),
(2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:03:45', '2017-06-09 02:03:45'),
(3, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"Banner","icon":"fa-bars","uri":"","roles":[""],"_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY"}', '2017-06-09 02:04:09', '2017-06-09 02:04:09'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 02:04:10', '2017-06-09 02:04:10'),
(5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 02:04:13', '2017-06-09 02:04:13'),
(6, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:12:45', '2017-06-09 02:12:45'),
(7, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:13:47', '2017-06-09 02:13:47'),
(8, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:14:24', '2017-06-09 02:14:24'),
(9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:14:35', '2017-06-09 02:14:35'),
(10, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:14:37', '2017-06-09 02:14:37'),
(11, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:14:38', '2017-06-09 02:14:38'),
(12, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:14:40', '2017-06-09 02:14:40'),
(13, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:14:41', '2017-06-09 02:14:41'),
(14, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:14:42', '2017-06-09 02:14:42'),
(15, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:14:44', '2017-06-09 02:14:44'),
(16, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-06-09 02:15:42', '2017-06-09 02:15:42'),
(17, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2017-06-09 02:17:24', '2017-06-09 02:17:24'),
(18, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:17:26', '2017-06-09 02:17:26'),
(19, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:17:31', '2017-06-09 02:17:31'),
(20, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:17:50', '2017-06-09 02:17:50'),
(21, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:18:18', '2017-06-09 02:18:18'),
(22, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:18:26', '2017-06-09 02:18:26'),
(23, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:18:58', '2017-06-09 02:18:58'),
(24, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:19:05', '2017-06-09 02:19:05'),
(25, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:19:06', '2017-06-09 02:19:06'),
(26, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:20:57', '2017-06-09 02:20:57'),
(27, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:21:00', '2017-06-09 02:21:00'),
(28, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:21:01', '2017-06-09 02:21:01'),
(29, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:21:22', '2017-06-09 02:21:22'),
(30, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:21:24', '2017-06-09 02:21:24'),
(31, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:21:24', '2017-06-09 02:21:24'),
(32, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:21:46', '2017-06-09 02:21:46'),
(33, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:21:49', '2017-06-09 02:21:49'),
(34, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 02:22:31', '2017-06-09 02:22:31'),
(35, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 02:22:33', '2017-06-09 02:22:33'),
(36, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT"}', '2017-06-09 02:22:46', '2017-06-09 02:22:46'),
(37, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 02:22:47', '2017-06-09 02:22:47'),
(38, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 02:23:03', '2017-06-09 02:23:03'),
(39, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"key":"0","image":"","__del__":"","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT"}', '2017-06-09 02:23:11', '2017-06-09 02:23:11'),
(40, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 02:23:17', '2017-06-09 02:23:17'),
(41, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"key":"0","image":"","__del__":"","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT"}', '2017-06-09 02:23:21', '2017-06-09 02:23:21'),
(42, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:23:47', '2017-06-09 02:23:47'),
(43, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:23:48', '2017-06-09 02:23:48'),
(44, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:23:50', '2017-06-09 02:23:50'),
(45, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"key":"0","image":"","__del__":"","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT"}', '2017-06-09 02:23:58', '2017-06-09 02:23:58'),
(46, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 02:24:12', '2017-06-09 02:24:12'),
(47, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 02:24:28', '2017-06-09 02:24:28'),
(48, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT"}', '2017-06-09 02:24:40', '2017-06-09 02:24:40'),
(49, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:24:41', '2017-06-09 02:24:41'),
(50, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:24:46', '2017-06-09 02:24:46'),
(51, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:24:49', '2017-06-09 02:24:49'),
(52, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:24:58', '2017-06-09 02:24:58'),
(53, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:24:58', '2017-06-09 02:24:58'),
(54, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:26:17', '2017-06-09 02:26:17'),
(55, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:26:53', '2017-06-09 02:26:53'),
(56, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:27:36', '2017-06-09 02:27:36'),
(57, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:31:10', '2017-06-09 02:31:10'),
(58, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:32:18', '2017-06-09 02:32:18'),
(59, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:33:12', '2017-06-09 02:33:12'),
(60, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:33:47', '2017-06-09 02:33:47'),
(61, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:33:49', '2017-06-09 02:33:49'),
(62, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:35:03', '2017-06-09 02:35:03'),
(63, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:35:10', '2017-06-09 02:35:10'),
(64, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:35:10', '2017-06-09 02:35:10'),
(65, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:38:09', '2017-06-09 02:38:09'),
(66, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:38:16', '2017-06-09 02:38:16'),
(67, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:38:16', '2017-06-09 02:38:16'),
(68, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:38:54', '2017-06-09 02:38:54'),
(69, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:38:55', '2017-06-09 02:38:55'),
(70, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:39:00', '2017-06-09 02:39:00'),
(71, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:39:00', '2017-06-09 02:39:00'),
(72, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:40:19', '2017-06-09 02:40:19'),
(73, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:40:19', '2017-06-09 02:40:19'),
(74, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:40:55', '2017-06-09 02:40:55'),
(75, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:40:58', '2017-06-09 02:40:58'),
(76, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:41:06', '2017-06-09 02:41:06'),
(77, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:41:06', '2017-06-09 02:41:06'),
(78, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:41:43', '2017-06-09 02:41:43'),
(79, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:41:45', '2017-06-09 02:41:45'),
(80, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:41:47', '2017-06-09 02:41:47'),
(81, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{"username":"admin","name":"Administrator","password":"$2y$10$mu5dV6cYxVISlX6MHNeU2.Sr3pHCroXSKEMVuF9Ld.WutIMYDz5la","password_confirmation":"$2y$10$mu5dV6cYxVISlX6MHNeU2.Sr3pHCroXSKEMVuF9Ld.WutIMYDz5la","roles":["1",""],"permissions":[""],"_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/auth\\/users"}', '2017-06-09 02:42:17', '2017-06-09 02:42:17'),
(82, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-06-09 02:42:17', '2017-06-09 02:42:17'),
(83, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:42:19', '2017-06-09 02:42:19'),
(84, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:43:34', '2017-06-09 02:43:34'),
(85, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:43:36', '2017-06-09 02:43:36'),
(86, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:43:39', '2017-06-09 02:43:39'),
(87, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:43:42', '2017-06-09 02:43:42'),
(88, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:43:45', '2017-06-09 02:43:45'),
(89, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:43:51', '2017-06-09 02:43:51'),
(90, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:43:51', '2017-06-09 02:43:51'),
(91, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:45:35', '2017-06-09 02:45:35'),
(92, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:45:43', '2017-06-09 02:45:43'),
(93, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:45:54', '2017-06-09 02:45:54'),
(94, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:45:54', '2017-06-09 02:45:54'),
(95, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:46:39', '2017-06-09 02:46:39'),
(96, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:46:44', '2017-06-09 02:46:44'),
(97, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:46:45', '2017-06-09 02:46:45'),
(98, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:48:40', '2017-06-09 02:48:40'),
(99, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:48:44', '2017-06-09 02:48:44'),
(100, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"href":"http:\\/\\/baidu.com1","desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:48:47', '2017-06-09 02:48:47'),
(101, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 02:48:48', '2017-06-09 02:48:48'),
(102, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"href":"http:\\/\\/baidu.com\\/a","desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT"}', '2017-06-09 02:48:57', '2017-06-09 02:48:57'),
(103, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:48:57', '2017-06-09 02:48:57'),
(104, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:49:03', '2017-06-09 02:49:03'),
(105, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"href":"http:\\/\\/baidu.com\\/a","desc":"2","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:49:07', '2017-06-09 02:49:07'),
(106, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:49:07', '2017-06-09 02:49:07'),
(107, 1, 'admin/banner/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:49:12', '2017-06-09 02:49:12'),
(108, 1, 'admin/banner/2', 'PUT', '127.0.0.1', '{"href":"http:\\/\\/baidu.com","desc":"1","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:57:15', '2017-06-09 02:57:15'),
(109, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:57:15', '2017-06-09 02:57:15'),
(110, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:57:19', '2017-06-09 02:57:19'),
(111, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"href":"http:\\/\\/baidu.com\\/a","desc":"2","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:57:34', '2017-06-09 02:57:34'),
(112, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:57:34', '2017-06-09 02:57:34'),
(113, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 02:58:00', '2017-06-09 02:58:00'),
(114, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"href":"http:\\/\\/baidu.com\\/a","desc":"2","_token":"4PTBWDZAAU437V77sHoDgmriJgMlf6E7CxiPSaNY","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 02:58:06', '2017-06-09 02:58:06'),
(115, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 02:58:06', '2017-06-09 02:58:06'),
(116, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-06-09 04:00:15', '2017-06-09 04:00:15'),
(117, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 04:00:22', '2017-06-09 04:00:22'),
(118, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:00:37', '2017-06-09 04:00:37'),
(119, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"href":"http:\\/\\/baidu.com\\/a","desc":"2","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 04:01:32', '2017-06-09 04:01:32'),
(120, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 04:01:32', '2017-06-09 04:01:32'),
(121, 1, 'admin/banner/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:01:34', '2017-06-09 04:01:34'),
(122, 1, 'admin/banner/2', 'PUT', '127.0.0.1', '{"href":"http:\\/\\/baidu.com","desc":"1","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 04:01:43', '2017-06-09 04:01:43'),
(123, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 04:01:43', '2017-06-09 04:01:43'),
(124, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 04:02:14', '2017-06-09 04:02:14'),
(125, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:02:41', '2017-06-09 04:02:41'),
(126, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:02:46', '2017-06-09 04:02:46'),
(127, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"Banner","icon":"fa-bars","uri":"\\/banner","roles":[""],"_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/auth\\/menu"}', '2017-06-09 04:02:55', '2017-06-09 04:02:55'),
(128, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:02:55', '2017-06-09 04:02:55'),
(129, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:02:58', '2017-06-09 04:02:58'),
(130, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:03:00', '2017-06-09 04:03:00'),
(131, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-06-09 04:03:02', '2017-06-09 04:03:02'),
(132, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:03:06', '2017-06-09 04:03:06'),
(133, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:03:33', '2017-06-09 04:03:33'),
(134, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:03:35', '2017-06-09 04:03:35'),
(135, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{"username":"admin","name":"Administrator","password":"$2y$10$mu5dV6cYxVISlX6MHNeU2.Sr3pHCroXSKEMVuF9Ld.WutIMYDz5la","password_confirmation":"$2y$10$mu5dV6cYxVISlX6MHNeU2.Sr3pHCroXSKEMVuF9Ld.WutIMYDz5la","roles":["1",""],"permissions":[""],"_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/auth\\/users"}', '2017-06-09 04:03:54', '2017-06-09 04:03:54'),
(136, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-06-09 04:03:55', '2017-06-09 04:03:55'),
(137, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-06-09 04:03:58', '2017-06-09 04:03:58'),
(138, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:05:07', '2017-06-09 04:05:07'),
(139, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:05:08', '2017-06-09 04:05:08'),
(140, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u83dc\\u5355","icon":"fa-bars","uri":"\\/menu","roles":[""],"_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa"}', '2017-06-09 04:05:24', '2017-06-09 04:05:24'),
(141, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:05:24', '2017-06-09 04:05:24'),
(142, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:05:27', '2017-06-09 04:05:27'),
(143, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:05:45', '2017-06-09 04:05:45'),
(144, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:06:01', '2017-06-09 04:06:01'),
(145, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:06:16', '2017-06-09 04:06:16'),
(146, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:07:49', '2017-06-09 04:07:49'),
(147, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:11:12', '2017-06-09 04:11:12'),
(148, 1, 'admin/menu/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:11:14', '2017-06-09 04:11:14'),
(149, 1, 'admin/menu/1', 'PUT', '127.0.0.1', '{"name":"\\u5217\\u8868","href":"lists","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/menu"}', '2017-06-09 04:11:18', '2017-06-09 04:11:18'),
(150, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:11:18', '2017-06-09 04:11:18'),
(151, 1, 'admin/menu/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:11:22', '2017-06-09 04:11:22'),
(152, 1, 'admin/menu', 'POST', '127.0.0.1', '{"name":"\\u5217\\u88681","href":"list1","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/menu"}', '2017-06-09 04:11:41', '2017-06-09 04:11:41'),
(153, 1, 'admin/menu/create', 'GET', '127.0.0.1', '[]', '2017-06-09 04:11:41', '2017-06-09 04:11:41'),
(154, 1, 'admin/menu/create', 'GET', '127.0.0.1', '[]', '2017-06-09 04:12:08', '2017-06-09 04:12:08'),
(155, 1, 'admin/menu/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:12:12', '2017-06-09 04:12:12'),
(156, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:12:13', '2017-06-09 04:12:13'),
(157, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","id":"","name":"","href":""}', '2017-06-09 04:12:15', '2017-06-09 04:12:15'),
(158, 1, 'admin/menu', 'GET', '127.0.0.1', '{"id":"","name":"","href":""}', '2017-06-09 04:12:20', '2017-06-09 04:12:20'),
(159, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:12:25', '2017-06-09 04:12:25'),
(160, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:12:41', '2017-06-09 04:12:41'),
(161, 1, 'admin/menu/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:12:44', '2017-06-09 04:12:44'),
(162, 1, 'admin/menu', 'POST', '127.0.0.1', '{"name":"\\u5217\\u8868","href":"","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/menu"}', '2017-06-09 04:12:50', '2017-06-09 04:12:50'),
(163, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:12:50', '2017-06-09 04:12:50'),
(164, 1, 'admin/menu/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:12:54', '2017-06-09 04:12:54'),
(165, 1, 'admin/menu/2', 'PUT', '127.0.0.1', '{"name":"\\u5217\\u8868","href":"lists","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/menu"}', '2017-06-09 04:13:01', '2017-06-09 04:13:01'),
(166, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:13:02', '2017-06-09 04:13:02'),
(167, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:14:33', '2017-06-09 04:14:33'),
(168, 1, 'admin/menu/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:14:37', '2017-06-09 04:14:37'),
(169, 1, 'admin/menu', 'POST', '127.0.0.1', '{"name":"","href":"","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/menu"}', '2017-06-09 04:14:40', '2017-06-09 04:14:40'),
(170, 1, 'admin/menu/create', 'GET', '127.0.0.1', '[]', '2017-06-09 04:14:41', '2017-06-09 04:14:41'),
(171, 1, 'admin/menu/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:14:44', '2017-06-09 04:14:44'),
(172, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:14:48', '2017-06-09 04:14:48'),
(173, 1, 'admin/menu/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:14:49', '2017-06-09 04:14:49'),
(174, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:14:50', '2017-06-09 04:14:50'),
(175, 1, 'admin/menu/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:14:53', '2017-06-09 04:14:53'),
(176, 1, 'admin/menu/2', 'PUT', '127.0.0.1', '{"name":"\\u5217\\u88682","href":"lists2","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/menu"}', '2017-06-09 04:14:58', '2017-06-09 04:14:58'),
(177, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:14:59', '2017-06-09 04:14:59'),
(178, 1, 'admin/menu', 'GET', '127.0.0.1', '{"id":"","name":"2","href":"","_pjax":"#pjax-container"}', '2017-06-09 04:15:11', '2017-06-09 04:15:11'),
(179, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","id":"","name":"","href":"l"}', '2017-06-09 04:15:23', '2017-06-09 04:15:23'),
(180, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:15:38', '2017-06-09 04:15:38'),
(181, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u5206\\u7c7b","icon":"fa-bars","uri":"type","roles":[""],"_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa"}', '2017-06-09 04:15:50', '2017-06-09 04:15:50'),
(182, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:15:51', '2017-06-09 04:15:51'),
(183, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:15:56', '2017-06-09 04:15:56'),
(184, 1, 'admin/type', 'GET', '127.0.0.1', '[]', '2017-06-09 04:18:00', '2017-06-09 04:18:00'),
(185, 1, 'admin/type', 'GET', '127.0.0.1', '[]', '2017-06-09 04:19:34', '2017-06-09 04:19:34'),
(186, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:19:40', '2017-06-09 04:19:40'),
(187, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u6807\\u7b7e","icon":"fa-bars","uri":"tag","roles":[""],"_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa"}', '2017-06-09 04:19:52', '2017-06-09 04:19:52'),
(188, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:19:53', '2017-06-09 04:19:53'),
(189, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:19:56', '2017-06-09 04:19:56'),
(190, 1, 'admin/tag', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:20:02', '2017-06-09 04:20:02'),
(191, 1, 'admin/tag', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:20:02', '2017-06-09 04:20:02'),
(192, 1, 'admin/tag', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:20:02', '2017-06-09 04:20:02'),
(193, 1, 'admin/tag', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:20:03', '2017-06-09 04:20:03'),
(194, 1, 'admin/tag', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:20:05', '2017-06-09 04:20:05'),
(195, 1, 'admin/tag/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:20:08', '2017-06-09 04:20:08'),
(196, 1, 'admin/tag', 'POST', '127.0.0.1', '{"name":"asdasd","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/tag"}', '2017-06-09 04:20:11', '2017-06-09 04:20:11'),
(197, 1, 'admin/tag', 'GET', '127.0.0.1', '[]', '2017-06-09 04:20:12', '2017-06-09 04:20:12'),
(198, 1, 'admin/tag/11/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:20:17', '2017-06-09 04:20:17'),
(199, 1, 'admin/tag/11', 'PUT', '127.0.0.1', '{"name":"ergfd","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/tag"}', '2017-06-09 04:20:24', '2017-06-09 04:20:24'),
(200, 1, 'admin/tag', 'GET', '127.0.0.1', '[]', '2017-06-09 04:20:24', '2017-06-09 04:20:24'),
(201, 1, 'admin/type', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:20:27', '2017-06-09 04:20:27'),
(202, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:28:23', '2017-06-09 04:28:23'),
(203, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u6587\\u7ae0","icon":"fa-bars","uri":"post","roles":[""],"_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa"}', '2017-06-09 04:28:37', '2017-06-09 04:28:37'),
(204, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:28:37', '2017-06-09 04:28:37'),
(205, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 04:28:41', '2017-06-09 04:28:41'),
(206, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:28:44', '2017-06-09 04:28:44'),
(207, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 04:32:56', '2017-06-09 04:32:56'),
(208, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 04:33:19', '2017-06-09 04:33:19'),
(209, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 04:33:40', '2017-06-09 04:33:40'),
(210, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:34:01', '2017-06-09 04:34:01'),
(211, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 04:34:02', '2017-06-09 04:34:02'),
(212, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 04:34:33', '2017-06-09 04:34:33'),
(213, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:34:37', '2017-06-09 04:34:37'),
(214, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 04:34:37', '2017-06-09 04:34:37'),
(215, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 04:35:14', '2017-06-09 04:35:14'),
(216, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:35:16', '2017-06-09 04:35:16'),
(217, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 04:36:19', '2017-06-09 04:36:19'),
(218, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 04:38:38', '2017-06-09 04:38:38'),
(219, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.","tags":["5","7",""],"category":"1","menu":"1","view_count":"10","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT"}', '2017-06-09 04:38:49', '2017-06-09 04:38:49'),
(220, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 04:38:50', '2017-06-09 04:38:50'),
(221, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 04:39:18', '2017-06-09 04:39:18'),
(222, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.","tags":["5","7",""],"category_id":"1","menu_id":"1","view_count":"10","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT"}', '2017-06-09 04:39:21', '2017-06-09 04:39:21'),
(223, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 04:39:21', '2017-06-09 04:39:21'),
(224, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:39:25', '2017-06-09 04:39:25'),
(225, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.","tags":["5","7",""],"category_id":"2","menu_id":"1","view_count":"10","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/post"}', '2017-06-09 04:39:31', '2017-06-09 04:39:31'),
(226, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 04:39:31', '2017-06-09 04:39:31'),
(227, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:39:35', '2017-06-09 04:39:35'),
(228, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"10","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/post"}', '2017-06-09 04:39:40', '2017-06-09 04:39:40'),
(229, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 04:39:40', '2017-06-09 04:39:40'),
(230, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:39:43', '2017-06-09 04:39:43'),
(231, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:40:41', '2017-06-09 04:40:41'),
(232, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","id":""}', '2017-06-09 04:40:43', '2017-06-09 04:40:43'),
(233, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 04:40:55', '2017-06-09 04:40:55'),
(234, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"10","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/post?&id="}', '2017-06-09 04:41:03', '2017-06-09 04:41:03'),
(235, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":""}', '2017-06-09 04:41:04', '2017-06-09 04:41:04'),
(236, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":""}', '2017-06-09 04:46:03', '2017-06-09 04:46:03'),
(237, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":""}', '2017-06-09 04:46:19', '2017-06-09 04:46:19'),
(238, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":""}', '2017-06-09 04:47:17', '2017-06-09 04:47:17'),
(239, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":""}', '2017-06-09 04:47:38', '2017-06-09 04:47:38'),
(240, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":""}', '2017-06-09 04:51:09', '2017-06-09 04:51:09'),
(241, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"","title":"","description":"","category_id":"2","_pjax":"#pjax-container"}', '2017-06-09 04:51:21', '2017-06-09 04:51:21'),
(242, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"","title":"","description":"","category_id":"2"}', '2017-06-09 04:51:38', '2017-06-09 04:51:38'),
(243, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"","title":"","description":"","category_id":"2"}', '2017-06-09 04:52:54', '2017-06-09 04:52:54'),
(244, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"","title":"","description":"","category_id":"","tag":"1","_pjax":"#pjax-container"}', '2017-06-09 04:53:03', '2017-06-09 04:53:03'),
(245, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"","title":"","description":"","category_id":"","tag":"1"}', '2017-06-09 04:55:32', '2017-06-09 04:55:32'),
(246, 1, 'admin/post', 'GET', '127.0.0.1', '{"tag":"1","id":"","title":"","description":"","category_id":"","950375a1dacf66a314750237a248cbb3":"1","_pjax":"#pjax-container"}', '2017-06-09 04:55:38', '2017-06-09 04:55:38'),
(247, 1, 'admin/post', 'GET', '127.0.0.1', '{"tag":"1","id":"","title":"","description":"","category_id":"","950375a1dacf66a314750237a248cbb3":"1"}', '2017-06-09 04:56:29', '2017-06-09 04:56:29'),
(248, 1, 'admin/post', 'GET', '127.0.0.1', '{"tag":"1","id":"","title":"","description":"","category_id":"","950375a1dacf66a314750237a248cbb3":"1"}', '2017-06-09 04:58:15', '2017-06-09 04:58:15'),
(249, 1, 'admin/post', 'GET', '127.0.0.1', '{"tag":"1","id":"","title":"","description":"","category_id":"","950375a1dacf66a314750237a248cbb3":"1"}', '2017-06-09 05:06:35', '2017-06-09 05:06:35'),
(250, 1, 'admin/post', 'GET', '127.0.0.1', '{"tag":"1","id":"","title":"","description":"","category_id":"","950375a1dacf66a314750237a248cbb3":"1"}', '2017-06-09 05:06:44', '2017-06-09 05:06:44'),
(251, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:06:50', '2017-06-09 05:06:50'),
(252, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 05:07:11', '2017-06-09 05:07:11'),
(253, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 05:07:34', '2017-06-09 05:07:34'),
(254, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 05:08:03', '2017-06-09 05:08:03'),
(255, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 05:09:26', '2017-06-09 05:09:26'),
(256, 1, 'admin/menu/1', 'PUT', '127.0.0.1', '{"_method":"PUT","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_orderable":"0"}', '2017-06-09 05:09:31', '2017-06-09 05:09:31'),
(257, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:09:32', '2017-06-09 05:09:32'),
(258, 1, 'admin/menu/1', 'PUT', '127.0.0.1', '{"_method":"PUT","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_orderable":"1"}', '2017-06-09 05:09:37', '2017-06-09 05:09:37'),
(259, 1, 'admin/menu/1', 'PUT', '127.0.0.1', '{"_method":"PUT","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_orderable":"1"}', '2017-06-09 05:09:37', '2017-06-09 05:09:37'),
(260, 1, 'admin/menu/1', 'PUT', '127.0.0.1', '{"_method":"PUT","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_orderable":"1"}', '2017-06-09 05:09:38', '2017-06-09 05:09:38'),
(261, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:09:38', '2017-06-09 05:09:38'),
(262, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:09:38', '2017-06-09 05:09:38'),
(263, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:09:39', '2017-06-09 05:09:39'),
(264, 1, 'admin/menu/2', 'PUT', '127.0.0.1', '{"_method":"PUT","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_orderable":"1"}', '2017-06-09 05:09:53', '2017-06-09 05:09:53'),
(265, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:09:53', '2017-06-09 05:09:53'),
(266, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 05:13:07', '2017-06-09 05:13:07'),
(267, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 05:13:24', '2017-06-09 05:13:24'),
(268, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 05:13:26', '2017-06-09 05:13:26'),
(269, 1, 'admin/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 05:13:50', '2017-06-09 05:13:50'),
(270, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:14:43', '2017-06-09 05:14:43'),
(271, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 05:16:29', '2017-06-09 05:16:29'),
(272, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"","title":"","description":"","category_id":"","menu_id":"","6fcc6adb751d8651496c79f853a93964":"2","_pjax":"#pjax-container"}', '2017-06-09 05:16:36', '2017-06-09 05:16:36'),
(273, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"","title":"","description":"","category_id":"","menu_id":"","6fcc6adb751d8651496c79f853a93964":"2"}', '2017-06-09 05:17:40', '2017-06-09 05:17:40');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(274, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"","title":"","description":"","category_id":"","menu_id":"","6fcc6adb751d8651496c79f853a93964":"2"}', '2017-06-09 05:18:10', '2017-06-09 05:18:10'),
(275, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"","title":"","description":"","category_id":"","menu_id":"","6fcc6adb751d8651496c79f853a93964":"2"}', '2017-06-09 05:18:33', '2017-06-09 05:18:33'),
(276, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"","title":"","description":"","category_id":"","menu_id":"","6fcc6adb751d8651496c79f853a93964":"2"}', '2017-06-09 05:18:58', '2017-06-09 05:18:58'),
(277, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"","title":"","description":"","category_id":"","menu_id":"","6fcc6adb751d8651496c79f853a93964":"2"}', '2017-06-09 05:19:17', '2017-06-09 05:19:17'),
(278, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:19:20', '2017-06-09 05:19:20'),
(279, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:19:37', '2017-06-09 05:19:37'),
(280, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 05:21:53', '2017-06-09 05:21:53'),
(281, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:21:59', '2017-06-09 05:21:59'),
(282, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u8bc4\\u8bba","icon":"fa-bars","uri":"comment","roles":[""],"_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa"}', '2017-06-09 05:22:14', '2017-06-09 05:22:14'),
(283, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 05:22:14', '2017-06-09 05:22:14'),
(284, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 05:22:18', '2017-06-09 05:22:18'),
(285, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:22:24', '2017-06-09 05:22:24'),
(286, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:24:51', '2017-06-09 05:24:51'),
(287, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:24:52', '2017-06-09 05:24:52'),
(288, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:25:14', '2017-06-09 05:25:14'),
(289, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","id":"1","title":"","description":"","category_id":"","menu_id":"","c392c4e766619e8f2a2010e8a5225764":""}', '2017-06-09 05:25:21', '2017-06-09 05:25:21'),
(290, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"1"}', '2017-06-09 05:25:28', '2017-06-09 05:25:28'),
(291, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:27:42', '2017-06-09 05:27:42'),
(292, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:28:03', '2017-06-09 05:28:03'),
(293, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:28:29', '2017-06-09 05:28:29'),
(294, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:29:22', '2017-06-09 05:29:22'),
(295, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:29:30', '2017-06-09 05:29:30'),
(296, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:30:05', '2017-06-09 05:30:05'),
(297, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:30:31', '2017-06-09 05:30:31'),
(298, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:30:44', '2017-06-09 05:30:44'),
(299, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:32:43', '2017-06-09 05:32:43'),
(300, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:34:01', '2017-06-09 05:34:01'),
(301, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:34:24', '2017-06-09 05:34:24'),
(302, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:34:41', '2017-06-09 05:34:41'),
(303, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:34:58', '2017-06-09 05:34:58'),
(304, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:35:12', '2017-06-09 05:35:12'),
(305, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:35:30', '2017-06-09 05:35:30'),
(306, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:36:08', '2017-06-09 05:36:08'),
(307, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:36:34', '2017-06-09 05:36:34'),
(308, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:37:01', '2017-06-09 05:37:01'),
(309, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:37:20', '2017-06-09 05:37:20'),
(310, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:37:35', '2017-06-09 05:37:35'),
(311, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:37:57', '2017-06-09 05:37:57'),
(312, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:38:09', '2017-06-09 05:38:09'),
(313, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:38:47', '2017-06-09 05:38:47'),
(314, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:39:08', '2017-06-09 05:39:08'),
(315, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:39:21', '2017-06-09 05:39:21'),
(316, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:39:50', '2017-06-09 05:39:50'),
(317, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:40:09', '2017-06-09 05:40:09'),
(318, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:40:23', '2017-06-09 05:40:23'),
(319, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:40:42', '2017-06-09 05:40:42'),
(320, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:41:15', '2017-06-09 05:41:15'),
(321, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:41:40', '2017-06-09 05:41:40'),
(322, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:41:59', '2017-06-09 05:41:59'),
(323, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:42:02', '2017-06-09 05:42:02'),
(324, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:42:02', '2017-06-09 05:42:02'),
(325, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:42:16', '2017-06-09 05:42:16'),
(326, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:42:24', '2017-06-09 05:42:24'),
(327, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:42:38', '2017-06-09 05:42:38'),
(328, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:43:13', '2017-06-09 05:43:13'),
(329, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:43:22', '2017-06-09 05:43:22'),
(330, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:43:43', '2017-06-09 05:43:43'),
(331, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:46:28', '2017-06-09 05:46:28'),
(332, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:49:25', '2017-06-09 05:49:25'),
(333, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:49:31', '2017-06-09 05:49:31'),
(334, 1, 'admin', 'GET', '127.0.0.1', '{"id":"24","_pjax":"#pjax-container"}', '2017-06-09 05:49:36', '2017-06-09 05:49:36'),
(335, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:49:48', '2017-06-09 05:49:48'),
(336, 1, 'admin/post', 'GET', '127.0.0.1', '{"id":"24","_pjax":"#pjax-container"}', '2017-06-09 05:49:51', '2017-06-09 05:49:51'),
(337, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:50:01', '2017-06-09 05:50:01'),
(338, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:52:37', '2017-06-09 05:52:37'),
(339, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:53:15', '2017-06-09 05:53:15'),
(340, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:55:13', '2017-06-09 05:55:13'),
(341, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:57:14', '2017-06-09 05:57:14'),
(342, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 05:58:09', '2017-06-09 05:58:09'),
(343, 1, 'admin/comment', 'GET', '127.0.0.1', '{"id":"","commentable_id":"24","username":"","email":"","ip_id":"","_pjax":"#pjax-container"}', '2017-06-09 05:58:17', '2017-06-09 05:58:17'),
(344, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 05:58:23', '2017-06-09 05:58:23'),
(345, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 05:58:57', '2017-06-09 05:58:57'),
(346, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 05:59:14', '2017-06-09 05:59:14'),
(347, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 05:59:38', '2017-06-09 05:59:38'),
(348, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 05:59:55', '2017-06-09 05:59:55'),
(349, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:00:42', '2017-06-09 06:00:42'),
(350, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:01:00', '2017-06-09 06:01:00'),
(351, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:01:32', '2017-06-09 06:01:32'),
(352, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:01:55', '2017-06-09 06:01:55'),
(353, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:02:13', '2017-06-09 06:02:13'),
(354, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:04:12', '2017-06-09 06:04:12'),
(355, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:09:52', '2017-06-09 06:09:52'),
(356, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:10:34', '2017-06-09 06:10:34'),
(357, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:16:13', '2017-06-09 06:16:13'),
(358, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:16:38', '2017-06-09 06:16:38'),
(359, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:17:28', '2017-06-09 06:17:28'),
(360, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:17:55', '2017-06-09 06:17:55'),
(361, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:18:46', '2017-06-09 06:18:46'),
(362, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:19:01', '2017-06-09 06:19:01'),
(363, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:19:16', '2017-06-09 06:19:16'),
(364, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:19:42', '2017-06-09 06:19:42'),
(365, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:29:11', '2017-06-09 06:29:11'),
(366, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:29:30', '2017-06-09 06:29:30'),
(367, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:29:51', '2017-06-09 06:29:51'),
(368, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:30:18', '2017-06-09 06:30:18'),
(369, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:30:55', '2017-06-09 06:30:55'),
(370, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:31:13', '2017-06-09 06:31:13'),
(371, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:31:32', '2017-06-09 06:31:32'),
(372, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:31:38', '2017-06-09 06:31:38'),
(373, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:32:14', '2017-06-09 06:32:14'),
(374, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 06:32:33', '2017-06-09 06:32:33'),
(375, 1, 'admin/post', 'GET', '127.0.0.1', '{"_export_":"1"}', '2017-06-09 06:48:37', '2017-06-09 06:48:37'),
(376, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 06:49:10', '2017-06-09 06:49:10'),
(377, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","_export_":"1"}', '2017-06-09 06:49:13', '2017-06-09 06:49:13'),
(378, 1, 'admin/tag', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 06:51:25', '2017-06-09 06:51:25'),
(379, 1, 'admin/type', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 06:51:31', '2017-06-09 06:51:31'),
(380, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 06:51:36', '2017-06-09 06:51:36'),
(381, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 07:04:32', '2017-06-09 07:04:32'),
(382, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 07:04:35', '2017-06-09 07:04:35'),
(383, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:05:10', '2017-06-09 07:05:10'),
(384, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:05:14', '2017-06-09 07:05:14'),
(385, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:05:15', '2017-06-09 07:05:15'),
(386, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:05:55', '2017-06-09 07:05:55'),
(387, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:14:09', '2017-06-09 07:14:09'),
(388, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:14:11', '2017-06-09 07:14:11'),
(389, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:14:12', '2017-06-09 07:14:12'),
(390, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:14:34', '2017-06-09 07:14:34'),
(391, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:14:36', '2017-06-09 07:14:36'),
(392, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:14:59', '2017-06-09 07:14:59'),
(393, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:17:10', '2017-06-09 07:17:10'),
(394, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:18:30', '2017-06-09 07:18:30'),
(395, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:21:07', '2017-06-09 07:21:07'),
(396, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:21:27', '2017-06-09 07:21:27'),
(397, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:23:20', '2017-06-09 07:23:20'),
(398, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:24:52', '2017-06-09 07:24:52'),
(399, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:28:18', '2017-06-09 07:28:18'),
(400, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:29:36', '2017-06-09 07:29:36'),
(401, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:30:03', '2017-06-09 07:30:03'),
(402, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:30:41', '2017-06-09 07:30:41'),
(403, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:44:42', '2017-06-09 07:44:42'),
(404, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:44:58', '2017-06-09 07:44:58'),
(405, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:45:44', '2017-06-09 07:45:44'),
(406, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:47:18', '2017-06-09 07:47:18'),
(407, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:47:30', '2017-06-09 07:47:30'),
(408, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:48:27', '2017-06-09 07:48:27'),
(409, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:49:12', '2017-06-09 07:49:12'),
(410, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:50:42', '2017-06-09 07:50:42'),
(411, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:53:33', '2017-06-09 07:53:33'),
(412, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:54:03', '2017-06-09 07:54:03'),
(413, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:55:39', '2017-06-09 07:55:39'),
(414, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:55:56', '2017-06-09 07:55:56'),
(415, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:55:59', '2017-06-09 07:55:59'),
(416, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 07:58:11', '2017-06-09 07:58:11'),
(417, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:05:44', '2017-06-09 08:05:44'),
(418, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:06:08', '2017-06-09 08:06:08'),
(419, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:07:09', '2017-06-09 08:07:09'),
(420, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:24:30', '2017-06-09 08:24:30'),
(421, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:26:57', '2017-06-09 08:26:57'),
(422, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:28:46', '2017-06-09 08:28:46'),
(423, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:29:47', '2017-06-09 08:29:47'),
(424, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:31:48', '2017-06-09 08:31:48'),
(425, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:32:42', '2017-06-09 08:32:42'),
(426, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:35:05', '2017-06-09 08:35:05'),
(427, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:36:12', '2017-06-09 08:36:12'),
(428, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:38:42', '2017-06-09 08:38:42'),
(429, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:39:22', '2017-06-09 08:39:22'),
(430, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:40:46', '2017-06-09 08:40:46'),
(431, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:41:20', '2017-06-09 08:41:20'),
(432, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:42:52', '2017-06-09 08:42:52'),
(433, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:44:05', '2017-06-09 08:44:05'),
(434, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"10","_token":"SSF1yx80G6scR87g1E6XMVH4KYl12WZ4tKqMmOIa","_method":"PUT","content":"<p><strong>sdsdsdsd<\\/strong><\\/p>"}', '2017-06-09 08:47:41', '2017-06-09 08:47:41'),
(435, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 08:47:41', '2017-06-09 08:47:41'),
(436, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 08:47:44', '2017-06-09 08:47:44'),
(437, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:47:58', '2017-06-09 08:47:58'),
(438, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 08:48:06', '2017-06-09 08:48:06'),
(439, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 08:48:08', '2017-06-09 08:48:08'),
(440, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:48:18', '2017-06-09 08:48:18'),
(441, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:49:46', '2017-06-09 08:49:46'),
(442, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:53:27', '2017-06-09 08:53:27'),
(443, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:54:21', '2017-06-09 08:54:21'),
(444, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:55:53', '2017-06-09 08:55:53'),
(445, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:57:30', '2017-06-09 08:57:30'),
(446, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:58:00', '2017-06-09 08:58:00'),
(447, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 08:58:56', '2017-06-09 08:58:56'),
(448, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:02:43', '2017-06-09 09:02:43'),
(449, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:04:15', '2017-06-09 09:04:15'),
(450, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:05:37', '2017-06-09 09:05:37'),
(451, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:06:34', '2017-06-09 09:06:34'),
(452, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:08:08', '2017-06-09 09:08:08'),
(453, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:09:29', '2017-06-09 09:09:29'),
(454, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:11:11', '2017-06-09 09:11:11'),
(455, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:14:31', '2017-06-09 09:14:31'),
(456, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:15:16', '2017-06-09 09:15:16'),
(457, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:27:05', '2017-06-09 09:27:05'),
(458, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:27:07', '2017-06-09 09:27:07'),
(459, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:27:16', '2017-06-09 09:27:16'),
(460, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"11","_token":"mC8UgybYN0liykVX1Dvb5c7upBOMpgA3wpfVR1SA","_method":"PUT","content":"<p>&lt;p&gt;&lt;strong&gt;sdsdsdsd&lt;\\/strong&gt;&lt;\\/p<img src=\\"\\/attachment\\/20170609172728_LVZnxS.jpg\\" title=\\"201610201749370555.jpg\\" alt=\\"201610201749370555.jpg\\"\\/>&gt;<\\/p>"}', '2017-06-09 09:27:30', '2017-06-09 09:27:30'),
(461, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 09:27:30', '2017-06-09 09:27:30'),
(462, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:27:34', '2017-06-09 09:27:34'),
(463, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:27:41', '2017-06-09 09:27:41'),
(464, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:28:20', '2017-06-09 09:28:20'),
(465, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"11","_token":"mC8UgybYN0liykVX1Dvb5c7upBOMpgA3wpfVR1SA","_method":"PUT","content":"<p>&lt;p&gt;&lt;strong&gt;sdsdsdsd&lt;\\/strong&gt;&lt;\\/p&gt;<img src=\\"\\/attachment\\/20170609172728_LVZnxS.jpg\\" title=\\"201610201749370555.jpg\\" alt=\\"201610201749370555.jpg\\"\\/><\\/p>"}', '2017-06-09 09:28:35', '2017-06-09 09:28:35'),
(466, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 09:28:35', '2017-06-09 09:28:35'),
(467, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:28:46', '2017-06-09 09:28:46'),
(468, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:29:40', '2017-06-09 09:29:40'),
(469, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:29:44', '2017-06-09 09:29:44'),
(470, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:29:47', '2017-06-09 09:29:47'),
(471, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:30:44', '2017-06-09 09:30:44'),
(472, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:30:46', '2017-06-09 09:30:46'),
(473, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:31:12', '2017-06-09 09:31:12'),
(474, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:32:00', '2017-06-09 09:32:00'),
(475, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:32:02', '2017-06-09 09:32:02'),
(476, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:32:21', '2017-06-09 09:32:21'),
(477, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 09:32:24', '2017-06-09 09:32:24'),
(478, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:32:33', '2017-06-09 09:32:33'),
(479, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:34:13', '2017-06-09 09:34:13'),
(480, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:35:18', '2017-06-09 09:35:18'),
(481, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:35:20', '2017-06-09 09:35:20'),
(482, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:38:16', '2017-06-09 09:38:16'),
(483, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:38:21', '2017-06-09 09:38:21'),
(484, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:38:23', '2017-06-09 09:38:23'),
(485, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 09:38:25', '2017-06-09 09:38:25'),
(486, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:38:38', '2017-06-09 09:38:38'),
(487, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:39:35', '2017-06-09 09:39:35'),
(488, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:39:37', '2017-06-09 09:39:37'),
(489, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:39:45', '2017-06-09 09:39:45'),
(490, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:46:57', '2017-06-09 09:46:57'),
(491, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:47:00', '2017-06-09 09:47:00'),
(492, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:47:51', '2017-06-09 09:47:51'),
(493, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:47:58', '2017-06-09 09:47:58'),
(494, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:48:00', '2017-06-09 09:48:00'),
(495, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:48:45', '2017-06-09 09:48:45'),
(496, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:48:52', '2017-06-09 09:48:52'),
(497, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:48:54', '2017-06-09 09:48:54'),
(498, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:50:34', '2017-06-09 09:50:34'),
(499, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"11","_token":"mC8UgybYN0liykVX1Dvb5c7upBOMpgA3wpfVR1SA","_method":"PUT","content":"<p>aaaaaaaaaaaaaa<\\/p>"}', '2017-06-09 09:51:00', '2017-06-09 09:51:00'),
(500, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 09:51:00', '2017-06-09 09:51:00'),
(501, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:51:05', '2017-06-09 09:51:05'),
(502, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"11","_token":"mC8UgybYN0liykVX1Dvb5c7upBOMpgA3wpfVR1SA","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/post"}', '2017-06-09 09:51:10', '2017-06-09 09:51:10'),
(503, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 09:51:10', '2017-06-09 09:51:10'),
(504, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:51:12', '2017-06-09 09:51:12'),
(505, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:51:14', '2017-06-09 09:51:14'),
(506, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:51:50', '2017-06-09 09:51:50'),
(507, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:51:54', '2017-06-09 09:51:54'),
(508, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:51:56', '2017-06-09 09:51:56'),
(509, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:52:00', '2017-06-09 09:52:00'),
(510, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:52:10', '2017-06-09 09:52:10'),
(511, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:52:11', '2017-06-09 09:52:11'),
(512, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:52:11', '2017-06-09 09:52:11'),
(513, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:52:13', '2017-06-09 09:52:13'),
(514, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:52:33', '2017-06-09 09:52:33'),
(515, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:52:35', '2017-06-09 09:52:35'),
(516, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:53:43', '2017-06-09 09:53:43'),
(517, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:53:46', '2017-06-09 09:53:46'),
(518, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 09:53:48', '2017-06-09 09:53:48'),
(519, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:53:50', '2017-06-09 09:53:50'),
(520, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:54:02', '2017-06-09 09:54:02'),
(521, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 09:54:04', '2017-06-09 09:54:04'),
(522, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 09:54:14', '2017-06-09 09:54:14'),
(523, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-06-09 18:51:51', '2017-06-09 18:51:51'),
(524, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 19:41:34', '2017-06-09 19:41:34'),
(525, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 19:41:37', '2017-06-09 19:41:37'),
(526, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.<\\/p>","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/post"}', '2017-06-09 19:42:00', '2017-06-09 19:42:00'),
(527, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 19:42:00', '2017-06-09 19:42:00'),
(528, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit. ","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 19:42:26', '2017-06-09 19:42:26'),
(529, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 19:42:26', '2017-06-09 19:42:26'),
(530, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 19:47:04', '2017-06-09 19:47:04'),
(531, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 19:47:06', '2017-06-09 19:47:06'),
(532, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 19:47:16', '2017-06-09 19:47:16'),
(533, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.<\\/p>","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/post"}', '2017-06-09 19:47:23', '2017-06-09 19:47:23'),
(534, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 19:47:24', '2017-06-09 19:47:24'),
(535, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 19:57:40', '2017-06-09 19:57:40'),
(536, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u53cb\\u60c5\\u94fe\\u63a5","icon":"fa-bars","uri":"link","roles":[""],"_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN"}', '2017-06-09 19:57:58', '2017-06-09 19:57:58'),
(537, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 19:57:58', '2017-06-09 19:57:58'),
(538, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-06-09 19:58:01', '2017-06-09 19:58:01'),
(539, 1, 'admin/link', 'GET', '127.0.0.1', '[]', '2017-06-09 19:58:22', '2017-06-09 19:58:22'),
(540, 1, 'admin/link', 'GET', '127.0.0.1', '[]', '2017-06-09 19:59:14', '2017-06-09 19:59:14'),
(541, 1, 'admin/link/8', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN"}', '2017-06-09 19:59:24', '2017-06-09 19:59:24'),
(542, 1, 'admin/link', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 19:59:24', '2017-06-09 19:59:24'),
(543, 1, 'admin/link/7', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN"}', '2017-06-09 19:59:27', '2017-06-09 19:59:27'),
(544, 1, 'admin/link', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 19:59:27', '2017-06-09 19:59:27'),
(545, 1, 'admin/link/6', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN"}', '2017-06-09 19:59:30', '2017-06-09 19:59:30'),
(546, 1, 'admin/link', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 19:59:31', '2017-06-09 19:59:31'),
(547, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 20:01:46', '2017-06-09 20:01:46'),
(548, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 20:01:49', '2017-06-09 20:01:49'),
(549, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 20:01:50', '2017-06-09 20:01:50'),
(550, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 20:03:21', '2017-06-09 20:03:21'),
(551, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 20:03:24', '2017-06-09 20:03:24'),
(552, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.<\\/p>","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/post"}', '2017-06-09 20:03:31', '2017-06-09 20:03:31'),
(553, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:03:31', '2017-06-09 20:03:31'),
(554, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:04:49', '2017-06-09 20:04:49'),
(555, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.<\\/p>","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 20:05:01', '2017-06-09 20:05:01'),
(556, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 20:05:01', '2017-06-09 20:05:01'),
(557, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 20:05:24', '2017-06-09 20:05:24'),
(558, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.<\\/p> ","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/post"}', '2017-06-09 20:05:29', '2017-06-09 20:05:29'),
(559, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:05:30', '2017-06-09 20:05:30'),
(560, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:07:30', '2017-06-09 20:07:30');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(561, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.<\\/p>","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 20:07:37', '2017-06-09 20:07:37'),
(562, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:07:38', '2017-06-09 20:07:38'),
(563, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:08:31', '2017-06-09 20:08:31'),
(564, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.<\\/p>","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 20:08:38', '2017-06-09 20:08:38'),
(565, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 20:08:38', '2017-06-09 20:08:38'),
(566, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 20:10:09', '2017-06-09 20:10:09'),
(567, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:10:43', '2017-06-09 20:10:43'),
(568, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.<\\/p>","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 20:10:56', '2017-06-09 20:10:56'),
(569, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:10:56', '2017-06-09 20:10:56'),
(570, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:11:18', '2017-06-09 20:11:18'),
(571, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.<\\/p>","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 20:11:27', '2017-06-09 20:11:27'),
(572, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 20:11:28', '2017-06-09 20:11:28'),
(573, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 20:11:32', '2017-06-09 20:11:32'),
(574, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.<\\/p> ","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/post"}', '2017-06-09 20:11:40', '2017-06-09 20:11:40'),
(575, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 20:11:40', '2017-06-09 20:11:40'),
(576, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 20:12:42', '2017-06-09 20:12:42'),
(577, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 20:12:44', '2017-06-09 20:12:44'),
(578, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:12:45', '2017-06-09 20:12:45'),
(579, 1, 'admin/post/1', 'PUT', '127.0.0.1', '{"title":"Dolores nostrum perferendis dicta vero aperiam in animi.","description":"Sit sed debitis quibusdam voluptate dolorem nisi.","content":"<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\\r\\n\\r\\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\\r\\n\\r\\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\\r\\n\\r\\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\\r\\n\\r\\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\\r\\n\\r\\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\\r\\n\\r\\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\\r\\n\\r\\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\\r\\n\\r\\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\\r\\n\\r\\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\\r\\n\\r\\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\\r\\n\\r\\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\\r\\n\\r\\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\\r\\n\\r\\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.<\\/p>","tags":["2","5","7",""],"category_id":"2","menu_id":"1","view_count":"12","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/post"}', '2017-06-09 20:12:52', '2017-06-09 20:12:52'),
(580, 1, 'admin/post/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:12:52', '2017-06-09 20:12:52'),
(581, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 20:20:42', '2017-06-09 20:20:42'),
(582, 1, 'admin/banner', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 20:20:43', '2017-06-09 20:20:43'),
(583, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 20:20:46', '2017-06-09 20:20:46'),
(584, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"href":"http:\\/\\/baidu.com\\/a","desc":"2","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 20:21:19', '2017-06-09 20:21:19'),
(585, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:21:20', '2017-06-09 20:21:20'),
(586, 1, 'admin/banner/1/edit', 'GET', '127.0.0.1', '[]', '2017-06-09 20:21:40', '2017-06-09 20:21:40'),
(587, 1, 'admin/banner/1', 'PUT', '127.0.0.1', '{"href":"http:\\/\\/baidu.com\\/a","desc":"2","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 20:21:50', '2017-06-09 20:21:50'),
(588, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 20:21:50', '2017-06-09 20:21:50'),
(589, 1, 'admin/banner/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 20:22:01', '2017-06-09 20:22:01'),
(590, 1, 'admin/banner/2', 'PUT', '127.0.0.1', '{"href":"http:\\/\\/baidu.com","desc":"1","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT","_previous_":"http:\\/\\/myblog.test.com\\/admin\\/banner"}', '2017-06-09 20:22:10', '2017-06-09 20:22:10'),
(591, 1, 'admin/banner', 'GET', '127.0.0.1', '[]', '2017-06-09 20:22:10', '2017-06-09 20:22:10'),
(592, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 21:01:53', '2017-06-09 21:01:53'),
(593, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:01:55', '2017-06-09 21:01:55'),
(594, 1, 'admin/comment/2', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:01:56', '2017-06-09 21:01:56'),
(595, 1, 'admin/comment/3', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:01:57', '2017-06-09 21:01:57'),
(596, 1, 'admin/comment/4', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:01:58', '2017-06-09 21:01:58'),
(597, 1, 'admin/comment/5', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:01:58', '2017-06-09 21:01:58'),
(598, 1, 'admin/comment/6', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:01:59', '2017-06-09 21:01:59'),
(599, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:02:00', '2017-06-09 21:02:00'),
(600, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:06:24', '2017-06-09 21:06:24'),
(601, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:06:37', '2017-06-09 21:06:37'),
(602, 1, 'admin/comment/3', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:06:45', '2017-06-09 21:06:45'),
(603, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:06:50', '2017-06-09 21:06:50'),
(604, 1, 'admin/comment/3', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:07:06', '2017-06-09 21:07:06'),
(605, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:09:13', '2017-06-09 21:09:13'),
(606, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:09:24', '2017-06-09 21:09:24'),
(607, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:09:27', '2017-06-09 21:09:27'),
(608, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:09:49', '2017-06-09 21:09:49'),
(609, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:09:59', '2017-06-09 21:09:59'),
(610, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:10:13', '2017-06-09 21:10:13'),
(611, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:12:05', '2017-06-09 21:12:05'),
(612, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:12:27', '2017-06-09 21:12:27'),
(613, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:12:30', '2017-06-09 21:12:30'),
(614, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:12:33', '2017-06-09 21:12:33'),
(615, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:14:23', '2017-06-09 21:14:23'),
(616, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:14:55', '2017-06-09 21:14:55'),
(617, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:15:00', '2017-06-09 21:15:00'),
(618, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:15:06', '2017-06-09 21:15:06'),
(619, 1, 'admin/comment/3', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:15:09', '2017-06-09 21:15:09'),
(620, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:15:11', '2017-06-09 21:15:11'),
(621, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:16:05', '2017-06-09 21:16:05'),
(622, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:16:39', '2017-06-09 21:16:39'),
(623, 1, 'admin/comment/2', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:16:47', '2017-06-09 21:16:47'),
(624, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:16:51', '2017-06-09 21:16:51'),
(625, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:21:43', '2017-06-09 21:21:43'),
(626, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:21:53', '2017-06-09 21:21:53'),
(627, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:22:00', '2017-06-09 21:22:00'),
(628, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:22:02', '2017-06-09 21:22:02'),
(629, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:22:21', '2017-06-09 21:22:21'),
(630, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:22:57', '2017-06-09 21:22:57'),
(631, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:23:03', '2017-06-09 21:23:03'),
(632, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:23:59', '2017-06-09 21:23:59'),
(633, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:24:03', '2017-06-09 21:24:03'),
(634, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:24:12', '2017-06-09 21:24:12'),
(635, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:24:27', '2017-06-09 21:24:27'),
(636, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:25:10', '2017-06-09 21:25:10'),
(637, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:25:14', '2017-06-09 21:25:14'),
(638, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:25:17', '2017-06-09 21:25:17'),
(639, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:25:55', '2017-06-09 21:25:55'),
(640, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:30:38', '2017-06-09 21:30:38'),
(641, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:30:48', '2017-06-09 21:30:48'),
(642, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:30:50', '2017-06-09 21:30:50'),
(643, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:31:09', '2017-06-09 21:31:09'),
(644, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:31:14', '2017-06-09 21:31:14'),
(645, 1, 'admin/comment/2', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:31:18', '2017-06-09 21:31:18'),
(646, 1, 'admin/comment/5', 'PUT', '127.0.0.1', '{"switch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:31:23', '2017-06-09 21:31:23'),
(647, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:31:25', '2017-06-09 21:31:25'),
(648, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:34:02', '2017-06-09 21:34:02'),
(649, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:34:09', '2017-06-09 21:34:09'),
(650, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:34:12', '2017-06-09 21:34:12'),
(651, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:35:11', '2017-06-09 21:35:11'),
(652, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:35:19', '2017-06-09 21:35:19'),
(653, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:35:54', '2017-06-09 21:35:54'),
(654, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:36:00', '2017-06-09 21:36:00'),
(655, 1, 'admin/comment/2', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:36:01', '2017-06-09 21:36:01'),
(656, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:36:04', '2017-06-09 21:36:04'),
(657, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:36:38', '2017-06-09 21:36:38'),
(658, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:37:20', '2017-06-09 21:37:20'),
(659, 1, 'admin/comment/3', 'PUT', '127.0.0.1', '{"switch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:37:24', '2017-06-09 21:37:24'),
(660, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:37:26', '2017-06-09 21:37:26'),
(661, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:37:28', '2017-06-09 21:37:28'),
(662, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:38:46', '2017-06-09 21:38:46'),
(663, 1, 'admin/comment/1', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:38:51', '2017-06-09 21:38:51'),
(664, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:38:54', '2017-06-09 21:38:54'),
(665, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 21:40:32', '2017-06-09 21:40:32'),
(666, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2017-06-09 21:41:08', '2017-06-09 21:41:08'),
(667, 1, 'admin/post', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 21:41:20', '2017-06-09 21:41:20'),
(668, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 21:41:28', '2017-06-09 21:41:28'),
(669, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:42:26', '2017-06-09 21:42:26'),
(670, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:47:05', '2017-06-09 21:47:05'),
(671, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:48:34', '2017-06-09 21:48:34'),
(672, 1, 'admin/comment/3', 'PUT', '127.0.0.1', '{"switch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:48:46', '2017-06-09 21:48:46'),
(673, 1, 'admin/comment/5', 'PUT', '127.0.0.1', '{"switch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:49:27', '2017-06-09 21:49:27'),
(674, 1, 'admin/comment/5', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:49:47', '2017-06-09 21:49:47'),
(675, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:50:16', '2017-06-09 21:50:16'),
(676, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:50:43', '2017-06-09 21:50:43'),
(677, 1, 'admin/comment/3', 'PUT', '127.0.0.1', '{"switch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:50:48', '2017-06-09 21:50:48'),
(678, 1, 'admin/comment/3', 'GET', '127.0.0.1', '{"witch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:51:43', '2017-06-09 21:51:43'),
(679, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:52:33', '2017-06-09 21:52:33'),
(680, 1, 'admin/comment/2', 'PUT', '127.0.0.1', '{"switch":"on","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:52:40', '2017-06-09 21:52:40'),
(681, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:52:47', '2017-06-09 21:52:47'),
(682, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:54:29', '2017-06-09 21:54:29'),
(683, 1, 'admin/comment/2', 'PUT', '127.0.0.1', '{"switch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:54:38', '2017-06-09 21:54:38'),
(684, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:54:41', '2017-06-09 21:54:41'),
(685, 1, 'admin/comment/3', 'PUT', '127.0.0.1', '{"switch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:54:45', '2017-06-09 21:54:45'),
(686, 1, 'admin/comment/4', 'PUT', '127.0.0.1', '{"switch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:54:46', '2017-06-09 21:54:46'),
(687, 1, 'admin/comment/5', 'PUT', '127.0.0.1', '{"switch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:54:47', '2017-06-09 21:54:47'),
(688, 1, 'admin/comment/6', 'PUT', '127.0.0.1', '{"switch":"off","_token":"yuUcuIfWgkrH7yfP9HBtgvCGhyDsb8XNbWNt2svN","_method":"PUT"}', '2017-06-09 21:54:47', '2017-06-09 21:54:47'),
(689, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:54:49', '2017-06-09 21:54:49'),
(690, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:55:22', '2017-06-09 21:55:22'),
(691, 1, 'admin/comment', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 21:57:51', '2017-06-09 21:57:51'),
(692, 1, 'admin/tag', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 21:57:54', '2017-06-09 21:57:54'),
(693, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:59:57', '2017-06-09 21:59:57'),
(694, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2017-06-09 21:59:57', '2017-06-09 21:59:57'),
(695, 1, 'admin/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2017-06-09 22:00:05', '2017-06-09 22:00:05');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2017-06-09 01:57:55', '2017-06-09 01:57:55');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$mu5dV6cYxVISlX6MHNeU2.Sr3pHCroXSKEMVuF9Ld.WutIMYDz5la', 'Administrator', 'image/201610201758477642.jpg', NULL, '2017-06-09 01:57:55', '2017-06-09 04:03:54');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL COMMENT '图片地址',
  `href` varchar(100) NOT NULL COMMENT '链接',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `desc` varchar(255) NOT NULL COMMENT '描述',
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `banners`
--

INSERT INTO `banners` (`id`, `image`, `href`, `created_at`, `updated_at`, `desc`, `deleted_at`) VALUES
(1, 'image/8d8a3a106e17f7aca9b852c1b6b31219.jpeg', 'http://baidu.com/a', '0000-00-00 00:00:00', '2017-06-10 04:21:50', '2', '0000-00-00 00:00:00'),
(2, 'image/efd0bcdd519e6a2608bfc36803a84f81.jpeg', 'http://baidu.com', '0000-00-00 00:00:00', '2017-06-10 04:22:10', '1', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2017-05-27 06:32:09', '2017-05-27 06:32:09', 'Android'),
(2, '2017-05-27 06:32:09', '2017-05-27 06:32:09', 'Java'),
(3, '2017-05-27 06:32:09', '2017-05-27 06:32:09', 'Php'),
(4, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'Spring'),
(5, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'Laravel'),
(6, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'Vue'),
(7, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'Js');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `switch` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '审核'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `commentable_id`, `content`, `commentable_type`, `username`, `email`, `deleted_at`, `created_at`, `updated_at`, `site`, `ip_id`, `switch`) VALUES
(1, 1, 'wewewe', 'App\\Models\\Post', 'liu', '1644@qq.com', NULL, '2017-05-27 06:35:02', '2017-05-27 06:35:02', 'wew', '127.0.0.1', '0'),
(2, 20, 'wewewe', 'App\\Models\\Post', 'liu', '1644@qq.com', NULL, '2017-05-27 06:35:02', '2017-06-09 21:54:38', 'wew', '127.0.0.1', '0'),
(3, 20, 'wewewe', 'App\\Models\\Post', 'liu', '1644@qq.com', NULL, '2017-03-08 06:35:02', '2017-06-09 21:54:45', 'wew', '127.0.0.1', '0'),
(4, 11, 'wewewe', 'App\\Models\\Post', 'liu', '1644@qq.com', NULL, '2017-05-27 06:35:02', '2017-06-09 21:54:46', 'wew', '127.0.0.1', '0'),
(5, 11, 'wewewe', 'App\\Models\\Post', 'liu', '1644@qq.com', NULL, '2017-04-12 06:35:02', '2017-06-09 21:54:47', 'wew', '127.0.0.1', '0'),
(6, 11, 'ewrwr', 'App\\Models\\Post', '131', 'qwer', NULL, '2017-06-08 03:09:13', '2017-06-09 21:54:47', NULL, '127.0.0.1', '0');

-- --------------------------------------------------------

--
-- 表的结构 `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT '友情链接',
  `href` varchar(100) NOT NULL COMMENT '链接地址',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `links`
--

INSERT INTO `links` (`id`, `name`, `href`, `sort`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '网站建设', 'http://baidu.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '网站建设', 'http://baidu.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '网站建设', 'http://baidu.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '网站建设', 'http://baidu.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '网站建设', 'http://baidu.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '网站建设', 'http://baidu.com', 1, '0000-00-00 00:00:00', '2017-06-10 03:59:31', '2017-06-10 03:59:31'),
(7, '网站建设', 'http://baidu.com', 1, '0000-00-00 00:00:00', '2017-06-10 03:59:27', '2017-06-10 03:59:27'),
(8, '网站建设', 'http://baidu.com', 1, '0000-00-00 00:00:00', '2017-06-10 03:59:24', '2017-06-10 03:59:24');

-- --------------------------------------------------------

--
-- 表的结构 `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT '友情链接',
  `href` varchar(100) NOT NULL COMMENT '链接地址',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `menus`
--

INSERT INTO `menus` (`id`, `name`, `href`, `sort`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '列表', 'lists', 1, '0000-00-00 00:00:00', '2017-06-09 12:11:18', NULL),
(2, '列表2', 'lists2', 1, '2017-06-09 12:12:50', '2017-06-09 12:14:58', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_01_04_173148_create_administrators_table', 1),
(2, '2016_01_04_173148_create_admin_tables', 2);

-- --------------------------------------------------------

--
-- 表的结构 `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `html_content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  `image` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片地址',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `menu_id`, `image`, `title`, `description`, `slug`, `content`, `status`, `view_count`, `created_at`, `updated_at`, `published_at`, `deleted_at`) VALUES
(1, 2, 1, 'image/f58baca2497e207cb1b032ed8991dbd5.jpeg', 'Dolores nostrum perferendis dicta vero aperiam in animi.', 'Sit sed debitis quibusdam voluptate dolorem nisi.', 'quia-adipisci-laboriosam-qui-velit-quia-sequi-quaerat-sed', '<p>Tempore ducimus laborum aut nesciunt et sunt. Est qui veniam adipisci sit enim et eius. Neque iure sit dolorem dolore neque sit aliquid.\r\n\r\nEst voluptates explicabo quod at. Voluptatem incidunt quam sequi quia enim. Cumque dignissimos quia autem quo eum soluta dolore aut.\r\n\r\nCumque voluptatibus dolorem corporis sunt et. Harum suscipit sed laborum libero molestias in assumenda. Architecto totam aut quia ut.\r\n\r\nVelit rem blanditiis sit ut incidunt omnis. Amet assumenda aliquam rerum laudantium quo sed quisquam in. Hic quia et rerum eligendi ut. Magni ea enim est aspernatur.\r\n\r\nQui sint nulla rerum impedit modi autem rerum. Commodi consequatur velit sit quae repellendus consequuntur et. Tenetur ut consectetur nisi iste quia dolor quo.\r\n\r\nQuis vel dolores qui. Sequi qui autem laborum eius error. Nihil dignissimos nulla error enim. Eos repudiandae consectetur accusamus ea distinctio ratione aspernatur.\r\n\r\nRecusandae temporibus qui debitis expedita rerum consequatur dolore rerum. Iure doloremque numquam asperiores eum ratione qui. Et quia corporis excepturi eum omnis labore atque nihil.\r\n\r\nDolorum dignissimos velit aspernatur possimus. Dignissimos eum porro excepturi enim impedit corrupti veritatis. Qui eaque dolorum perspiciatis debitis. Molestiae aliquid cumque voluptatibus autem illo aut consequatur.\r\n\r\nQuod sed deleniti rerum provident ex nam voluptatum. Quia debitis consequuntur est quasi dolorem. Necessitatibus aspernatur distinctio incidunt rerum aspernatur non necessitatibus.\r\n\r\nInventore non tempore nobis. Quia dolores sunt sit ex deserunt dolores accusamus. Corrupti fugit harum est voluptas ex quisquam. Ab veritatis accusamus doloremque nostrum autem qui placeat illum.\r\n\r\nEx vel dolore minus laborum. Qui rerum non laudantium iste non. Sint neque occaecati reiciendis cum fugiat.\r\n\r\nConsequatur qui totam delectus aliquid laudantium voluptates nihil. Ipsa officiis et nostrum sed iste cumque velit. Fuga temporibus minus recusandae doloribus. Occaecati autem tempora quas et.\r\n\r\nDignissimos aut minus maxime similique officiis voluptas. Sit iste beatae ex quo quia maxime nisi. Voluptatum voluptate qui blanditiis qui alias id temporibus. Provident repellendus rerum veritatis quo dolore non.\r\n\r\nQuo dolor fuga possimus voluptatum et. Quam ipsum cumque iusto temporibus error tempora velit.</p> ', 1, 35, '2017-05-27 06:32:11', '2017-06-09 20:59:24', '2009-08-20 02:35:53', NULL),
(2, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Aliquid sit doloribus totam est sit.', 'Culpa esse fuga et cumque repudiandae odit illum.', 'perferendis-in-molestiae-qui-autem', 'Ut sint sed ut voluptas inventore odit assumenda. Dolores est voluptatem nihil sed asperiores tenetur qui. Maxime sed sed laudantium perspiciatis minus cumque asperiores est. Vitae quae et et commodi animi consequatur qui.\n\nOmnis sunt esse consectetur et iste aut. Id doloremque vitae id. Inventore quos placeat vel minus quasi consequatur praesentium fuga. Incidunt est est quisquam voluptatem unde ut quos.\n\nConsequuntur esse eum autem sed. Ratione officiis at culpa consectetur et.\n\nOccaecati nostrum possimus quos eaque molestiae. Voluptatem in exercitationem recusandae eveniet repellat. Sunt earum porro doloremque.\n\nOmnis dignissimos expedita doloribus officia molestiae ut. Excepturi deserunt error impedit commodi consequatur. Nostrum possimus et exercitationem impedit tempore id accusamus. Eos illo totam odit corrupti ipsam.\n\nPraesentium quo sit magni est sint quis ea. Autem et voluptatem et ullam voluptate modi quia ullam. Rerum ab aut voluptas ipsum quo. In minima sunt voluptatem qui corrupti.\n\nRepudiandae dicta et excepturi repudiandae libero ut suscipit. Eaque nesciunt eveniet velit officiis. Doloribus quo et nemo eveniet asperiores provident.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '2013-10-18 09:30:42', NULL),
(3, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Voluptatibus in aut provident suscipit in sunt.', 'Quia consequatur unde autem nemo veniam et error.', 'eveniet-sit-quia-qui-repudiandae-dolor-laudantium', 'Veniam maiores dolorum illo. Est aliquid quidem nesciunt voluptas itaque quis omnis. Pariatur tenetur omnis nesciunt. Repellat sequi sequi numquam nihil.\n\nVoluptatum officia veritatis officia temporibus est ipsam. Ut culpa earum non itaque provident ea qui. Sed at maiores quo. Voluptatem qui sed placeat similique.\n\nAccusantium qui tempore magnam omnis. Eos eum commodi dolorem illum ut id. Saepe quisquam aut porro voluptatem culpa quo repellendus. Voluptas eius incidunt iure ducimus sed eos. Nam ipsam et et repellat dolorem laudantium.\n\nUt cum veniam eum unde corrupti deserunt. Quae doloremque iure aut voluptatem impedit illo. Excepturi vel fugiat aut necessitatibus enim ipsa. Tenetur cupiditate eum cum delectus architecto ullam.\n\nDeleniti est aut esse quisquam in. Fuga dolore beatae repellat accusamus eum quidem vel. Quis aut repellat voluptatem rerum at accusamus repellendus sit. Ab optio autem enim ullam. Minima aut quis similique rem ut ipsam.\n\nMinima animi ut a debitis eaque aut quo. Qui omnis aspernatur velit doloribus. Aspernatur expedita aperiam dignissimos est qui autem eligendi est.\n\nEnim qui quis molestiae ut. Laborum repellat ut et alias reprehenderit eveniet occaecati qui. Similique labore pariatur officiis aut ut. Sit placeat quaerat corporis illo.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '2004-06-28 03:32:41', NULL),
(4, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Eum laborum expedita eos sapiente.', 'Nesciunt dolorem consectetur est voluptas assumenda nihil.', 'sunt-omnis-qui-perferendis-ratione-ipsum-perferendis-ut', 'Dolore quis exercitationem nostrum officiis aut harum alias. A nisi sed eligendi delectus et quis animi. Ut ut ipsum maxime consequatur eos delectus nam. Debitis nobis accusantium cum molestiae qui sed adipisci.\n\nA quaerat magni quisquam veritatis doloribus aperiam culpa. Sed necessitatibus voluptate magni totam. Et vel sed magnam odio. Sint eum enim quaerat commodi.\n\nConsectetur blanditiis cum ut beatae. Sit et quia consequatur rerum deserunt.\n\nEx deserunt in sunt suscipit velit. Alias eos velit rerum sint dolorem. Voluptates eveniet ullam et quo. Ratione est soluta quis pariatur.\n\nIure ut ullam tenetur vero non. Nam laborum eos consequuntur temporibus. Porro omnis nulla dolor facilis commodi cum. Excepturi placeat qui voluptatum molestias.\n\nQuo enim omnis placeat in molestias qui praesentium. Veritatis laudantium voluptas voluptatem officia qui dolorem esse rerum. Accusamus dolore nemo quisquam nostrum ab veritatis.\n\nRepellat aut molestiae alias fugiat eligendi maiores adipisci. Nihil aut quas dolorum. Expedita provident voluptatem repudiandae fugit quisquam iure.\n\nDolor repellat dolorem blanditiis sint. Iusto necessitatibus aliquam nihil veniam accusamus id voluptatem. Optio voluptatem quos et quod voluptatem et.\n\nNostrum vitae corporis quisquam blanditiis consequatur aut molestias. Et architecto inventore velit eum qui accusantium aut.\n\nAt voluptatem voluptate commodi sint consectetur qui. Error dolores corrupti a pariatur aut tempore beatae. Aut est possimus molestiae unde. Molestiae adipisci libero dolore alias.\n\nDolores in magnam voluptatibus debitis velit quo. Suscipit ut ullam ducimus dolorem minima eaque. Sunt a non consequatur. Ab est aut iure iure.\n\nEum aliquam quia sunt aperiam quas porro. Voluptatem et velit ullam reprehenderit quasi quasi quidem. Dolor minima ipsam perspiciatis neque nemo mollitia.\n\nFuga excepturi voluptatem quaerat explicabo ex qui iste. Explicabo ratione exercitationem voluptatem. Harum consequatur fugiat incidunt asperiores non et voluptatum esse. Non a est dignissimos non porro natus necessitatibus.\n\nLabore est quam eaque ad. Molestiae nihil molestiae non esse excepturi iste ad. Autem et veniam neque sunt aspernatur odio.\n\nNeque atque vitae quisquam enim quia impedit dolore. Aut voluptates consequuntur non excepturi incidunt. Quos quia quo ut. Eaque incidunt in sunt.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '2004-09-12 23:25:33', NULL),
(5, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Quas id expedita dolorem voluptas voluptas.', 'Optio qui molestiae commodi dolores ut ratione.', 'atque-quibusdam-minus-fugiat-est-et', 'Eaque sit voluptatem doloribus recusandae. Velit totam placeat quas reprehenderit. Ratione expedita et soluta dolores incidunt dolor. Architecto animi itaque culpa vero quo.\n\nEa quibusdam iure eos ratione omnis. Odio doloribus eum iure numquam. Sint dolorum libero eum et aut quae.\n\nFuga minima asperiores sit distinctio sapiente molestiae reiciendis consequatur. Omnis ratione aut in sunt ad autem qui. Tempora saepe aut sunt eum.\n\nEt maiores ut quia fugit maiores perferendis iste. Voluptas iure vel sint illo culpa sint. Deleniti aut repudiandae quia qui qui.\n\nAut et quia qui velit. Non qui tempore tenetur. Quasi minima sint impedit voluptas impedit dicta. Consequatur totam excepturi aut assumenda vitae dolorem ratione inventore.\n\nConsectetur aut mollitia quos sit officiis cumque. Perspiciatis nam rerum maiores asperiores. Autem ipsa sapiente quo qui.\n\nSoluta minima officiis cum libero voluptates minus qui magni. Error et voluptas enim officiis. Architecto dolorum quia quod aliquam nobis. Aut veniam aut sit nam consequatur ut neque.\n\nLaudantium autem ratione et voluptates. Nesciunt reprehenderit est autem commodi. Culpa qui unde veritatis perspiciatis mollitia. Nihil magni nemo sed sunt doloremque in. Molestias praesentium tempore officiis omnis maxime.\n\nDolores velit animi cupiditate odit maiores soluta. Iure numquam amet neque. Fuga dolores ex a maiores voluptatem maxime earum id.\n\nDelectus velit sequi ut. Ut et possimus ut quisquam. Similique beatae maxime iste in qui commodi magni. Deleniti libero est quam nobis commodi aliquam officia.\n\nRatione deserunt ipsum illo doloribus sed. Quasi quidem illum placeat perspiciatis aut consequatur. Quaerat ut qui adipisci dolorem id et dolor tempora.\n\nAlias nulla alias non eum. Consequatur aspernatur harum repellendus vel. Et pariatur eum inventore qui et voluptatem commodi.\n\nFacere suscipit et aut similique. Iure aut provident et molestias quidem voluptatem ipsam. In velit ipsa aspernatur pariatur inventore.\n\nVelit aliquid nihil temporibus aliquam accusantium omnis rerum. Fugit aut libero nemo vel id magni aperiam. Dolore et atque esse omnis voluptate atque sunt.\n\nDolorum sed atque sed. Harum voluptatem minima sed quibusdam consequatur saepe. Facilis qui rerum quia quibusdam et.\n\nUt ipsa quas qui praesentium voluptas. Omnis eos voluptatem non. Sequi eos ad odit iste impedit eum. Totam perferendis inventore repellendus impedit corporis.\n\nSit iste perspiciatis minima. Illum commodi a expedita sed. Eos dicta molestiae similique fugit. Ut quasi est natus eveniet earum.\n\nIn qui porro et veritatis aspernatur consequuntur ut. Saepe distinctio delectus quia eum dolor aut explicabo. Consequatur corrupti veniam eum ut eaque tenetur.\n\nReiciendis dolor magni sint recusandae qui. Eos qui cupiditate impedit sunt incidunt est aut. Est praesentium quidem ut nihil et.\n\nQuia et ducimus distinctio velit. At aliquam quos dolorem minima. Et soluta necessitatibus molestias debitis dolor eius nemo. Nulla porro rerum sit commodi inventore.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1995-09-21 13:55:00', NULL),
(6, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Est illo dolor vel ut.', 'Voluptatem odit repellendus natus numquam qui est.', 'voluptatem-voluptatem-veritatis-autem-sapiente-aperiam-nostrum', 'Ab ut enim saepe maxime tempora culpa eligendi. Laudantium ab nobis dolorem nulla nulla quos consequuntur. Id accusantium eligendi in natus. Ipsa voluptatum itaque sed dolore vel aut.\n\nDoloribus laudantium expedita inventore iste. Eum qui quas laboriosam est. Sint esse qui distinctio iure. Eos ut adipisci voluptatum molestias quo repellendus.\n\nDoloremque provident necessitatibus error amet autem molestiae. Iusto porro ullam reiciendis qui magni autem. Amet velit beatae blanditiis vel magni dolorum. Facilis quas repellat inventore incidunt.\n\nInventore sunt quis voluptatum ipsum. Eius debitis est blanditiis ut alias ut et amet. Vero velit voluptatum sed eius. Error autem corrupti porro nihil.\n\nMaiores voluptates est similique officia debitis nemo repellendus. Officia placeat et vel. Nisi in vel unde explicabo quo. Quis accusamus repellat et eos ut earum.\n\nQuas dolore facilis ipsum corrupti. Non et enim quas dolorum veritatis enim voluptas. Quibusdam labore adipisci at aperiam esse et necessitatibus. Nihil porro consequatur ea dicta qui.\n\nConsequatur ut rerum neque praesentium et nam. Dolorem sapiente nisi dolorem. Veniam id quia sed reiciendis quaerat quis eos expedita. Ullam aut saepe soluta veniam vel voluptatem in temporibus.\n\nNon vel incidunt earum quisquam et fugiat. Corporis architecto quibusdam ratione suscipit corporis. Esse ullam magni maxime dolores quasi debitis.\n\nAut et quidem occaecati aut vel culpa numquam. Laborum itaque omnis dolorum beatae voluptatem voluptas deleniti. Placeat ea voluptatibus molestiae enim quia aut incidunt. Sequi sint sunt omnis quod alias.\n\nAut quae repellat et consequatur. Et iusto repellendus consequatur vel.\n\nEveniet et dolores et aut dolores ut consectetur necessitatibus. Ut est dicta fugiat voluptatem qui quasi id. Eligendi ducimus dignissimos recusandae asperiores. Dolore et sed in quas praesentium tenetur consequuntur.\n\nMinus quibusdam qui deleniti quibusdam. Voluptatem corporis quos nesciunt rerum sunt sit voluptatem. Id eum temporibus hic nihil ab dolor. Eaque magni qui et veritatis in earum velit.\n\nSapiente voluptatem provident neque. Error necessitatibus fugiat fuga doloribus aliquam ipsum. Sapiente qui sed dolorum nostrum. Esse ad voluptatem sint labore.\n\nOmnis molestiae mollitia ad veniam eaque. Porro ut delectus expedita doloremque nisi. Illo adipisci expedita perspiciatis corrupti cumque. Aut quia aspernatur ab vel est repudiandae incidunt.\n\nDeserunt aspernatur labore maiores modi. Doloremque et quod iste ut. Quia quia maxime unde et consequuntur et ipsam. Incidunt sequi ut dolore possimus maiores provident. Et eaque alias quidem eum et aperiam ex.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '2012-10-04 03:13:44', NULL),
(7, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Nemo quia aperiam fugiat aut sit.', 'Ut ducimus voluptas sint sit impedit nemo et facere voluptatem vero omnis.', 'dolorum-nihil-quidem-omnis-numquam', 'Amet voluptatibus possimus officiis. Aut suscipit dolor culpa illum tempore saepe sequi laboriosam. Sit qui vitae enim voluptas et dolorem.\n\nPariatur in qui quis laudantium quos ut. Vel magnam hic sequi magnam hic a. Dolores totam esse eos cum commodi qui. Voluptas dolores deleniti aperiam est.\n\nA pariatur repellendus autem. Incidunt voluptas ducimus recusandae saepe ut quos sint. Temporibus iusto et enim itaque accusamus.\n\nEt vitae doloremque ipsam aut dolores. Eaque ipsa soluta iste corporis voluptas voluptatum. Sit quas beatae libero nulla odit ipsa. Id repellendus quae quae laudantium corporis labore.\n\nRecusandae tempora iste est exercitationem minima qui et. Temporibus consequatur assumenda necessitatibus sed nisi ex.\n\nDolorem quasi omnis harum voluptas debitis. Ducimus ut sunt nostrum repudiandae commodi voluptatem maxime. Provident dolorum minus laudantium aut voluptas ut omnis. Deleniti autem ut est. Et dolore et est perferendis dolores sunt.\n\nIncidunt deleniti et id est et et. Consectetur quo dolorem impedit. Perferendis quasi est asperiores ad id. Neque perspiciatis quod hic odio suscipit. Et voluptatem provident qui sapiente laudantium.\n\nDolorum sapiente nisi harum modi cupiditate consequatur asperiores. Possimus consectetur soluta nam illo dicta consequatur repellat. Eius minima nobis natus. Autem possimus debitis ad cumque.\n\nVelit molestiae similique occaecati tenetur similique voluptatem aliquid mollitia. Ut illo et ducimus eum et eum. Ut pariatur molestiae placeat quod. Neque aut dolorum praesentium odio iusto rem. Atque minus in corrupti in.\n\nQuidem provident ab odit. Similique enim inventore facilis veniam eligendi. Temporibus quas velit animi ipsum neque. Natus ab animi dolores accusantium. Tempora in aliquid optio et qui.\n\nNatus et expedita voluptatibus. Voluptas rerum laboriosam quas eligendi nesciunt sit aut. Quo velit fugiat qui saepe enim eum autem.\n\nUt expedita ea voluptatum blanditiis iure ut deleniti dicta. Laboriosam fuga dolor quae explicabo. Est explicabo neque voluptates suscipit.\n\nUt ex sit dolor neque aut autem quae. Dolore ea eos maxime ducimus tempora. Provident sint quia et ipsam quidem laudantium enim. Rerum suscipit maiores neque quo ut quibusdam rerum.\n\nLaborum rerum dolorem praesentium odio accusamus. Quod sint vero est voluptate magni et. Magnam praesentium voluptatem voluptatem et sit. Architecto asperiores iusto et.\n\nSit facere consequuntur voluptatibus laudantium eum expedita sunt. Earum id facilis autem. Nam enim officiis id natus eos.\n\nQuod est quisquam quia illum et. Et vitae nihil sed ut voluptas nostrum ut. In fugiat quasi quas eveniet non magni rerum.\n\nOfficia tenetur ipsam exercitationem culpa voluptas libero. Voluptatibus cupiditate perferendis aut cum. Quidem dolores ea reprehenderit sint quod provident. Minus aspernatur aut omnis itaque voluptate sint. Quia provident quo expedita quia.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '2005-06-17 06:58:55', NULL),
(8, 5, 1, 'upload/201704/25/201704250929411769.jpg', 'Cum explicabo ipsam itaque id.', 'Dicta deserunt quis ea aperiam modi nemo earum.', 'sit-et-accusantium-nulla-dolorem-quo-ipsum', 'Qui saepe tempore molestiae et. Repellat ut saepe quaerat eos et est. Voluptatem perspiciatis velit accusamus maiores quia sit.\n\nDucimus quia sed quae tenetur. Ipsam iure quibusdam neque deserunt in tempora nihil veritatis. Asperiores quia recusandae culpa qui facilis omnis.\n\nRepellendus dolores laborum corrupti dolores. Unde explicabo est qui ea laudantium. Ut illo quos est sit sit eos.\n\nIn sint occaecati sapiente quisquam rerum iusto. Est vel dolorem ratione. Est consequatur veniam recusandae. Vel qui pariatur odio aut voluptatem et dolore.\n\nMolestias reprehenderit enim cumque eum veritatis sit. Non ea quia unde adipisci. Aut quibusdam quaerat facere voluptates minus adipisci sunt. Odit aut harum aperiam nihil rem.\n\nVeritatis consequuntur tenetur laudantium ratione. Dolor sint temporibus a et aut tempore. Quaerat voluptates ullam quia voluptate et sed. Dolore non distinctio voluptatem est. Consectetur est et voluptas molestiae ut qui voluptatem.\n\nSunt fugiat nam accusantium ut corrupti molestiae. Unde consequatur quos atque omnis est nemo. Dolorum laboriosam molestiae aliquam omnis. Assumenda suscipit rem est atque.\n\nQuia ea ea sit molestias. Consequatur dolores quia qui perferendis aut assumenda est. Est cum quaerat quia tempora quibusdam. Ipsa a totam aut necessitatibus est commodi. Ipsum voluptatum consequatur aut ut est.\n\nVoluptatem dolor nulla et reiciendis ut aut. Fuga quidem vel voluptatem possimus ipsa. Aut quia quibusdam et eos.\n\nAmet repellat autem ratione sit eos nisi veniam. Rem in corrupti minus ducimus ut culpa in. Eum id inventore soluta beatae itaque. Autem modi eaque qui esse aut et reiciendis.\n\nQuaerat facere non id nemo et aliquid numquam occaecati. Enim accusamus voluptatem architecto ex magni et fuga enim. Rerum maiores ab voluptas ipsum eveniet sed.\n\nLibero sint fugit hic possimus. Natus magnam ducimus molestias. Quia commodi officia fugit modi dignissimos unde.\n\nVoluptatem itaque vel nihil rerum voluptas. Porro sequi illum odio repellendus voluptatem itaque ipsam. Recusandae laboriosam recusandae debitis ea.\n\nEligendi vitae a quo fugiat. Doloremque et aut ab culpa aut sit. Quis id neque assumenda nihil perspiciatis fuga nobis.\n\nEnim deserunt illo et id optio eligendi consectetur. Modi aperiam doloremque quia eos nostrum et.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1995-03-24 14:25:11', NULL),
(9, 5, 1, 'upload/201704/25/201704250929411769.jpg', 'Ut vel omnis qui facere perferendis animi.', 'Nobis ea quibusdam rerum itaque inventore sed placeat unde nihil nisi et minima.', 'qui-at-perspiciatis-deleniti', 'Neque aut blanditiis quis reprehenderit. Eveniet beatae et corrupti placeat nostrum. Omnis necessitatibus nobis maiores qui consequatur vitae.\n\nFacilis excepturi nihil doloribus velit necessitatibus ullam consequuntur. Possimus rem ad voluptatem ullam. Ipsam eligendi inventore perspiciatis voluptatem omnis. Saepe blanditiis quos et voluptate et voluptatibus magni.\n\nCumque blanditiis quas et consequuntur. Dolore natus at temporibus voluptatem beatae. Vel aut repudiandae nisi molestiae qui officia. Quo consequatur ab numquam ipsa sunt cupiditate autem.\n\nDelectus ut impedit aut magni. Quia qui incidunt voluptatem non est aut architecto sit. Sed ipsam aliquam debitis enim quis fuga ullam. Laboriosam quod maiores perferendis quis ab.\n\nAtque magni reprehenderit esse vero sint. Nihil non vero maiores voluptatem nostrum est error officia. Reprehenderit adipisci dolores molestias. Et qui id sed.\n\nVoluptatum laudantium et labore aut et. Nihil vitae et qui pariatur veniam ducimus at. Ad vel ratione in aut dolores voluptas et totam.\n\nNeque tenetur odit exercitationem rem excepturi. Sunt saepe nihil cumque. Ab minima explicabo qui neque delectus.\n\nVoluptatem qui dolore suscipit id sunt doloribus id. Necessitatibus nihil eius enim ut. Totam quibusdam nesciunt repellat libero dolores. Et voluptatem et itaque veniam.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1992-02-22 23:32:31', NULL),
(10, 4, 1, 'upload/201704/25/201704250929411769.jpg', 'In quia voluptas labore sunt.', 'Numquam eveniet voluptas labore necessitatibus voluptas et et aut magni sed voluptate repellat explicabo porro quam quos ut sunt.', 'aliquid-dignissimos-quas-ea-nisi-autem-neque-amet', 'Cupiditate ut omnis molestias facilis numquam. Perspiciatis inventore laborum sed ut est quia. Voluptatem aut fugiat et. Maiores ut ea delectus quam soluta consequatur esse. Et vitae dolores molestiae eum corporis.\n\nEt necessitatibus officia molestiae velit deserunt quae. Aut quia culpa non ducimus totam. Pariatur rem veritatis aliquid magni maxime eius.\n\nCumque a odio eligendi nihil. Ex unde exercitationem repudiandae voluptatem animi. Debitis recusandae error optio delectus earum. Minus expedita dolorum sequi et quae sequi deleniti.\n\nDolorum illo officiis fugit animi rerum quis et. Minus aspernatur velit eveniet ipsa accusamus dolores labore. Dignissimos non voluptas autem sed nam distinctio. Culpa qui repudiandae corrupti. Ea itaque aspernatur soluta odit ad corrupti libero.\n\nVoluptates omnis ratione dolore sunt temporibus necessitatibus. Sunt quis vero molestias amet qui voluptatibus. Dolores delectus impedit ut consequatur. Vitae quasi dolores recusandae perferendis nesciunt.\n\nOfficia aperiam enim cumque est aut eos cumque. Consequuntur deleniti possimus minima repellendus eos. Error et officiis voluptatum ut eveniet facere. Ullam cumque officia cum et iste dignissimos.\n\nEst voluptatem illum dicta rerum delectus laudantium voluptatem. Aliquid quia deleniti repellat fugit ipsam dolor. Vel corrupti nemo enim.\n\nIpsam reprehenderit iure modi. Dolorem enim porro velit sunt saepe illo. Quis fugit accusantium sequi ducimus nobis accusantium. Velit sequi atque assumenda adipisci et ipsum commodi quia.\n\nIn autem dignissimos id ut et. Suscipit necessitatibus exercitationem ut culpa. Esse et officiis officiis suscipit recusandae.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1998-08-14 12:58:47', NULL),
(11, 4, 1, 'upload/201704/25/201704250929411769.jpg', 'Modi aspernatur enim odit facilis eos exercitationem.', 'Fugit aut voluptatem recusandae vel quia et id aspernatur sit.', 'voluptate-et-rerum-architecto-commodi-omnis-delectus', 'Eaque aut sint voluptatem non at. Sunt quo alias sint adipisci autem in animi excepturi. Nisi praesentium repellat nostrum nesciunt.\n\nSed omnis voluptates qui vel reprehenderit nihil sit. Iusto rerum commodi mollitia aliquid quibusdam impedit numquam. Autem ut perspiciatis vitae sapiente necessitatibus ipsum. Quibusdam libero nemo dolores nihil dolorum. Rerum minima fuga quia ab minima.\n\nEst hic consectetur sunt exercitationem ut. Eos quae quis velit. Id doloremque aut occaecati iusto. Iure cupiditate voluptas quia iste.\n\nSed dolor et quibusdam. Error molestiae non ab neque qui quidem. Doloribus ab hic quas eum quas.\n\nEst eaque quaerat voluptatibus velit. Labore aut ipsum consequatur sunt recusandae quidem voluptatum. Enim enim quia rem.\n\nOmnis numquam cumque inventore explicabo animi quia possimus fugiat. Cumque voluptatem voluptatem est et quia. Est nemo omnis et iusto. Optio reprehenderit et necessitatibus cupiditate consequatur aut.\n\nQuam id voluptatem et nesciunt nobis. Quidem dolore sunt et pariatur assumenda minima. Ea iste possimus velit sit.\n\nMagnam facilis consectetur quia neque nobis blanditiis. Sed ut delectus consequuntur dolorem qui quisquam. Sit maxime est illum rerum.\n\nQuod quasi adipisci nam quas consequatur non. Sequi inventore non sequi magnam vero non culpa blanditiis.\n\nSequi et aliquid quibusdam officiis odit odit quibusdam enim. Quidem omnis fuga accusantium. Ducimus eius necessitatibus impedit et et quas enim. Facere quas iste voluptas. Vero ea fugiat officia eos consequatur.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1995-07-07 10:26:28', NULL),
(12, 4, 1, 'upload/201704/25/201704250929411769.jpg', 'Ipsam aliquid eos suscipit sit quam ut.', 'Earum voluptatem in qui omnis quod aut saepe ea omnis quia omnis nemo quis.', 'ipsa-et-consectetur-tempora', 'Tenetur nam voluptatibus minima. Quia facere non est dicta ex vel autem. Ab rerum officiis cupiditate sit voluptatibus. Quam perspiciatis dolorem ex quasi et non odio.\n\nRecusandae ut ratione aut in nostrum consequuntur. Veritatis dicta tempora adipisci et et culpa. Ab sit amet qui laboriosam. Fugiat esse qui eius.\n\nAut ullam a distinctio. Dolores et aut voluptas est quo quae et. Delectus dicta voluptas eos. Atque temporibus eveniet fugit ut.\n\nId fuga quasi maxime et totam quam. Eveniet consequatur non nemo sapiente voluptatem porro. Ad non modi officia repellat expedita sit. Dicta perferendis perspiciatis facere dignissimos recusandae.\n\nEt saepe tenetur qui. Non mollitia perferendis et rem blanditiis libero. Molestiae inventore veritatis vel quia aliquam hic sit. Cum maiores ab dignissimos ut.\n\nEaque non amet voluptas quia ipsam. Mollitia totam atque molestias necessitatibus. Quidem optio enim voluptatem sit sunt porro.\n\nIn optio et cupiditate aperiam. Voluptas distinctio aliquid officia voluptatem omnis est. Itaque tempore atque dicta explicabo repellat qui. Quia ullam et tempora id repellat nesciunt in aut. Et iste voluptatem qui non.\n\nAccusamus sunt eos aut aliquam eius aut. Repudiandae ipsum quibusdam quia vitae. Ipsum ducimus eligendi dolorum inventore.\n\nEt non quia impedit quo nobis eligendi quas. Aperiam rerum pariatur et consectetur mollitia quos. Aut velit enim distinctio.\n\nVoluptates enim magni odio iste perspiciatis. Est inventore qui neque fugit beatae reiciendis error. Est voluptas delectus inventore nam.\n\nDolorum architecto sunt quaerat magni dolor delectus. Minima pariatur aliquam aspernatur alias ex. Numquam sunt voluptatem aut perferendis quis. Eligendi fuga aspernatur debitis ut quo.\n\nUt animi rem est sint ratione vero aut. Vel et veritatis quia vero ullam. Quis quia reiciendis ipsa quasi ab qui dolorem.\n\nMinima vel rerum qui ex assumenda earum itaque. Corporis temporibus repellat velit corrupti rerum eligendi quis nihil. Amet laboriosam optio commodi deleniti. Ad cupiditate deserunt id rerum voluptatibus laudantium odit nisi.\n\nMagni magni autem recusandae nam alias aut sed aspernatur. Accusamus voluptas possimus voluptatibus nobis ut excepturi assumenda. Vero quis voluptatem voluptatem non eveniet sit accusamus consequatur. Itaque tenetur modi fuga numquam est esse.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1975-12-19 18:30:37', NULL),
(13, 4, 1, 'upload/201704/25/201704250929411769.jpg', 'Aut non adipisci amet fugiat labore.', 'Fugit vel quia sapiente nihil est cupiditate vel rerum provident ratione laudantium voluptas sit qui velit nihil.', 'autem-blanditiis-est-temporibus-reiciendis', 'Cum incidunt optio odit accusantium cupiditate. Ab ex praesentium voluptatem tenetur esse ea. Dolores ut eos eveniet. Ea earum sit amet ea.\n\nRerum aliquid omnis in autem facere. Rerum ea cupiditate doloribus harum eaque ab et. Quasi qui ipsam laboriosam.\n\nEaque in perspiciatis qui similique amet. Sed eos voluptatem voluptate voluptatem alias commodi qui. Nihil repudiandae tenetur voluptate vero id molestiae voluptatem. Ab et qui molestias dicta incidunt. Similique accusantium unde et optio soluta quos.\n\nArchitecto et et reprehenderit ab. Nesciunt voluptates qui quisquam et autem eos. Et temporibus inventore sint aut. Ipsa eos quas ducimus quas dicta dignissimos quidem accusamus.\n\nCulpa iste ipsum magni perferendis. Quisquam doloremque saepe aliquid vel sunt. Fugit mollitia sed reiciendis nulla velit fugit.\n\nBeatae ipsa non officia tempora. Omnis nulla unde odit porro modi. Magnam cupiditate ut optio tempora dolores earum magnam illum. Perspiciatis et vero quas labore.\n\nQuia exercitationem voluptatem debitis repudiandae unde alias. Sint dicta voluptatum in saepe.\n\nSunt quia autem odit numquam cupiditate. Corrupti quasi tempore sint consequuntur illum omnis modi. Doloremque iure ipsa rerum totam perspiciatis pariatur.\n\nQui quidem aut quia vitae consequatur est. Ratione voluptas sit esse est mollitia qui. Ut maiores temporibus non at reprehenderit quas et. Necessitatibus et assumenda architecto sed.\n\nMaxime rerum accusamus tempore et amet repudiandae excepturi sunt. Amet et quas corporis porro fugit. Corrupti qui velit eum voluptatum ut perspiciatis.\n\nFugit occaecati harum labore repudiandae eum qui magni libero. Dignissimos aut iusto alias voluptates voluptas provident quis enim. Dolorem adipisci et dolor inventore. Assumenda minus assumenda ut tempore qui itaque corrupti et.\n\nReiciendis itaque dolores culpa ipsum delectus. Nisi veritatis tempore magni qui.\n\nPerspiciatis sunt quia aut vel. Sed cupiditate quibusdam repellat in voluptas recusandae. Labore et rem quis odio dolores. Sit consectetur eum nemo ipsum similique quidem. Voluptatem at sunt placeat nobis in doloribus incidunt dignissimos.\n\nAtque aliquid perspiciatis aut perferendis architecto. Nostrum amet assumenda at velit voluptas. Aut vero et pariatur veritatis iusto. Totam quis optio ipsa voluptas ut.\n\nDelectus minus id et fugit sequi ut ab. Commodi et repellat rerum eum et sit. Iusto tempora qui cum fugiat. Voluptatem veritatis facilis provident.\n\nSint eius est sunt. Blanditiis maxime nostrum ut at iste nihil rerum. Non veniam dolor cupiditate qui excepturi nostrum minus quaerat. Quo nulla vitae exercitationem sint doloribus odit maiores.\n\nEt illum ipsam iure iusto explicabo soluta. Ut esse incidunt architecto quasi quas reiciendis sit. Sed cum nisi iusto in.\n\nVoluptas soluta similique qui eligendi numquam. Quod doloremque occaecati qui vero. Vel ut dolores ut sed consequatur eius. Pariatur iusto et et.\n\nVelit nobis exercitationem qui. Odit iure non ut est numquam consequatur. Perspiciatis eveniet aliquam deserunt nihil hic est. Illo dolorem eos temporibus voluptatum. Commodi dolores commodi voluptatum libero iusto.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '2011-05-14 01:31:52', NULL),
(14, 4, 1, 'upload/201704/25/201704250929411769.jpg', 'Dolor nulla aut minima occaecati hic aperiam aperiam.', 'Sapiente ut officia qui dolor aspernatur.', 'quas-totam-consectetur-magnam-atque', 'Et est minus earum quaerat ab sit molestiae. Et sint quod doloribus. Est et hic reprehenderit harum.\n\nSint similique qui in facere soluta aut. Delectus eius voluptatem repellat qui officiis. Ullam deleniti molestiae qui.\n\nUt voluptatum facere ratione reprehenderit quasi. Ut quaerat ut et neque. Dolores et est dolores aut ut est enim magnam.\n\nUt numquam eos ut natus. Autem dolorem dolore nihil asperiores vero. Sed velit ad cupiditate est.\n\nNesciunt placeat perspiciatis ducimus quia unde. Esse sint sed et porro ut. Eius ut eveniet ut iste maxime nihil magni. Non dolores velit ipsam incidunt ducimus quos maxime quaerat. Suscipit inventore aut voluptas consequatur animi sint.\n\nDolor dolore illo enim similique labore inventore. Est facere enim delectus perspiciatis voluptas. Minima velit ea molestiae ea. Voluptatum laudantium voluptas facere omnis cum.\n\nVel qui dolor facilis reprehenderit quibusdam exercitationem accusamus. Quis autem quas earum ut repellendus vero corrupti incidunt. Explicabo qui et illo omnis. Perferendis ipsa repudiandae est temporibus eligendi et quam. Nihil nisi nam voluptatem ipsam.\n\nFugit occaecati est possimus voluptatem fugiat accusamus. Vero esse est tenetur exercitationem vero. Consequatur omnis perspiciatis atque omnis corrupti consectetur.\n\nInventore architecto quo exercitationem ut. Cum aut eligendi architecto nihil nihil quas. Omnis eos aut atque qui nihil.\n\nVoluptates hic perferendis delectus. Quaerat culpa rem asperiores harum rerum velit. Et minima saepe non autem nisi. Ex voluptas laudantium est commodi nostrum.\n\nPlaceat molestiae cupiditate saepe esse eius eligendi. Eius nihil dolor sint nulla. Consequatur id optio facere iste iste maiores rerum.\n\nEum non et aut accusantium voluptatum autem enim assumenda. Sapiente perspiciatis nobis mollitia sunt recusandae qui hic. Quibusdam sint recusandae illo recusandae aperiam. Sapiente et qui nesciunt quis maiores consequatur.\n\nVero qui tenetur autem harum ut expedita. Architecto vel minima qui molestiae iusto rerum. Voluptas ipsum et eligendi error laudantium. Neque a provident est totam. Eveniet itaque numquam minus.\n\nAmet deserunt libero qui harum earum sit itaque. Commodi aut reprehenderit debitis sint sit sunt. Sed qui laudantium qui fugit aliquam voluptatem. Debitis rerum quis aut qui maiores.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1972-03-18 00:28:42', NULL),
(15, 4, 1, 'upload/201704/25/201704250929411769.jpg', 'Autem ullam sed labore nihil sit sit sit esse quasi.', 'Sit occaecati nobis reiciendis neque molestiae dolore sed.', 'harum-quod-unde-animi-perferendis-animi-itaque-qui', 'Reiciendis voluptas magnam ea vero laudantium aut aspernatur. Odio magni quo sed. Ullam rerum error hic. Eligendi et nemo eos.\n\nExpedita aut illum esse. Maxime atque architecto ipsam consequatur. Ut et eum voluptatem non. Molestiae magnam omnis pariatur voluptas perspiciatis ut.\n\nEt cupiditate saepe sequi odio occaecati neque. Vero fugit odit ratione aut.\n\nQuod debitis culpa perferendis voluptatem aspernatur facilis. Autem qui sapiente atque. Necessitatibus unde ut occaecati. Et nihil aliquid architecto asperiores perspiciatis ea. Nesciunt suscipit consequatur consequatur beatae sunt architecto recusandae.\n\nRerum asperiores rerum voluptas inventore velit in recusandae. Laboriosam ipsam aut maxime impedit. Et ut ut et eaque blanditiis. Impedit placeat aliquam delectus quaerat nisi.\n\nNon minima voluptatem dolor quia rem et. Quaerat ipsam quas voluptatum tempore molestias aut. Atque sit sunt non expedita quia. Quaerat in sed omnis nihil assumenda itaque minus et. Illum voluptas at voluptate sit distinctio perferendis.\n\nNon inventore et et earum alias. Maiores sit omnis optio.\n\nAut sapiente vel odit facilis. Qui ut hic voluptatum enim molestiae voluptatem quo nesciunt. Et eum voluptatem est ipsa quasi.\n\nNobis corrupti aut atque accusantium aliquid. Eum ullam rem et vero. Nesciunt molestiae eos veritatis qui officiis voluptas repellendus.\n\nOfficia animi unde ea voluptas et velit soluta. Veritatis autem occaecati maiores facere. Eligendi excepturi qui vel. Sed est quaerat nostrum veritatis.\n\nQuia nobis maiores voluptatem. Eveniet saepe harum sit soluta. Ratione et tempore eveniet aut. Autem aut repellat quas enim veritatis voluptatibus est.\n\nEveniet minima rerum vero iusto reiciendis unde. Cupiditate recusandae veritatis voluptate accusantium voluptatum. Voluptate ratione labore ullam labore quae.\n\nRepellendus aut ex omnis saepe ducimus architecto. Quod voluptatem suscipit pariatur assumenda molestiae. At vel ipsa quia nisi facere harum.\n\nAut amet ea vitae possimus ipsum ut. Dolorem tenetur consequatur vitae autem ab consequatur. Sint consequatur explicabo at deleniti voluptas rerum animi.\n\nAut vitae qui et fuga. Expedita est sequi ut. Et consequatur odit et voluptatem.\n\nImpedit laudantium neque et harum optio maiores aut. Optio eum temporibus ipsa omnis.\n\nVoluptate impedit aut voluptatem aut maxime. Ducimus at maxime adipisci.\n\nSuscipit porro nesciunt incidunt cumque totam soluta nobis. Repellendus deserunt rerum expedita at et aut. Eligendi omnis sit quaerat iure. Consequatur veritatis illo voluptatem architecto sint et.\n\nAliquam vitae sequi ut corporis enim. Enim accusantium aut nihil et consequatur. Rerum reprehenderit cupiditate architecto voluptates sint sit.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1999-07-18 00:39:32', NULL),
(16, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Nihil debitis incidunt voluptatem id iure atque nam.', 'Hic explicabo id maxime eum quis explicabo amet corrupti a et dolorem modi aut quod.', 'possimus-amet-at-itaque-placeat-et-et', 'Est non provident optio quia quos. Officiis qui sint hic odit sunt ut qui. Illo laudantium eos alias placeat aut nostrum eaque.\n\nOfficiis deserunt aut earum nulla. Sed voluptatem quibusdam nihil et repudiandae sint. Molestias eaque saepe sequi aperiam.\n\nQuia alias sit rerum quidem non sunt qui omnis. Hic quis id iste qui quia qui aliquid dolore. Qui numquam a est ut modi est. Et fugiat aliquam sit.\n\nMolestias quia aut vel quia dolorem nihil hic. Magnam enim et nostrum et et quae fuga quasi. Sed voluptas rem qui odio minima consectetur sed.\n\nQuam ut et nobis. Non ipsam quo deleniti eveniet earum in. Harum aperiam corrupti suscipit officia sit.\n\nPerspiciatis quas quis eos odit eum soluta. Incidunt quam modi aut modi laudantium. Commodi iusto facilis iste ullam id temporibus velit. At dolor quam quaerat et.\n\nEt eum doloremque modi ea. Dolorum illo numquam maiores ea et non. Nam laborum ut ea repudiandae qui amet nobis.\n\nSint optio quibusdam itaque velit. Itaque repudiandae quo eum doloremque sapiente cum. Qui eveniet ea sed eos dignissimos. Et sit aut molestiae ducimus.\n\nDeserunt consequuntur doloremque et eaque odit reiciendis ipsam. Dolorem nostrum repellendus amet et. Nihil pariatur praesentium non accusamus ut cumque. Qui nisi qui eum qui et omnis qui est.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1990-12-04 08:24:24', NULL),
(17, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Iure nam veniam ut officia corrupti est debitis rerum.', 'Id doloremque sapiente mollitia maxime nobis soluta corporis dicta aut.', 'placeat-sunt-repellat-distinctio-excepturi-dolor-quae', 'Quia repudiandae adipisci nobis et inventore earum rerum. Rem tempora reprehenderit corrupti occaecati nisi aperiam. Provident occaecati veniam nulla non. Aliquam atque alias corporis voluptatem consectetur unde.\n\nVoluptatem eveniet commodi odio nam temporibus perspiciatis. Enim maiores aspernatur consequatur voluptate. Accusantium velit provident et hic.\n\nAt quae quibusdam ad esse dolore ducimus. Odio non est rerum. Iusto voluptatem voluptas porro. Nesciunt fugiat labore asperiores soluta quia harum.\n\nTemporibus a dolorum vel omnis rerum voluptatum magnam. Ut omnis tempora non beatae mollitia rerum. Quasi dolorem animi molestiae id. Et officia molestias omnis voluptatem libero dignissimos.\n\nQuia dolore ut occaecati recusandae deleniti. Velit dignissimos in ipsum qui illum. Et deserunt illo et amet dolores rerum. Hic iure et aut consequatur neque.\n\nHic veniam fugit aliquid explicabo quia. Asperiores aut sed sed eos. Repellat omnis voluptas delectus aut perferendis tempore.\n\nDolores at magni excepturi. Velit eveniet qui enim alias. Non voluptas dolorum non est.\n\nBlanditiis aut numquam omnis odit iusto. Ut iure officiis ad accusamus. Velit et et dolorum ipsam omnis. Recusandae dignissimos sit nostrum aut.\n\nExercitationem nobis omnis magni voluptas nemo voluptatem. Nisi assumenda reiciendis ut distinctio debitis. Aut perspiciatis sed aspernatur quis quis.\n\nQuis molestiae hic voluptate laboriosam enim eos. Aut corrupti excepturi odit qui sunt eligendi.\n\nQuo consequatur ipsa et consectetur dolores quasi. Voluptas rerum enim et itaque eveniet. Unde sint deserunt dolores reprehenderit neque non iste reprehenderit.\n\nAccusantium hic voluptatum labore dolor. Ut magni repudiandae eos. Corporis voluptate itaque facere incidunt alias dolore laboriosam. Consequatur eum rerum maiores molestiae sunt iusto.\n\nPossimus rem sit quam veniam voluptatem sunt voluptas. Molestiae rem repudiandae enim voluptate. Est tempora vel quisquam voluptatem.\n\nEst fugit vero et quia. Esse cupiditate aperiam provident voluptas.\n\nAut rerum soluta omnis natus corrupti. Temporibus laboriosam error magnam at provident. Harum aut voluptatem amet mollitia. Nihil facilis aspernatur dolore sunt.\n\nBeatae rerum aut quisquam exercitationem. Magni quod quia sunt. Quos quis qui iure et dolores quaerat.\n\nQuas perferendis amet ut accusantium. Voluptatum a qui sed distinctio esse expedita. Non quis iste ut deserunt. Tempore in est voluptatem beatae.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1980-10-04 08:03:58', NULL),
(18, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Enim dolorem cumque nihil voluptatem voluptatem qui.', 'Quis sapiente sit dolor facere aliquam ducimus beatae excepturi assumenda qui minus cum eum.', 'quo-officia-libero-debitis-amet-sed', 'Est temporibus amet adipisci ex. Nesciunt magnam expedita esse sit voluptas architecto quisquam. Id ab numquam quisquam ab ut sit.\n\nNulla perspiciatis quos quod quia quo. Harum quisquam totam dolorum repellendus sed officiis repellendus.\n\nQuod suscipit quia non magni harum dolorum. Magnam molestiae iste eos consectetur aut iure fugit voluptatum. Quasi quaerat quia labore. Pariatur eos reprehenderit voluptatem blanditiis.\n\nEt harum reprehenderit reiciendis aut qui error voluptatem. Qui numquam est eum numquam qui. Ipsum aut asperiores minima qui.\n\nUt accusantium minima et soluta enim. Earum saepe id autem quidem. Voluptate molestias dolorum voluptatem.\n\nRepudiandae quia quae neque esse. Nulla deleniti dolore animi odit eos rem. Vel rerum quo voluptatem incidunt quia. Reiciendis laboriosam qui non corrupti beatae ut neque.\n\nUllam pariatur nobis sit libero qui. Sapiente veritatis et nesciunt soluta sed. Et repellat dolor ut nam sit tenetur tenetur.\n\nQui aut optio quas ullam voluptas aliquid qui. Totam culpa exercitationem est deserunt id ut. Est cum dolores quis eaque facere.\n\nIste molestias facilis occaecati ut maxime. Tempora maiores distinctio iste modi vero numquam. Deleniti nam rerum et eaque sed eum eos expedita. Et qui dolorem sit architecto commodi voluptatibus quis.\n\nAb excepturi non qui est minima voluptatem. Et quaerat sed et eos cum autem. Harum quo qui nihil. Aperiam quos sed hic earum eos accusamus dolorum.\n\nDoloremque quia possimus temporibus doloremque a in voluptatem. Est explicabo voluptatem et et at ducimus et. Cumque et quo sed blanditiis. Sit voluptas inventore commodi sequi.\n\nAsperiores architecto exercitationem architecto. Maiores qui eveniet sit voluptatem. Fugit rerum praesentium consequuntur et labore nulla dolores.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1984-12-02 09:27:34', NULL),
(19, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Iure laboriosam veniam sit deserunt omnis earum et quidem.', 'Qui ut aliquid quis eos.', 'aliquam-quia-soluta-ipsam-non-est-non', 'Ad natus aperiam iusto sunt et voluptatem. Consequatur eum unde expedita possimus. Quisquam inventore qui a aut eveniet iure cupiditate velit. Iure praesentium et voluptas nisi voluptatem facilis ex placeat.\n\nNulla dolorum autem illum minus in. Omnis nostrum commodi et soluta voluptatem et. Nesciunt unde earum maxime ut voluptatem.\n\nFacilis adipisci corrupti enim earum reiciendis. Est aut error voluptatem id non reprehenderit recusandae.\n\nUt harum tempore non sunt expedita. Ea ut et quod rerum sit velit quia.\n\nVitae consequatur ipsam odit nesciunt quod expedita. Asperiores consequatur sequi nulla. Libero distinctio laborum tenetur.\n\nInventore voluptates ullam sunt non ipsa. Numquam vero nisi ut velit sed. Voluptate aut explicabo tempora illum. At iusto consequatur labore est incidunt nulla et. Consequuntur quia et illo distinctio sit sunt voluptatem et.\n\nIllo dignissimos ea impedit eos repellendus laboriosam minus. Tenetur velit iusto omnis voluptatem. Molestiae consequatur fugiat dolore porro. Voluptatem illum est quia qui eveniet.\n\nQuae velit autem quam veniam. Quia esse quia non. Accusamus autem quod nostrum non consequatur. Omnis mollitia est ut cupiditate.\n\nVoluptatem quae nam distinctio magnam ullam et enim. Autem itaque molestiae deleniti. Et fuga molestias quia non ullam.\n\nEst quaerat eum illum animi est autem est. In quaerat quae optio voluptatem officia rem quod. Consequatur repellendus atque dolorem deserunt. Et consequatur odio rerum debitis alias enim.\n\nRerum quia non possimus quod sit ullam. Harum libero maxime voluptatem explicabo illo aut et. Omnis rerum recusandae quia ipsa. Repudiandae odio autem sit et ipsam qui.\n\nIn velit perferendis eos natus corrupti omnis assumenda. Consequatur aut est omnis nisi ipsum. Quaerat repellat temporibus consequuntur ullam consequatur modi aliquid.\n\nItaque voluptatem dolor qui atque minus iure. Sed et facere voluptates aperiam quod quia. Rerum qui nesciunt nihil recusandae magni sint eius.\n\nUt dignissimos aut sed sit praesentium nulla soluta. Eaque consequuntur dolor non rem dicta. Odio iste unde quisquam consequatur odit id magnam. Illum rerum molestiae ducimus nesciunt aut unde magni.\n\nExpedita fuga aut accusantium eaque qui. Qui aliquid aperiam tempore ut quasi rerum. Molestias excepturi sit facilis quia error similique omnis. Suscipit sit iusto aut aperiam voluptatem ea sequi. Sint quidem aut consequatur non aut magni alias.\n\nPariatur omnis rem laboriosam expedita et dolor. Officia enim ut quia sint possimus ea suscipit voluptatum. Assumenda pariatur et voluptates reprehenderit a. Quasi qui non dolorem eaque.\n\nQuas dolor ut molestias distinctio illo. Eius quia eaque rerum dolor odit. Non vitae dolores molestiae debitis corrupti dolorem id. Et ipsum reiciendis soluta aperiam quam inventore.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1989-12-20 02:13:29', NULL),
(20, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Cumque reiciendis eum rerum at dolor et.', 'Magni et laboriosam laboriosam ex sint sint suscipit iste pariatur porro a doloremque nihil corrupti ducimus.', 'sunt-qui-harum-dignissimos-officiis', 'Corporis voluptate corrupti id quis qui. Autem at magni sequi molestiae. Nihil fuga qui quia fugiat et.\n\nConsequatur ut quia quos vel atque sunt. Harum assumenda ex officiis aut aliquid beatae qui. Esse amet ex quod. Et alias consectetur id qui blanditiis adipisci voluptatem.\n\nEveniet consectetur est incidunt dolorum. Ab magni non a fuga laudantium velit laborum ullam. Et voluptas officia quia saepe. Est porro maiores quis animi ratione.\n\nIllum saepe voluptatem officiis nulla eveniet non. Et velit aliquid expedita ab. Sed unde et libero consequatur.\n\nA voluptatem enim officia nam rerum ipsam. Nemo sit veniam et quia. Repellendus iure est ea iusto.\n\nEst error aut amet id ut. Nulla corporis repellat ducimus sunt exercitationem consequatur voluptas. Numquam error molestias placeat vel.\n\nEst sit minima eos recusandae. Inventore voluptas temporibus officia quo eum numquam. Maxime aut nihil dignissimos natus magnam eos.\n\nAut sapiente natus eos atque corrupti. Natus et quibusdam quisquam neque quod qui et. Nam adipisci officiis voluptatem.\n\nNon porro dolores et possimus accusamus minima enim earum. Vero nesciunt illo sint. Sapiente corrupti sed magni rerum velit quod.\n\nExcepturi tempora incidunt voluptate aliquam a. Corporis ab laborum consequatur vel reiciendis. Occaecati quod quis at debitis dolor deserunt. Velit eveniet voluptatem quisquam praesentium.\n\nDolorum exercitationem voluptas id. Distinctio saepe enim ut nulla. Aut ut quia voluptate recusandae commodi quia saepe.\n\nLibero velit harum accusantium ipsam fugit soluta ratione. Quo delectus possimus quas qui dolores itaque. Voluptatum minus sed sunt harum voluptates numquam quos.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1996-12-20 18:54:17', NULL);
INSERT INTO `posts` (`id`, `category_id`, `menu_id`, `image`, `title`, `description`, `slug`, `content`, `status`, `view_count`, `created_at`, `updated_at`, `published_at`, `deleted_at`) VALUES
(21, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Ipsa eos unde culpa accusamus consectetur ut magnam alias vel aut.', 'Earum odit dolore quae facere deserunt voluptate quia voluptatem sit earum voluptates.', 'fuga-tempore-deserunt-quia-aut-maiores-voluptatum', 'Provident et atque excepturi accusantium ut qui inventore est. Vitae quis nulla ipsum nihil porro. Cumque sed quaerat veniam mollitia. Sit aut iure magnam recusandae expedita. Voluptatem ut repellat consequatur rerum sit ducimus.\n\nOfficia aliquam quibusdam facere. Nisi quia rerum et inventore deserunt. Et dolore rem dolor perferendis.\n\nEst sequi optio repellat ut atque consectetur fugiat nihil. Accusantium dolor esse eveniet enim corporis veritatis. Nisi fugiat qui rerum mollitia.\n\nVelit voluptate quia vel dolor totam. Repudiandae sit soluta praesentium natus magnam temporibus. Officia delectus sed iusto quo.\n\nEum modi dolore eaque rerum ab voluptates expedita. Magnam dolore consequuntur sed cupiditate aliquid quod. Eaque vitae excepturi incidunt recusandae corporis alias.\n\nPossimus impedit delectus nemo maxime reprehenderit et quos. Repellendus qui ad illum.\n\nOmnis fuga ea repudiandae quia eius voluptas. At voluptatem sunt possimus aperiam molestias alias ut est. Facilis qui aut ratione voluptas. Ex beatae sint porro necessitatibus adipisci et reiciendis.\n\nUt mollitia et quas. Beatae natus facilis sit sapiente. At et eius eius qui a. Asperiores id ratione dolorem. Reprehenderit et dolorum rem molestias commodi.\n\nQuasi dolor qui id quo. Aut ipsa tempore accusantium reprehenderit blanditiis nulla. Cum nobis et voluptatem repudiandae magnam.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '2015-02-16 20:01:19', NULL),
(22, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Ea quod qui facilis neque aspernatur repudiandae laboriosam asperiores delectus.', 'Quia odio cum suscipit reiciendis officiis sed nihil blanditiis similique consequatur omnis harum.', 'eum-repellat-dolor-quia-sit-esse-unde-quas', 'Architecto magni et autem quo quasi autem. Debitis maxime odio quas corporis tenetur commodi doloremque. Assumenda nemo occaecati aliquid minus rerum iste. Esse repudiandae in est. Perferendis et voluptates quae nobis perspiciatis.\n\nQuia minus ut et. Quo et eligendi rerum nihil. Aut ad est laboriosam blanditiis. Est nostrum maiores quis rerum voluptates. Officia animi esse sequi eaque nemo minima.\n\nTenetur eveniet repellendus ratione ipsa et. Sunt eligendi ut quis. Eveniet aut ut error sit.\n\nArchitecto placeat eos aperiam ullam voluptas consequatur. Quidem ipsa totam nostrum sint quaerat qui. Similique cumque dicta praesentium ut a occaecati.\n\nTemporibus at ea et consequatur. Dolorum molestiae est explicabo dignissimos nostrum dicta. Aut a rerum eos qui reprehenderit minus cupiditate.\n\nQuam molestias praesentium eaque. Distinctio non repellat culpa modi. Voluptates quo eum rerum porro id quod quia.\n\nVel mollitia est minima est iusto. Quia sit et ratione fuga dolorem libero. Voluptate modi numquam corporis nisi facilis ut reiciendis.\n\nSint rerum occaecati error sint. Natus dignissimos ut ratione. Velit totam et dolores consequuntur. Eligendi recusandae dolore nihil eos.\n\nSunt ducimus et vitae tempore. Quia sunt aspernatur veritatis. Facere sint maxime officia aspernatur dolores occaecati dolorem illo. Sint quas est tenetur vero earum repudiandae tenetur.\n\nDolorem ex ut adipisci. Dolores molestiae mollitia voluptates rerum delectus consequatur enim aperiam. Vero est voluptatem non.\n\nOdio consectetur qui quo qui ut optio quia. Blanditiis modi quam ab. Ipsum culpa officia unde modi blanditiis. Non nam qui quasi sit deserunt.\n\nOdio unde quam quam. Ex rem voluptas neque praesentium doloremque. Velit est saepe aut ut numquam aspernatur.\n\nImpedit vel voluptatem autem consequuntur. Doloribus magnam provident non et dolor. Aliquam et quo officiis mollitia in libero molestias.\n\nLabore ab voluptas quibusdam. Quas earum excepturi ipsa. Minima eveniet praesentium quia necessitatibus nihil.\n\nTemporibus est quos voluptates a. Sit quo esse explicabo tempora. Autem et quia dolores mollitia. Porro et officiis et repudiandae voluptatibus optio facilis.\n\nNihil minus consequatur dolorum tempora quos. Culpa enim itaque quia repellendus. Illo ipsa deleniti deleniti illum repudiandae.\n\nSit quia et nihil. Ut sint repudiandae enim sed aperiam. Eveniet officiis in consequatur et. Hic commodi commodi odio.\n\nItaque voluptatum nulla fugit quis dolores quaerat id assumenda. Ab quasi est amet dignissimos et enim rem. Adipisci reiciendis consequuntur et.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1973-06-25 09:56:34', NULL),
(23, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Est sed sed corrupti molestiae ipsum adipisci.', 'Maiores dolorem asperiores soluta debitis voluptates.', 'voluptate-qui-odit-suscipit-iure-ad-dolorum', 'Aspernatur voluptatem corporis qui vitae nobis eum sunt porro. Et consectetur dolor qui voluptatem et. Ullam at quasi in et rerum sequi voluptatem sit. Sunt laudantium nemo quia fuga et atque accusantium.\n\nAdipisci quidem voluptatem id soluta quod odio doloremque esse. Voluptatem et occaecati dolores quae saepe ratione qui autem. Ut consequatur id adipisci perspiciatis. Eum voluptatem autem sunt.\n\nDelectus quisquam qui ad beatae ea aut. Aliquid aliquam rerum rem omnis. Aut sed alias tempore voluptas qui non ut. Optio voluptas eos tenetur amet aliquid quas qui.\n\nAmet aut temporibus sint exercitationem. Dolor iusto fugit voluptatem est. Repellendus quibusdam debitis rerum.\n\nCorrupti qui deleniti repellat at voluptates corporis laborum. Commodi provident expedita maiores aut saepe. Et id quas sed earum id libero. Itaque laborum ab quas nostrum.\n\nQuidem reiciendis molestiae sint. Pariatur molestiae ex reprehenderit. Quia fugit soluta cum est voluptatibus quo.\n\nQuaerat nobis iste ullam vel ea. Delectus nulla repellat mollitia veniam est ut consectetur. Et sequi nisi dolorum. Architecto pariatur placeat molestiae tempore voluptatem quo enim.\n\nNostrum repellendus aspernatur illo et culpa dicta. Nihil consequatur exercitationem ullam. Est et aut nam iusto non. Asperiores quia voluptatem sed beatae exercitationem aut adipisci.\n\nEt aspernatur fugiat ea in deserunt molestias. Nihil aliquid mollitia explicabo eius. Ex molestias ut deserunt quo et. Atque totam maiores aut voluptas at perferendis.', 1, 0, '2017-05-27 06:32:11', '2017-05-27 06:32:11', '1983-10-25 02:20:57', NULL),
(24, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Animi eos aut nulla veritatis et possimus velit eveniet iusto blanditiis maiores.', 'Dignissimos labore alias ipsam doloribus.', 'non-molestias-rerum-reiciendis-velit-sint-iure', 'Soluta molestiae consectetur occaecati reprehenderit quas. Quis iste velit animi. Ut ipsam amet voluptatem unde reiciendis reiciendis aliquam.\n\nUt voluptas nostrum et doloremque. Omnis beatae pariatur eum omnis odit. Quia alias voluptas nemo deleniti voluptate sunt quia blanditiis. Inventore vel magni ducimus quam.\n\nDeleniti voluptas voluptas soluta nostrum dicta voluptatibus pariatur. Illum eligendi explicabo iure itaque provident maxime.\n\nSaepe fuga aut consequatur molestiae modi dignissimos. Repudiandae doloribus omnis vel sit aspernatur laudantium quibusdam. Sed maiores officiis incidunt dolor.\n\nRerum quam sit sit omnis maxime. Illum quis ut consequatur dolor minus.\n\nNon qui qui sit hic excepturi et inventore. Fuga aut reprehenderit maiores esse. Debitis dicta est distinctio eaque dolor nobis. Doloribus inventore dolorem sapiente in voluptatem id non.\n\nVel inventore distinctio minus similique explicabo sapiente velit. Cumque qui sit consequatur corporis earum quibusdam veritatis. Quam et aliquam pariatur voluptates iste aspernatur ipsa iure. Numquam similique eum atque quam.\n\nEveniet aliquam rerum aut rerum et. Excepturi aperiam eum quod autem veniam consectetur numquam. A voluptatem sit consequatur dicta. Qui quos repellat est et aut quasi. Praesentium placeat minima autem ratione.\n\nSunt dolorem et provident quis qui sint explicabo. Optio dolor praesentium quia voluptatibus laudantium. Doloremque qui rerum est aliquam.\n\nRerum dignissimos ut autem saepe. Quisquam consequatur perferendis nam accusamus illo ut ea. At nostrum quo vel voluptatem consequatur.', 1, 4, '2017-05-27 06:32:12', '2017-06-07 06:38:22', '2012-10-02 21:09:09', NULL),
(25, 2, 1, 'upload/201704/25/201704250929411769.jpg', 'Sunt expedita aut minus tenetur fugiat.', 'Id quia consectetur beatae delectus sunt quos.', 'magni-et-ea-sequi-quia', 'Eum autem exercitationem molestiae sunt corrupti aut. Ut quis itaque dolor sint. Et fuga voluptas molestias eos repellendus.\n\nMinus quas eos asperiores nostrum quam sed consequatur minima. Debitis est dolores ut numquam pariatur. Numquam ipsum esse similique aut dignissimos quia.\n\nOdio dicta quis deserunt ipsa. Sit praesentium voluptatum est sint. Minima maiores est totam dolorum dicta.\n\nVoluptatem aliquid voluptate culpa et autem ut et. Et ut doloremque sit possimus omnis. Ut pariatur et distinctio explicabo minima et. Minima labore earum aut impedit ea ullam id.\n\nNatus aut quo ducimus ducimus vel et. Quo recusandae aut aut cumque aperiam veniam. Suscipit omnis qui non itaque corporis. Eius earum odit doloremque.\n\nEum debitis ipsam repudiandae quo at atque. Minima placeat et et quia sapiente. Deserunt enim repudiandae quod eum in facere ipsa. Aperiam laborum recusandae quae magnam ut tenetur.\n\nIure id ratione consequatur eum commodi eos. Et eos dolores dolores quisquam et facere et. Molestiae iste quia dicta earum natus et. Quaerat quis aliquam perspiciatis odio.\n\nSed et vel autem hic sunt. Ut exercitationem quibusdam incidunt pariatur est. Qui saepe aspernatur sed similique. Deleniti est magnam sit est minus.\n\nVero enim quidem et doloremque ut quos. Ab corporis molestiae id aut velit qui mollitia. Velit fugiat impedit tempora. Soluta illo qui aut qui.\n\nUllam itaque temporibus temporibus dolores aut. Culpa harum et voluptatem et. Quia distinctio porro commodi assumenda nostrum.\n\nSint quis accusamus totam. Corporis et mollitia quasi voluptatem voluptatem. Ipsum aut excepturi ad dolorem totam autem.\n\nOmnis illum voluptate unde vel fugiat. Ut quasi sunt consequatur doloribus voluptatem. Aperiam cupiditate ut quis optio iste error amet placeat.\n\nQuod iure accusamus est doloremque iusto assumenda assumenda. Consectetur pariatur quo iure quam consequuntur eaque asperiores. Perferendis unde nihil vel rerum. Quod autem molestiae nisi quisquam odio qui id.\n\nOmnis dolorum nisi ducimus. Cumque ut nostrum sed et neque. Consectetur quia vero et omnis eveniet earum quo. Animi facere in ut neque.\n\nEt doloremque non nulla animi sit. Nihil consequatur aliquid aut delectus itaque esse laborum a. Deleniti atque aut dolores consequatur sint incidunt itaque non. Adipisci repudiandae debitis et.\n\nQuasi fugit exercitationem est quia saepe eum sed. Nihil sequi nesciunt excepturi sit. Fuga temporibus ut a nesciunt et est quisquam officia. Reprehenderit ab quaerat ad ipsum non non quidem.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '2015-05-08 04:54:13', NULL),
(26, 2, 1, 'upload/201704/25/201704250929411769.jpg', 'Voluptatem eos ratione illum.', 'Aut vero sequi at dolore explicabo nihil officia consequuntur amet.', 'similique-maiores-sunt-quos-laborum', 'Repellendus alias nam illo sit tempore molestias magnam. Ducimus aut et unde necessitatibus. Ducimus corporis atque corporis perspiciatis quibusdam sunt ut.\n\nMagni aut et est eos eius. Dolore expedita vitae nisi dolorum atque. Sed iusto ipsam repellat nemo laboriosam dolor omnis ut.\n\nMagnam blanditiis eius explicabo et odio. Autem accusamus excepturi odit et. Nisi cupiditate dolores nulla aut natus soluta. Doloremque laboriosam est voluptatem vel neque dolores.\n\nError ab et quis quo ratione commodi veritatis. Omnis dolore et magni et omnis consequatur excepturi. Ut dignissimos numquam unde et similique. Saepe totam odit sint fugiat culpa ipsa dolores.\n\nPerspiciatis et aliquam repellat magni nesciunt rerum et quia. Quo ut porro iusto sed aut vero. Omnis voluptatem autem vel aperiam atque quidem. Omnis dolor ea porro in culpa eum nemo sit.\n\nAut voluptates harum ipsum occaecati dolorum et error sed. Placeat aspernatur qui recusandae nam expedita tenetur eos laborum. Quidem voluptas officiis ut est quo nostrum et. Voluptate ut vero perferendis occaecati fugiat eius.\n\nTenetur vel cum harum ullam nulla voluptatibus. Repellat nulla quasi qui cum labore fuga voluptatum. Voluptate consectetur sapiente totam saepe expedita culpa. Ipsa ex nihil ab repellendus dolor aliquid incidunt.\n\nAd eum facere non unde qui. Quidem adipisci asperiores est nisi dignissimos iste. Incidunt illo et consectetur animi laboriosam. Sapiente deleniti repellendus quae nulla iure eum fuga. Quasi mollitia quia neque fugit aperiam officiis.\n\nQuia quo beatae reprehenderit modi debitis enim eius. Ratione voluptates ut voluptatem sed. Laboriosam deserunt et corrupti error quidem. Cupiditate aut tempore ipsum non vitae aut tempora.\n\nLaboriosam autem eos dolor minima rerum magni. Autem est perferendis quia. Omnis et a autem laboriosam autem necessitatibus in.\n\nNemo iure suscipit commodi. Beatae quisquam distinctio beatae debitis voluptatibus quae harum. Fuga sed incidunt nostrum voluptatem consequatur iste et. Quae magnam et natus est sed voluptatem sint.\n\nDolores molestiae expedita quis eius provident voluptas. Sint possimus a iste beatae. Ipsum excepturi et aspernatur aut mollitia vel sed.\n\nDoloremque hic unde laudantium cum quam est. Libero aliquid voluptatem mollitia excepturi rem maiores. Nemo voluptatibus ut eum voluptas nobis consequatur omnis. Autem sed omnis doloremque nobis.\n\nQuasi nisi similique voluptas voluptas omnis soluta vel. Mollitia inventore nam omnis voluptatem. Laborum eos id soluta aut rerum voluptatibus. Pariatur deleniti et expedita sequi id.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1990-11-05 01:12:22', NULL),
(27, 2, 1, 'upload/201704/25/201704250929411769.jpg', 'Voluptatem voluptates eius dolorem occaecati sit dolorem deserunt alias debitis in dicta.', 'Iste nam aut rerum.', 'voluptas-repellat-explicabo-explicabo-et-repellendus-laudantium', 'Eum dolorem sed dicta quia est deserunt tenetur est. Est reprehenderit magni molestiae odit eum nesciunt. Consequatur ratione debitis neque in.\n\nPerferendis possimus esse rerum accusamus voluptatibus omnis. Voluptas dolore a similique quia quae quam omnis. Necessitatibus blanditiis earum sunt nulla qui eum autem aliquid.\n\nMaxime nihil nesciunt doloribus incidunt necessitatibus officiis. Et libero porro ut excepturi dolorem et et. Perspiciatis nobis aut possimus praesentium atque et.\n\nEos est molestiae incidunt harum numquam. Illo culpa possimus tempore sint est magni rerum in. Facilis quam consequatur expedita quod ut.\n\nEt magni vitae voluptatibus minus nostrum qui debitis ut. Id nemo doloribus rerum. Sed in voluptas nesciunt labore officiis est tenetur.\n\nEum quisquam excepturi ipsam. At et accusantium dolorum expedita velit autem. Distinctio quas aut aut cupiditate nam aut sapiente commodi. Dolorem corrupti voluptate atque repellendus.\n\nMolestias autem asperiores voluptatem laudantium qui. Alias similique est id et. Facere voluptatem quas architecto corporis voluptate iure alias. Rerum dicta voluptatibus velit.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1976-07-28 00:52:31', NULL),
(28, 3, 1, 'upload/201704/25/201704250929411769.jpg', 'Voluptate ullam doloribus cumque ut aut.', 'Alias consequatur totam deserunt doloribus sapiente et magni labore nostrum.', 'consequatur-maxime-delectus-sapiente-ex', 'Atque perspiciatis quia doloribus iusto doloremque id. Aut nobis explicabo qui possimus veniam et. Debitis corporis placeat animi cum modi alias. Nobis magni corrupti voluptate deleniti.\n\nAliquid quaerat deserunt commodi dolorem quaerat repellat. Perspiciatis suscipit eos quia voluptatem rerum. Est deleniti id dolor quis eum et et. Praesentium ut inventore id vitae voluptate et numquam. Et impedit aspernatur corrupti et et.\n\nDolor dolor reiciendis autem ipsam aut impedit. Iure ipsam blanditiis qui blanditiis sit minima. Et debitis non autem maiores. Est minima est qui enim.\n\nSunt exercitationem recusandae nihil ducimus qui exercitationem quis molestiae. Eius consequuntur mollitia vel cupiditate provident numquam.\n\nEos molestiae vel alias quos eos ea. Deserunt est ut aut soluta magnam. Velit omnis tempore perspiciatis id consequuntur molestiae.\n\nConsequatur veritatis quae provident numquam necessitatibus numquam voluptate. Autem animi quia ratione ea ipsum. Repellat corporis consequatur aspernatur temporibus aliquid.\n\nDolores ullam tempora exercitationem et est quis cum. Assumenda excepturi commodi enim nemo. Ducimus libero est veritatis ut saepe sit beatae.\n\nAut tempore architecto et aperiam quia temporibus qui. Et et id ut deleniti. Rerum et ea placeat sed. Fugit aspernatur quia dicta non et magnam.\n\nMollitia quidem nihil animi nulla exercitationem nam consectetur. Aliquam sunt facere earum aspernatur velit. Aut voluptatibus iste eum culpa asperiores. Dolores impedit sint at quae.\n\nQuia at omnis consectetur assumenda. Deserunt quam eius non dolores. Officiis ipsam voluptate autem amet tempore illum. Impedit deleniti sit illo dicta incidunt aspernatur id.\n\nEt doloremque dicta ratione mollitia. Et laboriosam temporibus neque possimus voluptas recusandae. Hic est ad magni aut nihil necessitatibus eum et.\n\nIn ut reiciendis ea itaque. Ut molestias qui sit sint adipisci sequi porro. Nemo suscipit exercitationem totam ex.\n\nDistinctio in amet facere molestiae deleniti expedita. Amet qui voluptatibus voluptates est in laborum. Nihil ex debitis consequatur consectetur molestias. Repellendus saepe voluptates impedit error vitae non.\n\nIusto tenetur ut quae omnis blanditiis. Ex magni similique doloremque delectus consequatur. Qui velit sed aspernatur et adipisci ea voluptate possimus. Sed ut ipsam asperiores ut facere et corrupti. Et dolore est facere praesentium.\n\nConsequatur unde occaecati perferendis veritatis qui omnis. Qui suscipit aspernatur eligendi voluptas sed sit exercitationem quisquam. Qui consequatur possimus beatae quia voluptas voluptas autem. Repellendus rerum quos enim animi animi consequatur quo.\n\nIllo sequi eius repudiandae et eligendi. Nesciunt aut sed et exercitationem hic.\n\nNulla voluptate quia optio voluptatem. Laboriosam earum molestiae nesciunt quaerat odit. Molestias beatae ipsum alias et eum provident velit enim.\n\nQuia ut ea dolorem eos excepturi quisquam. Est voluptatibus ut eaque a nesciunt dolores. Beatae eos et et ex at non.\n\nSequi ab nobis est. Occaecati delectus qui laboriosam ipsam recusandae ea eaque corporis. Ex voluptas necessitatibus error consequuntur molestias optio ratione. Non facilis beatae odit aut repellendus ut quisquam hic. Veniam omnis voluptatem suscipit est.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1983-09-15 21:47:25', NULL),
(29, 3, 1, 'upload/201704/25/201704250929411769.jpg', 'Omnis laboriosam magni earum molestiae et veniam ratione molestiae.', 'Aperiam quae mollitia labore consequatur aut amet hic maxime est quia animi quo.', 'nostrum-perspiciatis-id-facilis-distinctio-necessitatibus-voluptas-sit', 'Rem cumque occaecati aspernatur distinctio. Nulla quia qui necessitatibus vel alias ipsa sunt. Dicta maxime sit voluptatum velit deleniti magnam. Animi omnis repudiandae inventore voluptatem.\n\nMolestias placeat alias dolorem laboriosam mollitia labore. Nihil quod perferendis pariatur voluptatem. Blanditiis omnis est enim molestiae earum facilis eius. Accusamus vel aperiam ut autem maiores recusandae.\n\nSed dolor deserunt et nisi sint eligendi. Totam fugiat dolore et. Sit adipisci illum suscipit nostrum. Sed sit veniam libero omnis.\n\nCupiditate assumenda totam in. Numquam eaque neque laboriosam odit reiciendis tempore. Aliquam aut ducimus quam. Necessitatibus ullam placeat eos minima. Quis error aliquam veritatis esse eum qui omnis.\n\nVel nihil quo corrupti eaque et quisquam vel itaque. Libero numquam qui id ducimus exercitationem. Iure tempora aspernatur tempore.\n\nQui libero libero saepe tempore neque aut. Sit nihil dolorum quis delectus omnis. Mollitia consectetur quae molestias nam.\n\nEaque minima nesciunt deleniti pariatur dolores ut. Est fugit provident soluta expedita omnis culpa quia. Officia reiciendis sint cumque magnam. Sed nihil illum omnis itaque mollitia.\n\nIn ut sed voluptatem alias. Iure doloribus eveniet voluptatem aliquid perferendis maxime. Mollitia magnam provident esse ducimus aut.\n\nIste magnam est ad iusto sunt quibusdam aspernatur. Sunt nihil pariatur praesentium omnis laboriosam perferendis. Fuga et suscipit sed est alias aut quis. Qui exercitationem eligendi similique praesentium.\n\nSed qui officiis non mollitia aut dolores earum. Ipsam voluptatem sit et ullam. Sed error odio et nisi ea et laudantium voluptates.\n\nNihil asperiores porro ut. Rerum porro ea in totam repellendus dolorem officiis. Qui incidunt quia voluptas atque dolorem. Ut nemo aspernatur placeat distinctio cupiditate.\n\nDolor quo assumenda est. Earum possimus cupiditate rerum. Cum fuga sit alias voluptates dignissimos. Vero nemo repudiandae maiores non ut labore repellat.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1992-12-03 17:42:09', NULL),
(30, 3, 1, 'upload/201704/25/201704250929411769.jpg', 'Tempora vitae saepe et dignissimos omnis placeat at eos eos atque.', 'Non voluptatem eum maxime sit vel magni eum ipsum est laborum harum nihil et sit.', 'facilis-adipisci-quam-cum-illum', 'Sequi atque repellat corrupti odio. Sed aut ipsum tenetur corrupti eum sunt. Vitae molestiae sunt labore libero enim cupiditate fugiat.\n\nAb sit id voluptatum aut aut rerum. Accusamus quia hic quod non. Sunt nihil sunt quam eum sunt.\n\nEst earum qui id voluptas sint laboriosam incidunt. Qui quia eum esse est magni corporis. Tempora dolores excepturi incidunt numquam. Ullam id est autem minus autem suscipit.\n\nSit officiis exercitationem minus. Alias aut quia provident sit. Maxime cum nisi modi et expedita cumque.\n\nPraesentium veritatis in minus molestias velit eaque qui. Tenetur magni iste ut sed rerum qui. Alias dolores autem quisquam. Minima non ex iste.\n\nAliquam ipsum vel nihil eos. Expedita blanditiis distinctio impedit totam iure cupiditate. Est iusto debitis nemo vel sed. Vel nesciunt dolores quae.\n\nAlias illo dolores illo et quis. Repudiandae deleniti laboriosam et et error. Soluta laboriosam sit animi sunt qui voluptatibus. Nobis rerum doloremque id iusto quam aut sint.\n\nExpedita tempore voluptas cumque accusantium tempora necessitatibus impedit a. Similique dolorem repudiandae eum. Sunt ab iure eligendi eveniet. Laborum rerum fugiat ut temporibus.\n\nVero vel autem enim non quo. Eaque ut dolorem facilis est. Est enim similique nihil et ratione temporibus. Fuga incidunt explicabo eveniet sint consequatur.\n\nEum sit et fuga alias consectetur. Aut est dolores qui est illum. Quam nihil est facilis officiis sint sint labore ea. Aliquid amet et doloremque dolorum consectetur qui est.\n\nTemporibus atque est et rerum dolores blanditiis dignissimos atque. Nisi soluta sint illum officia non. Esse aut nisi repellendus culpa exercitationem ut. Quos qui et rem sit facilis.\n\nFacere rerum itaque inventore itaque eos quia vel. Aut ipsum omnis assumenda architecto. Ut ullam odio molestias rerum numquam aut. Veniam aperiam accusamus omnis qui corrupti.\n\nIste ex quidem ut molestiae expedita iste ipsam. Repudiandae facere et omnis est aperiam.\n\nAccusantium et pariatur rem aperiam sed facere blanditiis. Sit et modi sit aliquam id id quo. Incidunt debitis sit doloremque eum eaque quisquam. Aut nisi id ex perspiciatis.\n\nNon sunt reprehenderit voluptatem nisi. Saepe sunt autem harum iusto. Quod eos quis voluptas saepe sit dignissimos.\n\nExercitationem cupiditate ea aliquid voluptatibus et sed. Asperiores in repellat odio sed in ex veniam. Sunt assumenda natus doloremque corporis est sint nemo. Eligendi et nulla omnis minus est.\n\nOccaecati est doloribus est omnis reprehenderit. A nihil soluta voluptatum illum dolor. Occaecati consequatur sapiente aliquid facere sit nisi.\n\nEligendi accusamus esse voluptatem sed odit quibusdam. At qui dolores aut sapiente illo est.\n\nSint tempora quos repudiandae autem qui illum. Quidem id nam minus molestiae molestiae. Quis ut magnam et deleniti qui id.\n\nIste fugit est dolore voluptas. Vel molestiae et voluptas non similique blanditiis. Dolore totam quibusdam eligendi in. Unde rerum perferendis autem sed.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '2005-09-24 04:20:00', NULL),
(31, 3, 1, 'upload/201704/25/201704250929411769.jpg', 'Et dolor ut voluptatibus sint eveniet enim deleniti.', 'Atque eos sint temporibus voluptatem esse mollitia ut.', 'ut-numquam-commodi-ut-inventore-consequuntur-quia-voluptas', 'Unde at beatae sapiente fugiat soluta rerum. Atque omnis porro asperiores impedit alias porro facilis. Accusantium perferendis quibusdam alias consectetur sequi cupiditate.\n\nSunt quod eius qui dolor. Consequatur consequatur qui quis odit. Mollitia aperiam qui porro voluptatem nemo corrupti. Non at dolores quae quo nostrum.\n\nEt voluptatibus iste atque tempora labore recusandae quaerat. Culpa excepturi dignissimos quaerat dolor expedita. Porro ut deserunt quis adipisci molestiae placeat. Itaque quisquam eligendi cumque eos aut tenetur harum.\n\nSimilique ut ipsam rem assumenda tempore dolores et cumque. Eaque eveniet omnis maiores. Esse ut itaque est sed aspernatur et similique. Voluptatem illo cupiditate error hic quae facere nobis beatae.\n\nDeserunt et nisi laborum quas quis et culpa. Totam sunt qui vel cum ut quae beatae. Omnis vitae odio quidem veritatis sunt voluptatum fugit nulla. Debitis qui animi rerum voluptas sed illo laboriosam error.\n\nQuos consequatur iusto placeat ipsam aut. Laboriosam numquam et velit voluptatum quia ducimus. Earum odio laboriosam ut quasi. Enim id quasi sequi voluptas.\n\nQui qui reprehenderit maiores. Quo omnis neque magnam placeat dolore ut rerum. Consectetur saepe impedit dolorem.\n\nVoluptatem similique a et enim tenetur. Facere exercitationem ut repudiandae. Et in eum et et qui.\n\nEum architecto eveniet soluta voluptas ut qui est exercitationem. Sed neque aut cupiditate minima nulla omnis architecto quidem.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '2016-03-25 15:36:19', NULL),
(32, 6, 1, 'upload/201704/25/201704250929411769.jpg', 'Vel distinctio est laboriosam neque temporibus.', 'Corrupti accusantium ut facilis pariatur ex quibusdam ut ducimus nemo reiciendis fugit.', 'sint-rerum-error-sunt-expedita', 'Voluptates optio ut dolorum vero. Qui accusantium quia expedita aut sit id voluptates aut. Quod nostrum pariatur voluptatem doloremque. Sit maxime quaerat corporis sit qui.\n\nDolorum inventore aliquid praesentium facilis. Est maxime deserunt omnis possimus iusto facere quam. Aut ut quia consequatur animi ea.\n\nEt ut similique voluptatem earum repellat. Aliquid qui ex blanditiis a corporis aliquam ea.\n\nEst dolorem molestiae laboriosam tempore minima nostrum. Reiciendis rerum quam aspernatur consequuntur. Optio adipisci accusantium molestiae. Debitis quisquam laboriosam ducimus omnis vel voluptates harum. Iste animi debitis voluptatem eligendi natus incidunt aut.\n\nExercitationem laudantium velit eos beatae unde quisquam. Earum esse possimus cum dicta quod animi inventore excepturi. Doloremque sit modi nulla doloremque architecto.\n\nSapiente sint at sequi quae quis est labore. Cupiditate fugiat odio placeat ad officiis numquam soluta. Sit vel quo autem sit magnam molestiae eum pariatur. Labore odio autem inventore eum.\n\nPariatur quo sint porro voluptatibus maiores dolor deleniti. Ut vitae dolorem necessitatibus provident necessitatibus consequatur. Dolor est nam corrupti.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1992-01-16 16:08:23', NULL),
(33, 6, 1, 'upload/201704/25/201704250929411769.jpg', 'Eveniet voluptatem inventore a porro eligendi voluptas fuga.', 'Temporibus omnis delectus maxime qui.', 'excepturi-et-nostrum-ut-ad-possimus', 'Eius maiores aut quidem impedit mollitia corrupti nobis. Distinctio magni nostrum quia et delectus laudantium quod magni. Maiores et et provident ut quas aut.\n\nVoluptatem quis quibusdam sed voluptas nesciunt voluptate. Ea alias a vel est. Adipisci aut aut quas id aut tempora ea.\n\nUllam tenetur amet repudiandae recusandae adipisci. Voluptatem odio doloremque eaque cum. Soluta recusandae omnis quas inventore. Nulla atque dolorem facere doloremque aperiam.\n\nIpsa velit aliquid laborum inventore iusto laborum quaerat. Vero molestiae voluptas exercitationem est esse voluptatem ipsa ut. Quis voluptates dolores error sapiente deserunt at dolor voluptatum. Rem dolores in aut odit.\n\nQuia consequatur itaque magni est iusto necessitatibus. Sapiente et placeat tenetur laborum voluptatem quam. Rerum quos amet velit dolorem ex.\n\nBlanditiis beatae animi reprehenderit ad perspiciatis. Aspernatur dolores et assumenda atque. Optio voluptatem enim dicta et. Sequi reprehenderit et eius et sequi aut doloribus vitae.\n\nMaiores culpa sint eos natus eaque dicta et fugiat. Natus occaecati voluptas velit aliquid et magni delectus. Sit eos omnis sed voluptatum.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '2002-04-03 03:39:34', NULL),
(34, 6, 1, 'upload/201704/25/201704250929411769.jpg', 'Dolores id et consequatur ducimus autem sunt non rem quaerat cupiditate quo.', 'Eos et dolorem provident dicta sint ipsam nisi et adipisci quis quasi quo non omnis aut molestias non.', 'dignissimos-et-ut-nulla-vel-sunt-mollitia', 'Nulla veritatis quasi perspiciatis sint illo aut quos. Ut excepturi et eum illo eligendi et. Non adipisci quasi quo rem nesciunt. Rerum perspiciatis ipsa tempora.\n\nSunt rerum qui sint id sit eum perspiciatis natus. Ad et autem suscipit fugiat velit eaque cum.\n\nEt alias molestiae mollitia est delectus sit adipisci. Quo itaque quod rerum dolore mollitia. Et sit doloribus est ea tempora totam.\n\nId nihil magnam est voluptatibus. Illum architecto eum et numquam et natus voluptas magni. Corporis reiciendis dicta fugit.\n\nRepellendus saepe aut sed nihil odit corrupti. Vitae quo sequi velit fuga. Reiciendis facere magnam aperiam quia. Reprehenderit voluptatum ut quos veniam eius.\n\nPariatur quaerat nisi neque autem ullam quasi maxime. Quis ab quidem nulla nesciunt similique. Similique quasi ut sapiente doloremque et.\n\nProvident voluptas cum quis repellendus soluta non eaque omnis. Consectetur est ut aut ut molestiae sed. Mollitia id voluptatum odit et incidunt. Odio est earum ut impedit.\n\nUt asperiores optio quia sint. Harum non corrupti consectetur nihil unde. In deserunt veritatis ea in adipisci dignissimos fugit ut.\n\nEst ut possimus dolorum necessitatibus aut commodi. Porro maiores impedit non eos ut. Enim velit vel qui nam.\n\nSed adipisci quis culpa atque. Ut autem necessitatibus aut voluptas odio quis. Rerum quis laudantium totam maxime. Itaque quaerat et laudantium inventore id ut dignissimos. Consequatur quia iusto quibusdam quia.\n\nNon maiores modi tempora voluptas dolorum rerum possimus velit. Sequi omnis et in quo ut repudiandae natus. Quas dolores quidem qui dolorem velit quidem minima. Non adipisci facilis sed et et nihil.\n\nBeatae placeat aspernatur quidem sunt. Quaerat placeat voluptates ut voluptatem delectus.\n\nQuae facere est aspernatur dolore. Eos aut omnis iusto dolor debitis assumenda aut. Ut quae et rerum eum.\n\nBeatae iste illum sit autem nostrum. Adipisci amet maiores quod in. Voluptas consequatur doloribus corporis deleniti id magni. Vero dolorem maiores rerum necessitatibus enim impedit.\n\nOdio vel quaerat sed repellendus. Ea harum aspernatur quasi sapiente maiores incidunt. Repudiandae voluptas soluta voluptates rem ut earum et dignissimos.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '2013-10-09 00:45:45', NULL),
(35, 6, 1, 'upload/201704/25/201704250929411769.jpg', 'Excepturi architecto earum dolor ut ex quia quia.', 'Optio dolorem et rem illo quibusdam similique quos cum voluptates est adipisci.', 'consequuntur-et-ut-exercitationem-debitis', 'Illo dolorem perferendis reiciendis. Omnis eos et provident molestiae quos laudantium doloremque. Alias autem aut quos libero.\n\nEum eos qui consequatur dolores iste rerum. Et blanditiis ad quo perferendis ratione magnam. Eum sed quia est ut sed repudiandae repudiandae. Ab aut quas sit ad doloremque earum.\n\nMinima molestiae et ipsam ipsa cum magni perferendis dolore. Asperiores similique dolor omnis dolorem soluta voluptatum. Blanditiis ipsa qui id qui. Repudiandae vitae provident mollitia numquam ex.\n\nFuga fuga quo quisquam ut quia. Nulla tempore sunt non est. Qui numquam ut esse nemo fugit qui.\n\nPlaceat aut perferendis harum est. Qui repudiandae et vitae ut. Porro commodi odit vero unde voluptas. Unde consequatur ut exercitationem numquam qui quia sunt.\n\nExcepturi dolorum dolores quisquam tenetur sed earum voluptatum. Unde sunt nam quae. Similique saepe dolores minima nihil autem et consequatur.\n\nEt qui est quis et. Molestias ab omnis incidunt ea aspernatur molestiae et. Aspernatur praesentium sed vitae. Suscipit rerum tempora fugiat ullam autem at.\n\nIste velit aut sequi sunt voluptas omnis ab quia. Sapiente quia placeat blanditiis est quasi.\n\nSequi illo eius sed rerum deleniti molestiae repellat. Est similique quia eligendi est quod. Aut cum aspernatur ea omnis et sequi. Consequatur porro labore aut reiciendis dolores reiciendis ut occaecati.\n\nAutem pariatur repudiandae rem delectus consequatur maiores. Veniam et hic quae totam velit praesentium ab. Deleniti saepe magni blanditiis eligendi illum maxime veritatis. Culpa quia eum et vel odit et.\n\nQuia recusandae qui molestiae modi sed quis voluptatum harum. Quia enim sunt soluta ut qui. Provident repudiandae laudantium dicta totam.\n\nHarum distinctio nisi ut harum. Alias voluptatem ut ea officia.\n\nFugiat repellat eveniet impedit qui iste iste. In vero incidunt dolorem sunt totam. Qui sed enim facilis officiis et vero laudantium. Quia itaque ipsa et molestiae rerum aut.\n\nVitae quia sequi possimus repellendus molestiae. Officia incidunt doloribus suscipit provident.\n\nEos natus veritatis earum et aliquid deserunt amet. Tempore totam et quisquam impedit eos officiis. Natus voluptatem suscipit odio consequatur esse ullam consectetur.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1982-08-10 13:05:56', NULL),
(36, 6, 1, 'upload/201704/25/201704250929411769.jpg', 'Voluptatem vero at iure facilis hic.', 'Ipsam optio cupiditate architecto odio expedita doloribus in.', 'sint-architecto-earum-est-cumque-iste', 'Voluptatem aut quas delectus sed excepturi deleniti. Enim possimus voluptates assumenda recusandae. Natus consequatur consectetur ut quia.\n\nVoluptatem qui repudiandae accusamus dolorem est. Ut iste amet dolor rerum. Et dolorem maiores molestiae rem dignissimos. Iusto porro est repellendus tempore.\n\nUt est aut voluptas labore rem. Et enim officia voluptas possimus eum perferendis blanditiis. Qui id odit animi autem voluptas. Vero iusto enim esse eveniet.\n\nQuam perferendis ex architecto qui quod esse omnis. Adipisci voluptate consequatur veniam.\n\nNam officia quo tenetur praesentium eveniet repudiandae perferendis. Excepturi eius harum adipisci tempora cum. Vel quia sed voluptatibus consectetur accusamus officia similique. Ipsa ipsum ut corrupti unde accusantium molestias.\n\nMollitia error est architecto culpa accusantium. Repudiandae non eum animi et nulla. Iure et consequatur sequi doloremque. Nemo quos molestiae qui animi harum eius incidunt magni.\n\nExpedita iste ut saepe exercitationem ut voluptatem enim aut. Sit a eos enim molestias iusto aperiam autem impedit. Tempora rerum dolorem repudiandae assumenda perspiciatis nam. Voluptas aut ea ipsam dolor.\n\nDistinctio possimus sit eum molestiae est voluptas aspernatur. Ullam numquam tempora qui recusandae fugiat itaque repudiandae. Ea sit sit officiis consequatur ullam veniam. Aut suscipit quis omnis.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '2009-11-20 23:27:16', NULL),
(37, 6, 1, 'upload/201704/25/201704250929411769.jpg', 'Aut laudantium voluptate vel vitae.', 'Unde magni voluptates et quam voluptatibus dolores.', 'quasi-dicta-qui-nobis', 'Excepturi iste placeat inventore. Suscipit voluptatem sit eius quia voluptatem. Id nobis ducimus ad aut. Nulla enim non velit enim ad consequuntur molestiae laudantium.\n\nIpsa eos explicabo quos deleniti nihil. Temporibus quia qui excepturi rerum. Aut qui eum non autem quam hic accusamus.\n\nDucimus aliquid ullam explicabo ad. Voluptatem unde culpa voluptatem et. Voluptatum omnis labore impedit repellat. Cum et quo sapiente velit debitis accusantium.\n\nQuia sint quibusdam velit expedita soluta necessitatibus. Et est distinctio nobis consequatur placeat. Et cumque tempora et id.\n\nQuam quisquam adipisci temporibus natus voluptates ut. Ea eos minus labore itaque et eum adipisci veritatis. Qui quidem harum neque dolorem laudantium. Aspernatur excepturi facilis eligendi officia dolor quo.\n\nAliquam assumenda provident esse facere qui dolorem dolorem. Praesentium omnis numquam omnis error. Corporis tempora odit molestias necessitatibus.\n\nSaepe recusandae aliquid explicabo velit non fugit. Debitis nesciunt enim quia maxime dolorem et. Sed maxime sunt recusandae non fugiat minima.\n\nNumquam facilis iure est eos iusto molestiae suscipit. Consequatur voluptates non deserunt tenetur consequatur vero quia. Inventore quibusdam rerum non accusamus sequi. Rerum dolore dolores molestiae quo est cumque blanditiis ratione.\n\nSuscipit quisquam sequi aliquid sit totam. Aperiam reiciendis dolorum illum velit. Libero autem necessitatibus recusandae fugit tempore odio maiores. Quis dignissimos nesciunt voluptatem debitis tempora.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1999-06-03 02:49:23', NULL),
(38, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Rerum ut molestiae et.', 'Ea in ratione non quidem iste doloribus saepe impedit rerum voluptas aspernatur vel ut autem ea praesentium harum odio.', 'provident-amet-dolorum-et-incidunt', 'Quisquam iure iste debitis. Ut temporibus earum molestias cumque. Voluptas optio dolor natus excepturi assumenda. Quia iste voluptas consequatur pariatur magni sint sint unde.\n\nVitae nihil qui quam dolore. Vel velit in iusto porro maxime magni rerum. Amet aut est aliquam aut delectus cupiditate. Tempora voluptas et explicabo nostrum sit.\n\nIncidunt voluptatem et praesentium facere consequatur dolorem animi. Consequuntur corrupti eum optio. Sed neque quia aliquid sapiente dolorum ipsam temporibus.\n\nOdit dicta saepe aliquid architecto qui molestiae earum totam. Eum amet quis neque. Dicta excepturi sint quo error voluptate vero esse. Perferendis aliquid voluptatem consequatur sit.\n\nAut quia aut fugit voluptatem occaecati est. At recusandae totam dolores corrupti eligendi. Adipisci a dolorem nihil nemo illum saepe unde voluptatem. Neque delectus libero temporibus omnis voluptatibus libero.\n\nExplicabo aut enim pariatur incidunt omnis. Et quia voluptates odio quos dolorem nesciunt. Optio ducimus explicabo aliquid rerum totam.\n\nIste et totam eos architecto aut maiores. Sunt dolorem qui et tenetur. Et blanditiis consequatur corporis omnis ea quae. Iusto quas optio ratione.\n\nNumquam nostrum debitis vitae consectetur sed vel. Necessitatibus quia omnis ad velit saepe. Velit quas delectus eveniet amet voluptatibus aliquid. Est est velit labore mollitia. Est est doloremque vel eligendi voluptatem.\n\nQuasi consequuntur eligendi voluptatem eveniet nihil quam expedita quas. Atque et et earum non. Enim nostrum officiis qui omnis voluptas tempora.\n\nMaxime ullam deleniti et. Excepturi atque consectetur neque amet quas. At odio saepe quos dolor dolorem sunt.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1991-04-22 06:43:58', NULL),
(39, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Ad accusantium vitae et nesciunt occaecati ab.', 'Officia qui odio quo iusto.', 'iusto-dolor-nisi-excepturi-optio-natus-ut-et', 'Deleniti est assumenda sapiente necessitatibus sunt. Reiciendis assumenda dicta cum dolor consequatur distinctio. Maxime dolore est iste vel et adipisci dolores inventore.\n\nId dolorum voluptate quas deserunt. Laboriosam quia sunt ut quis et magni et. Sint voluptatem et commodi voluptatem ratione.\n\nReprehenderit praesentium laboriosam repellendus voluptatem non. Doloribus similique perspiciatis nihil commodi. Odit et ut blanditiis delectus qui laudantium aspernatur voluptate. Libero dicta et ducimus est nobis qui est sunt.\n\nMinima maiores quo nulla sed cum. Enim blanditiis sapiente eaque blanditiis est nostrum. Illum saepe porro odio eum officia facilis blanditiis. Reprehenderit ad quo optio expedita sed.\n\nQuisquam qui rerum laboriosam perspiciatis. Et aut sed harum similique repellat nihil. Facere nostrum earum eligendi non. Qui eos aspernatur sunt autem dolor.\n\nSunt aut aspernatur quidem fuga nostrum distinctio autem. Harum et dolores at sit minus sapiente. Molestiae soluta laborum vel delectus quae.\n\nNemo id repudiandae neque facilis qui. At nulla fugit laudantium. Facere corrupti quia doloribus. Vitae labore corporis et.\n\nDolor sit repellat eligendi doloremque nobis et. Voluptatem sed consequatur ut. Est nobis excepturi molestiae et corrupti.\n\nNon illum quidem numquam maiores quia pariatur cumque. Est animi doloribus ab optio. Perferendis a dolorem est delectus doloremque est magni hic. Soluta aut voluptatem velit fugit.\n\nIllum et sequi quia et fugiat ad. Voluptas excepturi ut quibusdam hic enim doloribus qui. Enim impedit cupiditate enim id id nihil quidem.\n\nHarum incidunt asperiores aspernatur quia alias non soluta enim. Beatae dolor tenetur sit sit. Est odit dolor temporibus recusandae. Voluptas assumenda laudantium vitae doloribus quis corporis. Inventore voluptatum laboriosam doloremque nihil.\n\nUt assumenda unde laborum iure vel hic et. Aut harum quam et necessitatibus. Commodi sunt eius architecto accusamus facilis ut. Quas assumenda inventore maxime voluptas expedita est.\n\nQuia blanditiis exercitationem id officiis labore perspiciatis eum. Libero placeat et aut pariatur. Qui nobis nemo sunt.\n\nMolestias odio sit nobis et rem voluptas perferendis et. Voluptas sunt assumenda nisi doloribus et. Minus et sed voluptatem sit repudiandae omnis odit.\n\nIpsa autem aut corrupti tempore minima. Quos quis reiciendis eos perspiciatis sequi magni. Harum ipsa ut aliquam ab et sed. Libero ullam et beatae consequatur aut aut nemo. Tempore dignissimos sit earum atque itaque odio at.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1999-12-28 11:21:22', NULL),
(40, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Quos omnis et labore sequi sed eaque rerum inventore.', 'Necessitatibus rerum eum optio earum sint.', 'sed-a-accusamus-enim', 'Nobis totam mollitia assumenda et qui. Et reiciendis omnis quod cum voluptatem consequuntur harum consequatur. Dolores voluptatibus ratione nisi quos ut inventore debitis.\n\nSimilique commodi voluptas reprehenderit et ipsa qui. Asperiores quia quibusdam esse optio necessitatibus commodi. Dolorum distinctio dolores excepturi dolor. Voluptatem dolorem id cupiditate dolores quo.\n\nVoluptas voluptatem rerum qui quidem omnis itaque atque. In ipsa perspiciatis iste debitis. Quibusdam voluptate ut unde.\n\nNemo quisquam doloremque doloremque modi voluptates dolore dolorem. Est et sint itaque enim mollitia ducimus numquam. Ipsa est itaque voluptas et ut non assumenda. Saepe asperiores repudiandae id dolorem.\n\nMaiores adipisci non suscipit. Voluptate eius aperiam asperiores. Eum repellendus eos minus id omnis quia. Qui delectus qui autem veniam.\n\nQui iure soluta pariatur et. Nostrum voluptatem quo molestias. Eum aut velit possimus.\n\nVoluptates id accusamus est et. Voluptatum ipsa qui quos delectus et ea. Earum deleniti occaecati blanditiis alias modi molestiae non rerum. Exercitationem cumque similique non velit inventore ipsam. Unde aut eius quae et consequuntur.\n\nSaepe aut excepturi voluptas autem beatae. Rerum quibusdam similique et ut aliquid quia aliquam ea. Illo aliquid aliquam cupiditate dolorem. Minus necessitatibus labore maxime aut est in suscipit.\n\nQui voluptas ullam quibusdam sunt a dolor vel. Placeat aut quae unde voluptatem dignissimos aliquam et. Et dolores odio voluptas nihil est odio. Deserunt voluptatem esse consequatur quaerat libero.\n\nVeniam commodi qui nisi consectetur a voluptate. Temporibus omnis qui consequatur libero labore nemo totam quia. Dolores occaecati occaecati optio aut dolorem tempore. In facere nemo et in perspiciatis ut.\n\nEos totam provident id ducimus. Molestiae amet provident quae impedit dolorem ad dolor. Dolorem dolorum nisi illum et ut odio labore.\n\nConsectetur id perspiciatis sunt. Vero beatae deleniti quo quia dolorem. Iure occaecati molestias atque rerum placeat corrupti.\n\nExpedita iste optio id repellendus eius. Rerum eum dicta hic praesentium itaque debitis. Sunt veniam aut quibusdam quia.\n\nQuis omnis laudantium perferendis voluptatem. Nihil qui occaecati sint et quae sit nihil. Quis et est sint culpa qui.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1972-07-18 10:32:26', NULL),
(41, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Et repudiandae qui enim nemo placeat vero cum fugit sed reiciendis sunt ipsum ut.', 'Tempora earum odio et corrupti et dicta accusamus illo facere maiores et exercitationem.', 'a-deleniti-omnis-ea-aut-ut', 'Qui hic non tempora perspiciatis ab. Aperiam voluptates sed dolorum fuga voluptatem at. Est et fuga eligendi et. Sed facilis aut repudiandae facere iure.\n\nIllo quos qui reiciendis rerum natus fugiat. At occaecati nobis aut rerum. Officiis quia magnam sed id.\n\nFacilis et qui culpa iste temporibus repellendus. In voluptatem non excepturi adipisci.\n\nOccaecati et ea asperiores pariatur repellat rerum. Ipsum sit iusto aut ut suscipit quia. Ipsa repudiandae provident amet sapiente. Veniam error aut voluptas officia hic sint.\n\nSit velit sed amet harum ut qui. Porro magnam laborum tempore aut nulla ipsa. Deleniti quidem quod impedit quia nisi ut beatae. Molestiae atque aspernatur eum quia culpa qui est.\n\nNemo eos et voluptates enim quo quis. Minima nihil explicabo iure rerum quibusdam. Officiis quae maiores amet ipsa aut eos. Sit aperiam sunt minus animi ut dolorum ipsam.\n\nQuo perferendis omnis modi optio eos. Quo neque quaerat explicabo nemo et. Reiciendis eius aperiam quod nulla iure non error omnis. Qui dicta aut dolor animi quo dolorem nostrum.\n\nIpsam omnis et officiis. Maxime et nostrum qui ab.\n\nMaxime omnis et ex numquam tempore. Ut sed et sunt rerum assumenda est harum. Autem dolor eos ex ad.\n\nVero repellat ut velit rem nihil. Et quidem explicabo quod qui aut suscipit. Ipsam id consectetur eius atque quisquam.\n\nSoluta velit rerum cumque temporibus laudantium fuga qui. Veritatis rem possimus debitis consequatur velit nesciunt eaque.\n\nDolor in vitae doloribus ipsam unde. Sunt corrupti eligendi vel sequi fugiat qui. Qui architecto incidunt minima nostrum sunt officia. Molestias rerum sint nobis blanditiis.\n\nConsequatur praesentium porro quaerat. Doloribus eligendi a est corrupti pariatur harum. Aut quibusdam sed rerum a eius. Inventore ab ipsa praesentium enim. Sapiente non rerum iusto deserunt sint iure corrupti ut.\n\nHarum et architecto dicta dicta minima repellendus. Vitae dolorem expedita sunt et veritatis voluptate. Amet et tempora voluptates quia.\n\nEius vitae explicabo hic molestiae enim architecto. Qui rerum aspernatur aut necessitatibus porro possimus in asperiores. Id sapiente ratione quos ipsam omnis temporibus quaerat. Est corrupti eos iste impedit nisi.\n\nNecessitatibus cupiditate quod enim ipsa incidunt veniam. Dolore sapiente nemo eaque id explicabo ut. Atque rerum ex quia eaque iure expedita aperiam.\n\nPorro voluptatem id commodi consectetur est quia. Saepe ut nihil a aut facilis ut. Est molestiae a nemo itaque aut aliquid laborum.\n\nQuod odit aut saepe consequatur perspiciatis. Excepturi nulla aut non iste. Iure voluptas minima beatae.\n\nNemo qui sunt qui sed odit voluptatum. Quasi ipsum quidem quis enim non. Velit architecto nemo accusamus nihil aspernatur qui blanditiis vel. Asperiores omnis sit magni.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '2000-08-20 02:07:28', NULL);
INSERT INTO `posts` (`id`, `category_id`, `menu_id`, `image`, `title`, `description`, `slug`, `content`, `status`, `view_count`, `created_at`, `updated_at`, `published_at`, `deleted_at`) VALUES
(42, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Deleniti qui debitis officiis libero quo aperiam ut.', 'Non ut est iusto ut.', 'quasi-et-eum-dicta-hic-maxime-quis-ut', 'Accusantium ut iste et. Dicta velit ad aut qui architecto ut aut quasi. Dolore voluptas et commodi repudiandae exercitationem qui modi.\n\nCupiditate dolorem laudantium qui facere ut porro placeat. Est inventore nulla recusandae qui illo placeat placeat. Occaecati dignissimos voluptatibus quas occaecati sed quis.\n\nLabore fuga saepe quia voluptas eum. Rerum veniam ut sequi sed quo soluta. Aliquam exercitationem aut eos sit vel amet sed. Labore culpa molestiae possimus cum animi.\n\nEveniet voluptate ea dolor nam asperiores similique aut autem. Perspiciatis molestias fuga quod qui sint. Odio maiores soluta consequatur recusandae totam.\n\nSed sed illum mollitia quia voluptas repellat quibusdam itaque. Ab minima sunt sapiente commodi minus quia quia. Exercitationem ullam molestias sit deleniti. Qui illo eos quas itaque et.\n\nEnim et tenetur magnam ea ratione odio. Saepe delectus aut soluta quia sint consequuntur et. Asperiores modi occaecati tenetur. Possimus aliquam dicta error. Eum voluptatum dolores rem blanditiis unde sint.\n\nUt recusandae culpa ducimus eius molestias. Explicabo impedit corporis molestiae. Est cumque nulla est consectetur.\n\nVoluptatem aut magni aliquid repudiandae sint laborum. Sit facilis et culpa aut cupiditate. Non id sequi et provident. Soluta molestiae facilis non repellendus ullam.\n\nEa nam et blanditiis dolores. Aut blanditiis mollitia et rerum inventore rerum. Repellendus quia ut et deserunt architecto rem.\n\nVelit vitae sed ex corrupti sunt sit molestias. Et consequuntur sit id officia maxime quia deleniti. Quos quam architecto eaque temporibus. Ea et et animi qui id quo.\n\nImpedit at non quia omnis temporibus. Quis a rem aliquid autem officia repellat. Quis eos sed et est consequuntur voluptas officiis nulla.\n\nUt repellendus sed placeat qui nam molestiae. Eos dolor ducimus aut ut et quidem consequuntur. Nobis consequatur harum accusamus repudiandae. Minima illum eaque corrupti quisquam quo id.\n\nRerum cum dolor consequuntur aspernatur inventore aliquam quia autem. Molestiae voluptatum sapiente ipsa sed ducimus. Sed hic fugiat dolorem enim in consectetur.\n\nFacilis at vel commodi enim dolor. Quos error occaecati rerum voluptatum consectetur ipsa ducimus. Fugit rem minus omnis repellat.\n\nExpedita fugiat dolores repellat cupiditate ea qui dolorem. Non delectus unde reprehenderit reiciendis optio possimus. Quae consectetur possimus maiores nemo. Exercitationem rem qui quidem dolores odit.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '2006-03-18 06:14:12', NULL),
(43, 1, 1, 'upload/201704/25/201704250929411769.jpg', 'Ut et ratione libero beatae illo quo eum illum eum.', 'Deleniti molestiae dicta consequatur et sed quaerat accusamus aperiam.', 'enim-sit-et-sint-soluta-corporis-porro-in-delectus', 'Accusantium consequatur omnis non nam. Numquam error saepe natus. Ut maiores hic fuga inventore quis assumenda.\n\nLibero autem veniam occaecati aut. Sapiente commodi sit velit qui reiciendis est deleniti. Laudantium quam natus et cupiditate commodi.\n\nFugiat soluta voluptatem est perspiciatis ipsa assumenda rerum. Et doloremque explicabo laborum incidunt vitae odio. Accusamus enim laborum fugit occaecati quis.\n\nVoluptatum nulla non magnam totam sint eaque. Quia magnam in ipsam. Nisi nostrum et magnam voluptatem excepturi. Est sunt aut temporibus quas laborum.\n\nQuia voluptatibus molestias voluptatem voluptatum. Mollitia perferendis quas expedita veritatis impedit ea exercitationem. Velit quam dolore ratione culpa totam aliquam tenetur.\n\nLaudantium sit iste nisi. Pariatur ratione autem laboriosam aut dolorem vel aut. Quam veritatis eos repellendus consectetur praesentium quisquam. Natus quia voluptates dolore et culpa voluptate modi a.\n\nEsse aut rerum inventore molestiae est. Et aut sapiente sed autem reiciendis. Et sed eos temporibus adipisci. Qui est veritatis sed deleniti dolorem dicta libero.\n\nOmnis id nobis reprehenderit sapiente labore. Porro alias sit quo ipsam. Quam quia tenetur officia cumque natus.\n\nSapiente aliquid dolorem enim eligendi. Iusto laudantium molestiae possimus aliquid. Quo eveniet nulla ipsa non ab officiis et illum.\n\nSit fugiat rerum ullam dolor. Rem vero consectetur totam odio. Id dolorem eius quasi ullam cum possimus iusto sed.\n\nQuidem voluptatibus quaerat aut reprehenderit ut qui rerum. A qui ex ducimus molestiae a repudiandae. Doloribus perferendis ratione quis qui perferendis qui odit. Sint magni tempore nam maiores laboriosam soluta.\n\nFacilis atque ullam error ipsam pariatur cumque. Fuga doloremque rem laboriosam voluptatem aut et. Suscipit impedit iure consequatur at.\n\nEnim quo ut libero dolorum et. Sed et ducimus maiores alias odit suscipit amet voluptatem.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '2006-04-06 09:50:29', NULL),
(44, 5, 1, 'upload/201704/25/201704250929411769.jpg', 'Eveniet repellat nulla aliquid nihil rem quidem id sunt.', 'Delectus et saepe ut hic tempora ullam repellendus est laudantium commodi.', 'explicabo-hic-voluptatem-fugiat-consequatur-nemo', 'Quis et aut aut corrupti nihil perferendis. Officiis et qui qui expedita ad quis quisquam. Quae voluptas assumenda est quaerat. Omnis in modi veniam.\n\nDelectus molestias magni dolorem ipsam assumenda aut et. Repudiandae asperiores sapiente soluta. Quae dolor dolore optio omnis voluptates ipsa. Labore aut ipsum quia tempora error hic.\n\nSint qui ut facere magnam. Ab quae eum consequatur vero. Quia est corrupti cupiditate qui ut harum atque.\n\nIpsum ab amet nesciunt reiciendis. Sunt accusantium inventore ipsam quisquam. Sint molestias architecto quam officiis. Itaque velit excepturi minus quia dolores reiciendis deleniti.\n\nA harum quibusdam quis consequatur ut qui quo. Ipsa quaerat atque et asperiores quia. Autem sint id perferendis velit adipisci aut consectetur. Esse provident est dignissimos ut doloremque maxime.\n\nIpsa placeat eveniet quia eveniet ut id nisi. Qui suscipit ut autem ullam similique adipisci. Qui alias distinctio aut labore minus qui ratione.\n\nMagnam ut qui adipisci quia. Atque corporis voluptate unde deleniti.\n\nIusto explicabo quaerat dolor. Beatae at quia sint quia placeat voluptates possimus. Magnam est hic et vero voluptates accusantium quis. Quis consequatur sed aut.\n\nMagnam aliquid cum assumenda modi blanditiis iste. Culpa magni expedita beatae maiores animi totam odit.\n\nVoluptatem quos ratione dolorem est officiis omnis harum voluptates. Quia nostrum placeat officia alias esse doloremque laborum.\n\nFugit voluptatem et veniam enim ad molestiae a. Cumque distinctio vel veniam dolorem aut. Ad impedit et voluptatibus mollitia. Aut ipsum et et.\n\nNesciunt necessitatibus inventore quisquam rerum maiores voluptatem molestias reprehenderit. Consequatur odit asperiores est nisi unde maiores laudantium. Et voluptas sed vel quis odit autem. Non dolor magnam numquam possimus provident modi.\n\nFacilis ea molestiae quis dolor. Commodi adipisci aliquid sit cumque quam nostrum. Libero quasi corporis porro dignissimos harum. Maiores est id non quas quisquam rem rerum.\n\nAlias ut repellat qui placeat ut rerum. Nobis sunt quia reprehenderit voluptatum. Sit inventore molestiae nam eligendi.\n\nEius sapiente perspiciatis voluptatem. Quasi vitae qui optio incidunt aut enim in. Mollitia nulla sed delectus facilis excepturi minus. Suscipit perspiciatis neque ut et alias.\n\nIusto saepe quo sunt sint vero quia suscipit. Ullam sed sint mollitia unde non. Ea nisi laboriosam officiis aut officia.\n\nAsperiores non optio ratione ea rem ullam nihil. Est voluptas est nihil architecto laboriosam minus incidunt tempora. Est suscipit voluptatem delectus qui architecto. Praesentium incidunt ipsum illum non nesciunt in eos.\n\nExcepturi aliquam cum ut necessitatibus quisquam aliquam aut non. Quis incidunt ut consequatur odit fugit delectus harum qui. Ab voluptatum provident ut fugiat aperiam sed. Quia consequuntur pariatur reprehenderit at vel.\n\nQuibusdam ullam laudantium qui nihil. Nulla qui aut labore ut non. Nulla laudantium nisi et voluptatem. Qui ut fuga minima enim nulla nihil soluta.\n\nSapiente et neque voluptatem optio impedit qui provident. Quia qui consequatur quidem dolor. Sit veniam consequuntur voluptas veniam corporis ea id.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1991-09-14 15:53:51', NULL),
(45, 5, 1, 'upload/201704/25/201704250929411769.jpg', 'Porro inventore et omnis et quia eos aliquid reiciendis blanditiis iusto ut quo blanditiis.', 'Excepturi minus veritatis ipsum pariatur rerum.', 'sunt-ipsum-totam-facilis-quis-itaque-aspernatur-soluta', 'Necessitatibus ea autem mollitia a veritatis officiis. Eum hic perspiciatis quas distinctio voluptatem sed tempora. Assumenda fugit et esse et consequatur et a. Ex suscipit voluptatem accusamus.\n\nEst quia praesentium quia veritatis. Tempore esse illo facere et qui sapiente sed.\n\nNon laudantium tenetur ratione officia aperiam architecto rerum. Nisi non a id eos quisquam laboriosam omnis porro. Voluptas molestiae laboriosam rerum dolor minus dolor aut.\n\nLabore optio et voluptatem sunt. Libero quae praesentium eos. Autem laborum eius id est facere. Eius aut adipisci tempora laudantium consequatur.\n\nSoluta quisquam quis ut ex ipsum vero nam. Itaque sit fugiat aperiam minima inventore unde. Alias iure temporibus facere et quos placeat. Quo mollitia culpa dicta voluptate sint est.\n\nRerum dolore earum harum fuga ducimus quibusdam omnis. Deserunt hic unde molestiae culpa.\n\nEaque sed nemo tenetur id ab in. Aut et quisquam similique. Tempora eius alias assumenda modi qui aut facere.\n\nBlanditiis aut veniam sint distinctio deleniti consequatur voluptas. Quia ut at eum non voluptas. Voluptatem animi fugit iure provident perferendis.\n\nAtque commodi placeat et hic. Quis deserunt quo repudiandae. Et qui vitae et beatae aliquam quibusdam dolores. Omnis voluptates omnis quam fugiat aut ex dignissimos.\n\nEnim autem consequatur fuga deleniti. Libero labore et ut doloremque ut sunt. Officia ipsum incidunt rerum itaque sunt distinctio sed.\n\nSunt maiores amet quis optio distinctio qui repellat aperiam. Enim ullam quam a necessitatibus veniam autem asperiores. Ut perferendis libero quo rerum repudiandae qui itaque qui. Pariatur accusamus ad eveniet quis. Quia animi earum qui molestias sed modi.\n\nNatus rerum aut quidem rerum quia. Et soluta ex odit molestias qui repudiandae.\n\nVoluptates dolores et assumenda blanditiis magnam. Rem cupiditate consequatur fugit rerum. Cumque atque possimus voluptas.\n\nRerum ut deleniti ea temporibus officia veritatis soluta. Iure eum suscipit similique optio et soluta. Deserunt enim autem nam consequatur blanditiis dignissimos quis. Sapiente ipsam debitis fuga libero iure perspiciatis.\n\nQuod et aspernatur consequatur et dicta quos. Similique laborum est sed atque. Ipsum occaecati debitis hic praesentium.\n\nVitae aut ipsam inventore qui rerum doloremque porro. Atque ab est voluptates hic velit deserunt omnis. Iusto enim non soluta rerum.\n\nRecusandae enim ab aut magnam. Nam pariatur eum ad consequatur accusamus.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '2001-06-30 09:24:42', NULL),
(46, 5, 1, 'upload/201704/25/201704250929411769.jpg', 'Est blanditiis aut officiis quo mollitia.', 'Aperiam ea expedita vero officia eveniet sit velit incidunt quisquam.', 'eos-soluta-sunt-suscipit-officia-ut-cum-nisi', 'Fuga sed molestiae aut quis totam. Laborum qui quo culpa facilis doloribus. Ipsum fugit sequi id. Magni nisi aperiam nihil.\n\nRerum expedita molestias mollitia magni sed molestiae cupiditate. Ex nesciunt eligendi quos perspiciatis cumque. Perspiciatis blanditiis modi eligendi repudiandae. Reiciendis facilis eum voluptates est aliquam magni quo.\n\nNeque a labore eligendi voluptatum et. Adipisci numquam similique hic corporis molestiae quisquam. Dolore consequatur voluptates facere totam ut voluptatem qui. Nemo quae ut ipsum facere.\n\nAd possimus exercitationem magnam sunt facilis aut doloremque. Nemo odio adipisci earum quibusdam. Minus ea dolorum fugit porro.\n\nRepellat deleniti dolore corporis repellat quia cum. Laborum est qui ut eaque consequatur. Doloribus eius enim sed voluptas est.\n\nQuasi quos ab esse nobis. Ut fuga quia dolore. Hic accusamus sit hic dolorum excepturi.\n\nFugit rerum amet amet voluptas officia vel sed. Incidunt ea labore et et quasi. Alias ut dolores non eveniet facilis quod. Molestiae optio esse aut consequatur asperiores.\n\nSit in nesciunt magnam quia. Ut qui commodi qui tenetur quibusdam et. Provident porro nemo consequatur reiciendis facilis earum est. Dolore qui non totam esse doloribus maiores.\n\nVel magni earum consequatur fugit. Id animi beatae eveniet perferendis voluptates cupiditate. Delectus et porro aperiam distinctio voluptatem qui. Veritatis earum voluptates dicta.\n\nUt officia quasi cupiditate ea. Nobis et culpa officia esse est veritatis nobis. Iste maiores rem minima blanditiis et beatae velit.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1993-02-19 15:37:55', NULL),
(47, 5, 1, 'upload/201704/25/201704250929411769.jpg', 'Molestiae sequi aut explicabo ea harum commodi.', 'Cumque ipsum harum recusandae temporibus earum corrupti.', 'quo-illum-architecto-amet-delectus-voluptatibus-inventore-quae', 'Repudiandae et illum laborum distinctio nisi. Modi dicta beatae perferendis. Quo est aliquid veniam numquam corporis sed. Corrupti sit ea necessitatibus ad incidunt.\n\nConsequatur libero et porro enim enim. Eos harum consequuntur nesciunt eum non dolores.\n\nVoluptas iste aut maxime eos error soluta ea quas. Deserunt voluptatem et explicabo est. Ut minima soluta tenetur et velit exercitationem autem exercitationem. Corporis a deserunt qui. Sit non distinctio cum veritatis earum adipisci ex.\n\nIpsam qui sit aperiam voluptas quidem in corporis facere. Sunt vel veritatis praesentium vero. Quidem reiciendis tempore qui aperiam doloremque. In perspiciatis cum impedit.\n\nSuscipit sequi rerum autem a repellendus aut. Quisquam vitae veritatis ducimus dolor. Aliquam officia neque expedita et architecto. Quia velit deserunt dolorem corporis.\n\nExcepturi consequatur consequatur non et. Reiciendis unde facilis sed placeat eos ea dicta reiciendis. Dolorem magnam ipsa deleniti enim eum. Soluta dolor quis voluptas aut dicta voluptatem deserunt.\n\nDucimus magnam reprehenderit voluptas voluptatem sunt. Ipsa error laudantium est ut aut quam id. Dolores dolorem non tempore sed.\n\nVel dicta enim voluptatem eum possimus nemo odit. In numquam rerum ut rem minima necessitatibus enim. Animi officia quidem ad fugit.\n\nSimilique sit alias sit dolore sit qui commodi. Facere voluptatem qui soluta ea earum ut officiis. Explicabo vitae est maxime et delectus quo vel. Nulla animi repellendus dolor molestias officiis voluptate rerum.\n\nQuod voluptate rerum et possimus nobis similique libero quaerat. Quas blanditiis nihil vero unde ab enim et minima. Nobis accusamus sit nisi dolores libero tempore aut.\n\nA quis modi aut dolores quidem non. Ut expedita deserunt aut tenetur. Reprehenderit similique debitis omnis suscipit qui. Quod repellat fugit culpa doloribus aperiam.\n\nMinus corrupti maiores voluptatem sit quisquam sed. Veritatis velit suscipit aut ut aut laudantium at. Aut perferendis est ea suscipit est. Quae repellendus corrupti praesentium tenetur. Suscipit dolore totam asperiores quaerat voluptatem assumenda ad nemo.\n\nDolorem odio sunt consequatur soluta. Molestiae tenetur quia dolorem non ut. Facere corrupti dignissimos ut sed ipsa et.\n\nPossimus ipsum asperiores vitae ab quisquam sequi repellat deserunt. Et et non qui eum. Possimus hic consectetur reiciendis magni distinctio quo.\n\nCumque quia eveniet odit quasi repellendus quibusdam nihil laborum. Voluptates minima dolor autem eos molestiae debitis. Ut omnis mollitia repellendus iusto et quia. Corrupti dolor et ea.\n\nExercitationem tenetur deleniti enim odio rerum at. Vitae mollitia in nostrum soluta. Quis qui ad facilis esse quibusdam esse.\n\nEsse amet aperiam quis qui a voluptatibus est. Dolores dolore quae doloribus omnis vel corrupti. Autem ducimus eius soluta neque omnis voluptates adipisci.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1978-01-29 19:12:33', NULL),
(48, 5, 1, 'upload/201704/25/201704250929411769.jpg', 'Autem itaque tempore hic aperiam quis velit corrupti quae asperiores.', 'Assumenda non dignissimos ratione at nihil.', 'explicabo-nihil-est-veniam-quia-nulla-iste', 'Labore vel maiores quo dolore qui vitae. Voluptates dolores iste accusamus corrupti. Nihil odit qui quidem non.\n\nMaiores autem dolorem at. Veritatis ut porro deleniti quas molestias omnis. Minima aut fugit sed iure voluptates. Labore quisquam debitis aperiam nemo sunt magni aliquid dolores. Maxime dolor quis rem itaque libero.\n\nProvident laudantium porro repudiandae voluptas unde doloribus. Velit a et reprehenderit fugit. Aut quos quidem pariatur velit deleniti quasi temporibus. Qui porro illum quia modi delectus sed eius. Quas cumque ex aut iusto voluptatem.\n\nQui nulla autem possimus quae quaerat unde repellat ea. Et non recusandae soluta vitae delectus. Labore aliquam quia reprehenderit vero. Labore explicabo eius quo facilis quo iste sed.\n\nQuo debitis nisi cumque consequuntur quos praesentium. Quasi architecto porro totam voluptates magnam ad. Adipisci ad excepturi voluptates cum recusandae dicta. Nam quod optio ut vero.\n\nCorporis ab est iure exercitationem. Ut ratione reprehenderit dolorum eum nobis aliquam. Accusantium eos et sint in. Autem temporibus asperiores consectetur cum aut.\n\nQui veritatis quisquam eum rem quia ipsa rerum. Facilis animi sit distinctio. Iste nam tenetur et rerum vero voluptatem. Sed et minima et ipsam libero totam.\n\nQuod tempora facilis accusamus molestiae velit libero velit impedit. Dicta dolores ullam beatae ea nihil. Laudantium consequatur nam ea praesentium illum. Aliquam dolorum iure consequatur omnis.\n\nMaiores qui non cum sit quod dicta. Praesentium excepturi est beatae atque. Quo enim quidem voluptatibus nisi exercitationem architecto.\n\nHarum quisquam amet totam eius expedita. Ut velit quaerat recusandae velit. Aperiam placeat rem dolor dolor. Est doloremque itaque magnam aut.\n\nError quis sed aperiam. Dolor aliquam voluptatem blanditiis quia illo libero. Et corrupti incidunt temporibus impedit rerum temporibus quia.\n\nPariatur est porro provident sit aperiam. Provident libero aut commodi unde dolore voluptas fugit. Et quod doloribus ea corrupti at veniam.\n\nSed necessitatibus earum maiores. Est et qui distinctio nobis reprehenderit quos.\n\nUllam molestias doloribus nulla quas. Voluptatem eum sunt soluta repudiandae ea sit. Dolorum dolorem quia exercitationem quia soluta autem.\n\nFacilis nam explicabo ut totam. Enim nam magni perspiciatis error quidem. Aut non aut est animi officia eos voluptatem.\n\nPerferendis impedit ea ipsa quae. In suscipit molestiae voluptatem non velit. Facilis aperiam fuga reprehenderit eos sequi. Quisquam possimus sed omnis quis esse voluptas quibusdam.\n\nDolor sit ratione iusto et rerum sapiente. Deleniti aut dolores non esse quas. Incidunt cupiditate sunt necessitatibus cupiditate.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1986-06-28 17:01:10', NULL),
(49, 5, 1, 'upload/201704/25/201704250929411769.jpg', 'Ea nisi nam ipsam dignissimos non.', 'Et culpa officiis provident quisquam ea illum sunt nihil.', 'et-quaerat-aut-sunt-possimus-repudiandae-ipsa-ipsam-veritatis', 'Et temporibus totam eos repudiandae. Aliquam quis eveniet quibusdam occaecati autem velit. Tempora non asperiores in non dignissimos.\n\nAliquam dignissimos aspernatur sint reprehenderit et impedit. Tempore culpa consequuntur doloribus nesciunt.\n\nAssumenda voluptatem commodi quod quia. Laboriosam quaerat occaecati occaecati. Omnis est consequatur soluta soluta inventore.\n\nOdio minima numquam nulla eos ipsam. Quis reiciendis eligendi quo enim dolor. Consequatur est magnam quibusdam maxime aut inventore aliquid.\n\nId nam sunt esse fuga ut sint ut. Aut repellendus tenetur est tempora quia dicta quia.\n\nDolore molestias iure nostrum omnis animi sint laborum. Nesciunt ut quae voluptatem non. Voluptate molestiae iusto vel. Rerum saepe et et perferendis voluptate.\n\nOccaecati reiciendis molestiae et accusamus. Quia dolores natus pariatur voluptatem voluptatem neque temporibus consequatur. Adipisci odio non quas aperiam nihil aut quia. Vel adipisci necessitatibus sint laborum in.\n\nTenetur quo velit libero omnis molestiae laborum quibusdam. Assumenda eum eos id repudiandae. Possimus nostrum dolores rerum nesciunt. Laboriosam reprehenderit alias quo autem quam voluptate qui voluptatem.\n\nCorporis iure molestiae neque velit doloremque labore. Maiores voluptatibus in quasi ut labore a. Suscipit eaque aut ea nobis et aperiam.\n\nAnimi sed laboriosam voluptatem necessitatibus aut delectus. Esse qui optio consectetur repudiandae ea ipsa.\n\nAtque eum deserunt eos quo exercitationem deserunt. Esse et corporis corrupti saepe et veniam consequatur. Hic in qui consectetur quia nulla quidem culpa. Debitis facere aut qui qui eligendi odio enim.\n\nRerum et nihil aperiam quia qui omnis ex. Aliquam vel sit et vero. Tempore perferendis voluptates qui consequatur aut.\n\nIure sit beatae est. Enim ut occaecati impedit pariatur incidunt enim ad. Dicta architecto placeat aut distinctio magni. Labore iusto voluptatem est tempore error.\n\nVoluptatem ut voluptate occaecati nemo similique. Pariatur illum ipsa voluptatum ipsam reiciendis. Tempore nisi eveniet commodi amet. Nihil et autem consectetur aut.\n\nUllam exercitationem occaecati expedita accusantium veritatis aliquam rerum consequatur. Est voluptatem qui nihil numquam magnam. Voluptatem voluptas aut dolor necessitatibus.\n\nDolores reiciendis labore et in quod aut. Odit consequatur totam nisi eum. Doloribus quisquam commodi laudantium id consequatur. Non numquam error molestiae voluptatem.\n\nAmet nulla atque aut nobis culpa rerum qui. Tempora tenetur quis molestias. Et ex ex omnis.\n\nDelectus debitis sed et. Occaecati eos non vel quo. Eum vitae possimus eum expedita accusantium corrupti temporibus cumque. Velit distinctio eum est reprehenderit.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1988-02-03 12:23:48', NULL),
(50, 5, 1, 'upload/201704/25/201704250929411769.jpg', 'Incidunt architecto odit atque sint.', 'Perspiciatis placeat soluta tempore et reiciendis quos non veritatis illo.', 'pariatur-dicta-ut-ut-ut-asperiores', 'Aut occaecati harum quo iste. Voluptatem tempore optio voluptatibus ad deserunt. Sed et ad ut maiores architecto.\n\nMolestias tempora nihil numquam ratione. Ea beatae vel consequatur et. Ea et voluptas quia sunt. Sequi sit cumque in suscipit laboriosam ut. Molestiae vel accusantium asperiores voluptatibus unde dolorem.\n\nIure et maiores reiciendis ex. Quo quisquam rerum odit nemo qui aliquam qui. Sunt repudiandae eius quo.\n\nMagnam voluptas ad doloremque et quisquam quaerat aliquid quo. Sed nulla hic dolorum placeat quisquam. Assumenda odio dolor hic repudiandae odio. Est rerum officia fuga aspernatur cumque dicta beatae.\n\nQuia consequatur dolorem error qui. Ut quis reiciendis fuga iusto. Ut aut et unde adipisci. Sequi ipsa deserunt consequatur.\n\nVelit voluptates maiores qui eaque. Quasi quam tenetur eius est. Minima qui ullam nesciunt odit voluptates iure. Est quidem iure id in praesentium distinctio eveniet.\n\nCommodi itaque iste qui velit porro. Voluptas hic sit aut voluptatem et qui est. Nihil quia dolorum et sed.\n\nSed enim incidunt quaerat sapiente non. Dignissimos et mollitia fugiat dolorem quis iure nesciunt.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1987-05-10 04:31:57', NULL),
(51, 5, 1, 'upload/201704/25/201704250929411769.jpg', 'Aperiam sit optio incidunt est ipsam pariatur amet et fugiat iusto praesentium praesentium.', 'Aliquid aliquam est saepe omnis eveniet distinctio porro saepe et omnis qui iure est.', 'optio-asperiores-voluptas-dolore-et-dignissimos-nisi-explicabo-dolorum', 'Dolor quisquam reprehenderit temporibus sunt. Labore sapiente quo dolores non in in. Maxime molestiae ipsa dolor aliquid ducimus nisi. Perspiciatis cum in laborum provident.\n\nExplicabo perspiciatis sint adipisci voluptatem ex labore molestias. Eos accusantium iusto quisquam neque ab et. Aliquam quasi vel rerum vel nostrum omnis magnam. Repellendus accusamus est molestias et.\n\nReprehenderit consequuntur est est rerum atque. Ipsum quo veniam sit dolore voluptas est aut tempora. Quia molestias nemo et consequatur voluptatum cum quia. Aspernatur earum dolore sunt voluptas laboriosam et eos.\n\nDolorem sint quis ipsum dolores. Possimus incidunt in eaque provident quia. Quia ducimus saepe molestiae in nihil optio.\n\nLaudantium rem perspiciatis qui fugit expedita. Perspiciatis earum quasi commodi adipisci. Sit et et commodi dolores itaque distinctio voluptatum. Non aspernatur in praesentium accusantium et.\n\nIllum quam et non atque iure quo et. Qui qui repellendus voluptatem et magnam hic.\n\nEx odio vitae labore eligendi sed eveniet. Ipsa fugiat eveniet consectetur optio. Vero tenetur aut eum rerum.\n\nSit voluptas sit reiciendis. Sed quisquam omnis voluptates odit hic officiis corrupti. Praesentium porro adipisci necessitatibus consectetur ex. Voluptates et eveniet omnis sapiente.\n\nRepudiandae dicta deserunt minima repellendus. Sed veritatis reiciendis repellendus sequi pariatur sed aut sed. Quo error est reiciendis doloremque autem exercitationem.\n\nId modi sint non animi voluptatibus temporibus. Cum tempore repellendus sed doloribus sed veritatis culpa excepturi. Alias esse quos at rerum id.\n\nEt laboriosam voluptatem in suscipit quaerat adipisci alias. Id sint et et et. Aut praesentium sunt sint voluptatum placeat.\n\nOccaecati cupiditate eos accusantium. Velit tempore occaecati excepturi repellat sit. Dicta aperiam error incidunt voluptas omnis.\n\nMagni ut quod fugiat et et inventore. Eos quo id perferendis non exercitationem voluptas. Quod minus dolores praesentium enim.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1984-09-29 02:32:22', NULL),
(52, 5, 1, 'upload/201704/25/201704250929411769.jpg', 'Porro excepturi iste in at.', 'Quia quia qui facere iusto et in tempora quam qui est sunt voluptate et cum qui quia.', 'voluptates-modi-reiciendis-autem-voluptatem-ex-incidunt', 'Saepe saepe est doloribus harum laboriosam neque. Voluptatem earum sit minus et.\n\nRepellat necessitatibus quasi reprehenderit et. Nemo tempore nostrum est voluptates odit. Natus est delectus aut ullam enim sint molestiae.\n\nHarum qui id quod eius labore tempora. Ipsum non et aspernatur a est corrupti sunt. Aspernatur enim earum provident sunt quia non.\n\nAperiam nostrum suscipit nesciunt. Et quidem explicabo quidem vel. Nobis autem reprehenderit corporis ea veritatis repudiandae dolorem.\n\nQuod tempore dolorem dolores voluptatem velit veritatis. Nemo temporibus recusandae et error nulla. Repellat quia eveniet consequuntur officia. Ratione dolor ipsum mollitia eos.\n\nNecessitatibus ut assumenda porro cupiditate fugiat. Voluptatem mollitia quidem odio voluptatibus sapiente perspiciatis libero. Vitae minima sint molestiae impedit eos. Cumque officiis non iusto aut aliquam laborum.\n\nEligendi earum sunt ut velit et. Amet unde mollitia unde dicta explicabo corrupti.\n\nDoloribus sit voluptas beatae. Eligendi quae fuga provident voluptas. Maxime perspiciatis est reprehenderit ut fuga qui. Aut est dignissimos illo dolores totam provident.\n\nSit illo vero sint sunt voluptatibus quas. Inventore a quod vel et. Quia tempore veniam dolores quia cum error. Enim aut cumque aliquam odio veritatis.\n\nOmnis ut vitae quia voluptatem architecto maiores velit et. Inventore vero voluptatum sint et quia vero rerum. Qui consectetur ea facilis quis. Nam autem numquam in sint deserunt.\n\nTempora neque aspernatur assumenda. Et nihil consequuntur magni iure voluptatem quo vero. Repudiandae molestiae necessitatibus sed.\n\nError possimus ut blanditiis molestiae blanditiis. Aut et perferendis accusantium voluptatem nam et dolore sit. Delectus saepe quia velit vel.\n\nSimilique eveniet ipsam officia beatae occaecati. Ipsa in consectetur quas omnis ea et veritatis sequi. Atque rerum voluptatibus voluptatem molestiae at voluptates et. Neque explicabo laboriosam eaque fuga et.', 1, 0, '2017-05-27 06:32:12', '2017-05-27 06:32:12', '1988-06-27 14:08:50', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(1, 2),
(1, 5),
(1, 7),
(2, 2),
(2, 3),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(4, 6),
(4, 8),
(5, 8),
(6, 2),
(7, 5),
(7, 10),
(8, 3),
(8, 9),
(8, 10),
(9, 3),
(10, 4),
(10, 8),
(10, 10),
(11, 4),
(11, 5),
(11, 8),
(12, 5),
(12, 6),
(12, 7),
(13, 5),
(13, 9),
(14, 5),
(15, 7),
(16, 10),
(17, 5),
(17, 8),
(18, 2),
(18, 4),
(18, 10),
(19, 8),
(19, 10),
(20, 2),
(20, 5),
(21, 4),
(21, 8),
(22, 2),
(22, 10),
(23, 3),
(23, 4),
(23, 9),
(24, 2),
(25, 6),
(25, 7),
(25, 8),
(26, 4),
(26, 7),
(26, 8),
(27, 10),
(28, 6),
(28, 7),
(28, 9),
(29, 3),
(29, 4),
(30, 2),
(30, 5),
(31, 5),
(32, 3),
(32, 5),
(33, 8),
(34, 3),
(34, 4),
(35, 8),
(35, 10),
(36, 8),
(36, 10),
(37, 2),
(37, 3),
(38, 5),
(39, 4),
(39, 5),
(39, 10),
(40, 10),
(41, 3),
(41, 4),
(41, 6),
(42, 4),
(42, 5),
(42, 6),
(43, 9),
(44, 5),
(44, 7),
(44, 10),
(45, 7),
(45, 9),
(46, 3),
(46, 6),
(46, 7),
(47, 3),
(47, 4),
(47, 5),
(48, 5),
(48, 7),
(49, 2),
(49, 6),
(50, 5),
(51, 3),
(51, 6),
(51, 7),
(52, 2),
(52, 3),
(52, 10);

-- --------------------------------------------------------

--
-- 表的结构 `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'I7ODa8D'),
(2, '2017-05-27 06:32:10', '2017-05-27 06:32:10', '4Wtkn2G'),
(3, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'I5kRb7p'),
(4, '2017-05-27 06:32:10', '2017-05-27 06:32:10', '2Chnovg'),
(5, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'lpnC1Jn'),
(6, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'RGmdZy6'),
(7, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'qn38KVU'),
(8, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'mMTjmjk'),
(9, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'nt3mm8j'),
(10, '2017-05-27 06:32:10', '2017-05-27 06:32:10', 'NyfTl9f'),
(11, '2017-06-09 04:20:11', '2017-06-09 04:20:24', 'ergfd');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `register_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'web_form',
  `github_id` int(11) DEFAULT NULL,
  `github_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `real_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8_unicode_ci,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `register_from`, `github_id`, `github_name`, `website`, `real_name`, `description`, `meta`, `avatar`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'guo', '164445438@qq.com', '$2y$10$FkTHIRMWCewuucVhG72G.emO3U657p8JB2JChDFVinXGXKl0HP3Si', 'web_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-27 06:36:20', '2017-05-27 06:36:20'),
(2, 'Bobby Purdy', 'jsenger@example.com', '$2y$10$8/7QQGr9pkfOKlQB41uodOte3gEjh0NwD95OuogzTw0bAk6DK6iJm', 'web_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AeE23KQ9x2', '2017-05-27 06:32:10', '2017-05-27 06:32:10'),
(3, 'Mortimer Mertz', 'raquel46@example.net', '$2y$10$vvsSiT.uGFdzV2Za0jS2qeK5O9lERDrxUbzFNZT.Czlp3CXLlBe32', 'web_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'X7Ny73PmSa', '2017-05-27 06:32:10', '2017-05-27 06:32:10'),
(4, 'Darrell Von DDS', 'marjorie.carroll@example.net', '$2y$10$tmCknb712g4pP0VEhDklFOjElOMrCh45TktKTzVb8NtznTJrwHGr2', 'web_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wDu8kz8CnO', '2017-05-27 06:32:10', '2017-05-27 06:32:10'),
(5, 'Prof. Deangelo Smitham', 'clarabelle06@example.org', '$2y$10$nH51288f574iHYqAADx7zuaNckhF/A0kXj5i5YnMZj/Ck0MTKuGJS', 'web_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JM4cU0XQmq', '2017-05-27 06:32:10', '2017-05-27 06:32:10'),
(6, 'Kacie Kuhic', 'sterling12@example.org', '$2y$10$ap9M6GjV6eL.6XPoM7agOOy5PjmKC/7wHaqHCR5QzykGOdCtc4pJW', 'web_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'xmCDPMlBj4', '2017-05-27 06:32:10', '2017-05-27 06:32:10'),
(7, 'Craig Bartoletti', 'osborne47@example.net', '$2y$10$4/H6BfPoUhHpoxUuOCCcvu4MwX8ug/FVlrT3xBO2gjxvszkp2fr8e', 'web_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'QERYlmA8Ix', '2017-05-27 06:32:10', '2017-05-27 06:32:10'),
(8, 'Alfonso Zulauf', 'ignatius46@example.net', '$2y$10$cl6Fy99ulOVmLTCbIvmnt.jXFklfPAYWUnYXSF.AS7QOrgaA1T5HO', 'web_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'IYVzDwGwnh', '2017-05-27 06:32:11', '2017-05-27 06:32:11'),
(9, 'Bud Zemlak', 'breitenberg.brielle@example.com', '$2y$10$6xT3HDmeYUmjK15pRh0w/.L1NaKwQ6TsSsB7i3mbXIPBry1yxa/ly', 'web_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ewTvHY0zvp', '2017-05-27 06:32:11', '2017-05-27 06:32:11'),
(10, 'Edgardo Kautzer PhD', 'sheridan86@example.com', '$2y$10$yuud6trdwhPT9Vf1XlOaT.AmI8ZGmIIVURZ5e6e42OlEBxj/DU07G', 'web_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pXPaiJMKZ1', '2017-05-27 06:32:11', '2017-05-27 06:32:11'),
(12, 'Dr. Riley Brekke', 'justyn26@example.net', '$2y$10$v0MZVP8lH.KYsSpFSe9trOsEKoI0bfRvJTiWiQyiUQMYzRbOCAgA.', 'web_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BxLXNQqpFp', '2017-05-27 06:32:10', '2017-05-27 06:32:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_id_index` (`commentable_id`),
  ADD KEY `comments_commentable_type_index` (`commentable_type`),
  ADD KEY `comments_ip_id_index` (`ip_id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_name_unique` (`name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_index` (`category_id`),
  ADD KEY `posts_published_at_index` (`published_at`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_register_from_index` (`register_from`),
  ADD KEY `users_github_id_index` (`github_id`),
  ADD KEY `users_github_name_index` (`github_name`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=696;
--
-- 使用表AUTO_INCREMENT `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- 使用表AUTO_INCREMENT `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
