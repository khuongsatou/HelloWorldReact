-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 11, 2020 lúc 09:56 AM
-- Phiên bản máy phục vụ: 5.6.46-cll-lve
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baitap_tuan4_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hinh_app`
--

CREATE TABLE `cau_hinh_app` (
  `id` int(10) UNSIGNED NOT NULL,
  `co_hoi_sai` int(11) NOT NULL,
  `thoi_gian_tra_loi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hinh_app`
--

INSERT INTO `cau_hinh_app` (`id`, `co_hoi_sai`, `thoi_gian_tra_loi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 20, NULL, NULL, NULL),
(2, 1, 20, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hinh_diem_cau_hoi`
--

CREATE TABLE `cau_hinh_diem_cau_hoi` (
  `id` int(10) UNSIGNED NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hinh_diem_cau_hoi`
--

INSERT INTO `cau_hinh_diem_cau_hoi` (`id`, `thu_tu`, `diem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hinh_tro_giup`
--

CREATE TABLE `cau_hinh_tro_giup` (
  `id` int(10) UNSIGNED NOT NULL,
  `loai_tro_giup` int(11) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hinh_tro_giup`
--

INSERT INTO `cau_hinh_tro_giup` (`id`, `loai_tro_giup`, `thu_tu`, `credit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1200, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hoi`
--

CREATE TABLE `cau_hoi` (
  `id` int(10) UNSIGNED NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linh_vuc_id` int(10) UNSIGNED NOT NULL,
  `phuong_an_a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dap_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hoi`
--

INSERT INTO `cau_hoi` (`id`, `noi_dung`, `linh_vuc_id`, `phuong_an_a`, `phuong_an_b`, `phuong_an_c`, `phuong_an_d`, `dap_an`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Giải Grand Slam đầu tiên trong năm là giải nào?', 1, 'Austrlia mở rộng', 'Wimbledon', 'Roland Garos', 'Mỹ mở rộng', 'A', NULL, '2020-01-02 06:17:50', NULL),
(2, 'Cùng với Hà Nội T&T (vô địch V-League 2010), CLB nào của Việt Nam tham dự AFC Cup 2011?', 1, 'Sông Lam Nghệ An', 'SHB Đà Nẵng', 'Hoàng Anh Gia Lai', 'Becamex Bình Dương', 'D', '2019-11-12 18:31:00', '2020-01-02 06:18:18', NULL),
(3, 'AFC Asian Cup 2011 được tổ chức tại quốc gia nào?', 1, 'Qatar', 'Hàn Quốc', 'Nhật Bản', 'Iraq', 'D', '2019-11-12 18:31:10', '2020-01-02 06:18:48', NULL),
(4, 'Đội nào lên ngôi vô địch AFC Asian Cup 2011 tổ chức tại Qatar?', 1, 'Nhật Bản', 'Australia', 'Hàn Quốc', 'Uzbekistan', 'D', '2019-11-12 18:31:17', '2020-01-02 06:19:17', NULL),
(5, 'Việt Nam lần đầu tiên vô địch AFF Cup là vào năm nào?', 1, '2004', '2006', '2008', '2010', 'D', '2019-11-12 18:31:28', '2020-01-02 06:19:40', NULL),
(6, 'CLB nào vô địch FIFA Club World Cup 2010 tổ chức tại Qatar?', 1, 'Inter Milan', 'Real Madrid', 'Bayern Munich', 'Manchester United', 'B', '2019-11-12 18:31:34', '2020-01-02 06:20:19', NULL),
(7, 'Vận động viên đứng đầu danh sách 100 vận động viên Việt Nam tiêu biểu của năm 2010 là vận động viên Vũ Thị Hương của môn thể thao nào?', 1, 'Điền kinh', 'Cờ vua', 'Karatedo', 'Cầu lông', 'C', '2019-11-12 18:31:40', '2020-01-02 06:20:46', NULL),
(8, 'Giải đua xe đạp vòng quanh nước Pháp năm 2001 có mấy chặng đua?', 1, '16', '21', '26', '31', 'C', '2019-11-12 18:31:48', '2020-01-02 06:21:11', NULL),
(9, 'Vận động viên nào sau đây giành được huy chương vàng tại ASIAD 16 (tổ chức tại Quảng Châu-Trung Quốc 2010)', 1, 'Lê Bích Phương', 'Trương Thanh Hằng', 'Vũ Thị Hương', 'Lê Quang Liêm', 'A', '2019-11-12 18:31:56', '2020-01-02 06:21:39', NULL),
(10, 'Đội tuyển bóng đá nào xếp thứ ba tại World Cup 2010?', 1, 'Tây Ban Nha', 'Hà Lan', 'Đức', 'Uruguay', 'C', '2019-11-12 18:32:04', '2020-01-02 06:22:13', NULL),
(11, 'Trong môn quần vợt thì một năm có bao nhiêu giải Grand Slam được tổ chức?', 1, '3', '4', '5', '6', 'B', '2019-11-12 18:32:10', '2020-01-02 06:22:51', NULL),
(12, 'Tại thể vận hội Olympic trẻ lần 1-2010 tại Singapore, thể thao Việt Nam giành được 4 huy chương, trong đó vận động viên nào giành được huy chương vàng duy nhất?', 1, 'Thạch Kim Tuấn (cử tạ)', 'Nguyễn Thanh Thảo (Taekwondo)', 'Nguyễn Quốc Cương (Taekwondo)', 'Vũ Thị Trang (cầu lồng)', 'A', '2019-11-12 22:57:49', '2020-01-02 06:23:23', NULL),
(13, 'Nước nào là nước chủ nhà tại Copa America 2011?', 1, 'Argentina', 'Boliviar', 'Venezuela', 'Paraguay', 'B', '2019-11-12 23:37:12', '2020-01-02 06:24:14', NULL),
(14, 'Đại Ngu là quốc hiệu của triều đại nào?', 2, 'Triều Ngô', 'Triều Hồ', 'Các chúa Nguyễn', 'Nhà Tây Sơn', 'B', '2019-11-12 23:37:23', '2020-01-02 06:25:05', NULL),
(15, 'Các vua Hùng đặt quốc hiệu nước ta là gì?', 2, 'Văn Lang', 'Âu Lạc', 'Vạn Xuân', 'Đại Việt', 'B', '2019-11-12 23:37:35', '2020-01-02 06:29:28', NULL),
(16, 'An Dương Vương đặt quốc hiệu nước ta là gì?', 2, 'Âu Lạc', 'Vạn Xuân', 'Đại Cồ Việt', 'Đại Việt', 'A', '2019-11-18 06:32:59', '2020-01-02 06:30:23', NULL),
(17, 'Năm 1010, Lý Thái Tổ đã cho xây dựng điện nào ở trung tâm hoàng thành Thăng Long?', 2, 'Điện Kính Thiên', 'Điện Càn Nguyên', 'Điện Càn Chánh', 'Điện Càn Thành', 'B', '2019-11-18 06:33:06', '2020-01-02 06:31:10', NULL),
(18, 'Thành cổ Sơn Tây do vị vua nào xây dựng nên vào năm 1822?', 2, 'Gia Long', 'Minh Mạng', 'Thiệu Trị', 'Tự Đức', 'C', '2019-11-18 06:33:10', '2020-01-02 06:32:06', NULL),
(19, 'Chùa nào được Lý Nam Đế cho xây sau khi lên ngôi hoàng đế năm 544 ?', 2, 'Chùa Trấn Quốc', 'Chùa Một Cột', 'Chùa Tây Phương', 'Chùa Tứ Pháp', 'A', '2019-11-18 06:33:14', '2020-01-02 06:33:49', NULL),
(20, 'Vạn Thắng Vương là ai ?', 2, 'Đinh Bộ Lĩnh', 'Lê Hoàn', 'Lê Lợi', 'Nguyễn Huệ', 'C', '2019-11-18 06:33:19', '2020-01-02 06:34:17', NULL),
(21, 'Sau khi chiến thắng quân Nam Hán vào năm 938, Ngô Quyền đã đóng đô ở đâu?', 2, 'Hoa Lư', 'Đại La', 'Cổ Loa', 'Phú Xuân', 'D', '2019-11-18 06:33:19', '2020-01-02 06:34:43', NULL),
(22, 'Từ “nhị thánh” trong câu “ Đây là nơi chiến địa buổi Trùng Hưng nhị thánh bắt Ô Mã” (Bạch Đằng giang phú ) gồm những người nào ?', 1, 'Ngô Quyền và Trần Hưng Đạo.', 'Ngô Quyền và Trần Thái Tông.', 'Ngô Quyền và Trần Nhân Tông.', 'Trần Thánh Tông và Trần Nhân Tông.', 'A', '2019-11-18 06:33:19', '2020-01-02 06:35:31', NULL),
(23, 'Hổ Quyền dưới thời nhà Nguyễn là một đấu trường của những cuộc tử chiến giữa hổ và loài động vật nào?', 2, 'Bò tót', 'Báo', 'Voi', 'Chó', 'B', '2019-11-18 06:33:19', '2020-01-02 06:36:13', NULL),
(24, 'Vị tướng nào dưới thời Hai Bà Trưng là ông tổ của lò vật Mai Động?', 2, 'Ông Đông Bảng', 'Ông Đồng', 'Tam Trinh', 'Đào Kỳ', 'B', '2019-11-18 06:33:19', '2020-01-02 06:36:55', NULL),
(25, 'Tập “Dư địa chí” được Nguyễn Trãi soạn dưới triều vua nào?', 2, 'Lê Thái Tổ', 'Lê Thái Tông', 'Lê Thánh Tông', 'Lê Hiến Tông', 'D', '2019-11-18 06:33:19', '2020-01-02 06:37:21', NULL),
(26, 'Ai là nhạc sĩ Việt Nam đầu tiên viết opera với tác phẩm “Cô sao” và sau đó là “Người tạc tượng”?', 3, 'Đỗ Nhuận', 'Hoàng Vân', 'Trần Hoàn', 'Trọng Đài', 'A', '2020-01-02 06:37:48', '2020-01-02 06:40:32', NULL),
(27, 'The ASEAN WAY-ca khúc chính thức của ASEAN là sáng tác của nhạc sĩ người nước nào?', 3, 'Thái Lan', 'Việt Nam', 'Singapore', 'Malaysia', 'B', '2020-01-02 06:41:43', '2020-01-02 06:41:43', NULL),
(28, '“Mùa con ong đi lấy mật, mùa con voi xuống sông hút nước, mùa em đi phát rẫy làm nương, anh vào rừng đặt bẫy cài chông” là những câu hát nói về tháng nào?', 3, 'Tháng Giêng', 'Tháng hai', 'Tháng ba', 'Tháng tư', 'B', '2020-01-02 06:42:10', '2020-01-02 06:42:10', NULL),
(29, 'Bộ phim “The Social Network” về mạng xã hội nào đã đạt giải Quả cầu vàng 2011?', 3, 'Facebook', 'Twitter', 'Yahoo Plus', 'Opera', 'B', '2020-01-02 06:42:42', '2020-01-02 06:42:42', NULL),
(30, 'Lã Thanh Huyền đã tham gia bộ phim nào sau đây?', 3, 'Nhà có nhiều cửa sổ', 'Đẹp từng centimet', 'Blog nàng dâu', 'Ngôi nhà hạnh phúc', 'C', '2020-01-02 06:43:07', '2020-01-02 06:43:07', NULL),
(31, 'Tác phẩm điện ảnh \"Thập diện mai phục\" là của đạo diễn nào?', 3, 'Lý An', 'Dương Khiết', 'Trương Nghệ Mưu', 'Ngô Vũ Sâm', 'C', '2020-01-02 06:43:33', '2020-01-02 06:43:33', NULL),
(32, 'Nam ca sĩ nào đạt giải thưởng Ca sĩ của năm tại Lễ trao giải Làn Sóng Xanh 2010?', 3, 'Đàm Vĩnh Hưng', 'Lam Trường', 'Đan Trường', 'Minh Quân', 'C', '2020-01-02 06:44:05', '2020-01-02 06:44:05', NULL),
(33, 'NSND  .... là giảng viên thanh nhạc đầu tiên của Nhạc viện Hà Nội, là nghệ sĩ hát opera đầu tiên của Việt Nam và là người vào vai chính của vở opera đầu tiên được dàn dựng và công diễn ở Nhà hát Lớn Hà Nội.', 3, 'Quý Dương', 'Trần Tiến', 'Trung Kiên', 'Quang Thọ', 'B', '2020-01-02 06:44:29', '2020-01-02 06:44:29', NULL),
(34, 'Trong nhạc phẩm \"Hoa sữa\" nhạc sĩ Hồng Đăng còn nhắc tới loại cây nào khác?', 3, 'Bàng', 'Phượng', 'Phi lao', 'Quất', 'D', '2020-01-02 06:44:54', '2020-01-02 06:44:54', NULL),
(35, 'Ai đã lên ngôi Thần tượng âm nhạc Việt Nam 2010?', 3, 'Trần Lân Nhã', 'Trần Nguyễn Uyên Linh', 'Văn Mai Hương', 'Lều Phương Anh', 'B', '2020-01-02 06:45:21', '2020-01-02 06:45:21', NULL),
(36, 'Ca sĩ nào đạt giải thưởng của Hội đồng nghệ thuật trong cuộc thi “Sao Mai-Điểm hẹn” 2010?', 3, 'Minh Chuyên', 'Mỹ Như', 'Lương Viết Quang', 'Đinh Mạnh Ninh', 'B', '2020-01-02 06:45:44', '2020-01-02 06:45:44', NULL),
(37, 'Giải thưởng Emmy là giải thưởng cao quý của thể loại giải trí nào?', 3, 'Truyền hình', 'Điện ảnh', 'Âm nhạc', 'Thể thao', 'A', '2020-01-02 06:46:15', '2020-01-02 06:46:15', NULL),
(38, 'Bộ phim “The social Network” đạt giải gì tại lễ trao giải Quả cầu vàng lần thứ 68?', 3, 'Phim điện ảnh tâm lý/chính kịch hay nhất', 'Phim điện ảnh hài/ca nhạc hay nhất', 'Phim truyền hình tâm lý/chính kịch hay nhất', 'Phim truyền hình hài/ca nhạc hay nhất', 'B', '2020-01-02 06:46:37', '2020-01-02 06:46:37', NULL),
(39, 'Bộ phim \"W\"của đạo diễn Oliver Stone viết về ai?', 3, 'Geroge Walker Bush', 'Winston Churchil', 'William Shakespear', 'Walt Disney', 'A', '2020-01-02 06:47:03', '2020-01-02 06:47:03', NULL),
(40, '“Vội vã trở về, vội vã ra đi …” là những dòng trăn trở của nhạc sĩ Phú Quang trong bài hát Hà Nội ngày trở về. Trong ca khúc này, nhạc sĩ Phú Quang đã so sánh nỗi nhớ với dòng sông nào?', 3, 'Sông Cửu Long', 'Sông Lô', 'Sông Hồng', 'Sông Mã', 'B', '2020-01-02 06:47:30', '2020-01-02 06:47:30', NULL),
(41, 'Sông Bến Hải và sông Thạch Hãn nằm ở tỉnh nào?', 4, 'Quảng Bình', 'Quảng Ninh', 'Quảng Trị', 'Quảng Ngãi', 'B', '2020-01-02 06:49:49', '2020-01-02 06:49:49', NULL),
(42, 'Trong các cây cầu sau, cầu nào là cầu xoay?', 4, 'Cầu Thanh Trì', 'Cầu Thị Nại', 'Cầu Sông Hàn', 'Cầu Cần Thơ', 'D', '2020-01-02 06:50:17', '2020-01-02 06:50:17', NULL),
(43, 'Bùi Hữu Nghĩa, một trong bốn rồng vàng của vùng Đồng Nai xưa (tức là toàn Nam Bộ ngày nay) là tài năng ở lĩnh vực nào?', 4, 'Hoạ', 'Phú', 'Đàn', 'Thi', 'B', '2020-01-02 06:50:35', '2020-01-02 06:50:35', NULL),
(44, 'Nước nào ở khu vực Đông Nam Á không có địa giới với bất kỳ nước khác?', 4, 'Philippines', 'Malaysia', 'Lào', 'Thái Lan', 'A', '2020-01-02 06:50:58', '2020-01-02 06:50:58', NULL),
(45, 'Thung lũng nổi tiếng ở Mỹ với ngành công nghệ thông tin được đặt tên theo nguyên tố nào?', 4, 'Sắt', 'Silic', 'Asen', 'Uran', 'C', '2020-01-02 06:51:21', '2020-01-02 06:51:21', NULL),
(46, 'Tổ chức thương mại thế giới có trụ sở đặt tại quốc gia nào ?', 4, 'Bỉ', 'Thuỵ Sỹ', 'Hà Lan', 'Đức', 'D', '2020-01-02 06:51:46', '2020-01-02 06:51:46', NULL),
(47, 'Eo biển nào sau đây là nơi phân cách giữa châu Âu và châu Phi?', 4, 'Bosphorus', 'Bering', 'Gibraltar', 'Malacca', 'C', '2020-01-02 06:52:12', '2020-01-02 06:52:12', NULL),
(48, ': Thành phố nào của Nhật Bản bị tàn phá nặng nề nhất sau thảm hoạ động đất và sóng thần ngày 11/3/2011?', 4, 'Sendai', 'Chiba', 'Kobe', 'Hiroshima', 'C', '2020-01-02 06:52:32', '2020-01-02 06:52:32', NULL),
(49, 'Địa danh nào còn thiếu trong câu ca dao : ....có núi Vọng Phu/Có đầm Thị Nại có cù lao Xanh\"?', 4, 'Phú Yên', 'Khánh Hoà', 'Long An', 'Bình Định', 'C', '2020-01-02 06:52:55', '2020-01-02 06:52:55', NULL),
(50, 'Bối cảnh của câu chuyện tỉnh Romeo và Juliet là thành phố nào của nước Ý?', 4, 'Venice', 'Milan', 'Rome', 'Verona', 'C', '2020-01-02 06:53:23', '2020-01-02 06:53:23', NULL),
(51, 'Ngân hàng trung ương châu Âu (ECB) có trụ sở đặt tại thành phố nào?', 4, 'Brussel', 'Frankurt', 'Paris', 'Geneva', 'D', '2020-01-02 06:53:43', '2020-01-02 06:53:43', NULL),
(52, 'Địa danh \"Cần Giuộc\" trong bài \"Văn Tế nghĩa Sĩ Cần Giuộc\" hiện nay nằm ở tỉnh nào ?', 4, 'Long An', 'Tiền Giang', 'An Giang', 'Cần Thơ', 'A', '2020-01-02 06:54:13', '2020-01-02 06:54:13', NULL),
(53, 'Bộ phận đất nổi, nhỏ hơn lục địa, xung quanh có biển và đại dương bao quanh gọi là gì ?', 4, 'Đảo', 'Quần đảo', 'Hải đảo', 'Quốc đảo', 'A', '2020-01-02 06:54:47', '2020-01-02 06:54:47', NULL),
(54, 'Cầu Phú Mỹ-cây cầu đẹp và hiện đại nhất thành phố Hồ Chí Minh có hình dáng của chữ cái nào?', 4, 'T', 'H', 'L', 'M', 'B', '2020-01-02 06:55:09', '2020-01-02 06:55:09', NULL),
(55, 'Các trung tâm công nghiệp lớn như Tokyo, Kyoto, Yokohama, Nagoia, Osaka nằm trên hòn đảo nào có diện tích rộng nhất, dân số đông nhất và kinh tế phát triển nhất trong quần đảo Nhật Bản?', 4, 'Hokkaido', 'Honsu', 'Shikoku', 'Kyusyu', 'B', '2020-01-02 06:55:42', '2020-01-02 06:55:42', NULL),
(56, 'Quốc gia nào sau đây có chung đường biên giới cả trên đất liên và trên biển với Việt Nam?', 4, 'Thái Lan', 'Lào', 'Trung Quốc', 'Indonesia', 'B', '2020-01-02 06:56:09', '2020-01-02 06:56:09', NULL),
(57, 'Trụ sở của Ban thư ký ASEAN được đặt tại quốc gia nào sau đây?', 4, 'Thái Lan', 'Singapore', 'Malaysia', 'Indonesia', 'B', '2020-01-02 06:56:52', '2020-01-02 06:56:52', NULL),
(58, 'Vịnh nào sau đây không nằm trong CLB các vịnh biển đẹp nhất thế giới (World Bay)?', 4, 'Vịnh Nha Trang (Khánh Hoà)', 'Vịnh Lăng Cô (Thừa Thiên Huế)', 'Vịnh Xuân Đài (Phú Yên)', 'Vịnh Hạ Long (Quảng Ninh)', 'C', '2020-01-02 06:57:26', '2020-01-02 06:57:26', NULL),
(59, 'Một hòn đảo của tỉnh Quảng Ngãi nơi được mệnh danh là \"Vương quốc hành tỏi\". Đó là đảo nào?', 4, 'Đảo Lý Sơn', 'Đảo Cồn Cỏ', 'Đảo Thổ Chu', 'Đảo Phú Quốc', 'B', '2020-01-02 06:58:02', '2020-01-02 06:58:02', NULL),
(60, 'Châu lục nào tiếp giáp với cả Đại Tây Dương và Ấn Độ Dương?', 4, 'Châu Á', 'Châu Phi', 'Châu Âu', 'Châu Mỹ', 'B', '2020-01-02 06:58:32', '2020-01-02 06:58:32', NULL),
(61, '\"Điêu tàn\" là tập thơ đầu tiên của nhà thơ nào?', 5, 'Anh Thơ', 'Thế Lữ', 'Bích Khê', 'Chế Lan Viên', 'D', '2020-01-02 07:28:04', '2020-01-02 07:28:04', NULL),
(62, 'Điền từ còn thiếu trong câu thành ngữ:’”…. Không cứu được …gần”.', 5, 'Lính-Tướng', 'Chồng-Vợ', 'Nước-Lửa', 'Chó-Mèo', 'D', '2020-01-02 07:28:41', '2020-01-02 07:28:41', NULL),
(63, 'Truyện “Vợ chồng A Phủ” trong tập truyện Tây Bắc của nhà văn Tô Hoài viết về người dân tộc nào?', 5, 'Vân Kiều', 'Thái', 'H’Mông', 'Tày', 'C', '2020-01-02 07:29:10', '2020-01-02 07:29:10', NULL),
(64, 'Tác phẩm \"Thuỷ hử\" của Thi Nại Am diễn ra vào triều đại nào của Trung Quốc?', 5, 'Triều Tống', 'Triều Nguyên', 'Triều Minh', 'Triều Thanh', 'A', '2020-01-02 07:29:52', '2020-01-02 07:29:52', NULL),
(65, 'Truyền kỳ mạn lục, một tác phẩm được đánh giá là \" thiên cổ kỳ bút\", là \"áng văn hay của bậc đại gia\", là sáng tác của ai?', 5, 'Nguyễn Trãi', 'Nguyễn Bỉnh Khiêm', 'Nguyễn Dữ', 'Nguyễn Du', 'D', '2020-01-02 07:30:22', '2020-01-02 07:30:22', NULL),
(66, 'Nhà thơ Chế Lan Viên (Phan Ngọc Hoan: tên thật) còn có bút danh khác mang tên dòng sông nào?', 5, 'Nhật Lệ', 'Thạch Hãn', 'Thu Bồn', 'Bến Hải', 'D', '2020-01-02 07:31:02', '2020-01-02 07:31:02', NULL),
(67, 'Nhà văn nào đại diện cho Việt Nam nhận Giải thưởng văn học Đông Nam Á 2010?', 5, 'Nguyễn Nhật Ánh (Cho tôi xin một vé đi tuổi thơ)', 'Cao Duy Sơn (Ngôi nhà xưa bên suối)', 'Nguyễn Thị Ngọc Tư (Cánh đồng bất tận)', 'Trần Văn Tuấn (Rừng thiêng nước trong)', 'C', '2020-01-02 07:31:27', '2020-01-02 07:31:27', NULL),
(68, 'Chuyện kể đêm Noel, Dế mèn trong lò sưởi là những tác phẩm của nhà văn nào sau đây?', 5, 'Mark Twain', 'Charles Dicken', 'Adersen', 'Jean de La Fontaine', 'B', '2020-01-02 07:31:55', '2020-01-02 07:31:55', NULL),
(69, 'Có câu tục ngữ\"...hết bị đòn,...còn mất vợ\"?', 5, 'Ăn', 'Uống', 'Ở', 'Mặc', 'B', '2020-01-02 07:32:17', '2020-01-02 07:32:17', NULL),
(70, 'Ngọn núi nào được nhắc tới trong bài thơ \"Quê mẹ\" của Tố Hữu?', 5, 'Thiên Thai', 'Ngự Bình', 'Non Nước', 'Hồng Lĩnh', 'B', '2020-01-02 07:32:38', '2020-01-02 07:32:38', NULL),
(71, 'Tác phẩm “Dị hương” của nhà văn Sương Nguyệt Minh đạt giải thưởng của Hội nhà văn Việt Nam năm 2010 thuộc thể loại nào?', 5, 'Thơ', 'Tập truyện ngắn', 'Tiểu thuyết', 'Văn học dịch', 'B', '2020-01-02 07:33:17', '2020-01-02 07:33:17', NULL),
(72, 'Vai trò chính của vitamin nào là giúp cho quá trình đông máu diễn ra tốt và hạn chế lượng máu bị mất khi bị thương?', 6, 'Vitamin A', 'Vitamin D', 'Vitamin E', 'Vitamin K', 'B', '2020-01-02 07:33:37', '2020-01-02 07:33:37', NULL),
(73, 'Cúm và sởi là những bệnh lây truyền qua đường nào?', 6, 'Tiêu hoá', 'Hô hấp', 'Sinh dục', 'Máu', 'B', '2020-01-02 07:34:03', '2020-01-02 07:34:03', NULL),
(74, 'Virus sởi lây truyền qua đường nào?', 6, 'Tiêu hoá', 'Hô hấp', 'Máu', 'Sinh dục', '6', '2020-01-02 07:34:27', '2020-01-02 07:34:27', NULL),
(75, 'Phổi, họng, thanh quản, khí quản, phế quản, phổi là những cơ quan thuộc hệ cơ quan nào trong cơ thể người?', 6, 'Hệ tuần hoàn', 'Hệ sinh dục', 'Hệ hô hấp', 'Hệ thần kinh', 'B', '2020-01-02 07:34:53', '2020-01-02 07:34:53', NULL),
(76, 'Loại vitamin nào mà cơ thể con người có thể tự tổng hợp được nhờ ánh sáng Mặt Trời?', 6, 'Vitamin A', 'Vitamin D', 'Vitamin E', 'Vitamin K', 'D', '2020-01-02 07:35:24', '2020-01-02 07:35:24', NULL),
(77, 'Paracetamol thuộc nhóm thuốc nào sau đây?', 6, 'Thuốc lợi tiểu', 'Thuốc hạ sốt, giảm đau, chống viêm', 'Thuốc điều trị tăng huyết áp', 'Thuốc an thần, bình thân', 'B', '2020-01-02 07:35:51', '2020-01-02 07:35:51', NULL),
(78, 'Từ nào sau đây chỉ tế bào máu?', 6, 'Huyết đồ', 'Huyết tương', 'Huyết thanh', 'Huyết cầu', 'C', '2020-01-02 07:36:26', '2020-01-02 07:36:26', NULL),
(79, 'Đâu không phải là một loại tế bào máu?', 6, 'Khúc côn cầu', 'Hồng cầu', 'Tiểu cầu', 'Bạch cầu', 'C', '2020-01-02 07:36:52', '2020-01-02 07:36:52', NULL),
(80, 'Bệnh nào sau đây không phải bệnh truyền nhiễm?', 6, 'Sởi', 'Quai bị', 'Đậu mùa', 'Tiểu đường', 'B', '2020-01-02 07:37:17', '2020-01-02 07:37:17', NULL),
(81, 'Sự kiện giờ Trái Đất, sáng kiến của WWF được tổ chức lần đầu tiên vào năm 2007 tại thành phố nào?', 7, 'Sydney', 'Tokyo', 'Bắc Kinh', 'Singapore', 'C', '2020-01-02 07:37:55', '2020-01-02 07:37:55', NULL),
(82, 'Phú Yên-tỉnh đăng cai Năm du lịch quốc gia 2011 ở khu vực nào?', 7, 'Nam Trung Bộ', 'Tây Nguyên', 'Đông Bắc Bộ', 'Tây Nam Bộ', 'D', '2020-01-02 07:38:20', '2020-01-02 07:38:20', NULL),
(83, 'Lễ Hội Gióng chính thức được nhận bằng Di sản văn hoá thế giới vào năm nào?', 7, '2008', '2009', '2010', '2011', 'A', '2020-01-02 07:38:42', '2020-01-02 07:38:42', NULL),
(84, 'Việt Nam đã đăng cai cuộc thi sắc đẹp nào trong năm 2010?', 7, 'Hoa hậu thế giới', 'Hoa hậu Trái Đất', 'Hoa hậu hoàn vũ', 'Hoa hậu quốc tế', 'B', '2020-01-02 07:39:05', '2020-01-02 07:39:05', NULL),
(85, 'Loài hoa nào được chọn là Quốc hoa của Việt Nam?', 7, 'Hoa sen', 'Hoa mai', 'Hoa đào', 'Hoa hồng', 'C', '2020-01-02 07:39:37', '2020-01-02 07:39:37', NULL),
(86, 'Bánh pía là đặc sản có nguồn gốc từ tỉnh nào?', 7, 'Bến Tre', 'Sóc Trăng', 'Bạc Liêu', 'Hậu Giang', 'D', '2020-01-02 07:40:01', '2020-01-02 07:40:01', NULL),
(87, 'Trong các hàm số lượng giác cơ bản, hàm số nào là hàm số chẵn?', 8, 'y=sinx', 'y=cosx', 'y-cotgx', 'y=tgx', 'D', '2020-01-02 07:40:46', '2020-01-02 07:40:46', NULL),
(88, 'Tập hợp các số thực được ký hiệu bằng chữ cái nào?', 8, 'N (Số tự nhiên)', 'Z (Số nguyên)', 'Q (Số hữu tỷ)', 'R (Số thực)', 'B', '2020-01-02 07:41:11', '2020-01-02 07:41:11', NULL),
(89, 'Khí nào chiếm 80% thành phần không khí?', 8, 'N2', 'O2', 'H2', 'Cl2', 'C', '2020-01-02 07:41:36', '2020-01-02 07:41:36', NULL),
(90, 'Vận tốc của sóng âm truyền trong môi trường nào lớn nhất?', 8, 'Chân không', 'Chất khí', 'Chất rắn', 'Chất lỏng', 'B', '2020-01-02 07:41:58', '2020-01-02 07:41:58', NULL),
(91, 'Côn trùng (sâu bọ) là lớp động vật thuộc ngành động vật nào?', 8, 'Động vật nguyên sinh', 'Ruột khoang', 'Thân mềm', 'Chân khớp', 'D', '2020-01-02 07:42:26', '2020-01-02 07:42:26', NULL),
(92, 'Công thức hoá học của Oxi già là gì ?', 8, 'O2', 'O3', 'H2O', 'H2O2', 'A', '2020-01-02 07:43:04', '2020-01-02 07:43:04', NULL),
(93, 'Khí độc Sarin có chứa thành phần nguyên tố Halogen nào?', 8, 'Flo', 'CLo', 'Brom', 'Iot', 'D', '2020-01-02 07:43:36', '2020-01-02 07:43:36', NULL),
(94, 'Đơn phân của protein là :', 8, 'Glucose', 'Axit amin', 'Axit béo', 'Nuclêotit', 'D', '2020-01-02 07:44:09', '2020-01-02 07:44:09', NULL),
(95, 'Are they ___ English engineers? ~ No, they aren\'t', 9, 'a', 'an', 'some', 'no article', 'D', '2020-01-06 23:54:24', '2020-01-06 23:54:24', NULL),
(96, 'When is the conference at your college? ~ It is on 13/08', 9, 'August the thirteen', 'The thirteenth of August', 'August the thirteenth', 'B&C are correct', 'D', '2020-01-06 23:56:56', '2020-01-06 23:57:06', NULL),
(97, 'Why don\'t you ___ tickets for Saturday\'s Mozart concert? Great. I really like Mozart\'s music.', 9, 'buy', 'buying', 'to buy', 'bought', 'A', '2020-01-06 23:59:15', '2020-01-06 23:59:15', NULL),
(98, 'Simone____ to my emails', 9, 'replies never', 'reply never', 'never reply', 'never reply', 'C', '2020-01-07 00:00:54', '2020-01-07 00:00:54', NULL),
(99, 'Last week, the porter in our hotel ___ to the showroom to look at the sporty cars there.', 9, 'go', 'goes', 'went', 'is going', 'C', '2020-01-07 00:04:17', '2020-01-07 09:53:12', NULL),
(100, 'When ___ begin your tour? - We planned to start at midnight but we changed the plan.', 9, 'do/you', 'are you', 'went you', 'did you', 'D', '2020-01-07 00:06:05', '2020-01-07 00:06:05', NULL),
(101, 'Marta ___lunch with her family', 9, 'has never', 'never has', 'eat never', 'never eat', 'B', '2020-01-07 00:09:41', '2020-01-07 00:09:41', NULL),
(102, 'I speak English at work, but I ____ speak French because we have visitors from Paris once or twice a year.', 9, 'some times', 'nerver', 'always', 'ever', 'A', '2020-01-07 00:14:45', '2020-01-07 00:14:45', NULL),
(103, 'A person who designs houses is ____.', 9, 'an architect', 'an engineer', 'a teacher', 'a doctor', 'A', '2020-01-07 00:15:56', '2020-01-07 00:15:56', NULL),
(104, 'Fernado: I\'m a marketing director. And you?-Angela:____', 9, 'I\'m a recruitment officer.', 'We work in Nigeria', 'She\'s a manager', 'They travel to Boston', 'A', '2020-01-07 00:17:31', '2020-01-07 00:17:31', NULL),
(105, 'I am a ____. I don\'t work for any company. I always work at the coffee shop', 9, 'officer', 'freelancer', 'nurse', 'designer', 'B', '2020-01-07 00:18:37', '2020-01-07 00:18:37', NULL),
(106, 'The cross th river from the pier by____.', 9, 'bus', 'Train', 'ferry', 'plane', 'C', '2020-01-07 00:19:50', '2020-01-07 00:19:50', NULL),
(107, 'The guest filled in th ___ and then he gave it to the receptionist.', 9, 'bag', 'registration form', 'key card', 'lift', 'B', '2020-01-07 00:22:32', '2020-01-07 00:22:32', NULL),
(108, 'The porter carried the ___ and put it in front of the room.', 9, 'bag', 'travelling bags', 'luggage', 'A &C are correct', 'D', '2020-01-07 00:23:49', '2020-01-07 00:23:49', NULL),
(109, 'Marta is an airport manager. She is ___ for the airport services', 9, 'safe', 'important', 'responsible', 'reliable', 'C', '2020-01-07 00:26:11', '2020-01-07 00:26:11', NULL),
(110, 'I ____ with all our computer problems.', 9, 'work', 'deal', 'manage', 'works', 'B', '2020-01-07 00:28:35', '2020-01-07 00:28:35', NULL),
(111, 'My colleague likes volunteer work. He works as ___ for non-government organization.', 9, 'a heater', 'a cooker', 'a doctor', 'a projector', 'C', '2020-01-07 10:45:53', '2020-01-07 10:45:53', NULL),
(112, 'Waiter: What would you like, Madam?~ Woman: I\'d like some___ yoghurt, please.', 9, 'tuna', 'fruit', 'plain', 'B&C are correct', 'D', '2020-01-07 10:46:25', '2020-01-07 10:46:25', NULL),
(113, 'Which picture is about the item in Nick\'s drawer according to the dialogue? Mary: Is there anything in your drawer? Nick: Yes, in my drawer, there are some paperclips but there are no newspapers.', 9, 'papers', 'One paper', 'paperclips', 'note', 'C', '2020-01-07 10:47:49', '2020-01-07 10:47:49', NULL),
(114, 'The hotel is____', 9, 'opposite the chemist', 'next to the computer store', 'between the park and the cinema', 'to the left of the cinema', 'C', '2020-01-07 10:49:10', '2020-01-07 10:49:10', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_luot_choi`
--

CREATE TABLE `chi_tiet_luot_choi` (
  `id` int(10) UNSIGNED NOT NULL,
  `luot_choi_id` int(10) UNSIGNED NOT NULL,
  `cau_hoi_id` int(10) UNSIGNED NOT NULL,
  `phuong_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_luot_choi`
--

INSERT INTO `chi_tiet_luot_choi` (`id`, `luot_choi_id`, `cau_hoi_id`, `phuong_an`, `diem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'A', 50, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `goi_credit`
--

CREATE TABLE `goi_credit` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_goi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `so_tien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `goi_credit`
--

INSERT INTO `goi_credit` (`id`, `ten_goi`, `credit`, `so_tien`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Gói 50k Tiền mặt', 200, 50, NULL, '2020-01-03 06:15:39', NULL),
(2, 'Gói 70k Tiền mặt', 300, 70, '2019-11-13 00:29:59', '2020-01-03 06:16:54', NULL),
(3, 'Gói 90k Tiền mặt', 500, 90, '2019-11-14 06:32:55', '2020-01-03 06:16:26', NULL),
(4, 'Gói 200k Tiền Mặt.', 1000, 200, '2020-01-03 06:22:47', '2020-01-03 06:23:34', NULL),
(5, 'Gói 900k Tiền mặt', 900, 300, '2020-01-05 12:58:02', '2020-01-05 12:58:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su_mua_credit`
--

CREATE TABLE `lich_su_mua_credit` (
  `id` int(10) UNSIGNED NOT NULL,
  `nguoi_choi_id` int(10) UNSIGNED NOT NULL,
  `goi_credit_id` int(10) UNSIGNED NOT NULL,
  `credit` int(11) NOT NULL,
  `so_tien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lich_su_mua_credit`
--

INSERT INTO `lich_su_mua_credit` (`id`, `nguoi_choi_id`, `goi_credit_id`, `credit`, `so_tien`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 200, 50, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linh_vuc`
--

CREATE TABLE `linh_vuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_linh_vuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `linh_vuc`
--

INSERT INTO `linh_vuc` (`id`, `ten_linh_vuc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Thể thao', NULL, NULL, NULL),
(2, 'Lịch sử', NULL, NULL, NULL),
(3, 'Âm nhạc – Phim', NULL, NULL, NULL),
(4, 'Địa lý', NULL, NULL, NULL),
(5, 'Văn học', NULL, NULL, NULL),
(6, 'Y học', '2019-11-19 10:09:32', '2019-11-19 10:09:32', NULL),
(7, 'Văn hoá - Sự kiện', '2019-11-29 06:03:36', '2019-11-29 06:03:36', NULL),
(8, 'Khoa học tự nhiên', '2019-11-29 06:03:45', '2020-01-04 15:52:14', '2020-01-04 15:52:14'),
(9, '401', '2019-11-29 06:04:05', '2020-01-06 23:52:55', NULL),
(10, 'Viễn Tưởng', '2020-01-03 05:05:40', '2020-01-03 05:06:15', NULL),
(11, 'Chơi ngu', '2020-01-04 10:59:28', '2020-01-04 11:35:30', '2020-01-04 11:35:30'),
(12, 'Có thưởng', '2020-01-04 11:35:16', '2020-01-04 11:35:26', '2020-01-04 11:35:26'),
(13, 'Có thưởng', '2020-01-04 13:01:49', '2020-01-04 13:01:56', '2020-01-04 13:01:56'),
(14, 'Anime- Manga', '2020-01-06 23:50:05', '2020-01-06 23:53:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luot_choi`
--

CREATE TABLE `luot_choi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nguoi_choi_id` int(10) UNSIGNED NOT NULL,
  `so_cau` int(11) NOT NULL,
  `diem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_gio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `luot_choi`
--

INSERT INTO `luot_choi` (`id`, `nguoi_choi_id`, `so_cau`, `diem`, `ngay_gio`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2000', '1:20', NULL, NULL, NULL),
(2, 1, 2, '3', '44', NULL, NULL, NULL),
(3, 1, 4, '5', '446', NULL, NULL, NULL),
(4, 1, 23, '3434', '34343', NULL, NULL, NULL),
(5, 1, 223, '34334', '344343', NULL, NULL, NULL),
(6, 1, 2323, '34334', '344343', NULL, NULL, NULL),
(7, 1, 21, '32', '3443463', NULL, NULL, NULL),
(8, 1, 23323, '334324', '3444343', NULL, NULL, NULL),
(9, 1, 24223, '346334', '3443343', NULL, NULL, NULL),
(10, 1, 25223, '345334', '3443433', NULL, NULL, NULL),
(11, 1, 1, '34334', '344343', NULL, NULL, NULL),
(12, 1, 2, '34334', '344343', NULL, NULL, NULL),
(13, 1, 3, '34334', '344343', NULL, NULL, NULL),
(14, 1, 4, '34334', '344343', NULL, NULL, NULL),
(15, 1, 5, '34334', '344343', NULL, NULL, NULL),
(16, 1, 6, '34334', '344343', NULL, NULL, NULL),
(17, 1, 7, '34334', '344343', NULL, NULL, NULL),
(18, 1, 8, '34334', '344343', NULL, NULL, NULL),
(19, 1, 3, '200', '2302', '2019-11-15 02:21:00', '2019-11-15 02:21:00', NULL),
(20, 1, 9, 'Điểm: 0', 'Fri Nov 15 16:22:06 GMT+07:00 2019', '2019-11-15 02:22:01', '2019-11-15 02:22:01', NULL),
(21, 1, 9, 'Điểm: 100', '01:41:04 15/11/2019', '2019-11-15 02:40:56', '2019-11-15 02:40:56', NULL),
(22, 1, 6, 'Điểm: 100', '08:45:04 15/11/2019', '2019-11-15 02:45:03', '2019-11-15 02:45:03', NULL),
(23, 1, 6, '250', '47:46:04 15/11/2019', '2019-11-15 02:46:42', '2019-11-15 02:46:42', NULL),
(24, 1, 10, '650', '38:14:05 15/11/2019', '2019-11-15 03:14:33', '2019-11-15 03:14:33', NULL),
(25, 1, 2, '0', '14:15:05 15/11/2019', '2019-11-15 03:15:09', '2019-11-15 03:15:09', NULL),
(26, 1, 3, '0', '57:19:05 15/11/2019', '2019-11-15 03:19:52', '2019-11-15 03:19:52', NULL),
(27, 1, 3, '0', '29:20:05 15/11/2019', '2019-11-15 03:20:24', '2019-11-15 03:20:24', NULL),
(28, 1, 3, '0', '06:21:05 15/11/2019', '2019-11-15 03:21:01', '2019-11-15 03:21:01', NULL),
(29, 1, 11, '0', '26:55:11 17/11/2019', '2019-11-17 09:55:27', '2019-11-17 09:55:27', NULL),
(30, 1, 6, '0', '01:57:11 17/11/2019', '2019-11-17 09:57:02', '2019-11-17 09:57:02', NULL),
(31, 1, 6, '0', '15:46:06 18/11/2019', '2019-11-17 16:46:16', '2019-11-17 16:46:16', NULL),
(32, 1, 7, '0', '47:56:06 18/11/2019', '2019-11-17 16:56:48', '2019-11-17 16:56:48', NULL),
(33, 1, 5, '0', '16:57:06 18/11/2019', '2019-11-17 16:57:16', '2019-11-17 16:57:16', NULL),
(34, 1, 7, '0', '09:20:08 18/11/2019', '2019-11-17 18:20:10', '2019-11-17 18:20:10', NULL),
(35, 1, 6, '0', '02:21:08 18/11/2019', '2019-11-17 18:21:03', '2019-11-17 18:21:03', NULL),
(36, 1, 10, '0', '24:35:09 18/11/2019', '2019-11-18 07:35:24', '2019-11-18 07:35:24', NULL),
(37, 1, 13, '50', '56:36:09 18/11/2019', '2019-11-18 07:36:55', '2019-11-18 07:36:55', NULL),
(38, 1, 6, '0', '05:39:09 18/11/2019', '2019-11-18 07:39:05', '2019-11-18 07:39:05', NULL),
(39, 1, 18, '0', '11:17:09 19/11/2019', '2019-11-19 07:17:11', '2019-11-19 07:17:11', NULL),
(40, 1, 8, '50', '15:21:09 19/11/2019', '2019-11-19 07:21:14', '2019-11-19 07:21:14', NULL),
(41, 1, 14, '0', '28:54:09 19/11/2019', '2019-11-19 07:54:27', '2019-11-19 07:54:27', NULL),
(42, 1, 13, '200', '18:08:10 19/11/2019', '2019-11-19 08:08:17', '2019-11-19 08:08:17', NULL),
(43, 1, 6, '0', '50:48:11 19/11/2019', '2019-11-19 09:48:50', '2019-11-19 09:48:50', NULL),
(44, 1, 14, '0', '20:26:01 20/11/2019', '2019-11-19 23:26:18', '2019-11-19 23:26:18', NULL),
(45, 1, 9, '0', '09:02:08 29/11/2019', '2019-11-29 06:02:04', '2019-11-29 06:02:04', NULL),
(46, 1, 6, '0', '03:38:08 30/11/2019', '2019-11-30 06:37:57', '2019-11-30 06:37:57', NULL),
(47, 1, 7, '50', '57:38:08 30/11/2019', '2019-11-30 06:38:51', '2019-11-30 06:38:51', NULL),
(48, 1, 7, '50', '36:14:09 03/01/2020', '2020-01-03 21:14:37', '2020-01-03 21:14:37', NULL),
(49, 1, 8, '50', '19:24:09 03/01/2020', '2020-01-03 21:24:20', '2020-01-03 21:24:20', NULL),
(50, 1, 11, '150', '07:45:10 03/01/2020', '2020-01-03 22:45:08', '2020-01-03 22:45:08', NULL),
(51, 1, 9, '150', '43:48:10 03/01/2020', '2020-01-03 22:48:45', '2020-01-03 22:48:45', NULL),
(52, 1, 8, '50', '21:49:10 03/01/2020', '2020-01-03 22:49:23', '2020-01-03 22:49:23', NULL),
(53, 2, 7, '100', '59:00:11 03/01/2020', '2020-01-03 23:01:00', '2020-01-03 23:01:00', NULL),
(54, 1, 5, '150', '28:29:04 03/01/2020', '2020-01-03 23:29:28', '2020-01-03 23:29:28', NULL),
(55, 1, 5, '0', '12:58:04 03/01/2020', '2020-01-03 23:58:12', '2020-01-03 23:58:12', NULL),
(56, 1, 5, '0', '49:36:05 03/01/2020', '2020-01-04 00:36:49', '2020-01-04 00:36:49', NULL),
(57, 1, 11, '200', '56:45:05 03/01/2020', '2020-01-04 00:48:19', '2020-01-04 00:48:19', NULL),
(58, 1, 4, '0', '56:50:09 03/01/2020', '2020-01-04 04:53:18', '2020-01-04 04:53:18', NULL),
(59, 1, 5, '0', '19:52:09 03/01/2020', '2020-01-04 04:54:41', '2020-01-04 04:54:41', NULL),
(60, 1, 6, '50', '42:55:09 03/01/2020', '2020-01-04 04:58:05', '2020-01-04 04:58:05', NULL),
(61, 1, 5, '0', '55:56:09 03/01/2020', '2020-01-04 04:59:18', '2020-01-04 04:59:18', NULL),
(62, 1, 9, '200', '01:26:10 03/01/2020', '2020-01-04 05:32:28', '2020-01-04 05:32:28', NULL),
(63, 1, 11, '300', '27:22:11 03/01/2020', '2020-01-04 07:01:19', '2020-01-04 07:01:19', NULL),
(64, 1, 12, '250', '15:56:11 03/01/2020', '2020-01-04 07:35:07', '2020-01-04 07:35:07', NULL),
(65, 1, 7, '100', '15:57:11 03/01/2020', '2020-01-04 07:36:07', '2020-01-04 07:36:07', NULL),
(66, 1, 4, '50', '50:14:09 04/01/2020', '2020-01-04 09:14:51', '2020-01-04 09:14:51', NULL),
(67, 1, 4, '0', '08:03:11 04/01/2020', '2020-01-04 11:03:12', '2020-01-04 11:03:12', NULL),
(68, 1, 4, '0', '08:03:11 04/01/2020', '2020-01-04 11:03:13', '2020-01-04 11:03:13', NULL),
(69, 1, 9, '150', '24:04:11 04/01/2020', '2020-01-04 11:04:28', '2020-01-04 11:04:28', NULL),
(70, 1, 9, '150', '24:04:11 04/01/2020', '2020-01-04 11:04:30', '2020-01-04 11:04:30', NULL),
(71, 1, 5, '0', '43:59:12 04/01/2020', '2020-01-04 12:59:48', '2020-01-04 12:59:48', NULL),
(72, 1, 5, '0', '21:10:04 04/01/2020', '2020-01-04 16:10:28', '2020-01-04 16:10:28', NULL),
(73, 1, 5, '0', '37:12:04 04/01/2020', '2020-01-04 16:12:37', '2020-01-04 16:12:37', NULL),
(74, 1, 8, '100', '39:49:12 05/01/2020', '2020-01-05 12:49:39', '2020-01-05 12:49:39', NULL),
(75, 15, 5, '50', '49:54:12 05/01/2020', '2020-01-05 12:54:49', '2020-01-05 12:54:49', NULL),
(76, 15, 9, '100', '40:55:12 05/01/2020', '2020-01-05 12:55:41', '2020-01-05 12:55:41', NULL),
(77, 1, 5, '0', '42:58:08 05/01/2020', '2020-01-05 20:58:44', '2020-01-05 20:58:44', NULL),
(78, 1, 5, '0', '42:58:08 05/01/2020', '2020-01-05 20:58:46', '2020-01-05 20:58:46', NULL),
(79, 2, 13, '450', '25:53:12 11/01/2020', '2020-01-11 00:53:26', '2020-01-11 00:53:26', NULL);

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
(1, '2019_10_01_090042_create_table_linh_vuc', 1),
(2, '2019_10_02_141453_create_table_nguoi_choi', 1),
(3, '2019_10_03_141614_create_table_goi_credit', 1),
(4, '2019_10_04_093238_create_table_cau_hoi', 1),
(5, '2019_10_05_141426_create_table_luot_choi', 1),
(6, '2019_10_06_141716_create_table_cau_hinh_diem_cau_hoi', 1),
(7, '2019_10_06_141737_create_table_cau_hinh_app', 1),
(8, '2019_10_06_141800_create_table_quan_tri_vien', 1),
(9, '2019_10_06_141829_create_table_cau_hinh_tro_giup', 1),
(10, '2019_10_08_141536_create_table_lich_su_mua_credit', 1),
(11, '2019_10_09_140144_create_table_chi_tiet_luot_choi', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_choi`
--

CREATE TABLE `nguoi_choi` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_dai_dien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem_cao_nhat` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_choi`
--

INSERT INTO `nguoi_choi` (`id`, `ten_dang_nhap`, `mat_khau`, `email`, `hinh_dai_dien`, `diem_cao_nhat`, `credit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user1', '$2y$10$SuKsUUWDE0MwYXUqbiWLn.5GZvCPm1AepYAVuXN1TyxAzSrFU0MqW', 'yoshi240499@gmail.com', '2050549088_1578537321.jpeg', 123, 351190, NULL, '2020-01-11 16:53:30', NULL),
(2, 'user', '$2y$10$CxIPfuedlZH.07gGLw84tuOaHoSWXDhmtezQdJDKPx3hO1d2egJDK', 'yoshi1@gmail.com', '354699808_1578066918.jpeg', 30, 1150, NULL, '2020-01-04 13:28:47', NULL),
(3, 'user2', '$2y$10$lwwtaZQazhWh2fpFhJs9/OajFcfLZgfc1mFTL9p8HStAWyudcK3p2', 'yoshi2@gmail.com', '2112', 0, 0, '2019-11-11 08:25:35', '2020-01-04 13:27:56', NULL),
(4, 'user3', '$2y$10$SuKsUUWDE0MwYXUqbiWLn.5GZvCPm1AepYAVuXN1TyxAzSrFU0MqW', 'yoshi3@gmail.com', '', 0, 0, '2019-11-11 08:27:54', '2019-11-11 08:27:54', NULL),
(5, 'user4', '$2y$10$SuKsUUWDE0MwYXUqbiWLn.5GZvCPm1AepYAVuXN1TyxAzSrFU0MqW', 'yoshie@gmail.com', '', 0, 0, '2019-11-11 08:35:25', '2019-11-11 08:35:25', NULL),
(6, 'avct', '$2y$10$SuKsUUWDE0MwYXUqbiWLn.5GZvCPm1AepYAVuXN1TyxAzSrFU0MqW', 'yoshi45@gmail.com', '', 0, 0, '2019-11-19 09:35:39', '2019-11-19 09:35:39', NULL),
(7, 'test2', '$2y$10$J90HawsgRAROeElzlQPVIOgMYIS91yVZPbb9qZfZS/jPGHzEt2RTS', 'yoshi46te@gmail.com', '1', 2, 1, '2019-11-19 09:36:30', '2020-01-03 06:06:21', NULL),
(8, 'user542', '$2y$10$dc0xB0zor0NsZhVfUKbE4OmRpmY7hD171pbcekY/8YzaL6SAG/0.i', 'yoshi240499@gmail.com', '123', 123, 123, '2020-01-03 05:32:28', '2020-01-04 13:28:10', NULL),
(9, '34343', '$2y$10$I.Pd.c6Pbwt78jBouK8dJOFUGNBzTUDJVoF5P6WUZbAakDJSvwuxa', 'chocolat240499@gmail.com', '1', 11, 1, '2020-01-03 05:59:41', '2020-01-03 06:12:51', NULL),
(10, 'user12', '$2y$10$SuKsUUWDE0MwYXUqbiWLn.5GZvCPm1AepYAVuXN1TyxAzSrFU0MqW', 'yos@gmail.com', '', 0, 0, '2020-01-03 22:51:22', '2020-01-03 22:51:22', NULL),
(11, 'quocdat', '$2y$10$SuKsUUWDE0MwYXUqbiWLn.5GZvCPm1AepYAVuXN1TyxAzSrFU0MqW', 'tqd2699@gmail.com', '', 0, 0, '2020-01-03 23:09:51', '2020-01-03 23:09:51', NULL),
(12, 'dat', '$2y$10$cKuTMUAlJK8uWEVCvUG2b.ifVDuOumJL8P7AUVu1r5lVhFIE5s0VG', 'dat@gmail.com', '', 0, 0, '2020-01-04 07:37:13', '2020-01-04 07:37:13', NULL),
(13, 'dat', '$2y$10$kTvtAAcBIR/FvCuOw73N1esWmZgv1x20sXjUpn3K2iCbxjnAnMI1i', 'dat@gmail.com', 'd', 4, 1000, '2020-01-04 10:57:42', '2020-01-04 10:57:42', NULL),
(14, 'op', '$2y$10$SuKsUUWDE0MwYXUqbiWLn.5GZvCPm1AepYAVuXN1TyxAzSrFU0MqW', 'op@qw.com', '', 0, 0, '2020-01-04 11:42:01', '2020-01-04 11:42:01', NULL),
(15, 'userk', '$2y$10$YBFTwdvC.CFN8ge3QHb9cu4Cw.aT3a3odFnWPTVIAlDlorD3yqhN6', 'vankhuong240499@gmail.com', '1202966305_1578203600.jpeg', 0, 590, '2020-01-05 12:51:39', '2020-01-05 13:00:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_tri_vien`
--

CREATE TABLE `quan_tri_vien` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_tri_vien`
--

INSERT INTO `quan_tri_vien` (`id`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', '$2y$10$vatXYFEEnG0FYlQIg3EUPurBtCS6B8CtWHmIRcpLse9GCdGHXVE6q', 'Nguyễn Văn Khương', NULL, '2020-01-03 06:38:13', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cau_hinh_app`
--
ALTER TABLE `cau_hinh_app`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cau_hinh_diem_cau_hoi`
--
ALTER TABLE `cau_hinh_diem_cau_hoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cau_hinh_tro_giup`
--
ALTER TABLE `cau_hinh_tro_giup`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cau_hoi_linh_vuc_id_foreign` (`linh_vuc_id`);

--
-- Chỉ mục cho bảng `chi_tiet_luot_choi`
--
ALTER TABLE `chi_tiet_luot_choi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_luot_choi_cau_hoi_id_foreign` (`cau_hoi_id`),
  ADD KEY `chi_tiet_luot_choi_luot_choi_id_foreign` (`luot_choi_id`);

--
-- Chỉ mục cho bảng `goi_credit`
--
ALTER TABLE `goi_credit`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lich_su_mua_credit`
--
ALTER TABLE `lich_su_mua_credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lich_su_mua_credit_nguoi_choi_id_foreign` (`nguoi_choi_id`),
  ADD KEY `lich_su_mua_credit_goi_credit_id_foreign` (`goi_credit_id`);

--
-- Chỉ mục cho bảng `linh_vuc`
--
ALTER TABLE `linh_vuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `luot_choi`
--
ALTER TABLE `luot_choi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `luot_choi_nguoi_choi_id_foreign` (`nguoi_choi_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoi_choi`
--
ALTER TABLE `nguoi_choi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quan_tri_vien`
--
ALTER TABLE `quan_tri_vien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cau_hinh_app`
--
ALTER TABLE `cau_hinh_app`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cau_hinh_diem_cau_hoi`
--
ALTER TABLE `cau_hinh_diem_cau_hoi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cau_hinh_tro_giup`
--
ALTER TABLE `cau_hinh_tro_giup`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_luot_choi`
--
ALTER TABLE `chi_tiet_luot_choi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `goi_credit`
--
ALTER TABLE `goi_credit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `lich_su_mua_credit`
--
ALTER TABLE `lich_su_mua_credit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `linh_vuc`
--
ALTER TABLE `linh_vuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `luot_choi`
--
ALTER TABLE `luot_choi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `nguoi_choi`
--
ALTER TABLE `nguoi_choi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `quan_tri_vien`
--
ALTER TABLE `quan_tri_vien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD CONSTRAINT `cau_hoi_linh_vuc_id_foreign` FOREIGN KEY (`linh_vuc_id`) REFERENCES `linh_vuc` (`id`);

--
-- Các ràng buộc cho bảng `chi_tiet_luot_choi`
--
ALTER TABLE `chi_tiet_luot_choi`
  ADD CONSTRAINT `chi_tiet_luot_choi_cau_hoi_id_foreign` FOREIGN KEY (`cau_hoi_id`) REFERENCES `cau_hoi` (`id`),
  ADD CONSTRAINT `chi_tiet_luot_choi_luot_choi_id_foreign` FOREIGN KEY (`luot_choi_id`) REFERENCES `luot_choi` (`id`);

--
-- Các ràng buộc cho bảng `lich_su_mua_credit`
--
ALTER TABLE `lich_su_mua_credit`
  ADD CONSTRAINT `lich_su_mua_credit_goi_credit_id_foreign` FOREIGN KEY (`goi_credit_id`) REFERENCES `goi_credit` (`id`),
  ADD CONSTRAINT `lich_su_mua_credit_nguoi_choi_id_foreign` FOREIGN KEY (`nguoi_choi_id`) REFERENCES `nguoi_choi` (`id`);

--
-- Các ràng buộc cho bảng `luot_choi`
--
ALTER TABLE `luot_choi`
  ADD CONSTRAINT `luot_choi_nguoi_choi_id_foreign` FOREIGN KEY (`nguoi_choi_id`) REFERENCES `nguoi_choi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
