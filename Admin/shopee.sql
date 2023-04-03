-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 09:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(7, 'Nike', 'nike', 'Ut dolore enim ea laborum temporibus eos quibusdam laborum et molestiae repellat. Sit nihil quam sed similique veritatis sit praesentium animi. Est ducimus nemo id enim velit hic error voluptates.', 0, 0, '1679468329.jpg', 'Nike', 'Ut dolore enim ea laborum temporibus eos quibusdam laborum et molestiae repellat. Sit nihil quam sed similique veritatis sit praesentium animi. Est ducimus nemo id enim velit hic error voluptates.', 'Ut dolore enim ea laborum temporibus eos quibusdam laborum et molestiae repellat. Sit nihil quam sed similique veritatis sit praesentium animi. Est ducimus nemo id enim velit hic error voluptates.', '2023-03-22 06:58:49'),
(8, 'Laptop', 'laptop', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 1, '1679741020.png', 'Laptop', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2023-03-25 10:43:40'),
(9, 'Mobile ', 'mobile', 'Smart phone', 0, 1, '1679767938.png', 'Mobile ', 'Smart phone', 'Smart phone', '2023-03-25 18:12:18'),
(10, 'Controller', 'controller', 'a device used to operate or control a machine, a computer game, etc.', 0, 1, '1679855050.png', 'controller', 'a device used to operate or control a machine, a computer game, etc.', 'controller', '2023-03-26 18:24:10'),
(11, 'Cooker', 'cooker', 'Much better than your girlfriend', 0, 1, '1679855173.jpg', 'Cooker', 'Much better than your girlfriend', 'Cooker', '2023-03-26 18:26:13'),
(12, 'Electronics', 'electronics', 'The scientific study of electric current and the technology that uses it.', 0, 1, '1679855532.jpg', 'Electronics', 'The scientific study of electric current and the technology that uses it.', 'Electronics', '2023-03-26 18:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Samsung', 'SmartPhone', 152.00, './assets/products/1.png', '2020-03-28 11:08:57'),
(2, 'Redmi', 'SmartPhone', 122.00, './assets/products/2.png', '2020-03-28 11:08:57'),
(3, 'Redmi', 'SmartPhone', 122.00, './assets/products/3.png', '2020-03-28 11:08:57'),
(4, 'Redmi', 'SmartPhone', 122.00, './assets/products/4.png', '2020-03-28 11:08:57'),
(5, 'Redmi', 'SmartPhone', 122.00, './assets/products/5.png', '2020-03-28 11:08:57'),
(6, 'Redmi', 'SmartPhone', 122.00, './assets/products/6.png', '2020-03-28 11:08:57'),
(7, 'Redmi', 'SmartPhone', 122.00, './assets/products/8.png', '2020-03-28 11:08:57'),
(8, 'Redmi', 'SmartPhone', 122.00, './assets/products/10.png', '2020-03-28 11:08:57'),
(9, 'Samsung', 'SmartPhone', 152.00, './assets/products/11.png', '2020-03-28 11:08:57'),
(10, 'Samsung', 'SmartPhone', 152.00, './assets/products/12.png', '2020-03-28 11:08:57'),
(11, 'Apple', 'SmartPhone', 152.00, './assets/products/13.png', '2020-03-28 11:08:57'),
(12, 'Apple', 'SmartPhone', 152.00, './assets/products/14.png', '2020-03-28 11:08:57'),
(13, 'Apple', 'SmartPhone', 152.00, './assets/products/15.png', '2020-03-28 11:08:57'),
(14, 'Toshiba', 'Cooker', 152.00, './assets/products/Cooker/10003002-noi-com-dien-happy-cook-0-6-lit-hc-060-1.jpg', '2020-03-28 11:08:57'),
(15, 'Toshiba', 'Cooker', 122.00, './assets/products/Cooker/10012149-noi-com-dien-cuckoo-1-8-lit-crp-g1015m-r-1_wjxt-q1.jpg', '2020-03-28 11:08:57'),
(16, 'Toshiba', 'Cooker', 122.00, './assets/products/Cooker/10026256-noi-com-dien-cuckoo-1-8-lit-cr-1055-1_sk7h-ep.jpg', '2020-03-28 11:08:57'),
(17, 'Toshiba', 'Cooker', 122.00, './assets/products/Cooker/10036633-noi-com-dien-toshiba-1-lit-rc-10jfm-h-vn-1.jpg', '2020-03-28 11:08:57'),
(18, 'Toshiba', 'Cooker', 122.00, './assets/products/Cooker/10036633-noi-com-dien-toshiba-1-lit-rc-10jfm-h-vn-1.jpg', '2020-03-28 11:08:57'),
(19, 'Toshiba', 'Cooker', 122.00, './assets/products/Cooker/10039245-noi-com-dien-tu-sharp-ks-com185ev-sl-1.jpg', '2020-03-28 11:08:57'),
(20, 'Dell Vostro', 'Laptop', 122.00, './assets/products/Laptop/10051065-laptop-dell-vostro-3405-v4r53500u003w1-1.jpg', '2020-03-28 11:08:57'),
(21, 'Asus Vivobook 15', 'Laptop', 122.00, './assets/products/Laptop/10052337-laptop-asus-vivobook-15-x1502za-bq127w-1.jpg', '2020-03-28 11:08:57'),
(22, 'Asus Tuf', 'Laptop', 152.00, './assets/products/Laptop/10052586-laptop-asus-tuf-gaming-f15-fx506hc-hn144w-1.jpg', '2020-03-28 11:08:57'),
(23, 'Acer Aspire 3', 'Laptop', 152.00, './assets/products/Laptop/10053511-laptop-acer-aspire-3-a315-59-381e-nx-k6tsv-006-1.jpg', '2020-03-28 11:08:57'),
(24, 'HP 340s', 'Laptop', 152.00, './assets/products/Laptop/10053987-laptop-hp-340s-g7-i3-1005g1-4gb-512gb-win10-224l0pa-1.jpg', '2020-03-28 11:08:57'),
(25, 'Lenovo Ideapad', 'Laptop', 152.00, './assets/products/Laptop/10054254-laptop-lenovo-ideapad-3-14iau7-i3-1215u-82rj001avn-1.jpg', '2020-03-28 11:08:57'),
(26, 'HP 15s', 'Laptop', 152.00, './assets/products/Laptop/10054753-laptop-hp-15s-fq5146tu-i7-1255u-7c0r9pa-1.jpg', '2020-03-28 11:08:57'),
(27, 'Wendy Nuts', 'Laptop', 152.00, './assets/products/Laptop/laptop-new-arrival-sales-banner-1-5fe0c476c3a3f.png', '2020-03-28 11:08:57'),
(28, 'XDL', 'Shoes', 122.00, './assets/products/Shoes/17.png', '2020-03-28 11:08:57'),
(29, 'Joe', 'Shoes', 122.00, './assets/products/20shoes_5.jpg', '2020-03-28 11:08:57'),
(30, 'Chicken nuggets', 'Shoes', 122.00, './assets/products/20shoes_10.jpg', '2020-03-28 11:08:57'),
(31, 'Grandma-360', 'Shoes', 122.00, './assets/products/20shoes_6.jpg', '2020-03-28 11:08:57'),
(32, 'Rizzler boots', 'Shoes', 122.00, './assets/products/20shoes_7.jpg', '2020-03-28 11:08:57'),
(33, 'Sink in the CUW', 'Shoes', 122.00, './assets/products/20shoes_8.jpg', '2020-03-28 11:08:57'),
(34, 'Sigma boots', 'Shoes', 122.00, './assets/products/20shoes_9.jpg', '2020-03-28 11:08:57'),
(35, 'Kansa', 'Shoes', 152.00, './assets/products/Shoes/19.png', '2020-03-28 11:08:57'),
(36, 'IPX-811', 'Shoes', 152.00, './assets/products/Shoes/3870555.jpg', '2020-03-28 11:08:57'),
(37, 'IPX-716', 'Shoes', 152.00, './assets/products/Shoes/400.png', '2020-03-28 11:08:57'),
(38, 'Wat are those!', 'Shoes', 152.00, './assets/products/Shoes/4626584.jpg', '2020-03-28 11:08:57'),
(39, 'Adidi', 'Shoes', 152.00, './assets/products/Shoes/4651712.jpg', '2020-03-28 11:08:57'),
(40, 'CUMN', 'Shoes', 122.00, './assets/products/Shoes/50.png', '2020-03-28 11:08:57'),
(41, 'Brainussy', 'Shoes', 122.00, './assets/products/Shoes/a.png', '2020-03-28 11:08:57'),
(42, 'Bread', 'Shoes', 122.00, './assets/products/Shoes/b.png', '2020-03-28 11:08:57'),
(43, 'MXP-284', 'Shoes', 122.00, './assets/products/Shoes/d.png', '2020-03-28 11:08:57'),
(44, 'IPS-039', 'Controller', 122.00, './assets/products/Controller/35.png', '2020-03-28 11:08:57'),
(45, 'Ksa-238', 'Controller', 152.00, './assets/products/Controller/20.png', '2020-03-28 11:08:57'),
(46, 'IPX-111', 'Controller', 152.00, './assets/products/Controller/49.png', '2020-03-28 11:08:57'),
(47, 'IPX-312', 'Controller', 152.00, './assets/products/Controller/Screenshot%202023-03-08%20055726.png', '2020-03-28 11:08:57'),
(48, 'shw-283', 'Controller', 152.00, './assets/products/Controller/Screenshot%202023-03-08%20055750.png', '2020-03-28 11:08:57'),
(49, 'ifj-947', 'Controller', 152.00, './assets/products/Controller/Screenshot%202023-03-08%20055815.png', '2020-03-28 11:08:57'),
(50, 'kdj-283', 'Controller', 122.00, './assets/products/Controller/Screenshot%202023-03-08%20055828.png', '2020-03-28 11:08:57'),
(51, 'Bsd-938', 'Controller', 122.00, './assets/products/Controller/Screenshot%202023-03-08%20055840.png', '2020-03-28 11:08:57'),
(52, 'Brd-182', 'Controller', 122.00, './assets/products/Controller/Screenshot%202023-03-08%20055855.png', '2020-03-28 11:08:57'),
(53, 'MXP-484', 'Controller', 122.00, './assets/products/Controller/Screenshot%202023-03-08%20055918.png', '2020-03-28 11:08:57'),
(54, 'Sig-943', 'Controller', 122.00, './assets/products/Controller/Screenshot%202023-03-08%20055934.png', '2020-03-28 11:08:57'),
(55, 'Kan-384', 'Controller', 152.00, './assets/products/Controller/Screenshot%202023-03-08%20060014.png', '2020-03-28 11:08:57'),
(56, 'IPX-853', 'Controller', 152.00, './assets/products/Controller/Screenshot%202023-03-08%20060029.png', '2020-03-28 11:08:57'),
(57, 'IPX-203', 'Controller', 152.00, './assets/products/Controller/Screenshot%202023-03-08%20060051.png', '2020-03-28 11:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(3, 8, 'ASUS TUF', 'asus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 73, 150, '1679741103.jpg', 5, 0, 0, 'Laptop', 'Asus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2023-03-25 10:45:03'),
(8, 9, 'Iphone 5', 'iphone ', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 80, 150, '1679860682.png', 20, 0, 0, 'Mobile ', 'lol', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2023-03-26 19:58:02'),
(9, 7, 'Grandma Shoes ', 'shoes', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 20, 420, '1679860750.jpg', 23, 0, 0, 'Lorem ipsum dolor sit ame', 'nike', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2023-03-26 19:59:10'),
(10, 10, 'Xbox', 'controller', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 80, 150, '1679860824.png', 1, 0, 0, 'Lorem ipsum dolor sit ame', 'Gaming', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2023-03-26 20:00:24'),
(11, 11, 'Toshiba', 'toshiba', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 73, 140, '1679860885.jpg', 3, 0, 0, 'Lorem ipsum dolor sit ame', 'Cooker', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2023-03-26 20:01:25'),
(12, 12, 'Motor', 'motor', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 20, 30, '1679860933.jpg', 2, 0, 0, 'Lorem ipsum dolor sit ame', 'Run', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2023-03-26 20:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role_as`, `create_at`) VALUES
(1, 'loltime31', '50000thuan@gmail.cpm', 868368631, 'lol', 1, '2023-03-19 14:13:06'),
(2, 'loltime38', '50000thuan@gmail.com', 868368631, 'klk', 0, '2023-03-19 14:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
