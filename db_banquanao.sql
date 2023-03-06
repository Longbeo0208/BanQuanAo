-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 19, 2021 lúc 11:08 AM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_matkinh`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_16_130836_create_tb_admin_table', 1),
(5, '2021_07_17_035437_create_tb_category_product', 2),
(6, '2021_07_21_064654_create_tb_brand_product', 3),
(7, '2021_07_22_020525_create_tb_product', 4),
(8, '2021_07_25_093538_create_tb_product', 5),
(9, '2021_07_25_093917_create_tb_product', 6),
(10, '2021_08_10_022931_create_tb_customer', 7),
(11, '2021_08_10_130226_create_tb_shipping', 8),
(12, '2021_08_10_130508_create_tb_shipping', 9),
(13, '2021_08_12_025404_create_tb_payment', 10),
(14, '2021_08_12_030538_create_tb_order', 10),
(15, '2021_08_12_035320_create_tb_order_details', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'longbeo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Thanh Long', '0923868321', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_brand`
--

CREATE TABLE `tb_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_brand`
--

INSERT INTO `tb_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(6, 'RAY BAN', 'Ray-Ban là thương hiệu kính thời trang cao cấp được thành lập vào năm 1936 bởi công ty Bausch & Lomb tại Hoa Kỳ, nổi tiếng với các dòng kính dành cho mọi thế hệ và phong cách như Wayfarer và Aviator.', 0, NULL, NULL),
(7, 'MOLSION', 'Molsion Eyewear là thương hiệu kính mắt thời trang cá tính được cộng đồng giới trẻ châu Á yêu chuộng, bởi những thiết kế đa sắc thái lấy cảm hứng từ sự chuyển hóa không ngừng của nghệ thuật và văn hóa đại chúng, tạo cơ hội cho những thế hệ mới bộc phá phong cách riêng.', 0, NULL, NULL),
(8, 'ARMANI EXCHANGE', 'Thương hiệu Armani Exchange là một phần của đế chế thời trang Armani tại Ý, lấy cảm hứng từ thế hệ trẻ mới mang phong cách đô thị và sinh động. Cũng như vậy, dòng kính mắt Armani Exchange cách tân những kiểu dáng kính kinh điển trở nên táo bạo và cá tính hơn.', 0, NULL, NULL),
(9, 'VOGUE', 'Được thành lập vào năm 1973 và mang cùng tên với tạp chí Vogue quyền lực nhất thế giới thời trang, thương hiệu kính Vogue Eyewear mang đến những xu hướng mới và hợp thời nhất dành cho những tâm hồn trẻ yêu mến thời trang đích thực.', 0, NULL, NULL),
(10, 'FLYER', 'Bộ sưu tập kính mắt Flyer kết hợp hài hoà giữa vẻ đẹp truyền thống và phong thái hiện đại, bằng cách sử dụng màu sắc tinh tế, thanh lịch và chi tiết sắc nét. Từng dòng sản phẩm đã tạo cho thương hiệu Flyer một phong cách riêng không thể nhầm lẫn với thương hiệu khác.', 0, NULL, NULL),
(11, 'ANCCI', 'Thương hiệu kính mắt Ancci lấy cảm hứng từ thành phố Barcelona, Tây Ban Nha thơ mộng và cổ điển. Phong cách thiết kế thanh lịch và sang trọng, cùng chất liệu titanium siêu nhẹ bền, Ancci là lựa chọn hoàn hảo dành cho nhân viên văn phòng, giới trí thức và doanh nhân thành đạt.', 0, NULL, NULL),
(12, 'OAKLEY', 'Thương hiệu kính thể thao Oakley được thành lập vào năm 1975 tại California, Hoa Kỳ. Oakley nổi tiếng với sự kết hợp hài hòa giữa cuộc sống và thể thao, là sản phẩm kính mắt được giới thể thao cả không chuyên và chuyên nghiệp ưa chuộng sử dụng, đặc biệt là dòng kính Oakley đạp xe.', 0, NULL, NULL),
(13, 'PUMA', 'Thương hiệu thời trang thể thao đa quốc gia Puma được biết đến với những dòng sản phẩm may mặc thể thao cao cấp, chất lượng và sành điệu. Dòng kính mắt Puma mang kiểu dáng khỏe khoắn và cá tính, dành cho những ai có lối sống năng động và muốn bắt kịp những xu thế thời trang mới nhất.', 0, NULL, NULL),
(14, 'NIKON', 'Thương hiệu Nikon vốn nổi tiếng trên toàn thế giới với dòng sản phẩm máy ảnh và ống kính chụp ảnh hàng đầu. Hiện nay, Nikon đã phát triển thành công một thế hệ sản phẩm kính mắt cao cấp, mang lại những trải nghiệm chưa từng có vượt qua những giới hạn thông thường.', 0, NULL, NULL),
(15, 'GUCCI', 'Gucci là thương hiệu thời trang cao cấp nổi tiếng của Ý, được coi là đã làm thay đổi gương mặt của thời trang xa xỉ trong thế kỉ 21. Dòng kính mắt Gucci thể hiện đẳng cấp chế tác tuyệt đỉnh của các bậc thầy thời trang Ý, với chất lượng và độ chi tiết không cái tên nào khác sánh bằng.', 0, NULL, NULL),
(16, 'DOLCE & GABBANA', 'Dolce & Gabbana là thương hiệu thời trang Ý nổi tiếng trên toàn thế giới và được nhiều ngôi sao Hollywood yêu mến. Dòng kính mắt D&G sở hữu những thiết kế thanh lịch và sang trọng, ứng dụng những vật liệu tinh khôi nhất và sự chú tâm tới chi tiết vượt xa mọi chuẩn mực.', 0, NULL, NULL),
(17, 'MONT BLANC', 'Mont Blanc, thương hiệu xa xỉ đến từ Đức với những dòng bút máy và phụ kiện thời trang cực phẩm mang tiêu chuẩn chất lượng cao nhất, lần đầu tiên giới thiệu bộ sưu tập kính mắt vào năm 2001. Kính mắt Mont Blanc biểu trưng cho hình ảnh lịch lãm, chuyên nghiệp của thế giới văn phòng, hướng đến người đeo kính muốn khẳng định vị thế trên thương trường bằng một phong cách ấn tượng.', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_category_product`
--

