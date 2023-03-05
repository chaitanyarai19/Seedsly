-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2021 at 05:11 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '9580ab5d9db022c73d6678b07c86c9db', '2017-01-24 16:21:18', '31-07-2020 10:10:32 PM'),
(2, 'seedsly', '827ccb0eea8a706c4c34a16891f84e7b', '2020-08-31 04:46:52', '31-08-2020 10:18:08 AM'),
(3, 'username', '827ccb0eea8a706c4c34a16891f84e7b', '2021-01-26 16:01:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(12, 'Rabi Crops', 'Sown: October-December\r\nHarvested: April-June', '2021-01-26 15:50:37', '28-01-2021 06:03:06 PM'),
(16, 'Kharif Crops', 'Sown: June-July\r\nHarvested: September-October', '2021-01-28 12:29:33', '28-01-2021 06:03:59 PM'),
(17, 'Zaid Crops', 'Sown and harvested: March-July\r\n(between Rabi and Kharif)', '2021-01-28 12:29:44', '28-01-2021 06:04:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `coupen_code`
--

CREATE TABLE `coupen_code` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `ammount` varchar(60) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupen_code`
--

INSERT INTO `coupen_code` (`id`, `name`, `ammount`, `status`) VALUES
(1, 'APNA5155', '20', 1),
(2, 'APNA7177', '30', 0),
(3, 'APNA1010', '50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `sno` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`sno`, `name`, `phone`, `email`, `address`, `pin`, `area`, `city`, `state`, `image`) VALUES
(1, 'Chaitanya Rai', '+918435407793', 'chaitanyarai19@gmail.com', 'bajrang kuti', '482002', 'Jabalpur', 'Jabalpur', 'Madhya Pradesh', 'download.jpg'),
(15, 'Chaitanya Rai', '+918435407793', 'chaitanyarai19@gmail.com', 'bajrang kuti', '482002', 'Jabalpur', 'Jabalpur', 'Madhya Pradesh', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('chaitanyarai19@gmail.com', '1234'),
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `order_code` varchar(100) NOT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `order_code`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(83, 14, '', '723', 3, '2020-09-01 11:31:24', 'cod', 'Delivered'),
(84, 14, '', '767', 1, '2020-09-01 11:31:24', 'cod', 'Delivered'),
(85, 14, '', '858', 1, '2020-09-01 11:31:24', 'cod', 'Delivered'),
(86, 14, '', '860', 1, '2020-09-01 11:31:24', 'cod', 'Delivered'),
(87, 14, '', '864', 4, '2020-09-01 11:31:24', 'cod', 'Delivered'),
(88, 14, '', '872', 1, '2020-09-01 11:31:24', 'cod', 'Delivered'),
(89, 14, '', '883', 1, '2020-09-01 11:31:24', 'cod', 'Delivered'),
(90, 17, '', '188', 1, '2020-09-01 13:02:34', 'cod', NULL),
(91, 17, '', '189', 1, '2020-09-01 13:02:34', 'cod', NULL),
(92, 17, '', '382', 1, '2020-09-01 13:02:34', 'cod', NULL),
(102, 21, 'ORD0003', '94', 1, '2020-09-02 10:49:06', 'cod', 'Delivered'),
(103, 21, 'ORD0003', '388', 1, '2020-09-02 10:49:06', 'cod', 'Delivered'),
(104, 21, 'ORD0003', '656', 1, '2020-09-02 10:49:06', 'cod', 'Delivered'),
(105, 21, 'ORD0003', '660', 1, '2020-09-02 10:49:07', 'cod', 'Delivered'),
(106, 21, 'ORD0003', '769', 1, '2020-09-02 10:49:07', 'cod', 'Delivered'),
(109, 10, 'ORD0006', '102', 3, '2020-09-03 08:21:48', 'cod', NULL),
(111, 10, 'ORD0008', '113', 6, '2020-09-04 03:43:47', 'cod', NULL),
(112, 10, 'ORD0009', '126', 9, '2020-09-04 03:51:11', NULL, NULL),
(123, 20, 'ORD0018', '198', 4, '2020-09-05 17:13:43', 'cod', NULL),
(124, 20, 'ORD0018', '653', 4, '2020-09-05 17:13:43', 'cod', NULL),
(125, 20, '', '806', 2, '2020-09-06 09:36:02', 'cod', NULL),
(132, 4, '', '861', 1, '2020-09-06 09:55:08', 'online', NULL),
(133, 2, '', '861', 1, '2020-09-06 09:57:00', 'cod', NULL),
(134, 25, '', '584', 1, '2020-09-06 11:33:27', 'cod', 'in Process'),
(135, 25, '', '719', 1, '2020-09-06 11:33:27', 'cod', 'in Process'),
(136, 25, '', '733', 2, '2020-09-06 11:33:27', 'cod', 'in Process'),
(137, 25, '', '785', 1, '2020-09-06 11:33:27', 'cod', 'in Process'),
(138, 25, '', '818', 1, '2020-09-06 11:33:28', 'cod', NULL),
(139, 25, '', '831', 3, '2020-09-06 11:33:28', 'cod', NULL),
(140, 25, '', '851', 1, '2020-09-06 11:33:28', 'cod', 'in Process'),
(141, 25, '', '933', 1, '2020-09-06 11:33:28', 'cod', 'in Process'),
(142, 25, '', '934', 1, '2020-09-06 11:33:28', 'cod', 'in Process'),
(143, 25, '', '938', 1, '2020-09-06 11:33:28', 'cod', 'in Process'),
(144, 25, '', '943', 1, '2020-09-06 11:33:29', 'cod', 'in Process'),
(145, 25, '', '987', 1, '2020-09-06 11:33:29', 'cod', 'in Process'),
(146, 1, '', '1088', 1, '2021-02-01 18:12:41', NULL, NULL),
(147, 1, '', '1088', 1, '2021-02-01 18:13:18', NULL, NULL),
(148, 28, '', '1091', 8, '2021-02-01 18:14:35', NULL, NULL),
(149, 26, '', '1098', 3, '2021-02-03 13:12:45', 'cod', NULL),
(150, 27, '', '1098', 3, '2021-02-03 13:21:47', 'cod', NULL),
(151, 26, '', '1092', 1, '2021-02-03 13:26:49', 'cod', NULL),
(152, 27, '', '1098', 3, '2021-02-03 16:00:50', 'cod', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 8, 'Delivered', '', '2020-08-14 06:23:30'),
(6, 30, 'in Process', 'czvlmbzx;lbmx\":BM', '2020-08-30 08:50:15'),
(7, 20, 'Delivered', 'nlkln', '2020-09-01 03:20:44'),
(8, 66, 'in Process', '', '2020-09-01 06:40:51'),
(9, 67, 'Delivered', '', '2020-09-01 06:41:20'),
(10, 83, 'Delivered', '', '2020-09-01 15:40:56'),
(11, 84, 'Delivered', '', '2020-09-01 15:41:57'),
(12, 85, 'Delivered', '', '2020-09-01 15:42:14'),
(13, 86, 'Delivered', '', '2020-09-01 15:42:36'),
(14, 87, 'Delivered', '', '2020-09-01 15:42:49'),
(15, 88, 'Delivered', '', '2020-09-01 15:43:01'),
(16, 89, 'Delivered', '', '2020-09-01 15:43:13'),
(17, 102, 'Delivered', '', '2020-09-02 12:08:36'),
(18, 103, 'Delivered', '', '2020-09-02 12:09:13'),
(19, 104, 'Delivered', '', '2020-09-02 12:09:23'),
(20, 105, 'Delivered', '', '2020-09-02 12:09:41'),
(21, 106, 'Delivered', '', '2020-09-02 12:09:52'),
(22, 0, 'Delivered', '', '2020-09-03 05:50:45'),
(23, 134, 'in Process', '', '2020-09-06 12:04:43'),
(24, 135, 'in Process', '', '2020-09-06 12:04:56'),
(25, 136, 'in Process', '', '2020-09-06 12:05:08'),
(26, 137, 'in Process', '', '2020-09-06 12:05:22'),
(27, 140, 'in Process', '', '2020-09-06 12:05:34'),
(28, 140, 'in Process', '', '2020-09-06 12:05:46'),
(29, 141, 'in Process', '', '2020-09-06 12:05:56'),
(30, 142, 'in Process', '', '2020-09-06 12:06:07'),
(31, 143, 'in Process', '', '2020-09-06 12:06:16'),
(32, 144, 'in Process', '', '2020-09-06 12:06:26'),
(33, 145, 'in Process', '', '2020-09-06 12:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_mst`
--

CREATE TABLE `order_mst` (
  `order_id` int(11) NOT NULL,
  `order_code` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_mst`
--

INSERT INTO `order_mst` (`order_id`, `order_code`) VALUES
(1, 'ORD0001'),
(2, 'ORD0002'),
(3, 'ORD0003'),
(4, 'ORD0004'),
(5, 'ORD0005'),
(6, 'ORD0006'),
(7, 'ORD0007'),
(8, 'ORD0008'),
(9, 'ORD0009'),
(10, 'ORD0010'),
(11, 'ORD0011'),
(12, 'ORD0012'),
(13, 'ORD0013'),
(14, 'ORD0014'),
(15, 'ORD0015'),
(16, 'ORD0016'),
(17, 'ORD0017'),
(18, 'ORD0018'),
(19, 'ORD0019'),
(20, 'ORD0020'),
(21, 'ORD0021'),
(22, 'ORD0022'),
(23, 'ORD0023'),
(24, 'ORD0024'),
(25, 'ORD0025'),
(26, 'ORD0026'),
(27, 'ORD0027'),
(28, 'ORD0028'),
(29, 'ORD0029'),
(30, 'ORD0030'),
(31, 'ORD0031'),
(32, 'ORD0032'),
(33, 'ORD0033'),
(34, 'ORD0034'),
(35, 'ORD0035'),
(36, 'ORD0036');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 21, 5, 4, 5, 'Chaitanya Rai', 'its realy nice', '5', '2020-07-30 10:50:11'),
(6, 21, 5, 4, 5, 'Chaitanya Rai', 'its realy nice', '5', '2020-07-30 11:01:30'),
(7, 54, 5, 4, 4, 'chaitanyarai19@gmail.com', 'its realy nice', 'good product', '2020-07-31 10:26:30'),
(8, 54, 5, 4, 3, 'chaitanya', 'its realy nice', 'sfnsfnhs', '2020-07-31 10:26:51'),
(9, 54, 5, 4, 3, 'chaitanya', 'its realy nice', 'sfnsfnhs', '2020-07-31 10:28:01'),
(10, 54, 5, 4, 3, 'chaitanya', 'its realy nice', 'sfnsfnhs', '2020-07-31 10:28:18'),
(11, 54, 5, 4, 3, 'chaitanya', 'its realy nice', 'sfnsfnhs', '2020-07-31 10:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productquantity` varchar(100) NOT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productquantity`, `productAvailability`, `postingDate`, `updationDate`, `status`) VALUES
(1088, 12, 50, 'Barley Seeds', '', 400, 0, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Barley is a widely adaptable crop. It is currently popular in temperate areas where it is grown as a summer crop and tropical areas where it is sown as a winter crop.&nbsp;Its germination&nbsp;time is one to three days. Barley grows under cool conditions, but is not particularly&nbsp;winter hardy.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></p>', 'barley.jpg', '', '', 0, '1 Kg', 'In Stock', '2021-01-28 12:47:36', NULL, ''),
(1089, 12, 51, 'Chick pea Seeds', '', 140, 0, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">The plant grows to 20â€“50&nbsp;cm (8â€“20&nbsp;in) high and has small, feathery leaves on either side of the stem. Chickpeas are a type of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Legume\" title=\"Legume\" style=\"color: rgb(6, 69, 173); background: none;\">pulse</a>, with one seedpod containing two or three peas. It has white flowers with blue, violet, or pink veins.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Several varieties of chickpea are cultivated throughout the world.&nbsp;<i>Desi chana</i>&nbsp;closely resembles both seeds found on archaeological sites and the wild plant ancestor of domesticated chickpeas,&nbsp;<i>Cicer reticulatum</i>, which only grows in southeast Turkey, where chickpeas are believed to have originated.</p>', 'Chickpea.jpg', '', '', 0, '1 Kg', 'In Stock', '2021-01-28 12:52:59', NULL, ''),
(1090, 12, 52, 'Coriander Seeds', '', 45, 0, '<span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">The dry fruits are coriander seeds. The word \"coriander\" in food preparation may refer solely to these seeds (as a spice), rather than to the plant. The seeds have a lemony citrus flavour when crushed, due to terpenes linalool</span><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;and&nbsp;pinene.</span><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;It is described as warm, nutty, spicy, and orange-flavoured.</span>', 'Coriander.jpg', '', '', 0, '1 Kg', 'In Stock', '2021-01-28 12:57:16', NULL, ''),
(1091, 12, 53, 'Mustard Seeds', '', 85, 0, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Mustard seeds generally take eight to ten days to germinate if placed under the proper conditions, which include a cold atmosphere and relatively moist soil. Mature mustard plants grow into shrubs.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Mustard grows well in temperate regions. Major producers of mustard seeds include India, Pakistan, Canada, Nepal, Hungary, Great Britain and the United States. Brown and black mustard seeds return higher yields than their yellow counterparts.</p>', 'Mustard.jpg', '', '', 0, '1 Kg', 'In Stock', '2021-01-28 12:59:56', NULL, ''),
(1092, 12, 54, 'Onion Seeds', '', 800, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Hybrid Organic Farm Seeds</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">SEED TYPE: F1 Hybrid ,Tested &amp; Superior Quality, Open Pollinated GMO-Free By Farm Seeds.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Exclusive &amp; Originally Product Range By Farm Seeds.Start Your Kitchen Garden &amp; Eat home grown fresh Veggies.</span></li></ul>', 'Onion.jpg', '', '', 0, '1 Kg', 'In Stock', '2021-01-28 13:03:46', NULL, ''),
(1093, 12, 55, 'Pea Seeds', '', 80, 0, '<div class=\"mod\" data-md=\"61\" lang=\"en-IN\" style=\"clear: none; padding-top: 16px; border-radius: 8px; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;\"><div class=\"LGOjhe\" data-attrid=\"wa:/description\" aria-level=\"3\" role=\"heading\" data-hveid=\"CBoQAA\" style=\"overflow: hidden; padding-bottom: 20px;\"><span class=\"ILfuVd rjOVwe\" style=\"font-size: 16px; line-height: 20px; padding-top: 22px; padding-bottom: 0px; margin-bottom: 1px;\"><span class=\"hgKElc\" style=\"padding: 0px 8px 0px 0px;\">The&nbsp;<b>pea</b>&nbsp;is most commonly the small spherical&nbsp;<b>seed</b>&nbsp;or the&nbsp;<b>seed</b>-pod of the pod fruit Pisum sativum. Each pod contains several&nbsp;<b>peas</b>, which can be green or yellow. Botanically,&nbsp;<b>pea</b>&nbsp;pods are fruit, since they contain&nbsp;<b>seeds</b>&nbsp;and develop from the ovary of a (<b>pea</b>) flower.</span></span></div><div><span class=\"ILfuVd rjOVwe\" style=\"font-size: 16px; line-height: 20px; padding-top: 22px; padding-bottom: 0px; margin-bottom: 1px;\"><span class=\"hgKElc\" style=\"padding: 0px 8px 0px 0px;\"><br></span></span></div></div><div class=\"mod\" data-attrid=\"ss:/webfacts:famili\" data-md=\"1001\" lang=\"en-IN\" data-hveid=\"CBkQAA\" data-ved=\"2ahUKEwiu9eHa2L7uAhVLbn0KHaM1DKwQkCkwDnoECBkQAA\" style=\"clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;\"><div class=\"Z1hOCe\"><div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiu9eHa2L7uAhVLbn0KHaM1DKwQyxMoADAOegQIGRAB\" style=\"margin-top: -8px; font-size: 16px; margin-bottom: 16px;\"></div></div></div>', 'pea.jpg', '', '', 0, '1 Kg', 'In Stock', '2021-01-28 13:11:15', NULL, ''),
(1094, 12, 56, 'Potato Seeds', '', 600, 0, '<span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Potatoes are generally grown from&nbsp;</span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">seed potatoes,<span class=\"anchor\" id=\"seed_potato\"></span></i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;tubers specifically grown to be free from disease and to provide consistent and healthy plants. To be disease free, the areas where seed potatoes are grown are selected with care. In the US, this restricts production of seed potatoes to only 15 states out of all 50 states where potatoes are grown.</span>', 'Potato.jpg', '', '', 0, '1 Kg', 'In Stock', '2021-01-28 13:25:10', NULL, ''),
(1095, 12, 57, 'Sunflower Seeds', '', 400, 0, '<p style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-top: 25px; font-size: 18px; line-height: 26px; color: rgb(35, 31, 32); font-family: &quot;Proxima Nova&quot;, system-ui, sans-serif;\">Sunflower seeds are popular in trail mix, multi-grain bread and nutrition bars, as well as for snacking straight from the bag. Theyâ€™re rich in healthy fats, beneficial plant compounds and several vitamins and minerals. These nutrients may play a role in reducing your risk of common health problems, including heart disease and type 2 diabetes.</p>', 'sunflower.jpg', '', '', 0, '1 Kg', 'In Stock', '2021-01-28 13:31:56', NULL, ''),
(1097, 12, 59, 'Wheat Seeds', '', 25, 0, '<span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Harvested wheat grain that enters trade is classified according to grain properties for the purposes of the commodity markets</span><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Wheat buyers use these to decide which wheat to buy, as each class has special uses, and producers use them to decide which classes of wheat will be most profitable to cultivate.</span>', 'wheat.jpg', '', '', 0, '1 Kg', 'In Stock', '2021-01-28 13:38:27', NULL, ''),
(1098, 16, 60, 'Arcon Varun Research rice Seeds', '', 310, 0, '<ul style=\"margin-bottom: 0px; margin-left: 28px; color: rgb(110, 110, 110); font-family: sans-serif; font-size: 17px; text-align: justify;\"><li>High source of protein, fiber, and antioxidants</li><li>Free from impurities</li><li>Rich source of nutrients such as manganese, potassium, magnesium, copper, and zinc</li></ul>', 'paddy-seeds-500x500.jpg', '', '', 0, '1 kg', 'In Stock', '2021-01-29 05:19:22', NULL, ''),
(1100, 16, 62, 'Natural White Sorghum Millet', '', 35, 0, '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Benefits</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;of&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Sorghum</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;(Jowar) includes is gluten-free, rich in fiber, great food for diabetics, source of protein, packed with essential minerals, promotes the health of bones, helps you lose weight, preserves the health of digestive system, great source of proteins for vegetarians and vegans.</span>', 'white-sorghum-500x500.jpg', '', '', 0, '1 kg', 'In Stock', '2021-01-29 05:34:49', NULL, ''),
(1101, 16, 61, 'NAVVEG SEEDS Hybrid Maize Seeds', '', 80, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; font-family: Arial, sans-serif; font-size: 14px; box-sizing: border-box; color: rgb(17, 17, 17);\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Quality Seeds Maize Baby Corn 50 seeds pack</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Indeterminate Organic Seeds variety</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">F-1 Hybrid Variety good quality Maize Baby Corn seeds</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Best for planting throughout the year</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Easy To Grow - Can Be Grown In Indian</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">&nbsp;Climate/Weather Conditions. Do Not Use&nbsp;</span>For Food, Feed, Or Oil Purposes, Seeds&nbsp;Are Only For Agriculture And Plantation Purpose</li></ul>', 'product-500x500.jpeg', '', '', 0, '1 kg', 'In Stock', '2021-01-29 05:37:23', NULL, ''),
(1103, 16, 63, 'GREEN WORLD Hybrid Bajra Seeds', '', 399, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">DISEASE RESISTANT HYBRID SEEDS FOR FARMING</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Pack: 1 KG</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">HIGH GERMINATION AND GOOD QUALITY SEEDS</span></li></ul>', 'Grain_millet,_early_grain_fill,_Tifton,_7-3-02.jpg', '', '', 0, '1kg', 'In Stock', '2021-01-29 05:44:04', NULL, ''),
(1106, 16, 65, 'Arya Farm Organic Finger Millet', '', 210, 0, '<span style=\"color: rgb(137, 137, 137); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 12px;\">Organic. Free from Chemicals and Pesticides.&nbsp;Contains Calcium, Iron, and Proteins. Contains a high level of Dietary Fiber and less unsaturated fat.&nbsp;Dosa, Idly, soup, upma, and malt can be prepared with Ragi Flour.&nbsp;Store in an air-tight stainless steel or glass container in a cool and dry p..</span>', '51xu42YQlZL.jpg', '', '', 0, '1 kg', 'In Stock', '2021-01-29 06:02:36', NULL, ''),
(1107, 16, 66, 'arhar seed', '', 100, 0, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Protein, Thiamin, Niacin, Vitamin B6, Pantothenic Acid, Iron, Magnesium, Phosphorus and Potassium</span>', 'arhar-seed-1545810598-4571795.jpeg', '', '', 0, '1 kg', 'In Stock', '2021-01-29 06:08:47', NULL, ''),
(1108, 16, 67, 'SriSatymev Â® Soya Bean Seeds', '', 254, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Soybeans offer a wealth of benefits, including their ability may improve metabolism, help in healthy weight gain, protect heart health, and reduce the effects of menopause.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Soy is an excellent source of dietary fiber and protein. An excellent source of protein for Vegetarians and Vegans.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Whole soy foods are an excellent source of fiber, b vitamins, calcium, and omega-3 fatty acids</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">USAGE: Be it a meal or snack, make it nutritious by adding Manna Soya Nuggets. Can be used as a meat replacement and in a variety of dishes to add more protein and body to the food. This product has a great natural Aroma in it.</span></li></ul>', '71sVq6L2HzL._SL1439_.jpg', '', '', 0, '1 kg', 'In Stock', '2021-01-29 06:14:43', NULL, ''),
(1109, 16, 68, 'Groundnut Oil Seeds', '', 67, 0, '<b style=\"color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">Groundnut</b><span style=\"color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp;is one of the best and most sought chief sources of vegetable oils extensively used for cooking purposes all over the world. It is delicious edible oil and a delicious nut too.&nbsp;</span><b style=\"color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">Groundnut seeds</b><span style=\"color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp;are a rich source of edible oil as well as protein. The oil content of the seed varies from 44% to 50% depending on the variety whereas the protein content would be about 25% to 28%</span>', 'groundnut-oil-s-500x500.jpg', '', '', 0, '1 kg', 'In Stock', '2021-01-29 06:18:23', NULL, ''),
(1110, 16, 69, 'Hybrid Cotton Seed', '', 600, 0, '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Cotton seeds</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;are the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">seeds</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;of the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">cotton</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;plant.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Cotton seeds</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;are ovoid, 3.5-10 mm long. They are densely covered with white or rusty, long and woolly hairs, called the lint, which is the main product used to make&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">cotton</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;textiles, and shorter hairs (linters)</span>', 'product-500x500 (1).jpeg', '', '', 0, '1 kg', 'In Stock', '2021-01-29 06:22:08', NULL, ''),
(1111, 16, 70, 'Indian Vinayak Green Mung Beans', '', 100, 0, '<span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\">These seeds are clean and handled according to the worldwide guidelines under the most extreme good conditions. Owing to their incomparable quality and long time frame of realistic usability, these seeds are very acknowledged and broadly utilized for planning tasty dishes. Our offered seeds are accessible in distinctive bundling choices at profoundly aggressive costs.</span>', 'green-mung-beans-500x500.jpg', '', '', 0, '1 kg', 'In Stock', '2021-01-29 06:28:15', NULL, ''),
(1112, 17, 71, 'True Elements Raw Watermelon Seeds', '', 173, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">STRONG BONES: The citronella present in these seeds can help in strengthening the muscle tissue and keeping your bones strong.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">ANTIOXIDANTS LOADED: Being a rich source of antioxidants, these seeds can keep you away from any stomach infection and boost your immunity.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">GLOWING SKIN: Since it is a rich source of iron and magnesium, it helps in maintaining healthy skin. Omega-3 present in these seeds might make your skin glow.</span></li></ul>', '81cYsYhrxDL._SY879_.jpg', '', '', 0, '100gm', 'In Stock', '2021-01-29 12:40:52', NULL, ''),
(1113, 17, 72, 'Muskmelon Seeds', '', 149, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Superior Quality Pack of 20 Seeds + Free Gift</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Easy to Grow - Can be grown in Indian climate/weather conditions. Do not use for food, feed, or oil purposes, Seeds are only for Gardening Purpose.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Best Suitable for Terrace Gardening, Grow bag Kitchen Gardening, Terrace Gardening &amp; Roof Top Balcony Gardening</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Complete Customer Support + Growing Instruction Sheets</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">A Quality Product from Creative Farmer</span></li></ul>', '41ExLW+PwYL.jpg', '', '', 0, '100gm', 'In Stock', '2021-01-29 12:43:52', NULL, ''),
(1114, 17, 73, 'Cucumber Seeds', '', 129, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Hybrid Seed 100% organic seed contain 40 to 50 seeds in one pkt</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Germination rate minimum -70%to 90% Seed purity -98% Physical purity-98%</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">easily grows</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Get vegetable in just 55 days time period</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Germination in protary system or direct pot system both fully detail is given in product description box</span></li></ul>', 'cucumber seeds.jpg', '', '', 0, '20gm', 'In Stock', '2021-01-29 12:47:06', NULL, ''),
(1115, 17, 74, 'Bitter Gourd Seeds', '', 610, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Mode of sowing: Sow the seeds 0.5 cm deep in a seedling tray / Container / Pots.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Germination time: 6 to 8 days from sowing</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Harvesting: 55 to 60 days from sowing</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Season of sowing: June - July, January- February</span></li></ul>', 'bittergourd seed.jpg', '', '', 0, '1 Kg', 'In Stock', '2021-02-01 08:20:30', NULL, ''),
(1116, 17, 78, 'Pumpkin Seeds', '', 800, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Store in a cool, dry place</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Hygienically packed</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Consistent quality</span></li></ul>', 'pumpkin seeds.jpg', '', '', 0, '1 Kg', 'In Stock', '2021-02-01 08:23:14', NULL, ''),
(1117, 17, 79, 'Ridge Gourd Seeds', '', 145, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Mode of sowing: Sow the seeds 0.5 cm deep in a seedling tray / Container / Pots.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Germination time: 6 to 8 days from sowing</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Harvesting: 50 to 60 days from sowing</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Sowing season: Monsoon and best grown in summer</span></li></ul>', 'ridge gourd.jpg', '', '', 0, '2.4 gm', 'In Stock', '2021-02-01 08:26:41', NULL, ''),
(1118, 17, 80, 'True Elements Raw Watermelon Seeds', '', 173, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; list-style: none; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">STRONG BONES: The citronella present in these seeds can help in strengthening the muscle tissue and keeping your bones strong.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">ANTIOXIDANTS LOADED: Being a rich source of antioxidants, these seeds can keep you away from any stomach infection and boost your immunity.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">GLOWING SKIN: Since it is a rich source of iron and magnesium, it helps in maintaining healthy skin. Omega-3 present in these seeds might make your skin glow.</span></li></ul>', '81cYsYhrxDL._SY879_.jpg', '', '', 0, '100gm', 'In Stock', '2021-02-01 17:57:14', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `rating_data`
--

CREATE TABLE `rating_data` (
  `id` int(11) NOT NULL,
  `demo_id` int(10) NOT NULL,
  `rating` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `date_time` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating_data`
--

INSERT INTO `rating_data` (`id`, `demo_id`, `rating`, `name`, `email`, `remark`, `date_time`, `status`) VALUES
(31, 1, 5, 'Chaitanya Rai', 'chaitanyarai19@gmail.com', 'nice one\n', '2020-06-28 07:02:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(50, 12, 'Barley', '2021-01-28 12:39:33', NULL),
(51, 12, 'Chick pea', '2021-01-28 12:40:03', NULL),
(52, 12, 'Coriander', '2021-01-28 12:40:25', NULL),
(53, 12, 'Mustard', '2021-01-28 12:40:41', NULL),
(54, 12, 'Onion', '2021-01-28 12:40:53', NULL),
(55, 12, 'Pea', '2021-01-28 12:41:13', NULL),
(56, 12, 'Potato', '2021-01-28 12:41:27', NULL),
(57, 12, 'Sunflower', '2021-01-28 12:41:44', NULL),
(58, 12, 'Tomato', '2021-01-28 12:41:57', NULL),
(59, 12, 'Wheat', '2021-01-28 12:42:06', NULL),
(60, 16, 'Rice', '2021-01-29 05:12:25', NULL),
(61, 16, 'maize', '2021-01-29 05:23:01', NULL),
(62, 16, 'sorghum', '2021-01-29 05:30:52', NULL),
(63, 16, 'bajra', '2021-01-29 05:38:35', NULL),
(65, 16, ' finger millet (ragi) ', '2021-01-29 05:50:28', NULL),
(66, 16, 'arhar ', '2021-01-29 06:07:41', NULL),
(67, 16, 'soyabean', '2021-01-29 06:09:10', NULL),
(68, 16, 'Groundnut ', '2021-01-29 06:16:57', NULL),
(69, 16, 'Cotton ', '2021-01-29 06:19:30', NULL),
(70, 16, 'Moong ', '2021-01-29 06:25:51', NULL),
(72, 17, 'Muskmelon.', '2021-01-29 12:41:47', NULL),
(73, 17, 'Cucumber.', '2021-01-29 12:44:28', NULL),
(74, 17, 'Bitter gourd', '2021-01-29 12:52:12', NULL),
(78, 17, 'Pumpkin Seeds', '2021-02-01 08:21:01', NULL),
(79, 17, 'Ridge Gourd Seeds', '2021-02-01 08:21:22', NULL),
(80, 17, 'Watermelon ', '2021-02-01 17:55:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(286, 'chaitanyarai19@gmail.com', 0x3135372e33342e3132332e3136320000, '2021-02-01 17:19:31', NULL, 0),
(287, 'chaitanyarai19@gmail.com', 0x3135372e33342e3132332e3136320000, '2021-02-01 17:19:41', NULL, 0),
(288, 'chaitanyarai19@gmail.com', 0x3135372e33342e3132332e3136320000, '2021-02-01 17:21:49', '01-02-2021 11:43:35 PM', 1),
(289, 'mohitpawar530@gmail.com', 0x3130362e36362e32302e323500000000, '2021-02-01 17:24:23', '01-02-2021 11:12:32 PM', 1),
(290, 'shrutic29401@gmail.com', 0x3137312e36312e372e31303900000000, '2021-02-01 17:24:30', '01-02-2021 11:37:13 PM', 1),
(291, 'mohitpawar530@gmail.com', 0x3130362e36362e32302e323500000000, '2021-02-01 18:07:12', NULL, 1),
(292, 'shrutic29401@gmail.com', 0x3137312e36312e372e31303900000000, '2021-02-01 18:07:27', '01-02-2021 11:39:18 PM', 1),
(293, 'shrutic29401@gmail.com', 0x3137312e36312e372e31303900000000, '2021-02-01 18:09:44', NULL, 1),
(294, 'chaitanyarai19@gmail.com', 0x3135372e33342e332e31343900000000, '2021-02-02 12:10:53', NULL, 1),
(295, 'mohitpawar530@gmail.com', 0x3130362e36362e31392e343600000000, '2021-02-02 15:47:01', NULL, 1),
(296, 'chaitanyarai19@gmail.com', 0x3135372e33342e32372e323034000000, '2021-02-03 13:11:51', '03-02-2021 06:50:51 PM', 1),
(297, 'mohitpawar530@gmail.com', 0x3130362e36362e32302e313235000000, '2021-02-03 13:21:16', NULL, 1),
(298, 'chaitanyarai19@gmail.com', 0x3135372e33342e32372e323034000000, '2021-02-03 13:26:38', '03-02-2021 07:00:13 PM', 1),
(299, 'mohitpawar530@gmail.com', 0x3130362e36362e32302e313235000000, '2021-02-03 16:00:30', NULL, 1),
(300, 'chaitanyarai19@gmail.com', 0x3135372e33342e322e32343400000000, '2021-02-04 03:47:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `area` varchar(100) NOT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `area`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'username', 'username@gmail.com', 8989776655, '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2021-01-26 16:00:45', NULL),
(20, 'admin', 'admin@gmail.com', 8435407793, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, 'bajrang kuti\r\nmadan mahal', 'Madhya Pradesh', 'jabalpur', 'Madan mahal', 482002, '2020-09-01 18:08:23', NULL),
(26, 'Chaitanya Rai', 'chaitanyarai19@gmail.com', 8435407793, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, 'bajrang kuti\r\nmadan mahal', 'Madhya Pradesh', 'jabalpur', 'Select', 482002, '2021-02-01 17:20:11', NULL),
(27, 'mohit kadwe', 'mohitpawar530@gmail.com', 8719965778, 'b211654065666acc491feaacfb6ce9c7', NULL, NULL, NULL, NULL, 'Shastri nagar,near vandavan hotel\r\nShastri nagar', 'MADHYA PRADESH', 'JABALPUR', 'Select', 482001, '2021-02-01 17:24:09', NULL),
(28, 'Shruti Choudhary', 'shrutic29401@gmail.com', 6263235433, '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, NULL, 'xyz', 'abc', 'xyz', 'Select', 123, '2021-02-01 17:24:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(6, 4, 21, '2020-08-14 15:07:58'),
(9, 4, 114, '2020-08-14 17:23:38'),
(10, 5, 30, '2020-08-24 04:46:41'),
(11, 4, 0, '2020-09-02 13:03:40'),
(12, 4, 0, '2020-09-02 13:03:55'),
(13, 28, 0, '2021-02-01 17:33:40'),
(14, 28, 0, '2021-02-01 17:33:47'),
(15, 28, 0, '2021-02-01 17:34:09'),
(16, 28, 0, '2021-02-01 17:34:36'),
(17, 26, 0, '2021-02-01 17:35:05'),
(18, 28, 0, '2021-02-01 17:35:27'),
(19, 26, 0, '2021-02-01 17:35:46'),
(21, 28, 1097, '2021-02-01 17:36:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupen_code`
--
ALTER TABLE `coupen_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `password` (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_mst`
--
ALTER TABLE `order_mst`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_data`
--
ALTER TABLE `rating_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `coupen_code`
--
ALTER TABLE `coupen_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_mst`
--
ALTER TABLE `order_mst`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1119;

--
-- AUTO_INCREMENT for table `rating_data`
--
ALTER TABLE `rating_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
