-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 25, 2025 lúc 03:57 AM
-- Phiên bản máy phục vụ: 10.6.15-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_edu2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
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
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_hoc`
--

CREATE TABLE `bai_hoc` (
  `id` int(11) NOT NULL,
  `chuong_hoc_id` int(11) DEFAULT NULL,
  `noi_dung` text DEFAULT NULL,
  `ngay_tao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bai_hoc`
--

INSERT INTO `bai_hoc` (`id`, `chuong_hoc_id`, `noi_dung`, `ngay_tao`) VALUES
(1, 1, 'Lịch sử và tính năng của Python', '2023-02-06'),
(2, 1, 'Cài đặt Python và môi trường phát triển', '2023-02-06'),
(3, 1, 'Biến và kiểu dữ liệu cơ bản', '2023-02-07'),
(4, 1, 'Toán tử trong Python', '2023-02-07'),
(5, 1, 'Cấu trúc điều khiển và vòng lặp', '2023-02-08'),
(6, 2, 'Danh sách (Lists)', '2023-02-11'),
(7, 2, 'Tuple và Sets', '2023-02-11'),
(8, 2, 'Từ điển (Dictionaries)', '2023-02-12'),
(9, 2, 'List Comprehensions', '2023-02-12'),
(10, 2, 'Thao tác với chuỗi', '2023-02-13'),
(11, 3, 'Định nghĩa và gọi hàm', '2023-02-16'),
(12, 3, 'Tham số và đối số trong hàm', '2023-02-16'),
(13, 3, 'Hàm lambda và hàm nặc danh', '2023-02-17'),
(14, 3, 'Tạo và sử dụng module', '2023-02-17'),
(15, 3, 'Packages và thư viện phổ biến', '2023-02-18'),
(16, 4, 'Khái niệm về lập trình hướng đối tượng', '2023-02-21'),
(17, 4, 'Classes và Objects', '2023-02-21'),
(18, 4, 'Kế thừa và đa hình', '2023-02-22'),
(19, 4, 'Encapsulation và Abstraction', '2023-02-22'),
(20, 4, 'Magic methods trong Python', '2023-02-23'),
(21, 5, 'Khái niệm về phân tích dữ liệu', '2023-03-21'),
(22, 5, 'Quy trình phân tích dữ liệu', '2023-03-21'),
(23, 5, 'Chuẩn bị môi trường làm việc', '2023-03-22'),
(24, 5, 'Jupyter Notebook và Google Colab', '2023-03-22'),
(25, 5, 'Thu thập và làm sạch dữ liệu', '2023-03-23'),
(26, 6, 'Giới thiệu về NumPy', '2023-03-26'),
(27, 6, 'Mảng và thao tác với NumPy', '2023-03-26'),
(28, 6, 'Giới thiệu về Pandas', '2023-03-27'),
(29, 6, 'DataFrame và Series', '2023-03-27'),
(30, 6, 'Thao tác dữ liệu với Pandas', '2023-03-28'),
(31, 7, 'Giới thiệu về Matplotlib', '2023-03-31'),
(32, 7, 'Tạo biểu đồ cơ bản', '2023-03-31'),
(33, 7, 'Tùy chỉnh biểu đồ', '2023-04-01'),
(34, 7, 'Giới thiệu về Seaborn', '2023-04-01'),
(35, 7, 'Biểu đồ thống kê nâng cao', '2023-04-02'),
(36, 8, 'Phân tích thống kê cơ bản', '2023-04-06'),
(37, 8, 'Xử lý dữ liệu thiếu', '2023-04-06'),
(38, 8, 'Xử lý dữ liệu ngoại lai', '2023-04-07'),
(39, 8, 'Phân tích tương quan', '2023-04-07'),
(40, 8, 'Phân tích dữ liệu thời gian', '2023-04-08'),
(41, 9, 'Tổng quan về Django framework', '2023-04-16'),
(42, 9, 'Cài đặt Django và tạo project đầu tiên', '2023-04-16'),
(43, 9, 'Cấu trúc project Django', '2023-04-17'),
(44, 9, 'URL routing trong Django', '2023-04-17'),
(45, 9, 'Django admin interface', '2023-04-18'),
(46, 10, 'Django ORM và Models', '2023-04-21'),
(47, 10, 'Migrations trong Django', '2023-04-21'),
(48, 10, 'Tạo và sử dụng Views', '2023-04-22'),
(49, 10, 'Class-based Views', '2023-04-22'),
(50, 10, 'Django REST framework cơ bản', '2023-04-23'),
(51, 11, 'Hệ thống Template trong Django', '2023-04-26'),
(52, 11, 'Template inheritance', '2023-04-26'),
(53, 11, 'Django Forms cơ bản', '2023-04-27'),
(54, 11, 'Form validation', '2023-04-27'),
(55, 11, 'File uploads trong Django', '2023-04-28'),
(56, 12, 'Cấu hình cho production', '2023-05-01'),
(57, 12, 'Bảo mật trong Django', '2023-05-01'),
(58, 12, 'Xác thực và phân quyền', '2023-05-02'),
(59, 12, 'Triển khai lên web server', '2023-05-02'),
(60, 12, 'Testing và debugging', '2023-05-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_thi`
--

