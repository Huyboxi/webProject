-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 26, 2017 lúc 04:04 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlsach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PASSWORD` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `QUYENHAN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ID`, `USERNAME`, `PASSWORD`, `QUYENHAN`) VALUES
(1, 'huyboxi', '5ff974c11e7c1e83328f735641703197', 1),
(44, 'huyboxi1', 'huy123', 2),
(45, 'huyg', 'anhhuy12', 3),
(50, 'hoangboxi', '1', 3),
(51, 'hoangboxi1', 'a', 1),
(52, 'hoangboxi12', '1', 2),
(54, 'huydz', '8b35a33c3dd27adff0b0b172f5842445', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `IDGIAODICH` bigint(20) NOT NULL,
  `IDDONHANG` int(255) NOT NULL,
  `SACHID` int(11) NOT NULL,
  `SOLUONG` int(11) NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `STATUS` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodich`
--

CREATE TABLE `giaodich` (
  `IDGIAODICH` bigint(20) NOT NULL,
  `STATUS` tinyint(4) NOT NULL DEFAULT '0',
  `USERID` int(11) NOT NULL DEFAULT '0',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `USEREMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `USERPHONE` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `AMOUNT` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `PAYMENT` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENT_INFO` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MESSAGE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CREATED` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `SACHID` int(11) NOT NULL,
  `TENSACH` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `LOAISACH` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `GIASACH` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `TACGIA` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL DEFAULT '',
  `NXB` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL DEFAULT '',
  `MOTA` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `GIAMGIA` int(11) NOT NULL,
  `IMAGELINK` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `CREATED` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`SACHID`, `TENSACH`, `LOAISACH`, `GIASACH`, `TACGIA`, `NXB`, `MOTA`, `GIAMGIA`, `IMAGELINK`, `CREATED`) VALUES
(1, 'eee', 'g', '555555.0000', 'huy', 'hn', 'dsfsffsfsfsf', 5, 'ttt/ll', '2017-04-06'),
(3, 'become genous', 'phieu luu', '10000.0000', 'huy', 'hanoi', 'ssffds', 5, 'image/photo-list', '2017-04-05'),
(4, 'become genous', 'phieu luu', '10000.0000', 'huy', 'hanoi', 'ssffds', 5, 'image/photo-list', '2017-04-05'),
(38, '', '', '0.0000', '', '', '', 5, '', '0000-00-00'),
(46, 'Toan roi rac', 'toan hoc', '110000.0000', 'NGuyen duc nghia', 'Bach khoa', 'sach danh cho khoi ki thuaat', 20, 'image/photo-list', '2017-04-14'),
(47, 'Nha co nhieu mang nhen', 'truyen ngan', '100021.0000', 'Oda', 'KimDong', 'sach hay', 5, 'image/photo1', '2017-04-05'),
(48, 'Nha co nhieu mang nhen', 'truyen ngan', '100021.0000', 'Oda', 'KimDong', 'sach hay', 5, 'image/photo1', '2017-04-05'),
(49, 'Nha co nhieu mang nhen', 'truyen ngan', '100021.0000', 'Oda', 'KimDong', 'sach hay', 5, 'image/photo1', '2017-04-05'),
(50, 'Nha co nhieu mang nhen2', 'truyen ngan', '100021.0000', 'Oda', 'KimDong', 'sdadsasdadasd', 10, 'image/photo2', '2017-04-08'),
(51, 'Nha co nhieu mang nhen2', 'truyen ngan', '100021.0000', 'Oda', 'KimDong', 'sdadsasdadasd', 10, 'image/photo2', '2017-04-08'),
(52, 'sad', 'asdad', '0.0000', 'asd', 'asd', 'sada', 10, 'asd', '2017-04-14'),
(53, 'sad', 'asdad', '0.0000', 'asd', 'asd', 'sada', 10, 'asd', '2017-04-14'),
(56, 'vÃ²ng xoÃ¡y cuá»™c Ä‘á»i', 'tá»± sá»±', '8888888.0000', 'Äá»—', 'kim Ä‘á»“ng', 'sÃ¡ch hay láº¯m', 5, 'image/tuyen-tap-nhung-hinh-anh-girl-xinh-dang-yeu-nhat-viet-nam-9.jpg', '2017-04-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `IDTV` int(11) NOT NULL,
  `HOTEN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PASS` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DIACHI` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE` varchar(15) NOT NULL,
  `CREATED` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`IDTV`, `HOTEN`, `PASS`, `DIACHI`, `EMAIL`, `PHONE`, `CREATED`) VALUES
(3, 'Vu Minh Tung', 'anhtung12', 'hanoi', 'tungvu@gmail.com', '07707607', '2017-04-19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`IDDONHANG`),
  ADD KEY `IDGIAODICH` (`IDGIAODICH`),
  ADD KEY `SACHID` (`SACHID`);

--
-- Chỉ mục cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`IDGIAODICH`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`SACHID`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`IDTV`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `IDDONHANG` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `IDGIAODICH` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `SACHID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `IDTV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`SACHID`) REFERENCES `sach` (`SACHID`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`IDGIAODICH`) REFERENCES `giaodich` (`IDGIAODICH`),
  ADD CONSTRAINT `donhang_ibfk_3` FOREIGN KEY (`SACHID`) REFERENCES `sach` (`SACHID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
