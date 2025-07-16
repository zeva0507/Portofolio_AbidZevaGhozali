-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2025 at 07:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makan_gratis`
--

-- --------------------------------------------------------

--
-- Table structure for table `distribusi_makanan`
--

CREATE TABLE `distribusi_makanan` (
  `id` int(11) NOT NULL,
  `makanan_id` int(11) NOT NULL,
  `jadwal_kirim` datetime NOT NULL,
  `status_distribusi` enum('Dijadwalkan','Dikirim','Diterima','Ditolak') DEFAULT NULL,
  `catatan_status` text DEFAULT NULL,
  `konfirmasi_penerima` tinyint(1) DEFAULT 0,
  `waktu_konfirmasi` datetime DEFAULT NULL,
  `catatan_sekolah` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distribusi_makanan`
--

INSERT INTO `distribusi_makanan` (`id`, `makanan_id`, `jadwal_kirim`, `status_distribusi`, `catatan_status`, `konfirmasi_penerima`, `waktu_konfirmasi`, `catatan_sekolah`) VALUES
(14, 35, '2025-06-07 14:43:00', 'Diterima', '', 1, '2025-06-07 14:44:46', 'Makanan diterima dengan baik'),
(16, 37, '2025-06-07 15:48:00', 'Diterima', '', 1, '2025-06-07 14:47:48', 'Makanan Sesuai dengan jumlah yang di berikan'),
(17, 38, '2025-06-07 14:48:00', 'Diterima', '', 1, '2025-06-07 14:51:38', 'Makanan diterima dengan baik'),
(19, 40, '2025-06-07 14:55:00', 'Diterima', '', 1, '2025-06-07 14:55:56', 'Makanan diterima '),
(21, 42, '2025-06-07 15:20:00', 'Diterima', '', 1, '2025-06-07 15:21:08', 'Makanan diterima dengan baik'),
(22, 43, '2025-06-07 15:27:00', 'Diterima', '', 1, '2025-06-07 15:27:08', 'Makanan diterima dengan baik'),
(23, 44, '2025-06-07 15:36:00', 'Diterima', '', 1, '2025-06-07 15:36:42', 'Makanan enak makasi'),
(24, 45, '2025-06-07 16:09:00', 'Diterima', '', 1, '2025-06-07 16:10:26', 'Makanan diterima dengan tulus'),
(26, 49, '2025-06-07 17:24:00', 'Diterima', NULL, 1, '2025-06-07 17:24:55', 'Makanan diterima dengan pihak kita'),
(27, 50, '2025-06-07 17:26:00', 'Diterima', NULL, 1, '2025-06-07 18:05:24', 'Makanan diterima dengan baik'),
(28, 51, '2025-06-07 20:42:00', 'Diterima', NULL, 1, '2025-06-07 20:43:26', 'Makanan diterima dengan kepala sekolah '),
(30, 53, '2025-06-07 20:46:00', 'Diterima', NULL, 1, '2025-06-07 20:47:03', 'Makanan diterima dengan baik'),
(31, 54, '2025-06-08 14:25:00', 'Diterima', NULL, 1, '2025-06-08 14:26:30', 'Makanan diterima dengan aku'),
(32, 55, '2025-06-27 02:49:00', 'Diterima', NULL, 1, '2025-06-27 02:49:44', 'Makanan diterima dengan baik'),
(33, 56, '2025-06-27 03:11:00', 'Diterima', NULL, 1, '2025-06-27 03:12:16', 'Makanan diterima dengan baik'),
(34, 57, '2025-06-27 11:58:00', 'Diterima', NULL, 1, '2025-06-27 11:58:33', 'Makanan diterima dengan baik');

-- --------------------------------------------------------

--
-- Table structure for table `komunikasi`
--

CREATE TABLE `komunikasi` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `tanggal` datetime DEFAULT current_timestamp(),
  `status` enum('Unread','Read') DEFAULT 'Unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komunikasi`
--

