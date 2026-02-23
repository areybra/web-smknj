-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2026 at 02:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_smknj_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add category pengumuman', 7, 'add_categorypengumuman'),
(26, 'Can change category pengumuman', 7, 'change_categorypengumuman'),
(27, 'Can delete category pengumuman', 7, 'delete_categorypengumuman'),
(28, 'Can view category pengumuman', 7, 'view_categorypengumuman'),
(29, 'Can add ektra category', 8, 'add_ektracategory'),
(30, 'Can change ektra category', 8, 'change_ektracategory'),
(31, 'Can delete ektra category', 8, 'delete_ektracategory'),
(32, 'Can view ektra category', 8, 'view_ektracategory'),
(33, 'Can add jurusan', 9, 'add_jurusan'),
(34, 'Can change jurusan', 9, 'change_jurusan'),
(35, 'Can delete jurusan', 9, 'delete_jurusan'),
(36, 'Can view jurusan', 9, 'view_jurusan'),
(37, 'Can add mata pelajaran', 10, 'add_matapelajaran'),
(38, 'Can change mata pelajaran', 10, 'change_matapelajaran'),
(39, 'Can delete mata pelajaran', 10, 'delete_matapelajaran'),
(40, 'Can view mata pelajaran', 10, 'view_matapelajaran'),
(41, 'Can add news category', 11, 'add_newscategory'),
(42, 'Can change news category', 11, 'change_newscategory'),
(43, 'Can delete news category', 11, 'delete_newscategory'),
(44, 'Can view news category', 11, 'view_newscategory'),
(45, 'Can add testimoni alumni', 12, 'add_testimonialumni'),
(46, 'Can change testimoni alumni', 12, 'change_testimonialumni'),
(47, 'Can delete testimoni alumni', 12, 'delete_testimonialumni'),
(48, 'Can view testimoni alumni', 12, 'view_testimonialumni'),
(49, 'Can add staff dan guru', 13, 'add_staffdanguru'),
(50, 'Can change staff dan guru', 13, 'change_staffdanguru'),
(51, 'Can delete staff dan guru', 13, 'delete_staffdanguru'),
(52, 'Can view staff dan guru', 13, 'view_staffdanguru'),
(53, 'Can add sertifikasi', 14, 'add_sertifikasi'),
(54, 'Can change sertifikasi', 14, 'change_sertifikasi'),
(55, 'Can delete sertifikasi', 14, 'delete_sertifikasi'),
(56, 'Can view sertifikasi', 14, 'view_sertifikasi'),
(57, 'Can add prospek karir', 15, 'add_prospekkarir'),
(58, 'Can change prospek karir', 15, 'change_prospekkarir'),
(59, 'Can delete prospek karir', 15, 'delete_prospekkarir'),
(60, 'Can view prospek karir', 15, 'view_prospekkarir'),
(61, 'Can add pengumuman', 16, 'add_pengumuman'),
(62, 'Can change pengumuman', 16, 'change_pengumuman'),
(63, 'Can delete pengumuman', 16, 'delete_pengumuman'),
(64, 'Can view pengumuman', 16, 'view_pengumuman'),
(65, 'Can add news', 17, 'add_news'),
(66, 'Can change news', 17, 'change_news'),
(67, 'Can delete news', 17, 'delete_news'),
(68, 'Can view news', 17, 'view_news'),
(69, 'Can add mitra industri', 18, 'add_mitraindustri'),
(70, 'Can change mitra industri', 18, 'change_mitraindustri'),
(71, 'Can delete mitra industri', 18, 'delete_mitraindustri'),
(72, 'Can view mitra industri', 18, 'view_mitraindustri'),
(73, 'Can add kompetensi', 19, 'add_kompetensi'),
(74, 'Can change kompetensi', 19, 'change_kompetensi'),
(75, 'Can delete kompetensi', 19, 'delete_kompetensi'),
(76, 'Can view kompetensi', 19, 'view_kompetensi'),
(77, 'Can add file pengumuman', 20, 'add_filepengumuman'),
(78, 'Can change file pengumuman', 20, 'change_filepengumuman'),
(79, 'Can delete file pengumuman', 20, 'delete_filepengumuman'),
(80, 'Can view file pengumuman', 20, 'view_filepengumuman'),
(81, 'Can add fasilitas jurusan', 21, 'add_fasilitasjurusan'),
(82, 'Can change fasilitas jurusan', 21, 'change_fasilitasjurusan'),
(83, 'Can delete fasilitas jurusan', 21, 'delete_fasilitasjurusan'),
(84, 'Can view fasilitas jurusan', 21, 'view_fasilitasjurusan'),
(85, 'Can add ektra', 22, 'add_ektra'),
(86, 'Can change ektra', 22, 'change_ektra'),
(87, 'Can delete ektra', 22, 'delete_ektra'),
(88, 'Can view ektra', 22, 'view_ektra'),
(89, 'Can add fasilitas lab', 23, 'add_fasilitaslab'),
(90, 'Can change fasilitas lab', 23, 'change_fasilitaslab'),
(91, 'Can delete fasilitas lab', 23, 'delete_fasilitaslab'),
(92, 'Can view fasilitas lab', 23, 'view_fasilitaslab'),
(93, 'Can add peralatan lab', 24, 'add_peralatanlab'),
(94, 'Can change peralatan lab', 24, 'change_peralatanlab'),
(95, 'Can delete peralatan lab', 24, 'delete_peralatanlab'),
(96, 'Can view peralatan lab', 24, 'view_peralatanlab'),
(97, 'Can add Statistik Sekolah', 25, 'add_schoolstatistics'),
(98, 'Can change Statistik Sekolah', 25, 'change_schoolstatistics'),
(99, 'Can delete Statistik Sekolah', 25, 'delete_schoolstatistics'),
(100, 'Can view Statistik Sekolah', 25, 'view_schoolstatistics');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$HjvjtUYOA1Yv9rLzXN2AWu$8Qcv4v1be+VB33zVxzdsUhG1bawvarVK4HAalAf2gSQ=', '2026-02-15 04:40:53.108737', 1, 'smknj', '', '', '', 1, 1, '2026-02-09 03:36:46.109312');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2026-02-09 03:37:21.501132', '1', 'B. Indonesia', 1, '[{\"added\": {}}]', 10, 1),
(2, '2026-02-09 03:38:08.386848', '1', 'Akhmad Iqbal Yuliansyah, S.E.', 1, '[{\"added\": {}}]', 13, 1),
(3, '2026-02-09 03:44:27.914709', '1', 'Akhmad Iqbal Yuliansyah, S.E.', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 1),
(4, '2026-02-09 03:44:41.955890', '1', 'Akhmad Iqbal Yuliansyah, S.E.', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 1),
(5, '2026-02-09 03:51:37.665556', '1', 'Informasi', 1, '[{\"added\": {}}]', 11, 1),
(6, '2026-02-09 03:55:49.633057', '1', 'SMK Nurul Jadid Paiton Dukung dan Sukseskan Haul dan Harlah ke-77 Pondok Pesantren Nurul Jadid', 1, '[{\"added\": {}}]', 17, 1),
(7, '2026-02-09 03:55:54.925667', '1', 'SMK Nurul Jadid Paiton Dukung dan Sukseskan Haul dan Harlah ke-77 Pondok Pesantren Nurul Jadid', 2, '[]', 17, 1),
(8, '2026-02-09 03:56:25.607494', '1', 'SMK Nurul Jadid Paiton Dukung dan Sukseskan Haul dan Harlah ke-77 Pondok Pesantren Nurul Jadid', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 17, 1),
(9, '2026-02-10 02:53:59.006923', '1', 'Statistik Sekolah - 10 February 2026', 1, '[{\"added\": {}}]', 25, 1),
(10, '2026-02-10 02:56:45.287848', '1', 'Statistik Sekolah - 10 February 2026', 2, '[]', 25, 1),
(11, '2026-02-10 03:02:33.783997', '1', 'Statistik Sekolah - 10 February 2026', 2, '[{\"changed\": {\"fields\": [\"Total instruktur\"]}}]', 25, 1),
(12, '2026-02-10 03:03:25.762595', '1', 'Rekayasa Perangkat Lunak', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"mitra industri\", \"object\": \"HHH AJA (Rekayasa Perangkat Lunak)\"}}]', 9, 1),
(13, '2026-02-10 03:03:43.472238', '1', 'Rekayasa Perangkat Lunak', 2, '[{\"added\": {\"name\": \"mitra industri\", \"object\": \"eptein files (Rekayasa Perangkat Lunak)\"}}]', 9, 1),
(14, '2026-02-11 03:06:11.556349', '2', 'AI Bisa Prediksi Tekanan Panas yang Ancam Terumbu Karang', 1, '[{\"added\": {}}]', 17, 1),
(15, '2026-02-11 03:06:14.574356', '2', 'AI Bisa Prediksi Tekanan Panas yang Ancam Terumbu Karang', 2, '[]', 17, 1),
(16, '2026-02-11 03:10:15.429380', '1', 'Pendaftaran', 1, '[{\"added\": {}}]', 7, 1),
(17, '2026-02-11 03:10:49.223053', '1', 'Sistem Penerimaan Murid Baru 2026/2027', 1, '[{\"added\": {}}]', 16, 1),
(18, '2026-02-11 03:10:57.315113', '1', 'Sistem Penerimaan Murid Baru 2026/2027', 2, '[{\"added\": {\"name\": \"file pengumuman\", \"object\": \"1433393_720.jpg\"}}]', 16, 1),
(19, '2026-02-11 03:11:18.880173', '1', 'Sistem Penerimaan Murid Baru 2026/2027', 2, '[]', 16, 1),
(20, '2026-02-14 05:02:37.485246', '1', 'Sistem Penerimaan Murid Baru 2026/2027', 2, '[{\"changed\": {\"fields\": [\"Penting\"]}}]', 16, 1),
(21, '2026-02-14 05:19:57.950786', '1', 'Statistik Sekolah - 14 February 2026', 2, '[]', 25, 1),
(22, '2026-02-14 05:20:01.525410', '1', 'Statistik Sekolah - 14 February 2026', 2, '[]', 25, 1),
(23, '2026-02-14 05:20:04.581232', '1', 'Statistik Sekolah - 14 February 2026', 2, '[]', 25, 1),
(24, '2026-02-14 05:21:20.379760', '1', 'Statistik Sekolah - 14 February 2026', 2, '[{\"changed\": {\"fields\": [\"Video url\"]}}]', 25, 1),
(25, '2026-02-14 05:33:49.053146', '2', 'Teknik Komputer dan Jaringan', 1, '[{\"added\": {}}]', 9, 1),
(26, '2026-02-14 05:34:07.295807', '2', 'Teknik Komputer dan Jaringan', 2, '[{\"changed\": {\"fields\": [\"Deskripsi singkat\", \"Deskripsi lengkap\", \"Gambar utama\"]}}]', 9, 1),
(27, '2026-02-14 05:34:44.458648', '2', 'Teknik Komputer dan Jaringan', 2, '[]', 9, 1),
(28, '2026-02-14 05:36:11.080703', '1', 'Rekayasa Perangkat Lunak', 2, '[]', 9, 1),
(29, '2026-02-14 05:36:28.920452', '3', 'Teknik Pembangkit Tenaga Listrik', 1, '[{\"added\": {}}]', 9, 1),
(30, '2026-02-14 05:36:51.754581', '4', 'Desain Komunikasi Visual', 1, '[{\"added\": {}}]', 9, 1),
(31, '2026-02-14 05:37:06.250130', '5', 'Desain Produksi Busana', 1, '[{\"added\": {}}]', 9, 1),
(32, '2026-02-14 05:37:17.453204', '6', 'Agribisnis Pengolahan Hasil Perikanan', 1, '[{\"added\": {}}]', 9, 1),
(33, '2026-02-14 05:42:56.626381', '1', 'Techonology', 1, '[{\"added\": {}}]', 8, 1),
(34, '2026-02-14 05:43:42.106758', '1', 'Makan Bakso', 1, '[{\"added\": {}}]', 22, 1),
(35, '2026-02-14 05:54:03.895541', '3', 'aaaaaaaaaaaaaa', 1, '[{\"added\": {}}]', 17, 1),
(36, '2026-02-14 05:54:10.885950', '4', 'aaaaaaa', 1, '[{\"added\": {}}]', 17, 1),
(37, '2026-02-14 05:54:24.785233', '5', 'aaaaa', 1, '[{\"added\": {}}]', 17, 1),
(38, '2026-02-14 05:54:32.212075', '6', 'aaaaaaaaaaaaaaaaaaaa', 1, '[{\"added\": {}}]', 17, 1),
(39, '2026-02-14 05:54:38.773223', '7', 'aaaaaaaaaaa', 1, '[{\"added\": {}}]', 17, 1),
(40, '2026-02-14 05:54:42.270945', '7', 'aaaaaaaaaaa', 2, '[]', 17, 1),
(41, '2026-02-15 00:39:44.756263', '7', 'aaaaaaaaaaa', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 17, 1),
(42, '2026-02-15 00:40:15.371124', '5', 'aaaaa', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 17, 1),
(43, '2026-02-15 00:47:30.370254', '1', 'Statistik Sekolah - 15 February 2026', 2, '[{\"changed\": {\"fields\": [\"Progress siswa\"]}}]', 25, 1),
(44, '2026-02-15 00:47:40.793950', '1', 'Rekayasa Perangkat Lunak', 2, '[{\"changed\": {\"fields\": [\"Jumlah siswa\", \"Guru count\"]}}]', 9, 1),
(45, '2026-02-15 00:48:19.648976', '2', 'Teknik Komputer dan Jaringan', 2, '[{\"changed\": {\"fields\": [\"Jumlah siswa\", \"Guru count\"]}}]', 9, 1),
(46, '2026-02-15 04:51:52.913846', '1', 'Statistik Sekolah - 15 February 2026', 2, '[{\"changed\": {\"fields\": [\"Video url\"]}}]', 25, 1),
(47, '2026-02-15 04:52:38.505173', '1', 'Statistik Sekolah - 15 February 2026', 2, '[{\"changed\": {\"fields\": [\"Video url\"]}}]', 25, 1),
(48, '2026-02-15 05:02:48.253952', '2', 'Teknik Kuras Jeding', 2, '[{\"changed\": {\"fields\": [\"Nama\"]}}]', 9, 1),
(49, '2026-02-16 01:49:18.469230', '1', 'Lab. Codecrafters - Rekayasa Perangkat Lunak', 1, '[{\"added\": {}}]', 23, 1),
(50, '2026-02-16 01:49:33.172231', '2', 'Lab. tkj - Teknik Kuras Jeding', 1, '[{\"added\": {}}]', 23, 1),
(51, '2026-02-18 01:20:37.730730', '7', 'aaaaaaaaaaa', 3, '', 17, 1),
(52, '2026-02-18 01:41:35.326217', '6', 'Agribisnis Pengolahan Hasil Perikanan', 2, '[{\"added\": {\"name\": \"testimoni alumni\", \"object\": \"a (Agribisnis Pengolahan Hasil Perikanan)\"}}]', 9, 1),
(53, '2026-02-18 02:43:40.541515', '1', 'Statistik Sekolah - 18 February 2026', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 25, 1),
(54, '2026-02-18 02:43:52.367260', '1', 'Statistik Sekolah - 18 February 2026', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 25, 1),
(55, '2026-02-20 02:53:08.950390', '2', 'DR Areta Ybei Radjawali Ss.s.ss.ss', 1, '[{\"added\": {}}]', 13, 1),
(56, '2026-02-20 02:53:55.357421', '3', 'Drs. Tukang Copet', 1, '[{\"added\": {}}]', 13, 1),
(57, '2026-02-20 03:00:00.090934', '3', 'Drs. Tukang Copet', 2, '[{\"changed\": {\"fields\": [\"Jabatan\"]}}]', 13, 1),
(58, '2026-02-20 03:01:53.645917', '4', 'Teknik Komputer dan Jaringan', 1, '[{\"added\": {}}]', 13, 1),
(59, '2026-02-23 01:29:40.979397', '2', 'AI Bisa Prediksi Tekanan Panas yang Ancam Terumbu Karang', 2, '[{\"changed\": {\"fields\": [\"Author\", \"Author image\"]}}]', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'otak_aplikasi', 'categorypengumuman'),
(22, 'otak_aplikasi', 'ektra'),
(8, 'otak_aplikasi', 'ektracategory'),
(21, 'otak_aplikasi', 'fasilitasjurusan'),
(23, 'otak_aplikasi', 'fasilitaslab'),
(20, 'otak_aplikasi', 'filepengumuman'),
(9, 'otak_aplikasi', 'jurusan'),
(19, 'otak_aplikasi', 'kompetensi'),
(10, 'otak_aplikasi', 'matapelajaran'),
(18, 'otak_aplikasi', 'mitraindustri'),
(17, 'otak_aplikasi', 'news'),
(11, 'otak_aplikasi', 'newscategory'),
(16, 'otak_aplikasi', 'pengumuman'),
(24, 'otak_aplikasi', 'peralatanlab'),
(15, 'otak_aplikasi', 'prospekkarir'),
(25, 'otak_aplikasi', 'schoolstatistics'),
(14, 'otak_aplikasi', 'sertifikasi'),
(13, 'otak_aplikasi', 'staffdanguru'),
(12, 'otak_aplikasi', 'testimonialumni'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-02-09 02:36:00.702739'),
(2, 'auth', '0001_initial', '2026-02-09 02:36:01.350628'),
(3, 'admin', '0001_initial', '2026-02-09 02:36:01.534331'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-02-09 02:36:01.551981'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-02-09 02:36:01.567694'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-02-09 02:36:01.655018'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-02-09 02:36:01.746379'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-02-09 02:36:01.769371'),
(9, 'auth', '0004_alter_user_username_opts', '2026-02-09 02:36:01.785115'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-02-09 02:36:01.848806'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-02-09 02:36:01.853748'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-02-09 02:36:01.869839'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-02-09 02:36:01.891568'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-02-09 02:36:01.915376'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-02-09 02:36:01.935153'),
(16, 'auth', '0011_update_proxy_permissions', '2026-02-09 02:36:01.947338'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-02-09 02:36:01.965047'),
(18, 'otak_aplikasi', '0001_initial', '2026-02-09 02:36:03.496114'),
(19, 'otak_aplikasi', '0002_remove_staffdanguru_kategori_staffdanguru_jabatan_and_more', '2026-02-09 02:36:04.089935'),
(20, 'otak_aplikasi', '0003_fasilitaslab_peralatanlab', '2026-02-09 02:36:04.265597'),
(21, 'otak_aplikasi', '0004_schoolstatistics', '2026-02-09 02:36:04.289292'),
(22, 'otak_aplikasi', '0005_remove_schoolstatistics_total_mitra', '2026-02-09 02:36:04.306345'),
(23, 'otak_aplikasi', '0006_rename_pretasi_ektra_prestasi', '2026-02-09 02:36:04.325743'),
(24, 'sessions', '0001_initial', '2026-02-09 02:36:04.383488'),
(25, 'otak_aplikasi', '0007_pengumuman_penting_alter_ektra_image_and_more', '2026-02-14 05:00:59.535746'),
(26, 'otak_aplikasi', '0008_schoolstatistics_video_url', '2026-02-14 05:19:18.046532'),
(27, 'otak_aplikasi', '0009_remove_schoolstatistics_total_instruktur_and_more', '2026-02-15 00:46:24.087704'),
(28, 'otak_aplikasi', '0010_alter_categorypengumuman_options_alter_ektra_options_and_more', '2026-02-23 01:25:54.759453'),
(29, 'otak_aplikasi', '0011_remove_news_author_image', '2026-02-23 01:36:14.368938');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5f2fjel7640jqcpm6dasuwcx5nwvmm1l', '.eJxVjMsOwiAQRf-FtSHMDMLg0n2_gVAeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0lcBIjT7zaG-MhtB-ke2m2WcW7rMo1yV-RBuxzmlJ_Xw_07qKHXb83GotE6UuZArhREUggOyZRgMivUxiCxUhatdgl0PjODskBALpUk3h-aYzXM:1vrTwD:C-PL3Hw1OZO4dGfmuATpRscc1foUeId0xkleZYnXMhw', '2026-03-01 04:40:53.116377'),
('k9j3qkyvqvhmg21e1znv04s8w3xbp97f', '.eJxVjMsOwiAQRf-FtSHMDMLg0n2_gVAeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0lcBIjT7zaG-MhtB-ke2m2WcW7rMo1yV-RBuxzmlJ_Xw_07qKHXb83GotE6UuZArhREUggOyZRgMivUxiCxUhatdgl0PjODskBALpUk3h-aYzXM:1vq0UE:akEuBdXeax5KrFihEiKEixUE4uOLG7IXmfGF1IVBS2w', '2026-02-25 03:01:54.819875'),
('ok9vemnbsv5hujhgy8x977tjgv940ulw', '.eJxVjMsOwiAQRf-FtSHMDMLg0n2_gVAeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0lcBIjT7zaG-MhtB-ke2m2WcW7rMo1yV-RBuxzmlJ_Xw_07qKHXb83GotE6UuZArhREUggOyZRgMivUxiCxUhatdgl0PjODskBALpUk3h-aYzXM:1vpI5E:rPUFHpItoacqmBIyD5zMZPlxJVxMTFzoPuk9FZdtL8k', '2026-02-23 03:37:08.940900');

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_categorypengumuman`
--

CREATE TABLE `otak_aplikasi_categorypengumuman` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_categorypengumuman`
--

INSERT INTO `otak_aplikasi_categorypengumuman` (`id`, `nama`) VALUES
(1, 'Pendaftaran');

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_ektra`
--

CREATE TABLE `otak_aplikasi_ektra` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `pembina` varchar(200) NOT NULL,
  `lokasi` varchar(200) NOT NULL,
  `content` longtext DEFAULT NULL,
  `jadwal` varchar(200) NOT NULL,
  `hari` varchar(200) NOT NULL,
  `type_ektra` varchar(200) NOT NULL,
  `siswa_aktif` int(11) NOT NULL,
  `prestasi` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL,
  `view_count` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_ektra`
--

INSERT INTO `otak_aplikasi_ektra` (`id`, `title`, `slug`, `pembina`, `lokasi`, `content`, `jadwal`, `hari`, `type_ektra`, `siswa_aktif`, `prestasi`, `tahun`, `image`, `video`, `view_count`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Makan Bakso', 'makan-bakso', 'aa', 'aaa', '', '07.00 - 09.00', 'Senin', 'Wajib', 1, 1, -1, '', NULL, 3, '2026-02-14 05:43:42.103746', '2026-02-14 05:43:42.103770', 1);

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_ektracategory`
--

CREATE TABLE `otak_aplikasi_ektracategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_ektracategory`
--

INSERT INTO `otak_aplikasi_ektracategory` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Techonology', 'techonology', '', '2026-02-14 05:42:56.618781', '2026-02-14 05:42:56.618806');

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_fasilitasjurusan`
--

CREATE TABLE `otak_aplikasi_fasilitasjurusan` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `icon` varchar(50) NOT NULL,
  `jurusan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_fasilitaslab`
--

CREATE TABLE `otak_aplikasi_fasilitaslab` (
  `id` bigint(20) NOT NULL,
  `nama_lab` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `icon` varchar(50) NOT NULL,
  `warna_tema` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `jurusan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_fasilitaslab`
--

INSERT INTO `otak_aplikasi_fasilitaslab` (`id`, `nama_lab`, `deskripsi`, `gambar`, `icon`, `warna_tema`, `created_at`, `updated_at`, `jurusan_id`) VALUES
(1, 'Lab. Codecrafters', 'aa', '', 'terminal', 'blue', '2026-02-16 01:49:18.442391', '2026-02-16 01:49:18.444751', 1),
(2, 'Lab. tkj', 'aaa', '', 'terminal', 'blue', '2026-02-16 01:49:33.167398', '2026-02-16 01:49:33.167498', 2);

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_filepengumuman`
--

CREATE TABLE `otak_aplikasi_filepengumuman` (
  `id` bigint(20) NOT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `download_count` int(10) UNSIGNED NOT NULL CHECK (`download_count` >= 0),
  `last_downloaded` datetime(6) DEFAULT NULL,
  `last_downloaded_by_id` int(11) DEFAULT NULL,
  `pengumuman_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_filepengumuman`
--

INSERT INTO `otak_aplikasi_filepengumuman` (`id`, `file`, `uploaded_at`, `download_count`, `last_downloaded`, `last_downloaded_by_id`, `pengumuman_id`) VALUES
(1, 'pengumuman/files/1433393_720.jpg', '2026-02-11 03:10:57.312892', 2, '2026-02-15 00:38:14.800160', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_jurusan`
--

CREATE TABLE `otak_aplikasi_jurusan` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kode_jurusan` varchar(50) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `deskripsi_singkat` longtext DEFAULT NULL,
  `deskripsi_lengkap` longtext DEFAULT NULL,
  `gambar_utama` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) NOT NULL,
  `durasi` varchar(50) NOT NULL,
  `jumlah_siswa` int(10) UNSIGNED NOT NULL CHECK (`jumlah_siswa` >= 0),
  `guru_count` int(10) UNSIGNED NOT NULL CHECK (`guru_count` >= 0),
  `lab_count` int(10) UNSIGNED NOT NULL CHECK (`lab_count` >= 0),
  `serapan_kerja` varchar(10) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `kuota` int(10) UNSIGNED NOT NULL CHECK (`kuota` >= 0),
  `kaprodi_nama` varchar(200) DEFAULT NULL,
  `kaprodi_email` varchar(254) DEFAULT NULL,
  `kaprodi_foto` varchar(100) DEFAULT NULL,
  `kontak` varchar(100) DEFAULT NULL,
  `gedung` varchar(100) DEFAULT NULL,
  `view_count` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_jurusan`
--

INSERT INTO `otak_aplikasi_jurusan` (`id`, `nama`, `kode_jurusan`, `slug`, `deskripsi_singkat`, `deskripsi_lengkap`, `gambar_utama`, `kategori`, `durasi`, `jumlah_siswa`, `guru_count`, `lab_count`, `serapan_kerja`, `logo`, `kuota`, `kaprodi_nama`, `kaprodi_email`, `kaprodi_foto`, `kontak`, `gedung`, `view_count`, `created_at`, `updated_at`) VALUES
(1, 'Rekayasa Perangkat Lunak', 'RPL', 'rekayasa-perangkat-lunak', '', '', '', 'Teknologi', '3 Tahun', 100, 51, 0, '95%', '', 40, NULL, NULL, '', NULL, NULL, 0, '2026-02-10 03:03:25.752345', '2026-02-15 00:47:40.788138'),
(2, 'Teknik Kuras Jeding', 'TKJ', 'teknik-komputer-dan-jaringan', 'apa ja lah', '<p>aaaja</p>', 'jurusan/images/1433393_720_1.jpg', 'Teknologi', '3 Tahun', 1000, 20, 0, '95%', '', 40, NULL, NULL, '', NULL, NULL, 0, '2026-02-14 05:33:49.039394', '2026-02-15 05:02:48.241456'),
(3, 'Teknik Pembangkit Tenaga Listrik', 'TPTL', 'teknik-pembangkit-tenaga-listrik', 'aaaaaaa', '<p>aaaaaaa</p>', '', 'Teknologi', '3 Tahun', 0, 0, 0, '95%', '', 40, NULL, NULL, '', NULL, NULL, 0, '2026-02-14 05:36:28.918916', '2026-02-14 05:36:28.918940'),
(4, 'Desain Komunikasi Visual', 'DKV', 'desain-komunikasi-visual', 'aaaaaaa', '', '', 'Teknologi', '3 Tahun', 0, 0, 0, '95%', '', 40, NULL, NULL, '', NULL, NULL, 0, '2026-02-14 05:36:51.712199', '2026-02-14 05:36:51.712224'),
(5, 'Desain Produksi Busana', 'DPB', 'desain-produksi-busana', '', '', '', 'Teknologi', '3 Tahun', 0, 0, 0, '95%', '', 40, NULL, NULL, '', NULL, NULL, 0, '2026-02-14 05:37:06.248301', '2026-02-14 05:37:06.248333'),
(6, 'Agribisnis Pengolahan Hasil Perikanan', 'APHPI', 'agribisnis-pengolahan-hasil-perikanan', '', '', '', 'Teknologi', '3 Tahun', 0, 0, 0, '95%', '', 40, NULL, NULL, '', NULL, NULL, 0, '2026-02-14 05:37:17.451882', '2026-02-18 01:41:35.308384');

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_kompetensi`
--

CREATE TABLE `otak_aplikasi_kompetensi` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tipe` varchar(10) NOT NULL,
  `jurusan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_matapelajaran`
--

CREATE TABLE `otak_aplikasi_matapelajaran` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_matapelajaran`
--

INSERT INTO `otak_aplikasi_matapelajaran` (`id`, `nama`) VALUES
(1, 'B. Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_mitraindustri`
--

CREATE TABLE `otak_aplikasi_mitraindustri` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `jurusan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_mitraindustri`
--

INSERT INTO `otak_aplikasi_mitraindustri` (`id`, `nama`, `logo`, `jurusan_id`) VALUES
(1, 'HHH AJA', '', 1),
(2, 'eptein files', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_news`
--

CREATE TABLE `otak_aplikasi_news` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `content` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL,
  `view_count` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `author` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_news`
--

INSERT INTO `otak_aplikasi_news` (`id`, `title`, `slug`, `content`, `image`, `video`, `view_count`, `created_at`, `updated_at`, `category_id`, `author`) VALUES
(1, 'SMK Nurul Jadid Paiton Dukung dan Sukseskan Haul dan Harlah ke-77 Pondok Pesantren Nurul Jadid', 'smk-nurul-jadid-paiton-dukung-dan-sukseskan-haul-dan-harlah-ke-77-pondok-pesantren-nurul-jadid', '<p><strong>Paiton, Probolinggo &mdash; 16 Januari 2026</strong>, Dalam rangka memperingati Haul dan Hari Lahir (Harlah) ke-77 Pondok Pesantren Nurul Jadid, SMK Nurul Jadid Paiton turut berperan aktif dalam mendukung dan menyukseskan seluruh rangkaian kegiatan yang diselenggarakan oleh keluarga besar Pondok Pesantren Nurul Jadid. Kegiatan ini dilaksanakan sebagai bentuk penghormatan dan doa bersama untuk pendiri pesantren, KH. Zaini Mun&rsquo;im, yang dikenal sebagai tokoh sentral dalam pengembangan pendidikan Islam dan dakwah di lingkungan pesantren.<br />\r\n<br />\r\nPuncak kegiatan Haul dan Harlah ke-77 Pondok Pesantren Nurul Jadid akan dilaksanakan pada hari senin 19 2026, bertempat di lingkungan Pondok Pesantren Nurul Jadid, Paiton, Kabupaten Probolinggo. Kegiatan ini menjadi momentum spiritual untuk mengenang jasa, perjuangan, dan keteladanan KH. Zaini Mun&rsquo;im dalam membangun lembaga pendidikan yang berlandaskan nilai keislaman, keilmuan, serta pengabdian kepada masyarakat.<br />\r\n<br />\r\nSebelum pelaksanaan puncak acara, Pondok Pesantren Nurul Jadid menyelenggarakan rangkaian kegiatan pendukung berupa Bazar dan Expo yang berlangsung selama empat hari, mulai tanggal 16 hingga 19 januari. Kegiatan ini melibatkan berbagai unit pendidikan, lembaga, dan komunitas di lingkungan pesantren, termasuk partisipasi aktif dari SMK Nurul Jadid Paiton, yang menampilkan beragam karya, produk kreatif, serta inovasi peserta didik.<br />\r\n<br />\r\nPelaksanaan Bazar dan Expo ini bertujuan untuk menumbuhkan semangat kewirausahaan, kreativitas, dan kemandirian peserta didik, sekaligus menjadi sarana edukasi dan promosi potensi lembaga pendidikan kepada masyarakat luas. Selain itu, kegiatan ini juga menjadi wadah interaksi antara warga pesantren dengan masyarakat sekitar dalam suasana yang edukatif dan religius.<br />\r\n<br />\r\nMelalui rangkaian Haul dan Harlah ke-77 ini, diharapkan seluruh civitas Pondok Pesantren Nurul Jadid, khususnya siswa SMK Nurul Jadid Paiton, mampu meneladani nilai perjuangan dan pesan KH. Zaini Mun&rsquo;im, yang menekankan pentingnya peran santri dalam berkontribusi nyata di tengah kehidupan bermasyarakat.<br />\r\n<br />\r\nDengan terselenggaranya kegiatan Haul, Harlah, Bazar, dan Expo ini, Pondok Pesantren Nurul Jadid dan SMK Nurul Jadid Paiton berharap dapat terus memperkuat ukhuwah, meningkatkan kualitas pendidikan, serta melahirkan generasi yang berakhlak mulia, berilmu, mandiri, dan siap berkontribusi bagi agama, bangsa, dan negara.<br />\r\n<br />\r\nDokumentasi kegiatan dapat diakses melalui galeri website dan media sosial resmi SMK Nurul Jadid.<br />\r\nInstagram: @smknuruljadidpaiton<br />\r\nWebsite: www.smknuruljadid.sch.id<br />\r\nFacebook: SMK Nurul Jadid Paiton Probolinggo</p>', 'news/images/smk-nurul-jadid-paiton-dukung-dan-sukseskan-haul-dan-harlah-ke-77-pondok-pes_s4HsqWQ.png', NULL, 29, '2026-02-09 03:55:49.626655', '2026-02-10 05:40:09.558526', 1, 'Tim Humas SMKNJ'),
(2, 'AI Bisa Prediksi Tekanan Panas yang Ancam Terumbu Karang', 'ai-bisa-prediksi-tekanan-panas-yang-ancam-terumbu-karang', '<p>EJUMLAH ilmuwan mengembangkan akal imitasi (AI) yang mampu memprediksi&nbsp;<em>heat stress</em>&nbsp;pada&nbsp;<strong><a href=\"https://www.tempo.co/tag/terumbu-karang\" rel=\"noopener\" target=\"_blank\" title=\"terumbu karang\">terumbu karang</a></strong>. Teknologi ini diklaim dapat memberi peringatan dini kepada pengelola terumbu karang, bahkan hingga enam pekan sebelum dimulainya pemutihan akibat tekanan panas di dasar laut.</p>\r\n\r\n<p>Seperti diketahui, terumbu karang tidak serta-merta berubah warna menjadi putih dalam semalam, melainkan memutih secara bertahap selama beberapa pekan. Alat ini dinilai urgen mengingat banyak terumbu karang sedang memasuki proses&nbsp;<em>coral bleaching</em>&nbsp;yang gejalanya sulit terdeteksi.</p>', 'news/images/ai-bisa-prediksi-tekanan-panas-yang-ancam-terumbu-karang.jpg', NULL, 22, '2026-02-11 03:06:11.551286', '2026-02-23 01:29:40.974654', 1, 'MEDESKANJ'),
(3, 'aaaaaaaaaaaaaa', 'aaaa', '', '', NULL, 0, '2026-02-14 05:54:03.889494', '2026-02-14 05:54:03.889527', 1, 'Tim Humas SMKNJ'),
(4, 'aaaaaaa', 'aaaaaaa', '', '', NULL, 0, '2026-02-14 05:54:10.884942', '2026-02-14 05:54:10.884967', 1, 'Tim Humas SMKNJ'),
(5, 'aaaaa', 'aaaaa', '', 'news/images/aaaaa.jpg', NULL, 2, '2026-02-14 05:54:24.781778', '2026-02-15 00:40:15.368127', 1, 'Tim Humas SMKNJ'),
(6, 'aaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaa', '', '', NULL, 0, '2026-02-14 05:54:32.209564', '2026-02-14 05:54:32.209607', 1, 'Tim Humas SMKNJ');

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_newscategory`
--

CREATE TABLE `otak_aplikasi_newscategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_newscategory`
--

INSERT INTO `otak_aplikasi_newscategory` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Informasi', 'informasi', 'berisi seputar informasi sekolah', '2026-02-09 03:51:37.663057', '2026-02-09 03:51:37.663108');

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_pengumuman`
--

CREATE TABLE `otak_aplikasi_pengumuman` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `view_count` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `penting` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_pengumuman`
--

INSERT INTO `otak_aplikasi_pengumuman` (`id`, `judul`, `slug`, `deskripsi`, `created_at`, `updated_at`, `view_count`, `category_id`, `penting`) VALUES
(1, 'Sistem Penerimaan Murid Baru 2026/2027', 'sistem-penerimaan-murid-baru-20262027', '<p>ada</p>', '2026-02-11 03:10:49.221282', '2026-02-14 05:02:37.476617', 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_peralatanlab`
--

CREATE TABLE `otak_aplikasi_peralatanlab` (
  `id` bigint(20) NOT NULL,
  `nama_peralatan` varchar(200) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `fasilitas_lab_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_prospekkarir`
--

CREATE TABLE `otak_aplikasi_prospekkarir` (
  `id` bigint(20) NOT NULL,
  `posisi` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `rata_gaji` varchar(100) DEFAULT NULL,
  `jurusan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_schoolstatistics`
--

CREATE TABLE `otak_aplikasi_schoolstatistics` (
  `id` bigint(20) NOT NULL,
  `persentase_pertumbuhan_siswa` varchar(10) NOT NULL,
  `progress_siswa` int(11) NOT NULL,
  `status_instruktur` varchar(50) NOT NULL,
  `progress_instruktur` int(11) NOT NULL,
  `label_mitra` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `video_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_schoolstatistics`
--

INSERT INTO `otak_aplikasi_schoolstatistics` (`id`, `persentase_pertumbuhan_siswa`, `progress_siswa`, `status_instruktur`, `progress_instruktur`, `label_mitra`, `is_active`, `updated_at`, `created_at`, `video_url`) VALUES
(1, '+42%', 42, 'Sertifikasi', 95, 'Perusahaan', 1, '2026-02-18 02:43:52.365476', '2026-02-10 02:53:58.998579', 'https://youtu.be/NCMuVN4fFgo');

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_sertifikasi`
--

CREATE TABLE `otak_aplikasi_sertifikasi` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `penyelenggara` varchar(200) NOT NULL,
  `jurusan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_staffdanguru`
--

CREATE TABLE `otak_aplikasi_staffdanguru` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `pendidikan` varchar(200) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `jabatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_staffdanguru`
--

INSERT INTO `otak_aplikasi_staffdanguru` (`id`, `nama`, `deskripsi`, `pendidikan`, `image`, `created_at`, `updated_at`, `jabatan`) VALUES
(1, 'Akhmad Iqbal Yuliansyah, S.E.', 'pemimpin ambisius', 'S3', 'staff_dan_guru/akhmad-iqbal-yuliansyah-se.png', '2026-02-09 03:38:08.377315', '2026-02-09 03:44:41.951465', 'Kepala Sekolah'),
(2, 'DR Areta Ybei Radjawali Ss.s.ss.ss', 'pemain handal', 'S10', 'staff_dan_guru/dr-areta-ybei-radjawali-sssssss.jpg', '2026-02-20 02:53:08.938525', '2026-02-20 02:53:08.938592', 'Waka bidang Kurikulum'),
(3, 'Drs. Tukang Copet', 'Pemain HANDAL', 'S3', 'staff_dan_guru/drs-tukang-copet.jpg', '2026-02-20 02:53:55.347151', '2026-02-20 03:00:00.083910', 'Waka Bidang Sarana dan Prasarana'),
(4, 'Teknik Komputer dan Jaringan', 'Pemain', 'S110', '', '2026-02-20 03:01:53.639125', '2026-02-20 03:01:53.639149', 'Guru Produktif');

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_staffdanguru_mata_pelajaran`
--

CREATE TABLE `otak_aplikasi_staffdanguru_mata_pelajaran` (
  `id` bigint(20) NOT NULL,
  `staffdanguru_id` bigint(20) NOT NULL,
  `matapelajaran_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_staffdanguru_mata_pelajaran`
--

INSERT INTO `otak_aplikasi_staffdanguru_mata_pelajaran` (`id`, `staffdanguru_id`, `matapelajaran_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `otak_aplikasi_testimonialumni`
--

CREATE TABLE `otak_aplikasi_testimonialumni` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `perusahaan` varchar(200) NOT NULL,
  `tahun_lulus` int(11) NOT NULL,
  `testimoni` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `jurusan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otak_aplikasi_testimonialumni`
--

INSERT INTO `otak_aplikasi_testimonialumni` (`id`, `nama`, `jabatan`, `perusahaan`, `tahun_lulus`, `testimoni`, `image`, `jurusan_id`) VALUES
(1, 'a', 'a', 'a', 1222, 'aaaaaaaaaaa', '', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `otak_aplikasi_categorypengumuman`
--
ALTER TABLE `otak_aplikasi_categorypengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otak_aplikasi_ektra`
--
ALTER TABLE `otak_aplikasi_ektra`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `otak_aplikasi_ektra_category_id_03d05147_fk_otak_apli` (`category_id`);

--
-- Indexes for table `otak_aplikasi_ektracategory`
--
ALTER TABLE `otak_aplikasi_ektracategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otak_aplikasi_ektracategory_slug_08b31e06` (`slug`);

--
-- Indexes for table `otak_aplikasi_fasilitasjurusan`
--
ALTER TABLE `otak_aplikasi_fasilitasjurusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otak_aplikasi_fasili_jurusan_id_e260d663_fk_otak_apli` (`jurusan_id`);

--
-- Indexes for table `otak_aplikasi_fasilitaslab`
--
ALTER TABLE `otak_aplikasi_fasilitaslab`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otak_aplikasi_fasili_jurusan_id_f9fbdcb2_fk_otak_apli` (`jurusan_id`);

--
-- Indexes for table `otak_aplikasi_filepengumuman`
--
ALTER TABLE `otak_aplikasi_filepengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otak_aplikasi_filepe_last_downloaded_by_i_d32e99f0_fk_auth_user` (`last_downloaded_by_id`),
  ADD KEY `otak_aplikasi_filepe_pengumuman_id_17b39ab0_fk_otak_apli` (`pengumuman_id`);

--
-- Indexes for table `otak_aplikasi_jurusan`
--
ALTER TABLE `otak_aplikasi_jurusan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `otak_aplikasi_kompetensi`
--
ALTER TABLE `otak_aplikasi_kompetensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otak_aplikasi_kompet_jurusan_id_c153e908_fk_otak_apli` (`jurusan_id`);

--
-- Indexes for table `otak_aplikasi_matapelajaran`
--
ALTER TABLE `otak_aplikasi_matapelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otak_aplikasi_mitraindustri`
--
ALTER TABLE `otak_aplikasi_mitraindustri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otak_aplikasi_mitrai_jurusan_id_fc391095_fk_otak_apli` (`jurusan_id`);

--
-- Indexes for table `otak_aplikasi_news`
--
ALTER TABLE `otak_aplikasi_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `otak_aplikasi_news_category_id_b77e3887_fk_otak_apli` (`category_id`);

--
-- Indexes for table `otak_aplikasi_newscategory`
--
ALTER TABLE `otak_aplikasi_newscategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otak_aplikasi_newscategory_slug_65ee589b` (`slug`);

--
-- Indexes for table `otak_aplikasi_pengumuman`
--
ALTER TABLE `otak_aplikasi_pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `otak_aplikasi_pengum_category_id_c19a0bc4_fk_otak_apli` (`category_id`);

--
-- Indexes for table `otak_aplikasi_peralatanlab`
--
ALTER TABLE `otak_aplikasi_peralatanlab`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otak_aplikasi_perala_fasilitas_lab_id_8697d753_fk_otak_apli` (`fasilitas_lab_id`);

--
-- Indexes for table `otak_aplikasi_prospekkarir`
--
ALTER TABLE `otak_aplikasi_prospekkarir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otak_aplikasi_prospe_jurusan_id_531af87d_fk_otak_apli` (`jurusan_id`);

--
-- Indexes for table `otak_aplikasi_schoolstatistics`
--
ALTER TABLE `otak_aplikasi_schoolstatistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otak_aplikasi_sertifikasi`
--
ALTER TABLE `otak_aplikasi_sertifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otak_aplikasi_sertif_jurusan_id_862e8427_fk_otak_apli` (`jurusan_id`);

--
-- Indexes for table `otak_aplikasi_staffdanguru`
--
ALTER TABLE `otak_aplikasi_staffdanguru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otak_aplikasi_staffdanguru_mata_pelajaran`
--
ALTER TABLE `otak_aplikasi_staffdanguru_mata_pelajaran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `otak_aplikasi_staffdangu_staffdanguru_id_matapela_b75d9b21_uniq` (`staffdanguru_id`,`matapelajaran_id`),
  ADD KEY `otak_aplikasi_staffd_matapelajaran_id_4c07b35e_fk_otak_apli` (`matapelajaran_id`);

--
-- Indexes for table `otak_aplikasi_testimonialumni`
--
ALTER TABLE `otak_aplikasi_testimonialumni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otak_aplikasi_testim_jurusan_id_7e1bcf09_fk_otak_apli` (`jurusan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `otak_aplikasi_categorypengumuman`
--
ALTER TABLE `otak_aplikasi_categorypengumuman`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otak_aplikasi_ektra`
--
ALTER TABLE `otak_aplikasi_ektra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otak_aplikasi_ektracategory`
--
ALTER TABLE `otak_aplikasi_ektracategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otak_aplikasi_fasilitasjurusan`
--
ALTER TABLE `otak_aplikasi_fasilitasjurusan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otak_aplikasi_fasilitaslab`
--
ALTER TABLE `otak_aplikasi_fasilitaslab`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `otak_aplikasi_filepengumuman`
--
ALTER TABLE `otak_aplikasi_filepengumuman`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otak_aplikasi_jurusan`
--
ALTER TABLE `otak_aplikasi_jurusan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `otak_aplikasi_kompetensi`
--
ALTER TABLE `otak_aplikasi_kompetensi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otak_aplikasi_matapelajaran`
--
ALTER TABLE `otak_aplikasi_matapelajaran`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otak_aplikasi_mitraindustri`
--
ALTER TABLE `otak_aplikasi_mitraindustri`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `otak_aplikasi_news`
--
ALTER TABLE `otak_aplikasi_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `otak_aplikasi_newscategory`
--
ALTER TABLE `otak_aplikasi_newscategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otak_aplikasi_pengumuman`
--
ALTER TABLE `otak_aplikasi_pengumuman`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otak_aplikasi_peralatanlab`
--
ALTER TABLE `otak_aplikasi_peralatanlab`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otak_aplikasi_prospekkarir`
--
ALTER TABLE `otak_aplikasi_prospekkarir`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otak_aplikasi_schoolstatistics`
--
ALTER TABLE `otak_aplikasi_schoolstatistics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otak_aplikasi_sertifikasi`
--
ALTER TABLE `otak_aplikasi_sertifikasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otak_aplikasi_staffdanguru`
--
ALTER TABLE `otak_aplikasi_staffdanguru`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otak_aplikasi_staffdanguru_mata_pelajaran`
--
ALTER TABLE `otak_aplikasi_staffdanguru_mata_pelajaran`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otak_aplikasi_testimonialumni`
--
ALTER TABLE `otak_aplikasi_testimonialumni`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `otak_aplikasi_ektra`
--
ALTER TABLE `otak_aplikasi_ektra`
  ADD CONSTRAINT `otak_aplikasi_ektra_category_id_03d05147_fk_otak_apli` FOREIGN KEY (`category_id`) REFERENCES `otak_aplikasi_ektracategory` (`id`);

--
-- Constraints for table `otak_aplikasi_fasilitasjurusan`
--
ALTER TABLE `otak_aplikasi_fasilitasjurusan`
  ADD CONSTRAINT `otak_aplikasi_fasili_jurusan_id_e260d663_fk_otak_apli` FOREIGN KEY (`jurusan_id`) REFERENCES `otak_aplikasi_jurusan` (`id`);

--
-- Constraints for table `otak_aplikasi_fasilitaslab`
--
ALTER TABLE `otak_aplikasi_fasilitaslab`
  ADD CONSTRAINT `otak_aplikasi_fasili_jurusan_id_f9fbdcb2_fk_otak_apli` FOREIGN KEY (`jurusan_id`) REFERENCES `otak_aplikasi_jurusan` (`id`);

--
-- Constraints for table `otak_aplikasi_filepengumuman`
--
ALTER TABLE `otak_aplikasi_filepengumuman`
  ADD CONSTRAINT `otak_aplikasi_filepe_last_downloaded_by_i_d32e99f0_fk_auth_user` FOREIGN KEY (`last_downloaded_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `otak_aplikasi_filepe_pengumuman_id_17b39ab0_fk_otak_apli` FOREIGN KEY (`pengumuman_id`) REFERENCES `otak_aplikasi_pengumuman` (`id`);

--
-- Constraints for table `otak_aplikasi_kompetensi`
--
ALTER TABLE `otak_aplikasi_kompetensi`
  ADD CONSTRAINT `otak_aplikasi_kompet_jurusan_id_c153e908_fk_otak_apli` FOREIGN KEY (`jurusan_id`) REFERENCES `otak_aplikasi_jurusan` (`id`);

--
-- Constraints for table `otak_aplikasi_mitraindustri`
--
ALTER TABLE `otak_aplikasi_mitraindustri`
  ADD CONSTRAINT `otak_aplikasi_mitrai_jurusan_id_fc391095_fk_otak_apli` FOREIGN KEY (`jurusan_id`) REFERENCES `otak_aplikasi_jurusan` (`id`);

--
-- Constraints for table `otak_aplikasi_news`
--
ALTER TABLE `otak_aplikasi_news`
  ADD CONSTRAINT `otak_aplikasi_news_category_id_b77e3887_fk_otak_apli` FOREIGN KEY (`category_id`) REFERENCES `otak_aplikasi_newscategory` (`id`);

--
-- Constraints for table `otak_aplikasi_pengumuman`
--
ALTER TABLE `otak_aplikasi_pengumuman`
  ADD CONSTRAINT `otak_aplikasi_pengum_category_id_c19a0bc4_fk_otak_apli` FOREIGN KEY (`category_id`) REFERENCES `otak_aplikasi_categorypengumuman` (`id`);

--
-- Constraints for table `otak_aplikasi_peralatanlab`
--
ALTER TABLE `otak_aplikasi_peralatanlab`
  ADD CONSTRAINT `otak_aplikasi_perala_fasilitas_lab_id_8697d753_fk_otak_apli` FOREIGN KEY (`fasilitas_lab_id`) REFERENCES `otak_aplikasi_fasilitaslab` (`id`);

--
-- Constraints for table `otak_aplikasi_prospekkarir`
--
ALTER TABLE `otak_aplikasi_prospekkarir`
  ADD CONSTRAINT `otak_aplikasi_prospe_jurusan_id_531af87d_fk_otak_apli` FOREIGN KEY (`jurusan_id`) REFERENCES `otak_aplikasi_jurusan` (`id`);

--
-- Constraints for table `otak_aplikasi_sertifikasi`
--
ALTER TABLE `otak_aplikasi_sertifikasi`
  ADD CONSTRAINT `otak_aplikasi_sertif_jurusan_id_862e8427_fk_otak_apli` FOREIGN KEY (`jurusan_id`) REFERENCES `otak_aplikasi_jurusan` (`id`);

--
-- Constraints for table `otak_aplikasi_staffdanguru_mata_pelajaran`
--
ALTER TABLE `otak_aplikasi_staffdanguru_mata_pelajaran`
  ADD CONSTRAINT `otak_aplikasi_staffd_matapelajaran_id_4c07b35e_fk_otak_apli` FOREIGN KEY (`matapelajaran_id`) REFERENCES `otak_aplikasi_matapelajaran` (`id`),
  ADD CONSTRAINT `otak_aplikasi_staffd_staffdanguru_id_56c44b0c_fk_otak_apli` FOREIGN KEY (`staffdanguru_id`) REFERENCES `otak_aplikasi_staffdanguru` (`id`);

--
-- Constraints for table `otak_aplikasi_testimonialumni`
--
ALTER TABLE `otak_aplikasi_testimonialumni`
  ADD CONSTRAINT `otak_aplikasi_testim_jurusan_id_7e1bcf09_fk_otak_apli` FOREIGN KEY (`jurusan_id`) REFERENCES `otak_aplikasi_jurusan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
