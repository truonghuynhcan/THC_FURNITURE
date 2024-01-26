-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 26, 2024 lúc 12:42 PM
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

--
-- Đang đổ dữ liệu cho bảng `anhsp`
--

INSERT INTO `anhsp` (`Id`, `IdSP`, `url`) VALUES
(1, 11, 'screenshot16622043263ea574ceef.webp'),
(2, 11, 'screenshot16622043542e5acb0992.webp'),
(3, 11, 'tt212eaa737c8bde84dc0bbd523d.webp'),
(4, 12, 'thahiendai707035511f76bf4e.webp'),
(5, 12, 'thahiendai70703552ec75a4ae.webp'),
(6, 13, 'denthahiendaidc41062908956.webp'),
(7, 13, 'denthahiendai41063aca42ee0.webp'),
(8, 13, 'denthahiendai416025a88800c.webp'),
(9, 14, 'h01d01ce170a048268acbaa5306579.webp'),
(10, 14, 'h6b1fd0f8e3a84b9c8ca93e096ddb9.webp'),
(11, 14, 'h53df3c9761664082b0daab2f066cc.webp'),
(12, 15, 'dengothatrantt6701600x600.webp'),
(13, 15, 'dengothatrantt6702600x600.webp'),
(14, 15, 'dengothatrantt6703600x600.webp'),
(15, 16, 'dengothatranhwtt811.webp'),
(16, 16, 'dengothatranhwtt813600x600.webp'),
(17, 16, 'dengothatranhwtt812600x600.webp'),
(18, 17, 'denchumcodiennghethuatchao.webp'),
(19, 18, 'denchumhiendaiphongkhachba.webp'),
(20, 19, 'txc15jpeg.webp'),
(21, 20, 'denthatrannghethuatgp119bap373.webp'),
(22, 21, 'bantrangtrimobiliabh488.webp'),
(23, 22, 'ke3tang2903main8321020pn.webp'),
(24, 22, 'ke3tang2903multi12491020.webp'),
(25, 22, 'ke3tang2903multi23801020.webp'),
(26, 23, 'chaugomsutronbaumautrang800x80.webp'),
(27, 24, 'vn111342077qukwlf0rhzptr4i2ef.webp'),
(28, 25, '60867254af39a26042021145708.webp'),
(29, 25, '60867255047e526042021145709.webp'),
(30, 25, 'donlucbinhdanthucongtrang.webp'),
(31, 26, 'gheansofiahomelandkhungthepkho.webp'),
(32, 26, 'gheansofiahomelandkhungthepkho-d30b0452-7169-4bca-9839-eb7620fbacc1.webp'),
(33, 26, 'gheansofiahomelandkhungthepkho-a8413a0c-c2cb-4d7b-9c85-66cfd07c444d.webp'),
(34, 27, 'sofadonhiendaisfd114.webp'),
(35, 27, 'sofadonhiendaisfd113.webp'),
(36, 27, 'sofadonhiendaisfd112.webp'),
(37, 28, '1623300775z2494464982724de2da8.webp'),
(38, 28, ''),
(39, 28, ''),
(40, 29, '1606015685img2017.webp'),
(41, 29, '1605500542image1compressed.webp'),
(42, 29, '1605500542image2compressed.webp'),
(43, 30, 'quatthonggiohutmuiamtrang.webp'),
(44, 31, 'chancuachotdaploxohobbyho.webp'),
(45, 31, 'chancuachotdaploxohobbyho2.webp'),
(46, 31, 'chancuachotdaploxohobbyho4.webp'),
(47, 32, '61f0f186368d026012aaajpg.webp'),
(48, 33, 'voiruachenlanh2dauinox304.webp'),
(49, 33, 'voiruachenlanh2dauinox3042.webp'),
(50, 33, 'voiruachenlanh2dauinox3043.webp'),
(51, 34, 'voinuocruachennonglanhinox.webp'),
(52, 34, 'voinuocruachennonglanhinox3.webp'),
(53, 34, 'voinuocruachennonglanhinox4.webp'),
(54, 35, 'voixitchochauruacheninox3.webp'),
(55, 35, 'voixitchochauruacheninox32.webp'),
(56, 35, 'voixitchochauruacheninox33.webp'),
(57, 36, 'voixachaulavabolanhhobbyho.webp'),
(58, 36, 'voixachaulavabolanhhobbyho2.webp'),
(59, 36, 'voixachaulavabolanhhobbyho3.webp'),
(60, 37, 'bovoiruachennonglanhkemvo.webp'),
(61, 37, 'bovoiruachennonglanhkemvo2.webp'),
(62, 37, 'bovoiruachennonglanhkemvo3.webp'),
(63, 38, 'bododungnhatamgomsu1.webp'),
(64, 38, 'bododungnhatamgomsu2.webp'),
(65, 38, '61a7344b155fa01122021153731.webp'),
(66, 39, 'chauruamatlavabototopjs02w545x.webp'),
(67, 40, 'lavaboamericanstandardwpf511.webp'),
(68, 41, 'lavabototolw573545x545.webp'),
(69, 42, 'lht947cstoto740x740.webp');

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

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`Id`, `Ten`) VALUES
(1, 'Đèn trang trí'),
(2, 'Đồ trang trí'),
(3, 'Đồ nội thất'),
(4, 'Thiết bị vệ sinh');

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

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`Id`, `NgayDat`, `SoLuongSP`, `TongTien`, `IdGG`, `TrangThai`, `MaTK`) VALUES
(1, '2024-01-19 15:12:55', 0, 0, NULL, 'gio-hang', 24),
(2, '2024-01-22 12:55:21', 0, 0, NULL, 'gio-hang', 26);

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

--
-- Đang đổ dữ liệu cho bảng `magiamgia`
--