INSERT INTO `komunikasi` (`id`, `sender_id`, `receiver_id`, `pesan`, `tanggal`, `status`) VALUES
(1, 11, 15, 'halo sata pengguna', '2025-06-05 04:26:48', 'Unread'),
(2, 15, 11, 'iyaa kenapa ', '2025-06-05 04:27:29', 'Unread'),
(3, 11, 15, 'saya ada perlu', '2025-06-05 04:35:46', 'Unread'),
(4, 11, 15, 'p', '2025-06-05 04:35:52', 'Unread'),
(5, 11, 15, 'p', '2025-06-05 04:35:58', 'Unread'),
(6, 11, 15, 'halo', '2025-06-05 04:36:11', 'Unread'),
(7, 15, 11, 'kenapa yaa', '2025-06-05 04:38:04', 'Unread'),
(8, 11, 15, 'pp', '2025-06-05 04:42:04', 'Unread'),
(9, 11, 15, 'pp', '2025-06-05 04:42:24', 'Unread'),
(10, 11, 15, 'saya ada perlu', '2025-06-05 04:55:50', 'Unread'),
(11, 11, 15, 'makanan saya basi', '2025-06-05 04:56:20', 'Unread'),
(12, 15, 11, 'siap kaa nanti km proses yaa', '2025-06-05 05:27:12', 'Unread'),
(13, 11, 15, 'makasi ya ka', '2025-06-05 05:31:56', 'Unread'),
(14, 15, 11, 'iyaa kenapa ', '2025-06-05 05:45:22', 'Unread'),
(15, 15, 11, 'sudah kami konfrimasi yaa ka  terimakasi informasinyaa', '2025-06-05 10:21:59', 'Unread'),
(16, 24, 11, 'halo ka ada yang perlu saya bantu', '2025-06-05 11:14:01', 'Unread'),
(17, 11, 24, 'makan gratisnya ga enakkkk bgt basii  wuekk', '2025-06-05 11:14:36', 'Unread'),
(18, 24, 11, 'baik kaa nanti saya akan perbaiki yaa ka terimakasi ka  sudah menghubungin pihak petugas', '2025-06-05 11:16:36', 'Unread'),
(19, 11, 24, 'klo bole tau makananya apaa ya ka jenis nyaa  apa mohon di beri tahu ka', '2025-06-05 11:33:46', 'Unread'),
(20, 24, 11, 'Daging Rendang rasanya asam serta susunya basi', '2025-06-05 11:34:25', 'Unread'),
(21, 3, 24, 'makanan saya basi', '2025-06-05 11:43:58', 'Unread'),
(22, 15, 11, 'halo ka', '2025-06-07 19:34:28', 'Unread'),
(23, 11, 4, 'p', '2025-06-08 14:34:55', 'Unread'),
(24, 15, 11, 'haloo', '2025-06-24 22:19:08', 'Unread'),
(25, 11, 15, 'haii', '2025-06-26 20:23:25', 'Unread'),
(26, 15, 11, 'siap', '2025-06-26 20:28:06', 'Unread'),
(27, 15, 11, 'pp', '2025-06-27 02:50:15', 'Unread');

-- --------------------------------------------------------

--
-- Table structure for table `makanan_kirim`
--

