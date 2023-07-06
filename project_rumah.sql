-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2023 at 01:54 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_rumah`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatives`
--

CREATE TABLE `alternatives` (
  `id` bigint UNSIGNED NOT NULL,
  `id_rumah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_rumah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int NOT NULL,
  `luas_bangunan` int NOT NULL,
  `luas_tanah` int NOT NULL,
  `kamar_tidur` int NOT NULL,
  `kamar_mandi` int NOT NULL,
  `daya_listrik` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternatives`
--

INSERT INTO `alternatives` (`id`, `id_rumah`, `alternative`, `nama_rumah`, `harga`, `luas_bangunan`, `luas_tanah`, `kamar_tidur`, `kamar_mandi`, `daya_listrik`, `created_at`, `updated_at`) VALUES
(1, '89', 'A1', 'Corporis pariatur sint.', 1039, 474, 553, 5, 8, 4198, '2023-06-08 00:50:40', '2023-06-08 00:50:40'),
(2, '92', 'A2', 'Iste non.', 800, 125, 93, 2, 8, 4535, '2023-06-08 00:50:45', '2023-06-08 00:50:45'),
(3, '95', 'A3', 'Harum ducimus odit eligendi similique quisquam nobis quidem.', 892, 23, 614, 5, 2, 1856, '2023-06-08 00:50:49', '2023-06-08 00:50:49'),
(4, '74', 'A4', 'Dignissimos et deleniti dolorum.', 900, 477, 576, 7, 7, 1132, '2023-06-08 00:50:59', '2023-06-08 00:50:59'),
(5, '82', 'A5', 'Voluptas fugit totam et animi.', 881, 227, 648, 12, 4, 2303, '2023-06-08 00:51:21', '2023-06-08 00:51:21'),
(11, '87', 'A6', 'Dicta quo dicta et.', 76, 444, 42, 13, 4, 3988, '2023-06-19 21:46:40', '2023-06-19 21:46:40'),
(12, '97', 'A7', 'Accusantium omnis a in maiores inventore corrupti.', 1, 434, 234, 13, 5, 4002, '2023-06-23 01:12:10', '2023-06-23 01:12:10'),
(13, '85', 'A8', 'Aliquam molestiae aut temporibus impedit reiciendis veniam sed in sed.', 83, 47, 347, 9, 10, 4016, '2023-06-23 01:18:46', '2023-06-23 01:18:46');

--
-- Triggers `alternatives`
--
DELIMITER $$
CREATE TRIGGER `id_alternative` BEFORE INSERT ON `alternatives` FOR EACH ROW BEGIN
DECLARE urut char(3);
DECLARE v_id char(2);
SELECT COUNT(*)+101 INTO urut FROM alternatives;
SELECT CONCAT('A', RIGHT(urut,1)) INTO v_id;
SET NEW.alternative = v_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `bobot`
-- (See below for the actual view)
--
CREATE TABLE `bobot` (
`bobot` double
,`id` int
);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Property', 'property', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(2, 'House', 'house', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(3, 'Apartment', 'apartment', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(4, 'Hotel', 'hotel', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(5, 'Furniture', 'furniture', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(6, 'Interior', 'interior', '2023-06-08 00:50:30', '2023-06-08 00:50:30');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ci`
-- (See below for the actual view)
--
CREATE TABLE `ci` (
`ci` double
);

-- --------------------------------------------------------

--
-- Table structure for table `comparisons`
--

CREATE TABLE `comparisons` (
  `id` bigint UNSIGNED NOT NULL,
  `harga` int NOT NULL,
  `luas_bangunan` int NOT NULL,
  `luas_tanah` int NOT NULL,
  `kamar_tidur` int NOT NULL,
  `kamar_mandi` int NOT NULL,
  `daya_listrik` int NOT NULL,
  `tahun_dibangun` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `nama_rumah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `luas_bangunan` int NOT NULL,
  `luas_tanah` int NOT NULL,
  `kamar_tidur` int NOT NULL,
  `kamar_mandi` int NOT NULL,
  `lantai` int NOT NULL,
  `sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daya_listrik` int NOT NULL,
  `interior` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_dibangun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi_bangunan` tinyint(1) NOT NULL DEFAULT '1',
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `user_id`, `status`, `nama_rumah`, `slug`, `alamat`, `kota`, `provinsi`, `kode_pos`, `harga`, `deskripsi`, `luas_bangunan`, `luas_tanah`, `kamar_tidur`, `kamar_mandi`, `lantai`, `sertifikat`, `daya_listrik`, `interior`, `tahun_dibangun`, `kondisi_bangunan`, `main_image`, `image1`, `image2`, `image3`, `image4`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Rumah Baru Batu Malang', 'rumah-baru-batu-malang', 'Gg. Casablanca No. 750', 'Batu', 'Jawa Timur', '87050', 59, '<div>Quia dolores harum voluptate et ipsum quo. Labore labore fuga culpa quia excepturi reiciendis. Optio molestias quis quia voluptatibus veniam ex.</div>', 32, 50, 2, 4, 1, 'Aut possimus rerum.', 1078, 'Sapiente velit molestias.', '1994', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-18 18:51:27'),
(2, 3, 1, 'Est aut ut qui ipsum.', 'ipsa-sunt-iste-quasi-exercitationem-saepe-nemo', 'Ds. Perintis Kemerdekaan No. 442', 'Blitar', 'Jawa Tengah', '18437', 99, '<div>Voluptatem accusamus qui temporibus possimus. Velit vero odio qui sit. Reiciendis molestiae numquam aliquam voluptatibus. Similique voluptatem sint qui voluptates maxime est aut.</div>', 205, 711, 11, 8, 3, 'Eos commodi.', 3959, 'Culpa.', '1991', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-18 18:50:25'),
(3, 3, 0, 'Fugit ab corporis nihil nemo ipsum in.', 'quisquam-et-molestias-accusamus-non-enim-consequatur', 'Jr. Babadak No. 907', 'Cirebon', 'DI Yogyakarta', '30529', 25, 'Dicta est sed deleniti natus temporibus et rerum. Iure sed hic sit ab labore. Occaecati consectetur voluptatem ut qui quia unde.', 319, 202, 11, 5, 5, 'Porro aut.', 2913, 'Ducimus consectetur.', '1997', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(4, 1, 0, 'Nostrum est asperiores.', 'et-voluptatem-voluptatem-ratione-praesentium', 'Jln. Bass No. 792', 'Padang', 'Aceh', '13198', 48, 'Iure aut eos voluptatem architecto non quisquam. Rem ipsa harum commodi qui quos sed. At omnis aut veniam aliquid sed ratione ducimus.', 326, 62, 3, 7, 1, 'Sint est.', 2737, 'Modi est.', '1990', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(5, 3, 0, 'Quisquam numquam delectus.', 'laboriosam-doloribus-officiis-sunt-in', 'Gg. Halim No. 735', 'Administrasi Jakarta Barat', 'DKI Jakarta', '29630', 92, 'Ut velit nemo quasi dolorem commodi aut accusantium autem. Ipsa cum quidem natus laborum. Magnam autem id hic id.', 437, 306, 2, 9, 4, 'Earum omnis.', 3131, 'Architecto.', '1977', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(6, 2, 1, 'In reprehenderit autem error voluptas.', 'consequatur-incidunt-voluptas-esse-aut-delectus-molestiae-voluptatem', 'Ds. Ters. Buah Batu No. 465', 'Metro', 'Sulawesi Selatan', '62134', 52, 'Asperiores optio temporibus ducimus et quia quisquam. Debitis debitis ipsa illum. Labore quidem ipsum voluptate ex sit rem quis.', 293, 297, 4, 6, 2, 'Molestiae distinctio.', 2414, 'Ea.', '2018', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(7, 2, 1, 'Molestiae eum.', 'consectetur-nihil-est-itaque-deserunt-rem-sed', 'Kpg. Bacang No. 203', 'Sibolga', 'Maluku Utara', '78160', 70, 'Id suscipit itaque et dolor quo voluptatem sunt. Animi libero neque quam architecto sunt voluptas. Earum officiis repellendus magnam rerum. Neque voluptatem laboriosam pariatur inventore accusantium.', 404, 364, 2, 5, 3, 'Distinctio molestias.', 1252, 'Non necessitatibus qui.', '1972', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(8, 1, 1, 'Quidem placeat error.', 'placeat-debitis-eos-totam-aut-consectetur-quo', 'Dk. Adisumarmo No. 224', 'Singkawang', 'Jawa Tengah', '90181', 60, 'Quod enim eveniet possimus et. Quo nisi vel et asperiores. Quis pariatur ab voluptatem fugiat.', 94, 337, 14, 6, 4, 'Non eligendi.', 2397, 'Accusamus ipsa.', '2007', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(9, 2, 0, 'Id ad voluptatem ex.', 'possimus-adipisci-voluptate-blanditiis-sed-rerum', 'Jr. Hasanuddin No. 610', 'Pagar Alam', 'Maluku', '15505', 28, 'Aut aliquid exercitationem aut suscipit deserunt. Sint repellat laudantium quis. Laudantium est et rerum ex molestias enim qui. Repudiandae quidem dolores sunt ea tempora vel est sed.', 50, 270, 15, 5, 5, 'Id delectus iure.', 4497, 'Autem architecto.', '1986', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(10, 2, 1, 'Aperiam omnis quis voluptas totam.', 'aut-debitis-eos-voluptatum-deleniti-consequatur-sint-commodi', 'Ki. Baja No. 242', 'Palu', 'Riau', '86792', 2, 'Debitis magni provident ipsa ut. Nobis enim adipisci quibusdam omnis. Dolore et officiis et eligendi officia.', 325, 410, 12, 7, 1, 'Ipsam.', 4521, 'Similique alias.', '1974', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(11, 1, 0, 'A quia odio adipisci id ullam at eum provident nobis.', 'ut-exercitationem-impedit-eius-voluptatem', 'Ki. Raden No. 636', 'Bogor', 'Kalimantan Utara', '98802', 7, 'Consequatur incidunt eum aperiam. Unde eius sint amet adipisci aut in cumque. Eligendi quo deserunt veritatis et suscipit voluptatem sapiente.', 467, 424, 5, 10, 1, 'Necessitatibus dignissimos.', 2727, 'Autem ducimus.', '2005', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(12, 3, 1, 'Ipsum ullam nesciunt nisi.', 'suscipit-nihil-consequatur-fugit-cum-odio-ut-eaque', 'Ki. Badak No. 572', 'Bogor', 'Kalimantan Utara', '63545', 38, 'Rem ut dolor ex dolorem modi similique voluptatem. Debitis repellendus quibusdam hic atque ut recusandae. Quae minima rerum est esse sed tempore. In in error est autem.', 225, 323, 6, 6, 4, 'Consectetur totam id.', 2038, 'Dolorum.', '1993', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(13, 1, 1, 'Quaerat ducimus voluptatem in.', 'ducimus-omnis-labore-ut-quis-aut', 'Gg. Sudirman No. 651', 'Yogyakarta', 'Sumatera Selatan', '54442', 46, 'Et aliquid ullam culpa blanditiis. Qui voluptas quia odio enim et eius enim tempore. Sint consequuntur vitae quia aut maiores voluptatem nihil.', 489, 611, 10, 10, 4, 'Ut quia.', 2340, 'Omnis qui.', '2006', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(14, 1, 0, 'Omnis quae in voluptate enim sunt.', 'dolore-dolorem-voluptates-quo-ab-et', 'Ki. Bappenas No. 641', 'Palopo', 'Sumatera Utara', '34732', 41, 'Consectetur eligendi corporis praesentium autem repellat veniam id. Ut eum dicta quaerat iure iure incidunt ad.', 42, 78, 7, 3, 4, 'Est ut.', 2675, 'Dignissimos enim.', '1982', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(15, 1, 1, 'Ut est vel est.', 'et-sunt-repudiandae-voluptas-esse-cumque-molestiae-ea', 'Dk. Suniaraja No. 765', 'Cirebon', 'Jambi', '10018', 59, 'Expedita consequuntur dolor voluptatem rerum optio assumenda. Dolor quas sint molestias rerum modi sed vel. Tenetur laborum facere et sapiente. Tenetur eveniet maxime nostrum sit consequatur.', 85, 718, 4, 4, 5, 'Dolorem.', 3604, 'Aspernatur veritatis numquam.', '1989', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(16, 1, 1, 'Voluptatibus et quibusdam dolor autem facere veritatis asperiores.', 'consequatur-expedita-id-quidem-adipisci', 'Kpg. Ronggowarsito No. 198', 'Magelang', 'Maluku', '98834', 40, 'Explicabo nisi vel ratione reiciendis iure est. Accusamus rerum porro neque deserunt. Magnam repellendus et nulla dolorem nobis dolores. Officiis rerum nisi magni ut qui est et.', 83, 561, 11, 10, 2, 'Eveniet explicabo.', 3891, 'Perspiciatis laboriosam.', '2006', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(17, 1, 1, 'Ducimus laboriosam dolorem.', 'dolor-exercitationem-non-quis-ut-totam-aliquam-qui', 'Ds. Hang No. 238', 'Cilegon', 'Maluku Utara', '68732', 51, 'Vel reprehenderit nostrum quod ut ex. Temporibus similique qui quia qui earum.', 371, 569, 4, 8, 2, 'Delectus modi.', 4513, 'Voluptatem voluptates.', '2004', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(18, 1, 0, 'Rem consequatur quos ab praesentium ea sed.', 'corrupti-debitis-harum-voluptatem-veniam-accusantium-harum-aut-eos', 'Ki. Sunaryo No. 641', 'Administrasi Jakarta Pusat', 'Sumatera Barat', '68835', 81, 'Molestiae consectetur et culpa laborum et aut. Ut similique et sint molestiae quasi. Minus cum nisi quia aperiam explicabo maxime est est. Consequatur ut nemo et exercitationem eligendi dolore sint.', 412, 462, 12, 10, 4, 'Non est quia.', 4359, 'Quibusdam aut.', '2018', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(19, 3, 0, 'Dolor rerum.', 'fugit-eveniet-atque-blanditiis', 'Jln. Jayawijaya No. 885', 'Padang', 'Kepulauan Riau', '49727', 76, 'Alias facilis cumque voluptas aut vel. Voluptate qui minima reprehenderit. Delectus qui doloremque dolorem ut. Reprehenderit est sed facilis odit quis vitae.', 284, 29, 13, 9, 1, 'Reiciendis sint.', 2104, 'Est porro.', '2000', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(20, 2, 0, 'Nobis illo quas nesciunt odit.', 'vitae-odit-omnis-dignissimos-eius-et', 'Ds. Aceh No. 23', 'Bekasi', 'Maluku Utara', '33437', 87, 'Itaque iure assumenda animi provident asperiores molestiae. Reprehenderit quasi illo sequi tempore perspiciatis. Ex sit non natus possimus. Et minima facere autem voluptas doloribus id.', 365, 169, 2, 5, 3, 'Aut voluptates.', 1832, 'Assumenda porro sit.', '2022', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(21, 3, 1, 'Consequatur est magnam voluptas magni cumque veritatis occaecati quo.', 'quia-harum-minus-est-ut-dolor-aut', 'Ki. Bagonwoto  No. 67', 'Tarakan', 'Jawa Tengah', '91476', 83, 'Voluptatem nam aspernatur velit exercitationem reiciendis. Necessitatibus eos molestias nesciunt rerum corporis inventore doloribus. Ea incidunt blanditiis exercitationem earum magnam nemo eos.', 437, 138, 9, 6, 2, 'Architecto minus non.', 3983, 'In modi.', '1998', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(22, 3, 0, 'Tempore quis consequuntur saepe numquam.', 'ipsam-eaque-perspiciatis-asperiores-sint-non-pariatur-sint-saepe', 'Ki. Orang No. 630', 'Pagar Alam', 'Lampung', '99043', 93, 'Ut qui magnam dolores cumque. Dicta quaerat sint unde omnis corrupti. Dolores magni iusto et eaque. Nemo non neque voluptatibus tempore laborum.', 161, 619, 7, 5, 4, 'Eum.', 3736, 'Blanditiis quasi cum.', '1970', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(23, 2, 1, 'Ipsum sed quia aut sit.', 'facere-quam-id-esse-facere-voluptas', 'Jln. Baranang Siang No. 254', 'Lhokseumawe', 'Kalimantan Selatan', '28890', 5, 'Dignissimos impedit omnis voluptas ea. Atque explicabo suscipit non error. Labore ex quibusdam necessitatibus aut.', 154, 370, 4, 10, 1, 'Omnis.', 4105, 'Sunt nesciunt.', '2010', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(24, 3, 1, 'Non omnis veritatis quaerat.', 'autem-illum-reprehenderit-placeat-ipsam-illum', 'Psr. Rumah Sakit No. 84', 'Sorong', 'Nusa Tenggara Timur', '85591', 69, 'Voluptas eos quas veniam beatae. Suscipit ut eveniet provident ut numquam. Nisi dicta magnam ex et consectetur. Ratione harum quaerat culpa consequuntur rerum vero in.', 269, 704, 2, 10, 5, 'Molestiae sit.', 1640, 'Nemo qui.', '2015', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(25, 3, 1, 'Exercitationem qui veritatis saepe.', 'aliquid-nam-veritatis-sint-et-aut-magnam-dolore', 'Kpg. Bayam No. 489', 'Cimahi', 'Kalimantan Selatan', '54974', 1, 'Maxime omnis sapiente itaque quis rerum esse. Et et odio odio maxime culpa voluptas est. Vitae tempore voluptatem in eum optio ut. Fuga id occaecati dolorum perferendis dignissimos nemo.', 171, 401, 6, 3, 4, 'Quam.', 4312, 'Consequatur voluptas ut.', '1986', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(26, 2, 1, 'Aut at corrupti pariatur consequuntur eum non natus.', 'aliquid-ex-placeat-et-ut-inventore-et-amet', 'Dk. Hang No. 40', 'Prabumulih', 'Kepulauan Bangka Belitung', '72367', 83, 'Possimus molestiae quaerat asperiores. Dignissimos dolorum labore tenetur commodi cupiditate aperiam. Animi eum quis deleniti enim qui aut nisi.', 309, 654, 9, 9, 2, 'Quidem vel.', 3251, 'Quasi.', '1986', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(27, 3, 1, 'Exercitationem rerum sint ut porro qui perferendis quo enim non.', 'enim-occaecati-deserunt-eos-est-aut-corrupti', 'Ds. Cemara No. 227', 'Malang', 'DI Yogyakarta', '91690', 3, 'Facilis in maxime libero aut. Tempore molestias aut aut occaecati. Aut ex illum unde magnam qui. Id quia accusantium corrupti laudantium qui.', 230, 649, 15, 9, 2, 'Cupiditate.', 3656, 'Rerum odit dolores.', '2001', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(28, 2, 0, 'Sequi molestiae iusto vero ipsa perferendis.', 'qui-rerum-temporibus-dicta-dignissimos', 'Gg. Baing No. 607', 'Jayapura', 'Kepulauan Bangka Belitung', '13261', 65, 'Enim blanditiis eos nam eos. Rem cum qui dolor adipisci dolore et incidunt aliquam. Pariatur ex ad voluptatem ad exercitationem nemo ullam.', 110, 210, 11, 7, 1, 'Reprehenderit deserunt.', 1718, 'Maiores.', '2013', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(29, 1, 0, 'Hic placeat voluptatem ab laudantium omnis enim laudantium dignissimos magni.', 'nemo-quo-occaecati-velit-voluptas-nulla-aliquam-beatae', 'Jr. Halim No. 504', 'Jayapura', 'Kepulauan Bangka Belitung', '97229', 31, 'Qui qui quo ipsum illo est doloremque fugit non. Enim qui est vel. Rerum facilis quaerat asperiores et.', 245, 421, 10, 3, 1, 'Quam provident.', 3908, 'Rerum.', '1980', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(30, 1, 0, 'Omnis quibusdam in pariatur molestiae.', 'qui-recusandae-perferendis-temporibus-labore-exercitationem-dolorum-consequatur', 'Ds. Dewi Sartika No. 771', 'Sungai Penuh', 'Jawa Barat', '11458', 42, 'Totam magni fuga fugiat sed. Enim aperiam vel tempora ut et facilis. Voluptate sequi incidunt maxime non qui amet.', 228, 64, 10, 5, 1, 'Aspernatur velit.', 4575, 'Sunt.', '2021', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(31, 3, 1, 'Ullam est atque aut non eos et iusto.', 'illo-debitis-occaecati-qui-aut-maiores', 'Jr. Kalimalang No. 776', 'Pagar Alam', 'Lampung', '77453', 6, 'Doloribus dolor dolor aliquid ex. Quod rerum ea voluptates odio sunt. Sed nesciunt laboriosam hic voluptates.', 355, 504, 6, 3, 5, 'Et et eligendi.', 3104, 'Adipisci numquam.', '1996', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(32, 3, 1, 'Fugit earum fugiat qui odit aut.', 'exercitationem-rem-laboriosam-qui-temporibus-repellat-iure-dolores', 'Ds. Bass No. 94', 'Bontang', 'Jawa Timur', '56509', 17, 'Nihil deleniti at sapiente vitae id eaque. Vel odit ea ex quas. Explicabo ut quibusdam aut esse. Ex dolore quia iure nihil aut.', 272, 694, 5, 10, 1, 'Sed.', 2046, 'Et dolores.', '2018', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(33, 1, 1, 'Molestiae sed tenetur deleniti dicta.', 'mollitia-dolorem-placeat-illum-temporibus-et-vel-veniam', 'Jln. Suprapto No. 217', 'Ambon', 'Sumatera Utara', '99907', 93, 'Repellat laboriosam ut provident. Labore assumenda laborum non omnis consequatur. Et ad incidunt similique iste voluptatem.', 241, 762, 6, 6, 1, 'Est aperiam.', 4065, 'Asperiores.', '1986', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(34, 3, 1, 'Non voluptatibus deleniti.', 'odit-iusto-ipsa-labore-eaque-qui', 'Ds. Bawal No. 244', 'Pekanbaru', 'Bengkulu', '39949', 57, 'Explicabo laudantium pariatur ut ipsa. Sit et ea nemo. Aut voluptas iste perspiciatis in temporibus eos. Sint molestiae rerum aut asperiores optio in.', 387, 332, 7, 2, 2, 'Maiores perspiciatis.', 3282, 'In praesentium.', '1981', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(35, 3, 1, 'Quia accusantium at numquam ducimus voluptas ducimus.', 'dolorum-eum-voluptatum-vel-ut-quaerat-sint-doloribus', 'Ds. B.Agam Dlm No. 629', 'Medan', 'Bali', '36159', 87, 'Facere sint quae incidunt aut tenetur. Dolores tempore temporibus sit ad voluptatem repudiandae. Est modi velit aspernatur et possimus eligendi. Amet ut officiis ratione. Ut voluptatem possimus eligendi dignissimos nobis harum et.', 309, 626, 13, 10, 2, 'Nihil.', 3500, 'Quia at.', '1977', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(36, 2, 0, 'Qui dolorum a ea.', 'mollitia-id-harum-velit-nemo', 'Psr. Dewi Sartika No. 447', 'Pematangsiantar', 'Papua Barat', '64925', 6, 'Architecto quis voluptatem quisquam voluptatem. Architecto quis dolorum perspiciatis. Debitis reprehenderit ex amet magnam et. Qui aut ullam qui cumque.', 98, 210, 9, 6, 1, 'Ut voluptatem laboriosam.', 3123, 'Cupiditate minus reiciendis.', '2015', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(37, 1, 1, 'Provident non voluptate nemo cumque dolorum placeat.', 'placeat-eum-labore-quidem-quis-rerum', 'Dk. Achmad No. 596', 'Kendari', 'Maluku', '37650', 39, 'Sed molestias et sunt non repellat voluptas. Illum porro delectus omnis eius hic laboriosam laborum. Possimus dolorem ut fugiat blanditiis quos rerum voluptas. Itaque voluptate nulla velit assumenda.', 387, 382, 4, 6, 4, 'Veritatis ullam.', 4083, 'Mollitia et dicta.', '2003', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(38, 2, 1, 'Tempora ducimus illum et quis enim placeat ut et pariatur.', 'reiciendis-quidem-quod-veniam-voluptatibus', 'Gg. Sudiarto No. 372', 'Tual', 'Aceh', '76422', 1, 'Voluptas voluptatem vero atque id vel. Est rerum voluptatibus ipsum est. Reprehenderit culpa quisquam aut similique accusamus.', 335, 23, 15, 6, 1, 'Voluptatem et sequi.', 3425, 'Quasi.', '1991', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(39, 2, 1, 'Pariatur et corporis.', 'totam-sit-qui-in-maiores-dolorem-accusantium-maiores', 'Jln. Basudewo No. 336', 'Pangkal Pinang', 'Banten', '70155', 52, 'Minima est et accusantium libero itaque illum consectetur. Consequatur eligendi natus consequatur quisquam. Totam impedit consequatur asperiores mollitia sint rerum.', 20, 296, 10, 5, 1, 'Ad eligendi natus.', 4457, 'Impedit.', '1981', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(40, 3, 0, 'Tempora eaque consequatur vel nemo ullam.', 'molestiae-est-minima-et-odio-et-et-ut', 'Dk. Gotong Royong No. 310', 'Pasuruan', 'Aceh', '50696', 36, 'Autem qui ut incidunt iste aut aut nisi. Et vitae voluptate id minima. Quisquam eum enim non exercitationem cum.', 162, 582, 5, 4, 1, 'Deserunt voluptatem.', 3474, 'Cumque.', '2000', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(41, 3, 0, 'Et dolor veritatis dignissimos.', 'nihil-iste-corporis-esse-ipsam-qui-incidunt', 'Dk. Qrisdoren No. 83', 'Surakarta', 'Papua', '39068', 68, 'Cum qui fuga iste voluptatum atque necessitatibus doloremque. Nisi illo vel reprehenderit distinctio.', 450, 650, 10, 4, 5, 'Et saepe.', 2909, 'Est velit eveniet.', '1985', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(42, 2, 0, 'Sunt nobis vel porro vel quo saepe.', 'dolorem-et-animi-et-et-labore-eos-enim', 'Kpg. Haji No. 207', 'Pangkal Pinang', 'Jambi', '35750', 80, 'Illum beatae nam cumque quasi a non necessitatibus. Facere voluptatem ipsam quia totam. Amet vitae dolor cumque quia et voluptates. Dignissimos ad corporis dolor doloremque consequatur.', 407, 566, 11, 6, 3, 'Optio consequuntur.', 2006, 'Nostrum magnam.', '1998', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(43, 1, 1, 'Accusamus modi doloribus laborum quod tenetur optio.', 'ad-magnam-minus-nostrum-minus-enim-dolore', 'Kpg. Baung No. 896', 'Administrasi Jakarta Selatan', 'Nusa Tenggara Timur', '62359', 0, 'Nobis officia voluptas aliquid ut saepe ex. Molestias deleniti iusto voluptatem. Rerum expedita amet voluptatem nisi eos exercitationem. Fuga animi perferendis maiores corporis.', 196, 278, 5, 10, 3, 'Fugit.', 3328, 'Velit.', '1985', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(44, 3, 1, 'Molestiae reprehenderit et.', 'repellendus-non-animi-aliquam-commodi-quia-quod', 'Dk. Setia Budi No. 78', 'Cirebon', 'Sulawesi Tengah', '80008', 53, 'Atque asperiores possimus reprehenderit ducimus. Sint laborum est sit doloribus ut architecto quia. In velit eius saepe dolor.', 298, 155, 5, 3, 5, 'Magnam totam.', 3996, 'Aperiam et.', '1998', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(45, 2, 1, 'In et consequatur labore et consequuntur autem.', 'dolorem-earum-et-sapiente-occaecati', 'Gg. B.Agam 1 No. 221', 'Tegal', 'Gorontalo', '35842', 70, 'Aut optio sequi tenetur delectus atque voluptatem. Soluta exercitationem commodi quo voluptatem rerum.', 343, 202, 2, 8, 5, 'Nihil quis quis.', 4580, 'Delectus et.', '2015', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(46, 3, 0, 'Sunt esse.', 'nam-numquam-quisquam-rerum', 'Gg. Otto No. 558', 'Sukabumi', 'Gorontalo', '62746', 23, 'Aut id et ipsum assumenda. Beatae in voluptatem a non ea nulla.', 115, 487, 10, 9, 3, 'Pariatur.', 4120, 'Placeat rerum optio.', '1995', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(47, 1, 1, 'Est expedita quo.', 'doloremque-molestiae-consequuntur-perspiciatis-id-excepturi', 'Kpg. Antapani Lama No. 393', 'Banjarmasin', 'Lampung', '42757', 83, 'Fuga sit voluptatem commodi. Pariatur occaecati enim rerum optio asperiores itaque. Neque corporis rem inventore temporibus et voluptatem.', 215, 569, 10, 7, 2, 'Natus ullam.', 1771, 'Et.', '2022', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(48, 1, 0, 'Numquam sed recusandae aliquam.', 'est-nam-eveniet-et-voluptas-dignissimos-magnam', 'Psr. Bambon No. 528', 'Payakumbuh', 'Papua Barat', '25600', 51, 'Repellendus iste labore aut tenetur ad perspiciatis iure est. Enim aut et enim excepturi. Eum voluptatem est eum quidem. Odit consequatur iusto et eos. Dolorem vel tempora consequuntur vel voluptate ut.', 44, 178, 12, 10, 1, 'Sunt enim.', 2808, 'At consequuntur saepe.', '2008', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(49, 1, 0, 'Voluptatem praesentium distinctio eos ipsa minus nulla praesentium ut saepe.', 'ipsum-numquam-cumque-modi-nemo', 'Psr. Banal No. 323', 'Banjar', 'Sulawesi Tenggara', '39173', 12, 'Eos occaecati eaque hic consectetur ut temporibus quis. Quo minus dicta doloribus voluptatum nesciunt atque. Quas quae sint enim nobis.', 130, 485, 10, 4, 1, 'Quam illo.', 3348, 'Omnis dolore.', '1973', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(50, 1, 1, 'Occaecati iusto ratione quae quo.', 'hic-officiis-cum-inventore-consequuntur-voluptate-quidem', 'Gg. Barasak No. 332', 'Palangka Raya', 'Nusa Tenggara Barat', '17890', 23, 'Commodi provident et eaque saepe sapiente. Aliquid ipsa et incidunt nesciunt omnis. Libero deserunt repudiandae facilis eaque.', 398, 726, 11, 7, 5, 'Labore aut.', 4949, 'Est.', '1977', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(51, 1, 0, 'Et et voluptates nihil consectetur.', 'temporibus-inventore-voluptas-architecto-rerum', 'Ds. R.E. Martadinata No. 5', 'Tegal', 'Papua', '99244', 72, 'Iusto ratione earum pariatur molestiae qui voluptatibus. Eaque ut blanditiis veniam sit autem nisi. Aut possimus laboriosam tempora harum possimus optio. Commodi minima velit ullam mollitia aut sed. Accusantium eum quae dolorum autem occaecati.', 222, 373, 9, 6, 5, 'Harum amet.', 1490, 'Et quis.', '2003', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(52, 2, 0, 'Tempore reprehenderit eum repellat recusandae soluta at suscipit consequuntur.', 'ut-est-aliquid-nisi', 'Dk. Salam No. 213', 'Padangpanjang', 'Kalimantan Utara', '62023', 73, 'Tenetur et aut temporibus harum asperiores minima laudantium. Sint nobis corrupti magnam aspernatur dolor neque. Id non aut iusto error est ab.', 383, 698, 10, 2, 3, 'Vero.', 1169, 'Voluptatem.', '1982', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(53, 2, 0, 'Rerum porro adipisci esse dicta et.', 'enim-quia-fuga-recusandae-sed-architecto-repudiandae-magnam-vel', 'Dk. Antapani Lama No. 632', 'Tegal', 'Gorontalo', '91781', 50, 'Sapiente ex perferendis dicta minima. Consequatur qui est fugit nihil. Vel maiores maiores dicta minus velit magni. Natus qui dolore molestiae qui.', 477, 93, 3, 8, 4, 'Assumenda et.', 3084, 'Eius quisquam.', '1989', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(54, 3, 0, 'Et sed et.', 'debitis-quo-voluptas-et-qui-qui-nulla-incidunt', 'Dk. HOS. Cjokroaminoto (Pasirkaliki) No. 227', 'Depok', 'Lampung', '59387', 26, 'Neque iusto quia non reprehenderit nostrum. Dolor magnam aperiam ut aperiam suscipit unde. Sit nobis quis et enim ut. Voluptas maiores rerum atque veritatis aut sint corrupti.', 420, 479, 15, 2, 2, 'Illum est.', 3007, 'Accusantium molestias.', '2008', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(55, 1, 0, 'Eligendi est natus cum ad.', 'et-facere-praesentium-sunt-aut-voluptatum-vel', 'Ki. Rajiman No. 343', 'Pariaman', 'Banten', '41332', 70, 'Sint at qui aut omnis mollitia quibusdam. Qui quas libero doloremque a aut et. Sed saepe sequi doloribus dicta. Molestiae temporibus aut quae rerum deserunt exercitationem.', 274, 230, 4, 2, 5, 'Ex sint molestiae.', 2872, 'Suscipit culpa.', '1984', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(56, 3, 0, 'Nisi ut iste dolor quas dicta nisi.', 'nulla-nisi-quia-quia-omnis-aut-culpa-quasi-soluta', 'Jr. Baranang Siang Indah No. 273', 'Serang', 'Kalimantan Selatan', '52630', 99, 'Omnis velit ratione id minus voluptatem. Eveniet sequi eaque cupiditate corporis ratione dolor. Nihil fugit et atque. Sint ad omnis ex.', 45, 416, 10, 10, 4, 'Cumque quia sunt.', 2451, 'Provident.', '1974', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(57, 2, 1, 'Hic non officiis consequatur at enim iste.', 'saepe-deserunt-officia-cupiditate', 'Jln. Sutami No. 640', 'Madiun', 'Kalimantan Selatan', '53325', 99, 'Commodi et dolorem qui et. Est unde et atque beatae consequatur. Voluptates nemo sint voluptas ut dolorum nulla. Et sed quae est sed in ea rem.', 383, 364, 4, 8, 3, 'Qui dolores eum.', 4710, 'Accusamus.', '2013', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(58, 3, 0, 'Accusamus exercitationem.', 'laudantium-ullam-consequatur-labore-numquam-omnis-consequatur-illo', 'Dk. Wora Wari No. 181', 'Tebing Tinggi', 'Jawa Tengah', '82324', 13, 'Eaque aliquid qui fugit voluptatem sunt doloremque nesciunt. Eaque dolores esse at unde cum consequuntur vitae blanditiis. Nesciunt sed natus labore vitae expedita.', 303, 435, 4, 8, 5, 'Ea est.', 1371, 'Exercitationem corporis.', '2007', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(59, 2, 1, 'Sit aperiam perspiciatis.', 'at-explicabo-atque-nesciunt-vel-eaque-ut', 'Psr. Cihampelas No. 986', 'Tarakan', 'Riau', '17223', 80, 'Ullam totam dignissimos quia. Fugiat dolor voluptatem quis libero voluptatibus et porro. Sunt et cumque ab asperiores autem.', 49, 158, 4, 6, 3, 'Minus ut.', 2515, 'Fuga.', '2005', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(60, 2, 1, 'Minima quaerat dolores architecto.', 'iusto-at-enim-perferendis-nulla-optio', 'Gg. Sunaryo No. 315', 'Pariaman', 'DI Yogyakarta', '70159', 6, 'Nihil provident est recusandae voluptatum qui itaque. Dolore soluta impedit iure minima laudantium et pariatur. Nostrum distinctio quo quidem id. Expedita quia aut et eaque nam magnam omnis. Ipsa accusamus ut harum cumque.', 207, 400, 10, 10, 3, 'Voluptates veritatis in.', 2232, 'Provident dolor.', '2022', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(61, 3, 0, 'Placeat dolorum sit voluptas a excepturi atque.', 'itaque-ipsum-qui-nam-eos-doloribus-cumque-enim', 'Ds. Rumah Sakit No. 614', 'Manado', 'Aceh', '50043', 49, 'Vel quos temporibus odit. Et error at quis ut. Sit consequatur ratione qui placeat. Facilis sint fugit velit qui illo.', 74, 161, 2, 4, 2, 'Voluptatem facilis.', 3531, 'Cumque sed accusantium.', '2005', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(62, 1, 1, 'Perspiciatis aliquid sequi.', 'qui-consequatur-sed-quia-quas-illum-in', 'Ki. Gedebage Selatan No. 403', 'Tasikmalaya', 'Papua', '22023', 89, 'Cumque dolorem occaecati blanditiis esse. Assumenda ex eos ex et molestiae consectetur ratione. Numquam ab corporis doloremque laborum nostrum. Perferendis eligendi voluptate similique excepturi consequatur sit.', 138, 740, 6, 6, 5, 'Nam sit.', 2327, 'Illo dolores.', '1983', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(63, 2, 1, 'Qui odit quis ea nesciunt expedita.', 'a-quia-vitae-nisi-facilis-consequatur-nobis-dolor', 'Jr. Kebonjati No. 324', 'Depok', 'Banten', '67695', 58, 'Id nihil et ad possimus maiores nihil quia. Id quasi porro optio porro. Nihil expedita sit harum. Et nisi velit adipisci.', 170, 699, 4, 6, 2, 'Enim libero.', 3313, 'Aperiam odit quod.', '2002', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(64, 1, 1, 'Iure perspiciatis tempore.', 'voluptates-qui-distinctio-et-occaecati-beatae-ad-maiores', 'Psr. Yap Tjwan Bing No. 957', 'Tangerang Selatan', 'Sulawesi Selatan', '75025', 67, 'Debitis inventore expedita cupiditate saepe voluptas dolorum. Ut non officiis alias ab distinctio enim. Dolores omnis voluptates officiis quis. Non non ut quo.', 328, 108, 9, 8, 2, 'Sunt omnis.', 3199, 'Quia qui quidem.', '1996', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(65, 2, 0, 'Velit porro atque quaerat ipsa aliquid eum non minima.', 'officiis-eius-officiis-neque-quibusdam-deleniti', 'Ds. Baiduri No. 482', 'Pontianak', 'Maluku Utara', '35696', 81, 'Dolor eos rerum quis quas id. Ad et aliquid modi consequatur id. Cumque et temporibus ratione dignissimos recusandae optio.', 264, 126, 6, 4, 5, 'Voluptas praesentium.', 2316, 'Vero cupiditate.', '1990', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(66, 2, 0, 'Nisi eius.', 'blanditiis-reiciendis-nesciunt-alias-et-corporis', 'Jr. Bara No. 476', 'Surakarta', 'Maluku', '23768', 29, 'Saepe qui aut eum totam occaecati laborum perferendis. Qui earum dignissimos est. Fuga dolorum ducimus beatae optio rem necessitatibus. Ullam omnis ea quam magnam sit adipisci.', 394, 217, 4, 6, 5, 'Pariatur explicabo.', 1166, 'Voluptas non.', '2010', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(67, 3, 0, 'Non consequatur et adipisci voluptatem.', 'fuga-consequuntur-perferendis-sunt', 'Gg. Ujung No. 62', 'Bitung', 'Jambi', '74993', 31, 'Illum minima voluptas labore distinctio consequuntur molestiae officiis. Soluta doloremque voluptatum veniam optio unde commodi. Adipisci facilis repudiandae molestiae aut ut est voluptas.', 41, 205, 2, 3, 2, 'Eaque ut.', 2353, 'Culpa quo corporis.', '2003', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(68, 2, 0, 'Optio impedit atque nam ut totam ratione.', 'dolore-iure-iusto-porro-vero-id-et', 'Gg. Bayan No. 665', 'Sabang', 'Nusa Tenggara Timur', '35485', 60, 'Quaerat tempore minus a et labore. Est nulla repellendus necessitatibus. Aspernatur nulla aspernatur harum odit amet necessitatibus ullam. Sint cum voluptatibus dolorum non illum illo laboriosam.', 484, 467, 5, 6, 5, 'Eveniet tempora.', 3327, 'Libero est.', '1987', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(69, 1, 1, 'Sint hic laborum.', 'amet-tempore-eum-neque-eligendi-quas-et', 'Ki. Salatiga No. 259', 'Pasuruan', 'Aceh', '91243', 99, 'Eveniet voluptas tempora voluptatum ut cupiditate omnis saepe. In recusandae officiis enim voluptatem itaque sit. Quos vitae illo aut culpa est sint eveniet.', 153, 80, 7, 3, 5, 'Illum rerum.', 2984, 'Quis et fugiat.', '2005', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(70, 3, 1, 'Quia autem velit.', 'quam-deleniti-voluptate-qui-hic', 'Jr. Gatot Subroto No. 776', 'Sungai Penuh', 'Kalimantan Selatan', '48917', 9, 'Deserunt nobis nobis aspernatur nihil ab eligendi nostrum. Qui sit eveniet ex assumenda officia molestiae earum. Libero culpa similique quibusdam veniam. Odit sit quia et in tempora.', 391, 283, 12, 4, 2, 'Inventore eos.', 4682, 'Dolore ad facilis.', '2019', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(71, 2, 1, 'Qui et eligendi est consequuntur officiis.', 'et-reprehenderit-officia-est-veniam-culpa-eius', 'Jr. Bak Air No. 443', 'Blitar', 'DI Yogyakarta', '18071', 0, 'Aut quae quod eaque et mollitia minima impedit. Quod dignissimos quia vel. Illo dolor illo quam.', 239, 712, 15, 9, 4, 'Sed et.', 4088, 'Odit nihil.', '1970', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(72, 1, 1, 'Iusto modi tempore nemo iusto et atque voluptate.', 'exercitationem-et-quo-debitis-nulla-et-enim', 'Ki. Bakit  No. 296', 'Batu', 'Riau', '85815', 73, 'Est occaecati nobis eius voluptatum. Tenetur facere consequatur nisi. Consequatur repellat consequatur maxime officiis possimus. Maxime in et ab dolorem error et.', 321, 625, 7, 9, 5, 'Facere rerum.', 4158, 'Quaerat et.', '1980', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(73, 2, 1, 'Impedit quis voluptatem vel.', 'voluptatem-tenetur-quidem-praesentium-quia-quo', 'Ki. Baik No. 997', 'Palangka Raya', 'Aceh', '43796', 44, 'Vitae quis dolorum pariatur suscipit velit praesentium possimus et. Fugit voluptate ut et aspernatur aut et vitae facere. Ratione ut voluptas incidunt quisquam sunt fuga dolores.', 58, 236, 9, 2, 3, 'Dicta repudiandae.', 1431, 'Facere aut.', '2011', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(74, 2, 1, 'Dignissimos et deleniti dolorum.', 'quaerat-quas-beatae-et-quia', 'Jr. Pacuan Kuda No. 803', 'Yogyakarta', 'Nusa Tenggara Timur', '47831', 84, 'Rerum molestiae quo fugit ea. Non non quis iure voluptates et animi accusantium quibusdam. Dolorum reprehenderit quos fugit ut qui est.', 477, 576, 7, 7, 5, 'Itaque aliquam.', 1132, 'Ut est consequatur.', '2009', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(75, 2, 0, 'Facilis labore sed dolore.', 'quisquam-quo-amet-quis-id-autem', 'Ki. Bappenas No. 568', 'Mataram', 'Kepulauan Bangka Belitung', '22125', 12, 'Provident unde sed est tempora quaerat sapiente. Autem libero voluptas assumenda quisquam perferendis. Deserunt ipsa optio laborum corrupti nam. Culpa quas repudiandae quas.', 21, 654, 12, 6, 3, 'Et ut.', 2020, 'Et.', '1989', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(76, 3, 1, 'Officiis recusandae quas consectetur dolorem voluptas porro laborum fugiat.', 'assumenda-ipsa-enim-fugiat-ipsam-consectetur-consequatur-totam', 'Kpg. Bhayangkara No. 853', 'Probolinggo', 'Jawa Barat', '84126', 69, 'Similique voluptatem et ex consequuntur enim corrupti. Rerum qui velit aliquid et voluptatem magnam. Ipsum laudantium odit impedit a fuga rerum magni. Voluptatem at molestiae nihil eaque similique minus. Minima consequuntur consectetur odio error autem.', 468, 192, 12, 7, 2, 'Exercitationem dolorum.', 4342, 'Minus dolorem ut.', '2006', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(77, 1, 1, 'Eius alias dolorum excepturi possimus eligendi.', 'nam-iste-rerum-est-eaque', 'Ki. Pelajar Pejuang 45 No. 712', 'Madiun', 'Kalimantan Selatan', '91471', 27, 'Suscipit consequatur ut et aliquam. Repellat et quam et expedita quia vero. Quia neque accusantium aut non veniam.', 21, 34, 9, 5, 1, 'Quos quis rerum.', 3844, 'Ad et.', '1970', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(78, 3, 0, 'Voluptatem ut ut id hic in eum.', 'est-iste-in-sed-ducimus', 'Gg. Otto No. 887', 'Balikpapan', 'Maluku', '63971', 33, 'Ad dolores suscipit quibusdam sed facilis asperiores et. Eius et consectetur nobis necessitatibus. Placeat et suscipit et consequatur quaerat perferendis qui. Dolores sed autem dicta tempore ut. Voluptatem error voluptatum voluptatem quas.', 227, 55, 12, 9, 4, 'Et.', 2912, 'Dicta nihil.', '1971', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(79, 3, 1, 'Dolorum quis aut quas odit voluptatum quam.', 'sit-doloremque-aliquid-sit-omnis-in-dicta-similique', 'Psr. Bawal No. 283', 'Pekanbaru', 'Sulawesi Tengah', '34651', 7, 'Sapiente nulla porro fuga et. Voluptatem distinctio ea possimus officiis.', 178, 746, 14, 3, 3, 'Odio sunt.', 4629, 'Amet.', '1978', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(80, 3, 0, 'Vitae aliquid eum sit eum alias sunt maiores nostrum totam.', 'excepturi-eum-repellat-est-minus-labore', 'Ki. Sunaryo No. 328', 'Bandung', 'Papua Barat', '52786', 51, 'Minus dicta sapiente reiciendis sed ut est aut. Sed quis cumque rem commodi qui libero. Porro qui quis eum dignissimos aut autem eaque. Culpa est dicta officiis explicabo est.', 149, 593, 2, 3, 4, 'Dolores.', 3200, 'Beatae.', '2000', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(81, 2, 0, 'Nihil repellat.', 'facere-delectus-eveniet-et-fugit-est', 'Jr. Sudirman No. 726', 'Singkawang', 'Papua Barat', '78252', 73, 'Odit dolores aut quis. Sunt quia sapiente dolorum quia. Id aut et quidem facilis est aut fuga. Est tempora minima voluptas quo.', 449, 491, 8, 2, 5, 'Quia corporis.', 3114, 'Fuga quis quasi.', '1975', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(82, 3, 1, 'Voluptas fugit totam et animi.', 'occaecati-vel-quasi-provident-a-pariatur-maiores', 'Jln. Villa No. 971', 'Padangpanjang', 'Papua Barat', '31320', 68, 'Omnis enim quisquam inventore. Consequatur rerum numquam est nobis quidem at. Iusto minus iusto dignissimos nobis.', 227, 648, 12, 4, 3, 'Laboriosam.', 2303, 'Voluptatem rerum.', '1977', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(83, 1, 1, 'Omnis et praesentium asperiores.', 'in-cumque-qui-laborum-magnam-sed-est-explicabo', 'Kpg. Laksamana No. 886', 'Gorontalo', 'Gorontalo', '44880', 79, 'Provident soluta soluta ut accusamus. Rerum qui ut iure vel et qui. Occaecati eveniet quod odio eos. Autem architecto quisquam aspernatur alias voluptate veniam.', 51, 338, 2, 4, 5, 'Debitis.', 3276, 'Quis ut iure.', '1994', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(84, 2, 0, 'Sint unde numquam cumque ut pariatur hic temporibus.', 'sit-rem-quas-sunt-nobis', 'Gg. Barasak No. 805', 'Bekasi', 'Jawa Timur', '50800', 18, 'Quo velit pariatur soluta eos labore. Aperiam unde illum vero temporibus eos rem. Quia sint et non tempora molestiae sequi.', 237, 663, 7, 9, 2, 'Tenetur repellat ut.', 1447, 'Quasi quo.', '1993', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(85, 2, 1, 'Aliquam molestiae aut temporibus impedit reiciendis veniam sed in sed.', 'aut-facere-officiis-natus-et-quibusdam', 'Gg. Pacuan Kuda No. 172', 'Tasikmalaya', 'Sumatera Barat', '58349', 83, 'Error rerum corporis consectetur voluptate pariatur a exercitationem. Aperiam laudantium voluptas odio eos. Sed praesentium voluptatem voluptas odio maxime mollitia in. Rerum atque eaque numquam tempora.', 47, 347, 9, 10, 5, 'Quia repudiandae odio.', 4016, 'Soluta quia.', '1993', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(86, 2, 1, 'Qui ullam nihil qui.', 'nulla-ut-repudiandae-ut', 'Kpg. Achmad Yani No. 935', 'Blitar', 'DKI Jakarta', '87745', 73, 'Et sequi quasi dolorem laborum. Magni blanditiis quia qui architecto. Qui perferendis nam quia.', 434, 429, 9, 5, 3, 'Aut quasi.', 4662, 'Ex quas.', '2009', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(87, 2, 1, 'Dicta quo dicta et.', 'qui-repellendus-enim-nisi-qui-enim-odit-et', 'Kpg. Babadan No. 666', 'Makassar', 'Kalimantan Timur', '12307', 76, 'Assumenda explicabo consequatur mollitia quas. Rerum quo earum eveniet nemo aperiam vero est. Ipsum aliquam placeat rerum quisquam libero eligendi.', 444, 42, 13, 4, 1, 'Vel sit et.', 3988, 'Tempore et.', '1979', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(88, 3, 0, 'Eum odit qui iure est unde voluptatem itaque placeat.', 'fuga-temporibus-quidem-omnis-voluptas-facere-aliquid', 'Ds. Haji No. 464', 'Magelang', 'Kalimantan Tengah', '50941', 47, 'Nulla ea praesentium aperiam in distinctio nulla. Molestias unde porro rerum minus vitae. Voluptas et neque repellat ab. Placeat quas nihil quasi.', 494, 627, 12, 5, 1, 'Amet odio.', 4895, 'Unde ad.', '2021', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(89, 2, 0, 'Corporis pariatur sint.', 'explicabo-eum-quae-odit-perferendis', 'Ki. HOS. Cjokroaminoto (Pasirkaliki) No. 628', 'Banjar', 'Maluku', '75446', 77, 'Et eius est nobis et perferendis error. Qui accusantium aut voluptatem sit. Libero aliquid fuga qui ut sint iure aliquam iure.', 474, 553, 5, 8, 4, 'Dignissimos ab.', 4198, 'Debitis fugit.', '1979', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(90, 2, 1, 'Tempora ut alias.', 'sit-sunt-sint-mollitia-ut-est-nemo-at', 'Ki. Suryo Pranoto No. 884', 'Bogor', 'Jambi', '60201', 65, 'Eos et qui molestiae quas facere officia et. Consequuntur itaque molestias alias omnis totam tempore voluptatibus. Autem amet repellat inventore voluptatibus commodi ex labore. Odit at et maiores pariatur.', 409, 269, 2, 5, 3, 'Est in voluptas.', 4741, 'Ad consequatur.', '2001', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(91, 2, 1, 'Laudantium eius qui et eveniet blanditiis.', 'neque-pariatur-velit-saepe-corporis-enim-repudiandae', 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 40', 'Tangerang', 'Bengkulu', '38926', 6, 'Id id non eum sunt. Ut quam quae voluptas deleniti voluptatibus impedit. Sit architecto rem qui corrupti dolores eveniet. Ut quia ut perferendis et dolorum. Ullam ullam deleniti dolor est inventore ratione ipsa.', 350, 625, 6, 8, 2, 'Deleniti incidunt.', 4433, 'Et.', '1978', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(92, 2, 0, 'Iste non.', 'suscipit-nemo-autem-totam-tenetur-rem-voluptas-voluptatem', 'Jln. Lembong No. 616', 'Madiun', 'Gorontalo', '11080', 75, 'Unde voluptates ut ut et provident quia similique. Delectus voluptatem nemo ducimus corrupti voluptatem. Et fugiat odio sit nam qui omnis vel ut.', 125, 93, 2, 8, 1, 'Et quia veniam.', 4535, 'Nobis aut.', '1980', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(93, 3, 1, 'Quam ut veritatis odio atque molestiae cupiditate.', 'est-qui-cumque-cumque-aperiam-sunt-natus', 'Ds. Lada No. 263', 'Kupang', 'Nusa Tenggara Barat', '11935', 84, 'Excepturi enim dicta quam blanditiis in blanditiis enim nihil. Reiciendis rem similique unde modi sint iusto minus dolore. Beatae dolores sit quidem aliquid harum labore est. Delectus nemo voluptate labore odio laborum officia molestiae.', 371, 648, 5, 3, 3, 'Sed et.', 1891, 'Inventore molestiae beatae.', '1999', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(94, 1, 0, 'Saepe deleniti alias.', 'est-quo-dicta-quia-quam-et-in-pariatur', 'Kpg. Jagakarsa No. 532', 'Singkawang', 'Gorontalo', '61781', 19, 'Alias odit error nobis deleniti quia dolor. Vel vero in exercitationem ut. Adipisci sed fugit dolorum aut doloremque vel ea.', 180, 588, 14, 9, 2, 'Voluptas.', 2792, 'Aut ad.', '1993', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(95, 1, 0, 'Harum ducimus odit eligendi similique quisquam nobis quidem.', 'eaque-quia-in-consectetur-beatae-magni', 'Jln. Mahakam No. 773', 'Banjarmasin', 'Maluku', '65776', 75, 'Molestiae aut odio ad incidunt fugiat. In nostrum amet corrupti voluptas. Consequatur iusto fugiat tenetur rerum laboriosam est saepe. Numquam natus accusamus nisi corrupti a. Quia et quos expedita fuga.', 23, 614, 5, 2, 2, 'At esse.', 1856, 'Amet odio.', '1998', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(96, 2, 1, 'Laboriosam ratione.', 'ea-eligendi-ipsa-voluptatem-dicta', 'Psr. Banceng Pondok No. 947', 'Ambon', 'Banten', '10397', 95, 'Et molestiae officiis totam error tempora minima excepturi. Sed unde eos et mollitia qui. Unde voluptatibus mollitia consequatur consectetur similique molestiae. Expedita perspiciatis asperiores a quae cumque sed.', 461, 196, 15, 4, 3, 'Rerum.', 3167, 'Error ratione.', '1982', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(97, 3, 1, 'Accusantium omnis a in maiores inventore corrupti.', 'vel-aliquid-non-sed-non-et-voluptatem-consequatur-cumque', 'Psr. Gatot Subroto No. 351', 'Pariaman', 'Jawa Tengah', '72103', 1, 'Voluptatem error magnam dolore dicta ut rerum. Id nam et qui reprehenderit veritatis.', 434, 234, 13, 5, 3, 'Iure.', 4002, 'Enim maxime.', '1999', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(98, 2, 1, 'Voluptatem voluptates et amet nihil beatae esse nisi.', 'ipsa-autem-quam-alias-odio-quia-quos-perferendis', 'Jln. Jagakarsa No. 46', 'Bukittinggi', 'Aceh', '40093', 68, 'Est nihil est excepturi. Porro id nihil ab nulla. Temporibus sapiente qui quis voluptatum assumenda cumque assumenda. Quod sint asperiores quasi necessitatibus reprehenderit possimus.', 386, 445, 6, 7, 2, 'Voluptas.', 2471, 'Optio totam nihil.', '2005', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(99, 1, 0, 'Rem magnam voluptatum suscipit occaecati quidem vitae rerum beatae harum aliquam.', 'ex-libero-qui-laboriosam-est', 'Psr. Thamrin No. 2', 'Banjarbaru', 'Sumatera Selatan', '62537', 21, 'Quis temporibus et praesentium perferendis eligendi facilis. A facere aliquid beatae provident. Expedita mollitia praesentium quis odit aperiam dolor. Dolorum deleniti ducimus praesentium non modi magni non.', 156, 121, 8, 10, 2, 'Nihil explicabo.', 2489, 'Odio fuga ipsum.', '1989', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31'),
(100, 3, 1, 'Aut non et.', 'omnis-voluptatibus-asperiores-enim-ut', 'Ds. Surapati No. 318', 'Depok', 'DKI Jakarta', '84388', 24, 'Aspernatur et reprehenderit quod quia vitae nisi. Animi est voluptates maxime sint. Laboriosam repudiandae sapiente deleniti maxime vero similique impedit.', 481, 628, 7, 2, 2, 'Sit nam soluta.', 3936, 'Fugiat blanditiis.', '1990', 1, NULL, NULL, NULL, NULL, NULL, '2023-06-08 00:50:31', '2023-06-08 00:50:31');

-- --------------------------------------------------------

--
-- Stand-in structure for view `jumlah_bobot`
-- (See below for the actual view)
--
CREATE TABLE `jumlah_bobot` (
`id` int
,`jumlah_bobot` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jumlah_matriks`
-- (See below for the actual view)
--
CREATE TABLE `jumlah_matriks` (
`daya_listrik` double
,`harga` double
,`kamar_mandi` double
,`kamar_tidur` double
,`luas_bangunan` double
,`luas_tanah` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `konsistensi`
-- (See below for the actual view)
--
CREATE TABLE `konsistensi` (
`konsistensi` double
);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int NOT NULL,
  `kriteria` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` double NOT NULL,
  `label` enum('cost','benefit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `kriteria`, `bobot`, `label`, `updated_at`) VALUES
(1, 'harga', 0.25, 'cost', '2023-06-23 01:40:20'),
(2, 'luas_bangunan', 0.2, 'benefit', '2023-06-17 16:03:46'),
(3, 'luas_tanah', 0.15, 'benefit', '2023-06-17 16:03:46'),
(4, 'kamar_tidur', 0.2, 'benefit', '2023-06-17 16:03:46'),
(5, 'kamar_mandi', 0.1, 'benefit', '2023-06-17 16:03:46'),
(6, 'daya_listrik', 0.1, 'benefit', '2023-06-17 16:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `matriks`
--

CREATE TABLE `matriks` (
  `id` int NOT NULL,
  `harga` double NOT NULL,
  `luas_bangunan` double NOT NULL,
  `luas_tanah` double NOT NULL,
  `kamar_tidur` double NOT NULL,
  `kamar_mandi` double NOT NULL,
  `daya_listrik` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matriks`
--

INSERT INTO `matriks` (`id`, `harga`, `luas_bangunan`, `luas_tanah`, `kamar_tidur`, `kamar_mandi`, `daya_listrik`) VALUES
(1, 1, 3, 3, 3, 5, 5),
(2, 0.3333333432674408, 1, 0.3333333432674408, 0.3333333432674408, 1, 1),
(3, 0.3333333432674408, 3, 1, 1, 5, 3),
(4, 0.3333333432674408, 3, 1, 1, 5, 5),
(5, 0.20000000298023224, 1, 0.20000000298023224, 0.20000000298023224, 1, 3),
(6, 0.20000000298023224, 1, 0.3333333432674408, 0.20000000298023224, 0.3333333432674408, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_24_003336_create_posts_table', 1),
(6, '2023_04_25_030108_create_categories_table', 1),
(7, '2023_04_28_071736_create_houses_table', 1),
(8, '2023_05_12_010154_create_contacts_table', 1),
(9, '2023_05_15_133118_create_roles_table', 1),
(10, '2023_06_07_132754_create_criterias_table', 1),
(11, '2023_06_08_025411_create_alternatives_table', 1),
(12, '2023_06_08_030048_create_comparisons_table', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `nilai_alternatif`
-- (See below for the actual view)
--
CREATE TABLE `nilai_alternatif` (
`alternative` char(2)
,`daya_listrik` decimal(22,8)
,`harga` decimal(43,8)
,`kamar_mandi` decimal(22,8)
,`kamar_tidur` decimal(22,8)
,`luas_bangunan` decimal(22,8)
,`luas_tanah` decimal(22,8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `normalisasi_matriks`
-- (See below for the actual view)
--
CREATE TABLE `normalisasi_matriks` (
`daya_listrik` double
,`harga` double
,`id` int
,`kamar_mandi` double
,`kamar_tidur` double
,`luas_bangunan` double
,`luas_tanah` double
);

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
-- Stand-in structure for view `pembagi`
-- (See below for the actual view)
--
CREATE TABLE `pembagi` (
`alternative` char(2)
,`daya_listrik` decimal(14,4)
,`harga` decimal(35,4)
,`kamar_mandi` decimal(14,4)
,`kamar_tidur` decimal(14,4)
,`luas_bangunan` decimal(14,4)
,`luas_tanah` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `perangkingan`
-- (See below for the actual view)
--
CREATE TABLE `perangkingan` (
`alternative` char(2)
,`nama_rumah` varchar(255)
,`nilai_akhir` double
);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Cum perspiciatis quidem quas voluptas deleniti error.', 'accusamus-laborum-expedita-et-dolorum-repellat-repudiandae-est-similique', NULL, 'Id in excepturi voluptatibus blanditiis quis. Repudiandae nisi sint nihil deleniti. Aut consequuntur dicta autem veritatis veniam eos temporibus. Explicabo sed vel ut aut dolorum.', '<p>Modi libero et dolores aliquam dolores eum. In facere neque eligendi sunt aliquam. Consequatur magni quod eum esse dolor voluptas sint qui. Voluptas earum accusamus qui est officia ratione.</p><p>Molestias doloribus nemo ut laudantium nostrum quia. Aliquid reiciendis pariatur ea. Voluptatem ut quis fugiat quas dolorum temporibus. Perferendis ullam ea natus laboriosam. Sit et accusantium asperiores omnis.</p><p>Explicabo illo deserunt est at ratione dolore. Eaque in voluptatum rerum quod maxime. Omnis quam et consectetur consequuntur dolore ut neque. Nulla aut reiciendis quia aut nihil eaque eligendi eveniet.</p><p>Tenetur est soluta temporibus vitae. Doloremque cupiditate unde ratione saepe assumenda qui sed. Aut nam nulla omnis illum voluptas cum.</p><p>Est et in at nisi fugiat libero excepturi. Quos et dolores voluptate consequuntur maiores delectus. Molestiae ratione minima et impedit aut ut facere. Sed magnam nostrum placeat.</p><p>Voluptatem in et dolor maxime veniam est. Molestias culpa unde consequuntur sequi omnis corporis voluptate.</p><p>Iusto molestiae ut ipsa nulla quam sed nisi vitae. Ipsam magnam qui asperiores alias fugit incidunt.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(2, 3, 2, 'Doloribus nesciunt iusto veritatis qui tempore.', 'unde-corrupti-esse-sunt-quod-ut-perferendis', NULL, 'Distinctio neque voluptatem officia vero voluptas corporis et quidem. Iure est reprehenderit consectetur et non ipsum. Quia quam sit assumenda quo consequatur.', '<p>Necessitatibus illum expedita architecto quo omnis. Nihil illo quod consequuntur. Vel et ipsa dignissimos omnis occaecati. Repellat numquam et architecto fugiat officiis ratione.</p><p>Et omnis omnis vero culpa iusto. Et et quisquam delectus aut voluptas eius qui. Corporis qui sint cum ut pariatur saepe. Ad explicabo fuga nam id quidem error.</p><p>Unde exercitationem ratione quis sed. Necessitatibus facere et at ut ipsam delectus. Enim dolorem fugiat aut delectus.</p><p>Aut magnam dicta sint aliquid. Totam quo et corporis ea inventore eum neque. Voluptatem cum voluptatem id cupiditate. Necessitatibus autem placeat facilis rerum reprehenderit.</p><p>Reiciendis autem quae illum pariatur. Consequatur tempore explicabo possimus facere et velit aut. Adipisci consequatur voluptates sequi reiciendis.</p><p>Minima velit voluptatibus voluptates illum aut. Aut provident omnis in veniam incidunt incidunt et.</p><p>Sed enim pariatur ut dolorem dolor quo voluptate. Est harum reiciendis labore minima quibusdam dolores eveniet. Delectus mollitia quia est est mollitia molestiae soluta voluptatem.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(3, 3, 1, 'Fugit reiciendis.', 'eos-facilis-et-tempora-architecto-inventore-itaque-harum', NULL, 'Voluptates labore ex distinctio natus et accusamus error est. Sunt ducimus veniam modi. Numquam rerum aut velit incidunt magnam iure. Eaque ut est inventore nihil beatae sequi.', '<p>Deserunt corrupti asperiores inventore et quos quasi. Dolores vitae mollitia commodi at et. Non beatae fuga consequatur vitae dolore. Vero voluptatum non iure assumenda. Optio excepturi magni ea ut maxime pariatur.</p><p>Incidunt mollitia blanditiis eius eveniet. Voluptatem iusto minus rerum et. Reiciendis quia ratione pariatur quam aut aut possimus.</p><p>Enim cupiditate aut expedita natus enim. Fugiat illo doloribus omnis quia id et. Alias et a quia non mollitia quia magni. In dolorem consequatur a. Minima et vitae nostrum.</p><p>Tenetur suscipit autem sapiente quis sit quia. Ut consequatur facere delectus libero modi. Ab assumenda ut aliquid ea accusamus maiores. Voluptatibus fuga nobis quos non voluptatem dolor at.</p><p>Et ut impedit quidem odit quo accusantium iste. Dolorem expedita odio recusandae ab perferendis aut et. Sequi aut dolorum quas est cupiditate dignissimos esse aut. Cumque atque dolor quo in sint.</p><p>Pariatur magni quos possimus quis voluptas maiores ut. Tenetur placeat aliquid ratione mollitia veniam. Et reprehenderit quam provident saepe unde.</p><p>Deserunt rerum modi atque nobis. Qui repellat pariatur ex vero ad. Molestiae qui iste aut. Delectus ullam temporibus quod et corrupti aut.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(4, 4, 2, 'Deleniti officiis sapiente et aperiam voluptatem.', 'excepturi-assumenda-officiis-delectus-et-autem-et', NULL, 'Fuga rerum nisi perspiciatis voluptates. Aspernatur sint quae hic sunt voluptatem. Et culpa et rerum odit sapiente. Voluptas aut itaque vitae qui illo.', '<p>Molestiae dolor recusandae qui. Deleniti debitis eos voluptas neque. Pariatur aut totam molestiae aut velit. Minus doloribus aut sed et.</p><p>Fugit illum molestias eos nisi earum laborum libero. Omnis id consequatur eligendi consequatur.</p><p>Enim maxime asperiores dolorem quia qui. Vel omnis tempora dolor molestiae accusantium. Nihil nihil tempora consequuntur tempora.</p><p>Quia aut corporis architecto rerum. Consequatur est autem doloribus rem quia doloribus itaque. Accusantium ut dolores non excepturi quis amet totam. Ipsa quam repellendus ut.</p><p>Earum est quisquam in nobis nulla in rerum et. Rerum quos id dolorem. Perferendis sit explicabo et est accusamus voluptate tenetur.</p><p>Quas autem in expedita placeat deleniti modi. Ipsum quod ab quia assumenda velit aut. Pariatur corporis natus similique amet magnam tenetur. Error ex quia modi quas tempore.</p><p>Corporis pariatur est impedit qui. Modi et enim voluptas cumque sequi ducimus perspiciatis. Rerum iure harum rerum error debitis. Qui commodi corporis culpa culpa similique expedita.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(5, 6, 4, 'Voluptatibus libero dolorum aut veniam cum.', 'error-sed-qui-maiores-fugit-alias-voluptas', NULL, 'Cupiditate laudantium delectus ab quo provident voluptatem ipsa. Quia magni ut iusto laboriosam. Odit commodi inventore rerum quia enim provident. Provident velit eveniet omnis et pariatur quia. Mollitia ex nemo ipsa occaecati doloremque.', '<p>Quia perspiciatis vel aliquam dolorum ipsa fugit. Nihil magnam consequatur ut id aliquam. Neque voluptatem dolorum incidunt quis eos harum voluptatibus. Quia perferendis voluptatem laborum repellendus ea consequatur.</p><p>Recusandae voluptas et nihil aliquam. Omnis officiis quas necessitatibus corrupti et. Vel officia omnis repudiandae ullam.</p><p>Quae quisquam similique illum ipsa totam repudiandae. Nihil quisquam officiis magnam omnis et sit. Voluptate exercitationem aut quas provident dolores. Maiores nostrum corrupti quae non tenetur.</p><p>Fugiat ea doloribus beatae officiis aut. Ut ipsam eos maxime non vero vel. Reprehenderit et inventore itaque et. Nesciunt facilis ut sunt et et totam officia. Ut quidem nemo optio et dolore fugiat.</p><p>Qui enim aut adipisci quidem inventore. Labore est labore molestias non et. Pariatur dolorem asperiores illo ratione qui est dolorem corrupti.</p><p>Est qui at est et ipsa. Nobis asperiores fugit omnis itaque in et qui quibusdam. Illum molestiae explicabo aut repellat qui.</p><p>Qui officiis pariatur sunt iusto. Rem eligendi est incidunt omnis magni dignissimos vel quia.</p><p>Iusto quia qui non accusamus. Quibusdam nisi architecto labore maxime rem omnis voluptas quaerat. Reprehenderit molestias porro earum delectus.</p><p>Delectus iste aut voluptatem accusamus sed est molestiae impedit. Dolore qui ipsam debitis recusandae est. Ea autem labore qui voluptatem quia quisquam. Aut id velit explicabo qui quisquam quo.</p><p>Odio voluptas illo et esse. Et quibusdam rerum consequatur totam eos et ea rem. Dolores iure possimus ut error doloremque.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(6, 4, 2, 'Unde et laudantium deleniti magni.', 'dolorum-recusandae-iusto-enim-consequatur-quod-praesentium-consequatur', NULL, 'Alias sed libero est quibusdam voluptatem dicta. Ut aspernatur neque rerum accusantium. Itaque quia reiciendis porro aperiam.', '<p>Quam aut fuga maxime voluptatibus ut. Sunt doloremque magnam alias nihil est quo. Et voluptas omnis quasi nam. Aut nihil odio minima aut tempora consequatur.</p><p>Suscipit qui eligendi aut. Et voluptatem libero doloremque asperiores exercitationem praesentium. Ab quo quos enim fuga cumque. Doloremque dolor ducimus molestias voluptas perferendis inventore dolor. Ut rerum sit neque illum.</p><p>Iure rerum quisquam et. Laboriosam maiores laborum nobis cumque et. Et culpa reiciendis illum eum sit nemo in. Laborum impedit qui earum beatae aliquid.</p><p>Suscipit quaerat numquam excepturi officiis. Reiciendis dignissimos natus rem vel. Officia id a officiis veritatis et.</p><p>Libero consectetur rem id. Iusto aut reiciendis laudantium repellendus saepe vitae. Enim minima pariatur fugit maiores illum reiciendis quasi.</p><p>Est quia corporis quidem et et architecto. Dolorum quasi magni repellat voluptatem suscipit quisquam voluptatum aut. Quam dolorum occaecati voluptates architecto et.</p><p>Dolore inventore impedit sint modi. Earum excepturi voluptatem praesentium sed voluptatem ut a. Debitis adipisci pariatur labore commodi voluptate aut. Harum odit occaecati velit rerum omnis quaerat.</p><p>Id dolores minus pariatur animi. Doloribus nam esse est quos et et sunt. Rerum ut magnam suscipit maxime distinctio omnis. Quas tempora sit reprehenderit minima tempora aliquam.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(7, 6, 2, 'Nihil architecto fugiat animi ex qui est et alias itaque ut.', 'laborum-est-iure-eum-quod-aliquam-est', NULL, 'Ad illo odit reprehenderit architecto totam. Dolor quisquam ipsum reiciendis reprehenderit qui. Aperiam dolor blanditiis ducimus velit non molestiae est ea.', '<p>Accusantium exercitationem est quia tenetur et. Ea ad libero perspiciatis ipsa mollitia. Ducimus a et vel perferendis.</p><p>Cupiditate quaerat est ex exercitationem eaque voluptas. Sequi voluptates natus aut excepturi laudantium. Quam ut aliquam animi et corporis molestiae neque.</p><p>Repudiandae nihil id dolores et ut. Error illo ut possimus. Beatae animi eveniet porro pariatur quo.</p><p>Cupiditate perferendis nihil reiciendis sed occaecati dolore consequatur. Corporis atque molestiae id fugit. Est qui dolores quos enim qui vel.</p><p>Tempore tempore enim qui sed. Illo culpa placeat rerum sit ipsa voluptas. Dicta itaque ut modi adipisci perferendis earum.</p><p>Nulla veritatis qui quis tempora et error corporis. Expedita facilis qui est et aliquam. Quo corrupti rem nemo perferendis deserunt minus.</p><p>Aspernatur odio atque eius est commodi amet. Molestiae corporis rem dolor ad. Voluptates qui itaque eaque non sed facilis aut.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(8, 1, 1, 'Sint consequatur facere ut.', 'necessitatibus-officia-suscipit-consequatur-quos-adipisci-ut-aperiam-distinctio', NULL, 'Magnam sequi omnis autem qui ratione. Sed voluptatem a ex voluptas dolore numquam. Consectetur cumque aut hic.', '<p>Qui cupiditate omnis pariatur tenetur nihil ut non. Doloremque corporis repellat in. Tempore nisi id quasi nihil quaerat.</p><p>Dolor officia laudantium ab qui. Sit quo dolor aspernatur atque. Enim quo rerum possimus debitis qui ipsam omnis. Et eveniet iusto quisquam et et.</p><p>Sint sint enim accusamus voluptates est enim. Ut minima quidem voluptates cumque quisquam fugit dolores. Et porro suscipit eos facilis ea. Modi voluptatem cumque dolores dolor ut neque quia. Quis provident facilis aut facilis fugiat ut.</p><p>Necessitatibus eligendi esse accusamus minima. Fugit eos nihil consequatur molestiae. Suscipit est molestiae in architecto quis qui omnis maxime.</p><p>Nemo error eligendi perferendis id omnis autem. Tempora voluptate eum rem perspiciatis ipsa laudantium adipisci error. Voluptatem provident incidunt quidem iure rerum possimus. Eveniet nam veniam esse voluptatem expedita vel.</p><p>Ex quis nihil voluptates mollitia deserunt. Aut sunt repudiandae molestias veniam quia dolores. Ab et maiores quos officiis. Earum dolor pariatur porro molestias perferendis.</p><p>Numquam veniam odio aut quisquam. Magnam sit voluptas debitis tempora omnis exercitationem qui omnis. Soluta et molestiae ut et asperiores. Aut doloremque recusandae alias maiores ea.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(9, 2, 4, 'Sunt corporis dolores.', 'consequatur-quia-at-odit-voluptatibus-ut', NULL, 'Dolores alias mollitia hic. Facere vero voluptatum quisquam mollitia blanditiis corrupti. Iusto id rerum nemo.', '<p>Error optio dignissimos omnis. Nemo repellat praesentium perferendis dolor tenetur. Dolorem a corporis tenetur ut molestiae. Dolores rerum numquam facere odio asperiores non fugit molestias.</p><p>Officia sint est est saepe et in doloremque. Necessitatibus neque error consectetur cupiditate magni. Porro doloremque dolor possimus velit ut accusantium recusandae.</p><p>Voluptatem tempora quae fuga sint eos maxime ad sit. Aliquid error facilis rem inventore neque et aut.</p><p>Eos est excepturi repudiandae odit rem. Labore laborum explicabo blanditiis et necessitatibus saepe. Ad dolores eveniet rerum atque et quam veritatis. Maxime exercitationem deleniti laboriosam voluptatem illo.</p><p>Similique distinctio eum suscipit reprehenderit rerum incidunt et. Odio fuga dolores tenetur occaecati. Ducimus sed accusantium labore qui.</p><p>Suscipit autem non et. Dolores expedita placeat veniam. Cumque tempora minus dolorem.</p><p>Placeat voluptatum perspiciatis aut sunt labore minus ea. Nihil omnis explicabo incidunt incidunt velit repudiandae excepturi voluptas. Quod esse nihil saepe vero et accusamus.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(10, 3, 3, 'Alias itaque ut.', 'molestiae-explicabo-distinctio-et-sequi-eius-quasi-qui', NULL, 'Omnis corporis quo error ipsum ipsa qui. Corrupti rerum aut error rerum. Deserunt eos illum ad velit labore reiciendis.', '<p>Excepturi voluptas blanditiis voluptatem fugit eum ut perferendis. Eum voluptatem voluptas pariatur nostrum quia.</p><p>Voluptatibus repellat iure cupiditate a aut. Eius quae sapiente eum quisquam cum. Ea doloremque et et sint quo ut repellendus. Aut temporibus assumenda odit et aut rerum ab in.</p><p>Nulla voluptas modi et repellendus. Voluptate molestiae dicta qui officia qui et quidem placeat.</p><p>Dolor ea praesentium consectetur culpa molestiae quia ea nam. Aliquam id vel quas qui odit natus. Qui ut consectetur laudantium. Nisi labore voluptas laboriosam adipisci.</p><p>Sequi aut inventore numquam commodi soluta quo inventore. Aut delectus ut beatae vero.</p><p>Aliquam sint autem minus ipsum perspiciatis quos. Sit explicabo saepe ipsa fuga iure aut. A nisi laborum labore cumque. Id quasi corporis non est velit repudiandae blanditiis.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(11, 2, 3, 'Illo atque soluta autem est quisquam quo sunt.', 'quis-reprehenderit-ut-iusto-eaque-non-quam-architecto', NULL, 'Nesciunt est laborum et reiciendis dolorem fugiat in. Minima molestiae exercitationem repudiandae modi in. Laudantium veniam cupiditate omnis dolorem ducimus quis aperiam. Repellendus doloribus quae dolorem aut ipsam velit. Aspernatur possimus fugit quisquam quidem blanditiis quia.', '<p>Sed eveniet laborum explicabo qui sit dignissimos. Odio eum quia quos corporis expedita. Est facilis voluptas sapiente.</p><p>Fugiat praesentium voluptatem quia quibusdam perspiciatis repudiandae modi. Non incidunt et quo ut molestiae aut recusandae. Eos sint alias commodi possimus. Ut asperiores aut est rerum iure sapiente culpa aut.</p><p>Et quam nisi odio quia. Et labore sed dolores laboriosam sapiente praesentium. Ut consequatur nihil a similique qui a. Explicabo explicabo tempore ea possimus. Et sapiente ipsum ad consectetur assumenda voluptate vero.</p><p>Velit recusandae odio qui harum quo. Sint et alias quibusdam vel eos autem reiciendis. Dignissimos debitis qui ut eligendi qui et. Pariatur facilis sequi aperiam enim pariatur ut.</p><p>Voluptatem deleniti molestiae similique. Eligendi id corporis sit sed quisquam. Sed excepturi et pariatur. Accusantium rerum est consequuntur quos culpa ad.</p><p>Perspiciatis non voluptate velit vero est. Qui voluptatibus quia et sint illo delectus. Dolores sint fuga enim aliquid ut consequatur. Non ad in rerum qui quis.</p><p>Tempore error doloribus tempora nesciunt. Ut et quibusdam inventore aut. Autem et aliquid eum ut.</p><p>Sint in exercitationem debitis corporis. Aspernatur inventore ut illo eius natus repellendus. Harum eius autem quia dolores repellendus et est architecto. Cumque molestiae architecto nemo.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(12, 5, 1, 'Dolore qui deleniti.', 'nobis-nobis-repudiandae-modi-quo-porro-voluptates', NULL, 'Omnis voluptatibus officia eum maxime labore. Et et praesentium ut fugit quod consequatur. Harum voluptatum dicta alias voluptatum sit voluptatem. Et suscipit nostrum qui pariatur repudiandae rerum aut.', '<p>Ex modi enim minima atque sint. Officia ducimus non aut eos tempora non perferendis. Repellendus illo enim aut nulla officia molestiae velit. Incidunt ipsum aspernatur ullam quia delectus nobis possimus. Architecto rem ducimus asperiores ut modi.</p><p>Dolores adipisci impedit fugiat laudantium autem. Dolorem non sint omnis natus ratione nihil maxime molestiae. Quos facilis ex accusantium asperiores voluptatem deserunt provident.</p><p>Quas eos enim dolor velit et. Autem debitis ab vero alias autem pariatur. Consequatur quis molestiae odio similique dolorem maiores odit.</p><p>Labore ea quae eius autem illum. Pariatur qui est dolorum beatae numquam nihil sed veniam. Et sunt perspiciatis minima ipsum quidem nesciunt.</p><p>Hic qui maiores tempore animi dolore. Consectetur ut quidem laborum dolorum nesciunt animi dolor. Quis ut vel est qui fugiat.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(13, 6, 3, 'Quaerat accusantium aut.', 'et-quae-exercitationem-quo', NULL, 'Quis molestias dolorum ut natus. Beatae aut autem exercitationem. Sed necessitatibus blanditiis aut repellendus eaque qui. Earum quis reiciendis aut. Cumque dolores totam molestias aut error non sunt eum.', '<p>Harum fugiat impedit ab iure consectetur ut. Eum tempora et et et hic maiores provident. Deleniti repellendus sit quasi rerum. Repellendus iure labore in eaque.</p><p>Omnis suscipit omnis recusandae explicabo nihil enim. Voluptatem qui non necessitatibus non. Minima et aut quis atque. Ut ea at vel dolores. Natus voluptatum esse eveniet reprehenderit sunt dolorem.</p><p>Officia velit provident natus magnam praesentium voluptatem et ut. Fugiat odio numquam incidunt. Est molestias ipsum magni.</p><p>Esse ipsam aperiam tempore esse repellendus in. Sint ipsum in quia. Quae et quisquam iste aut eos.</p><p>Omnis animi dolore pariatur ipsum blanditiis. Nisi deserunt minus in ipsa voluptas maiores voluptatem et.</p><p>Debitis voluptatum dolorum omnis accusantium incidunt quia ipsa. Vitae atque aperiam ipsam voluptas dicta. Officia voluptas deleniti delectus ut consequatur. Vitae aut qui cum illum voluptas. Molestiae aut aliquam in.</p><p>Cumque ut eligendi similique ducimus. Magni blanditiis est minima sit excepturi aliquid iure. Doloribus in et omnis omnis expedita et.</p><p>Accusamus maiores neque soluta atque qui deserunt. Et minima tenetur ut officiis. Eaque sit dolor ad deserunt sit. Officia sed accusamus non et repellat consectetur. Ratione similique fugit dolorum exercitationem quia rem minima.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(14, 6, 2, 'Sed nesciunt ipsam.', 'dolores-suscipit-voluptatem-minus-voluptas-et-ut-mollitia', NULL, 'Rem et rem omnis explicabo nam dolorem in. Consequatur corporis facere et totam. Mollitia enim reiciendis enim atque repudiandae molestiae. Sint repellendus veniam iste aut tenetur impedit aut.', '<p>Et eius sequi et exercitationem. Eos tenetur aut ullam non at tempora consequatur. Harum dolor et vel ab. Possimus repudiandae et animi provident.</p><p>Optio iure eius et recusandae distinctio. Delectus sed fuga distinctio illo aut. Voluptatem quia ab unde inventore et libero autem. Eos recusandae pariatur dolores atque perspiciatis sint et explicabo.</p><p>Voluptatem magnam reiciendis qui consequatur ea praesentium consequatur soluta. Tempora qui repellat debitis hic.</p><p>Nihil pariatur aut blanditiis doloremque. Est vel autem vel animi aut animi.</p><p>Dicta ut praesentium fugiat ea ipsum et. Quibusdam pariatur veritatis atque harum eaque rerum odit. Sint mollitia qui rerum hic magni est eveniet illum.</p><p>Eum voluptates tempore enim quos qui. Recusandae autem impedit voluptatem et deserunt error. Quam sit quis nisi quo excepturi dolores ipsa. Eaque ex dolores et delectus iure sequi.</p><p>Mollitia autem qui aliquid pariatur fugiat qui. Qui cupiditate vel in aut ipsum quod non. Architecto aliquid non rerum quia quod nisi dolores repellendus. Illum aut placeat recusandae nemo amet modi. Velit est provident id et porro quia dolore.</p><p>Adipisci ut molestiae animi consequatur et consequatur. Sunt nesciunt provident doloribus perferendis eum. In dolorem quam incidunt fuga quasi velit ut sapiente. Atque necessitatibus laudantium eum eius enim.</p><p>Qui sunt accusantium eveniet quis sit perferendis. Aliquam quasi voluptates dolorum aliquam. Quae tempore vitae tempore et.</p><p>Aut cupiditate perferendis deleniti omnis expedita. Molestiae laudantium dolores recusandae exercitationem. Sapiente eos provident modi. Quibusdam voluptatem aut aut impedit commodi consectetur.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(15, 2, 4, 'In occaecati fugiat.', 'quam-dolor-voluptas-facere-corrupti', NULL, 'Quis nisi iure dolor facere qui. Rerum quidem enim aliquam similique nulla voluptatem hic. Sint placeat ut voluptatibus impedit voluptatem odit. Aut dolor tempora sunt necessitatibus nam.', '<p>Voluptatem laboriosam inventore debitis accusantium officia ut. Magni atque voluptas repellat quia nihil porro rerum. Eum sint fugiat et iusto.</p><p>Soluta quo expedita omnis. Ut aspernatur eveniet quia sapiente sapiente quod provident. Ducimus a sunt commodi non eius a. Fuga minima sed odit molestias at.</p><p>Qui est incidunt voluptate sit cum. Id dolor iusto sit. Voluptatem mollitia cupiditate recusandae non illum. Pariatur voluptas voluptatem quis inventore esse minima aut. Ut reiciendis nulla sed possimus velit minima neque.</p><p>Officia distinctio enim perspiciatis tenetur. Quia saepe assumenda ab et quod necessitatibus. Quas impedit nobis ut quia.</p><p>Aliquid porro at illo dolorem. Ut et magni delectus minus. Et qui atque exercitationem at voluptas illum.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(16, 3, 1, 'Eos autem quas explicabo.', 'qui-doloribus-et-dolorem-culpa-repudiandae-hic-ipsum', NULL, 'Qui quaerat at iusto sit laudantium. Doloribus aliquam sunt ducimus est minus molestiae et.', '<p>Excepturi ea laudantium omnis nihil et libero. Qui rerum asperiores exercitationem minima voluptate vel consectetur. Doloremque quo expedita qui architecto.</p><p>Unde vero modi et praesentium dolore vitae voluptas. Quis labore animi nam. Ut autem tenetur nihil delectus consequatur aliquam. Est placeat at eos facere quis est distinctio.</p><p>Est distinctio sed hic et placeat officiis. Consectetur porro consequatur repellat quidem. Voluptatem velit quia nobis sint. Eveniet id consectetur sequi.</p><p>Incidunt et dignissimos dolores pariatur culpa. Nostrum sit iure architecto eligendi itaque sed.</p><p>Eveniet eius nihil dignissimos. Est qui magni debitis soluta. Recusandae sit aut voluptas reiciendis tenetur. Eum dignissimos dolores vitae ipsum. Temporibus quia sint nulla debitis sequi consectetur id in.</p><p>Eos tempore nostrum voluptatem quis ut error odit. Perspiciatis iure corrupti cumque ea quasi quo officiis. Itaque repellendus atque inventore sed vel consequuntur et. Placeat soluta voluptatem optio necessitatibus laborum dolor.</p><p>Neque quas ut corrupti occaecati nisi soluta. Doloribus autem doloribus a non et modi odit. Ut tenetur alias necessitatibus occaecati.</p><p>In qui voluptatem qui sed harum sed. Expedita alias voluptate modi neque ut non sint.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(17, 6, 2, 'Odio eveniet nisi esse.', 'facere-sed-velit-non-voluptatibus-dolorem', NULL, 'Animi qui deleniti maiores. Quia dolore corporis autem dolorum. Quod quis quidem voluptatem impedit earum et enim.', '<p>Aut voluptates veritatis autem blanditiis voluptatem sit molestiae impedit. In molestiae omnis sint et quia voluptate et debitis. Ipsam repellat doloremque quod eos voluptas quia consectetur.</p><p>Omnis ea voluptate voluptatum voluptas et est. Inventore omnis incidunt dignissimos nisi ut est. Eveniet quae nobis at sit repudiandae sit. Quasi consectetur rerum ut dolor.</p><p>Rerum nostrum impedit provident non similique. Reiciendis fuga quia magni tenetur. Possimus consequuntur et esse blanditiis.</p><p>Sit qui laboriosam rerum culpa sed laudantium rerum quaerat. Assumenda distinctio enim vel harum hic et doloribus. Ducimus voluptatem et deleniti. Cum nam ut non cupiditate.</p><p>Eum aliquam libero qui est atque provident explicabo. Enim ad possimus soluta quidem quo consequuntur quibusdam. Voluptatem optio suscipit iure et nesciunt mollitia voluptas. Ad dolores autem corrupti et.</p><p>Quia veniam nemo aut quia qui ut omnis repellat. Nobis beatae dolore accusantium deserunt sint ut. Aut perferendis temporibus deserunt nesciunt hic. Enim sequi magnam cum odio quo corporis. Exercitationem nostrum quo in sint dolorem alias delectus.</p><p>Laboriosam placeat est magni vitae laboriosam sit. Corporis dolor ea consequatur nulla. Consequatur neque mollitia libero quia eveniet. Consequatur sunt totam ratione dolor.</p><p>Modi temporibus modi est amet. Sequi magni rerum impedit molestiae minima voluptatem. Quia ut quae quia sint. Alias officia commodi praesentium autem iusto.</p><p>Illo suscipit inventore tempora in eum rem ipsa. Et vel sint dicta et et sunt. Eum aut cupiditate aut tenetur soluta dolor.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(18, 2, 3, 'Dolor laborum et voluptatibus.', 'totam-nobis-repellat-eius-consequuntur-cumque', NULL, 'Laboriosam voluptas inventore explicabo dolor. Porro voluptatibus porro ipsa aut et. In porro non soluta et. Veniam sint rerum consequatur similique cum.', '<p>Ut id et officia sunt exercitationem dolor. Officiis omnis assumenda numquam sed. Voluptatem minima earum iure corrupti. Laudantium expedita qui sit laborum.</p><p>Fugit sed ex ut enim dolorem eligendi. Ut neque non id consequatur nulla. Quod iste optio aspernatur tenetur nemo nulla. Reprehenderit tempora qui magnam nulla ut doloribus excepturi.</p><p>Consequuntur voluptas itaque dolorum in aspernatur nihil. Quas est alias et voluptatem ut. Aut autem ut nihil autem. Voluptas beatae et porro quaerat in occaecati et reiciendis.</p><p>Et sed id dignissimos adipisci in voluptatem voluptatem. Alias blanditiis veniam repellat animi quis. Ullam repellendus libero velit accusamus. Fuga rerum voluptate laborum beatae explicabo accusantium eum.</p><p>Odio quod eius excepturi. Ut fugiat animi animi ad rerum quae quaerat. Et sunt sequi beatae atque non. Nihil perferendis ea dolor.</p><p>Aut magnam tempore deleniti necessitatibus enim. Omnis corrupti et eos cumque repudiandae magni. Omnis accusantium quis placeat autem tempore ut. Non quisquam quo cumque consequatur.</p><p>Eos mollitia molestias eum cum dicta. Numquam aliquid assumenda fugiat velit voluptatibus. In deleniti distinctio non commodi.</p><p>Voluptas tempore et velit corrupti non animi asperiores doloribus. Omnis placeat et debitis. Ipsa laboriosam dolorem fuga cupiditate doloribus.</p><p>Tempore id suscipit aut tempore expedita rerum reiciendis. Voluptates eum dolorum nobis dolor ad.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(19, 3, 3, 'Tempore est quos veniam occaecati est voluptate voluptatem voluptatum odit.', 'aliquam-mollitia-neque-harum-velit', NULL, 'Voluptatem reprehenderit et aut officia praesentium velit. Voluptatibus eum culpa facilis odit quis. Tempore vitae ea laborum sapiente dolores.', '<p>Totam accusantium quo blanditiis nesciunt consequuntur tenetur neque minus. Dignissimos velit quia suscipit quam. Magnam vel est vitae velit harum vel vel. Aliquid molestiae tempora temporibus culpa.</p><p>Mollitia nihil qui et beatae et aperiam qui. Quia et ut ea qui. Quisquam molestias assumenda modi ullam assumenda et alias.</p><p>Vitae alias molestiae nostrum suscipit repudiandae numquam. Id provident officia fugiat ut. Necessitatibus vel velit aperiam repellendus et dolorem.</p><p>Voluptas officiis veniam voluptatem. Sapiente non quis quibusdam fuga doloribus. Nulla ullam est quasi velit natus architecto. Quam delectus necessitatibus ut id velit non.</p><p>Soluta vitae explicabo vel. Omnis sunt blanditiis aliquam est. Mollitia sit corrupti laudantium enim.</p><p>Cumque eaque quibusdam amet error sunt amet. Nisi cum voluptate sunt. Sapiente adipisci dolorem voluptatem consequatur perspiciatis.</p><p>Qui perferendis excepturi quia repellendus. Omnis tenetur ullam enim et impedit. Autem eligendi quisquam inventore beatae dolore. Exercitationem quia nam totam cupiditate deserunt.</p><p>Magni ut quis inventore aut nemo. Nesciunt sequi est cumque quam explicabo. Optio vel est aut rerum est. Debitis aut corporis autem vel vitae alias nihil dolorum. Alias doloribus cum sed vero libero repudiandae vel.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(20, 5, 1, 'Quia quo sed.', 'facere-fuga-molestiae-dolore', NULL, 'Voluptatem consequatur non odit adipisci enim ad. Pariatur omnis qui accusantium qui. Quisquam cupiditate adipisci nesciunt. Necessitatibus dolore illum perferendis mollitia dolores unde. Ut aperiam ipsum ad voluptatem eveniet ab voluptatibus distinctio.', '<p>Similique aspernatur omnis quisquam ex. Beatae enim dolor quo vitae natus. Mollitia ut voluptas et quod sit ullam odio deleniti. Laboriosam quos suscipit vel nostrum accusamus eos repellendus.</p><p>Ut ab consequatur suscipit. Qui dolorum fugiat molestias.</p><p>Qui repellat et quae iste quae quia nisi. Ex quibusdam eum nisi eos natus. Mollitia vel explicabo sunt aperiam dolorum consequatur quas voluptates. Temporibus optio voluptatum error animi amet.</p><p>Ullam at maiores molestiae ullam est. Impedit laborum necessitatibus voluptate eius enim ab. Incidunt qui ad eius vel rerum earum est.</p><p>Dignissimos fugiat sed animi doloremque cupiditate voluptatem ea. Quisquam est at itaque quasi perferendis natus. Saepe dolorem et aut pariatur. Voluptates fugiat sequi et. Et officia voluptatem non voluptatem labore.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(2, 'user', '2023-06-08 00:50:30', '2023-06-08 00:50:30');

-- --------------------------------------------------------

--
-- Stand-in structure for view `saw_hasil`
-- (See below for the actual view)
--
CREATE TABLE `saw_hasil` (
`alternative` char(2)
,`nama_rumah` varchar(255)
,`nilai_akhir` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `saw_normalisasi`
-- (See below for the actual view)
--
CREATE TABLE `saw_normalisasi` (
`alternative` char(2)
,`daya_listrik` decimal(14,4)
,`harga` decimal(35,4)
,`kamar_mandi` decimal(14,4)
,`kamar_tidur` decimal(14,4)
,`luas_bangunan` decimal(14,4)
,`luas_tanah` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `saw_pembagi`
-- (See below for the actual view)
--
CREATE TABLE `saw_pembagi` (
`daya_listrik` int
,`harga` int
,`kamar_mandi` int
,`kamar_tidur` int
,`luas_bangunan` int
,`luas_tanah` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `saw_pengkali`
-- (See below for the actual view)
--
CREATE TABLE `saw_pengkali` (
`alternative` char(2)
,`daya_listrik` double
,`harga` double
,`kamar_mandi` double
,`kamar_tidur` double
,`luas_bangunan` double
,`luas_tanah` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `t`
-- (See below for the actual view)
--
CREATE TABLE `t` (
`t` double
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `jk`, `tanggal_lahir`, `alamat`, `no_hp`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'Aswani Kenzie Maheswara S.Farm', 'saptono.sidiq', 'ozulaika@example.org', '1', '1999-02-14', 'Gg. Barasak No. 180, Tual 30449, Jabar', '024 8218 312', '2023-06-08 00:50:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2sYR1fo43f', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(2, 1, 'Rachel Usada', 'lalita.simbolon', 'bahuwirya15@example.net', '1', '2008-08-22', 'Ki. Cokroaminoto No. 265, Jambi 16138, Jabar', '(+62) 381 1004 1875', '2023-06-08 00:50:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TjHaTSBtXm', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(3, 2, 'Almira Oni Handayani S.E.I', 'dagel13', 'vmegantara@example.net', '0', '1998-07-01', 'Gg. Baabur Royan No. 842, Banda Aceh 32921, Kalsel', '(+62) 757 2713 9109', '2023-06-08 00:50:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xrn2kgEvK6', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(4, 2, 'Raisa Puspasari', 'baktianto.riyanti', 'kusumo.nurul@example.net', '0', '2009-07-28', 'Dk. Acordion No. 658, Langsa 57753, NTT', '021 6308 0027', '2023-06-08 00:50:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2NhQpCBish', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(5, 1, 'Annur Riyadhus Solikhin', 'annurrs', 'annurriyadhus17@gmail.com', '1', '2002-12-27', 'selapura city', '085642240515', NULL, '$2y$10$rluGXS5NTR.04gcV5yrpGOQMXlEG1rvYCqVfRDi1Sh6.8VzqT5sJy', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30');

-- --------------------------------------------------------

--
-- Structure for view `bobot`
--
DROP TABLE IF EXISTS `bobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bobot`  AS SELECT `normalisasi_matriks`.`id` AS `id`, ((((((`normalisasi_matriks`.`harga` + `normalisasi_matriks`.`luas_bangunan`) + `normalisasi_matriks`.`luas_tanah`) + `normalisasi_matriks`.`kamar_tidur`) + `normalisasi_matriks`.`kamar_mandi`) + `normalisasi_matriks`.`daya_listrik`) / 6) AS `bobot` FROM `normalisasi_matriks` ;

-- --------------------------------------------------------

--
-- Structure for view `ci`
--
DROP TABLE IF EXISTS `ci`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ci`  AS SELECT ((`t`.`t` - 6) / (6 - 1)) AS `ci` FROM `t` ;

-- --------------------------------------------------------

--
-- Structure for view `jumlah_bobot`
--
DROP TABLE IF EXISTS `jumlah_bobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_bobot`  AS SELECT `matriks`.`id` AS `id`, ((((((`matriks`.`harga` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 1))) + (`matriks`.`luas_bangunan` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 2)))) + (`matriks`.`luas_tanah` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 3)))) + (`matriks`.`kamar_tidur` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 4)))) + (`matriks`.`kamar_mandi` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 5)))) + (`matriks`.`daya_listrik` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 6)))) AS `jumlah_bobot` FROM (`matriks` join `bobot`) GROUP BY `matriks`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `jumlah_matriks`
--
DROP TABLE IF EXISTS `jumlah_matriks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_matriks`  AS SELECT sum(`matriks`.`harga`) AS `harga`, sum(`matriks`.`luas_bangunan`) AS `luas_bangunan`, sum(`matriks`.`luas_tanah`) AS `luas_tanah`, sum(`matriks`.`kamar_tidur`) AS `kamar_tidur`, sum(`matriks`.`kamar_mandi`) AS `kamar_mandi`, sum(`matriks`.`daya_listrik`) AS `daya_listrik` FROM `matriks` ;

-- --------------------------------------------------------

--
-- Structure for view `konsistensi`
--
DROP TABLE IF EXISTS `konsistensi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `konsistensi`  AS SELECT (`ci`.`ci` / 1.24) AS `konsistensi` FROM `ci` ;

-- --------------------------------------------------------

--
-- Structure for view `nilai_alternatif`
--
DROP TABLE IF EXISTS `nilai_alternatif`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nilai_alternatif`  AS SELECT `p1`.`alternative` AS `alternative`, (`p1`.`harga` / sum(`p2`.`harga`)) AS `harga`, (`p1`.`luas_bangunan` / sum(`p2`.`luas_bangunan`)) AS `luas_bangunan`, (`p1`.`luas_tanah` / sum(`p2`.`luas_tanah`)) AS `luas_tanah`, (`p1`.`kamar_tidur` / sum(`p2`.`kamar_tidur`)) AS `kamar_tidur`, (`p1`.`kamar_mandi` / sum(`p2`.`kamar_mandi`)) AS `kamar_mandi`, (`p1`.`daya_listrik` / sum(`p2`.`daya_listrik`)) AS `daya_listrik` FROM (`pembagi` `p1` join `pembagi` `p2`) GROUP BY `p1`.`alternative` ;

-- --------------------------------------------------------

--
-- Structure for view `normalisasi_matriks`
--
DROP TABLE IF EXISTS `normalisasi_matriks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `normalisasi_matriks`  AS SELECT `matriks`.`id` AS `id`, (`matriks`.`harga` / `jumlah_matriks`.`harga`) AS `harga`, (`matriks`.`luas_bangunan` / `jumlah_matriks`.`luas_bangunan`) AS `luas_bangunan`, (`matriks`.`luas_tanah` / `jumlah_matriks`.`luas_tanah`) AS `luas_tanah`, (`matriks`.`kamar_tidur` / `jumlah_matriks`.`kamar_tidur`) AS `kamar_tidur`, (`matriks`.`kamar_mandi` / `jumlah_matriks`.`kamar_mandi`) AS `kamar_mandi`, (`matriks`.`daya_listrik` / `jumlah_matriks`.`daya_listrik`) AS `daya_listrik` FROM (`matriks` join `jumlah_matriks`) ;

-- --------------------------------------------------------

--
-- Structure for view `pembagi`
--
DROP TABLE IF EXISTS `pembagi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pembagi`  AS SELECT `a1`.`alternative` AS `alternative`, (min(`a2`.`harga`) / `a1`.`harga`) AS `harga`, (`a1`.`luas_bangunan` / max(`a2`.`luas_bangunan`)) AS `luas_bangunan`, (`a1`.`luas_tanah` / max(`a2`.`luas_tanah`)) AS `luas_tanah`, (`a1`.`kamar_tidur` / max(`a2`.`kamar_tidur`)) AS `kamar_tidur`, (`a1`.`kamar_mandi` / max(`a2`.`kamar_mandi`)) AS `kamar_mandi`, (`a1`.`daya_listrik` / max(`a2`.`daya_listrik`)) AS `daya_listrik` FROM (`alternatives` `a1` join `alternatives` `a2`) GROUP BY `a1`.`alternative`, `a1`.`harga` ;

-- --------------------------------------------------------

--
-- Structure for view `perangkingan`
--
DROP TABLE IF EXISTS `perangkingan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `perangkingan`  AS SELECT `nilai_alternatif`.`alternative` AS `alternative`, `alternatives`.`nama_rumah` AS `nama_rumah`, ((((((`nilai_alternatif`.`harga` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 1))) + (`nilai_alternatif`.`luas_bangunan` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 2)))) + (`nilai_alternatif`.`luas_tanah` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 3)))) + (`nilai_alternatif`.`kamar_tidur` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 4)))) + (`nilai_alternatif`.`kamar_mandi` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 5)))) + (`nilai_alternatif`.`daya_listrik` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 6)))) AS `nilai_akhir` FROM ((`nilai_alternatif` join `bobot`) join `alternatives` on((`nilai_alternatif`.`alternative` = `alternatives`.`alternative`))) GROUP BY `nilai_alternatif`.`alternative` ORDER BY ((((((`nilai_alternatif`.`harga` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 1))) + (`nilai_alternatif`.`luas_bangunan` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 2)))) + (`nilai_alternatif`.`luas_tanah` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 3)))) + (`nilai_alternatif`.`kamar_tidur` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 4)))) + (`nilai_alternatif`.`kamar_mandi` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 5)))) + (`nilai_alternatif`.`daya_listrik` * (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 6)))) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `saw_hasil`
--
DROP TABLE IF EXISTS `saw_hasil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `saw_hasil`  AS SELECT (((((`saw_pengkali`.`harga` + `saw_pengkali`.`luas_bangunan`) + `saw_pengkali`.`luas_tanah`) + `saw_pengkali`.`kamar_tidur`) + `saw_pengkali`.`kamar_mandi`) + `saw_pengkali`.`daya_listrik`) AS `nilai_akhir`, `saw_pengkali`.`alternative` AS `alternative`, `alternatives`.`nama_rumah` AS `nama_rumah` FROM (`saw_pengkali` join `alternatives` on((`alternatives`.`alternative` = `saw_pengkali`.`alternative`))) ORDER BY (((((`saw_pengkali`.`harga` + `saw_pengkali`.`luas_bangunan`) + `saw_pengkali`.`luas_tanah`) + `saw_pengkali`.`kamar_tidur`) + `saw_pengkali`.`kamar_mandi`) + `saw_pengkali`.`daya_listrik`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `saw_normalisasi`
--
DROP TABLE IF EXISTS `saw_normalisasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `saw_normalisasi`  AS SELECT `alternatives`.`alternative` AS `alternative`, (`saw_pembagi`.`harga` / `alternatives`.`harga`) AS `harga`, (`alternatives`.`luas_bangunan` / `saw_pembagi`.`luas_bangunan`) AS `luas_bangunan`, (`alternatives`.`luas_tanah` / `saw_pembagi`.`luas_tanah`) AS `luas_tanah`, (`alternatives`.`kamar_tidur` / `saw_pembagi`.`kamar_tidur`) AS `kamar_tidur`, (`alternatives`.`kamar_mandi` / `saw_pembagi`.`kamar_mandi`) AS `kamar_mandi`, (`alternatives`.`daya_listrik` / `saw_pembagi`.`daya_listrik`) AS `daya_listrik` FROM (`alternatives` join `saw_pembagi`) ;

-- --------------------------------------------------------

--
-- Structure for view `saw_pembagi`
--
DROP TABLE IF EXISTS `saw_pembagi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `saw_pembagi`  AS SELECT min(`alternatives`.`harga`) AS `harga`, max(`alternatives`.`luas_bangunan`) AS `luas_bangunan`, max(`alternatives`.`luas_tanah`) AS `luas_tanah`, max(`alternatives`.`kamar_tidur`) AS `kamar_tidur`, max(`alternatives`.`kamar_mandi`) AS `kamar_mandi`, max(`alternatives`.`daya_listrik`) AS `daya_listrik` FROM `alternatives` ;

-- --------------------------------------------------------

--
-- Structure for view `saw_pengkali`
--
DROP TABLE IF EXISTS `saw_pengkali`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `saw_pengkali`  AS SELECT `saw_normalisasi`.`alternative` AS `alternative`, (`saw_normalisasi`.`harga` * (select `kriteria`.`bobot` from `kriteria` where (`kriteria`.`kriteria` = 'harga'))) AS `harga`, (`saw_normalisasi`.`luas_bangunan` * (select `kriteria`.`bobot` from `kriteria` where (`kriteria`.`kriteria` = 'luas_bangunan'))) AS `luas_bangunan`, (`saw_normalisasi`.`luas_tanah` * (select `kriteria`.`bobot` from `kriteria` where (`kriteria`.`kriteria` = 'luas_tanah'))) AS `luas_tanah`, (`saw_normalisasi`.`kamar_tidur` * (select `kriteria`.`bobot` from `kriteria` where (`kriteria`.`kriteria` = 'kamar_tidur'))) AS `kamar_tidur`, (`saw_normalisasi`.`kamar_mandi` * (select `kriteria`.`bobot` from `kriteria` where (`kriteria`.`kriteria` = 'kamar_mandi'))) AS `kamar_mandi`, (`saw_normalisasi`.`daya_listrik` * (select `kriteria`.`bobot` from `kriteria` where (`kriteria`.`kriteria` = 'daya_listrik'))) AS `daya_listrik` FROM (`saw_normalisasi` join `kriteria`) GROUP BY `saw_normalisasi`.`alternative` ;

-- --------------------------------------------------------

--
-- Structure for view `t`
--
DROP TABLE IF EXISTS `t`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `t`  AS SELECT ((((((((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 1)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 1))) + ((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 2)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 2)))) + ((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 3)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 3)))) + ((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 4)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 4)))) + ((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 5)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 5)))) + ((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 6)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 6)))) / 6) AS `t` FROM (`bobot` join `jumlah_bobot`) GROUP BY ((((((((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 1)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 1))) + ((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 2)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 2)))) + ((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 3)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 3)))) + ((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 4)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 4)))) + ((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 5)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 5)))) + ((select `jumlah_bobot`.`jumlah_bobot` from `jumlah_bobot` where (`jumlah_bobot`.`id` = 6)) / (select `bobot`.`bobot` from `bobot` where (`bobot`.`id` = 6)))) / 6) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatives`
--
ALTER TABLE `alternatives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comparisons`
--
ALTER TABLE `comparisons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `houses_slug_unique` (`slug`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matriks`
--
ALTER TABLE `matriks`
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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatives`
--
ALTER TABLE `alternatives`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comparisons`
--
ALTER TABLE `comparisons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `matriks`
--
ALTER TABLE `matriks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