CREATE TABLE `tb_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_category_product`
--

INSERT INTO `tb_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(12, 'Nam', 'Kính nam tại Mắt Việt rất đa dạng mẫu mã và giá tiền, nhằm mang đến nhiều lựa chọn cho bạn.', 0, NULL, NULL),
(13, 'Nữ', 'Kính nữ có nhiều mẫu mới dành cho các bạn gái là tín đồ thời trang. Bộ sưu tập mới luôn được cập nhật tại Mắt Việt.', 0, NULL, NULL),
(14, 'Trẻ Em', 'Kính trẻ em tại Mắt Việt rất đa dạng mẫu mã và giá tiền, nhằm mang đến nhiều lựa chọn cho bạn.', 0, NULL, NULL),
(15, 'Nổi Bật', 'Danh Mục Nổi Bật', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_customer`
--

CREATE TABLE `tb_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_customer`
--

INSERT INTO `tb_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(12, 'Nguyễn Thành Long', 'ntl@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '09327321', NULL, NULL),
(13, 'Nguyễn Thành Long', 'longbeo@gmail.com', '25f9e794323b453885f5181f1b624d0b', '232321321', NULL, NULL),
(14, 'Nguyễn Thành Long', 'longbeo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0932732111', NULL, NULL),
(15, 'nguyen long', 'long@gmail.com', '9e97aba19c4de1b4ea7d69a8ecd3c30d', '028328312', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_order`
--

CREATE TABLE `tb_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_order`
--

