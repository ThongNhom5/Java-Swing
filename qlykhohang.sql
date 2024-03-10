-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 08, 2024 lúc 06:43 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlykhohang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `categpry_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `categpry_name`) VALUES
(0, 'Tivi'),
(1, 'Laptop'),
(2, 'PC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id` int(11) NOT NULL,
  `dateIn` datetime DEFAULT NULL,
  `sumPayment` float DEFAULT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`id`, `dateIn`, `sumPayment`, `userId`) VALUES
(1, '2024-03-07 13:30:39', 110000000, 0),
(2, '2024-03-07 13:41:23', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `id` int(11) NOT NULL,
  `dateOut` datetime DEFAULT NULL,
  `sumPayment` float DEFAULT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`id`, `dateOut`, `sumPayment`, `userId`) VALUES
(0, '2022-12-14 00:00:00', 5000000, 0),
(1, '2024-03-07 21:21:21', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `quantity_has` bigint(20) DEFAULT NULL,
  `quantity_pay` bigint(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `categoty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `quantity_has`, `quantity_pay`, `price`, `categoty_id`) VALUES
(0, 'TiVi Sony', 31, 1, 5000000, 0),
(1, 'Laptop DELL', 10, 0, 14000000, 1),
(2, 'PC ULTRA PRO', 10, 0, 10000000, 2),
(3, 'ABC', 10, 0, 10000000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_nhap`
--

CREATE TABLE `sp_nhap` (
  `id` int(11) NOT NULL,
  `quantity_in` bigint(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `maSP` int(11) NOT NULL,
  `maPhieuNhap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_nhap`
--

INSERT INTO `sp_nhap` (`id`, `quantity_in`, `price`, `maSP`, `maPhieuNhap`) VALUES
(1, 22, 110000000, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_xuat`
--

CREATE TABLE `sp_xuat` (
  `id` int(11) NOT NULL,
  `quantity_in` bigint(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `maSP` int(11) NOT NULL,
  `maPhieuXuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_xuat`
--

INSERT INTO `sp_xuat` (`id`, `quantity_in`, `price`, `maSP`, `maPhieuXuat`) VALUES
(1, 1, 5000000, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `fullname`, `address`, `phone`) VALUES
(0, 'admin', 'admin', 'admin', 'Nguyễn huy thông', 'Hoài Đức,Hà Nội', '0979750398'),
(1, 'user3555', '3', 'user', 'Nguyễn Trọng Quân22', 'Hoài Đức,Hà Nội', '0123456789'),
(3, 'user32255gg', '322', 'user', 'Nguyễn Trọng Quân22', 'Hoài Đức,Hà Nội', '0123456789');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoty_id` (`categoty_id`);

--
-- Chỉ mục cho bảng `sp_nhap`
--
ALTER TABLE `sp_nhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maSP` (`maSP`),
  ADD KEY `maPhieuNhap` (`maPhieuNhap`);

--
-- Chỉ mục cho bảng `sp_xuat`
--
ALTER TABLE `sp_xuat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maSP` (`maSP`),
  ADD KEY `maPhieuXuat` (`maPhieuXuat`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`categoty_id`) REFERENCES `danhmuc` (`id`);

--
-- Các ràng buộc cho bảng `sp_nhap`
--
ALTER TABLE `sp_nhap`
  ADD CONSTRAINT `sp_nhap_ibfk_1` FOREIGN KEY (`maSP`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `sp_nhap_ibfk_2` FOREIGN KEY (`maPhieuNhap`) REFERENCES `phieunhap` (`id`);

--
-- Các ràng buộc cho bảng `sp_xuat`
--
ALTER TABLE `sp_xuat`
  ADD CONSTRAINT `sp_xuat_ibfk_1` FOREIGN KEY (`maSP`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `sp_xuat_ibfk_2` FOREIGN KEY (`maPhieuXuat`) REFERENCES `phieuxuat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