CREATE TABLE `makanan_kirim` (
  `id` int(11) NOT NULL,
  `nama_makanan` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sekolah_id` int(11) DEFAULT NULL,
  `tanggal_kirim` date NOT NULL,
  `keterangan` text DEFAULT NULL,
  `lauk_menu` varchar(255) DEFAULT '',
  `alamat` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `makanan_kirim`
--

INSERT INTO `makanan_kirim` (`id`, `nama_makanan`, `jumlah`, `sekolah_id`, `tanggal_kirim`, `keterangan`, `lauk_menu`, `alamat`) VALUES
(3, 'basoo', 1212, 8, '2025-05-30', 'enakkk', 'Basoo', 'klari'),
(4, 'susu dan ayam', 12121, 7, '2025-05-29', 'enak', 'susu dan ayam', 'tanjung pura'),
(5, '', 1111, 7, '2025-05-30', NULL, 'ayam goreng dan air mineral', 'tanjung pura'),
(6, '', 233, 2, '2025-05-30', NULL, 'susu dan sereal', 'cibalongsari'),
(9, '', 1200, 22, '2025-06-28', NULL, 'babi guling', 'TELUKJAMBE'),
(10, '', 10000, 20, '2025-06-29', NULL, 'babo', 'singaperbangsa'),
(11, '', 10000, 13, '2025-06-23', NULL, 'babi guling', 'prima sukaharja'),
(12, '', 10000, 10, '2025-06-27', NULL, 'babi guling', 'karangpawitan'),
(13, '', 10000, 10, '2025-06-25', NULL, 'babi guling', 'karangpawitan'),
(14, '', 12000, 10, '2025-06-07', NULL, 'mie ayam mas aji ', 'karangpawitan'),
(16, '', 222, 10, '2025-06-07', NULL, 'mie ayam mas aji ', 'karangpawitan'),
(17, '', 2000, 10, '2025-06-07', NULL, 'ayam kecap', 'karangpawitan'),
(18, '', 1000, 12, '2025-06-07', NULL, 'babi', 'karangpawitan'),
(21, '', 2000, 12, '2025-06-07', NULL, 'ayam goreng', 'karangpawitan'),
(22, '', 2000, 12, '2025-06-17', NULL, 'ayam kecap', 'karangpawitan'),
(23, '', 1000, 20, '2025-07-10', NULL, '1212', 'singaperbangsa'),
(35, '', 2000, 28, '2025-06-07', NULL, 'mie ayam mas aji ', 'Tanjungpura'),
(37, '', 2000, 28, '2025-06-07', NULL, 'babi guling', 'Tanjungpura'),
(38, '', 1000, 12, '2025-06-07', NULL, 'ikan aja', 'karangpawitan'),
(40, '', 2000, 12, '2025-06-07', NULL, 'babi guling', 'karangpawitan'),
(42, '', 2000, 28, '2025-06-07', NULL, 'babi ', 'Tanjungpura'),
(43, '', 1000, 12, '2025-06-07', NULL, 'manas', 'karangpawitan'),
(44, '', 1900, 12, '2025-06-07', NULL, 'ayam sayur', 'karangpawitan'),
(45, '', 1000, 12, '2025-06-07', NULL, 'baso sapi', 'karangpawitan'),
(47, '', 1200, 20, '2025-06-05', NULL, 'babi', 'singaperbangsa'),
(48, '', 1200, 2, '2025-06-06', NULL, 'mie ayam mas aji ', 'cibalongsari'),
(49, '', 1000, 12, '2025-06-07', NULL, 'ayammm cikin', 'karangpawitan'),
(50, '', 90, 28, '2025-06-07', NULL, 'ayam kecap', 'Tanjungpura'),
(51, '', 1200, 33, '2025-06-07', NULL, 'ayam kecap', 'Telukjambe'),
(53, '', 1200, 33, '2025-06-07', NULL, 'mie ayam mas aji ', 'Telukjambe'),
(54, '', 2000, 33, '2025-06-08', NULL, 'Baso', 'Telukjambe'),
(55, '', 2000, 28, '2025-06-27', NULL, 'ayam kecap', 'Tanjungpura'),
(56, '', 2000, 12, '2025-06-27', NULL, 'ayam kecap', 'karangpawitan'),
(57, '', 2000, 12, '2025-06-27', NULL, 'basoo', 'karangpawitan');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `isi` text NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) DEFAULT 'Belum Diproses',
  `foto` varchar(255) DEFAULT NULL,
  `komentar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `user_id`, `isi`, `tanggal`, `status`, `foto`, `komentar`) VALUES
