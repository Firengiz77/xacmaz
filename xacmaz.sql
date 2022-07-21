-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3307
-- Üretim Zamanı: 21 Tem 2022, 15:15:42
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `xacmaz`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instalink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fblink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contacts`
--

INSERT INTO `contacts` (`id`, `phone1`, `phone2`, `email`, `instalink`, `fblink`, `created_at`, `updated_at`) VALUES
(1, '+994 50 123 45 67', '+994 70 123 45 67', 'info@xacmazagro.az', 'info@xacmazagro.az', 'info@xacmazagro.az', '2022-07-21 02:19:41', '2022-07-21 02:19:41');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'desc', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'link', 'text', 'Link', 1, 0, 1, 1, 1, 1, '{}', 4),
(26, 4, 'image', 'image', 'Image', 1, 0, 1, 1, 1, 1, '{}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'phone1', 'text', 'Phone 1', 1, 1, 1, 1, 1, 1, '{}', 2),
(31, 5, 'phone2', 'text', 'Phone 2', 1, 1, 1, 1, 1, 1, '{}', 3),
(32, 5, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'instalink', 'text', 'Instalink', 1, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'fblink', 'text', 'Fblink', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(36, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(37, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 6, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(39, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(40, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(41, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(42, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(43, 8, 'desc', 'rich_text_box', 'Desc', 1, 0, 1, 1, 1, 1, '{}', 3),
(44, 8, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(45, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(46, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(47, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(48, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(49, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(50, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(51, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 10, 'type_id', 'text', 'Gallery Type', 1, 1, 1, 1, 1, 1, '{}', 2),
(53, 10, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 5),
(54, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 4),
(55, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(56, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(57, 10, 'gallery_belongsto_gallery_type_relationship', 'relationship', 'gallery_types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\GalleryType\",\"table\":\"gallery_types\",\"type\":\"belongsTo\",\"column\":\"type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"contacts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(58, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(59, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(60, 11, 'desc', 'rich_text_box', 'Desc', 1, 0, 1, 1, 1, 1, '{}', 3),
(61, 11, 'salary', 'text', 'Salary', 1, 0, 1, 1, 1, 1, '{}', 4),
(62, 11, 'end_date', 'text', 'End Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(63, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(64, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-07-21 02:01:36', '2022-07-21 02:01:36'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-07-21 02:01:36', '2022-07-21 02:01:36'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-07-21 02:01:36', '2022-07-21 02:01:36'),
(4, 'sliders', 'sliders', 'Slider', 'Sliders', NULL, 'App\\Models\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-21 02:11:33', '2022-07-21 02:12:00'),
(5, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-07-21 02:19:19', '2022-07-21 02:19:19'),
(6, 'partners', 'partners', 'Partner', 'Partners', NULL, 'App\\Models\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-07-21 02:21:41', '2022-07-21 02:21:41'),
(8, 'news', 'news', 'News', 'News', NULL, 'App\\Models\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-21 02:26:40', '2022-07-21 02:28:20'),
(9, 'gallery_types', 'gallery-types', 'Gallery Type', 'Gallery Types', NULL, 'App\\Models\\GalleryType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-07-21 02:37:27', '2022-07-21 02:37:27'),
(10, 'galleries', 'galleries', 'Gallery', 'Galleries', NULL, 'App\\Models\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-21 02:39:20', '2022-07-21 02:41:28'),
(11, 'vacancies', 'vacancies', 'Vacancy', 'Vacancies', NULL, 'App\\Models\\Vacancy', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-07-21 02:53:00', '2022-07-21 02:53:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `galleries`
--

INSERT INTO `galleries` (`id`, `type_id`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'galleries\\July2022\\ilSSgNKuWiQpDpIClbGn.jpg', '2022-07-21 02:41:00', '2022-07-21 04:00:43'),
(2, 1, NULL, 'galleries\\July2022\\GdkiNBxMaxwFM12b9Zqg.png', '2022-07-21 02:41:00', '2022-07-21 04:00:53'),
(3, 1, NULL, 'galleries\\July2022\\58qBWZeN26gxXIbRArgP.png', '2022-07-21 02:41:00', '2022-07-21 04:01:01'),
(4, 1, NULL, 'galleries\\July2022\\PEXAibp6nwddf9Fu36al.jpg', '2022-07-21 02:42:00', '2022-07-21 04:01:17'),
(5, 1, NULL, 'galleries\\July2022\\WEz8mmFhNq0kFYevtEJW.png', '2022-07-21 02:42:00', '2022-07-21 04:01:09'),
(6, 2, 'video_link_1', NULL, '2022-07-21 02:42:57', '2022-07-21 02:42:57'),
(7, 2, 'video_link_2', NULL, '2022-07-21 02:43:03', '2022-07-21 02:43:03'),
(8, 2, 'video_link_3', NULL, '2022-07-21 02:43:08', '2022-07-21 02:43:08');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gallery_types`
--

