-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: sql312.byetcluster.com
-- Thời gian đã tạo: Th6 03, 2023 lúc 04:49 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `b31_34342753_db_ecommerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carid` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `username`, `carid`, `comment`, `created_at`) VALUES
(142, '1', 3, 'hay', '2023-05-26 16:51:51'),
(144, '2', 3, 'good', '2023-05-26 16:52:24'),
(145, 'nhom', 3, 'sdsas', '2023-05-26 16:52:48'),
(146, 'nhom', 2, 'dsAD', '2023-05-26 16:53:09'),
(147, 'nhom', 1, 'dsaSAD', '2023-05-26 16:53:20'),
(149, 'tung', 1, 'SDssad', '2023-05-26 16:53:53'),
(150, 'tung', 3, 'saSADs', '2023-05-26 16:54:02'),
(151, '1', 1, 'sdfadsf', '2023-05-28 02:35:32'),
(152, '1', 1, 'adsfadsfa', '2023-05-28 02:35:35'),
(153, '1', 1, 'adfadsfaafdfadfa', '2023-05-28 02:35:40'),
(154, '1', 1, 'df', '2023-05-28 02:35:43'),
(157, '1', 1, 'fadsfdsfasdf', '2023-05-28 02:51:47'),
(158, '1', 1, 'fadsfdsfasdf', '2023-05-28 02:54:29'),
(159, '1', 1, 'a', '2023-05-28 02:55:59'),
(161, '1', 1, 'SFASDF', '2023-05-28 03:02:53'),
(162, '1', 1, 'SFASDF', '2023-05-28 03:04:41'),
(163, '1', 1, 'SFASDF', '2023-05-28 03:07:44'),
(165, '1', 2, 'adfadf', '2023-05-28 03:11:41'),
(166, '1', 2, 'dfadf', '2023-05-28 03:11:44'),
(167, '1', 2, 'dfadf', '2023-05-28 03:13:27'),
(169, '1', 2, 'adsdfasd', '2023-05-28 03:15:08'),
(170, '1', 1, 'bui', '2023-05-28 06:10:00'),
(172, 'tung', 1, 'hello', '2023-05-28 10:46:43'),
(173, 'tung', 5, 'sfgsdgsfs', '2023-05-28 10:55:45'),
(174, 'tung', 5, 'sfgsfgsf', '2023-05-28 10:55:48'),
(175, 'tung', 5, 'ggg', '2023-05-28 10:55:53'),
(176, 'tung', 5, 'g', '2023-05-28 10:55:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_car`
--

CREATE TABLE `tbl_car` (
  `id` int(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `image1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `numberofseats` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `style` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fuel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `origin` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `gear` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_car`
--

INSERT INTO `tbl_car` (`id`, `name`, `title`, `price`, `color`, `image`, `image1`, `image2`, `description`, `numberofseats`, `style`, `fuel`, `origin`, `gear`) VALUES
(1, 'CAMRY 2.5HV1', 'WORTHY OF A  BUSINESSMAN', '500,000 VND', 'Black and ', 'image/camry.jpg', 'image/camry1.jpg', 'image/camry2.jpg', 'Product specifications:\r\n- Name: Toyota Camry 2.5HV 2022\r\n- Segment: D class sedan\r\n- Number of seats: 5\r\n- Origin: Thailand\r\n- Overall size (DxRxC) (mm): 4.886 x 1.840 x 1.445\r\n- Fuel tank capacity (L): 50\r\n- Fuel : electric hybrid gasoline\r\n- Gasoline engine: 2.5L (175 hp/ 221 Nm)\r\n- Electric motor: 86 hp/202 Nm\r\n- Maximum capacity (hp/minute): 208\r\n- Automatic number: CTV\r\n- Brakes front/rear: Radiator disc/Disc\r\n \r\nThere are not too many changes in the outfit of the new upgraded Toyota Camry 2022 in general and the Camry 2.5 HV 2022 in particular. The car still retains the typical design features of the current version. It is the youthful, dynamic and modern, especially the luxurious, high-class and powerful business \"essence\" of Camry.', '5', 'Sedan', 'gasoline', 'Thailand', 'CTV'),
(2, 'WIGO 4AT', 'SMALL SURFING THE CITY', '400,000 VND', 'Black and ', 'image/wigo.jpg', 'image/wigo1.jpg', 'image/wigo2.jpg', 'Product specifications:\r\n- Name: Toyota Wigo 4AT\r\n- Segment: A class sedan\r\n- Number of seats: 5\r\n- Origin: Thailand\r\n- Overall size (DxRxC) (mm): 3660 x 1600 x 1520\r\n- Fuel tank capacity (L): 33\r\n- Fuel: gasoline\r\n- Gasoline engine: 108/4200 (Nm/rpm) \r\n- Maximum capacity: 86/6000 (hp/rpm)\r\n- Automatic number: 4 levels\r\n- Brakes front/rear: Radiator disc/Disc\r\n \r\nSimilar to the Wigo 1.2MT brother, the Toyota Wigo 4AT is only marginally better with some minor upgrades in terms of interior equipment, with no big difference in performance. However, with those features, the car is a very worthy choice for transport businesses or households with a not-so-well-off economy who need a model with a compact body, a low price. too high with long-term durability.', '5', 'Hatchback', 'Gasoline', 'Thailand', '4 levels'),
(3, 'YARIS 1.5G CTV', 'GUYS DOWN TO THE STREET', '400,000 VND', 'Black and ', 'image/yaris.png', 'image/yaris1.jpg', 'image/yaris2.jpg', 'Product specifications:\r\n- Name: YARIS 1.5G CTV\r\n- Segment: A\r\n- Number of seats: 5\r\n- Origin: Thailand\r\n- Overall size (DxRxC) (mm): 4145 x 1730 x 1500\r\n- Fuel tank capacity (L): 42\r\n- Fuel: gasoline\r\n- Gasoline engine: 2.5L (175 hp/ 221 Nm)\r\n- Electric motor: 80 hp/202 Nm\r\n- Maximum capacity (hp/minute): 200\r\n- Automatic number: CTV\r\n- Brakes front/rear: Radiator disc/Disc\r\n \r\nWith many new improvements, the interior, although not luxurious, is more refined, equipped with many modern safety features. Toyota Yaris 2022 is gradually conquering Vietnamese customers, especially women, customers who love compactness and youthful design.\r\n\r\nThe car meets basic needs such as commuting to work, sports, travel as well as engine durability, stable operation, no breakdowns, fuel economy plus Honda brand value in Vietnam to help. The car becomes a very worthy choice in the price range.', '5', 'Hatchback', 'Fuel', 'Thailand', 'CTV'),
(4, 'RAIZE', 'STUNNING THE GAME', '450,000 VND', 'Black and ', 'image/raize.jpg', 'image/raize1.jpg', 'image/raize2.png', 'Product specifications:\r\n- Name: Toyota RAIZE\r\n- Segment: A\r\n- Number of seats: 5\r\n- Origin: Indonesia\r\n- Overall size (DxRxC) (mm): 4030 x 1710 x 1605\r\n- Fuel tank capacity (L): 36\r\n- Fuel: gasoline\r\n- Gasoline engine: 140/2400 - 4000\r\n- CMaximum capacity (hp/minute):98/6000\r\n- Automatic number: vô cấp\r\n- Brakes front/rear: Radiator disc/Disc\r\n \r\nToyota Raize 2022 was officially launched in Vietnam at the event on the evening of November 4. Toyota\'s A-class SUV model attracts special attention from car lovers with its youthful and dynamic design, targeting the extremely hot first-time car buyers segment.\r\n\r\nRaize\'s level of \"sold out\" is indisputable when right from the stage of receiving a deposit to buy a car, there is a phenomenon of \"beer with peanuts\" - customers who want to receive the car soon will have to spend an additional 20-30 million VND for the dealer. in the form of purchasing with accessories, insurance, ...', '5', 'SUV', 'Fuel', 'Indonesia', 'CTV'),
(5, 'HILUX ADVENTURE', 'CONQUER THE PEAK', '500,000 VND', 'Black and ', 'image/hilux.jpg', 'image/hilux1.jpg', 'image/hilux2.jpg', 'Product specifications:\r\n- Name: Toyota HILUX 2.8L 4X4 AT ADVENTURE\r\n- Segment: D\r\n- Number of seats: 5\r\n- Origin: Thailand\r\n- Overall size (DxRxC) (mm): 5325 x 1900 x 1815\r\n- Fuel tank capacity (L): 80\r\n- Fuel: Oil\r\n- Oil engine: 500/1600\r\n- Maximum capacity (hp/minute): (150) 201/3400\r\n- Automatic number: 6 levels\r\n- Brakes front/rear: Radiator disc/Disc\r\n \r\nIn general, the Hilux 2022 versions provided by Toyota have fully met the needs of Vietnamese customers. If buying a car for business use, Hilux 2.4 4x2 AT with the lowest price will be the ideal choice.\r\n\r\nIf you need a pickup model capable of \"crossing the forest, wading streams\", the Hilux 2.4 4x4 MT with the ability to set the electronic bridge will be very suitable. As for those who need a fully equipped pickup that can be used both to work, transport goods, travel and even cross the terrain, the Hilux 2.8G 4x4 AT MLM will be a good candidate.', '5', 'Hilux', 'Oil', 'Thailand', '6 levels'),
(6, 'LAND CRUISER 300', 'POWER OF COMMUNITY', '600,000 VND', 'Black and ', 'image/landcruiser.jpg', 'image/landcruiser1.jpg', 'image/landcruiser2.jpg', 'Product specifications:\r\n- Name: Toyota LAND CRUISER 300\r\n- Segment: D\r\n- Number of seats: 7\r\n- Origin: Thailand\r\n- Overall size (DxRxC) (mm): 	4965 x 1980 x 1945\r\n- Fuel tank capacity (L): 93\r\n- Fuel: gasoline\r\n- Gasoline engine: 650 / 2000 - 3600\r\n- Maximum capacity (hp/minute): 227(304) / 5500\r\n- Automatic number: 10 levels\r\n- Brakes front/rear: Radiator disc/Disc\r\n \r\nToyota Land Cruiser 300 2022 is the latest generation that has been comprehensively upgraded in terms of engines, transmissions, advanced safety features, interior and exterior design and high-class facilities and equipment. This is also an important step for the company when the trend of large SUVs is gradually reducing the engine capacity and focusing on technology and safety values ​​for the vehicle.\r\n\r\nWith such a series of major changes, the price of the Land Cruiser 300 is only 30 million more than the previous version, the main reason for this change is the 3.5L engine capacity subject to special consumption tax. The difference is much smaller than the previous 4.6 capacity.', '7', 'SUV', 'Gasoline', 'Thailand', '10 levels'),
(7, 'VIOS 2022', 'NATIONAL DRIVERS', '400,000 VND', 'Black and ', 'image/vios.jpg', 'image/vios1.jpg', 'image/vios2.jpg', 'Product specifications:\r\n- Name: Toyota VIOS 2022\r\n- Segment: B\r\n- Number of seats: 5\r\n- Origin: Thailand\r\n- Overall size (DxRxC) (mm): 	4425 x 1730 x 1475\r\n- Fuel tank capacity (L): 42\r\n- Fuel : gasoline\r\n- Gasoline engine: 650 / 2000 - 3600\r\n- Maximum capacity (hp/minute): 79 (107) / 6000\r\n- Automatic number: 10 levels\r\n- Brakes front/rear: Radiator disc/Disc\r\n\r\nIn general, with many exterior improvements as well as improved engines, brand elements in terms of engine durability, less damage, and good old car prices, Toyota Vios has won the hearts of many customers for many years. .If you really care a lot about a car that needs a lot of \"solid, durable\" factors and many safety features, then Vios is a pretty reasonable choice.', '5', 'Sedan', 'Gasoline', 'Thailand', '10 levels CTV');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangkylaithu`
--

CREATE TABLE `tbl_dangkylaithu` (
  `hovaten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_car` int(11) NOT NULL,
  `sodienthoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydukien` date NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangkylaithu`
--

INSERT INTO `tbl_dangkylaithu` (`hovaten`, `id_car`, `sodienthoai`, `ngaydukien`, `username`) VALUES
('Nguyễn Văn A', 1, '0347587031', '2022-11-13', '1'),
('Nguyễn văn E', 3, '65834275', '2023-06-03', '1'),
('Phạm Viết Tùng', 1, '0986341053', '0001-01-01', '2'),
('Trần Quốc Đạt', 3, '0975749264', '2023-06-07', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`) VALUES
('1', '11'),
('2', '11'),
('3', '11'),
('4', '44'),
('a', '1'),
('abc', '1'),
('admin', 'admin'),
('laixe', '1'),
('nhom', '1'),
('tung', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_car`
--
ALTER TABLE `tbl_car`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_dangkylaithu`
--
ALTER TABLE `tbl_dangkylaithu`
  ADD PRIMARY KEY (`hovaten`,`id_car`) USING BTREE,
  ADD KEY `FR_DKLT_CAR` (`id_car`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT cho bảng `tbl_car`
--
ALTER TABLE `tbl_car`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_dangkylaithu`
--
ALTER TABLE `tbl_dangkylaithu`
  ADD CONSTRAINT `FR_DKLT_CAR` FOREIGN KEY (`id_car`) REFERENCES `tbl_car` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