(1, 7, 'susu basi', '2025-05-26 19:11:43', 'Diproses', NULL, NULL),
(2, 3, 'makanann basi', '2025-05-26 19:15:16', 'Diproses', NULL, NULL),
(3, 11, 'makanan basi\r\n', '2025-05-26 21:50:56', 'Selesai', NULL, NULL),
(4, 12, 'ayam basi', '2025-05-26 22:09:37', 'Selesai', NULL, NULL),
(5, 11, 'petugasnya judes', '2025-05-27 17:34:18', NULL, NULL, NULL),
(6, 11, 'makanan bau', '2025-06-05 05:53:36', 'Selesai', NULL, NULL),
(11, 2, 'SDN 1 KLARI Belum Mendapatkan MBG', '2025-06-07 20:55:15', 'Diproses', NULL, NULL),
(12, 11, 'halo', '2025-06-08 23:16:39', 'Belum Diproses', NULL, 'halo jugaa'),
(19, 28, 'Ada yang  basi makananya', '2025-06-27 03:04:48', 'Belum Diproses', 'pengaduan_1750968288_8642.png', 'siapp kami lebi hati hati lagi dalam pengelolaan makanan'),
(20, 28, 'Maknan Asin ', '2025-06-27 03:05:56', 'Belum Diproses', 'pengaduan_1750968356_1077.png', 'siap makasi banyak atas laporanya kami tingkatkan lagi ya soal rasa terimaksi atas evaluasinya'),
(21, 12, 'Makanan saya dituker snack', '2025-06-27 11:56:22', 'Diproses', 'pengaduan_1751000182_3009.png', 'siapp diproses');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `pengirim_id` int(11) DEFAULT NULL,
  `penerima_id` int(11) DEFAULT NULL,
  `subjek` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Belum Dibaca','Sudah Dibaca') DEFAULT 'Belum Dibaca',
  `reply_to` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `pengirim_id`, `penerima_id`, `subjek`, `isi`, `tanggal`, `status`, `reply_to`) VALUES