CREATE TABLE `gallery_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `gallery_types`
--

INSERT INTO `gallery_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fotoqalereya', '2022-07-21 02:37:45', '2022-07-21 02:37:45'),
(2, 'Videoqalereya', '2022-07-21 02:37:56', '2022-07-21 02:37:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-07-21 02:01:37', '2022-07-21 02:01:37');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-07-21 02:01:37', '2022-07-21 02:01:37', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2022-07-21 02:01:37', '2022-07-21 02:01:37', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-07-21 02:01:37', '2022-07-21 02:01:37', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-07-21 02:01:37', '2022-07-21 02:01:37', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-07-21 02:01:37', '2022-07-21 02:01:37', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2022-07-21 02:01:37', '2022-07-21 02:01:37', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2022-07-21 02:01:37', '2022-07-21 02:01:37', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2022-07-21 02:01:37', '2022-07-21 02:01:37', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2022-07-21 02:01:37', '2022-07-21 02:01:37', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2022-07-21 02:01:37', '2022-07-21 02:01:37', 'voyager.settings.index', NULL),
(11, 1, 'Sliders', '', '_self', 'voyager-photo', '#a067e4', NULL, 15, '2022-07-21 02:11:33', '2022-07-21 03:37:55', 'voyager.sliders.index', 'null'),
(12, 1, 'Contacts', '', '_self', 'voyager-telephone', '#a067e4', NULL, 16, '2022-07-21 02:19:19', '2022-07-21 03:35:57', 'voyager.contacts.index', 'null'),
(13, 1, 'Partners', '', '_self', 'voyager-person', '#a067e4', NULL, 17, '2022-07-21 02:21:41', '2022-07-21 03:36:11', 'voyager.partners.index', 'null'),
(14, 1, 'News', '', '_self', 'voyager-tv', '#a067e4', NULL, 18, '2022-07-21 02:26:40', '2022-07-21 03:36:39', 'voyager.news.index', 'null'),
(15, 1, 'Gallery Types', '', '_self', 'voyager-play', '#a067e4', NULL, 19, '2022-07-21 02:37:27', '2022-07-21 03:36:56', 'voyager.gallery-types.index', 'null'),
(16, 1, 'Galleries', '', '_self', 'voyager-images', '#a067e4', NULL, 20, '2022-07-21 02:39:20', '2022-07-21 03:37:11', 'voyager.galleries.index', 'null'),
(17, 1, 'Vacancies', '', '_self', 'voyager-cloud-download', '#a067e4', NULL, 21, '2022-07-21 02:53:00', '2022-07-21 03:37:37', 'voyager.vacancies.index', 'null');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msj` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2022_07_21_060407_create_sliders_table', 2),
(26, '2022_07_21_061413_create_contacts_table', 3),
(27, '2022_07_21_062038_create_partners_table', 4),
(28, '2022_07_21_062323_create_news_table', 5),
(29, '2022_07_21_063603_create_gallery_types_table', 6),
(30, '2022_07_21_063813_create_galleries_table', 7),
(31, '2022_07_21_064536_create_vacancies_table', 8),
(32, '2022_07_21_074450_create_messages_table', 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `title`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', 'news\\July2022\\DtAHdoufi05V283rhIpQ.jpg', '2022-07-21 02:29:00', '2022-07-21 04:00:00'),
(2, 'Lorem Ipsum is simply dummy text of the printing', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', 'news\\July2022\\RTp5jUr0xxHso5KxslRk.jpg', '2022-07-21 02:29:00', '2022-07-21 04:00:07'),
(3, 'Lorem Ipsum is simply dummy text of the printing', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', 'news\\July2022\\22pFCed7gdLVIbFNfotg.jpg', '2022-07-21 02:30:00', '2022-07-21 04:00:14'),
(4, 'Lorem Ipsum is simply dummy text of the printing', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', 'news\\July2022\\JXKztjUFUp7IbO6Cov06.jpg', '2022-07-21 02:30:00', '2022-07-21 04:00:23'),
(5, 'Lorem Ipsum is simply dummy text of the printing', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', 'news\\July2022\\9fzqjz9I0hxc0Nm8B70i.jpg', '2022-07-21 02:30:00', '2022-07-21 04:00:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `partners`
--

INSERT INTO `partners` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'partners\\July2022\\V7B5vtTkAxaJVIaUEtxG.jpg', '2022-07-21 02:22:00', '2022-07-21 03:59:19'),
(2, 'partners\\July2022\\nIghU1OwYe5ksyNozbAd.jpg', '2022-07-21 02:22:00', '2022-07-21 03:59:26'),
(3, 'partners\\July2022\\yB21YbuOQuZfBo9CeAZS.jpg', '2022-07-21 02:22:00', '2022-07-21 03:59:33'),
(4, 'partners\\July2022\\ajLODFua5ldVFX0N8t0E.jpg', '2022-07-21 02:22:00', '2022-07-21 03:59:40'),
(5, 'partners\\July2022\\Y5aBtlgFRP8x4ZBVgslM.jpg', '2022-07-21 02:22:00', '2022-07-21 03:59:48');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(2, 'browse_bread', NULL, '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(3, 'browse_database', NULL, '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(4, 'browse_media', NULL, '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(5, 'browse_compass', NULL, '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(6, 'browse_menus', 'menus', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(7, 'read_menus', 'menus', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(8, 'edit_menus', 'menus', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(9, 'add_menus', 'menus', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(10, 'delete_menus', 'menus', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(11, 'browse_roles', 'roles', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(12, 'read_roles', 'roles', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(13, 'edit_roles', 'roles', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(14, 'add_roles', 'roles', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(15, 'delete_roles', 'roles', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(16, 'browse_users', 'users', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(17, 'read_users', 'users', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(18, 'edit_users', 'users', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(19, 'add_users', 'users', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(20, 'delete_users', 'users', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(21, 'browse_settings', 'settings', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(22, 'read_settings', 'settings', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(23, 'edit_settings', 'settings', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(24, 'add_settings', 'settings', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(25, 'delete_settings', 'settings', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(26, 'browse_sliders', 'sliders', '2022-07-21 02:11:33', '2022-07-21 02:11:33'),
(27, 'read_sliders', 'sliders', '2022-07-21 02:11:33', '2022-07-21 02:11:33'),
(28, 'edit_sliders', 'sliders', '2022-07-21 02:11:33', '2022-07-21 02:11:33'),
(29, 'add_sliders', 'sliders', '2022-07-21 02:11:33', '2022-07-21 02:11:33'),
(30, 'delete_sliders', 'sliders', '2022-07-21 02:11:33', '2022-07-21 02:11:33'),
(31, 'browse_contacts', 'contacts', '2022-07-21 02:19:19', '2022-07-21 02:19:19'),
(32, 'read_contacts', 'contacts', '2022-07-21 02:19:19', '2022-07-21 02:19:19'),
(33, 'edit_contacts', 'contacts', '2022-07-21 02:19:19', '2022-07-21 02:19:19'),
(34, 'add_contacts', 'contacts', '2022-07-21 02:19:19', '2022-07-21 02:19:19'),
(35, 'delete_contacts', 'contacts', '2022-07-21 02:19:19', '2022-07-21 02:19:19'),
(36, 'browse_partners', 'partners', '2022-07-21 02:21:41', '2022-07-21 02:21:41'),
(37, 'read_partners', 'partners', '2022-07-21 02:21:41', '2022-07-21 02:21:41'),
(38, 'edit_partners', 'partners', '2022-07-21 02:21:41', '2022-07-21 02:21:41'),
(39, 'add_partners', 'partners', '2022-07-21 02:21:41', '2022-07-21 02:21:41'),
(40, 'delete_partners', 'partners', '2022-07-21 02:21:41', '2022-07-21 02:21:41'),
(41, 'browse_news', 'news', '2022-07-21 02:26:40', '2022-07-21 02:26:40'),
(42, 'read_news', 'news', '2022-07-21 02:26:40', '2022-07-21 02:26:40'),
(43, 'edit_news', 'news', '2022-07-21 02:26:40', '2022-07-21 02:26:40'),
(44, 'add_news', 'news', '2022-07-21 02:26:40', '2022-07-21 02:26:40'),
(45, 'delete_news', 'news', '2022-07-21 02:26:40', '2022-07-21 02:26:40'),
(46, 'browse_gallery_types', 'gallery_types', '2022-07-21 02:37:27', '2022-07-21 02:37:27'),
(47, 'read_gallery_types', 'gallery_types', '2022-07-21 02:37:27', '2022-07-21 02:37:27'),
(48, 'edit_gallery_types', 'gallery_types', '2022-07-21 02:37:27', '2022-07-21 02:37:27'),
(49, 'add_gallery_types', 'gallery_types', '2022-07-21 02:37:27', '2022-07-21 02:37:27'),
(50, 'delete_gallery_types', 'gallery_types', '2022-07-21 02:37:27', '2022-07-21 02:37:27'),
(51, 'browse_galleries', 'galleries', '2022-07-21 02:39:20', '2022-07-21 02:39:20'),
(52, 'read_galleries', 'galleries', '2022-07-21 02:39:20', '2022-07-21 02:39:20'),
(53, 'edit_galleries', 'galleries', '2022-07-21 02:39:20', '2022-07-21 02:39:20'),
(54, 'add_galleries', 'galleries', '2022-07-21 02:39:20', '2022-07-21 02:39:20'),
(55, 'delete_galleries', 'galleries', '2022-07-21 02:39:20', '2022-07-21 02:39:20'),
(56, 'browse_vacancies', 'vacancies', '2022-07-21 02:53:00', '2022-07-21 02:53:00'),
(57, 'read_vacancies', 'vacancies', '2022-07-21 02:53:00', '2022-07-21 02:53:00'),
(58, 'edit_vacancies', 'vacancies', '2022-07-21 02:53:00', '2022-07-21 02:53:00'),
(59, 'add_vacancies', 'vacancies', '2022-07-21 02:53:00', '2022-07-21 02:53:00'),
(60, 'delete_vacancies', 'vacancies', '2022-07-21 02:53:00', '2022-07-21 02:53:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-07-21 02:01:37', '2022-07-21 02:01:37'),
(2, 'user', 'Normal User', '2022-07-21 02:01:37', '2022-07-21 02:01:37');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Xaçmaz Aqro', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Xaçmaz Aqro', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\July2022\\3KAIlRBEptQ3ZhWOBEyF.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\July2022\\T3IGnphBtxcopogykM0A.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Xaçmaz Aqro', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Xaçmaz Aqro\'s Admin Panel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\July2022\\Mke7fudkApTLaIQbmsPg.jpg', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\July2022\\yqhsAxAS7E7T1rNYZqyP.jpg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `desc`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Məhsullar', 'Biz aqrobiznes kommunikasiyaları ilə məşğul oluruq', 'link', 'sliders\\July2022\\Ph2sUpcxRl6kkVBhZ7rk.jpg', '2022-07-21 02:12:00', '2022-07-21 03:58:34'),
(2, 'Məhsullar', 'Biz aqrobiznes kommunikasiyaları ilə məşğul oluruq', 'link', 'sliders\\July2022\\gr131OS0Li317HPmE6LU.jpg', '2022-07-21 02:13:00', '2022-07-21 03:59:07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_rows', 'display_name', 22, 'en', 'Id', '2022-07-21 02:12:00', '2022-07-21 02:12:00'),
(2, 'data_rows', 'display_name', 23, 'en', 'Title', '2022-07-21 02:12:00', '2022-07-21 02:12:00'),
(3, 'data_rows', 'display_name', 24, 'en', 'Desc', '2022-07-21 02:12:00', '2022-07-21 02:12:00'),
(4, 'data_rows', 'display_name', 25, 'en', 'Link', '2022-07-21 02:12:00', '2022-07-21 02:12:00'),
(5, 'data_rows', 'display_name', 26, 'en', 'Image', '2022-07-21 02:12:00', '2022-07-21 02:12:00'),
(6, 'data_rows', 'display_name', 27, 'en', 'Created At', '2022-07-21 02:12:00', '2022-07-21 02:12:00'),
(7, 'data_rows', 'display_name', 28, 'en', 'Updated At', '2022-07-21 02:12:00', '2022-07-21 02:12:00'),
(8, 'data_types', 'display_name_singular', 4, 'en', 'Slider', '2022-07-21 02:12:00', '2022-07-21 02:12:00'),
(9, 'data_types', 'display_name_plural', 4, 'en', 'Sliders', '2022-07-21 02:12:00', '2022-07-21 02:12:00'),
(10, 'sliders', 'title', 1, 'en', 'Məhsullar', '2022-07-21 02:12:48', '2022-07-21 02:12:48'),
(11, 'sliders', 'title', 1, 'ru', 'Məhsullar', '2022-07-21 02:12:48', '2022-07-21 02:12:48'),
(12, 'sliders', 'desc', 1, 'en', 'Biz aqrobiznes kommunikasiyaları ilə məşğul oluruq', '2022-07-21 02:12:48', '2022-07-21 02:12:48'),
(13, 'sliders', 'desc', 1, 'ru', 'Biz aqrobiznes kommunikasiyaları ilə məşğul oluruq', '2022-07-21 02:12:48', '2022-07-21 02:12:48'),
(14, 'sliders', 'link', 1, 'en', 'link', '2022-07-21 02:12:48', '2022-07-21 02:12:48'),
(15, 'sliders', 'link', 1, 'ru', 'link', '2022-07-21 02:12:48', '2022-07-21 02:12:48'),
(16, 'sliders', 'title', 2, 'en', 'Məhsullar', '2022-07-21 02:13:19', '2022-07-21 02:13:19'),
(17, 'sliders', 'title', 2, 'ru', 'Məhsullar', '2022-07-21 02:13:19', '2022-07-21 02:13:19'),
(18, 'sliders', 'desc', 2, 'en', 'Biz aqrobiznes kommunikasiyaları ilə məşğul oluruq', '2022-07-21 02:13:19', '2022-07-21 02:13:19'),
(19, 'sliders', 'desc', 2, 'ru', 'Biz aqrobiznes kommunikasiyaları ilə məşğul oluruq', '2022-07-21 02:13:19', '2022-07-21 02:13:19'),
(20, 'sliders', 'link', 2, 'en', 'link', '2022-07-21 02:13:19', '2022-07-21 02:13:19'),
(21, 'sliders', 'link', 2, 'ru', 'link', '2022-07-21 02:13:19', '2022-07-21 02:13:19'),
(22, 'data_rows', 'display_name', 41, 'en', 'Id', '2022-07-21 02:28:20', '2022-07-21 02:28:20'),
(23, 'data_rows', 'display_name', 42, 'en', 'Title', '2022-07-21 02:28:20', '2022-07-21 02:28:20'),
(24, 'data_rows', 'display_name', 43, 'en', 'Desc', '2022-07-21 02:28:20', '2022-07-21 02:28:20'),
(25, 'data_rows', 'display_name', 44, 'en', 'Image', '2022-07-21 02:28:20', '2022-07-21 02:28:20'),
(26, 'data_rows', 'display_name', 45, 'en', 'Created At', '2022-07-21 02:28:20', '2022-07-21 02:28:20'),
(27, 'data_rows', 'display_name', 46, 'en', 'Updated At', '2022-07-21 02:28:20', '2022-07-21 02:28:20'),
(28, 'data_types', 'display_name_singular', 8, 'en', 'News', '2022-07-21 02:28:20', '2022-07-21 02:28:20'),
(29, 'data_types', 'display_name_plural', 8, 'en', 'News', '2022-07-21 02:28:20', '2022-07-21 02:28:20'),
(30, 'news', 'title', 1, 'en', 'Lorem Ipsum is simply dummy text of the printing', '2022-07-21 02:29:04', '2022-07-21 02:29:04'),
(31, 'news', 'title', 1, 'ru', 'Lorem Ipsum is simply dummy text of the printing', '2022-07-21 02:29:04', '2022-07-21 02:29:04'),
(32, 'news', 'desc', 1, 'en', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', '2022-07-21 02:29:04', '2022-07-21 02:29:04'),
(33, 'news', 'desc', 1, 'ru', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', '2022-07-21 02:29:04', '2022-07-21 02:29:04'),
(34, 'news', 'title', 2, 'en', 'Lorem Ipsum is simply dummy text of the printing', '2022-07-21 02:29:23', '2022-07-21 02:29:23'),
(35, 'news', 'title', 2, 'ru', 'Lorem Ipsum is simply dummy text of the printing', '2022-07-21 02:29:23', '2022-07-21 02:29:23'),
(36, 'news', 'desc', 2, 'en', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', '2022-07-21 02:29:23', '2022-07-21 02:29:23'),
(37, 'news', 'desc', 2, 'ru', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', '2022-07-21 02:29:23', '2022-07-21 02:29:23'),
(38, 'news', 'title', 3, 'en', 'Lorem Ipsum is simply dummy text of the printing', '2022-07-21 02:30:09', '2022-07-21 02:30:09'),
(39, 'news', 'title', 3, 'ru', 'Lorem Ipsum is simply dummy text of the printing', '2022-07-21 02:30:09', '2022-07-21 02:30:09'),
(40, 'news', 'desc', 3, 'en', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', '2022-07-21 02:30:09', '2022-07-21 02:30:09'),
(41, 'news', 'desc', 3, 'ru', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', '2022-07-21 02:30:09', '2022-07-21 02:30:09'),
(42, 'news', 'title', 4, 'en', 'Lorem Ipsum is simply dummy text of the printing', '2022-07-21 02:30:31', '2022-07-21 02:30:31'),
(43, 'news', 'title', 4, 'ru', 'Lorem Ipsum is simply dummy text of the printing', '2022-07-21 02:30:31', '2022-07-21 02:30:31'),
(44, 'news', 'desc', 4, 'en', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', '2022-07-21 02:30:31', '2022-07-21 02:30:31'),
(45, 'news', 'desc', 4, 'ru', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', '2022-07-21 02:30:31', '2022-07-21 02:30:31'),
(46, 'news', 'title', 5, 'en', 'Lorem Ipsum is simply dummy text of the printing', '2022-07-21 02:30:57', '2022-07-21 02:30:57'),
(47, 'news', 'title', 5, 'ru', 'Lorem Ipsum is simply dummy text of the printing', '2022-07-21 02:30:57', '2022-07-21 02:30:57'),
(48, 'news', 'desc', 5, 'en', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', '2022-07-21 02:30:57', '2022-07-21 02:30:57'),
(49, 'news', 'desc', 5, 'ru', '<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to makeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.<br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>', '2022-07-21 02:30:57', '2022-07-21 02:30:57'),
(50, 'gallery_types', 'name', 1, 'en', 'Fotoqalereya', '2022-07-21 02:37:45', '2022-07-21 02:37:45'),
(51, 'gallery_types', 'name', 1, 'ru', 'Fotoqalereya', '2022-07-21 02:37:45', '2022-07-21 02:37:45'),
(52, 'gallery_types', 'name', 2, 'en', 'Videoqalereya', '2022-07-21 02:37:56', '2022-07-21 02:37:56'),
(53, 'gallery_types', 'name', 2, 'ru', 'Videoqalereya', '2022-07-21 02:37:56', '2022-07-21 02:37:56'),
(54, 'data_rows', 'display_name', 51, 'en', 'Id', '2022-07-21 02:41:28', '2022-07-21 02:41:28'),
(55, 'data_rows', 'display_name', 52, 'en', 'Gallery Type', '2022-07-21 02:41:28', '2022-07-21 02:41:28'),
(56, 'data_rows', 'display_name', 53, 'en', 'Link', '2022-07-21 02:41:28', '2022-07-21 02:41:28'),
(57, 'data_rows', 'display_name', 54, 'en', 'Image', '2022-07-21 02:41:28', '2022-07-21 02:41:28'),
(58, 'data_rows', 'display_name', 55, 'en', 'Created At', '2022-07-21 02:41:28', '2022-07-21 02:41:28'),
(59, 'data_rows', 'display_name', 56, 'en', 'Updated At', '2022-07-21 02:41:28', '2022-07-21 02:41:28'),
(60, 'data_rows', 'display_name', 57, 'en', 'gallery_types', '2022-07-21 02:41:28', '2022-07-21 02:41:28'),
(61, 'data_types', 'display_name_singular', 10, 'en', 'Gallery', '2022-07-21 02:41:28', '2022-07-21 02:41:28'),
(62, 'data_types', 'display_name_plural', 10, 'en', 'Galleries', '2022-07-21 02:41:28', '2022-07-21 02:41:28'),
(63, 'vacancies', 'title', 1, 'en', 'Lorem Ipsum is simply text simply dummy text', '2022-07-21 02:59:11', '2022-07-21 02:59:11'),
(64, 'vacancies', 'title', 1, 'ru', 'Lorem Ipsum is simply text simply dummy text', '2022-07-21 02:59:11', '2022-07-21 02:59:11'),
(65, 'vacancies', 'desc', 1, 'en', '<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Lorem Ipsum is simply dummy text</span></p>\n<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">İşiniz nədən ibarətdir?</span></p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\"><span style=\"color: #99cc00;\">Tələb edilən bilik, bacarıq və təcr&uuml;bə</span></span></span></p>\n<p>&nbsp;</p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>', '2022-07-21 02:59:11', '2022-07-21 02:59:11'),
(66, 'vacancies', 'desc', 1, 'ru', '<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Lorem Ipsum is simply dummy text</span></p>\n<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">İşiniz nədən ibarətdir?</span></p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\"><span style=\"color: #99cc00;\">Tələb edilən bilik, bacarıq və təcr&uuml;bə</span></span></span></p>\n<p>&nbsp;</p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>', '2022-07-21 02:59:11', '2022-07-21 02:59:11'),
(67, 'vacancies', 'title', 2, 'en', 'Lorem Ipsum is simply text simply dummy text', '2022-07-21 02:59:46', '2022-07-21 02:59:46'),
(68, 'vacancies', 'title', 2, 'ru', 'Lorem Ipsum is simply text simply dummy text', '2022-07-21 02:59:46', '2022-07-21 02:59:46'),
(69, 'vacancies', 'desc', 2, 'en', '<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Lorem Ipsum is simply dummy text</span></p>\n<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">İşiniz nədən ibarətdir?</span></p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Tələb edilən bilik, bacarıq və təcr&uuml;bə</span></p>\n<p>&nbsp;</p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>', '2022-07-21 02:59:46', '2022-07-21 02:59:46'),
(70, 'vacancies', 'desc', 2, 'ru', '<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Lorem Ipsum is simply dummy text</span></p>\n<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">İşiniz nədən ibarətdir?</span></p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Tələb edilən bilik, bacarıq və təcr&uuml;bə</span></p>\n<p>&nbsp;</p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>', '2022-07-21 02:59:46', '2022-07-21 02:59:46'),
(71, 'vacancies', 'title', 3, 'en', 'Lorem Ipsum is simply text simply dummy text', '2022-07-21 03:00:16', '2022-07-21 03:00:16'),
(72, 'vacancies', 'title', 3, 'ru', 'Lorem Ipsum is simply text simply dummy text', '2022-07-21 03:00:16', '2022-07-21 03:00:16'),
(73, 'vacancies', 'desc', 3, 'en', '<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Lorem Ipsum is simply dummy text</span></p>\n<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">İşiniz nədən ibarətdir?</span></p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Tələb edilən bilik, bacarıq və təcr&uuml;bə</span></p>\n<p>&nbsp;</p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>', '2022-07-21 03:00:16', '2022-07-21 03:00:16'),
(74, 'vacancies', 'desc', 3, 'ru', '<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Lorem Ipsum is simply dummy text</span></p>\n<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">İşiniz nədən ibarətdir?</span></p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Tələb edilən bilik, bacarıq və təcr&uuml;bə</span></p>\n<p>&nbsp;</p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>', '2022-07-21 03:00:16', '2022-07-21 03:00:16'),
(75, 'menu_items', 'title', 11, 'en', 'Sliders', '2022-07-21 03:35:04', '2022-07-21 03:35:04'),
(76, 'menu_items', 'title', 11, 'ru', 'Sliders', '2022-07-21 03:35:13', '2022-07-21 03:35:13'),
(77, 'menu_items', 'title', 12, 'en', 'Contacts', '2022-07-21 03:35:57', '2022-07-21 03:35:57'),
(78, 'menu_items', 'title', 13, 'en', 'Partners', '2022-07-21 03:36:11', '2022-07-21 03:36:11'),
(79, 'menu_items', 'title', 14, 'en', 'News', '2022-07-21 03:36:39', '2022-07-21 03:36:39'),
(80, 'menu_items', 'title', 15, 'en', 'Gallery Types', '2022-07-21 03:36:56', '2022-07-21 03:36:56'),
(81, 'menu_items', 'title', 16, 'en', 'Galleries', '2022-07-21 03:37:11', '2022-07-21 03:37:11'),
(82, 'menu_items', 'title', 17, 'en', 'Vacancies', '2022-07-21 03:37:37', '2022-07-21 03:37:37');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jedai', 'dev22@gmail.com', 'users\\July2022\\1iO5aHnAzoaZFDjhICEt.jpg', NULL, '$2y$10$4JRteT2WWTESexjT4u0X3OH35IdQVb2e0pkKk5cBIFpswK3sfT4zu', NULL, '{\"locale\":\"en\"}', '2022-07-21 02:03:01', '2022-07-21 04:08:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vacancies`
--

