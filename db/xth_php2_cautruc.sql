-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2024 at 01:26 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xth_php2`
--

-- --------------------------------------------------------

--
-- Table structure for table `anhsp`
--

CREATE TABLE `anhsp` (
  `Id` int NOT NULL,
  `IdSP` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaDH` int NOT NULL,
  `MaSP` int NOT NULL,
  `SoLuong` int NOT NULL DEFAULT '1',
  `DonGia` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `Id` int NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `Id` int NOT NULL,
  `NgayDat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SoLuongSP` int NOT NULL DEFAULT '0',
  `TongTien` int NOT NULL DEFAULT '0',
  `MaGG` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TrangThai` set('gio-hang','cho-xac-nhan','dang-chuan-bi','dang-giao-hang','giao-thanh-cong','huy-don') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'gio-hang',
  `MaTK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `magiamgia`
--

CREATE TABLE `magiamgia` (
  `MaGG` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `GiaGiam` int DEFAULT NULL,
  `TLGiam` int DEFAULT NULL,
  `GiamToiDa` int DEFAULT NULL,
  `SoLuong` int NOT NULL DEFAULT '1',
  `NgayBatDau` datetime NOT NULL,
  `NgayKetThuc` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `Id` int NOT NULL,
  `IdDM` int NOT NULL,
  `TenSanPham` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `DonGia` int NOT NULL,
  `GiamGia` int DEFAULT NULL COMMENT 'giá trị %',
  `Anh` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `TonKho` int NOT NULL,
  `ThuongHieu` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `KichThuoc` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ChatLieu` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `MauSac` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `MoTa` text COLLATE utf8mb4_general_ci,
  `MoTaCT` longtext COLLATE utf8mb4_general_ci,
  `NgayNhap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TrangThai` int DEFAULT '1' COMMENT 'ẩn(0), hiện(1)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `Id` int NOT NULL,
  `HoVaTen` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `SDT` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Quyen` int NOT NULL DEFAULT '0' COMMENT 'site(0), admin(1)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_anhsp_sp` (`IdSP`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaDH`,`MaSP`),
  ADD KEY `fk_ctdh_sp` (`MaSP`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_donhang_taikhoan` (`MaTK`),
  ADD KEY `fk_donhang_magiamgia` (`MaGG`);

--
-- Indexes for table `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`MaGG`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_sp_dm` (`IdDM`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anhsp`
--
ALTER TABLE `anhsp`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anhsp`
--
ALTER TABLE `anhsp`
  ADD CONSTRAINT `fk_anhsp_sp` FOREIGN KEY (`IdSP`) REFERENCES `sanpham` (`Id`) ON UPDATE CASCADE;

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_ctdh_dh` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ctdh_sp` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_donhang_magiamgia` FOREIGN KEY (`MaGG`) REFERENCES `magiamgia` (`MaGG`),
  ADD CONSTRAINT `fk_donhang_taikhoan` FOREIGN KEY (`MaTK`) REFERENCES `taikhoan` (`Id`) ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_dm` FOREIGN KEY (`IdDM`) REFERENCES `danhmuc` (`Id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
