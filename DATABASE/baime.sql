-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 05, 2026 lúc 06:06 PM
-- Phiên bản máy phục vụ: 8.0.46-0ubuntu0.24.04.2
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baime`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

CREATE TABLE `album` (
  `id_album` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `intro` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `thu_tu` bigint DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `id_user` bigint DEFAULT '0',
  `hot` tinyint DEFAULT '0',
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `tags` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_tacgia` int DEFAULT NULL,
  `image_list` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`id_album`, `id_category`, `name`, `title`, `intro`, `content`, `description`, `keywords`, `image`, `ngay_dang`, `thu_tu`, `active`, `id_user`, `hot`, `groupcat`, `tags`, `url`, `id_tacgia`, `image_list`, `last_modify`) VALUES
(1, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.', '', '', '/uploaded/tin-tuc/hinh-nen-thien-nhien-cho-may-tinh-1.jpg', 1688010180, 1, 1, 8, 0, ':', NULL, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit.html', 55, '[{\"image_path\":\"\\/uploaded\\/tin-tuc\\/item1.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"\\/uploaded\\/tin-tuc\\/item6.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"\\/uploaded\\/tin-tuc\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"\\/uploaded\\/tin-tuc\\/item7.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1688010227),
(2, 30, '1', '1', '', '', '', '', '/uploaded/album/kiem-tra-2.jpg', 1780559460, 2, 1, 8, 0, ':', NULL, '1.html', 0, '[]', 1780559564),
(3, 30, '', '', '', '', '', '', '/uploaded/album/kiem-tra-3.jpg', 1780559520, 3, 1, 8, 0, ':', NULL, '.html', 0, '[]', 1780559569),
(4, 30, '', '', '', '', '', '', '/uploaded/album/kiem-tra-sp-5.jpg', 1780559520, 4, 1, 8, 0, ':', NULL, '.html', 0, '[]', 1780559573),
(5, 30, '', '', '', '', '', '', '/uploaded/album/kiem-tra-2.jpg', 1780559520, 5, 1, 8, 0, ':', NULL, '.html', 0, '[]', 1780559578),
(6, 30, '', '', '', '', '', '', '/uploaded/album/kiem-tra-3.jpg', 1780559520, 6, 1, 8, 0, ':', NULL, '.html', 0, '[]', 1780559582),
(7, 30, '', '', '', '', '', '', '/uploaded/album/kiem-tra-sp-5.jpg', 1780559580, 7, 1, 8, 0, ':', NULL, '.html', 0, '[]', 1780559586),
(8, 30, '', '', '', '', '', '', '/uploaded/album/kiem-tra-2.jpg', 1780559580, 8, 1, 8, 0, ':', NULL, '.html', 0, '[]', 1780559603);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

CREATE TABLE `article` (
  `id_article` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `id_service` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `thu_tu` bigint DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `id_user` bigint DEFAULT '0',
  `file` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `hot` tinyint DEFAULT '0',
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `tags` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `author_name` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `author_email` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `author_info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baohanh`
--

CREATE TABLE `baohanh` (
  `id` bigint NOT NULL,
  `ngay_nhap` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ma_hang` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `imei` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ngay_ban` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ngay_bh` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `thoigianbaohanh` int DEFAULT '12',
  `so_phieu_ban` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `makh` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tenkh` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dia_chi` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dien_thoai` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mobile` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `thong_tin_khac` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `create_date` bigint DEFAULT NULL,
  `id_user` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id_category` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `subname` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `title` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `parentid` bigint UNSIGNED DEFAULT '0',
  `thu_tu` bigint DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `target` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `vitri` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `data_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `inpage` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `template_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `home_layout` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `tags` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `header_tag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `rss` int DEFAULT '0',
  `lang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `stypeshow` int DEFAULT NULL,
  `id_attr` bigint DEFAULT NULL,
  `shortinhome` tinyint DEFAULT NULL,
  `footercol` int DEFAULT NULL,
  `homescroll` int DEFAULT '0',
  `localnews` int DEFAULT '0',
  `col` int DEFAULT NULL,
  `vtcolsub` int DEFAULT '0',
  `iconmenu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `menucolor` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `home_zone` int DEFAULT '1',
  `imageadv` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `styleshow` int DEFAULT '0',
  `left_right_layout` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mega_menu` int DEFAULT '0',
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content_text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id_category`, `name`, `subname`, `title`, `parentid`, `thu_tu`, `active`, `image`, `content`, `keywords`, `description`, `url`, `target`, `vitri`, `data_type`, `inpage`, `template_name`, `home_layout`, `tags`, `header_tag`, `rss`, `lang`, `stypeshow`, `id_attr`, `shortinhome`, `footercol`, `homescroll`, `localnews`, `col`, `vtcolsub`, `iconmenu`, `menucolor`, `home_zone`, `imageadv`, `styleshow`, `left_right_layout`, `mega_menu`, `intro`, `content_text`, `last_modify`) VALUES
(1, 'Trang chủ', 'Trang chủ', 'Công ty TNHH Vật liệu mới BaiMe Việt Nam', 0, 1, 1, '', '', '', '', '', '', ':menubar:', 'home', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780460825),
(2, 'Logo', 'Logo', 'Logo', 0, 2, 1, '', ' ', '', '', 'logo/', '', ':logosite:', 'logo', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, ' ', '', 1608698050),
(3, 'SlideHome', 'SlideHome', 'SlideHome', 0, 3, 1, '', '', '', '', 'slidehome/', '', ':slideshow:', 'logo', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1608698090),
(4, 'SlideHomeMobile', 'SlideHomeMobile', 'SlideHomeMobile', 0, 4, 1, '', '', '', '', 'slidehomemobile/', '', ':slidemobile:', 'logo', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1608698103),
(5, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 0, 5, 1, '/uploaded/slideshow/banner-gt.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"/uploaded/san-pham/item4.png\" style=\"width: 50%;\" /></div>\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"/uploaded/san-pham/it-dt.png\" style=\"width: 50%;\" /></div>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n&nbsp;', '', '', 'gioi-thieu/', '', ':menubar:', 'info', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/slideshow/baner.jpg\" style=\"width: 100%;\" />\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n', '', 1780478850),
(9, 'Sản phẩm', 'Sản phẩm', 'Sản phẩm', 0, 6, 1, '/uploaded/slideshow/baner.jpg', '', '', '', 'san-pham/', '', ':menubar:menuleft:', 'product', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780561402),
(10, 'Ứng dụng', 'Ứng dụng', 'Ứng dụng', 0, 7, 1, '', '', '', '', 'ung-dung/', '', ':menubar:', 'article', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780311210),
(11, 'Hệ thống phân phối', 'Hệ thống phân phối', 'Hệ thống phân phối', 0, 8, 1, '', '', '', '', 'he-thong-phan-phoi/', '', ':menubar:', 'daily', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780311233),
(12, 'Tin tức', 'Tin tức', 'Tin tức', 0, 9, 1, '', '', '', '', 'tin-tuc/', '', ':menubar:cathome:', 'news', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780657162),
(13, 'Tuyển dụng', 'Tuyển dụng', 'Tuyển dụng', 0, 10, 1, '', '', '', '', 'tuyen-dung/', '', ':menubar:', 'tuyendung', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780311265),
(14, 'Liên hệ', 'Liên hệ', 'Liên hệ', 0, 11, 1, '', '', '', '', 'lien-he/', '', ':menubar:', 'contact', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780311276),
(15, 'Giới thiêu trang chủ', 'Công ty TNHH Vật liệu mới BaiMe Việt Nam', 'Giới thiêu trang chủ', 0, 12, 1, '/uploaded/gioi-thieu/gioithieu.jpg', '', '', '', 'gioi-thieu-trang-chu/', '', ':hothome:', 'info', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, 'C&ocirc;ng ty TNHH C&ocirc;ng nghệ Vật liệu mới B&aacute;ch Mỹ Nam Kinh được th&agrave; nh lập năm 2002 tại quận Cao Thuần, th&agrave;nh phố Nam Kinh. T&ecirc;n cũ của c&ocirc;ng ty l&agrave; &ldquo;C&ocirc;ng ty TNHH Titan Tương B ảo Nam Kinh&rdquo; v&agrave; &ldquo;C&ocirc;ng ty TNHH Nhựa B&aacute;ch Mỹ Nam Kinh&rdquo;. Hiện nay, c&ocirc;ng ty c&oacute; 4 chi nh&aacute;nh gồm: Chi nh&aacute;nh Quảng T&acirc;y, Chi nh&aacute;nh Quảng Đ&ocirc;ng, Chi nh&aacute;nh Thường Ch&acirc;u v&agrave; Chi nh&aacute;nh Thượng Hải, c&ugrave;ng với nhiều sản phẩm đa dạng.<br />\r\n<br />\r\nTrải qua 20 năm kh&ocirc;ng ngừng học hỏi v&agrave; ph&aacute;t triển, hiện tại t rụ sở ch&iacute;nh Nam Kinh c&oacute; 9 d&acirc;y chuyền sản xuất nhựa Amin, 4 d&acirc;y chuyền sản xuất chất ổn định Canxi-Kẽm tổng hợp....', '', 1780387701),
(16, 'Sản phẩm nổi bật', 'Sản phẩm nổi bật', 'Sản phẩm nổi bật', 0, 13, 1, '', '', '', '', 'san-pham-noi-bat/', '', ':hothome:', 'product', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780389794),
(17, 'Sản phẩm cung cấp', 'Sản phẩm cung cấp', 'Sản phẩm cung cấp', 9, 14, 1, '', '', '', '', 'san-pham-cung-cap/', '', ':cathome:', 'product', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780561395),
(18, 'Chất ổn định', 'Chất ổn định', 'Chất ổn định', 17, 15, 1, '/uploaded/san-pham/it-dt.png', '', '', '', 'chat-on-dinh/', '', ':', 'product', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780390050),
(19, 'Chất ổn định dạng lỏng', 'Chất ổn định dạng lỏng', 'Chất ổn định dạng lỏng', 17, 16, 1, '/uploaded/san-pham/item1.png', '', '', '', 'chat-on-dinh-dang-long/', '', ':', 'product', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780390115),
(20, 'SÁP PE', 'SÁP PE', 'SÁP PE', 17, 17, 1, '/uploaded/san-pham/item3.png', '', '', '', 'sap-pe/', '', ':', 'product', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780390129),
(21, 'SÁP PP', 'SÁP PP', 'SÁP PP', 17, 18, 1, '/uploaded/san-pham/item4.png', '', '', '', 'sap-pp/', '', ':', 'product', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780390153),
(22, 'Barium Sulfate', 'Barium Sulfate', 'Barium Sulfate', 17, 19, 1, '/uploaded/san-pham/it-dt.png', '', '', '', 'barium-sulfate/', '', ':', 'product', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780390170),
(23, 'Titanium Dioxide', 'Titanium Dioxide', 'Titanium Dioxide', 17, 20, 1, '/uploaded/san-pham/item3.png', '', '', '', 'titanium-dioxide/', '', ':', 'product', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780390188),
(24, 'BaiMe Việt Nam', 'BaiMe Việt Nam', 'BaiMe Việt Nam', 0, 21, 1, '/uploaded/gioi-thieu/gt-big.png', '', '', '', 'baime-viet-nam/', '', ':inhome:', 'info', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, 'Cung cấp c&aacute;c d&ograve;ng sản phẩm chất lượng cao đ&atilde; gi&uacute;p ch&uacute;ng t&ocirc;i trở th&agrave;nh một trong những nh&agrave; cung cấp phụ gia uy t&iacute;n, đ&aacute;ng tin cậy v&agrave; h&agrave;ng đầu tr&ecirc;n thị trường trong nước v&agrave; quốc tế.<br />\r\n<br />\r\nVới phương ch&acirc;m &ldquo; SẢN PHẨM TẬN T&Acirc;M &ndash; VƯƠN TẦM S&Aacute;NG TẠO&rdquo;, ch&uacute;ng t&ocirc;i cam kết mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm chất lượng tốt nhất, gi&aacute; cả cạnh tranh nhất, thời gian giao h&agrave;ng nhanh nhất v&agrave; dịch vụ tốt nhất.<br />\r\n&nbsp;', '', 1780400147),
(26, 'Chứng nhận ', 'Chứng nhận ', 'Chứng nhận ', 0, 22, 1, '', '', '', '', 'chung-nhan/', '', ':cathome:', 'logo', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780401709),
(27, 'Đối tác - khách hàng', 'Đối tác - khách hàng', 'Đối tác - khách hàng', 0, 23, 1, '', '', '', '', 'doi-tac-khach-hang/', '', ':cathome:', 'partner', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780401727),
(28, 'Tầm nhìn sứ mệnh', 'Tầm nhìn sứ mệnh', 'Tầm nhìn sứ mệnh', 5, 24, 1, '/uploaded/gioi-thieu/gioithieu.jpg', '', '', '', 'tam-nhin-su-menh/', '', ':', 'info_donvi', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780559087),
(29, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 5, 23, 1, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"/uploaded/san-pham/item4.png\" style=\"width: 50%;\" /></div>\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"/uploaded/san-pham/it-dt.png\" style=\"width: 50%;\" /></div>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n&nbsp;', '', '', 'gioi-thieu/', '', ':', 'info', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/slideshow/baner.jpg\" style=\"width: 100%;\" />\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n', '', 1780557982),
(30, 'Thư viện ảnh', 'Thư viện ảnh', 'Thư viện ảnh', 5, 25, 1, '', '', '', '', 'thu-vien-anh/', '', ':', 'album', '0', '', '', NULL, '', 0, '', NULL, 21, 0, 0, 0, 0, 0, 0, '', NULL, 0, '', 0, '', 0, '', '', 1780548195);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id_comment` bigint NOT NULL,
  `comment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `createdate` bigint NOT NULL,
  `active` tinyint NOT NULL DEFAULT '0',
  `thu_tu` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `parentid` bigint DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_item` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `user_like` bigint DEFAULT '0',
  `star_rate` int DEFAULT '3',
  `id_admin` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id_contact` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `xem` tinyint DEFAULT '0',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `createdate` bigint DEFAULT NULL,
  `note` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id_contact`, `name`, `content`, `xem`, `email`, `phone`, `address`, `createdate`, `note`) VALUES
(1, 'Thông tin liên hệ: Minh Nguyễn - Test', '\n<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n     <tr>\n               <td height=\"30\" colspan=\"2\" align=\"left\" valign=\"middle\"><strong> Thông tin liên hệ:  </strong></td>\n    </tr>\n             <tr>\n               <td height=\"30\" align=\"left\" style=\"width:200px;\" valign=\"middle\">Họ tên:</td>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Minh Nguyễn - Test</strong></td>\n      </tr>\n        <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\">E-mail:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong>minhns@company.vn</strong></td>\n      </tr>\n      \n    <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\">Điện thoại:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong>0968675568</strong></td>\n      </tr>\n        <tr>\n          <td height=\"30\" align=\"left\" valign=\"middle\"> Địa chỉ:</td>\n          <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Test chức nang</strong></td>\n      </tr>\n      <tr>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><strong>Nội dung liên hệ</strong>: </td>\n               <td height=\"30\" align=\"left\" valign=\"middle\"><i>abc - </i></td>\n      </tr>\n</table>', 1, 'minhns@company.vn', NULL, NULL, 1681469105, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contactinfo`
--

CREATE TABLE `contactinfo` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thu_tu` bigint DEFAULT '0',
  `id_catstatic` bigint NOT NULL DEFAULT '0',
  `id_user` bigint NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '0',
  `ngay_dang` bigint NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `inwhere` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `contactinfo`
--

INSERT INTO `contactinfo` (`id`, `name`, `content`, `thu_tu`, `id_catstatic`, `id_user`, `active`, `ngay_dang`, `image`, `inwhere`, `title`, `address`, `latitude`, `longitude`, `lang`) VALUES
(1, 'Your company name here', '', 0, 0, 0, 1, 0, '', '', 'Your company name here', 'Lê Văn Lương, KĐT Trung Hòa Nhân Chính, Thanh Xuân, Hà Nội', '20.99204228956073', '105.79976062485356', ' '),
(2, 'Company info en', '<iframe allowfullscreen=\"\" frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.4140140010604!2d105.80155335798705!3d20.99952959650355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6ed93396d4180e5b!2zMTA5IE5ndXnhu4VuIFR1w6JuLCBUaGFuaCBYdcOibg!5e0!3m2!1svi!2s!4v1535516982544\" style=\"border:0\" width=\"100%\"></iframe>', 0, 0, 0, 1, 0, '', '', '', '', '', '', 'en'),
(3, 'Company info cn', '<iframe allowfullscreen=\"\" frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.4140140010604!2d105.80155335798705!3d20.99952959650355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6ed93396d4180e5b!2zMTA5IE5ndXnhu4VuIFR1w6JuLCBUaGFuaCBYdcOibg!5e0!3m2!1svi!2s!4v1535516982544\" style=\"border:0\" width=\"100%\"></iframe>', 0, 0, 0, 1, 0, '', '', '', '', '21.042324102802453', '105.77579302215577', 'cn'),
(4, 'Company info kr', '<iframe allowfullscreen=\"\" frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.4140140010604!2d105.80155335798705!3d20.99952959650355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6ed93396d4180e5b!2zMTA5IE5ndXnhu4VuIFR1w6JuLCBUaGFuaCBYdcOibg!5e0!3m2!1svi!2s!4v1535516982544\" style=\"border:0\" width=\"100%\"></iframe>', 0, 0, 0, 1, 0, '', '', '', '', '', '', 'kr');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `country`
--

CREATE TABLE `country` (
  `id_country` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `daily`
--

CREATE TABLE `daily` (
  `id_daily` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `thu_tu` bigint DEFAULT '0',
  `id_category` bigint DEFAULT '0',
  `id_user` bigint DEFAULT '0',
  `active` tinyint DEFAULT '0',
  `ngay_dang` bigint DEFAULT '0',
  `image` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `title` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `fax` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `phone` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `website` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `linkmap` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `maptitle` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `provinceid` int DEFAULT NULL,
  `districtid` int DEFAULT NULL,
  `phanphoi` int DEFAULT '1',
  `baohanh` int DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `direct`
--

CREATE TABLE `direct` (
  `id` int NOT NULL,
  `url_old` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url_new` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_user` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `download`
--

CREATE TABLE `download` (
  `id_download` bigint UNSIGNED NOT NULL,
  `id_category` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `title` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `thu_tu` bigint DEFAULT '0',
  `id_user` bigint DEFAULT '0',
  `active` tinyint DEFAULT '0',
  `ngay_dang` bigint DEFAULT '0',
  `image` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `files` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_modify` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `du_an`
--

CREATE TABLE `du_an` (
  `id_duan` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `intro` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `tienich` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `imageadv` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image_list` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `thu_tu` bigint DEFAULT '0',
  `active` tinyint DEFAULT NULL,
  `id_user` bigint DEFAULT '0',
  `fileurl` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `hot` tinyint DEFAULT '0',
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `tags` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `provinceid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dientich` bigint DEFAULT NULL,
  `header_tag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `related_product` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `videourl` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `event`
--

CREATE TABLE `event` (
  `id_event` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `event_location` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `event_duration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `event_date` bigint DEFAULT '0',
  `event_info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `thu_tu` bigint DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `id_user` bigint DEFAULT '0',
  `file` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `hot` tinyint DEFAULT '0',
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `tags` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faq`
--

CREATE TABLE `faq` (
  `id_faq` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `thu_tu` bigint DEFAULT '0',
  `id_category` bigint DEFAULT '0',
  `id_user` bigint DEFAULT '0',
  `active` tinyint DEFAULT '0',
  `ngay_dang` bigint DEFAULT '0',
  `image` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `customer_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `customer_phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `customer_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `products` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_attr`
--

CREATE TABLE `group_attr` (
  `id_group` bigint UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thu_tu` bigint NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '1',
  `setdefault` tinyint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `group_attr`
--

INSERT INTO `group_attr` (`id_group`, `name`, `thu_tu`, `active`, `setdefault`) VALUES
(21, 'Khác', 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_attribute`
--

CREATE TABLE `group_attribute` (
  `id` bigint NOT NULL,
  `id_group` bigint NOT NULL,
  `id_attr` bigint NOT NULL,
  `thu_tu` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `group_attribute`
--

INSERT INTO `group_attribute` (`id`, `id_group`, `id_attr`, `thu_tu`) VALUES
(415, 21, 46, 0),
(416, 21, 45, 0),
(417, 21, 43, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id_info` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thu_tu` bigint DEFAULT '0',
  `id_category` bigint DEFAULT '0',
  `id_user` bigint DEFAULT '0',
  `active` tinyint DEFAULT '0',
  `ngay_dang` bigint DEFAULT '0',
  `image` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `videourl` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `fileurl` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `title` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image_list` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `show_type` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`id_info`, `name`, `content`, `thu_tu`, `id_category`, `id_user`, `active`, `ngay_dang`, `image`, `videourl`, `fileurl`, `intro`, `url`, `keywords`, `description`, `title`, `groupcat`, `image_list`, `show_type`, `last_modify`) VALUES
(1, 'Diện tích sản xuất', '', 1, 15, 8, 1, 1780387920, '/uploaded/ico/Group%20605.png', '', '', '15.000m2+', 'dien-tich-san-xuat.html', '', '', 'Diện tích sản xuất', ':', '[]', '', 1780388068),
(2, 'Công suất sản xuất', '', 2, 15, 8, 1, 1780388100, '/uploaded/ico/industrial-2%201.png', '', '', '1.500tấn+', 'cong-suat-san-xuat.html', '', '', 'Công suất sản xuất', ':', '[]', '', 1780388130),
(3, 'Khách hàng hài lòng', '', 3, 15, 8, 1, 1780388100, '/uploaded/ico/Group%20604.png', '', '', '98%', 'khach-hang-hai-long.html', '', '', 'Khách hàng hài lòng', ':', '[]', '', 1780388142),
(4, 'Quốc gia xuất khẩu', '', 4, 15, 8, 1, 1780388100, '/uploaded/ico/Vector.png', '', '', '30+', 'quoc-gia-xuat-khau.html', '', '', 'Quốc gia xuất khẩu', ':', '[]', '', 1780388152),
(5, 'Chất lượng đảm bảo', '', 5, 24, 8, 1, 1780400880, '/uploaded/ico/tuvan.png', '', '', '', 'chat-luong-dam-bao.html', '', '', 'Chất lượng đảm bảo', ':', '[]', '', 1780400931),
(6, 'Tư vấn tận tâm', '', 6, 24, 8, 1, 1780400880, '/uploaded/ico/partner-certification%201.png', '', '', '', 'tu-van-tan-tam.html', '', '', 'Tư vấn tận tâm', ':', '[]', '', 1780400944),
(7, 'Sản phẩm đa dạng', '', 7, 24, 8, 1, 1780400940, '/uploaded/ico/sp-da-dang.png', '', '', '', 'san-pham-da-dang.html', '', '', 'Sản phẩm đa dạng', ':', '[]', '', 1780400953),
(8, 'Giá thành hợp lý', '', 8, 24, 8, 1, 1780400940, '/uploaded/ico/gia-hop-ly.png', '', '', '', 'gia-thanh-hop-ly.html', '', '', 'Giá thành hợp lý', ':', '[]', '', 1780400965),
(9, 'Thân thiện với môi trường', '', 9, 24, 8, 1, 1780400940, '/uploaded/ico/earth_3039893%201.png', '', '', '', 'than-thien-voi-moi-truong.html', '', '', 'Thân thiện với môi trường', ':', '[]', '', 1780400979),
(10, 'Ứng dụng cao', '', 10, 24, 8, 1, 1780400940, '/uploaded/ico/clipboard_1962592%201.png', '', '', '', 'ung-dung-cao.html', '', '', 'Ứng dụng cao', ':', '[]', '', 1780401001);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info_donvi`
--

CREATE TABLE `info_donvi` (
  `id_info` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thu_tu` bigint DEFAULT '0',
  `id_category` bigint DEFAULT '0',
  `id_user` bigint DEFAULT '0',
  `active` tinyint DEFAULT '0',
  `ngay_dang` bigint DEFAULT '0',
  `image` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `title` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image_list` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `info_donvi`
--

INSERT INTO `info_donvi` (`id_info`, `name`, `content`, `thu_tu`, `id_category`, `id_user`, `active`, `ngay_dang`, `image`, `intro`, `url`, `keywords`, `description`, `title`, `groupcat`, `image_list`, `last_modify`) VALUES
(2, 'Tầm nhìn', '', 1, 28, 8, 1, 1780559160, '', '<strong>BaiMe</strong>&nbsp;đang trở th&agrave;nh một trong những nh&agrave; cung cấp phụ gia uy t&iacute;n, đ&aacute;ng tin cậy v&agrave; h&agrave;ng đầu tr&ecirc;n thị trường trong nước v&agrave; quốc tế, kh&ocirc;ng ngừng nỗ lực để đ&aacute;p ứng mọi nhu cầu của Qu&yacute; kh&aacute;ch h&agrave;ng.', 'tam-nhin.html', '', '', 'Tầm nhìn', ':', '[]', 1780559220),
(3, 'Sứ mệnh', '', 2, 28, 8, 1, 1780559220, '', 'Với phương ch&acirc;m &ldquo;<strong>SẢN PHẨM TẬN T&Acirc;M &ndash; VƯƠN TẦM S&Aacute;NG TẠO&rdquo;</strong>, ch&uacute;ng t&ocirc;i cam kết mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm chất lượng tốt nhất, gi&aacute; cả cạnh tranh nhất, thời gian giao h&agrave;ng nhanh nhất v&agrave; dịch vụ tốt nhất.', 'su-menh.html', '', '', 'Sứ mệnh', ':', '[]', 1780559238);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info_leader`
--

CREATE TABLE `info_leader` (
  `id_info` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thu_tu` bigint DEFAULT '0',
  `id_category` bigint DEFAULT '0',
  `id_user` bigint DEFAULT '0',
  `active` tinyint DEFAULT '0',
  `ngay_dang` bigint DEFAULT '0',
  `image` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `title` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `level` int DEFAULT '0',
  `position` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `branch` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dob` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info_lichsu`
--

CREATE TABLE `info_lichsu` (
  `id_info` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thu_tu` bigint DEFAULT '0',
  `id_category` bigint DEFAULT '0',
  `id_user` bigint DEFAULT '0',
  `active` tinyint DEFAULT '0',
  `ngay_dang` bigint DEFAULT '0',
  `image` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `title` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lang`
--

CREATE TABLE `lang` (
  `id` int NOT NULL DEFAULT '1',
  `lang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `lang`
--

INSERT INTO `lang` (`id`, `lang`) VALUES
(1, '{\"_othernews\":{\"default\":\"C\\u00e1c tin kh\\u00e1c\",\"en\":\"Other articles\",\"cn\":\"a\",\"kr\":\"b\"},\"_home\":{\"default\":\"Trang ch\\u1ee7\",\"en\":\"Home\",\"cn\":\"\",\"kr\":\"\"},\"_detail\":{\"default\":\"Chi ti\\u1ebft\",\"en\":\"Detail\",\"cn\":\"\",\"kr\":\"\"},\"_page\":{\"default\":\"Trang\",\"en\":\"Pages\",\"cn\":\"\",\"kr\":\"\"},\"_fullname\":{\"default\":\"H\\u1ecd t\\u00ean\",\"en\":\"Full name\",\"cn\":\"\",\"kr\":\"\"},\"_email\":{\"default\":\"Email\",\"en\":\"E-Mail\",\"cn\":\"\",\"kr\":\"\"},\"_phone\":{\"default\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"en\":\"Telephone\",\"cn\":\"\",\"kr\":\"\"},\"_address\":{\"default\":\"\\u0110\\u1ecba ch\\u1ec9\",\"en\":\"Address\",\"cn\":\"\",\"kr\":\"\"},\"_content\":{\"default\":\"N\\u1ed9i dung\",\"en\":\"Message\",\"cn\":\"\",\"kr\":\"\"},\"_send\":{\"default\":\"G\\u1eedi li\\u00ean h\\u1ec7\",\"en\":\"Send\",\"cn\":\"\",\"kr\":\"\"},\"_continue\":{\"default\":\"Ti\\u1ebfp t\\u1ee5c\",\"en\":\"Continue\",\"cn\":\"\",\"kr\":\"\"},\"_reset\":{\"default\":\"Nh\\u1eadp l\\u1ea1i\",\"en\":\"Reset\",\"cn\":\"\",\"kr\":\"\"},\"_searchsite\":{\"default\":\"T\\u00ecm ki\\u1ebfm\",\"en\":\"Search\",\"cn\":\"\",\"kr\":\"\"},\"_keywords\":{\"default\":\"T\\u00ecm ki\\u1ebfm \",\"en\":\"keywords\",\"cn\":\"\",\"kr\":\"\"},\"_viewall\":{\"default\":\"Xem t\\u1ea5t c\\u1ea3\",\"en\":\"View all\",\"cn\":\"\",\"kr\":\"\"},\"_search_enter_keyword\":{\"default\":\"Nh\\u1eadp n\\u1ed9i dung c\\u1ea7n t\\u00ecm, s\\u1ea3n ph\\u1ea9m, b\\u00e0i vi\\u1ebft...\",\"en\":\"Enter your keyword...\",\"cn\":\"\",\"kr\":\"\"},\"_viewmore\":{\"default\":\"Xem chi ti\\u1ebft\",\"en\":\"View more\",\"cn\":\"\",\"kr\":\"\"},\"_search_result\":{\"default\":\"K\\u1ebft qu\\u1ea3 t\\u00ecm ki\\u1ebfm\",\"en\":\"Search Result\",\"cn\":\"\",\"kr\":\"\"},\"_online_support\":{\"default\":\"H\\u1ed7 tr\\u1ee3 tr\\u1ef1c tuy\\u1ebfn\",\"en\":\"Online Support\",\"cn\":\"\",\"kr\":\"\"},\"_product_detail\":{\"default\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"en\":\"Product infomation\",\"cn\":\"\",\"kr\":\"\"},\"_comment_alert\":{\"default\":\"Nh\\u1eefng tr\\u01b0\\u1eddng c\\u00f3 d\\u1ea5u * l\\u00e0 tr\\u01b0\\u1eddng b\\u1eaft bu\\u1ed9c ph\\u1ea3i nh\\u1eadp th\\u00f4ng tin\",\"en\":\"You must enter all information in the (*) field\",\"cn\":\"\",\"kr\":\"\"},\"_your_email\":{\"default\":\"Nh\\u1eadp email c\\u1ee7a b\\u1ea1n\",\"en\":\"Your email\",\"cn\":\"\",\"kr\":\"\"},\"_captcha_code\":{\"default\":\"M\\u00e3 b\\u1ea3o m\\u1eadt\",\"en\":\"Captcha Code\",\"cn\":\"\",\"kr\":\"\"},\"_comment_send_msg\":{\"default\":\"B\\u00ecnh lu\\u1eadn c\\u1ee7a b\\u1ea1n \\u0111\\u00e3 g\\u1eedi th\\u00e0nh c\\u00f4ng\",\"en\":\"Your comment sent successfully\",\"cn\":\"\",\"kr\":\"\"},\"_captcha_invalid\":{\"default\":\"M\\u00e3 captcha kh\\u00f4ng \\u0111\\u00fang\",\"en\":\"Wrong captcha code\",\"cn\":\"\",\"kr\":\"\"},\"_customer_support\":{\"default\":\"H\\u1ed7 tr\\u1ee3 kh\\u00e1ch h\\u00e0ng\",\"en\":\"Customer support\",\"cn\":\"\",\"kr\":\"\"},\"_title\":{\"default\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\",\"cn\":\"\",\"kr\":\"\"},\"_view_more_about_home\":{\"default\":\"Xem ti\\u1ebfp\",\"en\":\"View more\",\"cn\":\"\",\"kr\":\"\"},\"_otherservice\":{\"default\":\"D\\u1ecbch v\\u1ee5 kh\\u00e1c\",\"en\":\"Other services\",\"cn\":\"\",\"kr\":\"\"},\"_tieudetecongty\":{\"default\":\"T\\u00ean c\\u00f4ng ty t\\u1ea1i \\u0111\\u00e2y\",\"en\":\"T\\u00ean c\\u00f4ng ty t\\u1ea1i \\u0111\\u00e2y\",\"cn\":\"\",\"kr\":\"\"},\"_hotrokhachhang\":{\"default\":\"H\\u1ed7 tr\\u1ee3 kh\\u00e1ch h\\u00e0ng\",\"en\":\"Customer care\",\"cn\":\"\",\"kr\":\"\"},\"_ngay\":{\"default\":\"Ng\\u00e0y\",\"en\":\"Date\",\"cn\":\"\",\"kr\":\"\"},\"_tentailieu\":{\"default\":\"T\\u00ean t\\u00e0i li\\u1ec7u\",\"en\":\"Document name\",\"cn\":\"\",\"kr\":\"\"},\"_taitailieu\":{\"default\":\"T\\u1ea3i t\\u00e0i li\\u1ec7u\",\"en\":\"Download document\",\"cn\":\"\",\"kr\":\"\"},\"_contactinfo\":{\"default\":\"\\u0110\\u1eb7t h\\u00e0ng\",\"en\":\"Contact info\",\"cn\":\"\",\"kr\":\"\"},\"_apply_your_cv\":{\"default\":\"\\u0110\\u0103ng k\\u00fd\",\"en\":\"Apply\",\"cn\":\"\",\"kr\":\"\"},\"_product_categories\":{\"default\":\"S\\u1ea3n ph\\u1ea9m c\\u00f9ng lo\\u1ea1i\",\"en\":\"Orther products\",\"cn\":\"\",\"kr\":\"\"},\"_giakm\":{\"default\":\"Gi\\u00e1 KM:\",\"en\":\"Seles off:\",\"cn\":\"\",\"kr\":\"\"},\"_giasp\":{\"default\":\"Gi\\u00e1:\",\"en\":\"Price:\",\"cn\":\"\",\"kr\":\"\"},\"_btnorder\":{\"default\":\"\\u0110\\u1eb7t h\\u00e0ng\",\"en\":\"Add to cart\",\"cn\":\"\",\"kr\":\"\"},\"_huongdanmuahang\":{\"default\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"en\":\"Shopping guide\",\"cn\":\"\",\"kr\":\"\"},\"_thanhtien\":{\"default\":\"Th\\u00e0nh ti\\u1ec1n\",\"en\":\"Total\",\"cn\":\"\",\"kr\":\"\"},\"_tongthanhtoan\":{\"default\":\"T\\u1ed5ng thanh to\\u00e1n\",\"en\":\"Total\",\"cn\":\"\",\"kr\":\"\"},\"_update_cart\":{\"default\":\"C\\u1eadp nh\\u1eadt s\\u1ed1 l\\u01b0\\u1ee3ng\",\"en\":\"Update\",\"cn\":\"\",\"kr\":\"\"},\"_order\":{\"default\":\"\\u0110\\u1eb7t h\\u00e0ng\",\"en\":\"Order\",\"cn\":\"\",\"kr\":\"\"},\"_send_order\":{\"default\":\"G\\u1eedi \\u0111\\u01a1n h\\u00e0ng\",\"en\":\"Send\",\"cn\":\"\",\"kr\":\"\"},\"_your_order_has_been_sent\":{\"default\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c g\\u1eedi th\\u00e0nh c\\u00f4ng\",\"en\":\"Order success\",\"cn\":\"\",\"kr\":\"\"},\"_shoping_cart\":{\"default\":\"Gi\\u1ecf h\\u00e0ng\",\"en\":\"Cart\",\"cn\":\"\",\"kr\":\"\"},\"_codepr\":{\"default\":\"MSP\",\"en\":\"Code\",\"cn\":\"\",\"kr\":\"\"},\"_newsletter\":{\"default\":\"Nh\\u1eadn tin m\\u1edbi\",\"en\":\"News Letter\",\"cn\":\"\",\"kr\":\"\"},\"_enter_email\":{\"default\":\"Nh\\u1eadp E-mail\",\"en\":\"Enter E-mail\",\"cn\":\"\",\"kr\":\"\"},\"_addresscontact\":{\"default\":\"\\u0110\\u1ecba ch\\u1ec9\",\"en\":\"Address\",\"cn\":\"\",\"kr\":\"\"},\"_contact\":{\"default\":\"Li\\u00ean h\\u1ec7\",\"en\":\"Contact\",\"cn\":\"\",\"kr\":\"\"},\"_soluong\":{\"default\":\"S\\u1ed1 l\\u01b0\\u1ee3ng\",\"en\":\"Quantity\",\"cn\":\"\",\"kr\":\"\"},\"_huong_dan_su_dung\":{\"default\":\"H\\u01b0\\u1edbng d\\u1eabn s\\u1eed d\\u1ee5ng\",\"en\":\"User Guide\",\"cn\":\"\",\"kr\":\"\"},\"_relate_product\":{\"default\":\"S\\u1ea3n ph\\u1ea9m li\\u00ean quan\",\"en\":\"Relate Products\",\"cn\":\"\",\"kr\":\"\"},\"_hotline\":{\"default\":\"\\u0110\\u01b0\\u1eddng d\\u00e2y n\\u00f3ng\",\"en\":\"Hotline\",\"cn\":\"\",\"kr\":\"\"},\"_download_profile\":{\"default\":\"Download Profile\",\"en\":\"Download Profile\",\"cn\":\"\",\"kr\":\"\"},\"_regiter_successful\":{\"default\":\"\\u0110\\u0103ng k\\u00fd th\\u00e0nh c\\u00f4ng\",\"en\":\"\\u0110\\u0103ng k\\u00fd th\\u00e0nh c\\u00f4ng\",\"cn\":\"\",\"kr\":\"\"},\"_linh_vuc_hoat_dong\":{\"default\":\"L\\u0129nh v\\u1ef1c ho\\u1ea1t \\u0111\\u1ed9ng\",\"en\":\"Business\",\"cn\":\"\",\"kr\":\"\"},\"_othervideo\":{\"default\":\"C\\u00e1c video kh\\u00e1c\",\"en\":\"Other videos\",\"cn\":\"\",\"kr\":\"\"},\"_other_album\":{\"default\":\"C\\u00e1c album kh\\u00e1c\",\"en\":\"Other albums\",\"cn\":\"\",\"kr\":\"\"},\"_news\":{\"default\":\"Tin t\\u1ee9c\",\"en\":\"Hot news\",\"cn\":\"\",\"kr\":\"\"},\"_view_less\":{\"default\":\"\\u1ea8n b\\u1edbt\",\"en\":\"Hide\",\"cn\":\"\",\"kr\":\"\"},\"_frm_contact_title\":{\"default\":\"Form li\\u00ean h\\u1ec7\",\"en\":\"Conact Form\",\"cn\":\"\",\"kr\":\"\"},\"_ban_can_nhap_thong_tin\":{\"default\":\"B\\u1ea1n c\\u1ea7n nh\\u1eadp \\u0111\\u1ee7 th\\u00f4ng tin v\\u00e0o nh\\u1eefng tr\\u01b0\\u1eddng m\\u00e0u \\u0111\\u1ecf\",\"en\":\"B\\u1ea1n c\\u1ea7n nh\\u1eadp \\u0111\\u1ee7 th\\u00f4ng tin v\\u00e0o nh\\u1eefng tr\\u01b0\\u1eddng m\\u00e0u \\u0111\\u1ecf\",\"cn\":\"B\\u1ea1n c\\u1ea7n nh\\u1eadp \\u0111\\u1ee7 th\\u00f4ng tin v\\u00e0o nh\\u1eefng tr\\u01b0\\u1eddng m\\u00e0u \\u0111\\u1ecf\",\"kr\":\"B\\u1ea1n c\\u1ea7n nh\\u1eadp \\u0111\\u1ee7 th\\u00f4ng tin v\\u00e0o nh\\u1eefng tr\\u01b0\\u1eddng m\\u00e0u \\u0111\\u1ecf\"},\"_thong_tin_lien_he\":{\"default\":\"Th\\u00f4ng tin li\\u00ean h\\u1ec7 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c g\\u1eedi th\\u00e0nh c\\u00f4ng !\",\"en\":\"Th\\u00f4ng tin li\\u00ean h\\u1ec7 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c g\\u1eedi th\\u00e0nh c\\u00f4ng !\",\"cn\":\"Th\\u00f4ng tin li\\u00ean h\\u1ec7 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c g\\u1eedi th\\u00e0nh c\\u00f4ng !\",\"kr\":\"Th\\u00f4ng tin li\\u00ean h\\u1ec7 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c g\\u1eedi th\\u00e0nh c\\u00f4ng !\"},\"_ghi_chu\":{\"default\":\"Ghi ch\\u00fa\",\"en\":\"Ghi ch\\u00fa\",\"cn\":\"Ghi ch\\u00fa\",\"kr\":\"Ghi ch\\u00fa\"},\"_xem_chi_tiet\":{\"default\":\"Xem chi ti\\u1ebft \",\"en\":\"Xem chi ti\\u1ebft \",\"cn\":\"Xem chi ti\\u1ebft \",\"kr\":\"Xem chi ti\\u1ebft \"},\"_vui_long_dien_thong_tin\":{\"default\":\"Vui l\\u00f2ng \\u0111i\\u1ec1n v\\u00e0o th\\u00f4ng tin sau\",\"en\":\"Please enter field below\",\"cn\":\"Please enter field below\",\"kr\":\"Please enter field below\"},\"_we_will_contact_you_soon\":{\"default\":\"Nh\\u00e2n vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd li\\u00ean h\\u1ec7 v\\u1edbi b\\u1ea1n\",\"en\":\"We will contact you soon\",\"cn\":\"We will contact you soon\",\"kr\":\"We will contact you soon\"},\"_trong_thoi_gian_som\":{\"default\":\"trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t\",\"en\":\"Thank you\",\"cn\":\"Thank you\",\"kr\":\"Thank you\"},\"_chon_dich_vu\":{\"default\":\"Ch\\u1ecdn d\\u1ecbch v\\u1ee5\",\"en\":\"Services\",\"cn\":\"Services\",\"kr\":\"Services\"},\"_our_partner\":{\"default\":\"Th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u1ed1i t\\u00e1c\",\"en\":\"Our partner\",\"cn\":\"Our partner\",\"kr\":\"Our partner\"},\"_check_field\":{\"default\":\"Vui l\\u00f2ng ki\\u1ec3m tra d\\u1eef li\\u1ec7u nh\\u1eadp v\\u00e0o\",\"en\":\"Please check input field\",\"cn\":\"Please check input field\",\"kr\":\"Please check input field\"},\"_form_title\":{\"default\":\"\\u0110\\u0102NG K\\u00dd T\\u01af V\\u1ea4N\",\"en\":\"Form name\",\"cn\":\"Form name\",\"kr\":\"Form name\"},\"_form_request\":{\"default\":\"N\\u1ed9i dung\",\"en\":\"Request\",\"cn\":\"Request\",\"kr\":\"Request\"},\"_newsletter_text\":{\"default\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus vero unde omnis obcaecati magni\",\"en\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus vero unde omnis obcaecati magni\",\"cn\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus vero unde omnis obcaecati magni\",\"kr\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus vero unde omnis obcaecati magni\"}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `id_logo` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ngay_dang` bigint UNSIGNED NOT NULL DEFAULT '0',
  `thu_tu` bigint NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '1',
  `small_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `normal_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `hit` bigint NOT NULL DEFAULT '0',
  `ajaxload` int NOT NULL DEFAULT '0',
  `id_user` bigint DEFAULT NULL,
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`id_logo`, `id_category`, `name`, `image`, `link`, `ngay_dang`, `thu_tu`, `active`, `small_image`, `normal_image`, `target`, `comment`, `hit`, `ajaxload`, `id_user`, `groupcat`) VALUES
(1, 2, 'LogoSite', '/uploaded/logo/baime-logo1.png', '', 1610585460, 1, 1, '', '', '', '', 0, 0, 8, ':'),
(2, 3, 'Lorem ipsum dolor sit amet', '/uploaded/slideshow/baner.jpg', '', 1610585460, 2, 1, '', '', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales.', 0, 0, 8, ':'),
(3, 4, 'SlideMobile01', '/uploaded/slideshow/item1.jpg', '', 1610585460, 3, 1, '', '', '', '', 0, 0, 8, ':'),
(4, 26, '1', '/uploaded/chung-nhan/iso.png', '', 1780401720, 4, 1, '', '', '', '', 0, 0, 8, ':'),
(5, 26, '2', '/uploaded/chung-nhan/iaf.png', '', 1780401720, 5, 1, '', '', '', '', 0, 0, 8, ':'),
(6, 26, '3', '/uploaded/chung-nhan/kna.png', '', 1780401720, 6, 1, '', '', '', '', 0, 0, 8, ':'),
(7, 26, '4', '/uploaded/chung-nhan/Q1.png', '', 1780401720, 7, 1, '', '', '', '', 0, 0, 8, ':'),
(8, 26, '5', '/uploaded/chung-nhan/r1.png', '', 1780401720, 8, 1, '', '', '', '', 0, 0, 8, ':'),
(9, 26, '6', '/uploaded/chung-nhan/rosh.png', '', 1780401720, 9, 1, '', '', '', '', 0, 0, 8, ':'),
(10, 26, '11', '/uploaded/chung-nhan/iaf.png', '', 1780460940, 10, 1, '', '', '', '', 0, 0, 8, ':'),
(11, 26, '12', '/uploaded/chung-nhan/iso.png', '', 1780461000, 11, 1, '', '', '', '', 0, 0, 8, ':'),
(12, 26, '13', '/uploaded/chung-nhan/kna.png', '', 1780461000, 12, 1, '', '', '', '', 0, 0, 8, ':'),
(13, 26, '14', '/uploaded/chung-nhan/Q1.png', '', 1780461000, 13, 1, '', '', '', '', 0, 0, 8, ':'),
(14, 26, '15', '/uploaded/chung-nhan/r1.png', '', 1780461000, 14, 1, '', '', '', '', 0, 0, 8, ':'),
(15, 26, '16', '/uploaded/chung-nhan/rosh.png', '', 1780461000, 15, 1, '', '', '', '', 0, 0, 8, ':');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_visited`
--

CREATE TABLE `log_visited` (
  `id` bigint NOT NULL,
  `createdate` bigint DEFAULT '0',
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_user` bigint DEFAULT '0',
  `ip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `log_visited`
--

INSERT INTO `log_visited` (`id`, `createdate`, `url`, `id_user`, `ip`) VALUES
(1, 1634813443, 'http://nhavietphongthuy.24h.co/manager/main.php?page=log_visited', 31, '118.70.118.178');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `id_member` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `lastvisit` bigint NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '0',
  `super` tinyint NOT NULL DEFAULT '0',
  `registtime` bigint NOT NULL DEFAULT '0',
  `canhbao` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `yahoo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `chucvu` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `vip` tinyint NOT NULL DEFAULT '0',
  `otherinfo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `quocgia` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `module`
--

CREATE TABLE `module` (
  `id_module` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `gia_tri` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thu_tu` bigint UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '0',
  `filefontend` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `module`
--

INSERT INTO `module` (`id_module`, `name`, `gia_tri`, `thu_tu`, `active`, `filefontend`) VALUES
(5, 'Module manager', 'module.php', 0, 0, NULL),
(9, 'Cấu hình hệ thống', 'setting.php', 0, 1, ''),
(26, 'Danh sách liên hệ', 'contact.php', 20, 1, ''),
(74, 'Header', 'header.php', 20, 0, NULL),
(48, 'Trang Tin tức', 'news.php', 8, 1, ''),
(53, 'Hỗ trợ trực tuyến', 'support.php', 20, 0, ''),
(52, 'Trang Giới thiệu', 'info.php', 6, 1, ''),
(43, 'Thông tin cá nhân', 'profile.php', 0, 1, ''),
(89, 'Qu&#7843;n l&#253; link - logo', 'logo.php', 5, 1, NULL),
(77, 'Trang ch&#7911;', 'home.php', 2, 0, NULL),
(94, 'Quản lý người dùng', 'user.php', 0, 1, ''),
(98, 'Nội dung tĩnh', 'static.php', 16, 1, ''),
(154, 'Trang download', 'download.php', 12, 0, ''),
(143, 'Chính sách mua hàng', 'static_text.php', 15, 0, ''),
(119, 'Cấu hình hiển thị', 'settingshow.php', 0, 1, ''),
(158, 'Danh mục hãng sản xuất', 'product_manufacture.php', 11, 1, ''),
(124, 'Quản lý Chuyên mục - Category', 'category.php', 0, 1, ''),
(132, 'Cấu hình ngôn ngữ', 'static_lang.php', 2, 0, ''),
(135, 'Đối tác - Khách hàng', 'partner.php', 12, 1, ''),
(144, 'Trang Videos', 'video.php', 12, 1, ''),
(155, 'Trang Sản phẩm', 'product.php', 10, 1, ''),
(150, 'Danh sách đơn hàng', 'order.php', 11, 1, ''),
(153, 'System tools', 'tool_system_tools.php', 0, 1, ''),
(156, 'Thuộc tính sản phẩm', 'attributePro.php', 11, 0, ''),
(157, 'Liên hệ', 'contactinfo.php', 18, 1, ''),
(159, 'Thông tin trên trang liên hệ', 'contactInfo.php', 18, 1, ''),
(160, 'Trang Dự Án', 'du_an.php', 12, 1, ''),
(161, 'Danh mục tỉnh thành', 'vn_province.php', 15, 0, ''),
(162, 'Direct page', 'direct.php', 20, 1, ''),
(163, 'Mức giá', 'price_range.php', 11, 1, ''),
(164, 'Duyệt bình luận', 'comment.php', 20, 0, ''),
(165, 'Ý kiến khách hàng', 'article.php', 12, 1, ''),
(168, 'Trang Dịch vụ', 'service.php', 9, 1, ''),
(169, 'Hỏi đáp', 'faq.php', 16, 0, ''),
(170, 'Hệ thống đại lý', 'daily.php', 13, 0, ''),
(171, 'Tuyển dụng', 'tuyendung.php', 12, 1, ''),
(172, 'Xem thông tin ứng tuyển', 'tuyendung_request.php', 12, 1, ''),
(174, 'Dịch vụ chi tiết', 'service_detail.php', 9, 0, ''),
(176, 'Thư viện hình ảnh', 'album.php', 12, 1, ''),
(177, 'Import danh sách bảo hành', 'import_list.php', 20, 0, ''),
(179, 'News Letter', 'newsletter.php', 20, 1, ''),
(180, 'Đội ngũ nhân sự', 'info_leader.php', 7, 1, ''),
(181, 'Đơn vị thành viên', 'info_donvi.php', 7, 1, ''),
(182, 'Lịch sự kiện - lịch khai giảng', 'event_calendar.php', 13, 0, ''),
(183, 'Danh mục xuất xứ', 'product_material.php', 11, 1, ''),
(184, 'Tác giả bài viết', 'tacgia.php', 8, 1, ''),
(185, 'Lịch sử hình thành', 'info_lichsu.php', 7, 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_news` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `imageadv` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `intro` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `thu_tu` bigint DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `id_user` bigint DEFAULT '0',
  `file` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `hit` int DEFAULT NULL,
  `hot` tinyint DEFAULT '0',
  `inhome` tinyint DEFAULT '0',
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `tags` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `header_tag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `form_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `linkto` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_tacgia` int DEFAULT NULL,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_news`, `id_category`, `name`, `title`, `description`, `keywords`, `image`, `imageadv`, `intro`, `content`, `ngay_dang`, `thu_tu`, `active`, `id_user`, `file`, `hit`, `hot`, `inhome`, `groupcat`, `tags`, `header_tag`, `url`, `form_name`, `linkto`, `id_tacgia`, `last_modify`) VALUES
(22, 12, 'Dịch vụ gia công cắt laser chất lượng, uy tín và tiết kiệm chi phí', 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', '', '', '/uploaded/tin-tuc/ung-dung-nganh-son.png', '0', 'Canxi stearat&nbsp;c&oacute; thể được định nghĩa l&agrave; một hợp chất h&oacute;a học được tạo th&agrave;nh từ axit stearic v&agrave; canxi. Đối với canxi stearate, c&ocirc;ng thức h&oacute;a học l&agrave; Ca(C18H35O2)2, điều n&agrave;y cho thấy th&ecirc;m rằng n&oacute; được tạo th&agrave;nh từ hai ion axit Stearic (C18H35O2-) hợp nhất với một ion canxi (Ca2+).', '<p>Axit stearic l&agrave; một axit b&eacute;o b&atilde;o h&ograve;a c&oacute; nguồn gốc từ thực vật hoặc động vật. Khi axit stearic phản ứng với canxi hydroxit, n&oacute; tạo ra &ldquo;canxi stearate&rdquo;. N&oacute; l&agrave; một hợp chất c&oacute; bề ngo&agrave;i m&agrave;u trắng v&agrave; như s&aacute;p. N&oacute; thường c&oacute; thể được t&igrave;m thấy ở dạng bột hoặc dạng mảnh v&agrave; hạt cực mịn.</p>\r\n\r\n<p>Canxi stearate thường được sử dụng l&agrave;m chất ổn định, chất b&ocirc;i trơn v&agrave; chất giải ph&oacute;ng trong nhiều ng&agrave;nh c&ocirc;ng nghiệp như nhựa, mỹ phẩm, thực phẩm v&agrave; dược phẩm m&agrave; ch&uacute;ng t&ocirc;i sẽ đề cập trong b&agrave;i viết n&agrave;y! Nhưng trước ti&ecirc;n, h&atilde;y bắt đầu bằng việc biết tầm quan trọng của canxi stearate trong c&aacute;c ứng dụng kh&aacute;c nhau.</p>\r\n', 1780650300, 13, 1, 8, 'null', NULL, 0, 0, ':', '', '', 'tam-quan-trong-va-ung-dung-cua-canxi-stearate-la-gi.html', '0', '', 0, 1780650350),
(29, 12, 'Dịch vụ gia công cắt laser chất lượng, uy tín và tiết kiệm chi phí', 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', '', '', '/uploaded/tin-tuc/ung-dung-nganh-son.png', '0', 'Canxi stearat&nbsp;c&oacute; thể được định nghĩa l&agrave; một hợp chất h&oacute;a học được tạo th&agrave;nh từ axit stearic v&agrave; canxi. Đối với canxi stearate, c&ocirc;ng thức h&oacute;a học l&agrave; Ca(C18H35O2)2, điều n&agrave;y cho thấy th&ecirc;m rằng n&oacute; được tạo th&agrave;nh từ hai ion axit Stearic (C18H35O2-) hợp nhất với một ion canxi (Ca2+).', '<p>Axit stearic l&agrave; một axit b&eacute;o b&atilde;o h&ograve;a c&oacute; nguồn gốc từ thực vật hoặc động vật. Khi axit stearic phản ứng với canxi hydroxit, n&oacute; tạo ra &ldquo;canxi stearate&rdquo;. N&oacute; l&agrave; một hợp chất c&oacute; bề ngo&agrave;i m&agrave;u trắng v&agrave; như s&aacute;p. N&oacute; thường c&oacute; thể được t&igrave;m thấy ở dạng bột hoặc dạng mảnh v&agrave; hạt cực mịn.</p>\r\n\r\n<p>Canxi stearate thường được sử dụng l&agrave;m chất ổn định, chất b&ocirc;i trơn v&agrave; chất giải ph&oacute;ng trong nhiều ng&agrave;nh c&ocirc;ng nghiệp như nhựa, mỹ phẩm, thực phẩm v&agrave; dược phẩm m&agrave; ch&uacute;ng t&ocirc;i sẽ đề cập trong b&agrave;i viết n&agrave;y! Nhưng trước ti&ecirc;n, h&atilde;y bắt đầu bằng việc biết tầm quan trọng của canxi stearate trong c&aacute;c ứng dụng kh&aacute;c nhau.</p>\r\n', 1780650300, 13, 1, 8, 'null', NULL, 0, 0, ':', '', '', 'tam-quan-trong-va-ung-dung-cua-canxi-stearate-la-gi.html', '0', '', 0, 1780650350),
(21, 12, 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', '', '', '/uploaded/tin-tuc/item2.png', '0', 'Canxi stearat&nbsp;c&oacute; thể được định nghĩa l&agrave; một hợp chất h&oacute;a học được tạo th&agrave;nh từ axit stearic v&agrave; canxi. Đối với canxi stearate, c&ocirc;ng thức h&oacute;a học l&agrave; Ca(C18H35O2)2, điều n&agrave;y cho thấy th&ecirc;m rằng n&oacute; được tạo th&agrave;nh từ hai ion axit Stearic (C18H35O2-) hợp nhất với một ion canxi (Ca2+).', '<p>Axit stearic l&agrave; một axit b&eacute;o b&atilde;o h&ograve;a c&oacute; nguồn gốc từ thực vật hoặc động vật. Khi axit stearic phản ứng với canxi hydroxit, n&oacute; tạo ra &ldquo;canxi stearate&rdquo;. N&oacute; l&agrave; một hợp chất c&oacute; bề ngo&agrave;i m&agrave;u trắng v&agrave; như s&aacute;p. N&oacute; thường c&oacute; thể được t&igrave;m thấy ở dạng bột hoặc dạng mảnh v&agrave; hạt cực mịn.</p>\r\n\r\n<p>Canxi stearate thường được sử dụng l&agrave;m chất ổn định, chất b&ocirc;i trơn v&agrave; chất giải ph&oacute;ng trong nhiều ng&agrave;nh c&ocirc;ng nghiệp như nhựa, mỹ phẩm, thực phẩm v&agrave; dược phẩm m&agrave; ch&uacute;ng t&ocirc;i sẽ đề cập trong b&agrave;i viết n&agrave;y! Nhưng trước ti&ecirc;n, h&atilde;y bắt đầu bằng việc biết tầm quan trọng của canxi stearate trong c&aacute;c ứng dụng kh&aacute;c nhau.</p>\r\n', 1780650300, 13, 1, 8, 'null', NULL, 0, 0, ':', '', '', 'tam-quan-trong-va-ung-dung-cua-canxi-stearate-la-gi.html', '0', '', 0, 1780650350),
(19, 12, 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', '', '', '/uploaded/tin-tuc/ung-dung-nganh-son.png', '0', 'Canxi stearat&nbsp;c&oacute; thể được định nghĩa l&agrave; một hợp chất h&oacute;a học được tạo th&agrave;nh từ axit stearic v&agrave; canxi. Đối với canxi stearate, c&ocirc;ng thức h&oacute;a học l&agrave; Ca(C18H35O2)2, điều n&agrave;y cho thấy th&ecirc;m rằng n&oacute; được tạo th&agrave;nh từ hai ion axit Stearic (C18H35O2-) hợp nhất với một ion canxi (Ca2+).', '<p>Axit stearic l&agrave; một axit b&eacute;o b&atilde;o h&ograve;a c&oacute; nguồn gốc từ thực vật hoặc động vật. Khi axit stearic phản ứng với canxi hydroxit, n&oacute; tạo ra &ldquo;canxi stearate&rdquo;. N&oacute; l&agrave; một hợp chất c&oacute; bề ngo&agrave;i m&agrave;u trắng v&agrave; như s&aacute;p. N&oacute; thường c&oacute; thể được t&igrave;m thấy ở dạng bột hoặc dạng mảnh v&agrave; hạt cực mịn.</p>\r\n\r\n<p>Canxi stearate thường được sử dụng l&agrave;m chất ổn định, chất b&ocirc;i trơn v&agrave; chất giải ph&oacute;ng trong nhiều ng&agrave;nh c&ocirc;ng nghiệp như nhựa, mỹ phẩm, thực phẩm v&agrave; dược phẩm m&agrave; ch&uacute;ng t&ocirc;i sẽ đề cập trong b&agrave;i viết n&agrave;y! Nhưng trước ti&ecirc;n, h&atilde;y bắt đầu bằng việc biết tầm quan trọng của canxi stearate trong c&aacute;c ứng dụng kh&aacute;c nhau.</p>\r\n', 1780650300, 13, 1, 8, 'null', NULL, 0, 0, ':', '', '', 'tam-quan-trong-va-ung-dung-cua-canxi-stearate-la-gi.html', '0', '', 0, 1780650350),
(18, 12, 'Giải pháp sử dụng sơn phủ cho chung cư xanh', 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', '', '', '/uploaded/tin-tuc/item2.png', '0', 'Canxi stearat&nbsp;c&oacute; thể được định nghĩa l&agrave; một hợp chất h&oacute;a học được tạo th&agrave;nh từ axit stearic v&agrave; canxi. Đối với canxi stearate, c&ocirc;ng thức h&oacute;a học l&agrave; Ca(C18H35O2)2, điều n&agrave;y cho thấy th&ecirc;m rằng n&oacute; được tạo th&agrave;nh từ hai ion axit Stearic (C18H35O2-) hợp nhất với một ion canxi (Ca2+).', '<p>Axit stearic l&agrave; một axit b&eacute;o b&atilde;o h&ograve;a c&oacute; nguồn gốc từ thực vật hoặc động vật. Khi axit stearic phản ứng với canxi hydroxit, n&oacute; tạo ra &ldquo;canxi stearate&rdquo;. N&oacute; l&agrave; một hợp chất c&oacute; bề ngo&agrave;i m&agrave;u trắng v&agrave; như s&aacute;p. N&oacute; thường c&oacute; thể được t&igrave;m thấy ở dạng bột hoặc dạng mảnh v&agrave; hạt cực mịn.</p>\r\n\r\n<p>Canxi stearate thường được sử dụng l&agrave;m chất ổn định, chất b&ocirc;i trơn v&agrave; chất giải ph&oacute;ng trong nhiều ng&agrave;nh c&ocirc;ng nghiệp như nhựa, mỹ phẩm, thực phẩm v&agrave; dược phẩm m&agrave; ch&uacute;ng t&ocirc;i sẽ đề cập trong b&agrave;i viết n&agrave;y! Nhưng trước ti&ecirc;n, h&atilde;y bắt đầu bằng việc biết tầm quan trọng của canxi stearate trong c&aacute;c ứng dụng kh&aacute;c nhau.</p>\r\n', 1780650300, 13, 1, 8, 'null', NULL, 0, 0, ':', '', '', 'tam-quan-trong-va-ung-dung-cua-canxi-stearate-la-gi.html', '0', '', 0, 1780650350),
(17, 12, 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', '', '', '/uploaded/tin-tuc/item1.png', '0', 'Canxi stearat&nbsp;c&oacute; thể được định nghĩa l&agrave; một hợp chất h&oacute;a học được tạo th&agrave;nh từ axit stearic v&agrave; canxi. Đối với canxi stearate, c&ocirc;ng thức h&oacute;a học l&agrave; Ca(C18H35O2)2, điều n&agrave;y cho thấy th&ecirc;m rằng n&oacute; được tạo th&agrave;nh từ hai ion axit Stearic (C18H35O2-) hợp nhất với một ion canxi (Ca2+).', '<p>Axit stearic l&agrave; một axit b&eacute;o b&atilde;o h&ograve;a c&oacute; nguồn gốc từ thực vật hoặc động vật. Khi axit stearic phản ứng với canxi hydroxit, n&oacute; tạo ra &ldquo;canxi stearate&rdquo;. N&oacute; l&agrave; một hợp chất c&oacute; bề ngo&agrave;i m&agrave;u trắng v&agrave; như s&aacute;p. N&oacute; thường c&oacute; thể được t&igrave;m thấy ở dạng bột hoặc dạng mảnh v&agrave; hạt cực mịn.</p>\r\n\r\n<p>Canxi stearate thường được sử dụng l&agrave;m chất ổn định, chất b&ocirc;i trơn v&agrave; chất giải ph&oacute;ng trong nhiều ng&agrave;nh c&ocirc;ng nghiệp như nhựa, mỹ phẩm, thực phẩm v&agrave; dược phẩm m&agrave; ch&uacute;ng t&ocirc;i sẽ đề cập trong b&agrave;i viết n&agrave;y! Nhưng trước ti&ecirc;n, h&atilde;y bắt đầu bằng việc biết tầm quan trọng của canxi stearate trong c&aacute;c ứng dụng kh&aacute;c nhau.</p>\r\n', 1780650300, 13, 1, 8, 'null', NULL, 0, 0, ':', '', '', 'tam-quan-trong-va-ung-dung-cua-canxi-stearate-la-gi.html', '0', '', 0, 1780650350),
(15, 12, 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', '', '', '/uploaded/tin-tuc/item1.png', '0', 'Canxi stearat&nbsp;c&oacute; thể được định nghĩa l&agrave; một hợp chất h&oacute;a học được tạo th&agrave;nh từ axit stearic v&agrave; canxi. Đối với canxi stearate, c&ocirc;ng thức h&oacute;a học l&agrave; Ca(C18H35O2)2, điều n&agrave;y cho thấy th&ecirc;m rằng n&oacute; được tạo th&agrave;nh từ hai ion axit Stearic (C18H35O2-) hợp nhất với một ion canxi (Ca2+).', '<p>Axit stearic l&agrave; một axit b&eacute;o b&atilde;o h&ograve;a c&oacute; nguồn gốc từ thực vật hoặc động vật. Khi axit stearic phản ứng với canxi hydroxit, n&oacute; tạo ra &ldquo;canxi stearate&rdquo;. N&oacute; l&agrave; một hợp chất c&oacute; bề ngo&agrave;i m&agrave;u trắng v&agrave; như s&aacute;p. N&oacute; thường c&oacute; thể được t&igrave;m thấy ở dạng bột hoặc dạng mảnh v&agrave; hạt cực mịn.</p>\r\n\r\n<p>Canxi stearate thường được sử dụng l&agrave;m chất ổn định, chất b&ocirc;i trơn v&agrave; chất giải ph&oacute;ng trong nhiều ng&agrave;nh c&ocirc;ng nghiệp như nhựa, mỹ phẩm, thực phẩm v&agrave; dược phẩm m&agrave; ch&uacute;ng t&ocirc;i sẽ đề cập trong b&agrave;i viết n&agrave;y! Nhưng trước ti&ecirc;n, h&atilde;y bắt đầu bằng việc biết tầm quan trọng của canxi stearate trong c&aacute;c ứng dụng kh&aacute;c nhau.</p>\r\n', 1780650300, 13, 1, 8, 'null', NULL, 0, 0, ':', '', '', 'tam-quan-trong-va-ung-dung-cua-canxi-stearate-la-gi.html', '0', '', 0, 1780650350),
(16, 12, 'Giải pháp sử dụng sơn phủ cho chung cư xanh', 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', '', '', '/uploaded/tin-tuc/ung-dung-nganh-son.png', '0', 'Canxi stearat&nbsp;c&oacute; thể được định nghĩa l&agrave; một hợp chất h&oacute;a học được tạo th&agrave;nh từ axit stearic v&agrave; canxi. Đối với canxi stearate, c&ocirc;ng thức h&oacute;a học l&agrave; Ca(C18H35O2)2, điều n&agrave;y cho thấy th&ecirc;m rằng n&oacute; được tạo th&agrave;nh từ hai ion axit Stearic (C18H35O2-) hợp nhất với một ion canxi (Ca2+).', '<p>Axit stearic l&agrave; một axit b&eacute;o b&atilde;o h&ograve;a c&oacute; nguồn gốc từ thực vật hoặc động vật. Khi axit stearic phản ứng với canxi hydroxit, n&oacute; tạo ra &ldquo;canxi stearate&rdquo;. N&oacute; l&agrave; một hợp chất c&oacute; bề ngo&agrave;i m&agrave;u trắng v&agrave; như s&aacute;p. N&oacute; thường c&oacute; thể được t&igrave;m thấy ở dạng bột hoặc dạng mảnh v&agrave; hạt cực mịn.</p>\r\n\r\n<p>Canxi stearate thường được sử dụng l&agrave;m chất ổn định, chất b&ocirc;i trơn v&agrave; chất giải ph&oacute;ng trong nhiều ng&agrave;nh c&ocirc;ng nghiệp như nhựa, mỹ phẩm, thực phẩm v&agrave; dược phẩm m&agrave; ch&uacute;ng t&ocirc;i sẽ đề cập trong b&agrave;i viết n&agrave;y! Nhưng trước ti&ecirc;n, h&atilde;y bắt đầu bằng việc biết tầm quan trọng của canxi stearate trong c&aacute;c ứng dụng kh&aacute;c nhau.</p>\r\n', 1780650300, 13, 1, 8, 'null', NULL, 0, 0, ':', '', '', 'tam-quan-trong-va-ung-dung-cua-canxi-stearate-la-gi.html', '0', '', 0, 1780650350),
(12, 12, 'Dịch vụ gia công cắt laser chất lượng, uy tín và tiết kiệm chi phí', 'Dịch vụ gia công cắt laser chất lượng, uy tín và tiết kiệm chi phí', '', '', '/uploaded/tin-tuc/item1.png', '0', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 1780650120, 11, 1, 8, 'null', NULL, 0, 0, ':', '', '', 'dich-vu-gia-cong-cat-laser-chat-luong-uy-tin-va-tiet-kiem-chi-phi.html', '0', '', 0, 1780650258),
(13, 12, 'Giải pháp sử dụng sơn phủ cho chung cư xanh', 'Giải pháp sử dụng sơn phủ cho chung cư xanh', '', '', '/uploaded/tin-tuc/item2.png', '0', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<br />\r\n&nbsp;</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 1780650240, 12, 1, 8, 'null', NULL, 0, 0, ':', '', '', 'giai-phap-su-dung-son-phu-cho-chung-cu-xanh.html', '0', '', 0, 1780650281),
(14, 12, 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', '', '', '/uploaded/tin-tuc/ung-dung-nganh-son.png', '0', 'Canxi stearat&nbsp;c&oacute; thể được định nghĩa l&agrave; một hợp chất h&oacute;a học được tạo th&agrave;nh từ axit stearic v&agrave; canxi. Đối với canxi stearate, c&ocirc;ng thức h&oacute;a học l&agrave; Ca(C18H35O2)2, điều n&agrave;y cho thấy th&ecirc;m rằng n&oacute; được tạo th&agrave;nh từ hai ion axit Stearic (C18H35O2-) hợp nhất với một ion canxi (Ca2+).', '<p>Axit stearic l&agrave; một axit b&eacute;o b&atilde;o h&ograve;a c&oacute; nguồn gốc từ thực vật hoặc động vật. Khi axit stearic phản ứng với canxi hydroxit, n&oacute; tạo ra &ldquo;canxi stearate&rdquo;. N&oacute; l&agrave; một hợp chất c&oacute; bề ngo&agrave;i m&agrave;u trắng v&agrave; như s&aacute;p. N&oacute; thường c&oacute; thể được t&igrave;m thấy ở dạng bột hoặc dạng mảnh v&agrave; hạt cực mịn.</p>\r\n\r\n<p>Canxi stearate thường được sử dụng l&agrave;m chất ổn định, chất b&ocirc;i trơn v&agrave; chất giải ph&oacute;ng trong nhiều ng&agrave;nh c&ocirc;ng nghiệp như nhựa, mỹ phẩm, thực phẩm v&agrave; dược phẩm m&agrave; ch&uacute;ng t&ocirc;i sẽ đề cập trong b&agrave;i viết n&agrave;y! Nhưng trước ti&ecirc;n, h&atilde;y bắt đầu bằng việc biết tầm quan trọng của canxi stearate trong c&aacute;c ứng dụng kh&aacute;c nhau.</p>\r\n', 1780650300, 13, 1, 8, 'null', NULL, 0, 0, ':', '', '', 'tam-quan-trong-va-ung-dung-cua-canxi-stearate-la-gi.html', '0', '', 0, 1780650350);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter`
--

CREATE TABLE `newsletter` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `address` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thu_tu` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id_order` bigint UNSIGNED NOT NULL,
  `session` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `createdate` bigint UNSIGNED DEFAULT '0',
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `address` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `addinfo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `xem` tinyint DEFAULT '0',
  `code` bigint DEFAULT '0',
  `status` tinyint DEFAULT '0',
  `total` decimal(10,0) DEFAULT '0',
  `customer_ip` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `customer_loc` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `payment_type` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `transStatus` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TransactionNo` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ResponseCode` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `BankCode` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PayDate` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `OrderInfo` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `pay_status` int DEFAULT '0',
  `last_update` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id_partner` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `thu_tu` bigint DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `id_user` bigint DEFAULT '0',
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `tags` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `header_tag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `company` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `partner`
--

INSERT INTO `partner` (`id_partner`, `id_category`, `name`, `title`, `description`, `keywords`, `image`, `intro`, `content`, `ngay_dang`, `thu_tu`, `active`, `id_user`, `groupcat`, `tags`, `header_tag`, `url`, `company`, `address`, `phone`, `last_modify`) VALUES
(1, 27, 'item1', 'item1', '', '', '/uploaded/doitac/ss.png', '', '', 1780401780, 1, 1, 8, ':', NULL, NULL, 'item1.html', '', '', '', 1780401804),
(2, 27, '2', '2', '', '', '/uploaded/doitac/tot.png', '', '', 1780401780, 2, 1, 8, ':', NULL, NULL, '2.html', '', '', '', 1780401811),
(3, 27, '3', '3', '', '', '/uploaded/doitac/vin.png', '', '', 1780401780, 3, 1, 8, ':', NULL, NULL, '3.html', '', '', '', 1780401821),
(4, 27, '4', '4', '', '', '/uploaded/doitac/nito.png', '', '', 1780401780, 4, 1, 8, ':', NULL, NULL, '4.html', '', '', '', 1780401829),
(5, 27, '5', '5', '', '', '/uploaded/doitac/lg.png', '', '', 1780401780, 5, 1, 8, ':', NULL, NULL, '5.html', '', '', '', 1780401839),
(6, 27, '6', '6', '', '', '/uploaded/doitac/huyndai.png', '', '', 1780401840, 6, 1, 8, ':', NULL, NULL, '6.html', '', '', '', 1780401846),
(7, 27, '7', '7', '', '', '/uploaded/doitac/lg.png', '', '', 1780401840, 7, 1, 8, ':', NULL, NULL, '7.html', '', '', '', 1780401863),
(8, 27, '8', '8', '', '', '/uploaded/doitac/nito.png', '', '', 1780401840, 8, 1, 8, ':', NULL, NULL, '8.html', '', '', '', 1780401876),
(9, 27, '11', '11', '', '', '/uploaded/doitac/tot.png', '', '', 1780401840, 9, 1, 8, ':', NULL, NULL, '11.html', '', '', '', 1780401885);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `createdate` bigint UNSIGNED DEFAULT '0',
  `transStatus` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `merchantID` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `merchTxnRef` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `orderInfo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `txnResponseCode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `txnResponseText` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `transactionNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `status` tinyint DEFAULT '0',
  `last_update` bigint DEFAULT NULL,
  `client_ip` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `price_range`
--

CREATE TABLE `price_range` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `min_value` bigint DEFAULT '0',
  `max_value` bigint DEFAULT '0',
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `thu_tu` int DEFAULT '0',
  `lang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `active` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `price_range`
--

INSERT INTO `price_range` (`id`, `name`, `min_value`, `max_value`, `content`, `thu_tu`, `lang`, `active`) VALUES
(1, '< 1.000.000', 0, 1000000, NULL, 0, '', 1),
(2, '1.000.000 - 2.000.000', 1000000, 2000000, NULL, 0, '', 1),
(4, '2.000.000 - 3.000.000', 2000000, 3000000, NULL, 0, '', 1),
(5, '3.000.000 - 4.000.000', 3000000, 4000000, NULL, 0, '', 1),
(7, 'Trên 200', 4000000, 400000000, NULL, 0, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_product` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `km` double DEFAULT '0',
  `pricekm` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `giaphukien` bigint DEFAULT '0',
  `don_vi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `id_user` tinyint UNSIGNED DEFAULT '0',
  `thu_tu` int DEFAULT '0',
  `hit` bigint DEFAULT '0',
  `status` tinyint DEFAULT '1',
  `ma` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `groupcat` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `fileurl` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `moi` int DEFAULT '0',
  `title` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `tags` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `header_tag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `size` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `color` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `product_ver` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ttkhuyenmai` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `chatlieu` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `kichthuoc` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `xuatxu` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `related_ids` varbinary(256) DEFAULT NULL,
  `phukien` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `attr` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `icon` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'none',
  `videourl` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `texticon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `contenttab0` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `contenttab1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `contenttab2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `spcungloai` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_manufacture` bigint DEFAULT NULL,
  `image_list` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `last_modify` bigint DEFAULT NULL,
  `id_material` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_product`, `id_category`, `name`, `image`, `price`, `km`, `pricekm`, `giaphukien`, `don_vi`, `intro`, `content`, `ngay_dang`, `active`, `id_user`, `thu_tu`, `hit`, `status`, `ma`, `groupcat`, `fileurl`, `moi`, `title`, `keywords`, `description`, `tags`, `header_tag`, `size`, `color`, `product_ver`, `ttkhuyenmai`, `url`, `chatlieu`, `kichthuoc`, `xuatxu`, `related_ids`, `phukien`, `attr`, `icon`, `videourl`, `texticon`, `contenttab0`, `contenttab1`, `contenttab2`, `spcungloai`, `id_manufacture`, `image_list`, `last_modify`, `id_material`) VALUES
(1, 16, 'PVC Leather Series', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png', '', 0, '', 0, NULL, 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', '', 1780392060, 1, 8, 1, 0, 1, '', ':0:', '', 0, 'PVC Leather Series', '', '', '', '', '', '', NULL, '', 'pvc-leather-series.html', NULL, NULL, NULL, 0x302c30, '0', '{\"45\":\"\",\"43\":\"\",\"46\":\"\"}', '', '', NULL, '<p><strong>T&ecirc;n h&oacute;a chất</strong>: ZINC STEARATE</p>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: ZTLC ( 145 &hellip;161 )</p>\r\n\r\n<p><strong>C&ocirc;ng thức h&oacute;a học</strong>: Zn(C17H35COO)2</p>\r\n\r\n<p><strong>Cas No</strong>: 558-05-1</p>\r\n\r\n<h2>M&ocirc; tả sản phẩm:</h2>\r\n\r\n<p><strong>ZTLC ( 145,148,155,160,161 ):&nbsp;</strong>Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/san-pham/thong-so.jpg\" style=\"width: 100%;\" /> Đ&oacute;ng bao: 20kg/bao<br />\r\n<br />\r\nĐộ ổn định lưu trữ: 2 năm trong điều kiện bảo quản kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t trong bao b&igrave; gốc<br />\r\n&nbsp;</p>\r\n\r\n<h2>Ứng dụng:</h2>\r\n\r\n<ul>\r\n	<li>Tấm cao su v&agrave; EVA d&ugrave;ng l&agrave;m chất b&ocirc;i trơn, chất ph&acirc;n t&aacute;n b&ecirc;n trong v&agrave; để phủi bụi</li>\r\n	<li>D&ugrave;ng cho sơn, lớp phủ ho&aacute; chất, v để chống chảy tự do v&agrave; chống ẩm</li>\r\n	<li>Cho nhựa : EPS, PE, PP, PVC, hạt m&agrave;u Masterbach, Taical, Ống nhựa&hellip;.</li>\r\n	<li>Vật liệu Composite polymer đặc biệt.</li>\r\n</ul>\r\n', '', NULL, '', 0, '[{\"image_path\":\"\\/uploaded\\/san-pham\\/it-dt.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"\\/uploaded\\/san-pham\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"\\/uploaded\\/san-pham\\/item2.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1780392388, 0),
(2, 16, 'PVC Leather Series', '/uploaded/san-pham/it-dt.png', '', 0, '', 0, NULL, 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', '', 1780392060, 1, 8, 2, 0, 1, '', ':', '', 0, 'PVC Leather Series', '', '', '', '', '', '', NULL, '', 'pvc-leather-series.html', NULL, NULL, NULL, 0x302c30, '0', '{\"45\":\"\",\"43\":\"\",\"46\":\"\"}', '', '', NULL, '<p><strong>T&ecirc;n h&oacute;a chất</strong>: ZINC STEARATE</p>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: ZTLC ( 145 &hellip;161 )</p>\r\n\r\n<p><strong>C&ocirc;ng thức h&oacute;a học</strong>: Zn(C17H35COO)2</p>\r\n\r\n<p><strong>Cas No</strong>: 558-05-1</p>\r\n\r\n<h2>M&ocirc; tả sản phẩm:</h2>\r\n\r\n<p><strong>ZTLC ( 145,148,155,160,161 ):&nbsp;</strong>Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/san-pham/thong-so.jpg\" style=\"width: 100%;\" /> Đ&oacute;ng bao: 20kg/bao<br />\r\n<br />\r\nĐộ ổn định lưu trữ: 2 năm trong điều kiện bảo quản kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t trong bao b&igrave; gốc<br />\r\n&nbsp;</p>\r\n\r\n<h2>Ứng dụng:</h2>\r\n\r\n<ul>\r\n	<li>Tấm cao su v&agrave; EVA d&ugrave;ng l&agrave;m chất b&ocirc;i trơn, chất ph&acirc;n t&aacute;n b&ecirc;n trong v&agrave; để phủi bụi</li>\r\n	<li>D&ugrave;ng cho sơn, lớp phủ ho&aacute; chất, v để chống chảy tự do v&agrave; chống ẩm</li>\r\n	<li>Cho nhựa : EPS, PE, PP, PVC, hạt m&agrave;u Masterbach, Taical, Ống nhựa&hellip;.</li>\r\n	<li>Vật liệu Composite polymer đặc biệt.</li>\r\n</ul>\r\n', '', NULL, '', 0, '[{\"image_path\":\"uploaded\\/san-pham\\/it-dt.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item2.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1780392513, 0),
(3, 16, 'PVC Leather Series', '/uploaded/san-pham/item1.png', '', 0, '', 0, NULL, 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', '', 1780392060, 1, 8, 3, 0, 1, '', ':', '', 0, 'PVC Leather Series', '', '', '', '', '', '', NULL, '', 'pvc-leather-series.html', NULL, NULL, NULL, 0x302c30, '0', '{\"45\":\"\",\"43\":\"\",\"46\":\"\"}', '', '', NULL, '<p><strong>T&ecirc;n h&oacute;a chất</strong>: ZINC STEARATE</p>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: ZTLC ( 145 &hellip;161 )</p>\r\n\r\n<p><strong>C&ocirc;ng thức h&oacute;a học</strong>: Zn(C17H35COO)2</p>\r\n\r\n<p><strong>Cas No</strong>: 558-05-1</p>\r\n\r\n<h2>M&ocirc; tả sản phẩm:</h2>\r\n\r\n<p><strong>ZTLC ( 145,148,155,160,161 ):&nbsp;</strong>Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/san-pham/thong-so.jpg\" style=\"width: 100%;\" /> Đ&oacute;ng bao: 20kg/bao<br />\r\n<br />\r\nĐộ ổn định lưu trữ: 2 năm trong điều kiện bảo quản kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t trong bao b&igrave; gốc<br />\r\n&nbsp;</p>\r\n\r\n<h2>Ứng dụng:</h2>\r\n\r\n<ul>\r\n	<li>Tấm cao su v&agrave; EVA d&ugrave;ng l&agrave;m chất b&ocirc;i trơn, chất ph&acirc;n t&aacute;n b&ecirc;n trong v&agrave; để phủi bụi</li>\r\n	<li>D&ugrave;ng cho sơn, lớp phủ ho&aacute; chất, v để chống chảy tự do v&agrave; chống ẩm</li>\r\n	<li>Cho nhựa : EPS, PE, PP, PVC, hạt m&agrave;u Masterbach, Taical, Ống nhựa&hellip;.</li>\r\n	<li>Vật liệu Composite polymer đặc biệt.</li>\r\n</ul>\r\n', '', NULL, '', 0, '[{\"image_path\":\"uploaded\\/san-pham\\/it-dt.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item2.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1780392520, 0),
(4, 16, 'PVC Leather Series', '/uploaded/san-pham/item3.png', '', 0, '', 0, NULL, 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', '', 1780392060, 1, 8, 5, 0, 1, '', ':', '', 0, 'PVC Leather Series', '', '', '', '', '', '', NULL, '', 'pvc-leather-series.html', NULL, NULL, NULL, 0x302c30, '0', '{\"45\":\"\",\"43\":\"\",\"46\":\"\"}', '', '', NULL, '<p><strong>T&ecirc;n h&oacute;a chất</strong>: ZINC STEARATE</p>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: ZTLC ( 145 &hellip;161 )</p>\r\n\r\n<p><strong>C&ocirc;ng thức h&oacute;a học</strong>: Zn(C17H35COO)2</p>\r\n\r\n<p><strong>Cas No</strong>: 558-05-1</p>\r\n\r\n<h2>M&ocirc; tả sản phẩm:</h2>\r\n\r\n<p><strong>ZTLC ( 145,148,155,160,161 ):&nbsp;</strong>Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/san-pham/thong-so.jpg\" style=\"width: 100%;\" /> Đ&oacute;ng bao: 20kg/bao<br />\r\n<br />\r\nĐộ ổn định lưu trữ: 2 năm trong điều kiện bảo quản kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t trong bao b&igrave; gốc<br />\r\n&nbsp;</p>\r\n\r\n<h2>Ứng dụng:</h2>\r\n\r\n<ul>\r\n	<li>Tấm cao su v&agrave; EVA d&ugrave;ng l&agrave;m chất b&ocirc;i trơn, chất ph&acirc;n t&aacute;n b&ecirc;n trong v&agrave; để phủi bụi</li>\r\n	<li>D&ugrave;ng cho sơn, lớp phủ ho&aacute; chất, v để chống chảy tự do v&agrave; chống ẩm</li>\r\n	<li>Cho nhựa : EPS, PE, PP, PVC, hạt m&agrave;u Masterbach, Taical, Ống nhựa&hellip;.</li>\r\n	<li>Vật liệu Composite polymer đặc biệt.</li>\r\n</ul>\r\n', '', NULL, '', 0, '[{\"image_path\":\"uploaded\\/san-pham\\/it-dt.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item2.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1780392537, 0),
(5, 16, 'PVC Leather Series', '/uploaded/san-pham/item2.png', '', 0, '', 0, NULL, 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', '', 1780392060, 1, 8, 4, 0, 1, '', ':', '', 0, 'PVC Leather Series', '', '', '', '', '', '', NULL, '', 'pvc-leather-series.html', NULL, NULL, NULL, 0x302c30, '0', '{\"45\":\"\",\"43\":\"\",\"46\":\"\"}', '', '', NULL, '<p><strong>T&ecirc;n h&oacute;a chất</strong>: ZINC STEARATE</p>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: ZTLC ( 145 &hellip;161 )</p>\r\n\r\n<p><strong>C&ocirc;ng thức h&oacute;a học</strong>: Zn(C17H35COO)2</p>\r\n\r\n<p><strong>Cas No</strong>: 558-05-1</p>\r\n\r\n<h2>M&ocirc; tả sản phẩm:</h2>\r\n\r\n<p><strong>ZTLC ( 145,148,155,160,161 ):&nbsp;</strong>Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/san-pham/thong-so.jpg\" style=\"width: 100%;\" /> Đ&oacute;ng bao: 20kg/bao<br />\r\n<br />\r\nĐộ ổn định lưu trữ: 2 năm trong điều kiện bảo quản kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t trong bao b&igrave; gốc<br />\r\n&nbsp;</p>\r\n\r\n<h2>Ứng dụng:</h2>\r\n\r\n<ul>\r\n	<li>Tấm cao su v&agrave; EVA d&ugrave;ng l&agrave;m chất b&ocirc;i trơn, chất ph&acirc;n t&aacute;n b&ecirc;n trong v&agrave; để phủi bụi</li>\r\n	<li>D&ugrave;ng cho sơn, lớp phủ ho&aacute; chất, v để chống chảy tự do v&agrave; chống ẩm</li>\r\n	<li>Cho nhựa : EPS, PE, PP, PVC, hạt m&agrave;u Masterbach, Taical, Ống nhựa&hellip;.</li>\r\n	<li>Vật liệu Composite polymer đặc biệt.</li>\r\n</ul>\r\n', '', NULL, '', 0, '[{\"image_path\":\"uploaded\\/san-pham\\/it-dt.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item2.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1780392529, 0),
(6, 16, 'PVC Leather Series', '/uploaded/san-pham/item4.png', '', 0, '', 0, NULL, 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', '', 1780392060, 1, 8, 7, 0, 1, '', ':9:17:18:19:20:21:22:23:', '', 0, 'PVC Leather Series', '', '', '', '', '', '', NULL, '', 'pvc-leather-series.html', NULL, NULL, NULL, 0x302c30, '0', '{\"45\":\"\",\"43\":\"\",\"46\":\"\"}', '', '', NULL, '<p><strong>T&ecirc;n h&oacute;a chất</strong>: ZINC STEARATE</p>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: ZTLC ( 145 &hellip;161 )</p>\r\n\r\n<p><strong>C&ocirc;ng thức h&oacute;a học</strong>: Zn(C17H35COO)2</p>\r\n\r\n<p><strong>Cas No</strong>: 558-05-1</p>\r\n\r\n<h2>M&ocirc; tả sản phẩm:</h2>\r\n\r\n<p><strong>ZTLC ( 145,148,155,160,161 ):&nbsp;</strong>Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/san-pham/thong-so.jpg\" style=\"width: 100%;\" /> Đ&oacute;ng bao: 20kg/bao<br />\r\n<br />\r\nĐộ ổn định lưu trữ: 2 năm trong điều kiện bảo quản kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t trong bao b&igrave; gốc<br />\r\n&nbsp;</p>\r\n\r\n<h2>Ứng dụng:</h2>\r\n\r\n<ul>\r\n	<li>Tấm cao su v&agrave; EVA d&ugrave;ng l&agrave;m chất b&ocirc;i trơn, chất ph&acirc;n t&aacute;n b&ecirc;n trong v&agrave; để phủi bụi</li>\r\n	<li>D&ugrave;ng cho sơn, lớp phủ ho&aacute; chất, v để chống chảy tự do v&agrave; chống ẩm</li>\r\n	<li>Cho nhựa : EPS, PE, PP, PVC, hạt m&agrave;u Masterbach, Taical, Ống nhựa&hellip;.</li>\r\n	<li>Vật liệu Composite polymer đặc biệt.</li>\r\n</ul>\r\n', '', NULL, '', 0, '[{\"image_path\":\"uploaded\\/san-pham\\/it-dt.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item2.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1780563037, 0),
(7, 16, 'PVC Leather Series', '/uploaded/san-pham/item1.png', '', 0, '', 0, NULL, 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', '', 1780392060, 1, 8, 8, 0, 1, '', ':9:17:18:19:20:21:22:23:', '', 0, 'PVC Leather Series', '', '', '', '', '', '', NULL, '', 'pvc-leather-series.html', NULL, NULL, NULL, 0x302c30, '0', '{\"45\":\"\",\"43\":\"\",\"46\":\"\"}', '', '', NULL, '<p><strong>T&ecirc;n h&oacute;a chất</strong>: ZINC STEARATE</p>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: ZTLC ( 145 &hellip;161 )</p>\r\n\r\n<p><strong>C&ocirc;ng thức h&oacute;a học</strong>: Zn(C17H35COO)2</p>\r\n\r\n<p><strong>Cas No</strong>: 558-05-1</p>\r\n\r\n<h2>M&ocirc; tả sản phẩm:</h2>\r\n\r\n<p><strong>ZTLC ( 145,148,155,160,161 ):&nbsp;</strong>Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/san-pham/thong-so.jpg\" style=\"width: 100%;\" /> Đ&oacute;ng bao: 20kg/bao<br />\r\n<br />\r\nĐộ ổn định lưu trữ: 2 năm trong điều kiện bảo quản kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t trong bao b&igrave; gốc<br />\r\n&nbsp;</p>\r\n\r\n<h2>Ứng dụng:</h2>\r\n\r\n<ul>\r\n	<li>Tấm cao su v&agrave; EVA d&ugrave;ng l&agrave;m chất b&ocirc;i trơn, chất ph&acirc;n t&aacute;n b&ecirc;n trong v&agrave; để phủi bụi</li>\r\n	<li>D&ugrave;ng cho sơn, lớp phủ ho&aacute; chất, v để chống chảy tự do v&agrave; chống ẩm</li>\r\n	<li>Cho nhựa : EPS, PE, PP, PVC, hạt m&agrave;u Masterbach, Taical, Ống nhựa&hellip;.</li>\r\n	<li>Vật liệu Composite polymer đặc biệt.</li>\r\n</ul>\r\n', '', NULL, '', 0, '[{\"image_path\":\"uploaded\\/san-pham\\/it-dt.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item2.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1780563031, 0),
(8, 16, 'PVC Leather Series', '/uploaded/san-pham/item2.png', '', 0, '', 0, NULL, 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', '', 1780392060, 1, 8, 9, 0, 1, '', ':9:17:18:19:20:21:22:23:', '', 0, 'PVC Leather Series', '', '', '', '', '', '', NULL, '', 'pvc-leather-series.html', NULL, NULL, NULL, 0x302c30, '0', '{\"45\":\"\",\"43\":\"\",\"46\":\"\"}', '', '', NULL, '<p><strong>T&ecirc;n h&oacute;a chất</strong>: ZINC STEARATE</p>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: ZTLC ( 145 &hellip;161 )</p>\r\n\r\n<p><strong>C&ocirc;ng thức h&oacute;a học</strong>: Zn(C17H35COO)2</p>\r\n\r\n<p><strong>Cas No</strong>: 558-05-1</p>\r\n\r\n<h2>M&ocirc; tả sản phẩm:</h2>\r\n\r\n<p><strong>ZTLC ( 145,148,155,160,161 ):&nbsp;</strong>Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/san-pham/thong-so.jpg\" style=\"width: 100%;\" /> Đ&oacute;ng bao: 20kg/bao<br />\r\n<br />\r\nĐộ ổn định lưu trữ: 2 năm trong điều kiện bảo quản kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t trong bao b&igrave; gốc<br />\r\n&nbsp;</p>\r\n\r\n<h2>Ứng dụng:</h2>\r\n\r\n<ul>\r\n	<li>Tấm cao su v&agrave; EVA d&ugrave;ng l&agrave;m chất b&ocirc;i trơn, chất ph&acirc;n t&aacute;n b&ecirc;n trong v&agrave; để phủi bụi</li>\r\n	<li>D&ugrave;ng cho sơn, lớp phủ ho&aacute; chất, v để chống chảy tự do v&agrave; chống ẩm</li>\r\n	<li>Cho nhựa : EPS, PE, PP, PVC, hạt m&agrave;u Masterbach, Taical, Ống nhựa&hellip;.</li>\r\n	<li>Vật liệu Composite polymer đặc biệt.</li>\r\n</ul>\r\n', '', NULL, '', 0, '[{\"image_path\":\"uploaded\\/san-pham\\/it-dt.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item2.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1780563025, 0),
(9, 16, 'PVC Leather Series', '/uploaded/san-pham/item3.png', '', 0, '', 0, NULL, 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', '', 1780392060, 1, 8, 10, 0, 1, '', ':9:17:18:19:20:21:22:23:', '', 0, 'PVC Leather Series', '', '', '', '', '', '', NULL, '', 'pvc-leather-series.html', NULL, NULL, NULL, 0x302c30, '0', '{\"45\":\"\",\"43\":\"\",\"46\":\"\"}', '', '', NULL, '<p><strong>T&ecirc;n h&oacute;a chất</strong>: ZINC STEARATE</p>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: ZTLC ( 145 &hellip;161 )</p>\r\n\r\n<p><strong>C&ocirc;ng thức h&oacute;a học</strong>: Zn(C17H35COO)2</p>\r\n\r\n<p><strong>Cas No</strong>: 558-05-1</p>\r\n\r\n<h2>M&ocirc; tả sản phẩm:</h2>\r\n\r\n<p><strong>ZTLC ( 145,148,155,160,161 ):&nbsp;</strong>Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/san-pham/thong-so.jpg\" style=\"width: 100%;\" /> Đ&oacute;ng bao: 20kg/bao<br />\r\n<br />\r\nĐộ ổn định lưu trữ: 2 năm trong điều kiện bảo quản kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t trong bao b&igrave; gốc<br />\r\n&nbsp;</p>\r\n\r\n<h2>Ứng dụng:</h2>\r\n\r\n<ul>\r\n	<li>Tấm cao su v&agrave; EVA d&ugrave;ng l&agrave;m chất b&ocirc;i trơn, chất ph&acirc;n t&aacute;n b&ecirc;n trong v&agrave; để phủi bụi</li>\r\n	<li>D&ugrave;ng cho sơn, lớp phủ ho&aacute; chất, v để chống chảy tự do v&agrave; chống ẩm</li>\r\n	<li>Cho nhựa : EPS, PE, PP, PVC, hạt m&agrave;u Masterbach, Taical, Ống nhựa&hellip;.</li>\r\n	<li>Vật liệu Composite polymer đặc biệt.</li>\r\n</ul>\r\n', '', NULL, '', 0, '[{\"image_path\":\"uploaded\\/san-pham\\/it-dt.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item2.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1780563018, 0),
(10, 16, 'PVC Leather Series', '/uploaded/san-pham/item1.png', '', 0, '', 0, NULL, 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', '', 1780392060, 1, 8, 11, 0, 1, '', ':9:17:18:19:20:21:22:23:', '', 0, 'PVC Leather Series', '', '', '', '', '', '', NULL, '', 'pvc-leather-series.html', NULL, NULL, NULL, 0x302c30, '0', '{\"45\":\"\",\"43\":\"\",\"46\":\"\"}', '', '', NULL, '<p><strong>T&ecirc;n h&oacute;a chất</strong>: ZINC STEARATE</p>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: ZTLC ( 145 &hellip;161 )</p>\r\n\r\n<p><strong>C&ocirc;ng thức h&oacute;a học</strong>: Zn(C17H35COO)2</p>\r\n\r\n<p><strong>Cas No</strong>: 558-05-1</p>\r\n\r\n<h2>M&ocirc; tả sản phẩm:</h2>\r\n\r\n<p><strong>ZTLC ( 145,148,155,160,161 ):&nbsp;</strong>Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/san-pham/thong-so.jpg\" style=\"width: 100%;\" /> Đ&oacute;ng bao: 20kg/bao<br />\r\n<br />\r\nĐộ ổn định lưu trữ: 2 năm trong điều kiện bảo quản kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t trong bao b&igrave; gốc<br />\r\n&nbsp;</p>\r\n\r\n<h2>Ứng dụng:</h2>\r\n\r\n<ul>\r\n	<li>Tấm cao su v&agrave; EVA d&ugrave;ng l&agrave;m chất b&ocirc;i trơn, chất ph&acirc;n t&aacute;n b&ecirc;n trong v&agrave; để phủi bụi</li>\r\n	<li>D&ugrave;ng cho sơn, lớp phủ ho&aacute; chất, v để chống chảy tự do v&agrave; chống ẩm</li>\r\n	<li>Cho nhựa : EPS, PE, PP, PVC, hạt m&agrave;u Masterbach, Taical, Ống nhựa&hellip;.</li>\r\n	<li>Vật liệu Composite polymer đặc biệt.</li>\r\n</ul>\r\n', '', NULL, '', 0, '[{\"image_path\":\"uploaded\\/san-pham\\/it-dt.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item2.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1780563012, 0),
(11, 16, 'PVC Leather Series', '/uploaded/san-pham/item2.png', '', 0, '', 0, NULL, 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầuĐược sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầuĐược sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầuĐược sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 1780392060, 1, 8, 12, 0, 1, '', ':9:17:18:19:20:21:22:23:', '', 0, 'PVC Leather Series', '', '', '', '', '', '', NULL, '', 'pvc-leather-series.html', NULL, NULL, NULL, 0x302c30, '0', '{\"45\":\"\",\"43\":\"\",\"46\":\"\"}', '', '', NULL, '<p>T&ecirc;n h&oacute;a chất: ZINC STEARATE</p>\r\n\r\n<p>M&atilde; sản phẩm: ZTLC ( 145 &hellip;161 )</p>\r\n\r\n<p>C&ocirc;ng thức h&oacute;a học: Zn(C17H35COO)2</p>\r\n\r\n<p>Cas No: 558-05-1</p>\r\n\r\n<h2>M&ocirc; tả sản phẩm:</h2>\r\n\r\n<p>ZTLC ( 145,148,155,160,161 ):&nbsp;Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu<br />\r\n<br />\r\n<img alt=\"\" src=\"/uploaded/san-pham/thong-so.jpg\" /> Đ&oacute;ng bao: 20kg/bao<br />\r\n<br />\r\nĐộ ổn định lưu trữ: 2 năm trong điều kiện bảo quản kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t trong bao b&igrave; gốc<br />\r\n&nbsp;</p>\r\n\r\n<h2>Ứng dụng:</h2>\r\n\r\n<ul>\r\n	<li>Tấm cao su v&agrave; EVA d&ugrave;ng l&agrave;m chất b&ocirc;i trơn, chất ph&acirc;n t&aacute;n b&ecirc;n trong v&agrave; để phủi bụi</li>\r\n	<li>D&ugrave;ng cho sơn, lớp phủ ho&aacute; chất, v để chống chảy tự do v&agrave; chống ẩm</li>\r\n	<li>Cho nhựa : EPS, PE, PP, PVC, hạt m&agrave;u Masterbach, Taical, Ống nhựa&hellip;.</li>\r\n	<li>Vật liệu Composite polymer đặc biệt.</li>\r\n</ul>\r\n', '', NULL, '', 0, '[{\"image_path\":\"uploaded\\/san-pham\\/it-dt.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item3.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"},{\"image_path\":\"uploaded\\/san-pham\\/item2.png\",\"image_name\":\"\",\"image_desc\":\"\",\"image_thu_tu\":\"\"}]', 1780634676, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attribute`
--

CREATE TABLE `product_attribute` (
  `id` bigint NOT NULL,
  `id_product` bigint NOT NULL,
  `id_attr` bigint NOT NULL,
  `attr_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_manufacture`
--

CREATE TABLE `product_manufacture` (
  `id` int NOT NULL,
  `id_category` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `lang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `thu_tu` bigint DEFAULT NULL,
  `active` tinyint DEFAULT '1',
  `alias_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hot` int DEFAULT '0',
  `url` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product_manufacture`
--

INSERT INTO `product_manufacture` (`id`, `id_category`, `name`, `image`, `content`, `intro`, `lang`, `thu_tu`, `active`, `alias_name`, `hot`, `url`) VALUES
(2, 0, 'Tên hãng SX 03', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.<br />\r\n<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam', '', 1, 1, 'ten-hang-sx-03/', 0, 'ten-hang-sx-03.html'),
(3, 0, 'Tên hãng SX 02', '/uploaded/y-kien-khach-hang/man.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.<br />\r\n<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam, et fermentum libero ligula vitae purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla in risus et urna hendrerit tincidunt. Sed et nulla vitae metus fringilla lobortis ut nec massa. Donec posuere erat eget condimentum semper. Cras cursus augue id posuere ultricies. Integer vel lacinia lacus, sit amet lacinia turpis. In hac habitasse platea dictumst. In in velit magna. Donec ornare sapien id magna porttitor faucibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada malesuada nibh, nec dictum tortor posuere a. Nam dignissim, ante eu placerat interdum, lectus massa efficitur quam', '', 1, 1, 'ten-hang-sx-02/', 0, 'ten-hang-sx-02.html');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_material`
--

CREATE TABLE `product_material` (
  `id` int NOT NULL,
  `id_category` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `lang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `thu_tu` bigint DEFAULT NULL,
  `active` tinyint DEFAULT '1',
  `alias_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hot` int DEFAULT '0',
  `url` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product_material`
--

INSERT INTO `product_material` (`id`, `id_category`, `name`, `image`, `content`, `intro`, `lang`, `thu_tu`, `active`, `alias_name`, `hot`, `url`) VALUES
(6, 0, 'Hàn quốc', '', '', '', '', 1, 1, 'han-quoc/', 0, 'han-quoc.html'),
(7, 0, 'Thailand', '', '', '', '', 1, 1, 'thailand/', 0, 'thailand.html'),
(5, 0, 'Nhật Bản', '', '', '', '', 1, 1, 'nhat-ban/', 0, 'nhat-ban.html');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_attribute`
--

CREATE TABLE `pro_attribute` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `default_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `style` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `alias_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `pro_attribute`
--

INSERT INTO `pro_attribute` (`id`, `name`, `type`, `default_value`, `style`, `alias_name`) VALUES
(43, 'Kích thước', '', '', '', 'kich-thuoc'),
(44, 'Trọng lượng', '', '', '', 'trong-luong'),
(45, 'Chất liệu', '', '', '', 'chat-lieu'),
(46, 'Thời gian ST', '', '', '', 'thoi-gian-st'),
(47, 'Cao', '', '', '', 'cao'),
(48, 'Dài', '', '', '', 'dai'),
(49, 'Rộng', '', '', '', 'rong'),
(50, 'Xuất Xứ', '', '', '', 'xuat-xu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` bigint NOT NULL,
  `table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_table` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_value` bigint DEFAULT NULL,
  `rate` int DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdate` bigint DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `search_content`
--

CREATE TABLE `search_content` (
  `id_search` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name_unsign` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `intro` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `intro_unsign` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content_unsign` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `lang` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `tags` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `search_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_category` int DEFAULT '0',
  `id_item` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_item_value` bigint DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `search_content`
--

INSERT INTO `search_content` (`id_search`, `name`, `name_unsign`, `intro`, `intro_unsign`, `content`, `content_unsign`, `ngay_dang`, `keywords`, `lang`, `active`, `tags`, `search_type`, `url`, `id_category`, `id_item`, `id_item_value`, `table_name`, `image`) VALUES
(1, 'Giới thiệu', 'gioi thieu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n&nbsp;', 'lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.\r\n??', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n&nbsp;', 'lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.\r\n\r\nlorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.\r\n\r\n\r\nlorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.\r\n??', 1688007930, NULL, '', 1, '', NULL, 'gioi-thieu/', NULL, 'id_category', 5, 'category', '/uploaded/tin-tuc/hinh-nen-thien-nhien-cho-may-tinh-1.jpg'),
(2, 'Tác giả', 'tac gia', '', '', '', '', 1688008562, NULL, '', 1, '', NULL, 'tac-gia/', NULL, 'id_category', 8, 'category', ''),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'lorem ipsum dolor sit amet, consectetur adipiscing elit', '', '', '', '', 1688009638, NULL, '', 1, '', NULL, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit.html', 8, 'id_tacgia', 55, 'tacgia', ''),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit 001', 'lorem ipsum dolor sit amet, consectetur adipiscing elit 001', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.', 'lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ornare tellus non ornare molestie. Maecenas convallis leo justo, eget lobortis dui fringilla vitae. Proin ac volutpat leo. Aliquam id fermentum tortor.<br />\r\n&nbsp;', 'lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.\r\n\r\nlorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.\r\n\r\n\r\nlorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. praesent ornare tellus non ornare molestie. maecenas convallis leo justo, eget lobortis dui fringilla vitae. proin ac volutpat leo. aliquam id fermentum tortor.\r\n??', 1688009889, NULL, '', 1, '', NULL, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit.html', 6, 'id_news', 10, 'news', '/uploaded/tin-tuc/hinh-nen-thien-nhien-cho-may-tinh-1.jpg'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.', 'lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.', 'lorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id.\r\n\r\nlorem ipsum dolor sit amet, consectetur adipiscing elit. duis euismod ut nisl id sodales. etiam consectetur nulla vel ornare aliquam. phasellus non velit eget massa consectetur lobortis. integer tempus consequat augue, vitae rutrum sem tempor id.', 1688010227, NULL, '', 1, '', NULL, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit.html', 0, 'id_album', 1, 'album', '/uploaded/tin-tuc/hinh-nen-thien-nhien-cho-may-tinh-1.jpg'),
(7, 'Sản phẩm', 'san pham', '', '', '', '', 1780310983, NULL, '', 1, '', NULL, 'san-pham/', NULL, 'id_category', 9, 'category', ''),
(8, 'Ứng dụng', 'ung dung', '', '', '', '', 1780311210, NULL, '', 1, '', NULL, 'ung-dung/', NULL, 'id_category', 10, 'category', ''),
(9, 'Hệ thống phân phối', 'he thong phan phoi', '', '', '', '', 1780311233, NULL, '', 1, '', NULL, 'he-thong-phan-phoi/', NULL, 'id_category', 11, 'category', ''),
(10, 'Tin tức', 'tin tuc', '', '', '', '', 1780311242, NULL, '', 1, '', NULL, 'tin-tuc/', NULL, 'id_category', 12, 'category', ''),
(11, 'Tuyển dụng', 'tuyen dung', '', '', '', '', 1780311265, NULL, '', 1, '', NULL, 'tuyen-dung/', NULL, 'id_category', 13, 'category', ''),
(12, 'Liên hệ', 'lien he', '', '', '', '', 1780311276, NULL, '', 1, '', NULL, 'lien-he/', NULL, 'id_category', 14, 'category', ''),
(13, 'Giới thiêu trang chủ', 'gioi thieu trang chu', 'C&ocirc;ng ty TNHH C&ocirc;ng nghệ Vật liệu mới B&aacute;ch Mỹ Nam Kinh được th&agrave; nh lập năm 2002 tại quận Cao Thuần, th&agrave;nh phố Nam Kinh. T&ecirc;n cũ của c&ocirc;ng ty l&agrave; &ldquo;C&ocirc;ng ty TNHH Titan Tương B ảo Nam Kinh&rdquo; v&agrave; &ldquo;C&ocirc;ng ty TNHH Nhựa B&aacute;ch Mỹ Nam Kinh&rdquo;. Hiện nay, c&ocirc;ng ty c&oacute; 4 chi nh&aacute;nh gồm: Chi nh&aacute;nh Quảng T&acirc;y, Chi nh&aacute;nh Quảng Đ&ocirc;ng, Chi nh&aacute;nh Thường Ch&acirc;u v&agrave; Chi nh&aacute;nh Thượng Hải, c&ugrave;ng với nhiều sản phẩm đa dạng.<br />\r\n<br />\r\nTrải qua 20 năm kh&ocirc;ng ngừng học hỏi v&agrave; ph&aacute;t triển, hiện tại t rụ sở ch&iacute;nh Nam Kinh c&oacute; 9 d&acirc;y chuyền sản xuất nhựa Amin, 4 d&acirc;y chuyền sản xuất chất ổn định Canxi-Kẽm tổng hợp....', 'cong ty tnhh cong nghe vat lieu moi bach my nam kinh duoc tha nh lap nam 2002 tai quan cao thuan, thanh pho nam kinh. ten cu cua cong ty la “cong ty tnhh titan tuong b ao nam kinh” va “cong ty tnhh nhua bach my nam kinh”. hien nay, cong ty co 4 chi nhanh gom: chi nhanh quang tay, chi nhanh quang dong, chi nhanh thuong chau va chi nhanh thuong hai, cung voi nhieu san pham da dang.\r\n\r\ntrai qua 20 nam khong ngung hoc hoi va phat trien, hien tai t ru so chinh nam kinh co 9 day chuyen san xuat nhua amin, 4 day chuyen san xuat chat on dinh canxi-kem tong hop....', '', '', 1780387640, NULL, '', 1, '', NULL, 'gioi-thieu-trang-chu/', NULL, 'id_category', 15, 'category', '/uploaded/gioi-thieu/gioithieu.jpg'),
(14, 'Diện tích sản xuất', 'dien tich san xuat', '15.000m2+', '15.000m2+', '', '', 1780388068, NULL, NULL, 1, '', NULL, 'dien-tich-san-xuat.html', 15, 'id_info', 1, 'info', '/uploaded/ico/Group%20605.png'),
(15, 'Công suất sản xuất', 'cong suat san xuat', '1.500tấn+', '1.500tan+', '', '', 1780388130, NULL, NULL, 1, '', NULL, 'cong-suat-san-xuat.html', 15, 'id_info', 2, 'info', '/uploaded/ico/industrial-2%201.png'),
(16, 'Khách hàng hài lòng', 'khach hang hai long', '98%', '98%', '', '', 1780388142, NULL, NULL, 1, '', NULL, 'khach-hang-hai-long.html', 15, 'id_info', 3, 'info', '/uploaded/ico/Group%20604.png'),
(17, 'Quốc gia xuất khẩu', 'quoc gia xuat khau', '30+', '30+', '', '', 1780388152, NULL, NULL, 1, '', NULL, 'quoc-gia-xuat-khau.html', 15, 'id_info', 4, 'info', '/uploaded/ico/Vector.png'),
(18, 'Sản phẩm nổi bật', 'san pham noi bat', '', '', '', '', 1780389794, NULL, '', 1, '', NULL, 'san-pham-noi-bat/', NULL, 'id_category', 16, 'category', ''),
(19, 'Sản phẩm cung cấp', 'san pham cung cap', '', '', '', '', 1780390026, NULL, '', 1, '', NULL, 'san-pham-cung-cap/', NULL, 'id_category', 17, 'category', ''),
(20, 'Chất ổn định', 'chat on dinh', '', '', '', '', 1780390042, NULL, '', 1, '', NULL, 'chat-on-dinh/', NULL, 'id_category', 18, 'category', ''),
(21, 'Chất ổn định dạng lỏng', 'chat on dinh dang long', '', '', '', '', 1780390115, NULL, '', 1, '', NULL, 'chat-on-dinh-dang-long/', NULL, 'id_category', 19, 'category', '/uploaded/san-pham/item1.png'),
(22, 'SÁP PE', 'sap pe', '', '', '', '', 1780390129, NULL, '', 1, '', NULL, 'sap-pe/', NULL, 'id_category', 20, 'category', '/uploaded/san-pham/item3.png'),
(23, 'SÁP PP', 'sap pp', '', '', '', '', 1780390153, NULL, '', 1, '', NULL, 'sap-pp/', NULL, 'id_category', 21, 'category', '/uploaded/san-pham/item4.png'),
(24, 'Barium Sulfate', 'barium sulfate', '', '', '', '', 1780390170, NULL, '', 1, '', NULL, 'barium-sulfate/', NULL, 'id_category', 22, 'category', '/uploaded/san-pham/it-dt.png'),
(25, 'Titanium Dioxide', 'titanium dioxide', '', '', '', '', 1780390188, NULL, '', 1, '', NULL, 'titanium-dioxide/', NULL, 'id_category', 23, 'category', '/uploaded/san-pham/item3.png'),
(26, 'PVC Leather Series', 'pvc leather series', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'duoc san xuat thong qua quy trinh tong hop cai tien su dung axit stearic chat luong cao va the hien cac dac tinh sau: kha nang boi tron, phan tan tot, kha nang chong tham nuoc tuyet voi, do trong suot va on dinh thoi tiet tot, khong doc hai, khong nhuom mau sunfua, it hinh thanh mau ban dau', '', '', 1780392388, NULL, NULL, 1, '', NULL, 'pvc-leather-series.html', 16, 'id_product', 1, 'product', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png'),
(27, 'PVC Leather Series', 'pvc leather series', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'duoc san xuat thong qua quy trinh tong hop cai tien su dung axit stearic chat luong cao va the hien cac dac tinh sau: kha nang boi tron, phan tan tot, kha nang chong tham nuoc tuyet voi, do trong suot va on dinh thoi tiet tot, khong doc hai, khong nhuom mau sunfua, it hinh thanh mau ban dau', '', '', 1780392458, NULL, NULL, 1, '', NULL, 'pvc-leather-series.html', 16, 'id_product', 2, 'product', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png'),
(28, 'PVC Leather Series', 'pvc leather series', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'duoc san xuat thong qua quy trinh tong hop cai tien su dung axit stearic chat luong cao va the hien cac dac tinh sau: kha nang boi tron, phan tan tot, kha nang chong tham nuoc tuyet voi, do trong suot va on dinh thoi tiet tot, khong doc hai, khong nhuom mau sunfua, it hinh thanh mau ban dau', '', '', 1780392458, NULL, NULL, 1, '', NULL, 'pvc-leather-series.html', 16, 'id_product', 3, 'product', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png'),
(29, 'PVC Leather Series', 'pvc leather series', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'duoc san xuat thong qua quy trinh tong hop cai tien su dung axit stearic chat luong cao va the hien cac dac tinh sau: kha nang boi tron, phan tan tot, kha nang chong tham nuoc tuyet voi, do trong suot va on dinh thoi tiet tot, khong doc hai, khong nhuom mau sunfua, it hinh thanh mau ban dau', '', '', 1780392459, NULL, NULL, 1, '', NULL, 'pvc-leather-series.html', 16, 'id_product', 4, 'product', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png'),
(30, 'PVC Leather Series', 'pvc leather series', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'duoc san xuat thong qua quy trinh tong hop cai tien su dung axit stearic chat luong cao va the hien cac dac tinh sau: kha nang boi tron, phan tan tot, kha nang chong tham nuoc tuyet voi, do trong suot va on dinh thoi tiet tot, khong doc hai, khong nhuom mau sunfua, it hinh thanh mau ban dau', '', '', 1780392459, NULL, NULL, 1, '', NULL, 'pvc-leather-series.html', 16, 'id_product', 5, 'product', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png'),
(31, 'PVC Leather Series', 'pvc leather series', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'duoc san xuat thong qua quy trinh tong hop cai tien su dung axit stearic chat luong cao va the hien cac dac tinh sau: kha nang boi tron, phan tan tot, kha nang chong tham nuoc tuyet voi, do trong suot va on dinh thoi tiet tot, khong doc hai, khong nhuom mau sunfua, it hinh thanh mau ban dau', '', '', 1780392460, NULL, NULL, 1, '', NULL, 'pvc-leather-series.html', 16, 'id_product', 6, 'product', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png'),
(32, 'PVC Leather Series', 'pvc leather series', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'duoc san xuat thong qua quy trinh tong hop cai tien su dung axit stearic chat luong cao va the hien cac dac tinh sau: kha nang boi tron, phan tan tot, kha nang chong tham nuoc tuyet voi, do trong suot va on dinh thoi tiet tot, khong doc hai, khong nhuom mau sunfua, it hinh thanh mau ban dau', '', '', 1780392460, NULL, NULL, 1, '', NULL, 'pvc-leather-series.html', 16, 'id_product', 7, 'product', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png'),
(33, 'PVC Leather Series', 'pvc leather series', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'duoc san xuat thong qua quy trinh tong hop cai tien su dung axit stearic chat luong cao va the hien cac dac tinh sau: kha nang boi tron, phan tan tot, kha nang chong tham nuoc tuyet voi, do trong suot va on dinh thoi tiet tot, khong doc hai, khong nhuom mau sunfua, it hinh thanh mau ban dau', '', '', 1780392460, NULL, NULL, 1, '', NULL, 'pvc-leather-series.html', 16, 'id_product', 8, 'product', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png'),
(34, 'PVC Leather Series', 'pvc leather series', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'duoc san xuat thong qua quy trinh tong hop cai tien su dung axit stearic chat luong cao va the hien cac dac tinh sau: kha nang boi tron, phan tan tot, kha nang chong tham nuoc tuyet voi, do trong suot va on dinh thoi tiet tot, khong doc hai, khong nhuom mau sunfua, it hinh thanh mau ban dau', '', '', 1780392461, NULL, NULL, 1, '', NULL, 'pvc-leather-series.html', 16, 'id_product', 9, 'product', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png'),
(35, 'PVC Leather Series', 'pvc leather series', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'duoc san xuat thong qua quy trinh tong hop cai tien su dung axit stearic chat luong cao va the hien cac dac tinh sau: kha nang boi tron, phan tan tot, kha nang chong tham nuoc tuyet voi, do trong suot va on dinh thoi tiet tot, khong doc hai, khong nhuom mau sunfua, it hinh thanh mau ban dau', '', '', 1780392461, NULL, NULL, 1, '', NULL, 'pvc-leather-series.html', 16, 'id_product', 10, 'product', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png'),
(36, 'PVC Leather Series', 'pvc leather series', 'Được sản xuất th&ocirc;ng qua quy tr&igrave;nh tổng hợp cải tiến sử dụng axit stearic chất lượng cao v&agrave; thể hiện c&aacute;c đặc t&iacute;nh sau: Khả năng b&ocirc;i trơn, ph&acirc;n t&aacute;n tốt, khả năng chống thấm nước tuyệt vời, độ trong suốt v&agrave; ổn định thời tiết tốt, kh&ocirc;ng độc hại, kh&ocirc;ng nhuộm m&agrave;u sunfua, &iacute;t h&igrave;nh th&agrave;nh m&agrave;u ban đầu', 'duoc san xuat thong qua quy trinh tong hop cai tien su dung axit stearic chat luong cao va the hien cac dac tinh sau: kha nang boi tron, phan tan tot, kha nang chong tham nuoc tuyet voi, do trong suot va on dinh thoi tiet tot, khong doc hai, khong nhuom mau sunfua, it hinh thanh mau ban dau', '', '', 1780392462, NULL, NULL, 1, '', NULL, 'pvc-leather-series.html', 16, 'id_product', 11, 'product', '/uploaded/san-pham/f93045dc62665ee52f9a7e07bf4c7af409dd26dd.png'),
(37, 'BaiMe Việt Nam', 'baime viet nam', 'Cung cấp c&aacute;c d&ograve;ng sản phẩm chất lượng cao đ&atilde; gi&uacute;p ch&uacute;ng t&ocirc;i trở th&agrave;nh một trong những nh&agrave; cung cấp phụ gia uy t&iacute;n, đ&aacute;ng tin cậy v&agrave; h&agrave;ng đầu tr&ecirc;n thị trường trong nước v&agrave; quốc tế.<br />\r\n<br />\r\nVới phương ch&acirc;m &ldquo; SẢN PHẨM TẬN T&Acirc;M &ndash; VƯƠN TẦM S&Aacute;NG TẠO&rdquo;, ch&uacute;ng t&ocirc;i cam kết mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm chất lượng tốt nhất, gi&aacute; cả cạnh tranh nhất, thời gian giao h&agrave;ng nhanh nhất v&agrave; dịch vụ tốt nhất.<br />\r\n&nbsp;', 'cung cap cac dong san pham chat luong cao da giup chung toi tro thanh mot trong nhung nha cung cap phu gia uy tin, dang tin cay va hang dau tren thi truong trong nuoc va quoc te.\r\n\r\nvoi phuong cham “ san pham tan tam – vuon tam sang tao”, chung toi cam ket mang den cho khach hang nhung san pham chat luong tot nhat, gia ca canh tranh nhat, thoi gian giao hang nhanh nhat va dich vu tot nhat.\r\n ', '', '', 1780400147, NULL, '', 1, '', NULL, 'baime-viet-nam/', NULL, 'id_category', 24, 'category', '/uploaded/gioi-thieu/gt-big.png'),
(38, 'Chất lượng đảm bảo', 'chat luong dam bao', '', '', '', '', 1780400931, NULL, NULL, 1, '', NULL, 'chat-luong-dam-bao.html', 24, 'id_info', 5, 'info', '/uploaded/ico/tuvan.png'),
(39, 'Tư vấn tận tâm', 'tu van tan tam', '', '', '', '', 1780400944, NULL, NULL, 1, '', NULL, 'tu-van-tan-tam.html', 24, 'id_info', 6, 'info', '/uploaded/ico/partner-certification%201.png'),
(40, 'Sản phẩm đa dạng', 'san pham da dang', '', '', '', '', 1780400953, NULL, NULL, 1, '', NULL, 'san-pham-da-dang.html', 24, 'id_info', 7, 'info', '/uploaded/ico/sp-da-dang.png'),
(41, 'Giá thành hợp lý', 'gia thanh hop ly', '', '', '', '', 1780400965, NULL, NULL, 1, '', NULL, 'gia-thanh-hop-ly.html', 24, 'id_info', 8, 'info', '/uploaded/ico/gia-hop-ly.png'),
(42, 'Thân thiện với môi trường', 'than thien voi moi truong', '', '', '', '', 1780400979, NULL, NULL, 1, '', NULL, 'than-thien-voi-moi-truong.html', 24, 'id_info', 9, 'info', '/uploaded/ico/earth_3039893%201.png'),
(43, 'Ứng dụng cao', 'ung dung cao', '', '', '', '', 1780401001, NULL, NULL, 1, '', NULL, 'ung-dung-cao.html', 24, 'id_info', 10, 'info', '/uploaded/ico/clipboard_1962592%201.png'),
(44, 'Chất lượng đảm bảo', 'chat luong dam bao', '', '', '', '', 1780401096, NULL, '', 1, '', NULL, 'chat-luong-dam-bao/', NULL, 'id_category', 25, 'category', '/uploaded/ico/tuvan.png'),
(45, 'Chứng nhận ', 'chung nhan ', '', '', '', '', 1780401709, NULL, '', 1, '', NULL, 'chung-nhan/', NULL, 'id_category', 26, 'category', ''),
(46, 'Đối tác - khách hàng', 'doi tac - khach hang', '', '', '', '', 1780401727, NULL, '', 1, '', NULL, 'doi-tac-khach-hang/', NULL, 'id_category', 27, 'category', ''),
(47, 'Trang chủ', 'trang chu', '', '', '', '', 1780460825, NULL, '', 1, '', NULL, '', NULL, 'id_category', 1, 'category', ''),
(48, 'Tầm nhìn sứ mệnh', 'tam nhin su menh', '', '', '', '', 1780479182, NULL, '', 1, '', NULL, 'tam-nhin-su-menh/', NULL, 'id_category', 28, 'category', ''),
(49, 'Giới thiệu chung', 'gioi thieu chung', '', '', '', '', 1780548093, NULL, '', 1, '', NULL, 'gioi-thieu-chung/', NULL, 'id_category', 29, 'category', ''),
(50, 'Thư viện ảnh', 'thu vien anh', '', '', '', '', 1780548195, NULL, '', 1, '', NULL, 'thu-vien-anh/', NULL, 'id_category', 30, 'category', ''),
(51, '1', '1', '', '', '', '', 1780559564, NULL, NULL, 1, '', NULL, '1.html', 30, 'id_album', 2, 'album', '/uploaded/album/kiem-tra-2.jpg'),
(52, '', '', '', '', '', '', 1780559569, NULL, NULL, 1, '', NULL, '.html', 30, 'id_album', 3, 'album', '/uploaded/album/kiem-tra-3.jpg'),
(53, '', '', '', '', '', '', 1780559573, NULL, NULL, 1, '', NULL, '.html', 30, 'id_album', 4, 'album', '/uploaded/album/kiem-tra-sp-5.jpg'),
(54, '', '', '', '', '', '', 1780559578, NULL, NULL, 1, '', NULL, '.html', 30, 'id_album', 5, 'album', '/uploaded/album/kiem-tra-2.jpg'),
(55, '', '', '', '', '', '', 1780559582, NULL, NULL, 1, '', NULL, '.html', 30, 'id_album', 6, 'album', '/uploaded/album/kiem-tra-3.jpg'),
(56, '', '', '', '', '', '', 1780559586, NULL, NULL, 1, '', NULL, '.html', 30, 'id_album', 7, 'album', '/uploaded/album/kiem-tra-sp-5.jpg'),
(57, '', '', '', '', '', '', 1780559603, NULL, NULL, 1, '', NULL, '.html', 30, 'id_album', 8, 'album', '/uploaded/album/kiem-tra-2.jpg'),
(58, 'Dịch vụ gia công cắt laser chất lượng, uy tín và tiết kiệm chi phí', 'dich vu gia cong cat laser chat luong, uy tin va tiet kiem chi phi', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'there are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. if you are going to use a passage of lorem ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. all the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. it uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to generate lorem ipsum which looks reasonable. the generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'there are many variations of passages of lorem ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. if you are going to use a passage of lorem ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. all the lorem ipsum generators on the internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. it uses a dictionary of over 200 latin words, combined with a handful of model sentence structures, to generate lorem ipsum which looks reasonable. the generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n', 1780650258, NULL, NULL, 1, '', NULL, 'dich-vu-gia-cong-cat-laser-chat-luong-uy-tin-va-tiet-kiem-chi-phi.html', 12, 'id_news', 12, 'news', '/uploaded/tin-tuc/item1.png'),
(59, 'Giải pháp sử dụng sơn phủ cho chung cư xanh', 'giai phap su dung son phu cho chung cu xanh', '', '', '', '', 1780650270, NULL, NULL, 1, '', NULL, 'giai-phap-su-dung-son-phu-cho-chung-cu-xanh.html', 12, 'id_news', 13, 'news', '/uploaded/tin-tuc/item2.png'),
(60, 'Tầm quan trọng và ứng dụng của Canxi Stearate là gì?', 'tam quan trong va ung dung cua canxi stearate la gi?', 'Canxi stearat&nbsp;c&oacute; thể được định nghĩa l&agrave; một hợp chất h&oacute;a học được tạo th&agrave;nh từ axit stearic v&agrave; canxi. Đối với canxi stearate, c&ocirc;ng thức h&oacute;a học l&agrave; Ca(C18H35O2)2, điều n&agrave;y cho thấy th&ecirc;m rằng n&oacute; được tạo th&agrave;nh từ hai ion axit Stearic (C18H35O2-) hợp nhất với một ion canxi (Ca2+).', 'canxi stearat co the duoc dinh nghia la mot hop chat hoa hoc duoc tao thanh tu axit stearic va canxi. doi voi canxi stearate, cong thuc hoa hoc la ca(c18h35o2)2, dieu nay cho thay them rang no duoc tao thanh tu hai ion axit stearic (c18h35o2-) hop nhat voi mot ion canxi (ca2+).', '<p>Axit stearic l&agrave; một axit b&eacute;o b&atilde;o h&ograve;a c&oacute; nguồn gốc từ thực vật hoặc động vật. Khi axit stearic phản ứng với canxi hydroxit, n&oacute; tạo ra &ldquo;canxi stearate&rdquo;. N&oacute; l&agrave; một hợp chất c&oacute; bề ngo&agrave;i m&agrave;u trắng v&agrave; như s&aacute;p. N&oacute; thường c&oacute; thể được t&igrave;m thấy ở dạng bột hoặc dạng mảnh v&agrave; hạt cực mịn.</p>\r\n\r\n<p>Canxi stearate thường được sử dụng l&agrave;m chất ổn định, chất b&ocirc;i trơn v&agrave; chất giải ph&oacute;ng trong nhiều ng&agrave;nh c&ocirc;ng nghiệp như nhựa, mỹ phẩm, thực phẩm v&agrave; dược phẩm m&agrave; ch&uacute;ng t&ocirc;i sẽ đề cập trong b&agrave;i viết n&agrave;y! Nhưng trước ti&ecirc;n, h&atilde;y bắt đầu bằng việc biết tầm quan trọng của canxi stearate trong c&aacute;c ứng dụng kh&aacute;c nhau.</p>\r\n', 'axit stearic la mot axit beo bao hoa co nguon goc tu thuc vat hoac dong vat. khi axit stearic phan ung voi canxi hydroxit, no tao ra “canxi stearate”. no la mot hop chat co be ngoai mau trang va nhu sap. no thuong co the duoc tim thay o dang bot hoac dang manh va hat cuc min.\r\n\r\ncanxi stearate thuong duoc su dung lam chat on dinh, chat boi tron va chat giai phong trong nhieu nganh cong nghiep nhu nhua, my pham, thuc pham va duoc pham ma chung toi se de cap trong bai viet nay! nhung truoc tien, hay bat dau bang viec biet tam quan trong cua canxi stearate trong cac ung dung khac nhau.\r\n', 1780650350, NULL, NULL, 1, '', NULL, 'tam-quan-trong-va-ung-dung-cua-canxi-stearate-la-gi.html', 12, 'id_news', 14, 'news', '/uploaded/tin-tuc/ung-dung-nganh-son.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id_service` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `imageadv` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `thu_tu` bigint DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `id_user` bigint DEFAULT '0',
  `fileurl` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `tieubieu` int DEFAULT '0',
  `image_list` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `inhome` tinyint DEFAULT '0',
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `tags` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_tacgia` int DEFAULT NULL,
  `last_modify` bigint DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_detail`
--

CREATE TABLE `service_detail` (
  `id` bigint UNSIGNED NOT NULL,
  `id_service` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `imageadv` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `intro` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `thu_tu` bigint DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `id_user` bigint DEFAULT '0',
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `item_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `last_modify` bigint DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `setting_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `setting_value` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`setting_name`, `setting_value`) VALUES
('site_name', 'Công ty TNHH Vật liệu mới BaiMe Việt Nam'),
('dir_path', ''),
('site_email', 'baime@baimevietnam.com'),
('use_smtp', '0'),
('smtp_host', ''),
('smtp_username', ''),
('smtp_password', ''),
('template_dir', 'templates'),
('language_dir', 'english'),
('date_format', 'd/m/Y'),
('time_format', 'H:i'),
('convert_tool', 'gd'),
('convert_tool_path', ''),
('gz_compress', '0'),
('gz_compress_level', '1'),
('upload_mode', '1'),
('allowed_mediatypes', 'jpg,gif,png,bmp,aif,au,avi,mid,mov,mp3,mpg,swf,wav,rar,ra,rm,zip,pdf,txt,xls,doc,swf'),
('max_thumb_width', '400'),
('max_thumb_height', '300'),
('max_image_height', '1024'),
('max_media_size', '5000'),
('upload_notify', '0'),
('upload_emails', ''),
('auto_thumbnail', '1'),
('auto_thumbnail_dimension', '180'),
('auto_thumbnail_resize_type', '1'),
('auto_thumbnail_quality', '100'),
('id_country', '207'),
('paging_range', '5'),
('watermark_text', ''),
('upload_media_path', 'uploaded/files/'),
('upload_image_path', 'uploaded/images/'),
('session_timeout', '15'),
('max_image_width', '400'),
('time_offset', '0'),
('http_host', ''),
('document_root', '/var/www/html/baime'),
('site_keywords', ''),
('site_description', ''),
('category_item', '8'),
('diachi_cty', ''),
('guid', '73ac30115450d0707a8278bd1c61fde38e576223'),
('bgimage', ''),
('active_site', '1'),
('content_active_site', ''),
('acticle_item', '8'),
('watermark_image', ''),
('tigia', '20880'),
('dir_autoupload', 'uploaded/images/'),
('toppage', ''),
('mailer', 'SMTP'),
('bodypage', ''),
('bottompage', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settingshow`
--

CREATE TABLE `settingshow` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` longtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_user` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `settingshow`
--

INSERT INTO `settingshow` (`id`, `name`, `content`, `id_user`) VALUES
(1, '1', '{\"newsinpage\":\"9\",\"producthome\":\"3\",\"albumpage\":\"3\",\"productinpage\":\"9\",\"photopage\":\"3\",\"hotline\":\"086 290 0156\",\"companyname\":\"C\\u00f4ng ty TNHH V\\u1eadt li\\u1ec7u m\\u1edbi BaiMe Vi\\u1ec7t Nam\",\"companyaddress\":\"K\\u0110T Trung H\\u00f2a Nh\\u00e2n Ch\\u00ednh, Thanh Xu\\u00e2n, H\\u00e0 N\\u1ed9i\",\"companyphone\":\"0968675568 \",\"companyemail\":\"baime@baimevietnam.com\",\"companywebsite\":\"http:\\/\\/yourdomainname.com\",\"facebook\":\"https:\\/\\/www.facebook.com\\/yourfanpage\\/\",\"youtube\":\"#\",\"twitter\":\"#\",\"pinterest\":\"#\",\"fanpage\":\"#\",\"apikey\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setups`
--

CREATE TABLE `setups` (
  `setup_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `setup_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `static`
--

CREATE TABLE `static` (
  `id_static` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thu_tu` bigint DEFAULT '0',
  `id_catstatic` bigint NOT NULL DEFAULT '0',
  `id_user` bigint NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '0',
  `ngay_dang` bigint NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `inwhere` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `static`
--

INSERT INTO `static` (`id_static`, `name`, `content`, `thu_tu`, `id_catstatic`, `id_user`, `active`, `ngay_dang`, `image`, `inwhere`, `lang`) VALUES
(25, 'TRỤ SỞ CHÍNH ', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse;width:90%;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width: 26px;\"><img src=\"/uploaded/ico/icon-map.png\" /></td>\r\n			<td style=\"font-family: \'Muli-B\';\">Kho Lạnh An Việt 3, KCN Quang Minh mở rộng, M&ecirc; Linh, H&agrave; Nội</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img src=\"/uploaded/ico/icon-call.png\" /></td>\r\n			<td style=\"font-family: \'Muli-B\';\">Hotline: 086 290 0156</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img src=\"/uploaded/ico/icon-mail.png\" /></td>\r\n			<td style=\"font-family: \'Muli-B\';\">Email: baime@baimevietnam.com</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img src=\"/uploaded/ico/icon-web.png\" /></td>\r\n			<td style=\"font-family: \'Muli-B\';\">Website: www.baimevietnam.com</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 0, 1, 0, '', 'footer', ''),
(26, 'Company Name', '<strong>Address: </strong>Tầng 5, Khu văn ph&ograve;ng A, T&ograve;a nh&agrave; Imperia Garden, Số 203 Phố Nguyễn Huy Tưởng, Thanh Xu&acirc;n, H&agrave; Nội<br />\r\n<strong>Tel:</strong> 0966.877.869 - 0934.877.869<br />\r\n<strong>Email:</strong> thangmayplc@gmail.com', 0, 0, 0, 1, 0, '', 'footer', 'en'),
(30, 'Copyright', '&copy; Copyright by&nbsp;', 0, 0, 0, 1, 0, '', 'copyright', 'en'),
(31, 'Trang Liên hệ', '- Adress: 16th FLoor - PV Oil Holding, 148 Hoang Quoc Viet, Cau Giay, Ha Noi<br />\r\n- Tel: (04).37634666 / 37634777 / 38374999<br />\r\n- Email: info@anphatgroup.com.vn<br />\r\n- www.anphatgroup.com.vn', 0, 0, 0, 1, 0, '', '', 'en'),
(32, 'Footer cn', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"table-list\" style=\"border-collapse:collapse;width:100%;\">\r\n	<tbody>\r\n		<tr>\r\n			<td height=\"25\" width=\"23\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(1).png\" style=\"float: left;\" /></td>\r\n			<td>Địa chỉ: Số 109 Nguyễn Tu&acirc;n, P.Nh&acirc;n Ch&iacute;nh, Thanh Xu&acirc;n, HN</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(2).png\" style=\"float: left;\" /></td>\r\n			<td>Tel: 094.8866.109 - 088.884.5050</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(3).png\" style=\"float: left;\" /></td>\r\n			<td>Email: thelegend@daiviet.vn</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(4).png\" style=\"float: left;\" /></td>\r\n			<td>Website: www.thelegenddaiviet.vn&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 0, 1, 0, '', 'footer', 'cn'),
(33, 'Footer kr', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"table-list\" style=\"border-collapse:collapse;width:100%;\">\r\n	<tbody>\r\n		<tr>\r\n			<td height=\"25\" width=\"23\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(1).png\" style=\"float: left;\" /></td>\r\n			<td>Địa chỉ: Số 109 Nguyễn Tu&acirc;n, P.Nh&acirc;n Ch&iacute;nh, Thanh Xu&acirc;n, HN</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(2).png\" style=\"float: left;\" /></td>\r\n			<td>Tel: 094.8866.109 - 088.884.5050</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(3).png\" style=\"float: left;\" /></td>\r\n			<td>Email: thelegend@daiviet.vn</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"25\"><img alt=\"\" src=\"/uploaded/no-img/footer-icon%20(4).png\" style=\"float: left;\" /></td>\r\n			<td>Website: www.thelegenddaiviet.vn&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 0, 1, 0, '', 'footer', 'kr'),
(34, 'Điều khoản thanh toán trực tuyến', '', 0, 0, 0, 1, 0, '', 'dieukhoan', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `static_text`
--

CREATE TABLE `static_text` (
  `id_static` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thu_tu` bigint DEFAULT '0',
  `id_user` bigint NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '0',
  `ngay_dang` bigint NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `code_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sys_image`
--

CREATE TABLE `sys_image` (
  `id` bigint NOT NULL,
  `name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image_desc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `thu_tu` bigint DEFAULT '0',
  `image` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_category` bigint DEFAULT NULL,
  `table_name` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_item` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_value` bigint DEFAULT NULL,
  `type_code` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `active` int DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `id_tacgia` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `chucdanh` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `imageadv` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `intro` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `thongtinkhac` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `thu_tu` bigint DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `id_user` bigint DEFAULT '0',
  `header_tag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`id_tacgia`, `id_category`, `name`, `title`, `chucdanh`, `description`, `keywords`, `image`, `imageadv`, `intro`, `content`, `thongtinkhac`, `ngay_dang`, `thu_tu`, `active`, `id_user`, `header_tag`, `url`, `last_modify`) VALUES
(54, 58, 'Hà Nguyễn', 'Hà Nguyễn', 'Founder / CEO', '', '', '/uploaded/gioi-thieu/founder.jpg', '0', '<div style=\"text-align: justify;\"><span style=\"line-height:2;\">T&ocirc;i l&agrave; Founder ki&ecirc;m CEO&nbsp;của c&ocirc;ng ty thiết kế thi c&ocirc;ng nội thất Best Design. T&ocirc;i kh&ocirc;ng ngừng cố gắng để t&igrave;m ra c&aacute;c giải ph&aacute;p thiết kế nội thất, thi c&ocirc;ng nội thất đẹp, độc đ&aacute;o với nhiều phong c&aacute;ch nội thất, gi&uacute;p gia chủ tối ưu chi ph&iacute; nhất. Mỗi dự &aacute;n d&ugrave; lớn hay nhỏ th&igrave; t&ocirc;i lu&ocirc;n tập trung cao độ để mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng những bản vẽ thiết kế, phương &aacute;n thi c&ocirc;ng nội thất ho&agrave;n mỹ nhất! Q&uacute;y kh&aacute;ch h&agrave;ng cần được tư vấn hỗ trợ c&oacute; thể li&ecirc;n hệ trực tiếp với t&ocirc;i nh&eacute;! Rất h&acirc;n hạnh được phục vụ v&agrave; đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch trong h&agrave;nh tr&igrave;nh kiến tạo kh&ocirc;ng gian sống!</span></div>\r\n', '<div style=\"text-align: justify;\"><span style=\"line-height:2;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.</span><br />\r\n&nbsp;</div>\r\n', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td width=\"55\"><a href=\"https://www.facebook.com/hanguyenbestdesign.vn\" target=\"_blank\"><img alt=\"\" src=\"/uploaded/ico/icon-face.png\" style=\"width: 50px; height: 50px;\" /></a></td>\r\n			<td width=\"55\"><a href=\"https://twitter.com/HaNguyendhv\" target=\"_blank\"><img alt=\"\" src=\"/uploaded/ico/icon-tweet.png\" style=\"width: 50px; height: 50px;\" /></a></td>\r\n			<td width=\"55\"><a href=\"https://www.instagram.com/ha_nguyen37/\" target=\"_blank\"><img alt=\"\" src=\"/uploaded/ico/icon-insta.png\" style=\"width: 50px; height: 50px;\" /></a></td>\r\n			<td width=\"55\"><a href=\"https://www.linkedin.com/in/h%C3%A0-nguy%E1%BB%85n-a7072025b/\" target=\"_blank\"><img alt=\"\" src=\"/uploaded/ico/icon-linkin.png\" style=\"width: 50px; height: 50px;\" /></a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1687509540, 1, 1, 32, NULL, 'tac-gia/ha-nguyen.html', 1687512364),
(55, 8, 'Minh Nguyễn', 'Minh Nguyễn', 'Tư vấn thiết kế website', '', '', '/uploaded/y-kien-khach-hang/man.jpg', '0', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.<br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod ut nisl id sodales. Etiam consectetur nulla vel ornare aliquam. Phasellus non velit eget massa consectetur lobortis. Integer tempus consequat augue, vitae rutrum sem tempor id.<br />\r\n&nbsp;', '', 1688009580, 2, 1, 8, NULL, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit.html', 1688009692);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint NOT NULL,
  `gia_tri` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuyendung`
--

CREATE TABLE `tuyendung` (
  `id_tuyendung` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `short_name` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ngay_dang` bigint UNSIGNED DEFAULT '0',
  `thu_tu` bigint DEFAULT '0',
  `active` tinyint DEFAULT '1',
  `id_user` bigint DEFAULT '0',
  `file` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `hot` tinyint DEFAULT '0',
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `tags` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `soluong` bigint DEFAULT NULL,
  `diadiem` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `thoihan` bigint DEFAULT NULL,
  `congviec` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuyendung_request`
--

CREATE TABLE `tuyendung_request` (
  `id` bigint NOT NULL,
  `name` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `subject` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `createdate` bigint DEFAULT NULL,
  `xem` int DEFAULT NULL,
  `url` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `url`
--

CREATE TABLE `url` (
  `id` bigint NOT NULL,
  `dt_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_item` bigint DEFAULT '0',
  `data_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `real_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `alias_url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_category` bigint DEFAULT '0',
  `page` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_users` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `lastvisit` bigint UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '0',
  `super` tinyint NOT NULL DEFAULT '0',
  `address` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `yahoo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `showed` tinyint NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_users`, `name`, `username`, `password`, `email`, `telephone`, `lastvisit`, `active`, `super`, `address`, `yahoo`, `image`, `showed`) VALUES
(8, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', 1584705747, 1, 1, 'HÃ  Ná»™i', NULL, '', 1),
(14, 'BM', 'bm', '6f86eebff01efaa4a89597d46708f1a2', '', '', 1586489145, 1, 1, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_module`
--

CREATE TABLE `user_module` (
  `id_user_module` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL DEFAULT '0',
  `id_module` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=FIXED;

--
-- Đang đổ dữ liệu cho bảng `user_module`
--

INSERT INTO `user_module` (`id_user_module`, `id_user`, `id_module`) VALUES
(27, 11, 53),
(29, 11, 48),
(30, 11, 43),
(45, 12, 98),
(46, 12, 119),
(49, 12, 89),
(50, 12, 9),
(52, 12, 94),
(54, 12, 53),
(55, 12, 52),
(56, 12, 48),
(57, 12, 43),
(58, 12, 26),
(59, 12, 5),
(63, 11, 26),
(64, 11, 124),
(65, 12, 124),
(66, 13, 119),
(67, 13, 89),
(70, 16, 98),
(71, 16, 119),
(72, 16, 89),
(73, 16, 159),
(74, 16, 157),
(75, 16, 156),
(76, 16, 155),
(77, 16, 153),
(78, 16, 150),
(79, 16, 144),
(80, 16, 124),
(81, 16, 52),
(82, 16, 48),
(83, 16, 43),
(84, 16, 26),
(85, 18, 98),
(86, 18, 89),
(87, 18, 9),
(88, 18, 179),
(90, 18, 177),
(91, 18, 176),
(93, 18, 174),
(94, 18, 172),
(95, 18, 171),
(96, 18, 170),
(97, 18, 169),
(99, 18, 165),
(100, 18, 161),
(101, 18, 159),
(102, 18, 157),
(103, 18, 156),
(104, 18, 155),
(105, 18, 144),
(106, 18, 52),
(107, 18, 48),
(108, 18, 26),
(139, 20, 124),
(138, 20, 171),
(137, 20, 172),
(136, 20, 9),
(135, 20, 98),
(140, 21, 172),
(141, 21, 171),
(142, 21, 52),
(144, 25, 179),
(149, 30, 179),
(148, 29, 170);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id_video` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `thu_tu` bigint DEFAULT '0',
  `id_category` bigint DEFAULT '0',
  `id_user` bigint DEFAULT '0',
  `active` tinyint DEFAULT '0',
  `ngay_dang` bigint DEFAULT '0',
  `image` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `video` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `title` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `showinfooter` int DEFAULT '0',
  `last_modify` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vn_district`
--

CREATE TABLE `vn_district` (
  `districtid` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `provinceid` int NOT NULL,
  `other_info` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vn_province`
--

CREATE TABLE `vn_province` (
  `provinceid` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `thu_tu` int DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `vn_province`
--

INSERT INTO `vn_province` (`provinceid`, `name`, `type`, `thu_tu`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương', 0),
(2, 'Hà Giang', 'Tỉnh', 0),
(4, 'Cao Bằng', 'Tỉnh', 0),
(6, 'Bắc Kạn', 'Tỉnh', 0),
(8, 'Tuyên Quang', 'Tỉnh', 0),
(10, 'Lào Cai', 'Tỉnh', 0),
(11, 'Điện Biên', 'Tỉnh', 0),
(12, 'Lai Châu', 'Tỉnh', 0),
(14, 'Sơn La', 'Tỉnh', 0),
(15, 'Yên Bái', 'Tỉnh', 0),
(17, 'Hoà Bình', 'Tỉnh', 0),
(19, 'Thái Nguyên', 'Tỉnh', 0),
(20, 'Lạng Sơn', 'Tỉnh', 0),
(22, 'Quảng Ninh', 'Tỉnh', 0),
(24, 'Bắc Giang', 'Tỉnh', 0),
(25, 'Phú Thọ', 'Tỉnh', 0),
(26, 'Vĩnh Phúc', 'Tỉnh', 0),
(27, 'Bắc Ninh', 'Tỉnh', 0),
(30, 'Hải Dương', 'Tỉnh', 0),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương', 0),
(33, 'Hưng Yên', 'Tỉnh', 0),
(34, 'Thái Bình', 'Tỉnh', 0),
(35, 'Hà Nam', 'Tỉnh', 0),
(36, 'Nam Định', 'Tỉnh', 0),
(37, 'Ninh Bình', 'Tỉnh', 0),
(38, 'Thanh Hóa', 'Tỉnh', 0),
(40, 'Nghệ An', 'Tỉnh', 0),
(42, 'Hà Tĩnh', 'Tỉnh', 0),
(44, 'Quảng Bình', 'Tỉnh', 0),
(45, 'Quảng Trị', 'Tỉnh', 0),
(46, 'Thừa Thiên Huế', 'Tỉnh', 0),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương', 0),
(49, 'Quảng Nam', 'Tỉnh', 0),
(51, 'Quảng Ngãi', 'Tỉnh', 0),
(52, 'Bình Định', 'Tỉnh', 0),
(54, 'Phú Yên', 'Tỉnh', 0),
(56, 'Khánh Hòa', 'Tỉnh', 0),
(58, 'Ninh Thuận', 'Tỉnh', 0),
(60, 'Bình Thuận', 'Tỉnh', 0),
(62, 'Kon Tum', 'Tỉnh', 0),
(64, 'Gia Lai', 'Tỉnh', 0),
(66, 'Đắk Lắk', 'Tỉnh', 0),
(67, 'Đắk Nông', 'Tỉnh', 0),
(68, 'Lâm Đồng', 'Tỉnh', 0),
(70, 'Bình Phước', 'Tỉnh', 0),
(72, 'Tây Ninh', 'Tỉnh', 0),
(74, 'Bình Dương', 'Tỉnh', 0),
(75, 'Đồng Nai', 'Tỉnh', 0),
(77, 'Bà Rịa - Vũng Tàu', 'Tỉnh', 0),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương', 0),
(80, 'Long An', 'Tỉnh', 0),
(82, 'Tiền Giang', 'Tỉnh', 0),
(83, 'Bến Tre', 'Tỉnh', 0),
(84, 'Trà Vinh', 'Tỉnh', 0),
(86, 'Vĩnh Long', 'Tỉnh', 0),
(87, 'Đồng Tháp', 'Tỉnh', 0),
(89, 'An Giang', 'Tỉnh', 0),
(91, 'Kiên Giang', 'Tỉnh', 0),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương', 0),
(93, 'Hậu Giang', 'Tỉnh', 0),
(94, 'Sóc Trăng', 'Tỉnh', 0),
(95, 'Bạc Liêu', 'Tỉnh', 0),
(96, 'Cà Mau', 'Tỉnh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yahoo`
--

CREATE TABLE `yahoo` (
  `id_yahoo` tinyint NOT NULL,
  `id_category` int DEFAULT NULL,
  `image` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nick` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `thu_tu` tinyint DEFAULT '0',
  `active` tinyint DEFAULT '0',
  `sky` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `zalo` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `phone` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `lang` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `yahoo`
--

INSERT INTO `yahoo` (`id_yahoo`, `id_category`, `image`, `nick`, `name`, `thu_tu`, `active`, `sky`, `zalo`, `email`, `intro`, `phone`, `lang`) VALUES
(19, 23, '/uploaded/y-kien-khach-hang/man.png', '#NickNick', 'Tên nhân viên hỗ trợ', 2, 1, 'skype:0912652259?chat', 'https://zalo.me/0968675568', '', 'abc bac', '0968123456', ''),
(20, 23, '/uploaded/khachhang/Layer%2024.png', '#NickNick', 'Tiêu đề bài viết hiển thị tại đây', 1, 1, 'skype:0912652259?chat', 'za', '', 'abc bac', '0968123456', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ykien`
--

CREATE TABLE `ykien` (
  `id_ykien` bigint UNSIGNED NOT NULL,
  `id_category` bigint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `intro` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ngay_dang` bigint UNSIGNED NOT NULL DEFAULT '0',
  `thu_tu` bigint NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '1',
  `small_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `normal_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `id_user` bigint NOT NULL DEFAULT '0',
  `file` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tieubieu` int DEFAULT '0',
  `hit` int DEFAULT NULL,
  `imgshowdetail` tinyint NOT NULL DEFAULT '0',
  `hot` tinyint NOT NULL DEFAULT '0',
  `inhome` tinyint NOT NULL DEFAULT '0',
  `showdate` tinyint NOT NULL DEFAULT '1',
  `showcomment` tinyint NOT NULL DEFAULT '0',
  `postcomment` tinyint NOT NULL DEFAULT '0',
  `groupcat` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `tags` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `soure` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `author_id` int DEFAULT NULL,
  `author_name` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `author_email` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `author_info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `id_service` bigint DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`) USING BTREE;

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`) USING BTREE;

--
-- Chỉ mục cho bảng `baohanh`
--
ALTER TABLE `baohanh`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`) USING BTREE;

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`) USING BTREE;

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`) USING BTREE;

--
-- Chỉ mục cho bảng `contactinfo`
--
ALTER TABLE `contactinfo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id_country`) USING BTREE,
  ADD UNIQUE KEY `countryID` (`id_country`) USING BTREE,
  ADD KEY `countryID_2` (`id_country`) USING BTREE;

--
-- Chỉ mục cho bảng `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`id_daily`) USING BTREE;

--
-- Chỉ mục cho bảng `direct`
--
ALTER TABLE `direct`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`) USING BTREE;

--
-- Chỉ mục cho bảng `du_an`
--
ALTER TABLE `du_an`
  ADD PRIMARY KEY (`id_duan`) USING BTREE;

--
-- Chỉ mục cho bảng `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`) USING BTREE;

--
-- Chỉ mục cho bảng `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id_faq`) USING BTREE;

--
-- Chỉ mục cho bảng `group_attr`
--
ALTER TABLE `group_attr`
  ADD PRIMARY KEY (`id_group`) USING BTREE;

--
-- Chỉ mục cho bảng `group_attribute`
--
ALTER TABLE `group_attribute`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`) USING BTREE;

--
-- Chỉ mục cho bảng `info_donvi`
--
ALTER TABLE `info_donvi`
  ADD PRIMARY KEY (`id_info`) USING BTREE;

--
-- Chỉ mục cho bảng `info_leader`
--
ALTER TABLE `info_leader`
  ADD PRIMARY KEY (`id_info`) USING BTREE;

--
-- Chỉ mục cho bảng `info_lichsu`
--
ALTER TABLE `info_lichsu`
  ADD PRIMARY KEY (`id_info`) USING BTREE;

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`) USING BTREE;

--
-- Chỉ mục cho bảng `log_visited`
--
ALTER TABLE `log_visited`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`) USING BTREE;

--
-- Chỉ mục cho bảng `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id_module`) USING BTREE;

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`) USING BTREE;

--
-- Chỉ mục cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`) USING BTREE;

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id_partner`) USING BTREE;

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `price_range`
--
ALTER TABLE `price_range`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`) USING BTREE;

--
-- Chỉ mục cho bảng `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_manufacture`
--
ALTER TABLE `product_manufacture`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_material`
--
ALTER TABLE `product_material`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `pro_attribute`
--
ALTER TABLE `pro_attribute`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `search_content`
--
ALTER TABLE `search_content`
  ADD PRIMARY KEY (`id_search`) USING BTREE;

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`) USING BTREE;

--
-- Chỉ mục cho bảng `service_detail`
--
ALTER TABLE `service_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_name`) USING BTREE;

--
-- Chỉ mục cho bảng `settingshow`
--
ALTER TABLE `settingshow`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `static`
--
ALTER TABLE `static`
  ADD PRIMARY KEY (`id_static`) USING BTREE;

--
-- Chỉ mục cho bảng `static_text`
--
ALTER TABLE `static_text`
  ADD PRIMARY KEY (`id_static`) USING BTREE;

--
-- Chỉ mục cho bảng `sys_image`
--
ALTER TABLE `sys_image`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`id_tacgia`) USING BTREE;

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tuyendung`
--
ALTER TABLE `tuyendung`
  ADD PRIMARY KEY (`id_tuyendung`) USING BTREE;

--
-- Chỉ mục cho bảng `tuyendung_request`
--
ALTER TABLE `tuyendung_request`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`) USING BTREE;

--
-- Chỉ mục cho bảng `user_module`
--
ALTER TABLE `user_module`
  ADD PRIMARY KEY (`id_user_module`) USING BTREE;

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`) USING BTREE;

--
-- Chỉ mục cho bảng `vn_district`
--
ALTER TABLE `vn_district`
  ADD PRIMARY KEY (`districtid`) USING BTREE;

--
-- Chỉ mục cho bảng `vn_province`
--
ALTER TABLE `vn_province`
  ADD PRIMARY KEY (`provinceid`) USING BTREE;

--
-- Chỉ mục cho bảng `yahoo`
--
ALTER TABLE `yahoo`
  ADD PRIMARY KEY (`id_yahoo`) USING BTREE;

--
-- Chỉ mục cho bảng `ykien`
--
ALTER TABLE `ykien`
  ADD PRIMARY KEY (`id_ykien`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `id_album` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `id_article` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `baohanh`
--
ALTER TABLE `baohanh`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id_category` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contactinfo`
--
ALTER TABLE `contactinfo`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `country`
--
ALTER TABLE `country`
  MODIFY `id_country` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT cho bảng `daily`
--
ALTER TABLE `daily`
  MODIFY `id_daily` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `direct`
--
ALTER TABLE `direct`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `download`
--
ALTER TABLE `download`
  MODIFY `id_download` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `du_an`
--
ALTER TABLE `du_an`
  MODIFY `id_duan` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `event`
--
ALTER TABLE `event`
  MODIFY `id_event` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `faq`
--
ALTER TABLE `faq`
  MODIFY `id_faq` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `group_attr`
--
ALTER TABLE `group_attr`
  MODIFY `id_group` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `group_attribute`
--
ALTER TABLE `group_attribute`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id_info` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `info_donvi`
--
ALTER TABLE `info_donvi`
  MODIFY `id_info` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `info_leader`
--
ALTER TABLE `info_leader`
  MODIFY `id_info` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `info_lichsu`
--
ALTER TABLE `info_lichsu`
  MODIFY `id_info` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `log_visited`
--
ALTER TABLE `log_visited`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7533;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `id_member` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `module`
--
ALTER TABLE `module`
  MODIFY `id_module` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_news` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id_partner` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `price_range`
--
ALTER TABLE `price_range`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_product` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product_attribute`
--
ALTER TABLE `product_attribute`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_manufacture`
--
ALTER TABLE `product_manufacture`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product_material`
--
ALTER TABLE `product_material`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `pro_attribute`
--
ALTER TABLE `pro_attribute`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `search_content`
--
ALTER TABLE `search_content`
  MODIFY `id_search` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id_service` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `service_detail`
--
ALTER TABLE `service_detail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settingshow`
--
ALTER TABLE `settingshow`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `static`
--
ALTER TABLE `static`
  MODIFY `id_static` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `static_text`
--
ALTER TABLE `static_text`
  MODIFY `id_static` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sys_image`
--
ALTER TABLE `sys_image`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `id_tacgia` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tuyendung`
--
ALTER TABLE `tuyendung`
  MODIFY `id_tuyendung` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT cho bảng `tuyendung_request`
--
ALTER TABLE `tuyendung_request`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `url`
--
ALTER TABLE `url`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_users` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `user_module`
--
ALTER TABLE `user_module`
  MODIFY `id_user_module` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id_video` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `yahoo`
--
ALTER TABLE `yahoo`
  MODIFY `id_yahoo` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `ykien`
--
ALTER TABLE `ykien`
  MODIFY `id_ykien` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