CREATE TABLE `vacancies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `vacancies`
--

INSERT INTO `vacancies` (`id`, `title`, `desc`, `salary`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply text simply dummy text', '<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Lorem Ipsum is simply dummy text</span></p>\n<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">İşiniz nədən ibarətdir?</span></p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\"><span style=\"color: #99cc00;\">Tələb edilən bilik, bacarıq və təcr&uuml;bə</span></span></span></p>\n<p>&nbsp;</p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>', '120.00', '08.07.2022', '2022-07-21 02:59:11', '2022-07-21 02:59:11'),
(2, 'Lorem Ipsum is simply text simply dummy text', '<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Lorem Ipsum is simply dummy text</span></p>\n<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">İşiniz nədən ibarətdir?</span></p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Tələb edilən bilik, bacarıq və təcr&uuml;bə</span></p>\n<p>&nbsp;</p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>', '210.00', '08.07.2022', '2022-07-21 02:59:00', '2022-07-21 02:59:51'),
(3, 'Lorem Ipsum is simply text simply dummy text', '<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Lorem Ipsum is simply dummy text</span></p>\n<p><span style=\"white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">İşiniz nədən ibarətdir?</span></p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>\n<p><span style=\"white-space: pre-wrap; color: #99cc00;\">Tələb edilən bilik, bacarıq və təcr&uuml;bə</span></p>\n<p>&nbsp;</p>\n<ul>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">Lorem Ipsum is simply dummy text of the printing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing</span></span></li>\n<li><span style=\"white-space: pre-wrap; color: #99cc00;\"><span style=\"color: #000000;\">It was popularised in the 1960s with the release of Letraset sheets</span></span></li>\n</ul>', '300.00', '12.20.2022', '2022-07-21 03:00:16', '2022-07-21 03:00:16');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Tablo için indeksler `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gallery_types`
--
ALTER TABLE `gallery_types`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Tablo için indeksler `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Tablo için indeksler `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Tablo için indeksler `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Tablo için indeksler `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Tablo için AUTO_INCREMENT değeri `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `gallery_types`
--
ALTER TABLE `gallery_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Tablo kısıtlamaları `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