INSERT INTO `magiamgia` (`MaGG`, `GiaGiam`, `TLGiam`, `GiamToiDa`, `SoLuong`, `NgayBatDau`, `NgayKetThuc`) VALUES
('FREESHIP', NULL, NULL, NULL, 100, '2024-01-24 09:39:26', '2024-01-31 15:39:26');

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

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`Id`, `IdDM`, `TenSanPham`, `DonGia`, `GiamGia`, `Anh`, `SoLuong`, `ThuongHieu`, `KichThuoc`, `ChatLieu`, `MauSac`, `MoTa`, `MoTaCT`, `NgayNhap`, `TrangThai`) VALUES
(11, 1, 'Đèn thả trần nhà thủy tinh', 525000, NULL, 'screenshot16622043263ea574ceef.webp', 110, 'THC Furniture', NULL, 'SIMPLEHOME (Thương Hiệu Cao Cấp)', 'Vàng', 'Thiết kế hiện đại kiểu công nghiệp. Đèn sử dụng bóng Led cao cấp với tuổi thọ cao. Giá chưa bao gồm bóng. Thích hợp trang trí cho quán cafe, nhà ở gia đình và nhiều không gian khác nhau.', 'Đèn thả chao thủy tinh trang trí An An Decor được thiết kế sang trọng, hiện đại, thích hợp với nhiều không gian và phong cách nội thất.\r\nNgoài tác dụng chiếu sáng thì các mẫu đèn thả đẹp còn giúp tạo ra một không gian sang trọng, ấn tượng, đẳng cấp, thể hiện gu thẩm mỹ của gia chủ.\r\nƯu điểm nổi bật của đèn thả trang trí:\r\n•Kiểu dáng thiết kế: Các mẫu đèn thả led được thiết kế với đa dạng mẫu mã, kiểu dáng từ đơn giản tới cao cấp, từ cổ điển tới hiện đại, phù hợp với nhiều không gian khác nhau như phòng khách, phòng ngủ, hội nghị, phòng thờ,…Người tiêu dùng có thể dễ dàng lựa chọn được một sản phẩm ưng ý.\r\n•Chất liệu sử dụng: Sản phẩm đèn thả đẹp sử dụng chất liệu cao cấp như: thủy tinh, chao sắt,…Với mỗi loại chất liệu có vẻ đẹp và ý nghĩa riêng.\r\n•Tiết kiệm điện năng: Nhờ việc ứng dụng công nghệ chiếu sáng đèn led hiện đại nên đây là loại đèn tiết kiệm điện năng khi sử dụng lên tới 70% so với đèn sợi đốt và có độ bền lên tới 50.000 giờ.\r\n•An toàn với người sử dụng: Đèn thả cao cấp không tỏa nhiều nhiệt lượng khi sử dụng, không tạo tia uv nên vừa đảm bảo an toàn cho người sử dụng, thân thiện với môi trường.\r\n', '2024-01-26', 1),
(12, 1, 'Đèn thả hiện đại thiết kế Vòng Oring cao cấp', 5650000, NULL, 'thahiendai707035511f76bf4e.webp', 40, ' THC Violight', NULL, 'Inox cao cấp xi vàng đồng', 'Vàng đồng', 'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm hiện đại -  thiết kế thả ngang, ống led nghệ thuật TDC-7070 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một sự lựa chọn mua sắm, tham khảo rất tốt đối với quý Khách hàng.', 'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm hiện đại -  thiết kế thả ngang, ống led nghệ thuật TDC-7070 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một sự lựa chọn mua sắm, tham khảo rất tốt đối với quý Khách hàng.\r\n\r\nSản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng... vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn...\r\n', '2024-01-26', 1),
(13, 1, 'Đèn thả hiện đại - thiết kế Led thanh ngang DC', 2750000, NULL, 'denthahiendaidc41062908956.webp', 552, ' THC Violight', NULL, 'Kim loại sơn tỉnh điện + Mika', 'Đen', 'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm hiện đại -  thiết kế thả ngang, ống led nghệ thuật DC-4108 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một sự lựa chọn mua sắm, tham khảo rất tốt đối với quý Khách hàng. Sản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng... vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn', 'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm hiện đại -  thiết kế thả ngang, ống led nghệ thuật DC-4108 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một sự lựa chọn mua sắm, tham khảo rất tốt đối với quý Khách hàng. Sản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng... vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn\r\nSản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng... vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn...\r\n', '2024-01-26', 1),
(14, 1, 'Đèn chùm ánh sáng mặt dây chuyền lá thủy tinh', 1750000, NULL, 'h01d01ce170a048268acbaa5306579.webp', 868, ' THC Violight', NULL, 'Kim loại sơn tỉnh điện + Mika', 'Đen', 'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm hiện đại -  thiết kế thả ngang, ống led nghệ thuật DC-4108 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một sự lựa chọn mua sắm, tham khảo rất tốt đối với quý Khách hàng. Sản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng... vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn', 'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm hiện đại -  thiết kế thả ngang, ống led nghệ thuật DC-4108 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một sự lựa chọn mua sắm, tham khảo rất tốt đối với quý Khách hàng. Sản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng... vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn\r\n\r\nSản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng... vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn...', '2024-01-26', 1),
(15, 1, 'Đèn gỗ trang trí thả trần thẩm mỹ', 420000, NULL, 'dengothatrantt6701600x600.webp', 86, 'THC Homewat', NULL, 'Gỗ', 'Cánh ván', 'Mẫu đèn gỗ thả trần HWTT67 được thiết kế chính xác trên máy tính, trước khi gia công bằng máy laser hiện đại. Sản phẩm có số lan/đèn đạt chuẩn, đảm bảo tính thẩm mỹ và hiệu ứng ánh sáng đẹp mắt. Mẫu đèn này rất phù hợp để sử dụng trong không gian quán cà phê, nhà hàng, homestay, khách sạn, resort, trung tâm thương mại,…', 'Mẫu đèn gỗ thả trần HWTT67 được thiết kế chính xác trên máy tính, trước khi gia công bằng máy laser hiện đại. Sản phẩm có số lan/đèn đạt chuẩn, đảm bảo tính thẩm mỹ và hiệu ứng ánh sáng đẹp mắt. Mẫu đèn này rất phù hợp để sử dụng trong không gian quán cà phê, nhà hàng, homestay, khách sạn, resort, trung tâm thương mại,… \r\nĐóng gói đèn gỗ thả trần HWTT67\r\nSản phẩm chính: Chụp đèn gỗ được lắp hoàn thiện hoặc đóng gói dưới dạng thanh ghép. Đèn có ba vòng gỗ và các lan.\r\nPhụ kiện: Homewat trợ giá mua bộ phụ kiện đầy đủ chỉ 30.000vnd/bộ gồm: Bóng led bulb 5w, đui E27, dây điện treo dài 80cm, ốp trần.\r\nPhụ kiện khác: Bạn được tặng kèm keo hoặc các phụ kiện hỗ trợ đi kèm tùy sản phẩm.', '2024-01-26', 1),
(16, 1, 'Đèn gỗ trang trí thả trần Plywood nhập khẩu', 360000, NULL, 'dengothatranhwtt811.webp', 648, 'THC Plywood', NULL, 'Gỗ', 'Vàng', 'Mẫu đèn gỗ thả trần HWTT67 được thiết kế chính xác trên máy tính, trước khi gia công bằng máy laser hiện đại. Sản phẩm có số lan/đèn đạt chuẩn, đảm bảo tính thẩm mỹ và hiệu ứng ánh sáng đẹp mắt. Mẫu đèn này rất phù hợp để sử dụng trong không gian quán cà phê, nhà hàng, homestay, khách sạn, resort, trung tâm thương mại,…', 'Đóng gói đèn gỗ thả trần HWTT67\r\nSản phẩm chính: Chụp đèn gỗ được lắp hoàn thiện hoặc đóng gói dưới dạng thanh ghép. Đèn có ba vòng gỗ và các lan.\r\nPhụ kiện: Homewat trợ giá mua bộ phụ kiện đầy đủ chỉ 30.000vnd/bộ gồm: Bóng led bulb 5w, đui E27, dây điện treo dài 80cm, ốp trần.\r\nPhụ kiện khác: Bạn được tặng kèm keo hoặc các phụ kiện hỗ trợ đi kèm tùy sản phẩm.', '2024-01-26', 1),
(17, 1, 'Đèn chùm cổ điển nghệ thuật chao thủy tinh đục', 1150000, NULL, 'denchumcodiennghethuatchao.webp', 133, 'THC Plywood', NULL, 'Hợp kim + Chao thủy tinh đục', 'Vàng đồng', 'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm cổ điển nghệ thuật, chao thủy tinh đục DC-2031 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một sự lựa chọn mua sắm, tham khảo rất tốt đối với quý Khách hàng.', 'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm cổ điển nghệ thuật, chao thủy tinh đục DC-2031 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một sự lựa chọn mua sắm, tham khảo rất tốt đối với quý Khách hàng.\r\n\r\nSản phẩm với chất liệu kim loại đồng+thủy tinh, sử dụng bóng E27 – 30000K được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng… vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn…\r\n', '2024-01-26', 1),
(18, 1, 'Đèn chùm hiện đại phòng khách thiết kế khối ngân hà', 2165000, NULL, 'denchumhiendaiphongkhachba.webp', 157, 'THC Furniture', NULL, 'Hợp kim + Chao thủy tinh đục', 'Vàng (good)', 'Đèn thả Decor , là hạng mục khá quan trọng với mỗi công trình. Sản phẩm đèn thả trang trí gắn trần phòng khách-bàn ăn, thiết kế Galaxy nghệ thuật TDC-234 với chất liệu thân kim loại si vàng đồng+thủy tinh sử dụng bóng Led G9-3000K, dễ dàng trong việc lắp đặt, đảm bảo được ánh sáng, trang trí cho mọi công trình.', 'Đèn thả Decor , là hạng mục khá quan trọng với mỗi công trình. Sản phẩm đèn thả trang trí gắn trần phòng khách-bàn ăn, thiết kế Galaxy nghệ thuật TDC-234 với chất liệu thân kim loại si vàng đồng+thủy tinh sử dụng bóng Led G9-3000K, dễ dàng trong việc lắp đặt, đảm bảo được ánh sáng, trang trí cho mọi công trình.\r\n\r\nGiúp giải quyết rất tốt trong việc tìm kiếm đèn trang trí phòng ngủ, đèn trang trí bàn ăn, đèn trang trí nhà hàng, trang trí quán cafe, trang trí cho shop, trang trí văn phòng….', '2024-01-26', 1),
(19, 1, 'Đèn cây đứng trang trí nội thất phòng khách', 2399000, NULL, 'txc15jpeg.webp', 13, 'THC Furniture', NULL, 'Hợp kim xi màu inox + chao vải trắng ngà', 'Sáng vàng', '+ Chất liệu/màu sắc: hợp kim xi màu inox + chao vải trắng ngà\r\n\r\n+ Hàng nhập khẩu.\r\n\r\n+ Bảo hành: 12 tháng đối với lỗi kỹ thuật (bảo hành qua số điện thoại)\r\n\r\n+ Ứng dụng: Đèn cây đứng phòng khách – sofa, phòng ngủ, bàn học, bàn làm việc để sàn, đèn cây đứng đọc sách,…\r\n\r\n+ Lắp đặt: dễ dàng, thay đổi vị trí thuận tiện.', '+ Chất liệu/màu sắc: hợp kim xi màu inox + chao vải trắng ngà\r\n\r\n+ Hàng nhập khẩu.\r\n\r\n+ Bảo hành: 12 tháng đối với lỗi kỹ thuật (bảo hành qua số điện thoại)\r\n\r\n+ Ứng dụng: Đèn cây đứng phòng khách – sofa, phòng ngủ, bàn học, bàn làm việc để sàn, đèn cây đứng đọc sách,…\r\n\r\n+ Lắp đặt: dễ dàng, thay đổi vị trí thuận tiện.', '2024-01-26', 1),
(20, 1, 'Đèn thả trần nghệ thuật hiện đại', 3200000, NULL, 'denthatrannghethuatgp119bap373.webp', 763, 'THC Sundecor', NULL, 'Xứ', 'Trắng', 'Đèn thả trần trang trí hiện đại là một trong những sản phẩm đèn trang trí được nhiều người ưa chuộng và sử dụng trong trang trí nội thất giúp cho không gian ngôi nhà của bạn trở nên sinh động và hiện đại hơn bao giờ hết.', 'Đèn thả trần trang trí hiện đại là một trong những sản phẩm đèn trang trí được nhiều người ưa chuộng và sử dụng trong trang trí nội thất giúp cho không gian ngôi nhà của bạn trở nên sinh động và hiện đại hơn bao giờ hết.\r\n\r\nThiết kế\r\n\r\nMẫu đèn thả bàn ăn nhập khẩu cao cấp được thiết kế theo phong cách hiện đại với ưu điểm về kiểu dáng, tinh tế trong từng đường nét bên cạnh đó nó còn giúp thể hiện cả tính của chủ nhà! Tuy rằng với 1 thiết kế không quá cầu kỳ, mẫu đèn thả này vẫn tạo được điểm nhấn thu hút và mang đến nguồn sáng hài hòa cho không gian. Với tính năng vô cùng đặc biệt, dây thả được điều chính tùy theo mong muốn và sở thích nên nó rất thích hợp với nhiều không gian.\r\n\r\nChất liệu\r\n\r\nSản phẩm đèn thả trần đơn giản với chất liệu bền bỉ giúp khách hàng có thể hoàn toàn yên tâm sử dụng. Trong không gian sống của mình, những chiếc đèn thả trần với những thiết kế độc đáo bạn đã có thể hô biến không gian sống của mình trở nên sinh động, cuốn hút hơn bao giờ hết.\r\n\r\nCông nghệ Led hiện đại\r\n\r\nSản phẩm đèn thả trần nghệ thuật , đèn thả phòng khách, đèn thả phòng ngủ GP119BA được sử dụng công nghệ Led vô cùng chân thực, rõ nét giúp cho chúng ta có những cảm quan chân thực, chính xác nhất về các vật dụng nội thất hiện diện trong đó. Công nghệ Led giúp tiếp kiệm điện năng 1 cách hiệu quả nhất.\r\n\r\nĐèn Thả Trần Nghệ Thuật - GP119BA phù hợp với nhiều không gian\r\n\r\nVới tính năng điều chỉnh dây thả theo ý thích, chiếc đèn thả trần có thể ứng dụng tại rất nhiều không gian khác nhau như không gian phòng khách, Tab đầu giường phòng ngủ, bàn ăn. Dù ở bất kỳ không gian nào, chiếc đèn sẽ làm nổi bật cả không gian nội thất.', '2024-01-26', 1),
(21, 2, 'Bàn trang trí Mobilia BH-488 1.2M White OAK', 6190000, NULL, 'bantrangtrimobiliabh488.webp', 231, 'Simplehome ', NULL, 'Gỗ công nghiệp', 'Sồi', 'Bàn Trang Trí MOBILIA BH-488 1.2M được làm bằng chất liệu gỗ MDF bền đẹp, chắc chắn. Chất liệu gỗ cao cấp đã trải qua quá trình xử lý tỉ mỉ, cho khả năng chống mối mọt, chống ẩm mốc, đồng thời chịu lực cao, chịu được các va đập tốt nên không bị biến dạng, cong vênh trong quá trình sử dụng.', 'Thiết kế tinh tế, chắc chắn\r\n\r\nBàn có thiết kế tinh tế với từng đường nét chế tác tỉ mỉ  tự nhiên đẹp mắt, giúp tạo nên nét trang trọng hơn cho bộ ấm trà hay đĩa hoa quả khi được đặt lên trên.\r\n\r\nThuận tiện bảo quản gọn gàng nhiều vật dụng khác nhau\r\n\r\nPhần ngăn kéo cùng hộc đựng rộng rãi được tích hợp bên dưới, tiện lợi để bạn có thể sắp xếp gọn gàng sách báo hoặc các đồ vật lưu niệm khác... Chân đế nguyên khối chắc chắn, giúp bàn đứng vững hơn và tránh tình trạng bị xô dịch gây ảnh hưởng đến sàn nhà.\r\n\r\nTạo nét sang trọng cho không gian phòng khách\r\n\r\nBàn Trang Trí MOBILIA với màu sắc trang nhã, bạn có thể dễ dàng kết hợp với các vật dụng trang trí nội thất khác, giúp cho không gian phòng khách của gia đình thêm phần sang trọng và hiện đại.', '2024-01-26', 1),
(22, 2, 'Kệ 3 Tầng 290-3 Trắng', 1790000, NULL, 'ke3tang2903main8321020pn.webp', 744, 'Simplehome ', '80x30x85.5 cm', 'MDF', 'Trắng', 'Kệ Đa năng nhập khẩu, vừa tiện lợi phù hợp với các mẹ bỉm sữa , tiệm spa để làm xe đẩy spa. kệ spa, kệ để sách kệ để đồ nhà bếp thông minh Sản phẩm được làm bằng chất liệu nhựa ABS, PP có độ bền cao', 'Kệ Đa năng nhập khẩu, vừa tiện lợi phù hợp với các mẹ bỉm sữa , tiệm spa để làm xe đẩy spa. kệ spa, kệ để sách kệ để đồ nhà bếp thông minh Sản phẩm được làm bằng chất liệu nhựa ABS, PP có độ bền cao\r\n\r\nHàng có sẵn\r\n\r\nCó khung sắt chắc chắn.\r\n\r\nKhay được làm nhiều lỗ thoáng tiện và tăng tính thẩm mỹ.\r\n\r\nKích Thước 42X35X87 Cm khay Nhựa ABS\r\n\r\nKích thước 42*30*86 Cm Khay Nhựa PP', '2024-01-26', 1),
(23, 2, 'Chậu sứ trắng để bàn tròn bầu', 150000, NULL, 'chaugomsutronbaumautrang800x80.webp', 586, 'THC Furniture', '16x14cm (DxC)', 'Gốm sứ', 'Trắng', 'Chậu trồng cây được làm bằng chất liệu xi măng đá mài sẽ góp phần tăng thêm nét hiện đại cho bộ sưu tập vật phẩm trang trí sân vườn của bạn. Với những đường nét đơn giản, hiện đại khiến cho chậu đá mài luôn là lựa chọn hàng đầu cho việc trang trí nội thất hoặc các công trình kiến trúc mới.', 'Chậu xi măng đá mài trồng cây với chất lượng bền bỉ kết với hợp hình dạng, màu sắc và kích thước khác nhau đã đáp ứng nhu cầu ngày càng cao của thị trường và theo đuổi vẻ đẹp sang trọng thích hợp cho mọi công trình, đặc biệt là quán cà phê, biệt thự,trung tâm thương mại,...\r\n\r\nChậu trồng cây làm bằng chất liệu xi măng đá mài được chế tác từ đá granit, kết dính với nhau bằng xi măng, nguyên liệu bền – đẹp theo thời gian. Chậu được ứng dụng rộng rãi, có thể bố trí cả trong nhà lẫn ngoài trời. Với kiểu dáng tinh tế, nhẹ nhàng mang lại vẻ đẹp sang trọng và hiện đại cho khuôn viên của bạn', '2024-01-26', 1),
(24, 2, 'Kệ trang trí decor phòng - kệ vi sóng với nhiều tầng', 500000, NULL, 'vn111342077qukwlf0rhzptr4i2ef.webp', 467, 'THC Furniture', 'Sắt hộp 20x20mm, dày 1ly sơn tĩnh điện cao cấp.', 'MDF', 'Trắng vàng', 'Quý Khách hàng đặt “HOẢ TỐC” trước 16h30 cùng ngày thì shop có thể giao liền, khách nhận được hàng ngay trong ngày.\r\n\r\nSản phẩm chất lượng, dày dặn nên sẽ nặng cân nên phí vận chuyển cao, mong Quý Khách hoan hỉ giúp đôi bên thuận mua vừa bán.', 'Kệ trang trí decor phòng , kệ vi sóng với nhiều tầng , nhiều màu dễ dàng để đồ tiện lợi\r\n\r\n• Lắp đặt: sản phẩm chưa được lắp ráp sẵn trước khi giao hàng.\r\n\r\n• Kệ trang trí nhiều tầng nhiều size chuyên dùng decor trang trí hoặc để lò vi sóng\r\n\r\n• Đế chân kệ sử dụng nút cao su có thể điều chỉnh độ cao & độ nghiêng bề mặt giúp cân bằng.\r\n\r\n• Bộ kệ trang trí đầy đủ ốc, đóng thùng, bọc 4 góc rồi mới gửi đi nên hạn chế được tối đa rủi ro bể/vỡ trong quá trình vận chuyển.', '2024-01-26', 1),
(25, 2, 'Đôn lục bình đan thủ công trang trí phòng khách', 450000, NULL, '60867254af39a26042021145708.webp', 897, 'THC Oem', '40cm x 40cm (rộng x cao)', 'lục bình, cói', 'Vàng tự nhiên', 'Đôn lục bình là một sản phẩm đa năng, dễ kết hợp với nhiều không gian từ đơn giản đến sang trọng. Sản phẩm thích hợp làm tăng vẻ đẹp của các không gian như phòng khách, phòng ngủ, homestay, quán cà phê', 'Ưu điểm của đôn lục bình\r\n\r\nĐôn lục bình có thể dùng làm chiếc bàn phụ, kết hợp với chiếc bàn trà một cách hài hòa để tiếp khách khi cần thiết.\r\nĐôn lục bình cũng có thể làm một chiếc ghế đôn bắt mắt hoặc một chiếc kệ để đặt một vài món đồ trang trí giúp tăng tính thẩm mỹ cho không gian.\r\nBạn còn có thể tận dụng sản phẩm như một chiếc kệ đầu giường mang nét đẹp nhẹ nhàng, đơn giản.\r\nMàu sắc tự nhiên, mùi hương nhẹ nhàng rất đặc trưng của lục bình và cói sẽ đem lại cho bạn cảm giác bình yên, thư thái.\r\nSản phẩm có kiểu dáng nhỏ gọn, tiện dụng, tiết kiệm không gian, dễ dàng xếp gọn hoặc di chuyển trong quá trình sử dụng.\r\nĐôn lục bình có thời gian sử dụng từ 3 - 5 năm trong môi trường nhiệt độ ôn hoà, không có độ ẩm cao, rất thích hợp với môi trường điều hoà hoặc các căn hộ ở chung cư.\r\nChất liệu của đôn lục bình\r\n\r\nĐôn lục bình làm từ chất liệu chính là lục bình, kết hợp cói và bẹ ngô 100% tự nhiên.\r\n\r\nHướng dẫn sử dụng\r\n\r\nĐôn lục bình có thể dùng làm ghế ngồi hoặc làm bàn đựng đồ trang trí trong phòng khách.\r\n\r\nBảo quản\r\n\r\nBảo quản sản phẩm ở nơi khô ráo, tránh ẩm ướt, hạn chế tiếp xúc với ánh nắng mặt trời.', '2024-01-26', 1),
(26, 2, 'Ghế ăn Sofia HomeLand khung thép không gỉ', 2290000, NULL, 'gheansofiahomelandkhungthepkho.webp', 603, 'HomeLand', NULL, 'Ghế khung thép bọc PVC/PU', 'Vàng, đen', 'Ghế ăn Sofia HomeLand khung thép không gỉ được thiết kế theo phong cách tối giản nên phù hợp với mọi không gian nội thất. Sản phẩm có 2 màu cơ bản: đen và nâu, giúp người dùng có thêm nhiều lựa chọn cho không gian nhà bếp.\r\n', 'Ghế ăn Sofia HomeLand khung thép không gỉ được thiết kế theo phong cách tối giản nên phù hợp với mọi không gian nội thất. Sản phẩm có 2 màu cơ bản: đen và nâu, giúp người dùng có thêm nhiều lựa chọn cho không gian nhà bếp.\r\n\r\nChất liệu: Ghế khung thép bọc PVC/PU\r\nMàu sắc: đen, nâu', '2024-01-26', 1),
(27, 2, 'Ghế sofa đơn lưng tựa bo tròn phong cách hiện đại', 1500000, NULL, 'sofadonhiendaisfd114.webp', 405, 'THC Furniture', '80cm – 85cm - 1m', 'Vỏ bọc nỉ cao cấp', 'Màu ngọc xanh', 'Chất liệu: Vỏ bọc nỉ cao cấp; nệm mút êm ái; khung xương gỗ tự nhiên chắc chắn và bền đẹp.\r\nKiểu dáng: Sofa đơn 1 chỗ ngồi\r\nMàu sắc: Màu xanh ngọc\r\nKích thước: 80cm – 85cm -1m', 'Đặc điểm thiết kế nổi bật\r\n\r\n \r\n\r\n- Chất liệu vỏ bọc: đến với HNSOFA quý khách hàng có thể tùy chọn dùng vỏ bọc mà mình yêu thích. Có 2 loại là da và nỉ, nếu ghế sofa da mang lại sự sang trọng và đẳng cấp thì sofa nỉ lại toát lên sự mềm mại và ấm cúng. SFĐ11 bọc vải nỉ tuyết mưa mềm mại và lịch sự. \r\n\r\n- Khung sofa: để đảm bảo sự chắc chắn, khung sofa tại HN SOFA thường được làm từ chất liệu gỗ tự nhiên đã qua xử lý. Sofa gỗ tự nhiên có độ bền cao, khả năng chống mối mọt, cong vênh tốt giúp cho sofa vô cùng chắc chắn, không gặp phải tình trạng phát ra tiếng kêu ọp ẹp khi ngồi. \r\n\r\n- Nệm mút sofa: sử dụng nệm cao cấp để sản phẩm đứng phom và êm ái, dễ chịu hơn khi dùng. Hiện nay, đệm mút Việt Nhật K43 được xem là dòng mút cao cấp nhất có khả năng chống xẹp lún hiệu quả. \r\n\r\n- Chân sofa: mẫu sofa SFĐ11 này thiết kế dạng chân trụ cao, làm từ gỗ tự nhiên đã được tạo hình nhỏ nhắn và vô cùng vững chãi.', '2024-01-26', 1),
(28, 2, 'Kệ sách, kệ để đồ trang trí Eden', 2450000, NULL, '1623300775z2494464982724de2da8.webp', 306, 'THC Eden', '71(D) x 39(R) x 182(C)', 'Gỗ cao su', 'nâu caffe', 'Chiếc tủ sách tuyệt đẹp này có thiết kế đơn giản nhưng bắt mắt cùng với độ bền đáng kinh ngạc. Năm kệ cung cấp kho lưu trữ phong phú cho những cuốn sách và vật dụng trang trí yêu thích của bạn. Lớp hoàn thiện màu nâu cổ trung tính cho phép tác phẩm này bổ sung đẹp mắt cho thiết kế ngôi nhà của bạn trong phòng khách, phòng làm việc hoặc phòng ăn.', 'Chi tiết sản phẩm:\r\n\r\n- Kích thước: 71(D) x 39(R) x 182(C)\r\n\r\n- Trọng lượng: 33 KG\r\n\r\n- Chất liệu: Gỗ cao su\r\n\r\n- Màu sắc: Nâu cafe\r\n\r\n- Làm sạch bằng khăn ẩm\r\n\r\nTính năng:\r\n\r\n- Kệ để sách\r\n\r\n- Trang trí vật dụng trong nhà', '2024-01-26', 1),
(29, 3, 'Ghế bập bênh thư giản tiện nghi', 2650000, NULL, '1606015685img2017.webp', 228, 'THC Furniture', '50cm x 21 cm x 80cm (Dài x Rộng x Cao)\r\n', 'Vỏ ngoài nhung lạnh Nhật Bản', 'Xám nỉ', 'Ghế bập bênh T1 mang đến cảm giác tốt cho bạn khi nằm. Chúng tôi tự hào là sản phẩm của người Việt mang đến trải nghiệm theo thời gian cho bạn', 'Ghế bập bênh T1 mang đến cảm giác tốt cho bạn khi nằm. Chúng tôi tự hào là sản phẩm của người Việt mang đến trải nghiệm theo thời gian cho bạn\r\n\r\nThông tin sản phẩm\r\n\r\nMàu sắc tuỳ chọn theo yêu cầu (Liên hệ)\r\nKhung gỗ tự nhiên\r\nKích thước như trong ảnh mô tả\r\nChất liệu vỏ ngoài nhung lạnh Nhật Bản tạo cảm giác mềm mại.\r\nGhế phù hợp cho người hay bị mỏi lưng, mỏi cổ, và đặc biệt là bà bầu hoặc phụ nữ hay phải trông con\r\nCó nhiều màu cho khách, hàng về liên tục\r\nChất liệu nỉ thô, nỉ nhung, da\r\nĐa dạng màu sắc để mua\r\nMiễn phí vận chuyển toàn quốc.', '2024-01-26', 1),
(30, 3, 'Quạt thông gió hút mùi âm trần Genun BPT12-13C', 375000, NULL, 'quatthonggiohutmuiamtrang.webp', 736, 'THC Genun', 'Sải cánh 125mm', 'Nhựa ABS', 'Trắng', 'Quạt thông gió hút mùi âm trần Genun BPT12-13C chuyên dùng để hút mùi, hút khói âm trần, dẫn khói, bụi và mùi trong phòng theo đường ống ra ngoài giúp làm sạch không khí trong gia đình tốt hơn.', 'Quạt thông gió hút mùi âm trần Genun BPT12-13C chuyên dùng để hút mùi, hút khói âm trần, dẫn khói, bụi và mùi trong phòng theo đường ống ra ngoài giúp làm sạch không khí trong gia đình tốt hơn.\r\n', '0000-00-00', 1),
(31, 3, 'Chặn cửa chốt đạp lò xo Hobby Home Decor', 64000, NULL, 'chancuachotdaploxohobbyho.webp', 369, 'Hobby Home Decor', NULL, 'Hợp kim kẽm hạn chế hoen gỉ', 'Màu bạc', 'Chặn cửa chốt đạp lò xo Hobby Home Decor màu bạc có kích thước nhỏ gọn, tiện lắp với nhiều loại cửa khác nhau. Chặn cửa Hobby Home Decor giữ cửa cố định, tránh trôi trượt tốt.\r\n', 'Đặc điểm của chặn cửa chốt đạp lò xo Hobby Home Decor\r\n\r\nMàu sắc: Màu bạc\r\nChất liệu: Hợp kim kẽm hạn chế hoen gỉ.\r\nCó chân đế cao su giúp tránh trầy xước tràn lại tăng khả năng giữ cửa không bị trôi.\r\nBên trong chặn cửa Hobby Home Decor có chốt có lò xò giúp đạp xuống để dễ dàng nâng chốt lên.', '2024-01-26', 1),
(32, 3, 'Ghế ăn Basil HomeLand khung thép', 2890000, NULL, '61f0f186368d026012aaajpg.webp', 575, 'HomeLand', '(460 x 610 x 980mmH)\r\n', 'Ghế khung thép bọc PVC/PU', 'Đen, nâu', 'Ghế ăn Basil HomeLand khung thép là mẫu ghế được thiết kế theo kiểu dáng basic với khung thép chắc chắn không gỉ cho độ bền cao. Ghế hế ăn Basil có gam màu trầm nên phù hợp với mọi không gian nội thất.\r\n', 'Ghế ăn Basil HomeLand khung thép là mẫu ghế được thiết kế theo kiểu dáng basic với khung thép chắc chắn không gỉ cho độ bền cao. Ghế hế ăn Basil có gam màu trầm nên phù hợp với mọi không gian nội thất.\r\n\r\nGhế ăn Basil: (460 x 610 x 980mmH)\r\nChất liệu: Ghế khung thép bọc PVC/PU', '2024-01-26', 1),
(33, 4, 'Vòi rửa chén lạnh 2 đầu inox 304 Hobby', 315000, NULL, 'voiruachenlanh2dauinox304.webp', 746, 'Hobby Home Decor', NULL, 'Inox 304 không rỉ sét', 'Bạc', 'Vòi rửa chén lạnh 2 đầu inox 304 Hobby được làm từ chất liệu cao cấp sáng bóng, không rỉ sét, vòi tích hợp có 2 cần rửa chén, thuận tiện cho 2 người sử dụng cùng lúc\r\n', 'Đặc điểm nổi bật của sản phẩm\r\n\r\nChất liệu: Inox 304 không rỉ sét\r\nCó 2 đầu xả\r\nTặng kèm dây cấp nước dài 60cm\r\nPhù hợp cho chậu rửa không dùng nước nóng lạnh\r\nTrọng lượng: 834gram\r\nPhù hợp cho mọi chậu rửa chén\r\nSản phẩm thiết kế phù hợp cho mọi không gian bếp', '2024-01-26', 1),
(34, 4, 'Vòi nước rửa chén nóng lạnh inox 304 Hobby Home Decor', 428000, NULL, 'voinuocruachennonglanhinox.webp', 873, 'Hobby Home Decor', NULL, 'Inox 304 không rỉ sét', 'Bạc', 'Vòi nước rửa chén nóng lạnh inox 304 Hobby Home Decor được làm từ chất liệu cao cấp sáng bóng, không rỉ sét, vòi tích hợp có 2 cần rửa chén, thuận tiện cho 2 người sử dụng cùng lúc', 'Đặc điểm nổi bật của sản phẩm\r\n\r\nChất liệu: Inox 304 không rỉ sét\r\nCó 2 đầu xả\r\nTặng kèm dây cấp nước dài 60cm\r\nPhù hợp cho chậu rửa không dùng nước nóng lạnh\r\nTrọng lượng: 834gram\r\nPhù hợp cho mọi chậu rửa chén\r\nSản phẩm thiết kế phù hợp cho mọi không gian bếp', '2024-01-26', 1),
(35, 4, 'Vòi xịt cho chậu rửa chén Inox 304 Hobby', 218000, NULL, 'voixitchochauruacheninox3.webp', 317, 'Hobby Home Decor', NULL, 'Inox 304 không rỉ sét', 'Bạc', 'Vòi xịt cho chậu rửa chén Hobby Home Decor GB1 được làm từ chất liệu inox 304 cao cấp không gỉ, dễ dàng lắp ráp và gắn vào chậu rửa chén bát, giúp các bà nội trợ dễ dàng sử dụng để làm sạch chậu rửa một cách đơn giản, nhẹ nhàng.\r\n', 'Tính năng và thông tin sản phẩm\r\n\r\nChất liệu Inox 304 không rỉ sét\r\nPhù hợp cho chậu rửa chén có lỗ 23-28mm\r\nDây vòi xịt 1.5m\r\nRất tiện để xịt rửa bồn rửa chén\r\nSản phẩm decor dành cho chung cư căn hộ nhà phố', '2024-01-26', 1),
(36, 4, 'Vòi xả chậu lavabo lạnh Hobby', 199000, NULL, 'voixachaulavabolanhhobbyho.webp', 706, 'Hobby Home Decor', NULL, 'Inox 304 không rỉ sét', 'Bạc', 'Vòi xả chậu lavabo lạnh Hobby Home Decor LBL2 Inox 304 được thiết kế mang xu hướng sang trọng, hiện đại, phù hợp cho mọi lavabo rửa mặt thông thường từ chậu sứ cho tới chậu đá.\r\n', 'Vòi xả chậu lavabo lạnh Hobby Home Decor LBL2 Inox 304 được thiết kế mang xu hướng sang trọng, hiện đại, phù hợp cho mọi lavabo rửa mặt thông thường từ chậu sứ cho tới chậu đá.\r\n', '2024-01-26', 1),
(37, 4, 'Bộ vòi rửa chén nóng lạnh kèm vòi xịt dây rút Hobby', 696000, NULL, 'bovoiruachennonglanhkemvo.webp', 430, 'Hobby Home Decor', NULL, 'Inox 304 không rỉ sét', 'Bạc', 'Bộ vòi rửa chén nóng lạnh kèm vòi xịt dây rút Hobby RCG với chất liệu inox 304 bền đẹp, không rỉ sét, tông màu bạc sang trọng phù hợp với mọi không gian bếp. Vòi với 2 chế độ nóng lạnh tiện dụng, và có đi kèm vòi xịt giúp việc xịt rửa chén đĩa nhanh chóng, thuận tiện lợi\r\n', 'Đặc điểm của sản phẩm\r\n\r\nChất liệu: Inox 304 không rỉ sét\r\nCó 2 vòi\r\nDây rút dài 140cm\r\nVòi xịt dây rút khóa mở được\r\nCó 2 chế độ: nóng và lạnh\r\nRất tiện lợi để xịt rửa bồn rửa chén\r\nCó cục tạ để rút dây vòi xịt lại', '2024-01-26', 1),
(38, 4, 'Bộ đồ dùng nhà tắm gốm sứ vân đá mạ vàng cao cấp', 589000, NULL, 'bododungnhatamgomsu1.webp', 858, 'Hobby Home Decor', NULL, 'Gốm sứ', 'Đen vàng, trắng vàng', 'Bộ đồ dùng nhà tắm gốm sứ vân đá mạ vàng cao cấp với thiết kế đa năng, tiện dụng, hoạ tiết tinh xảo đem lại cho nhà tắm của bạn phong cách hiện đại, sang trọng và gọn gàng.\r\n', 'Đặc điểm của sản phẩm\r\n\r\nChất liệu: gốm sứ cao cấp, siêu bền theo thời gian\r\nBộ sản phẩm gồm\r\n\r\nCốc đựng bàn chải đánh răng đa năng\r\nLọ đựng nước rửa tay\r\nKhay đựng xà phòng\r\nCốc đánh răng giúp không gian nhà tắm ngăn nắp, khoa học', '2024-01-26', 1),
(39, 4, 'Chậu rửa mặt Lavabo Toto đặt bàn', 3560000, NULL, 'chauruamatlavabototopjs02w545x.webp', 478, 'THC Toto', NULL, 'Tấm SPCC cơ bản, chụp đèn PMMA', 'Trắng ngà', '+ Kiểu dáng độc đáo, hiện đại dạng đặt nổi trên bàn\r\n\r\n+ Thiết kế với lỗ thoát tràn dạng trang trí\r\n\r\n+ Bề mặt nhẵn, mịn dễ dàng vệ sinh', 'Chậu lavavbo TOTO đặt trên bàn đá PJS02WE#MW của hãng thiết bị vệ sinh TOTO\r\n\r\n- ĐẶC ĐIỂM NỔI BẬT:\r\n\r\n+ Kiểu dáng độc đáo, hiện đại dạng đặt nổi trên bàn\r\n\r\n+ Thiết kế với lỗ thoát tràn dạng trang trí\r\n\r\n+ Bề mặt nhẵn, mịn dễ dàng vệ sinh', '2024-01-26', 1),
(40, 4, 'Chậu rửa mặt treo tường La Vita American', 2180000, NULL, 'lavaboamericanstandardwpf511.webp', 774, 'La Vita American', NULL, 'Sứ cao cấp, chống bám bẩn', 'Trắng ngà', 'Dòng sản phẩm chậu rửa lavabo treo tường American Standard WP-F511 dòng La Vitacủa hãng thiết bị vệ sinh American Standard\r\n\r\nChất liệu của lavabo American Standard WP-F511 bằng sứ cao cấp, chống bám bẩn', 'Dòng sản phẩm chậu rửa lavabo treo tường American Standard WP-F511 dòng La Vitacủa hãng thiết bị vệ sinh American Standard Với đặc tính kháng khẩn, dễ lau chùi Chất liệu của lavabo American Standard WP-F511 bằng sứ cao cấp, chống bám bẩn Kích thước: 600mm Không bao gồm phụ kiện(vòi, bộ xả,...)\r\n\r\n- ĐẶC ĐIỂM NỔI BẬT:\r\n\r\n+ Kiểu dáng độc đáo, hiện đại dạng đặt nổi trên bàn\r\n\r\n+ Thiết kế với lỗ thoát tràn dạng trang trí\r\n\r\n+ Bề mặt nhẵn, mịn dễ dàng vệ sinh', '2024-01-26', 1),
(41, 4, 'Chậu Lavabo Toto tròn đặt bàn', 3433000, NULL, 'lavabototolw573545x545.webp', 339, 'THC Toto', NULL, 'Sứ cao cấp, chống bám bẩn', 'Trắng ngà', 'Dòng sản phẩm chậu rửa Lavabo Toto tròn đặt bàn dòng La Vitacủa hãng thiết bị vệ sinh American Standard Với đặc tính kháng khẩn, dễ lau chùi Chất liệu của lavabo American Standard WP-F511 bằng sứ cao cấp, chống bám bẩn Kích thước: 600mm Không bao gồm phụ kiện(vòi, bộ xả,...)\r\n', 'Dòng sản phẩm chậu rửa Lavabo Toto tròn đặt bàn dòng La Vitacủa hãng thiết bị vệ sinh American Standard Với đặc tính kháng khẩn, dễ lau chùi Chất liệu của lavabo American Standard WP-F511 bằng sứ cao cấp, chống bám bẩn Kích thước: 600mm Không bao gồm phụ kiện(vòi, bộ xả,...)\r\n\r\n- ĐẶC ĐIỂM NỔI BẬT:\r\n\r\n+ Kiểu dáng độc đáo, hiện đại dạng đặt nổi trên bàn\r\n\r\n+ Thiết kế với lỗ thoát tràn dạng trang trí\r\n\r\n+ Bề mặt nhẵn, mịn dễ dàng vệ sinh', '2024-01-26', 1),
(42, 4, 'Chậu Lavabo Toto treo tường chân ngắn', 1540000, NULL, 'lht947cstoto740x740.webp', 608, 'THC Toto', NULL, 'Sứ cao cấp, chống bám bẩn', 'Trắng ngà', 'Dòng sản phẩm chậu rửa Lavabo Toto tròn đặt bàn dòng La Vitacủa hãng thiết bị vệ sinh American Standard Với đặc tính kháng khẩn, dễ lau chùi Chất liệu của lavabo American Standard WP-F511 bằng sứ cao cấp, chống bám bẩn Kích thước: 600mm Không bao gồm phụ kiện(vòi, bộ xả,...)\r\n', 'Dòng sản phẩm chậu rửa Lavabo Toto tròn đặt bàn dòng La Vitacủa hãng thiết bị vệ sinh American Standard Với đặc tính kháng khẩn, dễ lau chùi Chất liệu của lavabo American Standard WP-F511 bằng sứ cao cấp, chống bám bẩn Kích thước: 600mm Không bao gồm phụ kiện(vòi, bộ xả,...)\r\n\r\n- ĐẶC ĐIỂM NỔI BẬT:\r\n\r\n+ Kiểu dáng độc đáo, hiện đại dạng đặt nổi trên bàn\r\n\r\n+ Thiết kế với lỗ thoát tràn dạng trang trí\r\n\r\n+ Bề mặt nhẵn, mịn dễ dàng vệ sinh', '2024-01-26', 1);

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
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`Id`, `HoVaTen`, `SDT`, `DiaChi`, `Email`, `MatKhau`, `Quyen`) VALUES
(24, 'Trương Huỳnh Can', '0987654321', '53, Số 1', 'canthps36499@fpt.edu.vn', '8c50668107ab6b0531bac5f135903ae9', 0),
(25, 'Trương Huỳnh Can', '0987654321', '53, Số 1', 'truonghuynhcan@fpt.edu.vn', '4297f44b13955235245b2497399d7a93', 0),
(26, 'Trương Huỳnh Can', '3213213211', '53, Số 1', 'can@fpt.edu.vn', '4297f44b13955235245b2497399d7a93', 1);

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
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
