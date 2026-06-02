-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th4 28, 2025 lúc 05:02 PM
-- Phiên bản máy phục vụ: 10.6.18-MariaDB-cll-lve-log
-- Phiên bản PHP: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `yyoohvts_nhakhoasmileone`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracnghiem`
--

CREATE TABLE `tracnghiem` (
  `id_tracnghiem` bigint(20) UNSIGNED NOT NULL,
  `id_category` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `intro` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ngay_dang` bigint(20) UNSIGNED DEFAULT 0,
  `thu_tu` bigint(20) DEFAULT 0,
  `active` tinyint(4) DEFAULT 1,
  `id_user` bigint(20) DEFAULT 0,
  `groupcat` varchar(1000) DEFAULT '0',
  `url` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tracnghiem`
--

INSERT INTO `tracnghiem` (`id_tracnghiem`, `id_category`, `name`, `title`, `description`, `keywords`, `image`, `intro`, `content`, `ngay_dang`, `thu_tu`, `active`, `id_user`, `groupcat`, `url`) VALUES
(1, 259, 'Câu 1', 'Câu 1', '', '', '', 'Mức độ th&acirc;n thiện chung của nh&acirc;n vi&ecirc;n Smile One như thế n&agrave;o?', '[{\"dapan\":\"A\",\"motadapan\":\"R\\u1ea5t th\\u00e2n thi\\u1ec7n\",\"diem\":\"4\"},{\"dapan\":\"B\",\"motadapan\":\"Th\\u00e2n Thi\\u1ec7n\",\"diem\":\"3\"},{\"dapan\":\"C\",\"motadapan\":\"B\\u00ecnh th\\u01b0\\u1eddng\",\"diem\":\"2\"},{\"dapan\":\"D\",\"motadapan\":\"Kh\\u00f4ng th\\u00e2n thi\\u1ec7n\",\"diem\":\"1\"}]', 1744226460, 1, 1, 8, ':', 'cau-01.html'),
(2, 259, 'Câu 2', 'Câu 2', '', '', '', 'Th&aacute;i độ đ&oacute;n tiếp v&agrave; giải quyết c&aacute;c thủ tục, y&ecirc;u cầu của nh&acirc;n vi&ecirc;n Lễ t&acirc;n thế n&agrave;o?', '[{\"dapan\":\"A\",\"motadapan\":\"R\\u1ea5t t\\u1ed1t\",\"diem\":\"4\"},{\"dapan\":\"B\",\"motadapan\":\"T\\u1ed1t\",\"diem\":\"3\"},{\"dapan\":\"C\",\"motadapan\":\"B\\u00ecnh th\\u01b0\\u1eddng\",\"diem\":\"2\"},{\"dapan\":\"D\",\"motadapan\":\"Ch\\u1eadm, kh\\u00f4ng h\\u00e0i l\\u00f2ng\",\"diem\":\"1\"}]', 1744229040, 2, 1, 8, ':', 'cau-2.html'),
(3, 259, 'Câu 3', 'Câu 3', '', '', '', '<span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Th&aacute;i độ phục vụ của nh&acirc;n vi&ecirc;n Bảo vệ thế n&agrave;o?</span></span></span>', '[{\"dapan\":\"A\",\"motadapan\":\"R\\u1ea5t t\\u1ed1t\",\"diem\":\"4\"},{\"dapan\":\"B\",\"motadapan\":\"T\\u1ed1t\",\"diem\":\"3\"},{\"dapan\":\"C\",\"motadapan\":\"B\\u00ecnh th\\u01b0\\u1eddng\",\"diem\":\"2\"},{\"dapan\":\"D\",\"motadapan\":\"Ch\\u1eadm, kh\\u00f4ng h\\u00e0i l\\u00f2ng\",\"diem\":\"1\"}]', 1744599540, 3, 1, 22, ':259:', ''),
(4, 259, 'Câu 4', 'Câu 4', '', '', '', '<span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Kỹ năng tư vấn của b&aacute;c sĩ v&agrave; bạn trợ l&yacute; b&aacute;c sĩ?</span></span></span>', '[{\"dapan\":\"A\",\"motadapan\":\"R\\u1ea5t d\\u1ec5 hi\\u1ec3u, c\\u00f3 chuy\\u00ean m\\u00f4n \",\"diem\":\"3\"},{\"dapan\":\"B\",\"motadapan\":\"B\\u00ecnh th\\u01b0\\u1eddng, c\\u1ea7n c\\u1ea3i thi\\u1ec7n\",\"diem\":\"2\"},{\"dapan\":\"C\",\"motadapan\":\"Ch\\u01b0a \\u0111\\u1ea1t, c\\u1ea7n n\\u00e2ng cao th\\u00eam\",\"diem\":\"1\"}]', 1744599780, 4, 1, 22, ':259:', ''),
(5, 259, 'Câu 5', 'Câu 5', '', '', '', '<font face=\"Arial, sans-serif\"><span style=\"font-size: 13.3333px;\">T&aacute;c phong l&agrave;m việc của nh&acirc;n vi&ecirc;n phụ t&aacute;, trong qu&aacute; tr&igrave;nh phục vụ Qu&yacute; kh&aacute;ch?</span></font>', '[{\"dapan\":\"A\",\"motadapan\":\"Nhanh nh\\u1eb9n, c\\u1ea9n th\\u1eadn, hi\\u1ec3u \\u00fd kh\\u00e1ch\\u00a0\",\"diem\":\"3\"},{\"dapan\":\"B\",\"motadapan\":\"B\\u00ecnh th\\u01b0\\u1eddng\\u00a0\",\"diem\":\"2\"},{\"dapan\":\"C\",\"motadapan\":\"Ch\\u1eadm, kh\\u00f4ng h\\u00e0i l\\u00f2ng\",\"diem\":\"1\"}]', 1744600020, 5, 1, 22, ':259:', ''),
(6, 259, 'Câu 6', 'Câu 6', '', '', '', 'Qu&yacute; kh&aacute;ch đ&aacute;nh gi&aacute; thế n&agrave;o về việc vệ sinh đồ d&ugrave;ng,dụng cụ trong qu&aacute; tr&igrave;nh kh&aacute;m v&agrave; thực hiện dịch vụ?', '[{\"dapan\":\"A\",\"motadapan\":\"R\\u1ea5t h\\u00e0i l\\u00f2ng\",\"diem\":\"4\"},{\"dapan\":\"B\",\"motadapan\":\"H\\u00e0i l\\u00f2ng\",\"diem\":\"3\"},{\"dapan\":\"C\",\"motadapan\":\"B\\u00ecnh th\\u01b0\\u1eddng\",\"diem\":\"2\"},{\"dapan\":\"D\",\"motadapan\":\"Kh\\u00f4ng \\u0111\\u1ea1t, c\\u1ea7n c\\u1ea3i thi\\u1ec7n\",\"diem\":\"1\"}]', 1744600080, 6, 1, 22, ':259:', ''),
(7, 259, 'Câu 7', 'Câu 7', '', '', '', '<span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Khu vực nơi tiếp đ&oacute;n v&agrave; l&agrave;m dịch vụ cho kh&aacute;ch h&agrave;ng như thế n&agrave;o?</span></span></span>', '[{\"dapan\":\"A\",\"motadapan\":\"S\\u1ea1ch s\\u1ebd, ti\\u1ec7n d\\u1ee5ng, khoa h\\u1ecdc\\u00a0\\u00a0\",\"diem\":\"3\"},{\"dapan\":\"B\",\"motadapan\":\"B\\u00ecnh th\\u01b0\\u1eddng\",\"diem\":\"2\"},{\"dapan\":\"C\",\"motadapan\":\"B\\u1ea9n, thi\\u1ebfu ti\\u1ec7n d\\u1ee5ng, ch\\u01b0a khoa h\\u1ecdc\",\"diem\":\"1\"}]', 1744600260, 7, 1, 22, ':259:', ''),
(8, 259, 'Câu 8', 'Câu 8', '', '', '', '<span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Qu&yacute; kh&aacute;ch đ&aacute;nh gi&aacute; về c&aacute;ch sắp xếp bố tr&iacute; đồ đạc, nội thất kh&ocirc;ng gian của ph&ograve;ng kh&aacute;m?</span></span></span><br />\r\n&nbsp;', '[{\"dapan\":\"A\",\"motadapan\":\"H\\u00e0i l\\u00f2ng, g\\u1ecdn g\\u00e0ng\",\"diem\":\"\"},{\"dapan\":\"B\",\"motadapan\":\"\\u0110\\u1ea1t\",\"diem\":\"\"},{\"dapan\":\"C\",\"motadapan\":\"B\\u00ecnh th\\u01b0\\u1eddng\",\"diem\":\"\"},{\"dapan\":\"D\",\"motadapan\":\"L\\u1ed9n x\\u1ed9n, kh\\u00f4ng v\\u1eeba m\\u1eaft\",\"diem\":\"\"}]', 1744600380, 8, 1, 22, ':259:', ''),
(9, 259, 'Câu 9', 'Câu 9', '', '', '', '<span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Qu&yacute; kh&aacute;ch đ&aacute;nh gi&aacute; khu vực nh&agrave; vệ sinh của ph&ograve;ng kh&aacute;m như thế n&agrave;o?</span></span></span>', '[{\"dapan\":\"A\",\"motadapan\":\"\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200bS\\u1ea1ch s\\u1ebd\",\"diem\":\"4\"},{\"dapan\":\"B\",\"motadapan\":\"\\u0110\\u1ea1t\",\"diem\":\"3\"},{\"dapan\":\"C\",\"motadapan\":\"B\\u00ecnh th\\u01b0\\u1eddng\",\"diem\":\"2\"},{\"dapan\":\"D\",\"motadapan\":\"Kh\\u00f4ng S\\u1ea1ch\",\"diem\":\"1\"}]', 1744600500, 9, 1, 22, ':259:', ''),
(10, 259, 'Câu 10', 'Câu 10', '', '', '', '<span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Chăm s&oacute;c hỗ trợ sau dịch vụ c&oacute; tốt kh&ocirc;ng?</span></span></span><br />\r\n&nbsp;', '[{\"dapan\":\"A\",\"motadapan\":\"\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200bR\\u1ea5t t\\u1ed1t \\u00a0\",\"diem\":\"\"},{\"dapan\":\"B\",\"motadapan\":\"T\\u1ed1t\",\"diem\":\"\"},{\"dapan\":\"C\",\"motadapan\":\"B\\u00ecnh th\\u01b0\\u1eddng\",\"diem\":\"\"},{\"dapan\":\"D\",\"motadapan\":\"Kh\\u00f4ng t\\u1ed1t\",\"diem\":\"\"}]', 1744600620, 10, 1, 22, ':259:', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tracnghiem`
--
ALTER TABLE `tracnghiem`
  ADD PRIMARY KEY (`id_tracnghiem`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tracnghiem`
--
ALTER TABLE `tracnghiem`
  MODIFY `id_tracnghiem` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
