-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 26, 2024 lúc 12:43 PM
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
-- Cơ sở dữ liệu: `xth_php2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsp`
--

CREATE TABLE `anhsp` (
  `Id` int(5) NOT NULL,
  `IdSP` int(5) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaDH` int(5) NOT NULL,
  `MaSP` int(5) NOT NULL,
  `SoLuong` int(11) NOT NULL DEFAULT 1,
  `DonGia` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `Id` int(5) NOT NULL,
  `Ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `Id` int(5) NOT NULL,
  `NgayDat` datetime NOT NULL DEFAULT current_timestamp(),
  `SoLuongSP` int(11) NOT NULL DEFAULT 0,
  `TongTien` int(11) NOT NULL DEFAULT 0,
  `IdGG` varchar(50) DEFAULT NULL,
  `TrangThai` set('gio-hang','cho-xac-nhan','dang-chuan-bi','dang-giao-hang','giao-thanh-cong','huy-don') NOT NULL DEFAULT 'gio-hang',
  `MaTK` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

CREATE TABLE `magiamgia` (
  `MaGG` varchar(50) NOT NULL,
  `GiaGiam` int(11) DEFAULT NULL,
  `TLGiam` int(2) DEFAULT NULL,
  `GiamToiDa` int(11) DEFAULT NULL,
  `SoLuong` int(11) NOT NULL DEFAULT 1,
  `NgayBatDau` datetime NOT NULL,
  `NgayKetThuc` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `Id` int(5) NOT NULL,
  `IdDM` int(5) NOT NULL,
  `TenSanPham` varchar(255) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `GiamGia` int(3) DEFAULT NULL COMMENT 'giá trị %',
  `Anh` varchar(255) NOT NULL,
  `SoLuong` int(5) NOT NULL,
  `ThuongHieu` varchar(255) DEFAULT NULL,
  `KichThuoc` varchar(255) DEFAULT NULL,
  `ChatLieu` varchar(255) NOT NULL,
  `MauSac` varchar(255) NOT NULL,
  `MoTa` text DEFAULT NULL,
  `MoTaCT` longtext DEFAULT NULL,
  `NgayNhap` date DEFAULT current_timestamp(),
  `TrangThai` int(1) DEFAULT 1 COMMENT 'ẩn(0), hiện(1)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `Id` int(5) NOT NULL,
  `HoVaTen` varchar(50) NOT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Quyen` int(1) NOT NULL DEFAULT 0 COMMENT 'site(0), admin(1)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_anhsp_sp` (`IdSP`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaDH`,`MaSP`),
  ADD KEY `fk_ctdh_sp` (`MaSP`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_donhang_taikhoan` (`MaTK`),
  ADD KEY `fk_donhang_magiamgia` (`IdGG`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`MaGG`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_sp_dm` (`IdDM`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD CONSTRAINT `fk_anhsp_sp` FOREIGN KEY (`IdSP`) REFERENCES `sanpham` (`Id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_ctdh_dh` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ctdh_sp` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_donhang_magiamgia` FOREIGN KEY (`IdGG`) REFERENCES `magiamgia` (`MaGG`),
  ADD CONSTRAINT `fk_donhang_taikhoan` FOREIGN KEY (`MaTK`) REFERENCES `taikhoan` (`Id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_dm` FOREIGN KEY (`IdDM`) REFERENCES `danhmuc` (`Id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