(1, 2, 4, 'MBG', 'Sekolah saya  belum mendapatkan mbg\r\n', '2025-06-08 05:17:01', 'Sudah Dibaca', NULL),
(2, 4, 2, 'MBG', 'Siap ka kami data ya', '2025-06-08 05:17:50', 'Sudah Dibaca', NULL),
(3, 28, 4, 'MBG', 'Ada yang sakit Perut', '2025-06-08 05:19:35', 'Sudah Dibaca', NULL),
(4, 4, 28, 'MBG', 'Siap Untuk Yang sakit perut  nanti di data aja ya berapa orang kami akan tingkatkan kebersihanya', '2025-06-08 05:22:04', 'Sudah Dibaca', NULL),
(5, 2, 4, 'MBG', 'Kapan  min saya blm dapat mbg nih\r\n', '2025-06-08 05:26:27', 'Sudah Dibaca', NULL),
(6, 4, 2, 'MBG', 'Kami proses yaa mohon bersabar', '2025-06-08 05:27:33', 'Sudah Dibaca', NULL),
(7, 28, 4, 'MBG', 'makanan saya kurang enak', '2025-06-08 05:34:19', 'Sudah Dibaca', NULL),
(8, 4, 28, 'MBG', 'Siap kan kami akan akan tingkatkan lagi untuk rasa', '2025-06-08 05:35:08', 'Sudah Dibaca', NULL),
(9, 28, 4, 'MBG', 'NBasi\r\n', '2025-06-08 05:50:13', 'Sudah Dibaca', NULL),
(10, 4, 28, 'MBG', 'Iyaa akan proses', '2025-06-08 05:50:35', 'Sudah Dibaca', NULL),
(11, 28, 4, 'MBG', 'y', '2025-06-08 05:58:55', 'Sudah Dibaca', NULL),
(12, 4, 28, 'MBG', 'siap\r\n', '2025-06-08 05:59:12', 'Sudah Dibaca', NULL),
(13, 4, 28, 'MBG', 'y', '2025-06-08 06:00:24', 'Sudah Dibaca', NULL),
(14, 4, 28, 'yy', 'ga', '2025-06-08 06:02:51', 'Sudah Dibaca', 11),
(15, 2, 4, 'MBG', 'yyyy', '2025-06-08 06:07:16', 'Sudah Dibaca', NULL),
(16, 4, 2, 'MBG', 'gggg', '2025-06-08 06:07:36', 'Sudah Dibaca', 15),
(17, 4, 28, 'MBG', 'siapp kaa', '2025-06-08 06:37:01', 'Sudah Dibaca', 7),
(18, 4, 2, 'MBG', 'Siap diproses', '2025-06-08 06:42:20', 'Sudah Dibaca', 1),
(19, 4, 2, 'MBG', 'Iyaa secepatnya ka', '2025-06-08 06:50:45', 'Sudah Dibaca', 5),
(20, 4, 28, 'MBG', 'siap kami tingkatkan lgi sopnya', '2025-06-08 06:58:13', 'Sudah Dibaca', 3),
(21, 4, 28, 'MBG', 'siap kami akan tingkatkan lagi sop nya kakak', '2025-06-08 07:06:39', 'Sudah Dibaca', 9),
(22, 2, 4, 'MBG', 'banyak yg sakit perut', '2025-06-08 07:31:18', 'Sudah Dibaca', NULL),
(23, 4, 2, 'MBG', 'saya tingkatkan lagi sop nya', '2025-06-08 07:32:04', 'Sudah Dibaca', 22),
(24, 33, 4, 'MBG', 'Sekolah Saya belum dapat mbg ', '2025-06-08 15:36:44', 'Sudah Dibaca', NULL),
(25, 4, 33, 'MBG', 'siap ka kmi proses', '2025-06-08 15:37:24', 'Sudah Dibaca', 24),
(26, 33, 4, 'y', 'makanan basi', '2025-06-08 15:43:43', 'Sudah Dibaca', NULL),
(27, 4, 33, 'y', 'siapp kami proses', '2025-06-08 15:44:01', 'Sudah Dibaca', 26),
(28, 28, 4, 'p', 'y', '2025-06-09 03:24:32', 'Sudah Dibaca', NULL),
(29, 4, 28, 'y', 'gaaa', '2025-06-09 03:24:52', 'Sudah Dibaca', 28),
(30, 28, 4, 'MBG', 'Pada menu Rendang sudah ada yang asam', '2025-06-09 03:37:14', 'Sudah Dibaca', NULL),
(31, 4, 28, 'MBG', 'iyaa kami proses ya ka', '2025-06-09 03:38:50', 'Belum Dibaca', 30),
(32, 28, 4, '0', 'y', '2025-06-09 03:39:42', 'Sudah Dibaca', NULL),
(33, 4, 28, 'MBG', 'Yaa', '2025-06-09 03:52:43', 'Belum Dibaca', 32),
(34, 12, 4, 'apa ajaa', 'halo admin', '2025-06-09 03:53:38', 'Sudah Dibaca', NULL),
(35, 4, 12, 'apa ajaa', 'halo jugaa', '2025-06-09 04:02:20', 'Belum Dibaca', 34),
(36, 12, 4, 'yaya', 'hahaha', '2025-06-09 04:03:18', 'Sudah Dibaca', NULL),
(37, 4, 12, 'pak', 'hahahihi', '2025-06-09 04:03:51', 'Belum Dibaca', 36),
(38, 12, 1, 'Woy', 'Apa', '2025-06-26 12:34:26', 'Sudah Dibaca', NULL),
(39, 1, 12, 'Woy', 'Apa', '2025-06-26 12:34:47', 'Belum Dibaca', 38),
(40, 1, 12, 'Woy', 'apaaaa sayang', '2025-06-26 13:16:56', 'Belum Dibaca', 38),
(41, 12, 4, 'Woy', 'Aapa', '2025-06-26 16:39:49', 'Sudah Dibaca', NULL),
(42, 1, 12, 'Woy', 'apaaaaaaaa ppp', '2025-06-26 18:04:38', 'Belum Dibaca', 38),
(43, 12, 1, 'p', 'p', '2025-06-26 18:26:20', 'Sudah Dibaca', NULL),
(44, 1, 12, 'p', 'y', '2025-06-26 18:26:40', 'Belum Dibaca', 43),
(45, 12, 4, 'ya', 'Y', '2025-06-26 19:38:57', 'Sudah Dibaca', NULL),
(46, 1, 12, 'p', 'yaa', '2025-06-26 19:42:38', 'Belum Dibaca', 43),
(47, 2, 1, 'y', 'kapan saya dpt mbg', '2025-06-26 19:44:23', 'Sudah Dibaca', NULL),
(48, 1, 2, 'y', 'apaa', '2025-06-26 19:44:38', 'Belum Dibaca', 47),
(49, 4, 12, 'ya', 'apaa\r\n', '2025-06-26 20:13:07', 'Belum Dibaca', 45),
(50, 4, 12, 'Woy', 'aapaa', '2025-06-26 20:13:12', 'Belum Dibaca', 41),
(51, 1, 2, 'y', 'apaaaa lgo', '2025-06-26 20:56:17', 'Belum Dibaca', 47),
(52, 12, 1, 'pp', 'yaa', '2025-06-27 04:56:44', 'Sudah Dibaca', NULL),
(53, 1, 12, 'pp', 'apaaa', '2025-06-27 04:59:22', 'Belum Dibaca', 52);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `role` enum('admin','sekolah','pengguna','petugas') NOT NULL,
  `alamat` varchar(255) DEFAULT '',
  `keterangan` varchar(20) DEFAULT 'Belum',
  `jenjang` varchar(10) DEFAULT '',
  `status_sekolah` varchar(20) DEFAULT '',
  `alasan_belum` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `role`, `alamat`, `keterangan`, `jenjang`, `status_sekolah`, `alasan_belum`) VALUES
