-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 07:47 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` varchar(32) NOT NULL,
  `donhang_id` varchar(32) NOT NULL,
  `hanghoa_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` decimal(10,0) NOT NULL,
  `giamtru` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `donhang_id`, `hanghoa_id`, `soluong`, `dongia`, `giamtru`) VALUES
('', '', 1, 12, '0', '0'),
('11', '11', 2, 111, '0', '0'),
('222222222222222222', '112222', 1, 2147483647, '0', '0'),
('444', '7', 2, 44, '0', '0'),
('55', '5', 1, 5, '0', '0'),
('6', '6', 1, 66, '0', '0'),
('Chitiet01', 'DH01', 1, 10, '10', '1'),
('Chitiet02', 'DH02', 2, 20, '20', '2');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` varchar(32) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `khuyenmai` int(11) NOT NULL,
  `ngayban` datetime NOT NULL,
  `ngaygiaohang` datetime NOT NULL,
  `ghichu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `khachhang_id`, `trangthai`, `khuyenmai`, `ngayban`, `ngaygiaohang`, `ghichu`) VALUES
('', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
('11', 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
('112222', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
('12', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'qqq'),
('5', 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
('6', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
('7', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
('DH01', 1, 1, 1, '2023-01-08 14:49:54', '2023-01-08 14:49:54', 'Ghichu1'),
('DH02', 2, 0, 2, '2023-01-08 14:49:54', '2023-01-08 14:49:54', 'ghichu2');

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `id` int(11) NOT NULL,
  `ten` varchar(25) NOT NULL,
  `loaihang_id` int(11) NOT NULL,
  `quycach` varchar(255) NOT NULL,
  `gianiemyet` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`id`, `ten`, `loaihang_id`, `quycach`, `gianiemyet`) VALUES
(1, 'iphone 14 Pro max', 1, 'giámdsbfj', '10'),
(2, 'Macbook Pro 1GB', 2, 'sdchgsd jcx', '20');

-- --------------------------------------------------------

--
-- Stand-in structure for view `hienthi`
-- (See below for the actual view)
--
CREATE TABLE `hienthi` (
`id` varchar(32)
,`khachhang_id` int(11)
,`hovaten` varchar(255)
,`ten` varchar(25)
,`soluong` int(11)
,`ghichu` text
);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `hovaten` varchar(255) NOT NULL,
  `dienthoai` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `hovaten`, `dienthoai`, `email`, `diachi`) VALUES
(1, 'Nguyễn Văn Minh', '0111111111', 'nguyenvanminh@gmail.com', 'DHHH1'),
(2, 'Nguyễn Văn Ninh', '0222222222', 'nguyenvanninh@gmail.com', 'DHHH2');

-- --------------------------------------------------------

--
-- Table structure for table `loaihang`
--

CREATE TABLE `loaihang` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaihang`
--

INSERT INTO `loaihang` (`id`, `ten`, `mota`) VALUES
(1, 'minh01', 'mota01'),
(2, 'ninh02', 'mota02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `tendaydu` varchar(255) NOT NULL,
  `quyenhan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `matkhau`, `tendaydu`, `quyenhan`) VALUES
(1, 'minh', '1', 'nguyen van minh', 1),
(2, 'ninh', '2', 'nguyen van ninh', 0);

-- --------------------------------------------------------

--
-- Structure for view `hienthi`
--
DROP TABLE IF EXISTS `hienthi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hienthi`  AS SELECT `donhang`.`id` AS `id`, `donhang`.`khachhang_id` AS `khachhang_id`, `khachhang`.`hovaten` AS `hovaten`, `hanghoa`.`ten` AS `ten`, `chitietdonhang`.`soluong` AS `soluong`, `donhang`.`ghichu` AS `ghichu` FROM (((`khachhang` join `donhang`) join `chitietdonhang`) join `hanghoa`) WHERE `khachhang`.`id` = `donhang`.`khachhang_id` AND `donhang`.`id` = `chitietdonhang`.`donhang_id` AND `hanghoa`.`id` = `chitietdonhang`.`hanghoa_id``hanghoa_id`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_id` (`donhang_id`),
  ADD KEY `hanghoa_id` (`hanghoa_id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `khachhang_id` (`khachhang_id`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaihang_id` (`loaihang_id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaihang`
--
ALTER TABLE `loaihang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loaihang`
--
ALTER TABLE `loaihang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`hanghoa_id`) REFERENCES `hanghoa` (`id`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`);

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `hanghoa_ibfk_1` FOREIGN KEY (`loaihang_id`) REFERENCES `loaihang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