INSERT INTO `tb_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(11, 14, 11, 12, '8,306,463.66', 'Đang chờ xử lý', NULL, NULL),
(12, 12, 12, 13, '4,153,232,220.83', 'Đang chờ xử lý', NULL, NULL),
(13, 14, 13, 14, '5,566,000.00', 'Đang chờ xử lý', NULL, NULL),
(14, 14, 14, 15, '6,025,800.00', 'Đang chờ xử lý', NULL, NULL),
(15, 14, 15, 16, '44,770,000.00', 'Đang chờ xử lý', NULL, NULL),
(16, 12, 16, 17, '36,300,000.00', 'Đang chờ xử lý', NULL, NULL),
(17, 14, 17, 18, '44,770,000.00', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_order_details`
--

CREATE TABLE `tb_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_order_details`
--

INSERT INTO `tb_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(19, 11, 2, 'baoboi1234', '3432423', 2, NULL, NULL),
(20, 12, 3, 'baoboi123111', '3432423323', 1, NULL, NULL),
(21, 13, 11, 'RAY-BAN RX7098 2000', '4600000', 1, NULL, NULL),
(22, 14, 19, 'FLYER BL1012 C90', '4980000', 1, NULL, NULL),
(23, 15, 36, 'MOLSION MS3013 A12', '18500000', 2, NULL, NULL),
(24, 16, 16, 'GUCCI GG0632S 004', '7500000', 4, NULL, NULL),
(25, 17, 36, 'MOLSION MS3013 A12', '18500000', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_payment`
--

CREATE TABLE `tb_payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_payment`
--