CREATE TABLE `bai_thi` (
  `id` int(11) NOT NULL,
  `ten_bai_thi` varchar(255) NOT NULL,
  `so_cau` varchar(100) NOT NULL,
  `loai` enum('chapter_test','final_test') NOT NULL DEFAULT 'chapter_test',
  `khoa_hoc_id` int(11) DEFAULT NULL,
  `chuong_hoc_id` int(11) DEFAULT NULL,
  `ngay_tao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bai_thi`
--

INSERT INTO `bai_thi` (`id`, `ten_bai_thi`, `so_cau`, `loai`, `khoa_hoc_id`, `chuong_hoc_id`, `ngay_tao`) VALUES
(1, 'Test chương 1 - Python cơ bản', '5', 'chapter_test', 1, 1, '2023-02-09'),
(2, 'Test chương 2 - Python cơ bản', '5', 'chapter_test', 1, 2, '2023-02-14'),
(3, 'Test chương 3 - Python cơ bản', '5', 'chapter_test', 1, 3, '2023-02-19'),
(4, 'Test chương 4 - Python cơ bản', '5', 'chapter_test', 1, 4, '2023-02-24'),
(5, 'Final Test - Python cơ bản', '3-3-4-4', 'final_test', 1, NULL, '2023-02-28'),
(6, 'Test chương 1 - Phân tích dữ liệu', '5', 'chapter_test', 2, 5, '2023-03-24'),
(7, 'Test chương 2 - Phân tích dữ liệu', '5', 'chapter_test', 2, 6, '2023-03-29'),
(8, 'Test chương 3 - Phân tích dữ liệu', '5', 'chapter_test', 2, 7, '2023-04-03'),
(9, 'Test chương 4 - Phân tích dữ liệu', '5', 'chapter_test', 2, 8, '2023-04-09'),
(10, 'Final Test - Phân tích dữ liệu với Python', '3-3-4-4', 'final_test', 2, NULL, '2023-04-10'),
(11, 'Test chương 1 - Django', '5', 'chapter_test', 3, 9, '2023-04-19'),
(12, 'Test chương 2 - Django', '5', 'chapter_test', 3, 10, '2023-04-24'),
(13, 'Test chương 3 - Django', '5', 'chapter_test', 3, 11, '2023-04-29'),
(14, 'Test chương 4 - Django', '5', 'chapter_test', 3, 12, '2023-05-04'),
(15, 'Final Test - Django', '3-3-4-4', 'final_test', 3, NULL, '2023-05-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_bai`
--

CREATE TABLE `cau_bai` (
  `id` int(11) NOT NULL,
  `bai_thi_id` int(11) NOT NULL,
  `nhch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_bai`
--

INSERT INTO `cau_bai` (`id`, `bai_thi_id`, `nhch_id`) VALUES
(20, 11, 142),
(21, 11, 152),
(22, 11, 149),
(23, 11, 146),
(24, 11, 141),
(30, 1, 14),
(31, 1, 7),
(32, 1, 5),
(33, 1, 12),
(34, 1, 15),
(49, 5, 6),
(50, 5, 9),
(51, 5, 10),
(52, 5, 28),
(53, 5, 24),
(54, 5, 17),
(55, 5, 37),
(56, 5, 36),
(57, 5, 41),
(58, 5, 35),
(59, 5, 51),
(60, 5, 60),
(61, 5, 56),
(62, 5, 59),
(63, 15, 153),
(64, 15, 155),
(65, 15, 145),
(66, 15, 160),
(67, 15, 164),
(68, 15, 161),
(69, 15, 172),
(70, 15, 188),
(71, 15, 181),
(72, 15, 189),
(73, 15, 210),
(74, 15, 200),
(75, 15, 198),
(76, 15, 204);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuong_hoc`
--

CREATE TABLE `chuong_hoc` (
  `id` int(11) NOT NULL,
  `khoa_hoc_id` int(11) DEFAULT NULL,
  `ten_chuong` varchar(255) DEFAULT NULL,
  `ngay_tao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chuong_hoc`
--

INSERT INTO `chuong_hoc` (`id`, `khoa_hoc_id`, `ten_chuong`, `ngay_tao`) VALUES
(1, 1, 'Giới thiệu về Python', '2023-02-05'),
(2, 1, 'Cấu trúc dữ liệu trong Python', '2023-02-10'),
(3, 1, 'Hàm và module trong Python', '2023-02-15'),
(4, 1, 'Lập trình hướng đối tượng với Python', '2023-02-20'),
(5, 2, 'Giới thiệu về phân tích dữ liệu', '2023-03-20'),
(6, 2, 'Sử dụng NumPy và Pandas', '2023-03-25'),
(7, 2, 'Trực quan hóa dữ liệu với Matplotlib và Seaborn', '2023-03-30'),
(8, 2, 'Phân tích dữ liệu nâng cao', '2023-04-05'),
(9, 3, 'Giới thiệu về Django', '2023-04-15'),
(10, 3, 'Xây dựng Models và Views', '2023-04-20'),
(11, 3, 'Templates và Forms', '2023-04-25'),
(12, 3, 'Triển khai và bảo mật', '2023-04-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-17 18:21:29.754157'),
(2, 'auth', '0001_initial', '2025-04-17 18:21:30.273157'),
(3, 'admin', '0001_initial', '2025-04-17 18:21:30.390165'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-04-17 18:21:30.398156'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-17 18:21:30.418166'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-04-17 18:21:30.493165'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-04-17 18:21:30.552165'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-04-17 18:21:30.578166'),
(9, 'auth', '0004_alter_user_username_opts', '2025-04-17 18:21:30.583156'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-04-17 18:21:30.629166'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-04-17 18:21:30.631165'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-04-17 18:21:30.640165'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-04-17 18:21:30.666157'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-04-17 18:21:30.691167'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-04-17 18:21:30.715167'),
(16, 'auth', '0011_update_proxy_permissions', '2025-04-17 18:21:30.721158'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-04-17 18:21:30.747166'),
(18, 'sessions', '0001_initial', '2025-04-17 18:21:30.790157');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ou3x2k0jlsvefuqrnqtphgo7nav5qvw7', 'eyJ1c2VyX2lkIjoxfQ:1u88Ip:jEXAt4a5Enb4Qi6vAmtzFBD4tFViaBQYofcyXUNvkzA', '2025-05-09 01:56:31.988821');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ht_quyen`
--

CREATE TABLE `ht_quyen` (
  `id` tinyint(4) NOT NULL,
  `ten_quyen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ht_quyen`
--

INSERT INTO `ht_quyen` (`id`, `ten_quyen`) VALUES
(1, 'Xem'),
(2, 'Xem-Sửa'),
(3, 'Xem-Sửa-Thêm'),
(4, 'Xem-Sửa-Xóa'),
(5, 'Xem-Sửa-Thêm-Xóa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ket_qua`
--

CREATE TABLE `ket_qua` (
  `id` int(11) NOT NULL,
  `nguoi_dung_id` int(11) NOT NULL,
  `bai_thi_id` int(11) NOT NULL,
  `lan_thi` int(11) NOT NULL DEFAULT 1,
  `diem` float NOT NULL,
  `ngay_thi` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ket_qua`
--

INSERT INTO `ket_qua` (`id`, `nguoi_dung_id`, `bai_thi_id`, `lan_thi`, `diem`, `ngay_thi`) VALUES
(1, 1, 11, 1, 80, '2025-04-17 18:43:50'),
(2, 1, 11, 2, 80, '2025-04-17 18:44:47'),
(3, 1, 15, 1, 14.2857, '2025-04-17 18:48:46'),
(4, 1, 15, 2, 14.2857, '2025-04-17 18:48:58'),
(5, 1, 15, 3, 42.8571, '2025-04-17 18:51:02'),
(6, 1, 15, 4, 7.14286, '2025-04-17 19:02:37'),
(7, 1, 11, 3, 80, '2025-04-17 19:03:18'),
(8, 1, 11, 4, 100, '2025-04-17 19:04:59'),
(9, 1, 1, 1, 80, '2025-04-17 19:05:44'),
(10, 1, 1, 2, 100, '2025-04-17 19:06:02'),
(11, 1, 5, 1, 50, '2025-04-17 19:07:18'),
(12, 1, 5, 2, 42.8571, '2025-04-17 19:19:06'),
(13, 1, 5, 3, 35.7143, '2025-04-17 19:24:32'),
(14, 1, 5, 4, 28.5714, '2025-04-17 19:25:41'),
(15, 1, 5, 5, 7.14286, '2025-04-17 19:33:35'),
(16, 1, 15, 5, 57.1429, '2025-04-21 09:26:53'),
(17, 1, 11, 5, 100, '2025-04-21 09:29:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa_hoc`
--

CREATE TABLE `khoa_hoc` (
  `id` int(11) NOT NULL,
  `ten_khoa_hoc` varchar(255) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `nguoi_dung_id` int(11) DEFAULT NULL,
  `ngay_tao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa_hoc`
--

INSERT INTO `khoa_hoc` (`id`, `ten_khoa_hoc`, `mo_ta`, `nguoi_dung_id`, `ngay_tao`) VALUES
(1, 'Python cơ bản', 'Khóa học Python từ cơ bản đến nâng cao cho người mới bắt đầu', 2, '2023-02-01'),
(2, 'Phân tích dữ liệu với Python', 'Học cách phân tích và xử lý dữ liệu sử dụng các thư viện Python', 2, '2023-03-15'),
(3, 'Lập trình ứng dụng web với Python Django', 'Xây dựng ứng dụng web hoàn chỉnh với framework Django', 2, '2023-04-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su_hoc_tap`
--

CREATE TABLE `lich_su_hoc_tap` (
  `id` int(11) NOT NULL,
  `nguoi_dung_id` int(11) DEFAULT NULL,
  `bai_hoc_id` int(11) DEFAULT NULL,
  `trang_thai` enum('chua_hoc','dang_hoc','da_hoan_thanh') DEFAULT NULL,
  `ngay_cap_nhat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nd_trang`
--

CREATE TABLE `nd_trang` (
  `id` int(11) NOT NULL,
  `bai_hoc_id` int(11) NOT NULL,
  `so_trang` int(11) NOT NULL,
  `tieu_de` varchar(255) DEFAULT NULL,
  `noi_dung` text DEFAULT NULL,
  `duong_dan` text DEFAULT NULL,
  `ngay_tao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nd_trang`
--

INSERT INTO `nd_trang` (`id`, `bai_hoc_id`, `so_trang`, `tieu_de`, `noi_dung`, `duong_dan`, `ngay_tao`) VALUES
(1, 1, 1, 'Lịch sử của Python', 'Python được tạo ra bởi Guido van Rossum vào cuối những năm 1980 và được phát hành lần đầu tiên vào năm 1991. Ngôn ngữ này được đặt tên theo chương trình hài kịch của Anh \"Monty Python Flying Circus\". Python được thiết kế với triết lý đơn giản, dễ đọc và làm cho lập trình trở nên thú vị.', NULL, '2023-02-06'),
(2, 1, 2, 'Tính năng chính của Python', 'Python nổi bật với cú pháp đơn giản, dễ đọc, hỗ trợ nhiều mô hình lập trình (hướng đối tượng, lập trình hàm, lập trình câu lệnh). Python có thư viện tiêu chuẩn phong phú và cộng đồng lớn mạnh. Ngôn ngữ này được sử dụng rộng rãi trong phát triển web, phân tích dữ liệu, trí tuệ nhân tạo, và tự động hóa.', NULL, '2023-02-06'),
(3, 2, 1, 'Cài đặt Python', 'Python có thể được cài đặt từ trang web chính thức python.org. Hướng dẫn chi tiết cách cài đặt Python trên các hệ điều hành khác nhau như Windows, macOS và Linux. Đảm bảo thêm Python vào biến môi trường PATH để có thể chạy Python từ command line.', NULL, '2023-02-06'),
(4, 2, 2, 'Môi trường phát triển tích hợp (IDE)', 'Các IDE phổ biến cho Python bao gồm PyCharm, Visual Studio Code, Jupyter Notebook và Spyder. Mỗi IDE có những tính năng và ưu điểm riêng. PyCharm cung cấp nhiều tính năng mạnh mẽ nhưng nặng. VS Code nhẹ và linh hoạt. Jupyter Notebook tuyệt vời cho phân tích dữ liệu và trực quan hóa.', NULL, '2023-02-06'),
(5, 3, 1, 'Biến trong Python', 'Trong Python, biến được tạo khi bạn gán giá trị cho nó. Không cần khai báo kiểu dữ liệu trước. Quy tắc đặt tên biến: bắt đầu bằng chữ cái hoặc dấu gạch dưới, theo sau là chữ cái, số hoặc dấu gạch dưới. Python phân biệt chữ hoa và chữ thường trong tên biến.', NULL, '2023-02-07'),
(6, 4, 1, 'Toán tử số học', 'Python hỗ trợ các toán tử số học cơ bản như +, -, *, /, % (chia lấy dư), // (chia lấy phần nguyên), ** (lũy thừa). Ví dụ: 5 + 2 = 7, 5 - 2 = 3, 5 * 2 = 10, 5 / 2 = 2.5, 5 % 2 = 1, 5 // 2 = 2, 5 ** 2 = 25', NULL, '2023-02-07'),
(7, 4, 2, 'Toán tử so sánh và logic', 'Toán tử so sánh: ==, !=, >, <, >=, <=. Toán tử logic: and, or, not. Các toán tử này được sử dụng để tạo ra các biểu thức điều kiện trong câu lệnh if, while và các biểu thức khác.', NULL, '2023-02-07'),
(8, 5, 1, 'Câu lệnh if-else', 'Cấu trúc điều khiển if-else trong Python cho phép thực thi mã dựa trên điều kiện. Cú pháp: if điều_kiện: lệnh elif điều_kiện: lệnh else: lệnh. Lưu ý về cách thụt đầu dòng trong Python, đây là cách để xác định khối mã.', NULL, '2023-02-08'),
(9, 6, 1, 'Giới thiệu về Lists', 'List là một cấu trúc dữ liệu được sử dụng để lưu trữ nhiều phần tử. Lists được định nghĩa bằng cách sử dụng dấu ngoặc vuông []. Các phần tử trong list có thể có kiểu dữ liệu khác nhau và được đánh số từ 0. Ví dụ: my_list = [1, \"Hello\", 3.14]', NULL, '2023-02-11'),
(10, 6, 2, 'Thao tác với Lists', 'Các thao tác phổ biến với list: truy cập phần tử (my_list[0]), cắt list (my_list[1:3]), thêm phần tử (append(), insert()), xóa phần tử (remove(), pop()), kết hợp lists (extend(), +), sắp xếp (sort(), sorted()), đảo ngược (reverse()).', NULL, '2023-02-11'),
(11, 7, 1, 'Tuple trong Python', 'Tuple là cấu trúc dữ liệu giống như list nhưng không thể thay đổi (immutable). Tuple được định nghĩa bằng dấu ngoặc đơn (). Ví dụ: my_tuple = (1, 2, 3). Vì tuple không thể thay đổi, nên sử dụng tuple khi muốn đảm bảo dữ liệu không bị thay đổi.', NULL, '2023-02-11'),
(12, 8, 1, 'Giới thiệu Dictionary', 'Dictionary là cấu trúc dữ liệu lưu trữ dạng key-value. Được định nghĩa bằng dấu ngoặc nhọn {}. Ví dụ: my_dict = {\"name\": \"John\", \"age\": 30}. Key trong dictionary phải là kiểu dữ liệu không thay đổi (immutable) như string, number hoặc tuple.', NULL, '2023-02-12'),
(13, 8, 2, 'Thao tác với Dictionary', 'Các thao tác cơ bản: truy cập giá trị (my_dict[\"name\"]), thêm/cập nhật (my_dict[\"email\"] = \"john@example.com\"), xóa phần tử (del my_dict[\"age\"]), các phương thức keys(), values(), items(), get(). Dictionary rất hữu ích để lưu trữ dữ liệu có cấu trúc.', NULL, '2023-02-12'),
(14, 9, 1, 'List Comprehension là gì', 'List Comprehension là cú pháp ngắn gọn để tạo list mới từ iterable. Cú pháp: [expression for item in iterable if condition]. Ví dụ: squares = [x**2 for x in range(10)].', NULL, '2023-02-12'),
(15, 10, 1, 'Chuỗi trong Python', 'Chuỗi là dãy các ký tự, được đặt trong dấu nháy đơn hoặc nháy kép. Chuỗi trong Python là immutable. Một số phương thức chuỗi: upper(), lower(), strip(), replace(), split(), join().', NULL, '2023-02-13'),
(16, 10, 2, 'String Formatting', 'Python hỗ trợ nhiều cách định dạng chuỗi: % operator, str.format(), f-strings. F-strings (từ Python 3.6) là cách hiện đại nhất: f\"Name: {name}, Age: {age}\".', NULL, '2023-02-13'),
(17, 11, 1, 'Định nghĩa hàm', 'Hàm được định nghĩa bằng từ khóa def, theo sau là tên hàm và tham số trong ngoặc đơn. Ví dụ: def greet(name): return f\"Hello, {name}!\". Hàm có thể trả về giá trị bằng return hoặc không trả về gì (return None).', NULL, '2023-02-16'),
(18, 12, 1, 'Các loại tham số', 'Python hỗ trợ tham số vị trí, tham số mặc định (def func(a=10)), tham số từ khóa, *args (nhận nhiều tham số vị trí), **kwargs (nhận nhiều tham số từ khóa). Ví dụ: def func(a, b=5, *args, **kwargs).', NULL, '2023-02-16'),
(19, 12, 2, 'Truyền đối số', 'Có thể truyền đối số theo vị trí hoặc theo tên: func(10, b=20). Từ Python 3.8 có toán tử / và * để chỉ định tham số chỉ vị trí hoặc chỉ từ khóa.', NULL, '2023-02-16'),
(20, 13, 1, 'Hàm lambda', 'Lambda là hàm ẩn danh nhỏ gọn, chỉ có một biểu thức. Cú pháp: lambda arguments: expression. Ví dụ: multiply = lambda x, y: x * y.', NULL, '2023-02-17'),
(21, 14, 1, 'Module là gì', 'Module là file Python chứa mã, hàm, biến có thể sử dụng ở file khác. Import module bằng: import module_name hoặc from module_name import function.', NULL, '2023-02-17'),
(22, 14, 2, 'Tạo module riêng', 'Tạo module bằng cách viết code vào file .py. Ví dụ file utils.py với hàm add(a, b). Sử dụng: import utils rồi gọi utils.add(5, 3).', NULL, '2023-02-17'),
(23, 15, 1, 'Python Packages', 'Package là thư mục chứa nhiều module, có file __init__.py. Cài đặt packages bằng pip: pip install package_name. Một số thư viện phổ biến: NumPy, Pandas, Matplotlib, Requests, Django, Flask.', NULL, '2023-02-18'),
(24, 16, 1, 'OOP là gì', 'Lập trình hướng đối tượng (OOP) là phương pháp lập trình dựa trên khái niệm \"đối tượng\" chứa dữ liệu và phương thức. 4 nguyên lý cơ bản: Đóng gói, Trừu tượng, Kế thừa, Đa hình.', NULL, '2023-02-21'),
(25, 17, 1, 'Định nghĩa Class', 'Class được định nghĩa bằng từ khóa class. Phương thức __init__ là constructor. Ví dụ: class Person: def __init__(self, name): self.name = name.', NULL, '2023-02-21'),
(26, 17, 2, 'Tạo và sử dụng Objects', 'Object là thể hiện của class. Tạo bằng cách: p = Person(\"John\"). Truy cập thuộc tính: p.name. Gọi phương thức: p.say_hello().', NULL, '2023-02-21'),
(27, 18, 1, 'Kế thừa', 'Kế thừa cho phép class con sử dụng thuộc tính và phương thức của class cha. Cú pháp: class Student(Person). Hàm super() gọi phương thức từ class cha.', NULL, '2023-02-22'),
(28, 18, 2, 'Đa hình', 'Đa hình cho phép sử dụng cùng một tên phương thức nhưng hành vi khác nhau. Ví dụ: class Dog và class Cat đều có phương thức sound(), nhưng kết quả khác nhau.', NULL, '2023-02-22'),
(29, 19, 1, 'Encapsulation', 'Encapsulation (đóng gói) giấu chi tiết bên trong object. Trong Python, sử dụng prefix _ (protected) và __ (private) cho thuộc tính. Ví dụ: self.__password.', NULL, '2023-02-22'),
(30, 20, 1, 'Magic Methods', 'Magic methods (dunder methods) bắt đầu và kết thúc bằng __. Ví dụ: __init__, __str__, __repr__, __add__. __str__ định nghĩa cách hiển thị object khi dùng str() hoặc print().', NULL, '2023-02-23'),
(31, 21, 1, 'Phân tích dữ liệu là gì', 'Phân tích dữ liệu là quá trình kiểm tra, làm sạch, biến đổi và mô hình hóa dữ liệu để khám phá thông tin hữu ích, đưa ra kết luận và hỗ trợ ra quyết định.', NULL, '2023-03-21'),
(32, 22, 1, 'Các bước phân tích dữ liệu', 'Quy trình phân tích dữ liệu: Thu thập dữ liệu, Làm sạch dữ liệu, Khám phá và Phân tích dữ liệu, Mô hình hóa dữ liệu, Trực quan hóa và Trình bày kết quả.', NULL, '2023-03-21'),
(33, 23, 1, 'Cài đặt môi trường', 'Cài đặt Anaconda là cách đơn giản nhất để có môi trường phân tích dữ liệu đầy đủ. Anaconda bao gồm Python, Jupyter, và nhiều thư viện phổ biến như NumPy, Pandas, Matplotlib.', NULL, '2023-03-22'),
(34, 24, 1, 'Jupyter Notebook', 'Jupyter Notebook là môi trường tương tác cho phép kết hợp code, text, công thức toán học và trực quan hóa. Code được tổ chức trong các ô (cells) có thể chạy độc lập.', NULL, '2023-03-22'),
(35, 25, 1, 'Thu thập dữ liệu', 'Dữ liệu có thể được thu thập từ nhiều nguồn: API, web scraping, cơ sở dữ liệu, file CSV/Excel. Python có các thư viện hỗ trợ như requests, BeautifulSoup, pandas để thu thập dữ liệu.', NULL, '2023-03-23'),
(36, 26, 1, 'NumPy cơ bản', 'NumPy là thư viện cơ bản cho tính toán khoa học trong Python. NumPy cung cấp cấu trúc dữ liệu array nhiều chiều, nhanh và hiệu quả hơn lists.', NULL, '2023-03-26'),
(37, 27, 1, 'NumPy Arrays', 'Tạo arrays: np.array([1, 2, 3]), np.zeros(5), np.ones((2,3)), np.arange(10). Thao tác: indexing, slicing, reshaping, broadcasting.', NULL, '2023-03-26'),
(38, 28, 1, 'Pandas cơ bản', 'Pandas là thư viện phân tích dữ liệu cung cấp cấu trúc DataFrame giống bảng tính. Import: import pandas as pd. Tạo DataFrame: pd.DataFrame(data).', NULL, '2023-03-27'),
(39, 29, 1, 'Series và DataFrame', 'Series là mảng 1 chiều với index. DataFrame là cấu trúc 2 chiều như bảng với hàng và cột. Cả hai đều hỗ trợ các thao tác dữ liệu phong phú.', NULL, '2023-03-27'),
(40, 30, 1, 'Làm việc với Pandas', 'Đọc dữ liệu: pd.read_csv(), pd.read_excel(). Thao tác: selection, filtering, groupby, merge, join, concat, pivot_table.', NULL, '2023-03-28'),
(41, 31, 1, 'Matplotlib cơ bản', 'Matplotlib là thư viện trực quan hóa dữ liệu cơ bản trong Python. Import: import matplotlib.pyplot as plt. Tạo biểu đồ: plt.plot(x, y).', NULL, '2023-03-31'),
(42, 32, 1, 'Các loại biểu đồ', 'Matplotlib hỗ trợ nhiều loại biểu đồ: plot (đường), scatter (điểm), bar (cột), hist (histogram), pie (tròn), boxplot và nhiều loại khác.', NULL, '2023-03-31'),
(43, 33, 1, 'Tùy chỉnh biểu đồ', 'Thêm tiêu đề: plt.title(). Đặt tên trục: plt.xlabel(), plt.ylabel(). Thêm chú thích: plt.legend(). Định dạng: màu, marker, linewidth.', NULL, '2023-04-01'),
(44, 34, 1, 'Seaborn giới thiệu', 'Seaborn là thư viện dựa trên Matplotlib nhưng cung cấp API cao cấp hơn và giao diện đẹp hơn. Import: import seaborn as sns.', NULL, '2023-04-01'),
(45, 35, 1, 'Biểu đồ thống kê', 'Seaborn có nhiều biểu đồ thống kê: boxplot, violinplot, heatmap, pairplot, jointplot. Các biểu đồ này giúp hiểu phân phối và tương quan dữ liệu.', NULL, '2023-04-02'),
(46, 36, 1, 'Thống kê mô tả', 'Thống kê mô tả giúp tóm tắt dữ liệu: trung bình (mean), trung vị (median), mode, độ lệch chuẩn (std), phân vị (quantile). Dùng df.describe() trong Pandas.', NULL, '2023-04-06'),
(47, 37, 1, 'Xử lý dữ liệu thiếu', 'Các phương pháp xử lý dữ liệu thiếu: xóa bỏ (dropna), thay thế (fillna) bằng giá trị trung bình, trung vị, hoặc nội suy (interpolate).', NULL, '2023-04-06'),
(48, 38, 1, 'Dữ liệu ngoại lai', 'Dữ liệu ngoại lai (outliers) là giá trị khác thường. Phát hiện bằng Z-score, IQR. Xử lý: cắt, thay thế, biến đổi.', NULL, '2023-04-07'),
(49, 39, 1, 'Phân tích tương quan', 'Tương quan đo mức độ liên hệ giữa hai biến. Hệ số tương quan Pearson r từ -1 đến 1. Tính bằng df.corr(), trực quan hóa bằng sns.heatmap().', NULL, '2023-04-07'),
(50, 40, 1, 'Dữ liệu thời gian', 'Pandas hỗ trợ dữ liệu thời gian: pd.to_datetime(), resample(), rolling(). Phân tích xu hướng, mùa vụ và chu kỳ trong dữ liệu thời gian.', NULL, '2023-04-08'),
(51, 41, 1, 'Django là gì', 'Django là framework web Python theo mô hình MVT (Model-View-Template). Django giúp phát triển web nhanh chóng, an toàn và có thể mở rộng.', NULL, '2023-04-16'),
(52, 42, 1, 'Cài đặt Django', 'Cài đặt Django: pip install django. Tạo project: django-admin startproject mysite. Tạo ứng dụng: python manage.py startapp myapp.', NULL, '2023-04-16'),
(53, 43, 1, 'Cấu trúc project', 'Cấu trúc project Django: settings.py (cấu hình), urls.py (định tuyến), wsgi.py (giao diện WSGI), asgi.py (giao diện ASGI).', NULL, '2023-04-17'),
(54, 44, 1, 'URL routing', 'URLs trong Django định nghĩa trong urls.py bằng path(): path(\"articles/<int:year>/\", views.year_archive). URLs kết nối request với view functions.', NULL, '2023-04-17'),
(55, 45, 1, 'Admin interface', 'Django Admin là giao diện quản trị tích hợp. Đăng ký model: admin.site.register(MyModel). Tùy chỉnh bằng ModelAdmin.', NULL, '2023-04-18'),
(56, 46, 1, 'Django Models', 'Models định nghĩa cấu trúc dữ liệu bằng class kế thừa models.Model. Ví dụ: class Article(models.Model): title = models.CharField(max_length=100).', NULL, '2023-04-21'),
(57, 47, 1, 'Migrations', 'Migrations là cách Django theo dõi thay đổi model. Tạo migration: makemigrations. Áp dụng: migrate. Kiểm tra: showmigrations, sqlmigrate.', NULL, '2023-04-21'),
(58, 48, 1, 'Views cơ bản', 'Views xử lý HTTP requests và trả về HTTP responses. View function nhận request và trả về HttpResponse. Template giúp tạo HTML động.', NULL, '2023-04-22'),
(59, 49, 1, 'Class-based Views', 'Class-based Views (CBVs) cung cấp cách tổ chức code tốt hơn function-based views. Django có sẵn nhiều CBVs: ListView, DetailView, CreateView...', NULL, '2023-04-22'),
(60, 50, 1, 'REST framework', 'Django REST framework giúp xây dựng Web APIs. Serializers chuyển đổi giữa Python objects và JSON. ModelViewSet kết hợp CRUD operations.', NULL, '2023-04-23'),
(61, 51, 1, 'Django Templates', 'Templates là file HTML có chứa syntax Django để render dữ liệu động. Cú pháp: biến {{ variable }}, logic {% if condition %}, filter {{ text|upper }}.', NULL, '2023-04-26'),
(62, 52, 1, 'Template Inheritance', 'Template inheritance cho phép tạo base template và extends nó. {% extends \"base.html\" %} kế thừa. {% block content %}{% endblock %} định nghĩa phần có thể ghi đè.', NULL, '2023-04-26'),
(63, 53, 1, 'Django Forms', 'Forms giúp xử lý dữ liệu từ người dùng. Định nghĩa: class MyForm(forms.Form): name = forms.CharField(). ModelForm tự động tạo form từ model.', NULL, '2023-04-27'),
(64, 54, 1, 'Validation', 'Form validation kiểm tra dữ liệu nhập. form.is_valid() chạy validation. Thêm validations tùy chỉnh bằng clean_fieldname() hoặc clean().', NULL, '2023-04-27'),
(65, 55, 1, 'File Uploads', 'Django xử lý file upload qua FileField và ImageField. form.cleaned_data[\"file\"] truy cập file đã upload. Lưu ý cấu hình MEDIA_ROOT và MEDIA_URL.', NULL, '2023-04-28'),
(66, 56, 1, 'Cấu hình Production', 'Cấu hình cho production: DEBUG=False, SECRET_KEY an toàn, ALLOWED_HOSTS, STATIC_ROOT, database settings. Sử dụng các biến môi trường.', NULL, '2023-05-01'),
(67, 57, 1, 'Django Security', 'Django có nhiều tính năng bảo mật: CSRF protection, SQL injection prevention, XSS protection, clickjacking protection, secure cookies.', NULL, '2023-05-01'),
(68, 58, 1, 'Authentication', 'Django auth xử lý users, groups, permissions. User model có các phương thức authenticate(), login(), logout(). @login_required decorator bảo vệ views.', NULL, '2023-05-02'),
(69, 59, 1, 'Deployment', 'Triển khai Django: Gunicorn/uWSGI + Nginx, collectstatic, database migration. Dịch vụ hosting: Heroku, PythonAnywhere, AWS, DigitalOcean.', NULL, '2023-05-02'),
(70, 60, 1, 'Testing', 'Django testing framework dựa trên unittest. TestCase cho unit tests. Client() giả lập HTTP requests. Coverage kiểm tra độ phủ code.', NULL, '2023-05-03'),
(71, 23, 2, 'Virtual Environment', 'Virtual environment giúp tách biệt các dự án Python khác nhau. Tạo: python -m venv myenv. Kích hoạt: source myenv/bin/activate (Linux/Mac) hoặc myenv\\Scripts\\activate (Windows).', NULL, '2023-03-22'),
(72, 26, 2, 'Ứng dụng của NumPy', 'NumPy được sử dụng rộng rãi trong khoa học dữ liệu, học máy, xử lý ảnh, và tính toán khoa học. NumPy nhanh vì được viết bằng C và các thao tác vector hóa.', NULL, '2023-03-26'),
(73, 31, 2, 'Figure và Axes', 'Matplotlib tổ chức biểu đồ thành Figure và Axes. Figure là toàn bộ hình, có thể chứa nhiều Axes. fig, ax = plt.subplots() tạo cả hai.', NULL, '2023-03-31'),
(74, 36, 2, 'Phân phối dữ liệu', 'Hiểu phân phối dữ liệu rất quan trọng. Phân phối chuẩn (bình thường), đều, loga, lệch phải, lệch trái là những phân phối thường gặp.', NULL, '2023-04-06'),
(75, 41, 2, 'Django history', 'Django được phát triển từ năm 2003, ban đầu để quản lý các trang tin tức. Tên Django lấy từ nhạc sĩ guitar jazz Django Reinhardt.', NULL, '2023-04-16'),
(76, 46, 2, 'Field types', 'Django models có nhiều loại fields: CharField, TextField, IntegerField, DateField, ForeignKey, ManyToManyField, FileField, ImageField, BooleanField...', NULL, '2023-04-21'),
(77, 51, 2, 'Template filters', 'Filters trong Django template biến đổi giá trị biến: {{ name|lower }} (chữ thường), {{ text|truncatewords:30 }} (cắt từ), {{ date|date:\"Y-m-d\" }} (định dạng ngày).', NULL, '2023-04-26'),
(78, 56, 2, 'Checklist triển khai', 'Checklist triển khai Django: SECRET_KEY, DEBUG=False, ALLOWED_HOSTS, database, STATIC_ROOT, MEDIA_ROOT, logging, security middleware, caching.', NULL, '2023-05-01'),
(79, 60, 2, 'Test-Driven Development', 'TDD viết test trước khi viết code. Quy trình: viết test thất bại, viết code để pass test, refactor code. TDD giúp code chất lượng cao và dễ bảo trì.', NULL, '2023-05-03'),
(80, 32, 2, 'Multiple plots', 'Tạo nhiều biểu đồ: plt.subplot(2,2,1) chia cửa sổ thành lưới 2x2 và chọn ô đầu tiên. plt.figure() tạo figure mới. plt.savefig(\"plot.png\") lưu biểu đồ.', NULL, '2023-03-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mat_khau` varchar(255) DEFAULT NULL,
  `vai_tro` enum('hoc_vien','giao_vien','quan_tri') DEFAULT NULL,
  `ngay_tao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `ho_ten`, `email`, `mat_khau`, `vai_tro`, `ngay_tao`) VALUES
(1, 'Nguyễn Văn Học', 'hv@gmail.com', 'matkhau123', 'hoc_vien', '2023-01-15'),
(2, 'Trần Thị Giảng', 'giaovien@example.com', 'teacher456', 'giao_vien', '2022-12-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhch`
--

CREATE TABLE `nhch` (
  `id` int(11) NOT NULL,
  `chuong_hoc_id` int(11) NOT NULL,
  `cau_hoi` text NOT NULL,
  `dap_an_a` varchar(255) NOT NULL,
  `dap_an_b` varchar(255) NOT NULL,
  `dap_an_c` varchar(255) DEFAULT NULL,
  `dap_an_d` varchar(255) DEFAULT NULL,
  `dap_an_dung` enum('A','B','C','D') NOT NULL,
  `hinh_anh` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhch`
--

INSERT INTO `nhch` (`id`, `chuong_hoc_id`, `cau_hoi`, `dap_an_a`, `dap_an_b`, `dap_an_c`, `dap_an_d`, `dap_an_dung`, `hinh_anh`) VALUES
(1, 1, 'Python được tạo ra bởi ai?', 'Guido van Rossum', 'James Gosling', 'Bjarne Stroustrup', 'Linus Torvalds', 'A', NULL),
(2, 1, 'Python được phát hành lần đầu tiên vào năm nào?', '1989', '1991', '1995', '2000', 'B', NULL),
(3, 1, 'Python là ngôn ngữ lập trình kiểu gì?', 'Biên dịch (Compiled)', 'Thông dịch (Interpreted)', 'Hybrid', 'Không phải ngôn ngữ lập trình', 'B', NULL),
(4, 1, 'Python được đặt tên theo điều gì?', 'Con rắn Python', 'Chương trình truyền hình Monty Python', 'Không có ý nghĩa đặc biệt', 'Tên nhà phát triển chính', 'B', NULL),
(5, 1, 'Đâu là phần mở rộng thông thường của file Python?', '.py', '.python', '.pt', '.pyt', 'A', NULL),
(6, 1, 'Kiểu dữ liệu nào sau đây KHÔNG phải là kiểu dữ liệu cơ bản của Python?', 'int', 'float', 'array', 'bool', 'C', NULL),
(7, 1, 'Cách nào để hiển thị \"Hello World\" trong Python?', 'console.log(\"Hello World\")', 'System.out.println(\"Hello World\")', 'print(\"Hello World\")', 'echo \"Hello World\"', 'C', NULL),
(8, 1, 'Cách viết chú thích một dòng trong Python?', '/* Comment */', '// Comment', '# Comment', '<!-- Comment -->', 'C', NULL),
(9, 1, 'Toán tử nào được sử dụng để kiểm tra bằng nhau trong Python?', '=', '==', '===', '!=', 'B', NULL),
(10, 1, 'Toán tử ** trong Python dùng để làm gì?', 'Phép nhân', 'Phép chia lấy phần dư', 'Lũy thừa', 'Phép AND logic', 'C', NULL),
(11, 1, 'Cấu trúc nào sau đây được sử dụng cho câu lệnh điều kiện trong Python?', 'if-else', 'switch-case', 'try-catch', 'for-in', 'A', NULL),
(12, 1, 'Đâu là IDE phổ biến cho Python?', 'Visual Studio Code', 'Eclipse', 'XCode', 'Tất cả đáp án trên', 'A', NULL),
(13, 1, 'Trong Python, khi nào xảy ra lỗi \"IndentationError\"?', 'Khi có lỗi cú pháp', 'Khi sử dụng khoảng trắng và tab không đúng cách', 'Khi thiếu dấu ngoặc', 'Khi khai báo biến không hợp lệ', 'B', NULL),
(14, 1, 'Python thường được sử dụng trong lĩnh vực nào sau đây?', 'Phát triển web', 'Khoa học dữ liệu', 'Trí tuệ nhân tạo', 'Tất cả đáp án trên', 'D', NULL),
(15, 1, 'Đâu là đặc điểm quan trọng của Python?', 'Cú pháp phức tạp', 'Mã hóa khó đọc', 'Dễ học và dễ đọc', 'Tốc độ thực thi nhanh nhất', 'C', NULL),
(16, 2, 'Cấu trúc dữ liệu nào sau đây là có thứ tự và có thể thay đổi trong Python?', 'List', 'Tuple', 'Set', 'Dictionary', 'A', NULL),
(17, 2, 'Cấu trúc dữ liệu nào sau đây là có thứ tự và không thể thay đổi trong Python?', 'List', 'Tuple', 'Set', 'Dictionary', 'B', NULL),
(18, 2, 'Đâu là cách khai báo một list rỗng trong Python?', 'list = []', 'list = ()', 'list = {}', 'list = \"\"', 'A', NULL),
(19, 2, 'Để truy cập phần tử đầu tiên trong list Python, ta sử dụng chỉ số nào?', '0', '1', 'first', '-1', 'A', NULL),
(20, 2, 'Phương thức nào được sử dụng để thêm một phần tử vào cuối danh sách trong Python?', 'append()', 'insert()', 'extend()', 'add()', 'A', NULL),
(21, 2, 'Cú pháp nào sau đây dùng để khai báo một tuple trong Python?', 'my_tuple = []', 'my_tuple = {}', 'my_tuple = ()', 'my_tuple = <>', 'C', NULL),
(22, 2, 'Đâu là cách để truy cập phần tử cuối cùng của một list trong Python?', 'list[-1]', 'list[end]', 'list[len(list)]', 'list.last()', 'A', NULL),
(23, 2, 'Set trong Python có đặc điểm gì?', 'Có thứ tự và có thể thay đổi', 'Không có thứ tự và có thể thay đổi', 'Có thứ tự và không thể thay đổi', 'Không có thứ tự và không thể thay đổi', 'B', NULL),
(24, 2, 'Phương thức nào sử dụng để thêm một phần tử vào set trong Python?', 'add()', 'append()', 'insert()', 'extend()', 'A', NULL),
(25, 2, 'Cú pháp nào sau đây dùng để khai báo một dictionary trong Python?', 'dict = []', 'dict = ()', 'dict = {}', 'dict = <<>>', 'C', NULL),
(26, 2, 'Làm thế nào để truy cập giá trị của key \"name\" trong một dictionary?', 'dict.name', 'dict[\"name\"]', 'dict.get(\"name\")', 'Cả B và C đều đúng', 'D', NULL),
(27, 2, 'List comprehension trong Python là gì?', 'Một cấu trúc dữ liệu mới', 'Một cách ngắn gọn để tạo list dựa trên list có sẵn', 'Một phương thức của list', 'Một cơ chế để so sánh các list', 'B', NULL),
(28, 2, 'Cách nào để sao chép một list trong Python?', 'new_list = old_list', 'new_list = old_list.copy()', 'new_list = list(old_list)', 'Cả B và C đều đúng', 'D', NULL),
(29, 2, 'Phương thức nào để sắp xếp list trong Python?', 'list.order()', 'list.sort()', 'list.arrange()', 'sort(list)', 'B', NULL),
(30, 2, 'Phương thức nào sau đây dùng để kết hợp hai dictionary trong Python 3.9+?', 'dict1.merge(dict2)', 'dict1.update(dict2)', 'dict1 | dict2', 'merge(dict1, dict2)', 'C', NULL),
(31, 3, 'Cú pháp nào được sử dụng để định nghĩa một hàm trong Python?', 'function name():', 'def name():', 'func name():', 'define name():', 'B', NULL),
(32, 3, 'Từ khóa nào được sử dụng để trả về giá trị từ một hàm trong Python?', 'give', 'return', 'output', 'yield', 'B', NULL),
(33, 3, 'Đâu là cách để định nghĩa một tham số mặc định cho hàm trong Python?', 'def func(param = value):', 'def func(param: value):', 'def func(param <- value):', 'def func(default param = value):', 'A', NULL),
(34, 3, 'Tham số *args trong Python được sử dụng để làm gì?', 'Truyền một số lượng đối số có tên tùy ý', 'Truyền một số lượng đối số không tên tùy ý', 'Truyền một argument duy nhất', 'Truyền dữ liệu dạng dictionary', 'B', NULL),
(35, 3, 'Tham số **kwargs trong Python được sử dụng để làm gì?', 'Truyền một số lượng đối số có tên tùy ý', 'Truyền một số lượng đối số không tên tùy ý', 'Truyền một argument duy nhất', 'Truyền dữ liệu dạng tuple', 'A', NULL),
(36, 3, 'Phạm vi (scope) biến trong Python có các loại nào?', 'Local và Global', 'Local, Enclosing và Global', 'Local, Enclosing, Global và Built-in', 'Chỉ có Global', 'C', NULL),
(37, 3, 'Từ khóa nào được sử dụng để xác định một biến là biến toàn cục trong Python?', 'globalvar', 'global', 'public', 'static', 'B', NULL),
(38, 3, 'Lambda function trong Python là gì?', 'Một hàm có tên', 'Một hàm ẩn danh', 'Một hàm đặc biệt chỉ dùng trong module', 'Một loại biến', 'B', NULL),
(39, 3, 'Cú pháp nào sau đây dùng để định nghĩa một lambda function trong Python?', 'lambda: x -> x*2', 'lambda x: x*2', 'def lambda(x): return x*2', 'function lambda(x) => x*2', 'B', NULL),
(40, 3, 'Đâu là cách để gọi một hàm trong Python?', 'func.call()', 'call func()', 'func()', 'invoke func()', 'C', NULL),
(41, 3, 'Module trong Python là gì?', 'Một tập tin Python (.py) chứa code', 'Một hàm đặc biệt', 'Một cấu trúc dữ liệu', 'Một loại biến', 'A', NULL),
(42, 3, 'Làm thế nào để import một module trong Python?', 'include module', '#import module', 'import module', 'using module', 'C', NULL),
(43, 3, 'Làm thế nào để import một hàm cụ thể từ một module trong Python?', 'import function from module', 'from module import function', 'using function in module', 'include module.function', 'B', NULL),
(44, 3, 'Câu lệnh nào sau đây được sử dụng để import tất cả từ một module?', 'from module import all', 'from module import *', 'import all from module', 'import module.*', 'B', NULL),
(45, 3, 'Package trong Python là gì?', 'Một tập tin chứa code Python', 'Một thư mục chứa nhiều module Python', 'Một hàm đặc biệt', 'Một cấu trúc dữ liệu', 'B', NULL),
(46, 3, 'File đặc biệt nào trong một package Python cho biết thư mục đó là một package?', 'package.py', '__init__.py', 'main.py', 'config.py', 'B', NULL),
(47, 3, 'Đâu là một module chuẩn trong thư viện Python?', 'supermath', 'math', 'calculator', 'compute', 'B', NULL),
(48, 3, 'Làm thế nào để cài đặt một package bên ngoài trong Python?', 'python install package', 'pip install package', 'import package', 'install package', 'B', NULL),
(49, 3, 'Lệnh nào sau đây được sử dụng để xem danh sách tất cả các function và biến trong một module?', 'list(module)', 'module.list()', 'dir(module)', 'help(module)', 'C', NULL),
(50, 3, 'Khi nào nên sử dụng \"__name__ == __main__\" trong Python?', 'Khi muốn đặt tên cho module', 'Khi muốn import module khác', 'Khi muốn code chỉ chạy khi file được chạy trực tiếp', 'Khi muốn kiểm tra lỗi', 'C', NULL),
(51, 4, 'Lập trình hướng đối tượng là gì?', 'Một kỹ thuật lập trình tập trung vào dữ liệu và hàm', 'Một kỹ thuật lập trình tập trung vào đối tượng', 'Một ngôn ngữ lập trình', 'Một thuật toán', 'B', NULL),
(52, 4, 'Từ khóa nào được sử dụng để định nghĩa một class trong Python?', 'define', 'class', 'object', 'struct', 'B', NULL),
(53, 4, 'Phương thức đặc biệt nào được tự động gọi khi một đối tượng được tạo ra trong Python?', '__init__', '__new__', '__create__', '__start__', 'A', NULL),
(54, 4, 'self trong Python đại diện cho gì?', 'Module hiện tại', 'Class hiện tại', 'Instance của class', 'Hàm hiện tại', 'C', NULL),
(55, 4, 'Kế thừa trong Python là gì?', 'Một cơ chế cho phép class con sử dụng lại code từ class cha', 'Một cơ chế để import module', 'Một cấu trúc dữ liệu', 'Một loại biến', 'A', NULL),
(56, 4, 'Cú pháp nào sau đây định nghĩa một class con kế thừa từ class cha trong Python?', 'class Child extends Parent:', 'class Child(Parent):', 'class Child -> Parent:', 'class Child inherits Parent:', 'B', NULL),
(57, 4, 'Đa hình trong Python là gì?', 'Khả năng một đối tượng có thể có nhiều dạng', 'Một kiểu dữ liệu đặc biệt', 'Một cấu trúc điều khiển', 'Một phương thức đặc biệt', 'A', NULL),
(58, 4, 'Tính đóng gói (Encapsulation) trong Python là gì?', 'Khả năng gói nhiều module vào một package', 'Khả năng hạn chế truy cập trực tiếp đến dữ liệu và phương thức của đối tượng', 'Một cú pháp đặc biệt', 'Một cấu trúc dữ liệu', 'B', NULL),
(59, 4, 'Làm thế nào để tạo một thuộc tính private trong Python?', 'Sử dụng từ khóa private', 'Sử dụng tiền tố __', 'Sử dụng tiền tố private_', 'Python không hỗ trợ thuộc tính private', 'B', NULL),
(60, 4, 'Phương thức tĩnh (static method) trong Python được khai báo bằng decorator nào?', '@staticmethod', '@classmethod', '@static', '@method', 'A', NULL),
(61, 4, 'Phương thức lớp (class method) trong Python được khai báo bằng decorator nào?', '@staticmethod', '@classmethod', '@static', '@method', 'B', NULL),
(62, 4, 'Magic method trong Python là gì?', 'Những phương thức có khả năng thực hiện phép thuật', 'Những phương thức bắt đầu và kết thúc bằng dấu gạch dưới kép', 'Những phương thức đặc biệt chỉ dùng trong module', 'Những phương thức được tích hợp sẵn', 'B', NULL),
(63, 4, 'Phương thức __str__ trong Python được sử dụng để làm gì?', 'Để chuyển đối tượng thành chuỗi cho mục đích hiển thị', 'Để so sánh hai đối tượng', 'Để tạo một bản sao của đối tượng', 'Để xóa đối tượng', 'A', NULL),
(64, 4, 'Đâu là phương thức magic để nạp chồng toán tử cộng (+) trong Python?', '__plus__', '__add__', '+', '__sum__', 'B', NULL),
(65, 4, 'Để nạp chồng toán tử so sánh bằng (==) trong Python, ta sử dụng phương thức nào?', '__compare__', '__eq__', '__equals__', '==', 'B', NULL),
(66, 4, 'Abstract class trong Python là gì?', 'Một class không thể tạo đối tượng trực tiếp', 'Một class không có phương thức', 'Một class chỉ có thuộc tính', 'Một class không thể kế thừa', 'A', NULL),
(67, 4, 'Module nào cung cấp hỗ trợ cho abstract class trong Python?', 'abstracts', 'abc', 'abclass', 'abstract', 'B', NULL),
(68, 4, 'Đa kế thừa trong Python là gì?', 'Một class kế thừa từ nhiều class cha', 'Một class có nhiều instance', 'Một class có nhiều phương thức', 'Một class có nhiều thuộc tính', 'A', NULL),
(69, 4, 'Cú pháp nào sau đây định nghĩa một class kế thừa từ nhiều class trong Python?', 'class Child extends Parent1, Parent2:', 'class Child(Parent1, Parent2):', 'class Child -> Parent1, Parent2:', 'class Child inherits Parent1, Parent2:', 'B', NULL),
(70, 4, 'Composition trong lập trình hướng đối tượng là gì?', 'Một class chứa đối tượng của class khác như một thuộc tính', 'Một class kế thừa từ class khác', 'Một class chứa nhiều phương thức', 'Một class có nhiều constructor', 'A', NULL),
(71, 5, 'Phân tích dữ liệu là gì?', 'Quá trình thu thập dữ liệu', 'Quá trình kiểm tra, làm sạch, biến đổi và mô hình hóa dữ liệu', 'Quá trình lưu trữ dữ liệu', 'Quá trình hiển thị dữ liệu', 'B', NULL),
(72, 5, 'Đâu là một bước quan trọng trong quy trình phân tích dữ liệu?', 'Làm sạch dữ liệu', 'Ghi dữ liệu vào cơ sở dữ liệu', 'Tạo giao diện người dùng', 'Viết document', 'A', NULL),
(73, 5, 'Vai trò của phân tích dữ liệu trong kinh doanh là gì?', 'Chỉ để trang trí báo cáo', 'Hỗ trợ ra quyết định dựa trên dữ liệu', 'Chỉ dành cho các nhà khoa học', 'Không có vai trò quan trọng', 'B', NULL),
(74, 5, 'Data scientist là người làm gì?', 'Quản lý cơ sở dữ liệu', 'Phân tích và giải thích dữ liệu phức tạp', 'Thiết kế giao diện người dùng', 'Sửa chữa máy tính', 'B', NULL),
(75, 5, 'Đâu là công cụ phổ biến cho phân tích dữ liệu trong Python?', 'Django', 'Pandas', 'Flask', 'Tkinter', 'B', NULL),
(76, 5, 'Jupyter Notebook là gì?', 'Một ngôn ngữ lập trình', 'Một môi trường tương tác để viết code và trực quan hóa dữ liệu', 'Một loại cơ sở dữ liệu', 'Một thư viện đồ họa', 'B', NULL),
(77, 5, 'Google Colab cung cấp gì cho người dùng?', 'Một máy chủ web', 'Một môi trường Jupyter Notebook trên đám mây với GPU miễn phí', 'Một cơ sở dữ liệu online', 'Một công cụ thiết kế web', 'B', NULL),
(78, 5, 'Bước đầu tiên trong quá trình phân tích dữ liệu thường là gì?', 'Trực quan hóa dữ liệu', 'Xác định câu hỏi hoặc vấn đề cần giải quyết', 'Xây dựng mô hình học máy', 'Viết báo cáo', 'B', NULL),
(79, 5, 'Làm sạch dữ liệu (Data cleaning) bao gồm những công việc gì?', 'Xóa toàn bộ dữ liệu', 'Xử lý dữ liệu bị thiếu, loại bỏ dữ liệu trùng lặp', 'Tạo ra dữ liệu mới', 'Chỉ sắp xếp lại dữ liệu', 'B', NULL),
(80, 5, 'Đâu là một định dạng file phổ biến dùng trong phân tích dữ liệu?', 'HTML', 'CSS', 'CSV', 'JS', 'C', NULL),
(81, 5, 'Phân tích dữ liệu mô tả (Descriptive analytics) là gì?', 'Dự đoán tương lai dựa trên dữ liệu quá khứ', 'Tóm tắt dữ liệu quá khứ', 'Đưa ra các giải pháp', 'Tối ưu hóa qui trình', 'B', NULL),
(82, 5, 'Phân tích dữ liệu dự đoán (Predictive analytics) là gì?', 'Tóm tắt dữ liệu quá khứ', 'Dự đoán tương lai dựa trên dữ liệu quá khứ', 'Chỉ mô tả dữ liệu hiện tại', 'Không liên quan đến phân tích dữ liệu', 'B', NULL),
(83, 5, 'Đâu là một loại biểu đồ thường được sử dụng để hiển thị phân phối dữ liệu?', 'Biểu đồ tròn', 'Biểu đồ cột', 'Biểu đồ histogram', 'Tất cả đều đúng', 'C', NULL),
(84, 5, 'Khái niệm \"Big Data\" đề cập đến điều gì?', 'Dữ liệu có kích thước lớn', 'Dữ liệu có tính đa dạng, khối lượng lớn và tốc độ cao', 'Chỉ dữ liệu từ các công ty lớn', 'Dữ liệu được lưu trữ trong các máy chủ lớn', 'B', NULL),
(85, 5, 'Vai trò của trực quan hóa dữ liệu trong phân tích dữ liệu là gì?', 'Chỉ để trang trí báo cáo', 'Giúp hiểu và diễn giải dữ liệu dễ dàng hơn', 'Không có vai trò quan trọng', 'Chỉ dành cho những người không hiểu số liệu', 'B', NULL),
(86, 6, 'NumPy là gì?', 'Ngôn ngữ lập trình', 'Thư viện Python hỗ trợ tính toán với mảng nhiều chiều', 'Cơ sở dữ liệu', 'Hệ điều hành', 'B', NULL),
(87, 6, 'Đối tượng cơ bản của NumPy là gì?', 'List', 'Dictionary', 'ndarray', 'Tuple', 'C', NULL),
(88, 6, 'Ưu điểm của NumPy so với list thông thường trong Python là gì?', 'Tiết kiệm bộ nhớ và tính toán nhanh hơn', 'Có nhiều phương thức hơn', 'Dễ sử dụng hơn', 'Cả A và B', 'A', NULL),
(89, 6, 'Làm thế nào để tạo một mảng NumPy từ một list Python?', 'numpy.list()', 'numpy.array()', 'numpy.convert()', 'numpy.createArray()', 'B', NULL),
(90, 6, 'Phương thức nào trong NumPy dùng để tạo một mảng với các giá trị 0?', 'numpy.zero()', 'numpy.zeros()', 'numpy.empty()', 'numpy.null()', 'B', NULL),
(91, 6, 'Phương thức nào trong NumPy dùng để tạo một mảng với các giá trị 1?', 'numpy.one()', 'numpy.ones()', 'numpy.unity()', 'numpy.fill(1)', 'B', NULL),
(92, 6, 'Pandas là gì?', 'Ngôn ngữ lập trình', 'Thư viện Python cho phân tích dữ liệu', 'Cơ sở dữ liệu', 'Loài động vật', 'B', NULL),
(93, 6, 'Hai cấu trúc dữ liệu cơ bản trong Pandas là gì?', 'Array và Matrix', 'List và Dictionary', 'Series và DataFrame', 'Table và Query', 'C', NULL),
(94, 6, 'DataFrame trong Pandas là gì?', 'Một cấu trúc dữ liệu 1 chiều', 'Một cấu trúc dữ liệu 2 chiều giống bảng', 'Một thuật toán', 'Một loại biến', 'B', NULL),
(95, 6, 'Làm thế nào để đọc một file CSV trong Pandas?', 'pandas.read_csv()', 'pandas.import_csv()', 'pandas.load_csv()', 'pandas.open_csv()', 'A', NULL),
(96, 6, 'Phương thức nào trong Pandas dùng để xem các hàng đầu tiên của DataFrame?', 'DataFrame.first()', 'DataFrame.top()', 'DataFrame.head()', 'DataFrame.begin()', 'C', NULL),
(97, 6, 'Phương thức nào trong Pandas dùng để xem các hàng cuối cùng của DataFrame?', 'DataFrame.last()', 'DataFrame.bottom()', 'DataFrame.tail()', 'DataFrame.end()', 'C', NULL),
(98, 6, 'Phương thức nào trong Pandas dùng để xem thông tin tổng quan về DataFrame?', 'DataFrame.summary()', 'DataFrame.info()', 'DataFrame.describe()', 'DataFrame.overview()', 'B', NULL),
(99, 6, 'Phương thức nào trong Pandas dùng để xem thống kê mô tả của DataFrame?', 'DataFrame.statistics()', 'DataFrame.info()', 'DataFrame.describe()', 'DataFrame.stats()', 'C', NULL),
(100, 6, 'Cách để chọn một cột trong DataFrame Pandas là gì?', 'DataFrame[column_name]', 'DataFrame.column_name', 'DataFrame.get(column_name)', 'Tất cả đáp án trên', 'D', NULL),
(101, 7, 'Matplotlib là gì?', 'Một ngôn ngữ lập trình', 'Một thư viện trực quan hóa dữ liệu trong Python', 'Một cơ sở dữ liệu', 'Một công cụ xử lý văn bản', 'B', NULL),
(102, 7, 'Phương thức nào để hiển thị một biểu đồ trong Matplotlib?', 'matplotlib.pyplot.show()', 'matplotlib.pyplot.display()', 'matplotlib.pyplot.draw()', 'matplotlib.pyplot.render()', 'A', NULL),
(103, 7, 'Làm thế nào để tạo một biểu đồ đường trong Matplotlib?', 'plt.line()', 'plt.plot()', 'plt.draw_line()', 'plt.linechart()', 'B', NULL),
(104, 7, 'Làm thế nào để tạo một biểu đồ cột trong Matplotlib?', 'plt.column()', 'plt.bar()', 'plt.histogram()', 'plt.barchart()', 'B', NULL),
(105, 7, 'Làm thế nào để tạo một biểu đồ tròn trong Matplotlib?', 'plt.circle()', 'plt.pie()', 'plt.round()', 'plt.piechart()', 'B', NULL),
(106, 7, 'Làm thế nào để thêm tiêu đề cho biểu đồ trong Matplotlib?', 'plt.header()', 'plt.name()', 'plt.title()', 'plt.heading()', 'C', NULL),
(107, 7, 'Làm thế nào để thêm nhãn cho trục x trong Matplotlib?', 'plt.xlabel()', 'plt.x_label()', 'plt.label_x()', 'plt.xname()', 'A', NULL),
(108, 7, 'Làm thế nào để thêm lưới (grid) vào biểu đồ trong Matplotlib?', 'plt.add_grid()', 'plt.grid()', 'plt.show_grid()', 'plt.display_grid()', 'B', NULL),
(109, 7, 'Seaborn là gì?', 'Một thư viện trực quan hóa dữ liệu dựa trên Matplotlib', 'Một ngôn ngữ lập trình', 'Một cơ sở dữ liệu', 'Một thư viện xử lý dữ liệu', 'A', NULL),
(110, 7, 'Lợi ích của Seaborn so với Matplotlib thuần túy là gì?', 'Giao diện API đơn giản hơn và chủ đề thẩm mỹ mặc định', 'Tốc độ nhanh hơn', 'Sử dụng ít bộ nhớ hơn', 'Có khả năng lưu trữ dữ liệu', 'A', NULL),
(111, 7, 'Làm thế nào để tạo một biểu đồ phân phối (distribution plot) trong Seaborn?', 'sns.distplot()', 'sns.distribution()', 'sns.histogram()', 'sns.distchart()', 'A', NULL),
(112, 7, 'Làm thế nào để tạo một biểu đồ hộp (boxplot) trong Seaborn?', 'sns.box()', 'sns.boxchart()', 'sns.boxplot()', 'sns.draw_box()', 'C', NULL),
(113, 7, 'Làm thế nào để tạo một biểu đồ nhiệt (heatmap) trong Seaborn?', 'sns.heatmap()', 'sns.heat()', 'sns.temperature()', 'sns.colormap()', 'A', NULL),
(114, 7, 'Phương thức nào trong Seaborn dùng để tạo một ma trận scatter plot?', 'sns.scatterplot()', 'sns.matrix()', 'sns.pairplot()', 'sns.scatter_matrix()', 'C', NULL),
(115, 7, 'Trong Matplotlib, subplot là gì?', 'Một tiêu đề phụ', 'Một biểu đồ nhỏ trong một lưới biểu đồ', 'Một loại biểu đồ', 'Một chú thích', 'B', NULL),
(116, 7, 'Làm thế nào để lưu biểu đồ Matplotlib thành file hình ảnh?', 'plt.save()', 'plt.savefig()', 'plt.export()', 'plt.image_save()', 'B', NULL),
(117, 7, 'Làm thế nào để thêm chú thích (legend) vào biểu đồ trong Matplotlib?', 'plt.add_legend()', 'plt.legend()', 'plt.show_legend()', 'plt.caption()', 'B', NULL),
(118, 7, 'Phương thức nào trong Seaborn dùng để tạo biểu đồ vĩ mô (countplot)?', 'sns.count()', 'sns.countplot()', 'sns.barcount()', 'sns.frequency()', 'B', NULL),
(119, 7, 'Làm thế nào để thay đổi kích thước (size) của biểu đồ trong Matplotlib?', 'plt.size()', 'plt.resize()', 'plt.figure(figsize=(width, height))', 'plt.dimensions()', 'C', NULL),
(120, 7, 'Phương thức nào trong Seaborn dùng để tạo biểu đồ phân tán (scatterplot)?', 'sns.scatter()', 'sns.scatterplot()', 'sns.points()', 'sns.dotplot()', 'B', NULL),
(121, 8, 'Phân tích thống kê mô tả (descriptive statistics) là gì?', 'Phương pháp dự đoán giá trị tương lai', 'Phương pháp tóm tắt đặc điểm của dữ liệu', 'Phương pháp kiểm tra giả thuyết', 'Phương pháp phân loại dữ liệu', 'B', NULL),
(122, 8, 'Measure of central tendency (đo lường xu hướng trung tâm) bao gồm những gì?', 'Mean, median, mode', 'Variance, standard deviation', 'Skewness, kurtosis', 'Correlation, covariance', 'A', NULL),
(123, 8, 'Mean (trung bình cộng) trong thống kê là gì?', 'Giá trị xuất hiện nhiều nhất', 'Giá trị ở giữa khi sắp xếp theo thứ tự', 'Tổng các giá trị chia cho số lượng', 'Giá trị lớn nhất', 'C', NULL),
(124, 8, 'Median (trung vị) trong thống kê là gì?', 'Giá trị xuất hiện nhiều nhất', 'Giá trị ở giữa khi sắp xếp theo thứ tự', 'Tổng các giá trị chia cho số lượng', 'Giá trị nhỏ nhất', 'B', NULL),
(125, 8, 'Mode (mốt) trong thống kê là gì?', 'Giá trị xuất hiện nhiều nhất', 'Giá trị ở giữa khi sắp xếp theo thứ tự', 'Tổng các giá trị chia cho số lượng', 'Giá trị lớn nhất', 'A', NULL),
(126, 8, 'Phương sai (Variance) trong thống kê đo lường gì?', 'Xu hướng trung tâm của dữ liệu', 'Mức độ phân tán của dữ liệu', 'Sự đối xứng của dữ liệu', 'Số lượng giá trị', 'B', NULL),
(127, 8, 'Độ lệch chuẩn (Standard deviation) là gì?', 'Căn bậc hai của phương sai', 'Giá trị lớn nhất trừ giá trị nhỏ nhất', 'Tổng các giá trị chia cho số lượng', 'Giá trị ở giữa khi sắp xếp theo thứ tự', 'A', NULL),
(128, 8, 'Giá trị bị thiếu (missing value) trong dữ liệu có thể được xử lý bằng cách nào?', 'Loại bỏ hàng chứa giá trị bị thiếu', 'Thay thế bằng giá trị trung bình', 'Thay thế bằng giá trị 0', 'Tất cả đáp án trên', 'D', NULL),
(129, 8, 'Trong Pandas, phương thức nào dùng để kiểm tra giá trị bị thiếu?', 'DataFrame.missing()', 'DataFrame.isnull()', 'DataFrame.isnan()', 'DataFrame.find_missing()', 'B', NULL),
(130, 8, 'Trong Pandas, phương thức nào dùng để loại bỏ hàng chứa giá trị bị thiếu?', 'DataFrame.remove_missing()', 'DataFrame.drop_na()', 'DataFrame.dropna()', 'DataFrame.delete_missing()', 'C', NULL),
(131, 8, 'Outlier (giá trị ngoại lai) là gì?', 'Giá trị bị thiếu trong dữ liệu', 'Giá trị khác biệt đáng kể so với phần còn lại của dữ liệu', 'Giá trị trung bình của dữ liệu', 'Giá trị trùng lặp trong dữ liệu', 'B', NULL),
(132, 8, 'Phương pháp nào sau đây được sử dụng để phát hiện outlier?', 'Z-score', 'Mean', 'Mode', 'Count', 'A', NULL),
(133, 8, 'Hệ số tương quan (correlation coefficient) đo lường gì?', 'Mức độ và hướng của mối quan hệ tuyến tính giữa hai biến', 'Mức độ phân tán của một biến', 'Xu hướng trung tâm của một biến', 'Sự đối xứng của phân phối dữ liệu', 'A', NULL),
(134, 8, 'Hệ số tương quan Pearson có giá trị trong khoảng nào?', '0 đến 1', '-1 đến 1', '0 đến vô cùng', '-vô cùng đến vô cùng', 'B', NULL),
(135, 8, 'Phương thức nào trong Pandas dùng để tính ma trận tương quan?', 'DataFrame.cor()', 'DataFrame.correlation()', 'DataFrame.corr()', 'DataFrame.correlate()', 'C', NULL),
(136, 8, 'Trong phân tích dữ liệu thời gian, time series là gì?', 'Một loại biểu đồ', 'Một tập hợp các điểm dữ liệu được ghi nhận theo thời gian', 'Một thư viện Python', 'Một thuật toán', 'B', NULL),
(137, 8, 'Resampling trong phân tích dữ liệu thời gian là gì?', 'Tạo lại toàn bộ dữ liệu', 'Thay đổi tần suất của dữ liệu thời gian', 'Lấy mẫu ngẫu nhiên từ dữ liệu', 'Xóa các giá trị trùng lặp', 'B', NULL),
(138, 8, 'Trong Pandas, phương thức nào dùng để chuyển đổi một cột thành định dạng datetime?', 'pd.to_datetime()', 'pd.as_datetime()', 'pd.datetime()', 'pd.convert_time()', 'A', NULL),
(139, 8, 'Rolling mean (trung bình di động) trong phân tích dữ liệu thời gian là gì?', 'Giá trị trung bình của toàn bộ dữ liệu', 'Giá trị trung bình tính trong một cửa sổ trượt qua dữ liệu', 'Giá trị trung bình của hai điểm liên tiếp', 'Giá trị trung bình của các giá trị ở đầu và cuối', 'B', NULL),
(140, 8, 'Trong phân tích dữ liệu, tính thời vụ (seasonality) là gì?', 'Sự thay đổi theo mùa của dữ liệu', 'Một mẫu lặp đi lặp lại trong dữ liệu thời gian', 'Sự tăng trưởng theo thời gian', 'Sự suy giảm theo thời gian', 'B', NULL),
(141, 9, 'Django là gì?', 'Một ngôn ngữ lập trình', 'Một framework web Python cao cấp', 'Một cơ sở dữ liệu', 'Một công cụ thiết kế giao diện', 'B', NULL),
(142, 9, 'Django được phát triển bởi ai?', 'Facebook', 'Google', 'Tổ chức Django Software Foundation', 'Microsoft', 'C', NULL),
(143, 9, 'Kiến trúc của Django dựa trên mô hình nào?', 'MVC (Model-View-Controller)', 'MVP (Model-View-Presenter)', 'MVT (Model-View-Template)', 'MVVM (Model-View-ViewModel)', 'C', NULL),
(144, 9, 'Lệnh nào dùng để cài đặt Django?', 'install django', 'pip install django', 'django install', 'apt-get install django', 'B', NULL),
(145, 9, 'Lệnh nào dùng để tạo một project Django mới?', 'django create project_name', 'django-admin startproject project_name', 'django new project_name', 'django make project_name', 'B', NULL),
(146, 9, 'Lệnh nào dùng để tạo một ứng dụng mới trong Django?', 'django create app_name', 'django-admin startapp app_name', 'python manage.py startapp app_name', 'django new app_name', 'C', NULL),
(147, 9, 'File settings.py trong Django dùng để làm gì?', 'Chứa các route URL', 'Chứa các model', 'Chứa các cấu hình của project', 'Chứa các template HTML', 'C', NULL),
(148, 9, 'File urls.py trong Django dùng để làm gì?', 'Chứa các model', 'Chứa các view', 'Chứa các cấu hình của project', 'Chứa các route URL', 'D', NULL),
(149, 9, 'Lệnh nào dùng để chạy server phát triển Django?', 'django run', 'python manage.py runserver', 'django server', 'start django', 'B', NULL),
(150, 9, 'Django ORM là gì?', 'Object-Relational Mapping', 'Object-Relation Model', 'Operational Research Method', 'Online Resource Management', 'A', NULL),
(151, 9, 'URL dispatcher trong Django là gì?', 'Một thành phần chuyển yêu cầu URL đến view thích hợp', 'Một công cụ gửi email', 'Một công cụ quản lý file tĩnh', 'Một công cụ xử lý form', 'A', NULL),
(152, 9, 'Admin interface của Django có tác dụng gì?', 'Giao diện quản lý cơ sở dữ liệu tự động', 'Giao diện người dùng cuối', 'Một công cụ thiết kế', 'Một công cụ debug', 'A', NULL),
(153, 9, 'Trong Django, \"app\" là gì?', 'Một thành phần độc lập có chức năng cụ thể', 'Một project hoàn chỉnh', 'Một cơ sở dữ liệu', 'Một giao diện người dùng', 'A', NULL),
(154, 9, 'Lệnh nào dùng để tạo superuser trong Django?', 'django createadmin', 'python manage.py createsuperuser', 'django admin', 'python manage.py adminuser', 'B', NULL),
(155, 9, 'Django template engine có tác dụng gì?', 'Xử lý logic giao diện người dùng', 'Quản lý cơ sở dữ liệu', 'Xử lý yêu cầu HTTP', 'Định tuyến URL', 'A', NULL),
(156, 10, 'Models trong Django dùng để làm gì?', 'Định nghĩa cấu trúc dữ liệu', 'Định nghĩa giao diện người dùng', 'Định tuyến URL', 'Xử lý yêu cầu HTTP', 'A', NULL),
(157, 10, 'File nào chứa định nghĩa Models trong một app Django?', 'views.py', 'models.py', 'urls.py', 'admin.py', 'B', NULL),
(158, 10, 'Trong Django, lớp nào được kế thừa để tạo một model?', 'django.db.models.Model', 'django.models.Base', 'django.db.Base', 'django.models.Table', 'A', NULL),
(159, 10, 'Migration trong Django là gì?', 'Quá trình chuyển dữ liệu từ cơ sở dữ liệu này sang cơ sở dữ liệu khác', 'Quá trình theo dõi thay đổi model và cập nhật cơ sở dữ liệu', 'Quá trình tạo mới cơ sở dữ liệu', 'Quá trình xóa dữ liệu cũ', 'B', NULL),
(160, 10, 'Lệnh nào dùng để tạo migration trong Django?', 'python manage.py create_migration', 'python manage.py makemigrations', 'python manage.py generate_migration', 'python manage.py migration', 'B', NULL),
(161, 10, 'Lệnh nào dùng để áp dụng migration vào cơ sở dữ liệu trong Django?', 'python manage.py apply', 'python manage.py migrate', 'python manage.py update_db', 'python manage.py commit', 'B', NULL),
(162, 10, 'CharField trong Django model dùng để lưu trữ kiểu dữ liệu gì?', 'Số nguyên', 'Văn bản có độ dài cố định', 'Ngày tháng', 'Boolean', 'B', NULL),
(163, 10, 'Trong Django model, ForeignKey dùng để làm gì?', 'Tạo khóa chính', 'Tạo mối quan hệ nhiều-nhiều', 'Tạo mối quan hệ một-nhiều', 'Tạo mối quan hệ một-một', 'C', NULL),
(164, 10, 'Views trong Django dùng để làm gì?', 'Hiển thị dữ liệu', 'Xử lý yêu cầu HTTP và trả về phản hồi', 'Định nghĩa cấu trúc dữ liệu', 'Định tuyến URL', 'B', NULL),
(165, 10, 'File nào chứa các views trong một app Django?', 'models.py', 'views.py', 'urls.py', 'admin.py', 'B', NULL),
(166, 10, 'Class-based views trong Django là gì?', 'Views được viết dưới dạng lớp thay vì hàm', 'Views chỉ sử dụng trong admin', 'Views không nhận tham số', 'Views chỉ dùng cho form', 'A', NULL),
(167, 10, 'Django REST framework dùng để làm gì?', 'Xây dựng ứng dụng web thông thường', 'Xây dựng API RESTful', 'Quản lý cơ sở dữ liệu', 'Thiết kế giao diện người dùng', 'B', NULL),
(168, 10, 'Serializer trong Django REST framework có tác dụng gì?', 'Chuyển đổi dữ liệu phức tạp thành các kiểu dữ liệu Python', 'Gửi email', 'Xác thực người dùng', 'Tạo migration', 'A', NULL),
(169, 10, 'Trong Django REST framework, ModelViewSet dùng để làm gì?', 'Tạo model', 'Tự động cung cấp các thao tác CRUD cho model', 'Hiển thị form', 'Quản lý URL', 'B', NULL),
(170, 10, 'QuerySet trong Django là gì?', 'Một tập hợp các câu truy vấn SQL thuần túy', 'Một tập hợp đối tượng từ cơ sở dữ liệu', 'Một form tìm kiếm', 'Một công cụ tạo báo cáo', 'B', NULL),
(171, 11, 'Template trong Django là gì?', 'File HTML chứa code Python', 'File HTML với cú pháp template Django', 'File CSS', 'File JavaScript', 'B', NULL),
(172, 11, 'Thư mục nào thường chứa các templates trong Django?', 'static/', 'templates/', 'media/', 'assets/', 'B', NULL),
(173, 11, 'Template inheritance trong Django là gì?', 'Khả năng kế thừa CSS từ framework khác', 'Khả năng một template kế thừa từ template khác', 'Khả năng một view kế thừa từ view khác', 'Khả năng một model kế thừa từ model khác', 'B', NULL),
(174, 11, 'Tag nào trong Django template dùng để kế thừa từ template khác?', '{% inherit %}', '{% extends %}', '{% include %}', '{% load %}', 'B', NULL),
(175, 11, 'Block trong Django template dùng để làm gì?', 'Tạo khối HTML cố định', 'Định nghĩa vùng có thể được ghi đè trong template con', 'Ngăn chặn người dùng truy cập', 'Tạo khối JavaScript', 'B', NULL),
(176, 11, 'Tag nào trong Django template dùng để định nghĩa một block?', '{% section %}', '{% block %}', '{% area %}', '{% region %}', 'B', NULL),
(177, 11, 'Tag nào trong Django template dùng để bao gồm template khác?', '{% inherit %}', '{% extends %}', '{% include %}', '{% load %}', 'C', NULL),
(178, 11, 'Trong Django template, biến được bao quanh bởi ký tự nào?', '{{ }}', '{% %}', '{# #}', '<% %>', 'A', NULL),
(179, 11, 'Tag nào trong Django template dùng để viết chú thích?', '// comment', '<!-- comment -->', '{# comment #}', '/* comment */', 'C', NULL),
(180, 11, 'Filter trong Django template là gì?', 'Một hàm lọc dữ liệu từ cơ sở dữ liệu', 'Một hàm biến đổi giá trị của biến', 'Một công cụ bảo mật', 'Một công cụ tìm kiếm', 'B', NULL),
(181, 11, 'Forms trong Django dùng để làm gì?', 'Tạo và xử lý form HTML', 'Tạo bảng trong cơ sở dữ liệu', 'Tạo CSS', 'Định tuyến URL', 'A', NULL),
(182, 11, 'File nào thường chứa định nghĩa form trong Django?', 'models.py', 'views.py', 'forms.py', 'admin.py', 'C', NULL),
(183, 11, 'Trong Django, ModelForm là gì?', 'Form được tạo tự động từ model', 'Form cho admin', 'Form đặc biệt chỉ dùng cho API', 'Form không liên quan đến model', 'A', NULL),
(184, 11, 'Phương thức nào kiểm tra form hợp lệ trong Django?', 'form.validate()', 'form.is_valid()', 'form.check()', 'form.valid()', 'B', NULL),
(185, 11, 'Trong Django, CSRF protection là gì?', 'Một loại bảo mật form chống lại tấn công Cross-Site Request Forgery', 'Một thuật toán mã hóa', 'Một công cụ kiểm tra lỗi', 'Một công cụ tối ưu hóa cơ sở dữ liệu', 'A', NULL),
(186, 11, 'Tag nào trong Django template dùng để tạo CSRF token?', '{% csrf %}', '{% csrf_token %}', '{% token %}', '{% secure %}', 'B', NULL),
(187, 11, 'File uploads trong Django được xử lý bằng cách nào?', 'Sử dụng trường FileField hoặc ImageField trong form', 'Chỉ sử dụng JavaScript', 'Django không hỗ trợ upload file', 'Chỉ thông qua API', 'A', NULL),
(188, 11, 'Form validation trong Django có tác dụng gì?', 'Xác minh dữ liệu nhập vào form hợp lệ', 'Định dạng HTML của form', 'Mã hóa dữ liệu form', 'Chuyển hướng form', 'A', NULL),
(189, 11, 'Trong Django form, cleaned_data là gì?', 'Dữ liệu đã được xử lý và xác thực', 'Dữ liệu thô từ request', 'CSS cho form', 'Tên của một thư viện', 'A', NULL),
(190, 11, 'Widget trong Django form là gì?', 'Một control HTML để nhập dữ liệu', 'Một công cụ mã hóa', 'Một loại view', 'Một loại model', 'A', NULL),
(191, 12, 'DEBUG mode trong Django có tác dụng gì?', 'Hiển thị thông tin chi tiết về lỗi', 'Tối ưu hóa hiệu suất', 'Bảo mật dữ liệu', 'Tự động backup dữ liệu', 'A', NULL),
(192, 12, 'Trong production, DEBUG mode nên được đặt thành giá trị nào?', 'True', 'False', 'None', 'Auto', 'B', NULL),
(193, 12, 'SECRET_KEY trong Django dùng để làm gì?', 'Mã hóa mật khẩu người dùng', 'Cung cấp entropy cho các tính năng bảo mật', 'Kết nối cơ sở dữ liệu', 'Xác thực API', 'B', NULL),
(194, 12, 'ALLOWED_HOSTS trong Django settings dùng để làm gì?', 'Danh sách host/domain được phép phục vụ ứng dụng Django', 'Danh sách người dùng được phép đăng nhập', 'Danh sách IP bị chặn', 'Danh sách cơ sở dữ liệu được phép kết nối', 'A', NULL),
(195, 12, 'Middleware trong Django là gì?', 'Một framework để xử lý request/response', 'Một công cụ thiết kế database', 'Một ngôn ngữ lập trình', 'Một công cụ test', 'A', NULL),
(196, 12, 'Authentication trong Django là gì?', 'Quá trình xác thực người dùng', 'Quá trình mã hóa dữ liệu', 'Quá trình tạo cơ sở dữ liệu', 'Quá trình tạo view', 'A', NULL),
(197, 12, 'File nào chứa cấu hình xác thực trong Django?', 'auth.py', 'settings.py', 'authentication.py', 'users.py', 'B', NULL),
(198, 12, 'Permission trong Django dùng để làm gì?', 'Kiểm soát quyền truy cập của người dùng', 'Thiết lập thuộc tính file', 'Định nghĩa cấu trúc database', 'Kiểm soát version code', 'A', NULL),
(199, 12, 'Django có hỗ trợ sẵn hệ thống xác thực người dùng không?', 'Có', 'Không', 'Chỉ với plugin bổ sung', 'Chỉ cho admin', 'A', NULL),
(200, 12, 'Hàm login() trong Django có tác dụng gì?', 'Tạo tài khoản mới', 'Đăng nhập người dùng vào session', 'Kiểm tra quyền truy cập', 'Tạo token xác thực', 'B', NULL),
(201, 12, 'Decorator @login_required trong Django có tác dụng gì?', 'Tạo form đăng nhập', 'Giới hạn view chỉ cho người dùng đã đăng nhập', 'Tạo người dùng mới', 'Đăng xuất người dùng', 'B', NULL),
(202, 12, 'Cách nào là an toàn nhất để lưu trữ mật khẩu trong Django?', 'Lưu trữ dưới dạng văn bản thường', 'Sử dụng mã hóa một chiều (hashing)', 'Mã hóa với khóa cố định', 'Lưu trong file riêng', 'B', NULL),
(203, 12, 'Trong Django, Group là gì?', 'Một tập hợp permission', 'Một tập hợp view', 'Một tập hợp model', 'Một tập hợp URL', 'A', NULL),
(204, 12, 'Cách triển khai Django trên production server nào phổ biến?', 'Django runserver', 'Gunicorn/WSGI với Nginx', 'Chỉ sử dụng Apache', 'Trực tiếp trên máy tính cá nhân', 'B', NULL),
(205, 12, 'WSGI trong triển khai Django là gì?', 'Web Server Gateway Interface', 'Web System Global Interface', 'Wide Server Gateway Implementation', 'Web Service Gateway Integration', 'A', NULL),
(206, 12, 'Static files trong Django là gì?', 'File được tạo động bởi người dùng', 'File cố định như CSS, JavaScript, và hình ảnh', 'File cơ sở dữ liệu', 'File log', 'B', NULL),
(207, 12, 'Thư mục nào thường chứa static files trong Django?', 'media/', 'static/', 'assets/', 'public/', 'B', NULL),
(208, 12, 'Lệnh nào dùng để thu thập static files trong Django?', 'python manage.py static', 'python manage.py collectstatic', 'python manage.py gather_static', 'python manage.py static_files', 'B', NULL),
(209, 12, 'Django có hỗ trợ HTTPS không?', 'Có', 'Không', 'Chỉ với plugin bổ sung', 'Chỉ trên một số hệ điều hành', 'A', NULL),
(210, 12, 'Django session lưu trữ thông tin ở đâu theo mặc định?', 'Trong cookie', 'Trong database', 'Trong memory', 'Trong file', 'B', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phan_quyen`
--

CREATE TABLE `phan_quyen` (
  `id` int(11) NOT NULL,
  `nguoi_dung_id` int(11) NOT NULL,
  `khoa_hoc_id` int(11) NOT NULL,
  `ngay_cap` date NOT NULL,
  `quyen_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phan_quyen`
--

INSERT INTO `phan_quyen` (`id`, `nguoi_dung_id`, `khoa_hoc_id`, `ngay_cap`, `quyen_id`) VALUES
(1, 1, 1, '2023-02-02', 1),
(2, 1, 2, '2023-03-16', 1),
(3, 1, 3, '2023-04-11', 1),
(4, 2, 1, '2023-01-01', 5),
(5, 2, 2, '2023-01-01', 5),
(6, 2, 3, '2023-01-01', 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `bai_hoc`
--
ALTER TABLE `bai_hoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chuong_hoc_id` (`chuong_hoc_id`);

--
-- Chỉ mục cho bảng `bai_thi`
--
ALTER TABLE `bai_thi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chuong_hoc_id` (`chuong_hoc_id`),
  ADD KEY `khoa_hoc_id` (`khoa_hoc_id`);

--
-- Chỉ mục cho bảng `cau_bai`
--
ALTER TABLE `cau_bai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhch_id` (`nhch_id`),
  ADD KEY `bai_thi_id` (`bai_thi_id`);

--
-- Chỉ mục cho bảng `chuong_hoc`
--
ALTER TABLE `chuong_hoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `khoa_hoc_id` (`khoa_hoc_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `ht_quyen`
--
ALTER TABLE `ht_quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ket_qua`
--
ALTER TABLE `ket_qua`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoi_dung_id` (`nguoi_dung_id`),
  ADD KEY `bai_thi_id` (`bai_thi_id`);

--
-- Chỉ mục cho bảng `khoa_hoc`
--
ALTER TABLE `khoa_hoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoi_dung_id` (`nguoi_dung_id`);

--
-- Chỉ mục cho bảng `lich_su_hoc_tap`
--
ALTER TABLE `lich_su_hoc_tap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoi_dung_id` (`nguoi_dung_id`),
  ADD KEY `bai_hoc_id` (`bai_hoc_id`);

--
-- Chỉ mục cho bảng `nd_trang`
--
ALTER TABLE `nd_trang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bai_hoc_id` (`bai_hoc_id`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `nhch`
--
ALTER TABLE `nhch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chuong_hoc_id` (`chuong_hoc_id`);

--
-- Chỉ mục cho bảng `phan_quyen`
--
ALTER TABLE `phan_quyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoi_dung_id` (`nguoi_dung_id`),
  ADD KEY `khoa_hoc_id` (`khoa_hoc_id`),
  ADD KEY `quyen_id` (`quyen_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bai_hoc`
--
ALTER TABLE `bai_hoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `bai_thi`
--
ALTER TABLE `bai_thi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `cau_bai`
--
ALTER TABLE `cau_bai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `chuong_hoc`
--
ALTER TABLE `chuong_hoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `ht_quyen`
--
ALTER TABLE `ht_quyen`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `ket_qua`
--
ALTER TABLE `ket_qua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `khoa_hoc`
--
ALTER TABLE `khoa_hoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lich_su_hoc_tap`
--
ALTER TABLE `lich_su_hoc_tap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nd_trang`
--
ALTER TABLE `nd_trang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nhch`
--
ALTER TABLE `nhch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT cho bảng `phan_quyen`
--
ALTER TABLE `phan_quyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `bai_hoc`
--
ALTER TABLE `bai_hoc`
  ADD CONSTRAINT `bai_hoc_ibfk_1` FOREIGN KEY (`chuong_hoc_id`) REFERENCES `chuong_hoc` (`id`);

--
-- Các ràng buộc cho bảng `bai_thi`
--
ALTER TABLE `bai_thi`
  ADD CONSTRAINT `bai_thi_ibfk_1` FOREIGN KEY (`chuong_hoc_id`) REFERENCES `chuong_hoc` (`id`),
  ADD CONSTRAINT `bai_thi_ibfk_2` FOREIGN KEY (`khoa_hoc_id`) REFERENCES `khoa_hoc` (`id`);

--
-- Các ràng buộc cho bảng `cau_bai`
--
ALTER TABLE `cau_bai`
  ADD CONSTRAINT `cau_bai_ibfk_1` FOREIGN KEY (`nhch_id`) REFERENCES `nhch` (`id`),
  ADD CONSTRAINT `cau_bai_ibfk_2` FOREIGN KEY (`bai_thi_id`) REFERENCES `bai_thi` (`id`);

--
-- Các ràng buộc cho bảng `chuong_hoc`
--
ALTER TABLE `chuong_hoc`
  ADD CONSTRAINT `chuong_hoc_ibfk_1` FOREIGN KEY (`khoa_hoc_id`) REFERENCES `khoa_hoc` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `ket_qua`
--
ALTER TABLE `ket_qua`
  ADD CONSTRAINT `ket_qua_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `ket_qua_ibfk_2` FOREIGN KEY (`bai_thi_id`) REFERENCES `bai_thi` (`id`);

--
-- Các ràng buộc cho bảng `khoa_hoc`
--
ALTER TABLE `khoa_hoc`
  ADD CONSTRAINT `khoa_hoc_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `lich_su_hoc_tap`
--
ALTER TABLE `lich_su_hoc_tap`
  ADD CONSTRAINT `lich_su_hoc_tap_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `lich_su_hoc_tap_ibfk_2` FOREIGN KEY (`bai_hoc_id`) REFERENCES `bai_hoc` (`id`);

--
-- Các ràng buộc cho bảng `nd_trang`
--
ALTER TABLE `nd_trang`
  ADD CONSTRAINT `nd_trang_ibfk_1` FOREIGN KEY (`bai_hoc_id`) REFERENCES `bai_hoc` (`id`);

--
-- Các ràng buộc cho bảng `nhch`
--
ALTER TABLE `nhch`
  ADD CONSTRAINT `nhch_ibfk_1` FOREIGN KEY (`chuong_hoc_id`) REFERENCES `chuong_hoc` (`id`);

--
-- Các ràng buộc cho bảng `phan_quyen`
--
ALTER TABLE `phan_quyen`
  ADD CONSTRAINT `phan_quyen_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `phan_quyen_ibfk_2` FOREIGN KEY (`khoa_hoc_id`) REFERENCES `khoa_hoc` (`id`),
  ADD CONSTRAINT `phan_quyen_ibfk_3` FOREIGN KEY (`quyen_id`) REFERENCES `ht_quyen` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
