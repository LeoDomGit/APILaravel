-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 01, 2022 at 03:17 PM
-- Server version: 10.9.3-MariaDB-log
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_categrory`
--

CREATE TABLE `brand_categrory` (
  `idBrand` int(11) NOT NULL,
  `idCate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_categrory`
--

INSERT INTO `brand_categrory` (`idBrand`, `idCate`) VALUES
(1, 1),
(1, 2),
(3, 1),
(3, 2),
(13, 1),
(13, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categrory`
--

CREATE TABLE `categrory` (
  `idcate` int(11) NOT NULL,
  `cateName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categrory`
--

INSERT INTO `categrory` (`idcate`, `cateName`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giày', 0, NULL, NULL),
(2, 'Quần áo', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `colorName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colorpicker` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `colorName`, `colorpicker`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Đen', '#000000', 1, '2022-09-28 10:45:31', NULL),
(2, 'Đỏ', '#ff0000', 1, '2022-09-28 10:45:46', '2022-09-28 10:54:44'),
(4, 'Trắng', '#ffffff', 1, '2022-09-29 07:10:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(1, '2022_09_16_044254_user_role', 1),
(2, '2014_10_12_000000_create_users_table', 2),
(15, '2014_10_12_100000_create_password_resets_table', 3),
(16, '2019_08_19_000000_create_failed_jobs_table', 3),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(18, '2022_09_26_095210_create_brand_category_table', 4);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prodtage`
--

CREATE TABLE `prodtage` (
  `id` int(11) NOT NULL,
  `idProd` int(11) NOT NULL,
  `idTag` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productgallery`
--

CREATE TABLE `productgallery` (
  `idProd` int(11) NOT NULL,
  `imagename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodSet` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productgallery`
--

INSERT INTO `productgallery` (`idProd`, `imagename`, `prodSet`, `created_at`, `updated_at`) VALUES
(4, '3d3f9e9b-cb7a-4792-a943-c76ce5d07fff.webp', 0, '2022-10-01 15:15:10', '2022-10-01 15:15:10'),
(4, 'c26aecec-ffb0-4fef-988c-01c29a81f49c.webp', 0, '2022-10-01 15:15:10', '2022-10-01 15:15:10'),
(4, 'd63fce44-0e1d-428c-b80c-762a598a86d6.webp', 0, '2022-10-01 15:15:10', '2022-10-01 15:15:10'),
(5, 'b3a84ce7-8175-46f2-ad8e-23e2be9e61dc.webp', 0, '2022-10-01 15:16:59', '2022-10-01 15:16:59'),
(5, 'f0da49f3-d2ac-4c2e-807a-b9a4a8bea04c.webp', 0, '2022-10-01 15:16:59', '2022-10-01 15:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `idcate` int(11) NOT NULL,
  `idBrand` int(11) NOT NULL,
  `soLuotXem` int(11) NOT NULL DEFAULT 0,
  `highlight` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `summary`, `content`, `status`, `idcate`, `idBrand`, `soLuotXem`, `highlight`, `created_at`, `updated_at`) VALUES
(4, 'sản phaam1', 'sản phẩm 1', '<p>ABC</p>', 0, 1, 1, 0, 0, '2022-10-01 15:13:21', NULL),
(5, 'sản phẩm 2', 'sản phẩm test 2', '<p>abc</p>', 0, 1, 1, 0, 0, '2022-10-01 15:16:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `storageprod`
--

CREATE TABLE `storageprod` (
  `idProd` int(11) NOT NULL,
  `idSize` int(11) NOT NULL,
  `idColor` int(11) NOT NULL,
  `idStorage` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `storages`
--

CREATE TABLE `storages` (
  `id` int(11) NOT NULL,
  `storageName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storageInfo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `idbrand` int(11) NOT NULL,
  `brandname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`idbrand`, `brandname`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nike', 0, '2022-09-25 06:12:14', '2022-09-25 06:12:14'),
(3, 'Adidas', 0, '2022-09-25 07:53:45', '2022-09-25 08:54:54'),
(13, 'Gucci', 0, '2022-09-26 12:04:52', '2022-09-26 12:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `idSize` int(11) NOT NULL,
  `sizename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sizeinfo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tag`
--

CREATE TABLE `tbl_tag` (
  `idtag` int(11) NOT NULL,
  `tagname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE `userrole` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userrole`
--

INSERT INTO `userrole` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, '2022-09-18 14:53:08', NULL),
(2, 'user', 1, '2022-09-19 04:39:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `ggId` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idRole` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `password2`, `fullName`, `image`, `email`, `email_verified_at`, `ggId`, `idRole`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$8VyuTdggxGSuHHmpbutwkOhe0B3cvYvVq/ls2It5ueV6dgSsqBxHS', NULL, NULL, NULL, 'leodomsolar@gmail.com', NULL, NULL, 1, 1, NULL, '2022-09-17 11:22:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_categrory`
--
ALTER TABLE `brand_categrory`
  ADD PRIMARY KEY (`idBrand`,`idCate`),
  ADD KEY `idCate` (`idCate`);

--
-- Indexes for table `categrory`
--
ALTER TABLE `categrory`
  ADD PRIMARY KEY (`idcate`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prodtage`
--
ALTER TABLE `prodtage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prodtage_idprod_foreign` (`idProd`),
  ADD KEY `prodtage_idtag_foreign` (`idTag`);

--
-- Indexes for table `productgallery`
--
ALTER TABLE `productgallery`
  ADD PRIMARY KEY (`idProd`,`imagename`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_idcate_foreign` (`idcate`),
  ADD KEY `idBrand` (`idBrand`);

--
-- Indexes for table `storageprod`
--
ALTER TABLE `storageprod`
  ADD PRIMARY KEY (`idProd`,`idSize`,`idColor`,`idStorage`),
  ADD KEY `storageprod_idprod_foreign` (`idProd`),
  ADD KEY `storageprod_idsize_foreign` (`idSize`),
  ADD KEY `storageprod_idcolor_foreign` (`idColor`),
  ADD KEY `storageprod_idstorage_foreign` (`idStorage`);

--
-- Indexes for table `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`idbrand`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`idSize`);

--
-- Indexes for table `tbl_tag`
--
ALTER TABLE `tbl_tag`
  ADD PRIMARY KEY (`idtag`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_idrole_foreign` (`idRole`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categrory`
--
ALTER TABLE `categrory`
  MODIFY `idcate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prodtage`
--
ALTER TABLE `prodtage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `storages`
--
ALTER TABLE `storages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `idbrand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `idSize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tag`
--
ALTER TABLE `tbl_tag`
  MODIFY `idtag` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userrole`
--
ALTER TABLE `userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brand_categrory`
--
ALTER TABLE `brand_categrory`
  ADD CONSTRAINT `brand_categrory_ibfk_1` FOREIGN KEY (`idBrand`) REFERENCES `tbl_brand` (`idbrand`) ON UPDATE CASCADE,
  ADD CONSTRAINT `brand_categrory_ibfk_2` FOREIGN KEY (`idCate`) REFERENCES `categrory` (`idcate`) ON UPDATE CASCADE;

--
-- Constraints for table `prodtage`
--
ALTER TABLE `prodtage`
  ADD CONSTRAINT `prodtage_idprod_foreign` FOREIGN KEY (`idProd`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `prodtage_idtag_foreign` FOREIGN KEY (`idTag`) REFERENCES `tbl_tag` (`idtag`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idBrand`) REFERENCES `tbl_brand` (`idbrand`),
  ADD CONSTRAINT `products_idcate_foreign` FOREIGN KEY (`idcate`) REFERENCES `categrory` (`idcate`);

--
-- Constraints for table `storageprod`
--
ALTER TABLE `storageprod`
  ADD CONSTRAINT `storageprod_idcolor_foreign` FOREIGN KEY (`idColor`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `storageprod_idprod_foreign` FOREIGN KEY (`idProd`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `storageprod_idsize_foreign` FOREIGN KEY (`idSize`) REFERENCES `tbl_size` (`idSize`),
  ADD CONSTRAINT `storageprod_idstorage_foreign` FOREIGN KEY (`idStorage`) REFERENCES `storages` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_idrole_foreign` FOREIGN KEY (`idRole`) REFERENCES `userrole` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
