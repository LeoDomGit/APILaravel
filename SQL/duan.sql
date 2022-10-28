-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 28, 2022 lúc 04:43 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand_categrory`
--

CREATE TABLE `brand_categrory` (
  `idBrand` int(11) NOT NULL,
  `idCate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand_categrory`
--

INSERT INTO `brand_categrory` (`idBrand`, `idCate`) VALUES
(1, 1),
(1, 2),
(3, 1),
(3, 2),
(13, 1),
(13, 2),
(13, 14),
(17, 1),
(18, 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categrory`
--

CREATE TABLE `categrory` (
  `idcate` int(11) NOT NULL,
  `cateName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categrory`
--

INSERT INTO `categrory` (`idcate`, `cateName`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giày', 1, NULL, '2022-10-23 13:12:05'),
(2, 'Quần áo', 1, NULL, '2022-10-22 12:01:32'),
(14, 'Túi xách', 1, '2022-10-21 15:26:55', '2022-10-27 03:14:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_posts`
--

CREATE TABLE `cate_posts` (
  `id` int(11) NOT NULL,
  `nameCatePosts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugCatePost` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `der` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate_posts`
--

INSERT INTO `cate_posts` (`id`, `nameCatePosts`, `slugCatePost`, `logo`, `der`, `created_at`, `updated_at`) VALUES
(1, 'Thời trang 24/7', 'thoi-trang-247', NULL, NULL, '2022-10-28 09:19:18', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
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
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `colorName`, `colorpicker`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Đen', '#000000', 1, '2022-09-28 10:45:31', NULL),
(2, 'Đỏ', '#ff0000', 1, '2022-09-28 10:45:46', '2022-09-28 10:54:44'),
(4, 'Trắng', '#ffffff', 1, '2022-09-29 07:10:41', NULL),
(5, 'den', '#121111', 1, '2022-10-14 13:56:20', NULL),
(6, 'Cam', '#c26b19', 0, '2022-10-17 05:02:20', '2022-10-18 06:44:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `login`
--

CREATE TABLE `login` (
  `idUser` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`idUser`, `created_at`, `updated_at`) VALUES
(6, '2022-10-13 09:02:34', '2022-10-13 09:02:34'),
(8, '2022-10-21 03:14:57', '2022-10-21 03:14:57'),
(7, '2022-10-23 14:45:07', '2022-10-23 14:45:07'),
(9, '2022-10-25 09:49:53', '2022-10-25 09:49:53'),
(1, '2022-10-27 09:59:05', '2022-10-27 09:59:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_09_16_044254_user_role', 1),
(2, '2014_10_12_000000_create_users_table', 2),
(15, '2014_10_12_100000_create_password_resets_table', 3),
(16, '2019_08_19_000000_create_failed_jobs_table', 3),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(18, '2022_09_26_095210_create_brand_category_table', 4),
(22, '2022_10_28_113103_create_cate_posts_table', 5),
(24, '2022_10_28_111723_create_posts_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idcatePosts` int(11) NOT NULL,
  `titlePosts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugPosts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summaryPosts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagePosts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagsPosts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentPosts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewPosts` int(11) NOT NULL,
  `statusPosts` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `idcatePosts`, `titlePosts`, `slugPosts`, `summaryPosts`, `imagePosts`, `tagsPosts`, `contentPosts`, `viewPosts`, `statusPosts`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 1, 'Quần áo thể thao Kappa: Năng động, tính ứng dụng cao, giá rẻ', 'quan-ao-the-thao-kappa-nang-dong-tinh-ung-dung-cao-gia-re', '<p>Quần &aacute;o thể thao&nbsp;<a href=\"https://hoang-phuc.com/san-pham-kappa.html?page=1\">Kappa</a>&nbsp;l&agrave; những items đại diện cho sự tiện lợi nhưng vẫn đảm bảo t&iacute;nh thời trang. Tại Ho&agrave;ng Ph&uacute;c, bạn c&oacute; thể dễ d&agrave;ng t&igrave;m được những m&oacute;n đồ thể thao trendy v&agrave; s&agrave;nh điệu. Đặc biệt, đồ thể thao lại c&ograve;n rẻ cực k&igrave; lu&ocirc;n nha, chỉ từ 199.000đ th&ocirc;i n&egrave;!</p>', '1666949247quan-ao-the-thao-kappa-nang-dong-tinh-ung-dung-cao-gia-re22566.jpg', 'kappa,quần áo thể thao giá rẻ', '<h2><strong>Quần &aacute;o thể thao nam</strong></h2>\r\n\r\n<h3><strong>Quần d&agrave;i 499.000đ &ndash; 699.000đ &ndash; 599.000đ</strong></h3>\r\n\r\n<p>Bạn muốn thoải m&aacute;i vận động hay tha hồ luyện tập, quần d&agrave;i thể thao Kappa sinh ra l&agrave; để d&agrave;nh cho bạn đ&acirc;y. Sở hữu nhiều thiết kế kh&aacute;c nhau nhưng điểm chung của những chiếc quần n&agrave;y l&agrave; chất liệu tho&aacute;ng kh&iacute;, mau kh&ocirc;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/Quan-ao-the-thao-Kappa-5-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Quần thể thao nam gi&aacute; 499.000đ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/Quan-ao-the-thao-Kappa-1-1-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Quần Kappa gi&aacute; 599.000đ, mặc đi tập đi chơi đều ổn &aacute;p n&egrave;!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/Quan-ao-the-thao-Kappa-2-1-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Quần thể thao d&agrave;nh cho nam 699.000đ</p>\r\n\r\n<p>Nhờ c&aacute;c ưu điểm ấy m&agrave; ch&uacute;ng sẽ th&iacute;ch hợp với những anh ch&agrave;ng vận động nhiều. Tuy nhi&ecirc;n, bạn cũng c&oacute; thể chọn quần thể thao Kappa để diện đi chơi cũng kh&ocirc;ng th&agrave;nh vấn đề. Bởi v&igrave; quần sở hữu diện mạo thời trang lắm nha, mặc v&agrave;o cực năng động lu&ocirc;n n&egrave;.</p>\r\n\r\n<h3><strong>Quần shorts 199.000đ &ndash; 249.000đ</strong></h3>\r\n\r\n<p>Quần shorts thể thao với chất liệu polyester vừa co gi&atilde;n, tho&aacute;ng kh&iacute; vừa mau kh&ocirc; sẽ gi&uacute;p bạn vận động thể thao thoải m&aacute;i. Nếu kh&ocirc;ng đi tập, bạn cũng c&oacute; thể diện quần ở nh&agrave; hay ra ngo&agrave;i dạo chơi đều đẹp nha.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/Quan-ao-the-thao-Kappa-3-1-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Quần shorts thể thao nam đang được giảm c&ograve;n 249.000đ (gi&aacute; gốc 349.000đ)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/Quan-ao-the-thao-Kappa-4-1-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Quần nam Kappa gi&aacute; chỉ 199.000đ, mặc vừa thoải m&aacute;i m&agrave; c&ograve;n thời trang</p>\r\n\r\n<h3><strong>&Aacute;o thể thao 24.000đ</strong></h3>\r\n\r\n<p>C&oacute; quần shorts thể thao nam th&igrave; l&agrave;m sao thiếu được &aacute;o thể thao chứ. Bởi v&igrave; ch&uacute;ng c&oacute; thể phối hợp với nhau để tạo th&agrave;nh cả set thể thao cực ngầu đ&oacute; nha. &Aacute;o thể thao nam ngo&agrave;i d&ugrave;ng trong mục đ&iacute;ch luyện tập, đi đ&aacute; b&oacute;ng, c&aacute;c ch&agrave;ng c&ograve;n c&oacute; thể mặc ở nh&agrave; hay xuống phố nữa đ&oacute;. Đẹp từ trong nh&agrave; ra ngo&agrave;i phố chỉ với 249.000đ th&ocirc;i.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/Untitled_Session0082-500x500.webp\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/Untitled_Session0038-400x500.webp\" style=\"height:500px; width:400px\" /></p>\r\n\r\n<h2><strong>Quần &aacute;o thể thao nữ</strong></h2>\r\n\r\n<h3><strong>Quần d&agrave;i thể thao 599.000đ &ndash; 699.000đ</strong></h3>\r\n\r\n<p>Quần d&agrave;i thể thao cho c&aacute;c n&agrave;ng cũng kh&ocirc;ng k&eacute;m phần năng động v&agrave; s&agrave;nh điệu đ&acirc;u nha. Nếu diện đi tập, bạn c&oacute; thể phối với &aacute;o tập nữ v&agrave; &aacute;o kho&aacute;c thể thao. Ngo&agrave;i ra, quần cũng c&oacute; thể phối với &aacute;o thun, tạo n&ecirc;n một outfit đầy phong c&aacute;ch để xuống phố.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/Quan-ao-the-thao-Kappa-5-1-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Quần thể thao nữ Kappa 599.000đ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/Quan-ao-the-thao-Kappa-6-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Quần d&agrave;i nữ 699.00đ</p>\r\n\r\n<h3><strong>Quần shorts thể thao 249.000đ &ndash; 349.000đ</strong></h3>\r\n\r\n<p>Quần shorts nữ sở hữu kiểu d&aacute;ng đơn giản nhưng mặc v&agrave;o vẫn xinh lắm nha. Thiết kế lưng chun v&agrave; d&acirc;y r&uacute;t thuận tiện thao t&aacute;c v&agrave; thoải m&aacute;i luyện tập.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/Quan-ao-the-thao-Kappa-7-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Quần shorts nữ 249.000đ &ndash; 349.000đ</p>\r\n\r\n<p>Để mua quần &aacute;o thể thao Kappa, bạn c&oacute; thể đến trực tiếp tại c&aacute;c cửa h&agrave;ng Ho&agrave;ng Ph&uacute;c (<a href=\"https://hoang-phuc.com/he-thong-cua-hang-hoang-phuc?\">danh s&aacute;ch cửa h&agrave;ng</a>). Nếu kh&ocirc;ng, bạn cũng c&oacute; thể mua h&agrave;ng online th&ocirc;ng qua&nbsp;<a href=\"https://hoang-phuc.com/quan-ao-kappa-the-thao.html?page=1\">website Ho&agrave;ng Ph&uacute;c</a>. Khi mua h&agrave;ng, bạn sẽ được freeship to&agrave;n quốc v&agrave; đổi h&agrave;ng trong v&ograve;ng 90 ng&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/Quan-ao-the-thao-Kappa-8-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Đồ thể thao &ndash; 1 item nhưng hai c&ocirc;ng dụng. Bạn vừa mặc đi tập vừa c&oacute; thể mặc ngo&agrave;i đời cũng được nốt. Quan trọng l&agrave; những sản phẩm n&agrave;y đều xuất th&acirc;n từ Kappa, thương hiệu thời trang nổi tiếng đến từ Italia. Nhưng m&agrave; gi&aacute; của ch&uacute;ng lại rẻ lắm nha, chỉ từ 199.000đ th&ocirc;i. Sắm ngay v&agrave;i sản phẩm để đi tập, đi chơi n&agrave;o c&aacute;c bạn ơi!</p>', 1, 1, NULL, '2022-10-28 09:27:27', '2022-10-28 09:27:27'),
(9, 1, 'Gợi ý combo chưa đến 1,5 triệu, “hàng hiệu giá rẻ” chỉ có tại Hoàng Phúc', 'goi-y-combo-chua-den-15-trieu-“hang-hieu-gia-re”-chi-co-tai-hoang-phuc', '<p>Ho&agrave;ng Ph&uacute;c, thương hiệu với hơn 30 năm trong ng&agrave;nh thời trang với niềm tự h&agrave;o lu&ocirc;n mang đến những trải nghiệm mua sắm tuyệt vời nhất cho kh&aacute;ch h&agrave;ng bằng những sản phẩm h&agrave;ng hiệu gi&aacute; rẻ từ Kappa, Ecko Unltd., Staple, Superga v&agrave; NINU&amp;NICK.</p>', '1666964088goi-y-combo-chua-den-15-trieu-“hang-hieu-gia-re”-chi-co-tai-hoang-phuccb549.jpg', 'hàng hiệu giá rẻ', '<h2><strong>Combo 1.446.000đ: &Aacute;o thun 399.000đ + gi&agrave;y 499.000đ + n&oacute;n 299.000đ</strong></h2>\r\n\r\n<p><strong><a href=\"https://hoang-phuc.com/nam/ao-nam.html?page=1\">&Aacute;o thun nam</a>&nbsp;399.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/untitled_session2162_1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong><a href=\"https://hoang-phuc.com/nam/giay-nam.html?page=1\">Gi&agrave;y nam</a>&nbsp;499.000đ (gi&aacute; gốc 699.000đ)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/is22-26509_ss22_whiteblack-1_1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong>N&oacute;n 249.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/321f68w-001-1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong>T&uacute;i 299.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/371e4sw-a0m-1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<h2><strong>Combo 1.497.000đ: &Aacute;o thun 399.000đ + quần 699.000đ + t&uacute;i 299.000đ&nbsp;</strong></h2>\r\n\r\n<p><strong><a href=\"https://hoang-phuc.com/nu/ao-nu.html?page=1\">&Aacute;o thun nữ</a>&nbsp;399.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/untitled_session2214_1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong>Quần 699.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/untitled_session2233_1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong><a href=\"https://hoang-phuc.com/nu/giay-nu.html?page=1\">Gi&agrave;y nữ</a>&nbsp;399.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/3112xiw-c57-1_1_2-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<h2><strong>Combo 1.497.000đ: &Aacute;o kho&aacute;c 599.000đ + quần jeans 599.000đ + gi&agrave;y 299.000đ</strong></h2>\r\n\r\n<p><strong><a href=\"https://hoang-phuc.com/nam/ao-khoac-nam.html?page=1\">&Aacute;o kho&aacute;c nam</a>&nbsp;599.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/381263w-a0k-1_1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong>Quần jeans 599.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/is22-35005-5_1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong><a href=\"https://hoang-phuc.com/tat-ca-san-pham/giay-thoi-trang.html?page=1&amp;item_category_code%5Bfilter%5D=Gi%C3%A0y%2C7754&amp;product_category_code%5Bfilter%5D=Gi%C3%A0y+%C4%91%E1%BA%BF+cao+su%2C2954\">Gi&agrave;y vải</a>&nbsp;299.000đ (gi&aacute; gốc 499.000đ)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/is22-28503_ss22_black_10-1_1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<h2><strong>Combo 1.445.000đ: &Aacute;o thun 249.000đ + quần shorts 199.000đ + gi&agrave;y 599.000đ + n&oacute;n 249.000đ + vớ 199.000đ</strong></h2>\r\n\r\n<p><strong>&Aacute;o thun 249.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/311539w-a01-1_2-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong>Quần shorts 199.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/31152qw-a01-1_2-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong>Gi&agrave;y 599.000đ (gi&aacute; gốc 799.000đ)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/33133sw-001-1_1_3-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong>N&oacute;n 249.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/321f64w-555-1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong>Set 5 vớ 149.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/381c5hw-a03-1_1_2-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<h2><strong>Combo 1.497.000đ: &Aacute;o thun 499.000đ + gi&agrave;y 499.000đ + t&uacute;i 499.000đ</strong></h2>\r\n\r\n<p><strong>&Aacute;o thun nữ 499.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/untitled_session0577_1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong>Gi&agrave;y 499.000đ (Gi&aacute; gốc 699.000đ)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/untitled_session0529_3-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p><strong>N&oacute;n NINU&amp;NICK 499.000đ</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/nf2_w61006_purple-1_1_1-375x500.webp\" style=\"height:500px; width:375px\" /></p>\r\n\r\n<p>Để mua c&aacute;c combo kể tr&ecirc;n c&aacute;c nhiều sản phẩm quần &aacute;o, gi&agrave;y d&eacute;p kh&aacute;c, bạn h&atilde;y đến trực tiếp tại c&aacute;c cửa h&agrave;ng của Ho&agrave;ng Ph&uacute;c (<a href=\"https://hoang-phuc.com/he-thong-cua-hang-hoang-phuc?\">danh s&aacute;ch cửa h&agrave;ng</a>). B&ecirc;n cạnh đ&oacute;, bạn cũng c&oacute; thể mua h&agrave;ng online th&ocirc;ng qua&nbsp;<a href=\"https://hoang-phuc.com/\">website Ho&agrave;ng Ph&uacute;c</a>&nbsp;để được freeship v&agrave; free đổi trả trong v&ograve;ng 90 ng&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/hoang-phuc-hang-hieu-gia-re-4-667x500.jpg\" style=\"height:500px; width:667px\" /></p>\r\n\r\n<p>Đặc biệt, Ho&agrave;ng Ph&uacute;c c&ograve;n đang c&oacute; chương tr&igrave;nh&nbsp;<a href=\"https://hoang-phuc.com/giay-xin-giam-ngay-200.html\">giảm 200.000đ cho tất cả gi&agrave;y</a>&nbsp;nữa đ&oacute;. Chương tr&igrave;nh &aacute;p dụng đến hết 31/10, tranh thủ mua ngay để tủ gi&agrave;y th&ecirc;m &ldquo;đ&ocirc;ng đ&uacute;c&rdquo; hay outfit th&ecirc;m ho&agrave;n thiện n&egrave;!</p>\r\n\r\n<p><img alt=\"\" src=\"https://hoang-phuc.com/thoi-trang/wp-content/uploads/2022/10/1280x628-1-2-800x393.jpg\" style=\"height:393px; width:800px\" /></p>\r\n\r\n<p>Mua đồ đẹp m&agrave; chẳng sợ đau v&iacute; th&igrave; đến với Ho&agrave;ng Ph&uacute;c ch&iacute;nh l&agrave; một lựa chọn hợp l&yacute; qu&aacute; rồi n&egrave;. Đồ nam, nữ hay trẻ em g&igrave; cũng c&oacute; đủ, cả nh&agrave; đều đẹp khi diện đồ hiệu m&agrave; gi&aacute; lại qu&aacute; ổn &aacute;o lu&ocirc;n mọi người ơi! C&ograve;n chần chờ g&igrave; nữa m&agrave; kh&ocirc;ng gh&eacute; qua để ngh&iacute;a xem sản phẩm đẹp th&ocirc;i n&agrave;o!</p>', 1, 1, NULL, '2022-10-28 13:34:48', '2022-10-28 13:34:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prodstorage`
--

CREATE TABLE `prodstorage` (
  `idStorage` int(11) NOT NULL,
  `idProd` int(11) NOT NULL,
  `idSize` int(11) DEFAULT NULL,
  `colorName` varchar(220) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `colorPath` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `prodstorage`
--

INSERT INTO `prodstorage` (`idStorage`, `idProd`, `idSize`, `colorName`, `colorPath`, `quantity`, `created_at`, `updated_at`) VALUES
(89, 72, 2, 'Đen', '#000000', 18, '2022-10-26 02:44:04', '2022-10-26 10:15:13'),
(90, 72, 3, 'Đen', '#000000', 18, '2022-10-26 02:44:04', '2022-10-26 10:15:13'),
(91, 72, 4, 'Đen', '#000000', 18, '2022-10-26 02:44:04', '2022-10-26 10:15:13'),
(92, 72, 2, 'Trắng', '#ffffff', 18, '2022-10-26 02:44:04', '2022-10-26 05:10:53'),
(93, 72, 3, 'Trắng', '#ffffff', 18, '2022-10-26 02:44:04', '2022-10-26 05:10:53'),
(95, 73, 2, 'Trắng', '#ffffff', 12, '2022-10-26 05:10:32', '2022-10-26 05:16:46'),
(96, 73, 3, 'Trắng', '#ffffff', 12, '2022-10-26 05:10:32', '2022-10-26 05:16:46'),
(97, 73, 4, 'Trắng', '#ffffff', 12, '2022-10-26 05:10:32', '2022-10-26 05:16:46'),
(98, 73, 5, 'Trắng', '#ffffff', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:04'),
(99, 73, 6, 'Trắng', '#ffffff', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:04'),
(100, 73, 7, 'Trắng', '#ffffff', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:04'),
(101, 73, 8, 'Trắng', '#ffffff', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:05'),
(102, 73, 9, 'Trắng', '#ffffff', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:04'),
(103, 73, 10, 'Trắng', '#ffffff', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:05'),
(104, 73, 11, 'Trắng', '#ffffff', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:05'),
(105, 73, 2, 'Đen', '#000000', 12, '2022-10-26 05:10:32', '2022-10-26 10:15:13'),
(106, 73, 3, 'Đen', '#000000', 12, '2022-10-26 05:10:32', '2022-10-26 10:15:13'),
(107, 73, 4, 'Đen', '#000000', 12, '2022-10-26 05:10:32', '2022-10-26 10:15:13'),
(108, 73, 5, 'Đen', '#000000', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:05'),
(109, 73, 6, 'Đen', '#000000', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:05'),
(110, 73, 7, 'Đen', '#000000', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:05'),
(111, 73, 8, 'Đen', '#000000', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:05'),
(112, 73, 9, 'Đen', '#000000', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:04'),
(113, 73, 10, 'Đen', '#000000', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:04'),
(114, 73, 11, 'Đen', '#000000', 0, '2022-10-26 05:10:32', '2022-10-26 10:52:05'),
(115, 74, 2, 'Trắng', 'rgb(250, 250, 250)', 14, '2022-10-26 05:27:34', '2022-10-26 14:44:24'),
(116, 74, 3, 'Trắng', 'rgb(250, 250, 250)', 24, '2022-10-26 05:27:34', '2022-10-26 14:41:03'),
(117, 74, 4, 'Trắng', 'rgb(250, 250, 250)', 14, '2022-10-26 05:27:34', '2022-10-26 14:44:24'),
(119, 74, 6, 'Trắng', 'rgb(250, 250, 250)', 0, '2022-10-26 05:27:34', '2022-10-26 10:43:38'),
(120, 74, 7, 'Trắng', 'rgb(250, 250, 250)', 0, '2022-10-26 05:27:34', '2022-10-26 10:43:38'),
(121, 74, 8, 'Trắng', 'rgb(250, 250, 250)', 0, '2022-10-26 05:27:34', '2022-10-26 10:43:38'),
(122, 74, 9, 'Trắng', 'rgb(250, 250, 250)', 0, '2022-10-26 05:27:34', '2022-10-26 10:43:38'),
(123, 74, 10, 'Trắng', 'rgb(250, 250, 250)', 0, '2022-10-26 05:27:34', '2022-10-26 10:43:38'),
(124, 74, 11, 'Trắng', 'rgb(250, 250, 250)', 0, '2022-10-26 05:27:34', '2022-10-26 10:43:38'),
(125, 74, 12, 'Trắng', 'rgb(250, 250, 250)', 0, '2022-10-26 05:27:34', '2022-10-26 10:43:38'),
(126, 74, 13, 'Trắng', 'rgb(250, 250, 250)', 0, '2022-10-26 05:27:34', '2022-10-26 10:43:38'),
(127, 74, 2, 'Đen', 'rgb(0, 0, 0)', 25, '2022-10-26 05:27:34', '2022-10-26 10:44:10'),
(128, 74, 3, 'Đen', 'rgb(0, 0, 0)', 25, '2022-10-26 05:27:34', '2022-10-26 10:44:10'),
(129, 74, 4, 'Đen', 'rgb(0, 0, 0)', 25, '2022-10-26 05:27:34', '2022-10-26 10:44:10'),
(130, 74, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 05:27:34', '2022-10-26 10:27:42'),
(132, 74, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 05:27:34', '2022-10-26 10:27:42'),
(133, 74, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 05:27:34', '2022-10-26 10:27:42'),
(134, 74, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 05:27:34', '2022-10-26 10:27:42'),
(135, 74, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 05:27:34', '2022-10-26 10:27:42'),
(136, 74, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 05:27:34', '2022-10-26 10:27:42'),
(137, 74, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 05:27:34', '2022-10-26 10:27:42'),
(138, 74, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 05:27:34', '2022-10-26 10:27:42'),
(139, 75, 2, 'Trắng', 'rgb(255, 255, 255)', 16, '2022-10-26 09:46:24', '2022-10-27 13:08:30'),
(140, 75, 3, 'Trắng', 'rgb(255, 255, 255)', 17, '2022-10-26 09:46:24', '2022-10-26 10:28:05'),
(141, 75, 4, 'Trắng', 'rgb(255, 255, 255)', 17, '2022-10-26 09:46:24', '2022-10-26 10:28:05'),
(142, 75, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:46:24', '2022-10-26 10:28:05'),
(143, 75, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:46:24', '2022-10-26 10:28:05'),
(144, 75, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:46:24', '2022-10-26 10:28:05'),
(145, 75, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:46:24', '2022-10-26 10:28:05'),
(146, 75, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:46:24', '2022-10-26 10:28:05'),
(147, 75, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:46:24', '2022-10-26 10:28:05'),
(148, 75, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:46:24', '2022-10-26 10:28:05'),
(149, 75, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:46:24', '2022-10-26 10:28:05'),
(150, 75, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:46:24', '2022-10-26 10:28:05'),
(151, 75, 2, 'Đen', 'rgb(0, 0, 0)', 16, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(152, 75, 3, 'Đen', 'rgb(0, 0, 0)', 16, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(153, 75, 4, 'Đen', 'rgb(0, 0, 0)', 16, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(154, 75, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(155, 75, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(156, 75, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(157, 75, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(158, 75, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(159, 75, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(160, 75, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(161, 75, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(162, 75, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:46:24', '2022-10-26 10:27:42'),
(163, 76, 2, 'Trắng', 'rgb(255, 255, 255)', 18, '2022-10-26 09:52:18', '2022-10-26 14:36:45'),
(164, 76, 3, 'Trắng', 'rgb(255, 255, 255)', 17, '2022-10-26 09:52:18', '2022-10-26 10:28:05'),
(165, 76, 4, 'Trắng', 'rgb(255, 255, 255)', 17, '2022-10-26 09:52:18', '2022-10-26 10:28:05'),
(166, 76, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:52:18', '2022-10-26 10:28:05'),
(167, 76, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:52:18', '2022-10-26 10:28:05'),
(168, 76, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:52:18', '2022-10-26 10:28:05'),
(169, 76, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:52:18', '2022-10-26 10:28:05'),
(170, 76, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:52:18', '2022-10-26 10:28:05'),
(171, 76, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:52:18', '2022-10-26 10:28:05'),
(172, 76, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:52:18', '2022-10-26 10:28:05'),
(173, 76, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:52:18', '2022-10-26 10:28:05'),
(174, 76, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 09:52:18', '2022-10-26 10:28:05'),
(175, 76, 2, 'Đen', 'rgb(0, 0, 0)', 17, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(176, 76, 3, 'Đen', 'rgb(0, 0, 0)', 17, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(177, 76, 4, 'Đen', 'rgb(0, 0, 0)', 17, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(178, 76, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(179, 76, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(180, 76, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(181, 76, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(182, 76, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(183, 76, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(184, 76, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(185, 76, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(186, 76, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 09:52:18', '2022-10-26 10:27:42'),
(187, 77, 2, 'Trắng', 'rgb(255, 255, 255)', 12, '2022-10-26 10:01:25', '2022-10-27 06:24:01'),
(188, 77, 3, 'Trắng', 'rgb(255, 255, 255)', 11, '2022-10-26 10:01:25', '2022-10-27 13:08:51'),
(189, 77, 4, 'Trắng', 'rgb(255, 255, 255)', 12, '2022-10-26 10:01:25', '2022-10-27 06:24:15'),
(190, 77, 5, 'Trắng', 'rgb(255, 255, 255)', 12, '2022-10-26 10:01:25', '2022-10-27 06:24:20'),
(199, 77, 2, 'Đen', 'rgb(0, 0, 0)', 16, '2022-10-26 10:01:25', '2022-10-27 06:03:23'),
(200, 77, 3, 'Đen', 'rgb(0, 0, 0)', 15, '2022-10-26 10:01:25', '2022-10-27 06:02:47'),
(201, 77, 4, 'Đen', 'rgb(0, 0, 0)', 16, '2022-10-26 10:01:25', '2022-10-27 06:03:23'),
(211, 78, 2, 'Trắng', 'rgb(255, 255, 255)', 17, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(212, 78, 3, 'Trắng', 'rgb(255, 255, 255)', 17, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(213, 78, 4, 'Trắng', 'rgb(255, 255, 255)', 17, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(214, 78, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(215, 78, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(216, 78, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(217, 78, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(218, 78, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(219, 78, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(220, 78, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(221, 78, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(222, 78, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:02:54', '2022-10-26 10:28:05'),
(223, 78, 2, 'Đen', 'rgb(0, 0, 0)', 17, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(224, 78, 3, 'Đen', 'rgb(0, 0, 0)', 17, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(225, 78, 4, 'Đen', 'rgb(0, 0, 0)', 17, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(226, 78, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(227, 78, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(228, 78, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(229, 78, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(230, 78, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(231, 78, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(232, 78, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(233, 78, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(234, 78, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:02:54', '2022-10-26 10:27:42'),
(235, 79, 2, 'Trắng', 'rgb(255, 255, 255)', 15, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(236, 79, 3, 'Trắng', 'rgb(255, 255, 255)', 15, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(237, 79, 4, 'Trắng', 'rgb(255, 255, 255)', 15, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(238, 79, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(239, 79, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(240, 79, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(241, 79, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(242, 79, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(243, 79, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(244, 79, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(245, 79, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(246, 79, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:04:56', '2022-10-26 10:28:05'),
(247, 79, 2, 'Đen', 'rgb(0, 0, 0)', 15, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(248, 79, 3, 'Đen', 'rgb(0, 0, 0)', 15, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(249, 79, 4, 'Đen', 'rgb(0, 0, 0)', 15, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(250, 79, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(251, 79, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(252, 79, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(253, 79, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(254, 79, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(255, 79, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(256, 79, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(257, 79, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(258, 79, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:04:56', '2022-10-26 10:27:42'),
(259, 80, 2, 'Đen', 'rgb(0, 0, 0)', 19, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(260, 80, 3, 'Đen', 'rgb(0, 0, 0)', 19, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(261, 80, 4, 'Đen', 'rgb(0, 0, 0)', 19, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(262, 80, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(263, 80, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(264, 80, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(265, 80, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(266, 80, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(267, 80, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(268, 80, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(269, 80, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(270, 80, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:06:52', '2022-10-26 10:27:42'),
(271, 80, 2, 'Trắng', 'rgb(255, 255, 255)', 19, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(272, 80, 3, 'Trắng', 'rgb(255, 255, 255)', 19, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(273, 80, 4, 'Trắng', 'rgb(255, 255, 255)', 19, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(274, 80, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(275, 80, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(276, 80, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(277, 80, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(278, 80, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(279, 80, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(280, 80, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(281, 80, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(282, 80, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:06:52', '2022-10-26 10:28:05'),
(283, 92, 2, 'Trắng', 'rgb(254, 254, 254)', 12, '2022-10-26 10:10:42', '2022-10-27 05:59:40'),
(284, 92, 3, 'Trắng', 'rgb(254, 254, 254)', 0, '2022-10-26 10:10:42', '2022-10-26 10:43:09'),
(285, 92, 4, 'Trắng', 'rgb(254, 254, 254)', 0, '2022-10-26 10:10:42', '2022-10-26 10:43:09'),
(286, 92, 5, 'Trắng', 'rgb(254, 254, 254)', 21, '2022-10-26 10:10:42', '2022-10-27 05:43:30'),
(287, 92, 6, 'Trắng', 'rgb(254, 254, 254)', 12, '2022-10-26 10:10:42', '2022-10-27 05:46:09'),
(288, 92, 7, 'Trắng', 'rgb(254, 254, 254)', 14, '2022-10-26 10:10:42', '2022-10-27 05:46:20'),
(289, 92, 8, 'Trắng', 'rgb(254, 254, 254)', 16, '2022-10-26 10:10:42', '2022-10-27 05:46:30'),
(290, 92, 9, 'Trắng', 'rgb(254, 254, 254)', 0, '2022-10-26 10:10:42', '2022-10-26 10:43:09'),
(291, 92, 10, 'Trắng', 'rgb(254, 254, 254)', 0, '2022-10-26 10:10:42', '2022-10-26 10:43:09'),
(292, 92, 11, 'Trắng', 'rgb(254, 254, 254)', 0, '2022-10-26 10:10:42', '2022-10-26 10:43:09'),
(293, 92, 12, 'Trắng', 'rgb(254, 254, 254)', 0, '2022-10-26 10:10:42', '2022-10-26 10:43:09'),
(294, 92, 13, 'Trắng', 'rgb(254, 254, 254)', 0, '2022-10-26 10:10:42', '2022-10-26 10:43:09'),
(295, 92, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:10:42', '2022-10-26 10:27:42'),
(296, 92, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:10:42', '2022-10-26 10:27:42'),
(297, 92, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:10:42', '2022-10-26 10:27:42'),
(298, 92, 5, 'Đen', 'rgb(0, 0, 0)', 14, '2022-10-26 10:10:42', '2022-10-27 05:47:58'),
(299, 92, 6, 'Đen', 'rgb(0, 0, 0)', 16, '2022-10-26 10:10:42', '2022-10-27 05:48:21'),
(300, 92, 7, 'Đen', 'rgb(0, 0, 0)', 18, '2022-10-26 10:10:42', '2022-10-27 05:48:30'),
(301, 92, 8, 'Đen', 'rgb(0, 0, 0)', 11, '2022-10-26 10:10:42', '2022-10-27 05:49:06'),
(302, 92, 9, 'Đen', 'rgb(0, 0, 0)', 12, '2022-10-26 10:10:42', '2022-10-27 05:47:33'),
(303, 92, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:10:42', '2022-10-26 10:27:42'),
(304, 92, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:10:42', '2022-10-26 10:27:42'),
(305, 92, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:10:42', '2022-10-26 10:27:42'),
(306, 92, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:10:42', '2022-10-26 10:27:42'),
(307, 81, 2, 'Trắng', 'rgb(255, 255, 255)', 19, '2022-10-26 10:16:50', '2022-10-26 10:48:31'),
(308, 81, 3, 'Trắng', 'rgb(255, 255, 255)', 19, '2022-10-26 10:16:50', '2022-10-26 10:48:31'),
(309, 81, 4, 'Trắng', 'rgb(255, 255, 255)', 19, '2022-10-26 10:16:50', '2022-10-26 10:48:31'),
(310, 81, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:16:50', '2022-10-26 10:28:05'),
(311, 81, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:16:50', '2022-10-26 10:28:05'),
(312, 81, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:16:50', '2022-10-26 10:28:05'),
(313, 81, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:16:50', '2022-10-26 10:28:05'),
(314, 81, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:16:50', '2022-10-26 10:28:05'),
(315, 81, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:16:50', '2022-10-26 10:28:05'),
(316, 81, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:16:50', '2022-10-26 10:28:05'),
(317, 81, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:16:50', '2022-10-26 10:28:05'),
(318, 81, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:16:50', '2022-10-26 10:28:05'),
(319, 81, 2, 'Đen', 'rgb(0, 0, 0)', 19, '2022-10-26 10:16:50', '2022-10-26 10:48:31'),
(320, 81, 3, 'Đen', 'rgb(0, 0, 0)', 19, '2022-10-26 10:16:50', '2022-10-26 10:48:31'),
(321, 81, 4, 'Đen', 'rgb(0, 0, 0)', 19, '2022-10-26 10:16:50', '2022-10-26 10:48:31'),
(322, 81, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:16:50', '2022-10-26 10:27:42'),
(323, 81, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:16:50', '2022-10-26 10:27:42'),
(324, 81, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:16:50', '2022-10-26 10:27:42'),
(325, 81, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:16:50', '2022-10-26 10:27:42'),
(326, 81, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:16:50', '2022-10-26 10:27:42'),
(327, 81, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:16:50', '2022-10-26 10:27:42'),
(328, 81, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:16:50', '2022-10-26 10:27:42'),
(329, 81, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:16:50', '2022-10-26 10:27:42'),
(330, 81, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:16:50', '2022-10-26 10:27:42'),
(331, 82, 2, 'Trắng', 'rgb(255, 255, 255)', 27, '2022-10-26 10:17:34', '2022-10-26 10:47:42'),
(332, 82, 3, 'Trắng', 'rgb(255, 255, 255)', 27, '2022-10-26 10:17:34', '2022-10-26 10:47:42'),
(333, 82, 4, 'Trắng', 'rgb(255, 255, 255)', 27, '2022-10-26 10:17:34', '2022-10-26 10:47:42'),
(334, 82, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:17:34', '2022-10-26 10:28:05'),
(335, 82, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:17:34', '2022-10-26 10:28:05'),
(336, 82, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:17:34', '2022-10-26 10:28:05'),
(337, 82, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:17:34', '2022-10-26 10:28:05'),
(338, 82, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:17:34', '2022-10-26 10:28:05'),
(339, 82, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:17:34', '2022-10-26 10:28:05'),
(340, 82, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:17:34', '2022-10-26 10:28:05'),
(341, 82, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:17:34', '2022-10-26 10:28:05'),
(342, 82, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:17:34', '2022-10-26 10:28:05'),
(343, 82, 2, 'Đen', 'rgb(0, 0, 0)', 27, '2022-10-26 10:17:34', '2022-10-26 10:47:42'),
(344, 82, 3, 'Đen', 'rgb(0, 0, 0)', 27, '2022-10-26 10:17:34', '2022-10-26 10:47:42'),
(345, 82, 4, 'Đen', 'rgb(0, 0, 0)', 27, '2022-10-26 10:17:34', '2022-10-26 10:47:42'),
(346, 82, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:17:34', '2022-10-26 10:27:42'),
(347, 82, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:17:34', '2022-10-26 10:27:42'),
(348, 82, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:17:34', '2022-10-26 10:27:42'),
(349, 82, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:17:34', '2022-10-26 10:27:42'),
(350, 82, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:17:34', '2022-10-26 10:27:42'),
(351, 82, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:17:34', '2022-10-26 10:27:42'),
(352, 82, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:17:34', '2022-10-26 10:27:42'),
(353, 82, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:17:34', '2022-10-26 10:27:42'),
(354, 82, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:17:34', '2022-10-26 10:27:42'),
(355, 83, 2, 'Trắng', 'rgb(255, 255, 255)', 18, '2022-10-26 10:18:36', '2022-10-27 05:53:57'),
(356, 83, 3, 'Trắng', 'rgb(255, 255, 255)', 19, '2022-10-26 10:18:36', '2022-10-27 05:54:04'),
(357, 83, 4, 'Trắng', 'rgb(255, 255, 255)', 10, '2022-10-26 10:18:36', '2022-10-27 05:55:12'),
(358, 83, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:18:36', '2022-10-26 10:28:05'),
(359, 83, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:18:36', '2022-10-26 10:28:05'),
(360, 83, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:18:36', '2022-10-26 10:28:05'),
(361, 83, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:18:36', '2022-10-26 10:28:05'),
(362, 83, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:18:36', '2022-10-26 10:28:05'),
(363, 83, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:18:36', '2022-10-26 10:28:05'),
(364, 83, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:18:36', '2022-10-26 10:28:05'),
(365, 83, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:18:36', '2022-10-26 10:28:05'),
(366, 83, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:18:36', '2022-10-26 10:28:05'),
(367, 83, 2, 'Đen', 'rgb(0, 0, 0)', 15, '2022-10-26 10:18:36', '2022-10-27 05:54:28'),
(368, 83, 3, 'Đen', 'rgb(0, 0, 0)', 10, '2022-10-26 10:18:36', '2022-10-27 05:55:12'),
(369, 83, 4, 'Đen', 'rgb(0, 0, 0)', 22, '2022-10-26 10:18:36', '2022-10-26 10:41:41'),
(370, 83, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:18:36', '2022-10-26 10:27:42'),
(371, 83, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:18:36', '2022-10-26 10:27:42'),
(372, 83, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:18:36', '2022-10-26 10:27:42'),
(373, 83, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:18:36', '2022-10-26 10:27:42'),
(374, 83, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:18:36', '2022-10-26 10:27:42'),
(375, 83, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:18:36', '2022-10-26 10:27:42'),
(376, 83, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:18:36', '2022-10-26 10:27:42'),
(377, 83, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:18:36', '2022-10-26 10:27:42'),
(378, 83, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:18:36', '2022-10-26 10:27:42'),
(379, 84, 2, 'Trắng', 'rgb(255, 255, 255)', 29, '2022-10-26 10:19:02', '2022-10-26 10:41:04'),
(380, 84, 3, 'Trắng', 'rgb(255, 255, 255)', 29, '2022-10-26 10:19:02', '2022-10-26 10:41:04'),
(381, 84, 4, 'Trắng', 'rgb(255, 255, 255)', 29, '2022-10-26 10:19:02', '2022-10-26 10:41:04'),
(382, 84, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:02', '2022-10-26 10:28:05'),
(383, 84, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:02', '2022-10-26 10:28:05'),
(384, 84, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:02', '2022-10-26 10:28:05'),
(385, 84, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:02', '2022-10-26 10:28:05'),
(386, 84, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:02', '2022-10-26 10:28:05'),
(387, 84, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:02', '2022-10-26 10:28:05'),
(388, 84, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:02', '2022-10-26 10:28:05'),
(389, 84, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:02', '2022-10-26 10:28:05'),
(390, 84, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:02', '2022-10-26 10:28:05'),
(391, 84, 2, 'Đen', 'rgb(0, 0, 0)', 29, '2022-10-26 10:19:02', '2022-10-26 10:41:04'),
(392, 84, 3, 'Đen', 'rgb(0, 0, 0)', 29, '2022-10-26 10:19:02', '2022-10-26 10:41:04'),
(393, 84, 4, 'Đen', 'rgb(0, 0, 0)', 29, '2022-10-26 10:19:02', '2022-10-26 10:41:04'),
(394, 84, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:02', '2022-10-26 10:27:42'),
(395, 84, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:02', '2022-10-26 10:27:42'),
(396, 84, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:02', '2022-10-26 10:27:42'),
(397, 84, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:02', '2022-10-26 10:27:42'),
(398, 84, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:02', '2022-10-26 10:27:42'),
(399, 84, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:02', '2022-10-26 10:27:42'),
(400, 84, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:02', '2022-10-26 10:27:42'),
(401, 84, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:02', '2022-10-26 10:27:42'),
(402, 84, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:02', '2022-10-26 10:27:42'),
(403, 85, 2, 'Trắng', 'rgb(255, 255, 255)', 18, '2022-10-26 10:19:24', '2022-10-26 10:40:28'),
(404, 85, 3, 'Trắng', 'rgb(255, 255, 255)', 18, '2022-10-26 10:19:24', '2022-10-26 10:40:28'),
(405, 85, 4, 'Trắng', 'rgb(255, 255, 255)', 18, '2022-10-26 10:19:24', '2022-10-26 10:40:28'),
(406, 85, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:24', '2022-10-26 10:28:05'),
(407, 85, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:24', '2022-10-26 10:28:05'),
(408, 85, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:24', '2022-10-26 10:28:05'),
(409, 85, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:24', '2022-10-26 10:28:05'),
(410, 85, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:24', '2022-10-26 10:28:05'),
(411, 85, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:24', '2022-10-26 10:28:05'),
(412, 85, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:24', '2022-10-26 10:28:05'),
(413, 85, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:24', '2022-10-26 10:28:05'),
(414, 85, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:19:24', '2022-10-26 10:28:05'),
(415, 85, 2, 'Đen', 'rgb(0, 0, 0)', 18, '2022-10-26 10:19:24', '2022-10-26 10:40:28'),
(416, 85, 3, 'Đen', 'rgb(0, 0, 0)', 18, '2022-10-26 10:19:24', '2022-10-26 10:40:28'),
(417, 85, 4, 'Đen', 'rgb(0, 0, 0)', 18, '2022-10-26 10:19:24', '2022-10-26 10:40:28'),
(418, 85, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:24', '2022-10-26 10:27:42'),
(419, 85, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:24', '2022-10-26 10:27:42'),
(420, 85, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:24', '2022-10-26 10:27:42'),
(421, 85, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:24', '2022-10-26 10:27:42'),
(422, 85, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:24', '2022-10-26 10:27:42'),
(423, 85, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:24', '2022-10-26 10:27:42'),
(424, 85, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:24', '2022-10-26 10:27:42'),
(425, 85, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:24', '2022-10-26 10:27:42'),
(426, 85, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:19:24', '2022-10-26 10:27:42'),
(427, 86, 2, 'Trắng', 'rgb(254, 254, 254)', 19, '2022-10-26 10:19:46', '2022-10-27 01:11:34'),
(428, 86, 3, 'Trắng', 'rgb(254, 254, 254)', 29, '2022-10-26 10:19:46', '2022-10-26 10:43:09'),
(429, 86, 4, 'Trắng', 'rgb(254, 254, 254)', 29, '2022-10-26 10:19:46', '2022-10-26 10:43:09'),
(430, 86, 5, 'Trắng', 'rgb(254, 254, 254)', 19, '2022-10-26 10:19:46', '2022-10-27 01:11:34'),
(431, 86, 6, 'Trắng', 'rgb(254, 254, 254)', 14, '2022-10-26 10:19:46', '2022-10-27 01:22:33'),
(432, 86, 7, 'Trắng', 'rgb(254, 254, 254)', 12, '2022-10-26 10:19:46', '2022-10-27 01:23:26'),
(433, 86, 8, 'Trắng', 'rgb(254, 254, 254)', 13, '2022-10-26 10:19:46', '2022-10-27 01:23:49'),
(434, 86, 9, 'Trắng', 'rgb(254, 254, 254)', 10, '2022-10-26 10:19:46', '2022-10-27 01:23:40'),
(435, 86, 10, 'Trắng', 'rgb(254, 254, 254)', 11, '2022-10-26 10:19:46', '2022-10-27 12:12:17'),
(439, 86, 2, 'Đen', 'rgb(0, 0, 0)', 29, '2022-10-26 10:19:46', '2022-10-26 10:42:32'),
(440, 86, 3, 'Đen', 'rgb(0, 0, 0)', 29, '2022-10-26 10:19:46', '2022-10-26 10:42:32'),
(441, 86, 4, 'Đen', 'rgb(0, 0, 0)', 29, '2022-10-26 10:19:46', '2022-10-26 10:42:32'),
(451, 87, 2, 'Trắng', 'rgb(249, 249, 249)', 14, '2022-10-26 10:20:09', '2022-10-27 06:32:19'),
(452, 87, 3, 'Trắng', 'rgb(249, 249, 249)', 15, '2022-10-26 10:20:09', '2022-10-27 06:32:12'),
(453, 87, 4, 'Trắng', 'rgb(249, 249, 249)', 15, '2022-10-26 10:20:09', '2022-10-27 06:32:06'),
(454, 87, 5, 'Trắng', 'rgb(249, 249, 249)', 0, '2022-10-26 10:20:09', '2022-10-27 06:00:29'),
(455, 87, 6, 'Trắng', 'rgb(249, 249, 249)', 0, '2022-10-26 10:20:09', '2022-10-27 05:25:15'),
(456, 87, 7, 'Trắng', 'rgb(249, 249, 249)', 0, '2022-10-26 10:20:09', '2022-10-27 05:25:15'),
(457, 87, 8, 'Trắng', 'rgb(249, 249, 249)', 0, '2022-10-26 10:20:09', '2022-10-27 05:25:15'),
(458, 87, 9, 'Trắng', 'rgb(249, 249, 249)', 0, '2022-10-26 10:20:09', '2022-10-27 05:25:15'),
(459, 87, 10, 'Trắng', 'rgb(249, 249, 249)', 0, '2022-10-26 10:20:09', '2022-10-27 05:25:15'),
(460, 87, 11, 'Trắng', 'rgb(249, 249, 249)', 0, '2022-10-26 10:20:09', '2022-10-27 05:25:15'),
(461, 87, 12, 'Trắng', 'rgb(249, 249, 249)', 0, '2022-10-26 10:20:09', '2022-10-27 05:25:15'),
(462, 87, 13, 'Trắng', 'rgb(249, 249, 249)', 0, '2022-10-26 10:20:09', '2022-10-27 05:25:15'),
(463, 87, 2, 'Đen', 'rgb(0, 0, 0)', 14, '2022-10-26 10:20:09', '2022-10-27 06:31:39'),
(464, 87, 3, 'Đen', 'rgb(0, 0, 0)', 15, '2022-10-26 10:20:09', '2022-10-27 06:31:46'),
(465, 87, 4, 'Đen', 'rgb(0, 0, 0)', 17, '2022-10-26 10:20:09', '2022-10-27 06:31:53'),
(466, 87, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:09', '2022-10-26 10:27:42'),
(467, 87, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:09', '2022-10-26 10:27:42'),
(468, 87, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:09', '2022-10-26 10:27:42'),
(469, 87, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:09', '2022-10-26 10:27:42'),
(470, 87, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:09', '2022-10-26 10:27:42'),
(471, 87, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:09', '2022-10-26 10:27:42'),
(472, 87, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:09', '2022-10-26 10:27:42'),
(473, 87, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:09', '2022-10-26 10:27:42'),
(474, 87, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:09', '2022-10-26 10:27:42'),
(475, 88, 2, 'Trắng', 'rgb(255, 255, 255)', 24, '2022-10-26 10:20:31', '2022-10-26 10:44:55'),
(476, 88, 3, 'Trắng', 'rgb(255, 255, 255)', 24, '2022-10-26 10:20:31', '2022-10-26 10:44:55'),
(477, 88, 4, 'Trắng', 'rgb(255, 255, 255)', 24, '2022-10-26 10:20:31', '2022-10-26 10:44:55'),
(478, 88, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:20:31', '2022-10-26 10:28:05'),
(479, 88, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:20:31', '2022-10-26 10:28:05'),
(480, 88, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:20:31', '2022-10-26 10:28:05'),
(481, 88, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:20:31', '2022-10-26 10:28:05'),
(482, 88, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:20:31', '2022-10-26 10:28:05'),
(483, 88, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:20:31', '2022-10-26 10:28:05'),
(484, 88, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:20:31', '2022-10-26 10:28:05'),
(485, 88, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:20:31', '2022-10-26 10:28:05'),
(486, 88, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:20:31', '2022-10-26 10:28:05'),
(487, 88, 2, 'Đen', 'rgb(0, 0, 0)', 24, '2022-10-26 10:20:31', '2022-10-26 10:44:55'),
(488, 88, 3, 'Đen', 'rgb(0, 0, 0)', 24, '2022-10-26 10:20:31', '2022-10-26 10:44:55'),
(489, 88, 4, 'Đen', 'rgb(0, 0, 0)', 24, '2022-10-26 10:20:31', '2022-10-26 10:44:55'),
(490, 88, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:31', '2022-10-26 10:27:42'),
(491, 88, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:31', '2022-10-26 10:27:42'),
(492, 88, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:31', '2022-10-26 10:27:42'),
(493, 88, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:31', '2022-10-26 10:27:42'),
(494, 88, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:31', '2022-10-26 10:27:42'),
(495, 88, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:31', '2022-10-26 10:27:42'),
(496, 88, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:31', '2022-10-26 10:27:42'),
(497, 88, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:31', '2022-10-26 10:27:42'),
(498, 88, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:20:31', '2022-10-26 10:27:42'),
(499, 89, 2, 'Trắng', 'rgb(251, 251, 251)', 21, '2022-10-26 10:21:02', '2022-10-26 10:45:49'),
(500, 89, 3, 'Trắng', 'rgb(251, 251, 251)', 21, '2022-10-26 10:21:02', '2022-10-26 10:45:49'),
(501, 89, 4, 'Trắng', 'rgb(251, 251, 251)', 21, '2022-10-26 10:21:02', '2022-10-26 10:45:49'),
(502, 89, 5, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:21:02', '2022-10-26 10:35:15'),
(503, 89, 6, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:21:02', '2022-10-26 10:35:15'),
(504, 89, 7, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:21:02', '2022-10-26 10:35:15'),
(505, 89, 8, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:21:02', '2022-10-26 10:35:15'),
(506, 89, 9, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:21:02', '2022-10-26 10:35:15'),
(507, 89, 10, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:21:02', '2022-10-26 10:35:15'),
(508, 89, 11, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:21:02', '2022-10-26 10:35:15'),
(509, 89, 12, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:21:02', '2022-10-26 10:35:15'),
(510, 89, 13, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:21:02', '2022-10-26 10:35:15'),
(511, 89, 2, 'Đen', 'rgb(0, 0, 0)', 21, '2022-10-26 10:21:02', '2022-10-26 10:45:49'),
(512, 89, 3, 'Đen', 'rgb(0, 0, 0)', 21, '2022-10-26 10:21:02', '2022-10-26 10:45:49'),
(513, 89, 4, 'Đen', 'rgb(0, 0, 0)', 21, '2022-10-26 10:21:02', '2022-10-26 10:45:49'),
(514, 89, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:02', '2022-10-26 10:27:42'),
(515, 89, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:02', '2022-10-26 10:27:42'),
(516, 89, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:02', '2022-10-26 10:27:42'),
(517, 89, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:02', '2022-10-26 10:27:42'),
(518, 89, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:02', '2022-10-26 10:27:42'),
(519, 89, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:02', '2022-10-26 10:27:42'),
(520, 89, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:02', '2022-10-26 10:27:42'),
(521, 89, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:02', '2022-10-26 10:27:42'),
(522, 89, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:02', '2022-10-26 10:27:42'),
(523, 90, 2, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:22', '2022-10-26 10:28:05'),
(524, 90, 3, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:22', '2022-10-26 10:28:05'),
(525, 90, 4, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:22', '2022-10-26 10:28:05'),
(526, 90, 5, 'Trắng', 'rgb(255, 255, 255)', 23, '2022-10-26 10:21:22', '2022-10-26 10:46:57'),
(527, 90, 6, 'Trắng', 'rgb(255, 255, 255)', 23, '2022-10-26 10:21:22', '2022-10-26 10:46:58'),
(528, 90, 7, 'Trắng', 'rgb(255, 255, 255)', 23, '2022-10-26 10:21:22', '2022-10-26 10:46:57'),
(529, 90, 8, 'Trắng', 'rgb(255, 255, 255)', 23, '2022-10-26 10:21:22', '2022-10-26 10:46:57'),
(530, 90, 9, 'Trắng', 'rgb(255, 255, 255)', 23, '2022-10-26 10:21:22', '2022-10-26 10:46:57'),
(531, 90, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:22', '2022-10-26 10:28:05'),
(532, 90, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:22', '2022-10-26 10:28:05'),
(533, 90, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:22', '2022-10-26 10:28:05'),
(534, 90, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:22', '2022-10-26 10:28:05'),
(535, 90, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:22', '2022-10-26 10:27:42'),
(536, 90, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:22', '2022-10-26 10:27:42'),
(537, 90, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:22', '2022-10-26 10:27:42'),
(538, 90, 5, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:21:22', '2022-10-26 10:46:57'),
(539, 90, 6, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:21:22', '2022-10-26 10:46:58'),
(540, 90, 7, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:21:22', '2022-10-26 10:46:57'),
(541, 90, 8, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:21:22', '2022-10-26 10:46:58'),
(542, 90, 9, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:21:22', '2022-10-26 10:46:58'),
(543, 90, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:22', '2022-10-26 10:27:42'),
(544, 90, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:22', '2022-10-26 10:27:42'),
(545, 90, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:22', '2022-10-26 10:27:42'),
(546, 90, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:22', '2022-10-26 10:27:42'),
(547, 91, 2, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:44', '2022-10-26 10:28:05'),
(548, 91, 3, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:44', '2022-10-26 10:28:05'),
(549, 91, 4, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:44', '2022-10-26 10:28:05'),
(550, 91, 5, 'Trắng', 'rgb(255, 255, 255)', 13, '2022-10-26 10:21:44', '2022-10-26 10:33:59'),
(551, 91, 6, 'Trắng', 'rgb(255, 255, 255)', 13, '2022-10-26 10:21:44', '2022-10-26 10:33:59'),
(552, 91, 7, 'Trắng', 'rgb(255, 255, 255)', 13, '2022-10-26 10:21:44', '2022-10-26 10:33:59'),
(553, 91, 8, 'Trắng', 'rgb(255, 255, 255)', 13, '2022-10-26 10:21:44', '2022-10-26 10:33:59'),
(554, 91, 9, 'Trắng', 'rgb(255, 255, 255)', 13, '2022-10-26 10:21:44', '2022-10-26 10:33:59'),
(555, 91, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:44', '2022-10-26 10:28:05'),
(556, 91, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:44', '2022-10-26 10:28:05'),
(557, 91, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:44', '2022-10-26 10:28:05'),
(558, 91, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:21:44', '2022-10-26 10:28:05'),
(559, 91, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:44', '2022-10-26 10:27:42'),
(560, 91, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:44', '2022-10-26 10:27:42'),
(561, 91, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:44', '2022-10-26 10:27:42'),
(562, 91, 5, 'Đen', 'rgb(0, 0, 0)', 13, '2022-10-26 10:21:44', '2022-10-26 10:33:59'),
(563, 91, 6, 'Đen', 'rgb(0, 0, 0)', 13, '2022-10-26 10:21:44', '2022-10-26 10:33:59'),
(564, 91, 7, 'Đen', 'rgb(0, 0, 0)', 13, '2022-10-26 10:21:44', '2022-10-26 10:33:59'),
(565, 91, 8, 'Đen', 'rgb(0, 0, 0)', 13, '2022-10-26 10:21:44', '2022-10-26 10:33:59'),
(566, 91, 9, 'Đen', 'rgb(0, 0, 0)', 13, '2022-10-26 10:21:44', '2022-10-26 10:33:59'),
(567, 91, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:44', '2022-10-26 10:27:42'),
(568, 91, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:44', '2022-10-26 10:27:42'),
(569, 91, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:44', '2022-10-26 10:27:42'),
(570, 91, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:21:44', '2022-10-26 10:27:42'),
(571, 93, 2, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:22:08', '2022-10-26 10:28:05'),
(572, 93, 3, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:22:08', '2022-10-26 10:28:05'),
(573, 93, 4, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:22:08', '2022-10-26 10:28:05'),
(574, 93, 5, 'Trắng', 'rgb(255, 255, 255)', 25, '2022-10-26 10:22:08', '2022-10-26 10:39:37'),
(575, 93, 6, 'Trắng', 'rgb(255, 255, 255)', 25, '2022-10-26 10:22:08', '2022-10-26 10:39:37'),
(576, 93, 7, 'Trắng', 'rgb(255, 255, 255)', 25, '2022-10-26 10:22:08', '2022-10-26 10:39:37'),
(577, 93, 8, 'Trắng', 'rgb(255, 255, 255)', 25, '2022-10-26 10:22:08', '2022-10-26 10:39:37'),
(578, 93, 9, 'Trắng', 'rgb(255, 255, 255)', 25, '2022-10-26 10:22:08', '2022-10-26 10:39:37'),
(579, 93, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:22:08', '2022-10-26 10:28:05'),
(580, 93, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:22:08', '2022-10-26 10:28:05'),
(581, 93, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:22:08', '2022-10-26 10:28:05'),
(582, 93, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:22:08', '2022-10-26 10:28:05'),
(583, 93, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:08', '2022-10-26 10:27:42'),
(584, 93, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:08', '2022-10-26 10:27:42'),
(585, 93, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:08', '2022-10-26 10:27:42'),
(586, 93, 5, 'Đen', 'rgb(0, 0, 0)', 25, '2022-10-26 10:22:08', '2022-10-26 10:39:37'),
(587, 93, 6, 'Đen', 'rgb(0, 0, 0)', 25, '2022-10-26 10:22:08', '2022-10-26 10:39:37'),
(588, 93, 7, 'Đen', 'rgb(0, 0, 0)', 25, '2022-10-26 10:22:08', '2022-10-26 10:39:37'),
(589, 93, 8, 'Đen', 'rgb(0, 0, 0)', 25, '2022-10-26 10:22:08', '2022-10-26 10:39:37'),
(590, 93, 9, 'Đen', 'rgb(0, 0, 0)', 25, '2022-10-26 10:22:08', '2022-10-26 10:39:37'),
(591, 93, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:08', '2022-10-26 10:27:42'),
(592, 93, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:08', '2022-10-26 10:27:42'),
(593, 93, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:08', '2022-10-26 10:27:42'),
(594, 93, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:08', '2022-10-26 10:27:42'),
(595, 94, 2, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:22:32', '2022-10-26 10:35:15'),
(596, 94, 3, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:22:32', '2022-10-26 10:35:15'),
(597, 94, 4, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:22:32', '2022-10-26 10:35:15'),
(598, 94, 5, 'Trắng', 'rgb(251, 251, 251)', 23, '2022-10-26 10:22:32', '2022-10-26 10:38:26'),
(599, 94, 6, 'Trắng', 'rgb(251, 251, 251)', 23, '2022-10-26 10:22:32', '2022-10-26 10:38:26'),
(600, 94, 7, 'Trắng', 'rgb(251, 251, 251)', 23, '2022-10-26 10:22:32', '2022-10-26 10:38:26'),
(601, 94, 8, 'Trắng', 'rgb(251, 251, 251)', 23, '2022-10-26 10:22:32', '2022-10-26 10:38:26'),
(602, 94, 9, 'Trắng', 'rgb(251, 251, 251)', 23, '2022-10-26 10:22:32', '2022-10-26 10:38:26'),
(603, 94, 10, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:22:32', '2022-10-26 10:35:15'),
(604, 94, 11, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:22:32', '2022-10-26 10:35:15'),
(605, 94, 12, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:22:32', '2022-10-26 10:35:15'),
(606, 94, 13, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:22:32', '2022-10-26 10:35:15'),
(607, 94, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:32', '2022-10-26 10:27:42'),
(608, 94, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:32', '2022-10-26 10:27:42'),
(609, 94, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:32', '2022-10-26 10:27:42'),
(610, 94, 5, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:22:32', '2022-10-26 10:38:26'),
(611, 94, 6, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:22:32', '2022-10-26 10:38:26'),
(612, 94, 7, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:22:32', '2022-10-26 10:38:26'),
(613, 94, 8, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:22:32', '2022-10-26 10:38:26'),
(614, 94, 9, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:22:32', '2022-10-26 10:38:26'),
(615, 94, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:32', '2022-10-26 10:27:42'),
(616, 94, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:32', '2022-10-26 10:27:42'),
(617, 94, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:32', '2022-10-26 10:27:42'),
(618, 94, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:22:32', '2022-10-26 10:27:42'),
(619, 95, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:23:13', '2022-10-26 10:27:42'),
(620, 95, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:23:13', '2022-10-26 10:27:42'),
(621, 95, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:23:13', '2022-10-26 10:27:42'),
(622, 95, 5, 'Đen', 'rgb(0, 0, 0)', 11, '2022-10-26 10:23:13', '2022-10-26 10:37:37'),
(623, 95, 6, 'Đen', 'rgb(0, 0, 0)', 11, '2022-10-26 10:23:13', '2022-10-26 10:37:37'),
(624, 95, 7, 'Đen', 'rgb(0, 0, 0)', 11, '2022-10-26 10:23:13', '2022-10-26 10:37:37'),
(625, 95, 8, 'Đen', 'rgb(0, 0, 0)', 11, '2022-10-26 10:23:13', '2022-10-26 10:37:37'),
(626, 95, 9, 'Đen', 'rgb(0, 0, 0)', 11, '2022-10-26 10:23:13', '2022-10-26 10:37:37'),
(627, 95, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:23:13', '2022-10-26 10:27:42'),
(628, 95, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:23:13', '2022-10-26 10:27:42'),
(629, 95, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:23:13', '2022-10-26 10:27:42'),
(630, 95, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:23:13', '2022-10-26 10:27:42'),
(631, 95, 2, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:23:13', '2022-10-26 10:28:05'),
(632, 95, 3, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:23:13', '2022-10-26 10:28:05'),
(633, 95, 4, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:23:13', '2022-10-26 10:28:05'),
(634, 95, 5, 'Trắng', 'rgb(255, 255, 255)', 11, '2022-10-26 10:23:13', '2022-10-26 10:37:37'),
(635, 95, 6, 'Trắng', 'rgb(255, 255, 255)', 11, '2022-10-26 10:23:13', '2022-10-26 10:37:37'),
(636, 95, 7, 'Trắng', 'rgb(255, 255, 255)', 11, '2022-10-26 10:23:13', '2022-10-26 10:37:37'),
(637, 95, 8, 'Trắng', 'rgb(255, 255, 255)', 11, '2022-10-26 10:23:13', '2022-10-26 10:37:37'),
(638, 95, 9, 'Trắng', 'rgb(255, 255, 255)', 11, '2022-10-26 10:23:13', '2022-10-26 10:37:37'),
(639, 95, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:23:13', '2022-10-26 10:28:05'),
(640, 95, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:23:13', '2022-10-26 10:28:05'),
(641, 95, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:23:13', '2022-10-26 10:28:05'),
(642, 95, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:23:13', '2022-10-26 10:28:05'),
(643, 96, 2, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:15'),
(644, 96, 3, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:15'),
(645, 96, 4, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:15'),
(646, 96, 5, 'Trắng', 'rgb(251, 251, 251)', 24, '2022-10-26 10:23:38', '2022-10-26 10:36:23'),
(647, 96, 6, 'Trắng', 'rgb(251, 251, 251)', 24, '2022-10-26 10:23:38', '2022-10-26 10:36:23'),
(648, 96, 7, 'Trắng', 'rgb(251, 251, 251)', 24, '2022-10-26 10:23:38', '2022-10-26 10:36:23'),
(649, 96, 8, 'Trắng', 'rgb(251, 251, 251)', 24, '2022-10-26 10:23:38', '2022-10-26 10:36:23'),
(650, 96, 9, 'Trắng', 'rgb(251, 251, 251)', 24, '2022-10-26 10:23:38', '2022-10-26 10:36:23'),
(651, 96, 10, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:15'),
(652, 96, 11, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:15'),
(653, 96, 12, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:15'),
(654, 96, 13, 'Trắng', 'rgb(251, 251, 251)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:15'),
(655, 96, 2, 'Đen', 'rgb(7, 7, 7)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:32'),
(656, 96, 3, 'Đen', 'rgb(7, 7, 7)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:32'),
(657, 96, 4, 'Đen', 'rgb(7, 7, 7)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:32'),
(658, 96, 5, 'Đen', 'rgb(7, 7, 7)', 24, '2022-10-26 10:23:38', '2022-10-26 10:36:23'),
(659, 96, 6, 'Đen', 'rgb(7, 7, 7)', 24, '2022-10-26 10:23:38', '2022-10-26 10:36:23'),
(660, 96, 7, 'Đen', 'rgb(7, 7, 7)', 24, '2022-10-26 10:23:38', '2022-10-26 10:36:23'),
(661, 96, 8, 'Đen', 'rgb(7, 7, 7)', 24, '2022-10-26 10:23:38', '2022-10-26 10:36:23'),
(662, 96, 9, 'Đen', 'rgb(7, 7, 7)', 24, '2022-10-26 10:23:38', '2022-10-26 10:36:23'),
(663, 96, 10, 'Đen', 'rgb(7, 7, 7)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:32'),
(664, 96, 11, 'Đen', 'rgb(7, 7, 7)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:32'),
(665, 96, 12, 'Đen', 'rgb(7, 7, 7)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:32'),
(666, 96, 13, 'Đen', 'rgb(7, 7, 7)', 0, '2022-10-26 10:23:38', '2022-10-26 10:35:32'),
(667, 97, 2, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:01', '2022-10-26 10:28:05'),
(668, 97, 3, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:01', '2022-10-26 10:28:05'),
(669, 97, 4, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:01', '2022-10-26 10:28:05'),
(670, 97, 5, 'Trắng', 'rgb(255, 255, 255)', 15, '2022-10-26 10:24:01', '2022-10-26 10:34:55'),
(671, 97, 6, 'Trắng', 'rgb(255, 255, 255)', 15, '2022-10-26 10:24:01', '2022-10-26 10:34:55'),
(672, 97, 7, 'Trắng', 'rgb(255, 255, 255)', 15, '2022-10-26 10:24:01', '2022-10-26 10:34:55'),
(673, 97, 8, 'Trắng', 'rgb(255, 255, 255)', 15, '2022-10-26 10:24:01', '2022-10-26 10:34:55'),
(674, 97, 9, 'Trắng', 'rgb(255, 255, 255)', 15, '2022-10-26 10:24:01', '2022-10-26 10:34:55'),
(675, 97, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:01', '2022-10-26 10:28:05'),
(676, 97, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:01', '2022-10-26 10:28:05'),
(677, 97, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:01', '2022-10-26 10:28:05'),
(678, 97, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:01', '2022-10-26 10:28:05'),
(679, 97, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:01', '2022-10-26 10:27:42'),
(680, 97, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:01', '2022-10-26 10:27:42'),
(681, 97, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:01', '2022-10-26 10:27:42'),
(682, 97, 5, 'Đen', 'rgb(0, 0, 0)', 15, '2022-10-26 10:24:01', '2022-10-26 10:34:55'),
(683, 97, 6, 'Đen', 'rgb(0, 0, 0)', 15, '2022-10-26 10:24:01', '2022-10-26 10:34:55'),
(684, 97, 7, 'Đen', 'rgb(0, 0, 0)', 15, '2022-10-26 10:24:01', '2022-10-26 10:34:55');
INSERT INTO `prodstorage` (`idStorage`, `idProd`, `idSize`, `colorName`, `colorPath`, `quantity`, `created_at`, `updated_at`) VALUES
(685, 97, 8, 'Đen', 'rgb(0, 0, 0)', 15, '2022-10-26 10:24:01', '2022-10-26 10:34:55'),
(686, 97, 9, 'Đen', 'rgb(0, 0, 0)', 15, '2022-10-26 10:24:01', '2022-10-26 10:34:55'),
(687, 97, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:01', '2022-10-26 10:27:42'),
(688, 97, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:01', '2022-10-26 10:27:42'),
(689, 97, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:01', '2022-10-26 10:27:42'),
(690, 97, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:01', '2022-10-26 10:27:42'),
(691, 98, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:31', '2022-10-26 10:27:42'),
(692, 98, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:31', '2022-10-26 10:27:42'),
(693, 98, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:31', '2022-10-26 10:27:42'),
(694, 98, 5, 'Đen', 'rgb(0, 0, 0)', 17, '2022-10-26 10:24:31', '2022-10-27 05:50:00'),
(695, 98, 6, 'Đen', 'rgb(0, 0, 0)', 18, '2022-10-26 10:24:31', '2022-10-27 05:50:06'),
(696, 98, 7, 'Đen', 'rgb(0, 0, 0)', 19, '2022-10-26 10:24:31', '2022-10-27 05:50:14'),
(697, 98, 8, 'Đen', 'rgb(0, 0, 0)', 16, '2022-10-26 10:24:31', '2022-10-27 05:50:20'),
(698, 98, 9, 'Đen', 'rgb(0, 0, 0)', 12, '2022-10-26 10:24:31', '2022-10-27 05:51:15'),
(699, 98, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:31', '2022-10-26 10:27:42'),
(700, 98, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:31', '2022-10-26 10:27:42'),
(701, 98, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:31', '2022-10-26 10:27:42'),
(702, 98, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:24:31', '2022-10-26 10:27:42'),
(703, 98, 2, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:31', '2022-10-26 10:28:05'),
(704, 98, 3, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:31', '2022-10-26 10:28:05'),
(705, 98, 4, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:31', '2022-10-26 10:28:05'),
(706, 98, 5, 'Trắng', 'rgb(255, 255, 255)', 15, '2022-10-26 10:24:31', '2022-10-27 05:51:42'),
(707, 98, 6, 'Trắng', 'rgb(255, 255, 255)', 18, '2022-10-26 10:24:31', '2022-10-27 05:51:48'),
(708, 98, 7, 'Trắng', 'rgb(255, 255, 255)', 21, '2022-10-26 10:24:31', '2022-10-27 05:51:55'),
(709, 98, 8, 'Trắng', 'rgb(255, 255, 255)', 23, '2022-10-26 10:24:31', '2022-10-27 05:52:01'),
(710, 98, 9, 'Trắng', 'rgb(255, 255, 255)', 17, '2022-10-26 10:24:31', '2022-10-27 05:52:09'),
(711, 98, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:31', '2022-10-26 10:28:05'),
(712, 98, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:31', '2022-10-26 10:28:05'),
(713, 98, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:31', '2022-10-26 10:28:05'),
(714, 98, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:24:31', '2022-10-26 10:28:05'),
(715, 99, 2, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:09', '2022-10-26 10:28:05'),
(716, 99, 3, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:09', '2022-10-26 10:28:05'),
(717, 99, 4, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:09', '2022-10-26 10:28:05'),
(718, 99, 5, 'Trắng', 'rgb(255, 255, 255)', 14, '2022-10-26 10:25:09', '2022-10-26 10:32:50'),
(719, 99, 6, 'Trắng', 'rgb(255, 255, 255)', 14, '2022-10-26 10:25:09', '2022-10-26 10:32:50'),
(720, 99, 7, 'Trắng', 'rgb(255, 255, 255)', 14, '2022-10-26 10:25:09', '2022-10-26 10:32:50'),
(721, 99, 8, 'Trắng', 'rgb(255, 255, 255)', 14, '2022-10-26 10:25:09', '2022-10-26 10:32:50'),
(722, 99, 9, 'Trắng', 'rgb(255, 255, 255)', 14, '2022-10-26 10:25:09', '2022-10-26 10:32:50'),
(723, 99, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:09', '2022-10-26 10:28:05'),
(724, 99, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:09', '2022-10-26 10:28:05'),
(725, 99, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:09', '2022-10-26 10:28:05'),
(726, 99, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:09', '2022-10-26 10:28:05'),
(727, 99, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:09', '2022-10-26 10:27:42'),
(728, 99, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:09', '2022-10-26 10:27:42'),
(729, 99, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:09', '2022-10-26 10:27:42'),
(730, 99, 5, 'Đen', 'rgb(0, 0, 0)', 14, '2022-10-26 10:25:09', '2022-10-26 10:32:50'),
(731, 99, 6, 'Đen', 'rgb(0, 0, 0)', 14, '2022-10-26 10:25:09', '2022-10-26 10:32:50'),
(732, 99, 7, 'Đen', 'rgb(0, 0, 0)', 14, '2022-10-26 10:25:09', '2022-10-26 10:32:50'),
(733, 99, 8, 'Đen', 'rgb(0, 0, 0)', 14, '2022-10-26 10:25:09', '2022-10-26 10:32:50'),
(734, 99, 9, 'Đen', 'rgb(0, 0, 0)', 14, '2022-10-26 10:25:09', '2022-10-26 10:32:50'),
(735, 99, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:09', '2022-10-26 10:27:42'),
(736, 99, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:09', '2022-10-26 10:27:42'),
(737, 99, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:09', '2022-10-26 10:27:42'),
(738, 99, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:09', '2022-10-26 10:27:42'),
(739, 100, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:38', '2022-10-26 10:27:42'),
(740, 100, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:38', '2022-10-26 10:27:42'),
(741, 100, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:38', '2022-10-26 10:27:42'),
(742, 100, 5, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:25:38', '2022-10-26 10:31:39'),
(743, 100, 6, 'Đen', 'rgb(0, 0, 0)', 12, '2022-10-26 10:25:38', '2022-10-27 05:44:53'),
(744, 100, 7, 'Đen', 'rgb(0, 0, 0)', 14, '2022-10-26 10:25:38', '2022-10-27 05:45:03'),
(745, 100, 8, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:25:38', '2022-10-26 10:31:39'),
(746, 100, 9, 'Đen', 'rgb(0, 0, 0)', 23, '2022-10-26 10:25:38', '2022-10-26 10:31:39'),
(747, 100, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:38', '2022-10-26 10:27:42'),
(748, 100, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:38', '2022-10-26 10:27:42'),
(749, 100, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:38', '2022-10-26 10:27:42'),
(750, 100, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:25:38', '2022-10-26 10:27:42'),
(751, 100, 2, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:38', '2022-10-26 10:28:05'),
(752, 100, 3, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:38', '2022-10-26 10:28:05'),
(753, 100, 4, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:38', '2022-10-26 10:28:05'),
(754, 100, 5, 'Trắng', 'rgb(255, 255, 255)', 23, '2022-10-26 10:25:38', '2022-10-26 10:31:39'),
(755, 100, 6, 'Trắng', 'rgb(255, 255, 255)', 23, '2022-10-26 10:25:38', '2022-10-26 10:31:39'),
(756, 100, 7, 'Trắng', 'rgb(255, 255, 255)', 23, '2022-10-26 10:25:38', '2022-10-26 10:31:39'),
(757, 100, 8, 'Trắng', 'rgb(255, 255, 255)', 23, '2022-10-26 10:25:38', '2022-10-26 10:31:39'),
(758, 100, 9, 'Trắng', 'rgb(255, 255, 255)', 23, '2022-10-26 10:25:38', '2022-10-26 10:31:39'),
(759, 100, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:38', '2022-10-26 10:28:05'),
(760, 100, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:38', '2022-10-26 10:28:05'),
(761, 100, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:38', '2022-10-26 10:28:05'),
(762, 100, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:25:38', '2022-10-26 10:28:05'),
(763, 101, 2, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:03', '2022-10-26 10:28:05'),
(764, 101, 3, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:03', '2022-10-26 10:28:05'),
(765, 101, 4, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:03', '2022-10-26 10:28:05'),
(766, 101, 5, 'Trắng', 'rgb(255, 255, 255)', 21, '2022-10-26 10:26:03', '2022-10-26 10:30:14'),
(767, 101, 6, 'Trắng', 'rgb(255, 255, 255)', 21, '2022-10-26 10:26:03', '2022-10-26 10:30:15'),
(768, 101, 7, 'Trắng', 'rgb(255, 255, 255)', 21, '2022-10-26 10:26:03', '2022-10-26 10:30:14'),
(769, 101, 8, 'Trắng', 'rgb(255, 255, 255)', 21, '2022-10-26 10:26:03', '2022-10-26 10:30:15'),
(770, 101, 9, 'Trắng', 'rgb(255, 255, 255)', 21, '2022-10-26 10:26:03', '2022-10-26 10:30:15'),
(771, 101, 10, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:03', '2022-10-26 10:28:05'),
(772, 101, 11, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:03', '2022-10-26 10:28:05'),
(773, 101, 12, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:03', '2022-10-26 10:28:05'),
(774, 101, 13, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:03', '2022-10-26 10:28:05'),
(775, 101, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:03', '2022-10-26 10:27:42'),
(776, 101, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:03', '2022-10-26 10:27:42'),
(777, 101, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:03', '2022-10-26 10:27:42'),
(778, 101, 5, 'Đen', 'rgb(0, 0, 0)', 21, '2022-10-26 10:26:03', '2022-10-26 10:30:14'),
(779, 101, 6, 'Đen', 'rgb(0, 0, 0)', 21, '2022-10-26 10:26:03', '2022-10-26 10:30:14'),
(780, 101, 7, 'Đen', 'rgb(0, 0, 0)', 21, '2022-10-26 10:26:03', '2022-10-26 10:30:14'),
(781, 101, 8, 'Đen', 'rgb(0, 0, 0)', 21, '2022-10-26 10:26:03', '2022-10-26 10:30:14'),
(782, 101, 9, 'Đen', 'rgb(0, 0, 0)', 21, '2022-10-26 10:26:03', '2022-10-26 10:30:15'),
(783, 101, 10, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:03', '2022-10-26 10:27:42'),
(784, 101, 11, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:03', '2022-10-26 10:27:42'),
(785, 101, 12, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:03', '2022-10-26 10:27:42'),
(786, 101, 13, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:03', '2022-10-26 10:27:42'),
(787, 102, 2, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:24', '2022-10-26 10:28:05'),
(788, 102, 3, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:24', '2022-10-26 10:28:05'),
(789, 102, 4, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:24', '2022-10-26 10:28:05'),
(790, 102, 5, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:24', '2022-10-26 10:28:05'),
(791, 102, 6, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:24', '2022-10-26 10:28:05'),
(792, 102, 7, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:24', '2022-10-26 10:28:05'),
(793, 102, 8, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:24', '2022-10-26 10:28:05'),
(794, 102, 9, 'Trắng', 'rgb(255, 255, 255)', 0, '2022-10-26 10:26:24', '2022-10-26 10:28:05'),
(795, 102, 10, 'Trắng', 'rgb(255, 255, 255)', 16, '2022-10-26 10:26:24', '2022-10-26 10:28:56'),
(796, 102, 11, 'Trắng', 'rgb(255, 255, 255)', 16, '2022-10-26 10:26:24', '2022-10-26 10:28:56'),
(797, 102, 12, 'Trắng', 'rgb(255, 255, 255)', 16, '2022-10-26 10:26:24', '2022-10-26 10:28:56'),
(798, 102, 13, 'Trắng', 'rgb(255, 255, 255)', 16, '2022-10-26 10:26:24', '2022-10-26 10:28:56'),
(799, 102, 2, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:24', '2022-10-26 10:27:42'),
(800, 102, 3, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:24', '2022-10-26 10:27:42'),
(801, 102, 4, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:24', '2022-10-26 10:27:42'),
(802, 102, 5, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:24', '2022-10-26 10:27:42'),
(803, 102, 6, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:24', '2022-10-26 10:27:42'),
(804, 102, 7, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:24', '2022-10-26 10:27:42'),
(805, 102, 8, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:24', '2022-10-26 10:27:42'),
(806, 102, 9, 'Đen', 'rgb(0, 0, 0)', 0, '2022-10-26 10:26:24', '2022-10-26 10:27:42'),
(807, 102, 10, 'Đen', 'rgb(0, 0, 0)', 16, '2022-10-26 10:26:24', '2022-10-26 10:28:56'),
(808, 102, 11, 'Đen', 'rgb(0, 0, 0)', 16, '2022-10-26 10:26:24', '2022-10-26 10:28:56'),
(809, 102, 12, 'Đen', 'rgb(0, 0, 0)', 16, '2022-10-26 10:26:24', '2022-10-26 10:28:56'),
(810, 102, 13, 'Đen', 'rgb(0, 0, 0)', 16, '2022-10-26 10:26:24', '2022-10-26 10:28:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prodtage`
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
-- Cấu trúc bảng cho bảng `productgallery`
--

CREATE TABLE `productgallery` (
  `idProd` int(11) NOT NULL,
  `imagename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodSet` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productgallery`
--

INSERT INTO `productgallery` (`idProd`, `imagename`, `prodSet`, `created_at`, `updated_at`) VALUES
(72, '00375837-849f-4f17-ba24-d201d27be49b.webp', 0, '2022-10-26 02:02:02', '2022-10-26 02:02:02'),
(72, '120a31b0-efa7-41c7-9a84-87b1e56ab9c3.webp', 0, '2022-10-26 02:02:02', '2022-10-26 02:02:02'),
(72, '33533fe2-1157-4001-896e-1803b30659c8.webp', 0, '2022-10-26 02:02:02', '2022-10-26 02:02:02'),
(72, '3cc96f43-47b6-43cb-951d-d8f73bb2f912.webp', 0, '2022-10-26 02:02:02', '2022-10-26 02:02:02'),
(72, '82aa97ed-98bf-4b6f-9d0b-31a9f907077b.webp', 0, '2022-10-26 02:02:02', '2022-10-26 02:02:02'),
(72, 'a0a300da-2e16-4483-ba64-9815cf0598ac.webp', 0, '2022-10-26 02:02:02', '2022-10-26 02:02:02'),
(72, 'air-force-1-07-shoes-WrLlWX.jpg', 0, '2022-10-26 02:02:02', '2022-10-26 02:02:02'),
(72, 'b7d9211c-26e7-431a-ac24-b0540fb3c00f.webp', 0, '2022-10-26 02:02:02', '2022-10-26 02:02:02'),
(73, '151a6a50-0f41-420d-b0d2-e87cbb638951.webp', 0, '2022-10-26 02:06:33', '2022-10-26 02:06:33'),
(73, '5aed11ae-1bfa-4c6d-89d9-9c2c39310678.webp', 0, '2022-10-26 02:06:33', '2022-10-26 02:06:33'),
(73, 'air-max-flyknit-racer-shoes-Q9lN71 (1).jpg', 0, '2022-10-26 02:06:33', '2022-10-26 02:06:33'),
(73, 'air-max-flyknit-racer-shoes-Q9lN71 (2).jpg', 0, '2022-10-26 02:06:33', '2022-10-26 02:06:33'),
(73, 'air-max-flyknit-racer-shoes-Q9lN71.jpg', 0, '2022-10-26 02:06:33', '2022-10-26 02:06:33'),
(73, 'c350d55e-1a36-4d52-bd39-52f753b17e2d.webp', 0, '2022-10-26 02:06:33', '2022-10-26 02:06:33'),
(73, 'caf574e8-3000-4636-bad5-c4b7100ee5d8.webp', 0, '2022-10-26 02:06:33', '2022-10-26 02:06:33'),
(73, 'fde2ecbe-ccfd-4aa1-9a13-ae626dee4409.webp', 0, '2022-10-26 02:06:33', '2022-10-26 02:06:33'),
(74, '0c4281fd-670c-4a9d-b9df-b8f98e815596.webp', 0, '2022-10-26 02:10:20', '2022-10-26 02:10:20'),
(74, '3567aea4-0fb0-4d99-a4b4-80c6b56a0d42.webp', 0, '2022-10-26 02:10:20', '2022-10-26 02:10:20'),
(74, '4658ed29-9c60-4522-8e63-60ed1488469e.webp', 0, '2022-10-26 02:10:20', '2022-10-26 02:10:20'),
(74, '5e69767d-949c-49ff-bc6d-558b8f0c14cd.webp', 0, '2022-10-26 02:10:20', '2022-10-26 02:10:20'),
(74, '6da2a252-6675-4085-b5bd-09d1f2ebcf7e.webp', 0, '2022-10-26 02:10:20', '2022-10-26 02:10:20'),
(74, '81f53af2-4c37-4dd2-b635-3b0402cb8f1f.webp', 0, '2022-10-26 02:10:20', '2022-10-26 02:10:20'),
(74, '83caf0c6-367d-4073-bedc-14152618416d.webp', 0, '2022-10-26 02:10:20', '2022-10-26 02:10:20'),
(74, 'df01bb8f-3638-4bd1-a4e9-f804dab66837.webp', 0, '2022-10-26 02:10:20', '2022-10-26 02:10:20'),
(74, 'f4c03682-6e69-44fb-9bcc-905aee39d183.webp', 0, '2022-10-26 02:10:20', '2022-10-26 02:10:20'),
(75, '19c6c8c5-1f1a-4c8c-8d99-f1a8d451b8de.webp', 0, '2022-10-26 02:12:14', '2022-10-26 02:12:14'),
(75, '51bfb031-2877-45c3-8a7f-3ac14ba41610.webp', 0, '2022-10-26 02:12:14', '2022-10-26 02:12:14'),
(75, '573eb95c-9da4-4137-9490-da23c8ab4fc0.webp', 0, '2022-10-26 02:12:14', '2022-10-26 02:12:14'),
(75, '575c2f08-8b42-4cb3-bc42-0691a6957154.webp', 0, '2022-10-26 02:12:14', '2022-10-26 02:12:14'),
(75, '766fbb34-161e-46c2-9e2a-3772db778e70.webp', 0, '2022-10-26 02:12:14', '2022-10-26 02:12:14'),
(75, '7f4bd0a6-62ee-45ce-a92b-027fbe215bcd.webp', 0, '2022-10-26 02:12:14', '2022-10-26 02:12:14'),
(75, 'air-max-97-shoes-Tmhzv0 (1).jpg', 0, '2022-10-26 02:12:14', '2022-10-26 02:12:14'),
(75, 'air-max-97-shoes-Tmhzv0.jpg', 0, '2022-10-26 02:12:14', '2022-10-26 02:12:14'),
(75, 'c3f7ab2d-6f88-4b16-93ca-9cd0912bb5ee.webp', 0, '2022-10-26 02:12:14', '2022-10-26 02:12:14'),
(75, 'cc45417a-ea3e-494a-9cf7-9e3ccc855965.webp', 0, '2022-10-26 02:12:14', '2022-10-26 02:12:14'),
(75, 'ccda4fad-7031-4f95-b685-56351086f57b.webp', 0, '2022-10-26 02:12:14', '2022-10-26 02:12:14'),
(76, '60473956-72cf-467a-9a2d-33961f065b81.webp', 0, '2022-10-26 02:14:25', '2022-10-26 02:14:25'),
(76, '778e410e-f22c-459a-be47-2ef16d04250e.webp', 0, '2022-10-26 02:14:25', '2022-10-26 02:14:25'),
(76, '886d3f50-ca34-41c2-bc98-fa475e3f848c.webp', 0, '2022-10-26 02:14:25', '2022-10-26 02:14:25'),
(76, 'air-max-97-se-shoes-LJVTjv (1).jpg', 0, '2022-10-26 02:14:25', '2022-10-26 02:14:25'),
(76, 'air-max-97-se-shoes-LJVTjv.jpg', 0, '2022-10-26 02:14:25', '2022-10-26 02:14:25'),
(76, 'cdc15330-6638-4881-8436-581a704139be.webp', 0, '2022-10-26 02:14:25', '2022-10-26 02:14:25'),
(76, 'e5cf6c08-97af-446b-94ff-00dd4041edcf.webp', 0, '2022-10-26 02:14:25', '2022-10-26 02:14:25'),
(76, 'e5f759bb-0f89-4fbe-ab21-bea2190c96e9.webp', 0, '2022-10-26 02:14:25', '2022-10-26 02:14:25'),
(77, '293e08e8-e661-4010-b852-e65b2d7db7e5.webp', 0, '2022-10-26 02:16:11', '2022-10-26 02:16:11'),
(77, '2fa955ff-ddd3-45ef-a3bb-9803a5b13816.webp', 0, '2022-10-26 02:16:11', '2022-10-26 02:16:11'),
(77, '700eedcc-99ce-4c35-9c6f-40fd6c03e0c1.webp', 0, '2022-10-26 02:16:11', '2022-10-26 02:16:11'),
(77, '98b684d3-893a-4610-8acf-d980a4aad266.webp', 0, '2022-10-26 02:16:11', '2022-10-26 02:16:11'),
(77, 'air-jordan-1-zoom-cmft-shoes-mDxHSk (1).jpg', 0, '2022-10-26 02:16:11', '2022-10-26 02:16:11'),
(77, 'air-jordan-1-zoom-cmft-shoes-mDxHSk.jpg', 0, '2022-10-26 02:16:11', '2022-10-26 02:16:11'),
(77, 'b0cdf3ca-02cb-413f-bf08-8ba9bec84204.webp', 0, '2022-10-26 02:16:11', '2022-10-26 02:16:11'),
(77, 'ce9f3438-f54f-4b15-8886-d665036d1e11.webp', 0, '2022-10-26 02:16:11', '2022-10-26 02:16:11'),
(78, '0896a951-bfb7-4558-ae41-561be9369922.webp', 0, '2022-10-26 02:18:00', '2022-10-26 02:18:00'),
(78, '14c2c6b1-8686-4d1a-9173-3b5694670cbc.webp', 0, '2022-10-26 02:18:00', '2022-10-26 02:18:00'),
(78, '28e0b190-ead0-4017-97d2-42d035694747.webp', 0, '2022-10-26 02:18:00', '2022-10-26 02:18:00'),
(78, '298632e6-5c00-4a5f-865b-7ca01f4e569d.webp', 0, '2022-10-26 02:18:00', '2022-10-26 02:18:00'),
(78, '3d46349a-9d71-44a8-9a6a-c4e458d05f1d.webp', 0, '2022-10-26 02:18:00', '2022-10-26 02:18:00'),
(78, '47dfb42d-c70d-4bbe-b989-452fcfc75207.webp', 0, '2022-10-26 02:18:00', '2022-10-26 02:18:00'),
(78, '5d019ef3-b2ea-450f-8e36-32760f92af38.webp', 0, '2022-10-26 02:18:00', '2022-10-26 02:18:00'),
(78, '7002b8a1-611f-4edf-8ec9-d1436fffd1d5.webp', 0, '2022-10-26 02:18:00', '2022-10-26 02:18:00'),
(79, '36ef218b-e57f-45f3-bc70-1155c190dfc1.webp', 0, '2022-10-26 02:20:05', '2022-10-26 02:20:05'),
(79, '38383259-2ae7-47ec-a723-0abb2eac42af.webp', 0, '2022-10-26 02:20:05', '2022-10-26 02:20:05'),
(79, '60521579-bd5d-473c-a73f-37718dd336e7.webp', 0, '2022-10-26 02:20:05', '2022-10-26 02:20:05'),
(79, '69b6bb18-9e5f-4bba-948c-1027de7abbe4.webp', 0, '2022-10-26 02:20:05', '2022-10-26 02:20:05'),
(79, 'a6cba1f2-099a-4d18-ac26-6db40ddd1791.webp', 0, '2022-10-26 02:20:05', '2022-10-26 02:20:05'),
(79, 'c5bb494c-ca2f-416c-9c27-6b4d5a14e8f8.webp', 0, '2022-10-26 02:20:05', '2022-10-26 02:20:05'),
(79, 'ff64fab3-60c9-4a6c-bc29-29897b4b0372.webp', 0, '2022-10-26 02:20:05', '2022-10-26 02:20:05'),
(79, 'nikecourt-legacy-suede-shoes-QcMfd3.jpg', 0, '2022-10-26 02:20:05', '2022-10-26 02:20:05'),
(80, '288cabc8-78af-49b1-97d4-cbb07259d01c.webp', 0, '2022-10-26 02:24:48', '2022-10-26 02:24:48'),
(80, '6b729ed5-c035-4be6-8d96-b349be6e844c.webp', 0, '2022-10-26 02:24:48', '2022-10-26 02:24:48'),
(80, '786a408c-6bbc-4454-be20-83931848d7f9.webp', 0, '2022-10-26 02:24:48', '2022-10-26 02:24:48'),
(80, 'b0498cf0-72d3-4e9d-ad87-fbef0340d7ab.webp', 0, '2022-10-26 02:24:48', '2022-10-26 02:24:48'),
(80, 'b4a6d269-72ce-4ba3-ab6d-1fbf7af09436.webp', 0, '2022-10-26 02:24:48', '2022-10-26 02:24:48'),
(80, 'badc6437-ff6d-422b-a599-9f70792533ab.webp', 0, '2022-10-26 02:24:48', '2022-10-26 02:24:48'),
(80, 'd66f0975-ca64-455a-aff7-5f230678796d.webp', 0, '2022-10-26 02:24:48', '2022-10-26 02:24:48'),
(80, 'd926343b-fa5a-48b1-ad82-911a30c1798d.webp', 0, '2022-10-26 02:24:48', '2022-10-26 02:24:48'),
(81, '01bfdb19-0b1b-4fe7-bfa5-587701c12349.webp', 0, '2022-10-26 02:27:15', '2022-10-26 02:27:15'),
(81, '01fd5eee-26e3-4a85-99bf-b79c408a6439.webp', 0, '2022-10-26 02:27:15', '2022-10-26 02:27:15'),
(81, 'ad6e7689-8d91-4fd3-8a45-da7f7369a8c3.webp', 0, '2022-10-26 02:27:15', '2022-10-26 02:27:15'),
(81, 'aebb53fc-ab5e-4b29-8ed2-9323fa3822d2.webp', 0, '2022-10-26 02:27:15', '2022-10-26 02:27:15'),
(81, 'fe6172df-d4ef-4692-96d2-106f69a5d00a.webp', 0, '2022-10-26 02:27:15', '2022-10-26 02:27:15'),
(82, '08d42547-845d-4fe6-88f3-eadb99e10f72.webp', 0, '2022-10-26 02:29:18', '2022-10-26 02:29:18'),
(82, '38dbcdf8-a4f7-47bb-aab8-74251b2e6e63.webp', 0, '2022-10-26 02:29:18', '2022-10-26 02:29:18'),
(82, '6465fca2-5440-423b-8bcb-88165be81907.webp', 0, '2022-10-26 02:29:18', '2022-10-26 02:29:18'),
(82, '72789803-ae2b-4456-b96f-0f33fc6957b4.webp', 0, '2022-10-26 02:29:18', '2022-10-26 02:29:18'),
(82, 'd71405e6-4a7a-460f-8d4a-13f34413b436.webp', 0, '2022-10-26 02:29:18', '2022-10-26 02:29:18'),
(82, 'dd9f822d-5be3-4e2b-bf32-1e747ac2151a.webp', 0, '2022-10-26 02:29:18', '2022-10-26 02:29:18'),
(82, 'f7a8d970-b00b-4e0f-a063-49db1a996249.webp', 0, '2022-10-26 02:29:18', '2022-10-26 02:29:18'),
(83, '042b0779-edcd-45eb-adcb-10ee0e5d41fa.webp', 0, '2022-10-26 02:31:28', '2022-10-26 02:31:28'),
(83, '6751e977-3b8d-4509-9c29-c57a3ae6a3be.webp', 0, '2022-10-26 02:31:28', '2022-10-26 02:31:28'),
(83, 'c98cd73e-6bbf-4f5e-b4f7-4eb59d72d957.webp', 0, '2022-10-26 02:31:28', '2022-10-26 02:31:28'),
(83, 'f6464910-ffa4-4029-b313-2b154b7245ab.webp', 0, '2022-10-26 02:31:28', '2022-10-26 02:31:28'),
(83, 'victori-one-printed-slide-2ZsMWk.jpg', 0, '2022-10-26 02:31:28', '2022-10-26 02:31:28'),
(84, '137da4d0-8516-4041-894a-c07545335761.webp', 0, '2022-10-26 02:36:00', '2022-10-26 02:36:00'),
(84, '14af2258-d6e3-4468-ae25-b8f2f004af99.webp', 0, '2022-10-26 02:36:00', '2022-10-26 02:36:00'),
(84, '2035f824-1f0f-4a13-9b14-6f411dbda97b.webp', 0, '2022-10-26 02:36:00', '2022-10-26 02:36:00'),
(84, '2262198a-2a5b-47f9-b1eb-e53369e5101a (1).webp', 0, '2022-10-26 02:36:00', '2022-10-26 02:36:00'),
(84, '2262198a-2a5b-47f9-b1eb-e53369e5101a.webp', 0, '2022-10-26 02:36:00', '2022-10-26 02:36:00'),
(84, '87e658e6-1853-48ef-b7aa-1d01cc0bbef9.webp', 0, '2022-10-26 02:36:00', '2022-10-26 02:36:00'),
(84, '9c0914e5-8ce1-4616-bbf0-3a3b311cb1c0.webp', 0, '2022-10-26 02:36:00', '2022-10-26 02:36:00'),
(84, 'ad639966-73c3-4df3-885f-e4ff75a462c3.webp', 0, '2022-10-26 02:36:00', '2022-10-26 02:36:00'),
(84, 'f2557abd-82b6-4bf9-aae7-2f7a45d4aa55.webp', 0, '2022-10-26 02:36:00', '2022-10-26 02:36:00'),
(85, '00c4951a-704d-4495-9cf8-a025a3283d07.webp', 0, '2022-10-26 02:38:59', '2022-10-26 02:38:59'),
(85, '27eab8ab-ccda-4c90-bb3c-f988be6da0c0.webp', 0, '2022-10-26 02:38:59', '2022-10-26 02:38:59'),
(85, '3792c43a-3ce4-48fa-9790-2da309027ce7.webp', 0, '2022-10-26 02:38:59', '2022-10-26 02:38:59'),
(85, '6e6d633a-f515-41bb-9c09-d220ebd56201.webp', 0, '2022-10-26 02:38:59', '2022-10-26 02:38:59'),
(85, '76d34816-cadf-4ffb-8d31-7b21fb92089f.webp', 0, '2022-10-26 02:38:59', '2022-10-26 02:38:59'),
(85, 'bad3ac0a-7732-490b-b3dc-8bb94b31f4dd.webp', 0, '2022-10-26 02:38:59', '2022-10-26 02:38:59'),
(86, '2cb2ce89-c350-4ac2-bcb8-226be3b14002.webp', 0, '2022-10-26 02:42:44', '2022-10-26 02:42:44'),
(86, '9013db54-dfb4-4120-8106-5a58485bfb6b.webp', 0, '2022-10-26 02:42:44', '2022-10-26 02:42:44'),
(86, 'ac831d21-b037-4e0a-87e6-cebdb346bc5e.webp', 0, '2022-10-26 02:42:44', '2022-10-26 02:42:44'),
(86, 'air-jordan-1-mid-se-shoes-7KMDLH (1).jpg', 0, '2022-10-26 02:42:44', '2022-10-26 02:42:44'),
(86, 'air-jordan-1-mid-se-shoes-7KMDLH.jpg', 0, '2022-10-26 02:42:44', '2022-10-26 02:42:44'),
(86, 'b01d748c-888b-47e4-a1d8-d3bf1c400aea.webp', 0, '2022-10-26 02:42:44', '2022-10-26 02:42:44'),
(86, 'befa0892-855e-4ee8-b31e-a741ce1e2f6b.webp', 0, '2022-10-26 02:42:44', '2022-10-26 02:42:44'),
(86, 'ea9c92e7-f6ab-4214-a123-fa890d720407.webp', 0, '2022-10-26 02:42:44', '2022-10-26 02:42:44'),
(87, '246cc407-3fe8-4d32-a24d-cbd5335b1d0c.webp', 0, '2022-10-26 03:12:05', '2022-10-26 03:12:05'),
(87, '73030a57-2295-4c4c-a782-884a9e069c86.webp', 0, '2022-10-26 03:12:05', '2022-10-26 03:12:05'),
(87, '7cdf4e0e-b4a6-4f11-af7c-1ce9b01b9b65.webp', 0, '2022-10-26 03:12:05', '2022-10-26 03:12:05'),
(87, '7f63148d-ad21-4f6b-baea-5d230f910eb6.webp', 0, '2022-10-26 03:12:05', '2022-10-26 03:12:05'),
(87, 'air-force-1-07-lv8-shoes-ZL0H3h (1).jfif', 0, '2022-10-26 03:12:05', '2022-10-26 03:12:05'),
(87, 'air-force-1-07-lv8-shoes-ZL0H3h.jfif', 0, '2022-10-26 03:12:05', '2022-10-26 03:12:05'),
(87, 'e59d3d21-79ec-4155-98da-b4e508847882.webp', 0, '2022-10-26 03:12:05', '2022-10-26 03:12:05'),
(88, '799ea7c3-0ba0-46ad-8902-5a22f23f331b.webp', 0, '2022-10-26 03:19:16', '2022-10-26 03:19:16'),
(88, 'a34c5daa-a556-414e-b7cd-cf72875987a8.webp', 0, '2022-10-26 03:19:16', '2022-10-26 03:19:16'),
(88, 'air-force-1-07-se-shoes-QVPN01.jfif', 0, '2022-10-26 03:19:16', '2022-10-26 03:19:16'),
(88, 'c2638eec-87ca-4a47-85f2-733b01fc7af3.webp', 0, '2022-10-26 03:19:16', '2022-10-26 03:19:16'),
(88, 'd1f97667-a5d4-4e36-98a2-e32299d4d9eb.webp', 0, '2022-10-26 03:19:16', '2022-10-26 03:19:16'),
(88, 'dbdf147a-5073-44ea-a449-48818754c942.webp', 0, '2022-10-26 03:19:16', '2022-10-26 03:19:16'),
(88, 'edfcbbaa-7939-412d-b2b4-1ccd463be3ee.webp', 0, '2022-10-26 03:19:16', '2022-10-26 03:19:16'),
(89, '1ee4860e-bebb-43f9-bf6e-8e688277a2f7.webp', 0, '2022-10-26 03:21:30', '2022-10-26 03:21:30'),
(89, '4156b845-8d26-44be-872f-b4eee6dcfeed.webp', 0, '2022-10-26 03:21:30', '2022-10-26 03:21:30'),
(89, '43d3a687-4f9f-4a2a-ae01-990ed17e6ce4.webp', 0, '2022-10-26 03:21:30', '2022-10-26 03:21:30'),
(89, '65ed347d-cb67-4611-a313-65c681e3cf5c.webp', 0, '2022-10-26 03:21:30', '2022-10-26 03:21:30'),
(89, 'a1ecf89b-50b2-4c30-a530-246c19018106.webp', 0, '2022-10-26 03:21:30', '2022-10-26 03:21:30'),
(89, 'b381cf3b-fdcb-431d-9eaf-ad3b47afc71e.webp', 0, '2022-10-26 03:21:30', '2022-10-26 03:21:30'),
(89, 'b3d83128-2d56-4296-9a80-7a90ec4552e5.webp', 0, '2022-10-26 03:21:30', '2022-10-26 03:21:30'),
(89, 'ce04914c-cb16-4c1b-878b-647b1169f3c1.webp', 0, '2022-10-26 03:21:30', '2022-10-26 03:21:30'),
(89, 'f6fe11b9-a71a-4bb5-bc16-387d5f6f76b4.webp', 0, '2022-10-26 03:21:30', '2022-10-26 03:21:30'),
(90, '43cb8418-45dd-44a1-a920-a8aee3c121d9.webp', 0, '2022-10-26 03:24:02', '2022-10-26 03:24:02'),
(90, '58c8ae2c-ba43-4b20-854f-adf938a560c3.webp', 0, '2022-10-26 03:24:02', '2022-10-26 03:24:02'),
(90, 'afa14aa1-296d-4d81-b527-a43a25f04198.webp', 0, '2022-10-26 03:24:02', '2022-10-26 03:24:02'),
(90, 'b4161e8b-77cd-494e-9ad2-4b1026d50857.webp', 0, '2022-10-26 03:24:02', '2022-10-26 03:24:02'),
(90, 'c8096121-cc0e-4f5a-ba7a-0e990213baa6.webp', 0, '2022-10-26 03:24:02', '2022-10-26 03:24:02'),
(90, 'd66e32c3-6295-4d4b-90bb-fb4a87b7e0c3.webp', 0, '2022-10-26 03:24:02', '2022-10-26 03:24:02'),
(90, 'd8fdc947-fe49-4a33-a4d4-fc1cff61c402.webp', 0, '2022-10-26 03:24:02', '2022-10-26 03:24:02'),
(90, 'e4249f34-012a-45ca-9c03-ac71fcbaa069.webp', 0, '2022-10-26 03:24:02', '2022-10-26 03:24:02'),
(91, '02263675-7f0c-49ac-93df-9743f819f5df.webp', 0, '2022-10-26 03:47:18', '2022-10-26 03:47:18'),
(91, '46cf6ab8-8f21-482e-9872-bc00de469f52.webp', 0, '2022-10-26 03:47:18', '2022-10-26 03:47:18'),
(91, '77cc6830-4556-4721-a1a1-7845731463d4.webp', 0, '2022-10-26 03:47:18', '2022-10-26 03:47:18'),
(91, '87cd1955-a587-4456-a5f4-0abb0b4fe231.webp', 0, '2022-10-26 03:47:18', '2022-10-26 03:47:18'),
(91, 'bc30cc01-13a8-4c12-bbfb-50d7ca1c476b.webp', 0, '2022-10-26 03:47:18', '2022-10-26 03:47:18'),
(91, 'c421275e-3d68-437f-a0cc-8075c42c2185.webp', 0, '2022-10-26 03:47:18', '2022-10-26 03:47:18'),
(91, 'sportswear-icon-clash-woven-boyfriend-jacket-gmkBRv.jfif', 0, '2022-10-26 03:47:18', '2022-10-26 03:47:18'),
(92, '54ee02a8-b584-4e22-9e2d-6f3e2fd2b065.webp', 0, '2022-10-26 03:49:15', '2022-10-26 03:49:15'),
(92, '56d60b61-7be8-4039-864a-97d58fb282a9.webp', 0, '2022-10-26 03:49:15', '2022-10-26 03:49:15'),
(92, 'bdb712a0-2419-4114-93ed-192ab23ef102.webp', 0, '2022-10-26 03:49:15', '2022-10-26 03:49:15'),
(92, 'repel-icon-clash-woven-printed-running-jacket-Tqjl6C (1).jfif', 0, '2022-10-26 03:49:15', '2022-10-26 03:49:15'),
(92, 'repel-icon-clash-woven-printed-running-jacket-Tqjl6C (2).jfif', 0, '2022-10-26 03:49:15', '2022-10-26 03:49:15'),
(92, 'repel-icon-clash-woven-printed-running-jacket-Tqjl6C.jfif', 0, '2022-10-26 03:49:15', '2022-10-26 03:49:15'),
(93, '43936a34-b8cc-46ad-909e-5097676f252b.webp', 0, '2022-10-26 03:51:56', '2022-10-26 03:51:56'),
(93, '5549ad76-ff5a-4171-b053-5babe37b12bf.webp', 0, '2022-10-26 03:51:57', '2022-10-26 03:51:57'),
(93, '74afe41a-637a-40b9-9791-0c4c40cb33cf.webp', 0, '2022-10-26 03:51:56', '2022-10-26 03:51:56'),
(93, '8c7be509-8840-41b1-9029-707c136a3f56.webp', 0, '2022-10-26 03:51:57', '2022-10-26 03:51:57'),
(93, '9a8e2ea8-4c6e-4184-86c7-1d1cec1c6e2e.webp', 0, '2022-10-26 03:51:56', '2022-10-26 03:51:56'),
(93, 'ea87e0ff-d8d3-43b0-baa1-cbb099f8b05f.webp', 0, '2022-10-26 03:51:56', '2022-10-26 03:51:56'),
(93, 'f8de88cf-aa8b-46c6-94f0-75fa805fc9a7.webp', 0, '2022-10-26 03:51:56', '2022-10-26 03:51:56'),
(93, 'fba62aaa-abb6-455c-8c7f-985c9632d8ce.webp', 0, '2022-10-26 03:51:56', '2022-10-26 03:51:56'),
(94, '450f1283-c288-4bb3-890a-f7860a596268.webp', 0, '2022-10-26 03:55:18', '2022-10-26 03:55:18'),
(94, 'acg-dri-fit-adv-goat-rocks-sleeveless-tank-1PBlTS (1).jfif', 0, '2022-10-26 03:55:18', '2022-10-26 03:55:18'),
(94, 'acg-dri-fit-adv-goat-rocks-sleeveless-tank-1PBlTS.jfif', 0, '2022-10-26 03:55:18', '2022-10-26 03:55:18'),
(94, 'dc167813-79fe-457e-aec3-101ec732be2b.webp', 0, '2022-10-26 03:55:18', '2022-10-26 03:55:18'),
(94, 'fdcd60c0-e80d-4ead-b909-0033af795d4b.webp', 0, '2022-10-26 03:55:18', '2022-10-26 03:55:18'),
(95, '2bff2e80-f1c6-44ef-81ce-052cf4bb0bac.webp', 0, '2022-10-26 03:59:22', '2022-10-26 03:59:22'),
(95, '2fd5204a-aeb2-4420-bae0-b64ac8f53c54.webp', 0, '2022-10-26 03:59:22', '2022-10-26 03:59:22'),
(95, '616e8e2c-aa75-4b0a-ae42-0b2ed6fc9843.webp', 0, '2022-10-26 03:59:22', '2022-10-26 03:59:22'),
(95, '8fcfc483-03bb-4657-94f3-e8123382f2eb.webp', 0, '2022-10-26 03:59:22', '2022-10-26 03:59:22'),
(95, 'b653eb83-d99e-468f-a9e9-a72bed35d3ad.webp', 0, '2022-10-26 03:59:22', '2022-10-26 03:59:22'),
(95, 'edb560b1-04e6-4f41-a6ea-5982e9b2fd2d.webp', 0, '2022-10-26 03:59:22', '2022-10-26 03:59:22'),
(95, 'sportswear-phoenix-fleece-over-oversized-pullover-hoodie-s4mSXr (1).jfif', 0, '2022-10-26 03:59:22', '2022-10-26 03:59:22'),
(95, 'sportswear-phoenix-fleece-over-oversized-pullover-hoodie-s4mSXr (2).jfif', 0, '2022-10-26 03:59:22', '2022-10-26 03:59:22'),
(95, 'sportswear-phoenix-fleece-over-oversized-pullover-hoodie-s4mSXr.jfif', 0, '2022-10-26 03:59:22', '2022-10-26 03:59:22'),
(96, '31040398-c145-4638-ba09-4d5d9634259d.webp', 0, '2022-10-26 04:06:42', '2022-10-26 04:06:42'),
(96, '62fc0120-a3ef-41ed-8866-83ff8fcf68ed.webp', 0, '2022-10-26 04:06:42', '2022-10-26 04:06:42'),
(96, '835f0e56-13d3-4086-8d3c-af9637c96ea1.webp', 0, '2022-10-26 04:06:42', '2022-10-26 04:06:42'),
(96, 'e42dbedf-8a3a-4f94-be8d-eef8567e4423.webp', 0, '2022-10-26 04:06:42', '2022-10-26 04:06:42'),
(96, 'f45fd457-fda1-41a6-9105-99f4105fbacc.webp', 0, '2022-10-26 04:06:42', '2022-10-26 04:06:42'),
(97, '128eab75-d346-4cd2-a0c1-a02f5346c8f8.webp', 0, '2022-10-26 04:11:22', '2022-10-26 04:11:22'),
(97, '12b0fc15-8d29-4400-b85e-7cbb3faa7d28.webp', 0, '2022-10-26 04:11:22', '2022-10-26 04:11:22'),
(97, '2812c6dc-d7f9-448d-b9e6-c8e39c2aaf8e.webp', 0, '2022-10-26 04:11:22', '2022-10-26 04:11:22'),
(97, '28e031b2-e8e8-48f1-8c97-07d91eac952a.webp', 0, '2022-10-26 04:11:22', '2022-10-26 04:11:22'),
(97, '3ca1ceaf-f1a2-4c4b-9986-57cc49482f55.webp', 0, '2022-10-26 04:11:22', '2022-10-26 04:11:22'),
(97, '8bc35413-08f6-4530-8760-1dfbe0fe1eca.webp', 0, '2022-10-26 04:11:22', '2022-10-26 04:11:22'),
(97, 'a63c92f8-b498-4994-8166-55e221c16ccf.webp', 0, '2022-10-26 04:11:22', '2022-10-26 04:11:22'),
(97, 'f9d4d057-3d32-4f36-b4ab-af9f2fe7130f.webp', 0, '2022-10-26 04:11:22', '2022-10-26 04:11:22'),
(98, '6886f374-17f0-4974-8eae-db5629b4b46f.webp', 0, '2022-10-26 04:14:20', '2022-10-26 04:14:20'),
(98, '98d285b7-a5b2-48ed-a319-633673ea207b.webp', 0, '2022-10-26 04:14:20', '2022-10-26 04:14:20'),
(98, 'b764ff0f-9cb0-4245-bfe5-6f5f3ee3fb69.webp', 0, '2022-10-26 04:14:20', '2022-10-26 04:14:20'),
(98, 'sportswear-short-sleeve-top-fbzC99 (1).jfif', 0, '2022-10-26 04:14:20', '2022-10-26 04:14:20'),
(98, 'sportswear-short-sleeve-top-fbzC99.jfif', 0, '2022-10-26 04:14:20', '2022-10-26 04:14:20'),
(99, '07c8a2f3-4f91-4e13-9239-7bab40180e90.webp', 0, '2022-10-26 04:17:14', '2022-10-26 04:17:14'),
(99, '10447633-74e6-4eab-ad21-814a783192ad.webp', 0, '2022-10-26 04:17:14', '2022-10-26 04:17:14'),
(99, '45aa161b-9170-4c6e-a48c-d1468cf374a7.webp', 0, '2022-10-26 04:17:14', '2022-10-26 04:17:14'),
(99, 'a4bd81d6-dcc2-45f8-a670-a623138748bf.webp', 0, '2022-10-26 04:17:14', '2022-10-26 04:17:14'),
(99, 'f8d373e4-feac-4e2d-b7bd-c9c54f693f15.webp', 0, '2022-10-26 04:17:14', '2022-10-26 04:17:14'),
(100, '9051e00b-57e5-4e9b-9970-a872192ebb29.webp', 0, '2022-10-26 04:23:46', '2022-10-26 04:23:46'),
(100, 'tiger-woods-graphic-golf-crew-ftNvGv (1).jfif', 0, '2022-10-26 04:23:46', '2022-10-26 04:23:46'),
(100, 'tiger-woods-graphic-golf-crew-ftNvGv (2).jfif', 0, '2022-10-26 04:23:46', '2022-10-26 04:23:46'),
(100, 'tiger-woods-graphic-golf-crew-ftNvGv (3).jfif', 0, '2022-10-26 04:23:46', '2022-10-26 04:23:46'),
(100, 'tiger-woods-graphic-golf-crew-ftNvGv.jfif', 0, '2022-10-26 04:23:46', '2022-10-26 04:23:46'),
(101, '2ce87a47-7fff-45d6-bcfb-8f486c26ccaa.webp', 0, '2022-10-26 04:27:18', '2022-10-26 04:27:18'),
(101, '8b94b818-6181-4556-b9a9-e567c9e9dac3.webp', 0, '2022-10-26 04:27:18', '2022-10-26 04:27:18'),
(101, 'a422d274-d9d6-4647-9436-86cf774f69e5.webp', 0, '2022-10-26 04:27:18', '2022-10-26 04:27:18'),
(101, 'ca9394d5-3dab-479c-b49c-f5fc3abeae52.webp', 0, '2022-10-26 04:27:18', '2022-10-26 04:27:18'),
(101, 'db76ddda-6c06-45ad-85c7-cb4f9bec5e7b.webp', 0, '2022-10-26 04:27:18', '2022-10-26 04:27:18'),
(101, 'e4003f9a-b5df-490d-9be5-50c0eda3dd4b.webp', 0, '2022-10-26 04:27:18', '2022-10-26 04:27:18'),
(102, 'tui-deo-cheo-gucci-handbags-padlock-432182-dj2lg-1055-shoulder-bag-mau-den-size-20-634f601d895e8-19102022092533.jpg', 0, '2022-10-26 04:40:46', '2022-10-26 04:40:46'),
(102, 'tui-deo-cheo-gucci-handbags-padlock-432182-dj2lg-1055-shoulder-bag-mau-den-size-20-634f601d95f9c-19102022092533.jpg', 0, '2022-10-26 04:40:46', '2022-10-26 04:40:46'),
(102, 'tui-deo-cheo-gucci-handbags-padlock-432182-dj2lg-1055-shoulder-bag-mau-den-size-20-634f601d9c429-19102022092533.jpg', 0, '2022-10-26 04:40:46', '2022-10-26 04:40:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `gender` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Nam 1:Nữ',
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `productName`, `slug`, `price`, `discount`, `gender`, `image`, `summary`, `content`, `status`, `idcate`, `idBrand`, `soLuotXem`, `highlight`, `created_at`, `updated_at`) VALUES
(72, 'Nike Air Force 1 \'07', NULL, 2649000, 0, 0, 'https://api.trungthanhweb.com/images/a0a300da-2e16-4483-ba64-9815cf0598ac.webp', 'Nike Air Force 1 \'07, Men\'s shoes', '<p><span style=\"font-size:20px\"><strong>LEGENDARY STYLE REFINED.</strong></span></p>\n\n<p><span style=\"font-size:20px\">The radiance lives on in the Nike Air Force 1 &#39;07, the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">The stitched overlays on the upper add heritage style, durability and support.</span></li>\n	<li><span style=\"font-size:20px\">Originally designed for performance hoops, the Nike Air cushioning adds lightweight, all-day comfort.</span></li>\n	<li><span style=\"font-size:20px\">The low-cut silhouette adds a clean, streamlined look.</span></li>\n	<li><span style=\"font-size:20px\">The padded collar feels soft and comfortable.</span></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><span style=\"font-size:20px\"><strong>Product Details</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Foam midsole</span></li>\n	<li><span style=\"font-size:20px\">Perforations on the toe</span></li>\n	<li><span style=\"font-size:20px\">Rubber sole</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: White/White</span></li>\n	<li><span style=\"font-size:20px\">Style: CW2288-111</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: Vietnam,India</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Air Force 1 Origins</strong></span></p>\n\n<p><span style=\"font-size:20px\">Debuting in 1982, the AF-1 was the first basketball shoe to house Nike Air, revolutionising the game while rapidly gaining traction around the world. Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.</span></p>', 1, 1, 1, 2, 0, '2022-10-26 01:59:12', '2022-10-27 03:18:14'),
(73, 'Nike Air Max Flyknit Racer', NULL, 4699000, 0, 0, 'https://api.trungthanhweb.com/images/air-max-flyknit-racer-shoes-Q9lN71 (1).jpg', 'Nike Air Max Flyknit Racer, Men\'s shoes', '<p><span style=\"font-size:20px\">Paying homage to both heritage and innovation, we&#39;ve blended 2 icons (old and new) to go beyond what&#39;s expected in the Nike Air Max Flyknit Racer. Incredibly light and airy Flyknit is paired with oh-so-comfy Air Max cushioning. Lace up and let your feet do the talking.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Retro Super Power</strong></span></p>\n\n<p><span style=\"font-size:20px\">Inspired by the 2012 FK Racer, the featherweight, form-fitting Flyknit upper is as revolutionary as it is good looking. Plus, the nearly seamless design adds a sporty edge.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Best Made Better</strong></span></p>\n\n<p><span style=\"font-size:20px\">The modernised look of the Pre-Day tooling fits perfectly with this mash-up of heritage meets innovation. With its chiselled heel and expressive window around the Air Max cushioning (originally designed for performance running), it delivers a fresh take on tried-and-tested comfort.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>More Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Soft synthetic suede detailing adds a classic touch.</span></li>\n	<li><span style=\"font-size:20px\">Collar sculpts the ankle for an athletics-inspired look.</span></li>\n	<li><span style=\"font-size:20px\">Foam midsole delivers springy cushioning.</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Ghost Green/Pink Blast/Photo Blue/Black</span></li>\n	<li><span style=\"font-size:20px\">Style: DJ6106-300</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: Vietnam</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Nike Air Max Origins</strong></span></p>\n\n<p><span style=\"font-size:20px\">Revolutionary Air technology first made its way into Nike footwear in 1978. In 1987, the Air Max 1 debuted with visible Air technology in its heel, allowing fans more than just the feel of Air cushioning&mdash;suddenly they could see it. Since then, next-generation Air Max shoes have become a hit with athletes and collectors by offering striking colour combinations and reliable, lightweight cushioning.</span></p>', 1, 1, 1, 1, 0, '2022-10-26 02:05:57', '2022-10-27 03:20:38'),
(74, 'Nike Air Force 1 \'07 LV8 Next Nature', NULL, 3089000, 0, 0, 'https://api.trungthanhweb.com/images/5e69767d-949c-49ff-bc6d-558b8f0c14cd.webp', 'Nike Air Force 1 \'07 LV8 Next Nature', '<p><span style=\"font-size:20px\"><strong>A HOLIDAY FOR YOUR FEET.</strong></span></p>\n\n<p><span style=\"font-size:20px\">Elevate your kick game with this fresh catch that&#39;s inspired by your next holiday. Airy, summertime accents like the mesh Swoosh let you show off your socks. Made from at least 20% recycled materials by weight, it lets you do good by looking good.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Sunny Vibes</strong></span></p>\n\n<p><span style=\"font-size:20px\">Let your feet go on an all-inclusive holiday with colours inspired by ocean beaches and embroidered graphics that let your youthful optimism shine. Plus, the mesh Swoosh adds an airy feel.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Do Good By Looking Good</strong></span></p>\n\n<p><span style=\"font-size:20px\">Whenever you see the Nike Sunburst, you see one small step on our journey towards zero carbon and zero waste. This product is made from at least 20% recycled materials by weight.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Casual Comfort</strong></span></p>\n\n<p><span style=\"font-size:20px\">Originally designed for performance hoops, the Air cushioning delivers lasting comfort while the padded ankle and tongue add to the soft ride.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Product Details</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Synthetic leather</span></li>\n	<li><span style=\"font-size:20px\">Cupsole design</span></li>\n	<li><span style=\"font-size:20px\">Rubber outsole</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Sail/Black/Wheatgrass/Sanded Gold</span></li>\n	<li><span style=\"font-size:20px\">Style: DM0117-100</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: China</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Air Force 1</strong></span></p>\n\n<p><span style=\"font-size:20px\">Debuting in 1982 as a basketball must-have, the Air Force 1 came into its own in the &#39;90s. The clean look of the classic white-on-white AF-1 was endorsed from the basketball courts to the street and beyond. Finding its rhythm in hip-hop culture, releasing limited collabs and colourways, Air Force 1 became an iconic sneaker around the globe. And with over 2000 iterations of this staple, its impact on fashion, music and sneaker culture can&#39;t be denied.</span></p>', 1, 1, 1, 2, 0, '2022-10-26 02:09:54', '2022-10-27 03:22:42'),
(75, 'Nike Air Max 97', NULL, 4999000, 0, 0, 'https://api.trungthanhweb.com/images/575c2f08-8b42-4cb3-bc42-0691a6957154.webp', 'Nike Air Max 97, Men\'s shoes', '<p><span style=\"font-size:20px\">With an iconic design inspired by Japanese bullet trains and water droplets, push your style full speed ahead in the Air Max 97. Full-length Nike Air cushioning lets you ride in first-class comfort.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Originally designed for performance running, full-length Air cushioning (the first of its kind) pairs best-in-class comfort with sporty style.</span></li>\n	<li><span style=\"font-size:20px\">Mesh underlays adds a premium look and airy feel.</span></li>\n	<li><span style=\"font-size:20px\">Hidden lacing system provides a streamlined look.</span></li>\n	<li><span style=\"font-size:20px\">Foam midsole delivers plush cushioning.</span></li>\n	<li><span style=\"font-size:20px\">Rubber outsole adds traction and durability.</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Black/Reflect Silver/Metallic Silver/White</span></li>\n	<li><span style=\"font-size:20px\">Style: DM0027-001</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: Indonesia</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Nike Air Max Origins</strong></span></p>\n\n<p><span style=\"font-size:20px\">Revolutionary Air technology first made its way into Nike footwear in 1978. In 1987, the Air Max 1 debuted with visible Air technology in its heel, allowing fans more than just the feel of Air cushioning&mdash;suddenly they could see it. Since then, next-generation Air Max shoes have become a hit with athletes and collectors by offering striking colour combinations and reliable, lightweight cushioning.</span></p>', 1, 1, 1, 0, 0, '2022-10-26 02:11:51', '2022-10-26 14:42:22'),
(76, 'Nike Air Max 97 SE', NULL, 5279000, 0, 0, 'https://api.trungthanhweb.com/images/886d3f50-ca34-41c2-bc98-fa475e3f848c.webp', 'Nike Air Max 97 SE', '<p><span style=\"font-size:20px\">Legend has it the original Air Max 97 was inspired by Tokyo&#39;s lightning-fast public transport system. Nicknamed the &quot;silver bullet&quot;, they were truly the shoes of the future thanks to innovative full-length Air cushioning and a sleek design. Write the next chapter with this modern version.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Walk on Air</strong></span></p>\n\n<p><span style=\"font-size:20px\">Originally designed for performance running, full-length Max Air units add soft, lasting comfort.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Era-Echoing Construction</strong></span></p>\n\n<p><span style=\"font-size:20px\">Smooth leather and soft suedes mimic the &#39;70s-era style of the original, while serrated edges on the outsoles add retro flavour.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Trusted Traction</strong></span></p>\n\n<p><span style=\"font-size:20px\">Rubber outsoles add traction and durability.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>More Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Foam midsoles feel springy.</span></li>\n	<li><span style=\"font-size:20px\">Hidden lacing system was a first of its kind, and allows for a streamlined look</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Product Details</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Foam sockliner</span></li>\n	<li><span style=\"font-size:20px\">Pull tabs on the tongue and heel</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Pure Platinum/Wolf Grey/White/White</span></li>\n	<li><span style=\"font-size:20px\">Style: DX3279-010</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: Vietnam</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Air Max 97</strong></span></p>\n\n<p><span style=\"font-size:20px\">Legend has it that the Air Max 97 was inspired by Tokyo&#39;s lightning-fast transport system. Nicknamed the &quot;silver bullet&quot;, the innovative full-length Air cushioning and sleek, reflective design truly made the Air Max 97 the shoe for the future.</span></p>', 1, 1, 1, 0, 0, '2022-10-26 02:14:03', '2022-10-26 14:42:19'),
(77, 'Air Jordan 1 Zoom CMFT', NULL, 4109000, 0, 0, 'https://api.trungthanhweb.com/images/2fa955ff-ddd3-45ef-a3bb-9803a5b13816.webp', 'Air Jordan 1 Zoom CMFT', '<p><span style=\"font-size:20px\">Making iconic style even more comfortable. The Air Jordan 1 Zoom Cmft remakes the 1st Air Jordan with lightweight, low-profile cushioning and elements that improve wearability. Leathers and textiles in the upper have a broken-in feel. A lined, padded collar cups the heel for a secure fit.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">A Zoom Air unit provides lightweight, responsive cushioning.</span></li>\n	<li><span style=\"font-size:20px\">Genuine and synthetic leather and textile materials in the upper for durability.</span></li>\n	<li><span style=\"font-size:20px\">Lined, padded collar provides comfort around the heel and ankle.</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Product Details</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Foam sole with rubber sidewalls</span></li>\n	<li><span style=\"font-size:20px\">Rubber traction</span></li>\n	<li><span style=\"font-size:20px\">Sockliner</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Black/Light Smoke Grey/White</span></li>\n	<li><span style=\"font-size:20px\">Style: CT0978-001</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: China</span></li>\n</ul>', 1, 1, 1, 0, 0, '2022-10-26 02:15:51', '2022-10-26 14:42:18'),
(78, 'Jordan Delta 3 Mid', NULL, 4409000, 0, 0, 'https://api.trungthanhweb.com/images/298632e6-5c00-4a5f-865b-7ca01f4e569d.webp', 'Jordan Delta 3 Mid', '<p><span style=\"font-size:20px\">Inspired by &#39;90s on-court gear and the Space-Age aesthetic, the Delta 3 is ready to launch. With super-lightweight technical materials, they have a retro-futuristic look and feel. This is the next-gen footwear that&#39;s gonna take you into tomorrow.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Technical materials like polyester textiles and synthetic leathers make for a lightweight and durable upper.</span></li>\n	<li><span style=\"font-size:20px\">Thin tongue and collar create a less constricting fit.</span></li>\n	<li><span style=\"font-size:20px\">Jumpman logo and &quot;watermark&quot; adds subtle branding.</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Black/Anthracite/White/Chile Red</span></li>\n	<li><span style=\"font-size:20px\">Style: DR7614-060</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: Vietnam</span></li>\n</ul>', 1, 1, 1, 0, 0, '2022-10-26 02:17:40', '2022-10-26 14:42:17'),
(79, 'NikeCourt Legacy Suede', NULL, 2189000, 0, 0, 'https://api.trungthanhweb.com/images/69b6bb18-9e5f-4bba-948c-1027de7abbe4.webp', 'NikeCourt Legacy Suede', '<p><span style=\"font-size:20px\"><strong>COURT-INSPIRED CLASSIC.</strong></span></p>\n\n<p><span style=\"font-size:20px\">Honouring its history rooted in tennis culture, the NikeCourt Legacy Suede brings you a classic, easy-to-wear design. Crafted from luscious suede and featuring heritage details like the Swoosh licence plate on the back, the style bridges sport and fashion.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Suede upper provides a classic look that&#39;s easy to break in.</span></li>\n	<li><span style=\"font-size:20px\">Full-length rubber outsole with herringbone traction pattern delivers multi-surface traction.</span></li>\n	<li><span style=\"font-size:20px\">Low-cut collar looks sleek and feels great.</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Product Details</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Plush foam insole</span></li>\n	<li><span style=\"font-size:20px\">Swoosh licence plate on the back heel tape</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Cobblestone/Black/Gum Light Brown/White</span></li>\n	<li><span style=\"font-size:20px\">Style: DH0956-002</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: Indonesia</span></li>\n</ul>', 1, 1, 1, 0, 0, '2022-10-26 02:19:11', '2022-10-26 14:41:58'),
(80, 'Nike Air Max 270', NULL, 4409000, 0, 0, 'https://api.trungthanhweb.com/images/6b729ed5-c035-4be6-8d96-b349be6e844c.webp', 'Nike Air Max 270', '<p><span style=\"font-size:20px\"><strong>LEGENDARY AIR GETS LIFTED.</strong></span></p>\n\n<p><span style=\"font-size:20px\">Nike&#39;s first lifestyle Air Max brings you style, comfort and big attitude in the Nike Air Max 270. The design draws inspiration from Air Max icons, showcasing Nike&#39;s greatest innovation with its large window and fresh array of colours.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">The Max Air 270 unit delivers unrivalled, all-day comfort.</span></li>\n	<li><span style=\"font-size:20px\">The sleek, running-inspired design roots you to everything Nike.</span></li>\n	<li><span style=\"font-size:20px\">Woven and synthetic fabric on the upper provides a lightweight fit and airy feel.</span></li>\n	<li><span style=\"font-size:20px\">Foam midsole feels soft and comfortable.</span></li>\n	<li><span style=\"font-size:20px\">The stretchy inner sleeve and bootie-like construction create a personalised fit.</span></li>\n	<li><span style=\"font-size:20px\">Rubber on the outsole adds traction and durability.</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Product Details</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Mesh details for an airy feel</span></li>\n	<li><span style=\"font-size:20px\">Synthetic and textile upper.</span></li>\n	<li><span style=\"font-size:20px\">2-piece midsole</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: White/Anthracite/Team Red/Black</span></li>\n	<li><span style=\"font-size:20px\">Style: AH8050-199</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: Indonesia</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Nike Air Max Origins</strong></span></p>\n\n<p><span style=\"font-size:20px\">Revolutionary Air technology first made its way into Nike footwear in 1978. In 1987, the Air Max 1 debuted with visible Air technology in its heel, allowing fans more than just the feel of Air cushioning&mdash;suddenly they could see it. Since then, next-generation Air Max shoes have become a hit with athletes and collectors by offering striking colour combinations and reliable, lightweight cushioning.</span></p>', 1, 1, 1, 0, 0, '2022-10-26 02:24:26', '2022-10-26 14:41:57'),
(81, 'Nike Offcourt', NULL, 1019000, 0, 0, 'https://api.trungthanhweb.com/images/01bfdb19-0b1b-4fe7-bfa5-587701c12349.webp', 'Nike Offcourt', '<p><span style=\"font-size:20px\"><strong>UNCOMPROMISING COMFORT, INFINITE VERSATILITY.</strong></span></p>\n\n<p><span style=\"font-size:20px\">These slides are designed to help you relax and recharge. Innovative dual-layered foam underfoot pairs with a plush strap to bring the comfort, while the iconic AF-1 pivot circle pattern on the outsole and block-letter branding casually nod to heritage hoops. What are you waiting for? Get lounging.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Premium Feel</strong></span></p>\n\n<p><span style=\"font-size:20px\">The contoured footbed cradles the foot, while dual-density foam adds plush underfoot cushioning and stability.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>360 Degrees of Comfort</strong></span></p>\n\n<p><span style=\"font-size:20px\">The soft strap and binding on the upper ensure top-of-the-foot comfort.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Made for Mobility</strong></span></p>\n\n<p><span style=\"font-size:20px\">Deep flex grooves bend with your foot for a natural feel.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Added Grip</strong></span></p>\n\n<p><span style=\"font-size:20px\">Contouring at the toe provides additional grip and support, while the concentric outsole adds multi-surface traction.</span></p>', 1, 1, 1, 0, 0, '2022-10-26 02:26:56', '2022-10-26 14:41:56'),
(82, 'Nike Venture Runner', NULL, 2069000, 0, 0, 'https://api.trungthanhweb.com/images/38dbcdf8-a4f7-47bb-aab8-74251b2e6e63.webp', 'Nike Venture Runner', '<p><span style=\"font-size:20px\"><strong>&#39;80S DNA. MYTHICAL COMFORT.</strong></span></p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"font-size:20px\">The Nike Venture Runner nods to the iconic shoes of the &#39;80s that started the running revolution. The exposed stitching, high-flex upper and micro-branded heel clip add fresh DNA to the classic athletics look, while its airy mesh and new, soft insole elevate the feel.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">The foam midsole feels comfortable for all-day wear and combines with a soft sockliner that elevates the feel.</span></li>\n	<li><span style=\"font-size:20px\">The suede upper adds a retro, athletics-inspired look while airy mesh keeps it breathable.</span></li>\n	<li><span style=\"font-size:20px\">The reflective design dots, zig-zag stitching and &quot;NIKE SPORTSWEAR&quot; on the heel clip add premium details with a modern edge.</span></li>\n	<li><span style=\"font-size:20px\">The rubber Waffle-inspired sole adds Nike DNA, excellent traction and durability.</span></li>\n	<li><span style=\"font-size:20px\">The thin TPU heel clip adds a twist to OG Nike running while adding stability.</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Product Details</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Not intended for use as Personal Protective Equipment</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Dark Smoke Grey/White/Dark Smoke Grey/Pure Platinum</span></li>\n	<li><span style=\"font-size:20px\">Style: CK2944-014</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: Indonesia</span></li>\n</ul>', 1, 1, 1, 0, 0, '2022-10-26 02:29:03', '2022-10-26 14:41:54'),
(83, 'Nike Victori One', NULL, 1019000, 0, 0, 'https://api.trungthanhweb.com/images/042b0779-edcd-45eb-adcb-10ee0e5d41fa.webp', 'Nike Victori One', '<p><span style=\"font-size:20px\"><strong>LEGENDARY COMFORT, REMASTERED.</strong></span></p>\n\n<p><span style=\"font-size:20px\">From the beach to the streets, the Nike Victori One perfects a classic, must-have design. Delivering lightweight comfort that&#39;s easy to wear, it features new, softer foam that feels comfortable while the contoured footbed with grip pattern helps cradle and hold your foot in place. The wide, padded strap feels as good as it looks.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">The new, softer foam and mechanical cushioning adds unbelievable comfort that lasts.</span></li>\n	<li><span style=\"font-size:20px\">The contoured footbed cradles and supports your foot while its grip pattern helps keep your foot in place.</span></li>\n	<li><span style=\"font-size:20px\">The rolled top edge of the strap adds to the comfort while its thick padding feels soft.</span></li>\n	<li><span style=\"font-size:20px\">The wider strap adds additional space, accommodating more foot sizes.</span></li>\n	<li><span style=\"font-size:20px\">The tooling features a new pattern for added traction.</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Product Details</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Bold &quot;NIKE&quot; and Swoosh on the strap let you rep your brand</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Black/Black/White</span></li>\n	<li><span style=\"font-size:20px\">Style: CN9678-008</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: Vietnam,Indonesia</span></li>\n</ul>', 1, 1, 1, 0, 0, '2022-10-26 02:30:30', '2022-10-26 14:41:53'),
(84, 'Nike Air Force 1 Mid \'07 LX', NULL, 3829000, 0, 0, 'https://api.trungthanhweb.com/images/9c0914e5-8ce1-4616-bbf0-3a3b311cb1c0.webp', 'Nike Air Force 1 Mid \'07 LX', '<p><span style=\"font-size:20px\">The original high-flier. From era-echoing, &#39;80s construction to bold details and nothin&#39;-but-net style, the AF-1 elevates your game with premium materials, plush ankle padding and an adjustable strap.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">From tough stitching to pristine materials to the cupsole design, it delivers durable style that&#39;s smoother than backboard glass.</span></li>\n	<li><span style=\"font-size:20px\">Smooth leather is easy to clean.</span></li>\n	<li><span style=\"font-size:20px\">Originally designed for performance hoops, the Air cushioning delivers lasting comfort.</span></li>\n	<li><span style=\"font-size:20px\">Hook-and-loop strap lets you customise your fit.</span></li>\n	<li><span style=\"font-size:20px\">Rubber outsole adds traction and durability.</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Product Details</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Padded collar</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Anthracite/Anthracite/Summit White/Black</span></li>\n	<li><span style=\"font-size:20px\">Style: DV7585-001</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: China</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Air Force 1</strong></span></p>\n\n<p><span style=\"font-size:20px\">Debuting in 1982 as a basketball must-have, the Air Force 1 came into its own in the &#39;90s. The clean look of the classic white-on-white AF-1 was endorsed from the basketball courts to the street and beyond. Finding its rhythm in hip-hop culture, releasing limited collabs and colourways, Air Force 1 became an iconic sneaker around the globe. And with over 2,000 iterations of this staple, its impact on fashion, music and sneaker culture can&#39;t be denied.</span></p>', 1, 1, 1, 0, 0, '2022-10-26 02:35:29', '2022-10-26 14:41:52'),
(85, 'Nike Waffle One Leather', NULL, 3369000, 0, 0, 'https://api.trungthanhweb.com/images/76d34816-cadf-4ffb-8d31-7b21fb92089f.webp', 'Nike Waffle One Leather', '<p><span style=\"font-size:20px\">Bringing a new look to the iconic Waffle franchise, we&#39;ve balanced everything you love most about heritage Nike running with fresh innovations. The Waffle outsole has been updated with moulded lugs for extra support and traction&mdash;providing a level of comfort you have to feel to believe. Plus, the durable heel clip and leather upper add to the classic look.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Leather and suede upper creates a clean and classic look.</span></li>\n	<li><span style=\"font-size:20px\">Dual-stacked midsole keeps the iconic wedge shape of the Waffle franchise for a soft, cushioned ride.</span></li>\n	<li><span style=\"font-size:20px\">Updated Waffle outsole has moulded lugs for added support, traction and durability.</span></li>\n	<li><span style=\"font-size:20px\">Low-cut collar has soft edges for a sleek look that feels comfortable.</span></li>\n	<li><span style=\"font-size:20px\">New plastic heel clip adds support.</span></li>\n</ul>\n\n<p><span style=\"font-size:20px\"><strong>Product Details</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Not intended for use as Personal Protective Equipment (PPE)</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Black/Black/White/White</span></li>\n	<li><span style=\"font-size:20px\">Style: DX9428-001</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: Vietnam</span></li>\n</ul>', 1, 1, 1, 0, 0, '2022-10-26 02:38:36', '2022-10-26 14:41:50'),
(86, 'Air Jordan 1 Mid SE', NULL, 3829000, 0, 0, 'https://api.trungthanhweb.com/images/ac831d21-b037-4e0a-87e6-cebdb346bc5e.webp', 'Air Jordan 1 Mid SE', '<p><span style=\"font-size:20px\">Stand out with timeless hoops style. Premium leather gets polished, shined and textured to deliver a fresh take on the shoe that started it all. Air cushioning and a classic design keep everything you love best from the original.</span></p>\n\n<p><span style=\"font-size:20px\"><strong>Benefits</strong></span></p>\n\n<ul>\n	<li><span style=\"font-size:20px\">Richly textured leather brings you premium off-court styling, durability and support.</span></li>\n	<li><span style=\"font-size:20px\">Mid-top design provides padding around the ankle.</span></li>\n	<li><span style=\"font-size:20px\">Air cushioning in the heel provides lightweight comfort with a springy feel.</span></li>\n	<li><span style=\"font-size:20px\">Cupsole construction adds stability and durability.</span></li>\n	<li><span style=\"font-size:20px\">Colour Shown: Black/White/Light Smoke Grey/University Red</span></li>\n	<li><span style=\"font-size:20px\">Style: DM1200-016</span></li>\n	<li><span style=\"font-size:20px\">Country/Region of Origin: China</span></li>\n</ul>', 1, 1, 1, 0, 0, '2022-10-26 02:40:35', '2022-10-26 14:41:31'),
(87, 'Nike Air Force 1 \'07 LV8', NULL, 3239000, 0, 0, 'https://api.trungthanhweb.com/images/246cc407-3fe8-4d32-a24d-cbd5335b1d0c.webp', 'Nike Air Force 1 \'07 LV8', '<p>&quot;Nike Athletic Club&quot;, our fictional athletics team, brings &#39;70s inspiration to streetwear staples. Mixing retro fun with iconic hoops style, the Nike Air Force 1 &#39;07 LV8 delivers a fresh spin on what you know best: stitched overlays, bold colours and the perfect amount of hoops style to make heads turn. Era-echoing suede mixes with crisp underlays that are smoother than backboard glass, while a letterman style patch on the heel adds a varsity finish.</p>', 1, 1, 1, 0, 0, '2022-10-26 03:04:31', '2022-10-27 06:25:57'),
(88, 'Nike Air Force 1 \'07 SE', NULL, 3239000, 0, 1, 'https://api.trungthanhweb.com/images/d1f97667-a5d4-4e36-98a2-e32299d4d9eb.webp', 'Nike Air Force 1 \'07 SE', '<p>Celebrating 40 years of pushing sport and fashion boundaries, this commemorative AF-1 mixes elements from beloved launches to highlight the timeless design&#39;s place in sneaker history. Gold accents, a debossed *40* on the heel and an honorary tongue label are just a few of the embellishments inviting you to the party. Completing the look, crisp leather in bold colours delivers a grand finale. Happy anniversary!</p>\n\n<ul>\n	<li>Colour Shown: Sail/Metallic Gold/Black/Team Red</li>\n	<li>Style: DQ7582-100</li>\n</ul>', 1, 1, 1, 0, 0, '2022-10-26 03:09:48', '2022-10-26 14:41:29'),
(89, 'Nike Air Force 1 High SE', NULL, 3669000, 0, 1, 'https://api.trungthanhweb.com/images/43d3a687-4f9f-4a2a-ae01-990ed17e6ce4.webp', 'Nike Air Force 1 High SE', '<p>Celebrating 40 years of pushing sport and fashion boundaries. Hailing from Beaverton, Oregon. From the class of &#39;82. The tried-and-tested starter for every outfit. With nothin&#39;-but-net style. The one. The only. Your Nike Air Force 1 High.</p>\n\n<ul>\n	<li>Colour Shown: Malachite/Sail/Metallic Gold/Brown Basalt</li>\n	<li>Style: DQ7584-300</li>\n</ul>', 1, 1, 1, 0, 0, '2022-10-26 03:20:29', '2022-10-26 14:41:28'),
(90, 'Nike Air Force 1 \'07 Next Nature', NULL, 2929000, 0, 1, 'https://api.trungthanhweb.com/images/afa14aa1-296d-4d81-b527-a43a25f04198.webp', 'Nike Air Force 1 \'07 Next Nature', '<p>The radiance lives on in the Nike Air Force 1 &#39;07 Next Nature&mdash;the basketball original that lets you do good by looking good. Made from at least 20% recycled materials by weight, it keeps everything you love best: tried and true AF-1 style and comfortable cushioning.</p>\n\n<ul>\n	<li>Colour Shown: White/White/Gold Suede</li>\n	<li>Style: DN1430-104</li>\n</ul>', 1, 1, 1, 0, 0, '2022-10-26 03:23:11', '2022-10-26 14:41:26'),
(91, 'Nike Sportswear Icon Clash', NULL, 2859000, 20, 1, 'https://api.trungthanhweb.com/images/46cf6ab8-8f21-482e-9872-bc00de469f52.webp', 'Nike Sportswear Icon Clash', '<p>The Nike Sportswear Icon Clash Boyfriend Jacket is a baggy fit, lightweight layer that loves vintage style just as much as you do. The embroidered &quot;Solo Swoosh&quot; logo on the upper left nods to &#39;90s Nike styles when the Swoosh made its first solo appearance.</p>\n\n<ul>\n	<li>Colour Shown: Sand Drift/Atomic Green</li>\n	<li>Style: DM6567-126</li>\n</ul>', 1, 2, 1, 0, 0, '2022-10-26 03:46:39', '2022-10-26 14:41:26'),
(92, 'Nike Repel Icon Clash', NULL, 2649000, 0, 1, 'https://api.trungthanhweb.com/images/bdb712a0-2419-4114-93ed-192ab23ef102.webp', 'Nike Repel Icon Clash', '<p>Wet, windy weather is just another obstacle to new PBs. This Icon Clash jacket repels water while you hit your distance. We&#39;ve got you covered with a hood and reflective design elements, so you can keep going for runs long and short.</p>\n\n<ul>\n	<li>Colour Shown: Black/Black/White</li>\n	<li>Style: DQ6680-010</li>\n</ul>', 1, 2, 1, 0, 0, '2022-10-26 03:48:50', '2022-10-27 06:25:55'),
(93, 'Nike Sportswear Phoenix Fleece', NULL, 1579000, 0, 1, 'https://api.trungthanhweb.com/images/5549ad76-ff5a-4171-b053-5babe37b12bf.webp', 'Nike Sportswear Phoenix Fleece', '<p>Rise up and transform your fleece wardrobe with strong cosy vibes. These oversized Phoenix Fleece joggers have extra room in the legs for a fit that&#39;s comfy and relaxed. The taller ribbed waistline sits higher on your hips for a stay-put, snug feel and a bold look.</p>\n\n<ul>\n	<li>Colour Shown: Light Silver/Sail</li>\n	<li>Style: DQ5888-034</li>\n</ul>', 1, 2, 1, 0, 0, '2022-10-26 03:51:21', '2022-10-26 14:41:06'),
(94, 'Nike ACG Dri-FIT ADV \'Goat Rocks\'', NULL, 1069000, 15, 1, 'https://api.trungthanhweb.com/images/fdcd60c0-e80d-4ead-b909-0033af795d4b.webp', 'Nike ACG Dri-FIT ADV \'Goat Rocks\'', '<p>A go-to top to keep you cool and comfortable whether you&#39;re on the trail or en route to your next adventure, the Nike ACG Dri-FIT ADV &#39;Goat Rocks&#39; Tank&#39;s cropped, loose fit keeps things breezy and relaxed. This product is made from 100% recycled polyester fibres.</p>\n\n<ul>\n	<li>Colour Shown: Canyon Purple</li>\n	<li>Style: DO9272-553</li>\n</ul>', 1, 2, 1, 0, 0, '2022-10-26 03:54:52', '2022-10-26 14:41:05'),
(95, 'Nike Sportswear Phoenix Fleecee', NULL, 1839000, 0, 1, 'https://api.trungthanhweb.com/images/2bff2e80-f1c6-44ef-81ce-052cf4bb0bac.webp', 'Nike Sportswear Phoenix Fleecee', '<p>Rise up and transform your fleece wardrobe with strong cosy vibes. With an extreme drop in the shoulders and extra room in the body, this voluminous Phoenix Fleece hoodie will never hold you back or hem you in. Exaggerated details (like extra-tall ribbing and an oversized front pocket) ensure your look is anything but ordinary.</p>\n\n<ul>\n	<li>Colour Shown: Arctic Orange/Sail</li>\n	<li>Style: DQ5859-800</li>\n</ul>', 1, 2, 1, 0, 0, '2022-10-26 03:58:53', '2022-10-26 14:41:04'),
(96, 'Nike Sportswear Icon Clash White', NULL, 1169000, 0, 1, 'https://api.trungthanhweb.com/images/e42dbedf-8a3a-4f94-be8d-eef8567e4423.webp', 'Nike Sportswear Icon Clash White', '<p>Choose your own adventure with this spacious top. Its built-in sash helps you style it your way, while its relaxed fit ensures a casual, comfortable feel. This product is made from at least 75% organic cotton fibres.</p>\n\n<ul>\n	<li>Colour Shown: White/Atomic Green</li>\n	<li>Style: DM6575-100</li>\n</ul>', 1, 2, 1, 0, 0, '2022-10-26 04:06:06', '2022-10-26 14:41:02'),
(97, 'Liverpool F.C. 2022/23 Match Home', NULL, 3779000, 0, 0, 'https://api.trungthanhweb.com/images/3ca1ceaf-f1a2-4c4b-9986-57cc49482f55.webp', 'Liverpool F.C. 2022/23 Match Home', '<p>Like other shirts from our Match collection, this one pairs authentic design details with lightweight, quick-drying fabric to help keep the world&#39;s biggest football stars cool and comfortable on the pitch. This product is made from 100% recycled polyester fibres.</p>\n\n<ul>\n	<li>Colour Shown: Tough Red/Team Red/White</li>\n	<li>Style: DJ7647-609</li>\n</ul>', 1, 2, 1, 0, 0, '2022-10-26 04:10:49', '2022-10-26 14:41:01'),
(98, 'Nike Sportswear', NULL, 1169000, 0, 0, 'https://api.trungthanhweb.com/images/98d285b7-a5b2-48ed-a319-633673ea207b.webp', 'Nike Sportswear', '<p>The Nike Sportswear Top has an easy fit and a clean design perfect for everyday wear. Its jersey fabric is made from 100% sustainable materials, using a blend of recycled polyester, recycled cotton and organic cotton fibres. The blend is at least 10% recycled fibres or at least 10% organic cotton fibres.</p>\n\n<ul>\n	<li>Colour Shown: Black/White</li>\n	<li>Style: DM5638-010</li>\n</ul>', 1, 2, 1, 0, 0, '2022-10-26 04:12:30', '2022-10-27 06:25:53'),
(99, 'Jordan Flight Heritage 85', NULL, 1119000, 0, 0, 'https://api.trungthanhweb.com/images/45aa161b-9170-4c6e-a48c-d1468cf374a7.webp', 'Jordan Flight Heritage 85', '<p>Prepare for take-off in this relaxed tee. It&#39;s soft yet structured thanks to heavyweight cotton, and the slightly dropped shoulders give you a little extra room to move. The iconic Flight logo is paired with stacked digitised graphics for a modern, globetrotting touch.</p>\n\n<ul>\n	<li>Colour Shown: Sail</li>\n	<li>Style: DV3073-133</li>\n</ul>', 1, 2, 1, 0, 0, '2022-10-26 04:15:50', '2022-10-26 14:40:59'),
(100, 'Tiger Woods', NULL, 2399000, 0, 0, 'https://api.trungthanhweb.com/images/tiger-woods-graphic-golf-crew-ftNvGv.jfif', 'Tiger Woods', '<p>Say hi to Frank. You&#39;ve seen him on Tiger&#39;s clubs. Now you can wear him on this fleece crew. We made this one warm and cosy, just like a well-loved sweatshirt.</p>\n\n<ul>\n	<li>Colour Shown: Dark Grey Heather/White</li>\n	<li>Style: DN1962-063</li>\n</ul>', 1, 2, 1, 0, 0, '2022-10-26 04:18:41', '2022-10-26 14:40:58'),
(101, 'Nike Dri-FIT Q5', NULL, 969000, 0, 0, 'https://api.trungthanhweb.com/images/ca9394d5-3dab-479c-b49c-f5fc3abeae52.webp', 'Nike Dri-FIT Q5', '<p>This sweat-wicking top helps keep you cool, dry and comfortable through all your workouts&mdash;this time with a bold take on the Swoosh logo. It brings that soft, lightweight feel to help you focus on your exercise routine.</p>\n\n<ul>\n	<li>Colour Shown: Black/Summit White/Summit White</li>\n	<li>Style: DQ6627-010</li>\n</ul>', 1, 2, 1, 0, 0, '2022-10-26 04:26:44', '2022-10-27 06:44:29'),
(102, 'Túi Đeo Chéo Gucci Handbags Padlock', NULL, 39700000, 0, 1, 'https://api.trungthanhweb.com/images/tui-deo-cheo-gucci-handbags-padlock-432182-dj2lg-1055-shoulder-bag-mau-den-size-20-634f601d895e8-19102022092533.jpg', 'Túi Đeo Chéo Gucci Handbags Padlock', '<p style=\"text-align:start\"><span style=\"font-size:18.6667px\"><span style=\"color:#000000\"><span style=\"font-family:Arial\">T&uacute;i ở trong t&igrave;nh trạng tuyệt vời.&nbsp;Da l&agrave; trong t&igrave;nh trạng tuyệt vời.&nbsp;Nội thất l&agrave; trong t&igrave;nh trạng tuyệt vời.&nbsp;Phần cứng cho thấy độ m&ograve;n tối thiểu như h&igrave;nh minh họa.&nbsp;Bạn sẽ th&iacute;ch chiếc t&uacute;i xinh đẹp n&agrave;y.</span></span></span></p>\n\n<ul>\n	<li>Da Guccissima đen&nbsp; &nbsp;&nbsp;</li>\n	<li>Phần cứng t&ocirc;ng m&agrave;u v&agrave;ng</li>\n	<li>T&uacute;i b&ecirc;n ngo&agrave;i&nbsp; &nbsp;</li>\n	<li>D&acirc;y đeo x&iacute;ch trượt c&oacute; thể được đeo như một d&acirc;y đeo vai với độ rơi 20 &quot;hoặc c&oacute; thể được đeo như một tay cầm tr&ecirc;n c&ugrave;ng với độ rơi 11&quot;&nbsp; &nbsp;</li>\n	<li>1 ngăn c&oacute; kh&oacute;a k&eacute;o b&ecirc;n trong v&agrave; 2 t&uacute;i vừa&nbsp;&nbsp;</li>\n	<li>Kh&oacute;a đ&oacute;ng cửa&nbsp;&nbsp;</li>\n	<li>L&oacute;t sợi nhỏ lạc đ&agrave; với bề mặt giống như da lộn&nbsp; &nbsp;&nbsp;</li>\n	<li>Sản xuất tại &Yacute;</li>\n</ul>', 1, 14, 13, 0, 0, '2022-10-26 04:40:17', '2022-10-27 13:34:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `idbrand` int(11) NOT NULL,
  `brandname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`idbrand`, `brandname`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nike', 0, '2022-09-25 06:12:14', '2022-10-17 04:58:39'),
(3, 'Adidas', 0, '2022-09-25 07:53:45', '2022-10-21 12:29:13'),
(13, 'Gucci', 0, '2022-09-26 12:04:52', '2022-10-26 04:32:28'),
(17, 'MLB', 0, '2022-10-17 04:57:34', '2022-10-21 14:13:45'),
(18, 'LV', 0, '2022-10-24 05:55:34', '2022-10-24 06:13:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `idSize` int(11) NOT NULL,
  `sizename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sizeinfo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`idSize`, `sizename`, `sizeinfo`, `created_at`, `updated_at`) VALUES
(2, '40', '24.6 - 25 (cm)', '2022-10-20 07:41:56', '2022-10-26 04:53:28'),
(3, '39', '24.1 - 24.5 (cm)', '2022-10-20 09:53:27', '2022-10-26 04:52:51'),
(4, '41', '25.1 - 25.5 (cm)', '2022-10-25 09:46:57', '2022-10-26 04:54:07'),
(5, 'M', 'Dài áo: 69 (cm) - Ngang vai: 42 (cm)', '2022-10-26 05:01:08', '2022-10-26 05:01:08'),
(6, 'L', 'Dài áo: 71.5 (cm) - Ngang vai: 44 (cm)', '2022-10-26 05:01:31', '2022-10-26 05:01:31'),
(7, 'XL', 'Dài áo: 73.5 (cm) - Ngang vai: 46 (cm)', '2022-10-26 05:02:49', '2022-10-26 05:02:49'),
(8, 'XXL', 'Dài áo: 76 (cm) - Ngang vai: 48 (cm)', '2022-10-26 05:03:50', '2022-10-26 05:03:50'),
(9, 'S', 'Dài áo: 67.5 (cm) - Ngang vai: 40.5 (cm)', '2022-10-26 05:04:52', '2022-10-26 05:04:52'),
(10, 'Nhỏ (Small)', 'Kích thước đường chéo: 15.5 – 30.5cm (6 - 12 inch)', '2022-10-26 05:08:16', '2022-10-26 05:08:46'),
(11, 'Trung (Medium)', 'Kích thước đường chéo: 30 – 35.5cm (12 - 14 inch)', '2022-10-26 05:10:01', '2022-10-26 05:10:01'),
(12, 'Lớn (Large)', 'Kích thước đường chéo: 35.5 – 40.5cm (14 - 16 inch)', '2022-10-26 05:11:03', '2022-10-26 05:11:03'),
(13, 'Ngoại Cỡ (Extra Large)', 'Kích thước đường chéo: >40.5cm (> 16inch)', '2022-10-26 05:12:28', '2022-10-26 05:12:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tag`
--

CREATE TABLE `tbl_tag` (
  `idtag` int(11) NOT NULL,
  `tagname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tag`
--

INSERT INTO `tbl_tag` (`idtag`, `tagname`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MLB', 1, '2022-10-07 08:19:21', '2022-10-21 15:22:17'),
(2, 'Adidas', 0, '2022-10-21 01:47:42', '2022-10-21 15:22:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userrole`
--

CREATE TABLE `userrole` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `userrole`
--

INSERT INTO `userrole` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, '2022-09-18 14:53:08', NULL),
(4, 'Nhân viên', 1, '2022-10-08 01:27:53', '2022-10-08 02:11:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `password2`, `fullName`, `image`, `email`, `email_verified_at`, `ggId`, `idRole`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$fYOZl5tLHwi7h9zk/R7vyOvI.mmiUu7xfEpXaxLjjJ7ObbadBUGTy', NULL, 'TRUNG THÀNH NGUYỄN LÊ', 'https://lh3.googleusercontent.com/a/ALm5wu32PxIGLEN6hd0R0yjT5QS0nGd1Vnu-F6-QGZWm=s96-c', 'leodomsolar@gmail.com', '2022-10-27 09:59:05', '114555822307848701316', 1, 1, NULL, '2022-09-17 11:22:33', '2022-10-27 09:59:05'),
(6, 'Thành Trọng', '$2y$10$cVqSxUStAnGWJAcwIpS5ce3ATjJP2MCBYH4dYBZiwx6c6ytwM.xN.', NULL, 'thành Trọng', 'https://lh3.googleusercontent.com/a/ALm5wu297-7buAfWv7ENssUUMmqN3Lq3UauHN-lhNkjSUw=s96-c', 'thanhtrongtqt@gmail.com', '2022-10-13 09:02:34', '118099198857091249241', 4, 1, NULL, '2022-10-10 14:47:02', '2022-10-13 09:02:34'),
(7, 'Minh Phụng', '$2y$10$28acreq5Uwa9dYj1M1AIVu.rTwZrImJltjO2HHht5D1I9I06w/oNa', NULL, 'Phụng Trương', 'https://lh3.googleusercontent.com/a/ALm5wu2Q0Jg0MZ-SOrFgMagb8Zh-lfEpnQkN3OtV4GTU=s96-c', 'tmpdz7820@gmail.com', '2022-10-23 14:45:07', '112312702147163830976', 4, 1, NULL, '2022-10-10 14:47:25', '2022-10-23 14:45:07'),
(8, 'Cao Duy', '$2y$10$kJvX/KsI9yvwTVikB81ieOdb6tUNb.qxO7JqzFr7H2vksox34cnNO', NULL, 'Do Cao Duy', 'https://lh3.googleusercontent.com/a/ALm5wu2NcUyQaq4HtNJOtu1RYgDZvVNOuNzK08kVCKLq=s96-c', 'docaoduy132@gmail.com', '2022-10-21 03:14:57', '103344294786089257594', 4, 1, NULL, '2022-10-10 14:47:43', '2022-10-21 03:14:57'),
(9, 'Cẩn Nguyễn', '$2y$10$g.DyY/.n702GazGgUU9fmujrnYKN.iZe1IitRv7LuS/NSRorLbOHS', NULL, 'Cẩn Nguyễn', 'https://lh3.googleusercontent.com/a/ALm5wu2gR-37atPuZWGNIrnaQlaRG-krZlzdPq-Y4Cm8=s96-c', 'nvcan03062002@gmail.com', '2022-10-25 09:49:53', '113072079735144867718', 4, 1, NULL, '2022-10-10 14:49:43', '2022-10-25 09:49:53'),
(14, 'TRUNG THÀNH', '$2y$10$0DelNARw/RIn/M1s9VLcdO8QnbWfmAFafvxnKQYGxBqT.SXxe3vlq', NULL, 'Thành Nguyễn Lê', 'https://lh3.googleusercontent.com/a/ALm5wu2IIOp1ZzJgkqgFFHeZJO9WuNmk6arqCkfauhxV=s96-c', 'trungthanh01233@gmail.com', '2022-10-27 09:57:20', '106391138123746738980', 4, 1, NULL, '2022-10-27 09:55:42', '2022-10-27 09:57:20');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand_categrory`
--
ALTER TABLE `brand_categrory`
  ADD PRIMARY KEY (`idBrand`,`idCate`),
  ADD KEY `idCate` (`idCate`);

--
-- Chỉ mục cho bảng `categrory`
--
ALTER TABLE `categrory`
  ADD PRIMARY KEY (`idcate`);

--
-- Chỉ mục cho bảng `cate_posts`
--
ALTER TABLE `cate_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `login`
--
ALTER TABLE `login`
  ADD KEY `id` (`idUser`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_idcateposts_foreign` (`idcatePosts`);

--
-- Chỉ mục cho bảng `prodstorage`
--
ALTER TABLE `prodstorage`
  ADD PRIMARY KEY (`idStorage`),
  ADD KEY `idSize` (`idSize`),
  ADD KEY `idProd` (`idProd`);

--
-- Chỉ mục cho bảng `prodtage`
--
ALTER TABLE `prodtage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prodtage_idprod_foreign` (`idProd`),
  ADD KEY `prodtage_idtag_foreign` (`idTag`);

--
-- Chỉ mục cho bảng `productgallery`
--
ALTER TABLE `productgallery`
  ADD PRIMARY KEY (`idProd`,`imagename`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_idcate_foreign` (`idcate`),
  ADD KEY `idBrand` (`idBrand`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`idbrand`);

--
-- Chỉ mục cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`idSize`);

--
-- Chỉ mục cho bảng `tbl_tag`
--
ALTER TABLE `tbl_tag`
  ADD PRIMARY KEY (`idtag`);

--
-- Chỉ mục cho bảng `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`email`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_idrole_foreign` (`idRole`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categrory`
--
ALTER TABLE `categrory`
  MODIFY `idcate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `cate_posts`
--
ALTER TABLE `cate_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `prodstorage`
--
ALTER TABLE `prodstorage`
  MODIFY `idStorage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=811;

--
-- AUTO_INCREMENT cho bảng `prodtage`
--
ALTER TABLE `prodtage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `idbrand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `idSize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_tag`
--
ALTER TABLE `tbl_tag`
  MODIFY `idtag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `userrole`
--
ALTER TABLE `userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `brand_categrory`
--
ALTER TABLE `brand_categrory`
  ADD CONSTRAINT `brand_categrory_ibfk_1` FOREIGN KEY (`idBrand`) REFERENCES `tbl_brand` (`idbrand`) ON UPDATE CASCADE,
  ADD CONSTRAINT `brand_categrory_ibfk_2` FOREIGN KEY (`idCate`) REFERENCES `categrory` (`idcate`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_idcateposts_foreign` FOREIGN KEY (`idcatePosts`) REFERENCES `cate_posts` (`id`);

--
-- Các ràng buộc cho bảng `prodstorage`
--
ALTER TABLE `prodstorage`
  ADD CONSTRAINT `prodStorage_ibfk_3` FOREIGN KEY (`idSize`) REFERENCES `tbl_size` (`idSize`),
  ADD CONSTRAINT `prodStorage_ibfk_4` FOREIGN KEY (`idProd`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `prodtage`
--
ALTER TABLE `prodtage`
  ADD CONSTRAINT `prodtage_idprod_foreign` FOREIGN KEY (`idProd`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `prodtage_idtag_foreign` FOREIGN KEY (`idTag`) REFERENCES `tbl_tag` (`idtag`);

--
-- Các ràng buộc cho bảng `productgallery`
--
ALTER TABLE `productgallery`
  ADD CONSTRAINT `productgallery_ibfk_1` FOREIGN KEY (`idProd`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idBrand`) REFERENCES `tbl_brand` (`idbrand`),
  ADD CONSTRAINT `products_idcate_foreign` FOREIGN KEY (`idcate`) REFERENCES `categrory` (`idcate`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_idrole_foreign` FOREIGN KEY (`idRole`) REFERENCES `userrole` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