(1, 'admin', '123', 'Admin', 'admin', '', 'Belum', '', '', ''),
(2, 'SDN 1 KLARI', '123', 'SDN 1 KLARI', 'sekolah', 'cibalongsarii', 'Belum', 'SD', 'Negeri', 'Gada anggarann'),
(3, 'pengguna1', '123', 'Budi', 'pengguna', '', 'Belum', '', '', ''),
(4, 'aryaa', '123', 'arya(admin)', 'admin', 'a', 'Belum', '', '', ''),
(7, 'smkn7karawang', '123', 'smkn7karawang', 'sekolah', 'tanjung bausak', 'Belum', 'SMK', 'Negeri', 'Gada anggaran'),
(8, 'smpn 1 klari', '123', 'smpn 1 klari', 'sekolah', 'klari', 'Belum', 'SMP', 'Negeri', 'gada anggaran'),
(10, 'sman 11 karawang', '123', 'sman 11 karawang', 'sekolah', 'karangbolo', 'Belum', 'SMA', 'Negeri', 'gatau'),
(11, 'adit', '123', 'adit', 'pengguna', '', 'Belum', '', '', ''),
(12, 'sman1karawang', '123', 'sman1karawang', 'sekolah', 'karangpawitan', 'Sudah', 'SMA', 'Negeri', ''),
(13, 'sman3 telukjambe', '123', 'sman3 telukjambe', 'sekolah', 'prima sukaharja', 'Belum', 'SMA', 'Negeri', 'gatau'),
(15, 'zeva', '123', 'zeva', 'petugas', '', 'Belum', '', '', ''),
(20, 'sman 3 karawang', '123', 'sman 3 karawang', 'sekolah', 'singaperbangsa', 'Belum', 'SMA', 'Negeri', 'gada anggaran'),
(22, 'SMAN 2 TELUKJAMBE', '123', 'SMAN 2 TELUKJAMBE', 'sekolah', 'TELUKJAMBE', 'Belum', 'SMA', 'Negeri', 'gada anggaran'),
(23, 'asep', '123', 'asep', 'petugas', 'klari', 'Belum', '', '', ''),
(24, 'dafa', '123', 'dafa', 'petugas', 'klaten', 'Belum', '', '', ''),
(25, 'ojan', '123', 'ojan', 'petugas', 'depok', 'Belum', '', '', ''),
(26, 'raka', '123', 'raka', 'petugas', 'bengkulu', 'Belum', '', '', ''),
(27, 'edik', '123', 'edik', 'petugas', 'bogor', 'Belum', '', '', ''),
(28, 'smkn1karawang', '123', 'smkn1karawang', 'sekolah', 'Tanjungpura', 'Sudah', 'SMK', 'Negeri', ''),
(33, 'smkBhineka', '123', 'smkbhineka', 'sekolah', 'Telukjambe', 'Sudah', 'SMK', 'Swasta', ''),
(35, 'rafli', '$2y$10$a8jFih5owwy1M4xk7ajxm.2Oxa2AD62fGwsdxxcaGOhMA16xrKu9y', 'rafli dwi', 'pengguna', 'terangsari', 'Belum', '', '', ''),
(36, 'sekolah685d8d3deac51', '$2y$12$8rtLWHwwbj/JZDY4j8HVWe6.Q6DYnVOj5ELwYo8.Ruk7yg8ZPv3f.', 'yaya', 'sekolah', 'yayay', 'Sudah', 'SMA', 'Negeri', ''),
(37, 'felisa', '$2y$12$MBAXBriLxsjVPYJnj97qZe5fyuuEI6vn0qsBLwFvnqmQPeSnUrjIW', 'Felisa', 'pengguna', '', 'Belum', '', '', ''),
(39, 'sekolah685da2278ceb3', '$2y$10$nAg27UznoU8nLaUX6awZfOZgRYZUh5/2Rb8ngVtXxrqaDjMTkMlnu', 'smpn2telukjambe', 'sekolah', 'prima sukaharja', 'Belum', 'SMP', 'Negeri', 'Gada Uang'),
(40, 'sekolah685da364a6fa9', '$2y$10$0fCxtwv2KcLFF/aDWeLgI.9IPiCbUQv0dUB2ce6p36x05Rf4HTAVm', 'smpn1telukjambe', 'sekolah', 'Telukjambe', 'Belum', 'SMP', 'Negeri', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `distribusi_makanan`
--
ALTER TABLE `distribusi_makanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `makanan_id` (`makanan_id`);

--
-- Indexes for table `komunikasi`
--
ALTER TABLE `komunikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `makanan_kirim`
--
ALTER TABLE `makanan_kirim`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sekolah_id` (`sekolah_id`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengirim_id` (`pengirim_id`),
  ADD KEY `penerima_id` (`penerima_id`),
  ADD KEY `fk_reply` (`reply_to`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `distribusi_makanan`
--
ALTER TABLE `distribusi_makanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `komunikasi`
--
ALTER TABLE `komunikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `makanan_kirim`
--
ALTER TABLE `makanan_kirim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `distribusi_makanan`
--
ALTER TABLE `distribusi_makanan`
  ADD CONSTRAINT `distribusi_makanan_ibfk_1` FOREIGN KEY (`makanan_id`) REFERENCES `makanan_kirim` (`id`);

--
-- Constraints for table `komunikasi`
--
ALTER TABLE `komunikasi`
  ADD CONSTRAINT `komunikasi_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `komunikasi_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `makanan_kirim`
--
ALTER TABLE `makanan_kirim`
  ADD CONSTRAINT `makanan_kirim_ibfk_1` FOREIGN KEY (`sekolah_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `fk_reply` FOREIGN KEY (`reply_to`) REFERENCES `pesan` (`id`),
  ADD CONSTRAINT `pesan_ibfk_1` FOREIGN KEY (`pengirim_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `pesan_ibfk_2` FOREIGN KEY (`penerima_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