INSERT INTO `tb_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(12, '2', 'Đang chờ xử lý', NULL, NULL),
(13, '2', 'Đang chờ xử lý', NULL, NULL),
(14, '2', 'Đang chờ xử lý', NULL, NULL),
(15, '2', 'Đang chờ xử lý', NULL, NULL),
(16, '2', 'Đang chờ xử lý', NULL, NULL),
(17, '2', 'Đang chờ xử lý', NULL, NULL),
(18, '2', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_images`, `product_status`, `created_at`, `updated_at`) VALUES
(13, 'RAY-BAN RX7098 2000', 12, 6, '<p>M&atilde; sản phẩm: 0RX7098_200050.IO</p>\r\n\r\n<p>D&agrave;nh cho: Unisex</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 50mmx21mmx145mm</p>\r\n\r\n<p>M&agrave;u gọng: Đen b&oacute;ng/V&agrave;ng</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng m&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '4600000', 'Hinh 18.jpg', 0, NULL, NULL),
(14, 'RAY-BAN RX5154 5762', 13, 6, '<p>M&atilde; sản phẩm: 0RX5154_576251.I</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Nam/Nữ</p>\r\n\r\n<p>Bộ sưu tập: Ray-Ban Blaze</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 49mmx21mmx140mm</p>\r\n\r\n<p>M&agrave;u gọng: V&agrave;ng hồng</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng m&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '3700000', 'Hinh 266.jpg', 0, NULL, NULL),
(15, 'ANCCI AC93251 C1', 12, 11, '<p>M&atilde; sản phẩm: AC93251_C1.C</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Unisex</p>\r\n\r\n<p>M&agrave;u gọng: Đen/V&agrave;ng kịm</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng m&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Mắt cỡ lớn</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt tr&ograve;n</p>', '760000', 'Hinh 385.jpg', 0, NULL, NULL),
(16, 'GUCCI GG0632S 004', 15, 15, '<p>M&atilde; sản phẩm: GG0632S_004.IS</p>\r\n\r\n<p>Chủng loại: K&iacute;nh m&aacute;t</p>\r\n\r\n<p>D&agrave;nh cho: Nữ</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 56mmx20mmx145mm</p>\r\n\r\n<p>M&agrave;u gọng: Kem</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Xanh l&aacute;</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '7500000', 'Hinh 456.jpg', 0, NULL, NULL),
(17, 'PUMA PE0088OA 002', 12, 13, '<p>M&atilde; sản phẩm: PE0088OA_002.C</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Nam/Nữ</p>\r\n\r\n<p>Bộ sưu tập: Puma FW 2018</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 51mmx19mmx145mm</p>\r\n\r\n<p>M&agrave;u gọng: Xanh dương, Đồi mồi</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng m&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '1600000', 'Hinh 559.jpg', 0, NULL, NULL),
(18, 'DG3235F 2952', 12, 16, '<p>M&atilde; sản phẩm: 0DG3235F_295255.I</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Nam</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 55mmx16mmx140mm</p>\r\n\r\n<p>M&agrave;u gọng: Xanh l&aacute;</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng m&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '5300000', 'Hinh 654.jpg', 0, NULL, NULL),
(19, 'BL1012 C90', 15, 17, '<p>M&atilde; sản phẩm: BL1012_C90.CS</p>\r\n\r\n<p>Chủng loại: K&iacute;nh m&aacute;t</p>\r\n\r\n<p>D&agrave;nh cho: Nam</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 55mmx17mmx148mm</p>\r\n\r\n<p>M&agrave;u gọng: Bạc</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Ghi sẫm</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: C&oacute;</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '4980000', 'Hinh 747.jpg', 0, NULL, NULL),
(20, 'DG1293 1106', 13, 16, '<p>M&atilde; sản phẩm: 0DG1293_110653.I</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Nam</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 51mmx19mmx140mm</p>\r\n\r\n<p>M&agrave;u gọng: Ghi</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng m&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '6500000', 'Hinh 814.jpg', 0, NULL, NULL),
(21, 'PU0104S 002', 14, 13, '<p>M&atilde; sản phẩm: PU0104S_002.CS</p>\r\n\r\n<p>Chủng loại: K&iacute;nh m&aacute;t</p>\r\n\r\n<p>D&agrave;nh cho: Nam/Nữ</p>\r\n\r\n<p>Bộ sưu tập: Puma SS 2017</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 50mmx20mmx140mm</p>\r\n\r\n<p>M&agrave;u gọng: Đồi mồi</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: N&acirc;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '3890000', 'Hinh 997.jpg', 0, NULL, NULL),
(22, 'GUCCI GG0116S 005', 13, 15, '<p>M&atilde; sản phẩm: GG0116S_005.IS</p>\r\n\r\n<p>Chủng loại: K&iacute;nh m&aacute;t</p>\r\n\r\n<p>D&agrave;nh cho: Nữ</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 49mmx28mmx140mm</p>\r\n\r\n<p>M&agrave;u gọng: Đen</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Ghi</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Mắt m&egrave;o</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim</p>', '26500000', 'Hinh 1079.jpg', 0, NULL, NULL),
(23, 'NIKON NC3037 1439', 14, 14, '<p>M&atilde; sản phẩm: NC30371439.J</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Unisex</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 48mmx19mmx145mm</p>\r\n\r\n<p>M&agrave;u gọng: Ghi sẫm</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng m&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Tr&ograve;n</p>\r\n\r\n<p>Viền k&iacute;nh: Xẻ cước</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng</p>', '6580000', 'Hinh 1111.jpg', 0, NULL, NULL),
(24, 'NIKON NC2031S 26104', 13, 14, '<p>M&atilde; sản phẩm: NC2031S26104P.JS</p>\r\n\r\n<p>Chủng loại: K&iacute;nh m&aacute;t</p>\r\n\r\n<p>D&agrave;nh cho: Unisex</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 50mmx19mmx145mm</p>\r\n\r\n<p>M&agrave;u gọng: Đồi mồi</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Xanh x&aacute;m</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: C&oacute;</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Tr&ograve;n</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng</p>', '8490000', 'Hinh 1248.jpg', 0, NULL, NULL),
(25, 'MB0069S 001', 13, 17, '<p>M&atilde; sản phẩm: MB0069S_001.JS</p>\r\n\r\n<p>Chủng loại: K&iacute;nh m&aacute;t</p>\r\n\r\n<p>D&agrave;nh cho: Nam</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 60mmx13mmx145mm</p>\r\n\r\n<p>M&agrave;u gọng: V&agrave;ng kim</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: N&acirc;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Phi c&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim</p>', '12000000', 'Hinh 1331.jpg', 0, NULL, NULL),
(26, 'OAKLEY 0OX5141 514101', 14, 12, '<p>M&atilde; sản phẩm: 0OX5141_51410152.C</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Nam</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 52mmx19mmx136mm</p>\r\n\r\n<p>M&agrave;u gọng: Đen</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Tr&ograve;n</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng</p>', '8030000', 'Hinh 1492.jpg', 0, NULL, NULL),
(27, 'OAKLEY OX8066 806601', 15, 12, '<p>M&atilde; sản phẩm: 0OX8066_80660153.U</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Nam</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 55mmx19mmx137mm</p>\r\n\r\n<p>M&agrave;u gọng: Đen</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng m&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '4180000', 'Hinh 1545.jpg', 0, NULL, NULL),
(28, 'ANCCI AC93240 C4', 14, 11, '<p>M&atilde; sản phẩm: AC93240_C4.CS</p>\r\n\r\n<p>Chủng loại: K&iacute;nh m&aacute;t</p>\r\n\r\n<p>D&agrave;nh cho: Nữ</p>\r\n\r\n<p>M&agrave;u gọng: V&agrave;ng hồng</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Xanh dương</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Mắt cỡ lớn</p>\r\n\r\n<p>&nbsp;Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt tr&ograve;n</p>', '980000', 'Hinh 1612.jpg', 0, NULL, NULL),
(29, 'FLYER F83525UF LBL', 14, 10, '<p>M&atilde; sản phẩm: F83525UF_LBL.K</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Unisex</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 52mmx19mmx145mm</p>\r\n\r\n<p>M&agrave;u gọng: Xanh da trời</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng m&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;</p>', '300000', 'Hinh 1724.jpg', 0, NULL, NULL),
(30, 'FLYER F92249 C14', 13, 10, '<p>M&atilde; sản phẩm: F92249_C14.C</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Unisex</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 49mmx21mmx140mm</p>\r\n\r\n<p>M&agrave;u gọng: V&agrave;ng kim/Đen</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng m&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Tr&ograve;n</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng</p>', '480000', 'Hinh 1892.jpg', 0, NULL, NULL),
(31, 'Vogue 0VO5068SD W7455R', 15, 9, '<p>M&atilde; sản phẩm: 0VO5068SD_W7455R57.IS</p>\r\n\r\n<p>Chủng loại: K&iacute;nh m&aacute;t</p>\r\n\r\n<p>D&agrave;nh cho: Nữ</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh):&nbsp;57mmx18mmx145mm</p>\r\n\r\n<p>M&agrave;u gọng: Trong suốt</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Cam</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '2200000', 'Hinh 1998.jpg', 0, NULL, NULL),
(32, 'Vogue 0VO5132S W6565R', 12, 9, '<p>M&atilde; sản phẩm: 0VO5132S_W6565R52.IS</p>\r\n\r\n<p>Chủng loại: K&iacute;nh m&aacute;t</p>\r\n\r\n<p>D&agrave;nh cho: Nữ</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh):&nbsp;52mmx22mmx135mm</p>\r\n\r\n<p>M&agrave;u gọng: Đồi mồi</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Cam</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Tr&ograve;n</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng</p>', '3100000', 'Hinh 2081.jpg', 0, NULL, NULL),
(33, 'ARMANI EXCHANGE 0AX3050F 8078', 15, 8, '<p>M&atilde; sản phẩm: 0AX3050F_807855.I</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Nam</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh):&nbsp;55mmx18mmx140mm</p>\r\n\r\n<p>M&agrave;u gọng: Đen</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ngm&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '2400000', 'Hinh 2144.jpg', 0, NULL, NULL),
(34, 'ARMANI EXCHANGE 0AX4078SF', 13, 8, '<p>M&atilde; sản phẩm: 0AX4078SF_80786Q56.ISO</p>\r\n\r\n<p>Chủng loại: K&iacute;nh m&aacute;t</p>\r\n\r\n<p>D&agrave;nh cho: Nam</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh):&nbsp;56mmx18mmx145mm</p>\r\n\r\n<p>M&agrave;u gọng: Đen</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Đỏ</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '3300000', 'Hinh 2261.jpg', 0, NULL, NULL),
(35, 'MOLSION MJ3022 B90', 13, 7, '<p>M&atilde; sản phẩm: MJ3022_B90.C</p>\r\n\r\n<p>Chủng loại: Gọng k&iacute;nh</p>\r\n\r\n<p>D&agrave;nh cho: Nam</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 52mmx19mmx148mm</p>\r\n\r\n<p>M&agrave;u gọng: Trong suốt</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Kh&ocirc;ng m&agrave;u</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '1680000', 'Hinh 2395.jpg', 0, NULL, NULL),
(36, 'MOLSION MS3013 A12', 14, 7, '<p>M&atilde; sản phẩm: MS3013_A12.CS</p>\r\n\r\n<p>Chủng loại: K&iacute;nh m&aacute;t</p>\r\n\r\n<p>D&agrave;nh cho: Nam</p>\r\n\r\n<p>K&iacute;ch thước (Tr&ograve;ng x Cầu k&iacute;nh x C&agrave;ng k&iacute;nh): 54mmx19mmx148mm</p>\r\n\r\n<p>M&agrave;u gọng: Trong suốt</p>\r\n\r\n<p>M&agrave;u tr&ograve;ng: Ghi</p>\r\n\r\n<p>Tr&ograve;ng Polarized chống phản quang: Kh&ocirc;ng</p>\r\n\r\n<p>Kiểu d&aacute;ng k&iacute;nh: Vu&ocirc;ng</p>\r\n\r\n<p>Viền k&iacute;nh: Nguy&ecirc;n khung</p>', '<p>Ph&ugrave; hợp gương mặt: Mặt tr&aacute;i xoan, mặt vu&ocirc;ng, mặt tr&aacute;i tim, mặt tr&ograve;n</p>', '18500000', 'Hinh 2463.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_shipping`
--

CREATE TABLE `tb_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_shipping`
--

INSERT INTO `tb_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(11, 'long nguyen', '12/321/32 xa dong thanh', '21323243421', 'longbeo@gmail.com', '122wewqeq', NULL, NULL),
(12, 'long nguyen', '12/321/32 xa dong thanh hoc mon', '09825223213', 'longbeo@gmail.com', '32132132', NULL, NULL),
(13, 'long nguyen', '12/321/32 xa dong thanh hoc monn', '09825223213', 'longbeo@gmail.com', '123232wdsad', NULL, NULL),
(14, 'hieutruong', '12/321/32 xa dong thanh', '21323243421', 'longbeo@gmail.com', '1233244', NULL, NULL),
(15, 'hieutruong', '12/321/32 xa dong thanh', '213232434212', 'longbeo@gmail.com', 'fdfdgdgs', NULL, NULL),
(16, 'long', '12/321/32 xa dong thanh hoc mon', '09825223213', 'longbeo@gmail.com', 'sdasd', NULL, NULL),
(17, 'long nguyen', '12/321/32 xa dong thanh hoc mon', '21323243421', 'longbeo@gmail.com', 'fdgcvcv', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tb_brand`
--
ALTER TABLE `tb_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tb_category_product`
--
ALTER TABLE `tb_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tb_payment`
--
ALTER TABLE `tb_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tb_shipping`
--
ALTER TABLE `tb_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tb_brand`
--
ALTER TABLE `tb_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tb_category_product`
--
ALTER TABLE `tb_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tb_payment`
--
ALTER TABLE `tb_payment`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tb_shipping`
--
ALTER TABLE `tb_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
