-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 18, 2019 at 02:45 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myjoy`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `album_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `category_id`, `artist_id`, `album_name`, `thumb`, `created_at`, `updated_at`) VALUES
(2, 2, 2, 'Hồng Nhan Bạc Phận (Single)', '9b19d88c21fb391db19979a8eda60bc8.jpg', '2019-12-09 10:55:24', '2019-12-09 10:55:24'),
(3, 2, 2, 'Sóng Gió (Single)', 'Songgio.jpg', '2019-12-09 10:56:34', '2019-12-09 10:56:34'),
(4, 2, 3, 'Hết Thương Cạn Nhớ (Single)', 'hetthuongcannho.jpg', '2019-12-09 10:57:48', '2019-12-09 10:57:48'),
(5, 2, 3, 'Ta Còn Yên Nhau (Single)', 'taconthuongnha.jpg', '2019-12-09 10:59:05', '2019-12-09 10:59:05'),
(6, 2, 4, 'Hãy Đợi Đấy', 'haydoiday.jpg', '2019-12-09 11:00:41', '2019-12-09 11:00:41'),
(7, 2, 4, 'Đếm Ngày Xa Em', 'demngayxaem.jpg', '2019-12-09 11:01:25', '2019-12-09 11:01:25'),
(8, 2, 5, 'Đi Theo Mặt Trời', 'đitheomattroi.png', '2019-12-09 11:04:29', '2019-12-09 11:04:52'),
(9, 2, 5, 'Ngày Khác Lạ', 'ngaykhacla.png', '2019-12-09 11:05:37', '2019-12-09 11:05:37'),
(10, 2, 6, 'Chỉ Có Thể Là Min', 'chicothelamin.jpg', '2019-12-09 11:06:37', '2019-12-09 11:06:37'),
(11, 2, 6, 'Người Em Tìm Kiếm', 'nguoiemtimkiem.jpg', '2019-12-09 11:07:30', '2019-12-09 11:07:30'),
(12, 2, 14, 'Anh Nhớ Em Người Yêu Cũ', 'anhnhoemnguoiiucu.jpg', '2019-12-09 11:08:44', '2019-12-09 11:08:44'),
(13, 2, 14, 'Nếu Có Quay Về', 'neucoquayve.jpg', '2019-12-09 11:09:30', '2019-12-09 11:09:30'),
(14, 2, 15, 'Duyên Dáng Bolero Vol 1', 'duyendangbolero.jpg', '2019-12-09 11:10:30', '2019-12-09 11:10:30'),
(15, 2, 15, 'Con Tim Dại Khờ Vol 5', 'contimdaikho.jpg', '2019-12-09 11:11:30', '2019-12-09 11:11:30'),
(16, 2, 16, 'Cuộc Vui Cô Đơn', 'cuocvuicodon.jpg', '2019-12-09 11:12:23', '2019-12-09 11:12:23'),
(17, 2, 16, 'Bước Qua Đời Nhau', 'Buocquadoinhau.jpg', '2019-12-09 11:13:14', '2019-12-09 11:13:14'),
(18, 2, 17, 'Còn Gì Đau Hơn Chữ Đã Từng', 'congidauhonchudatung.jpg', '2019-12-09 11:14:18', '2019-12-09 11:14:18'),
(19, 2, 17, 'Ai Là Người Thương Em', 'ailanguoithuongem.jpg', '2019-12-09 11:15:00', '2019-12-09 11:15:00'),
(20, 2, 18, 'Khoảng Cách Đôi Ta', 'khoangcachdoita.jpg', '2019-12-09 11:16:15', '2019-12-09 11:16:15'),
(21, 2, 18, 'Xin Đừng Cách Xa', 'xindungcachxa.jpg', '2019-12-09 11:16:58', '2019-12-09 11:16:58'),
(22, 2, 19, 'Yêu Người Như Anh', 'yeunguoinhuanh.jpg', '2019-12-09 11:19:37', '2019-12-09 11:19:37'),
(23, 2, 19, 'Dĩ Vãng Nhạt Nhòa', 'divangnhatnhoa.jpg', '2019-12-09 11:20:51', '2019-12-09 11:20:51'),
(24, 2, 20, 'Những Bài Hát Hay Của Erik', 'nhungbaihathaycuaerik.jpg', '2019-12-09 11:23:32', '2019-12-09 11:23:32'),
(25, 2, 20, 'Góc Nhạc Erik', 'gocnhacerik.jpg', '2019-12-09 11:24:19', '2019-12-09 11:24:19'),
(26, 2, 21, 'Chỉ Có Thể Là Mr Siro', 'chicothelamrsiro.jpg', '2019-12-09 11:26:47', '2019-12-09 11:26:47'),
(27, 2, 21, 'Góc Nhạc Mr Siro', 'gocnhacmrsiro.jpg', '2019-12-09 11:27:35', '2019-12-09 11:27:35'),
(28, 2, 22, 'Những Bài Hát Hoa Vinh Cover', 'nhungbaihathoavinh.png', '2019-12-09 11:29:26', '2019-12-09 11:29:26'),
(29, 2, 22, 'Những Bài Hát Hay Nhất Hoa Vinh', 'nhungbaihathaynhathoavinh.jpg', '2019-12-09 11:30:19', '2019-12-09 11:30:19'),
(30, 2, 23, 'Cứ Vô Tư Đi', 'cuvotudi.jpg', '2019-12-09 11:32:25', '2019-12-09 11:32:25'),
(31, 2, 23, 'Go Away', 'goaway.jpg', '2019-12-09 11:33:06', '2019-12-09 11:33:06'),
(32, 2, 24, 'Những Bài Hát Hay Nhất Justatee', 'nhungbaihathaynhatjustatee.jpg', '2019-12-09 11:36:32', '2019-12-09 11:36:32'),
(33, 2, 25, 'Những Bài Hát Hay Nhất Dương Hồng Loan', 'nhungbaihathaynhatduonghongloan.jpg', '2019-12-09 11:38:03', '2019-12-09 11:38:03'),
(34, 2, 26, 'Đen Đá Không Đường', 'dendakhongduong.jpg', '2019-12-09 11:39:25', '2019-12-09 11:39:25'),
(35, 2, 26, 'Những Bài Hát Hay Nhất Amee', 'nhungbaihathaynhatamee.jpg', '2019-12-09 11:40:31', '2019-12-09 11:40:31'),
(36, 3, 7, 'Ghost', 'ghost.jpg', '2019-12-09 11:42:56', '2019-12-09 11:42:56'),
(37, 3, 7, 'Are You LoneLy', 'areyoulonely.jpg', '2019-12-09 11:43:43', '2019-12-09 11:43:43'),
(38, 3, 8, 'User To Love', 'Usertolove.jpg', '2019-12-09 11:44:48', '2019-12-09 11:44:48'),
(39, 3, 8, 'Dreamer 2', 'dreamer.jpg', '2019-12-09 11:45:36', '2019-12-09 11:45:36'),
(40, 3, 9, 'Romance', 'romance.jpg', '2019-12-09 11:46:28', '2019-12-09 11:46:28'),
(41, 3, 9, 'Living Proof', 'livingproof.jpg', '2019-12-09 11:47:06', '2019-12-09 11:47:06'),
(42, 3, 27, 'Take A Way', 'takeaway.jpg', '2019-12-09 11:48:25', '2019-12-09 11:48:25'),
(43, 3, 27, 'Call You Mine', 'takeaway.jpg', '2019-12-09 11:49:04', '2019-12-09 11:49:04'),
(44, 3, 28, 'The Love Songs', 'thelovesong.jpg', '2019-12-09 11:50:23', '2019-12-09 11:50:23'),
(45, 3, 28, 'Greatest Hills', 'greatesthill.jpg', '2019-12-09 11:51:33', '2019-12-09 11:51:33'),
(46, 3, 29, 'Instagram', 'Instagram.jpg', '2019-12-09 11:53:07', '2019-12-09 11:53:07'),
(47, 3, 29, 'Thing For You', 'thingforyou.jpg', '2019-12-09 11:53:51', '2019-12-09 11:53:51'),
(48, 4, 10, 'BTS World', 'btsworld.jpg', '2019-12-09 11:55:31', '2019-12-09 11:55:31'),
(49, 4, 10, 'Face YourSelf', 'faceyourself.jpg', '2019-12-09 11:56:16', '2019-12-09 11:56:16'),
(50, 4, 11, 'Kill This Love', 'killthislove.jpg', '2019-12-09 11:58:01', '2019-12-09 11:58:01'),
(51, 4, 11, 'Square Up', 'squareup.jpg', '2019-12-09 11:58:39', '2019-12-09 11:58:39'),
(52, 4, 12, 'Made', 'made.jpg', '2019-12-09 12:00:03', '2019-12-09 12:00:03'),
(53, 4, 12, 'Alive', 'Alive.jpg', '2019-12-09 12:01:03', '2019-12-09 12:01:03'),
(54, 4, 30, 'Fake & True', 'fake & true.jpg', '2019-12-09 12:02:09', '2019-12-09 12:02:09'),
(55, 4, 30, 'Fell Special', 'fellspecial.jpg', '2019-12-09 12:03:03', '2019-12-09 12:03:03'),
(56, 4, 31, 'Remember', 'remember.jpg', '2019-12-09 12:04:08', '2019-12-09 12:14:16'),
(57, 4, 31, 'So Good', 'sogood.jpg', '2019-12-09 12:04:42', '2019-12-09 12:04:42'),
(58, 4, 32, 'Obsession', 'obsession.jpg', '2019-12-09 12:05:56', '2019-12-09 12:05:56'),
(59, 4, 32, 'Love Shot', 'love song.jpg', '2019-12-09 12:06:33', '2019-12-09 12:06:33'),
(60, 4, 13, 'Start Light Journey', 'startlifejourney.jpg', '2019-12-09 12:10:04', '2019-12-09 12:10:04'),
(61, 4, 13, 'Last Scene', 'Last Scene.jpg', '2019-12-09 12:10:55', '2019-12-09 12:10:55'),
(62, 4, 33, 'Walk On Water', 'walkonwater.jpg', '2019-12-09 12:12:05', '2019-12-09 12:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `album_categories`
--

CREATE TABLE `album_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album_categories`
--

INSERT INTO `album_categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(2, 'Việt Nam', '2019-12-09 10:53:19', '2019-12-09 10:53:19'),
(3, 'Âu Mỹ', '2019-12-09 10:53:31', '2019-12-09 10:53:31'),
(4, 'Châu Á', '2019-12-09 10:53:42', '2019-12-09 10:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `artist_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `category_id`, `artist_name`, `intro`, `avatar`, `created_at`, `updated_at`) VALUES
(2, 2, 'Jack-Kicm', 'Jack sinh năm 1997, tên thật là Trịnh Trần Phương Tuấn.', 'Jack-kicm.jpg', '2019-12-09 09:52:51', '2019-12-09 10:21:38'),
(3, 2, 'Đức Phúc', 'Đức Phúc là Quán quân Giọng hát Việt mùa 3 đồng thời là sinh viên trường Đại học Xây dựng Hà Nội. Hiện anh đang hoạt động nghệ thuật với vai trò ca sĩ do công ty Mỹ Tâm Entertainment quản lý.', 'ducphuc.jpg', '2019-12-09 09:55:14', '2019-12-09 09:55:14'),
(4, 2, 'Lou Hoàng', 'Lou Hoàng tên thật là Hoàng Kim Long sinh ngày 06/03/1994 tại Hà Nội.', 'louhoang.jpg', '2019-12-09 09:56:46', '2019-12-09 09:56:46'),
(5, 2, 'Đen Vâu', 'Đen” chính là rapname của anh chàng 8X tài năng Nguyễn Đức Cường.', 'den.jpg', '2019-12-09 09:58:09', '2019-12-09 10:25:44'),
(6, 2, 'Min', 'Nguyễn Minh Hằng được biết tới với nghệ danh MIN là một nữ ca sĩ, vũ công, nhà sản xuất âm nhạc người Việt Nam.', 'min.jpg', '2019-12-09 09:59:32', '2019-12-09 09:59:32'),
(7, 1, 'Alan Walker', 'Sinh ra và lớn lên tại Bergen, Na Uy, Alan Walker sở hữu tài năng âm nhạc thiên bẩm ngay từ khi còn là một đứa trẻ.', 'alanwalker.jpg', '2019-12-09 10:07:16', '2019-12-09 10:07:16'),
(8, 1, 'Martin Garrix', 'Martijn Garritsen (sinh 14 tháng 5 năm 1996), thường được biết đến với nghệ danh là Martin Garrix, là một DJ, nhà soạn nhạc, nhạc sĩ và nhà sản xuất người Hà Lan.', 'martin garrix.jpg', '2019-12-09 10:09:00', '2019-12-09 10:27:59'),
(9, 1, 'Camila Cabello', 'Camila Cabello là một ca sĩ người Mỹ gốc Cuba.', 'camila cabello.jpg', '2019-12-09 10:14:05', '2019-12-09 10:14:05'),
(10, 3, 'BTS', 'Bangtan Boys còn được gọi là BTS . Tên tiếng Hàn của nhóm là Bangtan Sonyeondan.', 'bts.jpg', '2019-12-09 10:15:55', '2019-12-09 10:15:55'),
(11, 3, 'Black Pink.', 'Vào ngày 29/06/2016, YG Entertainment đã chính thức tiết lộ girlgroup mới của họ sẽ chỉ gồm bốn thành viên đã công bố từ trước, đồng thời nhóm sẽ có tên là Black Pink.', 'blackpink.jpg', '2019-12-09 10:17:07', '2019-12-09 10:17:07'),
(12, 3, 'BigBang', 'Big Bang (Tiếng Triều Tiên: 빅뱅), thường được viết là BIGBANG, là một nhóm nhạc nam của Hàn Quốc với 5 thành viên thuộc YG Entertainment', 'Bigbang.jpg', '2019-12-09 10:17:55', '2019-12-09 10:17:55'),
(13, 4, 'Ikimono Gakari', 'Nhóm Ikimono Gakari (いきものがかり) là một ban nhạc rock của Nhật được thành lập vào tháng 2/ 1999 tại Kanagawa, Japan.', 'ikimonogakari.jpg', '2019-12-09 10:19:20', '2019-12-09 10:19:20'),
(14, 2, 'Minh Vương M4U', 'Minh Vương M4U tên thật là Trần Trương Minh Vương. Anh từng là sinh viên của trường Cao đẳng Nghệ thuật Hà Nội, khoa Guitar cổ điển', 'minhvuong.jpg', '2019-12-09 10:29:50', '2019-12-09 10:29:50'),
(15, 2, 'Lệ Quyên', 'Lệ Quyên tên thật là Vũ Lệ Quyên sinh ngày 02/04/1981 tại Hà Nội, là ca sĩ dòng nhạc nhẹ của Việt Nam.', 'lequyen.jpg', '2019-12-09 10:30:53', '2019-12-09 10:30:53'),
(16, 2, 'Lê Bảo Bình', 'Lê Bảo Bình sinh năm 1990 ở Hà Nội được biết đến là một ca sĩ , nhạc sĩ không còn xa lạ gì với giới trẻ Việt Nam.', 'lebaobinh.jpg', '2019-12-09 10:32:12', '2019-12-09 10:32:12'),
(17, 2, 'Quân A.P', 'Được giới trẻ biết đến, yêu mến và ưu ái với hàng loạt những danh xưng có cánh như “soái ca cover”, “hotboy cover”, “Sát thủ cover làm bay màu bản gốc”', 'quan a.p.jpg', '2019-12-09 10:34:12', '2019-12-09 10:34:12'),
(18, 2, 'Châu Khải Phong', 'Bất ngờ đã tạo tên tuổi bằng ca khúc Anh thích em như xưa hồi vào năm 2011, Châu Khải Phong đã nhanh chóng trở thành một cái tên rất ăn khách', 'chaukhairphong.jpg', '2019-12-09 10:35:31', '2019-12-09 10:35:31'),
(19, 2, 'Đạt G', 'Bắt đầu tham hoạt động nghệ thuật vào năm 2017,ca khúc đầu tiên mà ĐatG sáng tác và cũng chính anh thể hiện có tên Điều khác lạ', 'đạt g.jpg', '2019-12-09 10:36:14', '2019-12-09 10:36:14'),
(20, 2, 'Erik', 'Lê Trung Thành được biết tới với nghệ danh Erik là một ca sĩ và vũ công', 'erik.jpg', '2019-12-09 10:37:20', '2019-12-09 10:37:20'),
(21, 2, 'Mr.Siro', 'Lê Trung Thành được biết tới với nghệ danh Erik là một ca sĩ và vũ công', 'siro.jpg', '2019-12-09 10:38:10', '2019-12-09 10:38:10'),
(22, 2, 'Hoa Vinh', 'Được biết, Hoa Vinh tên thật là Lê Tiến Anh, anh bất ngờ nổi tiếng trên mạng xã hội vì thường xuyên livestream và cover các ca khúc nổi tiếng.', 'hoavinh.jpg', '2019-12-09 10:39:29', '2019-12-09 10:39:29'),
(23, 2, 'Hương Giang Idol', 'Nguyễn Hương Giang sinh năm 1991 được chú ý tại cuộc thi Vietnam idol 2012 không chỉ bởi giọng hát triển vọng mà còn ở chuyện chuyển đổi giới tính của mình.', 'huonggiang.jpg', '2019-12-09 10:40:10', '2019-12-09 10:40:10'),
(24, 2, 'JustaTee', 'Là thành viên cũ của Click Click Boom, đang là thành viên trong Joker\'s Rule và LadyKillah Proz', 'justatee.jpg', '2019-12-09 10:41:14', '2019-12-09 10:41:14'),
(25, 2, 'Dương Hồng Loan', 'Dương Hồng Loan là một ca sĩ với dòng nhạc trữ tình đằm thắm được đông đảo các bạn biết đến và yêu mến.', 'hongloan.jpg', '2019-12-09 10:42:01', '2019-12-09 10:42:01'),
(26, 2, 'Amee', 'Trần Huyền My có nghệ danh là Amee, là một ca sĩ trẻ vô cùng xinh đẹp.', 'Amee.jpg', '2019-12-09 10:43:49', '2019-12-09 10:43:49'),
(27, 1, 'The Chainsmokers', 'Bộ đôi DJ gồm 2 thành viên, Alex Pall và Drew Taggart gặp nhau qua niềm say mê âm nhạc một cách tình cờ. Drew học tại Syracuse University, còn Alex học ở New York University.', 'chainsmokers.jpg', '2019-12-09 10:47:30', '2019-12-09 10:47:30'),
(28, 1, 'Westlife', 'Westlife là một boyband nhạc pop đến từ Ireland và được thành lập năm 1998, ông bầu của nhóm là Louis Walsh.', 'weslife.jpg', '2019-12-09 10:48:09', '2019-12-09 10:48:09'),
(29, 1, 'David Guetta', 'Pierre David Guetta (sinh ngày 7 tháng 11 năm 1967), được biết đến với nghệ danh David Guetta (Phát âm tiếng Pháp: [daˌvid ɡɛˈta]), là nhà sản xuất nhạc house và DJ người Pháp.', 'guetta.jpg', '2019-12-09 10:48:58', '2019-12-09 10:48:58'),
(30, 3, 'TWICE', 'Twice (tiếng Hàn: 트와이스 Teuwaiseu; tiếng Nhật: トワイス Towaisu) là một nhóm nhạc nữ Hàn Quốc được thành lập bởi JYP Entertainment thông qua chương trình truyền hình thực tế Sixteen vào năm 2015.', 'twice.jpg', '2019-12-09 10:50:34', '2019-12-09 10:50:34'),
(31, 3, 'T-ARA', 'T-ara là một nhóm nhạc nữ đến từ Seoul, Hàn Quốc được thành lập bởi Core Contents Media trong năm 2009', 'tara.jpg', '2019-12-09 10:51:31', '2019-12-09 10:51:31'),
(32, 3, 'EXO', 'EXO là một nhóm nhạc nam Hàn-Trung Quốc được S.M. Entertainment thành lập vào năm 2011 và ra mắt công chúng vào năm 2012', 'Exo.jpg', '2019-12-09 10:52:23', '2019-12-09 10:52:23'),
(33, 5, 'Đặng Tử Kỳ', 'G. E.M. được sinh ra tại Thượng Hải và lớn lên ở Hồng Kông. Cô bắt đầu sự nghiệp của mình với một tình yêu âm nhạc,trong 1 gia đình mà mẹ và bà ngoại đều là những giọng ca Opera nổi tiếng', 'đangtukỳ.jpg', '2019-12-09 12:08:34', '2019-12-09 12:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `artist_categories`
--

CREATE TABLE `artist_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artist_categories`
--

INSERT INTO `artist_categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'US-UK', '2019-12-08 09:06:25', '2019-12-08 09:06:25'),
(2, 'Việt Nam', '2019-12-09 09:49:14', '2019-12-09 09:49:14'),
(3, 'Hàn Quốc', '2019-12-09 09:49:27', '2019-12-09 09:49:27'),
(4, 'Nhật Bản', '2019-12-09 09:49:42', '2019-12-09 09:49:42'),
(5, 'Hoa Ngữ', '2019-12-09 09:49:55', '2019-12-09 09:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `description`, `content`, `image`, `created_at`, `updated_at`) VALUES
(2, 2, 'Bức Tường luôn mang theo micro của Trần Lập để tưởng nhớ', 'Đại diện Bức Tường cho biết trong tất cả chương trình biểu diễn từ 2016 đến nay, nhóm luôn mang theo chiếc micro của Trần Lập để tưởng nhớ thủ lĩnh của mình.', '<p style=\"margin-left:0px; margin-right:0px\">Ban nhạc Bức Tường là khách mời bí mật trong thử thách dành cho đội thập niên 80 ở chương trình Ký ức vui vẻ lên sóng tối 8/12.</p>\r\n\r\n<p>Được thành lập vào năm 1995, Bức Tường là ban nhạc đầu tiên có tour trình diễn xuyên Việt và đặc biệt gắn bó với nhiều thế hệ sinh viên.</p>\r\n\r\n<p>Xuất hiện trên sân khấu, 4 thành viên hiện tại của Bức Tường, bao gồm: Trần Tuấn Hùng, Nguyễn Minh Đức, Phạm Trung Hiếu và Vũ Văn Hà.</p>\r\n\r\n<p>Tuấn Hùng chia sẻ: “Sau khi trưởng nhóm Trần Lập qua đời, nhóm Bức Tường vẫn tiếp tục hoạt động nhưng không tuyển ca sĩ cố định để thay thế vị trí Trần Lập. Ở mỗi tour diễn của nhóm Bức Tường, chúng tôi sẽ mời những ca sĩ khách mời để cùng nhóm thực hiện tour trình diễn đó\".</p>', 'buctuong.jpg', '2019-12-09 08:00:42', '2019-12-09 08:24:52'),
(3, 2, 'Đức Trí kể bị Phương Thanh liên tục giành bài hát', 'Xuất hiện trong chương trình Tối chủ nhật vui vẻ, nhạc sĩ Đức Trí khiến Phương Thanh bất ngờ. Đây là lần hiếm hoi anh tham gia talk show.', '<p><a class=\"topic person autolink\" href=\"https://news.zing.vn/tieu-diem/phuong-thanh-nhan-vat.html\" style=\"background: transparent; font-family: &quot;Noto Serif&quot;, serif; box-sizing: border-box; text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; font-size: 17.6px; vertical-align: baseline; text-decoration-line: none; color: rgb(0, 72, 97); border-bottom: 0px none;\" title=\"Tin tức Phương Thanh\">Phương Thanh</a><span style=\"background-color:transparent; font-family:noto serif,serif; font-size:1.1em\">&nbsp;là khách mời của tập 7 chương trình Tối chủ nhật vui vẻ, được phát sóng tối 8/12. Nhạc sĩ Đức Trí cũng xuất hiện với vai trò là đồng nghiệp thân thiết của giọng ca&nbsp;</span><em style=\"background-color:transparent; font-family:noto serif,serif; font-size:1.1em\">Trống vắng</em><span style=\"background-color:transparent; font-family:noto serif,serif; font-size:1.1em\">.</span></p>\r\n\r\n<div class=\"the-article-body\" style=\"box-sizing: border-box; text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 1.1em; vertical-align: baseline; background: transparent; text-size-adjust: 100%; float: left; width: 660px; position: relative; font-family: &quot;Noto Serif&quot;, serif; color: rgb(51, 51, 51); line-height: 1.618;\">\r\n<p>Trên sân khấu, Phương Thanh thú nhận cô bất ngờ lẫn cảm động trước tình cảm của nam nhạc sĩ dành cho mình. Anh vốn ít khi nhận lời tham gia game show, càng ngại các show chia sẻ về chuyện hậu trường, đời sống riêng, nhưng lần này là ngoại lệ.</p>\r\n</div>', 'LRS_9070.jpg', '2019-12-09 08:26:59', '2019-12-09 08:26:59'),
(4, 2, 'Nhóm nhạc đông nhất Việt Nam khóc trên sân khấu', 'Nhóm nhạc đông thành viên nhất Việt Nam SGO48 có buổi mini show đầu tiên trong sự nghiệp. Nhiều thành viên không kiềm được những giọt nước mắt hạnh phúc.', '<p><span style=\"font-family:sans-serif; font-size:19.008px\">Tối 7/12, nhóm nhạc \"con nhà giàu\" SGO48 có&nbsp;show diễn đánh dấu một năm hoạt động của nhóm mang tên Koisuru Xmas Party, tổ chức tại TP.HCM. Đây còn là đêm nhạc nhằm tri ân những người hâm mộ đã theo dõi và đồng hành với nhóm trong suốt gần một năm hoạt động.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-family:sans-serif; font-size:19.008px\">Mở đầu đêm nhạc. \"dàn hợp xướng\" SGO48 với center Kaycee đã đưa khán giả đến với không khí Giáng sinh qua giai điệu quen thuộc của ca khúc&nbsp;</span><em>We Wish You A Merry Christmas</em><span style=\"font-family:sans-serif; font-size:19.008px\">.</span></p>', 'SGO48_zing-3.jpg', '2019-12-09 08:28:00', '2019-12-09 08:28:00'),
(5, 3, 'K-ICM & Jack, Đạt G, B Ray dẫn đầu đề cử top 20 ZMA 2019', 'Đề cử top 20 Zing Music Awards 2019 được ví von như thế trận đối đầu giữa các tân binh Vpop và những nghệ sĩ kỳ cựu của nhạc Việt.', '<p><span style=\"font-family:noto serif,serif; font-size:17.6px\">Ngày 9/12, ZMA 2019 chính thức công bố top 20 đề cử. Giải thưởng năm nay có sự tinh giản cơ cấu, chỉ còn 9 hạng mục và chia làm 4 nhóm: Phát hiện của năm, Nghệ sĩ của năm, nhóm giải thưởng theo thể loại nhạc (Ca khúc Pop/Ballad, Dance/Electronic, R&amp;B/Soul, Rap/Hip Hop, Nhạc phim được yêu thích) và nhóm giải thưởng yêu thích (Nam/Nữ nghệ sĩ được yêu thích).</span></p>\r\n\r\n<p><span style=\"font-family:noto serif,serif; font-size:17.6px\">K-ICM &amp; Jack, Đạt G, B Ray thống trị danh sách top 20 khi sở hữu tổng cộng 7 đề cử. Riêng K-ICM &amp; Jack đang là gương mặt sáng giá cho giải thưởng Phát hiện của năm - hạng mục giải thưởng chính của ZMA năm nay. Trong năm 2019, Jack kết hợp producer K-ICM tạo thành bộ đôi gây bão thị trường nhạc Việt với bảng thành tích đáng ngưỡng mộ. Cả hai “làm mưa làm gió” với liên hoàn hit đạt tổng 1 tỷ lượt nghe trên Zing MP3 -&nbsp;</span><em>Hồng nhan, Bạc phận, Sóng gió, Sao em vô tình, Em gì ơi</em><span style=\"font-family:noto serif,serif; font-size:17.6px\">.</span></p>', 'thumb_top_20.jpg', '2019-12-09 08:29:37', '2019-12-09 08:29:37'),
(6, 2, 'Kai - cỗ máy nhảy của EXO', 'Kai được tạp chí danh tiếng đánh giá là ngôi sao có phong cách thời trang ấn tượng và thú vị nhất Hàn Quốc. Thế nhưng, Kai không chỉ có vậy.', '<p><span style=\"font-family:sans-serif; font-size:19.008px\">Mới đây, tạp chí dành cho nam giới&nbsp;</span><em>GQ&nbsp;</em><span style=\"font-family:sans-serif; font-size:19.008px\">bất ngờ công bố danh sách những ngôi sao mặc đẹp nhất năm 2019. Trong đó, nam idol Kai của EXO là nghệ sĩ châu Á duy nhất được vinh danh trong bảng xếp hạng.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-family:sans-serif; font-size:19.008px\">Kai tên thật là Kim Jongin, sinh ngày 14/1/1994 tại thành phố Suncheon, tỉnh Jeolla Nam, Hàn Quốc. Ngay từ nhỏ, anh đã sở hữu gương mặt rất ăn ảnh, bụ bẫm và đáng yêu. Kai từng mơ ước trở thành vũ công ballet khi&nbsp;cùng gia đình đi xem một vở nhạc kịch mang tên&nbsp;</span><em>The Nutcracker</em><span style=\"font-family:sans-serif; font-size:19.008px\">.&nbsp;Tuy nhiên, bước ngoặt khiến anh quyết định trở thành thần tượng&nbsp;chính là khi xem màn biểu diễn&nbsp;</span><em>T.O.P&nbsp;</em><span style=\"font-family:sans-serif; font-size:19.008px\">của tiền bối huyền thoại Shinhwa. Nhóm nhạc cũng có ảnh hưởng rất lớn đến phong cách biểu diễn trên sân khấu của Kai sau này.</span></p>', 'kaitn.jpg', '2019-12-09 08:33:26', '2019-12-09 08:33:26'),
(7, 2, '\'Bé\' Xuân Nghi thay đổi ngoại hình sau 10 năm', 'Sau 10 năm du học ở Mỹ, Xuân Nghi quyết định về nước, tiếp tục con đường ca hát. Nữ ca sĩ cho hay cô buộc phải thay đổi hình ảnh để phù hợp với độ tuổi và dòng nhạc mình theo đuổi.', '<p style=\"margin-left:0px; margin-right:0px\">Xuân Nghi là một trong các khách mời của tập 1 chương trình Vang bóng một thời. Cô khiến mọi người bất ngờ khi xuất hiện trên sân khấu với vẻ ngoài trưởng thành, cá tính, không còn là hình ảnh ca sĩ nhí Xuân Nghi ngây thơ của ngày nào.</p>\r\n\r\n<p>Xuân Nghi cho hay cô đã có một thời gian dài du học ở nước ngoài về âm nhạc và nghệ thuật. Cô mới tốt nghiệp đại học ở Mỹ và quay về Việt Nam hoạt động nghệ thuật.</p>', 'VANG_BONG_MOT_THOI__40.jpg', '2019-12-09 08:34:28', '2019-12-09 08:34:28'),
(8, 2, 'BTS nhận 4 Daesang, mang về tổng cộng 9 giải tại MAMA 2019', 'Tại MAMA 2019 được tổ chức tối 4/12, BTS trở thành chủ nhân của cả 4 Daesang (giải thưởng lớn nhất) và mang về tổng cộng 9 cúp chiến thắng.', '<p><span style=\"font-family:sans-serif; font-size:15.84px\">Tối 4/12, lễ trao giải&nbsp;</span><a class=\"topic company autolink quickview tooltipstered\" href=\"https://news.zing.vn/tieu-diem/mama.html\" style=\"box-sizing: border-box; text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; font-size: 15.84px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-decoration-line: none; color: rgb(51, 51, 51); font-family: sans-serif;\">MAMA</a><span style=\"font-family:sans-serif; font-size:15.84px\">&nbsp;2019 đã diễn ra tại Nagoya Dome (Nhật Bản) với sự góp mặt của&nbsp;</span><a class=\"topic company autolink quickview tooltipstered\" href=\"https://news.zing.vn/tieu-diem/bts-band.html\" style=\"box-sizing: border-box; text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; font-size: 15.84px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-decoration-line: none; color: rgb(51, 51, 51); font-family: sans-serif;\">BTS</a><span style=\"font-family:sans-serif; font-size:15.84px\">, TWICE, Seventeen, Mamamoo... cùng nhiều diễn viên, ca sĩ khác. Khán giả Hàn ví von đêm trao giải như của riêng BTS khi nhóm nhạc 7 thành viên đã nhận tổng cộng 9 cúp chiến thắng.&nbsp;&nbsp;</span></p>\r\n\r\n<p><span style=\"font-family:sans-serif; font-size:15.84px\">BTS tiếp tục trở thành chủ nhân của cả 4 giải Daesang (giải thưởng lớn nhất) là Bài hát của năm, Album của năm, Nghệ sĩ của năm và Daesang Biểu tượng toàn cầu. Ngoài ra, nhóm còn chiến thắng các hạng mục MV xuất sắc, Nghệ sĩ nam xuất sắc, Nghệ sĩ nam được yêu thích nhất,&nbsp;Worldwide Fans Choice, Nhóm nhạc nam có vũ đạo xuất sắc. Bang Shi Hyuk - giám đốc công ty quản lý của BTS - cũng được vinh danh là Nhà sản xuất xuất sắc.&nbsp;</span></p>', 'EK8n6K8UYAAzlr5.jpeg', '2019-12-09 08:35:39', '2019-12-09 08:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `blog_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 3, 7, 'Chị đẹp thế', '2019-12-25 17:00:00', '2019-12-27 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_place` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `title`, `event_place`, `event_date`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'HOT! Lễ hội âm nhạc FWD Music Fest 2019 với dàn sao cực khủng: Sơn Tùng MTP, Tóc Tiên, Đàm Vĩnh Hưng', 'Sân vận động quốc gia Mỹ Đình, Hà Nội', '2019-11-26', '<p style=\"text-align:center\">Năm nay,&nbsp;lễ hội âm nhạc FWD Music Fest 2019&nbsp;sẽ được tổ chức tại Hà Nội với sự góp mặt của 11 ca sĩ nổi tiếng hàng đầu Việt Nam như: Sơn Tùng M-TP, Tóc Tiên, Đan Trường, Bằng Kiều, Hồ Ngọc Hà, Đàm Vĩnh Hưng,…</p>\r\n\r\n<h3 style=\"text-align:center\">Dàn sao Việt đình đám tại Lễ hội âm nhạc FWD Music Fest 2019</h3>\r\n\r\n<p style=\"text-align:center\">FWD Music Fest&nbsp;là một sự kiện âm nhạc thường niên với quy mô hơn 30.000 khán giả được giới trẻ mong chờ nhiều nhất. Lễ hội được công ty bảo hiểm FWD tổ chức nhằm mang tinh thần thương hiệu và tầm nhìn của Tập đoàn FWD đến gần hơn với khách hàng qua tình yêu và sức lan tỏa âm nhạc.</p>', 'sukienFWD.jpg', '2019-12-09 07:27:26', '2019-12-09 07:28:01'),
(3, 2, 'Hà Nội_KPOP CONCERT 2019: Bi Rain, Mamamoo sẽ đến Việt Nam trong đại nhạc hội Hữu nghị Việt Hàn', 'Sân vận động Quốc Gia Mỹ Đình, Hà Nội', '2019-08-10', '<p style=\"text-align: center;\"><span style=\"color:rgb(44, 47, 52); font-family:open sans; font-size:15px\">Bi Rain – ông hoàng nhạc Kpop và nhóm nhạc nữ đình đám Mamamoo cùng nhiều dàn sao nổi tiếng của Hàn Quốc và Việt Nam sẽ góp mặt vào&nbsp;</span><span style=\"color:rgb(44, 47, 52); font-family:open sans; font-size:15px\">đại nhạc hội Hữu nghị Việt Hàn Kpop Concert 2019</span><span style=\"color:rgb(44, 47, 52); font-family:open sans; font-size:15px\">&nbsp;vào ngày 10/8 tới đây.</span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"color:rgb(44, 47, 52); font-family:open sans; font-size:15px\">Kpop Concert 2019 với tên gọi&nbsp;We* friend concert in Vietnam 2019 (Đại nhạc hội Hữu nghị Việt – Hàn) được tổ chức tại Hà Nội giống như một món quà dành cho các bạn trẻ yêu thích văn hóa âm nhạc của Kpop và Vpop.</span></p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<p style=\"text-align: center;\">Đại nhạc hội Hữu nghị Việt Hàn 2019 quy tụy một loạt dàn sao đình đám đến từ Hàn Quốc và Việt Nam. Đặc biệt, Kpop concert 2019 có sự góp mặt của ông hoàng nhạc Kpop Bi Rain và nhóm nhạc với loạt bài hit đình đám Mamamoo, Pentagon… Dàn sao Việt Nam là loạt các tên tuổi đình đám của showbiz như Noo Phước Thịnh, Tóc Tiên…</p>', 'kpop-concert-2019.jpg', '2019-12-09 07:33:48', '2019-12-09 07:33:48'),
(4, 1, 'Tưng bừng gặp thần tượng K-pop tại Triển lãm Du lịch và Giao lưu Văn hóa Hàn Quốc 2019', 'Phố đi bộ Nguyễn Huệ, Bến Nghé, Quận 1, Hồ Chí Minh', '2019-09-29', '<p style=\"text-align:center\"><span style=\"color:rgb(44, 47, 52); font-family:open sans; font-size:15px\">Triển lãm Du lịch và Giao lưu Văn hóa Hàn Quốc 2019</span><span style=\"color:rgb(44, 47, 52); font-family:open sans; font-size:15px\">&nbsp;là sự kiện thường niên sẽ diễn ra vào cuối tháng 9 này tại Sài Gòn. Đây là sự kiện giao lưu hoành tráng hứa hẹn mang đến cuối tuần thú vị cho những du khách trên Phố Đi Bộ Nguyễn Huệ. Cùng DulichToday cập nhật ngay những thông tin về sự kiện này nhé!</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:rgb(44, 47, 52); font-family:open sans; font-size:15px\">Tiếp nối thành công của sự kiện được tổ chức lần đầu tiên tại Hà Nội năm 2017, Tổng cục Du lịch Hàn Quốc (KTO) tiếp tục tổ chức&nbsp;</span><span style=\"color:rgb(44, 47, 52); font-family:open sans; font-size:15px\">Triển lãm Du lịch và Giao lưu Văn hóa Hàn Quốc 2019 tại TP. HCM vào 2 ngày thứ 7 và chủ nhật tuần cuối cùng của tháng 9</span><span style=\"color:rgb(44, 47, 52); font-family:open sans; font-size:15px\">.</span></p>', 'thong-tin-trien-lam-du-lich-va-giao-luu-van-hoa-han-quoc-2019.jpg', '2019-12-09 07:39:08', '2019-12-09 07:39:19'),
(5, 1, 'Háo hức đại tiệc âm nhạc nước mùa hè SUMMER WATER BEAT hoành tráng nhất tháng 6!', 'Phố đi bộ Nguyễn Huệ, TP. HCM', '2019-06-02', '<p style=\"text-align:center\"><span style=\"color:rgb(44, 47, 52); font-family:open sans; font-size:15px\">Đại tiệc âm nhạc nước mùa hè Summer Water Beat</span><span style=\"color:rgb(44, 47, 52); font-family:open sans; font-size:15px\">&nbsp;sẽ diễn ra vào ngày 2/6/2019 tại Phố đi bộ Nguyễn Huệ, TP. Hồ Chí Minh với sự góp mặt của những ngôi sao hàng đầu trong Vpop. Cùng DulichToday điểm qua những nét nổi bật của sự kiện ăn chơi lớn nhất tháng 6 này, đồng thời đăng ký nhận vé MIỄN PHÍ ngay nhé!</span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Summer Water Beat là đại tiệc âm nhạc nước mùa hè được tài trợ và tổ chức bởi Clear cùng Yeah1. Chương trình đã diễn ra tại Phố đi bộ Hồ Gươm, Hà Nội ngày 25/5 vừa rồi và sẽ tiếp tục đổ bộ vào TP. HCM ngày 2/6 tới.</p>\r\n\r\n<p style=\"text-align:center\">Sự kiện dự kiến thu hút hơn 20.000 người tham gia cùng những màn trình diễn đỉnh cao đến từ dàn nghệ sĩ đẳng cấp, những màn trình diễn ánh sáng ấn tượng cùng đường trượt nước, cuộc chiến súng nước hấp dẫn.</p>', 'summer-water-beat-thang-6-2019-sai-gon-390x220.jpg', '2019-12-09 07:41:49', '2019-12-09 07:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_02_040655_create_permission_tables', 1),
(4, '2019_08_05_020225_create_verify_users_table', 1),
(5, '2019_09_30_035718_add_fk_user_verifyuser_table', 1),
(6, '2019_10_02_025121_create_topics_table', 1),
(7, '2019_10_02_035249_create_song_categories_table', 1),
(8, '2019_10_02_041019_create_songs_table', 1),
(9, '2019_10_02_041935_create_comments_table', 1),
(10, '2019_10_02_045933_create_artist_categories_table', 1),
(11, '2019_10_02_050334_create_album_categories_table', 1),
(12, '2019_10_02_050426_create_albums_table', 1),
(13, '2019_10_02_050452_create_artists_table', 1),
(14, '2019_10_02_072211_create_playlists_table', 1),
(15, '2019_10_02_072900_create_product_categories_table', 1),
(16, '2019_10_02_073236_create_products_table', 1),
(17, '2019_10_02_073718_create_receipts_table', 1),
(18, '2019_10_02_084653_add_fk_topic_song_category', 1),
(19, '2019_10_02_092153_add_fk_artist_category_artist', 1),
(20, '2019_10_02_092940_add_fk_categories_products', 1),
(21, '2019_10_02_093454_add_fk_users_receipts', 1),
(22, '2019_10_02_101724_add_fk_users_playlists', 1),
(23, '2019_11_21_064837_create_blogs_table', 1),
(24, '2019_11_21_082835_create_receipt_detail', 1),
(25, '2019_11_21_083946_create_playlist_song', 1),
(26, '2019_11_21_154721_add_fk_product_receipt_detail', 1),
(27, '2019_11_21_163527_add_fk_playlist_song', 1),
(28, '2019_11_21_163945_add_fk_artist_song', 1),
(29, '2019_11_21_164536_add_fk_comments', 1),
(30, '2019_11_21_165350_add_fk_albums', 1),
(31, '2019_11_22_021714_add_fk_blogs', 1),
(32, '2019_11_23_031641_create_events_table', 1),
(33, '2019_11_23_032422_add_fk_user_event', 1),
(34, '2019_12_02_132143_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 2),
(2, 'App\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administer roles & permissions', 'web', '2019-12-09 03:47:25', '2019-12-09 03:47:25'),
(3, 'Edit Post', 'web', '2019-12-09 03:57:35', '2019-12-09 03:57:35'),
(4, 'Create Post', 'web', '2019-12-09 03:58:36', '2019-12-09 03:58:36'),
(5, 'Delete Post', 'web', '2019-12-09 03:58:45', '2019-12-09 03:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `playlist_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlist_song`
--

CREATE TABLE `playlist_song` (
  `playlist_id` bigint(20) UNSIGNED NOT NULL,
  `song_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `unit`, `picture`, `description`, `name_product`, `price`, `created_at`, `updated_at`) VALUES
(2, 1, '2', 'EXL705NP-400x400.jpg', 'Trống PEARL Export Lacquer EXL705NP là tên tuổi mà mỗi tay trống đều biết đến. Sản phẩm đáp ứng nhu cầu của hàng ngàn nghệ sĩ trống bằng cách đưa chất lượng và giá trị đồng hành với nhau. Export Series giờ đã đươc tích hợp thêm công nghệ Vỏ Cao Cấp S.S.T. Superior Shell, tom-mount Opti-Loc, bộ hardware P830 với pedal P-930, và các lựa chọn trong bốn màu sắc tuyệt đẹp.', 'PEARL Export Lacquer EXL705NP', 13240000, '2019-12-09 09:06:41', '2019-12-09 09:06:41'),
(3, 1, '2', 'RFP924XEPC103_Reference_Pur_103_Piano_Black-400x400.jpg', 'Pearl\'s Reference Pure tự hào được tạo nên dựa trên kế thừa di sản được bắt đầu bởi Series Reference nguyên thủy của Pearl bằng cách sử dụng công thức thành phần vỏ chính xác, cùng số lượng và loại gỗ, và các cạnh mang nhiệm vụ cụ thể được nhắm mục tiêu tương tự để tạo ra lớp vỏ mỏng, độ cộng hưởng cao, nhẹ hơn phiên bản gốc.', 'Pearl Reference Pure RFP924XEP/C', 67940000, '2019-12-09 09:08:43', '2019-12-09 09:08:43'),
(4, 2, '2', 'TS650.jpg', 'Conn TS650 Student Tenor Saxophones được biết đến là một chiếc kèn Saxophone cho sinh viên có âm thanh sâu và âm lượng to. Với chất lượng âm thanh này, chiếc kèn trở thành sự lựa chọn lý tưởng trong âm nhạc jazz và rock. Đây chính là điểm nổi bật của Conn TS650 Student Tenor Saxophones với những người yêu thích nhạc jazz và rock.', 'Selmer TS650', 34200000, '2019-12-09 09:10:29', '2019-12-09 09:10:29'),
(5, 2, '3', 'nuvo-510jbbl-400x400.jpg', 'Các jSAX được thiết kế theo cấu tạo của các sax truyền thống giúp trẻ em dễ dàng phát triển kỹ năng chơi. Nó sở hữu  âm thanh sax êm dịu đáng kinh ngạc', 'N510JBBK', 1860000, '2019-12-09 09:11:56', '2019-12-09 09:11:56'),
(6, 2, '3', 'nuvo-510jbbl-400x400.jpg', 'Các jSAX được thiết kế theo cấu tạo của các sax truyền thống giúp trẻ em dễ dàng phát triển kỹ năng chơi. Nó sở hữu  âm thanh sax êm dịu đáng kinh ngạc', 'N510JBBK', 1860000, '2019-12-09 09:11:56', '2019-12-09 09:11:56'),
(7, 3, '3', 'jackson-js-series-dink-arch-top-js32q.jpg', 'Jackson là thương hiệu hàng đầu với bộ sưu tập những cây đàn guitar acoustic và guitar điện hết sức độc đáo. Đặc biệt những người chơi nhạc Metal sẽ muốn một cây guitar với những chức năng vượt trội hơn mà hầu hết các hãng sản xuất đàn không thể đáp ứng được.', 'Jackson JS Series Dinky™ Arch Top JS32Q', 8900000, '2019-12-10 00:40:47', '2019-12-10 00:40:47'),
(8, 3, '5', 'js-series-kelly-js32-red.jpg', 'Jackson JS Series Kelly™ JS32 thuộc dòng JS của Jackson nổi tiếng với âm thanh dồn dập, ngây ngất và giá cả cực kỳ phải chăng, những chiếc guitar thuộc Jackson JS Series có một bước tiến vượt bậc, làm cho việc chơi những giai điệu cổ điển, phong cách và khả năng trình diễn đa dạng trở nên dễ dàng hơn bao giờ hết.', 'JS Series Kelly™ JS32', 7800000, '2019-12-10 00:41:35', '2019-12-10 00:41:35'),
(9, 4, '1', 'kawai-nd-21-400x400.jpg', 'Đàn piano Kawai ND-21 mang đến chất lượng âm thanh trong, mạnh và một sự ổn định tuyệt đối về kết cấu bề mặt bởi kỹ thuật bộ máy được sản xuất theo tiêu chuẩn của hãng Kawai – Nhật Bản.', 'Kawai ND-21', 88000000, '2019-12-10 00:43:01', '2019-12-10 00:43:01'),
(10, 4, '2', 'k300_2.jpg', 'Đàn piano Kawai K300 là sản phẩm tiêu biểu trong dòng K series của Kawai. Tiếp nối sự thành công của người anh tiền nhiệm là piano Kawai K3, model K3 là cây đàn “Piano Acoustic” đạt danh hiệu cây đàn piano của năm trong suốt 4 năm liền từ 2008 – 2011, do độc giả của tạp chí MMR tại Mỹ bình chọn.', 'Kawai K-300', 179000000, '2019-12-10 00:43:48', '2019-12-10 00:43:48'),
(11, 5, '3', 'dan_organ_Casio_CT-S100_1-400x400.png', 'Với CT-S100, bạn có thể thưởng thức âm nhạc bất cứ khi nào và bất cứ nơi nào bạn muốn. Sở hữu kích thước nhỏ gọn là 930 mm x 256 mm x 73 mm (nhỏ hơn 30% so với các mẫu CT-K1500 và CT-K1550) và có thời lượng pin khoảng 16 giờ.', 'Casio Casiotone CT-S100', 3370000, '2019-12-10 00:44:57', '2019-12-10 00:44:57'),
(12, 5, '6', 'dan_organ_Casio_LK_S250-400x400.jpg', 'Trong tháng 8 năm 2019, tại Summer NAMM show, Casio ra mắt hai dòng sản phẩm Keyboard mới dành cho trẻ em, có sức hút mạnh mẽ với các nhà đầu tư nhạc cụ cũng như người dùng với phân khúc đàn Keyboard phổ thông thuộc dòng Casiotone CT-S series và Casiotone Keyboard LK-S250.', 'Casio Casiotone LK-S250', 5370000, '2019-12-10 00:45:45', '2019-12-10 00:45:45'),
(13, 6, '1', 'vt3.jpg', 'VT-3: Voice Transformer CHUYỂN ĐỔI GIỌNG NÓI DỄ DÀNG VỚI CÁC HIỆU ỨNG VOCODER, LO-FI VÀ HÁT VỚI ÂM THANH SYNTH VT-3', 'ROLAND VT-3', 6920000, '2019-12-10 00:46:41', '2019-12-10 00:46:41'),
(14, 6, '2', 'vp_7.jpg', 'VT-3: Voice Transformer CHUYỂN ĐỔI GIỌNG NÓI DỄ DÀNG VỚI CÁC HIỆU ỨNG VOCODER, LO-FI VÀ HÁT VỚI ÂM THANH SYNTH VT-3', 'Roland VP-7', 1400000, '2019-12-10 00:47:58', '2019-12-10 00:47:58'),
(15, 7, '2', '09 1.jpg', 'Fender ACOUSTASONIC 40 230V EU được thiết kế dành cho guitar điện  và micro. Đó là một giải pháp  đơn giản, linh hoạt cho một loạt các hiệu suất âm nhạc và các ứng dụng âm thanh, và nó cũng có thể được sử dụng như một amp kiểm âm trên sân khấu khi kết hợp với một hệ thống PA.', 'Fender Acoustasonic 40 230V EU', 6650000, '2019-12-10 00:49:12', '2019-12-10 00:49:12'),
(16, 7, '2', 'ktn-50_F_gal-400x400.jpg', 'Boss KATANA là loa tích hợp soundcard thu âm (đúng rồi đó) kết nối USB máy tính, phơ bàn 4 kênh có thể chỉnh & load tiếng từ máy tính, công suất 50W, dùng cho guitar điện/ thùng', 'Boss KTN50', 8230000, '2019-12-10 00:49:55', '2019-12-10 00:49:55'),
(17, 8, '1', 'SOUNDKING-DM20-min-400x400.jpg', 'Soundking DM20 là dòng mixer kỹ thuật số được thiết kế để pha trộn hiệu suất trực tiếp trong thời đại hiện đại. Điều khiển màn hình cảm ứng và kết nối iPad không dây giúp dễ dàng kiểm soát, trong khi đó, các loại faders cơ giới và các lựa chọn cho phép thiết lập chương trình dễ dàng.', 'soundking dm20', 23500000, '2019-12-10 00:51:35', '2019-12-10 00:51:35'),
(18, 8, '1', 'allen-heath-qu-16-400x400.jpg', 'Allen & Heath QU-16 là dòng Mixer Digital gồm 16 kênh Mono Mic/Line, 3 stereo input, với màn hình cảm ứng đáp ứng nhạy, gồm 17 faders động cơ  AnalogiQTM preamps.', 'Allen&Heath QU-16', 48000000, '2019-12-10 00:52:23', '2019-12-10 00:52:23'),
(19, 9, '1', 'btm-1_top_angle_gal-400x400.jpg', 'Nếu là người có đam mê thật sự với guitar nói riêng và yêu thích âm nhạc nói chung, loa Bluetooth BTM-1 của Roland chắc chắn chính là trợ thủ đắc lực bạn cần có. Đó là một hệ thống âm thanh di động chất lượng cao để truyền phát không dây các bài hát yêu thích từ điện thoại thông minh hoặc máy tính bảng của bạn.', 'Roland BTM-1', 5450000, '2019-12-10 00:53:17', '2019-12-10 00:53:17'),
(20, 9, '2', 'Bose-L1-_II-Cylindrical-Radiators-400x400.jpg', 'BOSE L1 - II Cylindrical Radiators', 'BOSE L1 - II Cylindrical Radiators', 24000000, '2019-12-10 00:53:52', '2019-12-10 00:53:52'),
(21, 10, '3', 'L1400.jpg', 'Amplifier L-Series cung cấp hiệu suất âm thanh cao và mạnh mẽ cho các buổi trình diễn âm thanh chuyên nghiệp.', 'Inter-M L-2400', 5600000, '2019-12-10 00:55:41', '2019-12-10 00:55:41'),
(22, 10, '2', 'L1400.jpg', 'Amplifier L-Series cung cấp hiệu suất âm thanh cao và mạnh mẽ cho các buổi trình diễn âm thanh chuyên nghiệp.', 'Inter-M L-3000', 7800000, '2019-12-10 00:56:41', '2019-12-10 00:56:41'),
(23, 11, '2', 'st 100 MB.jpg', 'Làm từ chất liệu Alumium, ST-100MB siêu dễ để vận chuyển, là phụ kiện tuyệt vời cho các dòng micro DR của Roland hoặc R-09 của Edirol, không cần phải gắn phức tạp.', 'Roland ST-100MB', 180000, '2019-12-10 01:02:50', '2019-12-10 01:02:50'),
(24, 11, '2', 'cordial-cyb-24-4-c-400x400.jpg', 'Hộp cáp line CORDIAL CYB 24-4 C dài 30m có tính năng bảo vệ xoắn hiệu quả và sẽ được tích hợp trong một stagebox hình thang với Hộp Stagebox, connectors và dây cáp được làm từ các nhãn hiệu NEUTRIK và REAN', 'CORDIAL CYB 24-4 C', 19842000, '2019-12-10 01:04:05', '2019-12-10 01:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_name`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'Trống', 'j0427700000100000500x5001_1499846894.jpg', '2019-12-08 06:57:36', '2019-12-08 06:57:36'),
(2, 'Kèn', 'fwp1432007798.jpg', '2019-12-09 08:40:56', '2019-12-09 08:40:56'),
(3, 'Guitar', 'Đàn-Guitar-Acoustic-Taylor-Academy-A10.jpg', '2019-12-09 08:41:06', '2019-12-09 08:41:06'),
(4, 'Piano', 'piano.png', '2019-12-09 08:43:21', '2019-12-09 08:43:21'),
(5, 'Organ - KeyBoard', 'images.jpg', '2019-12-09 08:48:50', '2019-12-09 08:48:50'),
(6, 'Vocals', 'vt3.jpg', '2019-12-09 08:51:43', '2019-12-09 08:51:43'),
(7, 'AMPLIFIERS', '09 1.jpg', '2019-12-09 08:52:21', '2019-12-09 08:52:21'),
(8, 'Mixer', 'SOUNDKING-DM20-min-450x471.jpg', '2019-12-09 08:53:00', '2019-12-09 08:53:00'),
(9, 'Loa', 'btm-1_top_angle_gal-450x471.jpg', '2019-12-09 08:53:42', '2019-12-09 08:53:42'),
(10, 'Amply', 'amply-jarguar-203S-1.jpg', '2019-12-09 08:54:41', '2019-12-09 08:59:07'),
(11, 'Phụ Kiện Âm Thanh', 'cse-nn-7-d-v03-400x400.jpg', '2019-12-09 09:00:36', '2019-12-10 01:00:21'),
(12, 'MICROPHONE', 'sennheiser-ew-100-g4-845-s-400x400.jpg', '2019-12-10 01:05:47', '2019-12-10 01:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_buy` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipt_detail`
--

CREATE TABLE `receipt_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receipt_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2019-12-09 03:47:52', '2019-12-09 03:47:52'),
(2, 'User', 'web', '2019-12-09 03:59:01', '2019-12-09 03:59:01'),
(3, 'Owner', 'web', '2019-12-09 03:59:13', '2019-12-09 03:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(3, 1),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `song_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) UNSIGNED DEFAULT NULL,
  `song_lyric` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `composer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `song_name`, `picture`, `artist_id`, `category_id`, `album_id`, `song_lyric`, `composer`, `url`, `mv`, `created_at`, `updated_at`) VALUES
(2, 'Vì Yêu Cứ Đâm Đầu', 'viyeucudamdau.jpg', 6, 2, 10, 'Qua nỗi sầu đêm nay\r\nTrăng gối đầu lên mây\r\nThêm chút rượu và men\r\nCuốn muộn phiền đi\r\nĐể tình thêm say\r\nĐôi mắt buồn sâu cay\r\nChan chứa tình lâu nay\r\nOh boy\r\n\r\nKhông biết ở nơi đâu\r\nKhông biết được bao lâu\r\nChỉ muốn cùng anh\r\nĐi đến tận cùng\r\nNơi đất trời thâm sâu\r\nOoh ooh ooh\r\nVì yêu cứ đâm đầu\r\nCứ đâm đầu\r\n\r\nNgay lúc nhìn, ngay lúc nhìn\r\nNgay lúc nhìn, ngay lúc nhìn anh đôi phút\r\nTim đã vội, tim đã vội, tim đã vội\r\nTim đã vội hơn đôi chút\r\nSorry em chẳng biết làm sao\r\nĐể thì giờ trôi phí là bao\r\nOh uh oh, oh oh \r\nEm muốn được trói chặt\r\nTrong vòng tay của anh\r\nEm muốn được nghe\r\nTừng hơi thở đang bủa quanh\r\nXin hãy đừng, hãy đừng\r\nHãy đừng, hãy đừng để em đợi\r\n\r\nChạm lên bờ môi của em đỏ âu\r\nTrò chuyện thật nhiều để cho rõ nhau\r\nChúng ta hoang dại như là cỏ lau\r\nBỏ tiền bỏ bạc chứ không bỏ nhau\r\nAnh sẽ nói cho em nghe\r\nNhững điều mà anh ấp ủ\r\nAnh hy vọng lời ca này\r\nVỗ về em trong giấc ngủ\r\nAnh cũng muốn em biết\r\nAnh vốn không phải là thiếu gia\r\nNhững ngày em về trong đời\r\nAnh nhất định trải chiếu hoa\r\nQua nỗi sầu đêm nay\r\nTrăng gối đầu lên mây\r\nThêm chút rượu và men\r\nCuốn muộn phiền đi\r\nĐể tình thêm say\r\nĐôi mắt buồn sâu cay\r\nChan chứa tình lâu nay\r\nOh boy\r\n\r\nKhông biết ở nơi đâu\r\nKhông biết được bao lâu\r\nChỉ muốn cùng anh\r\nĐi đến tận cùng\r\nNơi đất trời thâm sâu\r\nOoh ooh ooh\r\nVì yêu cứ đâm đầu\r\nCứ đâm đầu\r\n\r\nOh cứ lãng đãng trôi\r\nNhư làn mây trắng\r\nChẳng cần lo nghĩ nhiều\r\nChỉ cần em biết điều\r\nVà khi trăng lên cao\r\nEm sẽ là ngọn gió cuốn anh feel\r\nCầm chặt tay và nâng ly cùng em nhé\r\nCho đêm này thêm hé\r\nChơi vơi trong vòng tay anh \r\nHãy đặt tên em là em bé\r\nOh oh, vì đường về còn xa lắm\r\nEm ơi thấy không mưa còn rơi\r\nQua đêm nay rồi anh sẽ đưa em về\r\nAnh ơi, em hơi\r\nSay say, ai sẽ đưa em về?\r\nỐi giời\r\nEm ơi, không may, đêm nay\r\nChưa muốn đưa em về\r\nDon’t be lonely tonight\r\nBaby I’m so high on you\r\nQua nỗi sầu đêm nay\r\nTrăng gối đầu lên mây\r\nThêm chút rượu và men\r\nCuốn muộn phiền đi\r\nĐể tình thêm say\r\nĐôi mắt buồn sâu cay\r\nChan chứa tình lâu nay\r\nOh boy\r\n\r\nKhông biết ở nơi đâu\r\nKhông biết được bao lâu\r\nChỉ muốn cùng anh\r\nĐi đến tận cùng\r\nNơi đất trời thâm sâu\r\nOoh ooh ooh\r\nVì yêu cứ đâm đầu\r\nCứ đâm đầu', 'Nguyen Hoàng Tôn, Đen Vâu, Justatee', 'Vi-Yeu-Cu-Dam-Dau-MIN-Den-JustaTee.mp3', NULL, '2019-12-09 20:35:16', '2019-12-09 20:35:16'),
(3, 'Có Em Chờ', 'coemcho.jpg', 6, 2, 11, 'Verse 1\r\nTừ lần đầu tiên ta đi bên nhau em đã biết tim mình đánh rơi rồi\r\nTừ lần đầu tiên môi hôn trao nhau em đã biết không thể yêu thêm ai\r\nCách anh cười cong môi\r\nCách anh lặng lẽ ngồi\r\nNgồi nhìn bóng tối lặng thầm thời gian trôi\r\nNgười đàn ông em yêu đôi khi có những phút giây yếu đuối không ngờ\r\nNgoài kia nếu có khó khăn quá, về nhà anh nhé, có em chờ\r\nCó môi mềm thơm thơm\r\nCó dư vị mỗi bữa cơm\r\nXuân hạ thu đông đều có em chờ\r\n\r\nRAP 1:\r\nYooo\r\nCó định mệnh nào bao nhiêu lâu anh đã ao ước (Min bè: ao ước)\r\nCó vần thơ nào bao nhiêu đêm anh đi tìm hoài (Min bè: tìm hoài để thấy)\r\nVà nếu khoảng cách là một nghìn (1000) bước\r\nThì em chỉ cần bước một bước\r\nAnh sẽ bước 999 bước còn lại\r\nBước về phía em (Min bè: bước về phía anh)\r\nNơi mà anh thấy nắng mai (Min bè: nơi mà em thấy nắng mai)\r\nNơi con tim anh biết yên bình và mong thế thôi\r\n\r\nCHORUS 1\r\nTình yêu là những ánh sáng lấp lánh\r\nĐèn vàng thắp lên bên ô cửa nhỏ\r\nTình yêu là những dịu êm từng đêm\r\nMình cùng ăn tối và nghe mưa rơi\r\nBiết sẽ có những lúc\r\nTrái tim đau đớn khôn nguôi\r\nVẫn yêu và yêu và yêu thế thôi\r\n\r\n\r\nRAP:\r\nVà lần đầu tiên con tim như rụng rời\r\nLần đầu tiên anh không nói nên lời\r\nGIấc mơ nào có đâu xa\r\nTình yêu nơi đó có hai ta\r\nNơi tóc em quá mượt mà\r\nCon phố xưa đón đưa và\r\nEm sẽ yêu mãi anh tháng năm dài\r\nBao nhiêu tháng ngày tăm tối\r\nKhi mà có em ghé qua\r\nNỗi buồn cũng phải buông trôi\r\nKhi giờ ta có em và\r\nXin em đừng giận anh nhé\r\nBởi vì đôi khi anh là ahhhhhhh\r\n\r\nVERSE 2\r\nNgười đàn ông em yêu đôi khi có những phút giây yếu đuối không ngờ\r\nNgoài kia nếu có khó khăn quá, về nhà anh nhé, có em chờ\r\nCó môi mềm thơm thơm\r\nCó dư vị mỗi bữa cơm\r\nXuân hạ thu đông đều có em chờ\r\n\r\nCHORUS 2\r\nTình yêu là những ánh sáng lấp lánh\r\nĐèn vàng thắp lên bên ô cửa nhỏ\r\nTình yêu là những dịu êm từng đêm\r\nMình cùng ăn tối và nghe mưa rơi\r\nBiết sẽ có những lúc\r\nTrái tim đau đớn khôn nguôi\r\nVẫn yêu và yêu và yêu thế thôi\r\n\r\nBRIDGE\r\nWhat is love\r\nCan you feel it\r\nWhat is love\r\nCan you feel it, oh , oh , oh , oh\r\nWhat is love\r\nJust tell me baby\r\nWhat is love\r\nJust tell me baby\r\n\r\nCHORUS 3\r\n\r\nTình yêu là những ánh sáng lấp lánh\r\nĐèn vàng thắp lên bên ô cửa nhỏ\r\nTình yêu là những dịu êm từng đêm\r\nMình cùng ăn tối và nghe mưa rơi\r\nBiết sẽ có những lúc\r\nTrái tim đau đớn khôn nguôi\r\nVẫn yêu và yêu và yêu thế thôi', 'Kai Đinh', 'Co-Em-Cho-MIN-Mr-A.mp3', NULL, '2019-12-09 20:37:49', '2019-12-09 20:37:49'),
(4, 'Hồng Nhan', 'hongnhan.jpg', 2, 3, 2, 'Mel :\r\nVà dòng thư tay em gửi trao anh ngày nào\r\nGiờ còn lại hư vô em gửi anh đây lời chào\r\nMà nhìn người đi vội...Mình làm gì nên tội\r\nTại sao lại cách xa...Còn yêu như thế mà\r\nĐể lệ hoen mi khi mùa xuân đang thầm thì\r\nNhìn người mà ra đi anh chẳng níu kéo điều gì\r\nMà nghe sao đáng thương...Nhìn nhau như cố hương\r\nTìm em ở bốn phương...Vì say nên vấn vương\r\nEm ơi vô tình dù tình mình gặp không may\r\nEm xa nơi này để giọt lệ ở bên đây\r\nBầu trời giờ hắt hiu nhìn về nơi đó đây\r\nNgoài trời thì có mây...Chỉ còn lại là đắng cay\r\nThương cha thương mẹ để đành lòng mà quay lưng\r\n25 âm lịch nhìn người cười mà rưng rưng\r\nBên kia là pháo hoa...Rộn ràng người đến xem\r\nHọ hàng mừng kết duyên...Còn phần mình là hết duyên\r\nRap 1 :\r\nOhh...\r\nAnh như kẻ lạc còn tâm tối giữa rừng thông\r\nNơi cánh chim nhỏ lạc đàn tìm bến đỗ để ngừng trông\r\nAnh là 1 con đom đóm mắt anh sáng đến xoay vòng\r\nGieo cho anh cả 1 mầm sống nhưng chẳng chịu công vun trồng\r\nVì lúc ấy ta còn trẻ nên đời bạc và mưu sinh\r\nAnh chưa học hết lớp 10 người ta gọi là lưu linh\r\nAnh gắn bó với sông nước và cảnh vật này hữu tình\r\nCòn người ta cho em áo lụa hỏi tại sao chẳng phụ mình\r\nMel :\r\nTình yêu ơi bình yên ơi\r\nVề đây đi để anh ôm để gió cuốn đêm nay ai đưa về nhà\r\nĐể gió vang lên câu tình ca\r\nĐể lệ hoen mi khi mùa xuân đang thầm thì\r\nNhìn người mà ra đi anh chẳng níu kéo điều gì\r\nMà nghe sao đáng thương...Nhìn nhau như cố hương\r\nTìm em ở bốn phương...Vì say nên vấn vương\r\nHết rồi cuối cùng nắng thì cũng đã ngã vàng\r\nBên người nhân tình em phải thương bản thân mình\r\nRap 2 :\r\nBuồn lắm phải không...Giã tràng lấp biển Đông\r\nBiết người cũng chả trông nên thôi câu chuyện thả ra sông\r\nNhưng nếu anh say như thế này thì ai xem\r\nNgười ta sẽ nói anh tệ với những thứ mà em đem\r\nVì thế nên anh phải sống như cái cách anh từng mơ\r\nDù cho bản thân này hóa đá nhưng trái tim chẳng ngừng thở\r\nVà ba của anh là lính...Má anh từng làm cán bộ\r\nAnh không cho phép mình khóc...Xe có hư cũng ráng độ\r\nĐời người là kiếp lãng du, anh chẳng may làm lữ khách\r\nĐi với nhau cả 1 hành trình giờ có xa chẳng nỡ trách\r\nEm ước là đời của em bình yên\r\nChẳng buồn phiền như người ta\r\nMà giờ ra đây mà xem có người đang lên kiệu hoa\r\nVà rồi sẽ tốt nhưng mà ở nơi khác chẳng còn bận lòng như ở đây\r\nTình yêu của anh thì có đủ mùi vị nhưng mà chẳng ngọt như ở tây\r\nMel :\r\nNà na na na (xN)\r\nĐể lệ hoen mi khi mùa xuân đang thầm thì\r\nNhìn người mà ra đi anh chẳng níu kéo điều gì\r\nMà nghe sao đáng thương...Nhìn nhau như cố hương\r\nTìm em ở bốn phương...Vì say nên vấn vương.....﻿', 'Jack', 'Hong-Nhan-Jack.mp3', NULL, '2019-12-09 20:39:47', '2019-12-09 20:39:47'),
(5, 'Bạc Phận', 'bacphan.jpg', 2, 3, 2, 'Ai gieo tình này, ai mang tình này, để lệ trên khóe mi cay \r\nAi đưa về nhà, ai cho ngọc ngà, giờ người xa cách ta\r\nTừng là một thời thiếu nữ trong vùng quê nghèo\r\nHồn nhiên cài hoa mái đầu\r\nDòng người vội vàng em hóa thân đời bẽ bàng\r\nRời xa tình anh năm tháng …\r\n\r\nĐk :\r\nÔi phút giây tương phùng anh nhớ và mong\r\nDòng lưu bút năm xưa in dấu mãi đậm sâu\r\nTrong nỗi đau anh mệt nhoài\r\nTrong phút giây anh tìm hoài\r\nMuốn giữ em ở lại một lần này vì anh mãi thương\r\nXa cách nhau thật rồi sương trắng chiều thu\r\nNgày em bước ra đi nước mắt ấy biệt li\r\nHoa vẫn rơi bên thềm nhà\r\nLá xát xơ đi nhiều và\r\nAnh chúc em yên bình mối tình mình hẹn em kiếp sau …\r\n\r\nThoáng thoáng, ngày miêng mang, giờ con nước dài thênh thang\r\nKhông trách, người không thương, mà hương tóc còn vương vương\r\n\r\nRap:\r\nGửi tặng em màu son cỏ dại\r\nChút bình yên trên môi bỏ lại\r\nNước mắt nào thấm đẩm cả hai vai\r\nMắt phượng mày ngài người phải tìm đến thiên thai\r\nÀ ơi câu hát em không cần những lời khuyên \r\nEm buông thả mình và chẳng màng đến tình duyên \r\nĐời em phiêu bạc đau đớn lắm lúc cũng vì tiền \r\nThương thân em khổ để một lần cùng chí tuyến …\r\n\r\n\r\nGiờ em ở nơi khuê phòng\r\nNgày mai nữa em theo chồng\r\nVà tô má em thêm hồng ôi đớn đau lòng ôi đớn đau lòng\r\nBình minh dẫn em đi rồi \r\nVòng xoay bánh xe luân hồi \r\nHoàng hôn khuất sau lưng đồi ôi vỡ tan rồi ôi vỡ tan rồi!\r\n\r\nMột ngày buồn mây tím, em về thôn làng … \r\nMẹ cha của em vỡ òa …\r\nGiọt lệ chạnh lòng em khóc, thương người sang đò\r\nHồng nhan bạc phận – sóng gió! \r\n\r\nĐk :\r\nÔi phút giây tương phùng anh nhớ và mong\r\nDòng lưu bút năm xưa in dấu mãi đậm sâu\r\nTrong nỗi đau anh mệt nhoài\r\nTrong phút giây anh tìm hoài\r\nMuốn giữ em ở lại một lần này vì anh mãi thương\r\nXa cách nhau thật rồi sương trắng chiều thu\r\nNgày em bước ra đi nước mắt ấy biệt li\r\nHoa vẫn rơi bên thềm nhà\r\nLá xát xơ đi nhiều và\r\nAnh chúc em yên bình mối tình mình hẹn em kiếp sau …', 'Jack', 'Bac-Phan-Jack-K-ICM.mp3', NULL, '2019-12-09 20:41:02', '2019-12-09 20:41:02'),
(6, 'Sóng Gió', 'songgio.jpg', 2, 2, 3, 'Hồng trần trên đôi cánh tay\r\nHọa đời em trong phút giây\r\nTừ ngày thơ ấy còn ngủ mơ\r\nĐến khi em thờ ơ ờ\r\nLòng người anh đâu có hay\r\nMột ngày khi vỗ cánh bay\r\nTừ người yêu hóa thành người dưng\r\nĐến khi ta tự xưng à\r\nThương em bờ vai nhỏ nhoi\r\nĐôi mắt hóa mây đêm\r\nThương sao mùi dạ lý hương\r\nVương vấn mãi bên thềm\r\nĐời phiêu du cố tìm một người thật lòng\r\nDẫu trời mênh mong anh nhớ em\r\n\r\nChim kia về vẫn có đôi\r\nSao chẳng số phu thê\r\nEm ơi đừng xa cách tôi\r\nTrăng cố níu em về\r\nBình yên trên mái nhà\r\nNhìn đời ngược dòng\r\nEm còn bên anh có phải không?\r\nTrời ban ánh sáng, năm tháng tư bề\r\nDáng ai về chung lối\r\nNgười mang tia nắng\r\nNhưng cớ sao còn tăm tối\r\nMột mai em lỡ vấp ngã trên đời thay đổi\r\nNhìn về anh, người chẳng khiến em lẻ loi\r\n\r\nOh! Nếu em có về\r\nAnh sẽ mang hết những suy tư\r\nMang hết hành trang\r\nNhững ngày sống khổ\r\nĐể cho gió biển di cư\r\nAnh thà lênh đênh không có ngày về\r\nHóa kiếp thân trai như Thủy Hử\r\nChẳng đành để em từ một cô bé\r\nSóng gió vây quanh thành quỷ dữ\r\nTa tự đẩy mình hay tự ta trói\r\nBây giờ có khác gì đâu\r\nTa chả bận lòng hay chẳng thể nói\r\nTụi mình có khác gì nhau\r\nYêu sao cánh điệp phủ mờ nét bút\r\nDẫu người chẳng hẹn đến về sau\r\nPhố thị đèn màu ta chỉ cần chung lối\r\nĐể rồi sống chết cũng vì nhau\r\nNhặt một nhành hoa rơi\r\nĐoạn đường về nhà thật buồn em ơi\r\nDòng người vội vàng giờ này\r\nTình ơi tình ơi tình ơi em ở đâu rồi\r\nLặng nhìn bờ vai xưa\r\nTựa đầu mình hỏi rằng khổ chưa\r\nĐành lòng chặn đường giờ\r\nĐừng đi đừng đi đừng đi vì câu hứa\r\nTrời ban ánh sáng năm tháng tư bề\r\nDáng ai về chung lối\r\nNgười mang tia nắng\r\nNhưng cớ sao còn tăm tối\r\nMột mai em lỡ vấp ngã trên đời thay đổi\r\nNhìn về anh, người chẳng khiến em lẻ loi\r\nNgày buồn giờ áo ai khâu vá quàng rồi\r\nLặng nhìn dòng nước con sông phút bồi hồi\r\nMột lần này hỡi em ơi ở lại đi\r\nVạn trùng cơn đau\r\nNgoài kia chỉ là bão tố\r\nTrời ban ánh sáng năm tháng tư bề\r\nDáng ai về chung lối\r\nNgười mang tia nắng\r\nNhưng cớ sao còn tăm tối\r\nMột mai em lỡ vấp ngã trên đời thay đổi\r\nNhìn về anh, người chẳng khiến em lẻ loi\r\nNgười thì vẫn đây\r\nNgười thì cách vạn dậm ngàn mây\r\nKhông say không về\r\nRượu nào mà chả đắng\r\nĐoạn đường dài giờ này quạnh vắng\r\nAi buông câu thề\r\nChỉ còn lại nỗi nhớ\r\nNgày nào chuyện tình mình vụn vỡ\r\nTơ duyên lỡ làng\r\nLùi lại về đằng xa\r\nCuộc đời mình chẳng bằng người ta\r\nTiếng lòng thở than', 'Jack', 'Song-Gio-Jack-K-ICM.mp3', NULL, '2019-12-09 20:42:24', '2019-12-09 20:42:24'),
(7, 'Em Gì Ơi', 'emgioi.jpg', 2, 4, 3, 'Đừng khóc như thế\r\nXin đừng khóc như thế\r\nBao nhiêu niềm đau chôn dấu\r\nMong ngày sẽ trôi mau\r\nĐời phong ba, độc thân bước chân Sơn Hà\r\n\r\nBuổi sáng hôm ấy\r\nKhi còn trắng sương bay\r\nTa như là gió phiêu lãng\r\nMang hành lý thương nhớ\r\nChẳng sao đâu, sầu bi có khi còn lâu\r\nLạc mình trong cánh buồm phiêu du\r\nChiếc thuyền đong đưa\r\nNhững ngày xa xưa\r\nBé nhỏ hay thưa Mẹ thưa Cha\r\nRằng con đi học mới về\r\nGiờ tung bay, khúc nhạc mê say\r\nNỗi lòng tha hương, vướng đường tương lai\r\nƯớc rằng ngày mai nắng lên\r\nNgày mai nắng lên ta sẽ quên\r\nNày này này là em gì ơi\r\nEm gì ơi, em gì ơi!\r\nỞ lại và yêu được không \r\nYêu được không, yêu được không\r\nThật lòng này ta chỉ mong ta chỉ mong \r\nBên dòng sông, người có nhớ có trông ai...\r\nViệc gì phải ôm buồn đau \r\nRiêng mình ta riêng mình ta\r\nNụ cười nở muôn ngàn hoa \r\nMuôn ngàn hoa, muôn ngàn hoa\r\nCuộc đời này thật là vui biết bao\r\nTrời cao núi xanh mây ngàn sao\r\nKhi bánh xe còn lăn bánh\r\nKhi bánh xe còn lăn bánh\r\nTa xoay vòng với cuộc sống hối hả \r\nQuên đi mộng ước thanh xuân đã trôi qua\r\nTa ngại va chạm khi nhiều lần dối trá\r\nNhững lần áp lực bởi công việc muốn đi xa\r\nVứt hết một lần trước khi nhìn đời thoái hóa \r\nTự do tự tại như chim trời và thi ca\r\nBước qua nà\r\nĐời nhiều lúc cảm thấy rất nhiều trò\r\nThôi ta giang tay ôm lấy cả bầu trời!\r\nHỡi bạn thân ơi! Lá mù u rơi\r\nKhát vọng ra khơi, chúng mình đi chơi\r\nBước thật hiên ngang, lối về thênh thang\r\nChẳng cần cao sang, nỗi lòng sang trang và từ nay\r\nLạc mình trong cánh buồm phiêu du\r\nChiếc thuyền đong đưa\r\nNhững ngày xa xưa\r\nBé nhỏ hay thưa Mẹ thưa Cha\r\nRằng con đi học mới về\r\nGiờ tung bay, khúc nhạc mê say\r\nNỗi lòng tha hương, vướng đường tương lai\r\nƯớc rằng ngày mai nắng lên\r\nNgày mai nắng lên ta sẽ quên\r\nNày này này là em gì ơi\r\nEm gì ơi, em gì ơi!\r\nỞ lại và yêu được không \r\nYêu được không, yêu được không\r\nThật lòng này ta chỉ mong ta chỉ mong \r\nBên dòng sông, người có nhớ có trông ai...\r\nViệc gì phải ôm buồn đau \r\nRiêng mình ta riêng mình ta\r\nNụ cười nở muôn ngàn hoa \r\nMuôn ngàn hoa, muôn ngàn hoa\r\nCuộc đời này thật là vui biết bao\r\nTrời cao núi xanh mây ngàn sao\r\nNày này này là em gì ơi\r\nEm gì ơi, em gì ơi!\r\nỞ lại và yêu được không \r\nYêu được không, yêu được không\r\nThật lòng này ta chỉ mong ta chỉ mong \r\nBên dòng sông, người có nhớ có trông ai...\r\nViệc gì phải ôm buồn đau \r\nRiêng mình ta riêng mình ta\r\nNụ cười nở muôn ngàn hoa \r\nMuôn ngàn hoa, muôn ngàn hoa\r\nCuộc đời này thật là vui biết bao\r\nTrời cao núi xanh mây ngàn sao', 'Jack', 'Em-Gi-Oi-Jack-K-ICM.mp3', NULL, '2019-12-09 20:44:22', '2019-12-09 20:44:22'),
(8, 'Hết Thương Cạn Nhớ', 'hetthuongcannho.jpg', 3, 4, 4, 'Em à anh đã biết \r\nLà tình yêu này chẳng cần thiết \r\nEm cần nơi bình yên \r\nChứ không phải anh kế bên\r\n\r\nEm đừng giữ lại anh \r\nKhi trái tim vụn vỡ chưa lành \r\nĐiều ban nãy anh vừa thấy là gì đây?!\r\n\r\nEm đã vừa ghì hôn ai cận kề bên tai tựa đầu lên vai\r\nThấy em đang đắm say chắc em chẳng hay đôi mình chưa chia tay\r\nĐôi khi tình yêu sẽ hóa nhạt nhòa khi vô tình một trong hai \r\nCuốn lấy sai trái đến khi vỡ lỡ cả hai hủy hoại tương lai \r\n\r\nChẳng cần một ai nữa , bất kể ai cũng dư thừa \r\nMột mình đứng khóc giữa mưa , nén cơn đau vào từng hơi thở \r\nMột người mình chẳng ngưng nhớ \r\nNhưng lại quay bước giả vờ \r\nBảo rằng mình cũng như em ... hết thương cạn nhớ \r\n\r\nSự thật là chỉ mỗi em ... hết thương cạn nhớ!\r\n\r\nVì lỡ thấy em với người ta\r\nSao mà lại dễ quên em à ... với tất cả gì đang xảy ra \r\nChỉ là còn nhân duyên ... nên lòng vẫn quyến luyến ...\r\nMai chia cắt ... muốn cũng chẳng thấy mặt ... \r\n\r\nSự thật là chỉ một người giữ một người buông ...', 'Vương Anh Tú', 'Het-Thuong-Can-Nho-Duc-Phuc.mp3', NULL, '2019-12-09 20:46:03', '2019-12-09 20:46:03'),
(9, 'Ánh Nắng Của Anh', 'anhnangcuaanh.jpg', 3, 5, 5, 'Từ bao lâu nay, anh cứ mãi cô đơn bơ vơ bao lâu rồi... ai đâu hay\r\nNgày cứ thế trôi qua miên man riêng anh một mình nơi đây \r\nNhững phút giây trôi qua tầm tay .\r\nChờ một ai đó đến bên anh, lặng nghe những tâm tư này...\r\n \r\nLà tia nắng ấm, là em đến bên anh cho vơi đi ưu phiền ...ngày hôm qua. \r\nNhẹ nhàng xoá đi bao mây đen vây quanh cuộc... đời nơi anh. \r\nPhút giây anh mong đến tình yêu ấy\r\nGiờ đây là em, người anh mơ ước bao đêm.\r\n \r\nSẽ luôn thật gần bên em\r\nSẽ luôn là vòng tay ấm êm\r\nSẽ luôn là người yêu em, cùng em đi đến chân trời\r\nLắng nghe từng nhịp tim anh\r\nLắng nghe từng lời anh muốn nói\r\nVì em luôn đẹp nhất khi em cười\r\nVì em luôn là tia nắng trong anh không xa rời\r\n \r\nBình minh dẫn lối\r\nNgày sau có em luôn bên anh trên con đường ta chung đôi .\r\nNiềm hạnh phúc như trong cơn mơ, chưa bao giờ..anh nghĩ tới\r\nPhút giây ta trao nhau tình yêu ấy...\r\nGiờ đây là em ...người anh sẽ mãi không quên\r\n \r\nSẽ luôn thật gần bên em\r\nSẽ luôn là vòng tay ấm êm\r\nSẽ luôn là người yêu em, cùng em đi đến chân trời\r\nLắng nghe từng nhịp tim anh\r\nLắng nghe từng lời anh muốn nói\r\nVì em luôn đẹp nhất khi em cười\r\nVì em luôn là tia nắng trong anh không xa rời.', 'Khắc Hưng', 'Anh-Nang-Cua-Anh-Cho-Em-Den-Ngay-Mai-OST-Duc-Phuc (1).mp3', NULL, '2019-12-09 20:50:29', '2019-12-09 20:50:29'),
(10, 'Ta Còn Yêu Nhau', 'taconyeunhau.jpg', 3, 4, 5, 'Góc phố này\r\nLá vẫn bay\r\nRiêng minh anh ngồi đây\r\n\r\nNgoài kia bao nhiêu kỉ niệm\r\nHai chúng minh\r\nChờ nắng sớm khi bình minh\r\n\r\nCó biết không\r\nGiữa đám đông\r\nChợt có lúc anh yếu lòng\r\n\r\nTừng ngày trôi qua sao quá dài\r\nCon tim anh mệt nhoài\r\nTự hỏi, giờ em nơi đâu??\r\n\r\nChorus\r\n\r\nNgười yêu anh thấy những lúc em ở đây\r\nMùa đông như ấm hơn khi tay đan bàn tay\r\nKề môi em khẽ thì thầm\r\nRằng anh yêu em rất chân thành\r\n\r\nHàng cây sao vẫn mãi đứng đó trước gió\r\nVà hình như anh vẫn đang nơi đây chờ em\r\nLàm sao để nhắn một lời:\r\n‘’Em hãy quay về bên anh’’\r\n\r\nCoda:\r\nNgười ơi xin hãy thật lòng\r\nHãy nói, TA CÒN YÊU NHAU.', 'Nguyễn Công Thành', 'Ta-Con-Yeu-Nhau-Duc-Phuc.mp3', NULL, '2019-12-09 20:51:53', '2019-12-09 20:51:53'),
(11, 'Hãy Đợi Đấy', 'haydoiday.jpg', 4, 3, 6, 'Ra đường đi chơi phong cách em chẳng hề kém cạnh ai. \r\nLên xuống xe hơi bộ dạng sang chảnh đôi chân dài 1m2.\r\nMắt anh đảo qua đảo lại, babe babe i can\'t stop .\r\nCác chàng trai xếp hàng dài, babe babe u\'re so hot.\r\nTừ ánh mắt tới làn da từ vóc dáng khiến người ta phải so sánh em thật là \r\nThật xinh đẹp giống loài hoa mặc kệ nắng hay là mưa vẫn mọc lên giữa rừng thưa và anh chắc một điều là anh sẽ hết lòng được chưa.\r\nBa phút cho anh làm quen, ba phút ba phút ba phút chứng minh\r\nBa phút cho anh gần em, ba phút ba phút ba phút lên đỉnh !\r\nNu nu nu nu nupakachi nu nu nu nu Nupakachi !\r\n\r\nMột lần được có em anh sẽ đổi thay hết, không còn lăng nhăng hay dối lừa sẽ mãi yêu mình em.\r\nMột lần được có em anh sẽ đổi thay hết, không còn trăng hoa hay la cà sẽ mãi yêu mình em.\r\n\r\nYêu và anh sẽ yêu mãi yêu một mình em không còn linh tinh luôn chung tình chỉ có em mà thôi.\r\nYêu và anh sẽ yêu mãi yêu chỉ mỗi em không còn rong chơi hay chán đời chỉ có em mà thôi.\r\n\r\nLá là la là la là la la là \r\nCho anh một cơ hội đi Nupakachi !\r\nLá là la là la là la la là \r\nCho anh một cơ hội đi Nupakachi !\r\nNu nu nupaka nupakachi, nu nu nupaka nupakachi, nu nu nupaka nupakachi, nu nu nupaka nupakachi.\r\nNu nu nu nu nupakachi nu nu nu nu Nupakachi !\r\n\r\nNu nu nu nu nupakachi nu nu nu nu Nupakachi !\r\nMột lần được có em anh sẽ đổi thay hết, không còn lăng nhăng hay dối lừa sẽ mãi yêu mình em.\r\nMột lần được có em anh sẽ đổi thay hết, không còn trăng hoa hay la cà sẽ mãi yêu mình em.\r\n\r\n\r\nYêu và anh sẽ yêu mãi yêu một mình em không còn linh tinh luôn chung tình chỉ có em mà thôi.\r\nYêu và anh sẽ yêu mãi yêu chỉ mỗi em không còn rong chơi hay chán đời chỉ có em mà thôi.\r\n\r\nLá là la là la là la la là \r\nCho anh một cơ hội đi Nupakachi !\r\nLá là la là la là la la là \r\nCho anh một cơ hội đi Nupakachi !\r\nNu nu nupaka nupakachi, nu nu nupaka nupakachi, nu nu nupaka nupakachi, nu nu nupaka nupakachi.\r\nNu nu nu nu nupakachi nu nu nu nu Nupakachi !', 'Only C', 'Hay-Doi-Day-Nupakachi-OnlyC-Lou-Hoang.mp3', NULL, '2019-12-09 20:53:41', '2019-12-09 20:53:41'),
(12, 'Đếm Ngày Xa Em', 'demngayxaxem.jpg', 4, 5, 7, 'Ngọt lắm những lúc em nắm đôi tay \r\nVà hứa sẽ mãi yêu chỉ anh đây \r\nTừ khi em qua nơi này \r\nAnh thấy vui biết mấy \r\nRồi nắng sớm mới ấm vẫn chưa vơi \r\nCon tim vang tiếng ca vui cười \r\nVì em mang niềm vui tới nơi anh \r\nNhư người may mắn nhất trên đời \r\n\r\nNào đâu..... \r\nChẳng đc bấy lâu \r\nLại phải xa cách nhau \r\nCố nén nỗi đau khi cơn mưa ngâu vụn vỡ \r\nĐêm về lại mơ \r\nSớm ra lại bơ vơ còn xa em là nhớ \r\n\r\n\r\nChỉ là đôi môi \r\nChỉ là.. \r\nVài câu yêu thương thôi mà \r\nEm đã khiến anh yêu em mãi không thể phai phôi \r\nAnh mong em đừng thay đổi \r\nVì anh đã quá yêu em mất rồi \r\nVì yêu em ,xa em quanh anh chỉ còn bóng tối \r\nChờ đợi ngày mai \r\nChờ... \r\nMột ngày gần trong tương lai \r\nChờ... \r\nNgày 2 ta đc sánh đôi vai được bên nhau mãi mãi \r\ndẫu .. \r\nAnh có làm gì sai \r\nCũng sẽ không một ai có thể chia 2 ta chung bước mãi \r\ntrên một con đường dài..... \r\n\r\nĐếm,đếm,đếm,đếm,đếm,....... \r\nAnh đếm ngày xa em \r\n...... \r\nRap :\r\n\r\n1,2,3,4,5,6,7 ...ngày trôi, \r\nBiết em giờ có nhớ về anh hay nhớ về ai \r\nBao ngày thật là dài khi anh không có em ở bên cạnh \r\nAnh cảm thấy rất giá lạnh \r\nMà làm sao cho em hiểu thấu khi mình không ở bên nhau \r\n... \r\nMonday ..tuesday...wednesday...thursday...friday ...saturday...sun day.. \r\nOh week \r\nAnh... chẳng thể nghĩ về ai chỉ nghĩ về em \r\nNỗi buồn thì anh không thể đếm \r\nNỗi nhớ em thì lại càng tăng thêm \r\nNgọt ngào đôi môi không thể nếm \r\nPhải làm sao khi không em mỗi đêm...', 'Only C', 'Dem-Ngay-Xa-Em-OnlyC-Lou-Hoang.mp3', NULL, '2019-12-09 20:55:15', '2019-12-09 20:55:15'),
(13, 'Là Bạn Không Thể Yêu', 'labanktheyeu.jpg', 4, 3, 6, 'Yêu là giây phút\r\nHai người dưng tìm đến bên nhau \r\nKhông cần gì, chỉ cần trái tim rung động\r\nCần thêm một sự quan tâm \r\nCòn thương\r\nLà chung bước tiếp trên con đường\r\nSau bao khó khăn qua, vẫn luôn ở lại\r\nDù cho những lúc lầm lỗi\r\nKhông làm ta xa nhau \r\nTình yêu ấy là những đậm sâu\r\nCứa lên con tìm cô đơn mỗi đêm thâu\r\nTại vì mình là bạn không thể yêu\r\nNày em có biết rằng\r\nCòn một người chờ em nơi đó\r\n\r\nGió mang ngàn yêu thương nơi đây\r\nCất bước đi xa \r\nNiềm nhớ thương trong đêm lạnh giá \r\nNỗi đau u sầu \r\nNgười ơi em có nhớ đến anh không? \r\nTiếng dương cầm ngân vang\r\nTheo em khuất lối xa xăm \r\nNhìn bóng em tan theo làn mây \r\nChỉ còn những đắng cay \r\nTháng năm ngày dài chia đôi \r\nGiấc mơ ngày nào xa xôi \r\n\r\nĐau là những nước mắt sâu trong lòng\r\nNhưng không nói cho ai\r\nMỗi đêm thở dài, tình yêu ấy sẽ còn mãi\r\nBao giờ cho nguôi ngoai\r\nThời gian qua là những đậm sâu\r\nCứa lên con tìm cô đơn mỗi đêm thâu\r\nTại vì mình là bạn không thể yêu\r\nNày em có biết rằng\r\nCòn một người chờ em nơi đó\r\n\r\nGió mang ngàn yêu thương nơi đây\r\nCất bước đi xa \r\nNiềm nhớ thương trong đêm lạnh giá \r\nNỗi đau u sầu \r\nNgười ơi em có nhớ đến anh không? \r\nTiếng dương cầm ngân vang\r\nTheo em khuất lối xa xăm \r\nNhìn bóng em tan theo làn mây \r\nChỉ còn những đắng cay \r\nTháng năm ngày dài chia đôi \r\nGiấc mơ ngày nào xa xôi \r\nHỡi em\r\n\r\nGió mang ngàn yêu thương nơi đây\r\nCất bước đi xa \r\n\r\nGió mang ngàn yêu thương nơi đây\r\nCất bước đi xa \r\nNiềm nhớ thương trong đêm lạnh giá \r\nNỗi đau u sầu \r\nNgười ơi em có nhớ đến anh không? \r\nTiếng dương cầm ngân vang\r\nTheo em khuất lối xa xăm \r\nNhìn bóng em tan theo làn mây \r\nChỉ còn những đắng cay \r\nTháng năm ngày dài chia đôi \r\nGiấc mơ ngày nào xa xôi \r\nHỡi em', 'Only C', 'La-Ban-Khong-The-Yeu-Lou-Hoang.mp3', NULL, '2019-12-09 20:56:36', '2019-12-09 20:56:36'),
(14, 'Ngày Em Đi', 'ngayemdi.jpg', 4, 2, 7, 'Đêm dần trôi mang bao khát khao. \r\nĐêm dần trôi buông lơi ước vọng.\r\nCon tim a lạnh câm, yêu dấu đã xa xăm. \r\nHỏi vì sao e đi quá nhanh, a ngồi đây cô đơn ngóng chờ\r\nBao nhiêu ân tình xưa nay đã tàn theo mưa. \r\n\r\nNgày e đi, a đứng một mình bơ vơ, nhìn e khuất xa. \r\nNgày hôm qua yêu thương vẫn còn nhưng nay chợt vụt mất bao đam mê. \r\nXa xôi bao nhiêu bao nhiêu ngày dài, đành quên yêu thương tương lai hiện tại này đôi tim yêu cùng chung một nhịp đập.\r\nKhông gian bao la a đi mỏi mệt tìm e nơi phương xa hay chăng, cuộc tình đành quên để cho thời gian trôi, mãi buông lơi. \r\n\r\nRAP: \r\nThức giấc tỉnh dậy hôm nay chiếc giường thật rộng lớn. \r\nHiện tại là đây nhưng sao mọi thứ dường như thật trống trơn\r\nPhút chốc a nhìn lại, a chẳng cần điều gì hơn\r\nĐôi khi quá khó để giữ một thứ mang tên hạnh phúc thật giản đơn. \r\n\r\nA luôn tự trách tại sao, tại sao, tại sao đôi ta đang vẫn còn yêu nhưng nay phải xa cách nhau. \r\nÁnh mắt hay bờ môi chẳng còn là của riêng a nữa.\r\nThôi thì đổ lỗi cho định mệnh đành lòng bẻ đôi một lời hứa. Come on. \r\n\r\nNgày e đi, a đứng một mình bơ vơ, nhìn e khuất xa. \r\nNgày hôm qua yêu thương vẫn còn nhưng nay chợt vụt mất bao đam mê. \r\nXa xôi bao nhiêu bao nhiêu ngày dài, đành quên yêu thương tương lai hiện tại này đôi tim yêu cùng chung một nhịp đập.\r\nKhông gian bao la a đi mỏi mệt tìm e nơi phương xa hay chăng, cuộc tình đành quên để cho thời gian trôi, mãi buông lơi. \r\n\r\nRAP: \r\nE đã bỏ đi thật sao. \r\nNhìn thời gian chôn vùi bao ước ao. \r\nMột mình a bây giờ phải làm sao. \r\nĐể e trở về. \r\nBao lâu thời gian để làm lành một vết thương. \r\nBao nhiêu miên man để quên một nỗi nhớ. \r\nBao lâu, rồi bao nhiêu lâu, để tìm được nhau, mà sao e đi quá mau.', 'Miu Lê', 'Ngay-Em-Di-OnlyC-Lou-Hoang.mp3', NULL, '2019-12-09 20:57:54', '2019-12-09 20:57:54'),
(15, 'Đi Theo Bóng Mặt Trời', 'ditheobongmattroi.png', 5, 5, 8, 'Verse 1\r\ntrước khi con mắt ta ngày nào đó sẽ trở nên đục ngầu\r\ntrước khi ta hóa thành sương khói hay đám lá mục nâu\r\ntrước khi ngọn lửa ở trong lòng dần tàn\r\ntrước khi ta sống được trọn vẹn hết một vòng tuần hoàn\r\ntận cùng thế giới là gì, đâu có ai mà biết được\r\nnhững hóa đơn, và trách nhiệm, làm giấc mơ ta khiếp nhược\r\nta không muốn những ngày trẻ, trở nên gầy gò xanh xao\r\nta muốn là cánh chim nhỏ, giữa bầu trời trong xanh chao\r\ntrong mắt của rất nhiều người ta rất điên và rất ương bướng\r\nlấy đam mê làm ánh mặt trời, để tâm hồn này không mất phương hướng\r\nta đi theo bóng mặt trời, từ hạ tới hay đông về qua\r\nkhi những đam mê, còn nồng cháy, thì con đường đó sẽ không hề xa\r\n\r\nChorus\r\nlà ngày mà đôi mắt ta chưa trở nên đục ngầu\r\nlà ngày mà ánh sáng khiến ta nhìn thấu được mình\r\nlà ngày mà tâm tư ta chưa thành lá mục nâu, rồi tan, tan vào trong những biếc sâu\r\nđi theo bóng mặt trời\r\nđi theo bóng mặt trời\r\nđi theo bóng mặt trời\r\nđi theo bóng mặt trời\r\n\r\nVerse 2\r\nđi theo bóng mặt trời, trên những con đường xa anh rong ruổi\r\nthà làm con kiến tự do còn hơn là chúa sơn lâm ở trong cũi\r\nanh muốn khi anh hết trẻ, ngồi nhìn bầu trời xanh biếc cuối chiều\r\nbên hiên nhà, ly trà ấm, trong tâm tư không tiếc nuối nhiều\r\nrồi anh kể cho đám trẻ, những điều anh đã trải qua\r\nkhông phải để họ ngưỡng mộ, hay là để họ ngợi ca\r\nchỉ là ai cũng có những ngày trẻ, rồi thì cũng sẽ già nua\r\nnhững ngày mà chân chưa mỏi, có tiền cũng khó mà mua\r\nnhững ngày nào đó, khi tâm tư được vẫy vùng\r\nta sẽ cùng mở nhạc, giữa rừng xanh và nhảy cùng\r\nlà đâu đó giữa chập chùng núi và non kia\r\nnằm trên đồi hút điếu thuốc và ở trong túi là lon bia.', 'Đen', 'Di-Theo-Bong-Mat-Troi-Den-Giang-Nguyen.mp3', NULL, '2019-12-09 20:59:42', '2019-12-09 20:59:42'),
(16, 'Hai Triệu Năm', 'haitrieunam.jpg', 5, 4, 8, 'Anh cô đơn giữa tinh không này\r\nMuôn con sóng cuốn xô vào đây\r\nEm cô đơn giữa mênh mông người\r\nVà ta cô đơn đã hai triệu năm \r\n\r\nRap:\r\nXung quanh anh toàn là nước \r\nCơ thể anh đang bị ướt \r\nMênh mông toàn là nước \r\nÊm ái như chưa từng trước đây\r\nTrăm ngàn con sóng xô\r\nAnh lao vào trong biển cả vì em làm anh nóng khô\r\nAnh ngâm mình trong làn nước để mặn mòi từ da dẻ\r\nTa cần tình yêu vì tình yêu làm cho ta trẻ\r\nAnh cũng cần em nhưng không biết em sao\r\nAnh không care lắm và anh quyết đem trao\r\nCho em hết nắng cho em hết đêm sao\r\nNhìn mặt anh đi, em nghĩ anh tiếc em sao?\r\nTrăm ngàn con sóng từ mọi nơi mà đổ về\r\nVà đây là cách mà anh đi tìm kiếm sự vỗ về\r\nEm có quá nhiều bí mật, anh thì ko cần gặng hỏi\r\nEm sâu như là đại dương, anh thì không hề lặn giỏi\r\nAnh soi mình vào gương cho bõ công lau\r\nThấy mặt thấy người sao thấy rõ trong nhau\r\nÁnh mắt nụ cười kia không rõ nông sâu\r\nTa rồi sẽ là ai, một câu hỏi nhỏ trong đầu\r\nTa chỉ là hòn đất hay chỉ là cỏ bông lau\r\n(Như là mấy gã em mới bỏ không lâu)\r\nHay chỉ là đầu thuốc kia cháy đỏ không lâu\r\nYêu em kiểu nông dân, yêu em kiểu quê mùa\r\nYêu từ vụ đông xuân, đến hè thu thay mùa\r\nNhưng em thì trơn trượt như là con cá chuối\r\nMuốn níu em trong tay, Khá Bảnh cũng khá đuối\r\nEm giống hệt như biển cả em có nhiều bí mật\r\nAnh làm rất nhiều thứ, để đồng tiền trong ví chật\r\nNgười ta không quý con ong, mà người ta chỉ quý mật\r\nEm hỏi sao nhạc anh hay, anh gọi nó là bí thuật!\r\n\r\n\r\nAnh cô đơn giữa tinh không này\r\nMuôn con sóng cuốn xô vào đây\r\nEm cô đơn giữa mênh mông người\r\nVà ta cô đơn đã hai triệu năm \r\n\r\nRap:\r\nNước đã hình thành trong hàng triệu năm\r\nCát đã hình thành trong hàng triệu năm\r\nBiển cả hình thành trong hàng triệu năm\r\nSao em làm anh buồn sau hàng triệu năm\r\nGặp em từ thể đơn bào, rồi tiến hóa\r\nXa em từ khi thềm lục địa đầy biến hóa\r\nMuốn được ôm em qua kỷ Ju-ra \r\nHóa thạch cùng nhau trên những phiến đá\r\nRồi loài người tìm thấy lửa, anh lại tìm thấy em\r\nAnh tưởng rằng mọi thứ sẽ được bùng cháy lên\r\nMuốn được cùng em, trồng rau bên hồ cá\r\nNhưng tim em lúc đó, là thời kì đồ đá\r\nAnh đã tin vào em như tin vào thuyết nhật tâm\r\nNhư Ga-li-lê người ta nói anh thật hâm\r\nCó lẽ Đác-win biết biển cả sẽ khô hơn\r\nNhưng anh tin ông ta không biết chúng ta đang tiến hóa để cô đơn', 'Đen', 'hai-trieu-nam-Den-Bien.mp3', NULL, '2019-12-09 21:01:14', '2019-12-09 21:01:14'),
(17, 'Ngày Khác Lạ', 'ngaykhacla.png', 5, 4, 9, 'Verse 1\r\nCó những ngày anh rệu rã như con xe đã lâu chưa thay dầu\r\nNhư con thuyền lênh đênh ngoài biển cả, chưa tìm được bờ bến để quay đầu\r\nNhư họa sĩ với những bức tranh vẽ, còn dang dở thì nó đã bay màu\r\nMệt mỏi vì đi tìm những ý tưởng, nhưng con chữ nó cứ bay đi đâu\r\nEm biết không có đôi khi anh bế tắc\r\ncảm hứng như bóng đèn chợt lóe tắt\r\nLàm những công việc mà không thấy có niềm vui\r\nLạc lõng đi về miền ngược và miền xuôi\r\nem có thể giúp anh không, cho anh một ngày khác lạ\r\nĐi đâu xa xôi cho mát lòng mát dạ\r\nNgồi cùng nhau trên chiếc xe cà tàng\r\nĐể mà Sống những ngày vui quý hơn là bạc là vàng\r\n\r\n\r\nChẳng cần đôi cánh không mong nơi cùng trời\r\nChỉ cần ngày mới em đưa anh dạo chơi\r\nNhững bình minh rất khác anh buông lơi tay ga \r\nNhững ngày vui rất khác em thiếp đi sau xe\r\n\r\nĐể đi cùng em về phía cuối bầu trời\r\nĐể viết lên những giấc mơ vẫn dang dở\r\nĐể cho ta lao về phía ánh mặt trời\r\nKéo bóng đêm dần biến tan\r\nLang thang cho vòng bánh xe ngập bùn\r\nThôi những lo toan trong guồng quay vội vã cuốn ta theo\r\nHành trình Biker về phía cuối chặng đường\r\nHít những hơi thở tự do\r\n\r\nThấy những đúng và sai thôi cho qua được rồi\r\nThôi bon chen cùng ai hơn thua cũng vậy thôi\r\nNơi mình chưa từng qua\r\nGặp ai mình chưa từng quen\r\nNơi chỉ có mình ta \r\nNơi chỉ có anh và em \r\n\r\n\r\nVerse 2 \r\nChuyến đi với em anh thấy mình chẳng còn đơn độc\r\nĐi cùng em hành trình biker, anh thấy cát bụi đường đẹp hơn ngọc\r\nLồng ngực thấy dễ thở hơn, mắt thấy được những rặng mây xa\r\nAnh nhận ra tự nhiên rất thích, cách mà em khẽ vặn tay ga\r\nChuyến đi với em sẽ đưa anh về ngày vô tư cũ\r\nNhư giọt sương đêm đọng giữa bầu trời, mình vô tư ngủ\r\nMình vô tư cười mình vô tư nói mình vô tư hát với ca\r\nĐể ta biết rằng những ngày còn trẻ sẽ trong giây lát vút qua\r\nAnh chỉ muốn đi cho xa, anh không hề muốn đi cho nhanh\r\nĐể kịp giữ lại từng khoảng khắc, những điều em khắc ghi cho anh\r\nVì chúng ta bằng da bằng thịt không phải sắt, đá hay đồng thau,\r\nNên anh mong vì chuyến đi đó, hai đứa mình sẽ phải lòng nhau\r\n\r\n \r\nĐể đi cùng em về phía cuối bầu trời\r\nĐể viết lên những giấc mơ vẫn dang dở\r\nĐể cho ta lao về phía ánh mặt trời\r\nKéo bóng đêm dần biến tan\r\nLang thang cho vòng bánh xe ngập bùn\r\nThôi những lo toan trong guồng quay vội vã cuốn ta theo\r\nHành trình Biker về phía cuối chặng đường\r\nHít những hơi thở tự do', 'Emcee L, JGKiD, Đen', 'Ngay-Khac-La-Den-Giang-Pham-Triple-D-3D.mp3', NULL, '2019-12-09 21:02:46', '2019-12-09 21:02:46'),
(18, 'Lộn Xộn II', 'LonxonII.jpg', 5, 3, 9, 'Verse 1\r\nCó những ngày anh rệu rã như con xe đã lâu chưa thay dầu\r\nNhư con thuyền lênh đênh ngoài biển cả, chưa tìm được bờ bến để quay đầu\r\nNhư họa sĩ với những bức tranh vẽ, còn dang dở thì nó đã bay màu\r\nMệt mỏi vì đi tìm những ý tưởng, nhưng con chữ nó cứ bay đi đâu\r\nEm biết không có đôi khi anh bế tắc\r\ncảm hứng như bóng đèn chợt lóe tắt\r\nLàm những công việc mà không thấy có niềm vui\r\nLạc lõng đi về miền ngược và miền xuôi\r\nem có thể giúp anh không, cho anh một ngày khác lạ\r\nĐi đâu xa xôi cho mát lòng mát dạ\r\nNgồi cùng nhau trên chiếc xe cà tàng\r\nĐể mà Sống những ngày vui quý hơn là bạc là vàng\r\n\r\n\r\nChẳng cần đôi cánh không mong nơi cùng trời\r\nChỉ cần ngày mới em đưa anh dạo chơi\r\nNhững bình minh rất khác anh buông lơi tay ga \r\nNhững ngày vui rất khác em thiếp đi sau xe\r\n\r\nĐể đi cùng em về phía cuối bầu trời\r\nĐể viết lên những giấc mơ vẫn dang dở\r\nĐể cho ta lao về phía ánh mặt trời\r\nKéo bóng đêm dần biến tan\r\nLang thang cho vòng bánh xe ngập bùn\r\nThôi những lo toan trong guồng quay vội vã cuốn ta theo\r\nHành trình Biker về phía cuối chặng đường\r\nHít những hơi thở tự do\r\n\r\nThấy những đúng và sai thôi cho qua được rồi\r\nThôi bon chen cùng ai hơn thua cũng vậy thôi\r\nNơi mình chưa từng qua\r\nGặp ai mình chưa từng quen\r\nNơi chỉ có mình ta \r\nNơi chỉ có anh và em \r\n\r\n\r\nVerse 2 \r\nChuyến đi với em anh thấy mình chẳng còn đơn độc\r\nĐi cùng em hành trình biker, anh thấy cát bụi đường đẹp hơn ngọc\r\nLồng ngực thấy dễ thở hơn, mắt thấy được những rặng mây xa\r\nAnh nhận ra tự nhiên rất thích, cách mà em khẽ vặn tay ga\r\nChuyến đi với em sẽ đưa anh về ngày vô tư cũ\r\nNhư giọt sương đêm đọng giữa bầu trời, mình vô tư ngủ\r\nMình vô tư cười mình vô tư nói mình vô tư hát với ca\r\nĐể ta biết rằng những ngày còn trẻ sẽ trong giây lát vút qua\r\nAnh chỉ muốn đi cho xa, anh không hề muốn đi cho nhanh\r\nĐể kịp giữ lại từng khoảng khắc, những điều em khắc ghi cho anh\r\nVì chúng ta bằng da bằng thịt không phải sắt, đá hay đồng thau,\r\nNên anh mong vì chuyến đi đó, hai đứa mình sẽ phải lòng nhau\r\n\r\n \r\nĐể đi cùng em về phía cuối bầu trời\r\nĐể viết lên những giấc mơ vẫn dang dở\r\nĐể cho ta lao về phía ánh mặt trời\r\nKéo bóng đêm dần biến tan\r\nLang thang cho vòng bánh xe ngập bùn\r\nThôi những lo toan trong guồng quay vội vã cuốn ta theo\r\nHành trình Biker về phía cuối chặng đường\r\nHít những hơi thở tự do', 'Đen', 'Lon-Xon-II-Den.mp3', NULL, '2019-12-09 21:04:20', '2019-12-09 21:04:20'),
(19, 'Anh Nhớ Em Người Yêu Cũ', 'anhnhoemnguoiyeucu.jpg', 14, 2, 12, 'Khánh Đơn', 'Khánh Đơn', 'Anh-Nho-Em-Nguoi-Yeu-Cu-Minh-Vuong-M4U.mp3', NULL, '2019-12-09 21:05:55', '2019-12-09 21:05:55'),
(20, 'Em Ơi Lên Phố', 'emoilenpho.jpg', 14, 5, 12, 'Thương lắm con sông với hàng dừa mộng xanh\r\nCâu hứa năm xưa trong một chiều chơi mưa\r\nEm nói em thương anh nhiều\r\nThương em anh tin rất nhiều\r\nnhưng đời không như giấc mơ đẹp\r\nEm rời xa chốn đây\r\n \r\nMột hai em muốn bước lên đôi thành vì\r\nem đã nghe câu chuyện \r\nvài người hàng xóm nói em sao xình đẹp \r\nsao ở quê làm gì\r\nLàm em cứ thêm những mơ mộng\r\nEm muốn cách xa nơi này\r\nBỏ lại em với tiếng yêu nồng say\r\n \r\nAnh đã chạy theo đến tàn kiệt ngày em hành trang bước đi\r\nMặt hồ vẫn trĩu bóng người\r\nnhưng cũng muốn em ơi ở lại\r\nSẽ không còn những cánh diều \r\nnhững buổi chiều tung tăng với mây\r\nGió kêu gào em ơi xin hãy quay về\r\n \r\nAi cũng phải có khát vọng trong cuộc sống này phải không em\r\nĐể lại tất cả nỗi buồn ở đằng sau em lạnh lùng quên\r\nQuên luôn cả ký ức đẹp\r\nquên cả luôn nơi em lớn lên\r\nNơi đây ko thuộc về em nữa\r\nphải không em\r\n \r\nThấm thoát đã ba năm\r\nĐi đâu mà xa xăm\r\nTin em về thăm quê ra mắt em với mẹ cha em\r\nTrông ngóng chờ đợi \r\nnhung nhớ 1 thời\r\ngiờ trên tay anh tấm thiệp cưới\r\n \r\nngày xưa em muốn bước lên đô thành\r\nvì em đã nghe câu chuyện \r\nvài người hàng xóm nói em sao xình đẹp \r\nsao ở quê làm gì\r\nLàm em cứ thêm những mơ mộng\r\nEm muốn cách xa nơi này\r\nBỏ lại em với tiếng yêu nồng say\r\n \r\nAnh đã chạy theo đến tàn kiệt ngày em hành trang bước đi\r\nMặt hồ vẫn trĩu bóng người\r\nnhưng cũng muốn em ơi ở lại\r\nSẽ không còn những cánh diều \r\nnhững buổi chiều tung tăng với mây\r\nGió kêu gào em ơi xin hãy quay về\r\n \r\nAi cũng phải có khát vọng trong cuộc sống này phải không em\r\nĐể lại tất cả nỗi buồn ở đằng sau em lạnh lùng quên\r\nQuê luôn cả ký ức đẹp\r\nquên cả luôn nơi em lớn lên\r\nNơi đây ko thuộc về em nữa\r\nphải không em\r\n \r\nAnh đã chạy theo đến tàn kiệt ngày em hành trang bước đi\r\nMặt hồ vẫn trĩu bóng người\r\nnhưng cũng muốn em ơi ở lại\r\nSẽ không còn những cánh diều \r\nnhững buổi chiều tung tăng với mây\r\nGió kêu gào em ơi xin hãy quay về\r\n \r\nAi cũng phải có khát vọng trong cuộc sống này phải không em\r\nĐể lại tất cả nỗi buồn ở đằng sau em lạnh lùng quên\r\nQuê luôn cả ký ức đẹp\r\nquên cả luôn nơi em lớn lên\r\nNơi đây ko thuộc về em nữa\r\nphải không em', 'Nguyễn Đình Vũ', 'Em-Oi-Len-Pho-Minh-Vuong-M4U.mp3', NULL, '2019-12-09 21:08:21', '2019-12-09 21:08:21'),
(21, 'Anh Rất Yêu Em', 'anhratyeuem.jpg', 14, 4, 13, 'Đến lúc mất em anh mới biết, sống thiếu vắng em anh thế nào .\r\nSống với biết bao nhiêu nỗi nhớ về em, về cuộc tình của 2 chúng ta ngày nào.\r\nChắc chắn sẽ không thể quên hết, những ký ức khi ta bên nhau.\r\nBão tố sẽ qua nhưng anh vẫn cần em, chỉ 1 mình em thôi với anh qua đêm dài.\r\n\r\nĐK :\r\nVà dường như em đi qua đời anh mất rồi, thì chuyện tình 2 chúng ta dường như không còn, chỉ biết đứng nhìn nguyện cầu chúc em, thật hạnh phúc nhé khi bên người ta. Dù rằng anh sẽ vẫn mãi mãi yêu em, thì chuyện hôm nay đã qua như giấc mộng dài. Bình yên ở lại để rồi mất em . Anh rất yêu em !\r\nBình yên ở lại để rồi mất nhau .... Anh Rất Yêu Em !', 'Minh Vương M4U', 'Anh-Rat-Yeu-Em-Minh-Vuong-M4U.mp3', NULL, '2019-12-09 21:10:24', '2019-12-09 21:10:24'),
(22, 'Mình Chia Tay Nhé', 'minhchiataynhe.jpg', 14, 3, 13, 'Đến lúc mất em anh mới biết, sống thiếu vắng em anh thế nào .\r\nSống với biết bao nhiêu nỗi nhớ về em, về cuộc tình của 2 chúng ta ngày nào.\r\nChắc chắn sẽ không thể quên hết, những ký ức khi ta bên nhau.\r\nBão tố sẽ qua nhưng anh vẫn cần em, chỉ 1 mình em thôi với anh qua đêm dài.\r\n\r\nĐK :\r\nVà dường như em đi qua đời anh mất rồi, thì chuyện tình 2 chúng ta dường như không còn, chỉ biết đứng nhìn nguyện cầu chúc em, thật hạnh phúc nhé khi bên người ta. Dù rằng anh sẽ vẫn mãi mãi yêu em, thì chuyện hôm nay đã qua như giấc mộng dài. Bình yên ở lại để rồi mất em . Anh rất yêu em !\r\nBình yên ở lại để rồi mất nhau .... Anh Rất Yêu Em !', 'Minh Vương M4U', 'Minh-Chia-Tay-Nhe-Minh-Vuong-M4U.mp3', NULL, '2019-12-09 21:11:49', '2019-12-09 21:11:49'),
(23, 'Tình Đời', 'tinhdoi.jpg', 15, 10, 14, 'Khi biết em mang kiếp cầm ca\r\nĐêm đêm phòng trà\r\nDâng tiếng hát cho người người\r\nBỏ tiền mua vui\r\nHỏi rằng anh ơi\r\nCòn yêu em nữa không\r\n\r\nĐừng nói nữa em ơi\r\nXin đừng nói nữa làm gì\r\nAnh nghĩ rằng\r\nĐời người ca sĩ\r\nĐáng thương và đáng được yêu\r\n\r\nTình yêu, em sợ tình yêu\r\nVì tình yêu như là hương hoa\r\nLỡ mai sau em mất người yêu\r\nEm khổ thật nhiều\r\n\r\nNgày mai trên đường phố này\r\nNhững đêm khuya\r\nCó anh đưa về xóm nhỏ\r\nXa lìa ánh đèn\r\nCó anh đưa em về bến mơ\r\n\r\nKhi chót mang duyên kiếp cầm ca\r\nEm xin bằng lòng\r\nNghe tiếng trách chê của đời\r\nChỉ cần anh thôi, chỉ cần anh thôi\r\nCòn tin anh nữa thôi\r\n\r\nĐời vẫn thế em ơi\r\nXin đừng nói đến tình đời\r\nEm nhớ rằng\r\nĐời là gian dối\r\nNhưng đôi ta mãi còn nhau', 'Minh Kỳ', 'Tinh-Doi-Le-Quyen.mp3', NULL, '2019-12-09 21:13:28', '2019-12-09 21:13:28'),
(24, 'Sầu Lẻ Bóng', 'saulebong.jpg', 15, 10, 14, 'Người ơi khi cố quên là khi lòng nhớ thêm\r\nDòng đời là chuỗi tiếc nhớ\r\nMơ vui là lúc ngàn đắng cay... xé tâm hồn\r\nTàn đêm tôi khóc khi trời mưa buồn hắt hiu\r\nLòng mình thầm nhớ dĩ vãng\r\nĐau thương từ lúc vừa bước chân\r\nVào đường yêu\r\n\r\nĐêm ấy mưa rơi nhiều\r\nGiọt mưa tan tác mưa mùa ngâu\r\nTiễn chân người đi\r\nBuồn che đôi mắt thấm ướt khi biệt ly\r\nNghe tim mình giá buốt\r\nHồi còi xé nát không gian\r\nXót thương vô vàn\r\nNhìn theo bóng tàu dần khuất trong màn êm\r\nMùa thu thương nhớ bao lần đi về có đôi\r\nMà người còn vắng bóng mãi\r\nHay duyên nồng thắm ngày ấy nay... đã phai rồi\r\nTừ lâu tôi biết câu thời gian là thuốc tiên\r\nĐời việc gì đến sẽ đến\r\nNhững ai bạc bẽo mình vẫn không... đành lòng quên', 'Anh Bằng', 'Sau-Le-Bong-Le-Quyen.mp3', NULL, '2019-12-09 21:14:37', '2019-12-09 21:14:37'),
(25, 'Người Tình', 'nguoitinh.jpg', 15, 11, 15, 'dù biết trái tim yêu đương một lần lạc lối giữa đôi tình nhân\r\ndù biết lá khô rụng đầy mùa thu sẽ chết khi đông vừa sang\r\ndù biết tiếng dương cầm buồn âm thầm lặng lẽ hắt hiu đời ta\r\ndù biết xót xa, dù biết cô đơn, dù biết ngày đã qua\r\ndù biết nắng sẽ phôi pha nụ hồng tàn úa ướt mi tình xa\r\ndù biết vấn vương màu buồn tựa hồ đôi mắt trông theo hồn thu\r\ndù biết hơi ấm ân cần dệt thành nỗi nhớ trong đêm mù khơi\r\ndù biết chia xa dù biết hoang mang dù biết tình chết trong ta\r\nthế nhưng người tình hãy đến bên em một lần thôi\r\nsưởi ấm con tim bao ngày lạnh giá yêu đương cuồng quay\r\nđể trái tim thôi lỡ làng, nói yêu anh muộn màng\r\nđể rồi mai đây tình sẽ ngủ vùi trong kí ức\r\nthế nhưng người tình hãy đến bên em một lần thôi\r\nđừng nói với em điều gì mà hãy cứ ôm em thật lâu\r\nđể trái tim em chìm sâu những nỗi đau chôn dấu vô cùng\r\nđể biết khi cô đơn em sẽ gọi thầm tên anh, người tình\r\n\r\n\r\ndù biết nắng sẽ phôi pha nụ hồng tàn úa ướt mi tình xa\r\ndù biết vấn vương màu buồn tựa hồ đôi mắt trông theo hồn thu\r\ndù biết hơi ấm ân cần dệt thành nỗi nhớ trong đêm mù khơi\r\ndù biết chia xa dù biết hoang mang dù biết tình chết trong ta\r\nthế nhưng người tình hãy đến bên em một lần thôi\r\nsưởi ấm con tim bao ngày lạnh giá yêu đương cuồng quay\r\nđể trái tim thôi lỡ làng, nói yêu anh muộn màng\r\nđể rồi mai đây tình sẽ ngủ vùi trong kí ức\r\nthế nhưng người tình hãy đến bên em một lần thôi\r\nđừng nói với em điều gì mà hãy cứ ôm em thật lâu\r\nđể trái tim em chìm sâu những nỗi đau chôn dấu vô cùng\r\nđể biết khi cô đơn em sẽ gọi thầm tên anh, người tình', 'Quỳnh Anh', 'Nguoi-Tinh-Le-Quyen.mp3', NULL, '2019-12-09 21:15:57', '2019-12-09 21:15:57'),
(26, 'Ta Đã Từng Yêu', 'tadatungyeu.jpg', 15, 11, 15, 'Còn gì mà tìm đến nhau nữa khi chúng ta không còn nhau.\r\nCòn gì để lừa dối nhau nữa khi trái tim không còn đau.\r\nGặp lại rồi mình sẽ ra sao? Làm gì tìm lại được phút ban đầu?\r\nRồi mình lại càng níu chân nhau xô ngã đời nhau.\r\n\r\nNgày tình mình còn chút lưu luyến em đã khuyên anh đừng đi.\r\nLời nhẹ nhàng nào cũng tan biến anh nhẫn tâm đâu màng chi.\r\nRồi miệt mài vào những đêm vui bằng nhiều cuộc tình chỉ thoáng qua thôi. \r\nRồi tàn tạ về giữa đơn côi buồn không anh hỡi?\r\n\r\nEm từng yêu trong tình yêu quá ngây thơ cứ yêu một mình bơ vơ đâu biết anh hững hờ. \r\nBao cuộc vui đã tàn nơi chốn xa xôi tìm về bên anh em mong chấp nối.\r\n\r\nNhưng tình ơi chỉ còn lại xót xa thôi đã như bèo dạt mây trôi anh đã quên em rồi. \r\nĐâu còn chi khi mà anh đã ra đi một lần phân li tình xưa sẽ mãi không quay về.', 'Thái Thịnh', 'Ta-Da-Tung-Yeu-Le-Quyen.mp3', NULL, '2019-12-09 21:17:09', '2019-12-09 21:17:09'),
(27, 'Cuộc Vui Cô Đơn', 'cuocvuicodon.jpg', 16, 5, 16, 'Em ơi mình chia tay lâu rồi\r\nEm cũng đã yêu thêm người mới\r\nAnh thì vẫn cô đơn sớm tối\r\nBiết bao giờ con tim này được nghỉ ngơi\r\n\r\nChơi vơi giữa bão tố cuộc đời\r\nNước mắt cũng đã rơi nhiều rồi\r\nCô đơn trong cuộc vui đông người\r\nCố mỉm cười nhưng trong lòng chẳng được vui.\r\n\r\nĐk\r\nKhi đã yêu một ai thật lòng\r\nĐâu nói quên là quên phải không\r\nKhi người ta đã hết yêu rồi\r\nThì níu kéo cũng chỉ vậy thôi\r\nNên đừng bao giờ gieo hi vọng\r\nRồi dập tắt cũng chỉ bằng không\r\nBây giờ nên học cách im lặng\r\nĐể ra đi khi tim đã tổn thương', 'Lê Bảo Bình', 'Cuoc-Vui-Co-Don-Le-Bao-Binh.mp3', NULL, '2019-12-09 21:18:41', '2019-12-09 21:18:41'),
(28, 'Người Phản Bội', 'nguoiphanboi.jpg', 16, 4, 16, 'Màn đêm buông xuống\r\nCăn phòng lạnh lẽo\r\n\r\nAnh thấy cô đơn\r\nAnh thấy mỏi mệt và anh nhớ về người\r\nAnh nhớ nụ cười của em\r\nChạy theo những cuộc vui xa hoa thâu đêm\r\nVà em đã quên đi tình yêu anh trao em\r\nĐể giờ đây em mãi bước ra khỏi cuộc đời anh\r\nĐK: Anh sẽ chấp nhận hết tất cả những điều vì anh quá yêu anh quá nuông chiều\r\nĐể em lừa dối em đã phản bội\r\nrồi đổi thay \r\nAnh sẽ tiếp tục sống những ngày vắng em\r\nVà sẽ tập cho mình một thói quen\r\nĐể em sẽ hối tiếc về tất cả những gì em đã gây ra', 'Lê Bảo Bình', 'Nguoi-Phan-Boi-Le-Bao-Binh.mp3', NULL, '2019-12-09 21:20:17', '2019-12-09 21:20:17'),
(29, 'Bước Qua Đời Nhau', 'buocquadoinhau.jpg', 16, 5, 17, 'Mình bước qua đời nhau\r\nĐể làm nhau đau\r\nĐể làm nhau khóc\r\nGặp nhau không muốn chào\r\nMình bước qua đời nhau\r\nĐể lại thương đau\r\nĐể lại vệt sâu có xóa mờ được đâu\r\nMình đã từng hạnh phúc\r\nPhải không em ơi\r\nMình từng chung lối\r\nKhổ đau lẫn tiếng cười\r\nMình đã luôn từng nói\r\nÀ không thể chưa\r\nMình từng thế ước mãi không bao giờ xa\r\nMà cớ sao ta giờ đây bước qua đời nhau\r\nRồi trái tim ta phải đau\r\nNhớ nhung vì nhau\r\nVà có khi nào em thấy\r\nTiếc nuối về ngày xưa\r\nVội vàng quá để mình mất nhau\r\nNgày đấy giá anh và em\r\nChúng ta đừng cố chấp\r\nNgày đấy giá anh và em\r\nChúng ta bình tĩnh hơn\r\nNgày đấy giá anh kìm nén\r\nMỗi khi mình cãi vã\r\nĐể hai ta hai ta sẽ không\r\nBước qua đời nhau\r\n\r\nMình bước qua đời nhau\r\nĐể làm nhau đau\r\nĐể làm nhau khóc\r\nGặp nhau không muốn chào\r\nMình bước qua đời nhau\r\nĐể lại thương đau\r\nĐể lại vệt sâu có xóa mờ được đâu\r\nMình đã từng hạnh phúc\r\nPhải không em ơi\r\nMình từng chung lối\r\nKhổ đau lẫn tiếng cười\r\nMình đã luôn từng nói\r\nÀ không thể chưa\r\nMình từng thế ước mãi không bao giờ xa\r\nMà cớ sao ta giờ đây bước qua đời nhau\r\nRồi trái tim ta phải đau\r\nNhớ nhung vì nhau\r\nVà có khi nào em thấy\r\nTiếc nuối về ngày xưa\r\nVội vàng quá để mình mất nhau\r\nNgày đấy giá anh và em\r\nChúng ta đừng cố chấp\r\nNgày đấy giá anh và em\r\nChúng ta bình tĩnh hơn\r\nNgày đấy giá anh kìm nén\r\nMỗi khi mình cãi vã\r\nĐể hai ta hai ta sẽ không\r\nBước qua đời nhau\r\n\r\nMà cớ sao ta giờ đây bước qua đời nhau\r\nRồi trái tim ta phải đau\r\nNhớ nhung vì nhau\r\nVà có khi nào em thấy\r\nTiếc nuối về ngày xưa\r\nVội vàng quá để mình mất nhau\r\nNgày đấy giá anh và em\r\nChúng ta đừng cố chấp\r\nNgày đấy giá anh và em\r\nChúng ta bình tĩnh hơn\r\nNgày đấy giá anh kìm nén\r\nMỗi khi mình cãi vã\r\nĐể hai ta hai ta sẽ không\r\nBước qua đời nhau', 'Khắc Việt', 'Buoc-Qua-Doi-Nhau-Le-Bao-Binh.mp3', NULL, '2019-12-09 21:21:45', '2019-12-09 21:21:45'),
(30, 'Hỏi Thăm Nhau', 'hoithamnhau.png', 16, 4, 17, 'Chiều nay nhìn em bước vội \r\nKhông biết cuộc sống em dạo này thế nào rồi \r\nAnh vẫn như thế thôi vẫn cô đơn sớm tối \r\nNhiều lúc bối rối con tim anh lạc lối \r\nLúc anh yêu thương em hết lòng \r\nSao em lại nỡ bỏ anh trong đợi mong \r\nAnh như kẻ ngu si chẳng bận tâm điều gì \r\nĐể rồi nhìn em, em ra đi \r\n\r\n[ĐK:] \r\nNhiều lúc anh cứ suy nghĩ anh đã làm sai điều gì \r\nMà em ra đi không một lời từ li \r\nHóa ra lúc ta yêu nhau em cũng chỉ toàn dối lừa \r\nVà rồi em coi anh như một kẻ thừa \r\nAnh chẳng thể ngờ được đâu khi tất cả những gì em giấu \r\nTrao hết cho em ngọt ngào rồi nhận lại chỉ toàn niềm đau \r\nNước mắt không với được đâu khi tình yêu đã phai màu \r\nĐành nhìn em đến với người sau...', 'Lê Bảo Bình', 'Hoi-Tham-Nhau-Le-Bao-Binh.mp3', NULL, '2019-12-09 21:23:11', '2019-12-09 21:23:11');
INSERT INTO `songs` (`id`, `song_name`, `picture`, `artist_id`, `category_id`, `album_id`, `song_lyric`, `composer`, `url`, `mv`, `created_at`, `updated_at`) VALUES
(31, 'Còn Gì Đau Hơn Chữ Đã Từng', 'congidauhonchudatung.jpg', 17, 5, 18, 'V1:\r\nCòn gì đau hơn chữ “đã từng”?\r\nĐã yêu đã hy vọng\r\nTừng cho nhau những ký ức không úa màu.\r\n\r\nCòn gì đau hơn chữ “đã từng”?\r\nĐã từng tay níu tay\r\nMà chẳng thể giữ lấy nên lạc nhau.\r\n\r\nPre:\r\nTình đẹp khi tình lỡ\r\nNếu không chúng ta phải biết vấn vương những gì?\r\nNếu không nợ nhau?\r\nNếu không tiếc nuối?\r\n\r\nChorus:\r\nVì ngày xưa ấy nghĩ rằng tay trong tay\r\nSẽ chiến thắng tất cả, mình dại khờ thế đấy.\r\nThời gian tàn nhẫn, ta chỉ biết im lặng\r\nĐành mặc cho nhân duyên sắp đặt.\r\n\r\nTừng lời đã hứa nay chẳng thể giữ nữa\r\nĐành phải nhờ người khác gánh vác.\r\nChúng ta sau này sẽ có tất cả\r\nChỉ tiếc rằng không thể có nhau như đã từng.\r\n\r\nV2:\r\nPhải chăng ta đã quá bồng bột?\r\nCứ yêu cứ mơ mộng\r\nMà không hề biết phải yêu một người thế nào.\r\nĐể khi học được cách yêu rồi\r\nMới nhận ra chúng ta\r\nChẳng còn lại gì ngoài chữ đã từng.', 'RIN9', 'Con-Gi-Dau-Hon-Chu-Da-Tung-Quan-A-P.mp3', NULL, '2019-12-09 21:26:16', '2019-12-09 21:26:16'),
(32, 'Ai Là Người Thương Em', 'ailanguoithuongem.jpg', 17, 4, 19, 'Người con gái anh từng yêu sao rồi?\r\nCó một mình đi dưới mưa lúc buồn?\r\nLệ còn rơi khi ngồi xem thước phim buồn?\r\nÔm thật chặt vào ai khóc như đứa trẻ?\r\n\r\nNgười con gái anh từng yêu quên rồi\r\nCó những chiều tay nắm tay ngóng đợi\r\nHoàng hôn xuống ta kề vai nói những lời\r\nRằng đôi ta sẽ chỉ cần nhau thôi\r\nHà ha ha ha há ha hà ha\r\nCô gái anh yêu hay quan tâm anh và nhắc anh bao điều\r\nEm thích hoa hồng và mùa đông được anh ôm phía sau lưng\r\nEm nói bên anh qua bao nơi em cảm thấy rất nhẹ nhàng\r\nVậy giờ ai là người cho em yên bình?\r\n\r\nEm muốn xa anh khi yêu thương đang gìn giữ vẫn an lành\r\nXóa những hi vọng một tình yêu và hai trái tim xanh\r\nQuên hết bao năm đi bên em anh thật không thể làm được\r\nNgười mình thương giờ chẳng nhớ tên quen thuộc\r\nNgười mình thương giờ chẳng nhớ tên anh rồi', 'Thanh Hưng', 'Ai-La-Nguoi-Thuong-Em-Quan-A-P.mp3', NULL, '2019-12-09 21:27:42', '2019-12-09 21:27:42'),
(33, 'Khoảng Cách Đôi Ta', 'khoangcachdoita.jpg', 18, 4, 20, 'Em hỡi thời gian qua\r\nAnh đã không bên em được nhiều hơn\r\nĐể cho đôi chân em lẻ loi , âm thầm bật khóc vì mong nhớ anh\r\nVô tâm nên anh chưa từng nghĩ đến cảm giác trong em như thế nào\r\nĐể rồi đôi vòng tay ấm dần chìm trong giá băng\r\nMong manh yêu thương phai tàn nhanh\r\nAnh biết khoảng cách hai ta đã quá xa rồi\r\nNhư làn mây theo gió bay không còn trông thấy\r\nAnh biết khoảng cách hai ta đã không thể lấp đầy\r\nNhưng dù phút giây anh chưa từng đổi thay\r\n♦ ĐK :\r\nVẫn sẽ mãi yêu em cho dù anh vẫn biết\r\nSẽ không còn đâu yêu thương như lúc ban đầu\r\nAnh nợ em lời xin lỗi\r\nNợ em muôn vàn tiếng cười\r\nSai lầm là anh khiến nước mắt em rơi\r\n\r\nSẽ mãi yêu em cho dù tim đau vỡ nát\r\nSẽ mãi yêu em cho dù qua ngày nắng vàng\r\nNgày mưa hay giông bão ,\r\nNgày dài anh vẫn sẽ mãi chờ\r\nMột lời thứ tha bao ngày qua\r\nNgười yêu ơi', 'Hoàng Tùng Anh', 'Khoang-Cach-Doi-Ta-Chau-Khai-Phong.mp3', NULL, '2019-12-09 21:29:07', '2019-12-09 21:29:07'),
(34, 'Bên Nhau Thật Khó', 'benhauthatkho.jpg', 18, 4, 20, 'Hôm nay cũng như bao ngày đã qua, nhưng em bây giờ ở một nơi xa.\r\nTừ ngày chúng ta chúng ta chấp nhận cuộc sống không có nhau.\r\nEm thế nào, cùng ai về sau?\r\n \r\nQuen em đã lâu khi trong chiều gió nhẹ nhàng.\r\nMuộn màng gặp em muộn màng yêu em.\r\nCứ ngỡ là, duyên số mà.\r\nNhững yêu thương mang đến cho ta.\r\nGiờ con phố thấy anh lặng sống nhạt nhoà.\r\n \r\nChorus\r\n \r\nĐã có những cố gắng mình tìm thấy nhau.\r\nCứ phút chốc tan biến ta rời xa rất lâu\r\nNếu duyên kiếp không muốn .\r\nAnh có em vậy mình không giữ hy vọng.\r\nĐể chờ ai!!!\r\n \r\nHãy cứ bước đi nhé em đừng buồn cho anh.\r\nSống với ký ức một mình không có\r\nEm bên mình!!! \r\nCó lẽ là điều rất buồn\r\nNhưng tình yêu nào phải đến từ một người', 'Châu Khải Phong', 'Ben-Nhau-That-Kho-Chau-Khai-Phong-Khang-Viet.mp3', NULL, '2019-12-09 21:31:08', '2019-12-09 21:31:08'),
(35, 'Xin Đừng Cách Xa', 'xindungcachxa.jpg', 18, 2, 21, 'Em có biết rằng trái tim anh vẫn luôn yêu em, mong em từng ngày\r\nEm có biết rằng ở cuối chân trời xa kia chỉ có anh vẫn luôn chờ em\r\nAnh có biết không ở nơi đây em đang buồn lắm\r\nAnh có biết không chính nơi đây em đã khóc vì anh.\r\nBao đêm xót xa, gọi thầm tên em trong mưa lạnh giá\r\nNuốt hết những đắng cay, khiến trái tim anh nhói đau từng ngày.\r\nBao nhiêu lời yêu thương bay theo cùng cơn gió\r\nĐã mãi xa rồi tựa như những chiếc lá mong manh\r\nAnh yêu giờ đang nơi đâu có nhớ đến em không\r\nChỉ còn mình em ngồi đây khóc trong mưa.\r\nĐK:\r\nĐừng bỏ mặc em nơi đây một mình\r\nĐừng bỏ mặc em bơ vơ trong sầu nhớ\r\nĐừng để nước mắt em rơi trong vô vọng\r\nĐừng làm tim em thêm nhói đau vì anh.\r\nĐừng để thời gian xóa hết những kỉ niệm\r\nĐừng để khoảng cách chia đôi duyên tình ta\r\nMặc dù thế giới dẫu có những thay đổi\r\nThì tình yêu em vẫn mãi trao về anh.\r\n* Anh sẽ không rời xa em, yêu mãi chỉ mình em thôi\r\nNgười yêu ơi, em biết chăng anh ở nơi đây cô đơn lạnh giá *', 'Ngọc Thúy', 'xindungcachxa.jpg', NULL, '2019-12-09 21:32:54', '2019-12-09 21:32:54'),
(36, 'Ngắm Hoa Lệ Rơi', 'ngamhoaleroi.png', 18, 3, 21, 'Dẫu biết đôi ta đã từng trãi qua bao nhiêu năm thiết tha yêu như vậy mà.. bây giờ lại xa lạ.. \r\nCon đường tình giờ anh một mình đành lặng thinh, nhìn em bước về tay câm tay vui đùa cùng với ai.. \r\nÁnh mắt đôi môi ta đã trót trao nhưng tại sao đến hôm nay lúc hiện tại.. \r\nEm đã không còn được nhẫn nại, bên cạnh người tình mới em đã quên rồi, để anh khoác lên thân mình màu đơn côi \r\n\r\nDK : \r\nTa đã từng hứa yêu nhau đến muôn đời sau.. \r\nAnh vẫn luôn khắc sâu nhưng hôm nay ân tình phai màu \r\nCòn gì nữa đâu và đừng buông lơi những câu \r\nTa phải xa rời nhau như hoa kìa dần úa màu.. \r\n\r\nTrong lòng buồn mỗi khi anh ngắm hoa nhưng dòng lệ rơi.. \r\nEm giờ đang khác đi anh biết sẽ chắc chắn không còn cơ hội.. \r\nĐành vậy thế thôi, ân tình nay vỡ đôi.. \r\nAnh chúc em luôn nở nụ cười yên vui..', 'Duy Cường', 'Ngam-Hoa-Le-Roi-Chau-Khai-Phong.mp3', NULL, '2019-12-09 21:34:49', '2019-12-09 21:34:49'),
(37, 'Yêu Người Như Anh', 'yenguoinhuanh.jpg', 19, 5, 22, 'Ghé bên tim em, để nói cho em nghe\r\nTại vì cứ đi xa xôi, trở về đúng ngay em thôi\r\nKhoác vai em yêu vào ngày lạnh buốt hay đôi tay…\r\nCứ tung tăng ca, mình cùng nhảy múa trong cơn say\r\n \r\nChẳng sợ ngoài kia người ta có nói bất cứ điều gì\r\nTrái đất thì vẫn cứ xoay đôi ta vẫn cứ yêu đi\r\nĐêm nay nhờ ông trăng sáng chứng giám yêu thương đôi mình\r\nBao nhiêu vì sao trên cao anh vẫn dám hái cho em\r\nNếu em yêu anh, là lựa chọn đúng nên không sai\r\nNếu em không tin thì làm cam kết ngay hôm nay\r\nBiết em cô đơn, kề cạnh từ sáng cho tới khuya\r\nVì sợ không anh, ai sẽ yêu em đây\r\n \r\nEm nên yêu một người như anh x 4\r\nRap: (Bảo – Bray)\r\nEm nên yêu một người như anh, vì sẽ không ai yêu người như anh\r\nĐời này phủ lên bao nhiêu hào nhoáng nhưng trong nụ cười của em vẫn lạnh\r\nNên em hãy yêu một người như anh, đặt tất cả em có vào anh\r\nNhớ đến anh mỗi khi em nào cần thiết cần có bờ vai nào đó bên cạnh\r\nEm ơi…vì cứu lấy một mạng người, còn xây 7 tháp phù đồ\r\nEm hãy cứu lấy kẻ phàm phu này nếu con tim em còn đủ chỗ\r\nVì anh còn biết phải đi về đâu, khi mỗi bước chân không còn nghĩa lý\r\nAnh đi về đâu, khi niềm vui và em có cùng một địa chỉ\r\nAnh chỉ là kẻ mang theo hành lý, là những giai điệu\r\nđược tái chế từ những tâm sự anh đeo nặng ký\r\nAnh là cát bụi là đá là sỏi, không phải thảm trải bước chân em đi\r\nNên có quá khó, để em yêu một người như anh không cần phải nghĩ ?\r\n \r\nVer 2 : (Đạt)\r\nChẳng sợ ngoài kia người ta có nói bất cứ điều gì\r\nTrái đất thì vẫn cứ xoay đôi ta vẫn cứ yêu đi\r\nĐêm nay nhờ ông trăng sáng chứng giám yêu thương đôi mình\r\nBao nhiêu vì sao trên cao anh vẫn dám hái cho em\r\n \r\nNếu em yêu anh, là lựa chọn đúng nên không sai\r\nNếu em không tin thì làm cam kết ngay hôm nay\r\nBiết em cô đơn, kề cạnh từ sáng cho tới khuya\r\nVì sợ không anh, ai sẽ yêu em đây…\r\nNếu em yêu anh, là lựa chọn đúng nên không sai\r\nNếu em không tin thì làm cam kết ngay hôm nay\r\nBiết em cô đơn, kề cạnh từ sáng cho tới khuya\r\nVì sợ không anh, ai sẽ yêu em đây\r\n \r\nEm nên yêu một người như anh x 4', 'Đạt G', 'Yeu-Nguoi-Nhu-Anh-Ca-Chon-Anh-Dung-Di-OST-B-Ray-Dat-G-Masew.mp3', NULL, '2019-12-09 21:36:08', '2019-12-09 21:36:08'),
(38, 'Buồn Không Em', 'buonkhongem.jpg', 19, 3, 22, 'Còn buồn không em,sao đêm về lặng im một mình \r\nChuyện buồn qua chưa? \r\nĐừng khóc nữa nước mắt không thừa \r\nVài giọt tuôn rơi cũng đủ làm tan nát bầu trời \r\nKhông nói nên lời cứ im lặng âm thầm ôm đau \r\n\r\nGiờ ngủ chưa em,mắt đã thâm bờ môi khô rồi \r\nChuyện cũ chưa qua, lòng em đau như cắt ai ngờ \r\nĐừng gọi tên nhau những đêm mưa bão tố như vậy \r\nĐâu biết xa là nhớ nhau nhiều \r\n\r\nEm ơi bình yên là ở cạnh bên anh hay là ở nơi đâu \r\nNiềm vui em trao hết ai còn phần anh nước mắt \r\nĐêm nay môi mắt không có còn cho nhau như những phút ban đầu \r\nLạnh câm còn hơn gió đông kia đang thay mùa \r\n\r\nNgoài trời mưa đổ bao nhiêu hạt mưa lòng anh khóc thay để bớt đau lòng \r\nEm ơi, nước mắt không nhiều không giống như mưa ngoài kia \r\nEm hãy ở lại, anh xin em hãy ở lại \r\nCho anh bình yên một chút để thấy mặt trời \r\n\r\noh oh oh oh oh \r\noh oh oh oh oh \r\noh oh oh oh \r\noh oh oh oh \r\nỞ phía xa chân trời,hãy nhớ anh bên đời \r\nĐừng khóc, nếu cô đơn ôm lấy mình!!!', 'Đạt G', 'Buon-Khong-Em-Dat-G.mp3', NULL, '2019-12-09 21:37:23', '2019-12-09 21:37:23'),
(39, 'Dĩ Vãng Nhạt Nhòa', 'divangnhatnhoa.jpg', 19, 4, 23, 'Chờ người tình lỡ\r\nLà tình đầu gặp gỡ\r\nTình theo dĩ vãng nhạt nhòa \r\nVào mùa trăng đó \r\nNàng từ phương xa về tựa giấc mơ \r\nTình đầu gặp gỡ \r\nRồi trọn đời tình nhớ\r\nTình tha thiết đắm say \r\nÁnh mắt ngây thơ như ru hồn \r\nRũ áo phong sương em thay tình duyên \r\n\r\nLúc đắm đuối em cho rằng\r\nTình ta như ánh trăng rằm \r\nChớ đâu biết đòng đời\r\nNhiều cơn sóng phũ phàng \r\nCho lứa đôi chia phôi đợi chờ \r\nCho nhau mãi thương nhớ \r\nCho đến nay em thuyền đã sang bờ \r\n\r\nBài nhạc tình này đã quá xưa cũ\r\nNhớ day dứt...\r\nNhớ mỏi mòn sao vẫn chưa đủ\r\nBài nhạc này có tiếng kèn\r\nKhông có lời ca\r\nAnh ta khóc hết nước mắt khi cô rời xa\r\nMười ngàn năm có là bao\r\nKhi cô không còn\r\nCho đến già, cho đến chết\r\nCô đơn ôm trọn\r\nNghe tiếng kèn mà lòng buồn\r\nKhông biết tả sao\r\nBuồn hả, anh có cả bao\r\nCho tôi hỏi có ai thấy\r\nNgười tôi yêu không?\r\nCon thuyền không bến\r\nLang thang trên sông\r\nCho tôi hỏi, tôi đánh mất\r\nGiờ tôi tìm đâu?\r\nAnh gói gọn những nỗi nhớ\r\nChôn với niềm đau\r\nEm có về, thì hãy về\r\nĐừng có đi nữa\r\nTim anh hư, đợi một chút\r\nAnh mang đi sửa\r\nNiềm vui anh chính là em\r\nEm đâu biết\r\nAnh câm lặng, anh không nói\r\nKêu tên em miết\r\nEm có về, thì hãy về\r\nĐừng có đi nữa\r\nTim anh hư, đợi một chút\r\nAnh mang đi sửa\r\nNiềm vui anh chính là em\r\nEm đâu biết\r\nAnh câm lặng, anh không nói\r\nKêu tên em miết\r\nAnh kêu tên em.\r\nAnh kêu tên em\r\nAnh kêu tên em...', 'Nhạc Hoa Lời Việt', 'Di-Vang-Nhat-Nhoa-Hoang-Ton-Dat-G-So-Hi.mp3', NULL, '2019-12-09 21:39:05', '2019-12-09 21:39:05'),
(40, 'Buồn Của Anh', 'buoncuaanh.jpg', 19, 3, 23, 'Hai tay anh ôm xương rồng rất đau\r\nĐôi vai anh mang nỗi buồn rất lâu\r\nChân anh lang thang kiếm em ở khắp chốn\r\nNước mắt trào, biết em giờ ở nơi đâu?\r\nĐôi khi cô đơn giết anh từng cơn, em hỡi\r\nBao nhiêu nước mắt để đôi bình yên bên em,\r\nSao bao lâu quen tối nay mình anh lê bước \r\nAnh ước gì cánh tay mình đừng buông ra .\r\n\r\nĐK:\r\nChạy theo em ở phương trời xa lắm em ơi, người ơi, tình ơi! \r\nChạy đi đâu để có niềm vui vùi chôn nỗi buồn.\r\nHạ sang thu còn chưa kịp thay lá kia sao lòng em vội thay,\r\nAnh ngỡ lại để ôm một mình nhớ thương\r\nNgày không em lòng anh thừa đông, giá băng theo chiều tan màu mưa,\r\nMột lần xa vòng tay của em là bao bão lòng\r\nNhìn vào mắt của em giờ đây, khoé mi anh lệ tuôn thầm cay.\r\nAnh rất buồn, nhưng không biết phải làm sao ?\r\n\r\nĐôi khi cô đơn, giết anh từng cơn. Em hỡi!\r\nBao nhiêu nước mắt để đổi bình yên bên em\r\nSao bao lâu quên tối nay mình anh lê bước \r\nAnh ước gì cánh tay mình đừng buông ra .\r\n\r\nĐK:\r\nChạy theo em ở phương trời xa lắm em ơi, người ơi, tình ơi\r\nChạy đi đâu để có niềm vui vùi chôn nỗi buồn.\r\nHạ sang thu còn chưa kịp thay lá-kia sao lòng em vôi thay, \r\nAnh ngỡ lại để ôm một mình nhớ thương\r\nNgày không em lòng anh thừa đông, giá băng theo chiều tan màu mưa,\r\nMột lần xa vòng tay của em là bao bão lòng\r\nNhìn vào mắt của em giờ đây, khoé mi anh lệ tuôn thầm cay\r\nAnh rất buồn nhưng không biết phải làm sao ?﻿', 'Đạt G', 'Buon-Cua-Anh-K-ICM-Mix-K-ICM-Dat-G.mp3', NULL, '2019-12-09 21:41:52', '2019-12-09 21:41:52'),
(41, 'Chạm Đáy Nổi Đau', 'chamdaynoidau.jpg', 20, 5, 24, 'Luôn bên em là tôi... lâu nay không chút thay đổi...\r\nThế nhưng bây giờ em muốn chia tay vì: Tôi vẫn còn trẻ con\r\nBabe! Kajima! Stay here with me! Kajima!\r\nHụt hẫng...\r\nGạt nước mắt nhớ ngày buồn nhất...\r\n \r\nKhông muốn ai thay mình chăm sóc em những ngày tới!\r\nThoáng nghĩ đã đau lòng nhưng trách ai đây ngoài tôi...\r\nEm bước đi nhẹ nhàng... (Em đang xa tôi nhẹ nhàng)\r\nNhưng trong anh bão tố! (Giấu hết bão tố trong tim)\r\n \r\nChorus:\r\nNghẹn câu: \"Em đừng đi nữa...\"\r\nNhưng tại môi mím chặt chẳng thể một lần nói ra...\r\nChẳng ai có thể chỉ một ngày mà tốt hơn\r\nChẳng lầm lỗi nào chỉ một giây mà xóa mờ\r\nMình không thể lâu dài, chỉ vì tôi ngây ngô!\r\n(Ngốc nghếch nên tình thơ mới chết \r\nVô vọng trong bóng tối mình tôi)\r\n\r\nThời gian sẽ minh chứng tất cả \r\nVà cũng có thể ngoảnh đi bỏ mặc chúng ta..\r\nNgón tay ấy buông xuôi vì chẳng cần tôi ở bên\r\nĐã từ chối cơ hội để đợi tôi vững vàng\r\nNgồi khóc giữa cơn mưa, mới thấu đâu là..\r\nChạm đáy của nỗi đau...\r\n \r\nGiang tấu:\r\nNgày cuối ở bên\r\nMôi tôi không thể nuôi can đảm để thốt lên\r\nRời xa vòng tay\r\nEm cho tôi cảm giác nhung nhớ đến thế nào\r\nTừ biệt chưa nói câu chào mà sao muốn bước đi vội?\r\nMới có nhau thôi lại xóa hết những yêu thương rồi?\r\n \r\nBàn tay tôi nắm chặt\r\nNgước lên bầu Trời để nước mắt không tuôn rơi\r\nNgười là ánh sáng dẫn tôi tìm những giấc mơ\r\nGiờ phía trước mịt mù trong bóng tối \r\nNỗi sợ I\'m losing you…\r\n \r\nVer2:\r\nBabe! Kajima! Stay here with me! Kajima!\r\nHụt hẫng...\r\nGạt nước mắt nhớ ngày buồn nhất…\r\nTừ sâu trong lòng\r\nKhông muốn ai thay mình chăm sóc em những ngày tới!\r\nThoáng nghĩ đã đau lòng nhưng trách ai đây ngoài tôi...\r\nEm bước đi nhẹ nhàng... (Em đang xa tôi nhẹ nhàng)\r\nNhưng trong anh bão tố! (Giấu hết bão tố trong tim)\r\n\r\n\r\nChorus cuối:\r\nBabe! Babe! Kajima...\r\nBabe! Babe! Kajima...\r\nMình không thể lâu dài, chỉ vì tôi ngây ngô!\r\n\r\nThời gian sẽ minh chứng tất cả \r\nVà cũng có thể ngoảnh đi bỏ mặc chúng ta..\r\nNgón tay ấy buông xuôi vì chẳng cần tôi ở bên\r\nĐã từ chối cơ hội để đợi tôi vững vàng\r\nNgồi khóc giữa cơn mưa, mới thấu đâu là..\r\nChạm đáy của nỗi đau...\r\n...\r\nKhông muốn ai thay mình chăm sóc em những ngày tới!\r\nThoáng nghĩ đã đau lòng nhưng trách ai đây ngoài tôi...', 'Mr Siro', 'Cham-Day-Noi-Dau-ERIK.mp3', NULL, '2019-12-09 21:43:31', '2019-12-09 21:43:31'),
(42, 'Ghen', 'ghem.jpg', 20, 3, 24, 'Verse 1:\r\n2 giờ sáng, anh gọi em không nhấc máy\r\nKhông một tin nhắn từ tối qua\r\nKhông hề biết em ngủ chưa hay vẫn thức\r\nHay đang ở một nơi rất xa\r\n\r\nPre-chorus 1:\r\n(Ooh ooh ooh) Có lẽ em đang vui bên người khác, trong một vòng tay ấm áp\r\n(Ooh ooh ooh) Có lẽ anh đang say trong ảo giác, từng hờn ghen như bùng cháy lên\r\n\r\nChorus:\r\nBởi vì anh ghen ghen ghen ghen mà\r\nVì anh đang yêu em thôi thôi thôi mà\r\nLà anh đang ghen ghen ghen ghen mà\r\nBởi vì anh đã quá yêu em, quá yêu em (x2)\r\n\r\nVerse 2:\r\n3 giờ sáng, căn phòng khuya đang ấm áp\r\nBỗng dòng tin nhắn chơt lướt qua\r\n“Em ở đâu? Đã ngủ chưa hay vẫn thức?”\r\n “Hay bây giờ đây anh đến nhà?”\r\n\r\nPre-chorus 2:\r\n(Ooh ooh ooh) Có lẽ anh lo âu không cần thiết, chắc điều đấy anh cũng biết\r\n(Ooh ooh ooh) Có lẽ anh đang say trong ảo giác, từng hờn ghen như bùng cháy lên\r\n\r\nBridge:\r\nVì anh quá yêu em, chỉ muốn đến bên em và giữ em cho riêng mình anh\r\nLàm sao để cho em hiểu được trái tim anh, cứ phát điên vì em mà thôi\r\nVà em cũng yêu anh, chỉ muốn đến bên anh để xóa tan bao nhiêu buồn lò\r\n‘Cause I just wanna make you my babe!', 'Khắc Hưng', 'Ghen-Khac-Hung-ERIK-MIN.mp3', NULL, '2019-12-09 21:44:40', '2019-12-09 21:44:40'),
(43, 'Sau Tất Cả', 'sautatca.jpg', 20, 2, 25, 'Sau tất cả mình lại trở về với nhau\r\nTựa như chưa bắt đầu, tựa như ta vừa mới quen\r\nSau tất cả long chẳng hề đổi thay\r\nTừng ngày xa lìa khiến con tim bồi hồi\r\nVà ta lại gần nhau hơn nữa \r\n\r\n[Pre-chorus]\r\nCó những lúc đôi ta giận hờn \r\nThầm trách nhau không một ai nói điều gì\r\nThời gian cứ chậm lại, từng giây phút sao quá dài\r\nĐể khiến anh nhận ra mình cần em hơn\r\n \r\n[Chorus]\r\nTình yêu cứ thế đong đầy trong anh từng ngày\r\nVì quá yêu em nên không thể làm gì khác\r\nChỉ cần ta mãi luôn dành cho nhau những chân thành\r\nMọi khó khan cũng chỉ là thử thách\r\nVì trái tim ta luôn luôn thuộc về nhau \r\n\r\nSau tất cả mình lại chung lối đi\r\nĐoạn đường ta có nhau, bàn tay nắm chặt bấy lâu\r\nSau tất cả mình cùng nhau sẻ chia\r\nMuộn phiền không thể khiến đôi tim nhạt nhòa\r\nVà ta lại gần nhau hơn nữa\r\n \r\n[Pre-chorus]\r\n \r\n[Chorus]\r\n \r\nGiữ chặt bàn tay mình cùng nhau đi hết bao tháng ngày\r\nMọi điều gian khó ta luôn vượt qua\r\nĐể khiến ta nhận ra mình gần nhau hơn\r\n \r\n[Chorus]', 'Khắc Hưng', 'Sau-Tat-Ca-ERIK.mp3', NULL, '2019-12-09 21:45:56', '2019-12-09 21:45:56'),
(44, 'Có Tất Cả Nhưng Thiếu Anh', 'cotatcanhungthieuanh.jpg', 20, 5, 25, 'Anh đang trong từng ngày nhìn em đổi thay \r\nAnh chưa bao giờ nghĩ là nhanh đến vậy\r\nCó những nỗi buồn ... từ ở đâu chẳng một ai muốn nhưng tại sao \r\nMột người nơi nao tự nhiên cướp lấy em đi bằng cách nào \r\nDuyên nợ mình trả hết cho nhau thật vậy sao \r\n\r\nGiọt nước mắt anh rơi hỏi em ơi tại sao ...\r\n\r\nVì yêu , mà anh thấu hiểu , dù em có là gì em chẳng có gì vẫn yêu\r\nTrả lại em , của anh lúc đầu , anh muốn bên em đến lúc em già vẫn là của anh \r\n\r\nVậy Tại sao , tình yêu mà anh đã trao , rồi nỡ còn đi lấy lại trao ai chẳng an phận ở lại \r\nChẳng lẽ , là anh nhìn sai mất rồi , thôi để em lại anh sẽ không phiền làm em nghĩ thêm\r\n\r\nĐến lúc em có tất cả quay lại lại chẳng có anh\r\n\r\nGiang tấu: \r\nNgười còn yêu sẽ chẳng đắn đo\r\nHết yêu thì tìm mọi lý do\r\nCạnh một ai mà chẳng biết sai\r\nLà tự thiêu đi lòng nhẫn nại\r\nTình yêu ... sẽ có những lúc rất sâu ... đậm\r\nLà lúc dễ mắc sai lầm\r\nLạ thay ... đôi khi ra đi chỉ vì ... quá tốt', 'Vương Anh Tú', 'Co-Tat-Ca-Nhung-Thieu-Anh-ERIK.mp3', NULL, '2019-12-09 21:47:18', '2019-12-09 21:47:18'),
(45, 'Một Bước Yêu Vạn Dặm Đâu', '1buocyeuvandamdau.jpg', 21, 5, 26, '(Intro:\r\nHôm nay... \r\nDành hết lầm lỗi để chia tay\r\nTình ta từ nay vỡ đôi\r\nMột dòng nước mắt lăn chạm qua môi...)\r\n\r\nLời 1:\r\nMột thế giới hư ảo, nhưng thật ấm áp\r\nEm xuất hiện khiến những băng giá đời anh bỗng dần tan đi\r\nCuộc đời anh đặt tên là Muộn Phiền\r\nnên làm sao dám mơ mình may mắn được trọn vẹn cùng em\r\nTa phải xa em mặc kệ nước mắt em rơi\r\nVì những nguyên do cả đời không dám đối diện\r\n\r\nChỉ còn vài gang tấc nhưng lại xa xôi\r\nTình mình tựa đôi đũa lệch đành buông trôi\r\nCầu mong em sẽ sớm quên được tất cả\r\nTìm thấy một người xứng đáng ở bên...\r\n\r\nChorus:\r\nTừ nay duyên kiếp bỏ lại phía sau\r\nNgày và bóng tối chẳng còn khác nhau\r\nChẳng có nơi nào yên bình được như em bên anh\r\n(Tình yêu một lần lỡ bước\r\nlà muôn dặm trường đau thương...)\r\n\r\nHạt mưa bỗng hóa thành màu nỗi đau\r\nTrời như muốn khóc ngày mình mất nhau\r\nCó bao nhiêu đôi ngôn tình, cớ sao lìa xa mình ta?\r\n\r\n(Giang tấu:\r\nLà nhân duyên Trời ban cớ sao mình chẳng thể thành đôi...)\r\n\r\nLời 2:\r\nTại sao quá ngu ngốc bỏ lại mảnh ghép \r\nmà đối với nhau là tất cả còn mình thì vụn vỡ...\r\nThế giới thực tại ồn ào vẫn thấy cô đơn\r\nCòn hai ta thì khác, chỉ nhìn thôi tim đã thấu\r\n\r\nChorus cuối:\r\nTừ nay ranh giới của hai chúng ta là \r\nyêu nhưng không thể nào bước qua\r\nNgọn cỏ ven đường thôi mà làm sao với được mây...\r\n\r\nTừ sau câu giã từ êm ái kia\r\nChẳng cơn bão lớn nào bằng bão lòng..\r\nGặp trong mơ mà cũng không dám gào lên: \"anh thương em...\"', 'Mr Siro', 'Mot-Buoc-Yeu-Van-Dam-Dau-Mr-Siro.mp3', NULL, '2019-12-09 21:48:51', '2019-12-09 21:48:51'),
(46, 'Dưới Những Cơn Mưa', 'duoinhungconmua.jpg', 21, 4, 26, 'Trời trắng xoá màu mưa..\r\nMọi thứ đang lu mờ quá nhanh...\r\nPhố vắng ướt nhoà đã khắc sâu hơn những nỗi buồn....\r\n\r\nNhận ra ngần ấy năm.. em vẫn không thuộc về anh.. \r\nAnh đã có tất cả nhưng ...tim em thì không...\r\nVà những gì đã từng tồn tại giữa hai chúng ta... có lẽ không phải tình yêu em mong đợi\r\n\r\n(Khi ta yêu nhau bao nhiêu người mong tin vui...\r\nNhưng cảm giác mới bất ngờ làm mờ yêu thương...\r\nĐâu ai dám chắc yêu lâu là sẽ mãi mãi\r\nCuộc tình nào rồi cũng phải đớn đau...)\r\n\r\nNgày mà em quyết rời anh, mọi thứ cứ ngỡ vẫn nguyên vẹn... \r\nNhưng thật ra từ sâu trong lòng anh , hy vọng cuối đã tắt...\r\n\r\nChorus:\r\nNếu đang yêu nhau chỉ cần nhìn mưa sẽ nhớ nhau hơn?\r\nThế nhưng sao chia tay lại sợ giọt mưa thấm đẫm cô đơn...\r\nCứ phải nghĩ hoài \"giờ ai kia đang ở đâu và đang vui như thế nào...\"\r\n\r\nCó ai chỉ còn một mình mà không ghét những cơn mưa?\r\nLý do chia tay là gì chẳng còn ý nghĩa cho ai\r\nKhi người ở lại giờ đã mất đi tất cả... \r\n... chỉ muốn tin chính mình...\r\n\r\n(Oh no babe sao em lại mang những cảm xúc sẻ chia với ai...\r\nMang hết những ấm áp xa khỏi nơi tim anh...\r\nHow you feel that I-am breaking up inside\r\nWhen you leave my life,\r\nI get lost in my mind)\r\n\r\nMưa làm đêm dài hơn em biết không?\r\nAnh lại mang ký ức trở về\r\nSao anh không thể nào buông tay để quên được em?\r\n\r\nChorus:\r\nĐã lâu ánh sáng Mặt Trời chẳng còn sưởi ấm nơi đây\r\nKý ức của đôi ta đang chìm dần vào trong góc tối tim anh \r\nChỉ còn đôi lần được mơ thấy ta lúc xưa làm anh thêm nhớ em.\r\nCó ai chỉ còn một mình mà không ghét những cơn mưa?\r\nLý do chia tay là gì chẳng còn ý nghĩa cho ai\r\nKhi người ở lại giờ đã mất đi tất cả... \r\nNhìn mưa tuôn nỗi đau..', 'Mr Siro', 'Duoi-Nhung-Con-Mua-Mr-Siro.mp3', NULL, '2019-12-09 21:53:14', '2019-12-09 21:53:14'),
(47, 'Lắng Nghe Nước Mắt', 'langnghenuocmat.jpg', 21, 5, 27, 'LẮNG NGHE NƯỚC MẮT \r\nSáng tác: Mr.Siro\r\nTrình bày: Mr.Siro\r\nBuổi sáng hôm ấy thấy em chợt khóc\r\nRồi vội vàng lau thật nhanh nước mắt\r\nVẫn biết ta đã sai khi gặp nhau\r\nVì em...đã có...người yêu\r\nGoodbye...I\'m fine...xin đừng bận tâm\r\nĐừng buồn vì những gì ta đã có\r\nAnh biết sẽ vẫn quan tâm nhiều lắm\r\nDù anh...chẳng...là ai\r\n(Em có thể dối anh trong lời nói\r\nNhưng làm sao giấu được trong ánh mắt\r\nTình yêu thì không có sai hoặc đúng\r\nChỉ cần trái tim rung động)\r\nChorus:\r\nNghẹn ngào giây phút ta chấp nhận sống không cần nhau\r\nChẳng khác chi Trái Đất này làm sao tồn tại không có mặt Trời\r\nChỉ biết lặng nhìn em quay lưng bước đi ... lòng anh thắt lại\r\nNghĩ đến mình sẽ không gặp lại...\r\nTình yêu đâu phải ai cũng may mắn tìm được nhau\r\nChẳng giống như chúng ta tìm được nhau rồi lại hoang phí duyên Trời\r\nTại sao phải rời xa nhau mãi mãi\r\nBiết đến khi nào...chúng ta...\r\nNhận ra chẳng thể quên được nhau ...', 'Mr Siro', 'Lang-Nghe-Nuoc-Mat-Mr-Siro.mp3', NULL, '2019-12-09 21:54:24', '2019-12-09 21:54:24'),
(48, 'Càng Níu Giữ Càng Dễ Mất', 'cangniugiucangmat.jpg', 21, 3, 27, 'Intro:\r\nNếu có nơi tôn thờ Tình Yêu Là Tất Cả\r\nSẽ có Chốn Vô Vọng để ta buông mình \r\nSau những tổn thương mãi không thể hàn gắn\r\nLời chia tay nào chẳng ưu sầu\r\nDồn lại bao nhiêu tổn thương, tình yêu gục ngã\r\nĐừng nhìn tôi và hỏi quá nhiều\r\nVì chuyện tình nào cũng tan vậy thôi...\r\nNhiều lần tôi ngỡ mình đã tìm\r\nđược một người say đắm yêu mình\r\nNgờ đâu quên mất điều trớ trêu:\r\n\"Càng níu giữ, ta càng dễ mất\"\r\nCó khi cả cuộc đời, chẳng thể nào may mắn\r\nmãi bên cạnh một người...\r\nChorus:\r\nTình yêu đâu ai biết trước \r\nsẽ bao lần lạc Giữa Hồ Nước Mắt?\r\nNhớ đến nỗi hao gầy, người vẫn nỡ buông tay!\r\nTình yêu mong manh nhất là khi dâng trào!\r\nXóa đi một ký ức tàn nhẫn thế nào..\r\nTừng hơi ấm lỡ trao... giờ vô nghĩa sao?\r\nTình yêu đâu ai biết đã \r\nbên nhau rồi, yên ấm rồi... lạc mãi?\r\nNhững chiếc hôn sơ sài.. người đã.. nhớ thêm ai?\r\nCàng chạy theo, tình yêu càng xa ta dần\r\nBiết không thuộc về nhau càng cố gắng tìm!\r\nChỉ cần chút hy vọng... dù bao cách trở\r\nVì tôi muốn kiếm tìm... Một Người Biết Trân Trọng\r\n(Giang Tấu:\r\nĐừng níu giữ một người vòng tay dần lung lay...\r\nĐừng chạy theo một người chẳng hề biết quay lại...)\r\nChorus cuối:\r\nTình yêu đâu phải suối mát giữa sa mạc\r\nBền lâu đến mấy cũng rẽ ngang\r\nHạnh phúc nào được mãi mãi?\r\nCàng chạy theo, tình yêu càng xa ta dần\r\nBiết không thuộc về nhau càng cố gắng tìm!\r\nChỉ cần chút hy vọng... dù bao cách trở\r\nVì tôi muốn kiếm tìm... Một Người Biết Trân Trọng', 'Mr Siro', 'Cang-Niu-Giu-Cang-De-Mat-Mr-Siro.mp3', NULL, '2019-12-09 21:55:44', '2019-12-09 21:55:44'),
(49, 'Đừng Quên Tên Anh', 'dungquentenanh.jpg', 19, 4, 28, 'Có mấy lúc ta được ngồi lại bên nhau\r\nĐể nói cho em nghe những câu chuyện mà em từng làm cho anh đau.\r\nCố cắn đôi môi để kể lý do tại sao như thế này\r\nTại sao em ngồi nơi đây mà hồn em bay\r\nThế giới bé thôi không to được bằng đôi mắt em\r\nĐừng khóc em ơi ! \r\nHãy để nên vai này anh gánh vác thay\r\nNgày nắng quanh năm chẳng sao mà ngày mưa chỉ một ngày.\r\nChỉ một ngày mưa như thế mà em đã vội buông tay \r\nNgoài kia bao la sóng gió, đừng quên tên anh\r\nĐừng quên đôi môi, ánh mắt hay giọng nói trầm lặng.\r\nVì người đàn ông em yêu mạnh mẽ \r\nVẫn luôn cười mỗi khi đau \r\nNếu yêu thêm người sau thì xin em cũng đừng quên tên anh \r\nVà nên nhớ, ai đã là người vượt qua bao thăng trầm \r\nCùng em đi qua bao khoảnh khắc, để giờ này lại chia tay \r\nĐâu đó phía cuối con đường kia, cứ mỗi đêm trời khuya, nước mắt tuôn rơi hoài', 'Đạt G', 'Dung-Quen-Ten-Anh-Hoa-Vinh.mp3', NULL, '2019-12-09 21:57:07', '2019-12-09 21:57:07'),
(50, 'Ngắm Hoa Lệ Rơi(Cover)', 'ngamhoaleroicover.jpg', 22, 5, 28, 'Dẫu biết đôi ta đã từng trải qua \r\nBao nhiêu năm thiết tha yêu như vậy mà, bây giờ lại xa lạ \r\nCon đường tình giờ anh một mình đành lặng thinh \r\nNhìn em bước về tay cầm tay vui đùa cùng với ai. \r\n\r\nÁnh mắt đôi môi ta đã trót trao \r\nNhưng tại sao đến hôm nay lúc hiện tại \r\nEm đã không còn được nhẫn nại \r\nBên cạnh người tình mới em đã quên rồi \r\nĐể anh khoác lên thân mình màu đơn côi. \r\n\r\n[ĐK:] \r\nTa đã từng hứa yêu nhau đến muôn đời sau \r\nAnh vẫn luôn khắc sâu nhưng hôm nay ân tình phai màu \r\nCòn gì nữa đâu và đành buông lơi những câu \r\nTa phải xa rời nhau như hoa kia dần úa màu. \r\n\r\nTrong lòng buồn mỗi khi anh ngắm hoa những dòng lệ rơi \r\nEm giờ đang khác đi, anh biết chắc chắn sẽ không còn cơ hội \r\nĐành vậy thế thôi, ân tình nay vỡ đôi \r\nAnh chúc em luôn nở nụ cười yên vui.', 'Duy Cường', 'Ngam-Hoa-Le-Roi-Cover-Hoa-Vinh.mp3', NULL, '2019-12-09 21:58:42', '2019-12-09 21:58:42'),
(51, 'Dừng Lại Đây Thôi', 'dunglaidaythoi.jpg', 22, 5, 29, 'Anh nghĩ chúng ta nên dừng lại nơi đây\r\nCố gắng níu kéo chẳng được gì\r\nAnh biết cả hai cũng chẳng còn yêu thương\r\nXa xỉ những lời khiêm nhường\r\nKhi hết yêu nhau chỉ còn lại bóng tối\r\nHai đứa chẳng muốn trao cơ hội\r\nAnh nói đôi câu mình nằm lại bên nhau\r\nNhưng cũng chỉ khiến ta thêm nhức đầu\r\nHôm nay ta sẽ chia tay, anh xin bên em lần cuối\r\nYêu em hơn, quan tâm hơn ngày mai\r\nHai chúng ta sẽ không gặp nhau\r\nSẽ chẳng còn là của nhau\r\nLần đầu anh thấy anh yếu lòng\r\nLần đầu tiên anh thấy em biết trân trọng\r\nVài giọt nước mắt đã rơi ầm thầm\r\nChúng ta đều xấu\r\nRồi cũng đến lúc đưa em về\r\nChạy qua con phố vẫn thường về nhà\r\nChào nhau câu cuối lặng lẽ nhìn nhau\r\nChúng ta dừng lại ở đây thôi', 'Nguyễn Đình Vũ', 'Dung-Lai-Day-Thoi-Hoa-Vinh.mp3', NULL, '2019-12-09 22:00:05', '2019-12-09 22:00:05'),
(52, 'Em, Về Đi Em', 'emvediem.jpg', 22, 3, 29, 'Có con phố thật gần\r\nMà sao bỗng nhiên hôm nay thật xa\r\nRồi cứ mỗi lúc lạnh lùng\r\nLà nơi mất em rơi thêm giọt buồn\r\nNgước lên ngó bầu trời\r\nMùi hương của cơn đau như thế nào\r\nMà nghe thâm tâm khóc than\r\nAnh sai mất rồi\r\nPhía mưa có cầu vồng\r\nTìm ai thế em yêu thương thật lòng\r\nMiệng nói quên hết sạch rồi\r\nMà đau thấu tim gan anh đây này\r\nKhóc không nói thành lời\r\nNgười yêu của anh đâu anh đi tìm\r\nVài giây khi anh nhớ em \r\nMưa đêm thét gào\r\nThật khó để hiểu được mình\r\nTại sao cứ luôn tỏ ra lạnh lùng\r\nNhìn thấy em khóc thật đau không lấy tay lau\r\nGiờ ước nghe thấy nụ cười ngọt ngào của em\r\nMuộn rồi phải không?\r\nNgỡ đâu đó cuộc đời\r\nAnh vẫn nói ngàn lời xin lỗi\r\nCần lắm em hiểu được lòng\r\nVì anh quá yêu đôi khi lạnh lùng\r\nChỉ biết lo lắng lặng im không nói nên câu\r\nGiận dỗi xin hãy trở về \r\nĐừng rời cánh tay buồn phiền đến ngay\r\nGió đêm cứ ồn ào\r\nKhóe mi ướt vài giọt cay cay\r\nPhía mưa có cầu vồng\r\nTìm ai thế em yêu thương thật lòng\r\nĐể nói quên hết sạch rồi\r\nMà đau thấu tim gan anh đây này\r\nKhóc không nói thành lời\r\nNgười yêu của anh đâu anh đi tìm\r\nVài giây khi anh nhớ em \r\nMưa đêm gào thét\r\nThật khó để hiểu được mình\r\nTại sao cứ luôn tỏ ra lạnh lùng\r\nNhìn thấy em khóc thật đau không lấy tay lau\r\nGiờ ước nghe thấy nụ cười ngọt ngào của em\r\nMuộn rồi phải không?\r\nNgỡ đâu đó cuộc đời\r\nAnh vẫn cứ ngàn lời xin lỗi\r\nCần lắm em hiểu được lòng\r\nVì anh quá yêu đôi khi lạnh lùng\r\nChỉ biết lo lắng lặng im không nói nên câu\r\nGiận dỗi xin hãy trở về \r\nĐừng rời cánh tay buồn phiền đến ngay\r\nGió đêm cứ ôn ào\r\nKhóe mi ướt vài giọt cay cay\r\nKhói thuốc lá bay bay\r\nBao tâm sự không nói ai hay\r\nBỏ mặc hết cứ thế em đi\r\nVề đi anh sai rồi\r\nNhấp chén đắng trên môi\r\nNỗi đau này vô thức em ơi\r\nBỏ mặc hết cứ thế em đi\r\nVề đi, anh sai rồi', 'Đạt G', 'Em-Ve-Di-Em-Hoa-Vinh.mp3', NULL, '2019-12-09 22:01:19', '2019-12-09 22:01:19'),
(53, 'Cứ Vô Tư Đi', 'cuvotudi.jpg', 23, 3, 30, 'Sáng thức giấc ôi sao lòng chất ngất\r\nMuộn phiền qua đi chẳng còn lại điều gì\r\nNói chung là sao thấy vui quá\r\nCuộc sống xung quanh bao nhiêu điều thật lạ\r\n\r\nBước xuống phố thênh thang ngày nắng mới\r\nBao niêm vui đến nên thật tuyệt vời \r\nÁnh mắt rạng ngời bờ môi xinh tuyệt vời\r\nLàn da xinh cho ta yêu đời\r\n\r\nÔi trời ơi ngày tháng mình rong chơi\r\nCó những khi đầu tóc cứ rối bời\r\nChẳng phải lo gì cứ vô tư đi\r\nChẳng phải lo nghĩ suy\r\n\r\nHãy cứ vô tư chẳng điều gì phải suy nghĩ\r\nHãy cứ vui đi cho một ngày chẳng phung phí\r\nNói chung cuộc đời chẳng gì tuyệt vời \r\nNên hãy cứ yêu đời\r\n\r\nHãy cứ vô tư chẳng điều gì phải suy nghĩ\r\nHãy cứ quên đi những điều gì làm ta chán chường\r\nHãy luôn mỉm cười với bao mọi người\r\nCuộc sống là biết bao nhiêu điều diệu kỳ', 'Liệu Hưng', 'Cu-Vo-Tu-Di-Huong-Giang.mp3', NULL, '2019-12-09 22:02:38', '2019-12-09 22:02:38'),
(54, 'Anh Ta Bỏ Em Rồi', 'anhtaboemroi.jpg', 23, 5, 30, 'Anh ta bỏ em rồi\r\n\r\nVerse 1\r\nCuối cùng mọi cố gắng đều là vô nghĩa\r\nTình cảm ngần ấy năm có lẽ đến vậy thôi.\r\nAnh đã buông bỏ rồi\r\nDù em yêu anh nhiều đến nỗi\r\nĐánh mất chính bản thân\r\nĐánh mất cả tuổi xuân.\r\n\r\nNgười ta thường nói có lẽ rằng người đến sau\r\nLà người được yêu và được trân trọng nhiều hơn.\r\nEm không thể sánh với người mà\r\nGiờ đây anh xem là tất cả.\r\nTrong tình yêu này em như đã\r\nThua cuộc khi anh chọn cô ta.\r\n\r\nChorus\r\nAnh ta bỏ em rồi, trong một buổi chiều mưa rơi\r\nNhững nỗi buồn, mong cơn mưa hãy cuốn trôi\r\nChẳng sợ ướt vai, vì khi ngoảnh lại\r\nLòng em từ lâu đã ướt đẫm rồi.\r\n\r\nAnh ta bỏ em rồi, nói buông tay là buông thôi\r\nHóa ra người không được yêu nữa chính là\r\nLà người thứ ba của người thứ ba.\r\nEm không thể làm gì khác nữa rồi anh ơi.\r\n\r\nVerse 2\r\nCó phải em yếu mềm nên chẳng giữ nổi\r\nNgười em yêu nhất và mất cả người bạn thân?\r\nKhông thể than trách anh, vì tình yêu đâu nào có lỗi\r\nLỗi của ai thì cũng vậy thôi\r\nBởi giờ đây anh đã thay đổi.\r\n\r\nBridge\r\nKhông tư cách để hỏi anh đang ở đâu đấy\r\nNgười nào hay thấy anh cùng người ấy\r\nLàm tim em đau biết mấy.\r\n\r\nChorus 3\r\nAnh ta bỏ em rồi, kết thúc mọi chuyện thật rồi\r\nSự thật này sao em đối diện được đây?\r\nTừng là tất cả, từng là vô giá\r\nLàm sao có thể nói xa là xa?\r\n\r\nAnh ta bỏ em rồi, nói buông tay là buông thôi\r\nHóa ra người không được yêu nữa chính là\r\nLà người thứ ba của người thứ ba.\r\nEm không thể làm gì khác nữa rồi anh ơi.\r\nVì anh ta bỏ em rồi.', 'RIN9', 'Anh-Ta-Bo-Em-Roi-Huong-Giang.mp3', NULL, '2019-12-09 22:04:10', '2019-12-09 22:04:10'),
(55, 'Anh Đang Ở Đâu Đấy Anh', 'anhdangodaudayanh.jpg', 23, 3, 31, 'Verse 1:\r\nEm, anh, cô ta, chuyện chúng mình\r\nGiờ đây phải làm sao yên vui như ban đầu\r\nNhớ, đau, còn người vui nơi khác\r\nHỏi phải chăng người ta chẳng đếm được ra mình là người thứ ba\r\n\r\nĐK:\r\nAnh đang ở đâu đấy anh\r\nCó hay về em này\r\nAnh chắc đang bận với nơi có tiếng yêu mới\r\nNên anh đâu nào để ý\r\n\r\nAnh đang ở đâu, có trở về không\r\nHay lạc nhau đến muôn đời\r\nNgày nhìn anh ra đi\r\nMưa ngoài trời trắng xóa như nỗi buồn trong em\r\n\r\nVerse 2:\r\nĐếm, mong, con tim sao yếu mềm\r\nVì anh đã vội quên yêu thương lúc ban đầu\r\nMắt, môi, chuyện buồn em che giấu\r\nThấy nhưng em lờ đi, chẳng nói một câu đâu phải chẳng biết được\r\n\r\nĐK:\r\nAnh đang ở đâu đấy anh\r\nCó hay về em này\r\nAnh chắc đang bận với nơi có tiếng yêu mới\r\nNên anh đâu nào để ý\r\n\r\nAnh đang ở đâu, có trở về không\r\nHay lạc nhau đến muôn đời\r\nNgày nhìn anh ra đi\r\nMưa ngoài trời trắng xóa như nỗi buồn trong em\r\n\r\nBridge:\r\nAnh đang ở nơi rất xa\r\nChắc chẳng thể quay về\r\nEm vẫn chờ anh \r\nSao chẳng có điều kì tích\r\n\r\nAnh đang ở đâu đấy anh\r\nCó hay về em này\r\nAnh chắc đang bận với nơi có tiếng yêu mới\r\nNên, nên anh sẽ chẳng về nữa\r\n\r\nAnh đang ở đâu, anh đang ở đâu\r\nTa lạc nhau đến muôn đời rồi\r\nNgày nhìn anh ra đi\r\nMưa ngoài trời trắng xóa như nỗi buồn trong em', 'Andiez', 'Anh-Dang-O-Dau-Day-Anh-Huong-Giang.mp3', NULL, '2019-12-09 22:05:37', '2019-12-09 22:05:37'),
(56, 'Mùa Để Yêu Thương', 'muadeyeuthuong.jpg', 23, 4, 31, 'Em viết một mùa tình yêu, có nắng ấm và có tiếng mưa rơi.\r\nTiếng ve cuối hè kêu, yêu anh, em yêu anh.\r\nEm nâng niu những buổi chiều mùa vàng lá rơi.\r\nCó tiếng mưa rơi đầu mùa, tình yêu ghé qua.\r\nTiếng yêu đầu tiên thật hiền,\r\nTiếng yêu đầu tiên thật đẹp, làm sao.\r\nEm viết trao anh những chiều mộng mơ nên thơ.\r\nCó tiếng mưa rơi đầu mùa tình yêu bay cao.\r\nBiết bao lời yêu ngọt ngào, biết bao tình yêu em dành trao anh.\r\nĐêm nghe tiếng mưa êm đềm, mùa yêu ghé qua.\r\nEm nghe tiếng anh thầm thì gọi tên em nhiều.\r\nEm vui biết bao nhiêu, em muốn anh hiểu.\r\nTình yêu trong em đủ lớn để trao anh.\r\nHạnh phúc sẽ mãi bên anh, giấc mơ sẽ không xa vời.\r\nMưa rơi tí tách ngoài hiên bỗng nhiên thật hiền.\r\nMùa này đã trao anh, và trao anh,\r\nMột cảm giác yêu đương nồng say, đã chắp cánh bay.\r\n\r\nEm viết trao anh những chiều mộng mơ nên thơ.\r\nCó tiếng mưa rơi đầu mùa tình yêu bay cao.\r\nBiết bao lời yêu ngọt ngào, biết bao tình yêu em dành trao anh.\r\nĐêm nghe tiếng mưa êm đềm, mùa yêu ghé qua.\r\nEm nghe tiếng anh thầm thì gọi tên em nhiều.\r\nEm vui biết bao nhiêu, em muốn anh hiểu.\r\nTình yêu trong em đủ lớn để trao anh.\r\nHạnh phúc sẽ mãi bên anh, giấc mơ sẽ không xa vời.\r\nMưa rơi tí tách ngoài hiên bỗng nhiên thật hiền.\r\nMùa này đã trao anh, và trao anh,\r\nMột cảm giác yêu đương nồng say, đã chắp cánh bay.\r\n\r\nĐợi chờ mỗi phút giây được gần bên anh\r\nLà mong có anh cùng em đi chung con đường về.\r\nCó anh đời em ấm áp, từng ngày rất khác,\r\nVà ta sẽ mãi mãi thuộc về nhau.\r\n\r\nĐêm nghe tiếng mưa êm đềm, mùa yêu ghé qua.\r\nEm nghe tiếng anh thầm thì gọi tên em nhiều.\r\nEm vui biết bao nhiêu, em muốn anh hiểu.\r\nTình yêu trong em đủ lớn để trao anh.\r\nHạnh phúc sẽ mãi bên anh, giấc mơ sẽ không xa vời.\r\nMưa rơi tí tách ngoài hiên bỗng nhiên thật hiền.\r\nMùa này đã trao anh, và trao anh,\r\nMột cảm giác yêu đương nồng say, đã chắp cánh bay.', 'Thiên Hạnh', 'Mua-De-Yeu-Thuong-Huong-Giang.mp3', NULL, '2019-12-09 22:06:56', '2019-12-09 22:06:56'),
(57, 'Đã Lỡ Yêu Em Nhiều', 'daloyeuemnhieu.jpg', 24, 2, 32, 'Đã lỡ yêu em nhiều rồi thì anh chỉ biết ngắm mưa\r\nNhìn qua hàng cây được bao nhiêu hạt mưa\r\nLà trong anh được bấy nhiêu nỗi nhớ em\r\nĐã lỡ yêu em nhiều rồi thì anh chỉ biết đếm sao\r\nNhìn lên trời cao được bao nhiêu vì sao\r\nLà trong lòng anh còn bấy nhiêu những nỗi lo\r\nSợ mình đánh mất em khi, thu vừa sang, lá xanh bỗng úa vàng\r\nKhi mưa còn chưa tới, em thay người yêu mới, oh no no\r\nSợ mình sẽ khiến em yêu phai nhạt hơn giữa mênh mông bộn bề..\r\nEm ơi chờ anh với\r\n(Chỉ biết nói cho em nghe vậy thôi..)\r\n\r\nVì đã lỡ yêu em rồi, chẳng dám hứa xa xôi\r\nCứ nhắm mắt em lại và feel my love\r\nDù nắng mưa bao mùa\r\nThì tình anh vẫn luôn đây mà\r\nChẳng phải kiếm đâu xa\r\nVẫn giữ đó bầu trời của riêng chúng ta\r\nĐể gió mang đi về 1 nơi không người..\r\n\r\nĐã lỡ yêu em nhiều rồi thì anh chỉ biết thế thôi\r\nDù mai về sau mình không bên cạnh nhau\r\nDù tim mình đau khi biết em đã lỡ yêu người\r\nĐã lỡ yêu em nhiều rồi thì anh sẽ bất chấp luôn\r\nDù mưa, dù giông, dù sông sâu, biển xa\r\nDù nắng cháy anh cũng không hề lo\r\nChỉ sợ mình đánh mất em khi, thu vừa sang, lá xanh bỗng úa vàng\r\nKhi mưa còn chưa tới, em thay người yêu mới, oh no no\r\nSợ mình sẽ khiến em yêu phai nhạt hơn giữa mênh mông bộn bề\r\nEm ơi chờ anh với\r\n(Chỉ biết nói cho em nghe vậy thôi)\r\n\r\nVì đã lỡ yêu em rồi, chẳng dám hứa xa xôi\r\nCứ nhắm mắt em lại và feel my love\r\nDù nắng mưa bao mùa\r\nThì tình anh vẫn luôn đây mà\r\nChẳng phải kiếm đâu xa\r\nVẫn giữ đó bầu trời của riêng chúng ta\r\nĐể gió mang đi về 1 nơi không người\r\n\r\nĐã lỡ yêu..nah nah nah\r\nU know, oh lỡ yêu…nah nah nah\r\nI love you so, bei I love you so\r\nMình phải bước chậm lại vì ngày mai rất dài\r\nĐã lỡ yêu..nah nah nah\r\nU know, oh lỡ yêu…nah nah nah\r\nI love you so, bei I love you so\r\nMình phải bước chậm lại, chậm lại..\r\n\r\nVì biết đâu, sớm mai thức dậy\r\nEm không còn đây ôm anh, nhẹ hôn anh\r\nĐể tình ta cứ trôi lững lờ\r\nChờ giông và bão cuốn đi bất ngờ\r\nRồi lỡ đâu, giấc mơ không thành\r\nEm không còn kề vai anh, tình mong manh\r\n1 người đứng cứ trông với chờ, người kia thì ôm giấc mơ.. \r\n\r\nVì đã lỡ yêu em rồi, chẳng dám hứa xa xôi\r\n(Chẳng dám hứa thêm gì nữa no no no no no)\r\nCứ nhắm mắt em lại và feel my love\r\n(Can you feel my love, love bei?)\r\n(Dù cho bao mùa anh vẫn sẽ đây)\r\nChẳng phải kiếm đâu xa\r\n(I love you so\r\nLove you so\r\nLove you so\r\nI love you so..)\r\nĐã lỡ yêu..vì 1 người lỡ yêu, lỡ yêu..', 'Justatee', 'Da-Lo-Yeu-Em-Nhieu-JustaTee.mp3', NULL, '2019-12-09 22:08:30', '2019-12-09 22:08:30'),
(58, 'Thằng Điên', 'thangdien.jpg', 24, 5, 32, 'Giờ tôi lại lang thang \r\nTình yêu thì miên man\r\nNgày xanh cùng mây tung tăng tựa mình bên phím đàn\r\nNhìn em mình ngơ ngác\r\nLòng anh chợt hơi khác\r\nTình yêu này đến đúng lúc thấy ánh sáng vụt qua\r\nNụ cười tỏa hương nắng\r\nBình minh và mây trắng\r\nHình như đều kêu tôi \"ôi thôi tình yêu đến rồi!\"\r\nChẳng ai phải thắc mắc\r\nCòn tôi thì đã chắc\r\nNàng ơi nàng hãy đến chiếm lấy tâm hồn tôi\r\n\r\nMỉm cười lòng chợt bâng khuâng tôi chẳng biết mơ hay thật\r\nĐợi chờ dù ngày hay đêm anh chỉ cần nghĩ cũng thấy vui..\r\n\r\nI\'m in love \r\nMàu nắng cuốn lấp chân mây mờ xa\r\nI\'m in love \r\nThành phố chỉ thấy mỗi riêng mình ta\r\nI\'m in love \r\nTựa đầu bên tình yêu mới thiết tha\r\nChỉ Crazy man fall in love \r\nI\'m in love \r\nHạnh phúc chỉ hết khi anh ngừng mơ\r\nI\'m in love \r\nCuộc sống vốn dĩ trôi như vần thơ\r\nI\'m in love \r\nNgả lưng bên cành cây lá xác xơ \r\nMờ sương đưa tay anh ôm lấy em..\r\nDẫu biết chỉ là mơ.. Dẫu biết chỉ là mơ \r\n\"Crazy man fall in love..\"\r\n\r\nChơi vơi nơi mà loài người nhìn anh phiêu (như thằng điên)\r\nUh thì đâu ai muốn là người bình thường khi yêu (yêu thằng điên)\r\nAnh đang mơ màng về bầu trời đầy trăng với sao, em như cô tiên, mình ca múa như 2 con điên trên đồi thảo nguyên (là la lá)\r\nHere we are...em như Beyoncé hát hát\r\nHere we are...anh như Jay-Z đang rap, rap về từng ngày nắng, về từng ngày gió, về từng ngày tháng có em\r\nBut i don\'t know who you are..\r\n\r\nMỉm cười lòng chợt bâng khuâng tôi chẳng biết mơ hay thật\r\nĐợi chờ dù ngày hay đêm anh chỉ cần nghĩ cũng thấy vui ..\r\n\r\nI\'m in love \r\nMàu nắng cuốn lấp chân mây mờ xa\r\nI\'m in love \r\nThành phố chỉ thấy mỗi riêng mình ta\r\nI\'m in love \r\nTựa đầu bên tình yêu mới thiết tha\r\nChỉ Crazy man fall in love \r\nI\'m in love \r\nHạnh phúc chỉ hết khi anh ngừng mơ\r\nI\'m in love \r\nCuộc sống vốn dĩ trôi như vần thơ\r\nI\'m in love \r\nNgả lưng bên cành cây lá xác xơ \r\nMờ sương đưa tay anh ôm lấy em..\r\nDẫu biết chỉ là mơ..\r\n\r\nWake up, i\'m wake up\r\nThu sang rồi, em thấy không\r\nEm đi rồi, anh cứ mong chờ\r\nWake up, and wake up\r\nTiếng vỡ tan cơn mê màng\r\nĐánh thức nơi thiên đàng anh mơ.. \r\nNơi thiên đàng anh mơ..\r\nNơi có em là yên bình, anh mãi như thằng si tình\r\nDù đôi chân anh đi mòn lối vẫn mãi không về nơi em...\r\n\r\nI\'m in love \r\nMàu nắng cuốn lấp chân mây mờ xa\r\nI\'m in love \r\nThành phố chỉ thấy mỗi riêng mình ta\r\nI\'m in love \r\nTựa đầu bên tình yêu mới thiết tha\r\nChỉ Crazy man fall in love \r\nI\'m in love \r\nHạnh phúc chỉ hết khi anh ngừng mơ\r\nI\'m in love \r\nCuộc sống vốn dĩ trôi như vần thơ\r\nI\'m in love \r\nNgả lưng bên cành cây lá xác xơ \r\nMờ sương đưa tay anh ôm lấy em..\r\nDẫu biết chỉ là mơ..\r\n\r\nBỏ quên thế giới\r\nMặc chiếc áo mới\r\nNgồi chờ em tới\r\nMưa rơi..\r\n\r\nBỏ quên thế giới\r\nMặc chiếc áo mới\r\nNgồi chờ em tới\r\nMưa rơi..\r\n..Chỉ crazy man fall in love..', 'Viruss, Justatee', 'Thang-Dien-JustaTee-Phuong-Ly.mp3', NULL, '2019-12-09 22:09:56', '2019-12-09 22:09:56'),
(59, 'Duyên Phận', 'duyenphan.jpg', 25, 10, 33, 'Phận là con gái, chưa một lần yêu ai\r\nNhìn về tương lai mà thấy như sông rộng đường dài\r\nCảnh nhà neo đơn, bầy em chưa lớn trĩu đôi vai gánh nhọc nhằn\r\nThầy mẹ thương em nhờ tìm người se duyên\r\nLòng cầu mong em đậu bến cho yên một bóng thuyền\r\nLứa đôi tình duyên còn chưa lưu luyến\r\nSợ người ta đến em khóc sau bao lời khuyên\r\n\r\nChưa yêu lần nao biết ra làm sao\r\nBiết trong tình yêu như thế nào\r\nSông sâu là bao nào đo được đâu\r\nLòng người ta ai biết có dài lâu\r\nQua bao thời gian sống trong bình an\r\nLỡ yêu người ta gieo trái ngang\r\nNông sâu tùy sông làm sao mà trông\r\nChưa đổ bến biết nơi nào đục trong\r\n\r\nRồi người ta đến theo họ hàng đôi bên\r\nMột ngày nên duyên một bước em nên người vợ hiền\r\nBỏ lại sau lưng bầy em ngơ ngác đứng trông theo mắt đượm buồn\r\nThầy mẹ vui hơn mà lệ tràn rưng rưng\r\nDặn dò con yêu phải sống theo gia đạo bên chồng\r\nBước qua dòng sông hỏi từng con sóng\r\nĐời người con gái không muốn yêu ai được không???', 'Thái Thịnh', 'Duyen-Phan-Duong-Hong-Loan.mp3', NULL, '2019-12-09 22:11:26', '2019-12-09 22:11:26'),
(60, 'Áo Mới Cà Mau', 'aomoicamau.jpg', 25, 11, 33, 'Nghe nói Cà Mau xa lắm, ở cuối cùng bản đồ Việt Nam. Ngại chi đường xa không tới, về để nói với nhau mấy lời.\r\nXuôi máy chèo sông ông Đốc, đêm trắng kịp tới chợ Cà Mau, xuồng ghe ngày đêm không ngớt, người Cà Mau dễ thương vô cùng.\r\nVề Cái Nước, Đầm Dơi, nghe ai ru câu ơi hời, thương em đừng để duyên lỡ thời, tội nghiệp ghê nghe sắc se con tim tôi. Chừng nào về Năm Căn, nhớ nhau qua lại cũng gần, một lần về U Minh, nghe muỗi kêu nhớ rừng Cà Mau.\r\nMai mốt Cà Mau em lớn, tuy út mà \"sửa soạn\" đẹp hơn, Cà Mau đường đi không khó, mà chỉ khó có sông vắng đò.\r\nEm đứng mình ên một hướng, duyên dáng mời khách lạ ngàn phương, Cà Mau mặc thêm áo mới, về Cà Mau là thấy thương em rồi.\r\n\r\n\r\nNghe nói Cà Mau xa lắm, ở cuối cùng bản đồ Việt Nam. Ngại chi đường xa không tới, về để nói với nhau mấy lời.\r\nXuôi máy chèo sông ông Đốc, đêm trắng kịp tới chợ Cà Mau, xuồng ghe ngày đêm không ngớt, người Cà Mau dễ thương vô cùng.\r\nVề Cái Nước, Đầm Dơi, nghe ai ru câu ơi hời, thương em đừng để duyên lỡ thời, tội nghiệp ghê nghe sắc se con tim tôi. Chừng nào về Năm Căn, nhớ nhau qua lại cũng gần, một lần về U Minh, nghe muỗi kêu nhớ rừng Cà Mau.\r\nMai mốt Cà Mau em lớn, tuy út mà \"sửa soạn\" đẹp hơn, Cà Mau đường đi không khó, mà chỉ khó có sông vắng đò.\r\nEm đứng mình ên một hướng, duyên dáng mời khách lạ ngàn phương, Cà Mau mặc thêm áo mới, về Cà Mau là thấy thương em rồi.', 'Thanh Sơn', 'Ao-Moi-Ca-Mau-Duong-Hong-Loan.mp3', NULL, '2019-12-09 22:12:33', '2019-12-09 22:12:33'),
(61, 'Anh Nhà Ở Đâu Thế?', 'anhnhadauthe.jpg', 26, 5, 35, '[Verse 1]\r\nAnh và tôi thật ra gặp nhau và quen nhau cũng đã được mấy năm\r\nMà chẳng có chi hơn lời hỏi thăm\r\nRằng giờ này đã ăn sáng chưa?\r\nỞ bên đấy nắng hay mưa?\r\n\r\nAnh và tôi thật ra MmMmm mải mê nhìn lén nhau\r\nVà không một ai nói nên câu\r\nRằng người ơi tôi đang nhớ anh\r\nVà anh có nhớ tôi không?\r\n\r\n[Pre-chorus]\r\nTôi... từ lâu đã thích anh rồi\r\nChỉ mong hai ta thành đôi\r\n\r\n[Chorus]\r\nAnh nhà ở đâu thế?\r\nCứ tới lui trong tim tôi chẳng nhớ đường về ah\r\nCứ khiến cho tôi ngày đêm phải khóc rồi cười vì nhớ một người\r\nKhiến trái tim tôi lâu nay tương tư về anh đấy\r\nChỉ muốn anh có thể nghe được hết tâm tư này\r\nNhưng lại sợ anh từ chối\r\nMuốn nói rồi lại thôi..\r\nNên anh và tôi vẫn thế \r\n\r\n[Hook]\r\nHooh hooh hooh hooh x3\r\nHey anh nhà ở đâu thế?\r\n\r\n[Rap]\r\nSau đêm đầu tiên anh xin lật bài, thì liệu đó có quá là điên, \r\nKhi anh đã soi em là của anh, như một nhà tiên tri\r\nHey cho anh hỏi em có bao giờ yêu một người từ cái nhìn đầu tiên? \r\nVì hình như là anh đã yêu em trước khi mà anh biết em tên gì.\r\nVậy thì, em cho anh hỏi em nhà ở đâu?\r\nĐôi mắt là cửa sổ tâm hồn thì cho anh lẻn leo vào được không?\r\nAnh không muốn cưa em đổ, vì nhìn em ngã thấy thương quá đi,\r\nEm nói “anh chó quá à”,\r\nAnh nói “em xương quá đi.”\r\n\r\n[Pre-chorus]\r\nTôi... từ lâu đã thích anh rồi\r\nChỉ mong hai ta thành đôi\r\n\r\n[Chorus]\r\nAnh nhà ở đâu thế?\r\nCứ tới lui trong tim tôi chẳng nhớ đường về ah\r\nCứ khiến cho tôi ngày đêm phải khóc rồi cười vì nhớ một người\r\nKhiến trái tim tôi lâu nay tương tư về anh đấy\r\nChỉ muốn anh có thể nghe được hết tâm tư này\r\nNhưng lại sợ anh từ chối\r\nMuốn nói rồi lại thôi..\r\nNên anh và tôi vẫn thế \r\n\r\n[Bridge]\r\nẤp úng mấy câu thương nhau nhưng không nói gì\r\nNên anh và tôi vẫn thế\r\nVẫn chẳng thể đi bên nhau cùng chung lối về\r\nThật buồn ghê..\r\n\r\n[Hook]\r\nHooh hooh hooh hooh x3\r\nNên bây giờ tôi vẫn ế\r\nHooh hooh hooh hooh x3\r\nHey anh nhà ở đâu thế ?!', 'LyLy', 'Anh-Nha-O-Dau-The-AMEE-B-Ray.mp3', NULL, '2019-12-09 22:14:28', '2019-12-09 22:14:28'),
(62, 'Trời Giấu Trời Mang Đi', 'troigiautroimangdi.jpg', 26, 4, 35, '[Verse 1]\r\nSương mờ che khuất đồi\r\nĐêm nào em cũng ngồi \r\nLúc xa anh em thật sự chỉ nhớ mãi thôi\r\n\r\nTuy rằng mới bắt đầu\r\nTình yêu này như phép màu\r\nCứ cho là vì mình chỉ mới nói hẹn hò thôi\r\n\r\nNhưng vì anh quá tuyệt !\r\nNhìn đâu thì em cũng duyệt\r\nCứ như đôi mình nợ nhau từ lâu quá nhiều\r\nĐâu phải ai cũng hiểu, rằng khi mình nhớ quá nhiều\r\nChẳng thể tập trung làm điều gì hết nữa\r\n\r\n[Chorus]\r\nXa là sẽ nhớ ngay\r\nXa là khóe mắt cay\r\nXa là chỉ thấy em anh cười đôi mắt lim dim\r\nXa là em sẽ tìm\r\nSẽ nhìn anh cho dù ngày hay đêm\r\nGiá như ngay bây giờ được gặp nhau trước thềm \r\n\r\nThôi thì chỉ ướt mi \r\nDo là nhớ quá đi\r\nChẳng hiểu sao trước kia ông trời lại giấu anh đi\r\nThôi thì chẳng có gì\r\nDo là em yêu nhiều, tại em đó\r\nCứ coi như mây chẳng nhìn lời nói gió bay\r\n\r\n[Verse 2]\r\nDù ai nói\r\nRằng đời này chúng ta thuộc về nhau tình yêu trăng sáng sao băng \r\n\r\nCon đường đầy lá rơi, nơi này mình từng đi \r\nNhưng tiếc là ..*Haiz* \r\nChẳng thấy anh đâu \r\n\r\nDù ai nói \r\nTình anh đây mãi luôn ở bên em chở che mưa nắng bão giông,\r\n\r\nGió lạnh đừng có lo, em ở ngay sau lưng\r\nVẫn biết yêu thương là con tim sẽ nhớ nhung\r\n\r\n[Chorus 2]\r\nXa là sẽ nhớ ngay\r\nXa là khóe mắt cay\r\nXa là chỉ thấy em anh cười đôi mắt lim dim\r\nXa là em sẽ tìm\r\nSẽ nhìn anh cho dù ngày hay đêm\r\nGiá như ngay bây giờ được gặp nhau trước thềm \r\n\r\nThôi thì chỉ ướt mi \r\nDo là nhớ quá đi\r\nChẳng hiểu sao trước kia ông trời lại giấu anh đi\r\nThôi thì chẳng có gì\r\nDo là em yêu nhiều, tại em đó\r\nCứ coi như mây chẳng nhìn lời nói gió bay\r\n\r\n[Chorus 3]\r\nCon đường đầy nắng hoa\r\nMà sao giờ anh đã xa \r\nEm ngồi đây khóc to do trời lại lấy anh đi\r\nYêu là vì những gì\r\nSao phải buông khi chẳng thể rời xa\r\nGió mang cơn mưa về làm lòng ai não nề\r\n\r\nThôi thì chỉ ướt mi \r\nDo là nhớ quá đi\r\nChẳng hiểu sao trước kia ông trời lại giấu anh đi\r\nThôi thì chẳng có gì\r\nDo là em yêu nhiều, tại em đó\r\nCứ coi như mây chẳng nhìn lời nói gió bay', 'Viruss', 'Troi-Giau-Troi-Mang-Di-AMEE-ViruSs.mp3', NULL, '2019-12-09 22:15:43', '2019-12-09 22:15:43');
INSERT INTO `songs` (`id`, `song_name`, `picture`, `artist_id`, `category_id`, `album_id`, `song_lyric`, `composer`, `url`, `mv`, `created_at`, `updated_at`) VALUES
(63, 'Đen Đá Không Đường', 'dendakhongduong.jpg', 26, 5, 34, '[Verse 1]\r\nChiều nay qua quán quen\r\nChẳng biết uống gì, nghĩ nghĩ suy suy\r\nCà phê hay nước cam?\r\nSữa tươi hay trà?\r\nMà thôi mới uống hôm qua\r\nRồi em trông thấy anh\r\nÁnh mắt nụ cười làm em bỗng lười nghĩ suy\r\nThôi! Cho em Đen Đá Không Đường! \r\n\r\n(Còn cho anh ly trà sữa chân trâu đen)\r\n\r\n[Pre-Chorus]\r\nVì em đã gặp anh...\r\nVì em đã gặp anh...\r\n\r\n[Chorus]\r\nAnh chính là đường đấy It’s You Ooh oh\r\nAnh chính là đường đấy It’s You Ooh oh\r\n\r\n[Verse 2]\r\nTrời đang nắng tự dưng lại mưa\r\nMùa đông liệu đã về chưa \r\nHay là anh đã mang mặt trời đi mất\r\nCà phê đắng đắng mà em vẫn khen rằng ngon ngon thật \r\nDù em đây chỉ thích đồ ngọt. Tại sao hả?\r\n\r\n[Pre-Chorus]\r\nVì em đã gặp anh...\r\nVì em đã gặp anh...\r\n\r\n[Chorus]\r\nAnh chính là đường đấy It’s You Ooh oh\r\nAnh chính là đường đấy It’s You Ooh oh\r\n\r\n[Bridge]\r\nNananananana\r\nNananananana\r\nYou’re my sugar sugar Mmm (Ooh it’s you)\r\nSugar sugar\r\nYou’re my sugar sugar (Ooh it’s you)\r\nSugar sugar \r\n\r\n[Chorus x2]\r\nAnh chính là đường đấy It’s You Ooh oh\r\nAnh chính là đường đấy It’s You Ooh oh\r\n\r\nChiều nay qua quán quen..\r\nÁnh mắt nụ cười làm em bỗng lười nghĩ suy\r\nThôi! Cho em Đen Đá Không Đường!', 'LyLy', 'Den-Da-Khong-Duong-AMEE.mp3', NULL, '2019-12-09 22:17:09', '2019-12-09 22:17:09'),
(64, 'Anh Đánh Rơi Người Yêu Này', 'anhdanhroinguoiyeunay.jpg', 26, 5, 34, 'Đêm dài thêm\r\nVới những nhớ nhung ban chiều\r\nKhi người chợt ghé đến\r\nKhiến em mơ mộng\r\nAnh gì ơi anh đánh rơi người yêu này\r\nChẳng biết có gặp lại anh không này?\r\n\r\nVà cứ thế ta vội vàng ngang qua\r\nĐường phố thênh thang như thế\r\nSao em lại chọn trái tim\r\nNày để từng bước lưu lạc vào nơi tim anh\r\nChẳng biết có gặp lại nhau nữa không?\r\nVà thế là em đã biết nhớ thương\r\nTừng chút ngại ngùng vì đó vấn vương\r\nEm tên là gì thế? Cho anh làm quen nhé\r\nMong sao ta cùng chung lối về\r\nTừng bước nhẹ nhàng mình đến với nhau\r\nChẳng thấy xa lạ nào giữa chúng ta\r\nVì giây phút mình tình cờ thấy nhau\r\nTiếng con tim vang lên!\r\n\r\nĐâu ai biết ngày mai thế nào\r\nHay hôm nay gặp ai ra sao\r\nMấy ai tin vào tình yêu\r\nTừ tình cờ thấy nhau trên đường đời\r\nDự báo nói hôm nay có mưa\r\nChẳng biết em có người yêu hay chưa\r\nĐể đón đưa từng ngày\r\nNhớ mong từng ngày\r\nĐể ta tin, yêu từng phút giây này đây\r\nVà thế là em đã biết nhớ thương\r\nTừng chút ngại ngùng vì đó vấn vương\r\nEm tên là gì thế? Cho anh làm quen nhé\r\nMong sao ta cùng chung lối về\r\nTừng bước nhẹ nhàng mình đến với nhau\r\nChẳng thấy xa lạ nào giữa chúng ta\r\nVì giây phút mình tình cờ thấy nhau\r\nTiếng con tim vang lên!\r\nA lot like love, a lot like love\r\nA lot like love, a lot like love\r\nA lot like love\r\n\r\nLại gần hơn, lại gần hơn\r\nLại gần hơn, yeah\r\nVà thế là em đã biết nhớ thương\r\nTừng chút ngại ngùng vì đó vấn vương\r\nEm tên là gì thế? Cho anh làm quen nhé\r\nMong sao ta cùng chung lối về\r\nTừng bước nhẹ nhàng mình đến với nhau\r\nChẳng thấy xa lạ nào giữa chúng ta\r\nVì giây phút mình tình cờ thấy nhau\r\nTiếng con tim vang lên!', 'Andiez', 'Anh-Danh-Roi-Nguoi-Yeu-Nay-That-Tuyet-Voi-Khi-O-Ben-Em-OST-Andiez-AMEE.mp3', NULL, '2019-12-09 22:18:27', '2019-12-09 22:18:27'),
(65, 'Avem', 'avem.jpg', 7, 6, 36, 'I\'m searching for something that I can\'t reach\r\nI don\'t like them innocent\r\nI don\'t want no face fresh\r\nWant them wearing leather\r\nBegging, let me be your taste test\r\nI like the sad eyes, bad guys\r\nMouth full of white lies\r\nKiss me in the corridor\r\nBut quick to tell me goodbye\r\nYou say that you\'re no good for me\r\n\'Cause I\'m always tugging at your sleeve\r\nAnd I swear I hate you when you leave\r\nI like it anyway\r\nMy ghost\r\nWhere\'d you go?\r\nI can\'t find you in the body sleeping next to me\r\nMy ghost\r\nWhere\'d you go?\r\nWhat happened to the soul you used to be?\r\nYou\'re a Rolling Stone boy\r\nNever sleep alone boy\r\nGot a million numbers\r\nAnd they\'re filling up your phone, boy\r\nI\'m off the deep end, sleeping\r\nAll night through the weekend\r\nSaying that I love him but\r\nI know I\'m gonna leave him\r\nYou say…', 'Alan Walker', 'Avem-The-Aviation-Theme-Alan-Walker.mp3', NULL, '2019-12-09 22:43:14', '2019-12-09 22:43:14'),
(66, 'Faded', 'faded.jpg', 7, 6, 36, 'You were the shadow to my life\r\nDid you feel us\r\nAnother start\r\nYou fade away\r\nAfraid our aim is out of sight\r\nWanna see us\r\nAlive\r\nWhere are you now\r\nWhere are you now\r\nWhere are you now\r\nWas it all in my fantasy\r\nWhere are you now\r\nWere you only imaginary\r\nWhere are you now\r\nAtlantis\r\nUnder the sea\r\nUnder the sea\r\nWhere are you now\r\nAnother dream\r\nThe monster\'s running wild inside of me\r\nI\'m faded\r\nI\'m faded\r\nSo lost I\'m faded\r\nI\'m faded\r\nSo lost I\'m faded\r\nThese shallow waters never met\r\nWhat I needed\r\nI\'m letting go\r\nA deeper dive\r\nEternal silence of the sea\r\nI\'m breathing\r\nAlive\r\nWhere are you now\r\nWhere are you now\r\nUnder the bright\r\nBut faded lights\r\nYou set my heart on fire\r\nWhere are you now\r\nWhere are you now\r\nAnother dream\r\nAnother dream\r\nAnother dream\r\nAnother dream\r\nWhere are you now\r\nAtlantis\r\nUnder the sea\r\nUnder the sea\r\nWhere are you now\r\nAnother dream\r\nThe monster\'s running wild inside of me\r\nI\'m faded\r\nI\'m faded\r\nSo lost I\'m faded\r\nI\'m faded\r\nSo lost I\'m faded', 'Alan Walker', 'Faded-AlanWalker-5919763.mp3', NULL, '2019-12-09 22:48:53', '2019-12-09 22:48:53'),
(67, 'Alone', 'alone.jpg', 7, 6, 37, 'Lost in your mind \r\nI wanna know \r\nAm I loosing my mind \r\nNever let me go \r\n\r\nIf this night is not forever \r\nAt least we are together \r\nI know I\'m not alone \r\nI know I\'m not alone \r\n\r\nAnywhere whenever \r\nApart but still together \r\nI know I\'m not alone \r\nI know I\'m not alone \r\nI know I\'m not alone \r\nI know I\'m not alone \r\n\r\nUnconscious mind \r\nI\'m wide awake \r\nWanna feel one last time \r\nTake my pain away \r\n\r\nIf this night is not forever \r\nAt least we are together \r\nI know I\'m not alone \r\nI know I\'m not alone \r\n\r\nAnywhere whenever \r\nApart but still together \r\nI know I\'m not alone \r\nI know I\'m not alone \r\nI know I\'m not alone \r\nI know I\'m not alone \r\n\r\nI\'m not alone, I\'m not alone \r\nI\'m not alone, I know I\'m not alone \r\nI\'m not alone, I\'m not alone \r\nI\'m not alone, I know I\'m not alone', 'Alan Walker', 'Alone - Alan Walker_ Noonie Bao [128kbps_MP3].mp3', NULL, '2019-12-09 22:53:12', '2019-12-09 22:53:12'),
(68, 'On My Way', 'onmyway.jpg', 7, 6, 37, '[Sabrina Carpenter:]\r\nI\'m sorry but\r\nDon\'t wanna talk\r\nI need a moment before I go\r\nIt\'s nothing personal\r\n\r\nI draw the blinds\r\nThey don\'t need to see me crying\r\nCause even if they understand\r\nThey don\'t understand\r\n\r\nSo then when I\'m finished\r\nI\'m all \'bout my business\r\nAnd ready to save the world\r\nI\'m taking my misery\r\nMaking my bitch\r\nCan be everyone\'s favorite girl\r\n\r\nSo take aim and fire away\r\nI\'ve never been so wide awake\r\nNo, nobody but me can keep me safe\r\nAnd I\'m on my way\r\nThe blood moon is on horizon\r\nFire burning in my eyes\r\nNo, nobody but me can keep me safe\r\nAnd I\'m on my way\r\n\r\n[Farruko:]\r\n[?]\r\n\r\n[Sabrina Carpenter:]\r\nSo take aim and fire away\r\nI\'ve never been so wide awake\r\nNo, nobody but me can keep me safe\r\nAnd I\'m on my way\r\nThe blood moon is on horizon\r\nFire burning in my eyes\r\nNo, nobody but me can keep me safe\r\nAnd I\'m on my way\r\n\r\nSo take aim and fire away\r\nI\'ve never been so wide awake\r\nNo, nobody but me can keep me safe\r\nAnd I\'m on my way\r\nThe blood moon is on horizon\r\nFire burning in my eyes\r\nNo, nobody but me can keep me safe\r\nAnd I\'m on my way', 'Alan Walker, Sabrina Carpenter', 'OnMyWay-AlanWalkerSabrinaCarpenterFarruko-5919403.mp3', NULL, '2019-12-09 22:54:44', '2019-12-09 22:54:44'),
(69, 'User To Love', 'usertolove.jpg', 8, 6, 38, 'Walking through the door of this old and lonely\r\nPlace that used to feel like us\r\nRemembering the only thing that made me\r\nFeel like I was worth the love\r\nWe used to hold hands, now I dance alone\r\nWe had Springsteen playing so loud\r\nWe danced in the dark \'til it felt like home\r\nWith you, home was anywhere\r\nBut you will never be left behind\r\nGive me a moment, I need just a little more time\r\nIf I could, I would have made things right\r\nBut we can\'t go back to the way that we used to love\r\nNever apart you\'re still running through my blood\r\nBut we can\'t go back to the way that we used to love\r\nBut we can\'t go back to the way that we used to love\r\nWe can\'t go back to the way that we used to\r\nBe talking through the night, you laying by my side\r\nYou were always there to heal my…', 'Dean Lewis', 'Used To Love You - Gwen Stefani [128kbps_MP3].mp3', NULL, '2019-12-09 22:57:05', '2019-12-09 22:57:05'),
(70, 'So Far Away', 'sofaraway.jpg', 8, 6, 38, '[Verse 1: Jamie Scott]\r\nLight \'em up, light \'em up\r\nTell me where you are, tell me where you are\r\nThe summer nights, the bright lights\r\nAnd the shooting stars, they break my heart\r\n\r\n[Pre-Chorus 1: Jamie Scott]\r\nI\'m calling you now, but you\'re not picking up\r\nYour shadows so close if you are still in love\r\nThen light a match, light a match\r\nBaby, in the dark, show me where you are\r\n\r\n[Chorus: Jamie Scott]\r\nOh, love\r\nHow I miss you every single day when I see you on those streets\r\nOh, love\r\nTell me there\'s a river I can swim that will bring you back to me\r\n\'Cause I don\'t know how to love someone else\r\nI don\'t know how to forget your face\r\nOh, love\r\nGod, I miss you every single day and now you\'re so far away\r\n\r\n[Post-Chorus: Jamie Scott]\r\nSo far away\r\n\r\n[Verse 2: Romy Dya]\r\nIt\'s breaking me, I\'m losing you\r\nWe were far from perfect, but we were worth it\r\nToo many fights, and we cried, but never said we\'re sorry\r\nStop saying you love me\r\n\r\n[Pre-Chorus 2: Romy Dya]\r\nYou\'re calling me now, but I can\'t pick up\r\nYour shadow\'s too close, and I\'m still in love\r\nThe summer\'s over now, but somehow, it still breaks my heart\r\nWe could have had the stars, oh\r\n\r\n[Chorus: Jamie Scott &amp; Romy Dya]\r\nOh, love\r\nHow I miss you every single day when I see you on those streets\r\nOh, love\r\nTell me there\'s a river I can swim that will bring you back to me\r\n\'Cause I don\'t know how to love someone else\r\nI don\'t know how to forget your face\r\nOh, love\r\nGod, I miss you every single day and now you\'re so far away\r\n\r\n[Post-Chorus: Romy Dya &amp; Jamie Scott]\r\nSo far away\r\nSo far away\r\nOh, so far away\r\nSo far away\r\n\r\n[Outro: Romy Dya]\r\nOh, love\r\nHow I miss you every single day when I see you on those streets\r\nOh, love\r\nTell me there\'s a river I can swim that will bring you back to me\r\n\'Cause I don\'t know how to love someone else\r\nI don\'t know how to forget your face\r\nOh, love\r\nGod, I miss you every single day when you\'re so far away', 'Martin Garrix', 'SoFarAway-MartinGarrixDavidGuettaJamieScottRomyDya-5298615.mp3', NULL, '2019-12-09 22:59:18', '2019-12-09 22:59:18'),
(71, 'Dreamer', 'dreamer.jpg', 7, 6, 39, '\'m a dreamer\r\nDon\'t tell me not to dream\r\nI got freedom\r\nAnd that\'s everything to me\r\nIt don\'t matter\r\nWhat I\'ve got or where I go\r\nI\'ll find shelter a million miles from home\r\nIt ain\'t easy to keep going when it\'s hard\r\nKeep shining in the dark\r\nWhen you wanna fall apart\r\nBut I\'m a dreamer\r\nSo don\'t tell me not to dream\r\nI\'m a believer\r\n\r\n[Chorus: Mike Yung]\r\nAs long as I got something to believe in\r\nAs long as I got something to believe in\r\nAs long as I got something to believe in\r\nAs long as I got something to believe in\r\nAs long as I got something to believe in\r\n\r\n[Verse 2: Mike Yung]\r\nI\'m a lover\r\nDon\'t tell me who to love\r\nI\'m a runner\r\n\'Cause I\'ve got somewhere to run\r\nI just listen to the voices in my head\r\nWhen they tell me\r\nI\'ll always have something to believe in\r\n\r\n[Chorus: Mike Yung]\r\nAs long as I got something to believe in\r\nAs long as I got something to believe in\r\nAs long as I got something to believe in\r\nAs long as I got something to believe in\r\n\r\n[Bridge: Mike Yung]\r\nYou got to believe\r\nHey hey\r\nYou got to believe\r\nYou know you got to believe\r\nYou got to believe\r\nI got to believe\r\nYou got to believe in\r\nYou got to believe\r\nYou got to believe\r\nYou got to believe\r\nOoh yeah\r\nYou got to believe\r\nHey hey\r\nYou got to believe in\r\nCome on\r\nOh, you got to, we got to, she got to, he got to\r\nYou got to believe\r\nYou got to believe\r\nYou got to believe in\r\nHey hey\r\nYou got to believe\r\nIn the morning, in the evening\r\nYou got to believe\r\nLate at night to go\r\nYou got to believe\r\nYou got to believe\r\nYou got to believe in\r\nOh yeah\r\n\r\n[Outro: Mike Yung]\r\nI don\'t believe\r\nI don\'t believe\r\nYou got to believe', 'Alan Walker', 'Dreamer-MartinGarrixMikeYung-5755073.mp3', NULL, '2019-12-09 23:02:18', '2019-12-09 23:02:18'),
(72, 'Burn Out', 'burnout.jpg', 8, 6, 39, '[Verse 1]\r\nFlash far, I\'m coming for ya\r\nYou\'re gonna fill me like the summer, like the sun in your eyes\r\nHold tight, another minute\r\nAnother hour, baby, imma\' show you\r\n\r\n[Pre-Chorus]\r\nYou can rely on me\r\nI\'ll give you all you need\r\nIn a small cloud, tryna find ground\r\nIn a place where we belong\r\n\r\n[Chorus]\r\nWe don\'t have to dream to make it beautiful\r\nBaby, everything we do is beautiful\r\nWe can light a fire, watch it everglow\r\nWe won\'t burn out, we won\'t burn out\r\nWe won\'t burn out, we won\'t burn out\r\n\r\n[Post-Chorus]\r\nWe won\'t burn out, we won\'t burn out\r\n\r\n[Verse 2]\r\nWon\'t take a million dollars\r\nFor us to have a kind of love you only see in a dream\r\nWake up, \'cause now you\'re in it\r\nI wanna show you all the magic in the air\r\n\r\n[Pre-Chorus]\r\nAnd tonight is free\r\nIt will be all you need\r\nIn a small cloud, tryna find ground\r\nIn a place where we belong\r\n\r\n[Chorus]\r\nWe don\'t have to dream to make it beautiful\r\nBaby, everything we do is beautiful\r\nWe can light a fire, watch it everglow\r\nWe won\'t burn out, we won\'t burn out\r\nWe won\'t burn out, we won\'t burn out\r\nWe won\'t burn out, we won\'t burn out\r\n\r\n[Post-Chorus]\r\nWe won\'t burn out, we won\'t burn out', 'Dewain Whitmore', 'BurnOut-MartinGarrixJustinMyloDewainWhitmore-5679297.mp3', NULL, '2019-12-09 23:04:35', '2019-12-09 23:04:35'),
(73, 'Havana', 'havana.jpg', 9, 6, 40, 'Hey\r\nHavana, ooh na-na (ay)\r\nHalf of my heart is in Havana, ooh-na-na (ay, ay)\r\nHe took me back to East Atlanta, na-na-na\r\nAll of my heart is in Havana (ay)\r\nThere\'s somethin\' \'bout his manners (uh huh)\r\nHavana, ooh na-na (uh)\r\nHe didn\'t walk up with that \"how you doin\'?\" (uh)\r\n(When he came in the room)\r\nHe said there\'s a lot of girls I can do with (uh)\r\n(But I can\'t without you)\r\nI\'m doin\' forever in a minute (hey)\r\n(That summer night in June)\r\nAnd papa says he got malo in him (uh)\r\nHe got me feelin\' like\r\nOoh-ooh-ooh, I knew it when I met him\r\nI loved him when I left him\r\nGot me feelin\' like\r\nOoh-ooh-ooh, and then I had to tell him\r\nI had to go, oh na-na-na-na-na\r\nHavana, ooh na-na (ay, ay)\r\nHalf of my heart is in Havana, ooh-na-na (ay, ay)\r\nHe took me back to East Atlanta, na-na-na (uh huh)\r\nAll of my heart is in Havana (ay)\r\nMy heart is in Havana (ay)\r\nHavana, ooh na-na\r\nJeffery\r\nJust graduated, fresh on campus, mm\r\nFresh out East Atlanta with no manners, damn\r\nFresh out East Atlanta\r\nBump on her bumper like a traffic jam\r\nHey, I was quick to pay that girl like Uncle Sam (here you go, ay)\r\nBack it on me, shawty cravin\' on me\r\nGet to diggin\' on me (on me)\r\nShe waited on me (then what?)\r\nShawty cakin\' on me, got the bacon on me (wait up)\r\nThis is history in the makin\' on me (on me)\r\nPoint blank, close range, that B\r\nIf it cost a million, that\'s me (that\'s me)\r\nI was gettin\' mula, man they feel me\r\nHavana, ooh na-na (ay, ay)\r\nHalf of my heart is in Havana, ooh-na-na (oh, ay, ay)\r\nHe took me back to East Atlanta, na-na-na (oh no)\r\nAll of my heart is in Havana (ay)\r\nMy heart is in Havana (ay)\r\nHavana, ooh na-na\r\nOoh na-na, oh na-na-na (oo-ooh)\r\nTake me back, back, back like\r\nOoh na-na, oh na-na-na (yeah, babe)\r\nTake me back, back, back like\r\nOoh na-na, oh na-na-na (yea, yeah)\r\nTake me back, back, back like\r\nOoh na-na, oh na-na-na (yea, babe)\r\nTake me back, back, back\r\n(Hey, hey)\r\nOoh-ooh-ooh\r\nOoh-ooh-ooh\r\nTake me back to my Havana\r\nHavana, ooh na-na\r\nHalf of my heart is in Havana, ooh-na-na (oh, yeah)\r\nHe took me back to East Atlanta, na-na-na (ay, ay)\r\nAll of my heart is in Havana\r\nMy heart is in Havana (ay)\r\nHavana, ooh na-na\r\nUh huh\r\nOh na-na-na (oh na, yeah)\r\nOh na-na-na\r\nOh na-na-na\r\nNo, no, no, take me back\r\nOh na-na-na\r\nHavana, ooh na-na', 'Camila Cabello, Pharrell Williams', 'Havana-CamilaCabelloYoungThug-5817730.mp3', NULL, '2019-12-09 23:06:50', '2019-12-09 23:06:50'),
(74, 'Liar', 'liar.jpg', 9, 6, 40, 'I don\'t care if you\'re here\r\nOr if you\'re not alone\r\nI don\'t care, it\'s been too long\r\nIt\'s kinda like we didn\'t happen\r\nThe way that your lips move\r\nThe way you whisper slow\r\nI don\'t care, it\'s good as gone (uh)\r\nI said I won\'t lose control, I don\'t want it (ooh)\r\nI said I won\'t get too close, but I can\'t stop it\r\nOh no, there you go, making me a liar\r\nGot me begging you for more\r\nOh no, there I go, startin\' up a fire\r\nOh no, no (oh no)\r\nOh no, there you go, you\'re making me a liar\r\nI kinda like it though\r\nOh no, there I go, startin\' up a fire\r\nOh no, no (ooh)\r\nYou\'re watching, I feel it (hey)\r\nI know I shouldn\'t stare (yeah, yeah)\r\nI picture your hands on me (I think I wanna let it happen)\r\nBut what if, you kiss me? (Yeah)\r\nAnd what if, I like it?\r\nAnd no one sees it\r\nI said I won\'t…', 'Camila Cabello', 'Liar-CamilaCabello-6113002.mp3', NULL, '2019-12-09 23:08:39', '2019-12-09 23:08:39'),
(75, 'Senorita', 'senorita.jpg', 9, 6, 41, 'love it when you call me señorita\r\nI wish I could pretend I didn\'t need ya\r\nBut every touch is ooh la la la\r\nIt\'s true, la la la\r\nOoh, I should be running\r\nOoh, you keep me coming for you\r\nLand in Miami\r\nThe air was hot from summer rain\r\nSweat dripping off me\r\nBefore I even knew her name, la la la\r\nIt felt like ooh la la la\r\nYeah no\r\nSapphire moonlight\r\nWe danced for hours in the sand\r\nTequila sunrise\r\nHer body fit right in my hands, la la la\r\nIt felt like ooh la la la, yeah\r\nI love it when you call me señorita\r\nI wish I could pretend I didn\'t need you\r\nBut every touch is ooh la la la\r\nIt\'s true, la la la\r\nOoh, I should be running\r\nOoh, you know I love it when you call me señorita\r\nI wish it wasn\'t so damn hard to leave you\r\nBut every touch is ooh la la la\r\nIt\'s true, la la la\r\nOoh, I…', 'Shawn Mendes, Camila Cabello, Benny Blanco', 'SenoritaMikeRemix-ShawnMendesCamilaCabello-6009788.mp3', NULL, '2019-12-09 23:10:59', '2019-12-09 23:10:59'),
(76, 'Easy', 'easy.jpg', 9, 6, 41, '[Intro:]\r\nHa-ha-ha-ha.\r\n\r\n[Verse 1:]\r\nYou tell me that I\'m complicated\r\nAnd that might be an understatement\r\nAnything else? (Ha-ha-ha-ha-ha)\r\nYou tell me that I\'m indecisive\r\nFickle, but I try to hide it\r\nAnything else? (Ha-ha-ha-ha-ha)\r\nYou tell me that I overthink\r\n\'Til I ruin a good thing\r\nAnything else? (Ha-ha-ha-ha-ha)\r\nYou tell me that you\'d rather fight\r\nThan spend a single peaceful night\r\nWith somebody else (Ha-ha-ha-ha)\r\n\r\n[Pre-Chorus:]\r\nYou really, really know me\r\nThe future and the old me\r\nAll of the mazes and the madness in my mind\r\nYou really, really love me\r\nYou know me and you love me\r\nAnd it\'s the kind of thing I always hoped I\'d find (Yeah)\r\n\r\n[Chorus:]\r\nAlways thought I was hard to love\r\n\'Til you made it seem so easy, seem so easy\r\nAlways thought I was hard to love\r\n\'Til you made it seem so easy, seem so easy\r\nTouch me \'til I find myself, in a feeling\r\nTell me with your hands that you\'re never leaving (No)\r\nAlways thought I was hard to love\r\n\'Til you made it seem so easy (Seem so easy)\r\n\r\n[Verse 2:]\r\nI never liked my crooked teeth\r\nYou tell me they\'re you\'re favorite thing (Mm-hmm)\r\nAnything else? (Ha-ha-ha-ha-ha)\r\nThe stretch marks all around my thighs\r\nKiss \'em \'til I change my mind\r\nAbout everything else (Ha-ha-ha-ha)\r\n\r\n[Pre-Chorus:]\r\nYou really, really know me\r\nThe future and the old me\r\nAll of the mazes and the madness in my mind\r\nYou really, really love me (You really, really love me)\r\nYou know me and you love me (Oh)\r\nAnd it\'s the kind of thing I always hoped I\'d find.\r\n\r\n[Chorus:]\r\nAlways thought I was hard to love\r\n\'Til you made it seem so easy, seem so easy (So easy, yeah)\r\nAlways thought I was hard to love (To love)\r\n\'Til you made it seem so easy, seem so easy (So easy, yeah)\r\nTouch me \'til I find myself, in a feeling (Oh)\r\nTell me with your hands that you\'re never leaving (Never)\r\nAlways thought I was hard to love (To love)\r\n\'Til you made it seem so easy, seem so easy (Oh)\r\n\r\n[Bridge:]\r\nAll I know is you, heal me when I\'m broken, heal me when I\'m broken, oh\r\nAll I know is you, saved me and you know it, saved me and you know it (Saved me and you know it)\r\n\r\n[Chorus:]\r\nAlways thought I was hard to love\r\n\'Til you made it seem so easy, seem so easy (Ah)\r\nI always thought I was hard to love\r\n\'Til you made it seem so easy, seem so easy (\'Til you made it, \'til you made it)\r\nTouch me \'til I find myself, in a feeling (A feeling)\r\nTell me with your hands that you\'re never leaving (Tell me with your hands that you\'re-)\r\nAlways thought I was hard to love\r\n\'Til you made it seem so easy, seem so easy (Seem so easy)', 'Camila Cabello', 'Easy-CamilaCabello-6152379.mp3', NULL, '2019-12-09 23:13:18', '2019-12-09 23:13:18'),
(77, 'Don\'t Let Me Down', 'dontletmedown.jpg', 27, 6, 42, 'Crashing, hit a wall\r\nRight now I need a miracle\r\nHurry up now, I need a miracle\r\nStranded, reaching out\r\nI call your name but you\'re not around\r\nI say your name but you\'re not around\r\n\r\nI need you, I need you, I need you right now\r\nYeah, I need you right now\r\nSo don\'t let me, don\'t let me, don\'t let me down\r\nI think I\'m losing my mind now\r\nIt\'s in my head, darling I hope\r\nThat you\'ll be here, when I need you the most\r\nSo don\'t let me, don\'t let me, don\'t let me down\r\nD-Don\'t let me down\r\n\r\nDon\'t let me down\r\nDon\'t let me down, down, down\r\nDon\'t let me down, don\'t let me down, down, down\r\n\r\nR-r-running out of time\r\nI really thought you were on my side\r\nBut now there\'s nobody by my side\r\n\r\nI need you, I need you, I need you right now\r\nYeah, I need you right now\r\nSo don\'t let me, don\'t let me, don\'t let me down\r\nI think I\'m losing my mind now\r\nIt\'s in my head, darling I hope\r\nThat you\'ll be here, when I need you the most\r\nSo don\'t let me, don\'t let me, don\'t let me down\r\nD-Don\'t let me down\r\n\r\nDon\'t let me down\r\nDon\'t let me down, down, down\r\nDon\'t let me down, down, down\r\nDon\'t let me down, down, down\r\nDon\'t let me down, don\'t let me down, down, down\r\n\r\nOh, I think I\'m losing my mind now, yeah, yeah, yeah\r\nOh, I think I\'m losing my mind now, yeah, yeah\r\n\r\nI need you, I need you, I need you right now\r\nYeah, I need you right now\r\nSo don\'t let me, don\'t let me, don\'t let me down\r\nI think I\'m losing my mind now\r\nIt\'s in my head, darling I hope\r\nThat you\'ll be here, when I need you the most\r\nSo don\'t let me, don\'t let me, don\'t let me down\r\nDon\'t let me down\r\n\r\nYeah, don\'t let me down\r\nYeah, don\'t let me down\r\nDon\'t let me down, oh no\r\nSaid don\'t let me down\r\nDon\'t let me down\r\nDon\'t let me down\r\nDon\'t let me down, down, down', 'The Chainsmokers', 'DontLetMeDown-TheChainsmokersDaya-5817744.mp3', NULL, '2019-12-09 23:16:45', '2019-12-09 23:16:45'),
(78, 'Take A Way', 'takeaway.jpg', 27, 6, 42, 'Your heart for takeaway, yeah, yeah, yeah, yeah-yeah\r\nYour heart for takeaway, yeah, yeah, yeah, yeah-yeah\r\nYour heart for takeaway, yeah-yeah, yeah-yeah\r\nYour heart for takeaway, yeah, yeah, yeah, yeah-yeah\r\n\r\n[Verse 1: Lennon Stella & Andrew Taggart]\r\nHey, hey, hey\r\nWhere do you think you\'re going?\r\nIt\'s so late, late, late\r\nWhat\'s wrong?\r\nI said, \"I can\'t stay, do I have to give a reason?\"\r\nIt\'s just me, me, me\r\nIt\'s what I want\r\n\r\n[Pre-Chorus: Lennon Stella & Andrew Taggart]\r\nSo how did we get here?\r\nThree weeks now, we\'ve been so caught up\r\nBetter if we do this on our own\r\n\r\n[Chorus: Lennon Stella & Andrew Taggart]\r\nBefore I love you (Na, na, na)\r\nI\'m gonna leave you (Na, na, na)\r\nBefore I\'m someone you leave behind\r\nI\'ll break your heart so you don\'t break mine\r\nBefore I love you (Na, na, na)\r\nI\'m gonna leave you (Na, na, na)\r\nEven if I\'m not here to stay\r\nI still want your heart\r\n\r\n[Post-Chorus: Lennon Stella]\r\nYour heart for takeaway, yeah, yeah, yeah, yeah-yeah\r\nYour heart for takeaway, yeah, yeah, yeah, yeah-yeah\r\nYour heart for takeaway, yeah-yeah, yeah-yeah\r\nYour heart for takeaway, yeah, yeah, yeah, yeah-yeah\r\nYour heart for takeaway\r\n(Your heart for takeaway, yeah, yeah)\r\nYour heart for takeaway, yeah, yeah, yeah, yeah-yeah\r\n\r\n[Verse 2: Lennon Stella & Andrew Taggart]\r\nFate, fate, fate\r\nIs that what came between us?\r\nOr did we do this on our own?\r\n\r\n[Pre-Chorus: Lennon Stella & Andrew Taggart]\r\nSo how did we get here?\r\nI\'m asking myself why I\'m so caught up\r\nBetter if we do this on our own\r\n\r\n[Chorus: Lennon Stella & Andrew Taggart]\r\nBefore I love you (Na, na, na)\r\nI\'m gonna leave you (Na, na, na)\r\nBefore I\'m someone you leave behind\r\nI\'ll break your heart so you don\'t break mine\r\nBefore I love you (Na, na, na)\r\nI\'m gonna leave you (Na, na, na)\r\nEven if I\'m not here to stay\r\nI still want your heart\r\n\r\n[Post-Chorus: Lennon Stella]\r\nYour heart for takeaway, yeah, yeah, yeah, yeah-yeah\r\nYour heart for takeaway, yeah, yeah, yeah, yeah-yeah\r\nYour heart for takeaway, yeah-yeah, yeah-yeah\r\nYour heart for takeaway, yeah, yeah, yeah, yeah-yeah\r\nYour heart for takeaway\r\n(Your heart for takeaway, yeah, yeah)\r\nYour heart for takeaway, yeah, yeah, yeah, yeah-yeah\r\n\r\n[Chorus: Andrew Taggart]\r\nBefore I love you (Na, na, na)\r\nI\'m gonna leave you (Na, na, na)\r\nBefore I\'m someone you leave behind\r\nI\'ll break your heart so you don\'t break mine\r\nBefore I love you (Na, na, na)\r\nI\'m gonna leave you (Na, na, na)\r\nEven if I\'m not here to stay\r\nI still want your heart', 'The Chainsmokers', 'Takeaway - The Chainsmokers_Illenium_Len [128kbps_MP3].mp3', NULL, '2019-12-09 23:19:52', '2019-12-09 23:19:52'),
(79, 'Call You Mine', 'callyoumine.jpg', 27, 6, 43, 'Two kids with their hearts on fire\r\nWho\'s gonna save us now?\r\nWhen we thought that we couldn\'t get higher\r\nThings started looking down\r\nI look at you and you look at me\r\nLike nothing but strangers now\r\nTwo kids with their hearts on fire\r\nDon\'t let it burn us out\r\n\r\n[Pre-Chorus: Bebe Rexha]\r\nThink about what you believe in now\r\nAm I someone you cannot live without\r\n\'Cause I know I don\'t wanna live without you, yeah\r\nYeah, come on, let\'s turn this all around\r\nBring it all back to that bar downtown\r\nWhen you wouldn\'t let me walk out on you, yeah\r\n\r\n[Chorus: Bebe Rexha]\r\nYou said, \"Hey, whatcha doing for the rest of your life?\"\r\nAnd I said, \"I don\'t even know what I\'m doing tonight\"\r\nWent from one conversation to your lips on mine\r\nAnd you said, \"I never regretted the day that I called you mine\"\r\nSo I call you mine, oh\r\n\r\n[Post-Chorus: Bebe Rexha]\r\nCan I call you mine? Oh\r\nAnd you said, \"I never regretted the day that I called you mine\"\r\n\r\n[Verse 2: Bebe Rexha]\r\nBroke kids running through the city\r\nDrunk on the subway train\r\nSet free every time you kissed me\r\nWe couldn\'t feel no pain\r\nYou looked at me and I looked at you\r\nLike we\'d never look away\r\nBroke kids running through the city\r\nDon\'t let the memory fade\r\n\r\n[Chorus: Bebe Rexha]\r\nYou said, \"Hey, whatcha doing for the rest of your life?\"\r\nAnd I said \"I don\'t even know what I\'m doing tonight\"\r\nWent from one conversation to your lips on mine\r\nAnd you said, \"I never regretted the day that I called you mine\"\r\nSo I call you mine, oh\r\n\r\n[Post-Chorus: Bebe Rexha]\r\nCan I call you mine? Oh\r\nAnd you said \"I never regretted the day that I called you mine\"\r\nThink about what you believe in now\r\nAm I someone you cannot live without, out?\r\n\'Cause I know I don\'t wanna live without you\r\n\r\n[Bridge: Bebe Rexha]\r\nYeah, come on, let\'s turn this all around\r\nBring it all back to that bar downtown\r\nWhen you wouldn\'t let me walk out on you\r\n\r\n[Chorus: Bebe Rexha]\r\nYou said, \"Hey, whatcha doing for the rest of your life?\r\nAnd I said, \"I don\'t even know what I\'m doing tonight\"\r\nWent from one conversation to your lips on mine\r\nAnd you said, \"I never regretted the day that I called you mine\"\r\nSo I call you mine, oh\r\n\r\n[Outro: Bebe Rexha]\r\nAnd you said, \"I never regretted the day that I called you mine\"\r\nCan I call you mine?\r\nCan I call you mine?\r\nCan I call you mine? Oh\r\nCan I call you mine?', 'The Chainsmokers', 'CallYouMine-TheChainsmokersBebeRexha-6069847.mp3', NULL, '2019-12-09 23:21:55', '2019-12-09 23:21:55'),
(80, 'My Love', 'mylove.jpg', 28, 6, 44, 'an emty street \r\nan emty house\r\na hole inside my heart\r\nI am alone\r\nthe rooms are getting smaller\r\nI wonder how I wonder why I wonder where they are\r\nthe day we had the songs we sang together\r\nAnd all , my love , i\'m holding forever\r\nReaching for the loves that seems so far\r\n\r\nChorus\r\nSo , i say a little prayer \r\nhope my dream will take me there \r\nwhere the skies are blue , see you once agian my love\r\nOver seas and coast to coast\r\nfind the place i love the most\r\nwhere the fields are green , see you once agian my love\r\n\r\n\r\nI try to read , I go to work , I laughing with my friends\r\nBut I can\'t stop to keep my self of thingking \r\nI wonder how I wonder why I wonder where they are\r\nthe day we had the songs we sang together\r\nAnd all, my love , i\'m holding forever\r\nReaching for the loves that seems so far\r\nChorus\r\nTo hold you in my arms\r\nTo promise you my love\r\nTo tell you from the stars\r\nthe all i\'m thingking of\r\nReaching for the loves that seems so far\r\nChorus(x2)', 'Westlife', 'My-Love-Acoustic-Version-Westlife.mp3', NULL, '2019-12-09 23:24:10', '2019-12-09 23:24:10'),
(81, 'Solitaire', 'solitaire.jpg', 28, 6, 44, 'There was a man, a lonely man,\r\nWho lost his love through his indifference\r\n\r\n[Mark:]\r\nA heart that cared, that went unchecked,\r\nUntil it died within his silence\r\n\r\n[Shane:]\r\nAnd Solitaire\'s the only game in town\r\nAnd every road that takes him, takes him down\r\nAnd by himself, it\'s easy to pretend\r\nHe\'ll never love again\r\nAnd keeping to himself he plays the game\r\nWithout her love it always ends the same\r\nWhile life goes on around him everywhere\r\nHe\'s playing Solitaire\r\n\r\n[Mark:]\r\nA little hope goes up in smoke\r\nJust how it goes, goes without saying\r\n\r\n[Shane:]\r\nThere was a man, a lonely man\r\nWho would command the hand he\'s playing\r\n\r\n[Mark:]\r\nAnd Solitaire\'s the only game in town\r\nAnd every road that takes him, takes him down\r\nAnd by himself, it\'s easy to pretend\r\nHe\'ll never love again\r\nAnd keeping to himself he plays the game\r\nWithout her love it always ends the same\r\nWhile life goes on around him everywhere\r\nHe\'s playing Solitaire\r\n\r\n[Shane:]\r\nA little hope goes up in smoke\r\nJust how it goes, goes without saying\r\n\r\n[Mark:]\r\nAnd Solitaire\'s the only game in town\r\nAnd every road that takes him, takes him down\r\nAnd by himself, it\'s easy to pretend\r\nHe\'ll never love again\r\nAnd keeping to himself he plays the game\r\nWithout her love it always ends the same\r\nWhile life goes on around him everywhere\r\n\r\n[Shane:]\r\nHe\'s playing Solitaire', 'Westlife', 'Solitaire - The Carpenters [128kbps_MP3].mp3', NULL, '2019-12-09 23:28:09', '2019-12-09 23:28:09'),
(82, 'I Lay My Love On You', 'i lay my love on you.jpg', 28, 6, 45, 'Just a smile and the rain is gone\r\nCan hardly believe it (yeah)\r\nThere\'s an angel standing next to me\r\nReaching for my heart\r\n\r\nJust a smile and there\'s no way back \r\nCan hardly believe it (yeah)\r\nBut there\'s an angel, she\'s calling me\r\nReaching for my heart\r\nI know, that I\'ll be ok now\r\nThis time it\'s real\r\n\r\nI lay my love on you\r\nIt\'s all I wanna do\r\nEverytime I breathe I feel brand new\r\nYou open up my heart\r\nShow me all your love, and walk right through\r\nAs I lay my love on you\r\n\r\nI was lost in a lonely place\r\nCould hardly even believe it (yeah)\r\nHolding on to yesterdays\r\nFar, far too long\r\n\r\nNow I believe its ok cause this time it\'s real\r\n\r\nI lay my love on you\r\nIt\'s all I wanna do\r\nEverytime I breathe I feel brand new\r\nYou open up my heart\r\nShow me all your love, and walk right through\r\nAs I lay my love on you\r\n\r\nI never knew that love could fell so good\r\n\r\nLike once in a lifetime\r\nYou change my world\r\n\r\nI lay my love on you\r\nYou make me feel brand new\r\nShow me all your love, and walk right through\r\nAs I lay my love on you\r\n\r\nI lay my love on you\r\nIt\'s all I wanna do\r\nEverytime I breathe I feel brand new\r\nYou open up my heart\r\nShow me all your love, and walk right through\r\nAs I lay my love on you\r\n\r\nI lay my love on you\r\nYou make me feel brand new\r\nYou open up my heart\r\nShow me all your love, and walk right through\r\nAs I lay my love on you\r\n\r\nAs I lay my love on you', 'Westlife', 'ILayMyLoveOnYou-Westlife_pcrn.mp3', NULL, '2019-12-09 23:31:34', '2019-12-09 23:31:34'),
(83, 'If I Let You Go', 'If I Let You Go.jpg', 28, 6, 45, 'Shane:]\r\nDay after day\r\nTime passed away \r\nAnd I just can\'t get you off my mind \r\nNobody knows, I hide it inside \r\nI keep on searching but I can\'t find \r\n\r\n[Mark:]\r\nThe courage to show to letting you know\r\nI\'ve never felt so much love before\r\n[All (Shane lead):]\r\nAnd once again I\'m thinking about \r\nTaking the easy way out \r\n\r\n[All:]\r\nBut if I let you go I will never know \r\nWhat my life would be holding you close to me \r\nWill I ever see you smiling back at me? ([Shane:] oh yeah) \r\nHow will I know \r\n[Shane:] if I let you go? \r\n\r\n[Bryan:]\r\nNight after night I hear myself say \r\nWhy can\'t this feeling just fade away \r\nThere\'s no one like you (no one like you) \r\nYou speak to my heart (speak to my heart) \r\nIt\'s such a shame we\'re worlds apart \r\n\r\n[Shane:]\r\nI\'m too shy to ask, I\'m too proud to lose \r\nBut sooner or later I gotta choose \r\nAnd once again I\'m thinking about \r\nTaking the easy way out \r\n\r\n[All:]\r\nBut if I let you go I will never know \r\nWhat my life would be, holding you close to me \r\nWill I ever see you smiling back at me? (oh yeah) \r\nHow will I know\r\n[Shane:] if I let you go ? \r\n\r\n[Shane:]\r\nIf I let you go ooooh baby \r\nOoooooooohhhhh \r\n\r\n[Bryan:]\r\nOnce again I\'m thinking about \r\nTaking the easy way out \r\nOoooooooohhhhh \r\n\r\n[All:]\r\nBut if I let you go I will never know \r\nWhat my life would be, holding you close to me\r\n([Mark:] close to me)\r\nWill I ever see you smiling back at me?\r\n([Shane:] oh yeah) \r\nHow will I know\r\n([Bryan:] if I let you go?) \r\nBut if I let you go I will never know \r\n([Mark:] oh baby) \r\nWill I ever see you smiling back at me?\r\n([Shane:] oh yeah) \r\nHow will I know\r\n[Shane:] if I let you go ?', 'Westlife', 'If I Let You Go - Westlife (NhacPro.net).mp3', NULL, '2019-12-09 23:34:02', '2019-12-09 23:34:02'),
(84, 'Instagram', 'instagram.jpg', 29, 6, 46, 'Just bought a black Ferrari\r\nHouse in the hills in L.A\r\nSay that you\'ll take care of me\r\nSorry, but I don\'t need a plan like that\r\nDon\'t need a man like that\r\nWhat\'d you say?\r\nYou say that you\'ve been on TV?\r\nAnd I should come back to your place?\r\nHold up, let me set you straight\r\nSchool\'s in session, time to educate\r\n\r\n[Chorus]\r\nWho the hell do you think I am?\r\nI don\'t give a fuck about your Instagram\r\nListen up, \'cause I\'m not that girl\r\nAin\'t enough liquor in the whole wide world\r\nWho the hell do you think I am?\r\nI don\'t give a fuck about your Instagram\r\nFly away, little Peter Pan\r\nNow you know who the fuck I am\r\n\r\n[Post-Chorus]\r\nWho the hell?\r\nWho the hell?\r\nNow you know who the fuck I am\r\n\r\n[Bridge]\r\nHold up, every girl likes confidence\r\nBut did you think about the consequence? (So what?)\r\nYou don\'t know me like that\r\nTwo steps forward and I\'m two steps back like\r\nOoh, losing my patience, I try to play nice\r\nOoh, see you\'re not listening, now I\'m just like\r\n\r\n[Chorus]\r\nWho the hell do you think I am?\r\nI don\'t give a fuck about your Instagram\r\nListen up, \'cause I\'m not that girl\r\nAin\'t enough liquor in the whole wide world\r\nWho the hell do you think I am?\r\nI don\'t give a fuck about your Instagram\r\nFly away, little Peter Pan\r\nNow you know who the fuck I am\r\n\r\n[Post-Chorus]\r\nWho the hell?\r\nWho the hell?\r\nNow you know who the fuck I am\r\n\r\n[Chorus]\r\nWho the hell do you think I am?\r\nI don\'t give a fuck about your Instagram\r\nListen up, \'cause I\'m not that girl\r\nAin\'t enough liquor in the whole wide world\r\nWho the hell do you think I am?\r\nI don\'t give a fuck about your Instagram\r\nFly away, little Peter Pan\r\nNow you know who the fuck I am', 'David Guetta', 'Instagram-Dimitri-Vegas-Like-Mike-David-Guetta-Daddy-Yankee-Afro-Bros-Natti-Natasha.mp3', NULL, '2019-12-09 23:36:28', '2019-12-09 23:36:28'),
(85, 'Drive', 'drive.jpg', 29, 6, 47, 'Hey babe, you could be my lover\r\nHoney, I don\'t need another one\r\nCan you come a little closer?\r\nSomeday we\'ll sleep under the covers\r\n\r\nDrive my car\r\nIt\'s gametime\r\nHold me like you do\r\nHold me like you do\r\n\r\nMake me high\r\nI can\'t deny\r\nI\'m in love with you\r\nI\'m in love with you\r\n\r\nYou know, you\'re my perfect lover\r\nTrust me, I don\'t need another one\r\nCan you come a little closer?\r\nDrive My Car lyrics on NhacPro.net\r\nSomeday we\'ll sleep under the covers\r\n\r\nDrive my car\r\nIt\'s gametime\r\nHold me like you do\r\nHold me like you do\r\n\r\nMake me high\r\nI can\'t deny\r\nI\'m in love with you\r\nI\'m in love with you', 'David Guetta', 'Drive My Car - DEAMN (NhacPro.net).mp3', NULL, '2019-12-09 23:40:06', '2019-12-09 23:40:06'),
(86, 'Heartbeat', 'heartbeat.jpg', 10, 8, 48, 't leaves me feeling seasick baby\r\nKkumgateun hyeonsil gipi gatyeonna bwa\r\nIt spins me round and drives me crazy\r\nHannaje tteun dal gateun nainga bwa\r\n\r\nManyak na honjayeotdamyeon hoksi neol mollatdamyeon\r\nPogihaesseulji molla lost at sea\r\nBut my heart\'s still on fire \r\nWith a burning desire\r\nDasi neol chajeul geoya unmyeongcheoreom\r\n\r\nI wish that you would love me\r\nEojecheoreom dasi i son nochi malgo\r\nAnd every time my heart beats\r\nBal matchwobwa dasi deoneun hemaeiji antorok\r\n\r\nUnmyeongeul neukkyeo neol neol\r\nUnmyeongeul neukkyeo nal nal\r\n\r\nWhen you hear my heartbeat baby\r\nYou gave me a new life \r\nYou gave me a new birth\r\nI feel you\'re heartbeat away\r\nI been losin my mind \r\nI been cravin my shine\r\nI know me \r\nBefore you was a ready-made me\r\nBut you designate me and \r\nYou did resume me\r\nBeen calling your name \r\nIn this whole universe\r\n(Now I need no space) \r\nI got youniverse\r\n\r\nNeol mannan geon i ujuga bijeonaen \r\nHanpyeonui deurama gata\r\nSumanatdeon hemaeim kkeuchi boijiga anteon banghwang\r\n\r\nGeu miro sogeseo nareul ikkeureojun neo\r\nNeoneun naui bichija naui guwon\r\nI bido geuchyeogane ijen ne soneul nochi aneullae\r\n\r\nI wish that you would love me\r\nEojecheoreom dasi i son nochi malgo\r\nAnd every time my heart beats\r\nBal matchwobwa dasi deoneun hemaeiji antorok\r\n\r\nUnmyeongeul neukkyeo neol neol\r\nUnmyeongeul neukkyeo nal nal\r\n\r\nUnmyeongeul neukkyeo neol neol\r\nUnmyeongeul neukkyeo nal nal\r\n\r\nMy heart’s on fire for your love\r\nOh my heart’s on fire for your love\r\n\r\nI wish that you would love me\r\nEojecheoreom dasi i son nochi malgo\r\nAnd every time my heart beats\r\nBal matchwobwa dasi deoneun hemaeiji antorok\r\n\r\nUnmyeongeul neukkyeo neol neol\r\nUnmyeongeul neukkyeo nal nal\r\n\r\nUnmyeongeul neukkyeo neol neol\r\nUnmyeongeul neukkyeo nal nal', 'BTS', 'Heartbeat - BTS (NhacPro.net).mp3', NULL, '2019-12-09 23:45:21', '2019-12-09 23:45:21'),
(87, 'Fire', 'fire.jpg', 10, 9, 48, 'Fire\r\nFire\r\nFire\r\nFire\r\nWhen I wake up in my room\r\nnan mwosdo eopsji\r\nhaega jigo nan hu biteuldaemyeo geotji\r\nda mansinchangiro chwihaesseo chwihaesseo\r\nmak yokhae gireseo gireseo\r\nna masi gassji michinnom gatji\r\nda eongmangjinchang livin’ like ppii\r\nni meosdaero sareo eochapi ni kkeoya\r\naesseuji jom mareo jyeodo gwaenchanha\r\nErrbody say La la la la la\r\nLa la la la la\r\nSay La la la la la\r\nLa la la la la\r\nsoneul deureo sorijilleo burn it up\r\nbultaoreune\r\nssak da bultaewora bow wow wow\r\nssak da bultaewora bow wow wow\r\nHey burn it up\r\njeonbu da taeul geot gati\r\nHey turn it up\r\nsaebyeogi da gal ttaekkaji\r\ngeunyang sarado dwae urin jeolmgie\r\ngeu malhaneun neon mwon sujeogillae\r\nsujeosujeo georyeo nan saraminde\r\nSo what\r\nni meosdaero sareo eochapi ni kkeoya\r\naesseuji jom mareo jyeodo gwaenchanha\r\nErrbody say La la la la la\r\nLa la la la la\r\nSay La la la la la\r\nLa la la la la\r\nsoneul deureo sorijilleo Burn it up\r\nbultaoreune\r\nssak da bultaewora Bow wow wow\r\nssak da bultaewora Bow wow wow\r\nFire geop manheun jayeo yeogiro\r\nFire goeroun jayeo yeogiro\r\nFire maenjumeogeul deulgo All night long\r\nFire jingunhaneun balgeoreumeuro\r\nFire ttwieobwa\r\nmichyeobeoryeo da\r\nssak da bultaewora Bow wow wow\r\nssak da bultaewora Bow wow wow\r\nFire\r\nFire\r\nssak da bultaewora Bow wow wow\r\nFire\r\nFire\r\nssak da bultaewora Bow wow wow\r\nyongseohaejulge', 'BTS', 'Fire - BTS (NhacPro.net).mp3', NULL, '2019-12-09 23:47:00', '2019-12-09 23:47:00'),
(88, 'Spring Day', 'springday.jpg', 10, 8, 49, 'bogo sipda ireohge\r\nmalhanikka deo bogo sipda\r\nneohui sajineul\r\nbogo isseodo bogo sipda\r\n\r\nneomu yasokhan sigan\r\nnaneun uriga mipda\r\nijen eolgul han beon boneun geosdo\r\nhimdeureojin uriga\r\nyeogin ontong gyeoul ppuniya\r\n8woredo gyeouri wa\r\n\r\nmaeumeun siganeul dallyeogane\r\nhollo nameun seolgugyeolcha\r\nni son japgo jigu\r\nbandaepyeonkkaji ga\r\ngyeoureul kkeutnaegopa\r\n\r\ngeuriumdeuri\r\neolmana nuncheoreom naeryeoya\r\ngeu bomnari olkka\r\nFriend\r\n\r\nheogongeul tteodoneun\r\njageun meonjicheoreom\r\njageun meonjicheoreom\r\nnallineun nuni naramyeon\r\njogeum deo ppalli nege\r\ndaheul su isseul tende\r\n\r\nnunkkocci tteoreojyeoyo\r\ntto jogeumssik meoreojyeoyo\r\nbogo sipda\r\nbogo sipda\r\neolmana gidaryeoya\r\ntto myeot bameul deo saewoya\r\nneol boge doelkka\r\nmannage doelkka\r\n\r\nchuun gyeoul kkeuteul jina\r\ndasi bomnari ol ttaekkaji\r\nkkot piul ttaekkaji\r\ngeugose jom deo meomulleojwo\r\nmeomulleojwo\r\n\r\nniga byeonhan geonji\r\nanimyeon naega byeonhan geonji\r\ni sungan heureuneun siganjocha miwo\r\nuriga byeonhan geoji mwo\r\nmoduga geureon geoji mwo\r\n\r\ngeurae mipda niga\r\nneon tteonassjiman\r\ndan harudo neoreul\r\nijeun jeogi eopseossji nan\r\n\r\nsoljikhi bogo sipeunde\r\niman neoreul jiulge\r\ngeuge neol wonmanghagibodan\r\ndeol apeunikka\r\n\r\nsirin neol bureonae bonda\r\nyeongicheoreom hayan yeongicheoreom\r\nmalloneun jiunda haedo\r\nsasil nan ajik neol bonaeji moshaneunde\r\n\r\nnunkkocci tteoreojyeoyo\r\ntto jogeumssik meoreojyeoyo\r\nbogo sipda\r\nbogo sipda\r\neolmana gidaryeoya\r\ntto myeot bameul deo saewoya\r\nneol boge doelkka\r\nmannage doelkka\r\n\r\nYou know it all\r\nYou’re my best friend\r\nachimeun dasi ol geoya\r\neotteon eodumdo eotteon gyejeoldo\r\nyeongwonhal sun eopseunikka\r\n\r\nbeojkkocci pinabwayo\r\ni gyeouldo kkeuti nayo\r\nbogo sipda\r\nbogo sipda\r\njogeumman gidarimyeon\r\nmyeochil bamman deo saeumyeon\r\nmannareo galge\r\nderireo galge\r\n\r\nchuun gyeoul kkeuteul jina\r\ndasi bomnari ol ttaekkaji\r\nkkot piul ttaekkaji\r\ngeugose jom deo meomulleojwo\r\nmeomulleojwo', 'BTS', 'Spring Day - BTS (NhacPro.net).mp3', NULL, '2019-12-09 23:48:46', '2019-12-09 23:48:46'),
(89, 'Kill This Love', 'killthislove.jpg', 11, 8, 50, 'Cheonsa gateun Hi kkeuten angma gateun Bye\r\nMaebeon michildeuthan High dwien baeteoya haneun Price\r\nIgeon dabi eomneun Test maebeon sokdeorado Yes\r\nTtakan gamjeongui noye\r\nEoreo jugeul saranghae\r\nHere I come kick in the door\r\nGajang dokan geollo jwo\r\nPpeonhadi ppeonhan geu love\r\nDeo naenwabwa give me some more\r\nAraseo maedallyeo byeorang kkeute\r\nHanmadimyeon tto like hebeolle hae\r\nGeu ttatteuthan tteollimi saeppalgan seollemi\r\nMachi heaven gatgetjiman\r\nYou might not get it in\r\nLook at me Look at you\r\nNuga deo apeulkka?\r\nYou smart nuga? You are\r\nDu nune pinunmul heureuge doendamyeon\r\nSo sorry nuga? You are\r\nNa eotteokae nayakan nal gyeondil su eopseo\r\nAesseo du nuneul garin chae\r\nSarangui sumtongeul kkeuneoyagesseo\r\nLET\'S KILL THIS LOVE\r\nLET\'S KILL THIS LOVE\r\nFeelin\' like a sinner\r\nIts so fire with him I go boo hoo\r\nHe said you look crazy\r\nThank you baby\r\nI owe it all to you\r\nGot me all messed up\r\nHis love is my favorite\r\nBut you plus me sadly can be dangerous\r\nLucky me Lucky you\r\nGyeolgugen geojinmal we lie\r\nSo what so what\r\nManyage naega neol jiuge\r\nDoendamyeon So sorry\r\nI\'m not sorry\r\nNa eotteokae nayakan nal gyeondil su eopseo\r\nAesseo nunmureul gamchun chae\r\nSarangui sumtongeul kkeuneoyagesseo\r\nLET\'S KILL THIS LOVE\r\nLET\'S KILL THIS LOVE\r\nWe all commit to love\r\nThat makes you cry\r\nWe\'re all making love\r\nThat kills you inside\r\nWe must kill this love\r\nYeah it\'s sad but true\r\nGotta kill this love\r\nBefore it kills you too\r\nKill this love\r\nYeah it\'s sad but true\r\nGotta kill this love\r\nGotta kill let\'s kill this lov', 'Black Pink', 'Kill This Love - BLACKPINK (NhacPro.net).mp3', NULL, '2019-12-09 23:50:46', '2019-12-09 23:50:46'),
(90, 'Ddu-Du Ddu-Du', 'dduddu.jpg', 11, 9, 51, 'Chakan eolgure geureochi mothan taedo\r\nGanyeorin mommae sok garyeojin volumeeun du baero\r\nGeochimeopsi jikjin guji bojin anchi nunchi\r\nBlack hamyeon Pink urin yeppeujanghan Savage\r\n\r\n[Verse 2: Lisa]\r\nWonhal ttaen daenoko ppaetji\r\nNeon mwol haedo kallo mul begi\r\nDu sonen gadeukan fat check\r\nGunggeumhamyeon haebwa fact check\r\nNun nopin kkokdaegi\r\nMul mannan mulgogi\r\nJom dokae nan Toxic\r\nYou hokae I`m Foxy\r\n\r\n[Pre-Chorus: Rosé & Jisoo]\r\nDu beon saenggakae\r\nHeunhan namdeulcheoreom chakan cheogeun mot hanikka\r\nChakgakaji ma\r\nSwipge useojuneun geon nal wihan geoya\r\nAjigeun jal moreugetji\r\nGuji wonhamyeon test me\r\nNeon bul bodeusi ppeonhae\r\nManmanhan geol wonhaetdamyeon\r\n\r\n[Chorus: Jennie]\r\nOh wait til’ I do what I do\r\nHit you with that ddu-du ddu-du du (Ah yeah, ay yeah!)\r\nHit you with that ddu-du ddu-du du (Ah yeah, ay yeah!)\r\n\r\n[Verse 2: Jennie]\r\nJigeum naega georeoganeun georin\r\nBLACKPINK 4 way sageori\r\nDongseonambuk sabangeuro run it\r\nNeone beokitriseuteu ssak da I bought it\r\nNeol danggineun geotdo meolli milchineun geotdo\r\nJemeotdaero haneun bad girl\r\nJokeon sileohageon nuga mwora hadeon\r\nWhen the bass drop it’s another banger\r\n\r\n[Pre-Chorus: Jisoo & Rosé]\r\nDu beon saenggakae\r\nHeunhan namdeulcheoreom chakan cheogeun mot hanikka\r\nChakgakaji ma\r\nSwipge useojuneun geon nal wihan geoya\r\nAjigeun jal moreugetji\r\nGuji wonhamyeon test me\r\nNeon bul bodeusi ppeonhae\r\nManmanhan geol wonhaetdamyeon\r\n\r\n[Chorus: Jennie, Lisa]\r\nOh wait til’ I do what I do\r\nHit you with that ddu-du ddu-du du (Ah yeah, ay yeah!)\r\nHit you with that ddu-du ddu-du du (Ah yeah, ay yeah!)\r\n\r\n[Bridge: Rosé & Lisa]\r\nWhat you gonna do when I\r\nCome come through with that that uh uh huh\r\nWhat you gonna do when I\r\nCome come through with that that uh uh huh\r\nTteugeowo tteugeowo tteugeowo like fire\r\nTteugeowo tteugeowo tteugeowo like fire\r\n\r\n[Drop: All, Jisoo & Rosé]\r\nBLACKPINK! Hey!\r\nAh yeah, ay yeah! Ah yeah, ay yeah!\r\nTteugeowo tteugeowo tteugeowo like fire\r\nTteugeowo tteugeowo tteugeowo like fire\r\n\r\n[Outro: Jennie]\r\nHit you with that ddu-du ddu-du du', 'Black Pink', 'Ddu Du Ddu Du - BLACKPINK (NhacPro.net).mp3', NULL, '2019-12-09 23:53:03', '2019-12-09 23:53:03');
INSERT INTO `songs` (`id`, `song_name`, `picture`, `artist_id`, `category_id`, `album_id`, `song_lyric`, `composer`, `url`, `mv`, `created_at`, `updated_at`) VALUES
(91, 'Haru Haru', 'haruharu.jpg', 12, 8, 52, 'Leave...yeah\r\nFinally i realize that i am nothing without you\r\ni was so wrong , forgive me\r\n\r\nMy broken heart like a wave\r\nMy shaken heart like w wind\r\nMy heart vanished like smoke\r\nit can\'t be removed like a tattoo\r\ni sigh deeply as if a ground is going to cave in\r\nOnly dusts are piled up in my mind\r\n( say goodbye )\r\n\r\nYeah , i thought i wouldn\'t be able to live even one day without you\r\nBut somehow i managed to live on ( longer) than i thought\r\nyou don\'t answer anything as i cry out \" i miss you \"\r\nI hope for a vain expectation but now it\'s useless\r\nwhat is it about that person next to you , did he make you cry?\r\nDear can you even see me , did you forget completely ?\r\nI am worried , i feel anxiety because i can\'t get close nor try to you\r\ni spend long nights by myself , erasing my thoughts a thousand times\r\n\r\nDon\'t look back and leave\r\nDon\'t find me again and live (on)\r\nBecause i have no regrets from loving you\r\ntake only the good memories\r\nI can bear it in some way\r\ni can stand in some way\r\nYou should be happy if you are like this\r\ni become dull day by day\r\nOH GIRL CRY CRY\r\nYou\'re MY ALL , SAY GOODBYE\r\n\r\nif we pass by each other on the streets\r\nAct like you didn\'t see me and go the way you were walking to\r\nIf you keep thinking about our past memories\r\ni might go look for you secretly\r\nAlways be happy with him , so i won\'t ever get a diffrent mind\r\nEven smallest regret won\'t be left out ever\r\nPlease live well as if i should feel jaelous\r\nYou should always be like that bright sky , like that while cloud\r\nYes , you should aways smile like that as if nothing happened\r\n\r\nDon\'t look back and leave\r\nDon\'t find me again and live (on)\r\nBecause i have no regrets from loving you\r\ntake only the good memories\r\nI can bear it in some way\r\ni can stand in some way\r\nYou should be happy if you are like this\r\ni become dull day by day\r\n\r\nI hope your heart feels relieved\r\nPlease forget about me and live (on)\r\nThose tears will dry completely\r\nAs time passes by\r\nIt would\'ve hurt less if we didn\'t meet at all\r\nHope you will bury our promise of being together forever baby\r\nIf pray for you\r\n\r\nOh girl i cry ..cry\r\nyou\'re my all , say goodbye , bye\r\nOh my love don\'t lie , lie\r\nYou\'re my heart , say goodbye', 'G-Dragon', 'Haru Haru - BIGBANG (NhacPro.net).mp3', NULL, '2019-12-09 23:54:54', '2019-12-09 23:54:54'),
(92, 'Bang Bang Bang', 'bangbangbang.jpg', 12, 9, 52, 'nan kkaeeona kkaman bamgwa hamkke\r\nda deureowa damen nugu charye\r\nhan chi apdo bol su eopsneun makjang gerilla\r\ngyeongbaehara mokcheongi teojige\r\n\r\njjijilhan bunwigireul jeonhwanhae\r\ngwanggireul gamchuji moshage hae\r\nnamjadeurui pumwi yeojadeurui gasik\r\niyu moreul jasingami bolmanhae\r\nnan boran deusi neomunado ppeonppeonhi\r\nni momsoge pagodeuneun alleoji\r\nisanghan jeongsinui sulleongineun cheonji\r\noneul yeogi mubeopji\r\n\r\nnan bureul jilleo\r\nsimjangeul taewo\r\nneol michige hago sipeo\r\np.I.k Yea we bang like thit modu da gati\r\n\r\nchong majeun geoscheoreom\r\n\r\nBANG! BANG! BANG!\r\nBANG! BANG! BANG!\r\nppangya ppangya ppangya\r\nBANG! BANG! BANG!\r\nBANG! BANG! BANG!\r\nppangya ppangya ppangya\r\n\r\nda kkomjjak mara da kkomjjak ma\r\nda kkomjjak mara da kkomjjak ma\r\noneul bam kkeutjang boja da kkeutjang bwa\r\noneul bam kkeutjang boja\r\nppangya ppangya ppangya\r\n\r\nneol deryeoga jigeum i sungane\r\nsaeppalgan jeo haneuri chumchul ttae\r\ndolgo dora neowa na igoseun Valhalla\r\nchanyanghara deo ullyeo peojige\r\n\r\nWe go hard bulchimbeon bamsae dallyeo chukjibeop\r\ni noraeneun kkokjijeom sinina bulleora sinjeom\r\nkeun bimyeongsorineun maseongui mellodi geomeun dokgiui yeongyeol gori\r\nsabang palbang obang gaseo puneun goppi whoo\r\n\r\nnan bureul jilleo\r\nne simjangeul taewo\r\nneol michige hago sipeo\r\np.I.k Yea we bang like thit modu da gati\r\n\r\nchong majeun geoscheoreom\r\n\r\nBANG! BANG! BANG!\r\nBANG! BANG! BANG!\r\nppangya ppangya ppangya\r\nBANG! BANG! BANG!\r\nBANG! BANG! BANG!\r\nppangya ppangya ppangya\r\n\r\nda kkomjjak mara da kkomjjak ma\r\nda kkomjjak mara da kkomjjak ma\r\noneul bam kkeutjang boja da kkeutjang bwa\r\noneul bam kkeutjang boja\r\nppangya ppangya ppangya\r\n\r\nReady or not\r\nYea we don’t give a what\r\nReady or not\r\nYea we don’t give a what\r\n\r\nret’t go namjadeureun wiro\r\nyeojadeureun get low\r\ndanggyeora bang bang bang\r\nlet the bat drum go\r\n\r\nnamjadeureun wiro\r\nyeojadeureun get low\r\ndanggyeora bang bang bang\r\nlet the bat drum go', 'G-Dragon', 'Bang Bang Bang - BIGBANG (NhacPro.net).mp3', NULL, '2019-12-09 23:56:19', '2019-12-09 23:56:19'),
(93, 'Fantastic Baby', 'fantastic baby.jpg', 12, 9, 53, 'yoru ga kita mezamashina\r\nWE GON PARTY LIKE\r\nLILILI rarara\r\nAtsumarina\r\nkono pāti wa\r\nkorekara sa\r\nLILILI rarara\r\n\r\nShunkan de kyatchi shita sono-me wa mada\r\nasobi tarite inai ALLRIGHT\r\nHanbun demo kyōmi arunaraba\r\nWE GO sa~a ikou suki ni sawagou\r\n\r\nNAH NA NA NAH HAH NAH NA NA NAH NAH\r\nWOW FANTASTIC BABY\r\nDANCE I WANNNA DAN DAN DAN DANCE\r\nFANTASTIC BABY\r\nDANCE I WANNNA DAN DAN DAN DANCE\r\nWOW FANTASTIC BABY\r\n\r\nIkaga ka ne? Bokuchan wa pāfekuto\r\nJakuten sagasu nante 100-nen hayai BABY\r\nMakkana taiyō yori mo FIRE\r\nchokushi sureba bān NAH NAH NA NA NAH\r\n\r\nMada zutto korikatamatte iru minasan tanjun ni\r\nkorekara JUMP Tte ittara tobihanena ON 1. 2. 3\r\nTakaku kūchū ni ore wa sōjū-shi sa\r\nHajimetenara ima kara tsurete ikou ka uchū ni\r\n\r\nDANGER! Narase sairen Kimi wa tāgetto boku no tāgetto hashire\r\nI CAN’T BABY DON’T STOP THIS\r\nOwara senaide\r\nkono mi taiken’na\r\nsaundo o\r\n\r\nWOW FANTASTIC BABY\r\nDANCE I WANNNA DAN DAN DAN DANCE\r\nFANTASTIC BABY\r\nDANCE I WANNNA DAN DAN DAN DANCE\r\nWOW FANTASTIC BABY\r\n\r\nBOOM SHAKA LAKA BOOM SHAKA LAKA BOOM SKAKA LAKA\r\nDAN DAN DAN DAN DANCE\r\nBOOM SHAKA LAKA BOOM SHAKA LAKA BOOM SKAKA LAKA\r\nDAN DAN DANCE\r\n\r\nNandaka janku sukidakara\r\nNan demo koi kon’ya wa tokuni kobamanai DIGI – DUM – DUM\r\nMAMA JUST LET ME BE YOUR LOVER\r\nIma sugu deyou ka Ga Ga Ga Ga Ga NAH NA NA NA NAH NAH\r\n\r\nNori dakenara mukashi kara tekitō megaau dake de kanojo apurōchi\r\n\r\nKanguru hazu mazu māku Nerai sadametara\r\nBakyun! Bakyun! Bakyun! HOLD UP\r\nNAH NAH NA NA NAH\r\n\r\nDANGER! Narase sairen Kimi wa tāgetto boku no tāgetto hashire\r\nI CAN’T BABY DON’T STOP THIS\r\nOwara senaide\r\nkono mi taiken’na\r\nsaundo o\r\n\r\nWOW FANTASTIC BABY\r\nDANCE I WANNNA DAN DAN DAN DANCE\r\nFANTASTIC BABY\r\nDANCE I WANNNA DAN DAN DAN DANCE\r\nWOW FANTASTIC BABY\r\n\r\nBOOM SHAKA LAKA BOOM SHAKA LAKA BOOM SKAKA LAKA\r\nDAN DAN DAN DAN DANCE\r\nBOOM SHAKA LAKA BOOM SHAKA LAKA BOOM SKAKA LAKA\r\nDAN DAN DANCE\r\n\r\nSa~a asobou ka YE YE YE\r\nHaisha ga shōsha YE YE YE\r\nBokunara kōsha YE YE YE\r\nKimi to wa kon’ya WOW FANTASTIC BABY', 'G-Dragon', 'Fantastic Baby - BigBang (NhacPro.net).mp3', NULL, '2019-12-10 00:01:44', '2019-12-10 00:01:44'),
(94, 'Fake & True', 'fake & true.jpg', 30, 8, 55, 'Geuleon nari isseo\r\nGapjagi honjain geotman gateun nal\r\nEodil gado nae jariga anin geotman gatgo\r\nGogaen tteolgwojineun nal\r\n\r\n[Pre-Chorus: Tzuyu, Momo]\r\nGeuleol ttaemada naege\r\nEolmana naega sojunghanji\r\nMalhaejuneun neoui geu hanmadie\r\nEverything\'s alright\r\nChorahan nobody-eseo dasi somebody\r\nTeukbyeolhan naro byeonhae\r\n\r\n[Chorus: Sana, Nayeon]\r\nYou make me feel special\r\nSesangi amuri nal jujeoanjhyeodo\r\nApeugo apeun maldeuri nal jjilleodo\r\nNega isseo nan dasi useo\r\nThat\'s what you do\r\nAgain, I feel special\r\nAmugeotdo anin jonjae gatdagado\r\nSarajyeodo moreul saram gatdagado\r\nNal bureuneun ne moksorie\r\nI feel loved, I feel so special\r\n\r\n[Verse 2: Mina]\r\nJakku sumgoman sipeoseo\r\nMaju hagiga silheoseo\r\nModeun ge uimireul ilheun deusi\r\nNaega uimireul ilheun deusi\r\nGamanhi jujeoanja isseul ttae\r\n\r\n[Pre-Chorus: Momo, Tzuyu]\r\nGeuttae nae ape natanan neoui\r\nTtatteuthan misowa songire\r\nEverything\'s alright\r\nChorahan nobody-eseo dasi somebody\r\nTeukbyeolhan nalo byeonhae\r\n\r\n[Chorus: Jihyo, Jeongyeon]\r\nYou make me feel special\r\nSesangi amuri nal jujeoanjhyeodo\r\nApeugo apeun maldeuri nal jjilleodo\r\nNega isseo nan dasi useo\r\nThat\'s what you do\r\nAgain, I feel special\r\nAmugeotdo anin jonjae gatdagado\r\nSarajyeodo moreul saram gatdagado\r\nNal bureuneun ne moksorie\r\nI feel loved, I feel so special\r\n\r\n[Bridge: Dahyun]\r\nUh, you make everything alright\r\nGureumi jjwak kkin\r\nHaessal han jum eopsneun nal\r\nNega baro naui shining light\r\nThat\'s what you do\r\nAmuri eoduun bamdo dasi nat\r\nI owe it to you\r\nBecause you make me feel\r\n\r\n[Chorus: Jihyo, Nayeon]\r\nYou make me feel special\r\nSesangi amuri nal jujeoanjhyeodo\r\nApeugo apeun maldeuri nal jjilleodo\r\nNega isseo nan dasi useo\r\nThat\'s what you do\r\nAgain, I feel special\r\nAmugeotdo anin jonjae gatdagado\r\nSarajyeodo moreul saram gatdagado\r\nNal bureuneun ne moksorie\r\nI feel loved, I feel so special\r\n\r\n[Outro]\r\n(I feel so special)\r\n(I feel loved, I feel so special)', 'Twice', 'Feel Special - TWICE (NhacPro.net).mp3', NULL, '2019-12-10 00:04:57', '2019-12-10 00:06:09'),
(95, 'Love Foolish', 'love foolish.jpg', 30, 9, 54, 'Maeil maeil ne ireumeul bulleosseo\r\nCheon beonjeum cheonman beonjeum\r\nNeoye gwie daki jeone cut and rewind\r\nWhy can’t you be mine, yeah?\r\n\r\nOoh, nareul bingbing dolge mandeun geon, it’s you\r\nJust runnin\', runnin\', runnin\' around you\r\nMaeil banbokdoeneun midnight promise\r\nI don’t know what to do\r\n\r\n(Crazy love)\r\nI love you, love you, hate, foolish\r\n(Crazy love)\r\nI love you\r\nMake me feel so high\r\n(Love)\r\nI love you, love you, hate, foolish\r\n(Crazy love)\r\nI hate you\r\nMake me so bad\r\n\r\nIsanghae nege ppajyeodeulsurok\r\nMianhae neoreul miweohage dwae\r\nNado nal moreugesseo seolmyeongi andwae\r\nGathyeosseo i nasseon gamjeong sok miroe\r\n\r\n(Umm)\r\nEogimeopshi kkeullyeodeureo, yes me\r\n(Umm umm)\r\nI want to give you permission, that’s me\r\nNaega mani ani\r\nNeoreul mani ani\r\nMalhaji aneullae for myself\r\nHalsurok haeroweo toxic love\r\n\r\nYou nega gippeul ttae nan seulpeojyeo\r\nIt’s so ironic-ronic-ronic\r\nYeah it’s true, yeokshi dalkomhan geon wiheomhaesseo\r\nI know, I was a fool\r\n\r\nIsanghae nege ppajyeodeulsurok\r\nMianhae neoreul miweohage dwae\r\nNado nal moreugesseo seolmyeongi andwae\r\nGathyeosseo i nasseon gamjeong sok miroe\r\n\r\nNuneul gamgoseo\r\nNeol geurigiman haedo I\'m excited\r\nMy foolish heart\r\nOoh yeah!\r\n\r\nI love you, love you, hate, foolish\r\n\r\nIsanghae nege ppajyeodeulsurok\r\nMianhae neoreul miweohage dwae\r\nNado nal moreugesseo seolmyeongi andwae\r\nGathyeosseo i nasseon gamjeong sok miroe\r\n\r\n(Love)\r\nI love you, love you, hate, foolish\r\n(Crazy love)\r\nI love you\r\nI love you\r\n(Love)\r\nI love you, love you, hate, foolish\r\n(Crazy love)\r\nI hate you', 'Twice', 'Love Foolish - TWICE (NhacPro.net).mp3', NULL, '2019-12-10 00:07:42', '2019-12-10 00:07:42'),
(96, 'My Love', 'remember.jpg', 31, 9, 56, '이렇게 넌 또 왜 날 아프게만 하는데\r\nileohge neon tto wae nal apeugeman haneunde\r\n날 떠나려고 하는데\r\nnal tteonalyeogo haneunde\r\n나를 그렇게도 몰라 몰라\r\nnaleul geuleohgedo molla molla\r\nbaby 니가 뭔데 날 자꾸 울리려만 하는데\r\nbaby niga mwonde nal jakku ullilyeoman haneunde\r\n날 돌아서려 하는데\r\nnal dol-aseolyeo haneunde\r\n왜 아직도 날 아프게만 하는데\r\nwae ajigdo nal apeugeman haneunde\r\n\r\n여자는 말야 우우우우\r\nyeojaneun mal-ya uuuu\r\n나처럼 말야 우우우우\r\nnacheoleom mal-ya uuuu\r\n미워도 사랑밖에 몰라\r\nmiwodo salangbakk-e molla\r\n다쳐도 너밖에 난 몰라\r\ndachyeodo neobakk-e nan molla\r\n\r\n시작은 말야 우우우우\r\nsijag-eun mal-ya uuuu\r\n그때는 말야 우우우우\r\ngeuttaeneun mal-ya uuuu\r\n나 없인 안된다 했잖아\r\nna eobs-in andoenda haessjanh-a\r\n너 없인 이제 내가 안돼 my love\r\nneo eobs-in ije naega andwae my love\r\n\r\nbaby 너 때문에 또 하루 종일 울기만 했어\r\nbaby neo ttaemun-e tto halu jong-il ulgiman haess-eo\r\n난 다른 사람은 싫어\r\nnan daleun salam-eun silh-eo\r\n난 싫어\r\nnan silh-eo\r\n니가 아니면 난 안돼\r\nniga animyeon nan andwae\r\n\r\n여자는 말야 우우우우\r\nyeojaneun mal-ya uuuu\r\n나처럼 말야 우우우우\r\nnacheoleom mal-ya uuuu\r\n미워도 사랑밖에 몰라\r\nmiwodo salangbakk-e molla\r\n다쳐도 너밖에 난 몰라\r\ndachyeodo neobakk-e nan molla\r\n\r\n시작은 말야 우우우우\r\nsijag-eun mal-ya uuuu\r\n그때는 말야 우우우우\r\ngeuttaeneun mal-ya uuuu\r\n나 없인 안된다 했잖아\r\nna eobs-in andoenda haessjanh-a\r\n너 없인 이제 내가 안돼 my love\r\nneo eobs-in ije naega andwae my love\r\n\r\n가슴이 아프게 날 돌아서지만\r\ngaseum-i apeuge nal dol-aseojiman\r\n어쩌면 니가 더 아플지도 모르겠어\r\neojjeomyeon niga deo apeuljido moleugess-eo\r\n나 같은 여자 놓치는건 너잖아 너잖아\r\nna gat-eun yeoja nohchineungeon neojanh-a neojanh-a\r\n\r\n남자는 말야 우우우우\r\nnamjaneun mal-ya uuuu\r\n너처럼 말야 우우우우\r\nneocheoleom mal-ya uuuu\r\n이렇게 쉽게 변하는지\r\nileohge swibge byeonhaneunji\r\n떠나면 그게 끝인건지\r\ntteonamyeon geuge kkeut-ingeonji\r\n\r\n시작은 말야 우우우우\r\nsijag-eun mal-ya uuuu\r\n그때는 말야 우우우우\r\ngeuttaeneun mal-ya uuuu\r\n나 없인 안된다 했잖아\r\nna eobs-in andoenda haessjanh-a\r\n너 없인 이제 내가 안돼 my love\r\nneo eobs-in ije naega andwae my love', 'T-Ara', 'My Love - T ARA (NhacPro.net).mp3', NULL, '2019-12-10 00:10:19', '2019-12-10 00:10:19'),
(97, 'Reload', 're-load.jpg', 31, 8, 57, 'You ready\r\nHey geogi jom bikyeo\r\napeul makji malgo nan apman bogo dallyeo\r\n\r\nBad mitdo kkeutdo eopsneun\r\nRumor Rumor\r\nnae balmok japji malgo\r\nLet me show you what i got\r\nijebuteoya\r\nneoege boyeojulge\r\n\r\nWhat you see What you get\r\nWhat you see What you get Reload\r\nSo let me blow your mind\r\n\r\nWhat you see What you get\r\nWhat you see What you get\r\nnaega seol mudaeya nae dwiro da mulleona\r\n\r\nullyeo peojil naui norae bollyum kiwo\r\nShowneun ije sijagiya\r\nOh oh oh oh oh oh swit ah-wo\r\n\r\nReload Reload\r\nHey mwoga geuri geuphan geonji\r\nWatch me\r\nije jedaero boyeojulge\r\n\r\nLet me show you what i got\r\nijebuteoya\r\nne sangsang geu isangeul boyeojulge\r\n\r\nWhat you see What you get\r\nWhat you see What you get Reload\r\nSo let me blow your mind\r\n\r\nWhat you see What you get\r\nWhat you see What you get\r\nnaega seol mudaeya nae dwiro da mulleona\r\n\r\nullyeo peojil naui norae bollyum kiwo\r\nShowneun ije sijagiya\r\nOh oh oh oh oh oh 쉿 ah-wo\r\nReload Reload\r\n\r\nWhat you see What you get\r\nWhat you see What you get Reload\r\nWhat you see What you get\r\nWhat you see What you get\r\nOh Hoo Yeah\r\n\r\nWhat you see What you get\r\nWhat you see What you get Reload\r\nSo let me blow your mind\r\n\r\nWhat you see What you get\r\nWhat you see What you get\r\n\r\nnaega seol mudaeya nae dwiro da mulleona\r\nullyeo peojil naui norae bollyum kiwo\r\nShowneun ije sijagiya\r\nOh oh oh oh oh oh 쉿 ah-wo\r\n\r\nWhat you see What you get\r\nWhat you see What you get Reload\r\nSo let me blow your mind\r\n\r\nWhat you see What you get\r\nWhat you see What you get Reload', 'T-Ara', 'Reload - T ARA (NhacPro.net).mp3', NULL, '2019-12-10 00:12:11', '2019-12-10 00:12:11'),
(98, 'Obsession', 'obsession.jpg', 32, 8, 58, 'Jebal ije geuman\r\n\r\nBami nuneul meolge kkeum hani\r\nNeon tto mollae sumeodeureotji\r\nJamdeun gwitga sseuk halda chyeodaboda\r\nHalkwigon useodae\r\n\r\nKkeutdo eopsi soksagineun moksori\r\nOh you’re the bad dream kill\r\nNareul hollyeo jakku bulleo\r\nNeo inneun got geurae nege orago\r\n\r\nNal andago? (I don’t think so)\r\nMwonde naege pagodeureo (I don’t think so)\r\nNeon nae nuneul garyeo (I don’t think so)\r\nJinsildeureul deopeo (I don’t think so)\r\nHeotdoen kkum beoryeo (I don’t think so)\r\nDogeul baetge haji ma (I don’t think so)\r\nNeon nal dasin mot gajyeo (I don’t think so)\r\nShut up and go away\r\n\r\nThousand nights jigyeopdorok malhaesseo\r\nJjotgo jjonneun angmong ijen kkeunnaelge\r\nBuri kkeojin exit light\r\nIje geuman kkeojyeo jullae naegeseo\r\n\r\nJigyeowo\r\n\r\nHa! geumanhae dwo\r\nNae gwitsoge ssodadaeneun sori\r\nImma let it blow\r\nOgameun geugeoseuro ssolligo gonduseogo\r\nDeureoon neoneun jemeotdaero hwijeoeo\r\nHannuneul tteun chaero jamdeulmyeon\r\nSori eopsi seumyeodeuneun the phantom\r\nI’m so sick and tired of it\r\nBuri kyeojimyeon nega sarajyeo itgil\r\n\r\nNal wihandago? (I don’t think so)\r\nMwonde naege pagodeureo (I don’t think so)\r\nGipge seumyeodeureo (I don’t think so)\r\nHollanseureowo (I don’t think so)\r\nTake whatever (I don’t think so)\r\nBoijido mara (I don’t think so)\r\nNeon nal dasin mot gajyeo (I don’t think so)\r\nJipchakaji jom ma\r\n\r\nThousand nights jigyeopdorok malhaesseo\r\nJjotgo jjonneun angmong ijen kkeunnaelge\r\nBuri kkeojin exit light\r\nIje geuman kkeojyeo jullae naegeseo\r\n\r\nBlacken my heart,\r\nCreepin’ dark night,\r\nStainin’ my soul\r\nJamdeun deut nuneul tteumyeon geochin soreumgwa\r\nSeonmyeonghan geugeosui heunjeokgwa\r\nJuin eomneun names on the ground\r\nBulleonae chumeul chwo tonight\r\nSay it what you like\r\n\r\nGeurae neowa haengbokaesseotdeon\r\nSigandeureul ara\r\nIjen kkeunnaeya handaneun geol\r\nForget everything yeah\r\n\r\nNal andago? (I don’t think so)\r\nMwonde naege pagodeureo (I don’t think so)\r\nNeon nae nuneul garyeo (I don’t think so)\r\nJinsildeureul deopeo (I don’t think so)\r\nHeotdoen kkum beoryeo (I don’t think so)\r\nDogeul baetge haji ma (I don’t think so)\r\nNeon nal dasin mot gajyeo (I don’t think so)\r\nShut up and go away\r\n\r\nThousand nights jigyeopdorok malhaesseo\r\nJjotgo jjonneun angmong ijen kkeunnaelge\r\nBuri kkeojin exit light\r\nIje geuman kkeojyeo jullae naegeseo\r\n\r\nOne night eodum soge boin geon\r\nNareul jjotdeon gimyohaetdeon geurimja\r\nBuri kyeojin exit light\r\nGeoul sogui nareul bogo inneun na\r\n\r\nNaegeseo sarajyeo\r\nKkeojyeo\r\nNaegeseo sarajyeo', 'Exo', 'Obsession - EXO (NhacPro.net).mp3', NULL, '2019-12-10 00:13:54', '2019-12-10 00:13:54'),
(99, 'Love Shot', 'loveshot.jpg', 32, 9, 59, 'Hey! a little bit of love,\r\nMy love non stop\r\nHey! a little bit of love,\r\nMy love non stop\r\n\r\nWaenji deultteun gibun gaseum ttwineun seollem\r\nJigeum naege matgyeobwa\r\nModeun sungani romaentik kkeuteopsi ieojil\r\nGireul chaja dallyeobwa\r\n\r\nGin harul deopgo guji meolji anteorado\r\nNeowa danduri tteona\r\nKkeullin daero\r\nUrin imi dabeul aljana (eodideun)\r\n\r\nJom deo meolli gabolkka gabolkka\r\nGeurim gateun haneulgwa matdaeun sesang neomeo\r\nEodinga eodinga deultteun ne mam sogeuro\r\nDallineun gibun I wanna give you baby\r\n\r\nHey! a little bit of love,\r\nMy love non stop\r\nHey! a little bit of love,\r\nMy love non stop\r\n\r\nNeol kkeonae bwa jobeun sae jang bakkeuro out!\r\nOh my god gonggiga dareun geol\r\nNalgaereul pyeo idaero Fly away\r\nCheoncheonhi deo keuge sum swimyeon dwae\r\n\r\nNatboda gireojin bami\r\nGajang hwaryeohage binnaneun sungan\r\nLet’s get started\r\nNeowa na dulman nwadugo Stop it\r\nBamsaedorok deo jayuropge dallyeoboja go!\r\n\r\nYeonghwa soge bwatdeon geori\r\nByeori ssodajineun jari\r\nEodideun malhae jullae\r\n(We don’t wait, go!)\r\n\r\nTeure bakin gyehoek ttawin eopdeorado\r\nNeowa hamkkemyeon joa\r\nBami saedo\r\nUrin jamdeul suga eopjana (idaero)\r\n\r\nByeoreul ttara gabolkka gabolkka\r\nGeurim gateun haneulgwa matdaeun sesang neomeo\r\nEodinga eodinga deultteun ne mam sogeuro\r\nDallineun gibun I wanna give you baby\r\n\r\nHey! a little bit of love,\r\nMy love non stop\r\nHey! a little bit of love,\r\nMy love non stop\r\n\r\nOh ssodajineun byeolbichi beonjyeo gadeuk beonjyeo\r\nOh girl eoduulsurok deo nunbusyeo\r\nGeu byeoreul daleun neowa na\r\n\r\nModeun geosi meomchun bam meomchun bam\r\nUri durui yaegiman kkeuteopsi ieojineun\r\nI sungan i sungan jayuroun goseuro\r\nDallineun gibun I wanna give you baby\r\n\r\nHey! a little bit of love,\r\nMy love non stop\r\nHey! dallineun gibun\r\nI wanna give you baby\r\n\r\nHey! a little bit of love,\r\nMy love non stop\r\nHey! dallineun gibun\r\nI wanna give you baby', 'Exo', 'Non Stop - EXO (NhacPro.net).mp3', NULL, '2019-12-10 00:15:40', '2019-12-10 00:15:40'),
(100, 'Start Light Journey', 'startlight.jpg', 13, 15, 60, 'Ride on 今すぐあなたと 恋の旅へ逃げ出して\r\n星から星へと ふたりきりで行くの star light journey\r\nI know ぜんぶ気づいている きっとはじめての予感\r\n危なくて だけど こころ踊る\r\nもう止まれないの lovely night\r\nどんなにあなた 恋い焦がれていても\r\n誰にも言えず 隠さなきゃダメなの?\r\n夜の散歩道 ふたりだけのひめごと\r\n忘れようとしても もう無理なの\r\n何食わぬ顔をして おしゃべりするけど\r\nふたりは気づいてる 戻れない\r\nだって だって 愛してる\r\nWow-oh-oh, ride on 今すぐあなたと 恋の旅へ 逃げ出して\r\n月が綺麗とか どうでもいい キスを star light journey\r\nYou know わたしを盗んで ずっと永遠につないでね\r\n危なくて だけどこころ踊る\r\nもう止まれないの lovely night\r\nヒロインだけじゃ ドラマにならないの\r\nセリフは野暮ね そばにいて それだけ\r\nやさしい嘘なら 言わないでハグをして\r\n夢だけ わたしに奪わせて\r\nさりげない 目配せで 伝わる気持ちは\r\n小さな魔法でしょう 抱きしめて\r\nもっと もっと 愛したい\r\nWow-oh-oh, Ride on 不意にこぼれだす 恋のなみだ きらめいて\r\nあなたが微笑む ひとりじゃない…', 'Nhật Bản', 'STAR-LIGHT-JOURNEY-Ikimonogakari.mp3', NULL, '2019-12-10 00:18:13', '2019-12-10 00:18:13'),
(101, 'My Buddy', 'hinageshi.jpg', 13, 15, 61, 'Hitori ja mirenakatta sekai\r\nBokura shika mirenai mirai\r\nIROTORIDORI hikaru Inochi no matataki\r\nKanjinagara\r\n\r\nKono hoshi ni wa musuu no SUTOORII\r\nIkimono no tachi no koe ni Mimi wo sumaseba\r\n\r\nDaiji na mono wa sugu soba ni\r\nAru tte iu janai ka\r\nKizukerya sore ga Answer\r\n\r\n“Dare ni naritai” to ka\r\n“Shiawase sou” tte nacchatte\r\nSou iu koto aru kedo ne\r\nKIMI wa itsumo KIMI nandatte\r\nBoku to nara muteki\r\n\r\n“You are my Buddy”\r\nHitori ja mirenakatta sekai\r\nBokura shika mirenai mirai\r\nIshindenshin muteki\r\nTotteoki no hibi\r\n“We are the Buddy”\r\nDokodemo tsunagaru TEREPASHII\r\nOtagai wo terashiau Buddy\r\nZutto shinka shite yukou\r\nMugen no kanousei Kanjinagara\r\n\r\nShisen no takasa wa chigatte mo onaji keshiki wo\r\nKyou mo ashita mo Mite itai ne\r\n\r\n“Hito wa aishiau kara arasoi wo suru no yo”\r\nTsubuyaita yokogao ga Kanishikatta Itooshikatta\r\nKimi wa ima, suteki\r\n\r\n“You are my Buddy”\r\nHitori ja okosenai kiseki\r\nBokura shika mirenai mirai\r\nIshindenshin suteki\r\nKakegae no nai hibi\r\n“We are the Buddy”\r\nToki ni wa hitsuyou DERIKASHII\r\nOtagai wo egakiau Buddy\r\nZutto shinka shite yukou\r\nMugen no kanousei Kanjinagara\r\n\r\nKurikaesu mainichi ni imi wa nakute mo\r\nShiawase tte shiranu ma ni tada soko ni aru mono\r\n\r\n“You are my Buddy”\r\n“We are the Buddy”\r\n\r\nHitori ja mirenakatta sekai\r\nBokura shika mirenai mirai\r\nIshindenshin muteki\r\nTotteoki no hibi\r\n“We are the Buddy”\r\nDokodemo tsunagaru TEREPASHII\r\nOtagai wo terashiau Buddy\r\nZutto shinka shite yukou\r\nMugen no kanousei Kanjinagara\r\nKIMI wa My Buddy\r\nForever My Buddy\r\n\r\nMy Buddy\r\n\r\n“You are my Buddy”\r\nI couldn’t see the world by myself\r\nOnly we can see the future\r\nWhen we feel a multi-coloured light\r\nFlicker\r\n\r\nThere are an infinite number of stories on this star\r\nIf you listen carefully to the animals’ voices\r\n\r\nThe important things\r\nAre there before you know it, aren’t they?\r\nIf you had just paid attention, you’d have your Answer right there\r\n\r\nThings like “I wanna be somebody”\r\nStarts to turn into “This feels like happiness”\r\nThese things happen\r\nBut you’ll always be you\r\nWhen I’m with you, we’re invincible\r\n\r\n“You are my Buddy”\r\nI couldn’t see the world by myself\r\nOnly we can see the future\r\nNothing can beat telepathy\r\nEvery day is precious\r\n“We are the Buddy”\r\nWherever we are, our telepathy connects us\r\nWe shine on each other, Buddy\r\nLet’s evolve together\r\nWhile we feel that the possibilities are endless\r\n\r\nWe may be looking from different heights,\r\nBut I wanna keep looking at the same view today and tomorrow\r\n\r\n“People love each other, and that’s why they fight”\r\nFrom the side, you’re grumbling face looked so sad and so lovely\r\nRight now, you’re amazing\r\n\r\n“You are my Buddy”\r\nI can’t make a miracle happen by myself\r\nOnly we can see the future\r\nTelepathy is amazing\r\nEvery day is irreplaceable\r\n“We are the Buddy”\r\nSometimes, we need delicacies\r\nWe picture each other, Buddy\r\nLet’s evolve together\r\nWhile we feel that the possibilities are endless\r\n\r\nThere may not be any meaning to it when the days are repetitive,\r\nBut just when you think you don’t know what happiness is, there it is\r\n\r\n“You are my Buddy”\r\n“We are the Buddy”\r\n\r\nI couldn’t see the world by myself\r\nOnly we can see the future\r\nNothing can beat telepathy\r\nEvery day is precious\r\n“We are the Buddy”\r\nWherever we are, our telepathy connects us\r\nWe shine on each other, Buddy\r\nLet’s evolve together\r\nWhile we feel that the possibilities are endless\r\nYou’re My Buddy\r\nForever My Buddy', 'Nhật Bản', 'My Buddy Japanese Version - GFriend (NhacPro.net).mp3', NULL, '2019-12-10 00:22:13', '2019-12-10 00:22:13'),
(102, 'Đã Nói Không Khóc(说好不哭)', 'toinoiladuoc.jpg', 33, 15, 62, 'Méiyǒule liánluò\r\nHòulái de shēnghuó\r\nWǒ dū shì tīng biérén shuō\r\nShuō nǎi zěnmeliǎo shuō nǎi zěnmeguò\r\nFàng bùxià de rén shì wǒ\r\nRén duō de shíhòu jiù dài zài jiǎoluò\r\nJiù pà biérén wèn qǐ wǒ\r\nNǐmen zěnmeliǎo nǎi dīzhe tóu\r\nHùzhe wǒ lián bàoyuàn dōu méiyǒu\r\nDiànhuà kāishǐ duǒ cóng bùduì wǒ shuō\r\nBù xíguàn yīgèrén shēnghuó\r\nLíkāi wǒ yǐhòu yào wǒ hǎohǎoguò\r\nPà dǎrǎo xiǎng zìyóu de wǒ\r\nDōu zhège shíhòu nǎi hái zàiyìzhe\r\nBiérén shì zěnme zěnme kàn wǒ de\r\nPīnmìng jiěshìzhe bùshì wǒ de cuò\r\nShì nǎi yào zǒu\r\n\r\nYǎnkànzhe nǎi nánguò\r\nWǎnliú dehuà què méiyǒu shuō\r\nNǎi huì wéixiào fàngshǒu\r\nShuō hǎobù kū ràng wǒ zǒu\r\n\r\nDiànhuà kāishǐ duǒ cóng bù duì wǒ shuō\r\nBù xíguàn yīgèrén shēnghuó\r\nLíkāi wǒ yǐhòu yào wǒ hǎohǎoguò\r\nPà dǎrǎo xiǎng zìyóu de wǒ\r\nDōu zhège shíhòu nǐ hái zàiyìzhe\r\nBiérén shì zěnme zěnme kàn wǒ de\r\nPīnmìng jiěshìzhe bùshì wǒ de cuò\r\nShì nǎi yào zǒu\r\n\r\nYǎnkànzhe nǎi nánguò\r\nWǎnliú dehuà què méiyǒu shuō\r\nNǎi huì wéixiào fàngshǒu\r\nShuō hǎobù kū ràng wǒ zǒu\r\n\r\nNǐ shénme dōu méiyǒu\r\nQuè hái wèi wǒ de mèng jiāyóu\r\nXīnténgguòle duōjiǔ\r\nHái zài zhǎo lǐyóu děng wǒ', 'Châu Kiệt Luân', 'Da Noi Khong Khoc - Chau Kiet Luan A Tin (NhacPro.net).mp3', NULL, '2019-12-10 00:25:08', '2019-12-10 00:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `song_categories`
--

CREATE TABLE `song_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_categories`
--

INSERT INTO `song_categories` (`id`, `topic_id`, `category_name`, `created_at`, `updated_at`) VALUES
(2, 2, 'Nhạc Trẻ Gây Nghiện', '2019-12-09 20:17:05', '2019-12-09 20:17:05'),
(3, 2, 'Giai Điệu Và Trào Lưu Gây Sốt', '2019-12-09 20:18:53', '2019-12-09 20:18:53'),
(4, 3, 'Nhạc Việt Mới Nổi Bật', '2019-12-09 20:19:19', '2019-12-09 20:19:19'),
(5, 3, 'Nhạc Được Nghe Nhiều 2019', '2019-12-09 20:19:41', '2019-12-09 20:19:41'),
(6, 4, 'US-UK Nổi Bật', '2019-12-09 20:20:14', '2019-12-09 20:20:14'),
(7, 4, 'Nhạc EDM Mới Nhất 2019', '2019-12-09 20:20:37', '2019-12-09 20:20:37'),
(8, 5, 'K- Pop Top Hits', '2019-12-09 20:21:11', '2019-12-09 20:21:11'),
(9, 5, 'K- Pop Nhạc Dance Nổi Bật', '2019-12-09 20:21:46', '2019-12-09 20:21:46'),
(10, 6, 'Bolero Hay Nhất', '2019-12-09 20:22:06', '2019-12-09 20:22:06'),
(11, 6, 'Bolero Mới Nhất', '2019-12-09 20:22:21', '2019-12-09 20:22:21'),
(12, 7, 'Nhạc Việt Remix', '2019-12-09 20:22:53', '2019-12-09 20:22:53'),
(13, 7, 'Nhạc Non - Stop Hay Nhất', '2019-12-09 20:23:12', '2019-12-09 20:23:12'),
(14, 8, 'Cà Phê Cùng Công Việc', '2019-12-09 20:23:41', '2019-12-09 20:23:41'),
(15, 8, 'Nhạc Cho Quán Cà Phê', '2019-12-09 20:24:01', '2019-12-09 20:24:01'),
(16, 9, 'Giáng Sinh Đã Về', '2019-12-09 20:24:47', '2019-12-09 20:24:47'),
(17, 9, 'Christmas Is Coming', '2019-12-09 20:25:11', '2019-12-09 20:25:11'),
(18, 10, 'Acoustic Thế Hệ 8X, 9X', '2019-12-09 20:25:50', '2019-12-09 20:25:50'),
(19, 10, 'Nhạc Acoustic Hay Nhất', '2019-12-09 20:26:12', '2019-12-09 20:26:12'),
(20, 11, 'Indie Việt', '2019-12-09 20:26:35', '2019-12-09 20:26:35'),
(21, 11, 'Nhạc Indie Hàn Thư Giãn', '2019-12-09 20:26:58', '2019-12-09 20:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic_name`, `picture`, `created_at`, `updated_at`) VALUES
(2, 'Trending', 'deae7ab8481260c9edb48d5b3c4b6151.jpg', '2019-12-09 08:13:16', '2019-12-09 08:13:16'),
(3, 'Nhạc Việt', 'nhac-viet.jpg', '2019-12-09 08:14:45', '2019-12-09 08:14:45'),
(4, 'Nhạc Âu Mỹ', 'nhac-aumy.jpg', '2019-12-09 08:15:34', '2019-12-09 08:15:34'),
(5, 'Nhạc Hàn', 'nhac-han.jpg', '2019-12-09 08:16:30', '2019-12-09 08:16:30'),
(6, 'Trữ Tình Bolero', 'bolero.jpg', '2019-12-09 08:17:07', '2019-12-09 08:17:07'),
(7, 'EDM', 'EDM.jpg', '2019-12-09 08:18:34', '2019-12-09 08:18:34'),
(8, 'Cà Phê', 'Cà Phê.jpg', '2019-12-09 08:19:04', '2019-12-09 08:19:04'),
(9, 'Giáng Sinh', 'Giangsinh.jpg', '2019-12-09 08:19:46', '2019-12-09 08:19:46'),
(10, 'Acoustic', 'Ascoutic.jpg', '2019-12-09 08:20:33', '2019-12-09 08:20:33'),
(11, 'Indie', 'Indie.jpg', '2019-12-09 08:22:06', '2019-12-09 08:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `verified`) VALUES
(1, 'admin', 'admin@myjoy.com', NULL, NULL, '$2y$10$VstkWnUlBS7r0ZeSRzK5fe4fzbM6LzUqlTGVCYoVnGyyTL915nbHm', NULL, '2019-12-08 05:51:21', '2019-12-08 05:51:38', 1),
(2, 'Đặng Minh Hoàng', 'mhoang3108@gmail.com', NULL, NULL, '$2y$10$VaTofiewLkJRjczDBTF/UOWT1aJBYuduS.z6koWtgbtMmA3G7ghDO', NULL, '2019-12-09 03:52:19', '2019-12-09 03:52:19', 1),
(3, 'chien', 'chientran880@gmail.com', NULL, NULL, '$2y$10$pPlS36.Ud9FnZxHI082jX.UG1yHyJzYuUlvdxBSLpGq1eHmEwiDFC', NULL, '2019-12-09 03:59:55', '2019-12-09 03:59:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`user_id`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '4gq1dTPIDfvkfyge15deEwc3yNLtihVK8qymgQJf', '2019-12-08 05:51:21', '2019-12-08 05:51:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_category_id_foreign` (`category_id`),
  ADD KEY `albums_artist_id_foreign` (`artist_id`);

--
-- Indexes for table `album_categories`
--
ALTER TABLE `album_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artists_category_id_foreign` (`category_id`);

--
-- Indexes for table `artist_categories`
--
ALTER TABLE `artist_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlists_user_id_foreign` (`user_id`);

--
-- Indexes for table `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD KEY `playlist_song_playlist_id_foreign` (`playlist_id`),
  ADD KEY `playlist_song_song_id_foreign` (`song_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipts_user_id_foreign` (`user_id`);

--
-- Indexes for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipt_detail_product_id_foreign` (`product_id`),
  ADD KEY `receipt_detail_receipt_id_foreign` (`receipt_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `songs_artist_id_foreign` (`artist_id`),
  ADD KEY `songs_album_id_foreign` (`album_id`),
  ADD KEY `songs_category_id_foreign` (`category_id`);

--
-- Indexes for table `song_categories`
--
ALTER TABLE `song_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `song_categories_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD KEY `verify_users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `album_categories`
--
ALTER TABLE `album_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `artist_categories`
--
ALTER TABLE `artist_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `song_categories`
--
ALTER TABLE `song_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `albums_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `album_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `artists`
--
ALTER TABLE `artists`
  ADD CONSTRAINT `artists_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `artist_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD CONSTRAINT `playlist_song_playlist_id_foreign` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `playlist_song_song_id_foreign` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD CONSTRAINT `receipt_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `receipt_detail_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `songs_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `songs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `song_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `song_categories`
--
ALTER TABLE `song_categories`
  ADD CONSTRAINT `song_categories_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
