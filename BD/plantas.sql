-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2022 a las 03:45:07
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `plantas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `tabel` varchar(255) DEFAULT NULL,
  `aksi` varchar(255) DEFAULT NULL,
  `kolom` varchar(255) DEFAULT NULL,
  `orderby` varchar(255) DEFAULT NULL,
  `sub_query_1` varchar(255) DEFAULT NULL,
  `sql_where` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `parameter` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) DEFAULT NULL,
  `parameters` longtext DEFAULT NULL,
  `responses` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_apikey`
--

INSERT INTO `cms_apikey` (`id`, `screetkey`, `hit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'f85f105ac8bec3647c3ce52ef36fbee9', 0, 'active', '2022-12-08 02:28:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) DEFAULT NULL,
  `email_from_email` varchar(255) DEFAULT NULL,
  `email_from_name` varchar(255) DEFAULT NULL,
  `email_cc_email` varchar(255) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_content` text DEFAULT NULL,
  `email_attachments` text DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `cc_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-12-08 00:30:13', NULL),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-12-08 02:48:27', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-12-08 00:30:37', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Rodolfo Estay at Users Management', '', 1, '2022-12-08 00:33:24', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/tipos_plantas/add-save', 'Add New Data  at Nuevo tipo de planta', '', 1, '2022-12-08 01:23:39', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/tipos_plantas/delete/1', 'Delete data 1 at Nuevo tipo de planta', '', 1, '2022-12-08 01:24:20', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/humedad/add-save', 'Add New Data  at Mantenedor de tabla humedad', '', 1, '2022-12-08 01:29:57', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/tipos_plantas/add-save', 'Add New Data  at Nuevo tipo de planta', '', 1, '2022-12-08 01:36:15', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/tipos_plantas/add-save', 'Add New Data  at Nuevo tipo de planta', '', 1, '2022-12-08 01:36:23', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/tipos_plantas/add-save', 'Add New Data  at Nuevo tipo de planta', '', 1, '2022-12-08 01:36:28', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/tipos_plantas/add-save', 'Add New Data  at Nuevo tipo de planta', '', 1, '2022-12-08 01:36:33', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/tipos_plantas/add-save', 'Add New Data  at Nuevo tipo de planta', '', 1, '2022-12-08 01:36:49', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/tipos_plantas/add-save', 'Add New Data  at Nuevo tipo de planta', '', 1, '2022-12-08 01:36:53', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/tipos_plantas/add-save', 'Add New Data  at Nuevo tipo de planta', '', 1, '2022-12-08 01:36:57', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/tipos_plantas/add-save', 'Add New Data  at Nuevo tipo de planta', '', 1, '2022-12-08 01:37:03', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/tipos_plantas/add-save', 'Add New Data  at Nuevo tipo de planta', '', 1, '2022-12-08 01:37:07', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/humedad/add-save', 'Add New Data  at Mantenedor de tabla humedad', '', 1, '2022-12-08 01:37:52', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/humedad/edit-save/2', 'Update data  at Mantenedor de tabla humedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Significado_Humedad</td><td>Humedad baja, se recomienda aumentar la humedad en 20% al menos.</td><td>Humedad baja, se recomienda aumentar la humedad en 20% extra al menos.</td></tr></tbody></table>', 1, '2022-12-08 01:38:02', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Mantenedor de tabla tipo de planta at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Nuevo tipo de planta</td><td>Mantenedor de tabla tipo de planta</td></tr><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2022-12-08 01:39:40', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Mantenedor de tabla tipo de planta at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-pencil</td><td>fa fa-th-list</td></tr></tbody></table>', 1, '2022-12-08 01:40:02', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Mantenedor tipo de planta at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Mantenedor de tabla tipo de planta</td><td>Mantenedor tipo de planta</td></tr></tbody></table>', 1, '2022-12-08 01:40:26', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Mantenedor de humedad at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Mantenedor de tabla humedad</td><td>Mantenedor de humedad</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-book</td><td>fa fa-list-alt</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-12-08 01:40:45', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Mantenedor de humedad at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-12-08 01:41:05', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Mantenedor de temperatura at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-volume-down</td><td>fa fa-text-height</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-12-08 01:58:15', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/temperatura/add-save', 'Add New Data  at Mantenedor de temperatura', '', 1, '2022-12-08 01:58:58', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Plantas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-th-list</td><td>fa fa-pagelines</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-12-08 02:07:56', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Plantas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-12-08 02:08:26', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/temperatura/add-save', 'Add New Data  at Mantenedor de temperatura', '', 1, '2022-12-08 02:09:22', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/plantas/add-save', 'Add New Data  at Plantas', '', 1, '2022-12-08 02:11:45', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Mantenedores at Menu Management', '', 1, '2022-12-08 02:12:51', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Mantenedores at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>URL</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-12-08 02:13:45', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-12-08 02:17:17', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Rodolfo@plantas.cl login with IP Address 127.0.0.1', '', 2, '2022-12-08 02:17:28', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/plantas/add-save', 'Add New Data  at Plantas', '', 2, '2022-12-08 02:18:16', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo@plantas.cl logout', '', 2, '2022-12-08 02:19:07', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-12-08 02:19:10', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Rodolfo Estay Técnico at Users Management', '', 1, '2022-12-08 02:21:39', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/users/edit-save/2', 'Update data Rodolfo Estay Administrador at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Rodolfo Estay</td><td>Rodolfo Estay Administrador</td></tr><tr><td>email</td><td>Rodolfo@plantas.cl</td><td>Rodolfo.adm@plantas.cl</td></tr><tr><td>password</td><td>$2y$10$LLMtFENA0ehj/WkYzgJy7u5vBzSQrPIXcupNNFSqvv3ya71nbPsNq</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2022-12-08 02:22:03', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/users/edit-save/3', 'Update data Rodolfo Estay Técnico at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>Rodolfo.Tecnico@plantas.cl</td><td>Rodolfo.tec@plantas.cl</td></tr><tr><td>password</td><td>$2y$10$AVhEv1poLEvegxlK/nIz9O0x/XhhOZmIwo77ntfFUZ2J3A9ArOz4S</td><td>$2y$10$bPNU45pfBN3xCjX8/09Q/.qvl.Le/Zh3BM2cwkn.lSbJH73Xt0lFC</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2022-12-08 02:22:20', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Mantenedor de Usuarios at Menu Management', '', 1, '2022-12-08 02:23:56', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-12-08 02:26:02', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Rodolfo.adm@plantas.cl login with IP Address 127.0.0.1', '', 2, '2022-12-08 02:26:16', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.adm@plantas.cl logout', '', 2, '2022-12-08 02:27:50', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-12-08 02:27:53', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-12-08 02:30:12', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-12-08 02:30:21', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-12-08 02:38:07', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-12-08 02:48:50', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-12-08 02:49:01', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.adm@plantas.cl desde la Dirección IP 127.0.0.1', '', 2, '2022-12-08 02:49:13', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.adm@plantas.cl se desconectó', '', 2, '2022-12-08 02:53:38', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.tec@plantas.cl desde la Dirección IP 127.0.0.1', '', 3, '2022-12-08 02:53:52', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.adm@plantas.cl desde la Dirección IP 127.0.0.1', '', 2, '2022-12-08 02:54:11', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.adm@plantas.cl se desconectó', '', 2, '2022-12-08 02:54:19', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-12-08 02:54:28', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Actualizar información Plantas en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-12-08 02:54:44', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-12-08 02:59:11', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.adm@plantas.cl desde la Dirección IP 127.0.0.1', '', 2, '2022-12-08 02:59:15', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.adm@plantas.cl se desconectó', '', 2, '2022-12-08 03:04:17', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-12-08 03:04:20', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/plantas/delete/2', 'Eliminar información 2 en Plantas', '', 1, '2022-12-08 03:13:06', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/plantas/delete/1', 'Eliminar información 1 en Plantas', '', 1, '2022-12-08 03:13:08', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/delete/4', 'Eliminar información Plantas en Menu Management', '', 1, '2022-12-08 03:18:59', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Actualizar información Ingreso de plantas en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2022-12-08 03:27:04', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Actualizar información Ingreso de plantas en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-search-minus</td><td>fa fa-tree</td></tr></tbody></table>', 1, '2022-12-08 03:27:59', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/module_generator/delete/15', 'Eliminar información Plantas en Module Generator', '', 1, '2022-12-08 03:28:51', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-12-08 05:47:50', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.tec@plantas.cl desde la Dirección IP 127.0.0.1', '', 3, '2022-12-08 05:48:04', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2', 'Intentar ver :name en Ingreso de plantas', '', 3, '2022-12-08 05:48:06', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.tec@plantas.cl se desconectó', '', 3, '2022-12-08 05:48:13', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-12-08 05:48:15', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-12-08 05:52:28', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.tec@plantas.cl desde la Dirección IP 127.0.0.1', '', 3, '2022-12-08 05:52:32', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.tec@plantas.cl se desconectó', '', 3, '2022-12-08 05:52:59', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-12-08 05:53:07', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/add-save', 'Añadir nueva información  en Ingreso de plantas', '', 1, '2022-12-08 05:59:32', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/add-save', 'Añadir nueva información  en Ingreso de plantas', '', 1, '2022-12-08 06:03:37', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-12-08 10:26:53', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.tec@plantas.cl desde la Dirección IP 127.0.0.1', '', 3, '2022-12-08 10:27:57', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/add-save', 'Añadir nueva información  en Ingreso de plantas', '', 3, '2022-12-08 10:28:31', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.tec@plantas.cl se desconectó', '', 3, '2022-12-08 10:29:02', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.adm@plantas.cl desde la Dirección IP 127.0.0.1', '', 2, '2022-12-08 10:29:06', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2', 'Intentar ver :name en Ingreso de plantas', '', 2, '2022-12-08 10:29:10', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2', 'Intentar ver :name en Ingreso de plantas', '', 2, '2022-12-08 10:29:13', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.adm@plantas.cl se desconectó', '', 2, '2022-12-08 10:30:03', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-12-08 10:30:11', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Actualizar información Ingreso de plantas en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-12-08 10:31:02', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-12-08 10:31:12', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.adm@plantas.cl desde la Dirección IP 127.0.0.1', '', 2, '2022-12-08 10:31:16', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2', 'Intentar ver :name en Ingreso de plantas', '', 2, '2022-12-08 10:31:17', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.adm@plantas.cl se desconectó', '', 2, '2022-12-08 10:31:25', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-12-08 10:31:28', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-12-08 10:31:46', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.adm@plantas.cl desde la Dirección IP 127.0.0.1', '', 2, '2022-12-08 10:31:50', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.adm@plantas.cl se desconectó', '', 2, '2022-12-08 10:32:45', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', ' se desconectó', '', NULL, '2022-12-08 10:36:09', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.adm@plantas.cl desde la Dirección IP 127.0.0.1', '', 2, '2022-12-08 10:36:35', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.adm@plantas.cl se desconectó', '', 2, '2022-12-08 10:37:09', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-12-08 10:37:14', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-12-08 10:37:32', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.tec@plantas.cl desde la Dirección IP 127.0.0.1', '', 3, '2022-12-09 00:39:44', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/add-save', 'Añadir nueva información  en Ingreso de plantas', '', 3, '2022-12-09 00:40:17', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.tec@plantas.cl se desconectó', '', 3, '2022-12-09 00:40:28', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.adm@plantas.cl desde la Dirección IP 127.0.0.1', '', 2, '2022-12-09 00:40:31', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.adm@plantas.cl se desconectó', '', 2, '2022-12-09 00:41:48', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-12-09 00:41:51', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/add-save', 'Añadir nueva información  en Ingreso de plantas', '', 1, '2022-12-09 00:44:07', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-12-09 00:44:42', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.adm@plantas.cl desde la Dirección IP 127.0.0.1', '', 2, '2022-12-09 00:44:47', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', ' se desconectó', '', NULL, '2022-12-09 04:59:37', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de Rodolfo.adm@plantas.cl desde la Dirección IP 127.0.0.1', '', 2, '2022-12-09 05:25:15', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/humedad/edit-save/1', 'Actualizar información  en Mantenedor de tabla humedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Significado_Humedad</td><td>Humedad muy baja, se recomienda aumentarla de manera urgente.</td><td>Humedad muy baja, se recomienda aumentarla al 40%</td></tr></tbody></table>', 2, '2022-12-09 05:26:18', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/humedad/edit-save/1', 'Actualizar información  en Mantenedor de tabla humedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Rango_Humedad</td><td>01%-10%</td><td>01%-20%</td></tr><tr><td>Significado_Humedad</td><td>Humedad muy baja, se recomienda aumentarla al 40%</td><td>Humedad muy baja, se recomienda aumentarla en 20 % aproximadamente.</td></tr></tbody></table>', 2, '2022-12-09 05:27:35', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/humedad/edit-save/2', 'Actualizar información  en Mantenedor de tabla humedad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Rango_Humedad</td><td>11%-20%</td><td>21%-40%</td></tr><tr><td>Significado_Humedad</td><td>Humedad baja, se recomienda aumentar la humedad en 20% extra al menos.</td><td>Humedad baja, se recomienda aumentar la humedad en 10% extra al menos.</td></tr></tbody></table>', 2, '2022-12-09 05:28:23', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/humedad/add-save', 'Añadir nueva información  en Mantenedor de tabla humedad', '', 2, '2022-12-09 05:28:56', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/humedad/add-save', 'Añadir nueva información  en Mantenedor de tabla humedad', '', 2, '2022-12-09 05:29:49', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/humedad/add-save', 'Añadir nueva información  en Mantenedor de tabla humedad', '', 2, '2022-12-09 05:30:37', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/temperatura/edit-save/1', 'Actualizar información  en Mantenedor de temperatura', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Rango_Temperatura</td><td>01-09</td><td>10-20</td></tr></tbody></table>', 2, '2022-12-09 05:31:22', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/temperatura/edit-save/2', 'Actualizar información  en Mantenedor de temperatura', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Rango_Temperatura</td><td>10-19</td><td>20-30 Grados C</td></tr></tbody></table>', 2, '2022-12-09 05:31:44', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/temperatura/edit-save/1', 'Actualizar información  en Mantenedor de temperatura', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Rango_Temperatura</td><td>10-20</td><td>10-20 Grados C</td></tr></tbody></table>', 2, '2022-12-09 05:31:56', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/temperatura/edit-save/2', 'Actualizar información  en Mantenedor de temperatura', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Significado_Temperatura</td><td>Temperatura baja, se recomienda aumentar entre 20°C a 25°C</td><td>Temperatura baja, se recomienda aumentar entre 10°C a 15°C</td></tr></tbody></table>', 2, '2022-12-09 05:32:17', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/temperatura/add-save', 'Añadir nueva información  en Mantenedor de temperatura', '', 2, '2022-12-09 05:32:44', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/temperatura/add-save', 'Añadir nueva información  en Mantenedor de temperatura', '', 2, '2022-12-09 05:33:27', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/temperatura/edit-save/1', 'Actualizar información  en Mantenedor de temperatura', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>Significado_Temperatura</td><td>Temperatura muy baja, se recomienda aumentar en 20° o más</td><td>Temperatura muy baja, se recomienda aumentar en 20° o más, Urgente</td></tr></tbody></table>', 2, '2022-12-09 05:33:41', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'Rodolfo.adm@plantas.cl se desconectó', '', 2, '2022-12-09 05:34:46', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-12-09 05:34:51', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/add-save', 'Añadir nueva información  en Ingreso de plantas', '', 1, '2022-12-09 05:43:25', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/delete/7', 'Eliminar información 7 en Ingreso de plantas', '', 1, '2022-12-09 05:43:38', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/delete/6', 'Eliminar información 6 en Ingreso de plantas', '', 1, '2022-12-09 05:43:42', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/delete/5', 'Eliminar información 5 en Ingreso de plantas', '', 1, '2022-12-09 05:43:44', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/delete/3', 'Eliminar información 3 en Ingreso de plantas', '', 1, '2022-12-09 05:43:47', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/delete/3', 'Eliminar información  en Ingreso de plantas', '', 1, '2022-12-09 05:43:48', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/delete/4', 'Eliminar información 4 en Ingreso de plantas', '', 1, '2022-12-09 05:43:54', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/Plantas2/add-save', 'Añadir nueva información  en Ingreso de plantas', '', 1, '2022-12-09 05:44:13', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-12-09 05:44:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'url',
  `path` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Mantenedor tipo de planta', 'Route', 'AdminTiposPlantasControllerGetIndex', 'normal', 'fa fa-th-list', 5, 1, 0, 1, 1, '2022-12-08 01:21:36', '2022-12-08 01:40:26'),
(2, 'Mantenedor de humedad', 'Route', 'AdminHumedadControllerGetIndex', 'normal', 'fa fa-list-alt', 5, 1, 0, 1, 2, '2022-12-08 01:26:20', '2022-12-08 01:41:05'),
(3, 'Mantenedor de temperatura', 'Route', 'AdminTemperaturaControllerGetIndex', 'normal', 'fa fa-text-height', 5, 1, 0, 1, 3, '2022-12-08 01:41:34', '2022-12-08 01:58:15'),
(5, 'Mantenedores', 'URL', 'Mantenedores', 'normal', 'fa fa-edit', 0, 1, 0, 1, 2, '2022-12-08 02:12:51', '2022-12-08 02:13:45'),
(6, 'Mantenedor de Usuarios', 'Module', 'users', 'normal', 'fa fa-user', 5, 1, 0, 1, 4, '2022-12-08 02:23:56', NULL),
(7, 'Ingreso de plantas', 'Route', 'AdminPlantas2ControllerGetIndex', 'normal', 'fa fa-tree', 0, 1, 0, 1, 1, '2022-12-08 03:21:13', '2022-12-08 10:31:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(6, 1, 2),
(7, 1, 1),
(9, 2, 2),
(10, 2, 1),
(12, 3, 2),
(13, 3, 1),
(21, 5, 2),
(22, 5, 1),
(23, 6, 2),
(24, 4, 2),
(25, 4, 1),
(26, 4, 3),
(34, 7, 2),
(35, 7, 1),
(36, 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-12-08 00:30:13', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-12-08 00:30:13', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-12-08 00:30:13', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-12-08 00:30:13', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-12-08 00:30:13', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-12-08 00:30:13', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-12-08 00:30:13', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-12-08 00:30:13', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-12-08 00:30:13', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-12-08 00:30:13', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-12-08 00:30:13', NULL, NULL),
(12, 'Nuevo tipo de planta', 'fa fa-pencil', 'tipos_plantas', 'tipos_plantas', 'AdminTiposPlantasController', 0, 0, '2022-12-08 01:21:36', NULL, NULL),
(13, 'Mantenedor de tabla humedad', 'fa fa-book', 'humedad', 'humedad', 'AdminHumedadController', 0, 0, '2022-12-08 01:26:20', NULL, NULL),
(14, 'Mantenedor de temperatura', 'fa fa-volume-down', 'temperatura', 'temperatura', 'AdminTemperaturaController', 0, 0, '2022-12-08 01:41:34', NULL, NULL),
(15, 'Plantas', 'fa fa-th-list', 'plantas', 'plantas', 'AdminPlantasController', 0, 0, '2022-12-08 02:00:19', NULL, '2022-12-08 03:28:51'),
(16, 'Notificaciones', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-12-08 02:48:27', NULL, NULL),
(17, 'Privilegios', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-12-08 02:48:27', NULL, NULL),
(18, 'Privilegios & Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-12-08 02:48:27', NULL, NULL),
(19, 'Gestión de usuarios', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-12-08 02:48:27', NULL, NULL),
(20, 'Ajustes', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-12-08 02:48:27', NULL, NULL),
(21, 'Generador de Módulos', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-12-08 02:48:27', NULL, NULL),
(22, 'Gestión de Menús', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-12-08 02:48:27', NULL, NULL),
(23, 'Plantillas de Correo', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-12-08 02:48:27', NULL, NULL),
(24, 'Generador de Estadísticas', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-12-08 02:48:27', NULL, NULL),
(25, 'Generador de API', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-12-08 02:48:27', NULL, NULL),
(26, 'Log de Accesos (Usuarios)', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-12-08 02:48:27', NULL, NULL),
(27, 'Ingreso de plantas', 'fa fa-search-minus', 'Plantas2', 'plantas', 'AdminPlantas2Controller', 0, 0, '2022-12-08 03:21:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-blue', '2022-12-08 00:30:13', NULL),
(2, 'Administrador', 0, 'skin-red', NULL, NULL),
(3, 'Técnico', 0, 'skin-green', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges_roles`
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(41, 1, 1, 1, 1, 1, 3, 27, NULL, NULL),
(47, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(48, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(49, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(50, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(51, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(52, 1, 1, 1, 1, 1, 2, 19, NULL, NULL),
(53, 1, 1, 1, 1, 1, 2, 27, NULL, NULL),
(54, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
(55, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(56, 1, 1, 1, 1, 1, 2, 12, NULL, NULL),
(57, 1, 1, 1, 1, 1, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `content_input_type` varchar(255) DEFAULT NULL,
  `dataenum` varchar(255) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2022-12-08 00:30:13', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2022-12-08 00:30:13', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2022-12/d4379ac24ae59712459795f47c8b65ec.jpg', 'upload_image', NULL, NULL, '2022-12-08 00:30:13', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2022-12-08 00:30:13', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2022-12-08 00:30:13', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2022-12-08 00:30:13', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2022-12-08 00:30:13', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2022-12-08 00:30:13', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2022-12-08 00:30:13', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Sistema para Plantas', 'text', NULL, NULL, '2022-12-08 00:30:13', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2022-12-08 00:30:13', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2022-12/96e8f1ef0029ceec0378324f5d41a42b.jpg', 'upload_image', NULL, NULL, '2022-12-08 00:30:13', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2022-12/3e80e842c4fff1825ac55f69d3994746.jpg', 'upload_image', NULL, NULL, '2022-12-08 00:30:13', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'false', 'select', 'true,false', NULL, '2022-12-08 00:30:13', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2022-12-08 00:30:13', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2022-12-08 00:30:13', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) DEFAULT NULL,
  `component_name` varchar(255) DEFAULT NULL,
  `area_name` varchar(55) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$na9QrkuT5bM9DviJZ/H94eZTFzMAMApLIUxdGTA4NiugMzOk0Ndc6', 1, '2022-12-08 00:30:13', NULL, 'Active'),
(2, 'Rodolfo Estay Administrador', 'uploads/1/2022-12/aeb4pgu2lncute6mstssds3eea.jpg', 'Rodolfo.adm@plantas.cl', '$2y$10$LLMtFENA0ehj/WkYzgJy7u5vBzSQrPIXcupNNFSqvv3ya71nbPsNq', 2, '2022-12-08 00:33:24', '2022-12-08 02:22:03', NULL),
(3, 'Rodolfo Estay Técnico', 'uploads/1/2022-12/aeb4pgu2lncute6mstssds3eea.jpg', 'Rodolfo.tec@plantas.cl', '$2y$10$bPNU45pfBN3xCjX8/09Q/.qvl.Le/Zh3BM2cwkn.lSbJH73Xt0lFC', 3, '2022-12-08 02:21:39', '2022-12-08 02:22:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `humedad`
--

CREATE TABLE `humedad` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Rango_Humedad` varchar(255) DEFAULT NULL,
  `Significado_Humedad` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `humedad`
--

INSERT INTO `humedad` (`id`, `created_at`, `updated_at`, `Rango_Humedad`, `Significado_Humedad`) VALUES
(1, '2022-12-08 01:29:57', '2022-12-09 05:27:35', '01%-20%', 'Humedad muy baja, se recomienda aumentarla en 20 % aproximadamente.'),
(2, '2022-12-08 01:37:52', '2022-12-09 05:28:23', '21%-40%', 'Humedad baja, se recomienda aumentar la humedad en 10% extra al menos.'),
(3, '2022-12-09 05:28:56', NULL, '41%-60%', 'Humedad moderada, se recomienda mantener este rango de humedad óptimo.'),
(4, '2022-12-09 05:29:49', NULL, '61%-80%', 'Humedad alta, se recomienda disminuir la humedad de la planta en un 15% al menos.'),
(5, '2022-12-09 05:30:37', NULL, '81%-100%', 'Humedad excesiva, se recomienda con urgencia disminuir la humedad en un 35% al menos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2022_12_07_213425_create_plantas', 2),
(31, '2022_12_07_220841_create_tipos_plantas', 2),
(32, '2022_12_07_221352_create_humedad', 2),
(33, '2022_12_07_221414_create_temperatura', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `plantas`
--

CREATE TABLE `plantas` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `N_Serie_Planta` varchar(255) DEFAULT NULL,
  `Nombre_Planta` varchar(255) DEFAULT NULL,
  `Humedad_Planta` varchar(255) DEFAULT NULL,
  `Estado_Humedad_Planta` varchar(255) DEFAULT NULL,
  `Temperatura_Planta` varchar(255) DEFAULT NULL,
  `Estado_Temperatura_Planta` varchar(255) DEFAULT NULL,
  `id_Tipo_Planta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `plantas`
--

INSERT INTO `plantas` (`id`, `created_at`, `updated_at`, `N_Serie_Planta`, `Nombre_Planta`, `Humedad_Planta`, `Estado_Humedad_Planta`, `Temperatura_Planta`, `Estado_Temperatura_Planta`, `id_Tipo_Planta`) VALUES
(8, '2022-12-09 05:43:25', NULL, '5654645ggg', 'Pino Peruano', '1', '1', '1', '1', 5),
(9, '2022-12-09 05:44:13', NULL, 'ggfdgdf775', 'Bucho Jamaicano', '3', '5', '2', '1', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temperatura`
--

CREATE TABLE `temperatura` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Rango_Temperatura` varchar(255) DEFAULT NULL,
  `Significado_Temperatura` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `temperatura`
--

INSERT INTO `temperatura` (`id`, `created_at`, `updated_at`, `Rango_Temperatura`, `Significado_Temperatura`) VALUES
(1, '2022-12-08 01:58:58', '2022-12-09 05:33:41', '10-20 Grados C', 'Temperatura muy baja, se recomienda aumentar en 20° o más, Urgente'),
(2, '2022-12-08 02:09:22', '2022-12-09 05:32:17', '20-30 Grados C', 'Temperatura baja, se recomienda aumentar entre 10°C a 15°C'),
(3, '2022-12-09 05:32:43', NULL, '31-40 Grados C', 'Temperatura ideal, se recomienda mantener este rango.'),
(4, '2022-12-09 05:33:27', NULL, '41-60 Grados C', 'Temperatura alta, se recomienda bajar la temperatura en 15-20 Grados C, Urgente.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_plantas`
--

CREATE TABLE `tipos_plantas` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Tipo_planta` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipos_plantas`
--

INSERT INTO `tipos_plantas` (`id`, `created_at`, `updated_at`, `Tipo_planta`) VALUES
(2, '2022-12-08 01:36:15', NULL, 'Herbáceas'),
(3, '2022-12-08 01:36:23', NULL, 'Arbustos'),
(4, '2022-12-08 01:36:28', NULL, 'Matorrales '),
(5, '2022-12-08 01:36:33', NULL, 'Árboles'),
(6, '2022-12-08 01:36:49', NULL, 'Trepadoras'),
(7, '2022-12-08 01:36:53', NULL, 'Acuáticas'),
(8, '2022-12-08 01:36:57', NULL, 'Suculentas'),
(9, '2022-12-08 01:37:03', NULL, 'Aromáticas'),
(10, '2022-12-08 01:37:07', NULL, 'Bulbosas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `humedad`
--
ALTER TABLE `humedad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temperatura`
--
ALTER TABLE `temperatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos_plantas`
--
ALTER TABLE `tipos_plantas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `humedad`
--
ALTER TABLE `humedad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `temperatura`
--
ALTER TABLE `temperatura`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipos_plantas`
--
ALTER TABLE `tipos_plantas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
