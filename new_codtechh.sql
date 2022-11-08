-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2022 at 04:28 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_codtechh`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `description`, `banner_image`, `status`, `created_at`, `updated_at`) VALUES
(1, '<ul><li style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><br><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">DAKKAKEN QATAR – BIGGEST ONLINE SHOPPING WEBSITE</h2>Dakkaken.com is the eCommerce project of&nbsp;<a href=\"https://dakkaken.group/\" style=\"color: rgb(48, 48, 48);\">DAKKAKEN Group</a>&nbsp;, the project was developed in Qatar by highly experienced eCommerce, marketing and development professionals Team.<br><br>Online shopping sites are now part of our everyday lives, because everyone enjoys the possibility of being able to buy whatever they need, whether it’s clothing or electronics ,kids toys, groceries without having to move. It’s even better when you can buy everything you’re looking for, all from the same store. This is what Dakkaken Online store offers and that’s what makes it one of the best online shopping websites in Qatar<br><br>Dakkaken.com is the leading online shopping platform in the Qatar. Deals with vast Electronic products which includes exclusive in- house collections, sports, Electronics, Mobiles, Perfumes, fashion, Kids Toys, Accessories and globally recognized brands. Fast delivery, Own Delivery team, and easy return, warranty options, 24 x 7 multilingual customer service and attractive prices.&nbsp;<br><br>Dakkaken.com has grown into a brand that Champions digital innovation having a fiercely independent spirit and inspires its fashion loving customers to experiment with their style. To make your shopping fun, you get rewards for all activities you do on the site, you can share and review purchases with friends, collect badges, and win awards..<br><br>Dakkaken.com, 100% made in Qatar. Initially launching with local sellers, shops, products produced or marketed in Qatar. We are available in more than 6 country.<br><br><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Dakkaken Meaning</h2>\"Dakkaken is a commonly used term in Arabic, meaning the plural off dokkan (traditional shop), so Dakkkaken = Shops \".<br><br>Dakkaken.com, 100% made in Qatar. Initially launching with local sellers, shops, products produced or marketed in Qatar. We are available in more than 6 country.</li></ul>', 'uploads/custom-images/about-us-2022-11-01-08-28-04-6900.png', NULL, '2022-09-20 08:21:31', '2022-11-01 20:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int NOT NULL DEFAULT '0',
  `state_id` int NOT NULL DEFAULT '0',
  `city_id` int NOT NULL DEFAULT '0',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_shipping` int NOT NULL DEFAULT '0',
  `default_billing` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `email`, `phone`, `country_id`, `state_id`, `city_id`, `address`, `type`, `default_shipping`, `default_billing`, `created_at`, `updated_at`) VALUES
(1, 5, 'a b', 'marohman74@gmail.com', '123355454544', 1, 1, 2, 'ewewee', '1', 1, 1, '2022-09-21 05:45:32', '2022-09-21 05:45:32'),
(2, 5, 'dsds dsdsd', 'marohman74@gmail.com', '1212121212121', 1, 1, 2, 'sdsdsd', '1', 0, 0, '2022-09-21 05:46:27', '2022-09-21 05:46:27'),
(3, 6, 'nayeem', 'nayeem@gmail.com', '1234', 4, 7, 10, 'lonon', 'home', 1, 1, '2022-09-21 06:56:14', '2022-09-21 06:56:14'),
(5, 4, 'Reprehenderit in ni Aliquid dolor labori', 'Quo culpa et offici', 'Architecto quis assu', 2, 4, 8, 'Porro minima consect', '1', 1, 1, '2022-09-21 07:35:41', '2022-09-21 07:35:41'),
(6, 13, 'hello,', 'ushh@gmail.com', '84619', 4, 7, 10, 'jahh', 'home', 1, 1, '2022-09-22 05:44:31', '2022-09-22 05:44:31'),
(7, 7, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 2, 4, 8, 'Aliquip accusantium', '1', 1, 1, '2022-09-24 18:41:35', '2022-09-24 18:41:35'),
(9, 6, 'test', 'test@gmail.com', '12348767', 4, 7, 10, 'test', 'home', 0, 0, '2022-09-25 06:35:37', '2022-09-25 06:35:37'),
(10, 3, 'Cumque quaerat facil Incidunt earum nisi', 'Officiis sunt ut sit', 'Rerum perspiciatis', 2, 4, 8, 'Nisi odio dolore eiu', '1', 1, 1, '2022-09-26 06:27:35', '2022-09-26 06:27:35'),
(13, 1825, 'jane', 'xyz@mail.com', '+97455555555', 17, 27, 17, 'boulevard', 'home', 1, 1, '2022-11-02 15:20:31', '2022-11-02 15:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_type` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `forget_password_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_type`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `status`, `forget_password_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'uploads/website-images/ibrahim-khalil-2022-01-30-02-48-50-5743.jpg', NULL, '$2y$10$Gtc/CuE9RTk0HaCVeXyrGeEC/cFW9WXc9tc/EX2PwhRGAn3H9L59S', '2yfLGiRCFb8pOn7GBy6KYnFqWRJTtFYKkNnLT52JkznlUK7w5EooUoALXvuV', 1, NULL, NULL, '2022-09-20 08:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_modals`
--

CREATE TABLE `announcement_modals` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_date` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcement_modals`
--

INSERT INTO `announcement_modals` (`id`, `status`, `title`, `description`, `image`, `expired_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'GET UP TO 75% OFF', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?', 'uploads/website-images/announcement-2022-09-25-07-38-59-4125.png', 5, NULL, '2022-09-25 13:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `bank_payments`
--

CREATE TABLE `bank_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `account_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cash_on_delivery_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_payments`
--

INSERT INTO `bank_payments` (`id`, `status`, `account_info`, `cash_on_delivery_status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', 1, NULL, '2022-11-01 20:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` bigint UNSIGNED NOT NULL,
  `header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_product_qty` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `header`, `title`, `link`, `image`, `banner_location`, `after_product_qty`, `status`, `created_at`, `updated_at`, `title_one`, `title_two`, `badge`, `product_slug`) VALUES
(13, NULL, NULL, '', 'uploads/website-images/banner-2022-06-13-12-45-14-6950.jpg', 'Login page', 0, 0, NULL, '2022-06-13 06:45:14', NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, 'uploads/website-images/default-avatar-2022-09-20-02-16-55-3118.png', 'Default Profile Image', 0, 0, NULL, '2022-09-20 08:16:55', NULL, NULL, NULL, NULL),
(16, NULL, NULL, '#', 'uploads/website-images/Mega-menu-2022-10-27-01-41-46-7345.png', 'Slider First', 0, 1, NULL, '2022-10-27 07:48:24', 'Apple', 'Smart Watch', 'Gaming', 'xbox-wireless-game-controller-'),
(17, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-10-27-01-42-01-1798.png', 'Slider Second', 0, 1, NULL, '2022-10-27 07:49:27', 'Xbox', '5th Version', 'Gaming', 'fantech-octane-headset'),
(18, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-07-31-12-32-19-7306.jpg', 'Popular category sidebar banner', 0, 1, NULL, '2022-10-24 06:43:23', NULL, NULL, NULL, 'sony-play-staton-5'),
(19, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-02-7910.png', 'Two Column banner One', 0, 1, NULL, '2022-10-27 07:50:50', 'Beat wireless', 'Headphone', 'HEADSET', 'realme-mini-music'),
(20, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-27-5225.png', 'Two Column Banner two', 0, 1, NULL, '2022-10-27 07:51:13', 'Samsung', 'Smart Watch II', 'SMART WATCH', 'jbl-headphon-max'),
(21, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-51-3694.png', 'Homepage Single banner one', 0, 1, NULL, '2022-10-27 07:53:14', 'HEADPHONE', 'Get the best deal for Headphones', NULL, 'asus-zenbook-desktop'),
(22, NULL, NULL, 'https://shopo-ecom.vercel.app/single-product?slug=kospet-tank-t1-milstd-rugged-waterproof-smartwatch', 'uploads/website-images/Mega-menu-2022-10-27-01-44-06-8672.png', 'Homepage Single banner Two', 0, 1, NULL, '2022-10-27 07:53:40', 'Get the best deal for Headphones', NULL, NULL, 'playstation-4'),
(23, NULL, NULL, 'https://shopo-ecom.vercel.app/products?category=game', 'uploads/website-images/Mega-menu-2022-10-27-01-44-55-7811.png', 'Megamenu banner', 0, 1, NULL, '2022-10-27 08:20:00', 'SMART WATCH', 'Samsung Smart Watch', NULL, 'sony-joystick-sj-pro-vlv'),
(24, NULL, '#', '#', 'uploads/website-images/Mega-menu-2022-09-20-10-59-27-3427.png', 'Homepage flash sale sidebar banner', 0, 1, NULL, '2022-09-20 04:59:27', NULL, NULL, NULL, NULL),
(25, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-44-41-4959.png', 'Shop page center banner', 3, 1, NULL, '2022-10-27 07:56:01', 'Get the best deal for Headphones', NULL, NULL, 'jbl-clip-4-orange-portable-speaker'),
(26, '', '', 'https://shopo-ecom.vercel.app/single-product?slug=wireless-headphones-and-earbuds-', 'uploads/website-images/Mega-menu-2022-10-27-01-44-49-1623.png', 'Shop page sidebar banner', 0, 1, NULL, '2022-10-27 07:56:36', 'HEADSET', 'Beat wireless Headphone', NULL, 'apple-air-2022'),
(27, 'Get our latest offer', 'by subscription', '', 'uploads/website-images/banner-2022-09-25-05-12-43-6914.png', 'Subscribe section banner', 0, 1, NULL, '2022-09-25 11:12:43', NULL, NULL, NULL, NULL),
(28, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-06-14-11-26-55-8951.jpg', 'Featured category sidebar banner', 0, 1, NULL, '2022-06-14 05:26:56', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `show_homepage` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `admin_id`, `title`, `slug`, `blog_category_id`, `image`, `description`, `views`, `seo_title`, `seo_description`, `status`, `show_homepage`, `created_at`, `updated_at`) VALUES
(2, 1, 'Business-to-consumer that involves selling fight products and services', 'businesstoconsumer-that-involves-selling-fight-products-and-services', 2, 'uploads/custom-images/blog--2022-09-22-04-09-44-5529.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 20, 'Business-to-consumer that involves selling fight products and services', 'Business-to-consumer that involves selling fight products and services', 1, 1, '2022-09-22 10:09:44', '2022-09-25 11:57:33'),
(3, 1, 'Top 10 Best Professional Blogging Platforms for 2022', 'top-10-best-professional-blogging-platforms-for-2022', 3, 'uploads/custom-images/blog--2022-09-22-04-12-00-7502.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 16, 'Top 10 Best Professional Blogging Platforms for 2022', 'Top 10 Best Professional Blogging Platforms for 2022', 1, 1, '2022-09-22 10:12:00', '2022-10-27 07:45:38'),
(4, 1, '6 Best WordPress E-commerce Plugins for Online Stores in 2022', '6-best-wordpress-ecommerce-plugins-for-online-stores-in-2022', 5, 'uploads/custom-images/blog--2022-09-22-04-13-57-7380.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 7, '6 Best WordPress E-commerce Plugins for Online Stores in 2022', '6 Best WordPress E-commerce Plugins for Online Stores in 2022', 1, 1, '2022-09-22 10:13:57', '2022-09-25 11:56:56'),
(5, 1, '15 Best WordPress Newspaper Themes to Look Out for in 2022', '15-best-wordpress-newspaper-themes-to-look-out-for-in-2022', 5, 'uploads/custom-images/blog--2022-09-22-04-14-55-6716.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 36, '15 Best WordPress Newspaper Themes to Look Out for in 2022', '15 Best WordPress Newspaper Themes to Look Out for in 2022', 1, 1, '2022-09-22 10:14:55', '2022-09-27 03:08:56'),
(6, 1, 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 'musthave-wordpress-plugins-for-ecommerce-websites-in-2022', 4, 'uploads/custom-images/blog--2022-09-22-04-15-55-3458.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 10, 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 1, 0, '2022-09-22 10:15:55', '2022-09-25 11:57:10'),
(7, 1, 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 'its-official-the-iphone-14-series-is-on-its-way-rumors-turned-out-to-be-true-the-goods-the-bads', 2, 'uploads/custom-images/blog--2022-09-22-04-18-09-8292.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 14, 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 1, 1, '2022-09-22 10:18:09', '2022-10-27 09:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Development', 'development', 1, '2022-09-22 10:05:56', '2022-09-22 10:05:56'),
(3, 'Guide', 'guide-', 1, '2022-09-22 10:06:06', '2022-09-22 10:06:06'),
(4, 'Inspiration', 'inspiration-', 1, '2022-09-22 10:06:13', '2022-09-22 10:06:13'),
(5, 'Latest News', 'latest-news', 1, '2022-09-22 10:06:25', '2022-09-22 10:06:25'),
(6, 'Revenue', 'revenue-', 1, '2022-09-22 10:06:37', '2022-09-22 10:06:37'),
(7, 'Start Up', 'start-up', 1, '2022-09-22 10:06:48', '2022-09-22 10:06:48'),
(8, 'Technology', 'technology', 1, '2022-09-22 10:06:56', '2022-09-22 10:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Len Newton', 'fose@mailinator.com', 'Ratione deserunt lab', 0, '2022-09-25 07:43:47', '2022-09-25 07:43:47'),
(2, 6, 'Lara Mason', 'nicuqovu@mailinator.com', 'Voluptatem facilis v', 0, '2022-09-25 07:45:00', '2022-09-25 07:45:00'),
(3, 5, 'Abel Spencer', 'sicyxohore@mailinator.com', 'Molestiae totam magn', 0, '2022-09-25 10:22:20', '2022-09-25 10:22:20'),
(4, 6, 'Hannah Nunez', 'hupymug@mailinator.com', 'Vel ea fugit ad duc', 0, '2022-09-25 11:05:46', '2022-09-25 11:05:46'),
(5, 2, 'Dara Odom', 'caqo@mailinator.com', 'Ducimus doloremque', 0, '2022-09-25 11:38:22', '2022-09-25 11:38:22'),
(6, 2, 'Boris David', 'jypiw@mailinator.com', 'Ipsum quam harum co', 0, '2022-09-25 11:39:26', '2022-09-25 11:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `name_ar`, `slug`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Oneplus', NULL, 'oneplus', 'uploads/custom-images/oneplus-2022-09-25-04-15-53-8330.png', 1, '2022-09-20 07:16:12', '2022-09-25 10:15:53'),
(2, 'Tencent', NULL, 'tencent', 'uploads/custom-images/tencent-2022-09-25-04-16-01-9474.png', 1, '2022-09-20 07:16:24', '2022-09-25 10:16:01'),
(3, 'Apple', NULL, 'apple', 'uploads/custom-images/apple-2022-09-25-04-16-05-2914.png', 1, '2022-09-20 07:16:43', '2022-09-25 10:16:05'),
(4, 'Mircrosoft', NULL, 'mircrosoft', 'uploads/custom-images/mircrosoft-2022-09-25-04-16-10-7094.png', 1, '2022-09-20 07:16:59', '2022-09-25 10:16:10'),
(5, 'lenovo', NULL, 'lenovo', 'uploads/custom-images/lenovo-2022-09-25-04-16-19-9532.png', 1, '2022-09-20 07:17:17', '2022-09-25 10:16:19'),
(6, 'Huawei', NULL, 'huawei', 'uploads/custom-images/huawei-2022-09-25-04-16-23-2134.png', 1, '2022-09-20 07:17:29', '2022-09-25 10:16:23'),
(7, 'Nexus', NULL, 'nexus', 'uploads/custom-images/nexus-2022-09-25-04-16-31-3263.png', 1, '2022-09-20 07:17:44', '2022-09-25 10:16:31'),
(8, 'Google', NULL, 'google', 'uploads/custom-images/google-2022-09-25-04-16-35-5464.png', 1, '2022-09-20 07:17:57', '2022-09-25 10:16:35'),
(9, 'Firefox', NULL, 'firefox', 'uploads/custom-images/firefox-2022-09-25-04-16-43-3374.png', 1, '2022-09-20 07:18:11', '2022-09-25 10:16:43'),
(10, 'Tesla', NULL, 'tesla', 'uploads/custom-images/tesla-2022-09-25-04-16-47-6997.png', 1, '2022-09-20 07:18:29', '2022-09-25 10:16:47'),
(11, 'Brave', NULL, 'brave', 'uploads/custom-images/brave-2022-09-25-04-16-55-9281.png', 1, '2022-09-20 07:19:01', '2022-09-25 10:16:55'),
(12, 'Facebook', NULL, 'facebook', 'uploads/custom-images/facebook-2022-09-25-04-17-01-2209.png', 1, '2022-09-20 07:19:14', '2022-09-25 10:17:01'),
(13, 'sample brand', 'عينة العلامة التجارية', 'sample-brand', 'uploads/custom-images/sample-brand-2022-11-03-07-20-28-8948.png', 1, '2022-11-03 14:20:29', '2022-11-03 14:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `breadcrumb_images`
--

CREATE TABLE `breadcrumb_images` (
  `id` bigint UNSIGNED NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` int NOT NULL DEFAULT '1',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `breadcrumb_images`
--

INSERT INTO `breadcrumb_images` (`id`, `location`, `image_type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Brand Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-00-6529.jpg', NULL, '2022-02-11 09:19:03'),
(2, 'Cart Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-13-2295.jpg', NULL, '2022-02-11 09:19:16'),
(3, 'Campaign Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-26-4555.jpg', NULL, '2022-02-11 09:19:28'),
(4, 'FAQ page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-38-5297.jpg', NULL, '2022-02-11 09:19:40'),
(5, 'User Authentication', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-51-4946.jpg', NULL, '2022-02-11 09:19:53'),
(6, 'Compare Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-02-1928.jpg', NULL, '2022-02-11 09:20:04'),
(7, 'Order Tracking Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-16-5029.jpg', NULL, '2022-02-11 09:20:18'),
(8, 'Vendor Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-28-1461.jpg', NULL, '2022-02-11 09:20:30'),
(9, 'Shop Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-39-4557.jpg', NULL, '2022-02-11 09:20:41'),
(10, 'Blog page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-51-3046.jpg', NULL, '2022-02-11 09:20:54'),
(11, 'Flash Deal Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-21-04-8636.jpg', NULL, '2022-02-11 09:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `name_ar`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', NULL, 'electronics', 'fas fa-anchor', 1, '2022-09-20 05:16:25', '2022-09-20 05:16:25'),
(2, 'Game', NULL, 'game', 'fas fa-gamepad', 1, '2022-09-20 05:16:50', '2022-09-20 05:16:50'),
(3, 'Mobile', NULL, 'mobile', 'fas fa-mobile-alt', 1, '2022-09-20 05:17:43', '2022-09-20 05:17:43'),
(4, 'Lifestyle', NULL, 'lifestyle', 'fas fa-home', 1, '2022-09-20 05:24:47', '2022-09-20 09:56:46'),
(5, 'Babies and Toys', NULL, 'babies-and-toys', 'fas fa-basketball-ball', 1, '2022-09-20 05:26:13', '2022-09-20 05:26:13'),
(6, 'Bike', NULL, 'bike', 'fas fa-bicycle', 1, '2022-09-20 05:28:22', '2022-09-20 05:28:22'),
(7, 'Men\'s Fasion', NULL, 'mens-fasion', 'fas fa-street-view', 1, '2022-09-20 05:35:28', '2022-09-20 05:35:28'),
(8, 'Talevision', NULL, 'talevision', 'fab fa-android', 1, '2022-09-20 05:38:38', '2022-09-20 05:38:38'),
(9, 'Woman\'s Fasion', NULL, 'womans-fasion', 'fas fa-adjust', 1, '2022-09-20 06:04:03', '2022-09-20 06:04:03'),
(10, 'Accessories', NULL, 'accessories', 'fas fa-cogs', 1, '2022-09-20 06:05:41', '2022-09-20 09:56:55'),
(11, 'sample category', 'فئة العينة1', 'sample-category', 'fab fa-accessible-icon', 1, '2022-11-03 13:27:44', '2022-11-03 13:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `name_ar`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'LG', NULL, 'lg', 1, '2022-09-20 06:02:47', '2022-09-20 06:02:47'),
(2, 1, 2, 'HP', NULL, 'hp', 1, '2022-09-20 06:03:17', '2022-09-20 06:03:17'),
(3, 2, 5, 'PlayStation 4', NULL, 'playstation-4', 1, '2022-09-20 07:13:18', '2022-09-20 07:13:18'),
(4, 2, 5, 'PlayStation 5', NULL, 'playstation-5', 1, '2022-09-20 07:13:29', '2022-09-20 07:13:29'),
(5, 1, 1, 'Samsung', NULL, 'samsung', 1, '2022-09-20 07:13:41', '2022-09-20 07:13:41'),
(6, 1, 1, 'Apple', NULL, 'apple', 1, '2022-09-20 07:13:51', '2022-09-20 07:13:51'),
(7, 2, 4, 'sample child category name', 'نموذج لاسم فئة فرعية1', 'sample-child-category-name', 1, '2022-11-03 14:15:03', '2022-11-03 14:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `country_state_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_state_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Florida City', 'florida-city', 0, '2022-01-30 09:29:19', '2022-11-02 15:13:06'),
(2, 1, 'Los Angeles', 'los-angeles', 0, '2022-01-30 09:29:29', '2022-11-02 15:13:05'),
(4, 2, 'Tallahassee', 'tallahassee', 0, '2022-02-06 04:18:49', '2022-11-02 15:13:05'),
(5, 2, 'Weston', 'weston', 0, '2022-02-06 04:19:56', '2022-11-02 15:13:04'),
(6, 1, 'San Jose', 'san-jose', 0, '2022-02-06 04:21:08', '2022-11-02 15:13:04'),
(7, 1, 'San Diego', 'san-diego', 0, '2022-02-06 04:21:26', '2022-11-02 15:13:03'),
(8, 4, 'Gandhinagar', 'gandhinagar', 0, '2022-02-06 04:22:21', '2022-11-02 15:13:03'),
(9, 5, 'Chandigarh', 'chandigarh', 0, '2022-02-06 04:22:44', '2022-11-02 15:13:02'),
(10, 7, 'none', 'none', 0, '2022-02-06 04:23:12', '2022-11-02 15:17:03'),
(11, 7, 'Liverpool', 'liverpool', 0, '2022-02-06 04:23:29', '2022-11-02 15:13:01'),
(17, 27, 'Dubai', 'dubai', 1, '2022-11-02 15:17:55', '2022-11-02 15:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `compare_products`
--

CREATE TABLE `compare_products` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compare_products`
--

INSERT INTO `compare_products` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(14, 7, 30, '2022-09-27 10:49:11', '2022-09-27 10:49:11'),
(16, 7, 31, '2022-10-27 09:22:21', '2022-10-27 09:22:21'),
(17, 7, 37, '2022-10-27 09:42:54', '2022-10-27 09:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'sdafdsf', 'asdfsdf', NULL, 'send me your purchase code .  and then send me your admin access', 'asdfsdf', '2022-09-23 06:01:33', '2022-09-23 06:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `title`, `description`, `email`, `address`, `phone`, `map`, `created_at`, `updated_at`) VALUES
(1, 'Contact Information', 'Fill the form below or write us .We will help you as soon as possible.', 'info@dakkaken.com', 'Al-Dafna 63 – Street 920 – Building No. 35 (Qatar Tower) – Floor No. 12 P.O. Box: 200889 Doha – Qatar.', '+974 6625 9778', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28858.498397175495!2d51.518582221386005!3d25.293709466476848!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e45c4c910445585%3A0x4ae36775725b6eaa!2sQatar%20Tower!5e0!3m2!1sen!2siq!4v1667324006592!5m2!1sen!2siq', '2022-09-22 11:08:24', '2022-11-01 20:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `cookie_consents`
--

CREATE TABLE `cookie_consents` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `border` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corners` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cookie_consents`
--

INSERT INTO `cookie_consents` (`id`, `status`, `border`, `corners`, `background_color`, `text_color`, `border_color`, `btn_bg_color`, `btn_text_color`, `message`, `link_text`, `btn_text`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'thin', 'normal', '#ff4013', '#fafafa', '#ff6251', '#fffceb', '#222758', 'We use cookies (or similar technologies) for technical purposes, to enhance and analyze site usage, to support our marketing efforts.', 'More Info', 'Yes', NULL, NULL, '2022-11-01 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'United State', NULL, 'united-state', 1, '2022-01-30 09:28:28', '2022-02-06 04:11:42'),
(2, 'India', NULL, 'india', 1, '2022-01-30 09:28:39', '2022-01-30 09:28:39'),
(4, 'United Kindom', NULL, 'united-kindom', 1, '2022-02-06 04:11:51', '2022-02-06 04:11:51'),
(5, 'Australia', NULL, 'australia', 1, '2022-02-06 04:12:36', '2022-02-06 04:12:36'),
(10, 'Bangladesh', NULL, 'bangladesh', 1, '2022-09-22 05:46:54', '2022-09-22 05:46:54'),
(16, 'Andorra', 'AD', '', 0, '2022-11-03 01:40:50', '2022-11-03 01:40:50'),
(17, 'United Arab Emirates', 'AE', '', 1, '2022-11-03 01:40:50', '2022-11-03 01:40:50'),
(18, 'Afghanistan', 'AF', '', 1, '2022-11-03 01:40:50', '2022-11-03 12:49:06'),
(19, 'Antigua and Barbuda', 'AG', '', 1, '2022-11-03 01:40:51', '2022-11-03 12:49:06'),
(20, 'Anguilla', 'AI', '', 1, '2022-11-03 01:40:51', '2022-11-03 12:49:06'),
(21, 'Albania', 'AL', '', 1, '2022-11-03 01:40:51', '2022-11-03 12:49:06'),
(22, 'Armenia', 'AM', '', 1, '2022-11-03 01:40:51', '2022-11-03 12:49:07'),
(23, 'Netherland Antilles', 'AN', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(24, 'Angola', 'AO', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(25, 'Argentina', 'AR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(26, 'American Samoa', 'AS', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(27, 'Austria', 'AT', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(28, 'Australia', 'AU', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(29, 'Aruba', 'AW', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(30, 'Azerbaijan', 'AZ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(31, 'Bosnia and Herzegovina', 'BA', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(32, 'Barbados', 'BB', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(33, 'Bangladesh', 'BD', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(34, 'Belgium', 'BE', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(35, 'Burkina Faso', 'BF', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(36, 'Bulgaria', 'BG', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(37, 'Bahrain', 'BH', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(38, 'Burundi', 'BI', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(39, 'Benin', 'BJ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(40, 'Bermuda', 'BM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(41, 'Brunei', 'BN', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(42, 'Bolivia', 'BO', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(43, 'Brazil', 'BR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(44, 'Bahamas', 'BS', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(45, 'Bhutan', 'BT', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(46, 'Botswana', 'BW', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(47, 'Belarus', 'BY', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(48, 'Belize', 'BZ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(49, 'Canada', 'CA', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(50, 'Cocos Keeling IS', 'CC', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(51, 'Dem Republic of the Congo', 'CD', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(52, 'Central African Republic', 'CF', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(53, 'Congo', 'CG', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(54, 'Switzerland', 'CH', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(55, 'Ivory Coast', 'CI', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(56, 'Cook IS', 'CK', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(57, 'Chile', 'CL', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(58, 'Cameroon', 'CM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(59, 'China', 'CN', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(60, 'Colombia', 'CO', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(61, 'Costa Rica', 'CR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(62, 'Cuba', 'CU', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(63, 'Cape Verde', 'CV', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(64, 'Christmas IS', 'CX', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(65, 'Cyprus', 'CY', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(66, 'Czech Republic', 'CZ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(67, 'Germany', 'DE', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(68, 'Djibouti', 'DJ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(69, 'Denmark', 'DK', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(70, 'Dominica', 'DM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(71, 'Dominican Republic', 'DO', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(72, 'Algeria', 'DZ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(73, 'Ecuador', 'EC', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(74, 'Estonia', 'EE', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(75, 'Egypt', 'EG', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(76, 'Western Sahara', 'EH', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(77, 'Eritrea', 'ER', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(78, 'Spain', 'ES', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(79, 'Ethiopia', 'ET', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(80, 'Finland', 'FI', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(81, 'Fiji', 'FJ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(82, 'Falkland IS', 'FK', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(83, 'Micronesia', 'FM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(84, 'Faroe IS', 'FO', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(85, 'France', 'FR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(86, 'Gabon', 'GA', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(87, 'United Kingdom', 'GB', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(88, 'Grenada', 'GD', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(89, 'Georgia', 'GE', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(90, 'French Guiana', 'GF', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(91, 'Ghana', 'GH', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(92, 'Gibraltar', 'GI', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(93, 'Greenland', 'GL', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(94, 'Gambia', 'GM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(95, 'Guinea', 'GN', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(96, 'Guadeloupe', 'GP', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(97, 'Equatorial Guinea', 'GQ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(98, 'Greece', 'GR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(99, 'Guatemala', 'GT', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(100, 'Guam', 'GU', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(101, 'Guinea Bissau', 'GW', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(102, 'Guyana', 'GY', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(103, 'Hong Kong', 'HK', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(104, 'Heard & McDonald Islands', 'HM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(105, 'Honduras', 'HN', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(106, 'Croatia', 'HR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(107, 'Haiti', 'HT', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(108, 'Hungary', 'HU', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(109, 'Canary IS', 'IC', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(110, 'Indonesia', 'ID', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(111, 'Ireland', 'IE', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(112, 'Israel', 'IL', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(113, 'Isle of Man', 'IM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(114, 'India', 'IN', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(115, 'Br Indian Ocean Terr', 'IO', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(116, 'Iraq', 'IQ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(117, 'Iran', 'IR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(118, 'Iceland', 'IS', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(119, 'Italy', 'IT', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(120, 'Channel Islands', 'JE', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(121, 'Jamaica', 'JM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(122, 'Jordan', 'JO', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(123, 'Japan', 'JP', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(124, 'Kenya', 'KE', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(125, 'Kyrgyzstan', 'KG', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(126, 'Cambodia', 'KH', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(127, 'Kiribati', 'KI', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(128, 'Comoros', 'KM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(129, 'St Kitts and Nevis', 'KN', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(130, 'Korea North', 'KP', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(131, 'Korea South', 'KR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(132, 'Kuwait', 'KW', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(133, 'Cayman IS', 'KY', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(134, 'Kazakhstan', 'KZ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(135, 'Laos', 'LA', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(136, 'Lebanon', 'LB', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(137, 'St Lucia', 'LC', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(138, 'Liechtenstein', 'LI', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(139, 'Sri Lanka', 'LK', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(140, 'Liberia', 'LR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(141, 'Lesotho', 'LS', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(142, 'Lithuania', 'LT', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(143, 'Luxembourg', 'LU', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(144, 'Latvia', 'LV', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(145, 'Libya', 'LY', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(146, 'Morocco', 'MA', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(147, 'Monaco', 'MC', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(148, 'Moldova', 'MD', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(149, 'Montenegro', 'ME', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(150, 'Madagascar', 'MG', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(151, 'Marshall IS', 'MH', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(152, 'Macedonia', 'MK', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(153, 'Mali', 'ML', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(154, 'Myanmar', 'MM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(155, 'Mongolia', 'MN', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(156, 'Macau', 'MO', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(157, 'Northern Mariana IS', 'MP', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(158, 'Martinique', 'MQ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(159, 'Mauritania', 'MR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(160, 'Montserrat', 'MS', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(161, 'Malta', 'MT', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(162, 'Mauritius', 'MU', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(163, 'Maldives', 'MV', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(164, 'Malawi', 'MW', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(165, 'Mexico', 'MX', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(166, 'Malaysia', 'MY', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(167, 'Mozambique', 'MZ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(168, 'Namibia', 'NA', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(169, 'New Caledonia', 'NC', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(170, 'Niger', 'NE', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(171, 'Norfolk Island', 'NF', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(172, 'Nigeria', 'NG', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(173, 'Nicaragua', 'NI', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(174, 'Netherlands', 'NL', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(175, 'Norway', 'NO', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(176, 'Nepal', 'NP', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(177, 'Nauru', 'NR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(178, 'Niue', 'NU', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(179, 'New Zealand', 'NZ', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(180, 'Oman', 'OM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(181, 'Somaliland', 'OS', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(182, 'Panama', 'PA', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(183, 'Peru', 'PE', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(184, 'French Polynesia', 'PF', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(185, 'Papua New Guinea', 'PG', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(186, 'Philippines', 'PH', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(187, 'Pakistan', 'PK', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(188, 'Poland', 'PL', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(189, 'St Pierre and Miquelon', 'PM', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(190, 'Pitcairn IS', 'PN', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(191, 'Puerto Rico', 'PR', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(192, 'Palestine', 'PS', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(193, 'Portugal', 'PT', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(194, 'Palau', 'PW', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(195, 'Paraguay', 'PY', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(196, 'Qatar', 'QA', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(197, 'Reunion IS', 'RE', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(198, 'Romania', 'RO', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(199, 'Serbia', 'RS', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(200, 'Russia', 'RU', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(201, 'Rwanda', 'RW', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(202, 'Canary IS_Old', 'RY', '', 0, '2022-11-03 01:40:51', '2022-11-03 01:40:51'),
(203, 'Saudi Arabia', 'SA', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(204, 'Solomon IS', 'SB', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(205, 'Seychelles', 'SC', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(206, 'Sudan', 'SD', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(207, 'Sweden', 'SE', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(208, 'Singapore', 'SG', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(209, 'Slovenia', 'SI', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(210, 'Svalbard and Jan Mayen', 'SJ', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(211, 'Slovakia', 'SK', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(212, 'Sierra Leone', 'SL', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(213, 'San Marino', 'SM', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(214, 'Senegal', 'SN', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(215, 'Somalia', 'SO', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(216, 'Suriname', 'SR', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(217, 'South Sudan', 'SS', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(218, 'Sao Tome and Principe', 'ST', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(219, 'El Salvador', 'SV', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(220, 'Syria', 'SY', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(221, 'Swaziland', 'SZ', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(222, 'Turks and Caicos IS', 'TC', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(223, 'Chad', 'TD', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(224, 'Togo', 'TG', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(225, 'Thailand', 'TH', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(226, 'Tajikistan', 'TJ', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(227, 'Tokelau', 'TK', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(228, 'Timor-Lestev', 'TL', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(229, 'Turkmenistan', 'TM', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(230, 'Tunisia', 'TN', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(231, 'Tonga', 'TO', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(232, 'East Timor', 'TP', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(233, 'Turkey', 'TR', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(234, 'Trinidad and Tobago', 'TT', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(235, 'Tuvalu', 'TV', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(236, 'Taiwan', 'TW', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(237, 'Tanzania', 'TZ', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(238, 'Ukraine', 'UA', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(239, 'Uganda', 'UG', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(240, 'United States', 'US', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(241, 'Uruguay', 'UY', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(242, 'Uzbekistan', 'UZ', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(243, 'Vatican City', 'VA', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(244, 'St Vincent and Grenadine', 'VC', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(245, 'Venezuela', 'VE', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(246, 'Virgin IS - British', 'VG', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(247, 'Virgin Islands - US', 'VI', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(248, 'Vietnam', 'VN', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(249, 'Vanuatu', 'VU', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(250, 'Wallis and Futuna IS', 'WF', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(251, 'Samoa', 'WS', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(252, 'Kosovo', 'XZ', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(253, 'Yemen', 'YE', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(254, 'Mayotte', 'YT', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(255, 'South Africa', 'ZA', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(256, 'Zambia', 'ZM', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52'),
(257, 'Zimbabwe', 'ZW', '', 0, '2022-11-03 01:40:52', '2022-11-03 01:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

CREATE TABLE `country_states` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'California', 'california', 1, '2022-01-30 09:29:00', '2022-11-02 13:09:56'),
(2, 1, 'Florida', 'florida', 1, '2022-01-30 09:29:07', '2022-11-02 13:09:56'),
(3, 1, 'Alaska', 'alaska', 1, '2022-02-05 07:49:14', '2022-11-02 13:09:56'),
(4, 2, 'Gujarat', 'gujarat', 1, '2022-02-06 04:16:27', '2022-11-02 13:09:57'),
(5, 2, 'Punjab', 'punjab', 1, '2022-02-06 04:16:39', '2022-11-02 13:09:57'),
(6, 2, 'Rajasthan', 'rajasthan', 1, '2022-02-06 04:16:48', '2022-11-02 13:09:58'),
(7, 4, 'England', 'england', 1, '2022-02-06 04:17:35', '2022-11-02 13:09:58'),
(8, 4, 'Scotland', 'scotland', 1, '2022-02-06 04:17:44', '2022-11-02 13:09:59'),
(9, 4, 'Wales', 'wales', 1, '2022-02-06 04:17:53', '2022-11-02 13:09:59'),
(13, 21, 'Al Shamal', 'al-shamal', 1, '2022-11-02 01:12:11', '2022-11-02 01:12:11'),
(14, 21, 'Al Khor', 'al-khor', 1, '2022-11-02 01:12:29', '2022-11-02 01:12:29'),
(15, 21, 'Al Thakhira', 'al-thakhira', 1, '2022-11-02 01:12:42', '2022-11-02 01:12:42'),
(16, 21, 'Al Daayen', 'al-daayen', 1, '2022-11-02 01:12:56', '2022-11-02 01:12:56'),
(17, 21, 'Umm Salal', 'umm-salal', 1, '2022-11-02 01:13:10', '2022-11-02 01:13:10'),
(18, 21, 'Al Rayyan', 'al-rayyan', 1, '2022-11-02 01:13:26', '2022-11-02 01:13:26'),
(19, 21, 'Doha', 'doha', 1, '2022-11-02 01:13:33', '2022-11-02 01:13:33'),
(20, 21, 'Al Sheehaniya', 'al-sheehaniya', 1, '2022-11-02 01:13:45', '2022-11-02 01:13:45'),
(21, 21, 'Al Wakra', 'al-wakra', 1, '2022-11-02 01:13:57', '2022-11-02 01:13:57'),
(22, 16, 'Jeddah', 'jeddah', 1, '2022-11-02 01:18:13', '2022-11-02 01:18:13'),
(23, 16, 'Makkah', 'makkah', 1, '2022-11-02 01:18:30', '2022-11-02 01:18:30'),
(24, 16, 'Ta\'if', 'taif', 1, '2022-11-02 01:18:41', '2022-11-02 01:18:41'),
(25, 16, 'Qunfudhah', 'qunfudhah', 1, '2022-11-02 01:18:51', '2022-11-02 01:18:51'),
(27, 4, 'Dubai', 'dubai', 1, '2022-11-02 15:17:42', '2022-11-02 15:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_type` int NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `max_quantity` int NOT NULL DEFAULT '0',
  `expired_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_qty` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AFA', 'Afghan Afghani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ALL', 'Albanian Lek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'DZD', 'Algerian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'AOA', 'Angolan Kwanza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'ARS', 'Argentine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'AMD', 'Armenian Dram', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'AWG', 'Aruban Florin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'AUD', 'Australian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'AZN', 'Azerbaijani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'BSD', 'Bahamian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'BHD', 'Bahraini Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'BDT', 'Bangladeshi Taka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'BBD', 'Barbadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'BYR', 'Belarusian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'BEF', 'Belgian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'BZD', 'Belize Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'BMD', 'Bermudan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BTN', 'Bhutanese Ngultrum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'BTC', 'Bitcoin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'BOB', 'Bolivian Boliviano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'BAM', 'Bosnia-Herzegovina Convertible Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'BWP', 'Botswanan Pula', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'BRL', 'Brazilian Real', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'GBP', 'British Pound Sterling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'BND', 'Brunei Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'BGN', 'Bulgarian Lev', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'BIF', 'Burundian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'KHR', 'Cambodian Riel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'CAD', 'Canadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'CVE', 'Cape Verdean Escudo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'KYD', 'Cayman Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'XOF', 'CFA Franc BCEAO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'XAF', 'CFA Franc BEAC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'XPF', 'CFP Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'CLP', 'Chilean Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'CNY', 'Chinese Yuan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'COP', 'Colombian Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'KMF', 'Comorian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'CDF', 'Congolese Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'CRC', 'Costa Rican ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'HRK', 'Croatian Kuna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'CUC', 'Cuban Convertible Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'CZK', 'Czech Republic Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'DKK', 'Danish Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'DJF', 'Djiboutian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'DOP', 'Dominican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'XCD', 'East Caribbean Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'EGP', 'Egyptian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'ERN', 'Eritrean Nakfa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'EEK', 'Estonian Kroon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'ETB', 'Ethiopian Birr', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'EUR', 'Euro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'FKP', 'Falkland Islands Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'FJD', 'Fijian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'GMD', 'Gambian Dalasi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'GEL', 'Georgian Lari', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'DEM', 'German Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'GHS', 'Ghanaian Cedi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'GIP', 'Gibraltar Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'GRD', 'Greek Drachma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'GTQ', 'Guatemalan Quetzal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'GNF', 'Guinean Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'GYD', 'Guyanaese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'HTG', 'Haitian Gourde', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'HNL', 'Honduran Lempira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'HKD', 'Hong Kong Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'HUF', 'Hungarian Forint', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'ISK', 'Icelandic KrÃ³na', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'INR', 'Indian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'IDR', 'Indonesian Rupiah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'IRR', 'Iranian Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'IQD', 'Iraqi Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'ILS', 'Israeli New Sheqel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'ITL', 'Italian Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'JMD', 'Jamaican Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'JPY', 'Japanese Yen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'JOD', 'Jordanian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'KZT', 'Kazakhstani Tenge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'KES', 'Kenyan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'KWD', 'Kuwaiti Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'KGS', 'Kyrgystani Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'LAK', 'Laotian Kip', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'LVL', 'Latvian Lats', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'LBP', 'Lebanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'LSL', 'Lesotho Loti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'LRD', 'Liberian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'LYD', 'Libyan Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'LTL', 'Lithuanian Litas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'MOP', 'Macanese Pataca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'MKD', 'Macedonian Denar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'MGA', 'Malagasy Ariary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'MWK', 'Malawian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'MYR', 'Malaysian Ringgit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'MVR', 'Maldivian Rufiyaa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'MRO', 'Mauritanian Ouguiya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'MUR', 'Mauritian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'MXN', 'Mexican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'MDL', 'Moldovan Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'MNT', 'Mongolian Tugrik', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'MAD', 'Moroccan Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'MZM', 'Mozambican Metical', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'MMK', 'Myanmar Kyat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'NAD', 'Namibian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'NPR', 'Nepalese Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'ANG', 'Netherlands Antillean Guilder', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'TWD', 'New Taiwan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'NZD', 'New Zealand Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'NIO', 'Nicaraguan CÃ³rdoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'NGN', 'Nigerian Naira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'KPW', 'North Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'NOK', 'Norwegian Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'OMR', 'Omani Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'PKR', 'Pakistani Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'PAB', 'Panamanian Balboa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'PGK', 'Papua New Guinean Kina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'PYG', 'Paraguayan Guarani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'PEN', 'Peruvian Nuevo Sol', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'PHP', 'Philippine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'PLN', 'Polish Zloty', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'QAR', 'Qatari Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'RON', 'Romanian Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'RUB', 'Russian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'RWF', 'Rwandan Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'SVC', 'Salvadoran ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'WST', 'Samoan Tala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'SAR', 'Saudi Riyal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'RSD', 'Serbian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'SCR', 'Seychellois Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'SLL', 'Sierra Leonean Leone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'SGD', 'Singapore Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'SKK', 'Slovak Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'SBD', 'Solomon Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'SOS', 'Somali Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'ZAR', 'South African Rand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'KRW', 'South Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'XDR', 'Special Drawing Rights', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'LKR', 'Sri Lankan Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'SHP', 'St. Helena Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'SDG', 'Sudanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'SRD', 'Surinamese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'SZL', 'Swazi Lilangeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'SEK', 'Swedish Krona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'CHF', 'Swiss Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'SYP', 'Syrian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'STD', 'São Tomé and Príncipe Dobra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'TJS', 'Tajikistani Somoni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'TZS', 'Tanzanian Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'THB', 'Thai Baht', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'TOP', 'Tongan pa\'anga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'TTD', 'Trinidad & Tobago Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'TND', 'Tunisian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'TRY', 'Turkish Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'TMT', 'Turkmenistani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'UGX', 'Ugandan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'UAH', 'Ukrainian Hryvnia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'AED', 'United Arab Emirates Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'UYU', 'Uruguayan Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'USD', 'US Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'UZS', 'Uzbekistan Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'VUV', 'Vanuatu Vatu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'VEF', 'Venezuelan BolÃ­var', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'VND', 'Vietnamese Dong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'YER', 'Yemeni Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'ZMK', 'Zambian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `currency_countries`
--

CREATE TABLE `currency_countries` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `code` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `currency_countries`
--

INSERT INTO `currency_countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Andorra', 'AD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Afghanistan', 'AF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Åland Islands', 'AX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Albania', 'AL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Algeria', 'DZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'American Samoa', 'AS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Angola', 'AO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Anguilla', 'AI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Antarctica', 'AQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Antigua and Barbuda', 'AG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Argentina', 'AR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Armenia', 'AM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Aruba', 'AW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Australia', 'AU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Austria', 'AT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Azerbaijan', 'AZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bahamas', 'BS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bahrain', 'BH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bangladesh', 'BD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Barbados', 'BB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Belarus', 'BY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Belgium', 'BE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Belize', 'BZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Benin', 'BJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Bermuda', 'BM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bhutan', 'BT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bolivia (Plurinational State of)', 'BO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Bosnia and Herzegovina', 'BA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Botswana', 'BW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Bouvet Island', 'BV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Brazil', 'BR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'British Indian Ocean Territory', 'IO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Brunei Darussalam', 'BN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Bulgaria', 'BG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Burkina Faso', 'BF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Burundi', 'BI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Cabo Verde', 'CV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Cambodia', 'KH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Cameroon', 'CM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Canada', 'CA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Cayman Islands', 'KY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Central African Republic', 'CF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Chad', 'TD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Chile', 'CL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'China', 'CN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Christmas Island', 'CX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Cocos (Keeling) Islands', 'CC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Colombia', 'CO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Comoros', 'KM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Congo', 'CG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Congo (Democratic Republic of the)', 'CD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Cook Islands', 'CK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Costa Rica', 'CR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Côte d\'Ivoire', 'CI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Croatia', 'HR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Cuba', 'CU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Curaçao', 'CW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Cyprus', 'CY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Czech Republic', 'CZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Denmark', 'DK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Djibouti', 'DJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Dominica', 'DM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Dominican Republic', 'DO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Ecuador', 'EC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Egypt', 'EG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'El Salvador', 'SV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Equatorial Guinea', 'GQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Eritrea', 'ER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Estonia', 'EE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Ethiopia', 'ET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Falkland Islands (Malvinas)', 'FK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Faroe Islands', 'FO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Fiji', 'FJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Finland', 'FI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'France', 'FR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'French Guiana', 'GF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'French Polynesia', 'PF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'French Southern Territories', 'TF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Gabon', 'GA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Gambia', 'GM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Georgia', 'GE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Germany', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Ghana', 'GH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Gibraltar', 'GI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Greece', 'GR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Greenland', 'GL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Grenada', 'GD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Guadeloupe', 'GP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Guam', 'GU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Guatemala', 'GT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Guernsey', 'GG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Guinea', 'GN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Guinea-Bissau', 'GW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Guyana', 'GY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Haiti', 'HT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Heard Island and McDonald Islands', 'HM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Holy See', 'VA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Honduras', 'HN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Hong Kong', 'HK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Hungary', 'HU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Iceland', 'IS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'India', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Indonesia', 'ID', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Iran (Islamic Republic of)', 'IR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Iraq', 'IQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Ireland', 'IE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Isle of Man', 'IM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Israel', 'IL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Italy', 'IT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Jamaica', 'JM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Japan', 'JP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Jersey', 'JE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Jordan', 'JO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Kazakhstan', 'KZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Kenya', 'KE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Kiribati', 'KI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Korea (Democratic People\'s Republic of)', 'KP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Korea (Republic of)', 'KR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Kuwait', 'KW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Kyrgyzstan', 'KG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Lao People\'s Democratic Republic', 'LA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Latvia', 'LV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Lebanon', 'LB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Lesotho', 'LS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Liberia', 'LR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Libya', 'LY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Liechtenstein', 'LI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Lithuania', 'LT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Luxembourg', 'LU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Macao', 'MO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Macedonia (the former Yugoslav Republic of)', 'MK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Madagascar', 'MG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Malawi', 'MW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Malaysia', 'MY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Maldives', 'MV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Mali', 'ML', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Malta', 'MT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Marshall Islands', 'MH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Martinique', 'MQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Mauritania', 'MR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Mauritius', 'MU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Mayotte', 'YT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Mexico', 'MX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Micronesia (Federated States of)', 'FM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Moldova (Republic of)', 'MD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Monaco', 'MC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Mongolia', 'MN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Montenegro', 'ME', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Montserrat', 'MS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Morocco', 'MA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Mozambique', 'MZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Myanmar', 'MM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Namibia', 'NA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Nauru', 'NR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Nepal', 'NP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Netherlands', 'NL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'New Caledonia', 'NC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'New Zealand', 'NZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Nicaragua', 'NI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Niger', 'NE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Nigeria', 'NG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Niue', 'NU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Norfolk Island', 'NF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Northern Mariana Islands', 'MP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Norway', 'NO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Oman', 'OM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Pakistan', 'PK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Palau', 'PW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Palestine, State of', 'PS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Panama', 'PA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Papua New Guinea', 'PG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Paraguay', 'PY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Peru', 'PE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Philippines', 'PH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Pitcairn', 'PN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Poland', 'PL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Portugal', 'PT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Puerto Rico', 'PR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Qatar', 'QA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Réunion', 'RE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Romania', 'RO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Russian Federation', 'RU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Rwanda', 'RW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Saint Barthélemy', 'BL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Saint Kitts and Nevis', 'KN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Saint Lucia', 'LC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Saint Martin (French part)', 'MF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Saint Pierre and Miquelon', 'PM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Saint Vincent and the Grenadines', 'VC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Samoa', 'WS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'San Marino', 'SM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Sao Tome and Principe', 'ST', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Saudi Arabia', 'SA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Senegal', 'SN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Serbia', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Seychelles', 'SC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Sierra Leone', 'SL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Singapore', 'SG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Sint Maarten (Dutch part)', 'SX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Slovakia', 'SK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Slovenia', 'SI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Solomon Islands', 'SB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Somalia', 'SO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'South Africa', 'ZA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'South Georgia and the South Sandwich Islands', 'GS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'South Sudan', 'SS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Spain', 'ES', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Sri Lanka', 'LK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Sudan', 'SD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Suriname', 'SR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Svalbard and Jan Mayen', 'SJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Swaziland', 'SZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Sweden', 'SE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Switzerland', 'CH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Syrian Arab Republic', 'SY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Taiwan, Province of China', 'TW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Tajikistan', 'TJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Tanzania, United Republic of', 'TZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Thailand', 'TH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Timor-Leste', 'TL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Togo', 'TG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Tokelau', 'TK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Tonga', 'TO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Trinidad and Tobago', 'TT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Tunisia', 'TN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Turkey', 'TR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Turkmenistan', 'TM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Turks and Caicos Islands', 'TC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Tuvalu', 'TV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Uganda', 'UG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Ukraine', 'UA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'United Arab Emirates', 'AE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'United Kingdom of Great Britain and Northern Ireland', 'GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'United States Minor Outlying Islands', 'UM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'United States of America', 'US', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Uruguay', 'UY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Uzbekistan', 'UZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Vanuatu', 'VU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Venezuela (Bolivarian Republic of)', 'VE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Viet Nam', 'VN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Virgin Islands (British)', 'VG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Virgin Islands (U.S.)', 'VI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Wallis and Futuna', 'WF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Western Sahara', 'EH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'Yemen', 'YE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'Zambia', 'ZM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Zimbabwe', 'ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_paginations`
--

CREATE TABLE `custom_paginations` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_paginations`
--

INSERT INTO `custom_paginations` (`id`, `page_name`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Blog Page', 6, NULL, '2022-02-07 08:39:56'),
(2, 'Product Page', 12, NULL, '2022-01-30 10:23:33'),
(3, 'Brand Page', 10, NULL, '2022-06-11 11:13:13'),
(4, 'Blog Comment', 4, NULL, '2022-06-11 11:13:13'),
(5, 'Product Review', 8, NULL, '2022-06-11 11:13:13'),
(6, 'Seller page', 8, NULL, '2022-06-11 11:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint UNSIGNED NOT NULL,
  `mail_type` tinyint DEFAULT NULL,
  `mail_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `mail_type`, `mail_host`, `mail_port`, `email`, `smtp_username`, `smtp_password`, `mail_encryption`, `created_at`, `updated_at`) VALUES
(1, 2, 'mail.quomodosoft.xyz', '465', 'admin@quomodosoft.xyz', 'admin@quomodosoft.xyz', 'b=P&8xHzN;m0', 'ssl', NULL, '2022-10-27 07:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Password Reset', 'Password Reset', '<h4>Dear <b>{{name}}</b>,</h4>\\r\\n    <p>Do you want to reset your password? Please Copy and past this code</p>', NULL, '2022-06-11 10:43:01'),
(2, 'Contact Email', 'Contact Email', '<p>Name: <b>{{name}}</b></p><p>\r\n\r\nEmail: <b>{{email}}</b></p><p>\r\n\r\nPhone: <b>{{phone}}</b></p><p><span style=\"background-color: transparent;\">Subject: <b>{{subject}}</b></span></p><p>\r\n\r\nMessage: <b>{{message}}</b></p>', NULL, '2021-12-10 23:44:34'),
(3, 'Subscribe Notification', 'Subscribe Notification', '<h2><b>Hi there</b>,</h2><p>\r\nCongratulations! Your Subscription has been created successfully. Please copy and past this code and Verified Your Subscription. If you won\'t verified, after 24hourse your subscription will be deny</p>', NULL, '2021-12-10 23:44:53'),
(4, 'User Verification', 'User Verification', '<p>Dear <b>{{user_name}}</b>,\r\n</p><p>Congratulations! Your Account has been created successfully. Please copy and past and Active your Account.</p>', NULL, '2021-12-10 23:45:25'),
(5, 'Seller Withdraw', 'Seller Withdraw Approval', '<p>Hi <b>{{seller_name}}</b>,</p><p>Your withdraw Request Approval successfully. Please check your account.</p><p>Withdraw Details:</p><p>Withdraw method : <b>{{withdraw_method}}</b>,</p><p>Total Amount :<b> {{total_amount}}</b>,</p><p>Withdraw charge : <b>{{withdraw_charge}}</b>,</p><p>Withdraw&nbsp; Amount : <b>{{withdraw_amount}}</b>,</p><p>Approval Date :<b> {{approval_date}}</b></p>', NULL, '2021-12-26 03:24:45'),
(6, 'Order Successfully', 'Order Successfully', '<p>Hi {{user_name}},</p><p> \r\nThanks for your new order. Your order id has been submited .</p><p>Total Amount : {{total_amount}},</p><p>Payment Method : {{payment_method}},</p><p>Payment Status : {{payment_status}},</p><p>Order Status : {{order_status}},</p><p>Order Date: {{order_date}},</p><p>Order Detail: {{order_detail}}</p>', NULL, '2022-01-10 21:37:03'),
(7, 'Seller Request Approved', 'Seller Request Approved', '<p>Hi {{name}},\r\n</p><p><span style=\"background-color: transparent;\">Congratulations !!&nbsp;</span>Your Shop account has been approved successfully</p>', NULL, '2022-02-05 08:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `error_pages`
--

CREATE TABLE `error_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `error_pages`
--

INSERT INTO `error_pages` (`id`, `page_name`, `image`, `header`, `button_text`, `created_at`, `updated_at`) VALUES
(1, '404 page', '404.jpg', 'page not found', 'Go to Home', NULL, '2022-11-01 20:37:33'),
(2, '500 Error', '500.jpg', 'the server encountered an unexpected condition that prevented it from fulfilling the request', 'Go to Home', NULL, '2022-11-01 20:38:05'),
(3, '505 Error', '505.jpg', 'the HTTP version used in the request is not supported by the server', 'Go to Home', NULL, '2022-11-01 20:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_comments`
--

CREATE TABLE `facebook_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_type` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_comments`
--

INSERT INTO `facebook_comments` (`id`, `app_id`, `comment_type`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, NULL, '2022-06-11 11:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_pixels`
--

CREATE TABLE `facebook_pixels` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_pixels`
--

INSERT INTO `facebook_pixels` (`id`, `status`, `app_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'fsdf45sdf4sdf', NULL, '2022-06-11 11:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_categories`
--

CREATE TABLE `featured_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_categories`
--

INSERT INTO `featured_categories` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 10, '2022-09-21 08:43:30', '2022-09-21 08:43:30'),
(2, 4, '2022-09-21 08:43:37', '2022-09-21 08:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `flashsale_page_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` datetime NOT NULL,
  `offer` double NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `title`, `homepage_image`, `flashsale_page_image`, `end_time`, `offer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Flash Sale edit', 'uploads/website-images/flash_sale--2022-09-25-04-09-21-6554.png', 'uploads/website-images/flash_sale--2022-09-20-10-54-12-8555.png', '2025-09-14 14:57:00', 10, 1, NULL, '2022-09-25 10:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_products`
--

INSERT INTO `flash_sale_products` (`id`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-09-20 08:02:41', '2022-09-20 08:02:41'),
(2, 2, 1, '2022-09-20 08:02:45', '2022-09-20 08:02:45'),
(3, 3, 1, '2022-09-20 08:02:48', '2022-09-20 08:02:48'),
(4, 4, 1, '2022-09-20 08:02:52', '2022-09-20 08:02:52'),
(5, 8, 1, '2022-09-20 08:02:56', '2022-09-20 08:02:56'),
(6, 9, 1, '2022-09-20 08:03:01', '2022-09-20 08:03:01'),
(7, 11, 1, '2022-09-20 08:03:05', '2022-09-20 08:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `flutterwaves`
--

CREATE TABLE `flutterwaves` (
  `id` bigint UNSIGNED NOT NULL,
  `public_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flutterwaves`
--

INSERT INTO `flutterwaves` (`id`, `public_key`, `secret_key`, `currency_rate`, `country_code`, `currency_code`, `title`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X', 'FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X', 417.35, 'NG', 'NGN', 'Ecommerce', 'uploads/website-images/flutterwave-2021-12-30-03-44-30-8813.jpg', 0, NULL, '2022-11-01 20:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint UNSIGNED NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `phone`, `email`, `address`, `first_column`, `second_column`, `third_column`, `copyright`, `payment_image`, `created_at`, `updated_at`) VALUES
(1, '+88 01682 825 123', 'abdur.rohman2003@gmail.com', 'Mirpur 11 ,Dhaka 1216 Bangladesh', 'Feature', 'General Links', 'Helpful', '©2022 Quomodosoft All rights reserved', 'uploads/website-images/payment-card-2022-09-26-12-59-29-8933.png', NULL, '2022-09-26 07:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `footer_links`
--

CREATE TABLE `footer_links` (
  `id` bigint UNSIGNED NOT NULL,
  `column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_links`
--

INSERT INTO `footer_links` (`id`, `column`, `link`, `title`, `created_at`, `updated_at`) VALUES
(1, '1', 'https://shopo-ecom.vercel.app/about', 'About Us', '2022-09-20 08:19:02', '2022-09-26 09:56:32'),
(2, '1', 'https://shopo-ecom.vercel.app/terms-condition', 'Terms Condition', '2022-09-20 08:19:15', '2022-09-26 09:56:38'),
(3, '1', 'https://shopo.quomodosoft.xyz/Documentation', 'Documentation', '2022-09-20 08:19:24', '2022-09-26 07:14:56'),
(4, '2', 'https://shopo-ecom.vercel.app/blogs', 'Blog', '2022-09-20 08:19:38', '2022-09-26 09:56:12'),
(5, '2', 'https://shopo-ecom.vercel.app/sallers', 'shop', '2022-09-20 08:19:46', '2022-09-26 09:56:17'),
(6, '2', 'https://shopo-ecom.vercel.app/faq', 'Support', '2022-09-20 08:19:52', '2022-09-26 09:56:22'),
(7, '3', 'https://shopo-ecom.vercel.app/about', 'About Us', '2022-09-20 08:20:05', '2022-09-26 09:55:52'),
(8, '3', 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'Popular Category', '2022-09-20 08:20:11', '2022-09-26 09:55:38'),
(9, '3', 'https://shopo-ecom.vercel.app/contact', 'Contact Us', '2022-09-20 08:20:19', '2022-09-26 09:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `footer_social_links`
--

CREATE TABLE `footer_social_links` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_social_links`
--

INSERT INTO `footer_social_links` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'fab fa-facebook-f', '2022-09-20 08:18:12', '2022-09-20 08:18:12'),
(2, 'https://twitter.com/mexuv', 'fab fa-twitter', '2022-09-20 08:18:29', '2022-09-28 04:35:50'),
(3, 'https://linkedin.com/', 'fab fa-linkedin', '2022-09-20 08:18:43', '2022-09-20 08:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` bigint UNSIGNED NOT NULL,
  `analytic_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_analytics`
--

INSERT INTO `google_analytics` (`id`, `analytic_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '5248-fd-5fds', 1, NULL, '2022-06-11 11:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `google_recaptchas`
--

CREATE TABLE `google_recaptchas` (
  `id` bigint UNSIGNED NOT NULL,
  `site_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_recaptchas`
--

INSERT INTO `google_recaptchas` (`id`, `site_key`, `secret_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 1, NULL, '2022-06-11 11:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_one_visibilities`
--

CREATE TABLE `home_page_one_visibilities` (
  `id` bigint UNSIGNED NOT NULL,
  `default_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `qty` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_one_visibilities`
--

INSERT INTO `home_page_one_visibilities` (`id`, `default_name`, `section_name`, `status`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Slider', 'Slider', 1, 6, NULL, '2022-06-14 06:30:37'),
(2, 'Our Service', 'Our Service', 1, 6, NULL, '2022-06-14 06:29:47'),
(4, 'Popular Category', 'Popular Categories', 1, 24, NULL, '2022-06-14 06:29:47'),
(5, 'Brand', 'Our Brand', 1, 12, NULL, '2022-06-14 06:29:47'),
(6, 'Top Rated Product', 'Top Rated Product', 1, 16, NULL, '2022-06-14 06:29:47'),
(7, 'Best Seller', 'Best Sellers', 1, 8, NULL, '2022-06-14 06:29:47'),
(8, 'Featured Product', 'Featured Products', 1, 15, NULL, '2022-06-14 06:29:47'),
(9, 'New Arrival', 'New Arrival', 1, 19, NULL, '2022-06-14 06:29:47'),
(10, 'Best Product', 'Best Product', 1, 16, NULL, '2022-06-14 06:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `instamojo_payments`
--

CREATE TABLE `instamojo_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `api_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `account_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sandbox',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instamojo_payments`
--

INSERT INTO `instamojo_payments` (`id`, `api_key`, `auth_token`, `currency_rate`, `account_mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test_5f4a2c9a58ef216f8a1a688910f', 'test_994252ada69ce7b3d282b9941c2', '74.66', 'Sandbox', 0, NULL, '2022-11-01 20:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `maintainance_texts`
--

CREATE TABLE `maintainance_texts` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintainance_texts`
--

INSERT INTO `maintainance_texts` (`id`, `status`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 'uploads/website-images/maintainance-mode-2022-09-20-02-13-54-5890.png', 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.', NULL, '2022-09-20 08:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menu_categories`
--

CREATE TABLE `mega_menu_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mega_menu_categories`
--

INSERT INTO `mega_menu_categories` (`id`, `category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-09-20 07:06:01', '2022-09-20 07:06:01'),
(2, 2, 1, 2, '2022-09-20 07:07:39', '2022-09-20 07:07:39'),
(3, 10, 1, 3, '2022-09-20 07:11:07', '2022-09-20 07:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menu_sub_categories`
--

CREATE TABLE `mega_menu_sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `mega_menu_category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mega_menu_sub_categories`
--

INSERT INTO `mega_menu_sub_categories` (`id`, `mega_menu_category_id`, `sub_category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2022-09-20 07:06:23', '2022-09-20 07:06:23'),
(2, 1, 2, 1, 2, '2022-09-20 07:06:34', '2022-09-20 07:06:34'),
(3, 1, 3, 1, 3, '2022-09-20 07:06:47', '2022-09-20 07:06:47'),
(4, 2, 4, 1, 1, '2022-09-20 07:10:04', '2022-09-20 07:10:04'),
(5, 2, 5, 1, 2, '2022-09-20 07:10:18', '2022-09-20 07:10:18'),
(6, 2, 6, 1, 3, '2022-09-20 07:10:29', '2022-09-20 07:10:29'),
(7, 3, 7, 1, 1, '2022-09-20 07:12:13', '2022-09-20 07:12:13'),
(8, 3, 8, 1, 2, '2022-09-20 07:12:22', '2022-09-20 07:12:22'),
(9, 3, 9, 1, 3, '2022-09-20 07:12:29', '2022-09-20 07:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_visibilities`
--

CREATE TABLE `menu_visibilities` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_visibilities`
--

INSERT INTO `menu_visibilities` (`id`, `menu_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 1, NULL, '2022-01-23 20:05:32'),
(2, 'Shop', 1, NULL, '2022-01-23 20:05:31'),
(3, 'Mega Menu', 1, NULL, '2022-01-16 20:51:23'),
(4, 'Sellers', 1, NULL, '2022-01-16 20:52:31'),
(5, 'Blog', 1, NULL, '2022-01-16 20:52:32'),
(6, 'Campaign', 1, NULL, '2022-01-16 20:52:33'),
(7, 'Pages', 1, NULL, '2022-01-16 20:52:34'),
(8, 'About us', 1, NULL, '2022-01-16 20:57:27'),
(9, 'Contact Us', 1, NULL, '2022-01-16 20:57:28'),
(10, 'Checkout', 1, NULL, '2022-01-16 20:57:29'),
(11, 'Brand', 1, NULL, '2022-01-16 20:57:25'),
(12, 'FAQ', 1, NULL, '2022-01-16 20:57:26'),
(13, 'Privacy Policy', 1, NULL, '2022-01-16 20:57:23'),
(14, 'Terms and Conditions', 1, NULL, '2022-01-16 20:57:22'),
(15, 'Track Order', 1, NULL, '2022-01-16 20:52:29'),
(16, 'Flash Deal', 1, NULL, '2022-01-16 20:52:28'),
(17, 'My Account', 1, NULL, '2022-01-16 20:04:54'),
(18, 'Login/Register', 1, NULL, '2022-01-16 20:04:47'),
(19, 'Shopping Cart', 1, NULL, '2022-01-16 20:09:28'),
(20, 'Compare', 1, NULL, '2022-01-16 20:37:54'),
(21, 'Wishlist', 1, NULL, '2022-01-16 20:37:55'),
(22, 'Topbar Phone', 1, NULL, '2022-01-16 20:02:07'),
(23, 'Menu Phone', 1, NULL, '2022-01-16 20:08:00'),
(24, 'Categories', 1, NULL, '2022-01-16 23:52:39'),
(25, 'Search', 1, NULL, '2022-01-16 20:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_read_msg` int NOT NULL DEFAULT '0',
  `seller_read_msg` int NOT NULL,
  `send_customer` int NOT NULL DEFAULT '0',
  `send_seller` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_30_035230_create_admins_table', 2),
(6, '2021_11_30_065435_create_email_configurations_table', 3),
(7, '2021_11_30_065508_create_email_templates_table', 3),
(8, '2021_12_01_035206_create_categories_table', 4),
(9, '2021_12_01_035220_create_sub_categories_table', 4),
(10, '2021_12_01_035231_create_child_categories_table', 4),
(11, '2021_12_01_035735_create_brands_table', 4),
(12, '2021_12_02_055907_create_product_taxes_table', 5),
(13, '2021_12_02_083742_create_return_policies_table', 6),
(14, '2021_12_02_084030_create_product_specification_keys_table', 6),
(15, '2021_12_03_093645_create_products_table', 7),
(16, '2021_12_03_101949_create_product_galleries_table', 7),
(17, '2021_12_04_053018_create_product_specifications_table', 8),
(18, '2021_12_06_045447_create_services_table', 9),
(19, '2021_12_06_054423_create_about_us_table', 10),
(20, '2021_12_06_055028_create_custom_pages_table', 10),
(21, '2021_12_07_030532_create_terms_and_conditions_table', 11),
(22, '2021_12_07_035810_create_blog_categories_table', 12),
(23, '2021_12_07_035822_create_blogs_table', 12),
(24, '2021_12_07_040749_create_popular_posts_table', 12),
(25, '2021_12_07_061613_create_blog_comments_table', 13),
(26, '2021_12_07_081832_create_product_variants_table', 14),
(27, '2021_12_07_081858_create_product_variant_items_table', 14),
(28, '2021_12_08_125540_create_campaigns_table', 15),
(29, '2021_12_08_130025_create_campaign_products_table', 15),
(30, '2021_12_09_095158_create_contact_messages_table', 16),
(31, '2021_12_09_095220_create_subscribers_table', 16),
(32, '2021_12_09_124226_create_settings_table', 17),
(33, '2021_12_11_022207_create_cookie_consents_table', 18),
(34, '2021_12_11_025358_create_google_recaptchas_table', 19),
(35, '2021_12_11_025449_create_facebook_comments_table', 19),
(36, '2021_12_11_025556_create_tawk_chats_table', 19),
(37, '2021_12_11_025618_create_google_analytics_table', 19),
(38, '2021_12_11_025712_create_custom_paginations_table', 19),
(39, '2021_12_11_083503_create_faqs_table', 20),
(40, '2021_12_11_094707_create_currencies_table', 21),
(41, '2021_12_13_085612_create_product_reviews_table', 22),
(42, '2021_12_13_090609_create_product_review_galleries_table', 22),
(43, '2021_12_13_101056_create_error_pages_table', 23),
(44, '2021_12_13_102725_create_maintainance_texts_table', 24),
(45, '2021_12_13_110144_create_subscribe_modals_table', 25),
(46, '2021_12_13_111140_create_announcement_modals_table', 26),
(47, '2021_12_13_132626_create_countries_table', 27),
(48, '2021_12_13_132909_create_country_states_table', 27),
(49, '2021_12_13_132935_create_cities_table', 27),
(50, '2021_12_14_032937_create_social_login_information_table', 28),
(51, '2021_12_14_042928_create_facebook_pixels_table', 29),
(52, '2021_12_14_054908_create_paypal_payments_table', 30),
(53, '2021_12_14_054922_create_stripe_payments_table', 30),
(54, '2021_12_14_054939_create_razorpay_payments_table', 30),
(55, '2021_12_14_055252_create_bank_payments_table', 30),
(56, '2021_12_14_084759_create_vendors_table', 31),
(57, '2021_12_14_090013_create_vendor_social_links_table', 31),
(58, '2021_12_15_095059_create_wholesells_table', 32),
(59, '2021_12_16_071213_create_seller_mail_logs_table', 33),
(60, '2021_12_21_093939_create_mega_menu_categories_table', 34),
(61, '2021_12_21_093958_create_mega_menu_sub_categories_table', 34),
(62, '2021_12_22_034106_create_banner_images_table', 35),
(63, '2021_12_22_044839_create_sliders_table', 36),
(64, '2021_12_22_081311_create_popular_categories_table', 37),
(65, '2021_12_23_021844_create_three_column_categories_table', 38),
(66, '2021_12_23_033230_create_shipping_methods_table', 39),
(67, '2021_12_23_065722_create_paystack_and_mollies_table', 40),
(68, '2021_12_23_085225_create_withdraw_methods_table', 41),
(71, '2021_12_25_172918_create_seller_withdraws_table', 42),
(74, '2021_12_25_200413_create_product_reports_table', 43),
(75, '2021_12_25_200707_create_product_report_images_table', 44),
(79, '2021_12_26_052326_create_billing_addresses_table', 45),
(80, '2021_12_26_053952_create_shipping_addresses_table', 45),
(81, '2021_12_26_054841_create_orders_table', 45),
(82, '2021_12_26_164912_create_order_addresses_table', 45),
(83, '2021_12_26_165705_create_order_products_table', 45),
(84, '2021_12_26_170803_create_order_product_variants_table', 45),
(87, '2021_12_28_163200_create_coupons_table', 46),
(88, '2021_12_28_192057_create_contact_pages_table', 47),
(89, '2021_12_28_200846_create_breadcrumb_images_table', 48),
(90, '2021_12_30_032959_create_flutterwaves_table', 49),
(91, '2021_12_30_034716_create_footers_table', 50),
(92, '2021_12_30_035201_create_footer_links_table', 50),
(93, '2021_12_30_035247_create_footer_social_links_table', 50),
(95, '2021_12_30_061157_create_home_page_one_visibilities_table', 51),
(96, '2022_01_11_103950_create_wishlists_table', 52),
(97, '2022_01_12_070110_create_shop_pages_table', 53),
(99, '2022_01_12_080218_create_seo_settings_table', 54),
(100, '2022_01_17_012111_create_menu_visibilities_table', 55),
(101, '2022_01_17_122016_create_instamojo_payments_table', 56),
(102, '2022_01_29_055523_create_messages_table', 57),
(103, '2022_01_29_122621_create_pusher_credentails_table', 58),
(104, '2022_04_27_083907_create_shopping_carts_table', 59),
(105, '2022_04_27_084235_create_shopping_cart_variants_table', 59),
(106, '2022_06_11_095338_create_testimonials_table', 60),
(107, '2022_06_13_053409_create_flash_sales_table', 61),
(108, '2022_06_13_053644_create_flash_sale_products_table', 62),
(109, '2022_06_14_102451_create_shippings_table', 63),
(112, '2022_06_19_073137_create_addresses_table', 64),
(113, '2022_06_19_093939_create_compare_products_table', 65),
(114, '2022_07_27_101723_create_featured_categories_table', 66);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `total_amount` double NOT NULL DEFAULT '0',
  `product_qty` int NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` int NOT NULL DEFAULT '0',
  `payment_approval_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transection_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` double NOT NULL DEFAULT '0',
  `tracking` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_coast` double NOT NULL DEFAULT '0',
  `order_status` int NOT NULL DEFAULT '0',
  `order_approval_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivered_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_completed_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_declined_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_on_delivery` int NOT NULL DEFAULT '0',
  `additional_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_amount`, `product_qty`, `payment_method`, `payment_status`, `payment_approval_date`, `transection_id`, `shipping_method`, `shipping_cost`, `tracking`, `coupon_coast`, `order_status`, `order_approval_date`, `order_delivered_date`, `order_completed_date`, `order_declined_date`, `cash_on_delivery`, `additional_info`, `created_at`, `updated_at`) VALUES
(1, '477710734', 5, 22, 2, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, NULL, 0, 3, '2022-09-21', '2022-09-21', '2022-09-21', NULL, 1, NULL, '2022-09-21 05:49:58', '2022-09-21 05:52:48'),
(2, '77398553', 4, 11, 1, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, NULL, 0, 2, NULL, '2022-09-21', NULL, NULL, 1, NULL, '2022-09-21 07:35:53', '2022-09-21 12:03:41'),
(3, '1001561796', 4, 1401.75, 12, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, NULL, 0, 2, NULL, '2022-09-21', NULL, NULL, 1, NULL, '2022-09-21 07:38:18', '2022-09-21 08:24:40'),
(4, '88552801', 5, 77, 7, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 2, '2022-09-21', '2022-09-21', NULL, NULL, 1, NULL, '2022-09-21 08:23:42', '2022-09-21 08:25:04'),
(5, '392080209', 6, 22, 2, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, NULL, 0, 3, NULL, NULL, '2022-09-21', NULL, 1, NULL, '2022-09-21 10:10:09', '2022-09-21 12:03:35'),
(6, '1056209451', 6, 11, 1, 'Mollie', 1, NULL, 'tr_TJe8rF9e7s', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, '2022-09-21 10:20:41', '2022-09-21 10:20:41'),
(7, '342810636', 6, 11, 1, 'Mollie', 1, NULL, 'tr_Gf2sJkauNw', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, '2022-09-21 10:26:15', '2022-09-21 10:26:15'),
(8, '1312138593', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-21 14:38:01', '2022-09-21 14:38:01'),
(9, '409338365', 5, 155.99, 7, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(10, '287219193', 6, 5000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-21 16:04:14', '2022-09-21 16:04:14'),
(11, '1407165165', 5, 910.1, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-22 04:20:00', '2022-09-22 04:20:00'),
(12, '722197958', 13, 15000, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-22 05:49:56', '2022-09-22 05:49:56'),
(13, '135791419', 5, 100.99, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 1, '2022-09-25', NULL, NULL, NULL, 1, NULL, '2022-09-23 17:11:58', '2022-09-25 12:22:45'),
(14, '352829076', 5, 5000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 2, NULL, '2022-09-25', NULL, NULL, 1, NULL, '2022-09-24 05:07:17', '2022-09-25 12:22:37'),
(15, '393840544', 7, 9.99, 1, 'Paypal', 1, NULL, 'PAYID-MMXU62A00B560099X7604116', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, '2022-09-24 18:41:59', '2022-09-24 18:41:59'),
(16, '1341414190', 7, 11, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 3, NULL, NULL, '2022-09-25', NULL, 1, NULL, '2022-09-25 06:34:28', '2022-09-25 12:21:47'),
(17, '889377016', 13, 133, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-25 12:30:24', '2022-09-25 12:30:24'),
(18, '1078403322', 13, 120000, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 04:29:40', '2022-09-26 04:29:40'),
(19, '134354270', 5, 80000, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 06:17:07', '2022-09-26 06:17:07'),
(20, '1440255744', 3, 89.99, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 06:27:39', '2022-09-26 06:27:39'),
(21, '1581228571', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 07:49:46', '2022-09-26 07:49:46'),
(22, '435181413', 5, 40000, 1, 'Bank Payment', 0, NULL, 'bbj', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 07:50:48', '2022-09-26 07:50:48'),
(23, '1318464376', 13, 2360000, 59, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 08:08:58', '2022-09-26 08:08:58'),
(24, '1353531553', 7, 179.98, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 08:25:32', '2022-09-26 08:25:32'),
(25, '1044150415', 7, 150000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 11:17:16', '2022-09-26 11:17:16'),
(26, '1155733181', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 15:29:08', '2022-09-26 15:29:08'),
(27, '111453302', 5, 5000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 15:35:47', '2022-09-26 15:35:47'),
(28, '650118582', 5, 89.99, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 16:28:11', '2022-09-26 16:28:11'),
(29, '745308887', 5, 1807.19, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 17:49:52', '2022-09-26 17:49:52'),
(30, '1235533632', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-26 18:19:41', '2022-09-26 18:19:41'),
(31, '881855241', 13, 120000, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-27 05:19:30', '2022-09-27 05:19:30'),
(32, '1357194261', 7, 399, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-27 07:50:40', '2022-09-27 07:50:40'),
(33, '1352443855', 5, 40399, 4, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-27 10:33:32', '2022-09-27 10:33:32'),
(34, '1135470081', 5, 15000, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-27 11:19:43', '2022-09-27 11:19:43'),
(35, '438531317', 5, 1798.2, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-27 11:20:35', '2022-09-27 11:20:35'),
(36, '738884584', 7, 179.98, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-27 08:34:55', '2022-10-27 08:34:55'),
(37, '1542213579', 1825, 50000, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, NULL, 0, 4, NULL, NULL, NULL, '2022-11-03', 1, NULL, '2022-11-03 02:24:59', '2022-11-03 12:08:14'),
(38, '681389507', 1825, 120000, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, '34057228940', 0, 0, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-03 03:26:09', '2022-11-03 03:26:09'),
(39, '252821189', 1825, 899.1, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, '34057232672', 0, 4, NULL, NULL, NULL, '2022-11-03', 1, NULL, '2022-11-03 12:05:30', '2022-11-03 12:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `order_addresses`
--

CREATE TABLE `order_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `billing_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_addresses`
--

INSERT INTO `order_addresses` (`id`, `order_id`, `billing_name`, `billing_email`, `billing_phone`, `billing_address`, `billing_country`, `billing_state`, `billing_city`, `billing_address_type`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_address_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-21 05:49:58', '2022-09-21 05:49:58'),
(2, 2, 'Reprehenderit in ni Aliquid dolor labori', 'Quo culpa et offici', 'Architecto quis assu', 'Porro minima consect', 'India', 'Gujarat', 'Gandhinagar', '1', 'Reprehenderit in ni Aliquid dolor labori', 'Quo culpa et offici', 'Architecto quis assu', 'Porro minima consect', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-21 07:35:53', '2022-09-21 07:35:53'),
(3, 3, 'Reprehenderit in ni Aliquid dolor labori', 'Quo culpa et offici', 'Architecto quis assu', 'Porro minima consect', 'India', 'Gujarat', 'Gandhinagar', '1', 'Reprehenderit in ni Aliquid dolor labori', 'Quo culpa et offici', 'Architecto quis assu', 'Porro minima consect', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(4, 4, 'dsds dsdsd', 'marohman74@gmail.com', '1212121212121', 'sdsdsd', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-21 08:23:42', '2022-09-21 08:23:42'),
(5, 5, 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kind', 'England', 'London', 'home', 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kindom', 'England', 'London', 'home', '2022-09-21 10:10:09', '2022-09-21 10:10:09'),
(6, 6, 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kind', 'England', 'London', 'home', 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kindom', 'England', 'London', 'home', '2022-09-21 10:20:41', '2022-09-21 10:20:41'),
(7, 7, 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kind', 'England', 'London', 'home', 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kindom', 'England', 'London', 'home', '2022-09-21 10:26:15', '2022-09-21 10:26:15'),
(8, 8, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-21 14:38:01', '2022-09-21 14:38:01'),
(9, 9, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(10, 10, 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kind', 'England', 'London', 'home', 'nayeem', 'nayeem@gmail.com', '1234', 'lonon', 'United Kindom', 'England', 'London', 'home', '2022-09-21 16:04:14', '2022-09-21 16:04:14'),
(11, 11, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-22 04:20:00', '2022-09-22 04:20:00'),
(12, 12, 'hello,', 'ushh@gmail.com', '84619', 'jahh', 'United Kind', 'England', 'London', 'home', 'hello,', 'ushh@gmail.com', '84619', 'jahh', 'United Kindom', 'England', 'London', 'home', '2022-09-22 05:49:56', '2022-09-22 05:49:56'),
(13, 13, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-23 17:11:58', '2022-09-23 17:11:58'),
(14, 14, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-24 05:07:17', '2022-09-24 05:07:17'),
(15, 15, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-24 18:41:59', '2022-09-24 18:41:59'),
(16, 16, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-25 06:34:28', '2022-09-25 06:34:28'),
(17, 17, 'hello,', 'ushh@gmail.com', '84619', 'jahh', 'United Kind', 'England', 'London', 'home', 'hello,', 'ushh@gmail.com', '84619', 'jahh', 'United Kindom', 'England', 'London', 'home', '2022-09-25 12:30:24', '2022-09-25 12:30:24'),
(18, 18, 'hello,', 'ushh@gmail.com', '84619', 'jahh', 'United Kind', 'England', 'London', 'home', 'hello,', 'ushh@gmail.com', '84619', 'jahh', 'United Kindom', 'England', 'London', 'home', '2022-09-26 04:29:40', '2022-09-26 04:29:40'),
(19, 19, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 06:17:07', '2022-09-26 06:17:07'),
(20, 20, 'Cumque quaerat facil Incidunt earum nisi', 'Officiis sunt ut sit', 'Rerum perspiciatis', 'Nisi odio dolore eiu', 'India', 'Gujarat', 'Gandhinagar', '1', 'Cumque quaerat facil Incidunt earum nisi', 'Officiis sunt ut sit', 'Rerum perspiciatis', 'Nisi odio dolore eiu', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-26 06:27:39', '2022-09-26 06:27:39'),
(21, 21, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 07:49:46', '2022-09-26 07:49:46'),
(22, 22, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 07:50:48', '2022-09-26 07:50:48'),
(23, 23, 'hello,', 'ushh@gmail.com', '84619', 'jahh', 'United Kind', 'England', 'London', 'home', 'hello,', 'ushh@gmail.com', '84619', 'jahh', 'United Kindom', 'England', 'London', 'home', '2022-09-26 08:08:58', '2022-09-26 08:08:58'),
(24, 24, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-26 08:25:32', '2022-09-26 08:25:32'),
(25, 25, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-26 11:17:16', '2022-09-26 11:17:16'),
(26, 26, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 15:29:08', '2022-09-26 15:29:08'),
(27, 27, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 15:35:47', '2022-09-26 15:35:47'),
(28, 28, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 16:28:11', '2022-09-26 16:28:11'),
(29, 29, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 17:49:52', '2022-09-26 17:49:52'),
(30, 30, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-26 18:19:41', '2022-09-26 18:19:41'),
(31, 31, 'hello,', 'ushh@gmail.com', '84619', 'jahh', 'United Kind', 'England', 'London', 'home', 'hello,', 'ushh@gmail.com', '84619', 'jahh', 'United Kindom', 'England', 'London', 'home', '2022-09-27 05:19:30', '2022-09-27 05:19:30'),
(32, 32, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-09-27 07:50:40', '2022-09-27 07:50:40'),
(33, 33, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-27 10:33:32', '2022-09-27 10:33:32'),
(34, 34, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-27 11:19:43', '2022-09-27 11:19:43'),
(35, 35, 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United Stat', 'California', 'Los Angeles', '1', 'a b', 'marohman74@gmail.com', '123355454544', 'ewewee', 'United State', 'California', 'Los Angeles', '1', '2022-09-27 11:20:35', '2022-09-27 11:20:35'),
(36, 36, 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', 'Sed et error eligend Minim aut molestiae', 'Et labore exercitati', 'Deserunt beatae ulla', 'Aliquip accusantium', 'India', 'Gujarat', 'Gandhinagar', '1', '2022-10-27 08:34:55', '2022-10-27 08:34:55'),
(37, 37, 'jane', 'xyz@mail.com', '8888888888', 'boulevard', 'United Arab', 'Dubai', 'Dubai', 'home', 'jane', 'xyz@mail.com', '8888888888', 'boulevard', 'United Arab Emirates', 'Dubai', 'Dubai', 'home', '2022-11-03 02:24:59', '2022-11-03 02:24:59'),
(38, 38, 'jane', 'xyz@mail.com', '+97455555555', 'boulevard', 'United Arab', 'Dubai', 'Dubai', 'home', 'jane', 'xyz@mail.com', '+97455555555', 'boulevard', 'United Arab Emirates', 'Dubai', 'Dubai', 'home', '2022-11-03 03:26:11', '2022-11-03 03:26:11'),
(39, 39, 'jane', 'xyz@mail.com', '+97455555555', 'boulevard', 'United Arab', 'Dubai', 'Dubai', 'home', 'jane', 'xyz@mail.com', '+97455555555', 'boulevard', 'United Arab Emirates', 'Dubai', 'Dubai', 'home', '2022-11-03 12:05:30', '2022-11-03 12:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `seller_id` int NOT NULL DEFAULT '0',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `seller_id`, `product_name`, `unit_price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 2, '2022-09-21 05:49:58', '2022-09-21 05:49:58'),
(2, 2, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 07:35:53', '2022-09-21 07:35:53'),
(3, 3, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(4, 3, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(5, 3, 11, 0, 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 26.1, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(6, 3, 10, 0, 'PlayStation 4', 99.88, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(7, 3, 12, 0, 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 9.99, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(8, 3, 12, 0, 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 9.99, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(9, 3, 9, 0, 'Wireless Headphones and Earbuds', 10.791, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(10, 3, 5, 0, 'VISION Rice Cooker', 35.43, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(11, 3, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(12, 3, 2, 0, 'FANTECH OCTANE Headset', 59.4, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(13, 3, 3, 0, 'Sony Play Staton 5', 61.101, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(14, 3, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(15, 4, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 7, '2022-09-21 08:23:42', '2022-09-21 08:23:42'),
(16, 5, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 2, '2022-09-21 10:10:09', '2022-09-21 10:10:09'),
(17, 6, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 10:20:41', '2022-09-21 10:20:41'),
(18, 7, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 10:26:15', '2022-09-21 10:26:15'),
(19, 8, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-21 14:38:01', '2022-09-21 14:38:01'),
(20, 9, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 3, '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(21, 9, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(22, 9, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 2, '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(23, 9, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(24, 10, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-09-21 16:04:14', '2022-09-21 16:04:14'),
(25, 11, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-22 04:20:00', '2022-09-22 04:20:00'),
(26, 11, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-22 04:20:00', '2022-09-22 04:20:00'),
(27, 12, 36, 6, 'Sony joystick SJ pro', 5000, 3, '2022-09-22 05:49:56', '2022-09-22 05:49:56'),
(28, 13, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-23 17:11:58', '2022-09-23 17:11:58'),
(29, 13, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-23 17:11:58', '2022-09-23 17:11:58'),
(30, 14, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-09-24 05:07:17', '2022-09-24 05:07:17'),
(31, 15, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-09-24 18:41:59', '2022-09-24 18:41:59'),
(32, 16, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-25 06:34:28', '2022-09-25 06:34:28'),
(33, 17, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-25 12:30:24', '2022-09-25 12:30:24'),
(34, 18, 37, 6, 'Apple watch pro', 40000, 3, '2022-09-26 04:29:40', '2022-09-26 04:29:40'),
(35, 19, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 06:17:07', '2022-09-26 06:17:07'),
(36, 19, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 06:17:07', '2022-09-26 06:17:07'),
(37, 20, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 06:27:39', '2022-09-26 06:27:39'),
(38, 21, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 07:49:46', '2022-09-26 07:49:46'),
(39, 22, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 07:50:48', '2022-09-26 07:50:48'),
(40, 23, 37, 6, 'Apple watch pro', 40000, 59, '2022-09-26 08:08:58', '2022-09-26 08:08:58'),
(41, 24, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 08:25:32', '2022-09-26 08:25:32'),
(42, 24, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 08:25:32', '2022-09-26 08:25:32'),
(43, 25, 34, 4, 'Apple air 2022', 150000, 1, '2022-09-26 11:17:16', '2022-09-26 11:17:16'),
(44, 26, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 15:29:08', '2022-09-26 15:29:08'),
(45, 27, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-09-26 15:35:47', '2022-09-26 15:35:47'),
(46, 28, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 16:28:11', '2022-09-26 16:28:11'),
(47, 29, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-26 17:49:52', '2022-09-26 17:49:52'),
(48, 29, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-26 17:49:52', '2022-09-26 17:49:52'),
(49, 29, 8, 0, 'AirPods Pro 2', 8.991, 1, '2022-09-26 17:49:52', '2022-09-26 17:49:52'),
(50, 30, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 18:19:41', '2022-09-26 18:19:41'),
(51, 31, 37, 6, 'Apple watch pro', 40000, 3, '2022-09-27 05:19:30', '2022-09-27 05:19:30'),
(52, 32, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 07:50:40', '2022-09-27 07:50:40'),
(53, 32, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 07:50:40', '2022-09-27 07:50:40'),
(54, 32, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 07:50:40', '2022-09-27 07:50:40'),
(55, 33, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 10:33:32', '2022-09-27 10:33:32'),
(56, 33, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 10:33:32', '2022-09-27 10:33:32'),
(57, 33, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 10:33:32', '2022-09-27 10:33:32'),
(58, 33, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-27 10:33:32', '2022-09-27 10:33:32'),
(59, 34, 36, 6, 'Sony joystick SJ pro', 5000, 3, '2022-09-27 11:19:43', '2022-09-27 11:19:43'),
(60, 35, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 2, '2022-09-27 11:20:35', '2022-09-27 11:20:35'),
(61, 36, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-10-27 08:34:55', '2022-10-27 08:34:55'),
(62, 36, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-10-27 08:34:55', '2022-10-27 08:34:55'),
(63, 37, 37, 6, 'Apple watch pro', 40000, 1, '2022-11-03 02:24:59', '2022-11-03 02:24:59'),
(64, 37, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-03 02:24:59', '2022-11-03 02:24:59'),
(65, 37, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-03 02:24:59', '2022-11-03 02:24:59'),
(66, 38, 37, 6, 'Apple watch pro', 40000, 2, '2022-11-03 03:26:09', '2022-11-03 03:26:09'),
(67, 38, 37, 6, 'Apple watch pro', 40000, 1, '2022-11-03 03:26:10', '2022-11-03 03:26:10'),
(68, 39, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-11-03 12:05:30', '2022-11-03 12:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_variants`
--

CREATE TABLE `order_product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `order_product_id` int NOT NULL,
  `product_id` int NOT NULL,
  `variant_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymongo_payments`
--

CREATE TABLE `paymongo_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymongo_payments`
--

INSERT INTO `paymongo_payments` (`id`, `secret_key`, `public_key`, `status`, `currency_rate`, `country_code`, `currency_code`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sk_test_TUwj85sA6XTn7nHzmP23dg36', 'pk_test_z9xACSbhH2EuxVdFaxuY8Waf', 1, 55.07, 'PH', 'PHP', '62c01dbd46dc01656757693.jpg', NULL, '2022-07-03 10:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payments`
--

CREATE TABLE `paypal_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `account_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paypal_payments`
--

INSERT INTO `paypal_payments` (`id`, `status`, `account_mode`, `client_id`, `secret_id`, `country_code`, `currency_code`, `currency_rate`, `created_at`, `updated_at`) VALUES
(1, 1, 'sandbox', 'AWlV5x8Lhj9BRF8-TnawXtbNs-zt69mMVXME1BGJUIoDdrAYz8QIeeTBQp0sc2nIL9E529KJZys32Ipy', 'EEvn1J_oIC6alxb-FoF4t8buKwy4uEWHJ4_Jd_wolaSPRMzFHe6GrMrliZAtawDDuE-WKkCKpWGiz0Yn', 'US', 'USD', 1, NULL, '2022-11-01 20:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `paystack_and_mollies`
--

CREATE TABLE `paystack_and_mollies` (
  `id` bigint UNSIGNED NOT NULL,
  `mollie_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_status` int NOT NULL DEFAULT '0',
  `mollie_currency_rate` double NOT NULL DEFAULT '1',
  `paystack_public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_currency_rate` double NOT NULL DEFAULT '1',
  `paystack_status` int NOT NULL DEFAULT '0',
  `mollie_country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paystack_and_mollies`
--

INSERT INTO `paystack_and_mollies` (`id`, `mollie_key`, `mollie_status`, `mollie_currency_rate`, `paystack_public_key`, `paystack_secret_key`, `paystack_currency_rate`, `paystack_status`, `mollie_country_code`, `mollie_currency_code`, `paystack_country_code`, `paystack_currency_code`, `created_at`, `updated_at`) VALUES
(1, 'test_p9qgUn7Sg22xF3Q8D9heBSVEzrzM5Q', 0, 1.27, 'pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38', 'sk_test_77cb93329abbdc18104466e694c9f720a7d69c97', 417.35, 0, 'CA', 'CAD', 'NG', 'NGN', NULL, '2022-11-01 20:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popular_categories`
--

CREATE TABLE `popular_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_categories`
--

INSERT INTO `popular_categories` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2022-09-20 07:14:58', '2022-09-20 07:14:58'),
(2, 1, '2022-09-20 07:15:05', '2022-09-20 07:15:05'),
(3, 2, '2022-09-20 07:15:11', '2022-09-20 07:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `popular_posts`
--

CREATE TABLE `popular_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_posts`
--

INSERT INTO `popular_posts` (`id`, `blog_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-09-22 10:19:05', '2022-09-22 10:19:05'),
(2, 5, 1, '2022-09-22 10:19:08', '2022-09-22 10:19:08'),
(3, 4, 1, '2022-09-22 10:19:10', '2022-09-22 10:19:10'),
(4, 3, 1, '2022-09-22 10:19:22', '2022-09-22 10:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL DEFAULT '0',
  `child_category_id` int NOT NULL DEFAULT '0',
  `brand_id` int NOT NULL DEFAULT '0',
  `qty` int NOT NULL DEFAULT '0',
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sold_qty` int NOT NULL DEFAULT '0',
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description_ar` text COLLATE utf8mb4_unicode_ci,
  `long_description_ar` longtext COLLATE utf8mb4_unicode_ci,
  `video_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `show_homepage` tinyint NOT NULL DEFAULT '0',
  `is_undefine` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `new_product` tinyint NOT NULL DEFAULT '0',
  `is_top` tinyint NOT NULL DEFAULT '0',
  `is_best` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `is_specification` int NOT NULL DEFAULT '1',
  `approve_by_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_name`, `name_ar`, `short_name_ar`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `short_description_ar`, `long_description_ar`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(1, 'Xbox Wireless Game Controller', 'Controller', NULL, NULL, 'xbox-wireless-game-controller-', 'uploads/custom-images/xbox-wireless-game-controller-2022-09-26-12-20-19-1096.png', 0, 3, 0, 0, 4, 113, '222', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, NULL, NULL, 'bigshop12345', 'Xbox Wireless Controller', 'Xbox Wireless Controller', 123, 99.99, NULL, 0, 1, 1, 0, 0, 1, 1, 1, 1, '2022-09-20 07:22:29', '2022-10-27 08:34:55'),
(2, 'FANTECH OCTANE Headset', 'Headset', NULL, NULL, 'fantech-octane-headset', 'uploads/custom-images/fantech-octane-headset-2022-09-26-12-53-57-7709.png', 0, 2, 4, 0, 0, 233, '133', 0, 'The FANTECH HG23 OCTANE Price in BD is 2,700‡ß≥ in Today\'s 2022-09-19 Market. This FANTECH HG23 OCTANE 7.1 Over Ear Gaming Headset Manufacturing by FANTECH Comes With Based on 0 reviews.TECH LAND BD Offers you Fantech HG23 OCTANE by 2,700‡ß≥ and its regular price is 3,200‡ß≥ Which is also In Stock Now at our Showroom. Follow us on FACEBOOK For Regular updates & Offer. Subscribe Our YOUTUBE Channel for Product Reviews.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, NULL, NULL, 'bigshop1234566', 'FANTECH HG23 OCTANE Headset', 'FANTECH HG23 OCTANE Headset', 88, 66, NULL, 0, 1, 0, 1, 1, 1, 1, 1, 1, '2022-09-20 07:32:02', '2022-09-26 06:53:57'),
(3, 'Sony Play Staton 5', 'Playstation', NULL, NULL, 'sony-play-staton-5', 'uploads/custom-images/sony-play-staton-5-2022-09-26-12-20-52-2324.png', 0, 2, 5, 0, 3, 43, '133', 0, 'Experience lightning-fast loading with an ultra-high speed SSD, deeper immersion with support for haptic feedback1, adaptive triggers1 and 3D Audio*, and an all-new generation of incredible PlayStation games.Experience lightning-fast loading with an ultra-high speed SSD, deeper immersion with support for haptic feedback1, adaptive triggers1 and 3D Audio*, and an all-new generation of incredible PlayStation games.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, NULL, NULL, 'bigshop123451', 'Sony Play Staton 5', 'Sony Play Staton 5', 88.88, 67.89, NULL, 0, 1, 0, 1, 1, 1, 1, 1, 1, '2022-09-20 07:33:46', '2022-09-26 06:20:52'),
(4, 'Apple MacBook Air 13.3-Inch Retina', 'MacBook', NULL, NULL, 'apple-macbook-air-133inch-retina', 'uploads/custom-images/apple-macbook-air-133-inch-retina-2022-09-26-12-21-18-4277.png', 0, 1, 2, 2, 3, 27, '133', 0, 'Apple\'s thinnest, lightest notebook, was completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fanless design. This much power has never been this ready to go. It√¢‚Ç¨‚Ñ¢s here. Our first chip was designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O,', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, NULL, NULL, 'bigshop1234515', 'Apple MacBook Air 13.3-Inch Retina', 'Apple MacBook Air 13.3-Inch Retina', 1111, 999, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 1, '2022-09-20 07:37:26', '2022-11-03 12:05:30'),
(5, 'VISION Rice Cooker', 'Rice Cooker', NULL, NULL, 'vision-rice-cooker', 'uploads/custom-images/vision-rice-cooker-2022-09-26-12-48-28-5516.png', 0, 10, 0, 0, 5, 32, '234', 0, '\"Inner Pot: Aluminum inner pot 920g with inner side coating. (Single pot) Power: Drum shaped, 5.6L Ltr. 220V- 50Hz, 1900W Stainless steel lid with plastic handle Magnetic Switch and Thermostat\r\nMS Body and thickness 0.28mm Built-in thermostat maintains heat at a precise and uniform level 19000 W power which is very much enough for cooking rice in 25-30 min\r\nHeating element with coating for easy cleaning and Anti-dirty 1.2mm Actual Non-stick Coating Inner pot, Base Board- Silver Antibacterial action in warm mode\r\nColor: As given picture.\"', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, NULL, NULL, 'bigshop123456633', 'VISION Rice Cooker', 'VISION Rice Cooker', 99.88, 35.43, NULL, 0, 1, 0, 1, 0, 1, 1, 1, 1, '2022-09-20 07:42:50', '2022-09-26 06:48:28'),
(6, 'VISION ELITE CEILING FAN', 'FAN', NULL, NULL, 'vision-elite-ceiling-fan', 'uploads/custom-images/vision-elite-ceiling-fan-2022-09-26-12-29-33-2795.png', 0, 10, 0, 0, 2, 22, '21', 0, 'Cool, portable, and waterproof. The vibrant fresh looking JBL Clip 4 delivers surprisingly rich JBL Original Pro Sound in a compact package. The unique oval shape fits easy in your hand. Fully wrapped in colorful fabrics with expressive details inspired by current street fashion, its easy to match your style. The fully integrated carabiner hooks instantly to bags, belts, or buckles, to bring your favorite tunes anywhere. Waterproof, dustproof, and up to 10 hours of playtime, its rugged enough to tag along wherever you explore.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, NULL, NULL, 'bigshop1234512', 'VISION ELITE CEILING FAN', 'VISION ELITE CEILING FAN', 11.11, 9.99, NULL, 0, 1, 0, 0, 0, 1, 1, 1, 1, '2022-09-20 07:44:22', '2022-09-26 06:29:34'),
(7, 'Samsung Galaxy A52 (8/128 GB)', 'Galaxy A52', NULL, NULL, 'samsung-galaxy-a52-8128-gb', 'uploads/custom-images/samsung-galaxy-a52-8128-gb-2022-09-26-12-12-12-9319.png', 0, 3, 0, 0, 4, 32, '33', 0, 'Feast your eyes on vibrant details with the FHD+ Super AMOLED display, reaching 800 nits¹ for clarity even in bright daylight. Eye Comfort Shield² lowers blue light, and Real Smooth keeps the view smooth, whether you\'re gaming or scrolling. All on the expansive 6.5-inch Infinity-O Display. Galaxy A52 seen from the front. A scene of a man standing on a beach at sunset with pink and blue colors in the sky expands outside of the boundaries of the display. Text says Brightness 800 nits, Eye Comfort Shield, with the SGS logo and Real Smooth.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><br>', NULL, NULL, NULL, 'bigshop12993452', 'Samsung Galaxy A52 (8/128 GB)', 'Samsung Galaxy A52 (8/128 GB)', 11.11, 9.99, NULL, 0, 1, 1, 1, 0, 1, 1, 1, 1, '2022-09-20 07:46:26', '2022-09-26 06:12:12'),
(8, 'AirPods Pro 2', 'AirPods', NULL, NULL, 'airpods-pro-2', 'uploads/custom-images/airpods-pro-2-2022-09-26-12-46-05-8429.png', 0, 1, 0, 0, 0, 44, '12', 0, 'Next-level Active Noise Cancellation and Adaptive Transparency reduce more external noise. Spatial Audio takes immersion to a remarkably personal level. Touch control now lets you adjust volume with a Next-level Active Noise Cancellation and Adaptive Transparency reduce more external noise. Spatial Audio takes immersion to a remarkably personal level. Touch control now lets you adjust volume with a Next-level Active Noise Cancellation and Adaptive Transparency reduce more external noise. Spatial Audio takes immersion to a remarkably personal level. Touch control now lets you adjust volume with a', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">&nbsp;</span><br></p>', NULL, NULL, NULL, 'bigshop12345133', 'AirPods Pro 2', 'AirPods Pro 2', 11.11, 9.99, NULL, 0, 1, 1, 0, 0, 1, 1, 1, 1, '2022-09-20 07:49:30', '2022-09-26 17:49:52'),
(9, 'Wireless Headphones and Earbuds', 'Headphones', NULL, NULL, 'wireless-headphones-and-earbuds-', 'uploads/custom-images/wireless-headphones-and-earbuds-2022-09-26-12-29-52-9668.png', 0, 4, 0, 0, 0, 32, '55', 0, 'Testing conducted by Apple in April 2021 using pre-production Beats Studio Buds and charging case units and software paired with iPhone 11 Pro Max units and pre-release software. The playlist consisted of 358 unique audio tracks purchased from the iTunes Store (256 Kbps AAC encoding). Volume was set to 50% and Active Noise Cancelling and Transparency were turned off. Testing consisted of full Beats Studio Buds battery discharge while playing audio until the first Beats Studio Buds stopped playback. With Active Noise Cancelling turned on, listening time was up to 5 hours. Battery life depends on device settings, environment, usage and many other factors.', '<p id=\"footnote-2\" class=\"pdp-sml-body\" style=\"background: 0px 0px; border: 0px none; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; hyphens: manual; font-feature-settings: &quot;kern&quot;; border-radius: 0px; line-height: 1.5;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">&nbsp;</span><br></p>', NULL, NULL, NULL, 'bigshop1234522', 'Wireless Headphones and Earbuds', 'Wireless Headphones and Earbuds', 33, 11.99, NULL, 0, 1, 1, 0, 0, 1, 1, 1, 1, '2022-09-20 07:56:37', '2022-09-26 06:29:53'),
(10, 'PlayStation 4', 'PS console', NULL, NULL, 'playstation-4', 'uploads/custom-images/playstation-4-2022-09-26-12-43-50-4261.png', 0, 4, 0, 0, 4, 21, '123', 0, 'Join Samurai warriors, hardened survivors and mighty gods in some of the most acclaimed titles ever made, including games created by PlayStation Studios that you can\'t play anywhere else. Join Samurai warriors, hardened survivors and mighty gods in some of the most acclaimed titles ever made, including games created by PlayStation Studios that you can\'t play anywhere else.', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&nbsp;&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">&nbsp;</span><br></p>', NULL, NULL, NULL, 'bigshop123456622', 'PlayStation 4', 'PlayStation 4', 123, 99.88, NULL, 0, 1, 1, 1, 0, 1, 1, 1, 1, '2022-09-20 07:58:06', '2022-09-26 06:43:51'),
(11, 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 'Bluetooth', NULL, NULL, 'jbl-clip-4-orange-portable-bluetooth-speaker-jblclip40rg', 'uploads/custom-images/jbl-clip-4-orange-portable-bluetooth-speaker-jblclip40rg-2022-09-26-12-42-09-8912.png', 0, 4, 0, 0, 1, 44, '44', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>', NULL, NULL, NULL, 'bigshop123456611', 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 333, NULL, NULL, 0, 1, 1, 1, 0, 1, 1, 1, 1, '2022-09-20 07:59:33', '2022-09-26 06:42:09'),
(12, 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 'Smartwatch', NULL, NULL, 'kospet-tank-t1-milstd-rugged-waterproof-smartwatch', 'uploads/custom-images/kospet-tank-t1-mil-std-rugged-waterproof-smartwatch-2022-09-26-12-43-45-6665.png', 0, 4, 0, 0, 0, 53, '44', 0, 'The KOSPET TANK T1 is a MIL-STD Rugged Smartwatch ready for adventure. It is an innovative smartwatch that features a 1.32-inch TFT IPS (360*360) Full Touch screen with a protective cover glass padded. It is equipped with a RealTek8762DK CPU and 64KB RAM + 128M ROM. The smartwatch features Bluetooth 5.0 connectivity and it is compatible with Android 5.1 & IOS 10.0 and above. The KOSPET TANK T1 is powered by a 350mAh Polymer battery and it can offer a long battery life.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&nbsp;</p><br>', NULL, NULL, NULL, 'bigshop123456655', 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 37, NULL, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 1, '2022-09-20 08:00:33', '2022-09-26 06:43:45'),
(13, 'JBL Clip 4 Orange Portable Speaker', 'Speaker', NULL, NULL, 'jbl-clip-4-orange-portable-speaker', 'uploads/custom-images/jbl-clip-4-orange-portable-speaker-2022-09-27-03-24-27-9922.png', 0, 3, 0, 0, 5, 3, '33', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', NULL, NULL, NULL, 'bigshop12345133', 'JBL Clip 4 Orange Portable Speaker', 'JBL Clip 4 Orange Portable Speaker', 133, NULL, NULL, 0, 1, 1, 0, 0, 1, 1, 1, 1, '2022-09-20 08:01:55', '2022-09-27 10:33:32'),
(14, 'Appple macbook pro 2020', 'Apple macbook', NULL, NULL, 'appple-macbook-pro-2020', 'uploads/custom-images/appple-macbook-pro-2020-2022-09-21-03-15-03-6666.png', 1, 1, 0, 0, 3, 10, 'Dolor ut corporis do', 0, 'Excepteur alias est', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, NULL, NULL, 'Enim numquam possimu', 'Id minus at blanditi', 'Nesciunt illo quisq', 120000, 100000, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 09:15:03', '2022-09-21 09:34:11'),
(15, 'Sony mini sound box', 'Sony sound', NULL, NULL, 'sony-mini-sound-box', 'uploads/custom-images/sony-mini-sound-box-2022-09-21-03-16-48-7639.png', 1, 1, 0, 0, 1, 10, '45', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, NULL, NULL, '25536', 'Sony mini sound box', 'Sony mini sound box', 500, 450, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 09:16:48', '2022-09-21 09:34:11'),
(16, 'Mi Laptop pro', 'Mi Lapotop', NULL, NULL, 'mi-laptop-pro', 'uploads/custom-images/mi-laptop-pro-2022-09-21-03-18-52-8009.png', 1, 1, 2, 0, 0, 458, '89', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, NULL, NULL, '4545ouj', 'Mi Laptop pro', 'Mi Laptop pro', 50000, 41000, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 09:18:52', '2022-09-21 09:34:12'),
(17, 'JBL sound box water proof', 'JBL sound', NULL, NULL, 'jbl-sound-box-water-proof', 'uploads/custom-images/jbl-sound-box-water-proof-2022-09-21-03-20-10-4755.png', 1, 4, 0, 0, 0, 78, '15', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, NULL, NULL, 'colorful-cloths', 'JBL sound box water proof', 'JBL sound box water proof', 1200, 1000, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 09:20:10', '2022-09-21 09:34:12'),
(18, 'Sony joystick SJ pro', 'Sony joystick', NULL, NULL, 'sony-joystick-sj-pro', 'uploads/custom-images/sony-joystick-sj-pro-2022-09-21-03-25-19-2532.png', 1, 1, 0, 0, 0, 589, '45', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, NULL, NULL, '255po', 'Sony joystick SJ pro', 'Sony joystick SJ pro', 2000, 1200, NULL, 0, 1, 1, 1, 1, 1, 0, 0, 1, '2022-09-21 09:25:19', '2022-09-21 09:34:13'),
(19, 'Gopor cam v1 pro', 'Gopro cam', NULL, NULL, 'gopor-cam-v1-pro', 'uploads/custom-images/gopor-cam-v1-pro-2022-09-21-03-26-33-7496.png', 1, 1, 3, 0, 0, 478, '45', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, NULL, NULL, 'loiu45', 'Gopor cam v1 pro', 'Gopor cam v1 pro', 30000, 25000, NULL, 0, 1, 1, 1, 1, 1, 0, 1, 1, '2022-09-21 09:26:33', '2022-09-21 09:34:14'),
(20, 'HP playstation 11', 'Hp playstation', NULL, NULL, 'hp-playstation-11', 'uploads/custom-images/hp-playstation-11-2022-09-21-03-28-49-9507.png', 1, 1, 1, 0, 0, 45, '452', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, NULL, NULL, 'lki12', 'HP playstation 11', 'HP playstation 11', 10000, 8000, NULL, 0, 1, 0, 1, 1, 0, 0, 0, 1, '2022-09-21 09:28:49', '2022-09-21 09:34:16'),
(21, 'Realme speaker 2 prod', 'Realme speaker', NULL, NULL, 'realme-speaker-2-prod', 'uploads/custom-images/realme-speaker-2-prod-2022-09-21-03-31-19-6994.png', 1, 4, 0, 0, 0, 15, '2', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, NULL, NULL, '14]poi', 'Realme speaker 2 prod', 'Realme speaker 2 prod', 1200, 1100, NULL, 0, 1, 0, 1, 1, 0, 0, 0, 1, '2022-09-21 09:31:20', '2022-09-21 09:34:16'),
(22, 'Xioami Joystick pro', 'Xioami Joystick', NULL, NULL, 'xioami-joystick-pro', 'uploads/custom-images/xioami-joystick-pro-2022-09-21-03-33-43-9999.png', 1, 2, 4, 0, 0, 45, '78', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, NULL, NULL, 'kju45', 'Xioami Joystick pro', 'Xioami Joystick pro', 2000, 1450, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 1, '2022-09-21 09:33:43', '2022-09-21 09:34:17'),
(23, 'Apple macbook pro', 'Apple macbook', NULL, NULL, 'apple-macbook-pro', 'uploads/custom-images/apple-macbook-pro-2022-09-21-03-38-33-4014.png', 1, 1, 0, 0, 0, 45, '78', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, NULL, NULL, 'ujy45', 'Apple macbook pro', 'Apple macbook pro', 120000, 10000, NULL, 0, 1, 1, 1, 1, 1, 0, 0, 1, '2022-09-21 09:38:33', '2022-09-21 09:38:43'),
(25, 'Appple macbook pro 2020', 'Apple macbook', NULL, NULL, 'appple-pro-2020', 'uploads/custom-images/appple-macbook-pro-2020-2022-09-26-01-26-42-1648.png', 1, 1, 0, 0, 3, 12, '12', 0, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, NULL, NULL, 'hjht6', 'Appple macbook pro 2020', 'Appple macbook pro 2020', 12000, 10000, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, '2022-09-21 10:27:26', '2022-09-26 07:26:43'),
(26, 'Mi Laptop pro', 'Mi Lapotop', NULL, NULL, 'mi-laptop-pro-x', 'uploads/custom-images/mi-laptop-pro-2022-09-26-01-22-47-3531.png', 1, 4, 0, 0, 1, 45, '87', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, NULL, NULL, 'd45gg', 'Mi Laptop pro', 'Mi Laptop pro', 50000, 45000, NULL, 0, 1, 1, 1, 0, 1, 1, 0, 1, '2022-09-21 10:34:41', '2022-09-26 07:22:49'),
(27, 'Sony camera m1', 'Sony camera', NULL, NULL, 'sony-camera-m1', 'uploads/custom-images/sony-camera-m1-2022-09-26-01-30-24-3959.png', 2, 8, 0, 0, 0, 15, '75', 0, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, NULL, NULL, 'kjkjh7', 'Sony camera m1', 'Sony camera m1', 3000, 2800, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, '2022-09-21 10:40:16', '2022-09-26 07:30:24'),
(29, 'Sony playstone pro', 'Sony playStone', NULL, NULL, 'sony-playstone-pro', 'uploads/custom-images/sony-playstone-pro-2022-09-26-02-02-31-9575.png', 2, 2, 5, 0, 0, 78, '98', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, NULL, NULL, 'jhuy67', 'Sony playstone pro', 'Sony playstone pro', 12000, 10000, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, '2022-09-21 10:43:08', '2022-09-26 08:02:31'),
(30, 'JBL headphon max', 'JBL headphone', NULL, NULL, 'jbl-headphon-max', 'uploads/custom-images/jbl-headphon-max-2022-09-26-01-55-56-9123.png', 2, 1, 0, 0, 0, 87, '87', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, NULL, NULL, 'hjhg67', 'JBL headphon max', 'JBL headphon max', 700, 650, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 1, '2022-09-21 10:43:59', '2022-09-26 07:55:56');
INSERT INTO `products` (`id`, `name`, `short_name`, `name_ar`, `short_name_ar`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `short_description_ar`, `long_description_ar`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(31, 'Sony joystick v1', 'Sony joystick', NULL, NULL, 'sony-joystick-v1', 'uploads/custom-images/sony-joystick-v1-2022-09-26-01-52-07-6121.png', 3, 2, 4, 0, 0, 34, '87', 0, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, NULL, NULL, 'kjjhy7', 'Sony joystick v1', 'Sony joystick v1', 1000, 900, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, '2022-09-21 10:46:59', '2022-09-26 07:52:08'),
(32, 'Realme mini music', 'Mini music', NULL, NULL, 'realme-mini-music', 'uploads/custom-images/realme-mini-music-2022-09-26-01-34-10-1954.png', 3, 1, 0, 0, 2, 67, '45', 0, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, NULL, NULL, 'kju7', 'Realme mini music', 'Realme mini music', 800, 659, NULL, 0, 1, 1, 1, 0, 1, 1, 0, 1, '2022-09-21 10:48:07', '2022-09-26 07:34:11'),
(33, 'Asus zenbook desktop', 'Asus zenbook', NULL, NULL, 'asus-zenbook-desktop', 'uploads/custom-images/asus-zenbook-desktop-2022-09-26-12-33-24-3339.png', 4, 10, 0, 0, 6, 5, '87', 0, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, NULL, NULL, 'kjhyy78', 'Asus zenbook desktop', 'Asus zenbook desktop', 35000, 33000, NULL, 0, 1, 1, 1, 0, 1, 1, 0, 1, '2022-09-21 10:50:36', '2022-09-26 06:33:29'),
(34, 'Apple air 2022', 'Apple air book', NULL, NULL, 'apple-air-2022', 'uploads/custom-images/apple-air-2022-2022-09-26-01-48-39-3761.png', 4, 1, 0, 0, 1, 987, '76', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, NULL, NULL, 'nmjbff45', 'Apple air 2022', 'Apple air 2022', 250000, 150000, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, '2022-09-21 10:51:56', '2022-09-26 11:17:16'),
(35, 'Mini sound box', 'Mini music', NULL, NULL, 'mini-sound-box', 'uploads/custom-images/mini-sound-box-2022-09-26-01-41-16-4226.png', 5, 4, 0, 0, 0, 78, '34', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', NULL, NULL, NULL, 'DFH45', 'Mini sound box', 'Mini sound box', 1235, 1200, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, '2022-09-21 10:54:12', '2022-09-26 07:41:16'),
(36, 'Sony joystick SJ pro', 'Sony joystick', NULL, NULL, 'sony-joystick-sj-pro-vlv', 'uploads/custom-images/sony-joystick-sj-pro-2022-09-27-03-39-20-9931.png', 6, 2, 4, 0, 0, 45, '45', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words,', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', NULL, NULL, NULL, 'dfgh6', 'Sony joystick SJ pro', 'Sony joystick SJ pro', 7000, 5000, NULL, 0, 1, 1, 1, 1, 1, 1, 0, 1, '2022-09-21 10:56:12', '2022-11-03 02:24:59'),
(37, 'Apple watch pro', 'Apple watch', NULL, NULL, 'apple-watch-pro', 'uploads/custom-images/apple-watch-pro-2022-09-26-12-04-40-6657.png', 6, 1, 0, 0, 3, 490, '12', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', NULL, NULL, NULL, 'wer56', 'Apple watch pro', 'Apple watch pro', 45000, 40000, NULL, 0, 1, 1, 1, 0, 1, 1, 0, 1, '2022-09-21 11:00:41', '2022-11-03 03:26:10'),
(38, 'sample product', 'sample product', '1المنتج عينة', '1المنتج عينة', 'sample-product', 'uploads/custom-images/sample-product-2022-11-03-06-04-40-2128.jpg', 0, 1, 0, 0, 1, 100, '2', 0, 'Location Services API\r\nThis API offers you the following features:\r\n\r\n•   Standard list of all countries and cities\r\n•   Full details about each country; for example if a specific country requires a post/zip code to be provided\r\n•   Validation of country, city, post/zip code and state\r\n•   Suggesting cities based on post/zip code for countries that requires post/zip codes\r\n•   List of all Aramex offices along with their details including; address, phone, working days, working hours and geographical location', '<p><span class=\"amx-md-article-subhead\" style=\"color: rgb(0, 0, 0); font-family: SceneAltLight, Arial, Helvetica, sans-serif; font-size: 24px; line-height: 38px; margin-top: 23px;\">Location Services API</span><span style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\"></span><br style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\"><span style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\">This API offers you the following features:</span><br style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\"><br style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\"><span style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\">• &nbsp; Standard list of all countries and cities</span><br style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\"><span style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\">• &nbsp; Full details about each country; for example if a specific country requires a post/zip code to be provided</span><br style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\"><span style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\">• &nbsp; Validation of country, city, post/zip code and state</span><br style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\"><span style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\">• &nbsp; Suggesting cities based on post/zip code for countries that requires post/zip codes</span><br style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\"><span style=\"color: rgb(128, 130, 132); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 16px;\">• &nbsp; List of all Aramex offices along with their details including; address, phone, working days, working hours and geographical location</span><br></p>', 'واجهة برمجة تطبيقات خدمات الموقع\nتقدم لك واجهة برمجة التطبيقات هذه الميزات التالية:\n\n• قائمة قياسية لجميع البلدان والمدن\n• تفاصيل كاملة عن كل بلد. على سبيل المثال ، إذا تطلب بلد معين توفير رمز بريدي / بريدي\n• التحقق من صحة البلد والمدينة والرمز البريدي / والدولة\n• اقتراح المدن على أساس الرمز البريدي للبلدان التي تتطلب الرموز البريدية / البريدية\n• قائمة بجميع مكاتب أرامكس مع تفاصيلها بما في ذلك ؛ العنوان والهاتف وأيام العمل وساعات العمل والموقع الجغرافي', 'تقدم لك واجهة برمجة التطبيقات هذه الميزات التالية: • قائمة قياسية لجميع البلدان والمدن • تفاصيل كاملة عن كل بلد. على سبيل المثال ، إذا تطلب بلد معين توفير رمز بريدي / بريدي • التحقق من صحة البلد والمدينة والرمز البريدي / والدولة • اقتراح المدن بناءً على الرمز البريدي للبلدان التي تتطلب الرموز البريدية / قائمة بجميع أرامكس المكاتب مع تفاصيلها بما في ذلك ؛ العنوان والهاتف وأيام العمل وساعات العمل والموقع الجغرافي', NULL, 'warda', 'this is SEO title', 'this is SEO Description', 100, 100, NULL, 0, 1, 0, 0, 1, 0, 1, 1, 1, '2022-11-03 13:04:42', '2022-11-03 13:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-02-8827.jpg', 1, '2022-09-21 08:40:02', '2022-09-21 08:40:02'),
(7, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-07-9431.jpg', 1, '2022-09-21 08:40:07', '2022-09-21 08:40:07'),
(8, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-12-2258.jpg', 1, '2022-09-21 08:40:12', '2022-09-21 08:40:12'),
(9, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-16-6534.jpg', 1, '2022-09-21 08:40:16', '2022-09-21 08:40:16'),
(10, 11, 'uploads/custom-images/Gallery-2022-09-21-02-43-39-2412.webp', 1, '2022-09-21 08:43:39', '2022-09-21 08:43:39'),
(11, 11, 'uploads/custom-images/Gallery-2022-09-21-02-44-58-3563.jpg', 1, '2022-09-21 08:44:58', '2022-09-21 08:44:58'),
(12, 11, 'uploads/custom-images/Gallery-2022-09-21-02-45-26-2851.jpg', 1, '2022-09-21 08:45:26', '2022-09-21 08:45:26'),
(13, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-25-6622.jpg', 1, '2022-09-21 08:47:25', '2022-09-21 08:47:25'),
(14, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-32-8680.jpg', 1, '2022-09-21 08:47:32', '2022-09-21 08:47:32'),
(15, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-39-2509.jpg', 1, '2022-09-21 08:47:39', '2022-09-21 08:47:39'),
(16, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-44-6550.jpg', 1, '2022-09-21 08:47:44', '2022-09-21 08:47:44'),
(17, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-47-2815.jpg', 1, '2022-09-21 08:47:47', '2022-09-21 08:47:47'),
(18, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-59-9386.jpg', 1, '2022-09-21 08:47:59', '2022-09-21 08:47:59'),
(20, 1, 'uploads/custom-images/Gallery-2022-09-21-02-48-25-9186.jpg', 1, '2022-09-21 08:48:25', '2022-09-21 08:48:25'),
(21, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-41-4757.jpg', 1, '2022-09-21 08:49:41', '2022-09-21 08:49:41'),
(22, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-44-6374.jpg', 1, '2022-09-21 08:49:44', '2022-09-21 08:49:44'),
(23, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-48-9088.jpg', 1, '2022-09-21 08:49:48', '2022-09-21 08:49:48'),
(24, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-53-4805.jpg', 1, '2022-09-21 08:49:53', '2022-09-21 08:49:53'),
(25, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-2476.jpg', 1, '2022-09-21 08:50:49', '2022-09-21 08:50:49'),
(26, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-5940.jpg', 1, '2022-09-21 08:50:49', '2022-09-21 08:50:49'),
(27, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-4084.png', 1, '2022-09-21 08:50:49', '2022-09-21 08:50:49'),
(28, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-5855.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(29, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-3530.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(30, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-5453.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(31, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-6720.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(32, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-2303.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(33, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-9034.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(34, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-6919.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(35, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-3825.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(36, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-7427.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(37, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-4974.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(38, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-1292.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(39, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-2712.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(40, 3, 'uploads/custom-images/Gallery-2022-09-21-02-54-04-7986.jpg', 1, '2022-09-21 08:54:04', '2022-09-21 08:54:04'),
(41, 3, 'uploads/custom-images/Gallery-2022-09-21-02-54-04-7042.jpg', 1, '2022-09-21 08:54:04', '2022-09-21 08:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_reports`
--

CREATE TABLE `product_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `seller_id` int NOT NULL DEFAULT '0',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `product_vendor_id` int NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `product_vendor_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 13, 4, 0, 'Corrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enim', 4, 1, '2022-09-21 07:36:23', '2022-09-21 07:36:55'),
(2, 7, 4, 0, 'Enim et ducimus fug', 4, 1, '2022-09-21 07:38:38', '2022-09-21 08:26:36'),
(3, 1, 4, 0, 'Nemo ut ad voluptate', 3, 0, '2022-09-21 07:38:46', '2022-09-21 07:38:46'),
(4, 11, 4, 0, 'Laboris qui voluptas', 2, 0, '2022-09-21 07:39:02', '2022-09-21 07:39:02'),
(5, 13, 7, 0, 'dfafds', 5, 0, '2022-09-26 07:40:14', '2022-09-26 07:40:14'),
(6, 37, 13, 6, 'Good 👍', 4, 0, '2022-09-26 08:11:16', '2022-09-26 08:11:16'),
(7, 13, 5, 0, 'ok', 5, 0, '2022-09-26 15:35:58', '2022-09-26 15:35:58'),
(8, 1, 5, 0, 'gghj', 5, 0, '2022-09-26 16:28:55', '2022-09-26 16:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `product_specification_key_id` int NOT NULL,
  `specification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_keys`
--

CREATE TABLE `product_specification_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_items`
--

CREATE TABLE `product_variant_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_variant_id` int NOT NULL,
  `product_variant_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `is_default` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pusher_credentails`
--

CREATE TABLE `pusher_credentails` (
  `id` bigint UNSIGNED NOT NULL,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_cluster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pusher_credentails`
--

INSERT INTO `pusher_credentails` (`id`, `app_id`, `app_key`, `app_secret`, `app_cluster`, `created_at`, `updated_at`) VALUES
(1, '1338069', 'e013174602072a186b1d', '46de951521010c14b205', 'mt1', NULL, '2022-01-29 12:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_payments`
--

CREATE TABLE `razorpay_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `razorpay_payments`
--

INSERT INTO `razorpay_payments` (`id`, `status`, `name`, `currency_rate`, `country_code`, `currency_code`, `description`, `image`, `color`, `key`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 0, 'Ecommerce', 74.66, 'IN', 'INR', 'This is description', 'uploads/website-images/razorpay-2021-12-14-06-35-49-6602.png', '#2d15e5', 'rzp_test_K7CipNQYyyMPiS', 'zSBmNMorJrirOrnDrbOd1ALO', NULL, '2022-11-01 20:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `seller_mail_logs`
--

CREATE TABLE `seller_mail_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `seller_id` int NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraws`
--

CREATE TABLE `seller_withdraws` (
  `id` bigint UNSIGNED NOT NULL,
  `seller_id` int NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `approved_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `page_name`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', 'test seo_title', 'test seo_description', NULL, '2022-09-24 06:19:28'),
(2, 'About Us', 'About Us - Ecommerce', 'About Us', NULL, '2022-02-07 02:39:59'),
(3, 'Contact Us', 'Contact Us - Ecommerce', 'Contact Us', NULL, '2022-01-12 02:21:46'),
(5, 'Seller Page', 'Our Seller - Ecommerce', 'Seller Page', NULL, '2022-02-07 02:40:16'),
(6, 'Blog', 'Blog - Ecommerce', 'Blog', NULL, '2022-02-07 02:40:23'),
(8, 'Flash Deal', 'Flash Deal - Ecommerce', 'Flash Deal', NULL, '2022-02-07 02:40:43'),
(9, 'Shop Page', 'Shop Page - Ecommerce', 'Shop Page', NULL, '2022-02-07 02:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Shipping', 'fas fa-shipping-fast', 'Free Shipping on Payment', 1, '2022-09-20 08:07:40', '2022-09-20 08:07:40'),
(2, 'Return Policy', 'fas fa-chevron-circle-left', '24 Hours Return Policy', 1, '2022-09-20 08:08:44', '2022-09-20 08:08:44'),
(3, 'Secured Payment', 'fab fa-cc-amazon-pay', 'Secure Card Payments', 1, '2022-09-20 08:09:50', '2022-09-20 08:09:50'),
(4, 'Best Quality', 'fas fa-check-circle', 'Best Quality Products', 1, '2022-09-20 08:10:27', '2022-09-22 04:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `maintenance_mode` int NOT NULL DEFAULT '0',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_user_register` int NOT NULL DEFAULT '1',
  `enable_multivendor` int NOT NULL DEFAULT '1',
  `enable_subscription_notify` int NOT NULL DEFAULT '1',
  `enable_save_contact_message` int NOT NULL DEFAULT '1',
  `text_direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LTR',
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_lg_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_sm_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `show_product_progressbar` int NOT NULL DEFAULT '1',
  `theme_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `popular_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Popular Category',
  `popular_category_product_qty` int NOT NULL DEFAULT '9',
  `frontend_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_category_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_category_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homepage_section_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `maintenance_mode`, `logo`, `favicon`, `contact_email`, `enable_user_register`, `enable_multivendor`, `enable_subscription_notify`, `enable_save_contact_message`, `text_direction`, `timezone`, `sidebar_lg_header`, `sidebar_sm_header`, `topbar_phone`, `topbar_email`, `currency_name`, `currency_icon`, `currency_rate`, `show_product_progressbar`, `theme_one`, `theme_two`, `seller_condition`, `popular_category`, `popular_category_product_qty`, `frontend_url`, `popular_category_banner`, `featured_category_banner`, `homepage_section_title`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/website-images/logo-2022-11-01-08-14-00-8736.png', 'uploads/website-images/favicon-2022-11-01-08-15-35-7208.webp', 'info@dakkaken.com', 1, 1, 1, 1, 'ltr', 'Asia/Qatar', 'Dakkaken', 'DK', '123-854-7896', 'contact@gmail.com', 'QAR', 'QAR', 85.76, 0, '#ff4013', '#b1a306', '<p><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><b>“Terms and Conditions</b>”&nbsp;means these “General Terms and Conditions for the Sale of Products or Services”, together with any modifications or additional provisions specifically stated in Seller’s final quotation or specifically agreed upon by Seller in writing.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">2. Delivery and Shipping Terms.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(a) For shipments that do not involve export Seller shall deliver Products to Buyer F.O.B. shipping point. For export shipments, Seller shall deliver Products to Buyer EXW Seller’s facility or warehouse (Incoterms 2010). Buyer shall pay all delivery costs and charges or pay Seller’s standard shipping charges plus handling. Partial deliveries are permitted. Seller may deliver Products in advance of the delivery schedule. Delivery times are approximate and are dependent upon prompt receipt by Seller of all information necessary to proceed with the work without interruption. If Products delivered do not correspond in quantity, type or price to those itemized in the shipping invoice or documentation, Buyer shall so notify Seller within ten (10) days after receipt.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(b) For shipments that do not involve export, title to Products shall pass to Buyer upon delivery in accordance with Section 2(a). For export shipments from a Seller facility or warehouse outside the U.S., title shall pass to Buyer upon delivery in accordance with Section 2(a). For shipments from the U.S. to another country, title shall pass to Buyer immediately after each item departs from the territorial land, seas and overlying airspace of the U.S. The 1982 United Nations Convention of the law of the Sea shall apply to determine the U.S. territorial seas. For all other shipments, title to Products shall pass to Buyer the earlier of (i) the port of export immediately after Products have been cleared for export or (ii) immediately after each item departs from the territorial land, seas and overlying airspace of the sending country. When Buyer arranges the export shipment, Buyer will provide Seller evidence of exportation acceptable to the relevant tax and custom authorities.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(c) Risk of loss shall pass to Buyer upon delivery pursuant to Section 2(a), except that for export shipments from the U.S., risk of loss shall transfer to Buyer upon title passage.</span><br></p>', 'Popular Category', 9, 'https://expay.app/api/', 'uploads/website-images/popular-cat-banner-2022-09-20-01-15-44-7577.jpg', 'uploads/website-images/featured-cat-banner-2022-09-21-02-43-49-4710.jpg', '[{\"key\":\"Popular_Category\",\"default\":\"Popular Category\",\"custom\":\"Popular Category\"},{\"key\":\"Shop_by_Brand\",\"default\":\"Shop by Brand\",\"custom\":\"Shop by Brand\"},{\"key\":\"Top_Rated_Products\",\"default\":\"Top Rated Products\",\"custom\":\"Top Rated Products\"},{\"key\":\"Best_Seller\",\"default\":\"Best Seller\",\"custom\":\"Best Seller\"},{\"key\":\"Featured_Products\",\"default\":\"Featured Products\",\"custom\":\"Featured Products\"},{\"key\":\"New_Arrivals\",\"default\":\"New Arrivals\",\"custom\":\"New Arrivals\"},{\"key\":\"Best_Products\",\"default\":\"Best Products\",\"custom\":\"Best Products\"}]', NULL, '2022-11-01 20:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint UNSIGNED NOT NULL,
  `city_id` int NOT NULL,
  `shipping_rule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_fee` double NOT NULL,
  `condition_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `city_id`, `shipping_rule`, `type`, `shipping_fee`, `condition_from`, `condition_to`, `created_at`, `updated_at`) VALUES
(1, 0, 'free shipping', 'base_on_price', 0, '1', '100', '2022-09-21 05:49:45', '2022-09-21 05:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `coupon_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_price` double NOT NULL,
  `offer_type` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_carts`
--

INSERT INTO `shopping_carts` (`id`, `user_id`, `product_id`, `qty`, `coupon_name`, `coupon_price`, `offer_type`, `created_at`, `updated_at`) VALUES
(36, 12, 13, 1, '', 0, 0, '2022-09-22 05:45:27', '2022-09-22 05:45:27'),
(70, 6, 37, 1, '', 0, 0, '2022-09-26 10:35:34', '2022-09-26 10:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_variants`
--

CREATE TABLE `shopping_cart_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `shopping_cart_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `variant_item_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_pages`
--

CREATE TABLE `shop_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `header_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `filter_price_range` double NOT NULL DEFAULT '10000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_pages`
--

INSERT INTO `shop_pages` (`id`, `header_one`, `header_two`, `title_one`, `title_two`, `banner`, `link`, `button_text`, `status`, `filter_price_range`, `created_at`, `updated_at`) VALUES
(1, 'Up To', '70% Off', 'Women\'s Jeans Collection', 'Fashion For Women\'s', 'uploads/website-images/banner-2022-02-06-04-22-39-1426.jpg', 'product', 'Discover now', 1, 5000, NULL, '2022-09-20 08:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `badge`, `title_one`, `title_two`, `image`, `status`, `serial`, `slider_location`, `product_slug`, `created_at`, `updated_at`) VALUES
(1, 'New released', 'Apple Wireless', 'Samsung S10+', 'uploads/custom-images/slider-2022-10-27-01-36-28-1252.png', 1, 1, NULL, 'fantech-octane-headset', '2022-09-20 03:55:57', '2022-10-27 07:36:28'),
(2, 'New released', 'Apple', 'Macbook Pro Max', 'uploads/custom-images/slider-2022-10-27-01-36-38-2956.png', 1, 2, NULL, 'jbl-clip-4-orange-portable-speaker', '2022-09-20 03:57:41', '2022-10-27 07:36:38'),
(3, 'New released', 'Headphone', 'JBL Music', 'uploads/custom-images/slider-2022-10-27-01-36-44-4193.png', 1, 3, NULL, 'sony-joystick-v1', '2022-09-20 03:58:20', '2022-10-27 07:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `sliders1`
--

CREATE TABLE `sliders1` (
  `id` bigint UNSIGNED NOT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders1`
--

INSERT INTO `sliders1` (`id`, `badge`, `title_one`, `title_two`, `image`, `status`, `serial`, `slider_location`, `product_slug`, `created_at`, `updated_at`) VALUES
(8, 'Another Slider', 'Another Slider', 'Another Slider', 'uploads/custom-images/slider-2022-11-02-09-19-24-9869.jpg', 1, 1, NULL, 'fantech-octane-headset', '2022-11-02 21:19:24', '2022-11-02 21:19:24'),
(9, 'Another Slider 6', 'Another Slider 6', 'Another Slider 6', 'uploads/custom-images/slider-2022-11-02-09-26-30-2472.jpg', 1, 2, NULL, 'sony-play-staton-5', '2022-11-02 21:26:30', '2022-11-02 21:26:30'),
(10, '1', '1', '1', 'uploads/custom-images/slider-2022-11-02-10-47-47-6619.png', 1, 1, NULL, 'xbox-wireless-game-controller-', '2022-11-02 22:47:47', '2022-11-02 22:47:47'),
(11, '1', '1', '1', 'uploads/custom-images/slider-2022-11-02-10-48-00-8923.png', 1, 1, NULL, 'sony-play-staton-5', '2022-11-02 22:48:00', '2022-11-02 22:48:00'),
(12, '1', '1', '1', 'uploads/custom-images/slider-2022-11-02-10-48-13-6371.png', 1, 1, NULL, 'sony-play-staton-5', '2022-11-02 22:48:13', '2022-11-02 22:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `sliders2`
--

CREATE TABLE `sliders2` (
  `id` bigint UNSIGNED NOT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders3`
--

CREATE TABLE `sliders3` (
  `id` bigint UNSIGNED NOT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders4`
--

CREATE TABLE `sliders4` (
  `id` bigint UNSIGNED NOT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders5`
--

CREATE TABLE `sliders5` (
  `id` bigint UNSIGNED NOT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders6`
--

CREATE TABLE `sliders6` (
  `id` bigint UNSIGNED NOT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders7`
--

CREATE TABLE `sliders7` (
  `id` bigint UNSIGNED NOT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders8`
--

CREATE TABLE `sliders8` (
  `id` bigint UNSIGNED NOT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders9`
--

CREATE TABLE `sliders9` (
  `id` bigint UNSIGNED NOT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders10`
--

CREATE TABLE `sliders10` (
  `id` bigint UNSIGNED NOT NULL,
  `badge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_login_information`
--

CREATE TABLE `social_login_information` (
  `id` bigint UNSIGNED NOT NULL,
  `is_facebook` int NOT NULL DEFAULT '0',
  `facebook_client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_gmail` int NOT NULL DEFAULT '0',
  `gmail_client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gmail_secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_redirect_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gmail_redirect_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_login_information`
--

INSERT INTO `social_login_information` (`id`, `is_facebook`, `facebook_client_id`, `facebook_secret_id`, `is_gmail`, `gmail_client_id`, `gmail_secret_id`, `facebook_redirect_url`, `gmail_redirect_url`, `created_at`, `updated_at`) VALUES
(1, 0, '343rer', 'fsdfa', 0, '334dsfs', 'fdsf343', 'link', 'link', NULL, '2022-06-11 11:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `sslcommerz_payments`
--

CREATE TABLE `sslcommerz_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `store_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sslcommerz_payments`
--

INSERT INTO `sslcommerz_payments` (`id`, `store_id`, `store_password`, `mode`, `created_at`, `updated_at`) VALUES
(1, 'wsus628f03bb09670', 'wsus628f03bb09670@ssl', 'sandbox', NULL, '2022-07-25 05:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_payments`
--

CREATE TABLE `stripe_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `stripe_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stripe_payments`
--

INSERT INTO `stripe_payments` (`id`, `status`, `stripe_key`, `stripe_secret`, `created_at`, `updated_at`, `country_code`, `currency_code`, `currency_rate`) VALUES
(1, 1, 'pk_test_51JU61aF56Pb8BOOX5ucAe5DlDwAkCZyffqlKMDUWsAwhKbdtuY71VvIzr0NgFKjq4sOVVaaeeyVXXnNWwu5dKgeq00kMzCBUm5', 'sk_test_51JU61aF56Pb8BOOXlz7jGkzJsCkozuAoRlFJskYGsgunfaHLmcvKLubYRQLCQOuyYHq0mvjoBFLzV7d8F6q8f6Hv00CGwULEEV', NULL, '2022-02-07 02:29:54', 'US', 'USD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `verified_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_verified` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `status`, `verified_token`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 0, '568771', 0, '2022-09-21 05:03:38', '2022-09-21 05:03:38'),
(2, 'abdur.rohman2003@gmail.com', 0, '458560', 0, '2022-09-21 05:03:47', '2022-09-21 05:03:47'),
(3, 'admin@brandmarrow.com.bd', 0, '298058', 0, '2022-09-21 05:03:59', '2022-09-21 05:03:59'),
(4, 'abdur_rohman2003@yahoo.com', 0, '978651', 0, '2022-09-21 07:06:47', '2022-09-21 07:06:47'),
(5, 'h@h.com', 0, '863244', 0, '2022-09-22 10:18:38', '2022-09-22 10:18:38'),
(6, 'Mollitia rerum omnis', 0, '637112', 0, '2022-09-23 06:01:01', '2022-09-23 06:01:01'),
(7, 'supuhib@mailinator.com', 0, '184076', 0, '2022-09-23 06:01:08', '2022-09-23 06:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `name_ar`, `slug`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobiles', NULL, 'mobiles', 1, 'uploads/custom-images/slider-2022-11-02-10-24-56-7857.png', '2022-09-20 05:51:21', '2022-11-02 22:24:56'),
(2, 1, 'Monitor', NULL, 'monitor', 1, 'uploads/custom-images/slider-2022-11-02-10-25-07-4271.webp', '2022-09-20 05:51:35', '2022-11-02 22:25:07'),
(3, 1, 'camera', NULL, 'camera', 1, 'uploads/custom-images/slider-2022-11-02-10-25-21-3789.png', '2022-09-20 06:02:23', '2022-11-02 22:25:21'),
(4, 2, 'Controller', NULL, 'controller', 1, NULL, '2022-09-20 07:08:14', '2022-09-20 07:08:14'),
(5, 2, 'PlayStation', NULL, 'playstation', 1, NULL, '2022-09-20 07:09:17', '2022-09-20 07:09:17'),
(6, 2, 'Need For Speed', NULL, 'need-for-speed', 1, 'uploads/custom-images/slider-2022-11-02-10-09-54-2686.webp', '2022-09-20 07:09:31', '2022-11-02 22:09:54'),
(7, 10, 'Desktop', NULL, 'desktop', 1, NULL, '2022-09-20 07:11:30', '2022-09-20 07:11:30'),
(8, 10, 'Headphone', NULL, 'headphone', 1, NULL, '2022-09-20 07:11:41', '2022-09-20 07:11:50'),
(9, 10, 'Mouse', NULL, 'mouse', 1, NULL, '2022-09-20 07:12:00', '2022-09-20 07:12:00'),
(10, 1, 'sample category', NULL, 'sample-category', 1, 'uploads/custom-images/slider-2022-11-02-10-01-32-9404.png', '2022-11-02 22:01:23', '2022-11-02 22:01:32'),
(11, 1, 'sample sub category', 'عينة من الفئة الفرعية', 'sample-sub-category', 1, NULL, '2022-11-03 14:08:29', '2022-11-03 14:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `tawk_chats`
--

CREATE TABLE `tawk_chats` (
  `id` bigint UNSIGNED NOT NULL,
  `chat_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tawk_chats`
--

INSERT INTO `tawk_chats` (`id`, `chat_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'link', 1, NULL, '2022-06-11 11:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint UNSIGNED NOT NULL,
  `terms_and_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `privacy_policy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `terms_and_condition`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\">DAKKAKEN.COM standard Terms and Conditions written on this webpage shall manage your use of our products and services on this website.These Terms will be applied fully and affect to your use of this website. By using this website, you agreed to accept all terms and conditions written in here. You must not use this website if you disagree with any of these Website Standard Terms and Conditions.</p><p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\">Minors or people below 18 years old are not allowed to use this Website</p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Creating Accounts</h2>In harmony with the instructions on the site, you need to generate a seller account with us which you wish to receive our services. If you are an individual you need to be a resident of the Qatar, and if you are a business firm, you need to be able to conduct business in the state of Qatar in accord with the national laws and regulations. Through generating a valid seller account, you agree, at the time of creation or registration, to be bound by and comply with these site terms, and all policies and other terms incorporated on the site (which shall form a part of these site terms.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Intellectual Property and Rights</h2>Other than the content you own, under these Terms, and/or its licensors own all the intellectual property rights and materials contained in this Website. You are granted limited license only for purposes of viewing the material contained on this Website.<br><br>All Content included on the Website, unless uploaded by Users, Members or Partners or as stated otherwise, is the property of DAKKAKEN.COM our affiliates, licensees or other relevant third parties. By continuing to use the Website Users acknowledge that such Content is protected by copyright, trademarks, database rights and other intellectual property rights. Nothing on this site shall be construed as granting, by implication or otherwise, any license or right to use any trademark, logo or service mark displayed on the site without the owner’s prior written permission. We may use the information to improve our products and services.<br><br>Notwithstanding any other rights or remedies available to it DAKKAKEN.COM shall have the right to terminate any license granted to any User, to terminate any Membership (where applicable) or block a User from the Website in the event of any breach by such User of any of the terms and conditions of this license. Without prejudice to any rights granted herein, DAKKAKEN.COM reserves the right to amend, edit or abbreviate or take down any Content at our discretion.<br><br>Notwithstanding the above, were a User is paying for additional premium content (by way of example, for Reports and/or as part of a Membership subscription) (“Pre-Paid Content”) such Users acknowledge that their access to such Pre-Paid Content is conditional upon payment in accordance with the payment methods set out on the Website before access to such Pre-Paid Content is permitted, and no license shall be granted until payment has been received in full for the relevant Pre-Paid Content. For the avoidance of doubt, all one off fees payable for Reports shall be non-refundable, and the period of license granted in such Content may only subsist for the duration of a User’s Membership subscription.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Restrictions</h2>\"You may only use the site for legal purposes and in a lawful manner and procedure mainly.<br>You must obey with all appropriate laws in Qatar.<br>You must ensure that your products resemble to the images uploaded to the site and information supplied to DAKKAKEN.com<br>It is your responsibility not to place any deceptive advertisement or data about your products or a brand and services on the Site.<br>Publishing any website material in any other media.<br>Selling, sub-licensing and/or otherwise commercializing any Website material.<br>Publicly performing and/or showing any website material.<br>Using this Website in any way that is or may be damaging to this website.<br>Using this Website contrary to applicable laws and regulations, or in any way may cause harm to the website, or to any person or business entity.<br>Engaging in any data mining, data harvesting, data extracting or any other similar activity in relation to this website.<br>Further restrict access by you to any areas of this Website, at any time, in absolute discretion. Any user ID and password you may have for this Website are confidential and you must maintain confidentiality as well.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Your Content</h2>In these website Standard Terms and Conditions, “Your Content” shall mean any audio, video text, images or other material you choose to display on this Website. By displaying Your Content, you grant a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.<br>Your Content must be your own and must not be invading any third-party’s rights including traditional, political and religious rights.. reserves the right to remove any of your Content from this Website at any time without notice.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Seller Warranties and Presentations</h2>Seller represents and warrants that: If you are a business firm, you are accordingly organized, validly existing and in good standing under the applicable laws of the state of where the business firms exited and registered with supporting documents.<br>Seller has all mandatory right power, and authority to enter into these site terms, perform your obligations, and grant the rights, licenses, and authorizations in these site terms.<br>Seller has the power and permits and permissions, in the products and to sell and promote products in the territory in which they are sold via the site.<br>Seller’s products imitate to applicable quality and safety standards of the establishment country.<br>Seller shall be solely responsible for any products placed or distributed through the site and breach of any third party contracts.<br>Placement and sale of seller’s products through the site will not be in breach of any applicable laws or third party rights.<br>All products including the materials supplied to DAKKAKEN.COM are original and free from any defects.<br>Seller will not engage in any unfair trade practices, and/or publish any inaccurate or misleading advertisement or information about products on or via the site.<br>Seller will neither sell nor deliver to a customer any renovated or used items, and the products will always be new and unused.<br>Seller understands its consumer protection obligations as a supplier and indemnifies DAKKAKEN.COM against any losses or costs incurred by DAKKAKEN.COM in respect of Seller’s obligations under any applicable laws.<br>Sellers will only showcase, exhibit, and sell original merchandise with relevant documents and brand warranties-if applicable.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Third Party Content</h2>This Website makes available certain Content that has not been created by DAKKAKEN.COM either via hyperlinks which may take Users to websites not controlled or maintained by DAKKAKEN.COM, or as hosted via the Website whether or not such Content is available free of charge, to Members only or for a fee, for example Partner Downloads, Member profiles and other materials posted by other Users on the Website blogs and forums (“Third Party Content”).<br>Any copying, distribution, reproduction, retransmission, or modification of any of the Third Party Content or any information or materials appearing in such Third Party Content, whether in electronic or hard copy form, is subject to the prior written permission of the author and publisher of such Third Party Content.<br>Third Party Content is not the responsibility of DAKKAKEN.COM, and users acknowledge and confirm that DAKKAKEN.COM has no control over the opinions, information, legality of products, or accuracy of facts or statements contained in such Third Party Content and furthermore DAKKAKEN.COM cannot guarantee and makes no representation or warranty as to the accuracy, veracity, or completeness of any such information provided. Nothing contained within Third Party Content necessarily represents the point of view of DAKKAKEN.COM.<br>DAKKAKEN.COM cannot and does not confirm each User’s identity, whether or not they are a Member. DAKKAKEN.COM allows Members to give access to information about themselves to other Members but does not control the information provided by Users or Members.<br>In the event that you have a dispute or issue with one or more of the other Users, you agree to unconditionally release DAKKAKEN.COM (and our officers, directors, agents, subsidiaries and employees) from any and all claims, demands and damages (actual and consequential) of any kind and nature, known and unknown, suspected and unsuspected, disclosed and undisclosed, arising out of or in any way connected with such disputes.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Limitation and Liabilities</h2>Nothing in these terms and conditions will :<br>Limit or exclude our or your liability for death or personal injury resulting from our or your negligence, as applicable.<br>Limit or exclude our or your liability for fraud or fraudulent misrepresentation.<br>Limit or exclude any of our or your liabilities in any way that is not permitted under applicable law.<br>We will not be liable to you in respect of any losses arising out of events beyond our reasonable control.<br>To the maximum extent permitted by law, DAKKAKEN.COM accepts no liability for any of the following .<br>Any business losses, such as loss of profits, income, revenue, anticipated savings, business, contracts, goodwill or commercial opportunities. Loss or corruption of any data, database or software.<br>Any special, indirect or consequential loss or damage<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Idemnification</h2>DAKKAKEN.COM hereby indemnify to the fullest extent from and against any and/or all liabilities, costs, demands, causes of action, damages and expenses arising in any way related to your breach of any of the provisions of these Terms.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Products</h2>Users may purchase standalone Products (whether as Members or Users) as the same are available via the Website and at such prices and on such supplemental conditions as are stated on the site.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Prices &amp; Subscriptions</h2>Prices for any of publishing of products and services on DAKKAKEN.COM are subject to change without prior notice.<br>DAKKAKEN.COM aim to regularly update all publicly available sources of price information via the Website to ensure that you have accurate information available to you when you order.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Severability</h2>If any provision of these Terms is found to be invalid under any applicable law, such provisions shall be deleted without affecting the remaining provisions herein.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Adequate Assurance</h2>DAKKAKEN.COM may suspend performance of the services or access to a seller account without liability where there an actual or potential personal, financial or legal risk to DAKKAKEN.COM and/or the customer (which may include the following circumstances.<br>if seller breaches these site terms or any of our policies.<br>if seller fails to reasonably cooperate with an investigation by DAKKAKEN.COM.&nbsp;<br>Where DAKKAKEN.COM reasonably believes that its continued provision of any of our Services would expose seller or DAKKAKEN.COM or their respective affiliates or customers to a material security risk or a regulatory action.<br>Seller’s performance does not meet DAKKAKEN.COM‘s reasonable projections.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Terms &amp; Terminations</h2>These site terms shall commence on the date on which your account is created or a written contract is signed with us, and shall continue unless and until terminated by us.<br>DAKKAKEN.COM may terminate these site terms at any time at its sole discretion although DAKKAKEN.COM shall try to give fifteen days’ notice to sellers. To the extent relevant, seller shall immediately return to DAKKAKEN.COM all property (including without limitation, confidential information and all material related to any customers) that it has received from DAKKAKEN.COM.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Variation of Terms</h2>These site terms shall commence on the date on which your account is created or a written contract is signed with us, and shall continue unless and until terminated by us. DAKKAKEN.COM is permitted to revise these Terms at any time as it sees fit, and by using this Website you are expected to review these Terms on a regular basis.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Assignment</h2>DAKKAKEN.COM is allowed to assign, transfer, and subcontract its rights and/or obligations under these Terms without any notification. However, you are not allowed to assign, transfer, or subcontract any of your rights and/or obligations under these Terms.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Entire Agreement</h2>These Terms constitute the entire agreement between DAKKAKEN.COM and Users/members in relation to the use of this Website, and supersede all prior agreements and understandings.<p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\"><br style=\"text-align: left;\"><br style=\"text-align: left;\"></p><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Governing Law &amp; Jurisdiction</h2>These Terms will be governed by and interpreted in accordance with the laws of the State of, Qatar for the resolution of any disputes.', '<h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\"><p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\">References in this Privacy Policy to \"we\", \"our\" or \"us\" (or similar) are references to Dakkaken owned By Dakkaken GROUP. References to \"user\" or \"you\" (or similar) are references to you as an individual or legal entity as the case may be..</p><p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\">Personal information provided on the website and online credit card transactions is transmitted through a secure server. We are committed to handling your personal information with high standards of information security. We take appropriate physical, electronic, and administrative steps to maintain the security and accuracy of personally identifiable information we collect, including limiting the number of people who have physical access to our database servers, as well as employing electronic security systems and password protections that guard against unauthorized access.</p><p style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-size: 12px; text-align: justify;\">Our website uses encryption technology, like Secure Sockets Layer (SSL), to protect your personal information during data transport. SSL encrypts ordering information such as your name, address, and credit card number. Our Customer Care center and stores also operate over a private, secure network. Please note that email is not encrypted and is not considered to be a secure means of transmitting credit card information.</p></h2><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Information we may collect from you</h2><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\">Generally, you may browse the Dakkaken website without providing any personally identifiable information. However, we may ask you to provide personally identifiable information at various times and places on this website. In some cases, if you choose not to provide us with the requested information, you may not be able to access all parts of this website or participate in all of its features, pricing, and product selection. We may collect the following information: Name Contact informations with email address<br>Demographic informations such as postcodes, preferences, and interests<br>other information relevant to customer surveys and/or offers<br>From your purchases and other interactions with us, we obtain information concerning the specific products or services you purchase or use.&nbsp;<br>When you visit this website, our web server automatically collects anonymous information such as log data and IP addresses and may collect general information concerning your location. We may use the automatically collected information for a number of purposes, such as improving our site design, product assortments, customer service, and special promotions.&nbsp;<br>The data collected is stored in a highly secure system database, and this will remain until the operation of Dakkaken stops.</h2><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">How we will use your information</h2><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\">- To provide you with information, products or services that you request from us or which we feel may interest you, where you have consented to be contacted for such purposes.<br>- To provide you with location-based services, such as advertising, search results and other personalised content.<br>- To carry out our obligations arising from any contracts entered into between you and another entity using our Platform or between you and us.<br>- To improve our Services and to deliver a better and more personalized service to you.<br>- To ensure that content from our Platform is presented in the most effective manner for you and the device you use to access our Platform.<br>- To notify you about changes to our Services.<br>- For any other reason which we deem necessary to enhance your experience of the Platform.<br>From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, fax or mail. We may use the information to customize the website according to your interests.</h2><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Security</h2><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\">We are committed to ensuring that your information is secure. In order to prevent unauthorized access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</h2><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">To whom we may disclose your information</h2><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\">Information about our customers is an important part of our business. We share your Information only as described below and with businesses that follow practices at least as protective as those described in this Privacy Policy:&nbsp;<br><br>Service Providers:<br>We also may disclose information to outside companies that help us bring you the products and services we offer. For example, we may work with an outside company to (a) manage a database of customer information; (b) assist us in distributing emails; (c) assist us with direct marketing and data collection; (d) provide us storage and analysis; (d) provide fraud prevention; and (e) provide other services designed to assist us in maximizing our business potential. We require that these outside companies agree to keep confidential all information we share with them and to use the information only to perform their obligations in our agreements with them.<br><br>Business Transitions:<br>We may transfer or share a copy of personal information about you in the event that Dakkaken or one of its properties, affiliates, or subsidiaries goes through a business transition, such as a merger, being acquired by another company, or selling a portion of its assets. You will be notified via email or a prominent notice on our website prior to a change of ownership or control of your personal information if your personal information will be used contrary to this policy. However, nothing in this Privacy Policy is intended to interfere with the ability of Dakkaken to transfer all or part of its business and/or assets to an affiliate or independent third party at any time, for any purpose, without any limitation whatsoever. Dakkaken.com specifically reserves the right to transfer or share a copy of personally identifiable information collected from its websites to the buyer of that portion of its business relating to that information.<br><br>Compliance with Law:<br>We may provide access to information when legally required to do so, to cooperate with police investigations or other legal proceedings, to protect against misuse or unauthorized use of our website, to limit our legal liability, and to protect our rights or to protect the rights, property, or safety of visitors of this website or the public. Dakkaken partners with advertising companies to place our advertising on publisher websites on the Internet. These advertising companies collect anonymous information about your visits to our web site. This technology involves the use of third-party cookies that allow them to develop personalized advertising so that it directly relates to offers that may be of interest to you. You may choose to opt-out of this service we have with our third-party advertising partner. We may also use Dakkaken cookies to provide similar enhanced online marketing to you based on your interests and preferences. You may also choose to opt out of these enhanced online marketing ads</h2><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">our Choices Regarding Use Of The Information We Collect</h2><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\">You have several choices regarding our handling of your nonpublic personally identifiable information. Direct Mail or Telephone Marketing: If you shop at the Dakkaken.com and wish to be removed from the list of customers that receive direct mail or telemarketing calls, please either write to Dakkaken Customer Care at DAKKAKEN GROUP, Al-Dafna 63 – Street 920 – Building No. 35 (Qatar Tower) – Floor No. 12 P.O. Box: 200889 Doha – Qatar or call +974 6625 9778. If you choose to write to us, please include your name, address, and credit card account number (if you have one), and state one of the following:&nbsp;- \"NO MAIL OFFERS\"<br>- \"NO PHONE OFFERS\"<br>- \"NO PHONE OR MAIL OFFERS\"<br></h2><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Online Account Registration</h2><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\">To make online shopping faster and easier, you may register on the Dakkaken website. As a registered customer, you only have to enter your shipping addresses and billing information once; they will be securely stored with us for your future use. Using your name and a password of your choice, you may access your account online at any time to add, delete, or change information. If you are using a public computer, we strongly encourage you to Sign Out when you finish shopping. Your information will still be stored with us but it will not be accessible to anyone else from that computer.</h2><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Emails</h2><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\">You will receive promotional emails from us only if you have asked to receive them. If you do not want to receive email from Dakkaken or its affiliates you can click on the \"Unsubscribe\" link at the bottom of any email communication sent by us. Please allow us 3 business days from when the request was received to complete the removal, as some of our promotions may already have been in process before you submitted your request.</h2><h2 style=\"font-weight: normal; line-height: 1.25em; font-size: 21.996px; margin-bottom: 0px; font-family: inherit; color: rgb(68, 68, 68); display: inline-block; padding: 0px 30px 6px 0px;\">Agree</h2><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\">By using this website, you accept the policies set forth in this Privacy Policy.</h2>', '2022-09-20 08:23:13', '2022-11-01 20:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `image`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(2, 'John Doe', 'CEO', 'uploads/custom-images/john-doe-20220922033955.png', '5', 'As a digital marketing agency our team works day in and day out on websites of all kinds. Some of the most common errors we see are websites not optimized for SEO because of old, boring, or out of date website themes or designs.', 1, NULL, '2022-09-22 09:39:55'),
(3, 'Michael', 'CEO', 'uploads/custom-images/ibrahim-khalil-20220922034002.png', '5', 'Almost every imaginable design is possible and customizations are allowed on every level. Some features could make use of better controls. If you know how to operate your mouse, then you are all set to use this pagebuilder.', 1, '2022-07-31 10:57:20', '2022-09-25 09:10:18'),
(5, 'James Robert', 'CEO', 'uploads/custom-images/james-robert-20220925031227.png', '5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', 1, '2022-09-25 09:12:27', '2022-09-25 09:12:27'),
(6, 'Mary 	Patricia', 'CEO', 'uploads/custom-images/mary-patricia-20220925031348.png', '5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', 1, '2022-09-25 09:13:48', '2022-09-25 09:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `three_column_categories`
--

CREATE TABLE `three_column_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id_one` int NOT NULL DEFAULT '0',
  `sub_category_id_one` int NOT NULL DEFAULT '0',
  `child_category_id_one` int NOT NULL DEFAULT '0',
  `category_id_two` int NOT NULL DEFAULT '0',
  `sub_category_id_two` int NOT NULL DEFAULT '0',
  `child_category_id_two` int NOT NULL DEFAULT '0',
  `category_id_three` int NOT NULL DEFAULT '0',
  `sub_category_id_three` int NOT NULL DEFAULT '0',
  `child_category_id_three` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `three_column_categories`
--

INSERT INTO `three_column_categories` (`id`, `category_id_one`, `sub_category_id_one`, `child_category_id_one`, `category_id_two`, `sub_category_id_two`, `child_category_id_two`, `category_id_three`, `sub_category_id_three`, `child_category_id_three`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 2, 0, 0, 5, 0, 0, NULL, '2022-02-07 03:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT '0',
  `state_id` int DEFAULT '0',
  `city_id` int DEFAULT '0',
  `zip_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` int NOT NULL DEFAULT '0',
  `verify_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int NOT NULL DEFAULT '0',
  `agree_policy` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(1, 'Marwen', 'smarwen@laposte.net', '0000-00-00 00:00:00', '06a8b133ecdb2f404b77634f7f42f93ad59c30404b0c28d3521f5ce65d268fd3:pi22RBbDgvCCV5SCieFGG2QECLdqgpzD:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2018, '2020-04-13 21:30:12', NULL),
(2, 'Nanog', 'negetal8@yahoo.com', '0000-00-00 00:00:00', '0d42490dbb18caa47be88014ee1911dc72394a368a46732e8423d598f34c9b67:LzFatY2kSa9elR0SeZj9uEtZplfWAlUu:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-17 13:01:04', NULL),
(3, 'Basma', 'b.nour@tianoor.com', '0000-00-00 00:00:00', '9e2d0f66647bbc7b82df1ed7d2ee0d72ecd448de7d5e6fb227bba5b32eb73c9f:HKtiZjyheQj1SM884HSIE1yqxfCIG2ms:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-02 18:44:07', NULL),
(4, 'Mahmoud', 'mahmoud13101705@gmail.com', '0000-00-00 00:00:00', '0a9568d7f5eb533e79d5702bba142499af78d501bd6e8b939c46dc60520ac8f1:HJAQAUGfGItwj4SEAbdMT9SAxDhw3xp6:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-30 12:45:14', NULL),
(5, 'Chandrika', 'chandrikaperera75@yahoo.com', '0000-00-00 00:00:00', 'f137e6c1a43bbf28180049b0971c315d6dd40c84743db4d28516c69d81736469:02FV7j6xptpP3Ni2lbSLf0Cpps0Mc2Uh:1', '', '', 1, '', '', '', '', ' +97466501231', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-04-12 14:51:40', NULL),
(6, 'Marianne', 'marianne.gallego1331@gmail.com', '0000-00-00 00:00:00', '537e4f4ceb891d583432a0edfad8f2fd8b52c8f1061ac3ca517b738ea1950789:Vp065DPTIQgXzUaNs4KshA4XQWKasWMO:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-07 14:41:38', NULL),
(7, 'Jihene', 'Djina.partenairelr@gmail.com', '0000-00-00 00:00:00', '358459683ef64c3a7b10f2eda0643545025f539b45be93d809c8a6e66b44d1ef:NpqNDntzvtoT5qksl0zxJvgL3vyHcRUR:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-17 22:25:29', NULL),
(8, 'Nas', 'infonaaasgroup@gmail.com', '0000-00-00 00:00:00', '62b4b60214b8a65b5f929d830db3cb97725e93a809becd2d9a127972a87e2288:vlCVxwj8wPRf4ClE1bMDj10NCjASckW7:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-09 17:29:51', NULL),
(9, 'Nasima', 'nesmati.84@gmail.com', '0000-00-00 00:00:00', 'ad74c313bb487ed01e2a6e7836307d8fff81630b765c4edd1e21d181693b623e:ObZpt3KjXPgZa1jtJ9GRHzJ86e5UhbDH:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-12 12:06:12', NULL),
(10, 'Prachi', 'agarwalprachi@hotmail.com', '0000-00-00 00:00:00', '9580b7829c0e0ed3b4f869c519bef04ff78eaed5af9646131a0ca1d26d5f20fa:zCDmMYtPUOycbBTiteVJ8pdjVqJRezXl:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-12 15:28:57', NULL),
(11, 'Heba', 'poppaaseel@yahoo.com', '0000-00-00 00:00:00', 'a65c743b5f6e30c32262bebd1b98962cc5455fc6604e1c54d887a152c9050f6a:4OyQUgrberRmLbDOK6xrGCcoJNe9zhSn:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-13 11:52:15', NULL),
(12, 'Amir', 'Sara@americaneagle.com', '0000-00-00 00:00:00', 'd7be90d5a23666e96691ba5c1406100f358560dff1be762b5eff3bde043df7f3:MlqHE2Sfdia7NkeWsEMagKvkzv4ctrAP:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-01 13:42:40', NULL),
(13, 'Oleksii', 'alexdoha@gmail.com', '0000-00-00 00:00:00', 'cb7a72f73b52c39f8ab2c3b22a3cda32eb517c02c546f7c0b80c7cdb16f36f88:f18D7pD5364SJSs3AAcOMA8IMETaw2b3:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-01 12:45:47', NULL),
(14, 'Khaled', 'k-sabateen@hotmail.com', '0000-00-00 00:00:00', '7f97663be14b63bba9cddeb4028c06af5ab88ccd5b2b35fbeb891e30c1fdd134:kzyeu3mJbHOYOlaH01UMMvYD9364fRlf:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-31 10:29:29', NULL),
(15, 'Sathish Kumar', 'kssathishbe@gmail.com', '0000-00-00 00:00:00', 'f5c2f35168a6c616c6109767b35b6748de7965c0db7a401ce3afbd22ceac5648:Fk5aOZmXnkftmrbraZA3lfLrAw8CiQ2r:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-21 08:08:42', NULL),
(16, 'HATHA', 'farida.abdurahmanova@hotmail.com', '0000-00-00 00:00:00', '4fdd6adf8581599f76f799de78558c441ef5d8decbeb3fa543c184df2a0e8f00:QJnc6Rgiy4BTU1WFQCukZU8SQjZckabQ:1', '', '', 1, '', '', '', '', '33623500', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 06:38:35', NULL),
(17, 'Faizan', 'shahisaffron@gmail.com', '0000-00-00 00:00:00', '914a09d77bd5e1a849d3c4d556b2fa91dbaf9be45cc9a377b22659b62b19d760:f65tQmPpdBLE94bolJedomfG3PobXu2y:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-24 07:43:15', NULL),
(18, 'Rushma', 'rushma.joshi@gmail.com', '0000-00-00 00:00:00', '8e0803643757263a7f50aae61c683c7eca792a6efef66d8179d5cbf2ba476dfa:KTY4M83IVL1N1V9IFT5wxDDrGSO6RPuv:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2021-05-09 13:40:30', NULL),
(19, 'Zarina', 'zarina@tni.qa', '0000-00-00 00:00:00', '860ed76f6beb7608145b80bac473168b8b6c6b23f068f44d8aa4b5161d9f4be6:hle7ye0eEOJeQhcebVvyIgnkFZl9vI51:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-25 07:40:50', NULL),
(20, 'Unique IT Solutions', 'teamuitintex@gmail.com', '0000-00-00 00:00:00', 'e6bf94142710c1377d55292a8fe5c719fdb87ececd8cc02f58b83242d8b567d7:BLZEX11UBTylUADW5Jf6EmGfZxfK09EN:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-25 19:56:09', NULL),
(21, 'Ghulam', 'www.gqadir220@gmail.com', '0000-00-00 00:00:00', 'bc1c8d0ac034b364685d5a7d1c5fd32e61fc7a6fcbd600c6c769d465b2443a21:Re58RcvdwyS7D4UsijeuFcRd2CgT71WG:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-25 10:18:46', NULL),
(22, 'Hazel', 'hayzeforever@gmail.com', '0000-00-00 00:00:00', '9fba041407d684a0e9c8ad5203b9b898dcce887f980f5e4696500648403fc31e:hZT0dnq1eTIqTS1dMCJnkrv8Qj84wy6g:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-26 17:23:00', NULL),
(23, 'Muhammed', 'Qkarteqatar@gmail.com', '0000-00-00 00:00:00', '0b057a249901398577ea9b4bcd7bd3304d7de4e989f66faf2b59718b2bc19d64:JsUebKXY2KRs2LTQ6lcL1xXLnoagplhV:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-25 12:05:34', NULL),
(24, 'adil', 'beovrshop@gmail.com', '0000-00-00 00:00:00', 'ffaf0f70ad25cd2b059dc8d348961848a2511714e9e6d59e375dc03511534cd3:Ns0ieV40BneLVK9cy61uuhDFawmakQhd:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-26 14:22:13', NULL),
(25, 'cxb', '308643681@qq.com', '0000-00-00 00:00:00', '1c3a66eef9b45442d2864b87e875a2b5219293a38725cd2b1d399513477114ee:Gn9H8d6OA4PddT9Bklioj7UlnmjSpDla:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-27 05:41:32', NULL),
(26, 'ALOE', 'linde.irene@yahoo.com', '0000-00-00 00:00:00', '87cdf35ee5e358f7bf8b1ee423a74c2c89a759a001d5acf607de56a419035d53:IzRNKGKxB9GHXdKZu30r48BFW0OH89jb:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-27 06:53:23', NULL),
(27, 'Taqwa', 'Taqwa-Saleh@outlook.com', '0000-00-00 00:00:00', 'dc12ab8e1291b1b629ab044d38fbecda220968eb8f044390b148e2c7d1c3f6ac:9PBllCYNNPGLmyy8CS19s6yFrqliW6qm:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-27 12:13:26', NULL),
(28, 'NAAAS', 'ines@naaasagro.com', '0000-00-00 00:00:00', '36f31a919d65b17c714a93c9f293fe9210550c8554ae34d7139598dfd2ba5d49:6XwxWYXvRADaLvaSrtaEblCyqulfG9DI:1', '', '', 1, '', '', '', '', '66788347', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 06:43:46', NULL),
(29, 'Hytham', 'haythamch@hotmail.com', '0000-00-00 00:00:00', '61746cbf01911ca2243798858950bfa6594c2d82122261562402a3fa0adaa2ce:8BvZMCZVk7sEZnWDMvacL3uKmL0wtTmm:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-28 10:01:34', NULL),
(30, 'Queena', 'queena@hklovelybaby.com', '0000-00-00 00:00:00', '22220fa8792863b1a82ddff97416cb4f1eceb9e43b524052430ee552b8d17325:QKtGlspQ7GH5EltFm6eabZPbqe5G0akN:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-03 09:26:13', NULL),
(31, 'ALA-TOO HONEY', 'kaigul@inbox.ru', '0000-00-00 00:00:00', '30d1b17d68303a30f419395840a730ea8c5e725e1993104be646d44b419fe542:SExJyRaQHFMbGkTDBZcGQfKCAeU2ELKT:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-28 15:29:09', NULL),
(32, 'MURSHEED', 'TKMURSHEED@GMAIL.COM', '0000-00-00 00:00:00', '4dbac7c303724be20b81ded1872ac08d982bc52eba23e35b0e76eaad17157199:kw2EZk4Ss6BuOFbWA9YycOYbzQv8Lf98:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-29 10:18:59', NULL),
(33, 'Mohammed', 'bradran@gmail.com', '0000-00-00 00:00:00', 'dd11308d21ecd0ddac9f19a0a56b727e0d2bf8ac273d089dbfec2ee402d5642d:cKp9mzZzD824i2sqduKNgC4GdhbPIwU9:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-03-30 12:54:23', NULL),
(34, 'Elena', 'naumn@mail.ru', '0000-00-00 00:00:00', '41c3de3290627cff29f393503e6c9544d755fb6d25c463cd726c0352bd351da5:6zFsi2p7xSNhsqsatBobW1dNuw0zdZr4:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-01 18:26:17', NULL),
(35, 'Shadab', 'info@kesharagrofarm.com', '0000-00-00 00:00:00', '034a38100a48e517c8b53627b5567e388ec8b2a4bf186ca8ae602ddcf104497d:RHCkJETEGNLhoST1qlgmw1J23SWkQslj:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-02 07:26:17', NULL),
(36, 'SHOWDREAM', 'gina@fdetoys.com', '0000-00-00 00:00:00', 'cbb0a82797f05dd994a1c35f93c71c0046e1cf307e0f9e14b1bf40255aa727c3:Qz81E2pUpYR3hvRrxGa93A5hkwqMSr4K:1', '', '', 1, '', '', '', '', ' +8613825868898', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 06:46:05', NULL),
(37, 'Lokman', 'polater7@gmail.com', '0000-00-00 00:00:00', 'b813fddde4338b64f86abdbac49341fb524ea593e1e330b9944110a2496830bf:Cw66mfihz2E3Q8H6cD8KOEiyohiEUgqA:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-05 12:44:39', NULL),
(38, 'Asneem', 'trendeze@yahoo.com', '0000-00-00 00:00:00', 'bbfe02a88f32da7d961d6aecf95e77eea7db0daa86426a0199ac988f85562674:GfdiaFANeR7lQNIePaD1T3NPw6ZP2m3S:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-09 06:52:07', NULL),
(39, 'ahamed', 'shameemsa@gmail.com', '0000-00-00 00:00:00', 'a64639fce7a4bddb3e97c14190b8b4f348cb95cb24b8df5eb4bcbd57d7358379:B03Y04JzsuD9wbOp75TaorsFajWLUI0x:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-09 21:59:46', NULL),
(40, 'FUNMUCH', 'sales_01@funmuch.net', '0000-00-00 00:00:00', 'acdef65346b620a646db16f1084699ff7939ea1d4f754c2a5c8c208268ba16c2:rhaQdp1JO7FaCCYNLziKejctBEvY4yAk:1', '', '', 1, '', '', '', '', ' +86913829583222', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 06:48:07', NULL),
(41, 'BOMER', 'bomer@bomerarts.com', '0000-00-00 00:00:00', '260b86f849c40276cea65de04822017eb5923829c09627326f5716f6c7a04c85:svWqRs5jEbLxLc1qXm3mIbeA88oxIe5f:1', '', '', 1, '', '', '', '', ' +86 591 83438853', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 06:56:22', NULL),
(42, 'Mohammad Rafiq', 'kpfinder01@gmail.com', '0000-00-00 00:00:00', 'a29e06377afb2700126f260d5bffc17147672da5e2f90aed54c98c318e3546ad:bJ3PmIEsWYuToyOLpw8KqXTQdjLBnDJh:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-13 09:22:54', NULL),
(43, 'Safna', 'safnashafeek23@gmail.com', '0000-00-00 00:00:00', '95b7624792f1c1541ee1fc4292b59ba7e00e820a6318566d9147895dc249cd27:0zxSo5ejIznxByHoXWhYyKjPB4iONgHT:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-13 20:33:20', NULL),
(44, 'kalila', 'kalilabelle87@gmail.com', '0000-00-00 00:00:00', '86cbf4785d8c97bd5f7a319db02a3a370cab4cd0b0c40fc752f9cbafc1646f32:aI5npAl9pzsnAINUmJEX4FsMfpr2A6Iw:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-13 22:07:03', NULL),
(45, 'Taby', 'taby.tan@creative-zlt.com', '0000-00-00 00:00:00', '5c88f6357f380f519aea485baa562ceae9a8d5cd74b684e96cf00180cbd9a02a:VGwV4XtxNAbTdNyAKd3YrYePKSttp97L:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-14 07:26:38', NULL),
(46, 'Mohan', 'amaron2mohan@gmail.com', '0000-00-00 00:00:00', 'f6be9a162269453e88865557ba3e93b90af64bf69a21762cc696054502cf1167:FTJcWZ0rd1B9A7RJVS22D1ES9eFFJ4uK:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-14 08:57:45', NULL),
(47, 'Ahmed', 'mika1582@hotmail.com', '0000-00-00 00:00:00', 'c5ad3809bc998a40172de25939026de43536dd5cd18a66a020b25c1423fa90bb:yCXU2raPUxkrG0nvnvUGxTo7dyFQNuuO:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-15 19:43:14', NULL),
(48, 'SHOP', 'wmassry@gmail.com', '0000-00-00 00:00:00', 'e0a08a4f905bb7c64ca5a2d2aeae1120198f8e2b44d8cefcf0dc54a74c3dc492:OMNf8F6XD42QLY98LhekxaWSfYi0SDHR:1', '', '', 1, '', '', '', '', '30224477', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 06:25:44', NULL),
(49, 'Mohammed Ihithisham', 'm.ihithisham@gmail.com', '0000-00-00 00:00:00', 'de6ecf929ccc67a617839f3649c6622bbf29f306e3a566904a9fa9778e839bd9:eNZmT58LytDREaGNJ8ozTgeBX87TUHYM:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-16 06:19:01', NULL),
(50, 'QATAR', 'qatarcosmetics@yahoo.com', '0000-00-00 00:00:00', '66e7f7bca3a2fe70d8662743cb3c37b1e0b9ae2235de5c8535dd609023d02faa:JatV1RsAoETxdxEH9YgpB3mMfZBxCzjI:1', '', '', 1, '', '', '', '', '30440430', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 06:19:01', NULL),
(51, 'Faizan', 'Faizan.m.iqbal@gmail.com', '0000-00-00 00:00:00', '87a596c678ec24605800f9ce1b6e831e81df2b12be5429181e5e20c9f2be3db8:FHyytUYjI9Wxu5oFgONPIK9ySCRGsnE7:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-17 12:14:02', NULL),
(52, 'Abdul', 'ansaricool786@gmail.com', '0000-00-00 00:00:00', 'e5aa07c0ef8ca153365ea7f81885d6e32ca3aec660df1e8af984d40054fa0740:sgMyrb4OwmSZm7qkPxRchxa9HSCY1t6g:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-18 16:53:47', NULL),
(53, 'Mohammad', 'mohammad.ahmed@foncordqatar.com', '0000-00-00 00:00:00', 'b3c749c863f889c133fa1afba7af0d67ec76891aa29d40b22e64f9f83be338d8:02fGVOcVnrn1BVPw8cDqFRyuCVxqjIKq:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-20 10:46:38', NULL),
(54, 'Mohamed', 'shafeek@aljawazqatar.com', '0000-00-00 00:00:00', '49ed7d6647f362a4f6b8ed47560a890be6d616d2aca371b4f56737c3ef4ac92e:BM8Pa17bPWede9VGsq4UGhyOk4U7uItt:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-21 09:23:43', NULL),
(55, 'Mahmood', 'modyreda893@yahoo.com', '0000-00-00 00:00:00', '4b9142ebce4fd5bd8b217e8a2075d6e397e8d3bd31d8fb7fba08df3704c42096:HO78He4cFDfoIdQXf66Ujrsozr6v31ye:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-21 12:30:17', NULL),
(56, 'Bernadett', 'bernadettcaparic@gmail.com', '0000-00-00 00:00:00', '1471362f4b3b8883a3ae960756fd61b9e2a3b64de89937829bd6c9d5c73b579c:1Dd9JJqROHBqbJBvCWDSZCJUV5orNCPK:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-28 10:22:55', NULL),
(57, 'Fırat', 'firatti2000@hotmail.com', '0000-00-00 00:00:00', 'ea9e4a6738c8180d898fb19de376c0dc2157c60e284fcd7ded2637c5837640f4:eLTtHvxks0WEIS7yu57kYOBdv53OxdcO:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-04-30 08:54:27', NULL),
(58, 'DOHATNA', 'samsung@dakkaken.com', '0000-00-00 00:00:00', '32021677771f1e7c62d51111a929e03481cc619be1a499ca9059f5e0e8fb9227:AdIPE0KSSqIkhD4rbZQTd1f36nyTSFuW:1', '', '', 1, '', '', '', '', '70637370', 21, 19, 0, '', '', 0, '1', 1, 2019, '2021-04-07 09:50:08', NULL),
(59, 'Yasmin', 'Joreyfashion@hotmail.com', '0000-00-00 00:00:00', '40f09786de73583142d3132965e21a6cae67771ac2185491797fdca7f605d06f:WMUdEfRtB2lnyyrzdXb3hnPb6hsx8ELS:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-05-02 08:46:40', NULL),
(60, 'Navid', 'navidganji@silkroadstrade.com', '0000-00-00 00:00:00', '20e5d4eed59a5555a0a0ccb01dce309c1fb2f3a5fc420facba306e3feafc2dc0:Gp1RIs0Q9AoeTKdo4piD3ByWPejlIN18:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-05-03 12:48:57', NULL),
(61, 'lapensee', 'info@lapenseeboutique.com', '0000-00-00 00:00:00', '115dacb2d46a12ed820c4cea75e8c3d498b89a94479d684e6ef1a2036cf293ce:jEp144UfRMUMc9PVnQWJgfU4DvTYIOIi:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-05-05 13:15:52', NULL),
(62, 'ZOUIDI', 'samih1988@hotmail.com', '0000-00-00 00:00:00', '', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-06-18 04:33:06', NULL),
(63, 'test', 'shikha@webkul.com', '0000-00-00 00:00:00', '7a0388b2a3dbe5431cd524a041f2ab39fda938f7bbdd263ae7c0bf32c3aab5dd:C8eympUFis68ZT0MQo8OKOX4IsrJOJS1:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-06-17 12:27:51', NULL),
(64, 'sdasda', 'asdasd@dsdsd.sd', '0000-00-00 00:00:00', '9c5853556dd9e22b24371266cd48db3c43ad12bc8c0f0bff64ce7d0c3509d7c2:pCsSvcRwoE38Mi5BcW8UBhy1GzyFBglZ:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-06-26 12:09:25', NULL),
(65, 'ZWIDI', 'samih@samih.samih', '0000-00-00 00:00:00', '83f5462ed896e0282ef5efb0a8978ff1e4bfe3704c8fec4a7f04791bc5899115:VYAJPsGGB6sRsRDVuksp4zQJreKEU51R:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-07 18:29:50', NULL),
(66, 'ZWIDI', 'zouidi@zouidi.zouidi', '0000-00-00 00:00:00', 'afe5089c58c6fbc177b08b161dc037ec97caf26fcbc2cc1f70b35286b30f8a2f:u0Z0lgN1WH57o9anmT8j2cH9Ua3xmZnh:1', '', '', 1, '', '', '', '', ' +97477606360', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-07 18:53:07', NULL),
(67, 'Constantin', '1994cibotari@gmail.com', '0000-00-00 00:00:00', '4926041a492d6bcaf6f8fc906f376654e699b79f7048e4a8839ba5fbe3084980:XBwPyuWvyAeWQXpAqaAhY2USNYkHaXvb:1', '', '', 1, '', '', '', '', ' +97431253245', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-08 12:48:15', NULL),
(68, 'Vitaliy', '4674777@gmail.com', '0000-00-00 00:00:00', '911392370f72385ebedb9e3edc3db2039d4b8254b902027affaa92702eedde4d:4eGqfBoURdDapdpHg99iCzo0WQNEfeDo:1', '', '', 1, '', '', '', '', ' +380974674777', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-16 05:41:08', NULL),
(69, 'Saba', 'commercial@goldensphereco.com', '0000-00-00 00:00:00', 'ee891322127431d3bb0833e42ca4dd3baee43f94d0bc58249a0abc9d0b7382e9:L3F8nHm7OrpPQCXPByUStdJ0Itu17vph:1', '', '', 1, '', '', '', '', ' +971502282459', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-17 06:52:54', NULL),
(70, 'JBA', 'tk@JBAtrading.com.qa', '0000-00-00 00:00:00', '30eee1246a03c8b65d14e00ee9c072c6eb48e9803064d11e580ebdc729334dcb:927Z7aUWOuMWsAR40qE7Gx0bHgP3Rnw1:1', '', '', 1, '', '', '', '', ' +97433666317', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 06:50:51', NULL),
(71, 'Mohammad', 'online_scholar@ymail.com', '0000-00-00 00:00:00', 'd195a34b8d85ae0434a2d1123816cf15603b27f844060581d886bf717d8ec212:CzM7Qop5pqFNfpRTe3eGsxvfH1YkZcf1:1', '', '', 1, '', '', '', '', ' +97455681581', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-17 08:46:58', NULL),
(72, 'Eman', 'nefertarishoc@gmail.com', '0000-00-00 00:00:00', 'ba0f658153043936ec77a830052f330e3868d9198b635f159ed9a289bb6da8a9:03o0VNsIH3lc8YDR4sVEsnyqwpc6pMZa:1', '', '', 1, '', '', '', '', ' +97466566175', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-18 09:30:09', NULL),
(73, 'Christian', 'crabay@hotmail.com', '0000-00-00 00:00:00', '926885397b5678a374ffa54d699efebae39434810eb97010a6f834fbef1c9f6d:YZCKgCblZkegAViZ4rJKOZ8XClTILC9R:1', '', '', 1, '', '', '', '', ' +5215566105070', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-20 10:46:10', NULL),
(74, 'Aisha', 'aishaahmed@aishafashionworldbridal.com', '0000-00-00 00:00:00', '3075f2c17066af6e244e2ab23d3086319c41c81baba347606f48f2e0a89f4648:eHbMb0Xg6E3qDwssdVsgD7MUCKwy8xUC:1', '', '', 1, '', '', '', '', ' +974 3330 2088', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-21 06:10:28', NULL),
(75, 'FIRAS', 'info.qtr@alshaya.com', '0000-00-00 00:00:00', '34467ddb7de0c10ddfc16d2087031a1ae55e46385394bf21cbfe98be8e3fc88e:sQD9YvEKVZwbnK8QIf6KO5l9a1v6raqF:1', '', '', 1, '', '', '', '', ' +974 6640 8436', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-25 07:00:10', NULL),
(76, 'GEENA', 'atopuniforms@gmail.com', '0000-00-00 00:00:00', '35a9ef0f0aaa23a4c25b5b2380e05ecf4753e90c21bb17bc6e1cb79f4fd871dc:F0AH5nUCC99Op5POkxjL6rsK5zqkZwL0:1', '', '', 1, '', '', '', '', ' +97444177500', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-08-19 06:40:32', NULL),
(77, 'DULHAN', 'safwan.ibrahim01@gmail.com', '0000-00-00 00:00:00', '0c9e78abc4aaf916093036cfe6469a52fa6216120a2d36bdd23862e3910fcd46:Dx0qfDcDrJCmv33raFoEpoS0Z13d7rfz:1', '', '', 1, '', '', '', '', ' +97433198829', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 07:05:00', NULL),
(78, 'Cambridge', 'cambridgeqatar123@gmail.com', '0000-00-00 00:00:00', '59baf7eb554cc99a84f0d493e811288ec2878d32badef2b655074263ee2dbc92:PdgYJNpv9cnAe1ZPGuRH1Ingqb8hbtbM:1', '', '', 1, '', '', '', '', ' +974 44322203', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-11-16 05:45:32', NULL),
(79, 'Fares', 'eng.fares@shamnaqa.com', '0000-00-00 00:00:00', 'ce3e0c492a226f94533663b6905c03bf99eada7375b303433498cc87da0fc8f7:bOO0oRk5sZHp3vQUvPwHULipsLuBaNKG:1', '', '', 1, '', '', '', '', ' +974 505 82 270', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-30 08:24:32', NULL),
(80, 'Baris', 'ikramobilya@gmail.com', '0000-00-00 00:00:00', 'e24a119eb238976ed8d81e2b3216489135cf6e883026254385eef5ec8f944dfe:vVot3PGTRLrypi7t8y5QDEi86YZq2HkD:1', '', '', 1, '', '', '', '', ' +90 532 594 01 16', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-07-30 08:53:36', NULL),
(81, 'SAVING', 'm.said@torcheng.com', '0000-00-00 00:00:00', '39a2dab8d71a72f9d6ac1aa79afb2c6bce4f8defd73e395d4e21ab8712a9ce8c:GhtUNLSpB0eU4RV3VEFnifMJQu7seR6Z:1', '', '', 1, '', '', '', '', ' +97430604019', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 06:52:30', NULL),
(82, 'Ali', 'turkish.factoryshoes@gmail.com', '0000-00-00 00:00:00', '6f1a52e2c4d40c753c81253eb08966028f62f61a17a8cc44024609c63a3f4777:8GxxGE0mbrGj6QHmdDTmVkUAciCuqMXS:1', '', '', 1, '', '', '', '', ' +974 7032 6070', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-08-04 06:41:49', NULL),
(83, 'Girish', 'info@atopuniformsqatar.com', '0000-00-00 00:00:00', '7b4f16df1ccff908686731f258c55f6a6d6c03d3307495215c2a99154c860855:cV0dNCqTT0c6aq3CRBKAR5padGlnKsYO:1', '', '', 1, '', '', '', '', ' +97444177500', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-08-19 09:58:34', NULL),
(84, 'Alaa', 'alaaauddin71@gmail.com', '0000-00-00 00:00:00', '9873a81bcb17b12d52a040b81cec29eda58a43cf01a3502bb20886aa2bfd1dea:MwcMFHEA8iwmZ0KQaAFHGYlvWKRl02DZ:1', '', '', 1, '', '', '', '', ' +974 5555 8332; 7785 9679', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-08-28 07:12:45', NULL),
(85, 'Gabriella', 'ktownqatar@gmail.com', '0000-00-00 00:00:00', '23a957b4140e431bf936a64ed4e8a502f3660969b43142fc2f5cd98ea033f560:8nOYaOZHAqRobR9zT0jFCrRD4zD3Ndnl:1', '', '', 1, '', '', '', '', ' +974 6671 9214', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-04-30 10:05:07', NULL),
(86, 'Sally', 'hiamboukheir@gmail.com', '0000-00-00 00:00:00', '6dafafc17cd17347ac92fc7691c7f0105ea0fd3c5f6257b85f63fab0e52a727c:qtEN9ZKJ4MJ2dfWJBZzOl77rnJvFDbYN:1', '', '', 1, '', '', '', '', ' +974 66741918', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-08-28 07:55:46', NULL),
(87, 'SOUQ', 'mlsimsim1983@gmail.com', '0000-00-00 00:00:00', '2b898123966b592e133a5a07084f73f0861a8d089da7638317bb94a373b50ae8:FVOVcnDU8rD9dKEtIMr1iiq9kuFEp0Hw:1', '', '', 1, '', '', '', '', ' +974 30554544', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 06:58:56', NULL),
(88, 'HIJAPI', 'info@dakkaken.com', '0000-00-00 00:00:00', '7409f41b6ff80da512c8ddbd2e1a30a7752de6b8f23e598ca880a6fda3eeab99:whZET4BKeUoO0bX3kuwwXP9cK21g5aAM:1', '', '', 1, '', '', '', '', ' +97466259778', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 07:03:00', NULL),
(89, 'eland', 'elandqa@gmail.com', '0000-00-00 00:00:00', '864bc8651c4ca3bb05b0ba188ad1549d38972a05ab17d4488558f0edf77a8acb:5gn66bYz2cidY49CYmWQtI5YvsEj9wjo:1', '', '', 1, '', '', '', '', '30003250', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-09-12 08:20:54', NULL),
(90, 'Modestly', 'hello@modestlyonline.com', '0000-00-00 00:00:00', '5810eb23945929797de9bb651a3353a53afea8f86bd22890dff3e668dce7a668:h5aWNr6lAyLzABB3NgEJNtobpn02Gzde:1', '', '', 1, '', '', '', '', '33077519', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-03-30 17:37:29', NULL),
(91, 'Hicham', 'bastafh2@gmail.com', '0000-00-00 00:00:00', 'db1068e2bf4dfa76b5ff867fccc2db6d7366f471c398f29cf4311389f55991a4:pPMjt7LkVPo6vkCC6xTU8Y5icOqoo5YF:1', '', '', 1, '', '', '', '', ' +97431007554', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-10-28 14:22:02', NULL),
(92, 'Havana', '3116188083@qq.com', '0000-00-00 00:00:00', '67ac69b2f6455f6910ee0b3a0eb9f31843d54a304a5eb4ec13afca791f37a9ee:1etUg86iCpyk4w7G0pe4aATskjG6Ia1f:1', '', '', 1, '', '', '', '', '9298826113', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-10-29 03:46:34', NULL),
(93, 'Tarek', 'tariqjazer@hotmail.com', '0000-00-00 00:00:00', '8256d02bf974d3dbf59f29c93f87d8070b8b6be97765379ee76182ad955859e5:ebLna6Mn3CX5GApSXI9El2jkMxdGk1nV:1', '', '', 1, '', '', '', '', ' +97455687923', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-11-05 12:12:51', NULL),
(94, 'Rusha', 'rushaelsheikh@gmail.com', '0000-00-00 00:00:00', '7451e64111ec2c5e7cb93c7efcc02a93d75ad90d0ae2631c90fbf9f278ab3e59:S8v8MEz08ilw0W1F4SVUDdWqvtmzyGYB:1', '', '', 1, '', '', '', '', ' +97455056882', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-11-06 12:07:16', NULL),
(95, 'Ingrid', 'ingrid@brightmedia.co.za', '0000-00-00 00:00:00', 'c40ad57a64e03febc4588a5bab6dfadfcb45f641399445daf0decb2280008b2a:RVNEicAYwNhjSAtENKFqMJP5b2Wei39t:1', '', '', 1, '', '', '', '', ' +27835576545', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-11-19 11:10:33', NULL),
(96, 'MEHAD DOHA', 'info@mehaddoha.com', '0000-00-00 00:00:00', 'f55c622895640bd138aa90232234cd8943816030b2e35bbc512631d9858268fb:JNxqgLqVwaX7VwIvxbemrdW9QvsFo7DZ:1', '', '', 1, '', '', '', '', '50606713', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-06-13 14:04:23', NULL),
(97, 'KJKH', 'tt@tt.fr', '0000-00-00 00:00:00', '456337f003e9661a536e060f5a750ccfa39da5a067d30bd0c0510f22e91bc4bf:ESy19zuSZqguHwvuB3uzbCh7oIL3uyz0:1', '', '', 1, '', '', '', '', '654654645', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-11-20 12:16:50', NULL),
(98, 'Lotaif', 'lotaifmahgoub@gmail.com', '0000-00-00 00:00:00', '81bb5cbbae848db0cb7d107d3e9df38a166dca85bbab84055d825db986df6459:ndclMyWBjShQGU8fsyj5ZFkcpMRYjCmN:1', '', '', 1, '', '', '', '', '33999236', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-11-23 13:31:19', NULL),
(99, 'Mohsen', 'm.dalir73@gmail.com', '0000-00-00 00:00:00', 'c5a7d00b69760f76dcd41d00b4ef3828396d9408d12df28d35fb6eea7af2a080:wKVw7jz8PeWzGbFUNMkLqvAc47mdLWEZ:1', '', '', 1, '', '', '', '', '083235147', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-11-25 10:59:39', NULL),
(100, 'amira', 'amira.sahli10@outlook.com', '0000-00-00 00:00:00', 'eedca1adeea5cb6be12a676f53ba087814e0365eced6b737dfac04d323c360be:VUjjzVmh9A9na87RH1aO21GS46xDCRDI:1', '', '', 1, '', '', '', '', '30659206', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-11-28 05:39:37', NULL),
(101, 'Nisar', 'pasague_n@yahoo.com', '0000-00-00 00:00:00', 'c4975c052fddcb00a9999843fe3482835925b5b99e876b0a60f131791a9d8a87:nAx87G6kbQVbAc6uNG8pxn6Z9lOpmiyM:1', '', '', 1, '', '', '', '', '77012192', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-11-28 09:28:38', NULL),
(102, 'Zahra', 'zahra_24980@hotmail.com', '0000-00-00 00:00:00', '50a26738e2aaac98dacc66e2c713c555db79aa09cf9a3df749ecd79de445f2ce:5nD5DIYZayEX4msLOZJWVJz4laYMMdPb:1', '', '', 1, '', '', '', '', '01212617766', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-11-29 07:09:46', NULL),
(103, 'haifa', 'shopping2019201902019@outlook.com', '0000-00-00 00:00:00', '24bfc5a7ef84c45f87b8cb46b4e2353303cc9d23b5a53404774a2e81fb10b493:drVYLm2kQr1CAZy1ZAfCO2t2WBtyR6aq:1', '', '', 1, '', '', '', '', '55409512', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-12-03 10:29:13', NULL),
(104, 'Kharif', 'kharifsalala@gmail.com', '0000-00-00 00:00:00', 'e62ee2be3fdd341ab181b6abf4c47d70a0899d948273bb1c7c224cff673df652:V2iONvpZ53uL0dUpBJsDyvh98WaCuylW:1', '', '', 1, '', '', '', '', '66809587', 21, 19, 0, '', '', 0, '1', 1, 2019, '2020-08-15 06:41:41', NULL),
(105, 'غصون', 'mo0otal7o0obb@hotmail.com', '0000-00-00 00:00:00', '79390912ba2f874e407ec33306e1f73a4398e32c82af9862ec263cb15a195bf6:70CQdiiXUxDgHIO7mBnygCLT4clw483Z:1', '', '', 1, '', '', '', '', '55991011', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-12-07 09:39:01', NULL),
(106, 'melike', 'melike@melisita.com.tr', '0000-00-00 00:00:00', '44784c1eb7346f94dbbd4fe04ce1cae1531d1c6d629fb9bc1e6d9d07764f7e21:sGZ27POl6o85gA5FrXunODB0xtgnkqLV:1', '', '', 1, '', '', '', '', ' +905322182866', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-12-08 13:10:02', NULL),
(107, 'Koustuv', 'koustuvs@gmail.com', '0000-00-00 00:00:00', '78fe49433c7a21ab35d76f4bc1e0403777f59811fd8c0bb7645987770606b4e0:S6csTF6dsI77RKiG5rnilpP9cPbkvm9X:1', '', '', 1, '', '', '', '', '97433710299', 21, 19, 0, '', '', 0, '1', 1, 2019, '2019-12-30 09:59:13', NULL),
(108, 'Zaina', 'rosannacaburog@yahoo.com', '0000-00-00 00:00:00', '1d0c20d60f8cb9258af54057630eb0c6aba1e92a2373a7a4bf440e0b67a2c34f:haH4P6nUB7o0Wpn1KoL7UwvfwAQ1v3g3:1', '', '', 1, '', '', '', '', '66448058', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-01-04 23:02:02', NULL),
(109, 'Dicle', 'dicletiryaki@gmail.com', '0000-00-00 00:00:00', 'd3acfab29f8192704ecf921df87cfca6e33e9e895b9aa6c00f389c1f537ab068:arCGkAZSljWaB6jUR9lIulovHtnBRC7t:1', '', '', 1, '', '', '', '', ' +33635554250', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-01-06 23:01:30', NULL),
(110, 'Wissem', 'sfaxiwissem@gmail.com', '0000-00-00 00:00:00', '1bd204834bf43058c64b83f7bc0791a3b6ac5735d577bb5b3eeda3394c8ffb8e:laKf91WXgOgH4vA29jho5ht0gU9NQfil:1', '', '', 1, '', '', '', '', '0097455027543', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-01-07 15:47:47', NULL),
(111, 'Janu', 'Januarta89@gmail.com', '0000-00-00 00:00:00', '6e2fb9b7345342cd6efb7e16fa429ff4689609ee0b6b675d323210cc56eb90fc:T3qoYKLKk5eK9q17FV4IZ9CjfelPUFeo:1', '', '', 1, '', '', '', '', '66194705', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-01-15 18:41:42', NULL),
(112, 'Epiphoneuei', 'brakmisplohead@hotmail.com', '0000-00-00 00:00:00', '2010af63520350aa546e52d36387928d8798414ff52bf51bf64bff973b9c4687:wpgCgHnQEzvOjUn4p8MfypBhDw6TtYxe:1', '', '', 1, '', '', '', '', '82571291183', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-01-21 18:02:07', NULL),
(113, 'Pycha', 'pichaepape@gmail.com', '0000-00-00 00:00:00', '0ab470bf05eaa15772d5b5cbb527471b5915d718f5bcffae67ff5c03d714b584:5efxvnvyNCyY1kU6v8dEJg37NwmlAVi7:1', '', '', 1, '', '', '', '', '0758279443', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-01-23 14:33:00', NULL),
(114, 'imran', 'imli2006@gmail.com', '0000-00-00 00:00:00', '281cdb3f9ac7fc7e3ac8b83db24cfa37c672bef211c7e966ee8e09094185d09f:5b2O7gpa4aDWWbBXnnjJmxYV2WyFXpHN:1', '', '', 1, '', '', '', '', ' +97433384042', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-02-03 07:45:05', NULL),
(115, 'Tnker', '1848330585@qq.com', '0000-00-00 00:00:00', '406af74366a30e6960698a4cbb56f5d7a756373eb87c3a6bd8a6dc4c4c349d2f:D4FlJNFpCK5QSRhfg4A5yOMYjp2UlcLk:1', '', '', 1, '', '', '', '', '9298826113', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-02-21 05:54:11', NULL),
(116, 'amine', 'amine.gaabab@gmail.com', '0000-00-00 00:00:00', '245836260cec544fb7899600aeb6e886ed053b1902e4ba7636f4d6ea88017e5d:CShMa3F7tlXpmc61JlHAskhXwXE54vQ3:1', '', '', 1, '', '', '', '', '50550699', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-02-23 13:17:40', NULL),
(117, 'Khulood', 'khulood.k.alazwani@gmail.com', '0000-00-00 00:00:00', 'ff48d02af7615956800cbbeddb267a24c7249c547ca4a42c4a2fe4bcbab00595:lEsh30hzDdKLhv2bDPW8lnVN6WxuiGup:1', '', '', 1, '', '', '', '', '66663463', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-02-24 18:11:56', NULL),
(118, 'shumoos', 'shumoosabed@gmail.com', '0000-00-00 00:00:00', '3dab48c65a1f0d52cd22cd494115ab2e5a5e4350112d83f4d43c8b500a98a1cd:Lkyw4yG9LL4BdqY1qnpiej3f2H9FJuof:1', '', '', 1, '', '', '', '', '33389579', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-02-28 16:44:25', NULL),
(119, 'Mustahafiz', 'mustahafiz@gmail.com', '0000-00-00 00:00:00', 'd8d2216ae374c5f4b671118c9e116d2d5af8c53b68f96aa052353644713b90f8:l5etUvVQFz2PdeIn5C8vWSYzMpIN36fk:1', '', '', 1, '', '', '', '', ' +97455212975', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-02-29 07:16:42', NULL),
(120, 'Aleli', 'aleli_santos21@yahoo.com', '0000-00-00 00:00:00', '8ecff773fdf117b989e6044dd2847b718a3ca33c496e469482b4b4e507254f84:sPCTpeww3IYufhNXp8FdDu00g5tRADRj:1', '', '', 1, '', '', '', '', '50072228', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-02 15:31:30', NULL),
(121, 'Elie', 'eykaram@gmail.com', '0000-00-00 00:00:00', '437517ffd5d5756994f18852f44777bfba6d709c0c67783d0b5e6294d596d7ea:NEWyXbTBIPLGaPvbXHjV1WvRbzSySJaM:1', '', '', 1, '', '', '', '', '0097455323018', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-04 07:09:09', NULL),
(122, 'MixENATO', 'markusabelmansomi@gmail.com', '0000-00-00 00:00:00', 'aa0925a157568a6787c5f569a089c0f3095d88909486155ab961d317521ae84d:1HpZ5yl1mAGeu2afQ6feSFkgAXToWim4:1', '', '', 1, '', '', '', '', '82434692536', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-04 14:13:11', NULL),
(123, 'renjith', 'renjithmohan21@gmail.com', '0000-00-00 00:00:00', '52af11374458a3dee1f1ecd4e5993e63ee981137533e071aebf5f9b86d5769b8:estmglTV3CjcOq7Tj4rky4sanGphCKm3:1', '', '', 1, '', '', '', '', '77823000', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-04 15:02:49', NULL),
(124, 'David', 'heg_aus@yahoo.com.au', '0000-00-00 00:00:00', 'bf2a0647bb042172919016ce71975f0cb14c7b1ffba0b02dc9d2eb18a4bf3296:Sc3Q0QqvcZxBwYkGPcUUPP35NNyABH6u:1', '', '', 1, '', '', '', '', '97433084248', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-07 06:32:23', NULL),
(125, 'Marwen', 'marwen@dakkaken.com', '0000-00-00 00:00:00', 'f4650370c9925c0982575a90c175575b2a32582a27d66e0b946d36ab2d5ad4b2:EUX8jwyHQQUSE9XeNNQM83s6uJ8hAjUe:1', '', '', 1, '', '', '', '', '66461230', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-19 09:11:47', NULL),
(126, 'Roy', 'rvarghese@outlook.com', '0000-00-00 00:00:00', '6e8e20dd30f5b4cc0e275fdd5638cdb84bb35d20d02d273217749fb42f75df33:pFM6ScbfFw31iaVsKmUuRuNav4VnccK4:1', '', '', 1, '', '', '', '', '0097466264592', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-21 15:56:58', NULL),
(127, 'Duha', 'duhaehab@gmail.com', '0000-00-00 00:00:00', 'fd87110b2525202a58955bd4c9371d6107a77f24ed08754e69266928788c299e:GYjicLygjtQHVosSTxXXjXTQy3ZzBHmy:1', '', '', 1, '', '', '', '', '66064904', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-22 16:04:22', NULL),
(128, 'Mohamed', 'Alandlosy@gmail.com', '0000-00-00 00:00:00', '710cd0a2be2a28c035ec478cf9e827f7563e65b86bae0c685c7780d83486644d:NNzig1xyOGaG9vrQlHsr45uzOuDrpL51:1', '', '', 1, '', '', '', '', '0097433297100', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-23 22:50:31', NULL),
(129, 'Omar', 'omrnasr90@gmail.com', '0000-00-00 00:00:00', '7a5ad044491bb9876b3b04f93122070e8a0f542a5eac331bb8847dee192d3d02:1zKhG3tyQ4UECnc2Tc1wbMgsJPMJU2VE:1', '', '', 1, '', '', '', '', '30744594', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-25 07:47:07', NULL),
(130, 'Ahmed', 'd.ahmedhashesh@gmail.com', '0000-00-00 00:00:00', '5350709173ddc6ae9d9cb0851e9ec932a6071ce2d341f502278bf4ec33089d78:O4Aa4SYCtnWKUlIaASm7Cpdx6LsewqEa:1', '', '', 1, '', '', '', '', '0097477903042', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-25 11:28:35', NULL),
(131, 'Ahmed', 'sr.ahmed.osman@gmail.com', '0000-00-00 00:00:00', 'e4f28cccf9b65f20249508b6315d928688ba38110ce6cc2f2da90d4eddc0c676:AAGb5NW314beTPZBZ3RnGiuIdFQwTKIl:1', '', '', 1, '', '', '', '', '77192246', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-28 10:47:04', NULL),
(132, 'Ziad', 'kasmaniziad@outlook.com', '0000-00-00 00:00:00', '3f959104223722e2aacc1400868a48c3b9b5c3d62ef6bf7d20cff1bb8cada290:nft6FYX2no94OSafNAMlmusKUv3sllVj:1', '', '', 1, '', '', '', '', '55900375', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-03-29 16:59:59', NULL),
(133, 'Um nasser', 'waasaan169@gmail.com', '0000-00-00 00:00:00', 'e4287228b93c20b5f553e23f6db8551c9aad9f6f09f202ce0a40e75a35485222:lO4ycMCLeXIbBD6Ni3HBL4SzZqQ0yL6h:1', '', '', 1, '', '', '', '', '66444777', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-01 15:36:29', NULL),
(134, 'srinivasa', 'srinivaskumar380@gmail.com', '0000-00-00 00:00:00', '7eb3654cc8a68f0d3299df4dfbbafea37b0fb0cba4fc15b197939c465ff9d2c4:HaJgi28UDH0D8LnBw5WC0JFAy2mCesOh:1', '', '', 1, '', '', '', '', '30240786', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-01 06:19:18', NULL),
(135, 'ahmed', 'ahmed.sabra@hotmail.com', '0000-00-00 00:00:00', '6c41b466e264bcdc4c59ff504a445c44ac08cd887f01e3df7731a233ae1c4264:S0RdchzMUiTP40SfqPvVpbiYed1MW2R7:1', '', '', 1, '', '', '', '', '55811480', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-05 15:00:33', NULL),
(136, 'Dennislable', 'ktpvn419@gmail.com', '0000-00-00 00:00:00', 'a7799e3a940632edbf979afb54936b616fbd37a201e636c734a76423bb41ae07:9BroD3MouoBZNWF6Dqp9PCdzM1kN1Lxk:1', '', '', 1, '', '', '', '', '87438494885', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-05 18:11:26', NULL),
(137, 'RaymondEdurf', 'ktpvn420@gmail.com', '0000-00-00 00:00:00', 'de8705070ca392139531f79d130286889096cb4c2f5b65f9667ba0b61e3358ac:kBkXunVkdHvSLxmteCUEzSoL2y9BJI2s:1', '', '', 1, '', '', '', '', '89165684189', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-05 22:13:19', NULL),
(138, 'Michał', 'kod!@op.pl', '0000-00-00 00:00:00', 'c0c7d613b6aaf8767bbfd5e14c1e704c45d3b8d1fd42e90546b4c09329338304:bL2tL75tQGqcn5ytbsoJ7wkBuqiY2kKF:1', '', '', 1, '', '', '', '', '0048509272242', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-06 17:29:31', NULL),
(139, 'Modern', 'natalia@dakkaken.com', '0000-00-00 00:00:00', '0281024f7c3765a7209779464cb2d0099b52d0f829dc34973c3cb3a8185b0765:on0KxYOJfpqGbtmb1efT5FnkhWQQFXO3:1', '', '', 1, '', '', '', '', '66259778', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-05-16 11:16:26', NULL),
(140, 'Admin', 'admin.assistant@harvesttrading.com', '0000-00-00 00:00:00', 'ff3bedfac5c225ed5f5f4399a67a1b8b1ae6e4151fa5c7ae596908ba4b1d709e:xpynem1tmpoLCR4FOTsaaSXHIlxmZfej:1', '', '', 1, '', '', '', '', ' +97433631493', 21, 19, 0, '', '', 0, '1', 1, 2020, '2022-02-21 08:29:37', NULL),
(141, 'vinod', 'vinukuw@gmail.com', '0000-00-00 00:00:00', '7bf05864e866a5db213a782f2852b72dad77e07f0d30c7aba8e3e12737b3281d:pNbKoqbWduW2FZNDg1UvTPwrgHncOl75:1', '', '', 1, '', '', '', '', '33183567', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-11 12:17:49', NULL),
(142, 'reynan', 'reycorr34@yahoo.com', '0000-00-00 00:00:00', '4aead1a99c35cc80eaa5200634d738c4b51b1f85cd8a4985fdbb98f0c7c19950:rKJqPlIAERoO9kC8jKnJTtWlzQXtjsaO:1', '', '', 1, '', '', '', '', '77869883', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-12 17:15:52', NULL),
(143, 'Joseph', 'joseph.boulos.92@hotmail.com', '0000-00-00 00:00:00', '301a9f166da4cff897432e6b42942af429476c1153d185138e1590bc025cc481:gjkr42JErAsP9BPR7Vdq5IQclyXpjobK:1', '', '', 1, '', '', '', '', '31027322', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-13 13:45:01', NULL),
(144, 'Martin', 'mar.sudlow@live.co.uk', '0000-00-00 00:00:00', '63305caa534ba16e11a894dc27824c534b9d4f250bbbf0af9c53af9c83724ca6:rKoG69yQGCkMT0FswQPjNiRpxFz1s2hO:1', '', '', 1, '', '', '', '', ' +447908873265', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-16 10:06:19', NULL),
(145, 'Safouane', 'saflab1002@gmail.com', '0000-00-00 00:00:00', 'a7e7ced6f59d5eb9e7c3dd3c3bd21b09ad848224ee47b002e51ca27b95a9541a:LqNSqpZCeQhUVg5IF2V2nGKMVyrig5Cl:1', '', '', 1, '', '', '', '', '77912304', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-14 10:14:35', NULL),
(146, 'Alamat', 'sales@dakkaken.com', '0000-00-00 00:00:00', '8c0304f9c66786ac3a7fef32fa5b18bd2e29e3e5943512d52034c219bd8ed52c:ei4Cf1o3HxYFrTSaLR1OBALmQdGbLUQ2:1', '', '', 1, '', '', '', '', '66259778', 21, 19, 0, '', '', 0, '1', 1, 2020, '2022-02-16 13:22:13', NULL),
(147, 'Asel', 'aselturatbekova.91@gmail.com', '0000-00-00 00:00:00', '4deb918376453bdda4fdf4cc757d4b01cdcdd4c9e9372dc669ccaa6fec085482:goC3k4twMJdfDb3GnypMLv6IQzrr8gkB:1', '', '', 1, '', '', '', '', '50244616', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-04-05 09:29:32', NULL),
(148, 'Rambabu', 'sales@positivetradingqatar.com', '0000-00-00 00:00:00', '48ee663ce3e48c0271656891509f589247e9ae1e4ae148bfa8615b0e4d88eecc:86gFI9qIc5zfTLp4KoLqoU4bDUuFbEG0:1', '', '', 1, '', '', '', '', '33016184', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-18 19:50:02', NULL),
(149, 'linta', 'lintamariam95@gmail.com', '0000-00-00 00:00:00', 'bdadba9a32d42565995912b387b0b0cc48fdd76cd9851253b09157961c0f30b4:0Pen7tijgnIweh1PF83aTjGl67H31iAb:1', '', '', 1, '', '', '', '', ' +971581057001', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-17 13:28:55', NULL),
(150, 'Shahd', 'shahdsaed78@gmail.com', '0000-00-00 00:00:00', '45190acbc9cd1559fd090c443efeed095e7f1d833ac002d5f3eabac62904748c:ZFIAfcbfKwLZbHIwQOTlCB92bu7o7XAq:1', '', '', 1, '', '', '', '', '50866116', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-17 22:23:13', NULL),
(151, 'rameesh', 'rameeshoe@gmail.com', '0000-00-00 00:00:00', '329af0d233814de8be039c52fa71afafca1d1898ae79421fb800f52752724949:EafaTZ38dWU3o9ntakk2uY4kaOOk9doP:1', '', '', 1, '', '', '', '', '55367888', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-18 10:54:37', NULL),
(152, 'virender', 'CONTACTVIRENDER@GMAIL.COM', '0000-00-00 00:00:00', '1b243d8e9f6fbd1ea264cc262592213fad81a67de35a9cb2b024ed8f0e4f375a:E2qcxHOHn8cYRA3szN1fFNw55tFtgyZ0:1', '', '', 1, '', '', '', '', '9891314361', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-05 07:34:41', NULL),
(153, 'Jefrey', 'kai_alingalan@yahoo.com', '0000-00-00 00:00:00', '53cdba67752d6686aa599e6fc3a9b6876a2bc149bfd4a46ebb46700bd21bcd4d:5dIIfS3UkMNWKAIK0mwTwELXxpGOuVT8:1', '', '', 1, '', '', '', '', '55884945', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-19 08:45:07', NULL),
(154, 'Cris Ann', 'crisann1221@gmail.com', '0000-00-00 00:00:00', '57c81122ed7476eb0b4504f094615e96c21cf0aa803f22e28243755bb767d699:AiXatL1e2QhNXmV6Qqcop2pIzwBc0Inb:1', '', '', 1, '', '', '', '', '7091 0477', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-21 19:55:10', NULL),
(155, 'Brilliant', 'karla@dakkaken.com', '0000-00-00 00:00:00', '980c2bee231ca47ad3cf099848a9779a68e656aa3e07ce2df7d8387e7f095ccb:xkn2RhO7GVmWtJy9pytVn2t9wHK9Ld4N:1', '', '', 1, '', '', '', '', ' +97466259778', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-28 11:53:06', NULL),
(156, 'Shaheen', 'dentry@dakkaken.com', '0000-00-00 00:00:00', '4451c1096e6fce0602ea37bd9aa787925604293dafaa84f3c0d17c1cc911e88d:IdO7t8LnIRa0NAVLFfRjMn4NTFJ1qDa6:1', '', '', 1, '', '', '', '', '55778496', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-02-01 11:46:19', NULL),
(157, 'Fatima', 'hudat2005@hotmail.com', '0000-00-00 00:00:00', 'c49ccad0723bfc792644aeec89cb7e47c759a565eff9e41658850525bc3de968:ll78QNpXn8ZNGXWR8nRfJFkX95po9L8Q:1', '', '', 1, '', '', '', '', '66178125', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-23 13:39:39', NULL),
(158, 'Ahmed', 'ahmedrabah117@gmail.com', '0000-00-00 00:00:00', '79840a20e49b0613bd7997538ab0fa60da843c15b9569d4342397e0858e4d9e7:ZVEBp1ZjIqKu226i16YeiJQOPDsf7eDr:1', '', '', 1, '', '', '', '', '66473053', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-24 08:37:22', NULL),
(159, 'Salman', 'sabdulr1@asu.edu', '0000-00-00 00:00:00', '7db468aba416b6ca33de35852175ffb8e41fa2e83bae41a00dfed18e467f8bc2:QiRgHptAfiJbYFdofoC4cy44eOeKJm7s:1', '', '', 1, '', '', '', '', '77009994', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-25 23:20:49', NULL),
(160, 'Elisabeth', 'kochjosepha@googlemail.com', '0000-00-00 00:00:00', '96bacc96bcf53b464581da2ccda2cd8d80995419f6386db1a68fd861b78e654b:0U7iAc4HhqKFngSOGKGW56vVbR1JqE6h:1', '', '', 1, '', '', '', '', '00491795210194', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-27 17:38:40', NULL),
(161, 'Simon', 'simon.qatalum@gmail.com', '0000-00-00 00:00:00', '4bbf583f2d55df86f3b7a0ad12e1c0d3d9808007eb001a876113ec67714ef893:Fd017ahjEdHV58u7owl1mHu96TkizNyC:1', '', '', 1, '', '', '', '', '66001455', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-28 07:37:44', NULL),
(162, 'Minu', '21.minu@gmail.com', '0000-00-00 00:00:00', '66110b9a2c53bdec23063a7840ce0eb6c80ec65fc0e189482b74d86639da8960:i2gMcQzhAQyXI3fru825q0MIP6WM53kT:1', '', '', 1, '', '', '', '', '66192636', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-29 11:15:55', NULL),
(163, 'Maggie', 'maggiefarsoun@hotmail.com', '0000-00-00 00:00:00', '5803cfe87a80a6c77c1a4a9dca9447b58d0a7d2ef2c62548a95f39c588aabf0e:75ehe3UNmF6ke3ss4aB4cT7iSXktje63:1', '', '', 1, '', '', '', '', '33145823', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-30 09:05:27', NULL),
(164, 'Waleed', 'snowhite3@hotmail.com', '0000-00-00 00:00:00', 'eec7b0f29aa8814a59da04ba4e23aa8814d08903d918fba3327ca76a5113cc83:2CItXXhdn5RuJn4jOySVfgtulV0mqnFv:1', '', '', 1, '', '', '', '', '70559889', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-04-30 13:58:15', NULL),
(165, 'Eclipse59', 'iMSDzeroX39@men.marrived.com', '0000-00-00 00:00:00', 'faa9df8fd34dabf387896088248ae40e5e5ccb204816fa0a5f10975491a7c378:TWCPeyCKVJJCADLqtBwFBVqTJR1GyGUl:1', '', '', 1, '', '', '', '', '85726873977', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-03 20:35:44', NULL),
(166, 'Shaikha is', 'shaikha22ss@hotmail.com', '0000-00-00 00:00:00', 'a123993721e1ef2b1919fe3eb91f8a18b4902f95353d41acb63917c0eb70ebd1:7cdiI6FMtlHyYUSZLjXTcgE5k64WDBru:1', '', '', 1, '', '', '', '', '66251222', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-05 05:06:49', NULL),
(167, 'AREF', 'aref265@gmail.com', '0000-00-00 00:00:00', 'ec9f22b0d84155eb3e0b5758e078cec2a2795917a8fe3f42546a695070762258:DRMZNfVSfJLUpEPkfiEdLhyRv4wUqL23:1', '', '', 1, '', '', '', '', ' +97466562166', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-05 17:24:46', NULL),
(168, 'Petitcollin', 'nicolas.petitcollin@gmail.com', '0000-00-00 00:00:00', '453f03c30dc46f0a3b33fd34e170c5819b259d7aeea609316619a373fe5a8b3f:1WORdPSiDA4bVuQpmBEgQifOS6gH6lJG:1', '', '', 1, '', '', '', '', ' +974 6698 8156', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-07 11:04:07', NULL),
(169, 'Begimai', 'bturkbaeva@gmail.com', '0000-00-00 00:00:00', '4d87af8debe82b1aa3c515e58197c0bf9a22ff76df624d72a37bd7263f2086f9:mBaDe3ceX2nbSJGIWACMBFuNbCQ4R8Td:1', '', '', 1, '', '', '', '', ' +971501359233', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-25 01:54:11', NULL),
(170, 'جمعان', 'gaman0534@gmail.com', '0000-00-00 00:00:00', 'f18a83574637b7c466aa58852b1e024865fae40be0ff40345f745ffb50097922:DFWRZen4I20jcJXDffABDl6qxmZRSZ95:1', '', '', 1, '', '', '', '', '0534878086', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-08 00:44:25', NULL),
(171, 'INTERTEC', 'natalia@naaasagro.com', '0000-00-00 00:00:00', 'b568c3664cf6c903fa3bd36812cfb260c9ca045f11e79818eab6126b7fa3cb17:EPXvc1wyibJz6USxBdkvlgv9EqaZBffW:1', '', '', 1, '', '', '', '', '66259778', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-04-07 09:55:58', NULL),
(172, 'Muhammad', 'mhukabir@yahoo.com', '0000-00-00 00:00:00', '9d20c26d67836f7717aa695e95fd8871a36e52c7002be32e3f406477f5ed24e2:eS3NhNjtyCYIdRGAYQDgdWs6cKqV6Tqe:1', '', '', 1, '', '', '', '', '33174504', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-08 19:06:47', NULL),
(173, 'Olfa', 'olfa5057@gmail.com', '0000-00-00 00:00:00', '6408b51522e88a06d649d1bb2ea2d047a68eaf9f71c1013eb2980eed1e8dd523:csJR34o6mxMaUhbrGtrlkEAtroHPfKXD:1', '', '', 1, '', '', '', '', '50635001', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-11-25 17:28:53', NULL),
(174, 'BRANDS', 'b.abdelgadir@brandcenterqa.com', '0000-00-00 00:00:00', 'b07d9c7f68d409722b89ce3b58b16fca5a73a22cc769c81470de826724921598:Xs87oKcP9dVd6Xemxu6cDxIDeGdkekIa:1', '', '', 1, '', '', '', '', '30235227', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-15 06:32:38', NULL),
(175, 'Ramesh', 'rt9824617@gmail.com', '0000-00-00 00:00:00', 'b0d481cad4f5bc6a27940f08e0f9fe68e7a9eaa76179c99f96626b813cd2b69a:t7MNfBOwaR6tM5LhdIq8IaHESRmYxe1s:1', '', '', 1, '', '', '', '', '30508431', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-13 18:13:18', NULL),
(176, 'جميل', 'bwthamra@gmail.com', '0000-00-00 00:00:00', 'ce808c6e0f1880f2dee8c85dacca74d1690b4ecbcc457606ad92665e6df464fb:MXB2v9Okj1NqG9nISplDIbbA1ZgjQqVN:1', '', '', 1, '', '', '', '', '66123451', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-14 01:32:19', NULL),
(177, 'Danica', 'danica_de_leon@yahoo.com', '0000-00-00 00:00:00', 'e0699a31a790991ed088d8465aacf260f991e6fd92911d1fe579990f229e7e14:wdNbGodF9TMQ6lDy1wPn70ilk6xIiLFZ:1', '', '', 1, '', '', '', '', '66346995', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-16 17:11:39', NULL),
(178, 'shibin', 'shibints3@gmail.com', '0000-00-00 00:00:00', 'c4b91f5827e93d2a5b46ab1710b8f411785cfb106ef027062432cfbe1b583e71:ukSFbYOyqaZf1JSXbcO8RD4uH0zcrHpL:1', '', '', 1, '', '', '', '', '50189925', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-16 06:07:04', NULL),
(179, 'Ahmed', 'ahaal808@gmail.com', '0000-00-00 00:00:00', '047cde8a324b9bdd3916d7995312663e0cff5545c1b17c67f3e388e5058e591c:S5krI1cu2HHmGH126IzPSF8aIPHImUhj:1', '', '', 1, '', '', '', '', '70308408', 21, 19, 0, '', '', 0, '1', 1, 2020, '2022-05-24 06:41:30', NULL),
(180, 'Shawkat', 'shawkatakbar2015@gmail.com', '0000-00-00 00:00:00', '515343dddaa8342c0eebc3315591cb2093da52fa66620db847ef3637ac263833:hdTpg8rcuVVRrsbzXFDI7ZgcWZPrUDNx:1', '', '', 1, '', '', '', '', '70440203', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-18 13:34:58', NULL),
(181, 'maryam', 'xxmmmxx@live.com', '0000-00-00 00:00:00', 'af48d64fea99404d08d08da5499258b5aa3c9e33f5aa008860d6f32ef66ae46a:YmOc9BnOdOIS14Ya6pdV5i24eOJrbK0B:1', '', '', 1, '', '', '', '', '31043529', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-18 18:12:59', NULL),
(182, 'Jalal', 'mb430e@gmail.com', '0000-00-00 00:00:00', 'efce36d3d35d97db92d24dd88b1023fb5b830d1a89e9215a3c86b4b4b29a0f73:mkmeRP0tBY2ZuDumLHTNimnshOxLkkKK:1', '', '', 1, '', '', '', '', '33337158', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-19 07:01:51', NULL),
(183, 'ARAB', 'taha@arabfruits.com', '0000-00-00 00:00:00', 'fd98a9823874e3eb8e016d7b0f058be651e4c2191739584918490c10a3a5845f:vVrFec5tkdQeo95aRfvEnq4qEL84mDyz:1', '', '', 1, '', '', '', '', '30322272', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-15 06:31:02', NULL),
(184, 'Ahmed', 'ahmedbelalbd1000@gmail.com', '0000-00-00 00:00:00', '88ca6999f6f61727a306b63ca0dc7a479d5a618f228bbaa1b85416542f519af8:taK5eRwpZ6BHeK0DXBAVP2d0JqzEdDSB:1', '', '', 1, '', '', '', '', '33009497', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-19 22:29:15', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(185, 'Yesmine', 'yesmine.attia285@gmail.com', '0000-00-00 00:00:00', '0da27bce4f8d1233923616889e85af0aba2ced4b8a2fe4758113316a01588b16:9OkSEHo2kP76dAYGMOug9pZdUSumHsJC:1', '', '', 1, '', '', '', '', '55127858', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-20 19:16:07', NULL),
(186, 'Moe', 'mohmedelshaikh@gmail.com', '0000-00-00 00:00:00', '81c2587f97b4db5b3db1955c9cdccd267b6ecb08085489f6885edc5fcef655b8:2yieEC6RlqGCD0pA0B0c5vFs4fEsGNXe:1', '', '', 1, '', '', '', '', ' +97466610018', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-21 05:51:35', NULL),
(187, 'Shyma', 'shyma_champion@yahoo.com', '0000-00-00 00:00:00', '71ca7664b431edd227e82e2e3dcf3f7d060ac78f9a8e035610b49d7ab8b53643:kgxhkBZVb2xAPAg6KXlbEZIuKoLlAcEk:1', '', '', 1, '', '', '', '', '70670105', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-22 00:29:49', NULL),
(188, 'Nawar', 'n.alsulaiti8@gmail.com', '0000-00-00 00:00:00', '00d70005471ed64eb1269749e27926d5b85a89d8721e4bdf01fb65052dc66c5f:6zRrLgqprpS8xuNGMzuBfQSHf3aMBU4G:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2020, '2022-03-29 09:09:46', NULL),
(189, 'RANULFO', 'ranmimix3@gmail.com', '0000-00-00 00:00:00', '6c77f9ee0343079a4dc122293a28ecbc49866a3e648dc63414fcfacd73d5f3a9:mRtRcFLdoZDxsX84QTnWUIZTqYNd0kTH:1', '', '', 1, '', '', '', '', '77575780', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-24 19:17:51', NULL),
(190, 'Maha', 'mahabintali@hotmail.com', '0000-00-00 00:00:00', 'd92f90b187fd1a92f6c0993272927ea2c99efbf924e06084dce4800ccf700e47:lWqOY2zwfQUjJWrS7CJKZHiSWW7rnLv1:1', '', '', 1, '', '', '', '', '66739738', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-26 09:25:07', NULL),
(191, 'PURNA', 'safal2k5@gmail.com', '0000-00-00 00:00:00', 'c9c3aa5f1cc8875b72603f2502cc17e1536346fa767736b08c856ca688533896:IyWuYHDXUEyJMQn0dJUMIev1GMWVfVhw:1', '', '', 1, '', '', '', '', '77436807', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-27 10:14:57', NULL),
(192, 'MelvinBom', 'amenoomamenoom.6.6.9@gmail.com', '0000-00-00 00:00:00', 'dec0b9e7322bfb5235725a63aa3b470f35111ae505a79e71a0670676be06a95b:RhhqOQdkhJolWc9xyd241p2d4ykIYYKe:1', '', '', 1, '', '', '', '', '86949694396', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-27 10:06:30', NULL),
(193, 'Jemma', 'jemscott@hotmail.co.uk', '0000-00-00 00:00:00', 'c93e1a1d93fc81f534c89b343106725b1e0b4b9c6d2246e1cbafdea6ceeade28:ORYiQqlog7flmea8HYSPclCg8BexD4wK:1', '', '', 1, '', '', '', '', '33904129', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-27 12:25:37', NULL),
(194, 'YOU', 'youssef@dakkaken.group', '0000-00-00 00:00:00', '64534ee2df1e4e27eb258273d48718c1290247f24727282572d2fa1a98775920:rYVgu16rugnxo8lLQIndNt7XZAmcuPW5:1', '', '', 1, '', '', '', '', '50927927', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-28 13:35:03', NULL),
(195, 'Azmi', 'engagenow1@gmail.com', '0000-00-00 00:00:00', 'd73bad70e7f53ab074ad1700de4e36005c8d3a031b07619234a668ce3c14f806:FqxNywWfouM0KjL0YvKJCMkzJnidZ3DL:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-06-10 17:48:58', NULL),
(196, 'Abner', 'anermyta@gmail.com', '0000-00-00 00:00:00', 'b876e24bbe4614b4ddc3f375d3791b11df2125ae1cdcb2cdda89dafaa317518f:bT4quCiKzlVj4yWUQjfBbJ5ahky7CLeJ:1', '', '', 1, '', '', '', '', '66124937', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-30 07:54:12', NULL),
(197, 'Androwynempap', 'wovesejg@gmail.com', '0000-00-00 00:00:00', '44454322939153fe54fdfce3f4e9d75abd767fbbe961b797f40bcc6da7545619:ahuHGwrULa7BzB0p9g3o2zr3oM10ZGxM:1', '', '', 1, '', '', '', '', '81443492473', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-30 19:36:03', NULL),
(198, 'Mathenasoorian', 'msoorian@yahoo.com', '0000-00-00 00:00:00', '17daccf8c348784b7c1aadeb4aeb4eeaf7efdd2c6f0ff6c007e88b3c00dac145:6sp8GD0q6sDYlaTzSllCi38nuLaPLmxe:1', '', '', 1, '', '', '', '', '50828697', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-31 10:25:54', NULL),
(199, 'Youssef', 'essid.djo@gmail.com', '0000-00-00 00:00:00', '388412593ad33e2afc0b8c06d307c4f06fccb01dcddd2d404babd684cd0ecc09:C0w2y9usMSmF6KWFbDtZAFXlqgFeMTDz:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2020, '2022-02-09 19:48:20', NULL),
(200, 'Saoud', 'saoud50100@gmail.com', '0000-00-00 00:00:00', 'e92817fa6b8bfe05f9952af5ef7003a3ba0f28ae2be146f66d7918947d9780e3:fsZixjBKDFsI0ULTHGF04eBNkHswsSsE:1', '', '', 1, '', '', '', '', '50100188', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-31 17:55:30', NULL),
(201, 'Ahmed', 'ahmedkafoud1@gmail.com', '0000-00-00 00:00:00', 'f100901c239cd5e3accb28f6ef2a2d6d207263089cef243c8b03dc989e93fb6f:yUnev9ffleDrRw5nMJsR4SctIs1TtjQd:1', '', '', 1, '', '', '', '', '55066016', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-01 13:08:09', NULL),
(202, 'James', 'jjohn1981rn@gmail.com', '0000-00-00 00:00:00', 'f551d220afecff8f61c11c095b34a318e7546042d7fd29315e72edd4c0a1f1b4:NVZFD9ZTpi0CEgEAm6XEZbAecVore8Ri:1', '', '', 1, '', '', '', '', '33712433', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-05-31 22:20:21', NULL),
(203, 'faisal', 'faisalwaleed41@gmail.com', '0000-00-00 00:00:00', '6ca9f2fdea158fd83e23dd6cdb13e2d213cb71c3a6931fdbf3e235345a3f7783:DmT3N2za9D4qjKdmp9lPBBXGWv2GNtkD:1', '', '', 1, '', '', '', '', '55575242', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-01 16:49:01', NULL),
(204, 'امينة', 'ameena_473@hotmail.com', '0000-00-00 00:00:00', 'b3532c0ea091f5af4f4cc6672d3f53f6ff9ee24e2986e6cd2bb723bac3a5bd9c:uSrjPHjlqVtpCnTVRXVCltDnGQkiQGnF:1', '', '', 1, '', '', '', '', '0097433375505', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-03 12:37:36', NULL),
(205, 'Dana', 'danacash1@gmail.com', '0000-00-00 00:00:00', '5b288faa7f4248dc4070991d734c50f6bc23354ea4a72b7950e7d083d44ec49a:6846g1RPRRIhtrXZNT3szvf4gjByP79S:1', '', '', 1, '', '', '', '', '974 44660962', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-05 11:18:42', NULL),
(206, 'Amana', 'miisakii911@gmail.com', '0000-00-00 00:00:00', '28125b344d04c77685347c108ef598527ec86434fbfbdb9ff7a590590472b259:etg4G1kVzHGIiwQDvay15JOreThIlfnq:1', '', '', 1, '', '', '', '', '70330805', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-07 22:24:10', NULL),
(207, 'GeraldLem', 'gerald19@nextfashion.ro', '0000-00-00 00:00:00', 'f1d5ec93bea3c445c6a04953d389f7fb5b3c0a61d76aeb9e027998fd916990eb:8igmtyRzwZoUa2DTjLBgKreKsmdonP0D:1', '', '', 1, '', '', '', '', '84714864179', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-06 15:17:16', NULL),
(208, 'Сloudchott', 'svidinfo1980@gmail.com', '0000-00-00 00:00:00', '49bbb8d849b6dd3282eca4ea6d5752d301c45416a97d1981a5f2fe44cfd02e1c:WAQQMoWOhpaVW5Hsyjbk40FVzgI9aPle:1', '', '', 1, '', '', '', '', '86336323334', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-06 20:37:38', NULL),
(209, 'Nastyahempap', 'tsio.mar2@gmail.com', '0000-00-00 00:00:00', 'c5a1037b6c075e8cc43a581d127665b69637b36d13799019123e9faf57a60df7:I6jX5jz7vceHnb8b69pItw8lxVcO1Zpj:1', '', '', 1, '', '', '', '', '83873525929', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-07 09:31:34', NULL),
(210, 'pieter', 'etiennemoolman@outlook.com', '0000-00-00 00:00:00', '3f621d10c3845dfed23aa38e4e84e070c533f8d29334a95fad3a035a789284b8:EBiOgzfz0Wyv9rTVCvBRVjDGgNV4mpNw:1', '', '', 1, '', '', '', '', ' +97433484441', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-07 17:59:28', NULL),
(211, 'Osama', 'wardanimohammed3@gmail.com', '0000-00-00 00:00:00', '8c696587e0bc0a7e42de04c271b36a5d0f637fa382d135af5b702d2919689cce:SnergOqAhuJJA74BDm9TEKv1oa95xUoQ:1', '', '', 1, '', '', '', '', '74499892', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-10 14:47:21', NULL),
(212, 'Khalid', 'brandy2me@hotmail.com', '0000-00-00 00:00:00', '8233abe1de7804573eab311ac88f0c246692d8f18ba3f05aa02fe2a404834a08:pQ6HspVMNwofJkvVtkJVNHZEFeklHvrH:1', '', '', 1, '', '', '', '', '50224719', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-12 16:20:02', NULL),
(213, 'Hussein', 'hussein.khallouf@gmail.com', '0000-00-00 00:00:00', '8121e26abd4e1f87a6ae3b71f5185850cbee4449a8b2dc2aac2e3d235987543f:EvB8drPCu2D59QazZW1kxrwiUywkToWz:1', '', '', 1, '', '', '', '', '31013040', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-13 20:31:07', NULL),
(214, 'Saragadam', 'santosh.naidu@yahoo.com', '0000-00-00 00:00:00', 'f0ae79789ed215723036284eee1b0cce5f57a067d8a1dc3c039888afaec1e1c0:vd9SUfzcIy9MZ6CjcKMxpU8sYVS8G9P3:1', '', '', 1, '', '', '', '', '44216274', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-14 06:59:32', NULL),
(215, 'Rogelioempap', 'elenariabova0132@gmail.com', '0000-00-00 00:00:00', '6e2f7307acd6eebf76c9b8f489e51d27bf7e66920e9a64b3a5a2ef5ec9e5a155:hYyfMhDq09c3EE6M7BdrLcaCX5eDLX3a:1', '', '', 1, '', '', '', '', '85773871178', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-14 09:38:39', NULL),
(216, 'Ma.bebelyn', 'Khush.mar@gmail.com', '0000-00-00 00:00:00', '04361bc0e1584828ca7592ead588349271ef7a3604abc06d1422a85a4faf05cc:KheTSrMhqzLbPq0Cza9Y80Fjuh340JIu:1', '', '', 1, '', '', '', '', '97455032254', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-14 12:02:14', NULL),
(217, 'Sarrah Angeli', 'itansadieenzo@gmail.com', '0000-00-00 00:00:00', 'e2483e8607cf46801278cf287ea0794f87b47864c599c9f3bb66d1e07c2e5904:kCbpDDHZWpEprqyYwKMwjFuMC3fDZTTS:1', '', '', 1, '', '', '', '', ' +97477827914', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-14 13:57:05', NULL),
(218, 'Zaara', 'ghazalk105@gmail.com', '0000-00-00 00:00:00', '2a7b56ae4d3847dc84e2c7e71696d5199987a62b14de497a97d60594a9450c48:M26gVU3xIpohQ89j1cVZX7EIwySRaQm0:1', '', '', 1, '', '', '', '', '33034876', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-14 18:56:09', NULL),
(219, 'Albertnek', 'fakirovadf@mail.ru', '0000-00-00 00:00:00', 'bb3954e1ab837fc243082e37a1b8ad02cca8e639c404174b8103e7c5593428c1:p33KNchI8OuBce4utajTgUGPLdKhNaRo:1', '', '', 1, '', '', '', '', '83426475613', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-16 11:30:50', NULL),
(220, 'Danielhal', 'bamboogroup.design@gmail.com', '0000-00-00 00:00:00', '59bd1a2942e2714fb0ed674d2900917058c446d8dd12cd8c71c1910064459484:qRWpxxsMpROhXFXplEydxxITq7No4BKA:1', '', '', 1, '', '', '', '', '89494142315', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-18 09:25:03', NULL),
(221, 'Kassham', 'supriyashekh998@gmail.com', '0000-00-00 00:00:00', 'da698aa08eb26c4ef34c677451362483e0fb986ce9fa0bb2018821e521bd4944:FRdOqPdWLAlu7TkA4C0fGrD8BTq9fUIB:1', '', '', 1, '', '', '', '', '6201081916', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-19 10:41:06', NULL),
(222, 'ClaudeNab', 'proectsxxx@gmail.com', '0000-00-00 00:00:00', '6447a7f0b886f33aa47d092c1590d51bac55980f8ddb39803d0b84d6dd6a1221:gqOQayNhuTyuo6TNBZ3eN9cZOVDoe9ea:1', '', '', 1, '', '', '', '', '86958587115', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-20 04:32:57', NULL),
(223, 'Rasha', 'kalashwah@gmail.com', '0000-00-00 00:00:00', '93ba390095196c6c7e151f5dfe6174d076cc105a82eb3910dbbc0e3c8f752237:gVnli7x8F2QXLbm6idHSj5ES7eh33qYJ:1', '', '', 1, '', '', '', '', ' +974 3364 8106', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-21 16:00:27', NULL),
(224, 'Nanoosh', 'qtr4044qtr@gmail.com', '0000-00-00 00:00:00', '1087291a709aad6ddf32f021ff0effa1a80f5ca2313b0b89263142ccb5e450de:P7h3uzb1LeXYmwQzqdH0wl6zqM9oAqDu:1', '', '', 1, '', '', '', '', '55806860', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-20 21:18:39', NULL),
(225, 'BrentNor', 'r0sprod@yandex.com', '0000-00-00 00:00:00', 'eb7a75dd9980b459d43f3a87394da438d106640e0c60cc2115566a50089b0f9e:pt3mGgCIfSzR8uyjfz4yGfektw28fKQR:1', '', '', 1, '', '', '', '', '88527661159', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-21 07:47:17', NULL),
(226, 'dctdfempap', 'manchalena7@gmail.com', '0000-00-00 00:00:00', '583df27df6422fcbd320b9af21f8481c8c9df96a0e5e06a5eee0e91d85297b06:XT46dVrMan8K41mwyJQGqjLBl8uqsUBb:1', '', '', 1, '', '', '', '', '87938983982', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-21 09:39:38', NULL),
(227, 'Adonelle', 'adonelle@gmail.com', '0000-00-00 00:00:00', '6887cebdc73de7134cec0b3d95c42826c29d3b22b42e8fc2f85eaa4672cb1970:bU8PoQUhDzjG5bIJKIgafhxBLdhc3LYG:1', '', '', 1, '', '', '', '', ' +97470616050', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-22 08:43:15', NULL),
(228, 'suhela', 'cyxelafaiz@gmail.com', '0000-00-00 00:00:00', '7db0d5de77c33619f189520b38ad5c9c308a5902318cfec8efa7253c40594b2a:jNTQBwSQ87phHUypC8tluSohf6awQ5s9:1', '', '', 1, '', '', '', '', '3150154', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-22 18:32:00', NULL),
(229, 'Robertvoisp', 'cortesges@gmail.com', '0000-00-00 00:00:00', '9c5ecd55d645d1b794f33a00725208ca0efb21166462a202673020750741f99a:aKu1PO3zb6VYmDD6obJ4SInAatlS4dUv:1', '', '', 1, '', '', '', '', '81153182125', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-22 19:12:24', NULL),
(230, 'NorvezhskiyDombek', 'prorabnd@gmail.com', '0000-00-00 00:00:00', 'bc569250dd05327002c36c280fd0b44e19aead6f266e88b4c5cb7326456271de:geOJbH88hc3RYfAgXqMYHintZgZ65gEs:1', '', '', 1, '', '', '', '', '88193968248', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-24 11:32:04', NULL),
(231, 'Davidboorn', 'olhakoni@yandex.com', '0000-00-00 00:00:00', '4aab549d1a7d65f2936775828cb19ab8afd2a0032bdd52c291c7c2419f29d3fa:AYVSyyeT24qAbyBJ7qKd83xjo37EPKYu:1', '', '', 1, '', '', '', '', '85441435578', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-25 08:53:16', NULL),
(232, 'VayWwqoi', 's.progu@mail.ru', '0000-00-00 00:00:00', 'bfc44d11072913f8de622334ff17409a8e0fb5bed3c2ccf682ed6203a843844a:lXcqgNkyHiTaRG7Sb1TWGkfHYOLGoGXe:1', '', '', 1, '', '', '', '', '83494239378', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-26 13:21:23', NULL),
(233, 'Thomasvor', 'gordon72@nextfashion.ro', '0000-00-00 00:00:00', '4787fd749322099f6e7b21384d1766d718a9fc7cebc66371f2232e5e1c63bb17:VSmfBYwvItd46C0c0N2fQUY96EPzawwj:1', '', '', 1, '', '', '', '', '83953122169', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-27 04:11:20', NULL),
(234, 'Rahul', 'r_a_h_u@yahoo.co.in', '0000-00-00 00:00:00', '1eff151e2c6011b596ae08519108b90cc4b4386cf02a11dad5fe6455e89325b3:kY1Qi9lxLlq58mgEgCOVihFPDtquDiuZ:1', '', '', 1, '', '', '', '', '0097477860330', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-01-04 10:58:14', NULL),
(235, 'adrianMic', 'catch@an.heartmantwo.com', '0000-00-00 00:00:00', 'fd521a34cfabed65975b658980e7189f9c130866c46d2e011ca910b6632c0f9c:upHBSYBrUVm22wLe2OQenV30qNicws6N:1', '', '', 1, '', '', '', '', '82891565991', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-27 18:23:07', NULL),
(236, 'Allexandrfeamn', 'petrdevakin@yandex.com', '0000-00-00 00:00:00', 'a4f2ec601db3b1eddc25c0abb12fcb4e167ae44cd58bfc3d7ed8e924e9763604:R3ueU38wuvsTkZJ7NpvV0GUDF9qMhzOD:1', '', '', 1, '', '', '', '', '86884159414', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-28 13:19:26', NULL),
(237, 'fynjifempap', 'lpolatkina1@gmail.com', '0000-00-00 00:00:00', 'bfd483c017a545a51fb163d5cf8f2a1162551576eeb816a565df85e7bede9f8e:C89Uz1c3Qj3CoLskEMPt1BVOkXybvdD5:1', '', '', 1, '', '', '', '', '89678383987', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-29 01:21:20', NULL),
(238, 'Natashamus', 'lena.tikhonova.2020@bk.ru', '0000-00-00 00:00:00', '62ed64c7225e6fb7f9d35020ca0a01cd6fae80d82ded8da956040ac1ec0dc2ab:ww7Pni7p0hohmxeeqnG3lG01fD8RfAz4:1', '', '', 1, '', '', '', '', '82221429799', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-29 23:01:03', NULL),
(239, 'Lumé', 'lumestrauss@hotmail.com', '0000-00-00 00:00:00', '2287417d109f3fbac509fcb49dbcd7cc91376807c161129f8d7c06d72cdcd8ca:17tOSsPfLz2miGRGeh6XVH8NBRfYAgPy:1', '', '', 1, '', '', '', '', '50112544', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-06-30 06:40:00', NULL),
(240, 'Omar', 'omar.m.saad000@gmail.com', '0000-00-00 00:00:00', '9ade863acd6698e0874d978dc80fc84ed76eb7f367db09d3d258c07db1523be9:ZuqlcFMl5lrmqUv0dQcHeWk5Y8orzVII:1', '', '', 1, '', '', '', '', '0097470727742', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-02 02:14:05', NULL),
(241, 'Anas', 'ansabdelkhalik@gmail.com', '0000-00-00 00:00:00', '7ec2c0cf604f4c8dca2e989062811c07564e2ccc77386bf9fe0d13d858b2a444:ZZJPBlumi7mEZZ4lme3fT4kqTpY9pCxK:1', '', '', 1, '', '', '', '', '55989981', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-02-10 12:37:29', NULL),
(242, 'Mahmoud', 'freeloverjishi@gmail.com', '0000-00-00 00:00:00', '48681a0f7dc42e44f8dcd6df7580a59f665dc27f0e043f0dbadb170fb1ba3cab:XFp0b70fwWnxl3qNv4avT324bVCrpNz7:1', '', '', 1, '', '', '', '', '66989882', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-02 19:41:52', NULL),
(243, 'EugeneBlics', '1xslots_africa@bk.ru', '0000-00-00 00:00:00', '44fcb2b90826ce99c53883e3f56ecbb3aa764016ca26378dfb88c6bdcc1bfbdd:poHA1pdGUd9HwHSGsoesec055jOPA0M5:1', '', '', 1, '', '', '', '', '88776529582', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-05 07:53:32', NULL),
(244, 'Gordana', 'gordanaispirova@gmail.com', '0000-00-00 00:00:00', '91b26d972074b02d0d6bb9a4dc2d556bfd9946e36b918debb90485db0b3599e9:pVuKp5Fx89Gskr248LGY4kWABzkrcpH5:1', '', '', 1, '', '', '', '', ' +38669657915', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-05 22:14:59', NULL),
(245, 'ThE', 'israahassan2803@gmail.com', '0000-00-00 00:00:00', '09e156e212c22fddc8a93e9cf368c2329924a74b77603c1fe80538d923dd5cbc:LilhK0e3IjwHH8gBThmZgnKUr7W2ANVV:1', '', '', 1, '', '', '', '', '50587801', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-05 16:13:18', NULL),
(246, 'TOY', 'suraj@toytriangle.com.sa', '0000-00-00 00:00:00', '06716d872e29d9093d86b9a1e531871c4412ae98702511f5ef5ab620e6f2d5c8:f1a4ynCSiiLgrRTToCQzNFbOgn4T1GxC:1', '', '', 1, '', '', '', '', ' +97455665805', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-15 06:28:55', NULL),
(247, 'MIGA', 'migaeloquay@gmail.com', '0000-00-00 00:00:00', '089dd2bd629e54d16e1a81212b4c46ab4b984a24e0657ad20603b800574c49f0:UBv1dd6URIgErHoN4Q6W2UQUZ2oUKn5D:1', '', '', 1, '', '', '', '', '70928672', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-06 17:43:21', NULL),
(248, 'Anthonyerefe', 'anigerda@yandex.com', '0000-00-00 00:00:00', '5c572a5d8fabcdfdc721a073f6a9b2ab34eb4331b0acb13a714522e52f68281a:1CbpbbyRtCaWfkzu1CMkfYTFoaJflUqk:1', '', '', 1, '', '', '', '', '88536852643', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-07 06:50:06', NULL),
(249, 'Aprilyn', 'gheng.cristobal@gmail.com', '0000-00-00 00:00:00', 'ea9bdf4196b0d994cb1de8c3ad45cbe2fffa67688d504e6625dd90daf1cf3a65:ZSVCSgaG3SzRFKHpJr04uvRCMGUnm2ZH:1', '', '', 1, '', '', '', '', '77200470', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-07 11:27:55', NULL),
(250, 'Mohammed', 'mohd_miq@hotmail.com', '0000-00-00 00:00:00', '646ba9a5668f73a943f8f13f16234d9050499983245cfdf79d5c50fae671c868:BFXFJvIvxvSC1qRSq46heiICPWmIfdHm:1', '', '', 1, '', '', '', '', '55454682', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-07 11:27:39', NULL),
(251, 'fhctysxempap', 'inesrom4@gmail.com', '0000-00-00 00:00:00', '179559eb85322e9c1bbb1d3baf469f000dd2fc628b77c71f73b2dd58b6eb4344:uJkmPF0bZWgSnZV12XjUDy4U76oxRd3p:1', '', '', 1, '', '', '', '', '83892981281', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-07 14:11:18', NULL),
(252, 'Mureithi', 'kariukirashid@gmail.com', '0000-00-00 00:00:00', 'dbea731a509164a96677b2973f8eb64f200e9d96f7af4588344c322acb4e5572:7FEYE7kyT9DZfkRy4lHFANcc9qXSa3Lj:1', '', '', 1, '', '', '', '', '55347044', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-08 07:11:25', NULL),
(253, 'Lamiaa', 'shoura@hotmail.com', '0000-00-00 00:00:00', '46c08f8d516cd3b340ff33b5f292089e666565514e7047755976c5e8ef14f76a:5PhAeY52zm72AN16w1Ajn0mX935UleIH:1', '', '', 1, '', '', '', '', ' +97466561206', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-08 11:08:54', NULL),
(254, 'outempap', 'palguevadiana6@gmail.com', '0000-00-00 00:00:00', '3a2e12a81d806d13e6600695f1079fd79c6ea9b58c8690d3ce5625a195ab1826:4k2muj3UGkpX8MssaPoU4i5wLJCLpExb:1', '', '', 1, '', '', '', '', '85738523165', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-10 01:37:34', NULL),
(255, 'Deepak', 'mahto.deepak@gmail.com', '0000-00-00 00:00:00', 'c136bfa4406881a0f4da5299bf0f4fdcf9e3a993b16d22caa97b121e153238f2:XEzwzMenJPn5srhlqqyqDnzobRPb5QKC:1', '', '', 1, '', '', '', '', '9818000633', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-11 05:53:22', NULL),
(256, 'Imran', 'imran2hussain@live.com', '0000-00-00 00:00:00', '60c96ea852f5e09c60c567b905578c24e1c9991fe2905669bcacc2e63f39b66d:rXEkGfthtYqK6Qt5WB9K14xsWl9CWjNB:1', '', '', 1, '', '', '', '', '66460184', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-12 09:50:26', NULL),
(257, 'Mohamed Nabil', 'qatardoha.az@gmail.com', '0000-00-00 00:00:00', 'cbdb069a8da70b09d00bb5192294244236cfc4e70860f6266ca3bac332df3f1f:bMyX1Am4sX3hW05MdCWvbrtOwgV4Dphr:1', '', '', 1, '', '', '', '', '0097433991816', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-12 17:27:33', NULL),
(258, 'UDAYBHANU', 'bhanugoud08@gmail.com', '0000-00-00 00:00:00', 'bc0d1acd2b7715dd1d77740a779778f8ced401780797da8644a7089a81eda1c0:7phgBUMrx4LUL5PoT8WGF5CHLr0FAcar:1', '', '', 1, '', '', '', '', '55764989', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-13 06:35:05', NULL),
(259, 'Mohamed', 'mohammed.ageed@gmail.com', '0000-00-00 00:00:00', '6e3ad4a6381ffbda5d74663aed4f8050cb3dfe6598ccef915789e9f9ddd42987:iE0rkJUPzJgGi6PWgILeyvHYum8Bfgau:1', '', '', 1, '', '', '', '', '33943078', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-14 06:23:51', NULL),
(260, 'Fabio', 'fabiositaliandoha@gmail.com', '0000-00-00 00:00:00', 'deadba442b5958394d3cff86e8f7dc3afe62b13af2b678a5da0eb0ad70200619:OfyagolEpmJiThbj8sZ4zWGVTfzDH2uE:1', '', '', 1, '', '', '', '', '33739738', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-14 20:43:27', NULL),
(261, 'Vincent', 'vynce28@yahoo.com', '0000-00-00 00:00:00', '5784163bf1e20cd87e975feb6892d254f894b3b7560952d434532c8d28af210c:s150UotsYy4dHERWi3mtRViytkFKQPW7:1', '', '', 1, '', '', '', '', '66843821', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-22 10:45:28', NULL),
(262, 'Wnudenus', 'kirilvyatki@yandex.com', '0000-00-00 00:00:00', 'fd2a13dfa654413024b8a346ec049794767bd61a61b1d985f50b3e8b56cff56f:DAZNTsT4l0c96XzrOFxFZZzealuCxqGa:1', '', '', 1, '', '', '', '', '88994492819', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-16 17:00:48', NULL),
(263, 'hotelukdic', 'hotelukral@meta.ua', '0000-00-00 00:00:00', '47854eafbd13b0f639b94fffbc1eebc534153982cd564c7ac1b718b35f8b9214:2KWEzTUysikyXuNVa8rPzmISwjqOpiXZ:1', '', '', 1, '', '', '', '', '84589885531', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-17 10:42:36', NULL),
(264, 'er', 'changa@cgh.el', '0000-00-00 00:00:00', '48e7e8d4e7e40051a8e16f9e384487a7644ef9eec0cef1008de4acb59f7a18ac:4LeX65shYfzBoHb5gTNUKQk0gg0Y0bNy:1', '', '', 1, '', '', '', '', '86141789771', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-17 10:48:10', NULL),
(265, 'Silyaempap', 'petryuliya4@gmail.com', '0000-00-00 00:00:00', '4872372a63c3be190e815eb8c77ce7ffaf7d418ed318a5fb41a27dd6754c7417:lMFRosVyBzJF8elBbtnjbxfLLOcJxBwy:1', '', '', 1, '', '', '', '', '81266588547', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-17 16:29:54', NULL),
(266, 'Noora', 'nouraa240988@hotmail.com', '0000-00-00 00:00:00', '6e2f55a2fc902413005c84f3563e4df5138536cd3c414ff02064f6d6c1f789fc:j7FtQe0jAXxNqbHJEos5dZbicYkiVmy3:1', '', '', 1, '', '', '', '', '33902020', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-17 20:07:41', NULL),
(267, 'Merillproot', 'he.n.tai.wo.rldpict.u.re.s5@gdemoy.site', '0000-00-00 00:00:00', '5750c3df81f6398795d243f0cf2f0d84b25161ff31a1c830cf9ddde2c5949b4f:F5XpugYCLzy2vMOtiZ6lorOIX270jIUY:1', '', '', 1, '', '', '', '', '86325366889', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-18 08:56:10', NULL),
(268, 'Jigo', 'garciajigoe@gmail.com', '0000-00-00 00:00:00', '24bf687a186dc438b6625a22267000525182fa02b7d3f018bf513875fae0c60e:ufqF0AvNRWJjLNby5usQF68j5ZhLD5DU:1', '', '', 1, '', '', '', '', '30948609', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-18 12:17:33', NULL),
(269, 'Shiek', 'skjakir03@gmail.com', '0000-00-00 00:00:00', '7d6c0c1e3a30d52ec523950e301ef73b49fd1b9f7a64bb3f056f069b095da17b:qS4uXoe6YbXIiyCcHpKWabf4iTTDKE4v:1', '', '', 1, '', '', '', '', '77729054', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-19 04:07:55', NULL),
(270, 'JackieEcors', 'catch@answers.dummyfox.com', '0000-00-00 00:00:00', '199b6aa54f61e1384af4438f4e1d8eb5d731b03a1a681a123ed5df161148bc40:oy1fKML5oLMnFBKEAAjBQVXu4MDwuFSm:1', '', '', 1, '', '', '', '', '85882287263', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-19 17:59:47', NULL),
(271, 'Nastenapef', 'nastealitvina@yandex.ru', '0000-00-00 00:00:00', '57b2f9e61f408cbdcfaa6889aacea6c7e8b896b2e092be7eeca23f73642905fc:0MV13dujzIb0RdgKz3OwYqlLfjwyGhx6:1', '', '', 1, '', '', '', '', '89159558419', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-20 10:13:11', NULL),
(272, 'Areej', 'a.alkubti@yahoo.com', '0000-00-00 00:00:00', 'cc94d1c34575fd9201c60290f598c74e927c753290e6341e011a3e3e40e59657:BbqsUXt5dCIYF7s1FT9DUtypGdxEZCJx:1', '', '', 1, '', '', '', '', '55316436', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-21 12:46:18', NULL),
(273, 'ArthurCic', '123teatr@gmail.com', '0000-00-00 00:00:00', 'd65d3e38cca2bc03b0d6655da3812b5cb94d0692e407c03caee17ecf50f34869:dC75mZcYgTC0h11riCP3Y309q2fr1PCL:1', '', '', 1, '', '', '', '', '83729583676', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-22 06:08:34', NULL),
(274, 'Gandisempap', 'khudoshinak@gmail.com', '0000-00-00 00:00:00', 'cb1633b0db7a2b38e8023c4ba7abba7735799b28bb6e6074d125a41140162b21:LK4RopWEhLIr99coDh7vpdRkJTkIlfmo:1', '', '', 1, '', '', '', '', '87982125362', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-23 12:34:13', NULL),
(275, 'Philipknose', 'philipedids@24sm.tech', '0000-00-00 00:00:00', '0475c9bd6970cd20c251913448c3ca695e7fc44936ccf4e632a09c484fab6f0b:dpA3wL3S4lB9SO3OZzhD21x0ZP2ZKNQN:1', '', '', 1, '', '', '', '', '81721357879', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-24 02:55:11', NULL),
(276, 'JamesFaw', 'aceigor@rambler.ru', '0000-00-00 00:00:00', 'cfdfd94fa1c4122e0aee7ea27395a02713bb65ac4e7e53a243224e95e5b8058b:qoffraLtgyGr8ptiPOBbmo1dK6raA2bJ:1', '', '', 1, '', '', '', '', '86573717116', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-26 08:19:39', NULL),
(277, 'Alexander', 'alex.b@envac-qatar.com', '0000-00-00 00:00:00', '70704ed1f235a837ed787ef0f48cc50a6d015130cbe5050c80360dafbe73c994:t3VVDnmNGFhaNur5n0QRDTmq7Gij6HNw:1', '', '', 1, '', '', '', '', '77185755', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-27 05:26:58', NULL),
(278, 'Ahmad', 'mxahmadelsabeh@gmail.com', '0000-00-00 00:00:00', '66f0608d77d7f15316842cc14d9d4cae40a607db0c19b770a964a11da6c3f3c9:etEA8euzEIxJtBL4EkOdjnxU2o2DztVJ:1', '', '', 1, '', '', '', '', ' +97455085895', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-27 18:39:33', NULL),
(279, 'Social', 'sm.agent@dakkaken.com', '0000-00-00 00:00:00', '883912bcd66d7ff452b0b176941e9cce9257832e7c42a47eef047c07ff648979:CQHZtNJf5Cc0t8ntu3GgzzXkOimzFZxe:1', '', '', 1, '', '', '', '', '66191767', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-12 14:10:12', NULL),
(280, 'cntifempap', 'logevgeniya3@gmail.com', '0000-00-00 00:00:00', '96d4e4e8c95dd470124f1b87702a8c90ab3184188e24a4fc83b699a3fa96b716:DEigQcbtdMAQuykQL5OX0kjuDyj2YIYI:1', '', '', 1, '', '', '', '', '82511411979', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-30 14:43:40', NULL),
(281, 'Hiba', 'hashem.stietiya@gmail.com', '0000-00-00 00:00:00', '11cc28d55828e97b8cc38ed1e3d2716487557e86c27672d38a9e033216bc2d36:TPStwxiZDA4WI56r4lMl6uhn2RWAmM2Y:1', '', '', 1, '', '', '', '', '0097450361824', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-30 16:45:37', NULL),
(282, 'Tolyabef', 'pochta@stduent-help.com', '0000-00-00 00:00:00', '5651eb5af6a5ffda8de32d80358648a348a5944cd3e332345f2635bdadea5e74:cQwXAjdsRwNOI8g071HsXJ3hSCLOV1sY:1', '', '', 1, '', '', '', '', '81379849271', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-07-31 11:06:37', NULL),
(283, 'Alaa', 'alaamhed12@gmail.com', '0000-00-00 00:00:00', '9f674f3aca1db68efe0450cd5ddaba90057c2cdbf575f08b329a89c3c1d35131:CNChiGQFGFnt2aND65Vlj3KqhbtpmnbP:1', '', '', 1, '', '', '', '', '33400665', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-02 15:00:23', NULL),
(284, 'Anthonyerefe', 'sergeikorkorshunov@yandex.com', '0000-00-00 00:00:00', 'b67ae54a9c2b53b2de95ff11863757e32471aa24fa61d874e4f1edc84a0cad9f:YMByc9elVMJRbcwAm9kqlV5YsZr8C1rO:1', '', '', 1, '', '', '', '', '89593751435', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-05 03:50:02', NULL),
(285, 'Rizwan Parveez', 'rizparveez4u@gmail.com', '0000-00-00 00:00:00', '8404249e47a670b2defe17b9cd788f7211bd1f3d49cb1f2f486e958135e0b8a3:4P9xpNE5qGV8xEs3pIRTpPGPzEWScnzm:1', '', '', 1, '', '', '', '', '66473070', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-05 19:45:10', NULL),
(286, 'Kayekedempap', 'zhenyaegorina1@gmail.com', '0000-00-00 00:00:00', '0654a5fbfcbe345065e7601c8eab01828c87e9f301f388940e24cc18cb19235c:PrbKqHuf0sDF9oIFAfeWky08CBIxJhQH:1', '', '', 1, '', '', '', '', '87916686159', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-05 20:25:50', NULL),
(287, 'JosephBab', 'arthur.logan1826@bestmail.eu', '0000-00-00 00:00:00', '185d6374e3b1d9d45d9fb86524a7a2649a8b5f0134f3c28ab215b7e04c6f21df:NRMF8kndEJgZ1h8NWSysAIQreByGBq6a:1', '', '', 1, '', '', '', '', '88287942738', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-06 14:03:38', NULL),
(288, 'niczorrrr', 'alex2131@gmail.com', '0000-00-00 00:00:00', 'da1cf5ddd8ec288807bd95a6b18a8e7e9f2b30b44ac3028462232892db5ba413:jSIqiVqAdMdNorpfIzx86XQc1VNRAcaZ:1', '', '', 1, '', '', '', '', '81898582598', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-08 06:18:29', NULL),
(289, 'teworktiend', 'tendwork@meta.ua', '0000-00-00 00:00:00', '5e2400158db55259604e69ae3289dc55251442ed126c0e8c98d4db7936592de3:vqSLw4wyKM2XruSG5jbi4d1YNLAAdIgP:1', '', '', 1, '', '', '', '', '83699833831', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-09 13:50:42', NULL),
(290, 'Mohamed', 'm.ibrahim@ezpincode.com', '0000-00-00 00:00:00', '08a8ba1543cb8ac50b6d3985b7f228fe7ff12312637ed6fd20c86762590d748b:lBv1ve1dQn8h0LMyrOM3tFLoWMCqBwBs:1', '', '', 1, '', '', '', '', '77999115', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-10 23:18:26', NULL),
(291, 'dbneirfempap', 'lyudmbazhanova1@gmail.com', '0000-00-00 00:00:00', '261ba7d6f1284408173827b9a4d1e8a25ad56954bc45159d923dafeef2aec753:ERAXQOd5avsU3zzgRQC6Y3dmJfNMltrF:1', '', '', 1, '', '', '', '', '88135485131', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-11 12:32:58', NULL),
(292, 'Khaleel', 'khaleelurrahman@gmail.com', '0000-00-00 00:00:00', '8576e282d0eca055b32888fd69a2fc165172290fae9195ac0c8c448d58bc47db:ce3ZIJdx4dobBjzA8S1fLrRjuLfpp7ws:1', '', '', 1, '', '', '', '', '33238394', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-12 05:50:47', NULL),
(293, 'profpjeoft', 'profptb@meta.ua', '0000-00-00 00:00:00', '58e7f6dd64f4705afc076bf44cb9b8528840396a065f1db1932b761680621e53:KFR91US037zNqnlp1AIMqB7Abl7JzaWj:1', '', '', 1, '', '', '', '', '82655159816', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-14 01:25:19', NULL),
(294, 'Anthonyerefe', 'sergeikorv@yandex.com', '0000-00-00 00:00:00', '57f3f893f2e813fb15585d7db4181e46dab9b24092de0fb9d3f673f208a311ec:1MxSyKk6KkTcEGCiKnFuDMbTvv6qDZLE:1', '', '', 1, '', '', '', '', '87365424746', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-14 10:02:51', NULL),
(295, 'DavidFulgE', 'zasplav2015@yandex.ru', '0000-00-00 00:00:00', '9f4f8733debd44abbd5cdce2bb58d208877d961f6aef7f5c49a8f5b2841d3b13:PHjRCpuksHY0qRtBvAQsKD3B298629Jh:1', '', '', 1, '', '', '', '', '82872638593', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-14 14:00:09', NULL),
(296, 'yfcntyfempap', 'lyuboskina5@gmail.com', '0000-00-00 00:00:00', '01efb1c5f683a90b4381498a956848a4ac2d5965795b60189540c01e0cf756c6:a4bdEbLwJyzgpZgSTVVsJWR6gXm67mJQ:1', '', '', 1, '', '', '', '', '84979388328', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-15 13:43:36', NULL),
(297, 'and7kur7Sox', 'andrkur77@gmail.com', '0000-00-00 00:00:00', '1a280ef1de3b50859a63a15ca6877ef8a683f41cde219b80156bc7e0d3676b5e:P069e6ogtOhW6V7x7zbjnJOX4cDrAmAb:1', '', '', 1, '', '', '', '', '88916889587', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-16 21:03:49', NULL),
(298, 'Krishnaraj', 'raj_12458@yahoo.co.in', '0000-00-00 00:00:00', '65e7b1dade8034e455f00dce77d061819a2d9cf38fa8a87b9de28185e2f722f9:C9cwuPqfAvaQFo0DqnAyaM8jcTpCwarD:1', '', '', 1, '', '', '', '', ' +97455997798', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-17 15:30:52', NULL),
(299, 'Ohood', 'oalfayez@kent.edu', '0000-00-00 00:00:00', 'c6ce09596b2d5808aefe61c958921bf2e596f3ac5bce6a14b45e1fdaa8126f83:Xo2mqGRukQLw9p1eJ4YV5idh79N9sfWC:1', '', '', 1, '', '', '', '', '966501823331', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-18 08:11:40', NULL),
(300, 'fhctynmbxempap', 'filileevayulya1@gmail.com', '0000-00-00 00:00:00', '4b6d40de35b9a1c4db14ddfa4a130bff43bab6324a24cc902efd972c07bd1c30:9GMK7QSzPHUF8lWByzOw2cDoCoFX9L9p:1', '', '', 1, '', '', '', '', '89726575864', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-19 15:43:22', NULL),
(301, 'JosephEaseM', 'gotenberghat@gmail.com', '0000-00-00 00:00:00', '64104ce3c4c7deb889caff5c19cf4d670e3871d0c0ed93564e3563f9dbb613f6:BNKNVo424Vixdmj2QuCSDubeQE7agoib:1', '', '', 1, '', '', '', '', '85342418242', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-19 20:20:44', NULL),
(302, 'Teodorahop', 'zul.zackaryaeva@yandex.ru', '0000-00-00 00:00:00', 'f414fd64e3cfd5c2d26b7899a99c3fc994cc43104e5d16ce4c031ea8050c57ff:X7EAxwhRFokhl7585kZSsX0ZTRUSe59o:1', '', '', 1, '', '', '', '', '84898376174', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-19 23:05:43', NULL),
(303, 'Jameslaria', 'catch@who.cowsnbullz.com', '0000-00-00 00:00:00', '7935d672e8c3b2b8dcb9405f121f6ffb024538b979435b41edbe3ca9a009cd84:zWvy3Jc18gXeOVdFVLKxmCATS5WYS9op:1', '', '', 1, '', '', '', '', '83917252719', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-21 09:22:54', NULL),
(304, 'JordanRap', 'dianseregina@yandex.ru', '0000-00-00 00:00:00', 'daa6d8233699e997920c83b8da77dc2843a229fc53dbda24783eececcb567537:sw3mmTGzYdQC7wSY1SDxfOZUcNXZsVu4:1', '', '', 1, '', '', '', '', '83799931985', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-23 00:40:20', NULL),
(305, 'Ahmed', 'ataher_88@yahoo.com', '0000-00-00 00:00:00', '6b83b05c5e9e92d3572f1e0830cee345ffcfe964662f9dfb3eabb729f82ecd06:XRoGzo88PIQCn3B8ZqD4hiuBILuwqWTX:1', '', '', 1, '', '', '', '', '33750734', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-23 08:20:42', NULL),
(306, 'karim', 'jor7.kbir@gmail.com', '0000-00-00 00:00:00', '106897b1802ee14e9151918399863608e3b0f967239c22787066e90b3dd1be1a:1Fby2MrbGXFjgIrBrqlbJOogD4zkciYd:1', '', '', 1, '', '', '', '', '00972599201531', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-24 19:19:37', NULL),
(307, 'Roberthed', 'fatimasanfal@rambler.ru', '0000-00-00 00:00:00', '63e1c0141f20d251feaecd3dab349afc61b7d421a7bf37a504631b098b33992f:gsFOjWbwj8RAH93LfAsWsaIxkEDzzBP8:1', '', '', 1, '', '', '', '', '87277979293', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-26 01:52:06', NULL),
(308, 'geshaempap', 'loalivso88@gmail.com', '0000-00-00 00:00:00', '161635bcb028bdd9f7d4bd60e3dadedc310faf068d6ed0c50c8f061035cd8610:tFMOKSKJ3vMhNxek6C3iAvQHh8eCTuYw:1', '', '', 1, '', '', '', '', '81835728626', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-26 02:06:52', NULL),
(309, 'Idelt', 'sal@wrpills.com', '0000-00-00 00:00:00', '0d9171fa88ac325557e75383d066ef50e0d7ea1b037a9b8e122dafd901808ab7:GL8eqLQ5XMFTqk7FVSpjC68S5ZLDyoFC:1', '', '', 1, '', '', '', '', '81717316457', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-27 21:14:36', NULL),
(310, 'RobertOrart', 'gennick72@nextfashion.ro', '0000-00-00 00:00:00', '921f5939a7a48cfb6d450cfbc2f2df75979b0868c21327f17b017a417deda708:1Q4sMiZLni8ujvabmFWvOWPJTDdAN1RJ:1', '', '', 1, '', '', '', '', '89358468271', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-27 21:28:03', NULL),
(311, 'EstebanBeima', 'kialapiresbunga@gmail.com', '0000-00-00 00:00:00', 'd6aff32c427182baf84c3f8c9b3d685448ef3fd26ea56be0a08d4ce1fb463a82:7MuMtCwW0WslAHLbQ5yGK5qloWNbzYwm:1', '', '', 1, '', '', '', '', '82854228259', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-28 03:42:37', NULL),
(312, 'EVANS', 'okemwa.ramimi@gmail.com', '0000-00-00 00:00:00', '1c57b1d74074917e84ead134dab7a52c3470ab3db94baf587319f8c272d6fe07:JHD4LGfc92hGIxbrxHmGuliasLW4ObGp:1', '', '', 1, '', '', '', '', '30404750', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-30 00:45:04', NULL),
(313, 'Kirka_MER', 'karli2020f@mail.ru', '0000-00-00 00:00:00', 'e6b1a3308742e1474277f8e57cb199438a61eb21c96694bc53310c9f0294ccd0:1KW9hJ66rqtqF0wbfkAKTCrewJ6MmvCX:1', '', '', 1, '', '', '', '', '84632262228', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-08-31 08:37:13', NULL),
(314, 'Nazar', 'snj.nasar@gmail.com', '0000-00-00 00:00:00', 'e89d2077ed9f06dacd6e1edf14b9bf187db06a78093cc708cf252186ef96d7cb:UWPCLMDpBhfM91vQDZ3UmzJL5eYkGLM1:1', '', '', 1, '', '', '', '', '66811509', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-01 15:53:54', NULL),
(315, 'abhfempap', 'gfikrogbfmorke@gmail.com', '0000-00-00 00:00:00', '1acf8f3304a38e7f9388bbd035dc30d495bb69cfca2449029924861ce824737a:QEIr2buyJwsKBiiRcLgiU9DWQlBnyH06:1', '', '', 1, '', '', '', '', '82775577172', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-01 17:10:04', NULL),
(316, 'Jamesimmed', 'uptobox@mapk.me', '0000-00-00 00:00:00', 'cb560ecbd5607a001c321c493ae147e6cff4bd01c9051a89791be8fa50b63ff2:eRUHO9ml7IT1rBLCwOdkptQi2mVHNIFQ:1', '', '', 1, '', '', '', '', '85669811439', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-02 13:02:27', NULL),
(317, 'Micziwalnaini', 'micziwal@go2.pl', '0000-00-00 00:00:00', '71163031c869fb16c6452e732ba7218e64a57a6f27289c3011908b1b3b246b50:KPzQ98LZkr5CkBAdV6IAgsGSUxzUiPi0:1', '', '', 1, '', '', '', '', '81124129879', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-02 15:51:03', NULL),
(318, 'tony', 'danieltony262@gmail.com', '0000-00-00 00:00:00', 'd81b53f53956303935e09b51b8b90423a37116bd7b4955f5d1fcfa02935aebf4:KYLCHsTmUCqznf1j1srfzuGERwY6mi4Z:1', '', '', 1, '', '', '', '', '08090636086', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-02 23:04:41', NULL),
(319, 'Leonaimpails', 'vlipas@sakhpubo.ru', '0000-00-00 00:00:00', '584bf460e41288e25620cba1f8a71e6af5ec302cd94f516b3538a381ed090c80:CrlRXkM2AVqsrimcGzj7x41eGVRU3w4V:1', '', '', 1, '', '', '', '', '85316538661', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-02 23:22:14', NULL),
(320, 'Michealtax', 'zoystufgesvay1972@mail.ru', '0000-00-00 00:00:00', '0d745a163f2931b54615177ef00b09df1e6c912b82cce5e5c2d359fa7e4ba3df:I9M9H0Un0NsEZuicNu9M61EyaJrS57zc:1', '', '', 1, '', '', '', '', '84372143862', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-04 01:24:35', NULL),
(321, 'SYEDA', 'gsyedaf@hotmail.com', '0000-00-00 00:00:00', 'c27a481d474cfd2bea1dfe4ff35e892f49b0dba87f1e162c10f5e63a8b9cae7a:ZTNl3r41R1z8DsCbiMrvkbRHfK4qZXGV:1', '', '', 1, '', '', '', '', '55004259', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-05 02:33:23', NULL),
(322, 'AliciaWaype', 'seriy.anthony@yandex.com', '0000-00-00 00:00:00', '64868968c659837d361c41347bde8726f6442feec96e33813c4c4ae6948bab59:7KyUmMqS34ZMcVpCYUE9eivZWEhTBKBO:1', '', '', 1, '', '', '', '', '84949274921', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-06 01:23:27', NULL),
(323, 'May', 'malikaningsih4@gmail.com', '0000-00-00 00:00:00', 'a29e622f1851c0f37158a9de2c8e77a63da868a09085679e4b96788de2e34a3a:xMfyCN2bVtsS5OitMiSj9YsKpt7kIese:1', '', '', 1, '', '', '', '', ' +628136573751', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-06 02:11:02', NULL),
(324, 'Abhishek', 'abhishek@breigns.com', '0000-00-00 00:00:00', '85519385099bf1dedd9ba9a6ad9c51a5957a946de27eb2313e4f987f06998dce:Ti8blAG75wgxD9tzJ2tgOEPwmf9q1Znq:1', '', '', 1, '', '', '', '', '971559896644', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-06 12:07:23', NULL),
(325, 'Chokri', 'Kacemch99@hotmail.com', '0000-00-00 00:00:00', '63eb92879a7b0b09e0bceb122c93538c08e97df7f57c12748becf1db2eb10a33:wUGIgxKQmZaijelpaU3wwIsAdvufobQ0:1', '', '', 1, '', '', '', '', '66908705 ', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-07 19:42:25', NULL),
(326, 'houple', 'uebelhack.leokadia@gmx.de', '0000-00-00 00:00:00', 'f16311e3a2244c04b2b4221ff794f299351670fcda7cda72ad97be7ad0c3bfee:LLMQONZHKJEwGUIiaKiceKJsqWrY2Z1t:1', '', '', 1, '', '', '', '', '82433475693', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-07 09:05:32', NULL),
(327, 'rbhbkkempap', 'balandinalila7@gmail.com', '0000-00-00 00:00:00', '48648f0d76936bf55dbb2d846022f3b64401432ddf0b3c23c52653033c3c1290:vRcANVOzVNPj6T4XRDpD8Ba9doRwbeVg:1', '', '', 1, '', '', '', '', '83454897659', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-07 09:07:12', NULL),
(328, 'Haliza', 'h_elwitri@yahoo.com', '0000-00-00 00:00:00', 'e63b7d6c0f3c1e5b42115f7b70dd77454537db6b56b57bed74eaca23119ce9e6:YB3GKomVqjUvYEj6cSYsxLiw60UZLRml:1', '', '', 1, '', '', '', '', '66109321', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-07 12:05:19', NULL),
(329, 'Dennislable', 'utuberinov@gmail.com', '0000-00-00 00:00:00', '661d70ce3bf65866505d239b5cfc500d3a4ac508d0294d39ba938d084389a6b4:kylDPakW3qNrxmed3ShCexz2DAPlfmgK:1', '', '', 1, '', '', '', '', '86875647594', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-08 07:42:05', NULL),
(330, 'Digital', 'dg@dakkaken.com', '0000-00-00 00:00:00', '2f0f60590b2886d71a9f4f997dfe70aadc2527c9492568d4458405811aec12f8:KqVMgyqqeZz5E55Rp9V6RrE4iWVgGr8w:1', '', '', 1, '', '', '', '', '66191767', 21, 19, 0, '', '', 0, '1', 1, 2020, '2022-06-20 06:23:47', NULL),
(331, 'Romulo', 'bolanosrj@outlook.com', '0000-00-00 00:00:00', '3d02848b3fcaa11d035d7d30a5e8e407c304d3d3ff8503aed0928ddd3d5f76f1:gdltvTUqeyH0JdlnsgGKyVfRC4T2s7Mz:1', '', '', 1, '', '', '', '', '33357375', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-09 08:11:30', NULL),
(332, 'Khalid', 'khalidaimanhamad@hotmail.com', '0000-00-00 00:00:00', 'fa209c9ac3d6435e05489c2242b34813af8956968af05a1c4017fb262c7d2ed1:gak1fu2rXcLnkTH6bHwKCpbPJQyV0Xm2:1', '', '', 1, '', '', '', '', '55437589', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-09 10:30:39', NULL),
(333, 'Muhammad', 'msnsaeed@gmail.com', '0000-00-00 00:00:00', 'b5190cad558b574599e28c84ce13b65310d635eaf5179ec12eb9fb17043c17dc:Frkxi2QOvojD6A7gbdCywlFNcNiw2u8m:1', '', '', 1, '', '', '', '', ' +97430331320', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-10 18:26:38', NULL),
(334, 'hopeempap', 'ocantofer202010@gmail.com', '0000-00-00 00:00:00', '09f6d453efb985fee67db7cb3f3f3e7423eca215aa43d537beebdded583787d0:Ldh4ZnYmyN61su4smm0E7zMqD8AJQ8Nq:1', '', '', 1, '', '', '', '', '86317825533', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-11 14:39:47', NULL),
(335, 'Rose', 'rose@imeks.com.my', '0000-00-00 00:00:00', '9730b363a6e58020914b34736c13e522f5bd68f1cc66e77c84f9f880ce35dcac:fgN2QCVLIsaYoWiPmIdeJTWOtvlI11dn:1', '', '', 1, '', '', '', '', ' +60122161715', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-09-01 06:32:40', NULL),
(336, 'Nimesha', 'nsttg82@yahoo.com', '0000-00-00 00:00:00', 'cd9c2c056f0a8b327ed94e8fdc8278e874caa6f9f8d45fe2d5a3f9182ef9f592:gMBb1KfOKLofSeA7xOd9nkmqHaJznzk6:1', '', '', 1, '', '', '', '', '30582398', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-13 06:44:50', NULL),
(337, 'crouksse', 'crouksse@gmail.com', '0000-00-00 00:00:00', '05d1f1afdfd0ef5cc96842b5ed3d1208b8f90efe8d87ec090e68552ec68be47c:0W7EWr7Yt6vH3aHgca0rKhyGJIth14K1:1', '', '', 1, '', '', '', '', '33300293', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-11-25 17:27:41', NULL),
(338, 'houple', 'oksana-topp@gmx.de', '0000-00-00 00:00:00', '73b6fd46d866d61f6d4f38193904ef00ccf7d5c03591347bf09f7fed2f0a08f8:G3M3jEgjsZMvL1q2V0CA27zOMJAEXxSA:1', '', '', 1, '', '', '', '', '85334377696', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-14 18:44:41', NULL),
(339, 'Josephbuh', 'asfwe4fegrd3443@gmail.com', '0000-00-00 00:00:00', '8d15bf75d57be436ac0205726015053885a97f4e11df7f0a3edd17b79368ecca:VCWdIUi5M1V22Gkkx4ptAjbyAniDcfYf:1', '', '', 1, '', '', '', '', '87284864927', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-15 05:18:16', NULL),
(340, 'Micahnewly', 'catch@its.marksypark.com', '0000-00-00 00:00:00', '165328c30f133102a998e262ccde1ba3db3ae3e1f12774261b59c31112fe32f4:ocJzYnxHkvo72c8uAzcT2SIaO53c1ahm:1', '', '', 1, '', '', '', '', '89479764666', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-16 23:50:57', NULL),
(341, 'tdleifempap', 'bektemirovbekzat3@gmail.com', '0000-00-00 00:00:00', 'a7e18c09028ad717cc006756f25a25e9b5dbf34a8782775cd47982be8ffa4c70:MsgV6yPysmMtUYQjbKQ4Fn3HDqaSvUC7:1', '', '', 1, '', '', '', '', '83197814167', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-17 01:11:49', NULL),
(342, 'John', 'jdom16@gmail.com', '0000-00-00 00:00:00', 'c76906b163da9d58a79ad60351a05e99cfd138da6981845dd73771e53843a9ee:6EvhzuT6DkKXwyVdIlJINlYhf4I9Fxeb:1', '', '', 1, '', '', '', '', ' +919600463188', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-18 05:58:15', NULL),
(343, 'Anthonyerefe', 'za-splav@mail.ru', '0000-00-00 00:00:00', '0ffe3c307137b6e4a96a6e8c890726315158f28b3fbaa8fe6e8db6e0051cb3bc:j0F9gQ8rvibV2FcNRCIkQ38me96QolI8:1', '', '', 1, '', '', '', '', '86186622539', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-18 05:10:53', NULL),
(344, 'Lemar', 'lemarwhyte48@gmail.com', '0000-00-00 00:00:00', 'e98a0ddfb7e0a7ccabfafe216ff7c1f639b69cb9bdc90de854af56eab2571606:fy1pFltz5rRjZ8qStiBILO9E3Zoi2P5Y:1', '', '', 1, '', '', '', '', '6617 5334', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-19 07:37:18', NULL),
(345, 'Sreejith', 'sreejithps22@gmail.com', '0000-00-00 00:00:00', '01057a46e437de3f7a82f8fadade70fb9e0d744c4da87739ede749d7c29ea130:cn4encxgP7a3MuE0A03YoSRH954hmPdp:1', '', '', 1, '', '', '', '', '0097455436468', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-19 17:12:15', NULL),
(346, 'dimushempap', 'tamaraandreeva709@gmail.com', '0000-00-00 00:00:00', 'ce9f08455e0748909bd8e31a0cd469cfb4e61959676f91b0749a6ada8ca92a84:HyO0e2d8q9fQvZUo6FCDtQVgZW5BIK5K:1', '', '', 1, '', '', '', '', '88453654857', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-20 18:28:07', NULL),
(347, 'NauhaMal', 'garifas@sakhpubo.ru', '0000-00-00 00:00:00', 'ac595e8e3a8ce58c958b0d6dc8379d085c29af1d5f15c59a9ffb0341c0677964:BWtZGczLeKekSW5mhuyhj0WUT1Jp2IZo:1', '', '', 1, '', '', '', '', '86316917889', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-21 11:04:52', NULL),
(348, 'mar', 'kbflq@ivyandmarj.com', '0000-00-00 00:00:00', 'e0f3962a443810ecba9fb5ebe717af576e7de9171ef52ed632b26dabeb6d144e:0fHAnC9FXFtEbIiIkOZH7p45nzlGC67q:1', '', '', 1, '', '', '', '', '1222221222', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-22 04:16:56', NULL),
(349, 'Irfan', 'irfanhazari.official@gmail.com', '0000-00-00 00:00:00', '082d945cb9e7e612a94038c9182fc5bb84df0f8332816047c8740778f8e21435:dHnXHgeyhvCvMB4vZiNY6utnrxVnxrFz:1', '', '', 1, '', '', '', '', '70706962', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-22 09:12:33', NULL),
(350, 'Brus vob', 'tempoo626232418@gmail.com', '0000-00-00 00:00:00', '38fc15827c0f4d41b4c8a7d4a0df449252e2d78e62510b31aaa9c2b7eb549120:2DNAyfqBAphdx1OFj8VbE3r2p2rmSiwG:1', '', '', 1, '', '', '', '', '84596654258', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-24 21:44:00', NULL),
(351, 'Heru', 'heru.budiarso@gmail.com', '0000-00-00 00:00:00', '9eaa80fcb2dbafbeeac8a5f144e4acd9a9b74ea5b32c09462a239f371dad5498:SXyo6xPlmaNq9VgjwJlC4tliNbXv1ctx:1', '', '', 1, '', '', '', '', ' +97450795848', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-07-16 16:14:13', NULL),
(352, 'Anarahuginnempap', 'hernansilva153@gmail.com', '0000-00-00 00:00:00', 'd6f4228e035b565fb58da8e722daea9377ee504d6106d47b2fbbe6b8d2164678:LQAujbaSbu1l5u1PfObjfJmFCiF8cino:1', '', '', 1, '', '', '', '', '82544865241', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-27 10:03:00', NULL),
(353, 'Digital', 'dgc1@dakkaken.com', '0000-00-00 00:00:00', '16ab525a079bbb2c7266881bd501855098fe0005a3cc55ce1c7f881522e36231:DO0M3UMsPy9tE3dZ9CWyBol0kGvaTuQ1:1', '', '', 1, '', '', '', '', '66191767', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-02-06 05:52:37', NULL),
(354, 'Rebeccafum', 'zasplav2015@mail.ru', '0000-00-00 00:00:00', '0157efc382d120be53ea13e83279bfdc201de4992772c6ea7ba2ef25ef4c65ad:EJEwxFk5uenPS4Aflb3k7fRDFUC5xrMo:1', '', '', 1, '', '', '', '', '81735462394', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-28 22:25:24', NULL),
(355, 'Jeeva', 'jeeva.selvaraj89@gmail.com', '0000-00-00 00:00:00', '886067305e49b2c1acb53be87430519d50bcf6fffe827ff8e5dabf526ef95d26:NMq8JiMNAby81HajTPJLUgfCmp0shzDd:1', '', '', 1, '', '', '', '', '971569742866', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-30 11:52:44', NULL),
(356, 'declaracLut', 'elenatoivanen100@gmail.com', '0000-00-00 00:00:00', '5e53814df82b1039990c63b8e1f5ef1d01197f1138773469cd18c8c7694bb51c:VjvdtRxDK29fKC4uvvJySpwQO7CWKmrJ:1', '', '', 1, '', '', '', '', '83478534223', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-09-30 14:19:08', NULL),
(357, 'Merillstins', 'h.entai.wo.rldpi.c.tu.r.es5@gdemoy.site', '0000-00-00 00:00:00', '9f20483635778ff3c86c58ebed21b9ecaf66f8766b4133fd3c0a0593d543a6b6:1mz1U0zyJz9OhWbJnHBkJHcfejJO8akV:1', '', '', 1, '', '', '', '', '83325816755', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-02 06:34:37', NULL),
(358, 'Percy Preslee', 'racyzacy072613@gmail.com', '0000-00-00 00:00:00', '4ae821908decf31b4fe898676501c2beb4d9b1fb9c3508a14dde612c36f4b442:tZyVCal8fY5K1Oo3uCNYxBKiUeGNG0Iv:1', '', '', 1, '', '', '', '', '33759440 ', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-02 16:14:20', NULL),
(359, 'Salman Ali', 'dogarsalman99@gmail.com', '0000-00-00 00:00:00', '02c3f24772a39acd7b37e4b36927828d3608807f48e0671911fd63887afd6f52:f4NqpfvmLVkqY8w2Qm9hJZE9BongML7g:1', '', '', 1, '', '', '', '', ' +923314164080', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-07 06:34:50', NULL),
(360, 'te', 'testaccouthj@test.com', '0000-00-00 00:00:00', '90c2a3b49d5f51dad5f8adab266548306c29286dff20f876d4a889c75e41feaf:rUxLfXFc7wKUefshQR3TEayEYzLMYtcf:1', '', '', 1, '', '', '', '', '9876543212', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-07 12:20:53', NULL),
(361, 'test', 'testaccount2@tst.com', '0000-00-00 00:00:00', '95bcfec93add42d54311f24d8e536e08032df782ac464912584e5984470fdb11:Dx4i2p0PNy0Ey2Huf7zdgoyBhrWAB2f8:1', '', '', 1, '', '', '', '', '8700236089', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-07 13:51:59', NULL),
(362, 'john', 'johndoe@example.com', '0000-00-00 00:00:00', '19e3c8d2f80c940210af63239f650475ab71f674358b220e68f0a69755036d35:aXM7fI2aycdBYl9O4AtXj0yRlNbpd7CU:1', '', '', 1, '', '', '', '', '9599729205', 21, 19, 0, '', '', 0, '1', 1, 2020, '2022-01-10 10:53:22', NULL),
(363, 'Jahn', 'jahndoe@example.com', '0000-00-00 00:00:00', '2863babf083b055547eccc0f399cd0a9303b3f17ec2606b4db95dee7a233fcf6:BJtHtbyCAZLpb3jlLQkNMzwLkzpVF15T:1', '', '', 1, '', '', '', '', '9971216043', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-07 14:37:16', NULL),
(364, 'ahmed', 'alsa242338@gmail.com', '0000-00-00 00:00:00', '90a1b8c25249244f398ea9c855a2a2d36da2887f335f1380cd9751879c58474c:Hc3ACaFjZRqtQzcM840GgPqIW6O4Akuk:1', '', '', 1, '', '', '', '', '02072084021', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-07 21:59:20', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(365, 'hjcnzempap', 'sernovalim@gmail.com', '0000-00-00 00:00:00', '310bb44a081b603b5e3b078be2c0be392b77627d74c26b7785c80fb3b3ae78bc:r6sfF0KYRU8wLehHL4yygZjCNzSTfKgh:1', '', '', 1, '', '', '', '', '84147816594', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-08 22:41:52', NULL),
(366, 'Modglinempap', 'jamesdowser23@gmail.com', '0000-00-00 00:00:00', '3cbb6ca423af7702ad9a6be6a5187e61cd50cf8f07e3faa92dd7b7fc9721690a:zO1T17Rb8LeeHETMytoOGZgOnGUGUWph:1', '', '', 1, '', '', '', '', '84118164171', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-15 00:13:02', NULL),
(367, 'Bruce', 'hong188188@gmail.com', '0000-00-00 00:00:00', 'e548191ae1647534d0c04bd01855e44a067ad4ce76caf325e13396c4171536e5:zlZav6rEuq0qnvBQHItJaiXQXw94jxx6:1', '', '', 1, '', '', '', '', ' +16137938806', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-22 19:52:44', NULL),
(368, 'rjhyifempap', 'doankhanh649@gmail.com', '0000-00-00 00:00:00', 'f03bad9d0bd05729eb6b65e78396143d8bb92b725997b4ac6f1ae57383d4aea5:7Lv8xFDSo4Nnf3fWux8RoqYzIfezJckm:1', '', '', 1, '', '', '', '', '86227554226', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-18 02:33:36', NULL),
(369, 'Shaheen', 'shaheenfemi@gmail.com', '0000-00-00 00:00:00', '1c0589ac5f73640422df4c54613d878ef1b34c53f31a073f63f514ef1dd7114b:DAwgHN6bmGukIU5ZTdWJotfnCLZPmbAP:1', '', '', 1, '', '', '', '', '66541687', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-31 12:40:58', NULL),
(370, 'mohammadu', 'rrifan47@yahoo.com', '0000-00-00 00:00:00', '806a2df782316287e50155de315616f5863bc0fe8d9b175157c4fad201a88456:tlaqxHxe5cmmPDQfGAy138tvT867pLKS:1', '', '', 1, '', '', '', '', '66143138', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-19 07:29:37', NULL),
(371, 'ArmandowarSe', 'razuzleg1@nextfashion.ro', '0000-00-00 00:00:00', '429cfdc1850ccf985ce7ed6a3c91726fccc3ad002a44022e20b949fd173ef449:IsN1kJgqezc5k1jCv4JbqaBrSmfMHHMQ:1', '', '', 1, '', '', '', '', '82142791713', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-20 23:40:48', NULL),
(372, 'venulaempap', 'ip916552@gmail.com', '0000-00-00 00:00:00', 'e92be9dbbd786be6851b2e5702780f91ccb22fe880579f753368886e12d4e346:ksbadkWxBi6R2RQjz4o8XXYUuGpuLhBT:1', '', '', 1, '', '', '', '', '89937865295', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-21 03:23:35', NULL),
(373, 'Mohammed', 'msm.aldossari@gmail.com', '0000-00-00 00:00:00', 'e5918c94ac3708a7f43146bcde0a0b06db987030a82eb09a6c5876b27703dc69:IeX0gPr7otpOSZ5WO8LVkQjTeDfFrKQR:1', '', '', 1, '', '', '', '', '66554442 ', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-21 03:35:58', NULL),
(374, 'Rebeccaweess', 'dar.frantz@yandex.com', '0000-00-00 00:00:00', 'e12ad3bdf28885520bdcd87b68c9f36d1d8ecf93a56b6d04f6f6ee52532bf6ef:tWQWfycmwY2dBlPEFfRkfDCS3bHyU26r:1', '', '', 1, '', '', '', '', '82314523281', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-21 07:01:52', NULL),
(375, 'Maratcaf', 'marat.ka.hramov@gmail.com', '0000-00-00 00:00:00', '752ae17a715edf12175b7b797ffa205f9b9134e02c54b5fdf800b77680c1022f:RNCzvrnYTcRnfczmYVE3RvsP3UOASp8r:1', '', '', 1, '', '', '', '', '82948897716', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-23 07:40:09', NULL),
(376, 'tonyuhaempap', 'ferdsama98@gmail.com', '0000-00-00 00:00:00', '102b48843c770faafeb6b69e39534f380ef34731a4668b333dfc502d89416254:d4IdmIRdAdB2oLbw2oAegmvmFanBL6t4:1', '', '', 1, '', '', '', '', '83897631892', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-24 00:04:11', NULL),
(377, 'MalBoand', 'facheeva@mail.ru', '0000-00-00 00:00:00', 'a5826cb74c3203e2f15a182d7bba3b73631fb7f5040959379d449427552131a7:FKL9NCAKkhyeQqaKdP0MQ2I9hFNmp72o:1', '', '', 1, '', '', '', '', '87165646356', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-25 17:40:23', NULL),
(378, 'FIRAS', 'firas.mansour@yahoo.com', '0000-00-00 00:00:00', '56a5bc2bedb24fa2fd6eb9de0c1a6e451c5d6fde64c07f15fcbbaac7f0fd885e:aQjqHTR5OGlY58tZr2L0KFmJAivWr9F3:1', '', '', 1, '', '', '', '', ' +97470081666', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-27 05:11:54', NULL),
(379, 'JepillPop', 'jen.taiwo.r.ld.picture.t5@o5o5.ru', '0000-00-00 00:00:00', '982320e1c41499cf2a32db17f6e8af829f1803c469ba9dfc903835fe8a96a691:8Im4Ct2Ga9CIWEWOsuLeYhMr8WUFRZfN:1', '', '', 1, '', '', '', '', '87154865529', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-27 06:51:53', NULL),
(380, 'petraempap', 'marina2020.simen@gmail.com', '0000-00-00 00:00:00', 'b9f324a2b8fee6f1a26963b5d4e775fe1d2d0f534a0cad18cc37dd7ef5f37903:AUSwJy9r6GI4rKzc9cETwK8bTtGcEaNO:1', '', '', 1, '', '', '', '', '89855788222', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-27 08:04:29', NULL),
(381, 'LauraMal', 'gildas@sakhpubo.ru', '0000-00-00 00:00:00', '07258a3e1c1dcc672a7dc67f84bd5af9ce3ce9d75f2bb1fd0c4b253e16a723fc:homRiiuVBPhOa4WTxCGSGyBXMNOJyksM:1', '', '', 1, '', '', '', '', '89819572634', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-27 22:25:28', NULL),
(382, 'Rashid mohammed', 'RASHOOD567@outlook.com', '0000-00-00 00:00:00', '0e1c0de1910d391b4263d487831ea2e6ed9cbb40cd1efcefea6af63e00b8703e:Okvv0lX47zoKN83PVUMS3L27eZNAs1e7:1', '', '', 1, '', '', '', '', '30227701', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-28 16:04:19', NULL),
(383, 'AliciaWaype', 'splav0803@yandex.by', '0000-00-00 00:00:00', '043a89ea1507cc435cb8a072dc6489afcdaf7aa8706f726815d8268f3a7a20da:RXf22uLhXihyLHjnuGV0g9EbRDHSUnT1:1', '', '', 1, '', '', '', '', '87329878688', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-29 11:27:12', NULL),
(384, 'Mohamed', 'roomy_ac@yahoo.com', '0000-00-00 00:00:00', '879b645b79e5fe0afa62db7baf53670da8142f55b975e7db5dfcacca7d8fe3ca:pSg9tx6w579Vbh0HLQGNXLvntEKqzZRd:1', '', '', 1, '', '', '', '', '70005718', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-29 15:44:43', NULL),
(385, 'fktrcf[fempap', 'linaorzova@gmail.com', '0000-00-00 00:00:00', '39bb0cf99c12342374b69ba0255619a98d0c5b9746abfbecd11d0a872b5687d9:T6mYjlzHVAhu2QvZVqiJV5veaFBtIcym:1', '', '', 1, '', '', '', '', '86625342985', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-30 02:16:51', NULL),
(386, 'rambofrart', 'weleklaushoff@gmail.com', '0000-00-00 00:00:00', '8e31c01a04649e8b6503a7d0f56d44a36e136aedb8b08e214b0a2e587c6b480e:KOyZUMWTMjcPKVRjiJwZLmSUqSLdtz95:1', '', '', 1, '', '', '', '', '87491399557', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-31 02:26:43', NULL),
(387, 'Syed', 'syed.484@gmail.com', '0000-00-00 00:00:00', 'aa92163001a73528a2a364f3170fb850152dd6bd35facc70163971a3ce76e9e8:ZKusnlUyqGwzEGFdNqtwWBm5c5QV2Jd2:1', '', '', 1, '', '', '', '', ' +974-33750325', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-10-31 09:55:29', NULL),
(388, 'midou', '42f014844c@firemailbox.club', '0000-00-00 00:00:00', '25ba9a0be53c8fced4ba11987dc65085da57c87962fffd9d7869563ca6206921:kX3eINARfcZ9pR9aurfdFJHFwqVrB4PV:1', '', '', 1, '', '', '', '', '673286092', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-01 21:31:51', NULL),
(389, 'panyuempap', 'siyasinovdanilovich1998@gmail.com', '0000-00-00 00:00:00', '895e4a381ac4f3555e50930ac9341cb9099686aaea82e37e9beba0b242945135:6pX0g8ar44iJNVzJQy8sxT1sfCLIXe58:1', '', '', 1, '', '', '', '', '87574282859', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-02 02:41:28', NULL),
(390, 'Davidjoupe', 'catch@clean.cowsnbullz.com', '0000-00-00 00:00:00', '691a4af9a8cbdb5ee9a0da2a0cb084423b6f38bf7fbee18233550a35fd820e66:oD0R3I0Ys8vDEzsbPoVMVWUXggfbQPdz:1', '', '', 1, '', '', '', '', '84727172416', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-02 06:50:59', NULL),
(391, 'test', 'tester@gmail.com', '0000-00-00 00:00:00', '579a8c7ddbbe4b1c5d0cf00a006c4e2fee377f7f85fdac922eba2441cdbbf432:J9YBRb1HMaBDIE0nioDmnNnfvRB7vIuX:1', '', '', 1, '', '', '', '', '7607357361', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-04 07:27:49', NULL),
(392, 'InvillPop', 'jent.aiwor.ld.p.ictur.et5@gdemoy.site', '0000-00-00 00:00:00', '5be42e4813d80e3ad0794a38ae0aba8ea1c9d1dac6cba6e426b01935e5d329f3:BYKSMUTYoRrahuKdH2z11CDWM70j4JDy:1', '', '', 1, '', '', '', '', '89516463155', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-04 19:50:28', NULL),
(393, 'yfneyzempap', 'maks740000@gmail.com', '0000-00-00 00:00:00', '3dfd6a577d5b109ad46d87b5cd12b0088cca03c530419e78107e5357bd33d2dd:93QbFZ4KiadSoOS1pVM294FCOPDp3s4m:1', '', '', 1, '', '', '', '', '84412155117', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-05 04:52:09', NULL),
(394, 'Alfreddeeni', 'teotest747@gmail.com', '0000-00-00 00:00:00', '558ea2a8249e31aa9b573dd5ddb0fe2115d9df1e53fedcf179e3f10294fa8d62:a643XeyG6Fbd8MUqmLMR55GYFH3KpjwL:1', '', '', 1, '', '', '', '', '83766445498', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-06 15:16:17', NULL),
(395, 'Kiethlyn', 'kiethward0511@gmail.com', '0000-00-00 00:00:00', '179f926ac5113b291edda39b1e473d9fef91c45e983eb43fa430625a82e5cf50:WSdiEGT3QDXizmGtx6to8hmwAcZJzz74:1', '', '', 1, '', '', '', '', '50214423', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-06 22:03:04', NULL),
(396, 'Basma', 'Basma_anis@yahoo.com', '0000-00-00 00:00:00', '652d16c276994195529c5c887fc22e5a0c6e803b2c1a5ea8465e939df2f0b199:vkLhLv76gA4CJi5EBIUYmPldfXHM7wiZ:1', '', '', 1, '', '', '', '', '66844479', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-03-06 08:52:55', NULL),
(397, 'fylhifempap', 'amid740000@gmail.com', '0000-00-00 00:00:00', '7a35835bdeea00f25ef69830a2933243d0e198452c320ee451017d3d63cf59de:y6OvmrbpEp78F9UUbB01ZbBvzOHq02H0:1', '', '', 1, '', '', '', '', '88429289751', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-08 02:56:09', NULL),
(398, 'Robertbeest', '1@sh1371291.a.had.su', '0000-00-00 00:00:00', '7f5479c1a2b208239ba505e4dd3df8a1ffa47bc67e21981bef0fdd66ec537c01:aZvbKDHuDTylFAfrxpXoihcP7BnnmzFQ:1', '', '', 1, '', '', '', '', '84699966776', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-08 05:22:33', NULL),
(399, 'Christin', 'christinissac@gmail.com', '0000-00-00 00:00:00', '04ad58eae25142f88de9dac2d859452ce21c36389acff913f7ecb8ef8a607401:gVdfEFfLS6byf8oNSMp8XRMMftmuYLVb:1', '', '', 1, '', '', '', '', '55840599', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-09 07:17:05', NULL),
(400, 'parimatch.cyou', 'parimatchgoo@gmail.com', '0000-00-00 00:00:00', 'a8da331bc64962ec5106adfb0b63d0d05ab176fbcb6b7760e7fcc7aaa67cfa60:JuyFKRDR7xgYP4coP4h4Za5Z2sFHcgAX:1', '', '', 1, '', '', '', '', '82332894158', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-09 12:24:05', NULL),
(401, 'Kaseilyn', 'kasei.arribas@gmail.com', '0000-00-00 00:00:00', '9b06b26c941fa22cb64310d0426bd03834d714cfc9ff7f148551470f3b190b90:ZVlJaiXUm3PfMF4qOCOq9osIZIGID3UF:1', '', '', 1, '', '', '', '', '55064851', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-10 06:48:10', NULL),
(402, 'InvillPop', 'j.e.n.t.aiw.or.ldpictur.et5@o5o5.ru', '0000-00-00 00:00:00', '0713009949cb968a359c88cad25f001438c0e5dd8a1b8e6924410166ea3f2c18:VHl9hxZVJpwLrHpEH9AwOpJWrz714SPX:1', '', '', 1, '', '', '', '', '89893925861', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-10 13:20:48', NULL),
(403, 'Bufymempap', 'ermalcukaleksej197@gmail.com', '0000-00-00 00:00:00', 'c0d350662561ed7695aa4c3fcc9b1279936c2bd69d7a9f3784e6f74986f5b29d:XXujhfESzIN05rUUgaQDACiiq0UfvbRj:1', '', '', 1, '', '', '', '', '84926445257', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-10 21:44:26', NULL),
(404, 'ritaniaempap', 'gantipin97@gmail.com', '0000-00-00 00:00:00', 'a2e401e8f7615829b3e74c40e891ea97af26842d4c531307879db92ad021b8fd:ria807jBxX1dsQzeGiIqN1kNT9FlzvhJ:1', '', '', 1, '', '', '', '', '86443621986', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-13 21:02:31', NULL),
(405, 'HugitiusMal', 'hugitius@sakhpubo.ru', '0000-00-00 00:00:00', '089533a2213c49aee7da6aeab518c1f6ed68d2707e296f138c4644e60effd6e2:H6xR4HyA8q9mer26pStmAyNqNFopSelr:1', '', '', 1, '', '', '', '', '82763862627', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-15 18:59:51', NULL),
(406, 'linuhaempap', 'dimademidov3412@gmail.com', '0000-00-00 00:00:00', '8e787c0fb8a5d4896ffc668630319afa77c030c272a44e1f71ce6e153b1f9ff3:FeVgWLASX34GZa7r8gWKeG5SwIfpC6wW:1', '', '', 1, '', '', '', '', '82252594813', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-16 21:59:35', NULL),
(407, 'Mohammed', 'usmanthakur_123@yahoo.com', '0000-00-00 00:00:00', 'f63141cfb6d8bcacafd7ab825309ab25e82c317573f61d3c5e49ba94bae4b9a9:GnEaZvNkxqcKfO8HpBgyGuGVevFlQatM:1', '', '', 1, '', '', '', '', '55461461', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-17 12:11:45', NULL),
(408, 'Rajkamal', 'tiwarirajkamal775@gmail.com', '0000-00-00 00:00:00', 'd36d6d12ba79d37d257e5d09c1448211e5bd272aad91683d4158d2dc0ff2c327:2VLBYoh6OBvnsurS4y6zyqW08SqMPw2o:1', '', '', 1, '', '', '', '', '77701954', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-17 12:44:26', NULL),
(409, 'Jameskeymn', 'kolshmir@mail.ru', '0000-00-00 00:00:00', 'ff82b08a5de9e04638548064c1502d12dcae1275ac16286dee6b1e980d9a6f80:2Xd0myHBtLvlBrT36GM994Pe4Qo7rDEY:1', '', '', 1, '', '', '', '', '89894864276', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-17 20:44:12', NULL),
(410, 'Aisha', 'aishalhammadi0@gmail.com', '0000-00-00 00:00:00', '2362b5bb120e2cc20c2958c8cf420569709956eb4171fa7cbc7336c13d023c3c:RvlcpbRYjPj08fJJQfEIRzB7wPipQkxV:1', '', '', 1, '', '', '', '', '33355443', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-18 07:48:33', NULL),
(411, 'uheyzrfempap', 'nilismar1998@gmail.com', '0000-00-00 00:00:00', '956b574309b2d2b743f9b3c060c1a7ca85f75bd11960313804bb431c5214e51e:2fH2B80xAg15t0MQYG8pLWNuYUIBpbID:1', '', '', 1, '', '', '', '', '86588178867', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-19 22:25:11', NULL),
(412, 'MarigelvMal', 'marigelv@sakhpubo.ru', '0000-00-00 00:00:00', '2a6562b044f0648ec76c6c403119aea7c37e8e865b0ae484e8106961ab026cb7:uxuWWHxrURq46BsljcrQEktjmLE30wSm:1', '', '', 1, '', '', '', '', '88212399468', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-20 05:47:05', NULL),
(413, 'Noura', 'nouraalmarrii@hotmail.com', '0000-00-00 00:00:00', '9f3d79bae5d9f742e084258c8a55cca4e34bbd03e7cd0dc789c1bb34a42eafcd:F9kXYyzjEhs1f2N5N67wGIvhjqcAj9aW:1', '', '', 1, '', '', '', '', '33303315', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-20 11:16:49', NULL),
(414, 'Peejay lyrs', 'gonzalespeejaylyrs@gmail.com', '0000-00-00 00:00:00', 'b13ba74f2b779b9ed4ba2315f67614ea59498eff00a59d339159ef34c7db01d3:SInrjtJEgbscjTRBCPRTJWxSyi6p8Ewn:1', '', '', 1, '', '', '', '', '50608144', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-21 05:42:00', NULL),
(415, 'Majid', 'soni20221@yahoo.com', '0000-00-00 00:00:00', '1c679f721b6a249eccb55f91b71bee578f87e31f6f6e2132e8597fb03850e179:ahfflHpoe2aFLNtCGeUcOFemLZEoN3fF:1', '', '', 1, '', '', '', '', '33241270', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-21 02:58:05', NULL),
(416, 'Alan Augustus', 'alanaugustus99@gmail.com', '0000-00-00 00:00:00', 'af9e30fc9553a74a7bbfe6450e839379e8d2c5d53e0035df075ee6fa2b4973b9:0TLJIu0rH9lertspKMKTjxssoT9g1S8d:1', '', '', 1, '', '', '', '', '70079370', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-21 07:24:10', NULL),
(417, 'Gnana', 'gnanapravin@gmail.com', '0000-00-00 00:00:00', '54ed546342748642279eef59cff3497ec0871d8cdee5a81b674ce636a48687b3:ZIc0EArM7Ilv5r822rO7m1vwfMaCe94y:1', '', '', 1, '', '', '', '', '55658568', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-21 08:12:22', NULL),
(418, 'Mohammed', 'EDIT.FISHYY@GMAIL.COM', '0000-00-00 00:00:00', '8ab0e826e7156647112690a39d4da4d3ca6fd4b23fac51457b057f4d7ccdd4bf:SafgmuXiyqHTVupOSNTBlEJEsoLto0uV:1', '', '', 1, '', '', '', '', '66771015', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-23 17:46:15', NULL),
(419, 'Monic', 'alaomonic@gmail.com', '0000-00-00 00:00:00', '8bc66d810891a9b8aefaa736e40bb9484f646441002aad43ebc0fe6a90774dd6:s7WGkjrSn4yCSzwpkEIMvZo852vwHRCR:1', '', '', 1, '', '', '', '', '55469369', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-25 05:55:13', NULL),
(420, 'riadh', 'riadh.jallouli18@gmail.com', '0000-00-00 00:00:00', 'b3606df52f15ca2985da83f77b98c712d03670fb1219041fe021db1d4e8fdf68:LVbav0HK2CRY6sZCU9awqyiUkrIgmq05:1', '', '', 1, '', '', '', '', '0097466450663', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-25 08:55:16', NULL),
(421, 'Basma', 'basma.alvi@gmail.com', '0000-00-00 00:00:00', 'acc71ea092a7eddef2da5a7cd9b1b0d7e085c508ec671847a202a7676eb201c4:zrqb6mLrBWFh9MQoM5AdzlYxGArS6leX:1', '', '', 1, '', '', '', '', '66844479', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-09-17 12:50:54', NULL),
(422, 'Mohamed', 'momara818@gmail.com', '0000-00-00 00:00:00', 'd034646fdb74f55767056fb3393e23363dec01e2cefecc3f6bfe3868abf41c15:w0my7pZuLHxpy5PARcPgU9PHgVA7F40D:1', '', '', 1, '', '', '', '', '30028420', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-26 07:24:09', NULL),
(423, 'Mohamed M.', 'manadili@qatar.net.qa', '0000-00-00 00:00:00', 'f1f7464f4033aca677f1ba37316b3a3e5f992c78b4dbaacfffcde397a937a739:quEwKCxBjgVoq61oOcEsXiOtc5TWvWQ7:1', '', '', 1, '', '', '', '', '77738433', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-26 10:42:32', NULL),
(424, 'Thelmadit', 'anbecqdgeha45@a.masum.cc', '0000-00-00 00:00:00', '48627f4b0f6feabc018a518181705fc28caa0e38e4211ad1badb64cfce5abab0:OUj0REjWeFTwBrivf6w9cOH3jw0THKmZ:1', '', '', 1, '', '', '', '', '87646434465', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-27 09:45:55', NULL),
(425, 'Yousef', 'qatarianfree@gmail.com', '0000-00-00 00:00:00', '081706548d00a7629ac9aa2a3ead7df1877d9746041d4cc2503e553fbc1a61e6:1l9bcnYyIOj6SN0spkspferTLuXdum5d:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-02-07 17:29:41', NULL),
(426, 'qqq', 'youssef@naaasholding.com', '0000-00-00 00:00:00', '2615339d089faca7f60dd80149718329f6ae41b65a00031f2b0bb2476855761a:Umt099ruLZZ9WYSx2UJ00nRpRsqS8dOL:1', '95edfcae131b575815c9ba715e0fff22', '', 1, '', '', '', '', '22334455', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-27 18:05:15', NULL),
(427, 'RobertGeany', 'fgest324@installmentloanxi.com', '0000-00-00 00:00:00', 'ea6127a96f16797ab3564fc5992e2cfcd97c60f118ac6fb81ffc592121954ed1:xJSDeIZQYRzPG2Uqn4l91xkpllqVFqYl:1', '', '', 1, '', '', '', '', '87513957742', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-28 07:32:10', NULL),
(428, 'venyuraempap', 'maira.okatova@gmail.com', '0000-00-00 00:00:00', '3231d49e1485844f07cead580a6ed3ac4d0dc523fb1e38767b9748f472f4a3f7:k817mrijdO3rZuxwNka6qjoqvxr4yS1y:1', '', '', 1, '', '', '', '', '84369594422', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-29 00:50:43', NULL),
(429, 'Thexirm', 'tarinosak@mail.ru', '0000-00-00 00:00:00', 'd1c1faf7e064b32be5bf5963aba778b02e024bed3dff831f64de47d1472b8d6b:7ZXIc2hlNOvueOhrIr9M6fNg09xkRCRj:1', '', '', 1, '', '', '', '', '83283117876', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-29 08:47:31', NULL),
(430, 'Honey', 'Mbatahoney@gmail.com', '0000-00-00 00:00:00', 'a62156f6b8b6494f55b9c45fcdb2614f3630038926201a71e561ce673930c74a:MdkdtcKUhwV6i9LPokFDOjSqjSQ8s6or:1', '', '', 1, '', '', '', '', ' +974 7073 2368 ', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-29 09:42:11', NULL),
(431, 'StanleyGug', 'sr7988205@gmail.com', '0000-00-00 00:00:00', '1cb71fbc0df904c86e718209c291ddaaf12bcbf784a4c8906af7f142a9c88fb4:0ev9CD8cHtkowEAJXJLWZfCqHl7wgEhb:1', '', '', 1, '', '', '', '', '86293513456', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-29 21:16:20', NULL),
(432, 'modwynMal', 'modwyn@sakhpubo.ru', '0000-00-00 00:00:00', '89ed6a83ef9a6b954f7366200270bf26bead647f7c82ac47719c134240f95c10:vzLNSbgv7TfyQJWJvaPYN7XZAszITxxv:1', '', '', 1, '', '', '', '', '81276968138', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-11-30 21:50:27', NULL),
(433, 'AndrewFidly', 'eblqmv@saldov.club', '0000-00-00 00:00:00', '8fa36fcc64ea6c4d13be1840ab8076ee5ffe478134beec83c1914b7786595c7a:H7nan0OE10MM1BFh1y9WoEFsCEPQfA5R:1', '', '', 1, '', '', '', '', '88339916839', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-01 13:26:03', NULL),
(434, 'WildzCasino', 'wildzcasino777@gmail.com', '0000-00-00 00:00:00', 'f1876383420b8f78be414d752b6c778518cc46a63e00cc59f9af56e2af940584:uAHHUBioVB20iHj4LeuSJxESVNNJsCXa:1', '', '', 1, '', '', '', '', '89185559814', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-01 18:35:07', NULL),
(435, 'poutingempap', 'evgenijdrozd717@gmail.com', '0000-00-00 00:00:00', '5faf5ba41480d7ad2ef4112e6e562384a12c72477e363befb5b41eab3f167e90:PdmS4OEKXb42WCA4bQZc3dQ4XBYwtYA9:1', '', '', 1, '', '', '', '', '89632951272', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-02 00:58:00', NULL),
(436, 'bngvlobtrj', 'tuopu865chenhuang@163.com', '0000-00-00 00:00:00', '01b6b1df3e0ad890a5678096deb74054d51d459c136c93464cda6f76ba49ab1c:oLqfQfUgF0TPEWCuECnzmZdsAodfCvuH:1', '', '', 1, '', '', '', '', '83688987882', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-02 02:47:05', NULL),
(437, 'VEERACHITRA', 'chitra25.2010@gmail.com', '0000-00-00 00:00:00', '3487c5a2fd35f4e25275afc8b8d5de27d328e7fe4408d24c8d429d59d11d52b5:9wyn9hNtkOyDxFkXXX6RPMMB6x6uIr72:1', '', '', 1, '', '', '', '', '50826562', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-04 01:58:27', NULL),
(438, 'Urocchvek', 'dwlanrsvg@oturizme.net', '0000-00-00 00:00:00', '25ce81450ede068f1247c0106f3a4466cd5404822eb86ac508e9199af96f71d7:V6f7mUqCnXRLjkOpLm4NxPg148b4VhIm:1', '', '', 1, '', '', '', '', '84954376714', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-04 10:44:22', NULL),
(439, 'ZuvilsFeerb', 'j.e.nt.aiw.or.l.dpi.c.t.u.ret5@o5o5.ru', '0000-00-00 00:00:00', 'ba52c355bf81199beebaa18685b7cc8ef2319b94eb12050dc3bc274a009238e7:I0Wgw8TpjOYcfoHcJyCSJqgnZQifoyXH:1', '', '', 1, '', '', '', '', '82797159268', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-05 00:37:36', NULL),
(440, 'leyznrfempap', 'dedmazai123987@gmail.com', '0000-00-00 00:00:00', 'f9e1fb8ce54e6d46942e12ea2f41a6335e99448aa0f67a13470465d3f4806276:3515TiUEI2mGCvzugO2rMA5OQkFgRawt:1', '', '', 1, '', '', '', '', '82372524594', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-05 01:55:01', NULL),
(441, 'Jenifer', 'dizonjenifer101121@gmail.com', '0000-00-00 00:00:00', 'f01225f716797ba7742c7d0a2fbd701fb4bc650e68c54041e4f000d7be816e1a:vQmZhmVtl5UUogSvUJIZDJcGa84bCApL:1', '', '', 1, '', '', '', '', '50459154', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-05 09:51:59', NULL),
(442, 'Ansar', 'ansar.ab11@gmail.com', '0000-00-00 00:00:00', '1eb918658108abcc996840fb9658966d77c6a7d13e1319aea14438af37df190b:8sQoygnmCn0yZ8lJu1PuStSpFcVfrcp2:1', '', '', 1, '', '', '', '', '50556775', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-05 20:45:37', NULL),
(443, 'Mikee', 'secretary@dakkaken.com', '0000-00-00 00:00:00', '38a4431640186f955b00431800bfa36b9a204556867ac04faa671eaf1f7d8fe7:iyhy9vFBRpF5lllG8ZUWlTcRFCGRCbRR:1', '', '', 1, '', '', '', '', '55359843', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-06 07:52:04', NULL),
(444, 'xenusempap', 'michealclark2696@gmail.com', '0000-00-00 00:00:00', '27ea2cad4d88274fea3717c6a148c09d4790423597b5d2637af8bdc81e08c171:AvSSmJnfzHDNmBlzvPKiKZP1mhnFXPxa:1', '', '', 1, '', '', '', '', '85612485244', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-08 03:51:49', NULL),
(445, 'AkexeySwary', 'byrdikalex@rambler.ru', '0000-00-00 00:00:00', '018fd02fbbf482549c92ad3b414b0c661a20dbfdd134b88e014cb59e5e36699c:oHOQCGkykumKsvJ3FDU1K6G9htDkLgIW:1', '', '', 1, '', '', '', '', '82475491149', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-09 03:24:26', NULL),
(446, 'Fahad', 'fahad.balucci@gmail.com', '0000-00-00 00:00:00', '9a98d3e882a0f6fcbdf2fcb86949557e15f325a7e05df5791ddb2846d7229185:SO3pu2oYerlbxQfJJKcweJyHSVKw1S46:1', '', '', 1, '', '', '', '', '70161111', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-09 09:07:14', NULL),
(447, 'Charlesjicky', 'evsenkovmarchello98@yandex.com', '0000-00-00 00:00:00', 'a5f1459ef78d4ad1f5e56b64d153714df001df091bdce856bb397e7cab728b95:96cJGwz2TCtNdzaWQLNY2HlLIkOxENoS:1', '', '', 1, '', '', '', '', '86415177387', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-13 09:32:02', NULL),
(448, 'Invillfluox', 'jen.taiw.o.r.l.dp.i.c.t.ur.e.t5@o5o5.ru', '0000-00-00 00:00:00', '60f46a137c3ad32be4086b56eda02e2c1fe77f54056096946b7b9af70b827ce9:4KQBaAcoyCrzlamcytQ3Wh8viiFc4hwO:1', '', '', 1, '', '', '', '', '82722844754', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-14 03:17:52', NULL),
(449, 'Smart', 'mohammed.yousry@smart-alfa.com', '0000-00-00 00:00:00', '28a6d4502f0e99cb14703f528b629e282659c80f0e0b16140229f47bd60c0584:jEcrDzQYqrmR7TsppsHUS7JCCQuc8o73:1', '', '', 1, '', '', '', '', '70109991', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-14 12:33:41', NULL),
(450, 'Charlessznra', 'tpgjqnept@oturizme.net', '0000-00-00 00:00:00', 'f2d957cd04ee85967aaf8bd31e0d510e5a8774fbbbd883c8ba63570a165240b8:Aix5SVakVSw7vRBgD3maKVzRs3evIr4d:1', '', '', 1, '', '', '', '', '81912376815', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-14 21:42:16', NULL),
(451, 'Rishabh Jain', 'rjain@velsof.com', '0000-00-00 00:00:00', '8a1cbd20d9150fd02161d1a24e41e94e7e3303c58abaaee528ee828b66b15b2f:qAHOPgeLLgbpAJ9PAfLrevrQ2Yc8j1tZ:1', '', '', 1, '', '', '', '', '9876543212', 21, 19, 0, '', '', 0, '1', 1, 2020, '2021-01-14 08:56:01', NULL),
(452, 'Richard', 'richardtablan@hotmail.com', '0000-00-00 00:00:00', '8b41046f24dfea650301876fc9d3421bade28cd744297cdca2c5132f24585ce8:rga1xMd4phasysoz0YtS6va1zKysbGG5:1', '', '', 1, '', '', '', '', '77254717', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-16 18:27:02', NULL),
(453, 'cfifempap', 'senin900900@gmail.com', '0000-00-00 00:00:00', 'ee983946085e99dd3285ce8e3090b1f7080eaba0e76c95d54cf5a21c8d359ebf:llsuy27f4qGgZzWXR8wf5KmemzXHfuhk:1', '', '', 1, '', '', '', '', '89372964968', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-17 01:24:21', NULL),
(454, 'Mohammed', 'xipower999@gmail.com', '0000-00-00 00:00:00', '7bee1766f0d55fe1477035254f2d54685ad5877d804755e59a8b796aa2ac160d:NbvqeRkLEb6Xg5q8LjNuSonjwZ26HXmj:1', '', '', 1, '', '', '', '', '50013444', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-17 08:09:09', NULL),
(455, 'Yuliia', 'laparoon8@gmail.com', '0000-00-00 00:00:00', '4393731af26c285c969750deca6c02456ef315156741d33a5a185bb67d2bd739:Gvaja5vJFMU2bsYU4uvWNhI0YPvRg2N3:1', '', '', 1, '', '', '', '', '554356450', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-20 05:41:58', NULL),
(456, 'Alvaroweese', 'baranovoleg88@rambler.ru', '0000-00-00 00:00:00', '4a4ed2cacc48a7a84dfd2fa878d8df9adedd7f9146a1bc79f074aab1ed2e003a:MGZvKQYA5OWBK7Ls2dgK0o2wineXZJgc:1', '', '', 1, '', '', '', '', '85818522872', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-20 12:52:22', NULL),
(457, 'Bloomlip', 'commandoos20201@gmail.com', '0000-00-00 00:00:00', '38d4ae19ea984153fdd4341bccfb878e5db4f4886a42cbcdad1ece25bd5c6451:H2worAG0DG5x0pmbsvEga23OmxooVvu0:1', '', '', 1, '', '', '', '', '86185387733', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-21 00:57:05', NULL),
(458, 'Syed Amin', 'sheraaz_amin@yahoo.com', '0000-00-00 00:00:00', '29330ba85ac54a5ccd21b1acb00963346655add94ea6d63d3bec34c3ab03d524:nUToZfwB31AhRMWzPGzOVWD0vCR0I6Td:1', '', '', 1, '', '', '', '', '50702614', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-22 13:49:02', NULL),
(459, 'Asim', 'asim.razzaq@live.com', '0000-00-00 00:00:00', 'edd099da31456a070e5b13511c8df9e76a4d9943209e192d83b8846e07d88cdd:AVfRIGUQsuQySHyIqv190GQNgPeXDlil:1', '', '', 1, '', '', '', '', '55607006', 21, 19, 0, '', '', 0, '1', 1, 2020, '2020-12-31 09:42:47', NULL),
(460, 'Paolo', 'paolopcx@gmail.com', '0000-00-00 00:00:00', 'a7e27b12b983cae6c2e26a69a2c20b98f6f81aabf7088ae18d1fb36a33a9a7a7:zDnZywAxkmfVl15Ax5u5aBirU41VcBsT:1', '', '', 1, '', '', '', '', '50203830', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-02 11:18:19', NULL),
(461, 'ckfde[fempap', 'rezanejadparsa914@gmail.com', '0000-00-00 00:00:00', '52c5ef68abc3f06ec418255435128eefa2ee6d40547cc67d3e75a34edb1b2a47:O5wsv7aPjW7lDDIH9ltpzBVAiIUkQa1L:1', '', '', 1, '', '', '', '', '82847846238', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-02 02:03:41', NULL),
(462, 'Invillfluox', 'je.nta.i.w.o.rl.dpi.c.t.u.r.e.t5@o5o5.ru', '0000-00-00 00:00:00', '5e00ffa7a9b6c0d1a79bd56ebe9a7e154f8da573333010c66dd968fcd34702d7:8W9fGsyMDopK76MTHp267PErJOPkBruS:1', '', '', 1, '', '', '', '', '89335828475', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-02 17:37:57', NULL),
(463, 'Rahul', 'rahul360410@gmail.com', '0000-00-00 00:00:00', '31980600badde55a842fbaf62ecc676c5d0fcc6199c5ba374ba560283a1bfd0a:DZ1H8RnXt0sXJQmEN2xJC7qqxtfifv88:1', '', '', 1, '', '', '', '', '44736092', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-04 10:59:42', NULL),
(464, 'dfkthbfyempap', 'ivanponamarev529@gmail.com', '0000-00-00 00:00:00', '5818cecd4466c207c07d6e1f66b24d3b80e5431130164103164c861551b01df2:eJR1uatDMInJYZENn4ORWmQNw2WoFVKB:1', '', '', 1, '', '', '', '', '83682656228', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-05 09:03:37', NULL),
(465, 'Rami', 'buys@tiny-tunes.com', '0000-00-00 00:00:00', 'eed03bf38090608514abede8104841acd5c2530e38cb2bf0e02d8836ed67df1b:R7WKB6lHZRTOsp0s7L6ncx8jFZVsGGDT:1', '', '', 1, '', '', '', '', '66608908', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-06 16:12:27', NULL),
(466, 'zFilmHDDek', 'a.ikenvi.r.g.i.n.ia5.91t.r@gmail.com', '0000-00-00 00:00:00', 'b987ba8c1c988564d007d252152771da2cdc55b330469fe0c1567cc6d3ee783b:JWfkPNhgn5NsbF8plfTRV0EhejjJ7Is3:1', '', '', 1, '', '', '', '', '88768766188', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-07 01:26:49', NULL),
(467, 'Nagi.sidisa', 'nagi.ssalem71@gmail.com', '0000-00-00 00:00:00', '377b73abd9d8928b5cd5268118a476a3b08ceef6df0b770ae0e23b4e55d96691:jY19ZcxSbyl9q910QFEUnyp6qlYHag26:1', '', '', 1, '', '', '', '', '0097430752000', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-08 18:22:09', NULL),
(468, 'dtyfempap', 'saraalyy739@gmail.com', '0000-00-00 00:00:00', '19d1307d4db80b6b6202479735f54b00b95d83bc671f27adbcc850e6e8577a8e:Th9Hoj7sL3imXbn4Jp8LQUAnRP2am3n9:1', '', '', 1, '', '', '', '', '88486242775', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-08 07:18:31', NULL),
(469, 'ZuvilsFeerb', 'j.en.t.aiwo.rl.dp.ictu.re.t5@o5o5.ru', '0000-00-00 00:00:00', 'ba83e3775c048eda02b5db45c6a2052f56817ed5f70f7f53657337a162b48dce:Hifo0TykV4A3xguV2lVJxNAskCXEXtQZ:1', '', '', 1, '', '', '', '', '81922265414', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-08 19:38:25', NULL),
(470, 'Alvinmok', 'constantin.emelianenko@yandex.ru', '0000-00-00 00:00:00', '43b2db2e79d2ae6a6566b334f160cabf176cb59d3f682f8f5beadeef2b15d65e:l9SRU8IEGIWoevBHqm6uaPXnoZv0DlSk:1', '', '', 1, '', '', '', '', '82162562411', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-09 11:32:06', NULL),
(471, 'Invillfluox', 'jent.ai.w.o.rl.dpi.ct.ur.et5@o5o5.ru', '0000-00-00 00:00:00', '0900f2f77869a423e02e629a69cbbf67f13a57dcdd26de70886e56f42908359b:QZssupf9CYXMTXiHyVhdaMSUtjKmv67U:1', '', '', 1, '', '', '', '', '88359395753', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-10 04:48:07', NULL),
(472, 'Hellgroveempap', 'yurapetrov345@gmail.com', '0000-00-00 00:00:00', '5a7f1a2e1838e710c256bc6190400df2e833a1808a5d645b8d2d6e0ec56c752f:8KEfiDOSl14vj1ALHHDXqWuXiOb8phc6:1', '', '', 1, '', '', '', '', '86389949491', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-11 02:19:03', NULL),
(473, 'Jefferynam', 'tvgw@course-fitness.com', '0000-00-00 00:00:00', '63707bd9a1afaad1a71978266dc0d25d4c9132bc25ae77ddee2271ee291e4878:91jZM0ArFv14c10o3nCHjwuRP1OpQ9Rq:1', '', '', 1, '', '', '', '', '81785484749', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-11 12:28:37', NULL),
(474, 'InvillPop', 'j.e.nt.aiw.or.l.d.p.i.c.tu.r.e.t5@o5o5.ru', '0000-00-00 00:00:00', '233e503c78b1da9b8591f11405a40ff8bf09417f49b51c4eb6b1439c3c013c26:7W5R9S1KdHJNS1a1dhLnDmGDpKIegOAr:1', '', '', 1, '', '', '', '', '86437421892', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-11 20:58:53', NULL),
(475, 'Invillfluox', 'jenta.i.w.o.rld.pi.c.tur.e.t5@o5o5.ru', '0000-00-00 00:00:00', 'fb206bbf8f23c5ec105c47edc3a4a7790f067ea024f39020cb356058c8cd973a:m7HeytooVZp05rm8moFUUZIPkClOWkj6:1', '', '', 1, '', '', '', '', '86955538546', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-12 06:38:28', NULL),
(476, 'bujifempap', 'olegkienskij@gmail.com', '0000-00-00 00:00:00', '14d451df11af5df23536890d1996920a2f8075c94294ec44bd0ae0c86b1fbbc4:iIx7yqlSWmMTMXwq0ZcFxONKwx3HEdb6:1', '', '', 1, '', '', '', '', '81445992597', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-14 00:57:24', NULL),
(477, 'Tala', 'talaaltubji1019@gmail.com', '0000-00-00 00:00:00', '8924b26115d032fe5e76fd3ecdaed269e844610d7461cebae1fa930905d1484b:fbBossJINN1WZG6xcCrOX5Y6cgetiEKg:1', '', '', 1, '', '', '', '', '30826474', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-14 08:16:53', NULL),
(478, 'Mark Anthony', 'lobo.markanthony@gmail.com', '0000-00-00 00:00:00', 'f53eaa2b5784cb6aeab74904fe4efe21011ad564b2be9e8dbb4989233ae3eb2e:f1DL3daEI3PJraVrhG5WJu4Ay9UfrH4i:1', '', '', 1, '', '', '', '', '33532373', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-14 15:50:13', NULL),
(479, 'Aminah', 'aminahdhey@gmail.com', '0000-00-00 00:00:00', '1f33bd7ee6d0750830c80fb4d58c977574290a66eaa61fe497cc570404a1fdd7:e1Syj06tArxpTyzuK92fq4wzY4iZRIf5:1', '', '', 1, '', '', '', '', '30980922', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-14 18:30:20', NULL),
(480, 'Billydet', 'otve4alka@meta.ua', '0000-00-00 00:00:00', 'd43cc33107269ca66f1e29abdc55a18ae4126c424f070bd46665ecf13b82bc4b:062DoA8zYeIsAAVaoNFsWqExeNpMCO6P:1', '', '', 1, '', '', '', '', '89427459274', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-15 00:06:53', NULL),
(481, 'Aslam', 'aslampunna@gmail.com', '0000-00-00 00:00:00', '7a73fde92ac71ceed3452eab72094c727d74d6daa2784e554aeb701e61ef8efe:YY4KLICvsdW3CBFhIyT0g5U9668SMAvH:1', '', '', 1, '', '', '', '', '31092101', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-16 06:37:03', NULL),
(482, 'Vitanaempap', 'anime131tenzo@gmail.com', '0000-00-00 00:00:00', '9a0ec97b34f3715d04b8f0074fed08cbd0949ec9fac31e10929d1e7a7839d357:6L7EDKZE3v6maUtlhnmE6S9lhJsCbkti:1', '', '', 1, '', '', '', '', '87736896872', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-16 23:29:47', NULL),
(483, 'pinupcasinoo', 'pinupcasino111@gmail.com', '0000-00-00 00:00:00', '2f84d4e35d663a622cf2c691edeab981e74c6c6ee46800fa34137e299f8fc66d:ZAaoEkFoSxD8BkxaVmMlAYfj0NdYWn3G:1', '', '', 1, '', '', '', '', '86997378717', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-17 11:53:50', NULL),
(484, 'Oussama', 'harrabi.online@hotmail.com', '0000-00-00 00:00:00', 'cbb91ba783181c5db6f219051a784785a542bb4922182c8907da9685cdc4347b:eCeAhVckKsbHZsNJYvrqf5KmNfBKcDgV:1', '', '', 1, '', '', '', '', '66912610', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-18 11:18:34', NULL),
(485, 'Digital', 'dgc2@dakkaken.com', '0000-00-00 00:00:00', 'bd00de860f3a6afb72eeaffe2395e6aca043524003485ede2a9e7b37b7ace8fc:k32jXMdm62XGsoBcLQ9TM7XkXRLKVNov:1', '', '', 1, '', '', '', '', '66191767', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-03 10:10:13', NULL),
(486, 'Zaiba', 'zaiba.iq25@gmail.com', '0000-00-00 00:00:00', '997f24dd7073435315373d25fc4a1a717d6bea3357cef3c00bd8df7a8246725f:O6HVpvE7Xpt4RxKmeHZLjIp2dKH0uky7:1', '', '', 1, '', '', '', '', '55638789', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-19 18:42:36', NULL),
(487, 'testapp', 'joess@gmail.com', '0000-00-00 00:00:00', '9919394aa06b385a86216ee0b8170396e13fabc0cad7f54199ab27271731a873:juJYJChHOMJZelZEOVWEoKrDxf18w5ds:1', '', '', 1, '', '', '', '', '66191767', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-19 19:54:36', NULL),
(488, 'Lavrichempap', 'vladimirsilivarenko1889@gmail.com', '0000-00-00 00:00:00', '74067080886460734e7f7f21b4d4395270389007a2320d85c3ca976d214c865b:VWEbJDJmtFYJqVODgdfBCWESnttcaOvY:1', '', '', 1, '', '', '', '', '84112841766', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-20 03:58:08', NULL),
(489, 'Invillfuh', 'jen.ta.i.w.or.ld.pict.u.ret5@o5o5.ru', '0000-00-00 00:00:00', 'adc4257b26ae228359b4a2b84369e307f596e4237136c2456b6d8ff513093869:1ZgBEBUgfKmQWUNaXlKDyzE1FiJvmL5n:1', '', '', 1, '', '', '', '', '85948993923', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-20 11:51:31', NULL),
(490, 'Jeffreypeemy', 'accsmarket.net@gmaildot.com', '0000-00-00 00:00:00', '20e4e111e04d1e075d8fae16f123b56422751653b324c331a84a5c662b904ee1:2t2S2gfUCOOHUSAkxduuVx0TRvYtH5y7:1', '', '', 1, '', '', '', '', '84546922966', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-21 21:12:31', NULL),
(491, 'DavidAnymn', 'panfilkudryashov@mail.ru', '0000-00-00 00:00:00', '0f5f68861704a4baec9b398eda96f2406e5d332059d080b37f0b18f04213fbb3:sCV9sEduDtdLGWctDIBqtwLEQGye7Ckp:1', '', '', 1, '', '', '', '', '83781828882', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-22 11:53:45', NULL),
(492, 'paulempap', 'vikamirnaya134@gmail.com', '0000-00-00 00:00:00', '9845b623d55904e32460747d1340cfc74e702ce636f2a0f4e83873608a9d4cfd:rsjSJ6eR3s9oIaKe0A1gxZMxtJ1MepVt:1', '', '', 1, '', '', '', '', '85411514748', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-23 03:16:33', NULL),
(493, 'Invillfuh', 'j.en.t.a.i.w.orldp.i.ct.u.ret5@o5o5.ru', '0000-00-00 00:00:00', '7e5ee0b138b5717e2774a949ffef3879a683ecb2fd2d85e5cee0fea1abe525a1:1XUro8dwuLsPCgb396fieoujb89E3CJ9:1', '', '', 1, '', '', '', '', '83959489488', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-25 20:51:00', NULL),
(494, 'dfkthmzifempap', 'zaartkm@gmail.com', '0000-00-00 00:00:00', 'ef55bbca034bb3b373852e9e48a2f875dc51ac7c550bfa3de5399f15fb7acc81:0nj2xL68ykpxJhjfDp15cB4gvOKytFek:1', '', '', 1, '', '', '', '', '83469632843', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-26 02:20:50', NULL),
(495, 'Lindabix', 'yelena_malakhova_79@bk.ru', '0000-00-00 00:00:00', '4a54617a7ccbaaea1f946afda487d3ed8f673aca73b7ea0436f8cab115954a85:fsBQLEmz8Bz38KLSJoZa3q9Pem7nbKGW:1', '', '', 1, '', '', '', '', '87446682774', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-26 22:15:02', NULL),
(496, 'dana', 'danaalmansoori@gmail.com', '0000-00-00 00:00:00', '52fd375f9fefd07723fb5d1f994e9d9f11d83cfbdfd975d44042a13ade9890d0:eespx276WpqmKzryNzGphSGXhbGY7JNt:1', '', '', 1, '', '', '', '', '50609343', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-29 14:45:02', NULL),
(497, 'Rimmuraempap', 'emireminov905@gmail.com', '0000-00-00 00:00:00', '10bac020db0a1b9777c2ac9056a078c218fde3f6da7d493859544f0a924931d3:3NHzhXg71o97dIRQJENTiwpACUFb1YHD:1', '', '', 1, '', '', '', '', '88998159349', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-28 22:56:23', NULL),
(498, 'Walterboype', 'g.starceva@max.enersets.com', '0000-00-00 00:00:00', '5a5c37c6ef36a5caf8703e82c3e111111512ad6eeaab0d48c37b4846961109da:Qde3eAXEcvjG7RjhizkzIhwFkQlgukkZ:1', '', '', 1, '', '', '', '', '84266257594', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-29 20:46:21', NULL),
(499, 'AndrewOrits', 'v.semovich@den.efastes.com', '0000-00-00 00:00:00', '5044297327bf8a19861bca7170137701cd8d7cbcab6df270dd06d32f9f089424:EFinZymGLrxet1Ob1f5azLv8u4yz2GTd:1', '', '', 1, '', '', '', '', '88324389696', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-29 20:46:53', NULL),
(500, 'Sara', 'sara-qa@hotmail.com', '0000-00-00 00:00:00', 'c43096fbff98884f37bb54397c96aafcf003a59bd79f130bd2ea4c7bb36271c4:k3cgaDvt3B7UNxEvxBdpKa4LMb3uJlk2:1', '', '', 1, '', '', '', '', '55165500', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-31 06:16:19', NULL),
(501, 'Michealtooge', 'bitkingdom.net@gmail.com', '0000-00-00 00:00:00', '5338dd4a6c3368b81ac61837586c53bd48619abb386fb55490edaea07b934e02:qbXkljjJPMY5RKev0kvRfRvrL9U04oeK:1', '', '', 1, '', '', '', '', '87269955659', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-01-31 22:59:51', NULL),
(502, 'nalyaempap', 'yasindarodi66663@gmail.com', '0000-00-00 00:00:00', '9e347ba1307a1d1fe55479cbbd05d2cf24f988d1cdf75d2b42b55186dbc925b8:J5qZzNI7vM1bHFOqLSH8GR7kOcM3o4Ab:1', '', '', 1, '', '', '', '', '86547226918', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-01 00:03:43', NULL),
(503, 'Taher', 'Matloubtaher@gmail.com', '0000-00-00 00:00:00', '6a4820985f48050ce780b1e421f0eda8941c95feebd6c46a9806cf88764a12c9:PGbfwa3zLFLmTeVBk75CbonaA21yp7aN:1', '', '', 1, '', '', '', '', '077790025', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-01 18:57:10', NULL),
(504, 'Neha', 'neha6sep2000@gmail.com', '0000-00-00 00:00:00', 'a1eb027a31bad3f65a87bcd6cae6cb7ce222a3e16aae9135baec40637410e833:oNXrMTzuaezw5nrkBxi5ZFe4zfxoMFPN:1', '', '', 1, '', '', '', '', '77189930', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-02 17:06:35', NULL),
(505, 'Asma', 'Asma_atout90@hotmail.com', '0000-00-00 00:00:00', 'c6311fa383dd097029db3f85fb44cbdd07a22d15f011c7bb56420b7e72bf3ece:5SgaG0tECQo8ROzcrKSBcDlDDLF8brMh:1', '', '', 1, '', '', '', '', '55832592', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-03 08:50:29', NULL),
(506, 'ZuvilsFeerb', 'j.enta.iw.o.rld.pic.ture.t5@o5o5.ru', '0000-00-00 00:00:00', '778ee536f421cc6c6a6758034b28bc0d031b0f55ec1ba691794ed91e21b0c927:yCEsTdbpW0o4UWpz9bTlu3NlChTsT8PU:1', '', '', 1, '', '', '', '', '87768963766', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-03 16:22:18', NULL),
(507, 'Taylor Taylor', '86pnfujfwu@privaterelay.appleid.com', '0000-00-00 00:00:00', 'a350ee911a4de7dcda3eb62bef48fd96484390e876e5aa3cf04ef78370c0c20c:i8e7GQH540PhHpFrnKwArJ7Pj57KUVOy:1', '1', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-03 18:52:09', NULL),
(508, 'Taylor Taylor', '000351.860cb65c39444d748d77e3535f094769.1852@apple.com', '0000-00-00 00:00:00', '9a8d0d266afa16439f38bf3243141a36da4bd44b92a283da3b3b2f1017f3dbe3:bmgLvWx8emqyd4S9FdPnnUrDfzDXtPu6:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-04 22:47:39', NULL),
(509, 'simonyaempap', 'saifaldine4@gmail.com', '0000-00-00 00:00:00', 'e94de14e45dec70e1ef6331544430c0cf656935327c6cdc0f1ea178cdac0022f:hWiesWJi3AD6slpYKk3MVjLmBkdRY2Wn:1', '', '', 1, '', '', '', '', '83358257736', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-03 23:53:21', NULL),
(510, 'TravisDiape', 'a4444kfjhdjk@ya.ru', '0000-00-00 00:00:00', '49d2c7bd59ffd82f0deab2908627e2037c624b801743d8fdb7cddab7a1bb9ad1:fpGeUjfn36c5EwxdHtqCBw7xWp2YM1Ju:1', '', '', 1, '', '', '', '', '87773486196', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-04 01:42:57', NULL),
(511, 'Nitin', 'mobile@velsof.com', '0000-00-00 00:00:00', 'b2e4ca11588fcd061864b2b6405d77306b01cab29e7985046f99068171e976d1:TnhUWeqLmiNPV9l1e5UYbOr8l59DqkPy:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-15 12:50:05', NULL),
(512, 'Kaustubh ', 'shivamtesting908@gmail.com', '0000-00-00 00:00:00', '595222a3c8de41bc61e99568ef2a5094693d770e9e68a329371a08f4f592c72e:GcgsML35Q93TOVoi8mjQTjvPaJCE6B63:1', '1', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-04 05:32:37', NULL),
(513, 'Kaustubh ', 'sfyfyfhivamtesting908@gmail.com', '0000-00-00 00:00:00', 'f053bbb6d3b2a8db97efc59dad4ed76c9eea42556a541843ba9374aada1566c4:sZ5HfraVXas8VXqbrX6ZX1hOXHiSYOAh:1', '1', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-04 05:32:57', NULL),
(514, 'show', 'cscoolshow@gmail.com', '0000-00-00 00:00:00', '61dd0f9d0d9b575cdb6bb002ab74a8e54b74c23efa68f948702f6bb821c5f8f0:mEovs5KonFZ0ZG0ybewM8QHmUJ5Uuj5c:1', '', '', 1, '', '', '', '', '123456', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-15 06:05:10', NULL),
(515, 'Kaustubh ', 'sfyfyfhivssamtesting908@gmail.com', '0000-00-00 00:00:00', '5a47b4a8bbeb3dec57ced6d3c9bd7b2a75a45b66a8f5a8018b305888e2a97712:DJCkB4ZQafZnkqaQMkaELOJXvzlqWJ0H:1', '1', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-04 10:28:26', NULL),
(516, 'Kaustubh ', 'rjain11@velsof.com', '0000-00-00 00:00:00', '64b3f1f29437c2bbca43e43baedd9b99a97f0c7c6a908fb3bf8a04b3d2e85a5a:IcSBfvSSqFxmMcSIU0V4gAz4xy2ZGt0u:1', '1', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-04 11:52:07', NULL),
(517, 'Kaustubh ', 'rjain12@velsof.com', '0000-00-00 00:00:00', 'a3eea43826de5c47bbfd83ad4b91d9809554d00e5af346aad93c2fbd22bbdd7e:lLDdbTvE8KVgfCLOgaD5yfEMhU62g9NY:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-04 11:55:24', NULL),
(518, 'Yousser', 'youssef@dakkaken.com', '0000-00-00 00:00:00', 'f62d1641dce4364dce032834b952284c56fe75f82fe76e63e22ade1baebb3440:YNMah5xm9Ycs56GXA2IrGJGyVrgtcFmY:1', '', '', 1, '', '', '', '', '50927927', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-05 08:59:56', NULL),
(519, 'TERESITA', 'tespascual@gmail.com', '0000-00-00 00:00:00', 'ea61a9d8737c67bb9065e71f65210496c028fdef864eb35713c29dbf5b29012f:aeX4zSgnl8l7yui5FA47SZlBTvbYYkzi:1', '', '', 1, '', '', '', '', '66165220', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-05 20:39:43', NULL),
(520, 'Sajjad', 'Sajjuzay@gmail.com', '0000-00-00 00:00:00', 'db52d440b8673a6a98ee74b69c9a28eff1cf539fe75ee4aeb94a4389b0f3da17:3akVbqmtyFLSXbeqvrfRTnAqxGkFd2TU:1', '', '', 1, '', '', '', '', '70308999', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-07 18:30:12', NULL),
(521, 'Mehdi', 'm.tanfous91@gmail.com', '0000-00-00 00:00:00', 'c96d7940fd1f8e416d6a9150427edf942ebdfc16006112537089df558f3d3a06:cFoQRSoE68VGziviifA8PJorWt6ZIFA9:1', '', '', 1, '', '', '', '', '30098418', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-12 00:06:36', NULL),
(522, 'Tamer', 'tamernagar@gmail.com', '0000-00-00 00:00:00', '92dac6f2aeb73f36458dc00c4ecb76dcd860bfda67498b210c64ce7a0e8a29bf:lZmugdtBObrd9c004IEKNinTum7rRm2a:1', '', '', 1, '', '', '', '', '50292911', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-13 16:12:44', NULL),
(523, 'Dakkaken', 'account@dakkaken.com', '0000-00-00 00:00:00', '97284a7af1617908e99adca45538cd393bd8ded1198f6a43cb8746d9fcfe6ced:mqq31B7QXblQfQ40yz2UduezxeiWRZ02:1', '', '', 1, '', '', '', '', '66191767', 21, 19, 0, '', '', 0, '1', 1, 2021, '2022-05-11 06:50:46', NULL),
(524, 'ahmed', 'test@tes.com', '0000-00-00 00:00:00', 'afae0ae87a207d2d5526668b918cbfe880fb0ec778aa468bc7855f8217dc8b3f:Yk2kZeWb3KBGAy1OybQYik5QdEV76n5X:1', '', '', 1, '', '', '', '', '66191767', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-16 16:08:52', NULL),
(525, 'test3', 'tester4@gmail.com', '0000-00-00 00:00:00', 'a00670902159d1dd6955c587c60f47161c3d0a0dbb15aefd9dad6250f2322425:LTGLiOLDcH6h2n60sZKe9fPgXH6AhJW6:1', '', '', 1, '', '', '', '', '7985967157', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-17 11:04:43', NULL),
(526, 'ttett', 'marwan@dakkaken.com', '0000-00-00 00:00:00', '435978616146d85df053f3b761f4e80b15a937452d3aac673fa787b77182b053:lZusOxE9UlTTiBy5BgwcxCsabpHmdYPO:1', '', '', 1, '', '', '', '', '66862269', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-18 08:20:42', NULL),
(527, 'Mohamed ali', 'jiji.daly2014@gmail.com', '0000-00-00 00:00:00', '590432f0c1d26aa2e5b09e1f60c79c07754c2cad29c8101631d769dbdf18deb9:sqOyCrkdh4vo9p3l95JfWZ8252YZvgF1:1', '', '', 1, '', '', '', '', ' +97433984572', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-18 13:58:13', NULL),
(528, 'Dairgempap', 'byrovsemen6@gmail.com', '0000-00-00 00:00:00', '5c06a0f204b2a27a9f6174a89f2884865bd05219d3ced68d10be950bf540a77e:yyiQXO6CYlT7jWt2BbdT8sLmHWvDNKWs:1', '', '', 1, '', '', '', '', '84682329116', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-19 00:14:44', NULL),
(529, 'Jamesererm', 'v.starcev@makao.efastes.com', '0000-00-00 00:00:00', 'ebf9200ad1242c1fdd5f71466fc9a55fc3488e69aed9c20e9e2da1afffcd997f:S2ktvVDnkapLvdLwjbcmQXR9As6SWz6U:1', '', '', 1, '', '', '', '', '88434941252', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-19 03:33:35', NULL),
(530, 'Hesham', 'hesham_elmalky@yahoo.com', '0000-00-00 00:00:00', 'aaf8741927f376531e58106b94e1677c934a101eef2e69ae956d743d5457a21a:IYpqwEB63iamJzRh5ceE9mZIiZovUolw:1', '', '', 1, '', '', '', '', '33065393', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-19 09:52:05', NULL),
(531, 'Marhaba', 'info@marhaba.com', '0000-00-00 00:00:00', 'b32dd3f88d3985420f5e8dff19a2ad5d5269a22a02a50754863058d37821cb86:rKpQ2bin9gilR1hkAKEw7bPndimPyupm:1', '', '', 1, '', '', '', '', '66191767', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-07 09:56:33', NULL),
(532, 'Larrycot', 'earnx2btc.com@gmail.com', '0000-00-00 00:00:00', '7f7cbe7e91f4c7acdc42e10b7e4c61f3fb4da99011c5c28d3ee16cfc4a82902d:7L61hd8rcBmuIRgUU98DyxHizi2FWfqz:1', '', '', 1, '', '', '', '', '86594283929', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-21 09:44:08', NULL),
(533, 'Aryushaempap', 'kosach241@gmail.com', '0000-00-00 00:00:00', 'e92de078c35c4f640cfe22d56946532edcef69d3488075d92595aaa208775a7f:jYOfpxMwFeJpyiaoFtGpTulNi9XAqedf:1', '', '', 1, '', '', '', '', '83829373919', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-21 23:01:58', NULL),
(534, 'Aisha', 'aishaalemadi@hotmail.com', '0000-00-00 00:00:00', '1875e8c7366192f76ea208537f302f390dae7676d72306d02ca613dd9aa909e6:XLAFxuTEF7KLc3CE8Wto6TcPqmROBdfh:1', '', '', 1, '', '', '', '', '66662182', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-24 05:56:00', NULL),
(535, 'Hastakala', 'raisunila3@gmail.com', '0000-00-00 00:00:00', '9ca938ed4b742536b0004e6a75a99c2120eb9d7cb46c83195c9b68e143b13031:YKk1r8bbRCLyPvYNPjMY0qGmx2wqDEeS:1', '', '', 1, '', '', '', '', ' +852 62059246', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-25 08:30:39', NULL),
(536, 'lle ', 'lulua9@outlook.com', '0000-00-00 00:00:00', '3bec24798f65f18a3a0ef546f90b5e9778469705c5e7e54fc8a2d84ecd0cc3bb:ssD29RlM93D1GDBSwgWvNUHhhZQrTTXx:1', '', '', 1, '', '', '', '', '33471406', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-02-25 10:19:25', NULL),
(537, 'GERMAIN', '1993610202@qq.com', '0000-00-00 00:00:00', 'b8a51bf43b68fa0fb9609f0d757405f91fdb4a0e475ababb84eb0481748834e2:TUDk20MiKdaxH0hZE9i3qw5wG88AHAxw:1', '', '', 1, '', '', '', '', '33065373', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-26 16:14:29', NULL),
(538, 'Dan', 'dandie.027@gmail.com', '0000-00-00 00:00:00', '39a724e399903fa68767dfad59941670a0ba0df1ca66a0671e43bc6ed3fdb949:yBoIGnW2QtKuUZbKQ6AiqDFx21lrGDhR:1', '', '', 1, '', '', '', '', '50856464', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-01 11:55:56', NULL),
(539, 'Ahmed ', 'ahmedfandi2002@gmail.com', '0000-00-00 00:00:00', 'ecafeaf751d9ad04196270c6fdf0f000bca49eabb91456a4adb33b42816a0599:DBEBzKg5ESHQLSj42eSGJvRGOn0E7nPO:1', '', '', 1, '', '', '', '', '30672870', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-02 17:30:43', NULL),
(540, 'عيسى ', 'eisa1212@icloud.com', '0000-00-00 00:00:00', '67297c0752b4ac71ce174b9810d4a8190d918098bb71a0b19291b3927b5f0bfd:fwVM3rWy1QP6OQsGnPKuhY30Ugy4jGRE:1', '', '', 1, '', '', '', '', '66255565', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-02 20:48:07', NULL),
(541, 'Justus', 'justussteenkamp@yahoo.co.uk', '0000-00-00 00:00:00', '0822b01880071469b82af21cbe6a2e8c023f02efc4ef85ab6e66430454afea48:6kEtnk6u26sUkuBR5rv8A21AqcI0BClw:1', '', '', 1, '', '', '', '', '55466525 ', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-03 04:56:13', NULL),
(542, 'shivam', 'shivam@verma.com', '0000-00-00 00:00:00', '505ddbdb91692ec57ebb8be8d595c88d0aa9a0a38801f70e8a3297287a4c0de1:Ra5HTKuvMyv00r5Gn64WZ11xn5Z0v1Qo:1', '', '', 1, '', '', '', '', '7982119355', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-15 06:59:36', NULL),
(543, 'samar', 'amar_osam@yahoo.com', '0000-00-00 00:00:00', '3fee5d64738f63d1b64ce0cc4689382f53a96d8c935326b132c23e8596542a36:qGh082b8bsBXLy2GpxBbPngsge0w9M3Q:1', '', '', 1, '', '', '', '', '33100474', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-03 15:12:25', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(544, 'nilofer', 'nilofer.mohamed25@gmail.com', '0000-00-00 00:00:00', '128220c769c6db1653aa13b7e1c80a31b545b5a42353fccf033b97573db20785:6orP0UUdWfoDigQFMon3mZSR5r66CosT:1', '', '', 1, '', '', '', '', '50425192', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-05 11:18:50', NULL),
(545, 'Beatrice Mari ', 'fuentesbea03@gmail.com', '0000-00-00 00:00:00', '010fb37279a1366b17ea1536ac3ced081bb9232be670ce1c37a6b5080a72f9f2:fNpyjgjncvEJbSHiu9O8rsHkx6USz482:1', '', '', 1, '', '', '', '', '55690235', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-08 11:03:48', NULL),
(546, 'Julijana', 'julijana.pucarevic@gmail.com', '0000-00-00 00:00:00', '1b0fcdd15d38ca485763f3860b444c60270cb578ba547e48dba50afdd8da10e1:g4fhL3frJgqHkzml0L14ORNPNADJ1Hmj:1', '', '', 1, '', '', '', '', '31052777', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-08 15:24:26', NULL),
(547, 'fatima', 'f.a22295@hotmail.com', '0000-00-00 00:00:00', '217e1a282e7b24e2ecd5fd6eda50cd8d223a805e16eba0cc94a10091f2a3e026:TQq4A9loAY4MahmGIrI8PuX0Vmxsyv0L:1', '', '', 1, '', '', '', '', '77777581', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-11 01:54:01', NULL),
(548, 'NAJLAA ', 'najlaa1301@gmail.com', '0000-00-00 00:00:00', '7b62ea3761fffa87c1f2c3cb3fa9630ef364dccabf1fa497372490ced3f49521:gRe3wv4A2zNKIutdSPEDWL2PhaExoYCb:1', '', '', 1, '', '', '', '', '70000856', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-11 11:22:55', NULL),
(549, 'Mervat', 'm3rv4t@hotmail.com', '0000-00-00 00:00:00', '638ec86315f3ef0550a4379da5f0c057b104c1cde9ebbd4557f0f1750c9243fb:UJuDiJAKHwC312Ty8w5KHc4mdavysyyD:1', '', '', 1, '', '', '', '', '0097431000363', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-11 11:45:42', NULL),
(550, 'Mayank', '248mayank@gmail.com', '0000-00-00 00:00:00', 'c2e6ad46a7419438a67aaf8dcf05dfdb81a5fcc65089993c0688614919759275:me2otFZtByS2JOmXyKfo0auTMtiVfbEW:1', '', '', 1, '', '', '', '', '50346156', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-20 21:56:28', NULL),
(551, 'Abdulaziz', 'buadool78@gmail.com', '0000-00-00 00:00:00', '0a259272abdc8918b502c486cbf509ce0ef8c9481cbc7e7d33cfbc31bfcdbd33:jGJULhbTEOkSovk5zy9S8HzKHXh3xO0P:1', '', '', 1, '', '', '', '', '33336465', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-12 09:31:57', NULL),
(552, 'Farooq', 'farooqhaider23@yahoo.com', '0000-00-00 00:00:00', '5aa8a3822212e7a9290f5af3027e533f4e7481cc50c5857a38f61160fb0771ba:MFaR7prWImyXaiYoeo1VSlH8Nz6U41vn:1', '', '', 1, '', '', '', '', '74457900', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-14 17:19:36', NULL),
(553, 'Abdullah', 'ashakir974@gmail.com', '0000-00-00 00:00:00', '2907babe95e31802f2336f762d5dc3a32577a7d0f1a02d274a3031509d3cf872:JlwAHwn9GA7ni4rowJFZpUFxRyfeyHoL:1', '', '', 1, '', '', '', '', '55599656', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-16 18:26:30', NULL),
(554, 'nektar', 'nektarjaneamal@gmail.com', '0000-00-00 00:00:00', 'b05b6d1718b09881c3b9fef71a4b66f3a756b5dc7de86ac674ca4357bdfb55ce:9QDBVcw9XKDulQc4RN5XnHuRiLIaCieG:1', '', '', 1, '', '', '', '', '5519 2275 ', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-17 09:53:00', NULL),
(555, 'Khalid', 'bratily13@hotmail.com', '0000-00-00 00:00:00', '84835db57ab9a93d48365d4817de1637bbe99fdcda9ca940251da83e1e782e37:e50YQ3r4M6uLyYHPsX6mgR4EdP0hSXHH:1', '', '', 1, '', '', '', '', '77212134', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-18 19:33:39', NULL),
(556, 'Misbah ul', 'drmisho@hotmail.com', '0000-00-00 00:00:00', '75d06d8a5c3ae657df165b05e81c6c5095cc67f856296b473e9736b9c22999c3:PbLNlkR8Kgy6Nd7rmNpcEYv67GBiFOAs:1', '', '', 1, '', '', '', '', '33104607', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-19 09:25:32', NULL),
(557, 'Butsabawilit ', 'Butsabawilit.vit@gmail.com', '0000-00-00 00:00:00', '9e93d8d3ef329ed5e401e8346e2be74b278289fe33a7bfb7b5ec536e6bf0a319:4ouAJ8h89YxKFKWMyP6XzWqUHxxyEFrG:1', '', '', 1, '', '', '', '', '66105509', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-19 21:42:27', NULL),
(558, 'Mohammed', 'hero.m2020@hotmail.com', '0000-00-00 00:00:00', '68f86d3d2eb2ded8354f9097845d3718a7c9829ec7c71a4be0c4e1277b746994:2hxdGSXvJJ2SKu7hSJ13KJ8yTTjiKHCC:1', '', '', 1, '', '', '', '', '50541231', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-20 05:06:42', NULL),
(559, 'tt', 'tt@gmail.com', '0000-00-00 00:00:00', '414559d7739cf0241ba94f730079dd24c69b6163b22729f47cbbff94acfba847:EGX9oK2KFf4a4sGtf55esx3QnlkhhrHy:1', '', '', 1, '', '', '', '', '66461230', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-21 10:46:52', NULL),
(560, 'noor', 'noormalnaemi@gmail.com', '0000-00-00 00:00:00', '07f8a5863a2a7acbb7f2abfe257cd81941f1a0d90df6a893c323dc2564c61ce0:FsGANTcbItR4wSbOKMt0OPFQSATdzv5w:1', '', '', 1, '', '', '', '', '50077114', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-22 15:37:29', NULL),
(561, 'aldrin', 'dryn28@gmail.com', '0000-00-00 00:00:00', '2750232b60c192005b2025b23452a6e8f649e4a0746d4c56146e34e323a29c54:8wqyDxn4LuwPKnENBGZST5zpPXeMRXUa:1', '', '', 1, '', '', '', '', '66320472', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-23 22:45:16', NULL),
(562, 'Maria', 'maria.viqas343@gmail.com', '0000-00-00 00:00:00', 'e6df7be99b62cebcf22cdb643cb289f53ca773981cb73b255d073b443e0d1352:iOg44t75Nxr1qUoCVzphT0omOIIhy0sa:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-24 13:58:40', NULL),
(563, 'Mariela', 'mardisal@gmail.com', '0000-00-00 00:00:00', '718f6f120392483f2c2a1af6fdbaaf751007496f4c33d27d38212711a324acee:76rnl0qbiYUen2e5UCmjGVXXlnr2jn41:1', '', '', 1, '', '', '', '', '66291077', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-26 16:48:26', NULL),
(564, 'mm', 'newusername0011@gmail.com', '0000-00-00 00:00:00', '6bd82d41c574273952beef8ad37653f27297066c4cd1e35ac013bbf9177aa66c:Qa1C07OfIPIbaNFwYTYsH5zE4VHWvoo6:1', '', '', 1, '', '', '', '', '70005686', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-27 18:13:52', NULL),
(565, 'Tamara', 'tamaradamra@hotmail.com', '0000-00-00 00:00:00', 'e2a19dbec8c290ba2da85d45443945c216bfc65b93ecd0b9799e4e9c6558aa4a:EjuLn9dVaSpYo0bCyBsSVgDhmZEmKBO8:1', '', '', 1, '', '', '', '', '66000654', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-28 12:33:36', NULL),
(566, 'Steve', 'stevewilfred.fmm@gmail.com', '0000-00-00 00:00:00', '4f50baa36f8d353d194acd8fae0607b0e814988be7fad1d78fe2e6ebd6957cac:aTVjUNgBpuLN4pODR1TwalNMl9Zjhqcz:1', '', '', 1, '', '', '', '', '33286356', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-28 16:12:25', NULL),
(567, 'Huda', 'hssh-2009@hotmail.com', '0000-00-00 00:00:00', '730bf1390515d576456481f2c895da05b38acc1866a33f18e1af5a57d75828d8:nc4mI73tGooWA5tBAlePi4mYbjRzE7JZ:1', '', '', 1, '', '', '', '', '55598199', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-03-30 05:20:03', NULL),
(568, 'youssef', 'test@tempo.com', '0000-00-00 00:00:00', '9519e86ca554d8bfaa7c0fcd13e3d1bf5be1a7283b1ef4a2f3d86f433b092907:RRISVF3VzjScfI5QJHKcyiC57XBfqyNU:1', '', '', 1, '', '', '', '', '66191767', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-31 11:53:34', NULL),
(569, 'Dak', 'dg2@dakkaken.com', '0000-00-00 00:00:00', '36b83b747c9ce47789d26de826896b77c5a4ff3380a52f8d521d1e998fb7d082:6t2Mr0MT8yNluh8No69LDPzXUJRmWT0h:1', '', '', 1, '', '', '', '', '66191767', 21, 19, 0, '', '', 0, '1', 1, 2021, '2022-06-16 06:46:16', NULL),
(570, 'Maripaz', 'maripazpanulaya@gmail.com', '0000-00-00 00:00:00', 'd9f8fb5dea41afe7dd7968c8ccaa0121c3046aca13762e938553561b617a5deb:OJ7BLe6blEpy89M2aWWrKV4ZohBbzxli:1', '', '', 1, '', '', '', '', '33309435', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-02 19:00:14', NULL),
(571, 'Ezzoubair', 'ezzoubair.moustaati@live.com', '0000-00-00 00:00:00', '1fe46ca64332c4fc939fd9a606e02a8b258925b27aa044ae7bbc30f7df338307:fPyjQgx0bU8nYhyBTLJLwU2O3pEMNAlt:1', '', '', 1, '', '', '', '', '66655102', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-03 13:10:01', NULL),
(572, 'Deva', 'ragul22rockz@gmail.com', '0000-00-00 00:00:00', '0b705e02e5b237ff7e174078a2cc025ae7b3413c46d6befad710067a40e4434f:VnTzHNzy9RFMfT8qi6seO7DfFZMhNYW4:1', '', '', 1, '', '', '', '', '55761328', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-03 15:04:33', NULL),
(573, 'alreem', 'rymi.2018@outlook.com', '0000-00-00 00:00:00', 'fc724749995d3716b4da21b81fb474c9344aa045e5d67f50108007727e41d35d:6zA4GvLUpOeNhmaKe5KnsHvSLiZTX2rg:1', '', '', 1, '', '', '', '', '33636655', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-04 06:36:17', NULL),
(574, 'med', 'manalayoub0209@gmail.com', '0000-00-00 00:00:00', 'e85b1c7fd94930529d7f36ea2dcf0c7e7df75eddfae254784b68895a052b1a5e:xG5pLx42oxiUqMwlvWzHBBwAqBA7KRDp:1', '', '', 1, '', '', '', '', '70301521', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-04 11:57:35', NULL),
(575, 'Rimaz', 'rimazmhammed@gmail.com', '0000-00-00 00:00:00', 'd77308fce48d9e4d289bd71fa7918b417e9371ed02418c62b1267545f39baef6:XYdsPnti33RrxX41DodomutBLnTC7G59:1', '', '', 1, '', '', '', '', '33645500', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-04 12:37:26', NULL),
(576, 'Noora', 'noh4681@gmail.com', '0000-00-00 00:00:00', 'd105864e69216907932489dbf0b57193a8339d0878f4c09d12ea78b2e4937aae:a5cN7c6WAl9a6vX1TwkgDrK42MV2mAqQ:1', '', '', 1, '', '', '', '', '55534358', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-04 16:11:06', NULL),
(577, 'Siva Chandran', 'sivachandran47@gmail.com', '0000-00-00 00:00:00', 'cd7991ee899424734ac3e5af425b56c802d4471081d943f1d9dce247c9966959:uqlNmc04HR3tvQUlZYrGAtS0qqqhCm1D:1', '', '', 1, '', '', '', '', '31294051', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-29 09:04:26', NULL),
(578, 'Esraa', 'elkady4102@gmail.com', '0000-00-00 00:00:00', 'abbe7ee36e2af23cf91b7aacde9caeeb9a6039d7684e73230dfff96946250503:5Fu4ofEqW4dYgZNntyzVUgdBCs8ENYE7:1', '', '', 1, '', '', '', '', '77250001', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-04 20:12:52', NULL),
(579, 'Asel', 'asoi_91@mail.ru', '0000-00-00 00:00:00', '85e1ac07407c291d942611d68ebc79f760246468be19bfe0b62699ef3f566db0:BXOoIUoGCMtT9SiriwxHS7ForNabpzMn:1', '', '', 1, '', '', '', '', '50244616', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-05 09:32:37', NULL),
(580, 'Balasubramanian ', 'rkrishnabala@gmail.com', '0000-00-00 00:00:00', 'fac7bcdb7b4af7d3f7005aac64fec010ed677e67d587e169659e79476a3369b3:JIVgIstg5R0miVfuJ4ZXdc2nWYLFTFhj:1', '', '', 1, '', '', '', '', '55809008', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-06 05:49:43', NULL),
(581, 'Krishnan', 'kalaivisha@yahoo.com', '0000-00-00 00:00:00', '3e97b88c077cd4e9053e417afe381ef6defa165dc00e46fa57fb835613bccdf1:vc4qkcEzS6KF2C8mZKwXyopqhiKopetP:1', '', '', 1, '', '', '', '', '33174342', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-06 13:23:06', NULL),
(582, 'Nermin', 'queen_met@hotmail.com', '0000-00-00 00:00:00', '026d2116437cc116ca1642a3d7240f2fe314759e2f8447a15477aefaad4be3cc:r0GnJ2TZp2urupA4bKN4oZYGf7SbTt1S:1', '', '', 1, '', '', '', '', '55920789', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-29 08:25:23', NULL),
(583, 'Fine', 'info@finemattress.com.qa', '0000-00-00 00:00:00', 'debd4aecaa1a00e1dafd4719fbcaa8b8fcf19a9597f0841e9553297ca68e9351:hP7AyWfrWOO9ZqlrRAAVi4dRNy3pxPUe:1', '', '', 1, '', '', '', '', '44178882', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-07 07:16:39', NULL),
(584, 'Aldiar', 'info@aldiar.com', '0000-00-00 00:00:00', 'd6d35864cc95c60b69d09633d078f3427ac74d8a36fccafbaad50e562476807b:qirf7ZszeJ1JgXV2jtS4YdQKNCDpGS1t:1', '', '', 1, '', '', '', '', '66711260', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-07 10:40:40', NULL),
(585, 'ameera', 'agalil24@gmail.com', '0000-00-00 00:00:00', '6fce587eadcde7be77e3f5add67f02b67df3cc541d63c247007abe28c1b13621:2FSKGvUY4w9yQnh3JLY5dsLrYrTyYah5:1', '', '', 1, '', '', '', '', '33633590', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-07 20:42:55', NULL),
(586, 'monther', 'umuosef1123@gmail.com', '0000-00-00 00:00:00', '965327e5fa33f6e5da738497cd7a933b5fd836ca874b18bc575a41679b5b586f:0EvU8yKW9areprmQES1hTzRSXUV9e1O6:1', '', '', 1, '', '', '', '', '30938594', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-08 06:23:36', NULL),
(587, 'mariam', 'mariamalbuainain90@gmail.com', '0000-00-00 00:00:00', 'f7232cec84859959e8e422d3e8c869c9c10b8cb8c0761cbd36cdfbc33e149d5c:Ak5deoLsBNUbrgTiuKv6Imt3Is0NimWe:1', '', '', 1, '', '', '', '', '50666502', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-08 09:32:27', NULL),
(588, 'maryam', 'Leila321@gmail.com', '0000-00-00 00:00:00', '576286059f788a133325b342fcfdc80175bcbb497117ed61ad828136844be0ec:A2zuFsd5c485TO1DICjB5n7c5tzTreeC:1', '', '', 1, '', '', '', '', '5038 9207', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-10 06:33:19', NULL),
(589, 'JosephAmobe', 'g.severyanov@jodas.enersets.com', '0000-00-00 00:00:00', '32f9ba31694fa87eadb328dbf899c3411618e2f461163d3e4bfb9c16f4c081fe:Fxhj066HLkyAzFYvYM5qGAQxIqxuth6m:1', '', '', 1, '', '', '', '', '89157285562', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-11 02:42:24', NULL),
(590, 'HeatherEngef', 'weckspec89@yandex.com', '0000-00-00 00:00:00', 'a80a5cdb27f7e97eefe75fe18135e6c1713667bf1b3501f3fb616cc0402a71dc:dZicnp4yZ4oSyDN3kd4wauwZdmLq9Y2A:1', '', '', 1, '', '', '', '', '85779949766', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-11 06:14:52', NULL),
(591, 'Sara', 'khadijahani1994@hotmail.com', '0000-00-00 00:00:00', '12d49392866e2dec6a4c5387a039aaafab4c63d56e1d53374527fd583d4d6d9e:eeNfGfFKO3X9BuwHuR7TwAiZW8S4O6Gp:1', '', '', 1, '', '', '', '', '70336332', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-11 11:00:03', NULL),
(592, 'Pedrothync', 'b.figarovich@denis.enersets.com', '0000-00-00 00:00:00', '223e5eff5c1943fa71b980e867eae46aec5bfb457fb50e6e703d0957d8719226:vEgYcCnomiDueVvol5CQnumYMszaKBc8:1', '', '', 1, '', '', '', '', '86856814972', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-11 13:16:09', NULL),
(593, 'latifa', 'latifam331@gmail.com', '0000-00-00 00:00:00', '73741794ec7d5c96914a63708e422980d195844bf50ecea334d4cc0c4c790536:7aG5QtkphyavmGTHZ0ogiEy29b0TfgYr:1', '', '', 1, '', '', '', '', '50199500', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-11 15:12:17', NULL),
(594, 'Williamgor', 'm.petrovich@max.enersets.com', '0000-00-00 00:00:00', '689bc0b2853509a5a024219a21d7b655b12687348459fe246da906b857d8b41a:e5rLvLFogCaueqDuD84rAVpzaLaZXPZ8:1', '', '', 1, '', '', '', '', '81648615196', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-11 21:54:57', NULL),
(595, 'DavidTah', 'l.danilov@den.efastes.com', '0000-00-00 00:00:00', 'd138a8981477abb36413ff8c2344d64d023a8435be7492a5b34c7c446934d004:IV4V8MmVyCz3jZvkp8NbnXzzjoQrshzv:1', '', '', 1, '', '', '', '', '88274461845', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-12 02:00:26', NULL),
(596, 'RamonSquam', 'xrumerspamer@gmail.com', '0000-00-00 00:00:00', '0a271e0e82d6b130c6d6afd9d4e7301768b02c6c62ac27e97d9f3dc20ee01989:eRGHWp0ECtetqtescT32qu8non4QjUCn:1', '', '', 1, '', '', '', '', '88772889495', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-12 04:01:44', NULL),
(597, 'Ciobanu', 'ciobanuam@yahoo.com', '0000-00-00 00:00:00', '36980484178146a2c0d98166bd79eb29a5109a91fd12091096c0957a2ae69561:ssddnSfbZBrdB6yS2oIfzZ512gQYAyZI:1', '', '', 1, '', '', '', '', '55401439', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-12 14:55:47', NULL),
(598, 'MariyJek', 'cou7gif@gmail.com', '0000-00-00 00:00:00', 'f9f05f82570a369b20813f1623fbf6560e75153568a9aaf0935d2e313dc33c23:Eg8yB0hfuVbEVcB6BoVkHHRDdt1Fbkoj:1', '', '', 1, '', '', '', '', '83169136312', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-13 21:04:48', NULL),
(599, 'dorina', 'dorinasula@gmail.com', '0000-00-00 00:00:00', '80dbaa67bdb7b2870646b358655fadfac0bc8d9add6b9abcf6a3c672af12b670:hNd8Z5ShcASLSuFgubVa5N894DXcHXsz:1', '', '', 1, '', '', '', '', '50901911', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-14 07:11:29', NULL),
(600, 'shivam', 'shivam@zerma.com', '0000-00-00 00:00:00', 'aeda6f00a3bf5e26541de32e304f54dcc71ec66a239268236ea9a47983cd691d:k1XSHrc1UDy9mKOEz3990OGlbZqtpWcF:1', '', '', 1, '', '', '', '', '8468081248', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-15 12:07:38', NULL),
(601, 'majd', 'roufailmajdanjy1@gmail.com', '0000-00-00 00:00:00', '59d23b791ca3c2ea29ce6e89977b718dfc46116c53543f0e10b93f52a68a3fb9:vhKxUvl63C6CBXqsnGs3nk6dkOvaVXx1:1', '', '', 1, '', '', '', '', '55220977', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-15 14:03:11', NULL),
(602, 'Imanhanna', 'imanhannagoling@gmail.com', '0000-00-00 00:00:00', '39bbe9dba545c13cbd9bdc2267174f4f738062160ddde6863604a7e0120674a1:jv8QaZHditCpp0zxWmajSRdHkG9BFsON:1', '', '', 1, '', '', '', '', '33495670', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-17 09:17:55', NULL),
(603, 'Smscom', 'fah.igor@yandex.ru', '0000-00-00 00:00:00', 'cf1f410ebac5327fd7057122ba4a981d5d5ab55c89cb32817d357de6e8cf4394:gp9YI7FA1XNvs9PGOMsoXIjShLnvXOE6:1', '', '', 1, '', '', '', '', '88937151738', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-18 09:18:36', NULL),
(604, 'Enriqueneows', 'v.dubova@makao.efastes.com', '0000-00-00 00:00:00', 'caf54bca8ac489e878e1305bf6545b4b85adafb41a9acbffc2d0e7ed0fad5ac6:uhcThBmPdgc27wGd1Bk79nydX1CJKdTE:1', '', '', 1, '', '', '', '', '89597651536', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-19 14:30:27', NULL),
(605, 'Mohammed', 'boucina66@gmail.com', '0000-00-00 00:00:00', 'e604b35b7d81396402b6fb9da683292a88629fadab8c5022a9462e93bc52a04a:k8xmT9F02Va07IiIF7zuZrrAVPmhKkuq:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-24 19:38:18', NULL),
(606, 'aseel', 'asil4fadi@yahoo.com', '0000-00-00 00:00:00', '41e171fa47ed43d4b6aa5b964286ca019d73ec3cdb67a1b5de44bdc24bcdb72b:CcCFTOIfPGvlPSb1nznJwijyJjAEMtuR:1', '', '', 1, '', '', '', '', '55730679', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-20 23:33:42', NULL),
(607, 'Eyad', 'eyad_thyap@yahoo.com', '0000-00-00 00:00:00', '6143b228ef4f81c1aaccb70203c876aaebfedb1156ba5f619b90fcc53ac9e7ad:COYYN70taWYuPwdpwvhtUh4GbR2B4pWV:1', '', '', 1, '', '', '', '', '30030664', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-21 18:23:17', NULL),
(608, 'Diana', 'diakayali@gmail.com', '0000-00-00 00:00:00', '9db25b81dfb7aae75333015250487b4cb4b8621b7525ff6c80091e3081db4f7f:qgDNbZnltfVn0Nwca0mGivg9Prrsn0Ch:1', '', '', 1, '', '', '', '', '50409727', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-21 19:05:45', NULL),
(609, 'BradleyRop', 'p.gromyko@max.enersets.com', '0000-00-00 00:00:00', '7f3e9719c6c2a6da734d536c33b4dfda0618a6e0bc61c37a3beefc23eba41617:HrwagCL1unSj8chbtQ3yQ0yjAwOG6ZOB:1', '', '', 1, '', '', '', '', '83218766286', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-22 01:43:06', NULL),
(610, 'Shoog', 'alfarsymshary@gmail.com', '0000-00-00 00:00:00', 'af7aa021dc9871bbf40b7ac216e383ed0a867857bc55ec04aaeb81e3f19de348:3AT6Mkj14NnQ5sH4XHXVhQ7eSwPWV3QO:1', '', '', 1, '', '', '', '', '33905280', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-22 06:24:29', NULL),
(611, 'CarlosOvabe', 'k.svanin@den.efastes.com', '0000-00-00 00:00:00', '72ded5dad91de7cea4de44b35c8d179d49d427f3f8fe98f2da77561a8ab25e61:a7tqwLWaDcwb00I5ovTKBYouhcnUYqQ7:1', '', '', 1, '', '', '', '', '83331346372', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-22 12:16:06', NULL),
(612, 'mariem', 'mariemzwidi@gmail.com', '0000-00-00 00:00:00', 'acf71905a0d026c268fb69b508b9dfeb823d58ca62f1b151de413edeb1b3f855:KXrb6qNOyo0Pz8u8YyjPrYqSiwrA1TFp:1', '', '', 1, '', '', '', '', '26735430', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-22 13:18:51', NULL),
(613, 'GregoryDak', 'l.sviridova@denis.enersets.com', '0000-00-00 00:00:00', 'f4712ee1ce0768a044499964d03413cce19967b512c4f2a8ce80b2674950eed8:wQ0c4SW0ljWaefTTtVqFxDvGtwrp5Lwx:1', '', '', 1, '', '', '', '', '81266164537', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-22 13:55:18', NULL),
(614, 'Isaac francis', 'Tumangisaac@yahoo.com', '0000-00-00 00:00:00', '9c8d3ba69222f3089a8a9a4412b2925dd68d124288e160fc9df0d6cb2872f86b:esdGiupj1EfpAlb9kM99NKkHXPWK6wqL:1', '', '', 1, '', '', '', '', '31264102', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-22 16:00:16', NULL),
(615, 'AlbertZette', 'jerrys9@24mailpro.top', '0000-00-00 00:00:00', 'cba45152323b89fde63e427c384c0693d25cc33bc8c8a41468b2f7f0b940111c:aBcbN2LAZF07Lq0lVMTpdtPgb2jWvtHP:1', '', '', 1, '', '', '', '', '85588834232', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-23 04:15:40', NULL),
(616, 'esa', 'ejamal94133@gmail.com', '0000-00-00 00:00:00', 'b5b612b3a216950674f2d0e3baf7248037b9a4ab19ef08d4dfe75aa2a65d752f:dDv2bSJYY2l1HLc8GgAI78oOir46zkmm:1', '', '', 1, '', '', '', '', '66863282', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-23 16:19:04', NULL),
(617, 'JdvmllPop', 'jentai.w.o.r.l.dp.ic.t.u.r.e.t5@o5o5.ru', '0000-00-00 00:00:00', 'e7443730c080242bd42e476b4b73cf9cc617e6130e7ecb0fcbe9ebf2a32a0b04:wdd2APn1xmZszeD6SCFf0pnfDsxEGnzy:1', '', '', 1, '', '', '', '', '84815298716', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-23 22:09:47', NULL),
(618, 'sally', 'sallykourani221@hotmail.com', '0000-00-00 00:00:00', '4909b575489a1cae0609e56a9286aa1aadd55d63209e573563987dff361aae27:2Iocji6AsLtJNAZVu5mGgRrS21iKRA1H:1', '', '', 1, '', '', '', '', '55717806', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-24 11:28:17', NULL),
(619, 'Katherine', 'katherineladores@yahoo.com', '0000-00-00 00:00:00', '589d2a5fc77717608b61828f2606f96366b4c4a235531af53589d1320882f5a0:o4BjYwuSdTYpiaNqg0LOnaY5z2UxSR8a:1', '', '', 1, '', '', '', '', '70525947', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-24 13:11:59', NULL),
(620, 'Jagannath', 'jagan229@gmail.com', '0000-00-00 00:00:00', '9f5cec4555fa809053b8e6b3c3ba2077f0f0e98b66e0d57e97e6c613d802b404:TsxwslLu1qtYDG5roUOFq4W0piuKxUmx:1', '', '', 1, '', '', '', '', '66004385', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-25 08:39:16', NULL),
(621, 'MyronKnoda', 'vorobva_dianochka@mail.ru', '0000-00-00 00:00:00', 'b35b6637fb8c3a1aa3b0b3049426cf5321ed56d30a497a3ec0309064a40e12f2:2jlG8SY3G1mVNwmIMLBToJO3ijTpY8iX:1', '', '', 1, '', '', '', '', '85645164272', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-25 09:36:44', NULL),
(622, 'KevinFroke', 'a.borisov@a.avalins.com', '0000-00-00 00:00:00', 'fac583e4910c5a8fafcbaed23f585d40019b40ae97e0211d892f9c1f9ea7024d:GcYwhgITu1iIv2d8fl2Zf5S9NWs6IRMz:1', '', '', 1, '', '', '', '', '82324579246', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-25 17:26:24', NULL),
(623, 'InvillPop', 'revers@o5o5.ru', '0000-00-00 00:00:00', '7a058b68e9b22bc75e84d49ffc34dd7a10db7c6503f2604d8f0ae4dd3da89bb3:HZD0BhnkBgiXnUGs6Wvwe3JcF3cwzV0q:1', '', '', 1, '', '', '', '', '81161435422', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-26 13:56:44', NULL),
(624, 'Sagar', 'sagar666@gmail.com', '0000-00-00 00:00:00', '4c93e8bfddc97750a3d526272250915bc28e2cc4df3e9b35bf9a06d757dcb032:ZXnMf70hjIrKMbVxQtSEGNzsmy3Z6ld3:1', '', '', 1, '', '', '', '', '55143782', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-26 14:59:47', NULL),
(625, 'Noor ', 'NouraAlmahaini@hotmail.con', '0000-00-00 00:00:00', '837d44e7559b93a432deb457a031edaccf2ad541eabec23978341154f34abbc1:kTSAyiGYd3h6BFDxFWFFiSDh3ov5flKt:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-26 17:01:19', NULL),
(626, 'Geraldfup', 'd.malkovich@info.avalins.com', '0000-00-00 00:00:00', 'e6d667fe3d628e83bc0a0e236b796bfbcb5136f08e73dd3a52e3662bd3c3b716:2gM6T4nBMhSQ45Lfk9eQPVZFI7kBiUFz:1', '', '', 1, '', '', '', '', '87195178367', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-27 05:38:38', NULL),
(627, 'Arwa', 'wd_55_55@yahoo.com', '0000-00-00 00:00:00', '5323049e48b4bea096f2bf298067617c97af1d8bd0ec2d32acd307948356ded6:p3jCkOVPBqtav6WGjsOXikfjlocNar2P:1', '', '', 1, '', '', '', '', '30099102', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-27 22:04:05', NULL),
(628, 'hajar', 'Hajar.nadiri1992@gmail.com', '0000-00-00 00:00:00', 'c13ed421c29f79144035840a7e7e60cbaee84cd336e5b331ccd0bbe25dfc683c:YH2DvxwDur1yfeBzAr4jp9lTlO8lkLAA:1', '', '', 1, '', '', '', '', '33706035', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-27 23:20:08', NULL),
(629, 'mufaddal', 'msjariwala@gmail.com', '0000-00-00 00:00:00', '21ef48225aec7e4e4adcb18bf30a45556a46ab6e7c9cb203ecc99e5fe0601990:nGaGRfQTMzWwhRkjkXR3iVQMqhStR83X:1', '', '', 1, '', '', '', '', '50050752', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-28 09:02:28', NULL),
(630, 'Sabana', 'Sbawladoha1@gmail.com', '0000-00-00 00:00:00', 'b4a3541ff718e51bd8c160f24169a1f45fcbefaf03b66f4211a4432ccab21975:p5yYH9gzW0UQw7uM9uxQH26GDUQZjitv:1', '', '', 1, '', '', '', '', '66043829', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-29 11:42:11', NULL),
(631, 'ElmerHek', 'm.viktorovna@jodas.enersets.com', '0000-00-00 00:00:00', '2f4802a185281317511fb5eb842c2cd0afce6499abe2bb502c8ced59bd4a7e5e:NSSiQZRiWbfHKTfcnRyWwaGPNYORqDPZ:1', '', '', 1, '', '', '', '', '81586592448', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-29 13:08:04', NULL),
(632, 'سلامه ', 'qatar66771@outlook.com', '0000-00-00 00:00:00', 'cf63d69112f29f0835414e170b50e3bf08ccc2fb96c9d650ed8acd8636a4dd0c:Qiorl1afqaDuTrsSc6QOej8ryzbR2eCt:1', '', '', 1, '', '', '', '', '50552155', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-30 12:08:27', NULL),
(633, 'Maryam', 'um-aljoury94@outlook.sa', '0000-00-00 00:00:00', 'df84183bd31f35fde4b3e88acd38ca04093b2ef484c76ecfa246d7d7bf85013d:MtiE8L0E4SovSTNQavKTJ6ns5TFKnj39:1', '', '', 1, '', '', '', '', '70505075', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-30 20:47:45', NULL),
(634, 'mohamad ', 'mohamad.mash@hotmail.com', '0000-00-00 00:00:00', '15bc48d5acd381e874d80827bc97ac463b565c77ab3e540a1e9e79ba6d301004:beYSl6ZhAXHgnTAdIoqc2dA4g75kaDu7:1', '', '', 1, '', '', '', '', '70558855', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-04-30 22:20:26', NULL),
(635, 'Ramya', 'bramya.cse@gmail.com', '0000-00-00 00:00:00', 'be86531c557892e44432b9029521600f3ee3e7caccca6b2b5f7e6757904abd18:hkNGkvANjR9NHrw9jM4bSNh8nUS9Ti5Y:1', '', '', 1, '', '', '', '', '55380323', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-01 09:57:15', NULL),
(636, 'sanaa', 'salfataftah@yahoo.com', '0000-00-00 00:00:00', 'd2332d4f112bad3b5864b47f723e680302e8e5e9b3c9fab8c1f9b2bbf90c446b:uTm199LVYE1jffGK2qu5H7reeZC9WXtK:1', '', '', 1, '', '', '', '', '33273088', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-01 17:03:30', NULL),
(637, 'sally', 'sallyesmail86@gmail.com', '0000-00-00 00:00:00', '65f96f0fb9c32e505ede737b3e0b5ce42c2c9ebd28282add27241a912c31540b:ajFp0efuuJSFyHFoZ5QMaeSokQh9ZbAs:1', '', '', 1, '', '', '', '', '77978255', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-01 17:11:31', NULL),
(638, 'رائد ', 'r-a-e-d-1@hotmail.com', '0000-00-00 00:00:00', '949a7dc46d9046931b68f3c0a811c4b798c85f3166ac2ee360e5ba3f2e3d4109:adwWvpcVAN1milMfArGEMuHOrTApNWtF:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-01 19:19:49', NULL),
(639, 'Charlesnip', 'd.hromov@max.enersets.com', '0000-00-00 00:00:00', '89ba0c8faa5bdd951edb7f6f5d6ab06e12135c5cea052b385038988e72ac642b:F96um5mAJiq9DKEdAHhnLHQCLfReBsY2:1', '', '', 1, '', '', '', '', '81181939788', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-02 02:44:54', NULL),
(640, 'ebrahiem', 'bu_3li141@hotmail.com', '0000-00-00 00:00:00', 'd3aa806613c7d1f80a6bab87d85927726624c72b832ea198708250a61654cb2c:siwjYYGJPo0xPJ07Hlwn4kkpUjozGTtf:1', '', '', 1, '', '', '', '', '55515851', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-02 10:47:57', NULL),
(641, 'Roberttag', 'd.denisovich@den.efastes.com', '0000-00-00 00:00:00', 'c2ddab9c508e85242cfa32831c21cbf48f26243c2330bc252fddcc94207d2f4b:ige7UmaCO0xxvkA5zZMaxa0hHvuhjwpw:1', '', '', 1, '', '', '', '', '81523774119', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-03 05:04:05', NULL),
(642, 'RurdEnase', 'hriksa@yandex.ru', '0000-00-00 00:00:00', 'e8ae4d2ab04a244a1fd7c6ff8f08b003f9db9e10bf7f31191b4f19a6835b12e5:6kWGS0zyW5JDZXYVMaQWaSJVX8wAxmnr:1', '', '', 1, '', '', '', '', '86669483224', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-03 19:06:17', NULL),
(643, 'jilda', 'jildaaneesh@gmail.com', '0000-00-00 00:00:00', 'e8345a3a7800e6dae2c4f1019af56c572847852a6c88f04f8191be75ba53aec5:kFpNW0h7PlPg2Wo2vAIblL1LuWgI7E9b:1', '', '', 1, '', '', '', '', '31126039', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-04 14:23:44', NULL),
(644, 'Shaheen', 'sqibticar@gmail.com', '0000-00-00 00:00:00', 'a640a314d513c6bcf8310bb531368b47b2d3023c7b45c60be26e07942d6a05b5:zGXBv5JdLQL3GKplzvOGrQS3DAZaCU11:1', '', '', 1, '', '', '', '', '30630070', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-04 22:07:54', NULL),
(645, 'abdulla', 'oryx385@gmail.com', '0000-00-00 00:00:00', '3a83cb4826abcebafaaa3ab86bb9a6964bda91c95a752661085b26f100b70cc9:6Md3ZJzkmqGdDmCh5XTmJaiAjs6uscDb:1', '', '', 1, '', '', '', '', '30999606', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-05 04:23:41', NULL),
(646, 'JamesBarve', 'em7evg@gmail.com', '0000-00-00 00:00:00', 'bbff4ab8effaad3df845afd4a382e7a21ee3881a1e1456b5d26693e402ef1d9d:somSJIBQSvd9jBfxHDXFJyK0xSamu6Lo:1', '', '', 1, '', '', '', '', '84535684372', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-05 22:37:38', NULL),
(647, 'Mohammad', 'Mohammedalharami84@gmail.com', '0000-00-00 00:00:00', '7d8348010940b998045b83ed0fed69f332c2e23fbb4b72d3bff77ab8431c53fa:UUnTvrZmbt956z0hvJTvfZfEBeKWV6j1:1', '', '', 1, '', '', '', '', '55468685', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-06 15:39:48', NULL),
(648, 'DavidTox', 'budenko1963@rambler.ru', '0000-00-00 00:00:00', '2d8549d235dc685f27ad2f70b3ce85854fb25afddd9b7a9c25c03ee70f52aa2e:U1wyGm4DwAjXi2u2UOOdd3Jk2w9oOl8X:1', '', '', 1, '', '', '', '', '81729764976', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-06 19:59:21', NULL),
(649, 'Hassa FAHAD', 'hfalthani@yahoo.com', '0000-00-00 00:00:00', 'a129b51403f0305f671a33cb4f1830c2a387e0fd25dec900a0fa141cace3bd43:Amrw6rmxAu7ugs6ZsSVXknbZ8oQRQIbb:1', '', '', 1, '', '', '', '', '66661679', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-07 00:35:06', NULL),
(650, 'wael', 'wael.ibrahim@me.com', '0000-00-00 00:00:00', 'f3d6dd551b08bee8bec5dd66fdbb0cff23f2cfb5b4687291e89327c6fc16f3bc:bEksn0ZrefBqxIG51ltvilXiBZDZMPe5:1', '', '', 1, '', '', '', '', '33313823', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-07 00:49:49', NULL),
(651, 'mahmoud', 'mahmoud.elagoze@gmail.com', '0000-00-00 00:00:00', '954e3e4a139107cb43e74aaaf719f2c64393c36a9acdef06675a7cd5d437027d:VrBgGYIrbTybkbRzYjFdBFaHBvBvENLV:1', '', '', 1, '', '', '', '', '66557923', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-07 20:01:28', NULL),
(652, 'Ghanim', 'galkuwari@gmail.com', '0000-00-00 00:00:00', '8e65799f90385dc9f31053abea459ba1a3413d25386f777a5a74293eb1bf1e72:I7aPZTTQquE6reb7WkaZl277dooLBImx:1', '', '', 1, '', '', '', '', '55505323', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-07 21:06:09', NULL),
(653, 'فاطمه', 'tomyalnaimi94@gmail.com', '0000-00-00 00:00:00', '2bc49dac9344199bc63664e5d15c2aaf473347611779ef0f8fa40643fe3867c8:v5D8CxSzmI1mbyXrZJg6yQ64BknBY5jp:1', '', '', 1, '', '', '', '', '66854551', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-08 19:13:37', NULL),
(654, 'Abdulla', 'abdul-qtr@hotmail.com', '0000-00-00 00:00:00', '18d0f9a7d794e7e7f7576f2dac8df4332d4ecbba50319d4ab551a23cf8b374b9:pgbuCLbrK8MWCtUowE9bYiwfxUodQhCU:1', '', '', 1, '', '', '', '', '70003078', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-09 01:42:30', NULL),
(655, 'param', 'sujicaparam5@gmail.com', '0000-00-00 00:00:00', 'bb0661c0b8f758f5091f75a57bfe36dc924e2ef3c797f1b93e5ba02a6d2be90b:qFyPvk82aaxhBvLHXoDUqfevWJfxvjhU:1', '', '', 1, '', '', '', '', '0097433332981', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-09 12:01:02', NULL),
(656, 'Bashar', 'dr.b.basher@gmail.com', '0000-00-00 00:00:00', '3b5d23cffb5f266cea9dd2457c98e5f50a506c790e70a3d69dcaad1d8fd8bca8:9ZXe4mBKeGhg4nw9fUrb5xTjhIUkQisv:1', '', '', 1, '', '', '', '', '33946172', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-09 15:10:29', NULL),
(657, 'Omnieya', 'funnylovefancy@gmail.com', '0000-00-00 00:00:00', 'c69e750faadb95fbcdabcf07a4c9bf24ac5ba1eb27aedfdd3bdfcb1e87c850c9:QMx7vXg5r0pgln4jVjHZvXF9JYz2Pz6R:1', '', '', 1, '', '', '', '', '77632193', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-10 09:11:16', NULL),
(658, 'ghazi', 'ghazialhwaimel@yahoo.com', '0000-00-00 00:00:00', 'df9f75ec9f1b436e8c1400aef46bcbc7e46e4d9efc12d0e5de363d9ce74d307b:5YYj5e0PREvaEmMfgJu0U1mpvajnz5tC:1', '', '', 1, '', '', '', '', '33939626', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-10 12:41:21', NULL),
(659, 'SATISH', 'thesatish25@gmail.com', '0000-00-00 00:00:00', 'e327c88dd4344d437538e77e8e7b2841030c38963884ed4bab784785bda541a8:wEiWyLIM2EwQbtOZPjBTeR6dYVyBQkvt:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2022-04-29 10:49:10', NULL),
(660, 'Nada', 'alquaznada@gmail.con', '0000-00-00 00:00:00', 'fb558d30611e9c520cb6c59b2f9ebd7cf8faf220ede209fc251a6fa8b3931314:BgrzSQmrCGqTEEXVgExDnaxGXEHsaCcQ:1', '', '', 1, '', '', '', '', '55554390', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-11 04:53:03', NULL),
(661, 'Sufiyan', 'sufimhdsufi@gmail.com', '0000-00-00 00:00:00', '1f62b81ca45b336dc050e2cfc92bc20d25d518985f42610fa37879258fae137e:3czI7EcgChK8kDNP37loyiiPFHTvCONx:1', '', '', 1, '', '', '', '', '70166945', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-11 06:19:37', NULL),
(662, 'CecilMooxy', 'd.travolta@info.avalins.com', '0000-00-00 00:00:00', '913c85d2851478b6ee75e26a3f1df609d29a087d832a7620ed3916b038f91bba:tEvFHKevTmAiZfBdrJIx74NNbOjXKF3e:1', '', '', 1, '', '', '', '', '81614873577', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-11 20:31:41', NULL),
(663, 'Damianroolf', 'm.bereza@den.efastes.com', '0000-00-00 00:00:00', 'b584f598204820c428674a77338ccc651ee227146a60cb01e61c8e550c81f5aa:vR8L9dyWaek7GzyyBg5NLyDDmR8FFgVP:1', '', '', 1, '', '', '', '', '82167615338', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-11 20:31:53', NULL),
(664, 'Ahmed', 'ahmed.mahmooud86@gmail.com', '0000-00-00 00:00:00', '9769781b764d0d2b9c1db6b22c6e68e560c81d7ef46e3ef74c89166b073bd2eb:lulSujiEhZsfb0gCR7stW99AzVU9UIW9:1', '', '', 1, '', '', '', '', '70463700', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-11 21:14:14', NULL),
(665, 'sozan', 'ammaryassen034@gmail.com', '0000-00-00 00:00:00', 'fc0f4d0a3cc6b975ef2c02e01edea8ba69ed86c90dd6a088d3dc5b9f72b415c2:ZwqL7mhfa3WuVpVYTRz9zNGKbXHl3R5h:1', '', '', 1, '', '', '', '', '74013011', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-12 12:33:42', NULL),
(666, 'Mohamed', 'mohamedsamir281179@gmail.com', '0000-00-00 00:00:00', '2d6af25257268557fdb411eff6b77c57fcba6d7e471f6c4137861412f322919f:szHfzUviCmQFlG8BaFkg2BbzZrRgZsyK:1', '', '', 1, '', '', '', '', '55207941', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-31 05:41:27', NULL),
(667, 'shady', 'shadi-1991@live.com', '0000-00-00 00:00:00', 'c5a5ffbb9d218051841cacdeac553761bd3b93bec45b13554220b74553d9df8c:wRD5wne8PYEJF4MPFaMwlVb9Tz4E1WcJ:1', '', '', 1, '', '', '', '', '33375713', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-12 18:30:33', NULL),
(668, 'sama', 'samah-bashir@hotmail.com', '0000-00-00 00:00:00', '9a0b09d5ced91e6d484f9a101b9b7a47768459772cd2a4bcfa0104932a1fe479:mdk0HTE2dSuMaEB86z1QWDakVO8hTZFP:1', '', '', 1, '', '', '', '', '33891358', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-12 22:05:53', NULL),
(669, 'ali', 'oudnoudn@gmail.com', '0000-00-00 00:00:00', 'c5df6901f1b474f8f148dfe786cbde46387e3941716452fd8ebcbc1578215926:HiAiGoYKlfWQqIweyh6DWtoXeVlhh2gD:1', '', '', 1, '', '', '', '', '66935528', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-13 01:13:43', NULL),
(670, 'Santhosh', 'santhoshkaliyedath@gmail.com', '0000-00-00 00:00:00', '82a0a1dc9c1f7623ff2a4f2727e683086a5b8452e9f3179553a1d77619ff14e7:5ie7XUATFshj3U60QcxI7OV2bPGSFFXl:1', '', '', 1, '', '', '', '', '50531445', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-13 07:58:45', NULL),
(671, 'Divyanshu', 'pavanhaldia@gmail.com', '0000-00-00 00:00:00', '3516be5893ba647c9bd1d3742a68912afb04f4dcf03b24540268a3d9f59e3395:nTEtCAAjffMxyfIGd4hkDtFMlEgD8MpN:1', '', '', 1, '', '', '', '', '00447869509228', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-13 14:37:14', NULL),
(672, 'Ahmed', 'midosami94@gmail.com', '0000-00-00 00:00:00', 'd9e9e97bc1b628e70cff416f3663be8153631f050d2777a2abfc473f21b2733e:0NRO4wtThGhRZIZnA34halSxB0SoITBQ:1', '', '', 1, '', '', '', '', '55611883', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-13 23:00:17', NULL),
(673, 'mohamed', 'muhamedmitwalli@yahoo.com', '0000-00-00 00:00:00', '28183838e6ad94d2e1d53de4915662264766d803f9b4b6157f5ab4842834f170:IPLCnfyParQ3Z7fDw1dhLxmFgwlP5Pbf:1', '', '', 1, '', '', '', '', '33194449', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-30 22:16:27', NULL),
(674, 'Fahmeen', 'fahmeennazim@gmail.com', '0000-00-00 00:00:00', '421cd53a30025a19bd6af193f53af0f199f4a371de9f0d1ec7dc1ba72ef2db8e:4VnXrmfu0m2RuLTCVzEez7OC2KaqV4wJ:1', '', '', 1, '', '', '', '', '33417996', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-15 00:15:45', NULL),
(675, 'harendra', 'hbfastman@gmail.com', '0000-00-00 00:00:00', 'b11017d0f72450c3f56a432e86cca91cd33b390309eb8ef70149607b2a2e0544:WUHEvPRrqfdviIG1SyghbdgD1YNxseZQ:1', '', '', 1, '', '', '', '', '50687823', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-16 11:31:27', NULL),
(676, 'Aya', 'Aya.jawdat.88@hotmail.com', '0000-00-00 00:00:00', '701e1feb4981cd86a3c535b5298de13f93dbd3b8bacf483828b7a6ead2e45210:fkkENewpOvtVOG19E4yrQBZYZHDOWkRg:1', '', '', 1, '', '', '', '', '55114900', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-16 17:13:32', NULL),
(677, 'joes', 'joedini75@gmail.com', '0000-00-00 00:00:00', '0d9e592ad894bccc9ed5f0a1ac97c8297796c2fe033ea5bb59133b5bf6a8eb09:jxRW0BbX9WSxnQ49YOwvn28pXPU5yYdt:1', '', '', 1, '', '', '', '', '33489754', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-16 19:38:09', NULL),
(678, 'Semo', 'amoreat_alex@yahoo.com', '0000-00-00 00:00:00', 'c885eea3a66ea232f89a06d97fa53f4215c27109a1e79388b9b8b5c120d33206:nnbciYzonDkq4ho1WafLwmMb4Dl7OkMS:1', '', '', 1, '', '', '', '', '30204777', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-18 11:46:40', NULL),
(679, 'Sondos', 'juliet.90@hotmail.com', '0000-00-00 00:00:00', 'd00926f14ffc6df6a136726bcb2b588678d396d6b0e97cde7ae482fcfb6d885c:QZIyuNraDMWwiXiqFF7ijGBjyuDlHfvH:1', '', '', 1, '', '', '', '', '66699003', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-18 12:06:54', NULL),
(680, 'Ahmed', 'ahmedsafwan7@gmail.com', '0000-00-00 00:00:00', '2dcaabd4ab1eafd4b3de93b22a58c8487d61cf6c88b0e6e07482cd0e58886704:Sn7xQSpz0v1N0ajM51zMVfuJqmVkiGCW:1', '', '', 1, '', '', '', '', '70381812', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-18 13:47:19', NULL),
(681, 'Majd', 'majdbelhajw2007@gmail.com', '0000-00-00 00:00:00', 'e587220c46fb6f62f6fc87aff9e6aeed2a96538b13adf8b417a7e86fe190c030:b6YFcbTdBEOvzyWMX1kdc6UEqx7VsuaN:1', '', '', 1, '', '', '', '', '33711373', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-18 18:40:47', NULL),
(682, 'hamam', 'hotmao71@gmail.com', '0000-00-00 00:00:00', 'a2ea19cf6db1fb27fa25d881f4c5a9157061fcc939a73047c8506489c81cdc4c:17N5x99G4KpGylkbrUZAU8IiBoKeBNju:1', '', '', 1, '', '', '', '', '66222118', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-18 19:49:52', NULL),
(683, 'khaled', 'khaled.maaloul@gmail.com', '0000-00-00 00:00:00', '14c3815b13b85e4ffca501b69ac52e876c44b3c3124f62492d4b8452a43b3226:a9txxphgaCabPpLBjQGK1Bg7R4ao8fUp:1', '', '', 1, '', '', '', '', '30710111', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-18 21:59:58', NULL),
(684, 'TerryLom', 'ocha0kuffteur@yandex.ru', '0000-00-00 00:00:00', 'abbb9adaf3103b1f028bdd5cb1a51d682b8e2d5874583416f7d2b41ee966f169:hcozAe7LxGkm33Y34VGWoGU2AfR5Y2bF:1', '', '', 1, '', '', '', '', '84896852349', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-19 04:03:37', NULL),
(685, 'mahmoud', 'mahmoud.mahfoz22@gmail.com', '0000-00-00 00:00:00', 'fe6dc35c7a5c14fcbdc301336e12add18c67da0a33058950f1d6febbc15a3ad5:Tvsmxbqqx3gp0vBHyddEMRlGmTQkp2Os:1', '', '', 1, '', '', '', '', '30803988', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-19 04:18:14', NULL),
(686, 'Maimonah ', 'qa.33@outlook.com', '0000-00-00 00:00:00', 'ea4795be25789221897b617dbd091c9eaff3b297ad85012df4b15d14f90695a0:oOmvbHbGpHYS2mCOAW2zgdEufBCIjaP9:1', '', '', 1, '', '', '', '', '50169178', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-19 15:19:08', NULL),
(687, 'AntwanWipuh', 's.petrovich@makao.efastes.com', '0000-00-00 00:00:00', '1a64316e7a355af07759aa13b42555a2ac198bf406374bd900f293f1e7ed6e7b:hUJ7Ab9bANJQPpRPJBt3xVtI7HW1t72k:1', '', '', 1, '', '', '', '', '88638874827', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-20 22:57:15', NULL),
(688, 'testo', 'testo@gmail.com', '0000-00-00 00:00:00', '90ad5c79c2f08f73aea49633975fdf5b4e96723ef77c375824c6402c6329d858:IS6xrjVuoevpr8GynxjOt0wHou5aM6zs:1', '', '', 1, '', '', '', '', '50927927', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-20 23:06:08', NULL),
(689, 'Howardduemo', 'temptest465873980@gmail.com', '0000-00-00 00:00:00', '8b8945de899e1ad6020ca6a1b06baf45bafea4f54a8eedb2c6ddc693466d9cba:QJ5uWWGhGE0TNdwZblb6ixcvzLgK4Zyy:1', '', '', 1, '', '', '', '', '84428572397', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-22 05:53:05', NULL),
(690, 'huda', 'hudaalmohandi@gmail.com', '0000-00-00 00:00:00', '927e0c1ee2e28f9a8c6c7611b149b4b5cb89173b1e43d12a883af43525daad1a:g1Mg28bjXjADpjG66DJBv0jXy09vqg5h:1', '', '', 1, '', '', '', '', '30595258', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-22 07:32:21', NULL),
(691, 'Geraldopesk', 'm.voytenko@denis.enersets.com', '0000-00-00 00:00:00', 'a0f74e3b58a4e25b0318a388759c805a16ba482fbffc8a9cb4dcae6b87c7ac93:SiOD6Qt97JhUsZWf3iRMeAUwVD7Afiia:1', '', '', 1, '', '', '', '', '84257333134', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-22 14:57:21', NULL),
(692, 'Josephzes', 'i.makeev@info.avalins.com', '0000-00-00 00:00:00', '1652f99c420aaba6598f88354074ff95b692b6ef44826db8809704ce6a700555:Ko89JEWpRRP0NVjAmGfD3JpOA5Kny7NW:1', '', '', 1, '', '', '', '', '87446692292', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-22 14:57:21', NULL),
(693, 'WilliamLix', 'jordanhurley@yandex.com', '0000-00-00 00:00:00', '2193d1b3db1bb5295c270ea8128258cd59108706b51212fe186bf24c63186404:fanVKOy2Mrv765ugRHoO0nfkkCjXFSlq:1', '', '', 1, '', '', '', '', '87813326474', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-22 17:17:44', NULL),
(694, 'Arthurgaunc', 'colinbell60@yandex.com', '0000-00-00 00:00:00', 'a40219595fc9ef67da5c96d84fea5e2a9c5eb3d4b4c9cb6c615aea16159e41b5:O5F3RzPFBzjPeuquP6tdlX945bdjjXDM:1', '', '', 1, '', '', '', '', '81136377543', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-23 05:17:33', NULL),
(695, 'Ahmed', 'al_5yyal171@hotmail.com', '0000-00-00 00:00:00', '7dea1401f31a3af2ea4c1941b906b2d55ae5b0306e262dc9774810c2137741cd:3zefZhcRwxA5TLzrLebglUZiQ4JwMDLo:1', '', '', 1, '', '', '', '', '55555171', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-23 15:29:41', NULL),
(696, 'munazza', 'munazzaahmed@outlook.com', '0000-00-00 00:00:00', '92f6c97b02d5d5faf3ddd330b1df9d0b1c7e9e5c4ec81984c64011727aa4f0e1:DckUT2uluNFDXNj7GiMeiQiAyTnImC5s:1', '', '', 1, '', '', '', '', '50416959', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-23 19:24:53', NULL),
(697, 'Vikas', 'vikasramesan@gmail.com', '0000-00-00 00:00:00', 'c5cb870318c95d7e12fe153ad8f4af4870c2dc5bdd729210029a56b9a1dcf29a:Qu2TaCyzuzNePSIwvKbma8FWSKHDCxsO:1', '', '', 1, '', '', '', '', '55166841', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-23 19:42:09', NULL),
(698, 'CurtisBLOKY', 'i.perepelkin@a.avalins.com', '0000-00-00 00:00:00', 'd41c71760830f8762a0893f72cfa949b8f3c2bb53a74ad15e924ef708aaa105c:Q7olN7RAvMkzsjZ0tXZvGxjHjRn8DdrO:1', '', '', 1, '', '', '', '', '83633289122', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-24 01:35:19', NULL),
(699, 'shivam', 'shivam@zzerma.com', '0000-00-00 00:00:00', '2f453aa85a7c94557633065e7106cee02b01f8cd929ac48db3a7996d22c8aa8d:Wbr33uCOmbPboOGgW54n7uHmGXz22Jd0:1', '', '', 1, '', '', '', '', ' +918468081248', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-24 07:23:22', NULL),
(700, 'Prasenjeet', 'presij@gmail.com', '0000-00-00 00:00:00', '24cf22b8c52820f2b188e37b410b5f2f6b63d150cfdf81a3140286475e43b16d:vMY2vcPIhpPZA0IKns2A6N3Rj8raWbwC:1', '', '', 1, '', '', '', '', '33503590', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-24 08:22:10', NULL),
(701, 'Anveshika', 'goyal.anveshika@gmail.com', '0000-00-00 00:00:00', 'b439acba39b425f291e831946ff40336da7d3d8816771f34ba62d907a20ce583:2t3dPWOITeLG2arLXRCCKjlIWXdcH1qs:1', '', '', 1, '', '', '', '', '55812525', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-24 11:37:10', NULL),
(702, 'Gian', 'bernabegian00@gmail.com', '0000-00-00 00:00:00', 'a05b27950e5fbaa12245e43518ca3cc1690d0c5bdaff1f16d9884cdd03017e29:y9L2cXAukRHiS7at6Ipq6TJhfpGbQjfT:1', '', '', 1, '', '', '', '', '66518788', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-24 23:07:12', NULL),
(703, 'fbs', 'frashed@adlsa.gov.qa', '0000-00-00 00:00:00', '7a471941f5b676832177a3782fa5b7b38690ae9b6c4bf0ae83495c1fe639d589:rbaTiA3P1ho3J7f3qA3IY2eoSiM3a9Ld:1', '', '', 1, '', '', '', '', '66221005', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-25 15:42:26', NULL),
(704, 'GregoryMaw', 'a.hudnickiy@den.efastes.com', '0000-00-00 00:00:00', 'de92e8c8179c4557c96c4312f27f5548c9e6f67bdc8680480ca7483ea42fd9ac:I9TAHNOz9OM8lc19yDLwvvhudBfBbedm:1', '', '', 1, '', '', '', '', '87231185717', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-26 05:08:36', NULL),
(705, 'Adriansok', 'm.dzhokovich@info.avalins.com', '0000-00-00 00:00:00', '09d23874d74af6f8102e6e330bd2fde6deff8fcd8da593fb26fae3eae6e874f2:3kETjJyV8E6x6a5ziDzGVxh3VIzV07NO:1', '', '', 1, '', '', '', '', '81564626734', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-26 06:04:14', NULL),
(706, 'Jamesguell', 'd.semenov@max.enersets.com', '0000-00-00 00:00:00', '355d7fedf15f1ad8666599f7f3dc42d106d3db1b48f10cf3b6d8a55059b475ff:ji2YkdlMXOPeuuVK7awgXJi1fH6c77JT:1', '', '', 1, '', '', '', '', '85151556535', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-26 10:00:03', NULL),
(707, 'سالي', 'sally.kh.farouk@gmail.com', '0000-00-00 00:00:00', '6ebb95165820a0057e05e773115ccf38a2e476b16d86db290bcf0bce8e7b106c:ZJSqmLGq6miIv5iEMj3GtM6Bqw6zXLmW:1', '', '', 1, '', '', '', '', '77494943', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-26 15:13:45', NULL),
(708, 'Mai', 'mai282hamza@gmail.com', '0000-00-00 00:00:00', '8cd2d69684ed6f09100fe8952c0086b20be82ea8138b95fee501ff3b0d17b1f3:e3JT8gSyyi1QniDRy8gZYny61ltIXh6m:1', '', '', 1, '', '', '', '', '50441101', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-27 12:14:52', NULL),
(709, 'blackmarke', 'ale.ivanckov@yandex.ru', '0000-00-00 00:00:00', '2d34716a9ec05d87f8e59785af51a86f39190b557212a4fd5f68af71a5b89749:AIFhKe4ETP5p3LIrvp0LsmdF333ymMq4:1', '', '', 1, '', '', '', '', '86279131432', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-26 19:36:34', NULL),
(710, 'Mohammed', 'mohdhussein1980@gmail.com', '0000-00-00 00:00:00', 'cd6f282f465a8980f421f92a4efb8bb898f53a5dae223cbadb3d130bb5d7c43e:swpKCFrbo1MgFqDmjj8CIO9meelyCEvu:1', '', '', 1, '', '', '', '', '55223326', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-27 03:37:25', NULL),
(711, 'Samah', 'aladdine.trad@gmail.com', '0000-00-00 00:00:00', 'dce1c8a3dbb4070b328d4e083083fb6219cb0e1756d30580d87dbcab769041d7:y8MYkZ8RTnz4p0r7aDqzpj9Syb80amhY:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-08 07:47:29', NULL),
(712, 'mhd', 'pharaoh_mmm@yahoo.com', '0000-00-00 00:00:00', '024841c7e6a729c745e64e0bc392797f9ffc8936c15785d8ac8c2cba478f99a2:LBR68ylcpzfxYtBRYBnope1Mq5NEnPTh:1', '', '', 1, '', '', '', '', ' +974 7011 8898', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-27 22:48:44', NULL),
(713, 'BarbaraHouck', 'sale@za-splav.by', '0000-00-00 00:00:00', 'd2aafafeed904bd2b6167d5361277129c2951a77163361a9a40a8028f6d3c3d0:9axOVn35ZdvORDF1FLWDZ3M2wrsy7ODQ:1', '', '', 1, '', '', '', '', '88982913735', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-27 18:28:21', NULL),
(714, 'ام شهاب', 'alwbri222@gmail.com', '0000-00-00 00:00:00', '6db62147d62199ffffd5344e29eece5f9d59d2c39a9a3d50c309231268b5b054:4aOjMneJfE6U2zJG04VBV0dOjSgA3iV7:1', '', '', 1, '', '', '', '', '30407117', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-29 08:26:43', NULL),
(715, 'Sama', 'samasultan948@gmail.com', '0000-00-00 00:00:00', '365ae3ab5ea567a85818e683292aeca49929f03a5b2b346180f974b367de412c:DUhAArPGmqpzbic4Cr9XgPIu1jNoZKtA:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-09 12:19:04', NULL),
(716, 'amany', 'mohamedsamir281179@yahoo.com', '0000-00-00 00:00:00', '306f3ac4fb7f79d1ca3d6b56624b808f3cdbc89a5bf1e0bb1c3c0a4399b45dcc:md5yWBao3FfUjEmwPvKUyJj57mb2zsm0:1', '', '', 1, '', '', '', '', '66432037', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-27 20:41:01', NULL),
(717, 'Tharanga', 'tpgunasekara@yahoo.com', '0000-00-00 00:00:00', '3c01107952f6d489c306bcdc5a80b36b035b881c89bc14ebcaa32d805aa78131:apOdjPWreXe728m0lmgzqWwwg6XXAvOs:1', '', '', 1, '', '', '', '', '66912167', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-28 09:27:59', NULL),
(718, 'Karim', 'elkhodary.karim@gmail.com', '0000-00-00 00:00:00', '9c6a947c55585d7570506a4c79c8fd627c2e9ce21f777e2b87211fcb5789c258:3GQVKxaznnhzOmshK7In41osFrE8ffpH:1', '', '', 1, '', '', '', '', '0064221094013', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-28 11:32:30', NULL),
(719, 'hiba', 'haposh.hepo238@gmail.com', '0000-00-00 00:00:00', '4509c49e5d4dec6e3e48ba9de041eaf0c80350b76d6c96bcbfc9c39b612f5b72:ezLGt4RxTIvEI62i96GSZBPwMl5HQnME:1', '', '', 1, '', '', '', '', '55139913', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-28 21:04:00', NULL),
(720, ' ام', 'hanaaadam52@gmail.com', '0000-00-00 00:00:00', 'e9a61e16efcfed78e6cbd723dfcc84981c110080d05ea992861817034e0fb7ac:T1IPzJd0ZpKxuViVa42AIYJUztMOubZL:1', '', '', 1, '', '', '', '', '55103370', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-29 04:57:49', NULL),
(721, 'Mona', 'looka.monmon@gmail.com', '0000-00-00 00:00:00', 'd8f0f0709005ba43cba71ae7b6179e6ac11380ad8c5ae96d8379d35c8b0b070c:x2EXqCegL5nXtJhtudeKFYeZ0GGjKq7s:1', '', '', 1, '', '', '', '', '74720011', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-29 08:12:18', NULL),
(722, 'Osama', 'osama.shafaa2@gmail.com', '0000-00-00 00:00:00', '699beb47768647fc59f79f3fefd3f757a6923b8b7558eb60b4e8b1bb443e75d7:RGL5jxSqQDNEWI4MbcbGqU5YZYGv9Uo2:1', '', '', 1, '', '', '', '', '55701476', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-29 16:10:34', NULL),
(723, 'feras', 'ferashamdan76@gmail.com', '0000-00-00 00:00:00', '3353bd870f49a1c3a6c1017c2f26f1c988cc9e86c3539fee9d79170c1a640ed7:hLS481BbsiCYHR6mhLHXiiUPeei1tvMQ:1', '', '', 1, '', '', '', '', '50314625', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-29 16:42:36', NULL),
(724, 'mohamed', 'elprince1201@yahoo.com', '0000-00-00 00:00:00', 'a3cf83832806babab7df943d16e411a971f2071dec572ee0e73774b719c0cf19:Sz78bqSJULeOxxkgp1YzIQCfQ68ko7iL:1', '', '', 1, '', '', '', '', '55335897', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-29 17:15:33', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(725, 'Laith', 'fararjeh_lg@yahoo.com', '0000-00-00 00:00:00', '8ae863f88440e3ee560e22b5c77c04539caedc5b62e428fd23fef9e4335ae58a:PzdBLS5KzjkKqv7eGCMlbkJfudLgKGPq:1', '', '', 1, '', '', '', '', '66506684', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-29 20:20:35', NULL),
(726, 'mai', 'maihamza@gmail.com', '0000-00-00 00:00:00', '856a48e8021bb891d02658e096e42e2399c7c3d6467524d4cd1a964cedbe394e:HTWuvghau0AUVjLJCZYRdMzKu9Fw68Am:1', '', '', 1, '', '', '', '', ' 50441101', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-29 22:00:00', NULL),
(727, 'GregoryAbavy', 'i.petrovich@den.efastes.com', '0000-00-00 00:00:00', '23e664375823f188cceabcb920434a785de1c61c6f56a83aed090ef5fd2946ad:QB1E6tPYLQQrkLjpbQM7PhIWLeqgdTnH:1', '', '', 1, '', '', '', '', '85436364345', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-30 05:30:58', NULL),
(728, 'Em', 'em.shehab@gmail.com', '0000-00-00 00:00:00', 'bbeaddd8de590af474e3eb9e1abc92e0d1034afbd595321addf3298e58a817be:513DeO9Zn0Rv1MWrrFmdTNHh3GgwgGAB:1', '', '', 1, '', '', '', '', '974 3040 7117', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-30 07:27:48', NULL),
(729, 'Mai', 'mai.abdl.wahab@gmail.com', '0000-00-00 00:00:00', 'c3ee967fef6105684080cbf0a7b01d593efd06fa1a82fd7f974e3856a2cbab74:ezKSfPCbSAri91QpIAMGUHAmCMkH5eKx:1', '', '', 1, '', '', '', '', '974 5044 1101', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-30 09:13:22', NULL),
(730, 'AaronBax', 'aleksandr4w0bo@mail.ru', '0000-00-00 00:00:00', 'b79e57ada951ae26234c80062980e9df000b26ac48028d3eceb57a64ac71cff9:Le0rNJKlAwgxLPaUWr4zIeylFVGW0UZf:1', '', '', 1, '', '', '', '', '87682358469', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-30 09:20:19', NULL),
(731, 'عبد العزيز', 'abdulazeez@qrcs.org.qa', '0000-00-00 00:00:00', '7048a5912983fe8b9421abcbb859acc1c01caac0ff27a398de7091c5aed0e94d:hpov7wZJnBt6cglTksnSD7AHLPBdrMSH:1', '', '', 1, '', '', '', '', '66133366', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-30 16:20:05', NULL),
(732, 'Bernardnup', 'n.olegovich@max.enersets.com', '0000-00-00 00:00:00', '244455267f04e29e0f31bfc0ce8cf61d8494a379d4d5be303ed944f9872f6213:zXh8N9TWBdWmiK0lKUzYjOMbnBEm1PSW:1', '', '', 1, '', '', '', '', '89153932844', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-30 18:28:40', NULL),
(733, 'Nagy', 'acc.nagymohamed@gmail.com', '0000-00-00 00:00:00', '74ed73b13797236ab14cb22cc77cf2b5c047abfb92b20be3058cbc4fda84d8d7:GJPPta0NZ3I85EoS31nvQVtAJmuI7PIe:1', '', '', 1, '', '', '', '', '31004475', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-30 18:47:52', NULL),
(734, 'Ashish', 'ashish.hbti.in@gmail.com', '0000-00-00 00:00:00', '49de4e5d40fcc9d332270aa981b2a0c8c176bf292f8ffd7ab003144e39ddf9ea:KbII2b9FG1aM61BnIGdGINKJgMTRMg8G:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-19 15:28:17', NULL),
(735, 'Georgemer', 'd.fomin@max.enersets.com', '0000-00-00 00:00:00', '2ce8b2e7ef15e96fdca87543a7507706df41c76822edce356c97e1988f7f1871:ATwAchQfRcGZFmiGq7mVtnWsDusMycXy:1', '', '', 1, '', '', '', '', '86657992851', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-30 19:23:44', NULL),
(736, 'لبنى عبدالحميد', 'lubnabasem@yahoo.com', '0000-00-00 00:00:00', '07e1ea010a549adf0b3c0e6bc7c26ab9e406e9ceafd7ca53987ba20093f7de43:m9rf9kRv6YZkVtehPJxCgwvOdF6CjOIQ:1', '', '', 1, '', '', '', '', '55950139', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-31 06:42:37', NULL),
(737, 'Reham', 'RehamSaed0811@gmail.com', '0000-00-00 00:00:00', 'dfff5d875de53bab9ea3ad521a182a98c781371dccd3b945b7a4374ba2f68ed5:z7A9YQRPTFzLzeuGqAKfpY9UbhDYnWEn:1', '', '', 1, '', '', '', '', '70014511', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-31 12:37:19', NULL),
(738, 'Dolores', 'oresbernal@gmail.com', '0000-00-00 00:00:00', '45f87449fca2347417fd53e217904ec121fa6754aecdb5b0e76e8865ac4122b1:DMuWql8GIVnjXUz0nkNVslm92uhZaMN0:1', '', '', 1, '', '', '', '', '74743565', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-31 13:01:31', NULL),
(739, 'pauellsr', 'pau.e.lne.edw.el.lkhaeyre12.85.03.4@gmail.com', '0000-00-00 00:00:00', 'f86d18b5f2cef832c518cdb7e0b91fdf2685a8dcade190d6296bbee2b5c3474b:jJkCrHfNjtheKDznTyuy5Qf1mvElhy45:1', '', '', 1, '', '', '', '', '87387476254', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-05-31 21:43:34', NULL),
(740, 'DavidCaf', 'vasilii.kriuchkov.26.5.2001@mail.ru', '0000-00-00 00:00:00', '8cbb0a2380eb0496c2b4a13a44cb6b6c4e5e23497d9c6459b5f03fa4499a80d4:1ZEk5qZH8nYZXyi9z9kTvrInGBvFJ99X:1', '', '', 1, '', '', '', '', '86111378942', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-01 01:43:02', NULL),
(741, 'Ahmed', 'ah.abdelgalil@gmail.com', '0000-00-00 00:00:00', '1843c6f3869888e0efca6f8e0de92a2b1bff1aa00b8cfd434a2b0f4d662e9162:y9Fzefb2hn5bsQSIcEUrnLqynbxjBvBd:1', '', '', 1, '', '', '', '', '30994915', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-01 09:32:45', NULL),
(742, 'Abeer ', 'abeer_ahmed2012@icloud.com', '0000-00-00 00:00:00', '26394fc7eddfe1cd54c9bd179b7b2abcad437917bf2f2f699afd6f29fce4ccf8:jXasYDSIQ1rniy5yLvbL1VCOf4Tdjee2:1', '', '', 1, '', '', '', '', '70600869', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-01 10:11:04', NULL),
(743, 'Ahmed', 'ahmed.ramadan@gmail.com', '0000-00-00 00:00:00', '6891b405fc43adde23accbec000fee22433b8e808e65784f3597f5fb0027a931:GZQ6FuvyZJ0lws1g8Hsi4NxKLBWFmnC1:1', '', '', 1, '', '', '', '', '974 3099 4915', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-01 11:56:24', NULL),
(744, 'gamepinupcasino', 'pinupppp777@gmail.com', '0000-00-00 00:00:00', '0b5ddf2abc7cb404d2b9a089d6f1e756070914ad3e1840227a73f55026fe137b:vWbhI6ecMLdm2TM9XclJY81Z4tmr66ec:1', '', '', 1, '', '', '', '', '89467419978', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-01 14:23:28', NULL),
(745, 'Tesfaye', 'nitsutesfaye@gmail.com', '0000-00-00 00:00:00', '59817c1a3b1ba05b4cfd2684181d4426e3e446a494c0471d43914949dbc6e033:VAPIMMSZTHSqvEvZ6uF82WtIMmFwwYlL:1', '', '', 1, '', '', '', '', '33293654', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-01 15:49:19', NULL),
(746, 'مصطفى', 'tankiaqw2@gmail.com', '0000-00-00 00:00:00', '803e0c70793ebdc95b62ab7b2650759c9b9bc43fe088c2d0e1a5a914a9b06172:NSGuwBra0aSuGmXCOMbuVPsmLVZrRBJN:1', '', '', 1, '', '', '', '', '33233283', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-02 10:02:09', NULL),
(747, 'Ahmed', 'ahmd.hanafy@gmail.com', '0000-00-00 00:00:00', '362c3fa2477b74940f0f9643128e8ada1425267c19ebd2c0d9cffdd0d4077bcc:yhOAsUgUVP6PVjoVcmgDjNs4L6MlQ2x9:1', '', '', 1, '', '', '', '', '7046 3700', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-02 10:13:52', NULL),
(748, 'mohammad', 'mhmd.hassan@gmail.com', '0000-00-00 00:00:00', '746a1d62f2a8f5207d2267bcfcd8c7d51b9759ac730329f84fe2bbbde81fb3d1:S5bl2gtjUVAzrqIJcHmOvoOZ1nRbmRQg:1', '', '', 1, '', '', '', '', '974 7003 4040', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-02 13:27:57', NULL),
(749, 'mohamad', 'mhassan111@gmail.com', '0000-00-00 00:00:00', '591c5214097993bd356de05b47bef21bd8b8fe8f36b280c3f0f1463f82bb562c:L2wzSQThERAS9bbMaA4Zo8Lp4aTB9zAG:1', '', '', 1, '', '', '', '', '974 7003 4040', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-02 13:35:59', NULL),
(750, 'Moon', 'mmoon4682@gmail.com', '0000-00-00 00:00:00', '015164fd6f75a3a0e4a1e7df98072e70fc5bd93922e1d4c01f2fe055620b75de:0egBpGFwyL12yiwapwQXfox3oReaVFPr:1', '', '', 1, '', '', '', '', ' +97477505507', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-02 17:58:35', NULL),
(751, 'Hoda', 'dr.hodaelmahdi1978@gmail.com', '0000-00-00 00:00:00', '27f1fc151ef6aa74bfff45716b082a2a2f899b05e0fdf3f0a65f1355da79a851:poJmt0ZASbNdUpnouGJuk2230J2IiMRD:1', '', '', 1, '', '', '', '', '30551558', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-02 20:48:41', NULL),
(752, 'howayda', 'hody.202@hotmail.com', '0000-00-00 00:00:00', '55245c89862b82d2e628fefef66f50a434c247d0f6ef6e3374d1bac1ec707cac:3kZBNwUCJC4tYZLPWWSUKaTDjuKhyy89:1', '', '', 1, '', '', '', '', '31400037', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-02 21:18:47', NULL),
(753, 'amira', 'dr-ameera-eid@hotmail.com', '0000-00-00 00:00:00', '16495b2a9a520c4a25e6b2db3ab95de5f1d5bd427beb343c0f3489f2c3231b54:iz7ladZFTcKvo1otzmzuBLeGbIwMAO4m:1', '', '', 1, '', '', '', '', '55864865', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-02 23:44:43', NULL),
(754, 'malak', 'malakmai66@yahoo.com', '0000-00-00 00:00:00', '1320722a4d2a3bea1c9f8381d3c98abeff3b589032134a84904ce90df7701f3d:0b2wU4GfntQvbh8FlIIMiL0To3UVcU8r:1', '', '', 1, '', '', '', '', '50037127', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-03 12:24:12', NULL),
(755, 'Yasmeen ', 'Yasmeen.amin@yahoo.com', '0000-00-00 00:00:00', '77bba368cd2e7ba55c4621de73a1a4922efd1d06b6e0a82a4ccfc988a97d66a5:r9cjUFA5ZwhiGMLrFKZs9r240Tr6ns8X:1', '', '', 1, '', '', '', '', '66134185', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-03 18:39:24', NULL),
(756, 'KathryngAp', 'alexpopov716253@gmail.com', '0000-00-00 00:00:00', '32f6e76133bd2dcc8ce1c463925ecde7ba1f2ec01dea04d1248606062e4d30c7:tjPpW72poej6WkkdB63OBPrTj4RxMgik:1', '', '', 1, '', '', '', '', '87792818431', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-04 01:15:32', NULL),
(757, 'zainab', 'zainab.alshab@gmail.com', '0000-00-00 00:00:00', 'c6b0ab7a0976fd729022703bc896a594bd9e513893b5bf5ab3fde92593780e10:9P3pyAtt08R5cEpYeHwie6JuF1DX4CCe:1', '', '', 1, '', '', '', '', '50069434', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-04 09:52:16', NULL),
(758, 'Zarrouk', 'zingarotlili@gmail.com', '0000-00-00 00:00:00', 'd8a469d3db7eacf2f93eb743ee4d72215508f6f0be6c7a9814632b8433e9c9c5:NLKekGvQVdHP0jpEzXpS0Q30VezRiSkL:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-05 21:19:54', NULL),
(759, 'Ismail', 'ismailalzalma@gmail.com', '0000-00-00 00:00:00', 'ed6dad0b63f1728c733ac7e612c6f8f814d9d59ad90ab6dce8063c1b28c2f7d3:DTB9T78QUjWYhH5iJhpX48UsrNLKhXaZ:1', '', '', 1, '', '', '', '', '77287676', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-06 07:04:02', NULL),
(760, 'ali', 'geniusqatar@hotmail.com', '0000-00-00 00:00:00', '086ff68d582628ea56be9bd22112ff49b492e92828083453f431bae1484dc161:TPrPDAFkr9NE3curcP5Xtpez2kFSCD8b:1', '', '', 1, '', '', '', '', '33399900', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-06 11:51:15', NULL),
(761, 'StephenNus', 'ininval@betudel.bizml.ru', '0000-00-00 00:00:00', 'bcf2cfcf9cc6655cc885291bc7c80a14aa9064b20bcbf5dba57eb569caabe181:PdIbDgZPpPmW9Z8q8Qg4pWxFgmVzGHOe:1', '', '', 1, '', '', '', '', '81536348112', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-06 21:12:29', NULL),
(762, 'Lavernewrins', 'ipoutondu@royoroki.bizml.ru', '0000-00-00 00:00:00', '9fb48f0a7bd714e1b3dfc43050675902fc9e245bae254e4fb392f873849fe80b:bflpf4BCsJL2fxnZOjYwG2Y5FO3EttBy:1', '', '', 1, '', '', '', '', '84964111693', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-07 00:42:30', NULL),
(763, 'Kin', 'mudong20210518@outlook.com', '0000-00-00 00:00:00', 'a1534af22c9a5418222a62f03481af4c95080a58eff5e952ee4bc75695a55148:1JfNaBYk5LABJjsoGixvoZbPBNBfOvjD:1', '', '', 1, '', '', '', '', ' +8618903817865', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-08 15:04:32', NULL),
(764, 'samar', 'ibrahimsamar931@gmail.com', '0000-00-00 00:00:00', '2c4f0cfc8aadf6a6c7651a84e2eefc1c122fac97cb1634bdbcddcf2d13345db0:96OyZaW21qso7IPrkPZEObbgIWkkqzez:1', '', '', 1, '', '', '', '', '66086514', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-08 18:45:40', NULL),
(765, 'Ali', 'ftxgamer@gmail.com', '0000-00-00 00:00:00', '91d410a84092f21aba713ac91c3b973b282790c852df2cd90d349ff1d9c3a16c:Jpd71H8NInJ5tBXy3UdYXFgGvSO5Breo:1', '', '', 1, '', '', '', '', '30188301', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-09 20:19:24', NULL),
(766, 'manar', 'manarkamel900@gmail.com', '0000-00-00 00:00:00', 'edcead27038e846610b5d84689d66d28c4bfa797786c60f7f3d35955eabfd076:hyw60S8MtXWJxqxSTpgYMEIRMwCAKeY7:1', '', '', 1, '', '', '', '', '66610424', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-09 04:51:55', NULL),
(767, 'kholoud', 'khokhalokajika@gmail.com', '0000-00-00 00:00:00', '7c5e5f852d0ca64d9a5c23ed5c4d29fe57f9e5ee0e3507ceafa11874a337fff3:R1q9ZCvUGhGUA0dprSB4J68jbwMBlgsh:1', '', '', 1, '', '', '', '', '00201154720393', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-10 02:40:35', NULL),
(768, 'fares', 'Mtsfares@gmail.comm', '0000-00-00 00:00:00', '18526aad49329b61fc7dbf676472c08599452ff64c5077a58158f4559b89bebc:ClWXtUwZRauzsuj5L7NRkGWw8vLpcQIz:1', '', '', 1, '', '', '', '', '30591303', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-10 08:28:00', NULL),
(769, 'nawal', 'smooooraqatar@gmail.com', '0000-00-00 00:00:00', '0fbdd5335ec62eefefb30afd8430916d3783d05fcc954f58f1e87875d7627e20:E5lsiTl6EzdliB1PqNDC5JOM3zYXjA9d:1', '', '', 1, '', '', '', '', '55110049', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-10 10:13:27', NULL),
(770, 'gamal', 'Gamal_ramadan86@yahoo.com', '0000-00-00 00:00:00', 'f2f6bd33c6c76c713554ee0f598271bcd53a0e6a355962ed0f588ac807c7a4a1:a3HQFVMSMZWdWc6vClAH7tpTsbxcckRN:1', '', '', 1, '', '', '', '', '55811696', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-10 18:01:51', NULL),
(771, 'diana', 'dianadior1@hotmail.com', '0000-00-00 00:00:00', '260b8f455b43374dea9e52ec3f8af6d510ea90494aa581a2c2108fa550fe2ed6:T2AkXGFNKHbR4Q6hEErhBoIcYAuWByt1:1', '', '', 1, '', '', '', '', '66020021', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-11 04:00:13', NULL),
(772, 'Linktrinisp', 'roudnivirnax@gmail.com', '0000-00-00 00:00:00', '2722ca5289ee43a99e76b3e3f95de634c6ad2ecbc2cb3fdd3a1794e9cc3bfee5:j71dGbuGsK04SxLSIzuDivUL1VcWs2f0:1', '', '', 1, '', '', '', '', '84712814656', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-11 13:34:45', NULL),
(773, 'RonnieSer', 'fgfdsfhjjhkj@yandex.com', '0000-00-00 00:00:00', '89b93aecec2bd7beb3bdf05f650da03ace274b11fc75b67f331960c24491a49d:8gUUXMS3bK4QNoGWPQmduXBwVrz5hvYf:1', '', '', 1, '', '', '', '', '87584329759', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-12 10:42:40', NULL),
(774, 'NelsonBen', 'drogseed@gmail.com', '0000-00-00 00:00:00', '2f4d623bca25c65960c9a446c63432d5333ed1b9bc8bf6cd0eb02727a8ad3a0a:V9PNKo7Niu6CKV6R9IOHtqBP75xJSK5j:1', '', '', 1, '', '', '', '', '81957473495', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-12 12:52:46', NULL),
(775, 'Stevenfromy', 'greiannett@yandex.com', '0000-00-00 00:00:00', '6ad72e4c78712aea3f3c1342750ee3e5358894c83011bd4eae65e8c0e5194105:Pl5XvlaL2cabi0VHWV9I8Mjy3wxoO8BN:1', '', '', 1, '', '', '', '', '86758149236', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-12 16:13:47', NULL),
(776, 'الحمد لله', 'nohaehabh@gmail.com', '0000-00-00 00:00:00', 'af7f0f3f9a700ae9eb934daece51e405a0a1a29f5e13cf6d592b19afd0a5a6e2:ac8sMjKTqyfoJJSZehCKr0ZoEG6rmYOI:1', '', '', 1, '', '', '', '', ' +97466290216', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-13 07:33:33', NULL),
(777, 'MRMR', 'mrmr.ahmd@gmail.com', '0000-00-00 00:00:00', 'f3618eaeb9ebb56e6b6478a6cf7899fcbbd318c3928c08bae58f01be9542c235:xAWZAdWboJbXqoHQAPhBVylSEfno7AGP:1', '', '', 1, '', '', '', '', '974 7758 9016', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-13 13:25:03', NULL),
(778, 'aladd', 'aladd.dak@gmail.com', '0000-00-00 00:00:00', '394ccc1c0a719d2db785f5ddb3badca8ab5c525be310707ceaf755f2fe789a9c:p6zkYfLyFACT81D1c8SsdLgZQAn9HIj7:1', '', '', 1, '', '', '', '', '66883128', 21, 19, 0, '', '', 0, '1', 1, 2021, '2022-06-23 07:34:49', NULL),
(779, 'Saoud ', 'saudsss882@gmail.com', '0000-00-00 00:00:00', 'deefae2083d5ec310209fca39bc38d9432e31c08972fd11cc8854a0f113249d0:NzDuNWBp8AwWU14jhdHlZzYpuyw5mRAu:1', '', '', 1, '', '', '', '', '55646168', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-13 18:44:32', NULL),
(780, 'sarah', 'sarahasaad18@gmail.com', '0000-00-00 00:00:00', '236bd612964e2cc6964b6d93b6b998296c263885a42859c569cfa566f242d639:23P5lnJxrLOKjYGStMVvaAo4mS94zZeG:1', '', '', 1, '', '', '', '', '70663483', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-13 20:04:01', NULL),
(781, 'marmar', 'marmr.amd@gmail.com', '0000-00-00 00:00:00', '7ae210d4e65cf449f7029227463e3e8f35ae2193e3cb3826f27434761e0eb77e:j9qhi2YFXImODf0HOBjKPKfLfz0mY2Xd:1', '', '', 1, '', '', '', '', '974 7758 9016', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-14 09:45:11', NULL),
(782, 'Marmar', 'marmarad@gmail.com', '0000-00-00 00:00:00', 'e86a0acbe524e5f5492390aedbb14692396cb71cef101de10648073d9383078d:3mq7aUfch7Pljp4Awe1L2e0aOZM8dI1h:1', '', '', 1, '', '', '', '', '974 7758 9016', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-14 10:05:57', NULL),
(783, 'DebraGuils', 'thellamentfi@gmail.com', '0000-00-00 00:00:00', 'aa7d34e9d6552e4d1e48afaca8c27779293733dfbabd9c7aac1c7918bca7e1b0:J7Yh7EKjUEVuRC43qkPua1SMhnOTXdP7:1', '', '', 1, '', '', '', '', '81739188371', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-14 19:08:09', NULL),
(784, 'ZacharyMix', 'a.britov@info.avalins.com', '0000-00-00 00:00:00', '6aa33310d1027f8b46d806965cee5be94ea4b0e45bad1013e366491fcc3b4952:07Uq0XWabaf4PPJZMc2zdzlNMjxhB67B:1', '', '', 1, '', '', '', '', '88499545725', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-15 15:29:17', NULL),
(785, 'Danielprele', 's.folomkin@max.enersets.com', '0000-00-00 00:00:00', 'abf904ea0ff8ec879281a46943cfcaa8b511b8e8b6271505c8bb031f95dacfb1:8QYvEwRICRVezqnsLpLkE7T2zCW2kYkX:1', '', '', 1, '', '', '', '', '89112344445', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-15 15:29:18', NULL),
(786, 'BarbaraHouck', 'vitalikguts@yandex.com', '0000-00-00 00:00:00', '803b2cb3d57b7acd3d6f7cb953f0b55143ed4d1df121bb9f82e6124b34bd062a:f4B4Vod9q6VLXW9NnxNG4PMRmHjPm0ve:1', '', '', 1, '', '', '', '', '87873873365', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-16 04:27:12', NULL),
(787, 'gameela', 'gameelaomer06@icloud.com', '0000-00-00 00:00:00', '08afcdd08aa357caf5405ab5243b981fb9d245dd3afbaeef72a85865a349a60c:wOIdJcTvp7sp5H4xj8UOi4lkfHJ7bcvk:1', '', '', 1, '', '', '', '', '55245892', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-16 06:59:22', NULL),
(788, 'kspshurf', 'pochta@imajl.ru', '0000-00-00 00:00:00', 'f4ee3a9970f67d6e933ea42daa110885243a1841873d67ae563e2af12d6f189f:pvVyAwlIZACaP55a4igQzRAOF51BiwrG:1', '', '', 1, '', '', '', '', '87224349344', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-16 07:21:07', NULL),
(789, 'Katherine Leslie', 'leslie.lopez30@gmail.com', '0000-00-00 00:00:00', 'f43bfe0e66683b6ca4007f32074ccf3b1adff095a3450a0a31baceae8c7007bf:gjkbyEjLerp4s7zkhxslaBzQrtnlVyQd:1', '', '', 1, '', '', '', '', '33455291', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-16 12:00:42', NULL),
(790, 'Homerbak', 's.brinn@info.avalins.com', '0000-00-00 00:00:00', '6672db140dadd897276e1e17c9f35186c232136a3470cf383872c1a9e598bf12:NoREcUQkguHNcUilva4ccX5Eorqj42Bi:1', '', '', 1, '', '', '', '', '89214597877', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-16 18:49:12', NULL),
(791, 'Charlesovale', 's.golovenkin@den.efastes.com', '0000-00-00 00:00:00', 'dcf4e05db1f32670ab1b217afaf0a52503b9074eb23293a96b72ab7a4bb37e81:HCO0MYWkWhks5eNAJMIabSgmZCyZccWO:1', '', '', 1, '', '', '', '', '85435133435', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-16 18:49:12', NULL),
(792, 'CynthiaVes', 'anclogandmk@gmail.com', '0000-00-00 00:00:00', '88f4e28f9dadb04cfdd02515b06e58848adc907c445a21fe3e3d140bcd63d826:MSIZXkcrsOB6zlTyV2ToSPvuPXP6yTM7:1', '', '', 1, '', '', '', '', '88144882219', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-17 02:40:18', NULL),
(793, 'Randypoign', 'yourmai12321232l@gmail.com', '0000-00-00 00:00:00', '71c15280539f5a39b8b2f02c6aeb2746475278f77742e90d2f426673ede7f3e3:k9YuPlPRukLHrwRL8fipkWVPFoDuttaS:1', '', '', 1, '', '', '', '', '89898195735', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-17 12:51:13', NULL),
(794, 'Danielhix', 'lencentinqd@gmail.com', '0000-00-00 00:00:00', '16d49c3a2326617b06195835f91ce104de7ce707e7b9aac3c275b6bb76834500:7CCAZJ9z4S0t9dvZuwHkZ4K0QoEyVP8J:1', '', '', 1, '', '', '', '', '84353742259', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-17 14:30:41', NULL),
(795, 'Hakim', 'Junkie.beez@gmail.com', '0000-00-00 00:00:00', 'e734fed93b8ab00f302b32adc2b179f5a4a305cc1fba57cab7b82c9a927ed72b:0eYWjQapQzqfNxH1QdOri8gENSonSlrX:1', '', '', 1, '', '', '', '', '55287510', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-13 16:45:13', NULL),
(796, 'Mohammed', 'xx9009xx1998xx@gmail.com', '0000-00-00 00:00:00', '3688043ab906c5aa395c7f6ce1ede32f0f3e9b07b3b39c53415933f4385b589e:VkExAByYrn1ztjCepjek9iEpyR3HGqPP:1', '', '', 1, '', '', '', '', '70002341', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-18 19:31:09', NULL),
(797, 'DavidCrori', 'yridiahalsdevonnya@gmail.com', '0000-00-00 00:00:00', '01ffc20d19d368ea2a59907415bc9812addc3d603fbe821c4976c0cd27e58f04:d4FhbijkRHH5ZCIkDIwQOYKejPDXvStZ:1', '', '', 1, '', '', '', '', '82331148667', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-19 12:39:10', NULL),
(798, 'RalphUrgew', 'k.shestakovich@jodas.enersets.com', '0000-00-00 00:00:00', '93db11d5a8b29de31c25a6712f66fe6d4472ee8fe9d5a2d91775b614695940a4:AqgdCjrPFuOwozFT2ZOHWOyeaCLAaTNo:1', '', '', 1, '', '', '', '', '84486951615', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-19 14:27:33', NULL),
(799, 'Steveynfromy', 'greiannet@yandex.com', '0000-00-00 00:00:00', '59b1a116eb018b8e35d7896e8604aa98e4d14311e053bb35adc4c02966ed028b:YvLy44bjE71t4IPM1pCqNFp2bSJKpUps:1', '', '', 1, '', '', '', '', '81219692271', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-19 23:17:32', NULL),
(800, 'pauellsr', 'pau.e.ln.ee.d.w.e.ll.k.ha.ey.re1285034@gmail.com', '0000-00-00 00:00:00', '6186a38e74b96f9f04a5eb98289b88b401776773ebf736935a953ed2b0bd6812:u5i2kbttY9IYrEC4ALtC4jWMoVa0KYwV:1', '', '', 1, '', '', '', '', '85191847297', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-20 07:18:22', NULL),
(801, 'Ahmed', 'laylaalabdullah.q6r@hotmail.com', '0000-00-00 00:00:00', '31dcc12056fcafae582def590a3c622de992df551c3a09f63c5181b86b86e373:RxwjcHIW1Ig77mv4NgGhcAQ7jRztH96Q:1', '', '', 1, '', '', '', '', '55005618', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-20 11:38:40', NULL),
(802, 'WalterPet', 's.polin@a.avalins.com', '0000-00-00 00:00:00', '9106352c24d60a5c6c0b2bbdda340f975b8ed640c23565ab401525a5ed190656:KFyoeH8h0TFFeV1Jo6AFQQst3SIZlIJB:1', '', '', 1, '', '', '', '', '83167741632', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-21 07:46:18', NULL),
(803, 'Abdur', 'rahimrock742135@gmail.com', '0000-00-00 00:00:00', '10c52ac7ea1220b0cac4abeb30f18eb58b4c15f4cd65173e359828b43f6d7516:Jp5fFA2bfkpUgzpVd7zI4p7oXeDnMHMy:1', '', '', 1, '', '', '', '', '7001174091', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-22 00:23:27', NULL),
(804, 'Ronaldjen', 'vasilijpetuhov083@gmail.com', '0000-00-00 00:00:00', 'd522c1cc3ef461426364b324a6e3ac8f2aa266e6f758ccda6a2c8284bdc29476:BRnPNQC3MqgQ74REOKaJhGJXNSZLUkRr:1', '', '', 1, '', '', '', '', '86552474168', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-22 04:19:15', NULL),
(805, 'Michaelkes', '2r@4ttmail.com', '0000-00-00 00:00:00', 'fce89e16583454298d49c99d7facf91ae4ca39714ab97a1110afdfb5211e1ae9:VN70yTzVZ1lpWM7YWGlIDX1HHizyVGXu:1', '', '', 1, '', '', '', '', '82987381287', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-22 06:30:01', NULL),
(806, 'Fatima', 'fatmhalmajd58@gmail.com', '0000-00-00 00:00:00', 'ae0938d69b71c38f45c22fc4328a9fc88b4db4d644ae2a9bf242aa2a1affa330:hkcSnIEVzvCnghdQl5714AMl6fEhCUyc:1', '', '', 1, '', '', '', '', '39632696', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-24 09:52:52', NULL),
(807, 'Bu-saif', 'busaif5@gmail.com', '0000-00-00 00:00:00', '2e2cc991fc5dfdb692218883e993c7843248d730d512e30604e6462ef31f4374:K458UIJJ9XHkr21uLtr59rDw91VLgYeD:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2022-08-07 02:20:09', NULL),
(808, 'anis ', 'jmil2022@yahoo.com', '0000-00-00 00:00:00', '95db76388b3585a390b1e1620ebdc431eebc35860ff06ce535ff2582c3d57574:9Jlzp0x7daFAOaRrVE6YIIINNXtLtLVG:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-04 12:08:10', NULL),
(809, 'fazal', 'fassal.m@gmail.com', '0000-00-00 00:00:00', 'a98552dd0ad0443a978e454b50abf5f01d699bc020cdff09880a2dfb06949182:tYXV5ypeSBaxDOwv7IHXRVidxoX6o9Or:1', '', '', 1, '', '', '', '', '30367009', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-26 21:37:08', NULL),
(810, 'Riz', 'rhizs28serhcadieneez@gmail.com', '0000-00-00 00:00:00', '3be26271af327091ef6a32ea4ab7790b03158ca5c2500d29e5d5fdf0f7fe2f23:KmENZSR1Y9LwiimsiKuMRXWYu44WCT0y:1', '', '', 1, '', '', '', '', ' +97450656777', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-28 23:19:28', NULL),
(811, 'Yazen', 'yazen3210@gmail.com', '0000-00-00 00:00:00', '016390acba795ae7e55009b8439e0fb5b2af6ea937ecf724f5c0f27dad6e4ca0:U5G6C3V3kvGP1mjKdtescoUNTaNk7gHF:1', '', '', 1, '', '', '', '', '50332582', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-28 23:23:36', NULL),
(812, 'RudolphKek', 'a.sviridov@makao.efastes.com', '0000-00-00 00:00:00', 'b1ca28910f6ed4c44185373cd6b1aff9e76bc98dec4203dd4779ff2c1aaf2b11:azqUTRO8jiFmMPzd76WRjZXx0nq0G8XM:1', '', '', 1, '', '', '', '', '87131382649', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-29 04:40:47', NULL),
(813, 'Toka', 'toka_youssef@outlook.com', '0000-00-00 00:00:00', 'b4723839fab29fa27d53811ddd43bf9236474a2f5544bfbc4a3c35a080481ef8:fOhTOILiuMrfHYFo8xGEwfYcZ5cO7QnR:1', '', '', 1, '', '', '', '', '33533537', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-30 07:28:37', NULL),
(814, 'JesusMuh', 'm.gorshenin@jodas.enersets.com', '0000-00-00 00:00:00', '338684e2e6f64b2d09b8fe4f3d1cc8aba5ab30b7360a3af57a628ba2bd6c4c43:sWNoXNz2nlS0KPzwWgoYDVMsPEim5UrE:1', '', '', 1, '', '', '', '', '85733984447', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-06-30 13:38:23', NULL),
(815, 'Nafja', 'nafjaali@hotmail.com', '0000-00-00 00:00:00', '89df64d2518cabc043d1122d345a5b8e0dad62284de696d16dc8e1c50f087d6a:PYM6A7qVZQCHapr7Z0oZlalay4vvYM4a:1', '', '', 1, '', '', '', '', '55474411', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-01 06:41:13', NULL),
(816, 'Edmund', 'edmunddoku1989@gmail.com', '0000-00-00 00:00:00', '3ec8ae5cab1191d287b60996000feed1a56d683683e991a10ec171efe0c84e11:utjthODzaiaj7nLg0VY8inirGqgklMB1:1', '', '', 1, '', '', '', '', '50966078', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-01 01:39:25', NULL),
(817, 'Bushra', 'bushra_ham97@hotmail.com', '0000-00-00 00:00:00', '97de5c50bca403ec288b9c4d3b2b748d3f8347b2ac859c1acebe72bb33701b34:kSHm1ZVQRNv3mjyVqvwvf8fuJiWtnBa1:1', '', '', 1, '', '', '', '', '50449928', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-01 09:40:19', NULL),
(818, 'Alaa', 'alaa.jalalah@gmail.com', '0000-00-00 00:00:00', '4ea46cec9fcdeef41086b7e1874daad4e4809b85fea3be003fd070a4f0173547:CupPLnbLx3mGDKQHNekVntKgURSYK5ZE:1', '', '', 1, '', '', '', '', '33005652', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-01 10:08:42', NULL),
(819, 'sonia', 'benyoussefsonia@gmail.com', '0000-00-00 00:00:00', 'd97d051ced8d2307210377a23a1862c7f85729e06678c08abfed93248a3be1ac:m7zFhuyLsBeqLSSu77RDAjfreftMoC5z:1', '', '', 1, '', '', '', '', '33009884', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-01 15:39:33', NULL),
(820, 'maha', 'maha.tia.yosef.asiri@gmail.com', '0000-00-00 00:00:00', '0c4d814f9f57353ee0c727589160cf3555e7fdbad7fc1cffdb747da22ecd18f2:nhgQOut1emxLOBmjW2q8ATEa16UXmfW6:1', '', '', 1, '', '', '', '', '55490703', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-01 20:21:23', NULL),
(821, 'زوز', 'khayalalrooh8@gmail.com', '0000-00-00 00:00:00', 'e22bd4fdb9fdffef710ceeb1cc97108d8d6438b6897c8add9bcbb7da954a99bc:hqwr2oX1EjLmLodKCKD56p5q4AWmh77r:1', '', '', 1, '', '', '', '', '55464513', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-02 00:21:56', NULL),
(822, 'Linktrinisp', 'pobfukdagiu@gmail.com', '0000-00-00 00:00:00', '8543e9ddab528f7562bd595b398d20685afae57ace027e708d12b13fee4c2919:MWTiBJR7MsGakmYJL8YEoNnxmceI9yeY:1', '', '', 1, '', '', '', '', '86844793532', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-02 06:31:44', NULL),
(823, 'Shaikha', 'sobaidan@outlook.com', '0000-00-00 00:00:00', 'f6d860915356944b10121e0057542edd65c359a9acf93ba35c2fce107da0c161:jse4kPR1lxTGuiUjXqf5gOAhLAQx3NR9:1', '', '', 1, '', '', '', '', '33518188', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-02 17:27:26', NULL),
(824, 'safiya', 'safiya.gomri@gmail.com', '0000-00-00 00:00:00', 'c7c245dcfbd7a158e960b60812623c707151c35adeafdcaa16f1f5d38bf333c5:HDEnr0WvczRiumE0eFlEF2dJvRBFoEzY:1', '', '', 1, '', '', '', '', '50348349', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-03 09:19:06', NULL),
(825, 'MOHAMMED', 'mohdmohd888@outlook.com', '0000-00-00 00:00:00', '1ef42e0a2b48d8699a0ed292e1935852bf45adf83e4f73541fd60a76b15dde0c:OOL8WFmaPs222SSFk55NgkadyQLVhmlG:1', '', '', 1, '', '', '', '', '77707207', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-04 08:01:52', NULL),
(826, 'Hiba', 'hibabenzarti@gmail.com', '0000-00-00 00:00:00', '5b94b74ecc85f58f3af04d00843c81dcff2b3b4b052d53008e285416ba26269f:9CLPnRXc5zOE7QS4BngWr9pz0zWbnova:1', '', '', 1, '', '', '', '', '77710561', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-04 08:45:16', NULL),
(827, 'Fazil', 'fazilcp90@gmail.com', '0000-00-00 00:00:00', '98770aa011978cc7cea46ccec78c07279cb61ddc55f4dc1f772c2ff68f3ca02f:evNE0XY3XrBvi6pwLFuunGNrSWEbKy68:1', '', '', 1, '', '', '', '', '66202329', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-04 10:05:12', NULL),
(828, 'Brianmoing', 'i.shelevich@denis.enersets.com', '0000-00-00 00:00:00', '5c8aaf03d8869aae41e46dcdb68bafd11c667b8cff2f85c67837aaf389fcf531:1lXCmcdmmchPkrRIqF1BhrmLeVBqrEsh:1', '', '', 1, '', '', '', '', '83724345263', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-04 11:45:08', NULL),
(829, 'Daviddig', 's.pushin@makao.efastes.com', '0000-00-00 00:00:00', '479980cfd0f4d7cc46136ee465b541c1cba452652f355b4d0a76e1f26e7cbd95:IcJ2yQ88YvHfbYydzDEy2zk26zmShZmK:1', '', '', 1, '', '', '', '', '84729268175', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-04 20:45:13', NULL),
(830, 'kamel', 'Kamelobeidat87@gmail.com', '0000-00-00 00:00:00', 'c560367026f1e72069a3990f7f89e86c8df8c273e251a144a87644c543f504fa:QWc6Nfnr4yr4XUeLDxJMdq10Qm8QPjKL:1', '', '', 1, '', '', '', '', '77884572', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-05 06:34:34', NULL),
(831, 'Salim', 'salimswaleh1980@gmail.com', '0000-00-00 00:00:00', '8fc9e7ccd46dfece5be16b31ba507e61488a9539b0d65dc8fa349f7df35c2f54:KZUnjZmlPc6H9Rmq4RHARJr8JK3ZA4b4:1', '', '', 1, '', '', '', '', ' +97466168594', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-05 07:41:59', NULL),
(832, 'Brantked', 'rafik.siret@gmail.com', '0000-00-00 00:00:00', '19110ebf1b8b5e9c7fddbfac8f99128b316cac0d01e1b6aeb0ab528c487a7cb5:15RoKvUVSi10jaGItNyMGl3Y9K2TAAY3:1', '', '', 1, '', '', '', '', '86943552848', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-05 13:34:29', NULL),
(833, 'ريم', 'reemfakhroo88@gmail.com', '0000-00-00 00:00:00', '63040548fab51f5ddcfabdc61ef9eb05624a5f74cba00b89972b3101dd92fb7b:reOiwvvs6n41Maq0vlahlrnVA6uYhljO:1', '', '', 1, '', '', '', '', '33304048', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-05 15:10:54', NULL),
(834, 'Emely Rose', 'emzchi12@gmail.com', '0000-00-00 00:00:00', '24695403d776fa2eae238beeae53e34a988277330ea5f2576080e4757962d785:FZGxXMWBM5IekOGYENJhoValZ96xZZd7:1', '', '', 1, '', '', '', '', ' +97477437955', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-05 16:26:23', NULL),
(835, 'nadia', 'no0ody990@live.com', '0000-00-00 00:00:00', 'f11e79573a23fb4785b89dbce1403bf417bcd9f9a6e062ae32f082892bdaa6ff:1l9twedUPG1ghElsl9dLhjKELKBz89pB:1', '', '', 1, '', '', '', '', '55236615', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-05 17:54:22', NULL),
(836, 'Loliteblili8756', 'lolitcbbacrews6780@cc.com', '0000-00-00 00:00:00', '874cb63f39504a2ab22a404362fb540274730cc977e107f7a270cd4a4cf19f45:CgRmWFE19LTjtMM8egLOak65KINkG6wF:1', '', '', 1, '', '', '', '', '84956918955', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-06 02:30:51', NULL),
(837, 'Mohamud', 'maxamuud017@gmail.com', '0000-00-00 00:00:00', '715823724eb48dbb5b1265c71b5b9d84ac38d76344b5ca911aac7f62a5e5c3f2:fCDF9jr1vdJcyjtrDpKMTcLERTEUu5TG:1', '', '', 1, '', '', '', '', '30514976', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-07 06:57:41', NULL),
(838, 'حمد', 'bd_qa@hotmail.com', '0000-00-00 00:00:00', '94b727b548387f6f3710e81659526557e2194bb867870d872b3ed3f118f3f357:8rgkCsCQLHhA4tRdMSaSOriGjlYuSWWs:1', '', '', 1, '', '', '', '', '70133851', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-08 04:45:28', NULL),
(839, 'Mcharo', 'mcharol.mcharol.mcharol@gmail.com', '0000-00-00 00:00:00', '5ceab0c600795a8a7a3fdbe2830a705520d223ec534aa82959fc23f1153779a0:rDz1cFCGxV9PHXhXXlvi3AeW6ct7HMVV:1', '', '', 1, '', '', '', '', '33684690', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-08 10:17:53', NULL),
(840, 'marwa', 'maroo.babym@yahoo.com', '0000-00-00 00:00:00', '01b206fca8190c3f457a6609d7a09e80038eb9a80df4363a3cf52a473393f25f:aeM3hIn641XqgS9Gvkfrudj7Vqc9LOnS:1', '', '', 1, '', '', '', '', '50942988', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-08 11:47:25', NULL),
(841, 'Nooora ', 'Nooora1985@iCloud.com', '0000-00-00 00:00:00', '58e41342106c733e92c6029f3979c8be2bf65307619657638276d31701e2f690:dQMB3zslQ4jCAiqeFd2sXrRDD4hQVgc7:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-10 09:24:53', NULL),
(842, 'فاطمة حسن ', 'fatmaqtr83@gmail.com', '0000-00-00 00:00:00', '3c5521918d6e3ba9c39bf31bfa492a93e8cf1afa5f5bc9f4ebdb54f0cd2e6404:9vhGb3sgyLcZcKTYf2QsIxtA23whe4BW:1', '', '', 1, '', '', '', '', '55395263', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-09 01:22:06', NULL),
(843, 'gotutop', 'go@antitourism.ru', '0000-00-00 00:00:00', 'eb325aca1a457e8c0098881bceeafd4bfd33bf28ab37a76dcf156a7d4d9b3014:r9wCxlaVvKdgHXfJE8DyCdnvFHcxSsiG:1', '', '', 1, '', '', '', '', '87394745748', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-09 17:49:04', NULL),
(844, 'zena', 'mzyeena@yahoo.com', '0000-00-00 00:00:00', 'c73736129113ed7eb1a89633bc9a2cc5accdf050d0a86dd4309337681fb3b918:eRNmCr5T0qc7sgRNzVplztvfwJaxLHkV:1', '', '', 1, '', '', '', '', '66752255', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-10 05:06:02', NULL),
(845, 'kspshurf', 'p.oc.h.ta@imajl.ru', '0000-00-00 00:00:00', '176078002c0c3212c6ada0d1a66b07279bb503b58c9e09ffd56b0e42c0df21be:xRymmpwNUwIiNkQ4f9600E26lHis31da:1', '', '', 1, '', '', '', '', '87654897539', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-10 11:50:27', NULL),
(846, 'Vanesa', 'molinav4@hotmail.com', '0000-00-00 00:00:00', 'b15e06a5a57a454f2fe642025390e5e0323f2b43a2d75ebd44452fdf749ffc47:w6AKIL8vgEE8MVMa5cm8bRVU3NhQN6P9:1', '', '', 1, '', '', '', '', '50233367', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-10 15:17:49', NULL),
(847, 'ScottDaw', 'protribasvets1964@dizaer.ru', '0000-00-00 00:00:00', '276ec75324d243cfe25e8bc460e445f69b6429092e745c3c0807821b31d40fc3:ob4jr0TrcRauyVjwjLPlS2ARQC7DZ9MK:1', '', '', 1, '', '', '', '', '84317566765', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-11 19:23:01', NULL),
(848, 'Samantha', 'samantha29130@gmail.com', '0000-00-00 00:00:00', '6fdf7c5b5641f5ea967aaa3b73c56315b5088cb88bcf3f432570909028e188b7:hJIxA5QTvvPYxZ3YAjy53wXek8fBV5QZ:1', '', '', 1, '', '', '', '', '33838749', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-12 01:59:20', NULL),
(849, 'BradleyPhymn', 'monthliplery1957@dizaer.ru', '0000-00-00 00:00:00', '7ab298b7b3aa8e3cc79d0d75376c70619c0206ce53ee56922cf630bde0df52a2:mDWHolH9sacN2241XPy4HzmitX4gvCGh:1', '', '', 1, '', '', '', '', '86923126214', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-12 07:22:27', NULL),
(850, 'Anime-Jek', 'yulshiuni@gmail.com', '0000-00-00 00:00:00', '869b965a53f95cfeeb559bbc1447a7aad6dca52657897590a8de7b4dd5ce85cd:DAMlUD1AbG0omgUZxQDf5rICvqDue1cp:1', '', '', 1, '', '', '', '', '81441226289', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-12 11:41:12', NULL),
(851, 'Aisha', 'Ayshaalahbabi97@hotmail.com', '0000-00-00 00:00:00', 'baf7323fd5e92fdd3e4f98b366a87361b0b4417733ad62537c8d150cdd08cc76:wldfafNujC0zxwAnlcqqu3Eni1j4DjiN:1', '', '', 1, '', '', '', '', '33371733', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-12 13:04:49', NULL),
(852, 'Georgevax', 'derfclunosad1988@dizaer.ru', '0000-00-00 00:00:00', 'c831079e5c8d802d08b82908ba20b2ad53ac61681f9c23d08d95f0eefa461e19:tuRnXHxPyKShhTiGc4cIWqcGJ58xCY4c:1', '', '', 1, '', '', '', '', '82566977812', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-12 16:51:57', NULL),
(853, 'Kevinmes', 'perwhiviva1957@dizaer.ru', '0000-00-00 00:00:00', '437d5817fa0109ff35e4fdde3d22dbcb1949b404ecc12318719606a4c9edf8f1:ufiF5uIuUTR8KcochaszUEROApC1w8Je:1', '', '', 1, '', '', '', '', '82216845669', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-12 16:51:57', NULL),
(854, 'Williamsyday', 'bridevliters1952@dizaer.ru', '0000-00-00 00:00:00', '68d13480e3374d62223b9d6d41769ae28cc18109862990058515a05e03f56fc1:4S8V0PiPPB1STZvefwt5p1uEmSvMDhuu:1', '', '', 1, '', '', '', '', '88814777963', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-13 00:40:16', NULL),
(855, 'MichaelPAG', 'ljulialuioy90yo04@outlook.com', '0000-00-00 00:00:00', '65358499ab7cb3b23e4e334a0d584769fec8e676a3e387274e3fea2d2aabed5e:47vmtNc4244DlA9uy0cgm6KPavAguykp:1', '', '', 1, '', '', '', '', '85976136785', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-13 08:35:47', NULL),
(856, 'Chidiebere', 'egbuforchidiebere@gmail.com', '0000-00-00 00:00:00', '7345246cc24d280ec09677e07752c1d3cb02934e7cf4171f32cab05e3e75f821:ebnNzSPORX5Y1xWM5wntxyVdgzLw1jE6:1', '', '', 1, '', '', '', '', '66893945', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-13 22:09:16', NULL),
(857, 'CharlesFrumn', 'darsusubmoi1976@dizaer.ru', '0000-00-00 00:00:00', '7f4aca98f6ffa5e86fc05975ed3ce8ae7c038bb40aec8135ca47110bf262cfa0:MobmRhsOruEPUvcICMDyc2HSSjUVsaue:1', '', '', 1, '', '', '', '', '87959215232', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-14 07:01:18', NULL),
(858, 'Yousef', 'y.buhaddoud@gmail.com', '0000-00-00 00:00:00', 'b9a3e48176962c7b75f06bc5166faaa745bbadcef82d285c81f72e690db65d9e:6AZQm8uw9nsqVTZ6ihTZ1UJAF9yrJggV:1', '', '', 1, '', '', '', '', '66320808', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-14 07:53:49', NULL),
(859, 'mike lorain', 'mikelorainrazon@gmail.com', '0000-00-00 00:00:00', '76c4afe35daf106811a145235922bf55d5dff59c15c743561d57a8ea4237065d:8FujxdrsLlpT5guXPfxwgcD3USYPGk4W:1', '', '', 1, '', '', '', '', '55359843', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-14 08:25:24', NULL),
(860, 'Iram', 'irammaher@icloud.com', '0000-00-00 00:00:00', 'fb689c4e7758577df6a55d0d54459172b651509afc389eac09419aab573cc0e4:xzwCJA6ovYhMwLkOVprT5YFQQxhjUdI9:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-14 20:06:27', NULL),
(861, 'fatima ', 'fatimakhaled87@hotmail.com', '0000-00-00 00:00:00', 'cf035ced204247d573b3286f4580eba97c86eeb562685aeae2bf21b82abb9c13:XFhbQUa629i4H05x04WJaSaNCT1X96uW:1', '', '', 1, '', '', '', '', '66146145', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-15 10:16:44', NULL),
(862, 'Nejoud', 'n.al-mesaifri@hotmail.com', '0000-00-00 00:00:00', 'ab8399efa226b6c62de969cacf3c186e78d057e0f0ed93136c6cdd1dff41c3f3:kBfSC06zfnWNyw24KSKgbgYaq81lwrQC:1', '', '', 1, '', '', '', '', '66177966', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-15 11:11:54', NULL),
(863, 'قمر الزمان', 'kamar.alzaman.y@gmail.com', '0000-00-00 00:00:00', '45ca4ef2003587fc90abd54bac53a39c61cb31a8f56f4aea0d44a8ca00d8fe85:DCzi9b40Sg1bPe34RYGyXabjjXtnTBLt:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-16 19:45:50', NULL),
(864, 'Businessmannef', 'keysyeloseywk@gmail.com', '0000-00-00 00:00:00', '585fb41c025958217de15d61484be9867cad72abf9a55a899b368a3bc210bcdc:7fDG9eNJ1jhyWE75AU67vOG6XSWod4q2:1', '', '', 1, '', '', '', '', '86574136453', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-18 03:04:29', NULL),
(865, 'Javierkew', 'a.tihogorov@denis.enersets.com', '0000-00-00 00:00:00', '0444c61ffb7c1e25ab1865a38a3356ce970a92695e01592e3274491fc5b2a510:akpvrUaC5Fo8EUhpQjct8uLt1LA1JiMC:1', '', '', 1, '', '', '', '', '82493698136', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-19 13:15:49', NULL),
(866, 'Larryhiz', 'm.finin@info.avalins.com', '0000-00-00 00:00:00', '29501975b94c599baeb1af7a2413fd21f1c2899c0088f2c391effecb847e7e54:HMbtVhyei36JwIw4TkjR9HkZDKabMKFr:1', '', '', 1, '', '', '', '', '89638798556', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-19 13:15:49', NULL),
(867, 'Ahmed ', 'alnamani.a.s@hotmail.com', '0000-00-00 00:00:00', 'c0f838c1580bac920033d4edbefd114c200b68087d22ca5725a60b9f1e5bf577:kqA98IpWHzEUjNMnufNyNBXNbZDrLZ0J:1', '', '', 1, '', '', '', '', '55119971', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-19 13:51:10', NULL),
(868, 'Osama', 'osamabox@gmail.com', '0000-00-00 00:00:00', '2f46b2500287959b1da2250d8aea71f570c29b7158334b5c0a9004fb9e129026:eAypHKcDwu2kAEU1893K5sTpbseXWzCj:1', '', '', 1, '', '', '', '', '66717336', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-19 21:55:32', NULL),
(869, 'Ahmed', 'alallam3000@gmail.com', '0000-00-00 00:00:00', '57b5032745d61ddd9299fb43de07d7d222320bbe2651946db3ce1bdda05ce753:LWaYRlCAXfxgTQD76x6I1m6YScHwHWSv:1', '', '', 1, '', '', '', '', '77005906', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-20 21:14:21', NULL),
(870, 'shoosho', 'shoosho3000@yahoo.com', '0000-00-00 00:00:00', 'ee4e850e85c3fffcd6db9a5b0865ac652182d166623b573dfbd7490fecf0582e:JMkuD4wrBOLFWlrsjFVyCyA5DKf5P5e1:1', '', '', 1, '', '', '', '', '74059040', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-20 21:37:22', NULL),
(871, 'MatthewSet', 'm.osenyan@den.efastes.com', '0000-00-00 00:00:00', '676d2e9eeb1625d3e28916af0f179465969c90e3e471bab7235232103ddd3d6a:9RpjtqB9cOfwOkJifGZRmNb1IcT9eheF:1', '', '', 1, '', '', '', '', '83283243385', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-21 22:42:17', NULL),
(872, 'Edwardlew', 'f.mironov@jodas.enersets.com', '0000-00-00 00:00:00', '038c199f946994277813aa5e1e38882067e3dc66f142a1c12dd8dcf16f351577:dbwigBNZU77D41NvNhv6oLW5BOnA8w1A:1', '', '', 1, '', '', '', '', '87859285237', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-21 22:42:18', NULL),
(873, 'Harrydus', 'i.achakov@info.avalins.com', '0000-00-00 00:00:00', '1e3b4d2d86c1fd2f322f17b2342bf126e7395af006c28416efd6e38a472fae17:mgR0guaCoAvVn1C08Lvo3mi5uRCaMjbF:1', '', '', 1, '', '', '', '', '86435892762', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-21 22:42:18', NULL),
(874, 'JuanitaDiola', 'mksorbplg+atgoa8@gmail.com', '0000-00-00 00:00:00', '1031f8c99671cd3fdcc5920b2880fd0a570a80e820821562d92ecf18018ac3ee:jumGesy8ubr5h1PmILxMwSh9rRJFKgQu:1', '', '', 1, '', '', '', '', '82255489621', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-22 11:15:49', NULL),
(875, 'KarasevTox', 'karasev1987@rambler.ru', '0000-00-00 00:00:00', 'e82e52f63460891a6ab2109f57ed64ada202c33443d8ebe0353dd06d182b5161:uzEEMUvcceD5EFhbxkOyX0zK2eyPc2kz:1', '', '', 1, '', '', '', '', '84938978464', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-23 07:36:28', NULL),
(876, 'Victorslady', 'd.petrovich@makao.efastes.com', '0000-00-00 00:00:00', 'ded4e417072dab582bf511492abb89ce82f2a7d8f3647345a16f519bb89d8142:uawYjyGezni2djzYqawKjEioNmspocoZ:1', '', '', 1, '', '', '', '', '87631642227', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-24 08:32:16', NULL),
(877, 'Geraldoneli', 'a.podhudovich@jodas.enersets.com', '0000-00-00 00:00:00', 'b7c517fb64aa866e889bd0275768a98ac9b73845857b544b3e22dc4886e1935d:sGvLQZ7fU0NmXE0GGNs83q06hwVgP6nh:1', '', '', 1, '', '', '', '', '81826336533', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-24 08:32:23', NULL),
(878, 'Thomasvak', 's.davidov@makao.efastes.com', '0000-00-00 00:00:00', '262c493896905be0679cb69a303fc5ae57d68e701d815cb31418f9f7af6817c2:wKtecl1VItc4Os44wtwEJXZjHFtQwOhk:1', '', '', 1, '', '', '', '', '81884555985', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-25 10:38:18', NULL),
(879, 'LloydShavy', 'i.nagornyy@denis.enersets.com', '0000-00-00 00:00:00', '9fb55d2f35cdb2c08e44ba289852b26997e9bd7b20810d7905eaad9c9e585dfb:GKDBzKMA0vLQbPRcUYTIs0qLQMWOBetD:1', '', '', 1, '', '', '', '', '85562175196', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-25 10:38:18', NULL),
(880, 'Marcoaport', 'd.simin@a.avalins.com', '0000-00-00 00:00:00', 'd5f46b2581f17483e6db2c27dcb0632d7572228684b8f0a8dae1c3df0cc2c0f7:6UBE8XBbzSVJrb2daiUQxWg9j2eYcALG:1', '', '', 1, '', '', '', '', '83371494536', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-25 10:38:18', NULL),
(881, 'faiz', 'waste@wasted.com', '0000-00-00 00:00:00', '9e2d51ec7efd1b32adca20255bc3cf72e70550d20442653b24fae031b64f0f4b:3ccfPpqit5BHWIE3DWu4IEY3kGJluRCs:1', '', '', 1, '', '', '', '', '97456352145', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-26 05:35:21', NULL),
(882, 'Asim', 'asimmakki@gmail.com', '0000-00-00 00:00:00', '9c256f1fb918dfcc36fb0840d9ea9e882fbdc3587f534635ee306a9a6c5ea397:3olGfWzH4GLkT1ClRoAkP9hmqjjRe8FF:1', '', '', 1, '', '', '', '', '55142421', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-28 00:47:56', NULL),
(883, 'clelt', 'aidenmorgan77@gmail.com', '0000-00-00 00:00:00', '7c22c761f3b189625f899ee71ea37c05c1d1d5d41dd9c977b8c138fdf57f10f5:c9gz0GzlWGQsnOEsavfxTWrxyfAiMrkf:1', '', '', 1, '', '', '', '', '83719315815', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-28 09:06:38', NULL),
(884, 'zyad', 'zyad.ghobashy@gmail.com', '0000-00-00 00:00:00', '60de9011ef62598656c18e7e62200b190f0dbc75160689cf23c257c7047a5f70:cHbjbVm1Hs4tNlKEPjk3TtKmkBVyBsTT:1', '', '', 1, '', '', '', '', '55434679', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-29 15:40:54', NULL),
(885, 'Darrenwed', 'zulzackaryaeva@yandex.ru', '0000-00-00 00:00:00', '53c21219dc5c1eaeb29b54a092f469079a16c51dc04fe4d95a49bcd1fd819509:jZReqJkG2yK6uPwoeXynVTQuo27vC2yE:1', '', '', 1, '', '', '', '', '84318122353', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-07-30 05:42:53', NULL),
(886, 'Fahad', 'fahaddalvi@hotmail.com', '0000-00-00 00:00:00', 'a3d5e8dba8fffe1849f798beedd6e05ba5392d93be5b5a40ab614805d5d882f9:DbGskVsn3fHz8meE5jrHL4ArPgnx01E2:1', '', '', 1, '', '', '', '', '66436434', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-01 10:59:19', NULL),
(887, 'مشاعل', 'joefel222@hotmail.com', '0000-00-00 00:00:00', 'c684b15e62d46df154234109ecf74abd1ee5ebd968bb62bbc649740f76443905:Q97PtXVBvR7Mz4ILBMdNKvrZCTP2qoKY:1', '', '', 1, '', '', '', '', '55344463', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-01 11:24:10', NULL),
(888, 'Almaha', 'online2020almaha@gmail.com', '0000-00-00 00:00:00', '58a5b698664351e8f85489723c6e5055528a94bb76c38f49f1370c4afff54e80:gQBSmD76g2b01fu23OKt0uA4A7U1l5xY:1', '', '', 1, '', '', '', '', '55853505', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-01 16:43:30', NULL),
(889, 'BarbaraHouck', 'zackaryaeva@yandex.ru', '0000-00-00 00:00:00', '8a08279db7ea2a064262c10f963df7a2f344ee2cbe7123ec07e845f64020dae7:RxA8rB3S4MGCPGWfPEkdYsPloVu6uWCM:1', '', '', 1, '', '', '', '', '88431561915', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-02 00:58:02', NULL),
(890, 'GarretEvorp', 'temptest913666639@gmail.com', '0000-00-00 00:00:00', '13e4cf69ad7614dc30e86f0462e7db7e1509263f151bab1e5ea17570d1a5e90c:WdRuOdsEK6cVVAnBAuVb09X0yPPY4nuh:1', '', '', 1, '', '', '', '', '84668684748', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-02 12:22:43', NULL),
(891, 'جاسم', 'jassim70389512@gmail.com', '0000-00-00 00:00:00', 'badca22c044ed19e2a409b0cd30bd2d4a40b7f96bf2416d219026ac8b8d374d8:QfEMsTgbtjb8IAniSecq6im1yJhRlRhd:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-03 20:13:48', NULL),
(892, 'محمد', 'mohamed95alyafaie@gmail.com', '0000-00-00 00:00:00', 'e7ae758e25b5242971f9660a7a06b9a0452a94120abae8e0437b87b3604773a4:F4LRdoxexybPucTdyN09e1ZOIFgJ9bH1:1', '', '', 1, '', '', '', '', '33900716', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-02 16:25:01', NULL),
(893, 'Hagar', 'eng.hagar.hussein@gmail.com', '0000-00-00 00:00:00', 'ee471cd61e3073c500953a5dd17de92e26fa5a5a70cd8746f9ca6ac3dcdc7789:Yg2nrfrOb5GASQcqvk7dyjeio86Oc3pK:1', '', '', 1, '', '', '', '', '50343839', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-02 17:44:22', NULL),
(894, 'ام سليمان', 'awhmq28101992@gmail.com', '0000-00-00 00:00:00', 'e04bf5d0831e60b4bf8d6b4669136b6c5267dd99ac68ba67ae3162898fa5e786:jShZU7iN20w2Z9fZMuBMLSimUN0kln6d:1', '', '', 1, '', '', '', '', '33688336', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-02 19:33:51', NULL),
(895, 'sadia', 'Sadiyamansoor4@gmail.com', '0000-00-00 00:00:00', '61bd2003c0b537b066bb0282a59d51882c735ee9e29face57de46f92e0ff80e8:odixaY9O7PZtvZPHjAggdpm8H1p1YUJ1:1', '', '', 1, '', '', '', '', '33998132', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-02 22:31:20', NULL),
(896, 'جاسم', 'jassim.salah12345@gmail.com', '0000-00-00 00:00:00', '5b6260cb33ca91ffd4b1be5c7bb4d8faf5cbe80f85c35f9a1c6c81dafdf2038b:whGgN5PPvxW257D6bX1btX2k9cbGBYgm:1', '', '', 1, '', '', '', '', '70389512', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-02 22:40:24', NULL),
(897, 'جاسم', 'alyafeirahaf804@gmail.com', '0000-00-00 00:00:00', '44bd69b261f71d41cf2b9baf56247bed14e4e5ffb689f9b94565d429d3c25b9d:1KxZTvD1jyw46l04ZdYBh5Vy3NKViIYJ:1', '', '', 1, '', '', '', '', '70389512', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-02 22:49:36', NULL),
(898, 'coupon', 'Coup.umslal@gmail.com', '0000-00-00 00:00:00', 'a558c74d323cdb4b221142a3776490bd3cad0e49847740c9840c5e6f02593ed9:bHqqnC2IR2yHahYUhH21tNVp9TIfAu8q:1', '', '', 1, '', '', '', '', '5088 8680', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-04 11:36:39', NULL),
(899, 'yasir nyza', 'yasirdoha0@gmail.com', '0000-00-00 00:00:00', '4583e16df99b9f92c1b7972a210f7fbb7a6970c8d1539a545922b98dbed0529d:sGyHJoAilQCeyLgk4WMRjou7e1FrVkp5:1', '', '', 1, '', '', '', '', '50139797', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-05 03:05:01', NULL),
(900, 'Muna', 'isobusny@gmail.com', '0000-00-00 00:00:00', 'b450ccbe360168ed562fb4e7d025d74c60e92df9800f5cbb93b1dddbb236f3be:M6Ej0nBSZ2kVfFOjZo6WGpiyQInVtvGn:1', '', '', 1, '', '', '', '', '55059916', 21, 19, 0, '', '', 0, '1', 1, 2021, '2022-07-12 18:49:31', NULL),
(901, 'مي', 'mai.gaballah2016@yahoo.com', '0000-00-00 00:00:00', '22790348f15a69d29564bfe929698ae11f6614b0aff9f28dd17153483ec95879:rLGrBoGkdFELFXKQLrR4BWvJadsfRoSw:1', '', '', 1, '', '', '', '', '50062554', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-05 22:23:38', NULL),
(902, 'Terrybog', 'anna.frin@yandex.com', '0000-00-00 00:00:00', 'dd01ff21fdf5dc58e37b7b303dbeb46457e483c2cad4214e830d867208032b43:s6v0oLlS5TauqJHf7bM5WlYywpt289wk:1', '', '', 1, '', '', '', '', '84349168677', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-06 03:07:24', NULL),
(903, 'Allan', 'allanatinon@gmail.com', '0000-00-00 00:00:00', 'a78356eedb46bf1f248c873d9c55554784df454b4a1bd2bd4cfb39b8da647a55:lAifefCF2SQsBDrnvtOdiz82aNXsnNvj:1', '', '', 1, '', '', '', '', '33845578', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-07 00:24:07', NULL),
(904, 'Glennwoopy', 'gerbert5456kk@bambo-mebel.top', '0000-00-00 00:00:00', 'ed0621fc70dce9fa8d23f5200c2bfe0648bea796582ed183fe05ea321aa1e507:uNYll7elNRpipG4vYQIGgpORbZoXNtFP:1', '', '', 1, '', '', '', '', '84242275926', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-07 01:51:20', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(905, 'Rebeccaweess', 'daertr.frantz@yandex.com', '0000-00-00 00:00:00', '804e51e3744388d46413683e4cb9c4cd50ab9a30445e463fd2434fc2f724317f:q4mkG5KeBQH4rFPuZSKvqbQp6ceiO0kE:1', '', '', 1, '', '', '', '', '88525794228', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-07 02:11:23', NULL),
(906, 'ahmad ', 'ahmad_alariny@hotmail.com', '0000-00-00 00:00:00', 'e735212a4bfff7917da6d50fdc56fe47bbee867bd779833b16d47603180b8b08:00kLbas9boEvC8m367Zke4u8ttstSrV3:1', '', '', 1, '', '', '', '', '50213295', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-07 08:09:00', NULL),
(907, 'eslam', 'eslam_gaballah@ymail.com', '0000-00-00 00:00:00', '4bef1d75ab8dc751c85110280b8d25ff0c979a1022ef522de4e9c7a2fdd56811:YZvlOvxjgz92ULGQGUlZ12xBlkghniIr:1', '', '', 1, '', '', '', '', '77707823', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-07 10:39:04', NULL),
(908, 'Sam', 'samsimon88@gmail.com', '0000-00-00 00:00:00', 'adae9c5efdb19ea939f5f34b708f9eb8197360a77bb8c5fad7ce0f559b573b85:wljCGYZ9wPNjmdqJS4ksFP2x8hTaULiv:1', '', '', 1, '', '', '', '', '30574285', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-07 12:42:59', NULL),
(909, 'Romaysaa', 'romaysaahamdi@hotmail.com', '0000-00-00 00:00:00', '105c4bc839a7206deed6bb8adaf05ca68eb29a9e380e448d28d687df766d6179:Qvr78480112VIo2p2BEgIO6C2kNkvTFl:1', '', '', 1, '', '', '', '', '66326629', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-07 13:53:00', NULL),
(910, 'Muhammad Amjid', 'amjid.noor@gmail.com', '0000-00-00 00:00:00', 'd066d117ac9fffe4d86e75c59caa83f2d8dfb87d3906609e75ccc0897347ebe0:wr1YuabCW8iYua6gtkJHJDOO6ZHdhS9a:1', '', '', 1, '', '', '', '', '55843855', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-07 15:43:28', NULL),
(911, 'khaled', 'kad.na551@gmail.com', '0000-00-00 00:00:00', '233576969ad20ff3f0540ac327eb1c886227fab682b8be561bf238240b24ddf3:14gjnibdiCS5i0aAaKghr39CuJVrFE1i:1', '', '', 1, '', '', '', '', '50535150', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-07 15:58:51', NULL),
(912, 'ali', 'alooy_1909@hotmail.com', '0000-00-00 00:00:00', '35fa14125fac4c5630a8cd40472bc3ad3cb79660c012798059fe77ef14c827b9:xjmM1l2RERi2O9uhNOvbmgAtElBMvjZD:1', '', '', 1, '', '', '', '', '33262537', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-07 19:35:38', NULL),
(913, 'amira', 'smiri_amira@yahoo.com', '0000-00-00 00:00:00', '33e7b72a9d0eb5aa9dca00cf7653892f522486c3834f483e5338d0117ea5af76:Ew4EBHCkfisFAic3p8Ulquau9WraOFSt:1', '', '', 1, '', '', '', '', '55625788', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-08 05:00:59', NULL),
(914, 'Manal', 'manalelsharif0@gmail.com', '0000-00-00 00:00:00', '951ec4eafc27682c276aa40546b02bf1d3ac0995c6a6dae0d2b4109bc0eab442:rtnyZOzs5mIkfDFzHjcvvrmErcsCYaw3:1', '', '', 1, '', '', '', '', '31033321', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-09 05:58:15', NULL),
(915, 'Robertjok', 'humpsephcentsu1950@dizaer.ru', '0000-00-00 00:00:00', 'c54072a4a8871fde4438ca7d770dc9a9a5c477b0c300f18e4aec9a2a841fd856:lzo3C0ch56yAEO1AzMtn094Yv1Nh40lN:1', '', '', 1, '', '', '', '', '89383558115', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-09 16:36:38', NULL),
(916, 'مزنة', 'q1q888@hotmail.com', '0000-00-00 00:00:00', '0dc28a0b1aa4c515f7428e19339388e86aec3006fcf59fbae1f5812ba345d6cb:IVITAxMK3o8Z65Xk5wfaO2wCFUoaRjF7:1', '', '', 1, '', '', '', '', '33128224', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-09 17:21:33', NULL),
(917, 'Farzana', 'dilfarz@gmail.com', '0000-00-00 00:00:00', '885c84c3d3ffc3b2a742cac5f5ffd3d224e7518e230f9f7b5c3da8c836395854:ZYcNUOZ9cFm8HyXejEG6lgDYuhvjX1WR:1', '', '', 1, '', '', '', '', '33865233', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-10 23:13:10', NULL),
(918, 'Gladysbeexy', 'dbu10082021s@gmailbd.ga', '0000-00-00 00:00:00', '38583fd03ce82bf9ccee052ece340a345ca8b734bf9d59506291fc9996683ec8:3JUoIKp5afBOFmaw2WNL88F1lSAeNahC:1', '', '', 1, '', '', '', '', '87171615681', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-11 03:00:18', NULL),
(919, 'KevinCak', 'sarakn12@mail.ru', '0000-00-00 00:00:00', '15e8d42ad1e9459be928e044eed3b3b6d0edf1c52c4fefd2185ac6b1c8c6054a:JRbxTDsiydVRHYpf9Ot6bMnOkd7rTTcd:1', '', '', 1, '', '', '', '', '84155183588', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-11 03:52:57', NULL),
(920, 'Calebvarty', 'svetlana.ivanova.19841@mail.ru', '0000-00-00 00:00:00', '359fcdfdf54decb5bf95fc267eaf6c68ea000fd859b03bf83afc12a65abbbba9:cynEQ4JDdwPNWevyLZiGaGRK0EeNBBHs:1', '', '', 1, '', '', '', '', '88597155811', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-12 14:57:24', NULL),
(921, 'dana', 'almoz3@hotmail.com', '0000-00-00 00:00:00', 'f8b511ae11bd9e54f479103e2d59b10f50ad27651061efaef3a6edb56f47ccd6:sXSvwqeZ3EP4R7hJdlI89ew8FIWXxirn:1', '', '', 1, '', '', '', '', '50639845', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-13 13:21:18', NULL),
(922, 'Laurajat', 'ansdna.frkijin@yandex.com', '0000-00-00 00:00:00', '1daff88ecad09413e4e067a89e5e4f65caf0f0a9ce7c8004741900a60fdefc76:BNlsi3c540885OszUgv1rv2coJn6wJ3f:1', '', '', 1, '', '', '', '', '83826896734', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-13 16:52:03', NULL),
(923, 'Yara', 'yaramohammedabdulla@gmail.com', '0000-00-00 00:00:00', 'f1d2411c8c556af2d1d57b4a4fce33215588ad752dc2e20b98f0170d82f36688:GMqfDAJCKyBazcaU86WCe68rdAs1aSbl:1', '', '', 1, '', '', '', '', '55454033', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-13 19:56:21', NULL),
(924, 'LeslieDof', 'zasplav@mail.ru', '0000-00-00 00:00:00', '1bac5f37bacf28bbb38f182e2914d12a2c16d77328de29a073e04b82078bcf86:Piw5h7g9kEDQ7ZVkVAfYVpXOgcSzAJyA:1', '', '', 1, '', '', '', '', '88746958597', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-14 07:04:36', NULL),
(925, 'abderrazek', 'abdo137278@outlook.com', '0000-00-00 00:00:00', '0a6c6009de3419c9050fa56c3fe16b13cbd01765493843af4231f63e9254a9a4:y3GDMyAwBmK6KK0lJq7m1wYE8KF5Weiz:1', '', '', 1, '', '', '', '', '33814860', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-14 14:07:22', NULL),
(926, 'Montessa', 'ayz_santos@yahoo.com', '0000-00-00 00:00:00', 'c4f638f31e510a6a3d9b849f91b6df45671e4be92d0d37e34e7037770719d0b3:H9XC11Q1r2eoZ5O4ftS7cdanW8t2ukH2:1', '', '', 1, '', '', '', '', '30258211', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-15 06:13:17', NULL),
(927, 'Mohamed', 'mohamed@dallahqatar.com', '0000-00-00 00:00:00', '3e6a6a128b3ccca48cd88c4908b78b47c222fbeb17bdae8da2c9ee296fc88ec7:KtXY9ilo0AmYA3C72sM9gNCm48jkWJbm:1', '', '', 1, '', '', '', '', '55590179', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-15 11:09:44', NULL),
(928, 'Tempomos biorb', 'temppoo9999@gmail.com', '0000-00-00 00:00:00', '966fe80c41296bff57bd2a5c5acd497675b3550d575dfdf159378af9e3b9115e:t7fcZOcUrdjI24vok3ED0MYdkM3ACDKj:1', '', '', 1, '', '', '', '', '82419447849', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-16 06:28:57', NULL),
(929, 'عبدالرحمن', 'wlhan1994@gmail.com', '0000-00-00 00:00:00', '36c71dec4990979c914b7e8e2f01002e3eca7a9128926f4d2c73f1f3f50d909f:rL0Yk9F9CbGcq3TXQqnRnvI0SLrlGfSr:1', '', '', 1, '', '', '', '', '77222217', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-16 16:28:47', NULL),
(930, 'صالح', 'salehmohsen1979@gmail.com', '0000-00-00 00:00:00', '6518ba1197f1048c19c62d7d35c8a81b15e263dcda7392b0daeaa40eebd06f38:fPNICvUIT4bStuSW5S7r3CV4ds6wIKDi:1', '', '', 1, '', '', '', '', '30301838', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-16 16:55:12', NULL),
(931, 'Arbia', 'biabjeoui@yahoo.com', '0000-00-00 00:00:00', 'c8223c778882c6cded8fc53f352d9901b45f2838396a680d8493c0a4743a69ef:SIPypSAt0iYR68SVZ0sk9GVK1I8aKRJ5:1', '', '', 1, '', '', '', '', '66001917', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-16 19:00:03', NULL),
(932, 'Milan', 'djordjevicpn064@gmail.com', '0000-00-00 00:00:00', 'f4a33ff191ce706e0e3a8ab4676f0a3898b8185af5824d681eda0971be813d5f:SOaK54617d7eZXfdJcJJ3RQVPaSQqClb:1', '', '', 1, '', '', '', '', '50678722', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-17 00:34:30', NULL),
(933, 'RobertMip', 'i.yakub@jodas.enersets.com', '0000-00-00 00:00:00', '1fd8eabdabe4a244e8e69686735b3df64b51137bea852952a1ab4661d47f7437:1DUL848CgRDTy9WDiIludHANRBHsrM50:1', '', '', 1, '', '', '', '', '83113462799', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-17 01:29:15', NULL),
(934, 'Matthewdup', 'v.petrovich@info.avalins.com', '0000-00-00 00:00:00', '082e9a5866b8e1e9a08d3962de733dcb975ddcfc3e4316ee92b67135a45909c8:GdXgJP4llgN4YeB92kCUihbQEASz9lf1:1', '', '', 1, '', '', '', '', '81366462957', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-17 01:29:15', NULL),
(935, 'RicardoRor', 'k.orlova@den.efastes.com', '0000-00-00 00:00:00', '92bcb0718defc2e745c46c0a96316dd34b14bf44eb1dba07e4b0a1eee1f49348:c6LLlu386UaCpCvZz8VVf3VKLSRkMASd:1', '', '', 1, '', '', '', '', '89569557648', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-17 01:29:16', NULL),
(936, 'Mohammed ', 'mk_alrashdi@hotmail.com', '0000-00-00 00:00:00', '8290c18df528338666e8671c3cb49b135185a2c4559d85994ed10be0f9ce0f23:oe9m3EQ8fmnYdDwA8ywHkqSpQsJmhVEX:1', '', '', 1, '', '', '', '', '55123588', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-17 01:40:19', NULL),
(937, 'Fahad', 'faa.5@hotmail.com', '0000-00-00 00:00:00', 'a96322fa8c43f9426edcb2894b23e11d13e6a22c3e613e2c5694a23c42182947:j34b8tkq2XggfxvGs3G9ITs0I0790F1m:1', '', '', 1, '', '', '', '', 'Ff123098123', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-17 04:08:13', NULL),
(938, 'Ahmed', 'hamadaasi2009@yahoo.com', '0000-00-00 00:00:00', '8fa2cc56844dce78e7342ace7b600cecfd647871fcff114cbd45574ae708eece:YKRPLEzdKlxAcemtPWSCzNHjBMiYD997:1', '', '', 1, '', '', '', '', '74777025', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-17 05:51:48', NULL),
(939, 'شاهده', 'sahidaqtr94@gmail.com', '0000-00-00 00:00:00', 'c991b3b7efed59bbee9ff6f1c6a98099dee7247d6c6d105d49af510d9615524b:NpYzRUuzDTTZRJnOkCsVQVdZdiHjDkPU:1', '', '', 1, '', '', '', '', '77747572', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-17 10:38:07', NULL),
(940, 'caroline', 'rosalcaroline09@gmail.com', '0000-00-00 00:00:00', 'd090ea8d74b9e97dd0c11e8475db0fdf4d814d292bc30b160c729897d1397225:wvEBSJf0VrfTDsgmEU6eYQH6BEFct1Rx:1', '', '', 1, '', '', '', '', '77090592', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-17 11:18:47', NULL),
(941, 'Aymen', 'parcephal@gmail.com', '0000-00-00 00:00:00', '78699776a6717f71c0491b6cd42b4ad1193314352659ceb9ad41374fa7cea6a8:1IUbkGhV6o3AxG3D3wlaezEm1lRELT55:1', '', '', 1, '', '', '', '', '33024576', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-18 13:45:48', NULL),
(942, 'Frankvop', 'quicomvebum1962@dizaer.ru', '0000-00-00 00:00:00', 'e84403cd9fe166c0802b2653f85f4f7afc28da3c926529861598547ce61443b0:QGfrKWDdOx5bGTTk9cR5XOIJRGjIugoe:1', '', '', 1, '', '', '', '', '83791125722', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-18 17:19:46', NULL),
(943, 'BertramTaums', 's.fikin@denis.enersets.com', '0000-00-00 00:00:00', '6ce0b3732c87befedad39c341116bffa4728b8aa7c31deabe0b2db2007dd6ed1:xfP6xiFrYPPGiQwyZzGkSZviZ11da0qS:1', '', '', 1, '', '', '', '', '82361198346', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-18 18:33:22', NULL),
(944, 'JeremyDrini', 'ranmahorback1983@dizaer.ru', '0000-00-00 00:00:00', '49da53b9b0f10353e21ee183be513f1ecfeb7ba5d46c6035eccb3898746ee91d:h46OfKvLVlH1YqLNUzkcBDCW8iXoLIRy:1', '', '', 1, '', '', '', '', '82276816883', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-18 18:42:34', NULL),
(945, 'Staceycof', 'a.milnichenko@a.avalins.com', '0000-00-00 00:00:00', '619eab63cfb3901c6fafcfbf3a6bf2da1132df62655b7b164c0434a68eebafbc:u02ETvMy9Pjwtjlvu3Pll5jZgLG8GfWc:1', '', '', 1, '', '', '', '', '88293687843', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-19 05:49:50', NULL),
(946, 'zainab', 'nesreen_2020@live.com', '0000-00-00 00:00:00', '3ad92e71aeb1f100bf731888b7a9d562313b31532d4d1e6f83cbc33c369344bf:DxBCSxRYlJ9p82h59Yfltw1P8LsJ8lFt:1', '', '', 1, '', '', '', '', ' +97455576262', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-19 12:23:58', NULL),
(947, 'Mohammed Abdulla ', 'qtr.alobaidan@gmail.com', '0000-00-00 00:00:00', '82cb7f2b6007f1fbc7f0f9e4c267afd3c622357cc69ad89f6fc33f71a4d984cb:JzteJvFVxRzP966nPWjeGzhIZLs0e8Jk:1', '', '', 1, '', '', '', '', '33337760', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-19 15:44:16', NULL),
(948, 'Tanveer', 'tanveer_anwari2000@yahoo.com', '0000-00-00 00:00:00', 'bfe9f11dacccc48a3a384aec7c78e40ca88a17e4cda924f31d5427c8d0ff75a1:cmhsMngvymdSgTInrXjyIqmuZQKSt6Ut:1', '', '', 1, '', '', '', '', ' +97455099843', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-19 17:35:21', NULL),
(949, 'Khalid', 'al-3baidly@hotmail.com', '0000-00-00 00:00:00', 'ec1a321df4c60758325a9d3a575eb8327c4bbbf7cee0d11cdd4fe184d8f21344:YkrhkviJGxVx4yy0u3eUKG6XBrc2nvTj:1', '', '', 1, '', '', '', '', ' +97470403403', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-19 18:55:32', NULL),
(950, 'Michelle', 'michelle_marata@live.com', '0000-00-00 00:00:00', '1150ac7203e2119cce0e8d931f73a92387ec438539e19f48528067f5e5b5ac33:CIJDagDgoTELtLKH57x5j1MW1b0Cy8RN:1', '', '', 1, '', '', '', '', '70617283', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-20 06:23:10', NULL),
(951, 'Elene', 'elene95.zaq@gmail.com', '0000-00-00 00:00:00', 'ca58f09833742ba96f478b144e81e8aa37114b24e0b908b7e066d28e80e9a9e2:vKFBASszrnRr1VaY0h6D7uq0re0UOLiQ:1', '', '', 1, '', '', '', '', ' +97430021096', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-20 10:05:52', NULL),
(952, 'Mane', 'manegoes@gmail.com', '0000-00-00 00:00:00', '935d43fb412b6fd963fdd071186330ec1f49a6fef78485cbce7899394d7bde05:Yh8fHtxTWMSrhrCb6GlQ6KEl15BxB4ca:1', '', '', 1, '', '', '', '', ' +97477111558', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-20 21:04:05', NULL),
(953, 'Rebeccafum', 'zasplav2020@mail.ru', '0000-00-00 00:00:00', '5f18d2a3107534a64eee5bacce209bc3bc5c0118028c37c78b8f8a44511fef29:UxCt6PZOBizyBhEXVF30LBtaWg0qYJ2Z:1', '', '', 1, '', '', '', '', '83671123528', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-21 01:35:50', NULL),
(954, 'Donaldkaw', 'cinospallip@mail.ru', '0000-00-00 00:00:00', '771bb891c5357928afc4a5d376212fadd41a7d741cb769864c35ec6c5a601b9f:cC6MIhrvib2fubadvPprnrXIlhVwQc0G:1', '', '', 1, '', '', '', '', '84975195132', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-21 04:14:00', NULL),
(955, 'Elvira', 'elvirabautista0814@gmail.com', '0000-00-00 00:00:00', '166c90470c4273393177bc174c5b8dc22416ab4388bdc21a58dd39a28e12e7b6:HbfqvzfvkyV9UcASLRWX6aJSB1EceDuU:1', '', '', 1, '', '', '', '', '70737573', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-21 08:26:00', NULL),
(956, 'Ahmad', 'Ahmadani123@hotmail.com', '0000-00-00 00:00:00', '2cbf215ec224c55ee0277cf0a54f87d0ecba02425a7805fe9a297afecd1b86b1:WUwQcmyIxTToewmFd4UUm0NzLTWDHigm:1', '', '', 1, '', '', '', '', '55801818', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-21 16:56:01', NULL),
(957, 'yasmin', 'yasminjaafar1979@gmail.com', '0000-00-00 00:00:00', '28ee22b179a3db8595ec0e1dee4c17fbfc730e4f3c4a02bcb64305389414bc0a:rtsVHw8xmVk4wbFfTAjsh3KZgEqQBK51:1', '', '', 1, '', '', '', '', '66712931', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-21 17:41:08', NULL),
(958, 'أم', 'majdyelrahmani@gmail.com', '0000-00-00 00:00:00', 'da70f815f53ca9493b2a07058be7629593314b503ba5547e6d87f791eec7eb7c:etNKG0yFFJnM1c8aSST3tp6SfCNFm1Bx:1', '', '', 1, '', '', '', '', '30995562', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-22 10:35:13', NULL),
(959, 'monir', 'monirjorna353@gmail.com', '0000-00-00 00:00:00', 'f7f545992ff382100ae957d4c9296e4c396328da753ef292cfd35119c3a26673:KCNe0mRyzRDjtFDjb3vrvOBNqBzEpCC5:1', '', '', 1, '', '', '', '', '55840290', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-22 17:26:42', NULL),
(960, 'Abhilash S', 'abhiofficial02@gmail.com', '0000-00-00 00:00:00', 'cad2f02e701f62fe9dbe4c67f8ff84c4bb48af2fd6edec43fe7b6ddc2796e5dc:yAvKahMK9ZqcVinNRbkhxW4XVXXVCz63:1', '', '', 1, '', '', '', '', '30339796', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-22 19:45:22', NULL),
(961, 'Shazia', 'shazia_mahmood08@hotmail.co.uk', '0000-00-00 00:00:00', '2c689718581a239bba1bdba76e14d8d6ace7324a76b043ce3882281e14c78964:Bi1Wj3VNSBeE1DzqWJ6XRBXvg7RksJNP:1', '', '', 1, '', '', '', '', '66918298', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-23 08:46:44', NULL),
(962, 'John', 'john@eample.com', '0000-00-00 00:00:00', '0c1e8b83f4756c0a772e9dfc2addfe59e44e67993b6e4a4d1b4d0c660aca880f:PvDr9fDM64AltTya5S3JH1BxNkhIwcLo:1', '', '', 1, '', '', '', '', '7678578835', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-23 10:11:09', NULL),
(963, 'Amir Adel', 'amirrradelll1000@gmail.com', '0000-00-00 00:00:00', '483c7778a1451b986746a0b9a40da09056396675688585174b3dcd5b3242aff6:WlBizEZoTjFghjFXF6jBd5fF08LnRq9N:1', '', '', 1, '', '', '', '', '31001877', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-23 14:58:26', NULL),
(964, 'DavidViabs', 'sa.ndy.a.r.e.nsy.hai.ry@gmail.com', '0000-00-00 00:00:00', '5448f5cc8697883b5723c7058f42d2a9ff5c22ab8a22e61fb3fb42b959370d64:OsXuEaPChCQzHwRVqiGTmFr04Nvyflci:1', '', '', 1, '', '', '', '', '88138574662', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-23 16:43:56', NULL),
(965, 'tamader', 'almannait@hotmail.com', '0000-00-00 00:00:00', 'af38b56c28efd785aa04665ae45ca7eb8a8ff0ae15e136033ed626e3a8c8d246:4SRhnS4Uweh2bKMQjYi2KWBfc55vn97G:1', '', '', 1, '', '', '', '', '55001196', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-24 08:16:45', NULL),
(966, 'Amreen', 'amreenstar01@yahoo.in', '0000-00-00 00:00:00', '8901dbd941b34557a5756d6073d1d732214949ee13cd2e46a1847f1298294baa:K1fMV4jmJaxsBMJ3JI3iR7xmRCwg6My6:1', '', '', 1, '', '', '', '', '55617909', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-24 14:56:08', NULL),
(967, 'Mohamamd', 'mohammedshehadeh@gmail.com', '0000-00-00 00:00:00', '15e55da23b908b4c7bc81930e3027f65177f8f5d9610d26100b349cb4f5d3b5f:FinaLURA6PAJdmX4XqlrmOn9RotYcgZj:1', '', '', 1, '', '', '', '', '66761056', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-09 07:27:38', NULL),
(968, 'عبدالله ', 'vxx3044@icloud.com', '0000-00-00 00:00:00', 'ffb9d71d17486fb231849620a97879bb181fb9778d9c4fd260fa9414f80d26a1:RHqfgQDqrAFY8Otm5sKFovTKJ0bATA7F:1', '', '', 1, '', '', '', '', '30242488', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-25 16:33:23', NULL),
(969, 'Randa', 'randa.rawashdeh.y@gmail.com', '0000-00-00 00:00:00', 'e1ebd0db47d230403282e8da8fa1f78213841ebc2ecc067152841c08e70959e3:MkSYxYBW6hoi0FVlYdSqr6n1bvGvvvZG:1', '', '', 1, '', '', '', '', ' +97450022446', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-25 18:40:18', NULL),
(970, 'م', 'do7a@live.co.uk', '0000-00-00 00:00:00', 'cf3f737746adf3c05b01fc0420ea111f939e9d5fc73fad32bde89624dce64320:5PiIaGu18ZzZZK7AboNXoKTQcxKidJGt:1', '', '', 1, '', '', '', '', '77099099', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-25 19:05:52', NULL),
(971, 'samar', 'samar-naji@hotmail.com', '0000-00-00 00:00:00', '84be5d3d29980774a54596584585d713d78d54946e7a8199d987bc6938bdeb20:NIWqjkUzBvZKC1bFehBe0Vgwn6H1ZBTD:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-26 07:34:09', NULL),
(972, 'rizwan', 'riswanaliat@gmail.com', '0000-00-00 00:00:00', '8257d954cb63c36e5d8215cd4f855d2f88090a18d62d9128049c90e6348f065d:dTu5XQPXtYv5ERUN7yjhZ1cJMA2jp062:1', '', '', 1, '', '', '', '', ' +919333005005', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-26 15:05:56', NULL),
(973, 'R', 'rfalabdulla@gmail.com', '0000-00-00 00:00:00', 'b5683bf051998fa737e074acea895fcb908d7621f7d0ae5ba556dc1f25a7115d:PAkfXWMj4B1WxSQKYvhFDz129EFzeLfu:1', '', '', 1, '', '', '', '', '66188344', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-26 18:53:49', NULL),
(974, 'Hamda', 'alnaimi80@gmail.com', '0000-00-00 00:00:00', '2b9637e064a0fcdc1ba4d09f9012b436ada5fda1db84eb30830492125e02e0c2:ooCBRBGawbf6iTGw9F76NfQGjGxBysPU:1', '', '', 1, '', '', '', '', '55773772', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-27 16:14:06', NULL),
(975, 'CraigHak', 'l.kondratev@a.avalins.com', '0000-00-00 00:00:00', '30bd3021928b8f97f36ba7ba465960b2acc78fb14ba65668787d3f2b7bcb4bb5:yQ64tEpcXj13dA9CnzOqIbfbiSvHm7ZJ:1', '', '', 1, '', '', '', '', '87325595529', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-27 21:03:59', NULL),
(976, 'DianeDiaxy', 'bleedlo83@yandex.com', '0000-00-00 00:00:00', '965363d2b3ba721ebe50a818675b11437842045407a432da271eec31df32e08a:GkvxPBUpKX3oQGkr4sjg2l2p20AZpniY:1', '', '', 1, '', '', '', '', '87868141283', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-28 05:53:24', NULL),
(977, 'Prajitha', 'prajitha.catherine86@gmail.com', '0000-00-00 00:00:00', '6df0cac3ab2976eb73def25600baf7e264dc919c0f18d6e82f49221cbfa16a75:pwZqp3oW73AaXwwMQY63Ur74WJ9HyXF7:1', '', '', 1, '', '', '', '', '74780990', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-28 09:13:14', NULL),
(978, 'FELIX', 'felixmatthew84@gmail.com', '0000-00-00 00:00:00', 'd587cdffe3429a0370bfbda367e95c28e445df85979eecae1d9d391fd2e0a639:SIUxaple9sCciNAHKhxGOrxlmym9E8kL:1', '', '', 1, '', '', '', '', '74780990', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-28 09:20:20', NULL),
(979, 'GRACE', 'nyamburagrace19@gmail.com', '0000-00-00 00:00:00', 'f5eeb18f9f18c55304024b5073f2891647df37636b0430681d9a6cfb77da3bec:N0aLyx8oni0NuI5hUVH6xMf3MMxdNcrv:1', '', '', 1, '', '', '', '', ' +254704721338', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-28 13:53:00', NULL),
(980, 'Eduardothelt', 'a.drenov@a.avalins.com', '0000-00-00 00:00:00', '5f418b82f4114741e321e0f31faa46f3178b44dfc493ac346d673391580da237:ynXY4Ht9gogeuYpzozpEacXbIIEDncjL:1', '', '', 1, '', '', '', '', '83886382673', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-28 19:20:13', NULL),
(981, 'Andrey', 'Stepanovandrey601@gmail.com', '0000-00-00 00:00:00', '4e06af898da030e0b3ba777beade0a43c048e394f7bad46b1434188bf6aabcd3:lnQYBlsE150xKGfS9TLhwLE52Bp9OjNx:1', '', '', 1, '', '', '', '', '66264069', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-29 11:43:03', NULL),
(982, 'Hamed', 'Hamed.hraiz@gmail.com', '0000-00-00 00:00:00', '45f4d876f4382fe0e4c9533019efce2ec4ad9fb2784a683105832f0340739935:vuExuCH4XOcfXlHlCNFZzcfg6NboG8Yi:1', '', '', 1, '', '', '', '', '55497714', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-30 02:38:57', NULL),
(983, 'Charlesrop', 'geuprepilin1951@dizaer.ru', '0000-00-00 00:00:00', 'e51f5da1e64fdecfb693e7dfdb20853401e28292edd306c1177f5fae24521f96:ZqqzknPoDSzNSFQJvgFs7zEmVnyb6CIo:1', '', '', 1, '', '', '', '', '86184598419', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-30 07:44:01', NULL),
(984, 'Muhammed', 'haneefaabid@gmail.com', '0000-00-00 00:00:00', 'f6beb819ab554d338051d940078f468f69355471887dbdf07b60b12d93722789:y0NZiL98kTyT8QEJxYkEp4x2zrDI9ElN:1', '', '', 1, '', '', '', '', '55441978', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-30 15:43:21', NULL),
(985, 'lila', 'lila.qtr.78@gmail.com', '0000-00-00 00:00:00', '6dd3e120f7b4474384226891a27012f354e76964a2080be090f0fa047ba10dfb:3r87XD0KPMa38zr21SKufVYFVdP32hob:1', '', '', 1, '', '', '', '', '30072572', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-30 16:47:02', NULL),
(986, 'nehad', 'nehadalabbasy@gmail.com', '0000-00-00 00:00:00', 'b0fae47145bbd32a8891cffb1d24a8fa2745d3242bdc1da2dcf1defbb089b87a:oH2gqsRKvHv7Y87nHgbRlzGGSVAmzUf0:1', '', '', 1, '', '', '', '', '55975613', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-30 21:04:24', NULL),
(987, 'nijat', 'nijatalipti888@gmail.com', '0000-00-00 00:00:00', 'cca0475ec57bf84779031168e18a1aeffd380a6ebf36d8a8e8addb32f04252c0:p6n9gwoI6HiNhXPngYf7yeA0ysu38LA1:1', '', '', 1, '', '', '', '', '30405069', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-30 23:00:57', NULL),
(988, 'RobertedImi', 'leofinbanigs1963@dizaer.ru', '0000-00-00 00:00:00', '6365c3ad571f81fffab3ba250af6fc398e8ad133723554929171af4581c70885:SGUQ8HVApX82P9qQW7xZ0Tqfx9FgA2ku:1', '', '', 1, '', '', '', '', '81855719521', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-30 23:38:30', NULL),
(989, 'Elham', 'xx.elham93.xx@gmail.com', '0000-00-00 00:00:00', '65996883044549942a68d9871f8cc8289d2eaa40f92af5e35f0fcd66e33f2e52:MKcF4clrhPYXhhBG9MG1BNF8Fk42kMbO:1', '', '', 1, '', '', '', '', '33032242', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-31 10:12:03', NULL),
(990, 'Shaikha', 'shaikhaaljaber2000@gmail.com', '0000-00-00 00:00:00', '2b5387f93d956523336fa3c751426f6baabbe3f5e08a9f5c67dcb29611983898:qu8dF7NfVHw9jjMlnhcGZ8SfMshNPcI0:1', '', '', 1, '', '', '', '', '33885165', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-31 11:43:09', NULL),
(991, 'Mohammad', 'Mohammad.Saffarini990@yahoo.com', '0000-00-00 00:00:00', '0114439a2b343cbccb83b68a305292610a87c3d81e237e0270e0640fc1705712:I7lgI86JmaG2QYcWlwi96UxbTIZn7cR4:1', '', '', 1, '', '', '', '', '50193783', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-31 16:13:52', NULL),
(992, 'pauellsr', 'p.a.uel.ne.e.dwel.lk.h.aeyre12.850.34@gmail.com', '0000-00-00 00:00:00', 'a35e71ec554383a379bda4b06a5343f5be52c1a5d1139b01d576245c34737845:324WG09VNAdIFc2dg6f1yGXXvEPrB97f:1', '', '', 1, '', '', '', '', '83889963629', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-31 17:30:12', NULL),
(993, 'Saoud', 'sbm6@outlook.com', '0000-00-00 00:00:00', '14923e51031dee2e812792ec231d660bf80ff5fa2aec339e588e02ecbb0e9c7e:fxC4djq10HjzWWTdXiGZqFpyqz97dE9v:1', '', '', 1, '', '', '', '', '50055450', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-08-31 21:31:56', NULL),
(994, 'Marvin', 'marvinbabelonia32@gmail.com', '0000-00-00 00:00:00', '3bbed6e19183707e7851c02aa90a29fdd597ceb7ad427e97e76c48192ece00c8:6MvGa4Znl4aTSq0wJJNJ3DlLicIUJMUg:1', '', '', 1, '', '', '', '', '77571089', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-01 07:52:33', NULL),
(995, 'mohamed ', 'memo_salim@yahoo.com', '0000-00-00 00:00:00', '73e3507a010e17e17627943e0619a29e266e15f47025579cd11d9114c46964df:bej4K6IYY9TdZqUNO1N5DQGIHxeLfzkh:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-01 14:45:57', NULL),
(996, 'Sara', 'as-a-as2006@hotmail.com', '0000-00-00 00:00:00', 'c933b25a6d6aa467bb6e38a8b51167e49cc1dbbdf64ca48ca46953da607a27c1:uqtM5xA22vv6DIQfwqlJQtlUI440iHGI:1', '', '', 1, '', '', '', '', '55009158', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-01 22:10:22', NULL),
(997, 'Muhammad', 'shereefmohammedcn@gmail.com', '0000-00-00 00:00:00', 'f817b86b5fd08dfdc66f1eb2e59bd51f1e654d9aea65844ccc4ad2eda75974ee:uVacSsG0AK2GTRXYbGBXnadRyVkahtNU:1', '', '', 1, '', '', '', '', '30277102', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-02 08:38:07', NULL),
(998, 'tester', 'tester@tester.com', '0000-00-00 00:00:00', '8fd747c9b0b8df9ecbbd22ae5d4b2c8d35f50a9be0161db906a4c8e3e9bb11d0:xCJyShJb7atf8ku88vzvRnsfl7skrHtV:1', '', '', 1, '', '', '', '', '9870574738', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-02 09:29:37', NULL),
(999, 'Georgekek', 'i.golovenkin@makao.efastes.com', '0000-00-00 00:00:00', '597532d593b926ee007c2027b6a6bea3da99553df4cc9fb82b382f8317001f6d:GuzliBpxtS2jrYwm0Lv8bisRPgBxb73t:1', '', '', 1, '', '', '', '', '88489562893', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-02 12:01:15', NULL),
(1000, 'AlfredoCex', 'm.oreshkov@den.efastes.com', '0000-00-00 00:00:00', 'eedd391dbef1149280f92bab6de0233163823ad1a94c2c08a5c1cfd7c316c484:JnpQrFDvmJ0w2XPGetDHyELd7rHB1tfD:1', '', '', 1, '', '', '', '', '82313892529', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-02 12:01:15', NULL),
(1001, 'Donaldnub', 'm.defov@a.avalins.com', '0000-00-00 00:00:00', '3b164cafcdb0662f1a682f10701b2c868d790403715ead6b3002037b20b884de:6fSP2tSUYjfFrMHpFbvcRswrBBx27Qw1:1', '', '', 1, '', '', '', '', '88615849787', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-02 12:01:15', NULL),
(1002, 'TerryPaype', 'glukhina.1998@mail.ru', '0000-00-00 00:00:00', '94161146818ed1716a441b7230dc66c5e25bf1d5b4a83bf1644c32a2a8c980a3:7lnKi6W4ZIknDcNXoEE2fbPCJTXOwDrx:1', '', '', 1, '', '', '', '', '87735152357', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-02 15:22:12', NULL),
(1003, 'Ghada', 'ghada.radi@gmail.com', '0000-00-00 00:00:00', '0111fe4fede10649a8119906839145f975e22cbeb39e974cc0f71611c90d04bc:BYO9buCICxnbq7OSizGq06Vct47TuTti:1', '', '', 1, '', '', '', '', '77382828', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-02 17:12:09', NULL),
(1004, 'Shosho ', 'mei-alameer@hotmail.com', '0000-00-00 00:00:00', 'b203f993b06c2be5b097f233daa80add1fc3136e0ca2af6480c30846bfe2a6e2:0SxBpOPVCeFBP4wFR8TPYI9yJ5MufXPi:1', '', '', 1, '', '', '', '', '66550420', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-03 02:34:02', NULL),
(1005, 'vajiheh', 'vbkhaleghi@gmail.com', '0000-00-00 00:00:00', '0ab88a097cfccfd4030e6deac71eeaeb4a51af284f2cffb36233fadcc25f2e49:ttLEUcTzrPQA2xZG0iryqKZhxX1QpsTZ:1', '', '', 1, '', '', '', '', '55109895', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-03 16:49:07', NULL),
(1006, 'Aprille', 'aceroaprille01@gmail.com', '0000-00-00 00:00:00', 'f2c730a1e0285cae1a912a2e6436af77079bd1fe022bec7e685103fd47ffb3a8:NglTYf8wv5dE9DxYwyXFoDBBVjG3tkv3:1', '', '', 1, '', '', '', '', '30314601', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-04 19:46:22', NULL),
(1007, 'Robertproro', 'peappyzep@mail.ru', '0000-00-00 00:00:00', '60ccd259f1e2276a64d511e9c112f4f90e26f25538ec96a346b8e45328438730:peEMavaumwRz0zflcOMX6iPeLn4ySjH1:1', '', '', 1, '', '', '', '', '85471271299', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-06 23:09:14', NULL),
(1008, 'John', 'johndoe5@example.com', '0000-00-00 00:00:00', '4f7fed5d49978b909f97b01872d0c98f3dfff7034c1082a28a2d72df223ccaef:EDGqBH8bD1LyUQUIWcbRZ6SrlmlXzMEL:1', '', '', 1, '', '', '', '', '9045100841', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-07 15:52:37', NULL),
(1009, 'jasmin', 'sabalborojasmin@gmail.com', '0000-00-00 00:00:00', '40d0ab423a0fe1d0293db4fe6a6fc27230c04406039a180a48fd236b007cd803:WT8vhLOJsZU2IBureH3ucGbWWGgsGzDT:1', '', '', 1, '', '', '', '', '3318 1626', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-08 06:16:06', NULL),
(1010, 'jasmin', 'jasminsabalboro6@gmail.com', '0000-00-00 00:00:00', '2b0532709a38fb91da48b75ce5ed04d535100570f240805117826a8594e5889c:1aJIsup4IcX2CzrQViR3Uq8ay9WssEJR:1', '', '', 1, '', '', '', '', '3318 1626', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-08 06:15:51', NULL),
(1011, 'ام حمد ', 'sanforah@me.com', '0000-00-00 00:00:00', 'b46cf1be367c6f6cf54c20c3db1889477e78cd78982522ad412b04f7a8681465:1QDwaZwPT3DPtGL4FUre1COv75thifOt:1', '', '', 1, '', '', '', '', '33116451', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-08 14:37:24', NULL),
(1012, 'nada', 'nakhalid107@gmail.com', '0000-00-00 00:00:00', '7477e04cc52a4cf3c21776cd85f5e51a858c9ea1210dad2ee80581d9445b4a4a:NvisMzPnx5P1hVbsuDDPL8lzRVmhYiSI:1', '', '', 1, '', '', '', '', '33858811', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-08 18:33:12', NULL),
(1013, 'fatima', 'fa.alobaidly@icloud.com', '0000-00-00 00:00:00', 'd9e9697cfd62eb7a8108fb1bedf8b374531624908748447e70c2e85c9a4aae18:dnczi2NeXtZK9hUlA0M1Rwaa15buiUcp:1', '', '', 1, '', '', '', '', '50005725', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-08 21:32:09', NULL),
(1014, 'dicalits', 'zakaz.kraft@gmail.com', '0000-00-00 00:00:00', '18806b7053dd32521bc6adbb590b2b8a8e756b1ce0db0fff2d5f2362f5743556:bEv3eEdIIwhwFMtAzhFRjD6V5VlZMv6C:1', '', '', 1, '', '', '', '', '84642576687', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-09 08:03:28', NULL),
(1015, 'Lyes', 'lyes.boucherit@gmail.com', '0000-00-00 00:00:00', 'fab6a1f35b556be5c450673a251bd101a4826f7c513fb96287ab504c4fa816a1:QoceGHhFUU4UdEjOK2EKuqqB26PAjTOu:1', '', '', 1, '', '', '', '', '55787656', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-09 14:34:51', NULL),
(1016, 'إبراهيم ', 'emkh777@hotmail.com', '0000-00-00 00:00:00', '132427b346ccc71b0a79c100745e339fb3f1d6068072aefdcb62fbff63e1586f:VN4M7E5xuDfud0Yu0jOhHZjScnstKQih:1', '', '', 1, '', '', '', '', '66550110', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-09 23:03:50', NULL),
(1017, 'الاء', 'alaa2004ali01055@gmail.com', '0000-00-00 00:00:00', '3a48542a00d4dc9d92c97be711244101ec2d5c753ad49cb7da59b5e04c19cd07:vfDz3yBbCP6OIt32rOi2laYsCaVm7oIr:1', '', '', 1, '', '', '', '', '70128691', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-10 10:26:10', NULL),
(1018, 'nasser', 'naaas2014@gmail.com', '0000-00-00 00:00:00', '0dbe93e2e2b8036efa2f35cd0c875fb1846c51eb3f5e809064d92681ae2c3a51:56mdKwVClF3R2Lw31QvbxPMbgetPY1gw:1', '', '', 1, '', '', '', '', '55574662', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-10 11:43:09', NULL),
(1019, 'Srinivasan', 'srini.kasi.sk@gmail.com', '0000-00-00 00:00:00', '99a73724c1783b7c1769bc1f2a083b617f333cf4d6107bbc34e2c1a908f0ead0:DD7BBnXumsIsfltpuTQ9oxQhtcmqcWKc:1', '', '', 1, '', '', '', '', '031433357', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-10 13:39:15', NULL),
(1020, 'Terryhar', 'donwanexpvest1982@dizaer.ru', '0000-00-00 00:00:00', '0b935cb9693e78407fe9dfa6a4d817088e81d953011bc3c89887a485195e8941:vbKb7Z6rYzcvjAKxXtFK8s0GH7vNwC8W:1', '', '', 1, '', '', '', '', '87731547664', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-11 21:39:19', NULL),
(1021, 'jackllsr', 'j.a.c.kl.is.tf.o.xnee.d.li.fes38.2.5.21.2@gmail.com', '0000-00-00 00:00:00', 'c8ef6d7339d284d5c8067768b07fe45da45142f48cd994e44f74e2ea04bc3e04:HrPKYyxz2r76Z356eafGCQVht5KuTAOs:1', '', '', 1, '', '', '', '', '88342998844', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-12 10:37:36', NULL),
(1022, 'asma', 'asma.alhafeedh@hotmail.com', '0000-00-00 00:00:00', '5c6c48822ff22c590020f5acf85b6a52d82483f1651f6a5b7513dea801daff31:pV2M8vRzUSkxLr1SIe5kTx2C9NcsGNeR:1', '', '', 1, '', '', '', '', '66668569', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-12 16:59:46', NULL),
(1023, 'Gamal', 'gamal_hamam91@yahoo.com', '0000-00-00 00:00:00', '17c03fd5a55c46fb9f7da52c10c7ae605ce006155e2d78032722e8bd37ca8a9b:bC35n352tGTLLqFRdcvriUqU6kLBb7kF:1', '', '', 1, '', '', '', '', '31252515', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-13 09:26:43', NULL),
(1024, 'Ram', 'rrninonuevo@yahoo.com', '0000-00-00 00:00:00', '0be8daf003abbd5515f4e322e5293bdc0effa0e0585de187265b697a37dce3fa:htPSQdOxQQKJJ3pqYqnc6iHgTevPFOzR:1', '', '', 1, '', '', '', '', ' +97455695141', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-13 09:46:50', NULL),
(1025, 'EdwardJen', 'gigasubsea1979@dizaer.ru', '0000-00-00 00:00:00', '932555c3433c9ddb936fd92d33751084a33e204d98dd01cfd8144d0666d9c2ac:620915bPd1eYpzHCk0MWtkbNIfunaSkf:1', '', '', 1, '', '', '', '', '88722222612', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-14 12:22:50', NULL),
(1026, 'Ayyad', 'ayyad.haidar@gmail.com', '0000-00-00 00:00:00', 'a8996a9900ad72335d956d6108c24a34f232c6ba56b5064347c737e9c6032739:fmqSGIwgCG4T0dMk6eomepLSRyVzelge:1', '', '', 1, '', '', '', '', '97477977550', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-14 13:37:15', NULL),
(1027, 'Stephenfap', 'closerapin1973@dizaer.ru', '0000-00-00 00:00:00', '24f2f167540397e5d74829c758e349e6e90d128234c766b1981803700b721e36:Q8trb068NZxBbbsCTfgmbvVtH3Pc1TLE:1', '', '', 1, '', '', '', '', '85258457938', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-14 15:22:07', NULL),
(1028, 'Arthurtub', 'mksorbplg+aldza8@gmail.com', '0000-00-00 00:00:00', 'b3ecfc1d3aff9a3fd703ffd310441804b2851c8ef29fef11d8c6d60bb1b83b0f:nwN3XjuCJSdenmwDtfoW1uS56OUKfpj4:1', '', '', 1, '', '', '', '', '84447415275', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-15 17:58:24', NULL),
(1029, 'Michaelnig', 'p.frolov@avalins.com', '0000-00-00 00:00:00', '65a86750db466bfa2407985a00faa6676486666f95b0aa7487ac0041305026ea:YZYqCUWcUZMWiiI1XdqBxwgvnVSuOZFN:1', '', '', 1, '', '', '', '', '83749572828', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-16 22:08:06', NULL),
(1030, 'Jamessourb', 'n.kirambekov@den.efastes.com', '0000-00-00 00:00:00', '326b394c5bd5d35b6280f494830ba5767bd391d3a1f629913301045bb78538f6:M2qCU2jGQ1ZcSXWInAsonPtNmbc7xqo1:1', '', '', 1, '', '', '', '', '85526523677', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-16 22:08:06', NULL),
(1031, 'Hh', 'makeplus007@gmail.com', '0000-00-00 00:00:00', '71c8c0efdfaf0ef2c267aeab78fc58d35a67ddc2234cf9b5f2c0a172df42551f:r4eaYEb2xS8UApmNclr4hHTmGEqGwKIF:1', '', '', 1, '', '', '', '', '39918118', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-17 07:59:25', NULL),
(1032, 'Sheila', 'shyllakossy2@gmail.com', '0000-00-00 00:00:00', '2828ee5c571d979dd74eeccabce23f10979dc388b1ea5823e7d934f905952786:6puVqLj9PSg6iZRu6x9RiQNciBwI541F:1', '', '', 1, '', '', '', '', '50748448', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-17 07:37:43', NULL),
(1033, 'Benjamin', 'harrisein2020@gmail.com', '0000-00-00 00:00:00', 'eede1a7300aec97542e9d9898ff49df5813342ec6fbec17be8ecb5bbad45194d:MhFf4eIGK87dy6vjpR0XIDrPhYBz83MM:1', '', '', 1, '', '', '', '', '66988960', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-17 11:50:22', NULL),
(1034, 'Shaheer', 'shaheer.hyderali@gmail.com', '0000-00-00 00:00:00', '0594804f1faa3017fe96ff23c657d47b170b6e420dcf4fd063c35b464104aebd:sdd6Hs38pEJ4vD4x2z4DOXDcsSTMJFql:1', '', '', 1, '', '', '', '', '50415105', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-17 15:19:57', NULL),
(1035, 'SidAhmed', 'radoui.sidahmed@gmail.com', '0000-00-00 00:00:00', '1504d9583afce305e3cc007a9ca8a169787d9fb7e4222569bd9a693a21c0b3b0:4t4qM7aHg19xko8PTcAVyI8NJJMosGUT:1', '', '', 1, '', '', '', '', '30058898', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-17 17:10:38', NULL),
(1036, 'deena', 'dinauae@gmail.com', '0000-00-00 00:00:00', 'ff803b225f46338924f8472fb0e1c570bfd01648526fe6c8446560b13fdaa9ae:5bviT2imcSPTkuoXcuvIqDBIqkggQuPx:1', '', '', 1, '', '', '', '', '66752221', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-18 03:56:02', NULL),
(1037, 'Matthewsak', 'm.evremov@enersets.com', '0000-00-00 00:00:00', '0bcc2e74acab1d5c4e61edb045dbffa9c0406f606db1a35a89b00ff34664c1b6:hD48Ibxqht0d3s7EUtngflWalWDxEwBA:1', '', '', 1, '', '', '', '', '85145361566', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-18 04:01:00', NULL),
(1038, 'Balikka', 'balikkabaker@gmail.com', '0000-00-00 00:00:00', 'bd485af3b5bcd9d73913f1c81bd755f94589eb969c102b39724b7998fcb5d539:3IkqeJyonJzKsuenWiIkjOWKnhyI3gwq:1', '', '', 1, '', '', '', '', ' +97450702534', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-18 13:36:53', NULL),
(1039, 'JohnnyRhync', 'cumsherile1982@dizaer.ru', '0000-00-00 00:00:00', '0bf869749428deeec89a684025664430c6bd38004d63f98d91406414df9df7bf:C1mYvkqpwt3iqJs79ohfHTCUihTrk0N1:1', '', '', 1, '', '', '', '', '86927224247', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-20 06:43:38', NULL),
(1040, 'MOHAMED', 'rokdash@yahoo.com', '0000-00-00 00:00:00', '01b43bf69b6a42a8e1f95a8961c39aefd38309ff0bed42922f0f7b90aa00b4fd:Yad7ZlKhcibur1IYTE8qD1sl9GGQ8rkT:1', '', '', 1, '', '', '', '', '01099174821', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-20 10:13:03', NULL),
(1041, 'Kennethgrief', 'conssoftdece1954@dizaer.ru', '0000-00-00 00:00:00', 'cfc02f486966e72a690db50a54da7aad8e84f0f9cc5243dc844336c3e8dcd8ed:8zPyhp7KFLhbFxIjh2SqTpk04JYYnolq:1', '', '', 1, '', '', '', '', '89896164394', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-20 12:14:21', NULL),
(1042, 'Dilraz', 'dilraz@gmail.com', '0000-00-00 00:00:00', '77ba5e010c4315d58d4bd83a583e50468f885ebf9752e74ce0f3646fd643b066:6aOeE6MLFDJDyE9y8OKbGT03HYiAdgrw:1', '', '', 1, '', '', '', '', '66862030', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-22 09:07:38', NULL),
(1043, 'hamad', 'hamdhalul@gmail.com', '0000-00-00 00:00:00', '3799dcc0027e6f210d8ecd69c56a84cc10fe1891f5147702204601797915cdb9:MzQLNDg67KkOSJOYdFCLTQI1qRCaHzs0:1', '', '', 1, '', '', '', '', '30000771', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-22 16:17:54', NULL),
(1044, 'سعد غانم ', 'ssss5616@hotmail.com', '0000-00-00 00:00:00', '8bce5b76d98496885c0766be03b9f3b168a4e08a5bf5916b10958b03cd05ac54:tHKM87iu7j76iyNPNlIOgYgrrfmHXHbq:1', '', '', 1, '', '', '', '', '30033033', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-22 18:07:21', NULL),
(1045, 'hamad', 'w.alhajri@hotmail.com', '0000-00-00 00:00:00', '9b7584ceeb17df08e47bc2450ae9fa8315780dada199d69a2df69c329c8d0c60:7btWCQSOhiWHR8RfbTltFgqqr2RQuaSE:1', '', '', 1, '', '', '', '', '66266986', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-22 22:19:14', NULL),
(1046, 'محمد ', 'mohammedalkuwari794@gmail.com', '0000-00-00 00:00:00', '1db2f969f0dd9891c3ebba5b545d99b535ba0836bb294174e157b2e521c0bf49:NfS2jhNOXmU34Ss2hz4TmaBJHQ09dJ0w:1', '', '', 1, '', '', '', '', '33330236', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-23 12:37:51', NULL),
(1047, 'GregoryNeumn', 'arina_kudryashova_2001@mail.ru', '0000-00-00 00:00:00', '78e77309eee0d58ce013f797b22c8eee9089cdbb8c8b9b10f6d410191fa4cad4:egRf7VWjG1rDF2EVeJ5CwZagZu2pLgqh:1', '', '', 1, '', '', '', '', '89662634267', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-23 18:16:15', NULL),
(1048, 'TurnBilO', 'bim@jaguare.ru', '0000-00-00 00:00:00', 'dcfc7e94bf16cd7921b75da472b225b38ad1ffaaecdd757427aa5e04e0421e41:3JKSmR5CZaDE0VcXVo1UVKqxJoPfOuG8:1', '', '', 1, '', '', '', '', '83483494184', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-23 20:51:13', NULL),
(1049, 'nabil', 'nabil63266@gmail.com', '0000-00-00 00:00:00', 'd8286c34bb24ec8dfb7b90e0e4eff464dd1e0960121d73b1ab8ba108f35740f4:4LqbiYWENHdgCKQuLrD3xkBPGGoxAhUr:1', '', '', 1, '', '', '', '', '33478820', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-24 10:24:58', NULL),
(1050, 'kevin frederick ', 'kfpmanalo@gmail.com', '0000-00-00 00:00:00', 'd6136e3b0e65e67ab0332cd220a6e9cebed6e4626b6da857d033c6102accb1d7:aDvJ35UX5S72SZwbKKJ58C8C6Lp0Cpy1:1', '', '', 1, '', '', '', '', '66190400', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-25 04:31:09', NULL),
(1051, 'EugeneGet', 'artem55jjde@yandex.com.tr', '0000-00-00 00:00:00', '5a860aa7acb8498387b99d2142506b9c1e2f953a5a17e1cf04571a56f4e35d36:PeOVgI3PFNRq9NkDy6ZBCCuasaPMWeUo:1', '', '', 1, '', '', '', '', '89379755662', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-25 06:40:06', NULL),
(1052, 'jackllsr', 'jac.k.listf.o.xne.e.d.l.ifes.38.25.2.12@gmail.com', '0000-00-00 00:00:00', '9dcff58f11cf208bc0164b5ccdbe6d676aeaa1677d714a843c2a7a6bc0764024:oUGKCqq7Fo4ZXVQgF1qQvMzDTAOqjFP9:1', '', '', 1, '', '', '', '', '86619247723', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-25 11:33:11', NULL),
(1053, 'Hessa', 'Hessa.a.k@gmail.com', '0000-00-00 00:00:00', '0df4ea13d37c70f0fde7017d3036408fedeb07a2a94afcc657ac8ae7d39aae71:h4NaXzIewWWDziY9zcCD9FOgVaO9On0T:1', '', '', 1, '', '', '', '', '30132323', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-26 07:56:10', NULL),
(1054, 'Muhammad', 'muh84929@gmail.com', '0000-00-00 00:00:00', '1114751496e7e3e9384931b3bf98545bdf9e7cb40e26d4b2fc34a435fb46100b:LjcbmqDAmEDNxvKiMGO68QVekVBELDE5:1', '', '', 1, '', '', '', '', '33328130', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-26 14:14:18', NULL),
(1055, 'yamoor', 'yamoor111@gmail.com', '0000-00-00 00:00:00', 'e49ed64b3f6535e72a636ceb8c91dce6d66dade343ce3684e807de10390c7596:Hb5kIYuwk03XaSKm3PNhKTNyNfAlPPKN:1', '', '', 1, '', '', '', '', '33313327', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-26 15:21:09', NULL),
(1056, 'Jessie', 'wahwahjess38@gmail.com', '0000-00-00 00:00:00', 'c2702bbb880a70c15de0e6a6993f135bbcf435e7a7779b3e2fa0d7aaa5a981a7:8DYY3CVPKuhSIGsk4xmAaazkdUHzehWU:1', '', '', 1, '', '', '', '', '67572228376', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-26 15:27:36', NULL),
(1057, 'GroverAmalt', 'andreywtosi@ya.ru', '0000-00-00 00:00:00', '00a9791be94c88bdd3bf7039b14c5c1974f91df89e08d1c020f96fa86c09c884:nQJ1FK7UDZRkSsaetRntAhn8JHcX483X:1', '', '', 1, '', '', '', '', '87647865925', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-28 00:47:10', NULL),
(1058, 'ali', 'ali.s@gmail.com', '0000-00-00 00:00:00', '4d3ec0c06762f71a86a192e5f4505b9230d99ef1a5a3c881bc302ef61c214731:Qk1Pkf0ZHUSTue5oIMalO4OSlUo4QWFw:1', '', '', 1, '', '', '', '', '50471547', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-29 09:18:37', NULL),
(1059, 'Ali', 'ali.sak.111@gmail.com', '0000-00-00 00:00:00', 'fab45a8649b2cf026d19f82f9c605353fbbbe229f8771943e9f6325a0c99b4c9:3Aqy1sfv0oEm1fLe4VfPt2JahNsUKUJv:1', '', '', 1, '', '', '', '', '5047 1547', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-29 09:28:27', NULL),
(1060, 'EugeneAssup', 'alla@themailyouwhant.info', '0000-00-00 00:00:00', '4e18e7352870c0cb44d76af896b07f36942a053982f61e9ebd97b5fad6d79ebd:bU2fGW4LzOUcjrfY3a95V6nffBvXB7bs:1', '', '', 1, '', '', '', '', '88426938843', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-29 10:53:33', NULL),
(1061, 'Ohoud', 'ohoud.alhabshi@hotmail.com', '0000-00-00 00:00:00', '7dd2ba8db46cca0a3e2a71d27dea05f09b35021b940dbd0e4863a8c2a855ac44:v7vyIJ5YKvzZpktAjIdeXo0UEsU9MC6X:1', '', '', 1, '', '', '', '', '33511003', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-29 12:01:14', NULL),
(1062, 'Jannat E Naeem ', 'engr.jannat@gmail.com', '0000-00-00 00:00:00', '28399e90fc669a5a718ff52334190fccd72ab2ce1d44c17cfd9cbfc8b390b113:jiniDKY5F487k8NlWWKCRF6JuDpnpNWb:1', '', '', 1, '', '', '', '', '66470316', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-29 13:08:58', NULL),
(1063, 'yasmien', 'yasmienmagdy@yahoo.com', '0000-00-00 00:00:00', '0fe32e23bc7cbd9df8fa6cdd4d212bd59c30f37e727b60406c3e8a1305ae4a1b:x1TzidwbmNq32o8oQJ9ihsUIXrUtfLwm:1', '', '', 1, '', '', '', '', '50111390', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-29 16:29:13', NULL),
(1064, 'AnthonyMot', 's.anikov@a.avalins.com', '0000-00-00 00:00:00', '142edcdee46ab3ad56d1e8c1c5e1a671d41d60afa198b1c46681d5111abdea8d:dbgWt96G174ykEbnRkCg5t6TZPRBciVJ:1', '', '', 1, '', '', '', '', '83169667526', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-30 01:49:29', NULL),
(1065, 'Jerrydib', 'f.kukushkin@den.efastes.com', '0000-00-00 00:00:00', 'f7faa94b4e17b97450e7ce3f76f5a72db87ecd6e01b3eeee6852cc34a639af6c:ZvvwYE0I0dWfgQLmCguvN422Ewxa2tNd:1', '', '', 1, '', '', '', '', '85945645183', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-30 01:49:29', NULL),
(1066, 'Denniscep', 'i.saretelli@makao.efastes.com', '0000-00-00 00:00:00', '47a6073a1de810efca6950822970d8944b9d258e1113bd5002f612482e1f1f43:5SEOACuWYUvJE4cgofiVDvcNkH6NjaTB:1', '', '', 1, '', '', '', '', '81626653167', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-30 01:49:34', NULL),
(1067, 'rizzalyn vinnisse', 'jade.atienza618@gmail.com', '0000-00-00 00:00:00', 'ed3bc4ab80b7f84a8d3b50e45266f7a90af42b65df1973650b594240155fe181:9mpsuIF0SKQAb3LmagssDVWPMyYBDmtH:1', '', '', 1, '', '', '', '', ' +97430815523', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-30 16:39:55', NULL),
(1068, 'BobbieElevy', 'm.fedotkin@a.avalins.com', '0000-00-00 00:00:00', '71ef401853bcab54227a782f3e94178e7490e831116c76cf604bc17077aefd0b:omXyHt5XGUOrm1uvVCu7ULDUczYr8AUN:1', '', '', 1, '', '', '', '', '82224233198', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-09-30 18:28:04', NULL),
(1069, 'donia', 'doniaasiri55@hotmail.com', '0000-00-00 00:00:00', '18e0e6cd29573d7d45d67beea6dd0a6f25132957a0a3162d64972b3fcc84d877:im1tUFGBTZBKZsEQiAS4sL3OjeGkJWjC:1', '', '', 1, '', '', '', '', '55007839', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-01 08:13:59', NULL),
(1070, 'osama', 'osamakhalil3940@icloud.com', '0000-00-00 00:00:00', 'ad326a5943d8c8188378a10c7bf46befa1f730a9b08516a540b49de33af24f04:xsW0lemWwZ0JRxBJ8qVOinKORzBnp2os:1', '', '', 1, '', '', '', '', '66561839', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-01 11:23:19', NULL),
(1071, 'Marlenemuch', 'marlenemuch@heartbarcmipoconsli.tk', '0000-00-00 00:00:00', 'be64aca89a4b9deea85fe069c34015a6ce9a8c657cf0fc7a0249abbf8e63b059:4Kj5SttQ0wVQFuwuqTDmieBQUW4fDanu:1', '', '', 1, '', '', '', '', '88611345396', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-01 18:13:31', NULL),
(1072, 'محمد', 'mamal95@hotmail.com', '0000-00-00 00:00:00', '9763d9ca330a0680c28a88b4d3c6092de9ab4d474247f1b4ba412429c1f45597:cfg77GOIOgdKp2qpzGRCPHP1FKHkOHMO:1', '', '', 1, '', '', '', '', '66664307', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-02 03:52:12', NULL),
(1073, 'RobertoClite', 'gaticoufahl1969@dizaer.ru', '0000-00-00 00:00:00', '34f7b3b60dc3e2e45e072b27b4396c0e9335b199cbbf67edec1a19bea1263e21:RUZwgL4YTuzC4eNhmME9cWqPiEkrrJes:1', '', '', 1, '', '', '', '', '81438888385', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-03 12:30:18', NULL),
(1074, 'Afaf', 'nooryy1984@gmail.com', '0000-00-00 00:00:00', 'd8f85c3a03c27c19a50d6e9832b815932a8727398fa74ce4be75a6e353704afb:Y5rxIo9PqCDD5k6YC8BUAaGctvyyVHM3:1', '', '', 1, '', '', '', '', '30500553', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-03 20:03:44', NULL),
(1075, 'jazi', 'Sephora.jazi@gmail.com', '0000-00-00 00:00:00', 'eef0d979b61d4dda6da56c4b3f503a242bed1a2345cee18e2b3583b5b98f73da:hd7gGQT1yRroozg9pGHO0jZAwr8ouSce:1', '', '', 1, '', '', '', '', '55942472', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-05 10:13:53', NULL),
(1076, 'n', 'mariamotman53@gmail.com', '0000-00-00 00:00:00', 'be53503665b2999a1b5c8cf87531148d42f1e9116575fe5d4c19bf75015ebb12:60ycYnYFgpYVnY5mOgjloJS71d595b39:1', '', '', 1, '', '', '', '', '0543625910', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-04 05:52:37', NULL),
(1077, 'Aljazi', 'aljazimakki11@gmail.com', '0000-00-00 00:00:00', '2e9d6d891c0186a69094f741fe92d7dded5e292fbbfd2b2420fead8aef8c5d82:TPe0B3Kkyf3qKOhHxdlcYeFepSLVMRP6:1', '', '', 1, '', '', '', '', '66662884', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-05 10:00:25', NULL),
(1078, 'JamesCop', 'k.hudovich@jodas.enersets.com', '0000-00-00 00:00:00', '07aa7bdf1001715a5780f632925b8720260d2e0278ae467c198bb9dd9a2c5ca1:TJCf133KcVO2S5ga8cf3RCJ1rsIxiiZH:1', '', '', 1, '', '', '', '', '88588148336', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-05 16:24:56', NULL),
(1079, 'Georgetof', 'f.grek@avalins.com', '0000-00-00 00:00:00', '50379ff008f03dfabce4b267a2ab0f5d52332cf05384c1175a736396c70d604e:rPt6mgMF5rvTLgOHJcNp9M68qDjjCAnk:1', '', '', 1, '', '', '', '', '82853765435', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-05 16:25:04', NULL),
(1080, 'amin', 'nadjibo87@gmail.com', '0000-00-00 00:00:00', '91ffb545862db336cf5312c8e5305c4181af2543671499dc29751ed74977f461:0KVJOIz4C1DU1DkwkO9HNJbZfkLtYZKz:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-12 00:29:11', NULL),
(1081, 'Nor Hisham', 'norhishammohdfakeh@gmail.com', '0000-00-00 00:00:00', '9ef8f45b2a1677ec377d4e9c955e39960b0cf2e3135946e453009032cce66b72:mzTHyf3OIMioeRgjmf9RonXKL0JT9pM2:1', '', '', 1, '', '', '', '', ' +97466796339', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-07 05:05:25', NULL),
(1082, 'VavadaChaic', 'vavadac@outlook.com', '0000-00-00 00:00:00', '26001f81648e378cb24283f5cb130844514fc8d91bdd1c60b11e15b668306166:sYkVP6ArMH6FPJHBdUFzg06dEYeezhXa:1', '', '', 1, '', '', '', '', '86189643747', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-07 15:59:48', NULL),
(1083, 'MarlinTeelo', 'ha.n.ey.n.76@gmail.com', '0000-00-00 00:00:00', '7951a7976ac9807af91dc908c99366fe7155acaa182caa0d7e817810e4915190:3TUjQK2zgQI7miIvi0svCqiCidhLDSr2:1', '', '', 1, '', '', '', '', '81864425457', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-07 22:08:15', NULL),
(1084, 'KennethNealf', 'golubk.ina.m.al.ena@gmail.com', '0000-00-00 00:00:00', 'ed7f436436fe6e4682948e8ae4d6573a7f2d59daeb241c900b9d7e004a63604a:1FrGdMxeYoX3xkcBkAhtJHiUrNt4OlCi:1', '', '', 1, '', '', '', '', '83851564247', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-08 03:49:51', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(1085, 'Philipcet', 'tomcruise9276@gmail.com', '0000-00-00 00:00:00', '97b4c6c20b96fd62d0e1b50645e80334fd707342852bb592e7cd362a720663e5:jVo1KJrLSpUWr5CQWyACBJJ3nPVxZsap:1', '', '', 1, '', '', '', '', '82754456695', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-08 22:27:04', NULL),
(1086, 'samar ', 'samora.55555@hotmail.com', '0000-00-00 00:00:00', '1028e80cad97e7abbb7e31e99e7db493dbc04bd58da37f19c40fc3bb1bd08e4e:qowZ1d98q0vhsDC8ODx38qWvW4goYVpv:1', '', '', 1, '', '', '', '', '55343618', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-09 11:21:32', NULL),
(1087, 'gringo', 'salisgringo1989@gmail.com', '0000-00-00 00:00:00', 'a1c2f9d48d855090d0ab2af9f56e6c176e62a6b331938d7040f58a10893fb466:VVV6WTVcFokuDWTYm5WxXKyFvrAAMQon:1', '', '', 1, '', '', '', '', '09460907690', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-09 14:59:59', NULL),
(1088, 'Diala', 'dialaraz_91@hotmail.com', '0000-00-00 00:00:00', 'e022d8fccda79aae75e1a803dbaae15fc7722522022a4ad3219fd14693ee2765:eowGwatlXrDnNRl3EvOpQwdgYcnec12r:1', '', '', 1, '', '', '', '', '66546342', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-09 19:46:29', NULL),
(1089, 'mohammed Salman', 'salman1073salman@gmail.com', '0000-00-00 00:00:00', '5a01206ec3cad7101366acc53a1734290c5418df0f212438a8dd3bb2fcf1aafe:nwvNeKZMMSQT6fxJ3iHwHoq4b7PLPDvP:1', '', '', 1, '', '', '', '', '30271925', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-10 00:32:49', NULL),
(1090, 'VincentBib', 'pstokmanager@gmail.com', '0000-00-00 00:00:00', '8a1d26fa0273bbdf94d434a8ec632b329ea8073224d4e780a50502fdc12e90df:fjfAr9Ol3Ac4PGr7448v3YbekHseIVT0:1', '', '', 1, '', '', '', '', '84754672115', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-11 04:38:30', NULL),
(1091, 'Aida', 'hbfwc@stu.ca', '0000-00-00 00:00:00', '4b729ab1197fccbceaa21484cefc0a58338215c95268dfc57b343d682eaa790a:7jSaoMbzTfpKuthkl19FMA6LRDlkmOh6:1', '', '', 1, '', '', '', '', '30567494', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-11 07:28:15', NULL),
(1092, 'Alex', 'aankomah299@gmail.com', '0000-00-00 00:00:00', '17ffab5cc1a6ace8b684182ec1b05aa26829eb43cb3d269f0223d057a269ec6f:BqwnIiP8R1xZvvE8liHUXKWUmngQMaWd:1', '', '', 1, '', '', '', '', ' +97466732401', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-11 18:36:42', NULL),
(1093, 'Ibrahim', 'kharbouchk70@gmail.com', '0000-00-00 00:00:00', '45c13147be06313e7f082d94b8f93b6e7be483e631d59c1f290c63723eb0fccf:JOP6je3IFWnUQzo6IXpI39dDVlKSGWrb:1', '', '', 1, '', '', '', '', '31686496', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-11 22:30:47', NULL),
(1094, 'amin', 'nadjibo970@gmail.com', '0000-00-00 00:00:00', 'a773aef4165c0221dbd2a28e14a270f8df16ba12e39c3185aff9772ab14ef911:BAxvzmVNSMgVeHkIPM9qp33fLlI9a4vq:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-12 00:01:56', NULL),
(1095, 'Raguvaran', 'vandhamalaiponamairu@gmail.com', '0000-00-00 00:00:00', '5831444592f84b478f3a5219ee4510731cb1337c71d2b2b6dfe361a6945f92e8:pElzjsnUpIoTYD2O2QrCXjOhfGdttvof:1', '', '', 1, '', '', '', '', ' +97450283835', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-12 12:37:06', NULL),
(1096, 'ammad', 'ammad.mustafa@gmail.com', '0000-00-00 00:00:00', 'b709ce9ac519866037f82803c3e7b1ecc94956e07052cdee18b132318075a411:IXQ246ZcP24H8laBEg1Ol50RFyk3owy6:1', '', '', 1, '', '', '', '', '33549632', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-16 10:07:52', NULL),
(1097, 'shaikha', 'princessshakela85@gmail.com', '0000-00-00 00:00:00', '951f60611aab59bba6b1186a461e06305ff3b768b7448001de1c03126c81a007:AS813gLUPcpWZWM0JrXwoUZxahIe1hcw:1', '', '', 1, '', '', '', '', '٦٦١٧٦٧٧٧', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-16 20:46:58', NULL),
(1098, 'Mari', 'marielysfrancisca@gmail.com', '0000-00-00 00:00:00', '37d5824b45e7c88ce3d221cc7e397a7e34b4508e9e50e8a5f2ef97b5b8ade41d:73EPQ2RyVuppvLihPZ9R9Y2Lmc4sxNIt:1', '', '', 1, '', '', '', '', ' +57302 5946164', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-17 23:56:35', NULL),
(1099, 'jamal', 'jamalhossain477@gmail.com', '0000-00-00 00:00:00', '4e9c756da0a690a87819f7e18eb719dd2b388cd1a7ff15c6dae3b4f9ecaa2946:yr9vPIyjjjBG4lXjyCiVTOfgMjMIhlIq:1', '', '', 1, '', '', '', '', '00966501726944', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-18 08:26:19', NULL),
(1100, 'October', 'Octoberandco@hotmail.com', '0000-00-00 00:00:00', '746b1db05e9e9ce339d570367c2f8032e5fc07ae29a2d772ef3fe429b063bb02:vNsaA3walx3RIryYlWygtW1fC16xOOns:1', '', '', 1, '', '', '', '', ' +97450005746', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-20 20:28:53', NULL),
(1101, 'mdalauddin', 'mdalo3212@gmail.com', '0000-00-00 00:00:00', '17211912e279755189c7585a9f8ce5de16229868167a602a08f67ec36daf8cec:feBls36zaWRReQhojZP6r3XyqYtOWRUh:1', '', '', 1, '', '', '', '', '01863711296', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-18 14:33:45', NULL),
(1102, 'Vishnu', 'vkrishnan775@gmail.com', '0000-00-00 00:00:00', 'bf2b829f7aeac20ebd41040584f9737083364a3e14d2a86cac8c6c34071b1e55:8BtuUtdh6W5yy07tPUIbakh3LSWaoD6D:1', '', '', 1, '', '', '', '', '66739028', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-18 17:36:25', NULL),
(1103, 'Ekta', 'ekta.pannalal@gmail.com', '0000-00-00 00:00:00', '9a5434c11dd83d90328b7a7b32026e532ccc136507a0a36b2569cc337c87d463:vXZVqaV9yXR3wxwSJBUejrLWr9MFkdWE:1', '', '', 1, '', '', '', '', ' +974 33938585', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-19 11:02:43', NULL),
(1104, 'reem', 'freckles.rema@yahoo.com', '0000-00-00 00:00:00', '9bc9d3ca6f174da2f473f767bd41f21f051255779d226b030dec68cc7e0a84c5:h7iicNhEUPERkd7CeI7CHAo9lB3YeVUo:1', '', '', 1, '', '', '', '', '33351065', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-19 11:20:30', NULL),
(1105, 'Katherine', 'mrs.christiantrabajo@gmail.com', '0000-00-00 00:00:00', '94e12afe240a8b315a15c25d9a9175b09f6755e5b00ee76be0845d400d1d63dc:WzVcrrGm7Ja9pMMg4LSKaXJfL3fQLcFs:1', '', '', 1, '', '', '', '', '55422425', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-19 17:58:11', NULL),
(1106, 'saws', 'souzlnbkry@gmail.com', '0000-00-00 00:00:00', 'ca75184d28097c759daf498ed4d99a8121f4ec2b8b94dc7effc01a385aac95aa:FZGW91bujhqGeXJIoJklGDXrATDbDsk8:1', '', '', 1, '', '', '', '', ' +21629781759', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-19 18:53:11', NULL),
(1107, 'Mohammed', 'eng_m_fetouh@hotmail.com', '0000-00-00 00:00:00', '4acb53985b7bdcfe59bac627a75f7e8c3b0db4be172f653e5d7a67087c0bdad0:Dkv5Fssqx0Uc1DHttV8gO2mZwyvqyv2u:1', '', '', 1, '', '', '', '', '55728255', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-22 13:23:52', NULL),
(1108, 'AltonHom', 'm.simov@denis.enersets.com', '0000-00-00 00:00:00', '771735b83d49dc0f795f8751d555d58e557779e4e11513b2b57826c372a518ec:vf6DIlgtgu3ULMq6Qw3mUNAzkmXjpy5w:1', '', '', 1, '', '', '', '', '85298561157', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-23 07:30:59', NULL),
(1109, 'nbk', 'nalhaidose@hotmail.com', '0000-00-00 00:00:00', 'f5b2a3c6ea48dc47396531fe44aedbd4230a4f862b6c6b40927e17aea1be3c27:RbJ2WLnpFavQY9UmNWoytjyTbzpbJMHL:1', '', '', 1, '', '', '', '', '66688836', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-23 12:10:06', NULL),
(1110, 'yuri', 'yuricorn0521@gmail.com', '0000-00-00 00:00:00', 'de0518ea510db2bcc22624c7266eb45e7b83e6f0926d7ea75c6ac5b9d8dff05b:5ewwh5s65v7wAkjM8eudehib2A7jcxZT:1', '', '', 1, '', '', '', '', '30892162', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-26 20:33:12', NULL),
(1111, 'Saad', 'foundedil@gmail.com', '0000-00-00 00:00:00', '57f94477929f971b287b9a71c1e629619732f053fb3274d4aec600a131e16684:g9lXT8PbNUzlmvtXksmYw3HbJtLmSN87:1', '', '', 1, '', '', '', '', '66666851', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-28 11:59:02', NULL),
(1112, 'abdulrhman ', 'haman_almalki@hotmail.com', '0000-00-00 00:00:00', 'dc96b5cf9d2620aec332cc13476a5dda71f5265da9e554643b2adf81b02d4659:QzF7SgFxOD0uUEO44F5KOgkmRfp00kjq:1', '', '', 1, '', '', '', '', '70707061', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-28 22:25:09', NULL),
(1113, 'موسى العرافي', 'syryh7537@gmail.com', '0000-00-00 00:00:00', '97247e9af7aa4a8a083556c52adb2a0da52f77d13d966405907140af8e6b3d66:zKlc9k3DnsavkbacJ7e3IioKYIffVOtU:1', '', '', 1, '', '', '', '', '555341513', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-28 23:51:26', NULL),
(1114, 'alonica', 'azcaragaalonica@gmail.com', '0000-00-00 00:00:00', '0dee56e4b998b1b00d15c97fcb2a0511f49b408b695c73b8965bb5e8ca9abf5b:qvpB6XAVdbZKEYHjFIM3LIqDKkEB357P:1', '', '', 1, '', '', '', '', '639464423722', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-29 15:09:14', NULL),
(1115, 'ma', 'lamaalmahde33@gmail.com', '0000-00-00 00:00:00', '044bee999b99392a188063e18d7f1ea102008f8dbe10f95746d099eaf9ef6431:zrq5NFrg3o9rJM2U7M2VZ81frGYsyx3o:1', '', '', 1, '', '', '', '', '33151448', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-30 11:51:33', NULL),
(1116, 'Linda', 'lindayusof08@gmail.com', '0000-00-00 00:00:00', '71c4155ed3d4af02a1090201860ea87617eee50691c64ffc3f4192ef9fdae939:2Z17d4fufMTFggeZGO8uyMCmxBdGiX6v:1', '', '', 1, '', '', '', '', ' +60194141315', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-30 15:06:19', NULL),
(1117, 'kabita', 'kabirakumar3@gmail.com', '0000-00-00 00:00:00', '007bffd30a9bf80debb5460e41bd6a8cf484160663c7d41de72915ce11403267:4cT6UjR80bbK7m2fnN7TJ4DjfQxjxKDF:1', '', '', 1, '', '', '', '', '31660385', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-30 23:39:30', NULL),
(1118, 'Mohammed', 'hamood5107@hotmail.com', '0000-00-00 00:00:00', 'd1210e3feff60451450ed8c64bbfb61c6218fd95fa380437194c0cddf1e41565:bRnHsFUTGTBXXNb2IaDU0CJxCFW96Qhv:1', '', '', 1, '', '', '', '', '55374669', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-10-31 00:10:42', NULL),
(1119, 'sara', 'salma26342@gmail.com', '0000-00-00 00:00:00', 'bd5fdfef904a40a1f6b9f0d830e475ed93932591f2c3868f208ea22080d7ca0b:0guSXdOFtiWAwkOXYD7jJhSKZgS7XBO9:1', '', '', 1, '', '', '', '', '50502650', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-01 09:45:04', NULL),
(1120, 'Moatasem', 'moatasem-mamdouh@hotmail.com', '0000-00-00 00:00:00', '9dfd6f513de918a2df3cd126bb57d1a92f7bd1706604c99b6da8214d1829c9b6:VKcURbW020x8lUyXEQFoMNVGCrVG9oBg:1', '', '', 1, '', '', '', '', ' +97477680736', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-01 10:03:03', NULL),
(1121, 'Mai', 'mai_am14@yahoo.com', '0000-00-00 00:00:00', '38442b7440e15621fb303be0418f38ac7ad249b625955758ff844d4326d1865a:bncntNFtFxcB5GUM5apZSlmO7DwyW4Tk:1', '', '', 1, '', '', '', '', '55804902', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-01 22:17:24', NULL),
(1122, 'fifi', 'fifirezk_2008@yahoo.com', '0000-00-00 00:00:00', '46af52ecb1caba2614df62e13fc0c1d1f2625b82d99df1fa00b804a001a2bcde:vBx8WC3pzxzIO7AoBvoQEiG1yN7XzMMA:1', '', '', 1, '', '', '', '', '66503016', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-02 19:11:12', NULL),
(1123, 'allan', 'lan_goten_oct@yahoo.com', '0000-00-00 00:00:00', '7cfd9364003ef0fbdaec2d786b38ff59df4b889c1be1309b8c42ad364d5a3b3d:Hp5ujxjHfsHOrUy70Mcj0d4SUARI7cHN:1', '', '', 1, '', '', '', '', '74032670', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-02 19:32:18', NULL),
(1124, 'كرماني', 'kermani.khaled1990@gmail.com', '0000-00-00 00:00:00', '53735a8a007492d322aac37136272fae242f45466b80d8e6e9d6e60fee1fd524:Xk1PAxXHYqyR3JAhw18Qpx1qBqe6zbE3:1', '', '', 1, '', '', '', '', '50661432', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-03 16:35:34', NULL),
(1125, 'jermy liana', 'princesslianapinero@gmail.com', '0000-00-00 00:00:00', '9adb686d211b6cd7f676c98028b2cca4e1ebb60ac9d4d909b0be22e2f86670f0:vEFcU7E41B6BLxvDd4eDbvXon74kSOuw:1', '', '', 1, '', '', '', '', ' +97477582852', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-03 17:35:21', NULL),
(1126, 'RistroyRuima', 'mariampoltorak@yandex.com', '0000-00-00 00:00:00', '690829042c75987fe60c72262ecd8fdd82ccb3c2063d8a10ff2eee634a2fc089:ML3vtdzXyHhHeiy7IGURcL1f7QcwVkly:1', '', '', 1, '', '', '', '', '81654327156', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-03 22:17:36', NULL),
(1127, 'عبدالعزيز بوحدود ', 'qatar-@226outlook.com', '0000-00-00 00:00:00', '2d1222b2bca694fc52b765ff96fcc5b71a4b462b706795875476661f6b9712e0:KNKJ31G4aGSuWzJ5GZluRiItNVLEXZh7:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-04 01:06:07', NULL),
(1128, 'عبدالعزيز', 'qatar-226@outlook.com', '0000-00-00 00:00:00', '10b647e00699b6f421c97d40d6f96e8d6a09e1cbb3c0343b616ce01a47db1c2f:2v5p62Kd8SU8h0dbnODKmdJyaT0GoeN6:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-05 04:11:14', NULL),
(1129, 'روح', 'roohalali05@gmail.com', '0000-00-00 00:00:00', '6742eb6209620d751d440e4733e5eab10e9eb89438907d6d5e956df6243bb2d1:QQRqXDrQbop1WHaDoRT4SF9hqm0HwOxv:1', '', '', 1, '', '', '', '', '33500271', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-04 02:34:15', NULL),
(1130, 'Khaled', 'dashrhino21@gmail.com', '0000-00-00 00:00:00', 'b438e53a6254a1a73c550d1f174de42ca476fa08df2912818ac1eb7c1f39adb6:NbZzph20Uc7ArZ7WM28TGxIl3SkMtxny:1', '', '', 1, '', '', '', '', '55735470', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-04 17:30:59', NULL),
(1131, 'abdul', 'a.rafaymumraz@gmail.com', '0000-00-00 00:00:00', '4e1909e6bce8f59cf63b5639ab83a558fa0997bb4ceb71acc3856b0091e92e4e:rsNTD6OhQ7xKcEGyQfQ8nZNpxAliCPHE:1', '', '', 1, '', '', '', '', '33478938', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-04 19:37:02', NULL),
(1132, 'elias', 'elooas.ibrahiim@gmail.com', '0000-00-00 00:00:00', '575b079726ac51abce41633e0a413e630bae9a3bce4554f01cc584e36d342b87:gjBbpLk72nvXSe1DGSJZWO4dTPWiMSJM:1', '', '', 1, '', '', '', '', '33297794', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-05 13:31:42', NULL),
(1133, 'noveleah', 'noveleahhuerta11@gmail.com', '0000-00-00 00:00:00', '8e7ee131fabd1d3467b91986e4a0b759c648f1b29cab124d167b5d11df2a37b8:18I849zAlzxJO2gAnbobvnC7E7pWaTIp:1', '', '', 1, '', '', '', '', ' +639211840708', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-06 11:57:26', NULL),
(1134, 'Athamlebbe', 'riyas0723@gmail.com', '0000-00-00 00:00:00', '9d34318ab5e7167248e5a45dcbd5588d8dca8f9531f4aae01e44b6d06eff9eff:D2zx4SsbWao50Yfx0jQ8ixG2pITi9y9M:1', '', '', 1, '', '', '', '', '55612079', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-07 05:56:25', NULL),
(1135, 'Athamlebbe', 'rajeesa0305@gmail.com', '0000-00-00 00:00:00', '46085a545c8dc6573631256f58e685e65cde635b64efaaa4e586400b73e69fd1:EKHe3WYtb2OUeCi0XMxgS5DvXS3IQx8n:1', '', '', 1, '', '', '', '', '55612079', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-07 05:57:14', NULL),
(1136, 'nawaf', 'nawafj88@gmail.com', '0000-00-00 00:00:00', 'a607a5417b65368e7df512c40436e4deab4e3806005318a8fea11b5bf3e24c38:O3LMX9ovEQ6jEJGZ68l5stvs1GQJVR47:1', '', '', 1, '', '', '', '', '70400433', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-08 10:48:59', NULL),
(1137, 'akarat', 'jonalynbredesdelacruz@gmail.com', '0000-00-00 00:00:00', '3ac2ed3a65dede26de7b5c4ece78b92c6e1c94653f5a7c5af21c62862eb10c02:axNUwJnF3Y74amrRShetbGKLTTHsJpbL:1', '', '', 1, '', '', '', '', '66098594', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-08 21:07:17', NULL),
(1138, 'MOHAMMED', 'shameerchoondathodi@gmail.com', '0000-00-00 00:00:00', '5bc7dbc7d743d5767f7fad7ee7ac0330a52bfed72d8362625b8deb0a8f497518:zn5wQoEyGvjbEH7FGWEG0IRLOY62w5oz:1', '', '', 1, '', '', '', '', '30846286', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-09 08:25:52', NULL),
(1139, 'ahmed', 'Ahmednofale123321@gmail.com', '0000-00-00 00:00:00', '35917aac256544e47911270095a9e5d421695d946535d6d0bdff2a8c8e1c36b2:qx7j21s7qhIkjjlRHIqkeXh9FnBtNP6H:1', '', '', 1, '', '', '', '', '70770997', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-09 08:37:54', NULL),
(1140, 'boutaina', 'boutainabourouaha@gmail.com', '0000-00-00 00:00:00', '64dc48ef71da6bf34f5636f59f31ea5e95766003f83410a2ee8ae4ac65a86f6a:LO2boWeHVYcuB40f4mupku2QS0uXbzHW:1', '', '', 1, '', '', '', '', '33573348', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-09 08:59:43', NULL),
(1141, 'Raul', 'Mariorko@gmail.com', '0000-00-00 00:00:00', '156b4d2729a266ca97a4e9d19f3412b89d2bf5887c43f313ce5c7b39ab02c328:bcU9aj3h99grt2QV2tSabfbZs1oMksHw:1', '', '', 1, '', '', '', '', '8134000109', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-10 01:27:22', NULL),
(1142, 'Luanngoago', 'okrukgpdl@totzilla.ru', '0000-00-00 00:00:00', '06b030f31220de4750dcfa9b1281d857531d9b369bfe5abb9c63f014a9ac6e7f:BBbUaP3bR7DygPwymSpYr3GDSUrza5Ya:1', '', '', 1, '', '', '', '', '86169918275', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-10 18:30:56', NULL),
(1143, 'ahmed', 'syedanoorain13@gmail.com', '0000-00-00 00:00:00', '1a097885beb6f8e73b1c07ac6828e20b14ab181c9a28ffc58ef6793ea2f68a33:tjG2j2kHo9bvI1Ge4bQUpYUItP0SUkhP:1', '', '', 1, '', '', '', '', '31679802', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-11 22:23:58', NULL),
(1144, 'Omnia', 'monybassol@gmail.com', '0000-00-00 00:00:00', '774cc325024d8a9c9aba579ba5499dce9552742e0d99a12b87516c449fa05430:era6Jyn0oSa4OSOzmm3scFeYyGtBmr88:1', '', '', 1, '', '', '', '', '66727056', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-12 08:02:53', NULL),
(1145, 'VPSMasterFer', 'centralservers787@outlook.com', '0000-00-00 00:00:00', '94b46c91f6323062f23ee98a2cf45f86c9727acb5081aff873180f4937d18bcb:BgCXKgMLiFtpqinI7bJg2NF2ZfBUUwPe:1', '', '', 1, '', '', '', '', '87894355246', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-12 10:07:50', NULL),
(1146, 'شمسه ', 'falah_999@hotmail.com', '0000-00-00 00:00:00', '27732eaee9344345ddce12ee664fef70320b73c724be6839196351fd77057442:c3Jhaz3BhGoN8KVXWufFBm3OPOPGKhiY:1', '', '', 1, '', '', '', '', '55833573', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-12 18:52:49', NULL),
(1147, 'fawziya', 'qatar2222009@hotmail.com', '0000-00-00 00:00:00', '8a1cfc4f27909feadfb9f61a79353fdc357fccd5082731d4dfe586ba8729afa8:6vh6mHTIKNQFoYpEZjvYljfdGTxC0z35:1', '', '', 1, '', '', '', '', '55151626', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-12 22:10:56', NULL),
(1148, 'ام حسين', 'hsynmtw843@gmail.com', '0000-00-00 00:00:00', 'b6960eae9cf4c1737929c1c7c2f529ff7876a790c833ca861ab5744819de0794:YlKEl0QCRMQC6kDKxer4mB7XIOBzN4S7:1', '', '', 1, '', '', '', '', '0564139961', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-14 05:37:02', NULL),
(1149, 'Juzer', 'juzermadraswala@yahoo.co.in', '0000-00-00 00:00:00', '3849371a5bb6a1bfc1d8f9efb09cede40d1da71bc9a1a97dbd70c14718e20f5b:dzzQuLxn2RBz3hfM4TONtJmzJ7pw4rUf:1', '', '', 1, '', '', '', '', '66900234', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-14 09:41:47', NULL),
(1150, 'Kaewalee', 'jumpoo-to@hotmail.com', '0000-00-00 00:00:00', 'e421dee9a427204b0c161d897250de46e64aaef44c90503904484a3bb78e98b5:zyytHFld1AAtbPwBWPdx4V0HPqY2chmj:1', '', '', 1, '', '', '', '', '33040242', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-15 01:03:47', NULL),
(1151, 'Saksham', 'test@knowband.com', '0000-00-00 00:00:00', '6c8df6e728b9b95acf5776eba136dbca0456996b315d4c468666d713f6ff2a0e:gWtKrrk6mJqo8cVrkI4oU9bmALD4vC3e:1', '', '', 1, '', '', '', '', ' +918800936471', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-15 10:47:45', NULL),
(1152, 'Hammad', 'hammadobaidullah1@gmail.com', '0000-00-00 00:00:00', '5d09b35f00ef4016c253608dad705833f0cc7015e17031e00ce3400070bf7849:RQ08MeYCkUYUI6HW7DBdjL3vCgYDF9Tu:1', '', '', 1, '', '', '', '', ' +919515947818', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-15 14:01:27', NULL),
(1153, 'Benjamin', 'info@benjaminbiswas.com', '0000-00-00 00:00:00', '15d6b9ca18f37c6ebb83dc3d54105f6147d2547219215d91d9507369e585dc6a:D77dlqcIVuvudqZYowuzf0Ak0tox0lr2:1', '', '', 1, '', '', '', '', ' +8801710378396', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-15 15:41:55', NULL),
(1154, 'bernard', 'bernardcrentsil1@gmail.com', '0000-00-00 00:00:00', '0854d804304777ae5d7efc1e947c5b66803527b42f479381250b44b11aa2885f:EMTQYjkj7jkofG1pwe75odgTJgYWI0pY:1', '', '', 1, '', '', '', '', '393271131103', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-15 22:24:32', NULL),
(1155, 'ala', 'ala.td@gmail.com', '0000-00-00 00:00:00', '257a6d813ebb6655eb8f04e558db9f7da214062b6dba4688bdb4b3e8fd242188:4NOynSWI6ECe5sS7WhhHAc2dynHqACLt:1', '', '', 1, '', '', '', '', '50435952', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-16 09:08:39', NULL),
(1156, 'Wincy', '1612684357@qq.com', '0000-00-00 00:00:00', '01a025a9ad439db3c5a7ba478e9581c9f3ae571b37f61b9edd0b80fb645ea21c:rxROaqALPUstVp54JtvCS8voFdGLzLOh:1', '', '', 1, '', '', '', '', '13005157806', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-23 01:19:58', NULL),
(1157, 'Yasmeen ', 'sief.sadeh@hotmail.com', '0000-00-00 00:00:00', 'c4e3c70753f0cad937d95f436951bc8e0559b401ba486447ba7a68efdeedb299:qCiDUUNJJZ0sfVUQ8MFpvgOqUhUUVeiZ:1', '', '', 1, '', '', '', '', '55852692', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-17 05:23:11', NULL),
(1158, 'Navamita', 'navamita.781@gmail.com', '0000-00-00 00:00:00', 'a776b957fc65e318edeacd98f860a383df0d840062b86c325761d391152f268b:LVOjQBkYfdk1zVDlDjFviE5Y2wT5O9ss:1', '', '', 1, '', '', '', '', '7094 4508', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-20 05:46:35', NULL),
(1159, 'abdulrahman', 'syrohero@gmail.com', '0000-00-00 00:00:00', 'd009cc0a6c1c76ab9beaffd84f01abe63bd48a484b65170bdc134ced70c381c2:poMdAGjkGnYnq7D6Yv1yWSQkt4MPFAhx:1', '', '', 1, '', '', '', '', '50326550', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-20 10:58:31', NULL),
(1160, 'Sanju', 'sanjukevat16@gmail.com', '0000-00-00 00:00:00', 'f2628b0967ea10f9540ce93c147c2af80ca9d0e29e7e3f6520d3d0f00c1ce1a7:eX1s7yk8weTIIk07Pl71l9aTjg5aogf9:1', '', '', 1, '', '', '', '', ' +917067433880', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-20 11:23:42', NULL),
(1161, 'Gautam', 'gautamsingh9708@gmail.com', '0000-00-00 00:00:00', '136be71b0a3bc6a66fdc69a673f8d0336406f4b0181fcee199aec2a821008e36:lqsIvObJcpH2One50Vv4U7WDpXSL8iZB:1', '', '', 1, '', '', '', '', '7091698372', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-23 12:15:59', NULL),
(1162, 'EricksonhG uS Iw https://pixeldrain.com/u/TttWcrcK', 'm.i.h.a.il.uvel.ev@gmail.com', '0000-00-00 00:00:00', 'e693606ce9d25a8c1e1e086b01a9f478be5e82fdf0af56d0d64f288641b54e53:o1TgPq8oTkczrG8QVoAxGKwloCgLWoKb:1', '', '', 1, '', '', '', '', '9992739601', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-23 17:10:07', NULL),
(1163, 'Meshaal', 'meshaal.alibrahim@outlook.com', '0000-00-00 00:00:00', 'c897e7d215dc59725bbb15d62503d7b12c0c22f5dbdf93d2abb6af1f7df73c99:Hhv8JfRuNKoWp8n5dojVEx4hHZ6ZuO7t:1', '', '', 1, '', '', '', '', '70411111', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-23 17:29:18', NULL),
(1164, 'Annamaria', 'fioreannamaria822@gmail.com', '0000-00-00 00:00:00', 'a6e697869cc897238652f008411ced47ff75e694ec40ef4ead9f8415f126ab9f:GL1ZEHgwvLPKEEVgOwvyCipG5k3SrEy5:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-10 21:43:20', NULL),
(1165, 'Tuyetwem', 'oxogt4l7i@gmail.com', '0000-00-00 00:00:00', '5bef38c03c165551711c6ca4ec251f8283bc9187bd3001c811ad1916de200d3e:GOiZgJNmD6W9D6GaWcDAhMZlmoh28cDi:1', '', '', 1, '', '', '', '', '86488692652', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-24 19:43:07', NULL),
(1166, 'john', 'johndoe97@example.com', '0000-00-00 00:00:00', '0c2c30711e1e21947f74307c1d566fb80ec11dc171bb3b0a28e07bc838ab35ca:SClpYTiVO0hJRmI0qA4uwbor2E4TLsSm:1', '', '', 1, '', '', '', '', '8791169716', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-25 07:42:23', NULL),
(1167, 'majdouline', 'majdoulineabedd@gmail.com', '0000-00-00 00:00:00', 'c9fb478a412055e06bd4533713b6959fdae471d7f0caba97fc07dc5314f553c2:anZ1X1auFrCeTKtY1eFYzDTIr5eHSMO1:1', '', '', 1, '', '', '', '', ' +4793644123', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-25 10:51:13', NULL),
(1168, 'Bishambhar', 'kushwahabishambhar@gmail.com', '0000-00-00 00:00:00', '3e67bc0829a38e6d4b63f6dea511a34796debdd0e4df577679941cf59e7ca8fb:OL85kSshjM77arT2yCbz5mfQPR66JFQi:1', '', '', 1, '', '', '', '', '50156778', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-25 13:01:38', NULL),
(1169, 'HerbertskynC', 'mymail@mailforme.club', '0000-00-00 00:00:00', '17c6c25bd4ca78e13bf00e856553343b1c07af52f36101e79c5136094ecd8ae7:Uy96enD6RRKMnUrG4NUqYQhW18HkLHIq:1', '', '', 1, '', '', '', '', '87761287951', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-25 14:51:24', NULL),
(1170, 'Abdullah', 'abogu302@hotmail.com', '0000-00-00 00:00:00', '28514f52275bde1893e230c04f03c406f20becb1b9abf5a896d1bc3717e1f4da:ddYcrh0DGpx1mLMvSFUIMxl5xWIucjHg:1', '', '', 1, '', '', '', '', ' +97466895629', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-25 15:20:03', NULL),
(1171, 'Sabeel', 'ahmadsabeel466@gmail.com', '0000-00-00 00:00:00', '405ce5673b8c87dee24acb8a3aa0095123afa435cbad4bb985f00160cb4ee579:LJcVvTpGR0j7NNSpTAn2Wnvye3DTIVnl:1', '', '', 1, '', '', '', '', ' +97430129950', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-25 17:17:16', NULL),
(1172, 'Faheem', 'rajafaheem72@gmail.com', '0000-00-00 00:00:00', 'b0a9bc40d8b4ae01b5f189e308b56b322d0d37134d56d49c4ca4782d97c4b8c5:1O9wFn0TCQsunoEO5jyZuggwtwRFxqQy:1', '', '', 1, '', '', '', '', '66869128', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-25 16:43:25', NULL),
(1173, 'walid', 'walid@gmail.com', '0000-00-00 00:00:00', 'e9907b1ea3f13c2f290099042853dcc772b5a90bf779e37a1670917ac256de33:6C2ICQ5wB2igoKrRIpLXa3LLzqzHMfV8:1', '', '', 1, '', '', '', '', '66269645', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-25 16:56:17', NULL),
(1174, 'adnen', 'scantak303@gmail.com', '0000-00-00 00:00:00', 'bb19dbed39708262646e1c97878942a33c88fcb16bd61b9ba23a28a6f2196d98:2ADK1CkQ8gBFz069NRnL9TesRYqQ8bsX:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-25 20:05:40', NULL),
(1175, 'mahmoud', 'modhelal20@gmail.com', '0000-00-00 00:00:00', 'c47190eebde8cb8362252dffefe5b5fd97b49956afdab5f0db49fc2cef14bd67:DcLFjhCspbYtOST9yb80XhaVowTUzepP:1', '', '', 1, '', '', '', '', '30710730', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-25 18:23:03', NULL),
(1176, 'Donaldusawl', 'premecnusupawnwb@mail.com', '0000-00-00 00:00:00', 'b9361953e5d9ac89982d256e7caf66d4d6c62f1787c6558e7d76a609ae92d539:hSUmwnpvCXtvjFgQEeZd0hpO7t3jWGAw:1', '', '', 1, '', '', '', '', '83387388148', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-25 20:50:30', NULL),
(1177, 'zero', 'mohdklie@gmail.com', '0000-00-00 00:00:00', '744f40f52b1dcda36f1d5c66c15e37af51e08ce6b87481572ee2da7e338aa35c:EG70X5xeUI02uQ9n6Bg411KFsW9v9Wei:1', '', '', 1, '', '', '', '', '33305757', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 01:19:44', NULL),
(1178, 'Miftah', 'miftahaulislamerfan@gmail.com', '0000-00-00 00:00:00', '6310fbb795dea46a21deb27724c09a1dfe1d7dbcd2147bf6ebb5ba53aafe0232:cyBfujqw7zOtHEUa2jPlc4LX1AgfmZhj:1', '', '', 1, '', '', '', '', '55035538', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 09:50:55', NULL),
(1179, 'ahlam', 'ahmedalzaina2019@iCloud.com', '0000-00-00 00:00:00', '1394b6c6221bba59f86aa64be18ffa9f5dfeefb087771890804b3ee5922d7f30:2YZMyagLEWwnxWWa7tLJuEAvQD1EpRN5:1', '', '', 1, '', '', '', '', '50466366', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 11:00:01', NULL),
(1180, 'warda', 'warda44004@gmail.com', '0000-00-00 00:00:00', '894a7f5945c77af614fddcb69b5c09dfddb0439848fe5f06008d584f23e48807:pRIqidqQ0xAW2pYMZezWvaQD45KtLaHV:1', '', '', 1, '', '', '', '', ' +97470446353', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 11:11:25', NULL),
(1181, 'dana', 'danakhattab2004@gmail.com', '0000-00-00 00:00:00', 'b2ba39582ef0c4985b66d3ece5efc8138e9ea8ee0b00a0a36d1bcf7904a31d52:8osp6KlPG49VvB6vbuhWU08qdM9L6UaB:1', '', '', 1, '', '', '', '', '55180593', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 11:25:13', NULL),
(1182, 'shazia', 'shaziabhatti3377@gmail.com', '0000-00-00 00:00:00', '8fc19b6fe0b66922b49673d375dbbcbf3e3264cee6b6c8953b88ce1cedb9ffde:bVbtbpslqNeynPpZjGbsciebEhjjS0Mk:1', '', '', 1, '', '', '', '', '66559660', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 11:31:52', NULL),
(1183, 'saja ', 'sajooje@yahoo.com', '0000-00-00 00:00:00', 'e74339f38c9c593af75a179a5944aedeb109543c276822bd4154c5f735249667:DLP4UEE46Phuao4mEkfYmi9FFUhkffgp:1', '', '', 1, '', '', '', '', '33983754', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 12:05:00', NULL),
(1184, 'temar', 'temarmohammed775@gmail.com', '0000-00-00 00:00:00', 'a99efbca8607d7ad37a3cab4483acdea1d59edf05ca6d867e233c65def4570d0:qH3apDgS1qNhKe740RFVjQbKWH86FlAb:1', '', '', 1, '', '', '', '', '33692548', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 12:09:45', NULL),
(1185, 'Heba', 'asmawarth@email.com', '0000-00-00 00:00:00', 'e043fdf38d748077720e23a2388554d6c975351e3029e902f724f70e8bb7b7b0:RgSaX7WUhCzveKkiKav9uc6LXBlV38JW:1', '', '', 1, '', '', '', '', '30317807', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 12:37:08', NULL),
(1186, 'mohamed', 'mohamed-s-abuhamda@hotmail.com', '0000-00-00 00:00:00', 'fca2273b4a22cc9948ecb011cff7a54542790f35297504063abe77d7d60bdeae:hkvXOoDTNRzX1lbMdc0p7b4bcXVcvSi6:1', '', '', 1, '', '', '', '', '33834805', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 12:41:43', NULL),
(1187, 'Shouq', 'shouq1003@yahoo.com', '0000-00-00 00:00:00', '54d65e722e0592b2ba9cdfeff4f860538e406fa23ed5f3ab46d182ab441d6797:k268gmaejfYClgrZRUSeMcYvPSL2pTEr:1', '', '', 1, '', '', '', '', '33620611', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 12:41:54', NULL),
(1188, 'Lovely', 'mary.jane6058.012@gmail.com', '0000-00-00 00:00:00', '9598306fcc862aa682edea115818186fb5d143decbd9d1b45a025f78636f5d47:Vi1gAK0dM3xvXZxZja2Ky5JNrSZvOh20:1', '', '', 1, '', '', '', '', ' +97477453361', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 13:14:37', NULL),
(1189, 'reem', 'jmal.alkooon@gmail.com', '0000-00-00 00:00:00', '45a114c459502b55d01d16423949e8353e1c3f90d4a48b842571de01ffa10fc6:7eUdbfNwtOMPLI8vKfdQKMdlcoxWwXgU:1', '', '', 1, '', '', '', '', '55982910', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 13:23:29', NULL),
(1190, 'salma', 'Sm1852312@gmail.com', '0000-00-00 00:00:00', '492250eee0ab9fce45dfbbe1d9ab504615bc5b1d948ec84a166c37a248d514af:Ge7PkSTIx6TfiHeBVH5gmMjK5baUpZ5a:1', '', '', 1, '', '', '', '', '70443049', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 13:38:01', NULL),
(1191, 'dana', 'danaothman2001@gmail.com', '0000-00-00 00:00:00', '5a025c90b94ec62b2d06349981a0ff066470ed3df0f904a11826668d448a6faa:yDokdYNyO0ZuljNTX1QUl93HqMK7SRPN:1', '', '', 1, '', '', '', '', '50443088', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 13:54:01', NULL),
(1192, 'Amal', 'amalalsaadi@gmail.com', '0000-00-00 00:00:00', '80051a12bb98996436ea22ec28cd6527480115565dc99d8f003105eca8a8c7bb:XEFmc1WsAsjFuChWGkqca9bgJBUBI1co:1', '', '', 1, '', '', '', '', '55000369', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 14:00:43', NULL),
(1193, 'محمد ', 'Emanammar.1204@hotmail.com', '0000-00-00 00:00:00', 'f13124b373070612bf3eda286e561f5f25994436ade8344a07298eca87a2e478:xcTkK8l0r0Qt7HvrdxrSA1luGRpHMFhm:1', '', '', 1, '', '', '', '', '٣٣٣٩٧٧٢٧', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 14:05:37', NULL),
(1194, 'amal', 'amalalhmyari94@hotmail.com', '0000-00-00 00:00:00', 'c175259919d18860785d129ddd61c8cd1c9de26c910593cfc7458af117026557:u0U7MrreYv78bw58ngq3EsBSfmVFNlBa:1', '', '', 1, '', '', '', '', '77979024', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 14:46:42', NULL),
(1195, 'rima', 'rimaibrahim84@gmail.com', '0000-00-00 00:00:00', '2a18256e0630ab6af0e0212f925007567d20f3a4ee1e179f903ed28529efeb82:ZenC59KdVoLUacXIuvLl0kmekM7OuIj5:1', '', '', 1, '', '', '', '', '55508010', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 15:01:42', NULL),
(1196, 'Alaa', 'Alaa.Hussainali@hotmail.com', '0000-00-00 00:00:00', '157fd06f3a476111ab2bdc9a4e6db06e8cc58de5433eb598a0bf61b2a88921f4:ZGs71ERQcFDur7rIjtpvtDUrKq1euWax:1', '', '', 1, '', '', '', '', '77778192', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 15:21:10', NULL),
(1197, 'ahmad', 'aterjalli@gmail.com', '0000-00-00 00:00:00', 'dcee1ca7f5985cb811b7aa96395d5fbc03a24c3fe4a7e40b17790d6fc81d75b8:Go4yt4UIjtXgbQHXdgulqHzz6ivYEs86:1', '', '', 1, '', '', '', '', '55917647', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 16:28:09', NULL),
(1198, 'imane', 'yaqo.imane1@gmail.com', '0000-00-00 00:00:00', 'ad9159e153b505ad84baefdf45f418625a984e091fac773d17aa293ce21373af:pf3uEpTvW5ckRYn5r6kQMmjrq2LjTmsF:1', '', '', 1, '', '', '', '', '33686853', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 17:13:22', NULL),
(1199, 'salha', 'salha.aljabri@gmail.com', '0000-00-00 00:00:00', '8d85a47e30a4e1be469e3a731159449247a9ce8a1f3764075653f41b37c81509:xzusaDx4HhIIgXcE7g2O2N6FNdyO6hC7:1', '', '', 1, '', '', '', '', '55560053', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 17:20:38', NULL),
(1200, 'خديجه', 'kh.mashayekhi1994@gmail.com', '0000-00-00 00:00:00', 'f1fe1281f619c23c3a356a2cc27147e176a8cc3bc9361c1e26f5d4b5b97dae15:YwARNLFmE6xF3Hclz1a97AHUp1N5TA6C:1', '', '', 1, '', '', '', '', '77311151', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 17:58:00', NULL),
(1201, 'inam', 'salmankhannnnnnnnn4@gmail.com', '0000-00-00 00:00:00', '007852151c00f898dc1fb6ab55dac55cee78a866c1cf50307a90be71093baf8b:rNwBRM8NRCDaMqytpHPPENR8ZtSlBae6:1', '', '', 1, '', '', '', '', ' +97474798972', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 18:38:32', NULL),
(1202, 'Mohammad', 'mohammadsajid30000@gmail.com', '0000-00-00 00:00:00', 'fa536dd474a275c32e242a4534141280a31b4792393fd5d89ee744766a41f77d:WJPoMUYrVpkEzvNGcwUC4JxJysOgsSQA:1', '', '', 1, '', '', '', '', '97431081712', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 18:46:34', NULL),
(1203, 'rasha', 'rashazaarour1987@gmail.com', '0000-00-00 00:00:00', 'd63685bb2578ff65685edc1c2dfa4ef3882c0fa4d846470ac51619e65574de55:IjOl4xqR89bjvGnlVKyt85MSgycLe2l9:1', '', '', 1, '', '', '', '', '33041561', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 19:15:08', NULL),
(1204, 'عريب', 'oraibmutea87@gmail.com', '0000-00-00 00:00:00', '0328dc4b015a2d284256cece22ea70647d490dab8b25579e81d145f9f9d81690:LtxrSJEzydJZGvDIlRcODJaAgZgqJm0k:1', '', '', 1, '', '', '', '', '33603875', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 19:16:31', NULL),
(1205, 'yasmin', 'yasminwalid864@gmail.com', '0000-00-00 00:00:00', '4b1acc80d0887636f3b5916f9d67d81e847926e0937a460d3c05bf8d4b70a1d4:U69L4cun3PlEv0u7KRtvIDEfEo018dEX:1', '', '', 1, '', '', '', '', '55386405', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 19:39:40', NULL),
(1206, 'farh', 'malak_waheed82@yahoo.com', '0000-00-00 00:00:00', '43ae4ccbe6faf8757c7ec19f6aa4ec10b944ed21e0376b01dae02ec155fdde6e:81f27mUF51hGjOOF0wjAdq5dygAoIDhE:1', '', '', 1, '', '', '', '', '77606036', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 20:31:52', NULL),
(1207, 'fatema ', 'fatimaaldoseri4@gmail.com', '0000-00-00 00:00:00', '87db9de417bba70cff35d0b59a050465d865b02a8b701ab63557d0f1654ad174:ImVJ1XlL8BEI2aqn7cov04Rxp6O37wiJ:1', '', '', 1, '', '', '', '', '50194194', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 21:32:40', NULL),
(1208, 'AllfordIJ aj kj https://pixeldrain.com/u/COcJvziW', 'marmtyw8pavov@mail.ru', '0000-00-00 00:00:00', '18392ad75e56229383c286b7a84b7db52a27fbfec35f459b84a5793aa4fe2f26:hwJVM4hYwP5SVeJE1X8P3hXxXYjeBySN:1', '', '', 1, '', '', '', '', '9991000000', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 21:45:23', NULL),
(1209, 'Steveaerob', 'rezaasadi6780@gmail.com', '0000-00-00 00:00:00', '8ceb19f63f3570950803ef694900742e688aff9d4ddaa2fdfcff4b9df2ac60db:zp56nVuLYuNIp14T9UiHSlPn8IaHMpbR:1', '', '', 1, '', '', '', '', '89695812971', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 22:48:35', NULL),
(1210, 'kaoutar', 'kaoutar.aatioua@gmail.com', '0000-00-00 00:00:00', 'baa560b47f25b694873262f2bc48ffdbec6d46b6e58e068d4779c14eb4b14f0e:e6bXOZBDd3JtPz0Kugv71HOMZhDZKOEC:1', '', '', 1, '', '', '', '', '33777059', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-26 23:53:37', NULL),
(1211, 'خليفه  ', 'k77779741@gmail.com', '0000-00-00 00:00:00', 'f3e523824a7917a07e3da0e4d591885acae2205c6620c7661d9604fd9687e403:MSKdGI5QYA626sRcTVDTQarAbq14aVpZ:1', '', '', 1, '', '', '', '', '77779741', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 01:26:33', NULL),
(1212, 'rana ', 'rmusa@qf.org.qa', '0000-00-00 00:00:00', '9866383f7fb74736b4513496fa912ed84bcad4047cf8a62752047696c01d5b1d:hvkhpyz34ZMAQDO3d4TouJf7dm8wWdjW:1', '', '', 1, '', '', '', '', '66132523', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 01:59:46', NULL),
(1213, 'Muneera ', 'mneera.albaz@hotmail.com', '0000-00-00 00:00:00', 'a464dddb49a4fb203889404bcba930a65fb0dec8820fab5d2b2b45543e8c815e:herZqs5D3DLK0Zd7B4WgcKzKVDiBujS8:1', '', '', 1, '', '', '', '', '50122856', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 05:04:50', NULL),
(1214, 'Nada', 'nm508007@gmail.com', '0000-00-00 00:00:00', '783c133a68ac33ac4c76fd6cd627c93a67367aa868143b0f238af946a1ec6c0c:3SRkpwcpcncsuNaO8sZGlQnjTkAszMwh:1', '', '', 1, '', '', '', '', '50566881', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 05:26:11', NULL),
(1215, 'نوره', 'n.al-hajri0312@education.qa', '0000-00-00 00:00:00', 'b98c0f4ab8ca26aa134dbaa34933ad973414a0d7655447ac09a1cbef87fb1f47:xMRtkBr4aLcylfNUi0Xkjf5hYDa6ilp4:1', '', '', 1, '', '', '', '', '97455506104', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 06:09:57', NULL),
(1216, 'eshraq', 'eshraq50@gmail.com', '0000-00-00 00:00:00', 'be961c88ae502a30aedb587377b2eb837250e4ee13656fbe5021622176029051:AzVPCRDIKB7AaliYJBNgCgoccCmAe3rY:1', '', '', 1, '', '', '', '', '33696765', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 06:13:54', NULL),
(1217, 'lana', 'lana_kilani@hotmail.com', '0000-00-00 00:00:00', 'ebb8ac0777ed67795915b4f7e1c300c0ccc6242dd8197e7ab152501989e70ee2:oHCbteFs9bldI3VGrMrYmugT5r4aJpsw:1', '', '', 1, '', '', '', '', '33538925', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 06:38:11', NULL),
(1218, 'Aisha', 'aisha.alborasheed@hotmail.com', '0000-00-00 00:00:00', 'fbed5a878f4019a093fa6b05e5244a86814abcdd6c496097022182ec8e20a71e:mcTJ8SVUnhCYEVNIUJyYbhtdjnF7REqA:1', '', '', 1, '', '', '', '', '33301331', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 07:33:35', NULL),
(1219, 'Rima', 'moon-angel.r.b@hotmail.com', '0000-00-00 00:00:00', 'aacff9720df871adc7bd90c2da4d2445b808581167dce29564943d1c4a1a7659:LeiisoPyT7NmHw1YQfBX2XuWQkdM0Wmj:1', '', '', 1, '', '', '', '', '50688255', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 07:48:12', NULL),
(1220, 'nora', 'noramohammed1992@outlook.con', '0000-00-00 00:00:00', 'e633a176470d7a1d2647e1ddf03a9331c6e2e46e4f2ffd7e0495d5bbde1a526e:qvNs6YrH2NczejOCMHuftqMVpiyoq6HR:1', '', '', 1, '', '', '', '', '33328158', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 07:59:58', NULL),
(1221, 'Eman', 'ealyafei98@gmail.com', '0000-00-00 00:00:00', '384dc7b86cd4f683fbc37079394b64055b813e18928186fd72c3c8e59647db7a:K8QbHjmlIqwl2JvhvfCZFIOa97qRuEMK:1', '', '', 1, '', '', '', '', '50273468', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 08:18:36', NULL),
(1222, 'amna', 'aaa-310@hotmail.com', '0000-00-00 00:00:00', 'c5c056ccfefbd9eec890892a21223fcd796b0f5ff47a78fddd2a8d9865ce5293:miMXv02i553YR0nmAt9qYfCZIVCBexMf:1', '', '', 1, '', '', '', '', '66692333', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 08:47:43', NULL),
(1223, 'noof', 'nouf_1982@hotmail.com', '0000-00-00 00:00:00', 'fd65ba2b50f5faff6fb6ba945ca847c2a1ccfea5cf82890188f1f31aa8a2e516:XQgjTnwevHsVjDyB167ne2Iwcke8jxY5:1', '', '', 1, '', '', '', '', '66977882', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 08:56:16', NULL),
(1224, 'tota', 'keete2709@gmail.com', '0000-00-00 00:00:00', '6f5f29be03176b8093b568ab667099d1ba8cd5ec1691546560b56eb2c6717627:3Nc9U2nV3ec7gU7U8PiQcI8Jf4P7fIS0:1', '', '', 1, '', '', '', '', '50444528', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 10:14:02', NULL),
(1225, 'Lakshmi', 'lakshminairs23@gmail.com', '0000-00-00 00:00:00', 'bb6187f6cc34ea4d56f66229f5a0166c58b59d919b28173c98dc8bc08062ec56:MbFoIqplrapLPnQyDFD8HX6OjiGXpDGs:1', '', '', 1, '', '', '', '', '31262835', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 10:25:35', NULL),
(1226, 'احمد ', 'Ahmad.fahadqtr@gamil.com', '0000-00-00 00:00:00', '94147251fded580240819ea294745bc11919380aed21fa23c998f67a37583c54:pISx2th39zzLtJz5WUG9djwmZKUJ4zOl:1', '', '', 1, '', '', '', '', '31551552', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 10:47:00', NULL),
(1227, 'Tharaa', 'tharaamobeidat989@yahoo.com', '0000-00-00 00:00:00', '53e5f9f9b54bc2cb0ea2af716ab71a8464a990dbd73c0e3cffd90c98016bbafb:JutPOK3JNapuVEkbUG3tbIUf6Awj5x6V:1', '', '', 1, '', '', '', '', '55995384', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 11:16:02', NULL),
(1228, 'سعاد', 'sadalbdallh69@gmail.com', '0000-00-00 00:00:00', 'f6065438c4b406957419b10e13e916acfbe520121bfd504b032a6b86a70fd138:eXfzc8p6iGmDCHnu7z6TWdQ2R7QRAt1R:1', '', '', 1, '', '', '', '', '50345035', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 11:21:08', NULL),
(1229, 'Fares malak', 'rowaidamalak@gmail.com', '0000-00-00 00:00:00', '8f3f75cfdce23bc052fd3ec857e96ed2eaea9aae1fe7b768081c2fd004f8b310:BTJbsd7Pq0VPT5WFnUwbgKwTCr0UQhOU:1', '', '', 1, '', '', '', '', '55042455', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 11:48:13', NULL),
(1230, 'ghofrane ', 'ghofranemehrzi@icloud.com', '0000-00-00 00:00:00', '6cb3ffad239dcee12fa0bcd240ceecb16f4eca6b40bb326cae9b7dabb5c7b7a3:kPhLZbMR4HUdnw7MHCbAdI9h1jLa2c2C:1', '', '', 1, '', '', '', '', '50221951', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 12:04:11', NULL),
(1231, 'ناهد', 'bakheetalghanim18@gmail.com', '0000-00-00 00:00:00', '7ccac6ec9165d5d3805c675885347228aa22b1f23b52102a769512e1760dfc43:2B8Of7qVfleFbywzyFAa6mpoP84S8POw:1', '', '', 1, '', '', '', '', '55895818', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 12:52:44', NULL),
(1232, 'محمد', 'kato99.kk@gmail.com', '0000-00-00 00:00:00', '9436671174cbbb7c4c40715534c4b684d2914f23ae136c0aeaf54a9618cf848d:Q2U06JHYWkiMwdCyqmpLC5p3Ic7DS0w2:1', '', '', 1, '', '', '', '', '77423477', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 13:33:54', NULL),
(1233, 'Mariam', 'mariam_sherif@yahoo.com', '0000-00-00 00:00:00', 'd6ec2972c45320cd73974534961597d308edf338faa3399b50ecda97c1a6eb9e:W6Da8kosYNHKmiupldu1TB2P7vT99xbS:1', '', '', 1, '', '', '', '', '66405395', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 13:51:49', NULL),
(1234, 'nasser', 'msm.2014.qatar@gmail.com', '0000-00-00 00:00:00', 'a6de21cbf20431e9fbc9cb1bc16130242ac20656e7a8e6277c4e20dc11d965a7:ELI5zjbl7zgJHGuzDHY69jHO1BOhnbwa:1', '', '', 1, '', '', '', '', '55052745', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 14:17:55', NULL),
(1235, 'Fahad abdulrahman', 'fahadqtr232@gmail.com', '0000-00-00 00:00:00', '23b434d6b6dd495805a45632a0c2bf3871eb5da798c2c7f39d4855b522481833:uIJcGnzwwUTFPGABmrrJMn3ATryBmSgq:1', '', '', 1, '', '', '', '', '74052976', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 14:27:43', NULL),
(1236, 'سعد', 'mirsaad@yahoo.com', '0000-00-00 00:00:00', 'b410d21b397e688a621c5cee3e6d99078d583dd1de96f7ef826526e9960f4916:zKb048l6Q6QSi0XeBYFqAX1SKBcGgnlu:1', '', '', 1, '', '', '', '', '30993388', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 14:59:43', NULL),
(1237, 'Tuyetwem', 'iqazr6x6p@gmail.com', '0000-00-00 00:00:00', '54d241cb0906e265c7803fddf4161cf5d16d14ff036951b2e9455a8b54894f3b:Z4xVe73wu3BLuc9RL8GUNb17ssbUpjWf:1', '', '', 1, '', '', '', '', '83449688149', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 15:06:26', NULL),
(1238, 'mohammed', 'meybk70@gmail.com', '0000-00-00 00:00:00', 'cc28b1bcc991d002b56cef2702b180fcc6ef2d6df1e3e3eb30482574cbd17ccc:IzKghnRFX6drFfFULGY8aqIFp9zsqh9G:1', '', '', 1, '', '', '', '', '77433444', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 16:35:51', NULL),
(1239, 'ام عمر', 'sara.mhelal2@gmail.com', '0000-00-00 00:00:00', 'd2fb51cf0c97d5c4351a6b2a5c5450991cce330d490d773b5892d4bb1235f218:KXosVzfARFDcNd16RDSnjZKtY36OAZt3:1', '', '', 1, '', '', '', '', '30015663', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 17:17:48', NULL),
(1240, 'hajar', 'namrouchhajar@gmail.com', '0000-00-00 00:00:00', '683ff9b342d2e4da65937c0edc946c59dfbbc5bbf72fefe5370912d7e7852eae:I5YWXXheUtiM8oXvFAbURkldT7pyHTna:1', '', '', 1, '', '', '', '', '77041445', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 17:30:18', NULL),
(1241, 'Jihene', 'marzoukijihene79@gmail.com', '0000-00-00 00:00:00', '6462e36628c8ec5e5f08c4c63e5cb4ef2950e2c38f6d99387c4ab5a47d731351:RThV6PGGnUq2IcRTPd1Bebe2WYxPrBTn:1', '', '', 1, '', '', '', '', '50446679', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 17:54:05', NULL),
(1242, 'kaoutar', 'aatioua40@gmail.com', '0000-00-00 00:00:00', 'ce530912a1bdc948eae05e90b0d5bfaa80b137c770d1d4a95eac7651041a1207:q55hmhmDSPReJ1Xesx5Jnl7fVwWIJY2j:1', '', '', 1, '', '', '', '', '33161116', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-27 20:57:53', NULL),
(1243, 'aisha', 'aishaalshmri7@gmail.com', '0000-00-00 00:00:00', '8cb00d0ab325c75f5309e6a77a7845bc117df72c67221cde63f03ff4b4033d68:jkDJniGWfMwtd5CmW0roECv8DlF2SKau:1', '', '', 1, '', '', '', '', '55292011', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-28 08:33:36', NULL),
(1244, 'Mohammed', 'muzammil7266@gmail.com', '0000-00-00 00:00:00', 'f6060d29a056025453785323de625c75030d0f5f0b7cd290b598aaebc6eba7b5:ibVEixfH9joqWlNHHq1pKyeR5s3tLxMt:1', '', '', 1, '', '', '', '', '55737175', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-28 12:49:56', NULL),
(1245, 'mahmoud ', 'aboyassien30@gmail.com', '0000-00-00 00:00:00', 'c014fd204f22011d96d0c71fd128ed7fa6d4d8d94b5634c46be7563ddbb349d7:3mRxxG34aarbRo5iWlC8l8LuK9DRL8Bk:1', '', '', 1, '', '', '', '', '74462404', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-28 13:08:46', NULL),
(1246, 'Ahmad ', 'layla.qatar2022@hotmail.com', '0000-00-00 00:00:00', '5ee97a226d1da10dfbb5747407fa9886eaa3b5f39a15a57913dad4df69a3b26d:rtvK6Zrx5XQzJgMBHZ18ItJpD7amCyk3:1', '', '', 1, '', '', '', '', '33133312', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-28 14:05:41', NULL),
(1247, 'كوثر', 'mandrikawtar@hotmail.fr', '0000-00-00 00:00:00', '9ef394b67242757105eb63c77161ef5dd7e90da369ac555fb273e354c3a089fc:kzrAw35FScF1yNIWMFGCyQ941mAkxAxI:1', '', '', 1, '', '', '', '', '70563000', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-28 15:37:30', NULL),
(1248, 'ahmed', 'akheder5@gmail.com', '0000-00-00 00:00:00', 'e10ed827bb27697f5fc2d06749e6ca85106890c8b66b0d7ef4d53cbcec39a32e:kZ9Pmlkz9yrQggYGRpQNvxYG56rn89xV:1', '', '', 1, '', '', '', '', '77002240', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-28 17:26:05', NULL),
(1249, 'Kholoud ', 'k-j88@hotmail.com', '0000-00-00 00:00:00', '0626396036da4f45737b98e8eb31514fe0cd65f379fb3fe1400cc2bf924d69a4:aYcQ7YcQv3QExlp7gcsgKZ11CDvuG8rh:1', '', '', 1, '', '', '', '', '55845509', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-28 22:22:41', NULL),
(1250, 'Mohamed', 'abosena_mie@hotmail.com', '0000-00-00 00:00:00', '10d3c9b8aec408f47f2285745a357996af7a9949e351222dfa26d2b64729b047:MEIMAFQ1slHvFf5HtufeNMxdvemCNX4m:1', '', '', 1, '', '', '', '', ' +97430116660', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-29 06:17:50', NULL),
(1251, 'Marah', 'marah1008@outlook.com', '0000-00-00 00:00:00', '2852f162bcd49ecfb4fb3b2066f33a6ae885bcba66f1632986ee6a8a1cad30ee:0KZQkYpOvbUN4LXBfmFUtrhFHAa1dwr4:1', '', '', 1, '', '', '', '', '33700370', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-29 06:42:59', NULL),
(1252, 'Nazha', 'nazha.qatar@hotmail.com', '0000-00-00 00:00:00', '27e4e8e747abcc4a734b2a2fc903dd8a55b1565b5e3774836ec150fd5a9b7d64:6ohAC6YKW3zsYMwXCdtbmTEKRLSLI3Ja:1', '', '', 1, '', '', '', '', '0097477788646', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-29 07:56:32', NULL),
(1253, 'Dorsaf', 'dorsaf.skh@gmail.com', '0000-00-00 00:00:00', '27f82213c54b41810f2e255c91598f498ed6b8992ddd6b5025c8bc41ce83a8f2:zCSqwsILRMtSce0p40echsDE90tUxObg:1', '', '', 1, '', '', '', '', '70781828', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-29 09:47:22', NULL),
(1254, 'sanith', 'sanithchamara105@gmail.com', '0000-00-00 00:00:00', 'f4dbc6a139b3d0695d4a4aae3c1436f26ba67201be3d645235276959fdf3c814:aJakYTxO0pR4lyxMKXaZ2kCt1lz4ArKT:1', '', '', 1, '', '', '', '', '30919417', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-29 15:48:05', NULL),
(1255, 'sajjad ahmad', 'sajjad524405@gmail.com', '0000-00-00 00:00:00', 'a75ca0faf61f13c708858d7b9de66b585d27d168666304a3e6fe9818faf9c8d7:JxAYJ3ggnIJlmXiIxBNoq5eiHrI1ysZq:1', '', '', 1, '', '', '', '', '50600835', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-29 16:50:11', NULL),
(1256, 'Alanood', 'kefaya.jro0o7@hotmail.com', '0000-00-00 00:00:00', '32896afcc733962bad348707e9987d61e7c861c8edb55ee7a2d9794200e028bb:SSNDo8P4La0YqhK2xAQzvNdVligK1by3:1', '', '', 1, '', '', '', '', '77996993', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-29 18:48:19', NULL),
(1257, 'jamal', 'shosho_143@windowslive.com', '0000-00-00 00:00:00', '0028b8926320151508eaf3c72871edcddad3242893630cb48d4d6df52e39306b:Eoefm2d6aZ1kSbbMMyGpQDtxV6uDCPVH:1', '', '', 1, '', '', '', '', '55479797', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-30 10:47:33', NULL),
(1258, 'Hasna', 'hasnahaimouda@gmail.com', '0000-00-00 00:00:00', '6108d8a4210e4b7c5b62b3d9cfbcd9ab8fc1432a00b2f9b9ab77184d0dc339f0:z22OS6uFmHFmMlu6a0CGPJG8ZZRzXEbF:1', '', '', 1, '', '', '', '', '66542565', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-11-30 18:55:14', NULL),
(1259, 'Alan Jay', 'alanjaymanzano@gmail.com', '0000-00-00 00:00:00', '77e82d36004e82b1b1bad9462041712a721395a07807832bf21e870da251cfad:pFAKz5P7EbJHadZlCb26YLHXLYuuWZoF:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-01 05:23:11', NULL),
(1260, 'shamsa', 'shalmansouri3@outlook.com', '0000-00-00 00:00:00', '61a4fee2a60476434acffe1d3d8a2b187c1378393e0423e023d1c9d35f8effbe:Et5cBH7hn7uVyyVFvy2020tkprfUVUfu:1', '', '', 1, '', '', '', '', '66482395', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-01 10:03:02', NULL),
(1261, 'IreneInede', 'cripto@melssa.com', '0000-00-00 00:00:00', 'a1295ed741cb8d5340102d32e79a48ca0285a49501ff7eea363cebd212ad66f9:gXPqc5a4SRHGbbOcRF0REl7A5iDP0hh5:1', '', '', 1, '', '', '', '', '86839982257', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-01 15:35:55', NULL),
(1262, 'Jonathan', 'jonnyelia0696@gmail.com', '0000-00-00 00:00:00', '77b07421db32358a9a543aeaf9c748cb55003e76ad04c9c5de20e540ca6bcdfc:2DYo4lpEHKb5o7t8V0ZrNukGCe8wVWcG:1', '', '', 1, '', '', '', '', ' +393512499272', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-02 01:17:38', NULL),
(1263, 'FrankSwesk', 'ninzah5@bambo-mebel.top', '0000-00-00 00:00:00', 'ce43ad355bebafb4ca12c8b51bbaacddb9ac4c055d20d43d488118e636c82eda:S0XLwhGebMxhAvFnyaLu49auLzUUyek0:1', '', '', 1, '', '', '', '', '83348149472', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-02 11:53:46', NULL),
(1264, 'shahzaib', 'shahzaibnaseer500@gmail.com', '0000-00-00 00:00:00', '329a507d30b1eb9e2439e6bb9bd53363b1d0180ef170a24ea42c1de5f5f85462:bNZd4uSGXAaOme8luSakLsCmBZ5WYlfF:1', '', '', 1, '', '', '', '', ' +971523962004', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-02 23:06:28', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(1265, 'Syed', 'syedwasialiabidi12@gmail.com', '0000-00-00 00:00:00', 'c23f53fa522ec446b34bdc0780150271bd76051e01f72505653b7588f936eb71:IYnKVsKUUMhTC56ceD5xXRt0CHMEygDm:1', '', '', 1, '', '', '', '', '07368832511', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-03 00:19:27', NULL),
(1266, 'Walterimils', 'soonswing3169222@gmail.com', '0000-00-00 00:00:00', '0cf9a163e8d4e14bffccf728cef1e7e579b85d8d1689a9081044268b0abb1364:XQriTWRodpWxPgBo5mKrkU1Ey3xy8kTb:1', '', '', 1, '', '', '', '', '85299996981', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-03 08:35:04', NULL),
(1267, 'خلود', 'kholoud.almalki@79gmail.com', '0000-00-00 00:00:00', 'd72202df78da87575328ef452758be9c1aa9d9b66fa9a45f18d345bcae048128:MZab4OwSPoLiB3NvabGB5TzL4swBufob:1', '', '', 1, '', '', '', '', ' +97455537066', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-04 07:56:59', NULL),
(1268, 'Zameer', 'suhanamehak08@gmail.com', '0000-00-00 00:00:00', 'f213066cd2f1107affb29e44357aa25587ba1d2e81d2a34f2b35723947a17e9a:l1MG7YSTMDoGDt9EJ17cV2B1HYDtiuok:1', '', '', 1, '', '', '', '', '7975632457', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-04 08:50:38', NULL),
(1269, 'Dipayan', 'talktodipayan@gmail.com', '0000-00-00 00:00:00', '43584a49a7340e8962873c31cbd53835e067d0fbfd07fb396a0fd1eef88ec38d:vHr1tLvQvpbsjy34WsJxnVqggFMqk5to:1', '', '', 1, '', '', '', '', '66747913', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-04 15:04:08', NULL),
(1270, 'حمد', 'hamadk2007@icloud.com', '0000-00-00 00:00:00', 'f6e5fded43c559b8186ff955a2e5e7f9723e9b23830bfccc45e3a8ba48f50668:JBlVNJXAeNsYzGcarklUzzZtwzhLHz2L:1', '', '', 1, '', '', '', '', '33141461', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-04 15:13:10', NULL),
(1271, 'amin', 'amino88@gmail.fr', '0000-00-00 00:00:00', '70b6f7c941f63e656048bc693b3d481790b35566d8e6c51d05890a1514e1e53a:DOVMT2pYrmYG61vwPRbIO8YwJUPLbbYn:1', '', '', 1, '', '', '', '', ' +97430419463', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-04 19:45:29', NULL),
(1272, 'نوف', 'nofa_87@hotmail.com', '0000-00-00 00:00:00', 'f56b5a984fe6fd55d15d9e777a71e158bace6afeceeb58bbb18b34a6c1e9bf9d:J168sggFF4ooHzMWZpus2bbN3xznaBet:1', '', '', 1, '', '', '', '', '50511197', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-05 10:04:01', NULL),
(1273, 'Seyed', 'seyedib29@gmail.com', '0000-00-00 00:00:00', 'f9af5beafa4fc33538a270a99f689ccddcc30da475fd771a45903ff4e5a64763:FQQkE8YSM2olQUMdUoE23iX3OJULin8a:1', '', '', 1, '', '', '', '', '70189584', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-05 14:54:10', NULL),
(1274, 'Fatima ', 'f.alheidous20@gmail.com', '0000-00-00 00:00:00', '7dffb59f81f9355bd037ec033bf66120e945237e1ed9e0e22ce1c7580e787a93:Hw120GRK04TrsQNcE6s0GslRZz46Zkyl:1', '', '', 1, '', '', '', '', '33381905', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-05 21:06:35', NULL),
(1275, 'Mkadara', 'mkadaraibrahim24@gmail.com', '0000-00-00 00:00:00', 'c5e3d35c771a9471e361c53022991da152d83ee46b319466f03f8a668ecb9059:1HMCGelXBYaM006ODQDJm7VwPCp5JW2Q:1', '', '', 1, '', '', '', '', ' +97433257068', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-06 03:37:29', NULL),
(1276, 'hessa', 'hessaalsubaey21@gmail.com', '0000-00-00 00:00:00', '734b316c9e84f9e80d803064b2142ce46ac1d91d610e7670be4cbcc33b64a453:R8GFxnAPCcoJIBwPxRrAxBcmZGp1E3aj:1', '', '', 1, '', '', '', '', '77977905', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-06 10:18:00', NULL),
(1277, 'anisa', 'anisa.amer744@outlook.com', '0000-00-00 00:00:00', '2ae7bd266fb89c7f5718ebfc7b86d53cfe80e17a50ed0011f306556d08a0dacf:9ATuyYuTxlmtmN5J3GsLhIiBeHKtCRNk:1', '', '', 1, '', '', '', '', '74415151', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-07 06:18:15', NULL),
(1278, 'Hassan', 'HCHEDID@HOTMAIL.COM', '0000-00-00 00:00:00', '925acb6bc660c1d7a656a4fdac7ca6d59d3a26f0e2f70c5b1909fd86bb4a78d5:n01Z92UysASU8x0AeBebg7zSZ4yz5h0U:1', '', '', 1, '', '', '', '', '33014757', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-08 09:15:45', NULL),
(1279, 'Fahmi', 'fahmi8987@gmail.com', '0000-00-00 00:00:00', '533723d134425e65f022baaae338e302d43a38707fe1cbafb9c7e5820dfe4a6f:by0JcoQfDBcAcGi5SRLJvTnS0RCxHKsx:1', '', '', 1, '', '', '', '', ' +97450593741', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-08 14:23:38', NULL),
(1280, 'Renad', 'renadadel93@gmail.com', '0000-00-00 00:00:00', 'da4103103efe66f90736d5fe19e17c85a36afefbbdd431b00f9deab0aced9c10:E6L8KYHKqJ1Uljgm6Wk6OGlhWQNMnrvm:1', '', '', 1, '', '', '', '', ' +97450187144', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-08 21:33:27', NULL),
(1281, 'Jadeer', 'jadeerrahman702@gmail.com', '0000-00-00 00:00:00', 'c5f6cf03b404dcafc2621a0ea7f75decf6a095128aabacf1a2f5156c893d6035:P6XVqvch19vvulaT4ioCcRFSWnoGcF7c:1', '', '', 1, '', '', '', '', '31260965', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-09 02:48:09', NULL),
(1282, 'Asma', 'alfajralba3eed@hotmail.com', '0000-00-00 00:00:00', '018ee69fde4e77f37175d21370a68fde0aaab2715f8fcba4e51106c18d470d2c:kvsQJmYeTZIdYlsTKJ5Jp8wY6QSDB6ey:1', '', '', 1, '', '', '', '', '55337878', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-09 09:43:55', NULL),
(1283, 'medhat', 'medhatbazeed@icloud.com', '0000-00-00 00:00:00', '3908c5aacfb4a1e52a1cc158e97183da869139ffa05b46644a84501eef73ff2d:tLfK3XfkOyzwz6ZoaFbbbzAj45DrNnCS:1', '', '', 1, '', '', '', '', '50071666', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-09 14:50:12', NULL),
(1284, 'kuldeep', 'kuldeepkuldeep289@Email.com', '0000-00-00 00:00:00', 'd819ed517268a39f651f523f5a13c0dff11b1aef0eeb2f77a67c6e0e00548d3c:XWWpe4TKYsHE05CDHZLRKlhkgEtoWQrx:1', '', '', 1, '', '', '', '', '31140412', 21, 19, 0, '', '', 0, '1', 1, 2021, '2022-07-12 15:06:00', NULL),
(1285, 'shakir', 'shakiradat@gmail.com', '0000-00-00 00:00:00', '270ab9cbd9c7851807cb11e16c2fbd327aedb67c8cc23c7687b3a2e78af7b27b:UeMumuu37kocVvE85DjHtdKPFdAc49CU:1', '', '', 1, '', '', '', '', '33379958', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-09 17:39:19', NULL),
(1286, 'Mohamed', 'Abamss@hotmail.com', '0000-00-00 00:00:00', 'ba0ffdec112d9d0ee6c1c91cd34c744dd99311f327417aecbe96050b6f42a1e6:PtwAydKdsEFEj8gUAIJZF0XXFrtHsr84:1', '', '', 1, '', '', '', '', '70709407', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-09 21:17:44', NULL),
(1287, 'Maryam', 'm.2017_q6r@hotmail.com', '0000-00-00 00:00:00', '5a58cb09a91fda832f68e784207984af357d8badbb61b0d9c9cc6a76238b7f98:qVFJBlY70MOFbKq0VKIE5J6MvI8MnAfh:1', '', '', 1, '', '', '', '', '33399792', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-11 05:58:59', NULL),
(1288, 'aseel', 'aseel.595@gmail.com', '0000-00-00 00:00:00', 'b19fcf228989100456a133ee01f7148d0c26f46f36bc90c08f2783704ed084ca:2SdM76Df7lMaVJwSzsqSZ30QajdsEFJ0:1', '', '', 1, '', '', '', '', '0097470577725', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-11 07:19:25', NULL),
(1289, 'عاشه عبدالله', 'aishaaljber31@gmail.com', '0000-00-00 00:00:00', '7420637e7d672ebe9fdc63f27a1d223cc52af16291c418c7356836c482b9cdf3:1WvzSTWzo9TLLxEsm6pu1SZIol8C7ihd:1', '', '', 1, '', '', '', '', '50359278', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-12 07:23:54', NULL),
(1290, 'خلود', 'aljory-21@hotmail.com', '0000-00-00 00:00:00', 'ac3688349b48581a6525c658085666adaadbf256136532d2db30f11ea21aa107:6AfrPTWVSZK0ErcFn5eWRiWnhPVUen2F:1', '', '', 1, '', '', '', '', '55135949', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-12 18:59:13', NULL),
(1291, 'DavidRib', 'miascanrukodavo@mail.com', '0000-00-00 00:00:00', 'ae0df717838712caaa2d0642e2ed92bacf1ccc389cc334e1ccda58047948fd43:HIvohqLjBQkLIBwFm1qcArkrlWkiTuuD:1', '', '', 1, '', '', '', '', '87714664185', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-12 18:07:57', NULL),
(1292, 'Noora', 'nooraalyafei@gmail.com', '0000-00-00 00:00:00', '0c683feea7ce710137caa76c22bd56f515825e358ba28c06603195a5fa6cc348:VdCxV1JuJ7QYkxqjLanXOXMyFuvTbXVS:1', '', '', 1, '', '', '', '', '33438836', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-12 18:13:42', NULL),
(1293, 'Rita', 'ritaantonios@hotmail.com', '0000-00-00 00:00:00', 'a84a638c00b8bf58e1abb65203d43b39acc708c4a78ff130e586fff69fa24742:YRCQOxzR5TtoxdpkGXGgJAOwnAAS9BqP:1', '', '', 1, '', '', '', '', '66072045', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-13 08:23:06', NULL),
(1294, 'ليلى', 'lelouchehac2@gmail.com', '0000-00-00 00:00:00', '1ea3fce2d69fed8ef7e19a2f73dd6dbace58e3e500e3530f6c10e6b1e089cf8b:ebO8xAlxm54oKe6z4x5OkGDZJU1KoTAP:1', '', '', 1, '', '', '', '', '55862630', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-13 22:17:54', NULL),
(1295, 'Dalal', 'dalal.alansari@hotmail.com', '0000-00-00 00:00:00', 'cd8c77a07fd358b684908c6b44a2de36b52b57fb110227cc8c815eba91724591:22z7paxLO1xDEJZSPmLbql18rXhW7xou:1', '', '', 1, '', '', '', '', '66337881', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-14 04:16:58', NULL),
(1296, 'hiba', 'ho304102@gmail.com', '0000-00-00 00:00:00', 'ed9b5c7c8e1289cdd6f681c82cdb01f8f6f27f464bc4e213f68e8837331c2c0d:3SDQkINVHIO6rV8O0n2dLoayxd5QZ6ME:1', '', '', 1, '', '', '', '', '30658746', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-14 11:01:57', NULL),
(1297, 'Sara', 's.student@live.com', '0000-00-00 00:00:00', '28a931c8c636a2a3fef391636acc4f58853df470152630e17d3d2a0e2a50b7eb:6vptSCTuWQ3zQkrhRHiJybCqqir4WZZK:1', '', '', 1, '', '', '', '', '66611811', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-14 13:46:50', NULL),
(1298, 'مشاعل', 'eimalali@hotmail.com', '0000-00-00 00:00:00', 'b3c52f987f13e5ebc569d09460cd7c79da25be836eb5a7f1d08362a8ac50780f:w5GJ0a9e0GqZscWzk3sKenDecXBKZG30:1', '', '', 1, '', '', '', '', '55693959', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-16 18:51:55', NULL),
(1299, 'Vinod', 'vinodoraon654@gmail.com', '0000-00-00 00:00:00', '49df067af8e0253724d357723cff4a2439eb2d3636278f99ec92627c3d26c587:71yrYHQuM7RZBDtLisQZhTRAkD2lpGsb:1', '', '', 1, '', '', '', '', '7857054942', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-17 02:04:38', NULL),
(1300, 'Majeesh', 'kmmajeesh@gmail.com', '0000-00-00 00:00:00', '2e422bd543a88c7470874cbacd50bb51def0edd8d830ab92d6683efb08ca00a8:v9lNjASLOqeo0KzplLLoiQsC0LeY8c7m:1', '', '', 1, '', '', '', '', '33442405', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-18 13:34:17', NULL),
(1301, 'Mohamed ', 'nesta36365@gmail.com', '0000-00-00 00:00:00', 'c4a23eaf8193f0aea5e4574177f65ec8975a3fcf9ad21b98ff2cdd7cc6dbf40c:X09NZDYBZ2dTJG51VdbDQ5WY2aiDCMoS:1', '', '', 1, '', '', '', '', '66712882', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-19 18:09:20', NULL),
(1302, 'Genelyn', 'genelynpile@gmail.com', '0000-00-00 00:00:00', '578d0e085003af5e2df58469533ab12cdc04294f18cd52118eb4a4c70f93ad32:BHC15hDmiala4HGgDBGkvMkHJk5A8xB4:1', '', '', 1, '', '', '', '', '30999589', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-19 18:22:28', NULL),
(1303, 'Tendayi', 'gwatidzotendayi@gmail.com', '0000-00-00 00:00:00', '9603e046c5d1e29812f7916a628a0ddb27331b13722e3a390b34dc04a1d5a15b:5raGcRcsCrTPRMS5bLBEooSF2sn3Zg6y:1', '', '', 1, '', '', '', '', '50644198', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-19 20:28:12', NULL),
(1304, 'RIYAJ', 'riyaj850912@gmail.com', '0000-00-00 00:00:00', '0316eb5ff68e688c35dfdc0bd2e468831af1e408bcea7cd9df04ada2a46bb8cb:2MlCxK4JraU7BWsxcY9SHA9vRELTBHhQ:1', '', '', 1, '', '', '', '', ' +916297476223', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-20 04:52:07', NULL),
(1305, 'علي', 'll0974@hotmail.com', '0000-00-00 00:00:00', '80ce9cfed32b7335ace7961b6d5080b580d39b3fd141e2a700936268cebbb7e3:uWNgun87DNpK7rBltpDG0SxNyjU0LEtT:1', '', '', 1, '', '', '', '', '50001057', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-20 10:17:28', NULL),
(1306, 'noureldaim', 'ismailkaizen1@gmail.com', '0000-00-00 00:00:00', '10f5cd53ed1a48af1f5d65c03b25881ad400df21d4345f067d89a05553c0301b:qCLJfUbXCSTux5s9PxTiLqrIvsU6dVvq:1', '', '', 1, '', '', '', '', '55153109', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-20 12:56:59', NULL),
(1307, 'Achu', 'achuanil277@gmail.com', '0000-00-00 00:00:00', '2fde4f670da0dc90fd90cba20a1d6148eea6ef2b2895bec03f5153d64279b7b2:Z93QWrfspucIHhZuroV2hWuf7Aj9ozWD:1', '', '', 1, '', '', '', '', '66219298', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-21 05:24:21', NULL),
(1308, 'الدانه ', 'Princessdanoon@gmail.com', '0000-00-00 00:00:00', '4b39c0a0708ac8e014a855c00903d4b5cd678583c15ae48725323277ca2ff605:WQ7sxINdA9dyQicYD4ZjmL3GLlOvdtzq:1', '', '', 1, '', '', '', '', '33357551', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-20 22:25:26', NULL),
(1309, 'Martin', 'marcoandujar52@gmail.com', '0000-00-00 00:00:00', '66da25d93b7260fe04abc93774764ae1309f767c58ecc6d138154e563d3879fc:kPSNTVoZkxGpGjAQ06KE3V7fPByEByTX:1', '', '', 1, '', '', '', '', ' +18093764003', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-21 05:59:00', NULL),
(1310, 'يحيى', 'yahyaabumatar.YA@gmail.com', '0000-00-00 00:00:00', '11c00f97d2239b7b974d19a7426ab0aaf88fea138bdc200e9e606c8fd179e93e:UyxdYyFc1PB376cdjhpRrNKl7hypQhLM:1', '', '', 1, '', '', '', '', '33285631', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-21 12:13:46', NULL),
(1311, 'mohamed ', 'fatma.almaslmani@gmail.com', '0000-00-00 00:00:00', 'b9d58e288dff0332d71ace85b099673251599ab96f9385cfdd76436734433ce4:UaH2MfyyVd212pgt4Xc3LFRoHINEmLDe:1', '', '', 1, '', '', '', '', '50433350', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-21 13:23:36', NULL),
(1312, 'Nikolaydyera', 'varinnikolaj24@gmail.com', '0000-00-00 00:00:00', 'befd4c717f985ec100f9766e8e83b42afaa976d6035c831586884e7fdb209372:sOKEm5yJjma6SjbpTi32qK5mcXSGphv1:1', '', '', 1, '', '', '', '', '86961748631', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-21 14:56:46', NULL),
(1313, 'Baker', 'baker.alhasan@dakkaken.group', '0000-00-00 00:00:00', '2aa05b61ace795b83b09b4cb8276f5f0abddd8371da19bb8e67c6b38e078c1e2:x1NtiOeeqASEh9T3IwMCSeL06zCQsOot:1', '', '', 1, '', '', '', '', '33886531', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-22 07:49:36', NULL),
(1314, 'Mangulucharan', 'mangulucharansahu84@gmail.com', '0000-00-00 00:00:00', '6f6ba94383d70f93a440b524c2123dd378b0ca6722a6811dc8244fa520145086:vWgMM2jlJOlHVfeythkXsNYGez6Palbf:1', '', '', 1, '', '', '', '', '9178652305', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-23 09:29:49', NULL),
(1315, 'خديجة', 'duog.m.s@gmail.com', '0000-00-00 00:00:00', 'f300e668c5729bf556ffcb1592a4c19e67b47e987bbeb86adeaa84115ca56428:C1QxLHBn5YZkDyVAzAsA3dZWkz7xxsf8:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2021, '2022-01-01 11:43:53', NULL),
(1316, 'RichardChers', 'dawid.molerski@wp.pl', '0000-00-00 00:00:00', 'b74de5493e8c9210f767a3906a44785e23ea365d39469a7d4afd2e8db8170123:ZZ1SjVZt4Hjr1vsMHd4MIjZPJylVwRKb:1', '', '', 1, '', '', '', '', '83736726332', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-24 07:44:51', NULL),
(1317, 'mariam ', 'miimaaa.hs@gmail.com', '0000-00-00 00:00:00', '6710b5f6ac27f3c16853045253ecff97c2be8ec2214d2468ad30c00d56a4ad02:RkvF8wpxIhTkwOFiwNiofAqcQHfdvIbU:1', '', '', 1, '', '', '', '', '30605599', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-25 08:21:07', NULL),
(1318, 'Mohammed Sharif', 'msshaikh79@gmail.com', '0000-00-00 00:00:00', 'f62a8f2336dbec22611e7bb99700e8c0c95af6ffab53140d685bc6c31c6dabc1:9vcRZjdKaKkrgAC1uJKXArt0r9jCaMjo:1', '', '', 1, '', '', '', '', ' +97430708375', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-25 10:31:52', NULL),
(1319, 'Manvel ', 'manvelmkrtchyan1995@gmail.com', '0000-00-00 00:00:00', '54796424fbaa05da11a57f1d97eb6d06de343bc442ba6b7917e5410b294814d8:hRgKGr2kdhg6MbfVoMYY9uk7rmohScPj:1', '', '', 1, '', '', '', '', '66153874', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-26 10:14:16', NULL),
(1320, 'soud', 'soudalishaq@yahoo.com', '0000-00-00 00:00:00', 'a3994afa1e5c7174f9e3abd5f0b0e410083a389dc379fb09e1f799db6e3c94b9:mgpXvAHLFRSa2KmP6TZ6uIX7uSXX0Pme:1', '', '', 1, '', '', '', '', '55577742', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-27 14:35:45', NULL),
(1321, 'لجين', 'lojain17@yahoo.com', '0000-00-00 00:00:00', '1f5232a41d6f24b3bab34f8d635b5f5d06040a35c58e7e26651ea0ae8d34f900:eh4DiO31hRotEAEAAUbECmyn9NgFtrvc:1', '', '', 1, '', '', '', '', '30955082', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-28 03:24:59', NULL),
(1322, 'wadha', 'dloat.-_-.qatar@hotmail.com', '0000-00-00 00:00:00', '86c61c60aa65219771becf676ecd1747179b63f7a9f2fd53bc0da870110d115b:Wi55I9PZdSXYx5We9n4yAsBvgMEM4y3c:1', '', '', 1, '', '', '', '', '66009905', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-28 09:26:38', NULL),
(1323, 'nawyer', 'n.Alqahtni@gmail.com', '0000-00-00 00:00:00', '0faf8bc5ad7fdd361b4b94bc942b62043e8997d74e146c3fb4b9fb294b45794f:KbtitRYEWXqQMTZOmwmbuXVMCsMfum78:1', '', '', 1, '', '', '', '', '55509045', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-28 19:18:32', NULL),
(1324, 'aisha', 'bushrbak@hotmail.com', '0000-00-00 00:00:00', 'd4295fbfc1a7bb357860ec58fbe4eedf9e9f85fb41c912fe89c5c0a397bba876:PCiT6O2VrhEMruFWikkUNAyPlZeBHMbz:1', '', '', 1, '', '', '', '', '66292789', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-28 20:02:50', NULL),
(1325, 'Hadi', 'hadi_ayoub2@hotmail.com', '0000-00-00 00:00:00', '0fe9da306570f2f85a87b96068d9a04b3856729d0086599e7dc9da022f6cc08e:mUZTeikKCN90oo3pI4L8IJN6dRdv0WkK:1', '', '', 1, '', '', '', '', '0097455089003', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-29 13:24:01', NULL),
(1326, 'Mishaal ', 'm.s.aln3imi1981@gmail.com', '0000-00-00 00:00:00', 'ab1c8cefe7e4552bf33cc38d2c47345a9b8be16d8203482a644c7e4e826d49d5:RH5SYvvxiVOkg1CSRn3NIWXvfny42wAn:1', '', '', 1, '', '', '', '', '50350381', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-30 08:19:10', NULL),
(1327, 'Matthewdix', 'admin@singaporevelly.com', '0000-00-00 00:00:00', '7b5f6d9d8d065a258c31481c3c4f3d09e4f997e63e6e0f2915698cdad11c9d2b:xXeNNGWkpkHKWtUqLreD1J6EUiKhKCWd:1', '', '', 1, '', '', '', '', '84275287115', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-30 12:11:17', NULL),
(1328, 'Barryrah', 'alowsh570@gmail.com', '0000-00-00 00:00:00', '7850561548b883ef11dcfb25c26bc8faa14563bab69d8b011442b51b3a9e0417:PIT99tFfr1aQm3j2ieVdkThEwax5iG6o:1', '', '', 1, '', '', '', '', '88924564538', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-30 15:33:32', NULL),
(1329, 'fatma', 'essasaad786@gmail.com', '0000-00-00 00:00:00', '09657c5c7be82dedbf423aa07689f8c52db59d6e2c3d947f09453b4535705e65:OSKdk5o5JEuGEyJAzJB7waq4rYJK8mm3:1', '', '', 1, '', '', '', '', '50057057', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-31 03:51:09', NULL),
(1330, 'Nizar ', 'nizuae@gmail.com', '0000-00-00 00:00:00', 'f867a54065b351dadd8cd2a5112fcee31a20d962b650e8fd2665458ec1c69252:ORXfTQv28gdrNHEU5kbE0BUCtlKkv12r:1', '', '', 1, '', '', '', '', '33944573', 21, 19, 0, '', '', 0, '1', 1, 2021, '2021-12-31 13:27:22', NULL),
(1331, 'parvej', 'kashem111967@gmail.com', '0000-00-00 00:00:00', 'eba0c0de3c8c3ac86c2b206942a9b5275b5736c6c792af03657285e6f91c3330:HydscRpOHtI3iHQDTxr4UmD2daXI9ZaF:1', '', '', 1, '', '', '', '', ' +601117238466', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-01 08:33:54', NULL),
(1332, 'Anastasia', 'luirian.silknow@gmail.com', '0000-00-00 00:00:00', 'c739478df6e5075954bb5a7ec3d1bc1775e5ce130d194480b57f39448f267d73:C8m8slwZRNFNI0Zvr749wOLjQVZoO3op:1', '', '', 1, '', '', '', '', ' +97466542465', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-03 04:57:50', NULL),
(1333, 'Mohamed', 'acc.mohamedelmeligy@gmail.com', '0000-00-00 00:00:00', 'abf06b68674b00f0dd2a385084a22be8bde675f2afac2972aaeec8b3d58416d1:iRufGtLrZl0g89GQuMpngcHW7PphiznY:1', '', '', 1, '', '', '', '', '30300474', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-03 07:46:12', NULL),
(1334, 'noura ', 'nouraleila69@gmail.com', '0000-00-00 00:00:00', '3cee8c539d275a43a95ad236cc63bf534a1a66f9b38482a769d185e8045402f2:UnnalzBmPXDU6XRGu5n4bYbwZnOgpzMi:1', '', '', 1, '', '', '', '', '55839057', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-03 13:11:56', NULL),
(1335, 'Shaikh', 'shaikhshagufta040@gmail.com', '0000-00-00 00:00:00', 'f53a4705a15e33624fde216db4bfb2ac3602448d3635cb6af33c48f44d73997d:gxZaurAv01PqU4hVbskwsCxNKSYlbL8D:1', '', '', 1, '', '', '', '', '9769431954', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-04 13:04:28', NULL),
(1336, 'Rene', 'rene.p@naaasholding.com', '0000-00-00 00:00:00', 'c040408710e8bb885dab4f2c3860fa57e20d196c42ee17f1eea4ae912495e38e:n3O30GeBhCSLoleaDT4Y5pBJ86pHUSjk:1', '', '', 1, '', '', '', '', '50544329', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-05 08:27:37', NULL),
(1337, 'ISAIAH', 'iooa2012@gmail.com', '0000-00-00 00:00:00', '5d9dbf05366fc14051a46abcaaf04b4266ebbd6846d84a4f50da04aeac95f5b2:dSeENdt7eEJhhmPOC0kR4OGHb6wy7AUt:1', '', '', 1, '', '', '', '', '66876985', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-05 22:25:52', NULL),
(1338, 'Salman', 'salmanabdulla16@gmail.com', '0000-00-00 00:00:00', 'd6241eef5240bf56f7b0f221f914ae7a5b787a3f0f13ebb744c3249e16c4844c:CmTXue2Hrpt1C1lT1D2Ewv01HoZ8mwJU:1', '', '', 1, '', '', '', '', '50925558', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-06 22:52:38', NULL),
(1339, 'LutherShice', 'cillilocec@gmail.com', '0000-00-00 00:00:00', '6adef20f8729f491efe3561e233184670001fcea28926f01fafde35b9ee702fe:QePjBQoAKuzxuLPtTpA34lyxS9SWziOV:1', '', '', 1, '', '', '', '', '85773879141', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-08 14:31:08', NULL),
(1340, 'JosephSuife', 'wlodek.turkawski@tlen.pl', '0000-00-00 00:00:00', 'fb5bb47cfd2b1db838f5a9be3c28c6829fce0cd13f18e07c5732c96ad906f0cf:kPPbcKzOjqBYs9aVToonwNJLlJtBlQQQ:1', '', '', 1, '', '', '', '', '82337324524', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-10 14:06:24', NULL),
(1341, 'Marhaba', 'marhaba@mpq.com', '0000-00-00 00:00:00', '03fd72747eadeec2aec7c0628ff96e7cc249a9914a161aa704a24e055d9f0356:j7UKgC5jXukX7PTOgb1DHDhlEfB1pT9b:1', '', '', 1, '', '', '', '', '66191767', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-16 11:21:02', NULL),
(1342, 'kush', 'digital.kushagra12953@gmail.com', '0000-00-00 00:00:00', '5457b7e1b473d740d4ca1f49c3c9cd349f00fc0dcd53d075bd8610d0809764cb:GqWGwLNZ6F97AwRYZJJhqZ2tiQy0zRtm:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-26 12:06:13', NULL),
(1343, 'majibur Rahman', 'mujeeburrahman93@gmail.com', '0000-00-00 00:00:00', '9d974de635379a84492bfe1d1e3498a22f97baedaad7fae5d94d29552f9d1f4e:x2HeJmOXMpqGAvPE9XbGq9YyvBC7MQ4f:1', '', '', 1, '', '', '', '', '77352720', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-11 11:52:56', NULL),
(1344, 'hala', 'h.abuqamar1997@yahoo.com', '0000-00-00 00:00:00', 'd46c398077b88add04603cabf0a39b981a8d55d34d0ea91f9c362bd23bd46e50:2X7ULTDIGgKIjUgoSfeByka9QKHjpXYe:1', '', '', 1, '', '', '', '', '66840143', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-11 18:17:57', NULL),
(1345, 'Hayat', 'hayatalnaimi@hotmail.com', '0000-00-00 00:00:00', 'd5820d8e5c16785af4d4ea34a09a1513efe4fb0ff155818d53b8fe61df8b0fb2:O5Tm1sfIvuAv3ZIG51GBOB1q0BLcwcS5:1', '', '', 1, '', '', '', '', '50040008', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-12 19:59:57', NULL),
(1346, 'rowaa', 'rowaa.jabr@gmail.com', '0000-00-00 00:00:00', '39ce45098345866b67af43eca675ebee5f0750aa65421485e820332e720cc1e9:l5LJOufgHJK8MxVZusC3nfZrtmRAR7J4:1', '', '', 1, '', '', '', '', '50666896', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-13 11:18:47', NULL),
(1347, 'لمى ', 'alanzilama9@gmail.com', '0000-00-00 00:00:00', '86d1e7b12c2bd0527807d41161b0771a6d5ddadd7f3f127f0427be11b59cad35:tE3iOm70rGvl177QEPXiURfc6bAnt2nL:1', '', '', 1, '', '', '', '', '50444908', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-13 14:22:58', NULL),
(1348, 'ررر', 'emanmian@icloud.com', '0000-00-00 00:00:00', '5a358db8c02e0beb0aa8830e8a3a8553317348ba5ff7c88eb520924f1b8b2cf9:vvA3dkI6fZaRNBfqPAbQLcnUoCmTpjWI:1', '', '', 1, '', '', '', '', '77060832', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-13 18:25:31', NULL),
(1349, 'Haziq ', 'diniefathia@gmail.com', '0000-00-00 00:00:00', '964dffb08c52609a05875056ba7fe62247e7cc69626c9b28017124c658f1b3af:XiGtkEDO6uNHUZ4zZtmFHR4UuoUvfKzK:1', '', '', 1, '', '', '', '', '66339266', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-13 22:20:41', NULL),
(1350, 'Hassan', 'haljaber.qa@gmail.com', '0000-00-00 00:00:00', 'c27cc3ae469758eae428197528a22a17b44e2951676e2d969ad9e03c3692e9b8:meptlE3ZhV0Oow9SI2Pf1s0jrU7MISDn:1', '', '', 1, '', '', '', '', '33141919', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-14 11:43:00', NULL),
(1351, 'lolowa ', 'loloii123@icloud.com', '0000-00-00 00:00:00', '5197632aaa436a8004282a0806a74a4ee8a9da10eb03fbc7386bff76a9d067fb:g4mwp9Am6LWHKIXdwRYP9dqjNi1t9T38:1', '', '', 1, '', '', '', '', '30706040', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-14 12:59:23', NULL),
(1352, 'tengku', 'agung.alaric@gmail.com', '0000-00-00 00:00:00', '6043bee13ff77347bbcc2162bd7639e318ae1171418235b118d92a44afe9e5b7:lq6YJhVhJp6wU1C9No04bdQBIw6Y0IQs:1', '', '', 1, '', '', '', '', ' +6282161226767', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-15 03:02:48', NULL),
(1353, 'Fayza ', 'babynature_f@hotmail.com', '0000-00-00 00:00:00', 'd7cd17fc8501b120c24b787f6ad53b363e5235b0d366cd06482fd8f9b29740d3:3yIzU9MVNQuhkCamkc8hKhSPNSRlMhSU:1', '', '', 1, '', '', '', '', '66565651', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-15 11:06:25', NULL),
(1354, 'kutikovaMn', 'andrekutikov@gmail.com', '0000-00-00 00:00:00', '69b543224b5fc405e1385a3b036af81fd835aa285948600fe31a849f56b802c6:fkkBvRkIscJAnKAiOFrATdjgEZVo4JpI:1', '', '', 1, '', '', '', '', '89818144952', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-15 18:28:11', NULL),
(1355, 'Monawara', 'esmaelmona692@gmail.com', '0000-00-00 00:00:00', 'e49be6b9455192345710d909a9768d0dc7ecbc3d0dd8f1f37ec6cbcceec513d5:JciGpt7fuKWh7HrqDNxv4usXcuhKMNgD:1', '', '', 1, '', '', '', '', '70444942', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-15 22:55:53', NULL),
(1356, 'aljowhara ', 'jojoenad@icloud.com', '0000-00-00 00:00:00', '88601067fe110dcb2722e1d5618bee41644f38aa2a7a47ef476776f38f76ca1a:RkEHLy2NvYujJ6cnfmIoLT4FCLGIbngL:1', '', '', 1, '', '', '', '', '55916536', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-16 10:23:40', NULL),
(1357, 'ام', 'flawrina@gmail.com', '0000-00-00 00:00:00', '850a465894452087571ff7e3493864e41537b9fe7f91ba706b5fedb806c74dc8:WhHsd97MWyaU3Q7KABtIsdCOFyon9F5z:1', '', '', 1, '', '', '', '', '77034002', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-16 16:49:30', NULL),
(1358, 'Rizal ', 'rmaisur@icloud.com', '0000-00-00 00:00:00', '0f0910cd306a0a987d5815986a4f2d1906fcd0f2e3c92a73ed517baa3f4f1c1f:Cp0e4CFch0Ckpy2lShtwODplVsWYsJof:1', '', '', 1, '', '', '', '', '33288219', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-17 02:59:33', NULL),
(1359, 'Anjali', '1991anjalisajeev@gmail.com', '0000-00-00 00:00:00', 'b32eb9ded3cfbebfc7b757fcc1eb5f69c848a512a8757dcd6cac3f7720a47a39:vv1MnP0smUMN3NlhtyT5mBTU94kQS5z9:1', '', '', 1, '', '', '', '', '55465377', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-17 07:58:52', NULL),
(1360, 'Gemma', 'tanaysharma786@gmail.com', '0000-00-00 00:00:00', '1344149cce1688fde58140ab293f277fc2fd721fa9dc48f67bdc700ad02e60b7:CnId7BydLzsUTkEWOFSH7stDj1iBQjuQ:1', '', '', 1, '', '', '', '', ' +97470958792', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-20 20:25:04', NULL),
(1361, 'Fadi', 'fshobaki@gmail.com', '0000-00-00 00:00:00', '7831788488121fc9b781d44701dbf11a7ce9e026c8587967ca1f90af26c6ba38:9X1qI2iG0APWP1byjc3WpEKTdKMorAZP:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-21 06:51:40', NULL),
(1362, 'عماد', 'endrjjff@gmail.com', '0000-00-00 00:00:00', '94f6afbdbf4350f61977268610951a992763b93e6d88024fbc8388d8c3ddeb6d:ILWzf8yTWqhfRQ9kQSUN3IVLaQjuCEex:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-22 22:20:30', NULL),
(1363, 'Ismail', 'ialnemr@icloud.com', '0000-00-00 00:00:00', 'c877b7c914c834e1d377d0e00622fad7ba94ec5242fad69e598716980e45d7d3:oWrXZgsn9vXM7aekeWgBlSATlVS5VYP9:1', '', '', 1, '', '', '', '', '77007564', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-23 19:47:37', NULL),
(1364, 'Shahin', 'shahin.klmy@gmail.com', '0000-00-00 00:00:00', '01e10b75f387c8de59e45d25891486924fc8af7f449001846eec2192960a2d31:cgGN6Cw8jtAJ8XBpLZC3aOabVECf0zPx:1', '', '', 1, '', '', '', '', '30193248', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-24 14:58:58', NULL),
(1365, 'Mutaz', 'mutaz.com@hotmail.com', '0000-00-00 00:00:00', '479afeab730d8d2be48f9b1102abfab8a596889c7a553b07fdff589683f9183c:2HPwPwJDjz5oOPpO0KhoK6tGXj6anlQg:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-26 08:41:49', NULL),
(1366, 'Claude', 'mbochopatrice@gmail.com', '0000-00-00 00:00:00', '7919b64f6cb8fe33dca454152acc5bd74251e98de1e6483b7db05682105d099c:37UBBwFcwXv5sUmcWbIVch4WqJqjcnOV:1', '', '', 1, '', '', '', '', '3400011233', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-26 23:05:00', NULL),
(1367, 'Safiya', '14safiya@gmail.com', '0000-00-00 00:00:00', 'b09634da568cf8b7562809998695087daf0227c948cd0aa07528fa5193046d6e:mi8Acvkr3MzVy9Vjx8X4yC5Dj9D5fFxO:1', '', '', 1, '', '', '', '', '66462618', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-27 01:07:24', NULL),
(1368, 'Mohamed', 'mh1863798@gmail.com', '0000-00-00 00:00:00', '0613a09b4cb72cd56819570d632cb67a47ffa852a6139d4e7f23098441390ba5:hfkoH7G5AALiRtJCDLTSROUgyxopajNX:1', '', '', 1, '', '', '', '', '01127831180', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-27 05:07:07', NULL),
(1369, 'Wael', 'drkhalaf@hotmail.com', '0000-00-00 00:00:00', 'a0210da6a89213a73e8266ea00d7b31f5f499cc44879015ed4893208528f5e1e:HUpUfLtXotWmIL8MzU72JOZB3VFVCSOY:1', '', '', 1, '', '', '', '', '50200746', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-27 10:32:04', NULL),
(1370, 'غاده ', 'ghadasaihi77@gmail.com', '0000-00-00 00:00:00', '1546ac7c01f5100ffae3c17498ef6292e034014649981f064fca796d0a2dfe7e:OvrvOJaGBcE27Gad1l8pTUoAElxyrQCv:1', '', '', 1, '', '', '', '', '77120030', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-27 14:24:17', NULL),
(1371, 'Josue', 'josue.ranieses@yahoo.com', '0000-00-00 00:00:00', '43f989bd34bedd64861d3d75cee413754a315e66266644fa5e0de9066b83c81d:nSGEA0ie6dMASyifTZsueu7mDgLuq8Ce:1', '', '', 1, '', '', '', '', ' +97455020943', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-29 14:23:50', NULL),
(1372, 'Mumtaz', 'mumtazalammr23@gmail.com', '0000-00-00 00:00:00', '5327cb9b0e0104b08b31b9cb37edea1e82f5fd4ac1377d2aaa8a30a074089ee3:4iQgAwHQ7BmnY8CE1CXRhpar3C31ieiP:1', '', '', 1, '', '', '', '', '6200053735', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-29 17:18:28', NULL),
(1373, 'Sid', 'drsidrarafique@yahoo.com', '0000-00-00 00:00:00', '9c99ea7da9f10ed69c968d3fabd23810208280984dfb50bfd3d956a4194051a2:71Dl56SNkbTn1CpBpSw9jxuX1cuqUy5C:1', '', '', 1, '', '', '', '', '50128293', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-29 18:45:36', NULL),
(1374, 'عبدالرحمن', 'ab4895492@gmail.com', '0000-00-00 00:00:00', 'a7d1a42a305577377b47dca812a0ee133c5442674fae1f57053a1940f7ec8665:e4vdb6IO93akueHqksGN4L9K1TRhOCkj:1', '', '', 1, '', '', '', '', '01116335872', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-30 07:16:30', NULL),
(1375, 'motasem', 'motasemalmatri@gmail.com', '0000-00-00 00:00:00', 'c585e3b2758e915ce46c2c8dd545d83973ecb4f915641e5c6f6d91babcc80035:zThmVD8TpMlNlxCdTbd1dWmo5NjcO66I:1', '', '', 1, '', '', '', '', '33779334', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-30 16:52:01', NULL),
(1376, 'Fatema', 'fatma.25892@gmail.com', '0000-00-00 00:00:00', 'cd31a8822f63b171d89b1f344eeb92dac28d5300333802cdd3eb8fa92dcd420a:ZE7uYxP8DdwgQHRmImAYpcnYrBNEyZ92:1', '', '', 1, '', '', '', '', '30337020', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-30 21:44:17', NULL),
(1377, 'CharlesWax', 'zalosciulli@gmail.com', '0000-00-00 00:00:00', '34880be5bccbe16daf4549cbaad204b9b129a32045935e0e7da38218c889b406:DnazgCtJvQExV4m5BsGDzmR3izzzFXe8:1', '', '', 1, '', '', '', '', '85219559354', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-31 07:29:44', NULL),
(1378, 'Repairshop', 'repairshopuae@gmail.com', '0000-00-00 00:00:00', 'ea90f031919a1844c7bde44d85ed1b1662f3dc883bd262b333fd098968d59a0b:JCgT4XbqGsVaVfShyS1wa8rTSX3aRp1U:1', '', '', 1, '', '', '', '', '0501256432', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-31 11:33:54', NULL),
(1379, 'Naoum', 'ninoramy@hotmail.com', '0000-00-00 00:00:00', '0c4cfef594f0cae80cc9339243fca8cc8c1fb3e2b01f63de6c8c4ffce912e475:9LKe69UPAmuQOdoBfOUK6jgsqWQHd3kX:1', '', '', 1, '', '', '', '', '55819431', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-31 11:43:38', NULL),
(1380, 'Arshida', 'Arshidapa99@gmail.com', '0000-00-00 00:00:00', 'a6a9e380d595069281924532b9536aa9b9c58cfb6369e094a229e8a342f2c3b0:BU9zqf3cSVufuDaB5EQIvp0J9ZaAtLZG:1', '', '', 1, '', '', '', '', '55456222', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-31 13:39:54', NULL),
(1381, 'ola', 'ola.alhayk@yahoo.com', '0000-00-00 00:00:00', '34be5496e8dd050c640a796095376f70090e648685ff44d5ba05fb59bced3d42:gRl5ET8guL0CwmjTggz6tGDgLlF6NeiO:1', '', '', 1, '', '', '', '', '77970900', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-01-31 18:32:42', NULL),
(1382, 'RichardChers', 'damian.soborewski1@wp.pl', '0000-00-00 00:00:00', '77eda01a43511cfb8b3d42aeff7ef5bee9d03e872b005ae2325e4cdfdcfeeb2d:lLMQ1orqoxWckBWLDARk0mWfwGf171Kh:1', '', '', 1, '', '', '', '', '86726555299', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-01 04:10:01', NULL),
(1383, 'نوف', 'nfnf.n97@hotmail.com', '0000-00-00 00:00:00', '2366c0f4c2ac2b5149a7b8d9412188066e6e35cb02cfa60b66f63f76c05baaee:ul7t7hogKBzuZPuVIJyIhFdxJ3eLBQu5:1', '', '', 1, '', '', '', '', '55559438', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-01 05:24:13', NULL),
(1384, 'AndrewWek', 'vlad11@bambo-mebel.top', '0000-00-00 00:00:00', 'daa65be4e1c4a72d3c8304378fa7fe9cd51390ad72c4cf3e38448a7f6ecffbec:b8j3Z6gOnGcl71SlqqzOzdCC7ty2Nkeh:1', '', '', 1, '', '', '', '', '89775771474', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-01 08:48:32', NULL),
(1385, 'Marc', 'marc.d.cueto@gmail.com', '0000-00-00 00:00:00', '9fb22a4581b90cf0c825d73e3c8f3b89526c02419ef3f5517f114691aeb89bf7:T2cNbeEScNoPEFJQKnwkFDd4MmPpVN6X:1', '', '', 1, '', '', '', '', '50362049', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-01 13:08:25', NULL),
(1386, 'MrJergoz', 'jergoz66@gmail.com', '0000-00-00 00:00:00', '35aebf876499f6be8a94ffe5268e35549c787a3ead9992b97097571e4d7e5f3d:nfw0GGiCmbrEkEeJdZX5bZXleMQHmkxu:1', '', '', 1, '', '', '', '', '80298897177', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-02 18:33:54', NULL),
(1387, 'Daryl', 'daryl_calumpita@yahoo.com', '0000-00-00 00:00:00', 'be1264042ca10b0ddf8a10bda6f7ecf325adfef45f0011cdab8c9187b257e0fc:qDoHoWEcnXxc0Wj3ETybtIJM1jszKSv1:1', '', '', 1, '', '', '', '', '66340799', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-05 10:52:48', NULL),
(1388, 'khawla ', 'khawla_2005@yahoo.com', '0000-00-00 00:00:00', 'fe3e23bbfe8123a4a70890e25c8ad243d1e4526e97ba96a4749862214869ad68:axHfcwF03NH8gmbu9fuORs79aTPYlBnM:1', '', '', 1, '', '', '', '', '33834851', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-05 14:49:17', NULL),
(1389, 'Abi ', 'abdulrahman@naaasholding.com', '0000-00-00 00:00:00', '6ea8841014d68e48697ba64480c67c88dd527193be4f846059aa533fab332a05:RzX6Iir4MIMt20SPkZoujLQhPPsdUSD9:1', '', '', 1, '', '', '', '', '50759684', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-06 08:22:17', NULL),
(1390, 'JuliaVal', 'lada.tayupova@mail.ru', '0000-00-00 00:00:00', '8576337e81ac677ae06192bdfe68b25f8715e8795cdcc6f125f5c84121e917c4:KfVB0bBHy1Gxp8fqVuQemLwx6bKZvkDB:1', '', '', 1, '', '', '', '', '82371448111', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-06 11:51:32', NULL),
(1391, 'Muhammed', 'sanashaji42@gmail.com', '0000-00-00 00:00:00', '020ecd61465fe0c85a793f29e8879730eb854c48d21e1174a738ebffbc883480:nZDnm21qDam2oLAARBmicpXsKNY4I3E4:1', '', '', 1, '', '', '', '', '55974684', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-06 12:13:27', NULL),
(1392, 'Carltonneoth', 'appliance.serv24@gmail.com', '0000-00-00 00:00:00', '0b8a2eb9f204bf42d0820313c992a4794178c89ccd22fecb16c6d3fe3a776a6a:XKrdFjSZ8kjfhFi7Q2NUd4bJNHVFCKTs:1', '', '', 1, '', '', '', '', '88772358998', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-06 15:58:29', NULL),
(1393, 'Oussma', 'oussmao559@gmail.com', '0000-00-00 00:00:00', 'a430c8614a781e5ad834579c9f54e62311f98f2ca333395e1c9aabfb6b57a6b8:CW7VD58zDMS35f5xl3TnPqTHqcGg2o8Y:1', '', '', 1, '', '', '', '', '0687371157', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-08 20:34:16', NULL),
(1394, 'Muhammad', 'sheryousuf007@gmail.com', '0000-00-00 00:00:00', '98a79fa533a029b41e48cfee87678900f53a47fd6a2f79b2da06331caa4e5481:5Hdv4Oi9BS9DIMWIIhqq55la9mNqavtE:1', '', '', 1, '', '', '', '', '50868896', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-10 06:00:58', NULL),
(1395, 'maryam', 'mariamalshafai@outlook.com', '0000-00-00 00:00:00', '2e379a680fe673dfda9e6c6e0645e9cad13a8b83ca48859f1151738901a4c877:oYu3zw7uXpXG84ZiJioqCqnOVw3pIfdD:1', '', '', 1, '', '', '', '', '66988896', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-12 16:28:15', NULL),
(1396, 'Dos Lunas', 'info@doslunas.qa', '0000-00-00 00:00:00', '', '', '', 1, '', '', '', '', '66259778', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-13 08:28:31', NULL),
(1397, 'AllanDuals', 'baszatamas1@freemail.hu', '0000-00-00 00:00:00', '22a4c1b5c26f97615c8efe98fe697c3015eaf8400bb3007995c79995b99cdcc3:PEy4z4PKL6248iYUSNgKRxNH8LLo83sL:1', '', '', 1, '', '', '', '', '81777262583', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-14 10:11:00', NULL),
(1398, 'RichardChers', 'dariusz.wolmerski@wp.pl', '0000-00-00 00:00:00', '09245ff05e3ea256c44d336c3764001fc15aa7d78badf1f585b58e79c6eefd3f:ka3K8mIm8jnc1OPE3i6BeM24C5YD3z46:1', '', '', 1, '', '', '', '', '89139556469', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-15 12:00:04', NULL),
(1399, 'Swati', 'swati.gaba180194@gmail.com', '0000-00-00 00:00:00', '49f4cb7f166fcded08d36e07c8dfd3562ea27d9736abaea6705a0881d54e0426:cIZD7Su6ns4mJEjKetpnmqXTtdIdAz0q:1', '', '', 1, '', '', '', '', '30241825', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-15 13:23:34', NULL),
(1400, 'josh', 'joshward1214@gmail.com', '0000-00-00 00:00:00', 'd529affe6ca9e24098e41d3570d36b8968d554a8801ba25b791abd0c618464ea:0GQKrPHeCUJjsrAmvnqKxstoILFrr2mm:1', '', '', 1, '', '', '', '', '2488305541', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-15 14:28:38', NULL),
(1401, 'आदर्श', 'aadrash@hotmail.com', '0000-00-00 00:00:00', '034ae98b0843df4dae1efef4d1e6b755056075352ca7d643f16397f120776f9b:SImWQyFbVRtwMHxu7zAADkj4MQ33cfOb:1', '', '', 1, '', '', '', '', '8431895721', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-16 02:05:27', NULL),
(1402, 'Aisha', 'aishaalali2005@gmail.com', '0000-00-00 00:00:00', 'bd8de5c2ff162747dd0007787936fd2cbaf422d4809b68a89a7e0dbe998d0277:4K6xQpkClgrHBpdkgJ7wi7aKlrOtQUNN:1', '', '', 1, '', '', '', '', '33332030', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-16 08:29:03', NULL),
(1403, 'Lina', 'linaselim77@gmail.com', '0000-00-00 00:00:00', 'e284cf9a4fc2d2d0a07e2ac65ad9fb53f7c2800f4ebbea1c6e09825364c4ab47:BGsaVD412meIZOppmAro4VUjk6T0lfWR:1', '', '', 1, '', '', '', '', '55714458', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-16 09:01:24', NULL),
(1404, 'Umapathi', 'umapathiedp@gmail.com', '0000-00-00 00:00:00', 'b6d6047012d7a3a5d94711a36410189b292da4ef93ca1db20e34a31f2f564e8d:9hA5FbNU64RiSj3REVKRBmLCuPQVy3UM:1', '', '', 1, '', '', '', '', ' +917373090905', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-17 02:37:27', NULL),
(1405, 'JamesWew', 'comendantdum@gmail.com', '0000-00-00 00:00:00', '4894a7c7946458cf8d59caed40a6b3e724bdbcc9b6fb6260a9bee5c08f0262c3:rHdPyDcTxyuAXNWowZZjqKJvzZNgKXUn:1', '', '', 1, '', '', '', '', '83522414175', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-17 08:38:59', NULL),
(1406, 'modwynMal', 'modwyn@sakhpubo.xyz', '0000-00-00 00:00:00', 'd4f0e393015fb74f2ae04e381d31892b79bdbe7ac8131edceb2aa7b9e5c200e2:kJI9yaJFsRSIdfYDIcFvHR0yZWklOjTU:1', '', '', 1, '', '', '', '', '89398429552', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-17 09:47:31', NULL),
(1407, 'Antionekig', 'politontolim93@gmail.com', '0000-00-00 00:00:00', 'a3392599c9ced39ac426edc6bcdc0b5d869861a86f4ba7057c54debcc0097d0c:snh2tkSYry72oy7fHmZiJdnSufXrNHWs:1', '', '', 1, '', '', '', '', '86517268564', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-17 18:11:08', NULL),
(1408, 'RonaldVE', 'ruslanakrasds@rambler.ru', '0000-00-00 00:00:00', 'e049c091d30b50118d000f6a3c99283e8e972c2fd36c9214d730d8850f1bf0d5:jjLdpy4j8Mim78iEOrmGmRUCq6Gkd6OA:1', '', '', 1, '', '', '', '', '88298371528', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-18 02:47:13', NULL),
(1409, 'farah', 'sweety-fa@hotmail.com', '0000-00-00 00:00:00', '8763edbf7ed43206907d24f0ccb7b6ee013809658cccb5e3f45567b58043fb59:xTsdjTTrDDM2VGCBhV4gGMh2QxdHUbZH:1', '', '', 1, '', '', '', '', '55190983', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-18 12:35:15', NULL),
(1410, 'العنود', 'aanood.1999@hotmail.com', '0000-00-00 00:00:00', '0b8cfea880301d8914c48890fb02333bc77b478b96fd29c8350a82f56d8499bc:AG30vmKMGVo5Gl1neDL4NO0gxzJEkS3X:1', '', '', 1, '', '', '', '', '33445633', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-18 16:36:11', NULL),
(1411, 'hassan', 'iii8blus8@gmail.com', '0000-00-00 00:00:00', '156efdc9892a6bbdbf67accdebe64b83d93e2b595db4f87b72a3bd9766c29e25:X4bS5z8k2M3n7m0rSyUkIZbBECz9tAUL:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-18 21:44:14', NULL),
(1412, 'Peter', 'poler.peter@gmail.com', '0000-00-00 00:00:00', '07f97ffdeb928f8f73b41baba81cd9ca8c336c38dd0be978e904c7089245a648:7QfEjjvyvBBSO0l0DY99trRkzZlR3red:1', '', '', 1, '', '', '', '', ' +97474013234', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-19 09:42:10', NULL),
(1413, 'AllenPlext', 'mark@hujk.estabbi.com', '0000-00-00 00:00:00', '9d3d52010c1d6163499c1190a70905303ef70d5d699b692205f288a34a219aba:RPonHmnUlSCNnmxe5uFWjrW3tNwM76ji:1', '', '', 1, '', '', '', '', '85813187432', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-19 20:54:06', NULL),
(1414, 'Bheekharam', 'bheekharambishnoi71@gmail.com', '0000-00-00 00:00:00', '79c15d0823e01f2ee1c4f56ad6426d8200b7482c0f505ff02365cf35798ac3bc:rh1XF2QSnZ6M0RMSlRU2bl0VL9uKgt2F:1', '', '', 1, '', '', '', '', ' +918949110940', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-20 15:41:18', NULL),
(1415, 'Dilip', 'kumard35361@gmail.com', '0000-00-00 00:00:00', 'b31ff547a1517c39a5dcbc47d672cb317af5628dfce1a0f42e1273eee252b2e5:74krbMsck9wiiU2NDYXt1cQggD8taJol:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-21 10:06:24', NULL),
(1416, 'Abinesh', 'abineshmass13@gmail.com', '0000-00-00 00:00:00', '185f9b3e254c9d748e13e829595ad2e2d5f37588b66749e9ccf333a51a5b9638:L2Zgb6stADItohtWhUidavnH6MPQAl8M:1', '', '', 1, '', '', '', '', '7598766391', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-22 09:54:19', NULL),
(1417, 'تهاني', 'tmb1974.zahraa@gmail.com', '0000-00-00 00:00:00', 'cfb7f869413afbb21c026644dd2514b9c3a9b728d56c8266226bef5a4f413ee3:29QSWgoxYMg5Juo7wolofRZM1zmpEkQS:1', '', '', 1, '', '', '', '', '39161414', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-23 03:19:18', NULL),
(1418, 'RichardRof', 'seo1@intervision.ua', '0000-00-00 00:00:00', '649adb30b249c813477c0de68ec201d3ee16d38811216fc3b62d6070f602a28f:598Ic1Sf1IVDzc8AWJNjTng2074C0Hju:1', '', '', 1, '', '', '', '', '82438847688', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-23 14:03:33', NULL),
(1419, 'Amani', 'amanisrour1@gmail.com', '0000-00-00 00:00:00', '21342ea853d335e7feecebfc15c2eb0a1757c7a1b114cb3622d07e70c561c6a6:puwWuV52GMAYKGK6YaQgBzRpBWqhTwnf:1', '', '', 1, '', '', '', '', ' +97450262415', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-24 03:40:54', NULL),
(1420, 'harsh', '9115@warrenacademyschool.com', '0000-00-00 00:00:00', '347830e7ea2b14aa8a358324a436f49fd8dfbfda93acdac0ec045d40ef3d81ea:Wzy37p64quLs47qB6xqxyMzOw00E8xDh:1', '', '', 1, '', '', '', '', '6350596082', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-25 17:06:26', NULL),
(1421, 'mohamed ', 'mesh9991@hotmail.com', '0000-00-00 00:00:00', 'f51f416cd1c6bd7dfc5380908fa1fe5db8a72c2bd319764a2efd7edbc9918b1d:r9Toz34YI9yMOnnvtlPLuQusgAWYMjOy:1', '', '', 1, '', '', '', '', '55551295', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-26 03:58:17', NULL),
(1422, 'mohannad', 'mohannad.rawani@gmail.com', '0000-00-00 00:00:00', '0433785c4e7ac8199409b7a5bfdce80e771500d561a262c49613bb603604f33f:ZD4WiS9V5k06sjCVE1TvvjyHM44vG2tU:1', '', '', 1, '', '', '', '', '77368879', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-26 05:48:54', NULL),
(1423, 'خليفه ', 'mashaelaman2307@gmail.com', '0000-00-00 00:00:00', '37505130e2c49b9b610cb694427b77086979400d7064918490a257a111ba88bd:ZoSJbJgQA6DWv2vadMeA2mi4PVsWYprb:1', '', '', 1, '', '', '', '', '30080047', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-27 20:40:41', NULL),
(1424, 'Noora', 'noorakhid@gmail.com', '0000-00-00 00:00:00', '57e5a957532cad5224e3d1d567998e618b4f5e8e33f2bcc6cac346b7017bd63e:z39Nijh2m4tRNhC49bPGyZ2cBfkxv3SX:1', '', '', 1, '', '', '', '', '77900766', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-27 22:56:13', NULL),
(1425, 'Sudeshna', 'sudeshnapaul055@gmail.com', '0000-00-00 00:00:00', 'e4461f917b9bc7af46ea9c4d85e25eb575feb6828cc4d3155314864620e2302b:DQeISBogXjkh4imZrcPVIc4EZIoPtw8x:1', '', '', 1, '', '', '', '', '917029774676', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-28 04:13:03', NULL),
(1426, 'mr_Raj_', 'uraj10327@gmail.com', '0000-00-00 00:00:00', '0e392340c4ff18f37551d92d239bb786fbad845f22b69f67da06127c7642e2fc:uMxKgP9XXVIwvvjV2yYnjeh9lshq9H11:1', '', '', 1, '', '', '', '', '9294574255', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-02-28 07:19:59', NULL),
(1427, 'Deepak', 'jayaprakashbreath@gmail.com', '0000-00-00 00:00:00', '60df1bdc73f00f811b0c6d044f1661137e585f432a08d835956ba760b46c5f35:rmS9twOHDDzicNM1VQk5IwehPsfS7WNK:1', '', '', 1, '', '', '', '', '9131112756', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-01 18:10:01', NULL),
(1428, 'Tahir', 'tahiraqeel777@gmail.com', '0000-00-00 00:00:00', 'f2dba011d22e3e5c05e38bcb9108b0bd4d84086f835279518c987429e8f54190:jXQ1QLPPtxa8Tr2sGJEZevQhD2SKoDKn:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-02 05:28:16', NULL),
(1429, 'chanchal', 'wwwchanchal650@gmail.co', '0000-00-00 00:00:00', '2edba2aa1d4b3ddb9a8a4f48d34894e703be0135a98606e086591ba8798079b8:nHSzBrHDnMvL0T4qroe3ksNEAuxSxVdc:1', '', '', 1, '', '', '', '', '9476266395', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-02 12:37:39', NULL),
(1430, 'Zabi', 'Zabihullah9988@gmail.com', '0000-00-00 00:00:00', 'a80ad95da902e0b62a1a9ec814cd91a324b8703c3b38f0e0d5ae31fda06d9fe3:F19JaMnEmNJ9TgvCblawowu9wKuIP1h5:1', '', '', 1, '', '', '', '', '31434342', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-03 22:58:05', NULL),
(1431, 'SATENDRA', 'satendrakumar18961@gmail.com', '0000-00-00 00:00:00', 'c3cd3dbdaffc36bf83e30c0a7c833b11c8075e1d41055a46221f103d694350a9:aYrWBl3V64HbmqpKwxRiUgY6RRy4JOEZ:1', '', '', 1, '', '', '', '', ' +916374893141', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-04 04:59:04', NULL),
(1432, 'Farmaan', 'farmaankhanloni@gmail.com', '0000-00-00 00:00:00', '6a8e51115bdfd1f744fa842ca1ab28b0b79dbd13d41ed006f66aeacf55a04b8f:UgJPKI910fkiHmBUkUPE22bR0GaS4de7:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-06 16:47:59', NULL),
(1433, 'José', 'back.rane@gmail.com', '0000-00-00 00:00:00', '0d8b2b1162186ca2980db4e0aef74df5a52eeadd4d4df82f4dcbba6319aee408:WU3rKJ6nTqEgLxLeI9McFJDFgAl2adrd:1', '', '', 1, '', '', '', '', '5519994499222', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-04 17:43:09', NULL),
(1434, 'Ganesh', 'kganeshreddy432@gmail.com', '0000-00-00 00:00:00', '5d32a5eea64675e56cfd9d4e85c18dbca3cf3c5900b5308ff1c3a10ad8fd61d5:YEt9hEkYk9LczAmVAboy4BlGXz9CyiSs:1', '', '', 1, '', '', '', '', '7338715327', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-05 07:03:02', NULL),
(1435, 'afham', 'afhamashraf@gmail.com', '0000-00-00 00:00:00', '5d2d704519a49a56d8bc4ced5c5549b6d8e8dba05336768638bd6826e9c2ebea:Ep0YlguTY0GH3GuAWRke7oglgJtqInZ1:1', '', '', 1, '', '', '', '', '77338033', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-05 10:40:08', NULL),
(1436, 'Khalilullah', 'khaleel.aftab2022@gmail.com', '0000-00-00 00:00:00', 'efca02e614a4a6217d016af177d2d9d8c6b3f1824242a3e1fc13ac32f1c018ef:gQzhXTbLpmuYyR3Any1w3RdbVQ7Z5Lbr:1', '', '', 1, '', '', '', '', ' +97477889040', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-05 14:03:36', NULL),
(1437, 'La', 'rla750939@gmail.com', '0000-00-00 00:00:00', '97f95228827f9f8c719fb208cb3a808298899604789ac732f838661085e5d5cb:bjcRvQwxt8vbgyJyZ7n97AfP7B3mAnmN:1', '', '', 1, '', '', '', '', ' +918480895742', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-07 10:14:29', NULL),
(1438, 'Naveen', 'naveensaini05887@gmail.com', '0000-00-00 00:00:00', '0785b1b178ec3a9aee3aa69f411bca8f16b7aeeac11c5da530aeb7cf061d435d:YzKChLB9aIBqBGGMZxiUfT8DBF7eD4cx:1', '', '', 1, '', '', '', '', ' +918708859576', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-07 16:27:08', NULL),
(1439, 'Sujeet', 'up.barabanki75@gmail.com', '0000-00-00 00:00:00', '60791509f3686dcd9b9d1c225291c071d2adfd8bed4fa2fd65b0abe2e0a3059a:U1XYwPapB6r5tF7n0CKVsZi3mmnNfrsN:1', '', '', 1, '', '', '', '', '9125243564', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-08 05:52:37', NULL),
(1440, 'CHRISTIAN LACSA', 'tchan1345@gmail.com', '0000-00-00 00:00:00', '3de5ce49cf50a37d3f50d20262858c161d9d83dc2a0ad64ca4e7db1478def165:I6x4MKbCFZ8mxaUBniDQzw2kY11l0u0W:1', '', '', 1, '', '', '', '', '55008739', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-08 20:27:45', NULL),
(1441, 'belal', 'smr20100@yahoo.com', '0000-00-00 00:00:00', '6ecd091c4413b26d020da6aecb81089dce5d2016648d0f95bec41a831efd12a2:YmLxKoL5IY5f6pzaZ96e8B6k4x89SvKD:1', '', '', 1, '', '', '', '', '70204996', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-09 20:35:44', NULL),
(1442, 'Sagar', 'sagarmhatre933@gmail.com', '0000-00-00 00:00:00', '188bc4eba754256051fc2b03bbbcd8e26acc0813c2819e53fc09ea26d8f9d1ad:KBRqtI7YmsaLmo3RRM1gnvbm3M1Ny6pM:1', '', '', 1, '', '', '', '', '8237721279', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-10 01:13:17', NULL),
(1443, 'bilal', 'legendk3003@gmail.com', '0000-00-00 00:00:00', 'fd08e410b8d59c3402c1727962b3d4bde13e6f38277a0a05bf98715435dcda27:y9N0G71VIzRxibf4jg9WRuMCT3VgI7wU:1', '', '', 1, '', '', '', '', '55039021', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-10 07:35:10', NULL),
(1444, 'RichardChers', 't.admiszczecinw15@wp.pl', '0000-00-00 00:00:00', '29d5e383ae889cdb6cfbfecc151ea3fd24173794112bede694a3b9f58c51f283:e1NYsPvIXDoo4IYXQJXrUgEwm82AmLep:1', '', '', 1, '', '', '', '', '86181226496', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-10 21:18:57', NULL),
(1445, 'Mohamed', 'Rilwan1989@gmail.com', '0000-00-00 00:00:00', 'c3d4a23bfcdcb9aec6ef621852391afc37a0de6b91027d37b46a307acf36cefa:q3kIi3vqnMzxJpMWhYVES4zVEyp2eVE4:1', '', '', 1, '', '', '', '', '33584467', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-11 13:02:31', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(1446, 'muna', 'missalsalahi@gmail.com', '0000-00-00 00:00:00', '7966d9f3140004bc1f6118d4c34f142349762ae39ef6f8632918f567b6c9f7b9:xvqTMHlh99lChSCdS0a6K6GXHhxcPyuY:1', '', '', 1, '', '', '', '', '33336763', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-11 18:58:48', NULL),
(1447, 'raju', 'rajupadhan7205095347@gmail.com', '0000-00-00 00:00:00', '34877dd9c9d57864eb49b17c3c67baaa7bc9c583a1ba510b8d8c1b408b588d50:k81VvrNJaobrn2vMT3n9bKbitp4QRIGj:1', '', '', 1, '', '', '', '', '7205095347', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-13 05:56:13', NULL),
(1448, 'SHAIKHA', 'shwa5y1993@gmail.com', '0000-00-00 00:00:00', '8914055816df68ad34680d81f26fbc88442b89379007611431b2548ad45141bb:S17j3vCRaglQvhibXETy7mMqOJzATxJ0:1', '', '', 1, '', '', '', '', '33179700', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-13 09:00:54', NULL),
(1449, 'abdulrahman ', 'Where2eatqtr@gmail.com', '0000-00-00 00:00:00', 'e1196992fc4b5c6b7c6e63af80737217194eca485b67de68e2e64103e1668d83:yadwk4kcSWMOSJIFIKDAEOmAAkJajMud:1', '', '', 1, '', '', '', '', '66826608', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-13 15:47:03', NULL),
(1450, 'Dana', 'dnoushi_m@live.com', '0000-00-00 00:00:00', '81b89e7d167ef839cb5403bb85ff9f97f4c34067430c9ccf73efb5cfb3dbcad0:jyJEfcEwehyRUGsjD7hGJC3KcAIATuUi:1', '', '', 1, '', '', '', '', '33605474', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-13 17:24:15', NULL),
(1451, 'heba', 'hebabousela@gmail.com', '0000-00-00 00:00:00', '26d651b4faab58e0682f9a96e5d7d29d8a7b8e4e7f7f469e33289fe7b3dcaa91:pyEAzkjEZtg2vDRXMnKXy129DurnONeH:1', '', '', 1, '', '', '', '', '33258001', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-13 17:49:02', NULL),
(1452, 'Mamtaj', 'mamtajshani@gmail.com', '0000-00-00 00:00:00', 'fe774a44f7934aea4ea00b0d8c0e9c89d4006c8f887c85eb4edd85351d5f337c:3GbbczTdyNBLrCl0pg0EqythNbrQUhqP:1', '', '', 1, '', '', '', '', ' +916009504663', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-13 18:59:14', NULL),
(1453, 'aisha ', 'ghasroa123@yahoo.com', '0000-00-00 00:00:00', '977ff3c9209472cfce3d37022806af1a8dde2149e7751bc1a11c400e9e591ee6:DAuxT2IEiKrXPffQAQ5WPPUtcgQQQGxV:1', '', '', 1, '', '', '', '', '55844629', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-13 19:17:06', NULL),
(1454, 'Muneer', 'alammuneer150@gmail.com', '0000-00-00 00:00:00', '9724769de8204ba60e17be48b0f558dc70231b948a3bc5fc5b3a512ab93d24ea:CYEuSvUw79fttHF0r8HidbGDoRKI3V6q:1', '', '', 1, '', '', '', '', '77232460', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-13 20:10:37', NULL),
(1455, 'Faleh ', 's2f_@hotmail.com', '0000-00-00 00:00:00', 'a37edaefb719a6b4795ba0659f1504983b92b9a488e4db489f902f5686c5f934:ATtfeh5AfgQlpn4fbE0uJBZ4l8ar17X8:1', '', '', 1, '', '', '', '', '55657775', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-13 21:58:00', NULL),
(1456, 'Ahmed', 'ahm_anf@yahoo.com', '0000-00-00 00:00:00', 'aabf3da3d14213048d50c675921d66ac23052bddf01aabd77885b097cf419f13:sKCU7DUjWlzfJlUzPpPeHetGqDuFNalV:1', '', '', 1, '', '', '', '', '66966274', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-14 07:59:17', NULL),
(1457, 'passant', 'passant_muhammed@yahoo.com', '0000-00-00 00:00:00', 'c7cd63516a4c9e9b5cdf2aa8aea6ec46f8f2bb3acf4c1fabb4690f434aef66a2:apdOwAGmC2e11UAKtAJI5d1OKFSUtZ1y:1', '', '', 1, '', '', '', '', ' +9743139 4947', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-14 13:24:32', NULL),
(1458, 'Mohamed ', 'm.elshanshoury@gmail.com', '0000-00-00 00:00:00', '8fc13c17dfdb6061db05db9e7f2ba9680e7e92dcc4ccf3db07958104aa7d2d70:CeycZz4fNZVCLKVbxgguFLxTDH99k2Ff:1', '', '', 1, '', '', '', '', '33016107', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-14 14:55:49', NULL),
(1459, 'Edil', 'edilfarah77@gmail.com', '0000-00-00 00:00:00', '6fd09941c216f6ea6bfec2fe01ad8418a89ddedf63b3e7cfa6e0698f6b37c3b1:QbuX7iLNQIGeozfbGOj47fNCzAivMwP3:1', '', '', 1, '', '', '', '', '66191200', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-14 15:28:38', NULL),
(1460, 'Philipsnons', 'rt23dfvvv3@mega-22-confa.fun', '0000-00-00 00:00:00', '907b93a1f0f21a288d38a6c1c5f77f8fbadef038323d910fa7b9e6d56b2eae89:q6XJ1uTVIXzkZyIA1Ig71IpxAPuyxPAK:1', '', '', 1, '', '', '', '', '84173786317', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-14 21:27:23', NULL),
(1461, 'shimaa', 'shema_300@yahoo.con', '0000-00-00 00:00:00', '08a7fec00bb7c7b1321d59a27428a76c64a04771110cdc0d594c79875992584b:j8zMqjdY0zTPFYScgbs7x6FFjF6fdFK9:1', '', '', 1, '', '', '', '', '33250416', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-16 11:33:02', NULL),
(1462, 'Arwa', 'arwa_jor3000@hotmail.com', '0000-00-00 00:00:00', '19ba2b7b181a3c70960990cee7c6025d5381ccc76e25a4f7403d8b15421f2f10:uMxajLtgrATqluWyBRyvYLp3pBi6wuA6:1', '', '', 1, '', '', '', '', '55568377', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-16 12:28:34', NULL),
(1463, 'Tamanna', 'aliparas68@gmail.com', '0000-00-00 00:00:00', '40c02b1a165f7fab1566bfd9018a70500f347df5abdd44c56e2029ca31f05dd4:tzJqiJj3AjlSnw9r4T5nNQEgSFS8UYt6:1', '', '', 1, '', '', '', '', '8534064670', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-16 20:33:25', NULL),
(1464, 'منيرة ', 'monira2809@icloud.com', '0000-00-00 00:00:00', '3a6027e982d59b41d50e0e243ff3ab346dcab3f728398a555c20cf322f9314ef:xC5WptgRFTV5PIJ931olNLHmhTOfzKq3:1', '', '', 1, '', '', '', '', '55630200', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-17 16:06:26', NULL),
(1465, 'abdulla', 'eng-massri@live.com', '0000-00-00 00:00:00', 'e4dee8bd4e02431b33be03c107cca5447d0c5e9d525d6b6d9fe2a93801d50c79:2ptx8MyGibnslLGLdqk9dkJHZohEYuvY:1', '', '', 1, '', '', '', '', '77519286', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-17 19:18:24', NULL),
(1466, 'Nadia ', 'nadya.khlifi@hotmail.com', '0000-00-00 00:00:00', 'b2fe8c698783290e9f677708292bd168ee4304f7c6f6a9807d303be98a6cff7e:M0dZ6Ik1FesvMfP46Vdgy0AQ07oV8tJh:1', '', '', 1, '', '', '', '', '66790054', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-17 21:15:35', NULL),
(1467, 'Daddi verma', 'daddi4455@gmail.com', '0000-00-00 00:00:00', '44cbd7a8554ea5ed05d863c09937d926bbb9585da5133a08be39458e2502fc42:uhK8i78ScWQtgVRvWkinX23U6p3Hr93b:1', '', '', 1, '', '', '', '', ' +918815455884', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-18 02:39:36', NULL),
(1468, 'Jollanar', 'jollanar-kh@hotmail.com', '0000-00-00 00:00:00', '8fddae1ab267b872d00433808ac3131dafe8d08e2609d6e269ee21fbaf8d92cc:CAsmC6KZOEKzchEdBrEVf0j5ohs3qoIf:1', '', '', 1, '', '', '', '', '55325766', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-18 06:55:12', NULL),
(1469, 'MANISH Kumar', 'Manishkumargu15@gmail.com', '0000-00-00 00:00:00', '82995da5c4e033c32102e88a466538a5ceccefecd2b23bc1de8c61da19ed6e63:j1sExa882PCaSuUyUn7rp4ybnOw7qXIp:1', '', '', 1, '', '', '', '', '6203972314', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-19 09:38:27', NULL),
(1470, 'نورهان', 'nzamalek@gmail.com', '0000-00-00 00:00:00', '68eec7a1572bb76f0df04d19d0fe2a02db1f014c9acbfd85d5948cc9c6ad7706:O2C8ZBm4aWeJDhEnUfrLCEnmFf9Y3iri:1', '', '', 1, '', '', '', '', ' +97470347651', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-19 09:40:53', NULL),
(1471, 'ندى ', 'nadadodo2007@hotmail.com', '0000-00-00 00:00:00', '84ba8937c7b4369ea48fc2f8bae29d92c92d96a48c48a4040f5c2cfbc69f95e8:Pl96c4DMhM8py2AKcSdTJg5XdHpatsxD:1', '', '', 1, '', '', '', '', '77786561', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-19 13:17:19', NULL),
(1472, 'Aditya', 'gandhiaditya547@gmail.com', '0000-00-00 00:00:00', 'b3c58c5f26fa59dbf6029e426a39df6d97bfa9ec0270c0c7a85ccfc0c8505b7b:gZufwCzTPiulajJ7UakNGNBJdBvq0ziU:1', '', '', 1, '', '', '', '', '9773658682', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-20 08:14:33', NULL),
(1473, 'similnath', 'similnath@gmail.com', '0000-00-00 00:00:00', '954ea57f165ca2beeddf9a9082cf4bbaea8a3ab3eaa665bb6dd8738ec2f236ef:WBOHwTKAcppFpIzVLGUYQ1pUCbBmHgfq:1', '', '', 1, '', '', '', '', '33256673', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-20 09:26:47', NULL),
(1474, 'Shimo', 'shimoshico58@gmail.com', '0000-00-00 00:00:00', 'ca15d72b9696badb064282b3b0279bb031b63e5dbdaaeca05580498b304e8b8d:AHLVr7b4bztaO9ClvuZxi4B63t0wGsFx:1', '', '', 1, '', '', '', '', '0097466640907', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-20 14:02:15', NULL),
(1475, 'Shiham', 'shihammohammed@gmail.com', '0000-00-00 00:00:00', '2089b93a9972d4ca62225e105f6e5abfc7854c7fdc40814d76951bc5c517daf4:b3jixqoyFppBBwZ2wlczuzwKgmpGI17I:1', '', '', 1, '', '', '', '', '55134536', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-20 16:00:22', NULL),
(1476, 'Mohamed ', 'Nizarboughnia@gmail.com', '0000-00-00 00:00:00', '880da2ea89e154f0c832b45dc60382add1bea869b7a7d7dab240d79c2dda87e9:QKVLZso3ZtEcriWHmkAfDMexKmXyZaW1:1', '', '', 1, '', '', '', '', '33361416', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-21 09:35:45', NULL),
(1477, 'pratham', 'prathamshinde691@gmail.com', '0000-00-00 00:00:00', '02c0213ffd060f3a8f1ce945c6c46f6f12ce34f20d9a52d107a7f7311d8045f7:60BdpisYoO26zBAKC6reWxTCVXX158iM:1', '', '', 1, '', '', '', '', '919137183924', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-22 13:33:56', NULL),
(1478, 'sekhar', 'sekharbiswas499@gmail.com', '0000-00-00 00:00:00', 'e2565032508c976b4cd9073c1e4f63d27c29d81a6ca00f25c7d24a14204e9c4d:kOLNfIqtKXxDQwd8VRQEopLEaBUkk6nZ:1', '', '', 1, '', '', '', '', '9886809963', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-22 14:40:04', NULL),
(1479, 'sahar', 'snasser1@hamad.qa', '0000-00-00 00:00:00', 'c62d16f6d182b2d6a6ea077b8f219f827dc25175ab803ec322764ff34ce10bea:NHL6ifgUtxv0T50MaBrrg2xEPea6pFuz:1', '', '', 1, '', '', '', '', '55772762', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-22 16:09:12', NULL),
(1480, 'Ghaidaa', 'ghaidaa_81@hotmail.com', '0000-00-00 00:00:00', 'fa3013cc41b12f46e3310d60488833a5c585574a76d2bdb47dbe72676e43bab9:YU6jJeKDbCxjfroVuvZg2MXZTBuhBO21:1', '', '', 1, '', '', '', '', '55352564', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-23 05:28:24', NULL),
(1481, 'tst', 'testttt@gmail.com', '0000-00-00 00:00:00', 'ea93284bbd36497d2d9c28ac97cd5ed929da22104f33b2449467e80140714aaf:icAeSEQI5rTdvYh5dGrbltZxV4vhyBgu:1', '', '', 1, '', '', '', '', ' +919998899977', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-23 14:04:40', NULL),
(1482, 'alissar', 'alissar.lesso@gmail.com', '0000-00-00 00:00:00', 'd59e17ef9837564ce7685f4aeb0a5fcec656e971c158612328c9819fb585b2d2:2Yb0OhZBBy5cMMwuqvdvozEo6ca2S9vk:1', '', '', 1, '', '', '', '', '50259494', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-23 15:25:49', NULL),
(1483, 'Jaswant', 'jaswantsinghbhatikhudiyala@gmail.com', '0000-00-00 00:00:00', 'e0e77f2c533aab47e67ca621317828d5c572f922992913f47b1d86eefddd44d9:PvJpwJVX9yVz1mGCeki5vrHUNjdqLPZt:1', '', '', 1, '', '', '', '', ' +918529132478', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-23 15:29:09', NULL),
(1484, 'حمده الكربي', 'hamdaalialkurbi.12@icloud.com', '0000-00-00 00:00:00', 'e17bf53e703f315dd7400fb6eab21171e587783fb9528726b81abcb55bc750e7:FXjZ6eHoztkOf5vznEbjRPhPyvuw5xVC:1', '', '', 1, '', '', '', '', '50655946', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-23 19:37:12', NULL),
(1485, 'Sai', 'saidjkrishna4@gmail.com', '0000-00-00 00:00:00', 'f1354d2c42abfd1040dcdf14fe97d0ea4ead8eee3708c44c77e0a3a9e6868f9a:sOE3dRhme94bOkRW9qgJmbq9qIPkAiGB:1', '', '', 1, '', '', '', '', '6304522641', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-23 19:41:01', NULL),
(1486, 'Yasmin', 'yaso_94@hotmail.com', '0000-00-00 00:00:00', 'b3847f92f638ee2e9817cab484c7678c8998a25392bc5dd1be43bde3e7d54d4b:p9mIZvs8CnUgOTpKFd69Ud8E1MkbhiqB:1', '', '', 1, '', '', '', '', '66542986', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-24 15:29:02', NULL),
(1487, 'الجاسر', 'wlydsabr12@gmail.com', '0000-00-00 00:00:00', '1f9d36a7569a314cc185c5fe3129c29554c027e253757fcf79b5487eaf589fb9:iTOlSfuCEPwt7JQ0Cy2dPCubEWVf2ubU:1', '', '', 1, '', '', '', '', '01032345208', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-24 22:32:47', NULL),
(1488, 'ASMA', 'asmaalquraan2@gmail.com', '0000-00-00 00:00:00', '84fffe8a48414e964170c1f2748b734cb4af5c75de60a97241897d9b8c40ff0c:l2R0PhCjgcpxm47wU8o7gYzH24ZrWAds:1', '', '', 1, '', '', '', '', '66055864', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-25 02:11:22', NULL),
(1489, 'alaa', 'Innocentredrose83@gmail.com', '0000-00-00 00:00:00', '490e56f27a7029eade0906c2d8f786d24eaab9ca8eb7db0ed4ff03585de7bba9:BwrKfhxpbYMVKCK1OvYpDRvCyulv6D4A:1', '', '', 1, '', '', '', '', '0097450823490', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-25 20:02:59', NULL),
(1490, 'Marcos', 'santosreismarcospr@gmail.com', '0000-00-00 00:00:00', '85cc8e6a527015287c4721684b0e76fedae1444f81ae862a5857ab13fd1de03a:N22OzPNPoGLkpuWpm0DeZOXIhc5LA1nY:1', '', '', 1, '', '', '', '', '5564999112408', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-25 23:34:45', NULL),
(1491, 'kushant', 'kushantsingh712@gmail.com', '0000-00-00 00:00:00', '514f7ed8c299c11f99aa6f35db92ee919891846a024b28a507146210b7743356:ylt1mDZzDuVGR7rRYic64DRTF1Ai2zJA:1', '', '', 1, '', '', '', '', '7037692983', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-26 00:39:57', NULL),
(1492, 'misbahkky', 'misbahkky@gmail.com', '0000-00-00 00:00:00', 'fd2ce75686c3d39fc261d5ab9ee0c65c85d718cd75f3dc2189d63ea99e089e45:chf7bD1bni9NgrErtxUGmrC96igkJC3I:1', '', '', 1, '', '', '', '', '50566941', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-26 12:14:18', NULL),
(1493, 'Liam', 'johnrene212@gmail.com', '0000-00-00 00:00:00', '6e49a8bb95723cfd2159db51d27fbff839ac87424f53258c7ab60b8eea2e8b96:5i5OYaisTXTfCpbE2ibVBapvnKGKzQsF:1', '', '', 1, '', '', '', '', '50531776', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-26 12:16:22', NULL),
(1494, 'MUAHMMED', 'zidanmohd08@gmail.com', '0000-00-00 00:00:00', '82511ed17f3b93201f1061a4215a8a286eee03c755db1001c8f8821d14a4bf35:ow49CngUfZWaMWqarQOpcKlAli6Ws3F1:1', '', '', 1, '', '', '', '', '55147675', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-26 12:21:18', NULL),
(1495, 'vany', 'vany89@live.com', '0000-00-00 00:00:00', '6dc7a335808514e527fecc2b672fb98c04ac3784b0b4347f1a5e0609d9d41dd1:EV7o71nfjhXtWesxh8nQ4NvRZwrhKqit:1', '', '', 1, '', '', '', '', '30304062', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-26 18:22:06', NULL),
(1496, 'ZAHRAA', 'Zahraadarraji@icloud.com', '0000-00-00 00:00:00', '7a5cd354d1a38185044c39d84df926877bc4b1de9e8d0c50ef9da1ae2b876f72:NDPDkTqU0kAcV5uW96f1H6s44b9IVvwl:1', '', '', 1, '', '', '', '', '7704411695', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-27 07:40:05', NULL),
(1497, 'Hazra', 'virgohaz@gmail.com', '0000-00-00 00:00:00', '7ace7358d80e8d47dfd382723202a7d46369cc0f67851e8e7393d7f4520ce123:4aDWu1TmurpyvE5CN35vqu3nV30eAQKa:1', '', '', 1, '', '', '', '', '50146957', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-27 07:57:41', NULL),
(1498, 'irfan', 'irfankhanp168@gmail.com', '0000-00-00 00:00:00', 'a7b5105000b1e52c57c1eefb59b7575ef1a17759a5aaabfff517dfe9ee3f2ab8:gG0sCQSvEhVk0sxfOdMqPXkfENbVHa4t:1', '', '', 1, '', '', '', '', '9099385672', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-28 07:52:32', NULL),
(1499, 'irfan', 'irfankahanp168@gmail.com', '0000-00-00 00:00:00', '176f4091abd3bc54cfefd58b9c1bb0ad1c38a59ca466763a2fa2170c2f923243:IerWpFa2sOgMraraJC8B5kI5DBXCAzEF:1', '', '', 1, '', '', '', '', '(+91)9099385672', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-28 08:08:59', NULL),
(1500, 'Ayperi ', 'leylagapurowa@mail.com', '0000-00-00 00:00:00', 'ec78b1752fb8b786e3fe1a134edb4cd1fd5ac2ebe081db20912d047d55a95056:sOwSuKtmFDr8giA1Ich50662AS4yQsIr:1', '', '', 1, '', '', '', '', '543190722', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-29 05:30:15', NULL),
(1501, 'Rohit', 'rohitnayak45038@gmail.com', '0000-00-00 00:00:00', '14af2b0fe83c6ca0c5ee5f4ada6b754254c3b16d48419c89b96ad494779b34c4:P9IHrgO9wb5aocVsI1UIapwEGsDpKpG9:1', '', '', 1, '', '', '', '', '9925968997', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-30 02:30:04', NULL),
(1502, 'Manar', 'manar@cerruti.qa', '0000-00-00 00:00:00', 'ef7c3281ca2e376f44c894047eb6fade926b9f38992d8789b750203e21ab8dd9:kptfIMZQCL5LDorwRWMpvhPsXRPVKWSc:1', '', '', 1, '', '', '', '', '55237437', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-26 08:08:29', NULL),
(1503, 'netram', 'netramsennetram78@gmail.com', '0000-00-00 00:00:00', '7772bcfbdee2881928c1bc98f84734aba252bfe8a79f357855a08d7dda191c9e:iEeAAufPSXwO880B5XoNU7Z8Vw2AEL83:1', '', '', 1, '', '', '', '', ' +919131009858', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-30 08:52:00', NULL),
(1504, 'Kristine', 'kristinecortuna@gmail.com', '0000-00-00 00:00:00', 'ada82e13c4956e066c8755c1420c6859fc5d7a1ff7eadc1146dfcf69f84a716d:oC2w4EfSHho5F6vnNAbV6hdrwDjl7w3X:1', '', '', 1, '', '', '', '', '66442078', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-30 15:00:22', NULL),
(1505, 'Bakhita', 'princess-qatar-1995@hotmail.com', '0000-00-00 00:00:00', 'de8df89de05ca157b59e261643aecce19236bccd1daf9d5cd25e423ccd27f67c:ontKJRXNWRTzNSVKrZhOgXtTETLw79LB:1', '', '', 1, '', '', '', '', '66662352', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-30 20:14:41', NULL),
(1506, 'sara ', 'salazba@hotmail.com', '0000-00-00 00:00:00', 'b5193260b15988ee851e1deeb0bc39dcba28ea45beb1f4339465ce00949db1c2:QTK563JhFgFnYfka5eRjSTduTb6zMGxf:1', '', '', 1, '', '', '', '', '55990521', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-30 22:33:07', NULL),
(1507, 'نادر ', 'hefaa1992@yahoo.com', '0000-00-00 00:00:00', '81c740ba60bd60a4c74399beaf77a0b7ba91e520f85ca788a97621730da1c83f:1Japw1OtFd6LcMtkgCsYCQcPSNS70Eso:1', '', '', 1, '', '', '', '', '33427288', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-31 11:02:38', NULL),
(1508, 'العنود', 'alanodalmarri49@gmail.com', '0000-00-00 00:00:00', '30774f0eba632d7ce34ae49d2d1f9244c79a57985db0d1406cd6c8d259c1e73c:d6oErbwpgpjiZ2XehqAZRzVAJimW2crE:1', '', '', 1, '', '', '', '', '30333116', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-31 13:02:43', NULL),
(1509, 'fadi ', 'shimaa.moawia213@gmail.con', '0000-00-00 00:00:00', '804bcf31c355ab5a6bb7daa7d1ca9015551fcc71b28a73b27d651ce894b22849:AdkJr3rkdjlep3I01la1skQm5bIQ59SH:1', '', '', 1, '', '', '', '', '66192266', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-31 13:48:57', NULL),
(1510, 'Hind', 'hind.alghawi@gmail.com', '0000-00-00 00:00:00', 'b2bd8e0dce369957158351bd56c42b918df4e85f3a25dade918f2a236085aebb:Wgma9K29HukSPo51wbzUZgl5BDiSSfED:1', '', '', 1, '', '', '', '', '55778383', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-31 16:05:16', NULL),
(1511, 'قصي', 'qelwadia@hotmail.com', '0000-00-00 00:00:00', '8f60f4846181593653889de9a9a8c9fe24c538d868506de1ac6e7f0e3a93dcb4:GLePEzWWeJASUbpaY76YNAMZWsjNLgJT:1', '', '', 1, '', '', '', '', '55802806', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-31 16:09:41', NULL),
(1512, 'بخيته', 'balbehaih@outlook.com', '0000-00-00 00:00:00', '6faf55c0fa69b51e930fe778b58f5fc1917ff097763ab8f2d863d0adfd2c717f:uf6l0z9YZayLfvHVqFgEsknQALMAev7j:1', '', '', 1, '', '', '', '', '77172226', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-31 16:43:35', NULL),
(1513, 'هيا', 'hhaayy137@gmail.com', '0000-00-00 00:00:00', '46fb1f0b32fac97042664a62a28a8035a71d14e006f75d8985508ee25ac9cc98:nGi1qSX1pZB9mYZR2p9oWtUJp15xsdyx:1', '', '', 1, '', '', '', '', '30639956', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-03-31 23:28:01', NULL),
(1514, 'Nasser', 'mmbalh@gmail.com', '0000-00-00 00:00:00', 'e0c363e8c5df26f25c00512602cbac11f1b0f66da50bb486a14a051567cbc7df:ow2SMcnRlobY1Z2E66YnKSTwr1BGzxGX:1', '', '', 1, '', '', '', '', '55627150', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-01 00:14:15', NULL),
(1515, 'lolwa', 'lolwa.mohd@gmail.com', '0000-00-00 00:00:00', 'eb874f48f7dde9d1e6672f3344230cea1d5c99b988e0d64f1210073d63396cec:KIRR9vSliwcT66FxvzlURZBKP04CaWQf:1', '', '', 1, '', '', '', '', '66944844', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-01 15:53:16', NULL),
(1516, 'StevenTub', 'sebastian.rosinski233@wp.pl', '0000-00-00 00:00:00', '3c85633c548f21bc89413fac20b701d6a6e7413fa19b023c662e50aa5f0ae28b:PzpUaKL3kxIjrREDNwwQtCGHcs1jo6hx:1', '', '', 1, '', '', '', '', '81774437279', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-01 20:05:48', NULL),
(1517, 'Pinky ', 'n.bhawnasingh@yahoo.com', '0000-00-00 00:00:00', 'f00a570bbe3ca5ea78c75e6e2c5b016ead0ad5a9b4bdf5bac1e4ee1b1a664093:Oyp2eYtkU2SJRDK42zZRWk6b98rf5bn9:1', '', '', 1, '', '', '', '', '33675332', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-02 03:30:16', NULL),
(1518, 'asif', 'asifkhan.mentor@gmail.com', '0000-00-00 00:00:00', '073c5d2162bace15d9db91dba57e63ca1fa7482448a2c04c828994a3a33f52a6:unPf5d2mCxlnxN7KKdUTq7ixLVIsZKql:1', '', '', 1, '', '', '', '', '33103090', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-02 07:08:59', NULL),
(1519, 'OpenbulletDaype', 'carbonzfiber@gmx.com', '0000-00-00 00:00:00', '21d7e2c5bb53f89621710fd17bf9bd635e334dbb1f40dc62f28ed7f2b656cb36:i0o5aaSTWj1tgRnJaGdpCbdXqT3VQodA:1', '', '', 1, '', '', '', '', '87334855454', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-02 11:45:48', NULL),
(1520, 'Gammlh F', 'jameela34r@gmail.com', '0000-00-00 00:00:00', 'bd6e8a916e35c0b5b9cb0e86a0b4ef332dac1649b8a2113c0411e087ad0309f6:DqiYamMDu7vt8yxd7D4RJZegtcMhQJJL:1', '', '', 1, '', '', '', '', ' +97433844078', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-02 23:08:32', NULL),
(1521, 'Fadi', 'fadi_1989@live.com', '0000-00-00 00:00:00', '5fca13848dec3f031ad7a39f10645bc8669f9de90af537463209aa68628b674d:unutf7TbgM0dUbpJA8iyN3NP39vQTgVD:1', '', '', 1, '', '', '', '', '55694816', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-03 17:06:34', NULL),
(1522, 'fatma', 'msalobaidly88@hotmail.com', '0000-00-00 00:00:00', '38ec756d6bae329a4b25c2f235402b8a77ec3df65f79064b7e040ff8acbc6fc3:U8cMbjljNPBEPKIBQilNwWdiX0jFYlzk:1', '', '', 1, '', '', '', '', '70244222', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-05 00:13:14', NULL),
(1523, 'Rasha', 'rasha.abusaada@gmail.com', '0000-00-00 00:00:00', 'bf6871c6767d836369b247239dcceb9f7f23c3f1a907a660fcf984640dfa6aa7:zxGTVocyA21MSZFI83YWMkXUqlK8B0Fq:1', '', '', 1, '', '', '', '', '55409459', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-05 21:14:29', NULL),
(1524, 'Nikhitha', 'nikhithasp5@gmail.com', '0000-00-00 00:00:00', 'dae56f0e9418a0027acea04c368d76947b7a9d9f96a8f8e098772e4497322f47:nH0tTCO3EhInzKPlzV1cJ9hvGXvifW5x:1', '', '', 1, '', '', '', '', '50065208', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-06 20:05:52', NULL),
(1525, 'RAMULU', 'ramusri6@gmmail.com', '0000-00-00 00:00:00', 'c3a01154d7fef579eb1ba5a38ed5e3b9b3b9655f788e92fd435acd3da754ea97:NkwhfxcHwn7CLy1ot1WqvXSBHmPenUck:1', '', '', 1, '', '', '', '', ' +918309166820', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-07 01:38:58', NULL),
(1526, 'ana', 'vanefreitas80@gmail.com', '0000-00-00 00:00:00', '1f50831d6a87c689a121c48d9f016e5884977ce4664f931be080a3c5c7ff3460:Z6vVfwzPKDvA5Rx68P2Pf8eRv3Cfqi6v:1', '', '', 1, '', '', '', '', ' +5548992117110', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-07 20:16:31', NULL),
(1527, 'JamieTrign', 'temptest832121011@gmail.com', '0000-00-00 00:00:00', '7b0896fd897dc0d8128c01edb91dd120ce436856ff8966af98ed1b8f166daaf1:aa2i6lZZAoUO7BTPFiWqGbx0p0Z7fxN2:1', '', '', 1, '', '', '', '', '82843121132', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-10 03:13:37', NULL),
(1528, 's', 'anfffal@hotmail.com', '0000-00-00 00:00:00', 'abe614a94959e7c49b8033dd213df952ed715862aa5120bd95a5985660e07e0b:rIk62I2Q9iPwaguL9KsF6d7BnSPsSXml:1', '', '', 1, '', '', '', '', '33190069', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-10 08:00:42', NULL),
(1529, 'khaled ', 'kdib88@gmail.com', '0000-00-00 00:00:00', 'f233713cccc3baa65677f6a53e169328f65346055105d4c3100211d57da9b771:A8U85dYdqu9wvpYGsuGNfbCV0O5SMXKX:1', '', '', 1, '', '', '', '', '33043030', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-11 06:28:17', NULL),
(1530, 'rachid', 'rachidnait00@gmail.com', '0000-00-00 00:00:00', 'b49e9991ea4432042a132edfaf789ba7a446c341318062dbe40b4e04fc4e3e34:YLBQMYzLqDLl6tpx47oMW9gfhL0mfpNN:1', '', '', 1, '', '', '', '', ' +212622154353', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-11 15:44:32', NULL),
(1531, 'Nikesh', 'nikeshnikesh703@gmail.com', '0000-00-00 00:00:00', '7eb95e0712d33184ef79ce7b187e286b705654582e9c652532615c940c7895df:2159LCIqcTUCyfilln5wCjUTc0ocgQOx:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-13 11:02:02', NULL),
(1532, 'Nishanth', 'nikeshtj1212@gmail.com', '0000-00-00 00:00:00', 'fe258c4bcf4b30df9fc91a2c8dadeaa3e9a7b98efe017de63d4b5b96a4e0cf09:Qxsis6wNRLJQEpySJnHQ43PpTRmKXuXP:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-20 09:20:48', NULL),
(1533, 'Frankieenave', 'mariusz.rosa2022@wp.pl', '0000-00-00 00:00:00', 'b72867f136509a8d511d025948a7487a1d52f89a7ed176521ee6db5def34ea0e:oQBUX4Zw0y8zJfcCY3P8MeaWV6jygZJk:1', '', '', 1, '', '', '', '', '81564126112', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-13 22:38:48', NULL),
(1534, 'M', 'mk7092323986@gmail.com', '0000-00-00 00:00:00', '2020183ced987796974263b6373ebe8cc20dc6cb0283a8694009cf8dba6bf2f8:8y0f5ctvrIH9uDGMMaBXXmb2P6cLRr8B:1', '', '', 1, '', '', '', '', ' +917092323986', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-17 07:51:40', NULL),
(1535, 'topchecker', 'info@full-size.ru', '0000-00-00 00:00:00', '227d0c5d68982a0a91bed44152d8c54ed34643d829d297034e358c08c0d28782:t8jR8vffx6SudmYZhPoBGrpeOsIgJAks:1', '', '', 1, '', '', '', '', '85471652994', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-17 09:19:09', NULL),
(1536, 'Hatam', 'hatam@outletbrand.qa', '0000-00-00 00:00:00', 'c3cf50628329d340774047c31316c588d89c0fc5f832d83ec13c7acc7ba85f64:Zlv2zOdXyNN8tUltCRIUAKfGGAMHV62e:1', '', '', 1, '', '', '', '', '55824917', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-20 11:21:22', NULL),
(1537, 'seeta', 'rabbans@yahoo.com', '0000-00-00 00:00:00', 'b79375d17875721a5d33e934544d6282efd7d74ab4f6d2daf58272c3952089f9:V08mCFJxJQRJ4SSvyChrBYXgeeikSu3E:1', '', '', 1, '', '', '', '', '70070741', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-21 22:38:00', NULL),
(1538, 'Mohammed ', 'aljaber@hotmail.com', '0000-00-00 00:00:00', 'f17b8e8f666319ac7262d261301ac79a06e492821bc51a998ef2399f4a80c5cb:CUNRLEo3SBVlbfrMBJHIXYgocOfc2z3V:1', '', '', 1, '', '', '', '', '77580975', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-22 01:04:16', NULL),
(1539, 'mary phel', 'mariaphelah11@gmail.com', '0000-00-00 00:00:00', 'b1aeb23037279ebd3a717a6dc2f07cae658d50da75e630cbd3a3d219286c537a:b66ydnAjgrgNJwzlKPbCckaR2mDpBaAP:1', '', '', 1, '', '', '', '', ' +97474786032', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-22 05:49:02', NULL),
(1540, 'ben', 'muhammedalipks@gmail.com', '0000-00-00 00:00:00', 'abb3603a74a672705d32a912fc29db6387cb0bf064fc75acab4bd14291f5c7be:p9UHLeWAQcf6t3HBb5R99N1L5UgtkfDN:1', '', '', 1, '', '', '', '', '31461312', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-22 06:34:26', NULL),
(1541, 'Niyas', 'niyazjawahiri@gmail.com', '0000-00-00 00:00:00', 'a9ed8f3923fcd758e36114328ae6b43243b82c811d942886f4bbc64b28f01c50:n0CVjsja38xzUBca4hKtbwHMGNsuMmrQ:1', '', '', 1, '', '', '', '', ' +91 9345641405', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-22 11:09:34', NULL),
(1542, 'aisha ', 'aishaelhumiraa@gmail.com', '0000-00-00 00:00:00', '814cfb302f0230e4b2f9b549cc46294e82ca5c76cb8eb55de94cd57429760753:5UhHcRFNjaeKibKfX5qVgLSvUgP0Fo07:1', '', '', 1, '', '', '', '', '30997928', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-23 04:45:10', NULL),
(1543, 'Samuelanode', 'damian.sobor922@wp.pl', '0000-00-00 00:00:00', 'bab4d34f861ade58864e10773b2a9f2c6244e1559b6e426ee94da3a5a1a73425:38prgbaOaHJCv3qIdjR1rKiB8nF2KqWk:1', '', '', 1, '', '', '', '', '81713412791', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-23 06:10:37', NULL),
(1544, 'Obadah', 'obada.jabr@gmail.com', '0000-00-00 00:00:00', 'ce8663806de3b0184d06e62f24d90d17565f9827a89bd67ee8a55a14a0cee4d8:rU4WM9lhJ2yiO06AgJLb9G73o2Jy6oOH:1', '', '', 1, '', '', '', '', '55798589', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-23 18:20:22', NULL),
(1545, 'Ahmad Samy', 'dr.ahmadsamy79@hotmail.com', '0000-00-00 00:00:00', 'a9954beea353e9a972db15bba58465cbf5002367c4f4afe11ad3021911fee57b:KHIo2ky1g1HLS1mADf2zvTtb94c4pYCd:1', '', '', 1, '', '', '', '', '30797900', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-02 18:45:17', NULL),
(1546, 'Kennedy', 'kenwesh@yahoo.ca', '0000-00-00 00:00:00', '04d61a494159f0cf046db6bff77098e5b86291cd56b59b82e270fc16412e550d:vj7VOkArUngNj3Tf8kERUGEjJZU07kqG:1', '', '', 1, '', '', '', '', ' +974  50094734', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-24 09:04:02', NULL),
(1547, 'maryam', 'reem-alkuwari-090@outlook.com', '0000-00-00 00:00:00', 'cbe12f3012952c95ca132ec57e07ab76df2d05070158117f8837be56b014f40b:rPf3K1KIxOlEEsXJp5h8KYzSwIT90iSp:1', '', '', 1, '', '', '', '', '77276767', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-24 23:56:38', NULL),
(1548, 'ميريهان عبد العزيز احمد', 'Mrmr917090@gmail.com', '0000-00-00 00:00:00', 'ced04df9849cacf31f71952b985e4063df45880dd5d99010c298ea86154f397a:MqC9tFWoVBc3HJSFAP7UhNVMd04vusZC:1', '', '', 1, '', '', '', '', ' +97431578465', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-25 07:40:10', NULL),
(1549, 'Baha', 'bahaa.abdulhadi@hotmail.com', '0000-00-00 00:00:00', 'a7d33d8c3f40fa4c16dc759e2cf25ead338797e34c77287ea4158e3a8754a167:5ze5XoipSV6KMmMTpvdIqsxUxQhjCcEQ:1', '', '', 1, '', '', '', '', ' +97433188214', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-26 12:25:05', NULL),
(1550, 'WOWshow', 'wowsb.on.uses@gmail.com', '0000-00-00 00:00:00', '6a9584d774e2097258cb65e7a6a2f9f955208ac87f008f4e2765439ec255f4c1:voNlvKKlZ67nnw6hpyUH1akAhKgk9hD4:1', '', '', 1, '', '', '', '', '82547274517', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-26 12:26:01', NULL),
(1551, 'Jesusnop', 'parrott.622@onet.pl', '0000-00-00 00:00:00', 'c427e6a4a9c84219c876b3f8b3bb7d1aefda36094a699018d812d5afa011ea54:O1kiwmSORcdx2mRjHHKhgWUDV9ecmbjc:1', '', '', 1, '', '', '', '', '89728764229', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-26 13:24:40', NULL),
(1552, 'Ruby', 'rubydweik244@hotmail.com', '0000-00-00 00:00:00', 'df51fb08ffd38166eff9c98f8f215a41a33b883a346f7a2f2d096837e5610f29:QYBi4NjfmCVRAeA0VCanFNY1jrHakQek:1', '', '', 1, '', '', '', '', '33317330', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-26 15:46:34', NULL),
(1553, 'khloud', 'khloudmohamed186@yahoo.com', '0000-00-00 00:00:00', 'e8bb24001554a40e17af4e99789bb5f4dc11df9174008c04c3240783a796ffb9:jjDdnRza9TjaKhVrMo8mSEavPDWy9dwQ:1', '', '', 1, '', '', '', '', '(+974)55595069', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-27 03:02:18', NULL),
(1554, 'deepak', 'deepakdut614@gmail.com', '0000-00-00 00:00:00', '78411203e3f00f989e0d8b81466d8cfc39aa5447095fdde18bf1bb802a70e7dc:VNghTjoMKcfgQ7Na4S7lAHpYohNf84pn:1', '', '', 1, '', '', '', '', ' +918527262715', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-27 12:51:29', NULL),
(1555, 'BuySoftecony', 'alexsach91@gmail.com', '0000-00-00 00:00:00', '1d3190be69f263c83a9bef101456dc7d336fad96cdb453391b8a7b74a56e6a53:3EpksHQXnntpqg7n9WZyyEwfoMpGSldI:1', '', '', 1, '', '', '', '', '83484162848', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-27 18:22:40', NULL),
(1556, 'نسيبه', 'nussyba8827@gmail.com', '0000-00-00 00:00:00', '529d95a3addf9502b1ab7b33fe0480e3b3ffd331d5897b066e3fd7c65603bd6a:JWc7lDKX5UqkL6TFdtsw4lYv8b22ZjPU:1', '', '', 1, '', '', '', '', ' +97477840822', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-28 08:00:09', NULL),
(1557, 'SergeyOmide', 'topsite-1@yandex.ru', '0000-00-00 00:00:00', '6631a170ea8a26a6b4127922b2e56d52111526abbd95b3b6122791b04dfd3289:q6yc7ZdQk5xXFdsjS0wmtv9BZKRv5hBN:1', '', '', 1, '', '', '', '', '82577679793', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-28 15:27:29', NULL),
(1558, 'Ian', 'ianmathee88@gmail.com', '0000-00-00 00:00:00', '22d946a3beb21f0dbab31973e9af6212680e8b43facc880cc6370a39f9e47b1b:zGvW1hcEetgYTfbHwRurFHAXiPocH6Cj:1', '', '', 1, '', '', '', '', '30335589', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-28 18:18:42', NULL),
(1559, 'نوف ', 'koka0001@hotmail.com', '0000-00-00 00:00:00', '31a069cff70cebd5b106677a0d0e7aa63ca0c1bf12b36983777f37f1f388ff01:6dIViz93291zvqeedZiJadW0CuVDHijh:1', '', '', 1, '', '', '', '', '77277118', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-28 21:07:23', NULL),
(1560, 'حمد ', 'qatar-bullet@hotmail.com', '0000-00-00 00:00:00', 'cbd37313e8b6d4d1205f6ce1d419f2ce9aea6e849d68161bb43172193b39e2b8:hcSoyLRpBustiAfvYcpXp3FsxQPWkkaU:1', '', '', 1, '', '', '', '', '66000694', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-29 00:06:32', NULL),
(1561, 'Ahmed', 'Ahmed.j.hamada@outlook.com', '0000-00-00 00:00:00', '9c058859f1f7fe9b4ce0028ca124c02415cbd7fadec05f4e4f01e96a5fd816d1:r4HP1zfwLTY44IiUo4MkU1HXv3Yjv4Np:1', '', '', 1, '', '', '', '', ' +97455605261', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-29 14:35:28', NULL),
(1562, 'Bassey', 'basseyfavour44@gmail.com', '0000-00-00 00:00:00', '690948473330af3a2cf00f441c604a3b321b24ead3171ddf6762a1886f310b2c:ULzJwupBdIHP5zlGbnASAPeM4Kj3PbzW:1', '', '', 1, '', '', '', '', ' +2349075390688', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-29 21:46:16', NULL),
(1563, 'Aya', 'abhor.7@hotmail.com', '0000-00-00 00:00:00', '1284e55e41ba26e864adc2474501108e9785c254c2726b6290909d0a10dcf2f0:3F4vw3jQQoyXII4nHK2EpgH8b389ARYi:1', '', '', 1, '', '', '', '', '66014042', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-29 23:43:30', NULL),
(1564, 'Jihen', 'jihen.benguirat@gmail.com', '0000-00-00 00:00:00', '29b38ffc080d4c99bea423f3f638476597d5debae855df459834ce201b359c4f:4i3SJ2KkTVdj4utfFygi2pWYvduRwtEb:1', '', '', 1, '', '', '', '', ' +97430277560', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-30 00:36:04', NULL),
(1565, 'عمر', 'Omarabdelwhaid76@gmail.com', '0000-00-00 00:00:00', 'fec93cc4c962daaed468f0f6900ee0bb1e8361584a62e1f6ab6775c8015501ad:AySYEruUIkOPhDkqCRQB8mlulanGAQ7c:1', '', '', 1, '', '', '', '', '30002727', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-30 01:28:02', NULL),
(1566, 'wadie', 'wadkikisotwiti@gmail.com', '0000-00-00 00:00:00', '709ca050907288d7428c37da3d8c3ad63cf559943452d2b360398bb0788c1c47:KaGpAt8umV744TL1zAMHlP351iJrxBXz:1', '', '', 1, '', '', '', '', ' +97430564243', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-30 08:23:36', NULL),
(1567, 'Fahad', 'fahad-qatar-15@hotmail.com', '0000-00-00 00:00:00', '6ed98ae1f239d14c2cb11aecec63a6646e6fedbed53a15d11bde8446f4434090:Z9K0qjEDthY7mcH0XLnNDz3oI5eAOPq3:1', '', '', 1, '', '', '', '', ' +97455155503', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-04-30 20:39:36', NULL),
(1568, 'pari', 'pkmohd7@gmail.con', '0000-00-00 00:00:00', 'ef92f9f3a10df918018d7a0fab3eb3ac5594358da2fcd05d92f0d3466b60d5ce:wNMSsooXXcwIoPzTBWXWaV54O81XMPK1:1', '', '', 1, '', '', '', '', '77637901', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-01 08:31:26', NULL),
(1569, 'Sasikpdr', 'ditaxtax@gmail.com', '0000-00-00 00:00:00', 'c4b551e716cee63d039b8360b07f6ae6ee3bfcebf1dc70707530a0db1ae7e029:tlBjWUdvAf7QxQZhER1hu4ovdcWVNt32:1', '', '', 1, '', '', '', '', '86937737454', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-03 20:18:31', NULL),
(1570, 'Ali', 'danadoood1234@gmail.com', '0000-00-00 00:00:00', '691127677e58e362f1af38dd893abda7ba3b4bcd5a5822c754da80695e27f391:tdVsZaPPGnh1IJOlJoMsbTGOLJM9VYlz:1', '', '', 1, '', '', '', '', '33555558', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-04 12:18:50', NULL),
(1571, 'Abrar', 'abrarmuhtasim175@gmail.com', '0000-00-00 00:00:00', 'f33baf5ec1e4a485ebcabdf2a057d829f999dc8665f113c9b39d13209dba88e6:P84zFWIpJfs2TmhEdFS1Tfy5mL6shkee:1', '', '', 1, '', '', '', '', '30175814', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-05 02:02:04', NULL),
(1572, 'Lamyaa ', 'lalmulla77@hotmail.com', '0000-00-00 00:00:00', '2a0f509549255ce44425e53fa4e4ef0534b23be31cd487e353e1297a8e1b09ec:2VPoFz6UVIoGwmIlqRRyOouqCWoEGY75:1', '', '', 1, '', '', '', '', '55549360', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-05 07:30:57', NULL),
(1573, 'ام جاسم ', 'hayaga20@icloud.com', '0000-00-00 00:00:00', 'b54649b88b294bd3c9150607811703d652f9bfbf14f87d2a3af9badb8acffcd3:YCAnPAmfqYS0YXVKclLYjJEUn5pACzIg:1', '', '', 1, '', '', '', '', '55753767', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-05 11:39:25', NULL),
(1574, 'ساره ', 'sara.Nasser.96@hotmail.com', '0000-00-00 00:00:00', '504597f52c8534cb80ef5f53a708cc97c439a521464ff5ad66c52c25b15b47c2:USzpgkrlOMMmgUc3IurPF35CxqWdbORZ:1', '', '', 1, '', '', '', '', '66707384', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-05 14:21:50', NULL),
(1575, 'amaan', 'amaan6151@gmail.com', '0000-00-00 00:00:00', '9b409e3ac915d259fab599a977a432474e0c32ab9e089f0e180b874695cc8820:A0rBiK64viZUVzRbVJju0V5cjzLT78d2:1', '', '', 1, '', '', '', '', '66280757', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-05 17:24:08', NULL),
(1576, 'manveen', 'manveenkaurarora@gmail.com', '0000-00-00 00:00:00', '1097084c7dc5d10bcabfc984a82b11e2dddf57fdfcaa78cd5e582d6893fcd1f7:HnEmR5Mh5Kf5uP9bKKPRc9QPCz9ZgKjr:1', '', '', 1, '', '', '', '', '66134064', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-05 17:47:19', NULL),
(1577, 'wejdan ', 'wejdanhakam@icloud.com', '0000-00-00 00:00:00', 'a54c4aae0aa6b95c195a5a2f554d8d74566c899e3b17c184d82cc648e54c98ba:wfg0pq33L9cs1Aexs2SHBEwMz29Vnqyc:1', '', '', 1, '', '', '', '', '50011167', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-06 15:01:15', NULL),
(1578, 'abeer', 'abeerabutafesh@hotmail.com', '0000-00-00 00:00:00', 'd31908e16af8a86219c5187df4d11f3e11003ca2f063fe93d0d64835a7560366:MIf2Mjy17tb9eie3Y1msM4rdVwxL5Lm1:1', '', '', 1, '', '', '', '', '66547662', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-08 13:31:18', NULL),
(1579, 'alhala', 'alhalaalattiyah@outlook.com', '0000-00-00 00:00:00', '24f865d46d042bd84db098b34e2b2d72d8f9818d30cd5a85b1ad3dfe76f9428f:8dBOIQBGEMzrTilBWofi0FseSxVjePdW:1', '', '', 1, '', '', '', '', '39990030', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-08 19:58:04', NULL),
(1580, 'maya', 'mayamowafi18@gmail.com', '0000-00-00 00:00:00', 'fbad29a089e856babd7d24fb7ba3a87c4df4dfa72f3699eab4d98cce85472a11:sGfMICJbmOXKfB8tPfottkrCqdUBe90G:1', '', '', 1, '', '', '', '', '66908890', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-09 21:23:24', NULL),
(1581, 'noora ', 'nm.361991@hotmail.com', '0000-00-00 00:00:00', 'de9f688a46b9661c276816015bc053cc44844f211a83aea9f6252faa3254de72:wyTJXWcXQX5oBeapSFYR3saRwllT1Wzt:1', '', '', 1, '', '', '', '', '33892881', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-11 01:53:22', NULL),
(1582, 'Manoj', 'manojtidake25@gmail.com', '0000-00-00 00:00:00', '557a79be91691c7010ed34e229f2186438539f43565ba0e072ac4778944ae37b:AG87NlTsyy7viA7T3VWDt1yGN4CztL4C:1', '', '', 1, '', '', '', '', ' +918109169686', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-11 05:04:27', NULL),
(1583, 'Shereef', 'barcode.qtr@outlook.com', '0000-00-00 00:00:00', '2e4cca127ac20c68c25817ad1a018e8e543b96019da879be26c7cec2a37acd4b:3QyLnGS61vJyb4NDMhkGMVohI3itb90x:1', '', '', 1, '', '', '', '', '77833343', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-11 07:15:09', NULL),
(1584, 'abu', 'abuanasshahria@gmail.com', '0000-00-00 00:00:00', '26903d27ac4e7ae824379d40f584755489850d856efa93a8d4390624725d2f4a:jrAX5iGEkd5b1KziWX2my55ZgnZKgjU2:1', '', '', 1, '', '', '', '', ' +97366381163', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-11 16:27:53', NULL),
(1585, 'charles', 'charlestrindade3@gmail.com', '0000-00-00 00:00:00', 'd4ad7d20b6c16490eede71b7944b7b24e5df22b5b7f64d777a522c559a4cde6a:c91lGl03iP9XsecGm6pEGIhQ6aixZ6I0:1', '', '', 1, '', '', '', '', ' +5538998942989', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-11 16:44:28', NULL),
(1586, 'Mizael', 'mizaeldecamargo9@gmail.com', '0000-00-00 00:00:00', 'a4885967e385ad7fafd3b0d3e57a7219ec3fbb10e10c745504e1796aeb9d34cc:vgMDxs40vWvCMMWSpcUAHuHkiz3NzsXj:1', '', '', 1, '', '', '', '', ' +5511954226759', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-12 09:04:30', NULL),
(1587, 'جايز ', 'foofoo_j@icloud.com', '0000-00-00 00:00:00', 'ae5ceb0535cac96256bf5a8a829305812ae66a54287587292aa1d5d06fddc09b:XFHUtcCajtZVVP4LckX0ekZoKFtIxLWJ:1', '', '', 1, '', '', '', '', '33319436', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-12 09:31:26', NULL),
(1588, 'Noora', 'noorataj@hotmail.com', '0000-00-00 00:00:00', 'bc145da3643b0aba1cd3aeaea626cbd2f4efc72bdd704dfcc96ee8d9af4b10b9:C8Pz8VfDVF6PnXwYoEOIPIe8xhjQv1Ho:1', '', '', 1, '', '', '', '', '55616573', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-12 10:40:44', NULL),
(1589, 'Shivdip', 'shivdipkashyap173@gmail.com', '0000-00-00 00:00:00', 'f4e57dc864f0a2a851939912dfdb57294ce7785b3f25d2a77c70e9a3936cef46:8wUoGbUepU4CbRhRQHVIQ0ebgwRjMLTV:1', '', '', 1, '', '', '', '', ' +917518251589', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-12 16:50:43', NULL),
(1590, ' محمد', 'ssoliman8890@gmail.com', '0000-00-00 00:00:00', '716ec3036dcb91a4e2ba290795b9b33a4f14ccf6b99f821071cfb83829e6904b:jiXCVUKmvIWYE1ct9RyZ2hAcwCANUCkM:1', '', '', 1, '', '', '', '', '66764606', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-13 04:48:53', NULL),
(1591, 'sarah', 'sarah.quffa@hotmail.com', '0000-00-00 00:00:00', '23bb83d60d558d1e6a842cad991eac87c9834bfab4a3e80d6a2cff3dad2db96e:VOA9EFU78pBycqXPn2i9iufGfQfi5kYx:1', '', '', 1, '', '', '', '', '30313234', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-13 08:37:41', NULL),
(1592, 'Khandaker ', 'reema210321@gmail.com', '0000-00-00 00:00:00', 'd842b0efa36478292ecf7931478cade16a526497576893f5be302f8b65a4ee72:wLbrrenz4lxRcpiWSlCIEZLHbHYuybrw:1', '', '', 1, '', '', '', '', '55628223', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-16 02:38:09', NULL),
(1593, 'CharlesSnada', 'j.onb.e.rs.ke.k@gmail.com', '0000-00-00 00:00:00', 'faa2b6a0a86e734e241d945b5c870aec0e68e3161e0349ef2e2071a11f36a7a7:hCqIWb6D3KlmW5aITtmaZJhIj2xySjPx:1', '', '', 1, '', '', '', '', '82687746573', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-16 03:32:28', NULL),
(1594, 'amalak', 'qatar.fog@gmail.com', '0000-00-00 00:00:00', '38051914d30d0d98df3d0e295e603dcdc554e5ea5424a67d5a1ac3ee29640dc5:TwENrROmTfhrenrVvLNB2gqsilS8sgVg:1', '', '', 1, '', '', '', '', ' +97455888290', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-16 05:32:19', NULL),
(1595, 'pooja ', 'pooja0504@gmail.com', '0000-00-00 00:00:00', '2a504f45133356b8b2495a457e86633d20479360b007f98feef136d675f69046:3g9sMR9ELhYU5pGyCD1e8bP2wbHKOBhw:1', '', '', 1, '', '', '', '', '33010394', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-16 08:57:47', NULL),
(1596, 'Douaa', 'douaa10055@gmail.com', '0000-00-00 00:00:00', 'ce6ad782482ee5e2999646cb1b542e202674591751d095e3ea4573ba67ecf473:mXp8lR8UMm4i7r8A6G4wNqswzXZUT4G9:1', '', '', 1, '', '', '', '', ' +97466143702', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-16 18:20:56', NULL),
(1597, 'Nour', 'Nour.b.zeeb@gmail.com', '0000-00-00 00:00:00', '11341da5c1e39ffbf8eb98e1a5975ca685a390fe45a6e5212057e9f5dd12da43:3Nf6zPfJxQExyDTMpg0H0lTAM0QpkBJo:1', '', '', 1, '', '', '', '', '33199969', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-17 07:09:54', NULL),
(1598, 'Kajal', 'kajalvishwakarma686@gmail.com', '0000-00-00 00:00:00', 'b20672aa08dfc6c8072dab82a4a7d34239f576f0794844982bce425c8caef0b5:mlAYdZvkefkhecXZmYR2267qeZDmilAf:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-22 14:02:15', NULL),
(1599, 'hatem', 'hatemsellemi@yahoo.fr', '0000-00-00 00:00:00', '8a287707eb62d0ce78a427b5fffed015e69a9acbb041e77d419add6c01cf5c43:KCKTl82wx9ShRNhDDCuAqPrBv0eCKG4C:1', '', '', 1, '', '', '', '', ' +97477528879', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-19 06:59:40', NULL),
(1600, 'CharlesSnada', 'j.oh.n.a.tha.nsipes9.8@gmail.com', '0000-00-00 00:00:00', 'ccdf843831f8a7f8475d1e3718efa7310e2c4fa3834c58898bd0ba42d4923c7b:gybUt1AC5Tqchz7T16018wb4UM2ArWld:1', '', '', 1, '', '', '', '', '89385333889', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-19 08:12:35', NULL),
(1601, 'نوره ', 'mafarq55@gmail.com', '0000-00-00 00:00:00', 'ca3f3f4334c601d4f37f06f506b46a62e1d5a4269546e75d80dade8cb106d911:c2zx4vT9mWtYN8XQCh16fuoRoq5rFlm3:1', '', '', 1, '', '', '', '', '66669158', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-19 14:44:30', NULL),
(1602, 'sasd', 'tupyqn@mailto.plus', '0000-00-00 00:00:00', 'f825feeab9b823d64c770862f93f568d0e847ccd154d7be9efece5868354caf3:6aZ81MTPbaCijSUiKvM4KLjyNwej26Pt:1', '', '', 1, '', '', '', '', ' +972597266816', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-20 20:40:03', NULL),
(1603, 'Hazwani', 'mszharuko@gmail.com', '0000-00-00 00:00:00', 'b34d6b1fdb3c5362577096cd9534ae156d92dc4b2572b4c08ecaefbd2217ac7c:3AiCeEPc2YWE8Z7Qhu2AKOq6tBG7fG9J:1', '', '', 1, '', '', '', '', '50699711', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-21 06:08:25', NULL),
(1604, 'RITU', 'ri2.abraham@ymail.com', '0000-00-00 00:00:00', 'a68c93faed26384e9328296ebe3065a6c6cadba3e1e43e10d9ed817e4272192d:hgcGruJ5q4DZ7JPTV55wmi1dl1GsMpfZ:1', '', '', 1, '', '', '', '', '77160427', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-25 12:41:04', NULL),
(1605, 'salam', 'salamahmad978@gmail.com', '0000-00-00 00:00:00', '808750b74458bfcbbdb2607b25a73dcb947d3cc231e18480c3cab77e4fb4a3ca:5J4ir0S5gmk0wqyOn350l01oKZgAKuCS:1', '', '', 1, '', '', '', '', '55003815', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-22 08:42:05', NULL),
(1606, 'Kholoud ', 'kholoud.almuhsin@hotmail.com', '0000-00-00 00:00:00', '6f1ad47451bb9e9f4f88ad16303b71fcd513ee2445f58d07ea26223b857e1eca:aPDNWhw5fgcyG7FHYbuw2e3gMREyUrAd:1', '', '', 1, '', '', '', '', '70333304', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-22 09:02:19', NULL),
(1607, 'noora', 'noora.m.alhayal@hotmail.com', '0000-00-00 00:00:00', 'f1c409e8da02341203772332c8f9368234d9e096ad4793b2f726a1865bea6920:HamY8Wa4ygXQMaUxOnBglkaLWUWtMQhP:1', '', '', 1, '', '', '', '', '55860049', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-23 17:37:11', NULL),
(1608, 'Pooja', 'p11poojar@gmail.com', '0000-00-00 00:00:00', '5a5694ddc79aafefe6ba5d9210a161313cbb53a2f8af60cf08662437381f969c:XLywGlzUx1dOFatje5udqKGOzXglkWVQ:1', '', '', 1, '', '', '', '', ' +97466936538', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-26 08:13:05', NULL),
(1609, 'ikram', 'mi5287831@gmail.com', '0000-00-00 00:00:00', '2264d12780d713b848379f101d2c669fa024aeb60777e36b934baebbc9f047a2:AkamHR9UdfyudCiEHt2BdKYIInDHpj19:1', '', '', 1, '', '', '', '', ' +97470026415', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-26 19:13:07', NULL),
(1610, 'Khagesh', 'khageshkarkel1@gmail.com', '0000-00-00 00:00:00', '89b246807dd32aa03a49f56022709faa34c0649931bfa199f708e3d4a147a610:kBRTZklpXgrPoxNDRsfRJ5nSoO5b0qer:1', '', '', 1, '', '', '', '', ' +91.9644682960', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-27 06:33:23', NULL),
(1611, 'Smriti', 'sharmasmriti2009@gmail.com', '0000-00-00 00:00:00', '3af42215d3cabdb1b9d2e35345af2274bedc8613a0b9bdf3ed3a332cf4d76021:g2Ov2uPfgtbyoYhGXI2iAI9utxbfsZZ1:1', '', '', 1, '', '', '', '', '09982284260', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-28 03:05:48', NULL),
(1612, 'franco ', 'nyakundifranc1@gmail.com', '0000-00-00 00:00:00', 'b578710549c397e64ed5b72e1dc22b7e30763085c071b8f7f676621d94847ca8:supoUri3hxmjpr8AxzB0shBrXJwIm5ed:1', '', '', 1, '', '', '', '', '30799542', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-27 13:15:59', NULL),
(1613, 'ام محمد ', 'jalmathid@gmail.com', '0000-00-00 00:00:00', '368018c6462ea60fa71d49f474f3906c7c685ffe3ac8475ef6d2f4cea9d826a0:Ok12E2C9Kpw52CV71kzHKKOGhD1FAia0:1', '', '', 1, '', '', '', '', '', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-27 23:34:48', NULL),
(1614, 'Abhi', 'ay8805706@gmail.com', '0000-00-00 00:00:00', '6cc884b44a659a2d4cc0ed6640aabba95d4bfbd7dfa57d877b53ad0fabfed993:L0RZ1id3Gna2oJg85RlT59fxkskbzbMR:1', '', '', 1, '', '', '', '', ' +91 8447201157', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-28 06:17:24', NULL),
(1615, 'Aigbogun', 'Aigbogunbeauty20@gmail.com', '0000-00-00 00:00:00', '4c528f0f6e0c02727cc00340b620dc071c677ca83c6b5d8d6707e52ba7b804fc:lJxOmDaipy8B8qO5en8UHpz3niYTCfMo:1', '', '', 1, '', '', '', '', ' +4915217795923', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-28 19:54:36', NULL),
(1616, 'Mohammed', 'dalo3a90210@hotmail.com', '0000-00-00 00:00:00', '695a56c1d41e90f4fda6a8b52cc721a2a625671c1eee012a676da49c4254c79c:X75YLPe6j0CI9ZlkemsYy4zlwvoGhuhs:1', '', '', 1, '', '', '', '', '77995559', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-29 14:54:17', NULL),
(1617, 'mooza', 'mooza.s@hotmail.com', '0000-00-00 00:00:00', '9f12db8b2d28d425533c8cb417a3005428cd99c7c353100398172e975a341fe5:ZdkiWQsuukSF9duJt4UN4Gq0zN2Swp9Q:1', '', '', 1, '', '', '', '', '55666695', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-30 06:45:17', NULL),
(1618, 'Hamda', 'hamda.uni@hotmail.com', '0000-00-00 00:00:00', '683245209a02d8f14427634640652d5be407ee783f7f365fa4616a2b160a8137:LBnn7zZ4ALBwiAL5wWmRtTgnLqT5BV95:1', '', '', 1, '', '', '', '', '55049146', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-30 18:01:32', NULL),
(1619, 'ليلى ', 'l-o-0@hotmail.com', '0000-00-00 00:00:00', 'c316aa40ed0edd626828c42740cff83a3eb890a3e3c5aa033999c52fd341b8aa:1fHmwNqzA1BIgNvKiLPeq8ovGh5ZKJY0:1', '', '', 1, '', '', '', '', '33633383', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-05-31 17:04:08', NULL),
(1620, 'JĀZI ', 'xaey_6@icloud.com', '0000-00-00 00:00:00', 'b1ae2a052f56a8cb6220f00a055a96499569a5deef5e21213c44d89a3a91fe02:lIilE6zxntiX4gV2aZzp0Te493Qdc1ye:1', '', '', 1, '', '', '', '', '70709991', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-01 05:16:32', NULL),
(1621, 'roza', 'rozabintali@outlook.com', '0000-00-00 00:00:00', '2b922363e8647fa419ed08d2140720bf457d3dc6223b4c1dad4c55abb733aa8e:QtMV0uXe3p56yubO7vvlPj3NsqEz1E6d:1', '', '', 1, '', '', '', '', '33669636', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-02 11:40:07', NULL),
(1622, 'Bikash', 'wesnajwesnaj@gmail.com', '0000-00-00 00:00:00', '6ed75f333389cadac2802b4cb3a19253a91c6c9cd0b1842a36fc07fcc6a8042f:oA0EPk9CFdV1yim0yQ9nwqkFmIpa3gaT:1', '', '', 1, '', '', '', '', ' +97450602391', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-02 22:09:16', NULL),
(1623, 'Bashayer', 'b.almeer@hotmail.com', '0000-00-00 00:00:00', '224df5a44557246ccb3bbd116d0c1d90f207c74a42266977b39ca2e26fa7d9fa:sXojjucavfNIhOoTe4aY8Boq4nYRT1rx:1', '', '', 1, '', '', '', '', '66170002', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-03 10:29:59', NULL),
(1624, 'Mohamed', 'onlinefuturemall@gmail.com', '0000-00-00 00:00:00', '1edd635e6a77a5ffa33e08a1c8cc29b61a4a13e593bc027396d9f6929bfdf52a:6R3WVNw2iUi0zf9Zy7sLJgHGLtXQZDik:1', '', '', 1, '', '', '', '', '30999789', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-03 12:02:36', NULL),
(1625, 'noor', 'noorhamatto@hotmail.com', '0000-00-00 00:00:00', '4edb150f4bf22ec99bbe5fc27ef8735b66980b74f286942ea67a636d4847b1b5:kX6cotxm9kQpPaQAfDdHYWp2KLhLAygK:1', '', '', 1, '', '', '', '', '55161098', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-03 12:07:05', NULL),
(1626, 'talal', 'alesseitalal2030@gmail.com', '0000-00-00 00:00:00', '4a6f03dd747254f296986e6348cbcef3f6fd5252a0b3faa610f61a4cadf834f7:V8MBG1AQuQPXEcsJBSRitmCWkX6MlZio:1', '', '', 1, '', '', '', '', '5171311', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-03 12:20:19', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(1627, 'jamal', 'jalharbi@hotmail.com', '0000-00-00 00:00:00', '7f555dd3b5c624d2fbcd8d03fdcded3788cd5fd05b978f6948fdc7ad7b8e1043:UY9zvebLCw1cYcJhX31PoZ8hjGDVtm80:1', '', '', 1, '', '', '', '', '55666228', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-03 23:30:19', NULL),
(1628, 'samridhi', 'samridhi.trikha02@gmail.com', '0000-00-00 00:00:00', '6d1b0f6080b8e11bee9c1d319800288961ca1ee5d47c3e4dc35a239d65ca8569:yAs4q9Ul6bLwdonrDp5D4uDFR2OXT1KV:1', '', '', 1, '', '', '', '', '55166033', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-04 11:26:32', NULL),
(1629, 'GariWax', 'ukraine774677@outlook.com', '0000-00-00 00:00:00', 'd038f6f79e0dbebd7bd7180df4a67a47a5972d48fb61f6b4e75c29eba68043df:tkLKp2WW6PzrH390c30i1zyLlpIbrC7V:1', '', '', 1, '', '', '', '', '83613364199', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-05 09:14:25', NULL),
(1630, 'Bassam', '15bassam15@gmail.com', '0000-00-00 00:00:00', '7fc027a6cc2772ad120e0aa13c9e3b5e52df67885bf21c8ec5d2d7cea5efe63e:CkrpnhINPXcDrAaxtfuTk99QKdloVe4F:1', '', '', 1, '', '', '', '', '66806941', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-05 21:09:58', NULL),
(1631, 'Mauriceoraph', 'romain@toncinema.online', '0000-00-00 00:00:00', '8fb62cc1338351b53c63f94fa814c197bc351763a622749ce7b986e4436ee6b6:ZgqFOwwm3WeMHHvZfQQBrM2G2DVHpQ6m:1', '', '', 1, '', '', '', '', '88283166866', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-06 05:34:40', NULL),
(1632, 'Benitomiz', 'perta3kqw@rambler.ru', '0000-00-00 00:00:00', '6fbce1d5c84da5058ffce99c3aab9437e5742c419168548947af1691dd321634:n4iVyCaRa7x2oNq87zEgk3PjoejDnxGv:1', '', '', 1, '', '', '', '', '81831866627', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-06 08:43:44', NULL),
(1633, 'Abdulrahman ', 'abdurhmanmurshed@hotmail.com', '0000-00-00 00:00:00', '1706ee836d7a3d566e8db65eb286b7b001577e070347fa72437fff1c7bed2f28:LJ75aSMjMQFok1IwNv2V3bhTcc2DDFVm:1', '', '', 1, '', '', '', '', '66493417', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-06 14:16:59', NULL),
(1634, 'allan', 'allanscelada@yahoo.com', '0000-00-00 00:00:00', '2f23823583ff7d2bde7e29978e625372ad257a4dd6a2635aef037a4d4e91e4fe:LaFxwEaKRrBNwggZchcpj8NPBOjKc18Z:1', '', '', 1, '', '', '', '', '97466209348', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-06 19:35:59', NULL),
(1635, 'lana', 'lana.aghiad@icloud.com', '0000-00-00 00:00:00', 'ac3ad4cf7ffbbcb633d28c543676e492de51c7b0aa08077a6b46cad20993d5b9:A5xDiGmHnFqZYPrmzQo9aXyFOEQATCEp:1', '', '', 1, '', '', '', '', '33009088', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-07 07:30:48', NULL),
(1636, 'Durval', 'dso.92@hotmail.com.br', '0000-00-00 00:00:00', '65a59954dbfb25785943b7a0bdb1240878f3fd54ea82be32dc60d3c090e26540:0gl7IIfbds3sY6S6Nm9JrcN8mGHqrcOq:1', '', '', 1, '', '', '', '', ' +5519981052331', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-07 09:47:23', NULL),
(1637, 'فايزه ', 'faiza.moon14@gmail.com', '0000-00-00 00:00:00', 'a75a2b663a081b3ee152dd76090cbbe34f6b461d459e404a6d1a959582cf4e48:v6rRoO28nnoy3bgIwWDpvzpH4xPtihE9:1', '', '', 1, '', '', '', '', '70071077', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-08 21:35:53', NULL),
(1638, 'KeithDof', 'guoddskipokpuvtafd@bvhrs.com', '0000-00-00 00:00:00', 'dd971cf42acb64a1002d2551016ceb30b2e45764cc28f0de2ba6f1d2b7ee2759:lv21eVhjRLeAOZhm7b1pp3XEKEQm2jxS:1', '', '', 1, '', '', '', '', '81989424435', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-09 10:11:22', NULL),
(1639, 'Gustavo Javier', 'gusty_99@outlook.com', '0000-00-00 00:00:00', 'b83551150c9f0dd0c5fa0caf3163c82b29611f1d3fbe1b584aab0690e004196d:Yh0dIdhquh5TSeWyj77aT6aHUTAiHkvk:1', '', '', 1, '', '', '', '', ' +543764277395', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-09 10:33:50', NULL),
(1640, 'james', 'jaymeskhamau@gmail.com', '0000-00-00 00:00:00', '783847b21794f671be745d1431d1744ee09cf71334e7bd419d9087afeb3486a2:1Aitgs26SjLtemOhtHaDKp5VN3LyApxF:1', '', '', 1, '', '', '', '', '30144250', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-09 15:20:41', NULL),
(1641, 'Nada', 'koolkat285@gmail.com', '0000-00-00 00:00:00', 'd935684c05827347498bc18d819ecf406000a208983aac64a8d61bb992bcf936:YcwshVIfnWgZUWc1WNN0LqKx1zwfu4fo:1', '', '', 1, '', '', '', '', '66626233', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-09 23:51:54', NULL),
(1642, 'fabio', 'fo34982@gmail.com', '0000-00-00 00:00:00', 'c900c8bce8858d2eed460784ec4743941c9259bc759c0746dadb4cf3d97a5493:jO93SeKzn9yODhFO7T4S6Cj6jB9quCRK:1', '', '', 1, '', '', '', '', ' +5521982776903', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-10 01:52:48', NULL),
(1643, 'Assgad Abbas', 'ama.abbas81@gmail.coma', '0000-00-00 00:00:00', '6ef903655eaba6ecf2d63f7f4c921bf359c942841418fadbe4af03e5e7932c36:lapvUYwGZaTJuoc6sL5SOf6ivHZZNfbr:1', '', '', 1, '', '', '', '', ' +97466404554', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-10 15:22:06', NULL),
(1644, 'Amna', 'amna.n.90@gmail.com', '0000-00-00 00:00:00', '6bcac74bc4eb7c95bb5986b8d5e0044cf63b9c9bd0a5c472d7b46d7ab9b95952:2C73CmwThHIxKpKmNKCnPDxouQD4l2Tu:1', '', '', 1, '', '', '', '', '55337239', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-13 13:03:46', NULL),
(1645, 'Abdullah', '333boodii11@gmail.com', '0000-00-00 00:00:00', '63cac92f7884f67c43c454fd239f25937492656557368a9a0f40537ca1f245af:zykjxGMg8DXnJhTiuOajJvGkRlNlItOK:1', '', '', 1, '', '', '', '', '33602266', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-13 13:45:45', NULL),
(1646, 'maali', 'maali500@gmail.com', '0000-00-00 00:00:00', 'a5b601a5f971b9239411ee395bf19dca8a4eda13e12312a6a718517a87207186:8WgVhHAR1RttK5fZR3GmsXM4Cid4NVkX:1', '', '', 1, '', '', '', '', '55858726', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-13 17:08:31', NULL),
(1647, 'Ony', 'onyhsh@gmail.com', '0000-00-00 00:00:00', '7a8f21fbe23b9ae71153063dcf566cd79aa64d0245b3adae78fb87355ba2a1cf:BOqeei93BeMYMywyZoYaPhqEh2pe3Nx9:1', '', '', 1, '', '', '', '', '33375513', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-14 06:12:25', NULL),
(1648, 'nour', 'nour.awik-lb@hotmail.com', '0000-00-00 00:00:00', 'd296fe76d7400224a38bf27421e4f33be97225c6f7c6a71e6f8b11a98a2854b2:8zjsxmYnhOX122GFE6iVikmDt8M2ts49:1', '', '', 1, '', '', '', '', '66116965', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-15 10:28:05', NULL),
(1649, 'TommyTar', 'vodnogib@privatezmail.com', '0000-00-00 00:00:00', '653cc4d8c979ae8a77b1e67704c634df3cf7f6b7f9965015b6c376c0de84a6df:HX3isStcNfS3JtxVXKLuwjeSi01o1zxo:1', '', '', 1, '', '', '', '', '84389361522', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-15 18:50:16', NULL),
(1650, 'EdwardCroky', 'baktas666@yandex.com', '0000-00-00 00:00:00', 'd3c5084e166d110f59edc842190eac0adf3cb2b04ed216ae1d60f287ecd318b6:G6DbLrFxxs0BmGYJxgZy4RTLkzwjqxzE:1', '', '', 1, '', '', '', '', '89483128769', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-16 06:53:45', NULL),
(1651, 'sara', 'sa1305166@gmail.com', '0000-00-00 00:00:00', 'f85b769307fcb3fcafb4163098032b4da6727e149448a19e56f1d48c2fd3d673:eC0y5PUIG6iERtJLULSBDxZEpwxkd93G:1', '', '', 1, '', '', '', '', '30001703', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-16 07:17:43', NULL),
(1652, 'نور ', 'noor_alabdulla@hotmail.com', '0000-00-00 00:00:00', '40df072ed8dd7756d850e50ee5b7e92c7b1134ab53c72f49eb9dcc6e7af87f7e:E0sKjoeNcNTo4ZHSAvdBYXlOEhvD8Bis:1', '', '', 1, '', '', '', '', '55620006', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-17 13:48:47', NULL),
(1653, 'Amna', 'amna.takroni@gmail.com', '0000-00-00 00:00:00', '2bc1208f71e225b395f70d3a8d611c0d00f55ecc2de592702e257698520be773:6frPMl8fAiPGLoq87lxuMWJp8WnVcoDm:1', '', '', 1, '', '', '', '', '66978708', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-18 12:57:20', NULL),
(1654, 'Ishaq', 'saddawi99@hotmail.com', '0000-00-00 00:00:00', '58c3a579e1776b27316983159e12382308bc49d660446116ec9524333d9bc437:gxtlHQKjQV1icl6LbUx7hPxSL7yJMF9W:1', '', '', 1, '', '', '', '', '97455856685', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-20 06:48:42', NULL),
(1655, 'REEM', 'xxm_xxm@hotmail.com', '0000-00-00 00:00:00', '80e235947140f50dbc7c14c7ae00e583e862beedf252c6ccc196deea2bb0ebb5:NQa93adBXN4Q84sPvjKnDlwMOYVvXiav:1', '', '', 1, '', '', '', '', '66677833', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-20 17:32:58', NULL),
(1656, 'Mohit', 'mohit.88712895@gmail.com', '0000-00-00 00:00:00', '967a59686ea722d07b38d3f93a37ce514f74c36eb37343a52f992876fcb6ee81:BaMwdR5xQ3JFMmy4Q0IRFLkCMS3jjzFb:1', '', '', 1, '', '', '', '', ' +917697924546', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-21 04:47:10', NULL),
(1657, 'juan', 'juanjonas171@gmail.com', '0000-00-00 00:00:00', '4ec9babf755c15d66d60339f78a3b49914fe5155fa0781a2b9fd7c6ba81c1efe:rsASdaDDPumRQDk9KqUH8jfWSgQ5NzYT:1', '', '', 1, '', '', '', '', ' +5511956930122', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-21 04:53:23', NULL),
(1658, 'rahila ', 'raheelakhaan231@gmail.com', '0000-00-00 00:00:00', '876227482e1722e83aac1dd7904bf04a75278abe0b5f27257785806c780b2415:4V2YW8vGn6FWeT5rZrAM6rv3RNCGF2Hp:1', '', '', 1, '', '', '', '', '66050414', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-21 11:39:25', NULL),
(1659, 'mahaveer', 'mlala5876@gmail.com', '0000-00-00 00:00:00', 'df76d13d9543195e15b7264adad253f49bd65c90f11555c8bbdd30eeed898828:OfZgoUa5okJzmEEl0TfJXuHPTQCXAyap:1', '', '', 1, '', '', '', '', ' +91 9602390121', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-21 12:29:55', NULL),
(1660, 'Adnan', 'adnanbenkhalil@yahoo.com', '0000-00-00 00:00:00', 'de6dd29f6bf0c391b6d8d388918ceebf515c19aed5c5302f0f0e45c69fba086f:O5Q4saQ0FQ3vX6qKWxilkrkjuFMsn5MO:1', '', '', 1, '', '', '', '', ' +97466469602', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-22 06:26:29', NULL),
(1661, 'ساره', 'sakuwari98@icloud.com', '0000-00-00 00:00:00', '40b061c0a6b846acce2f1f7cd88b01080a1fa4a5b49935865aee836ea3142a96:SIzVYi2db5p8Ub5rTlO6TOPaXqWLg2WE:1', '', '', 1, '', '', '', '', '55445433', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-22 13:42:27', NULL),
(1662, 'Rosauro', 'rosauro_berdin@yahoo.com', '0000-00-00 00:00:00', 'd1b65de06b087a10c3027cdcaf5978286a9400415dd01bc8d7115627e916bbf7:bVbgnDjb1LlGjWbDvQLZU15uxWiiBQsO:1', '', '', 1, '', '', '', '', '30566981', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-24 09:51:29', NULL),
(1663, 'Vdbhfh', 'dowosa4449@azteen.com', '0000-00-00 00:00:00', 'f1a29593a16c081870c2d25d5fb4dc73317bb4accf08e0cdfd161bf823727195:U2O0mMCuSoLmVaWjqBjrtuuHoTvPpRbv:1', '', '', 1, '', '', '', '', '567956558', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-24 11:25:09', NULL),
(1664, 'alvin', 'alvinjohnpumareja@gmail.com', '0000-00-00 00:00:00', '68d86a1235f881ed7673cbb68bcbf5a2dd4600eab0346be2d1d7e89a5c2cdfd0:yEBw7K7QYTA9ZkI0eemphvtCmPRW4RGm:1', '', '', 1, '', '', '', '', '31354199', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-25 02:31:27', NULL),
(1665, 'jaro', 'noverojaro@gmail.com', '0000-00-00 00:00:00', '5715fee74e184174e97a3125811d68780bff67247e03088fc7cd834865eb1f77:zYdBkn5nKu7c2TMnAXHiVQNA8Gk2MekE:1', '', '', 1, '', '', '', '', ' +97433462620', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-25 04:38:41', NULL),
(1666, 'Aisha ', 'Aosha44456@hotmail.com', '0000-00-00 00:00:00', '56eda1c6774a688f15f5204d90c170c854e2b053b8a70a62b811043494415376:wfzpLLdMpcFAp0HAPl7mLiLLjdFjBbTs:1', '', '', 1, '', '', '', '', '33099056', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-30 00:35:21', NULL),
(1667, 'Aisha', 'shanieluy@yahoo.com', '0000-00-00 00:00:00', '4e97f981355a6804ce9aaa3cc11a3a23b20130ac1be48323665d3975175fff56:qFkj5sbRhJf9uXEc7N2IblmMiDzLPZn2:1', '', '', 1, '', '', '', '', ' +97430116090', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-27 15:22:13', NULL),
(1668, 'Ahmad', 'aqablawi@hotmail.com', '0000-00-00 00:00:00', '5926b202291275eb6d1ef1db2057f35bb8f730936b6251e7bc433bea573686cc:SXcfxmV8iWIKmRgwZd948Lz2a5ALAuto:1', '', '', 1, '', '', '', '', '66088743', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-27 17:29:12', NULL),
(1669, 'max', 'bk142226@gmail.com', '0000-00-00 00:00:00', '729b206f81410d2d5d3142d1ae52e061c6884e8180222c15a11f96aa0c099668:5miXBBOlgEDx0bcoHcthGhJa51QmYUka:1', '', '', 1, '', '', '', '', ' + 91 7837186455', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-06-28 11:34:05', NULL),
(1670, 'Jeraldjat', 'sebmal911@wp.pl', '0000-00-00 00:00:00', '1a762bef481c85b5a450fae898c01384b8ce017309119fd44f7bee7171bbf571:BGa6zQgN3DDvUAQ0MyjULCMhVGbb5O6j:1', '', '', 1, '', '', '', '', '88899787274', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-01 08:51:06', NULL),
(1671, 'ygyzyEmbox', 'med-servis@rambler.ru', '0000-00-00 00:00:00', '788f6ce7ade802b27cc0471aa9d4393dfca8fce4a430c17045626cb1be03c4af:zmU1Wn2O5Q6eQufmf3sDbo2eknUxUGDD:1', '', '', 1, '', '', '', '', '86257963238', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-01 22:15:09', NULL),
(1672, 'nah', 'mahipal01011994@gmail.com', '0000-00-00 00:00:00', '5f7686691e02282ae40874e8d3ff09ae776adba9a78be7d89b585adac6c5a0c3:ubIzvvxsFVhS7v7sUwfHYULOAredw5xY:1', '', '', 1, '', '', '', '', ' +919269992523', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-02 04:46:14', NULL),
(1673, 'TimothyTaF', 'timothy7739@gmail.com', '0000-00-00 00:00:00', 'b6417e7e7bf1f69a031622b0f7418ff10f008f045e0d5af00957e53db4e95a32:Rx7VarJ9vGYKXkIH8NWLA6rlYrpMGiBi:1', '', '', 1, '', '', '', '', '85268541437', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-02 07:20:09', NULL),
(1674, 'Hanan ', 'haa.aldossary@gmail.com', '0000-00-00 00:00:00', '25250dd8c0ef703a21d5d281ba1290154134e0d9b0dbd718f8c7464cd70af405:8bptX6nzC4qi7wxCIaNV6ck0w0fyXcaT:1', '', '', 1, '', '', '', '', '70761994', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-03 06:15:20', NULL),
(1675, 'marwa', 'meroomatar5522@gmail.com', '0000-00-00 00:00:00', '536b450b26b1f1afb84a435b413d7524be841dd1d6756f88f566e3b654a3a8da:ZCKavalLCc6uwmEa6w3tcDyfk6SuZohe:1', '', '', 1, '', '', '', '', '77288713', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-05 08:02:16', NULL),
(1676, 'Bashayer', 'bashayer121@gmail.com', '0000-00-00 00:00:00', 'ad57db1ec18caa6ff7affaebdcd9200cf12411005aff8e75f7ffe36d0e72ae89:VuoQnuHTqfeFlxy1pKk3vCHsDNl2DjxQ:1', '', '', 1, '', '', '', '', '66555286', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-05 11:34:39', NULL),
(1677, 'fa', 'aldulaimyfatma97@gmail.com', '0000-00-00 00:00:00', '428586f3caa1807e2d93c74e30a3133635ea819943ceccd3817e5c582cc37680:Dj9vnlwOCtqXgeDbQhwTQGSQKel1VjIX:1', '', '', 1, '', '', '', '', ' +97430779919', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-05 20:47:41', NULL),
(1678, 'isam', 'Dr.isammoghamis@gmail.com', '0000-00-00 00:00:00', '788af9b3515f684a6eb806599f8a67dbd8e2a32e2fb92926cce3cc60be13c300:FQoOBoWX0HOZx490MK2v0zLPcah8RicW:1', '', '', 1, '', '', '', '', ' +97466648150', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-06 11:19:42', NULL),
(1679, 'Tanzila', 'tanzila.n@hotmail.com', '0000-00-00 00:00:00', '3ee5ce59f0101917617b2a4d0080018806752647172267dcb018b9ef8adc1644:twTPSItE1tBT2nu5bCfV28FuRHY4cKU2:1', '', '', 1, '', '', '', '', '23319867', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-06 15:57:26', NULL),
(1680, 'RAGUVERMAN ', 'ragusri02@gmail.com', '0000-00-00 00:00:00', '07eaf48db4304e429f6e752c93a72986a1fa07d4d4a110546b11c3079691eaac:imc9UZznEp4iXXgm205B5FL6Y1cJPkmp:1', '', '', 1, '', '', '', '', '70650708', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-07 11:36:58', NULL),
(1681, 'umhamad', 'umhamad353@gmail.com', '0000-00-00 00:00:00', '9a50e4294acccb7fdb510ebae762bcf90b78a81fb963c1d962dd88811a5ee29a:fiNwJXCdfHJDKIQlzPDaVQK4vypnlJSJ:1', '', '', 1, '', '', '', '', '33661830', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-08 23:26:26', NULL),
(1682, 'dhilshan ', 'dhilshankalid07@gmail.com', '0000-00-00 00:00:00', '52bbbc0ed40b438b1e88f92099704944894abd925a92405d7c7f1f6f4fa9609b:DCII2XUrOa7AnxsqOSPoeFuM1G2x7SPb:1', '', '', 1, '', '', '', '', '506411419', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-09 05:03:28', NULL),
(1683, 'RaymondQuemi', 'perta1kqw@rambler.ru', '0000-00-00 00:00:00', 'f6f8b9a3ea8d0022d9fd85b9cca7658841d2fd75c3c1881bf445068200e79982:FJoB7ZyEqdXRFYbt94qe9jGYXEEhDMch:1', '', '', 1, '', '', '', '', '89594663767', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-09 10:24:29', NULL),
(1684, 'بثينة', 'buthaina_a@hotmail.com', '0000-00-00 00:00:00', '587fda6d457d496b64c9d60755f813514883093214e0608702a3203d1dc8bb8a:jUuAJwC8ui2u3RmBpYik8Qc13uDUSs9I:1', '', '', 1, '', '', '', '', '55474536', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-09 18:27:13', NULL),
(1685, 'Shatrudhan', 'shatrudhankumar700451@gmail.com', '0000-00-00 00:00:00', '1f8220f26b30ce2bf9ca8b696a1533b7cb8883af1c75915840aa65ef7cab2b70:UJ7SZvTSQx4w175EIiGVl0gjqs5kBJS4:1', '', '', 1, '', '', '', '', '9508395192', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-10 04:44:47', NULL),
(1686, 'Выплачено: AAAdakkaken.comBBB', 'gennadiy-sukhanov@mail.ru', '0000-00-00 00:00:00', 'd1a7ae71ed94dc28f205dc0217c49ae9de4b4836f8c24bf4fe24f17a40bdba26:2ae7IQh9kUp4ZGlM23DaAxNDOd7xBXnO:1', '', '', 1, '', '', '', '', '82472735375', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-10 23:37:47', NULL),
(1687, 'فهد', 'Ahmad@gmail.com', '0000-00-00 00:00:00', 'e8a80a1477d7155631467bfcf6dbc04ac7036cd7dc1a99db96faee60f794e411:PdHZjXyQvUK4DpLuc7R9OPXp5yzeZhh8:1', '', '', 1, '', '', '', '', '50717887', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-10 23:40:49', NULL),
(1688, 'WilliamFlism', 'catch@ayw.totozyn.com', '0000-00-00 00:00:00', '83727b73928db64a1c7624167b31f7c03ba3c2ce15dcc4c3137489e86d00c1b7:mDUc2UUfzOrO0PBE3WQY33pN9B9bgamB:1', '', '', 1, '', '', '', '', '81615831546', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-11 07:30:05', NULL),
(1689, 'ahmed', 'suuazmaz@gmail.com', '0000-00-00 00:00:00', '8a37cfafdf35b565e1b75caeb03ee637dc8d338807f54a0a7aa222ceb8595112:F33b7nxzK6LGbnEXeAHhzMQtVPHRsPQA:1', '', '', 1, '', '', '', '', ' +97336323344', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-11 14:28:31', NULL),
(1690, 'Deema', 'deemaalenazi13@gmail.com', '0000-00-00 00:00:00', '0b6f0834bdaf4adfa90e9e75cd7b623e77090c79cf36a5a18d6557dd5255607c:QGXGuRWv1xUeUtCy2RD99mT4iylGzBds:1', '', '', 1, '', '', '', '', '66773576', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-11 16:05:58', NULL),
(1691, 'theologos', 'theologosdeaf25@gmail.com', '0000-00-00 00:00:00', '85822f8813a1560698dee2c12e997ddf4612d1cf8cff7d403b1c04319eba8720:eBvi6tv7moWckJpuQMDmBx00HheRqxr9:1', '', '', 1, '', '', '', '', ' +35796263359', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-12 09:14:08', NULL),
(1692, 'Yash', 'khodbhayayash@gmail.com', '0000-00-00 00:00:00', 'f364760c0efb70a582e51da16043de1f24dd82b87d27f72a4cea502a4f74bded:mcBfFEaMPUmZMwDtqry58i2TNcX6JO4p:1', '', '', 1, '', '', '', '', '9909662596', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-14 02:38:36', NULL),
(1693, 'Alexandre', 'rpontesalexandre@gmail.com', '0000-00-00 00:00:00', 'fdb4d5ae8cf0c222361f7549e98f1df31c2e836cc52b882ec867a0dda453fe1e:mnmq67u2dG6jmUl12KUfVMYxN3xXSKBn:1', '', '', 1, '', '', '', '', '(+55)77998103404', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-14 03:23:16', NULL),
(1694, 'Refah', 'rfoo3alnarri88@gmail.com', '0000-00-00 00:00:00', 'dd893aed0abe6a456da70d86cd17fc718b8fbc6945370272542b95939b6be2a1:L3Qj7C6TqgSfL047EY8YGs94LegrTJps:1', '', '', 1, '', '', '', '', '55006611', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-14 11:46:19', NULL),
(1695, 'k', 'khlouodalhajri1@gmail.com', '0000-00-00 00:00:00', '562d054f3ec9c2c0d8f6a34e978115c7531b9fd06597c6cb8aed169cc2a57c71:LPs6fe9U9Ig0VZydegMIJA9ht2WHyCUH:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-14 14:10:25', NULL),
(1696, 'mayada', 'sweetmaya23@hotmail.com', '0000-00-00 00:00:00', '05b45805fe2f656e167a35096aa4958909aab8a3681305687e007299f9860a3d:TqLc9voE7WLtDDa4geeXZDJUWu6mlGAi:1', '', '', 1, '', '', '', '', '66420218', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-14 14:27:13', NULL),
(1697, 'ZAHRAA', 'zahraadarraji21@gmail.com', '0000-00-00 00:00:00', 'cc1f2d1a254517297c7901b2aa2fbc4371c2c4feca61107fb09b5145a72ee4f3:V7jdEu6bam373BtiMaxr3kR5xGAzxguc:1', '', '', 1, '', '', '', '', ' +9647704720767', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-14 15:53:25', NULL),
(1698, 'Zahraa', 'zahraa@aldarrajiholding.co.uk', '0000-00-00 00:00:00', '68f9878409c7777b9995fcc9784c6fe9fc2a4aa826b5944dd7d425e1ea965cf6:bSn12YPjjgSHwFLxxnQ9tSqiEoqWGWuH:1', '', '', 1, '', '', '', '', ' +9647704720767', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-14 16:20:10', NULL),
(1699, 'HowardEndus', 'perta2kqw@rambler.ru', '0000-00-00 00:00:00', 'f9e7bfc49a46d74cd30525bba2a66d18a33557a516e8723395df2c7e6930a108:B6kdQK3uivtTa5xo87ziBmNraPtQNZgC:1', '', '', 1, '', '', '', '', '87686228145', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-15 18:03:00', NULL),
(1700, 'Nina', 'ninamavropoulou@gmail.com', '0000-00-00 00:00:00', '34e836ccfe43ebcf784e6028a32208aeb5002637d4c488894f47a25e4f935ab4:Wds10fIJeThRQ4nBeYKWaaYZ9Qe7W6E7:1', '', '', 1, '', '', '', '', '66515013', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-17 00:34:13', NULL),
(1701, 'MARYAM', 'hope-key@hotmail.com', '0000-00-00 00:00:00', 'fa1bb7c5101dcf54f35ddcb3009fe55175a729bf37698b2a84b052e596526e0b:Ast4JZwTC9VNbuQspAH6ELDQ18B0p7Rx:1', '', '', 1, '', '', '', '', ' +97455649434', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-17 14:15:11', NULL),
(1702, 'xieyiceshi- www.dakkaken.com -xieyiceshi', 'langjiannh07829@163.com', '0000-00-00 00:00:00', '09808b66e1b25fb406c374dacf20dc472b05eb97876c7b13cd289eea05e52f1f:yaegoCb4VaD4zFXC8S6uPENK6eLtVbXY:1', '', '', 1, '', '', '', '', '90908989', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-20 07:36:50', NULL),
(1703, 'afra', 'ayguhjju@hotmail.com', '0000-00-00 00:00:00', '0bbde5767ba9c42490787c87dc6a9890505c3dc56eb7754c2b85103e413bfd52:POQj8SGgo66jOib9AhdZs533mPKDWm3f:1', '', '', 1, '', '', '', '', '66300632', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-23 19:26:55', NULL),
(1704, 'Hassan ', 'Halemadi94@gmail.com', '0000-00-00 00:00:00', 'c5118309a40c6af591ac0e0acc49ba528ecaff9d3edac1721737e753ae531584:55m7adhQis7tNnebBsZynfLiDF31YUb3:1', '', '', 1, '', '', '', '', '66870704', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-27 16:34:30', NULL),
(1705, 'HindiVideoCroky', 'ferdicarref@yandex.com', '0000-00-00 00:00:00', '9646f59fdc4cb208285a0937a9586fbea081300ee6fe1ab4908d946762c13c8e:5XZYKXxBWmiia7T27ReQDmPrrw6IFoNr:1', '', '', 1, '', '', '', '', '84473199846', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-28 04:18:18', NULL),
(1706, 'Varju', 'rick.unity.092@gmail.com', '0000-00-00 00:00:00', '3b8f038d306b2684002744dedde5ba0c6e718b67151fd1706aecf3e3f6911a1c:BiOSByB0aIT2zpY97DPIhxbAHHkY37bi:1', '', '', 1, '', '', '', '', ' +36706754639', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-28 22:51:04', NULL),
(1707, 'Gesille', 'gescaspe@yahoo.com', '0000-00-00 00:00:00', 'b414ac276c3b2bd93e93049e63495544895612e9776ce2a3384b15fe4e98a247:DxBXFYRgLSTrWQT951pVk3nxFk2erlVL:1', '', '', 1, '', '', '', '', '33597835', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-29 20:04:39', NULL),
(1708, 'bodoor ', 'alhiedoos@msn.com', '0000-00-00 00:00:00', 'f1dd098a8f646e5c13c050b3031e90bf6ff6d1a9d8f71ffa1e7a79c3cd13a63f:uIU4ksk0P7nBWjAPSH4bF0QralMLG4zR:1', '', '', 1, '', '', '', '', '74009900', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-07-31 19:27:51', NULL),
(1709, 'جواهر', 'j.m88@me.com', '0000-00-00 00:00:00', '5d19f4a46bc8a24828b947166fa1baba49c8fa1a89012cc549d6ebb95857844c:oaiOOnT50bhYraGtCnOLJeaS1NTP3aeK:1', '', '', 1, '', '', '', '', '66772666', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-01 14:24:31', NULL),
(1710, 'Maha', 'maha84@live.com', '0000-00-00 00:00:00', '45da0dfd41a6a5efda263d5958807365c819e8bf77e67799b88bbbc2540618fa:vzBGOgikBmTD4nb2zHKsfhNWU85gIVg6:1', '', '', 1, '', '', '', '', '30082112', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-01 15:35:50', NULL),
(1711, 'EMAN', 'eabuhuzaimah@gmail.com', '0000-00-00 00:00:00', '38c3c0fa310f3c9fa4107398ffee0e4e887171817e05652ffde2297cf7680c62:2D71LZpVPAo6pRLxno86jwq8vKv4m0vZ:1', '', '', 1, '', '', '', '', '55928754', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-03 17:04:39', NULL),
(1712, 'منيرة', 'mnayer0611@outlook.com', '0000-00-00 00:00:00', '4c27308e8df01feaf2fdad31271ddda7596a6bae178e9609ef6229e6cfb656ed:9rFpguoPVfNV2nhDfY4pA069PQqDL0CB:1', '', '', 1, '', '', '', '', '33006211', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-03 21:45:50', NULL),
(1713, 'hadeel', 'ha.abunahia@gmail.com', '0000-00-00 00:00:00', '06e888196f4b594fb52dd751d8ae97e77b5675a90e7d5983ced0b5da3b5038fa:jQ9piIlpsPeVXJZqs5NrG6BOuLr5svAR:1', '', '', 1, '', '', '', '', '33166701', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-04 17:56:22', NULL),
(1714, 'Madhan', 'madhanmgk@gmail.com', '0000-00-00 00:00:00', 'edb7cf84345657b8728249489fc581336f3778241fb8276abf219b02b2ec410c:rqYcIc0iCKb0WGzr0PnkiPkeO9PfAyCV:1', '', '', 1, '', '', '', '', ' +97470657375', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-05 05:00:14', NULL),
(1715, 'imane', 'neemsaid66@gmail.com', '0000-00-00 00:00:00', 'b60c03ecd5b18164472e122b964c78fb6359e105dc732d0a8f3721d1d76b3a03:CyUkp7WWf3WIC9sjlsJoEUbBaARIKUwj:1', '', '', 1, '', '', '', '', '33466626', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-08 17:30:44', NULL),
(1716, 'Ibrahim', 'ibrahimabokhaleefa@gmail.com', '0000-00-00 00:00:00', '267fbb751dd82ad0cd350e41133fea14f428f428950b4feab2808918df8481ee:OMskkpipp7IMjSPWo6TIzXR2QFHvugyA:1', '', '', 1, '', '', '', '', ' +4915734526475', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-05 20:45:34', NULL),
(1717, 'virat', 'viratsingh00780@gmail.com', '0000-00-00 00:00:00', 'bc56d40e7e1bce2f3b1a6346b4035e4a45ed516e594dc483ec33831ea714708a:3bvEj1TfY6pUFk7rMJh5nkcXmrT3wSYV:1', '', '', 1, '', '', '', '', ' +919407484138', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-06 16:44:50', NULL),
(1718, 'apara', 'suyonsuyon590@gmail.com', '0000-00-00 00:00:00', 'ee626ca629c04be014a9e427317b038a561db77371ff86a91ed530045eddcd13:G9EY4jL8PdiL7o1lzYELsKblFBxZlRDf:1', '', '', 1, '', '', '', '', ' +97455243630', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-06 18:23:16', NULL),
(1719, 'Rami', 'ramialkudmani@gmail.com', '0000-00-00 00:00:00', 'f268950c52fe4cd09586cb288105fb5a9c60683ce8528bfc035ede15e0be284e:l57QKokbBdi5rGuAwdusOtGPB17rJ9jr:1', '', '', 1, '', '', '', '', '33177415', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-06 23:31:46', NULL),
(1720, 'amal', 'amal.alhanawi@gmail.com', '0000-00-00 00:00:00', 'e430668b859dd8fe201001b33bdb2566ad5b7f665b81dc43bfc808eccb7aca91:73V5MrHiX1ZztYdplqXtqFm68GX7t2K6:1', '', '', 1, '', '', '', '', ' +97477340000', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-09 11:54:17', NULL),
(1721, 'jhair', 'jhaira451@gmail.com', '0000-00-00 00:00:00', '55abb94d69c6ec0f4957b7c57a43aa35864486214664b6a1ab61f2b540a47fbe:FZlM9dV4K1htWf4CRwLVbv5IRPvUSmZN:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-09 17:46:09', NULL),
(1722, 'Alexeyfen', 'admin@cristianoguardami.ru', '0000-00-00 00:00:00', '64de5131cfdd5f6fcb5f768ac50c83ee6021fb0ca30617e4929a12f6a2bf5c49:VKcYLKcioZNZkrbPaj0ieALTe031uiKk:1', '', '', 1, '', '', '', '', '87674831751', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-09 18:39:10', NULL),
(1723, 'Messias', 'msgojgt@gmail.com', '0000-00-00 00:00:00', '7a5d2929a9ad78cc837cc65942cb1b6c3e0ca13bb74239f1f2b02cbb750fdc81:wSrFgGKqNqdOeMlL6R7Fios6TK2ICAR8:1', '', '', 1, '', '', '', '', ' +5585992776940', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-10 01:08:12', NULL),
(1724, 'noor', 'n.al.mugheer@hotmail.com', '0000-00-00 00:00:00', 'd96fe252c022d0cf0afc8bfcc9fd68b2915b7cb37e7cb471b4db5ad43a1daa59:sAzTf0WhjKtDHNbsVQkV5ZcSyyqaR9gz:1', '', '', 1, '', '', '', '', '66235353', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-10 14:46:33', NULL),
(1725, 'samia', 'samiazaisha@gmail.com', '0000-00-00 00:00:00', '160256cd48ea87428d20ddf84b1d45be12aac00cf20f4a43a60c5e5394271a2e:oitqiaDWSb70qjIYeoBaRRSaHQixSBmA:1', '', '', 1, '', '', '', '', ' +97450088949', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-11 00:00:28', NULL),
(1726, 'RAJENDRA BEHERA', 'rk5084871@gmail.com', '0000-00-00 00:00:00', '3a67f7df1221ff443d885701caf1cc0a07bcbc7d2bcfab86293ea64672813c90:DbNA8qiBaYCvMnpwGgHEZwYGTkjORwlt:1', '', '', 1, '', '', '', '', ' +91 8260098860', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-11 00:05:09', NULL),
(1727, 'marwa', 'm.alasiri@live.com', '0000-00-00 00:00:00', '2e8636413d0dc7ac338824938b2d9e71d651dce3299f629a56a253fccbec494e:CBtNtcLtfFNbadzbegBGtqG7E6YTErG2:1', '', '', 1, '', '', '', '', ' +97450430388', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-11 12:55:14', NULL),
(1728, 'جاسم ', 'Jassim.1982@hotmail.com', '0000-00-00 00:00:00', '1a12ba08419e76771401f6b4cd0f0f31283889fdf587139754c87cd6a258aa0b:Sy75qo557YqWH4VfMWfZnw38UCVRDswk:1', '', '', 1, '', '', '', '', '55005774', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-13 10:10:35', NULL),
(1729, 'duha', 'duhaalajmi@outlook.com', '0000-00-00 00:00:00', 'eb01da2a3a708a67a00b7d3e68d1aafc38c5a9e0623ae424a5742c628afb8541:6b9TSWMl4277jzMvXBFMjkUxkvmcrFS6:1', '', '', 1, '', '', '', '', '50510050', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-14 13:59:59', NULL),
(1730, 'Deodilynne', 'deodilynne31@gmail.com', '0000-00-00 00:00:00', 'd55bf5eae1eb1cba14e80a91e85ed462c2486b63a8244c49c658399ae3a03551:OVIZfzAjPQOg7KIrSzgs80yG8YAj3EeC:1', '', '', 1, '', '', '', '', ' +97455211939', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-14 15:14:08', NULL),
(1731, 'Ahmed', 'ahmedsideeq@hotmail.com', '0000-00-00 00:00:00', '1566faaeca0814bce326c94b689c7088be60201bbd35ac8db15cac937be329ca:GTi3DPC9EA920MB57NL5fXdbqQidmmPb:1', '', '', 1, '', '', '', '', '55382995', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-15 04:36:19', NULL),
(1732, 'Abdul', 'abdul.haseeb.work@gmail.com', '0000-00-00 00:00:00', '1b961707cc057545d9a6a3e1f0a005efad0bb99a3b458b587b83fb5149173075:4tX0RAnz3BSigq6I1bKQyDPplKpJ8akF:1', '', '', 1, '', '', '', '', '66691169', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-15 05:04:08', NULL),
(1733, 'aisha', 'aishaabdulla171@gmail.com', '0000-00-00 00:00:00', 'ea36e0d8e1a74020bcb5063771f69c4b2ed34087804073ec5e3487b2298f4bec:e7l2csta8mWLasY4UHkKQtqEQhRfylgZ:1', '', '', 1, '', '', '', '', '33810974', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-15 05:43:23', NULL),
(1734, 'Alyanna', 'acstetangco@yahoo.com', '0000-00-00 00:00:00', '620c4ba0d17fd97877ecdedf3b1a14de6e179af0584b21cced89eadf18d40953:jkLDFTGOEHOl1ZWxvzrxWyFqcy78lCs4:1', '', '', 1, '', '', '', '', '50052249', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-15 12:46:58', NULL),
(1735, 'انفال ', 'Thikrayatt.19800@gmail.com', '0000-00-00 00:00:00', 'f417c841f534b1a4c881908abdcfff04e084e85da37fd60b62d9489cc776fa7b:zPhYIcH84PlrnN4NCFwZ5lidbEwvLUPM:1', '', '', 1, '', '', '', '', '66614718', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-16 00:23:39', NULL),
(1736, 'Keyner', 'krodriguezr@carlosmsimmonds.edu.co', '0000-00-00 00:00:00', 'c6665c66dd167d8e79bafd42f190a31bfbd269ec182b61eebc2dce934ea9813f:viGiwEmGblzOf2ZjgBsETXlb5YS8SK6s:1', '', '', 1, '', '', '', '', ' +57 3042972437', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-16 19:06:12', NULL),
(1737, 'Dana ', 'dana.safawi84@gmail.com', '0000-00-00 00:00:00', '46bc684098e70989c56b1809734857354a74c8b39dbe67fb425e040087e8ea8f:KOg3WgvhD24emgT877tn7hbmpsmMgLFL:1', '', '', 1, '', '', '', '', '66000254', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-17 10:36:49', NULL),
(1738, 'Umar', 'khanakram144@gmail.com', '0000-00-00 00:00:00', 'b08b938a2358fdb8b9bdf713fb85748f86db8089819638587e0205c9b6abc26d:udFRwM0nwYZ5BRANMG5JX6Ih5n3JBHhm:1', '', '', 1, '', '', '', '', ' +919110676826', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-18 19:47:23', NULL),
(1739, 'rayan', 'queenrayoo@icloud.com', '0000-00-00 00:00:00', '346ec958f2bd488d02e544fac628a7839b1f45bacfd76ca6b0173e4b9f181dfb:RZTrrWJjvUHAazfupbP4V1v0zuKdYO0j:1', '', '', 1, '', '', '', '', '55301486', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-19 07:16:34', NULL),
(1740, 'Malai', 'malai900366@gmail.com', '0000-00-00 00:00:00', '002ea2461dd8c0f5757db74a9fd07267f8487e0f842270e9631236b75120f579:pD7NubQLtm5Dlus4FpGH0eHERnNpsNdV:1', '', '', 1, '', '', '', '', ' +919003663260', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-20 04:51:55', NULL),
(1741, 'asmaa', 'asma.os88@gmail.Com', '0000-00-00 00:00:00', '6ebc71e2cade313504f9bc1ae1f44ff39e61f409a8d60b9730d478c32cc84716:A3P9knpnaNIUHBhzHzGImMYJjXX5mpaS:1', '', '', 1, '', '', '', '', '70550298', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-21 17:25:42', NULL),
(1742, 'Abdullah', 'albinaliabdullah77@gmail.com', '0000-00-00 00:00:00', '5ff1611eca776c214919e59bdfec6d042520c53bb8cb772f335cdf3f63d7b7a0:7pqidMmgAtbb67sUy0GY29Z8nY6oAF4c:1', '', '', 1, '', '', '', '', '66077330', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-21 17:38:06', NULL),
(1743, 'Zahya ', 'umzinab2011@gmail.com', '0000-00-00 00:00:00', '6637616ae062fbfa2cb118140732d9601a1e56d154276eb1b7cd34de92fe7989:3xJpsvzkuOs2Ec2eiT7h0mg9uY3xe1kr:1', '', '', 1, '', '', '', '', '55556795', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-28 11:10:25', NULL),
(1744, 'ayman', 'aymanakkad@hotmail.com', '0000-00-00 00:00:00', '0af12304b1ea8c2b77ef67e1c15dbebb7cf6a9ca9a3bd0efbb4aa85bc3984be7:jKHoWqflZNh6my1vfm6VtVOxVkoZvXFO:1', '', '', 1, '', '', '', '', '74001984', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-28 23:38:56', NULL),
(1745, 'Nikhil', 'nikroy1787@gmail.com', '0000-00-00 00:00:00', '8aad6daf82d6e38bf9bf2a4bd62d4b2254ad8251781aaa10e84bf1fbbc5cc334:clPNBL5TgJ5WgrbWsGoeyey67N9XuZMf:1', '', '', 1, '', '', '', '', '77419606', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-30 08:00:06', NULL),
(1746, 'Zohor', 'zgehani@gmail.com', '0000-00-00 00:00:00', 'fffe62a39f2b0bd9cb188bbb9e93cc15d9a001c3112577d0bf476de25d406b21:nLuknc6ZTXrW5dyaGz2BHQYfEBbn8ZrH:1', '', '', 1, '', '', '', '', '39922395', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-30 16:30:14', NULL),
(1747, 'مرتضى ', 'mlgandi2@gmail.com', '0000-00-00 00:00:00', 'e775a0c74a799f6726129c6eb969b45db25ec6916c278fe5596390c769afbd94:QIJh8GBVLldhuh77lhUGzFH5fYCSyPVb:1', '', '', 1, '', '', '', '', '55986053', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-30 16:40:22', NULL),
(1748, 'Maryam ', 'maryam-h-haji@hotmail.com', '0000-00-00 00:00:00', '1ce8721d2ff89a79ba85b7bef16928d16ee5bd85294b30a172f432db0599ca0c:TMjfTfOwNkcnE3rRsOgqjvtXiPm3Dpqz:1', '', '', 1, '', '', '', '', '55940400', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-08-30 19:32:35', NULL),
(1749, 'randa', 'randa.Adjroud@gmail.com', '0000-00-00 00:00:00', 'd456fca0c58b2951da2c5e49e3d7bbf379039be556b9b4cf632dd7e028441e89:RqEx46Xq4xWS5IdECwk3VEtFEGI4DigV:1', '', '', 1, '', '', '', '', '60096610', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-02 20:38:05', NULL),
(1750, 'Shannonvug', 'williebruip@softdisc.site', '0000-00-00 00:00:00', '588667c7f8f9edf12b3395ec317dd4a74d183e7e470239b65645c540063e58eb:Gwt3w6sEVPDSIN8WGBasKXIXh0PbN4SV:1', '', '', 1, '', '', '', '', '82975748232', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-03 07:49:10', NULL),
(1751, 'haya ', 'haalkubaisi8@icloud.com', '0000-00-00 00:00:00', '53c49e1ca793873b3f6e17072bbce95b15e2e537a9f98002d96269c0212a91f3:jYthbO4dMFeubJUJgYMyVk4VXq4vbsl9:1', '', '', 1, '', '', '', '', '31125252', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-03 15:45:15', NULL),
(1752, 'Huda', 'bentalksa@windowslive.com', '0000-00-00 00:00:00', '429df874ffff5e2030d5ace76b917f31475b94e5fa0179b4c370480dfa443b02:EOF1de7AM6Sl5dK3w2bcAHrNWkVnE5jC:1', '', '', 1, '', '', '', '', '66117630', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-04 19:44:30', NULL),
(1753, 'Nasser ', 'nas_ser.81@hotmail.com', '0000-00-00 00:00:00', 'be9c677189f9601f3956c1b17d52f3e0daf7aad6397828eb0ba9bf58b253e213:PImvXp77U61NN8LzLJEINVMSDrjzKcVR:1', '', '', 1, '', '', '', '', '55181888', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-04 21:21:26', NULL),
(1754, 'Kateryna', 'grinkovakata7@gmail.com', '0000-00-00 00:00:00', '275852735423d815a1bb97402179d0832a707d0056137275adfc4b07c0e32d73:qwSRgrqxh6C9AnGZEeZ7AqVllmxBBAqC:1', '', '', 1, '', '', '', '', ' +48723073219', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-06 16:56:21', NULL),
(1755, 'DavidInobe', 'gerrygarome736@gmail.com', '0000-00-00 00:00:00', 'bb477ed6d8994c51d3d5472a4e0795eea364df29ec75c742a7f94c5ef9669132:I8RYAvKc01OiIo6O0nh0FBY0g6VnmXW6:1', '', '', 1, '', '', '', '', '82241386373', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-10 07:19:20', NULL),
(1756, 'Robert', 'muriithir582@gmail.com', '0000-00-00 00:00:00', 'eb8787f45d7e70199ee34dc64938788afeb5d2d972b73bacb4de23d0153790aa:TpIWFwoSEUfsBWDw5UYj1sL06eVjZOLX:1', '', '', 1, '', '', '', '', '50109295', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-10 11:52:09', NULL),
(1757, 'daren', 'darenabajeto2@gmail.com', '0000-00-00 00:00:00', '03a5b06e2dd1e6fb539776d72c5eda1fa6de00a1ecd21ce8d8ea1bcd6d88f9eb:DotdICV373EqxNUh6qDEwPiwAPCsk05S:1', '', '', 1, '', '', '', '', ' +97433532231', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-11 18:15:32', NULL),
(1758, 'MARIA', 'yen.anicas@yahoo.com', '0000-00-00 00:00:00', '3f4ffcff3138dcf09b0308fcd593f9aba567395d0bd7ad2c4b3e975501032bbb:fjdqyOmYhD9wHkycPf36RRKvP2oClnnH:1', '', '', 1, '', '', '', '', '70727857', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-12 09:46:30', NULL),
(1759, 'Antoine', 'antoinezougheib@hotmail.com', '0000-00-00 00:00:00', '91e563fd3f5ca33d84f8c0ea8b89a08d254c394e6c12981d78b3ebb63e07bedf:EYQn6YRKFMnNo9X1yqRigfnzq4SsQXUl:1', '', '', 1, '', '', '', '', '66875814', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-12 14:14:42', NULL),
(1760, 'Ooushi', 'ehsaasountha502@gmail.com', '0000-00-00 00:00:00', '1a40c5a339057e869df6ac8baae113bbc2a3b9b77c16ec4b0b317970de051b0f:vZgHL7lLwaqTouyr1mhjfzSaVx9gTTvx:1', '', '', 1, '', '', '', '', '12345678', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-15 05:47:18', NULL),
(1761, 'Xmasterfut', 'abduzun2@yandex.com', '0000-00-00 00:00:00', '4991b32c1ddb57d5967ebb96427646ac1dba876e63b36b57c2fe79079d43f6db:UniMsi6KtmufrwJVXSAzQTVBXH2gG0H8:1', '', '', 1, '', '', '', '', '81299554837', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-13 03:46:47', NULL),
(1762, 'sumaya ', 'aljoore_333@hotmail.com', '0000-00-00 00:00:00', 'cd5448f39d8a7c1d50a43ecf6b0f7bf2df28524d8aa32ebc10605722ef82cf0b:qv0oBug3RrnjEiyZ2juwGdpz4kpf19sh:1', '', '', 1, '', '', '', '', '0508135513', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-15 03:47:54', NULL),
(1763, 'Mohamed', 'Enghamadooooo@yahoo.com', '0000-00-00 00:00:00', '043df79c135550a8fde71a016a3be4c406b3e1707b7be3e7c228466796418c40:am4KMtsC5Zih1Jn64duBoZIcVBnjFwIn:1', '', '', 1, '', '', '', '', ' +97470408001', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-15 05:15:49', NULL),
(1764, 'muna', 'twofriendgaming044@gmail.com', '0000-00-00 00:00:00', 'afd42607c4fa7f0635abfabc18c090d286234cd0be59668d08284a28a0e87d64:4hD3w3IXZ6XFyYuWUnPkU1EPxhQDVV4b:1', '', '', 1, '', '', '', '', ' +918260707543', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-15 15:59:08', NULL),
(1765, 'Khalid', 'khalidpatel750650@gmail.com', '0000-00-00 00:00:00', '79d79d77164d1f2c42a1b49122baeace44c340aee0c7ec67f1fcc0b26aafe5dd:2WtzuvtuhM9R01JYs7C87skfcxEHac9l:1', '', '', 1, '', '', '', '', ' +917842750650', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-16 00:44:18', NULL),
(1766, 'Ellie', 'elliepilot21@gmail.com', '0000-00-00 00:00:00', '562261e11897237f0e1ff4e8e6b59935c3c2a91acfab5314e9da9966c3c25b86:6NtuhlTZxDnYglMfCXS8GmDg3dBkqLll:1', '', '', 1, '', '', '', '', '66944006', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-16 19:41:05', NULL),
(1767, 'Mohammed', 'almasadc@gmail.com', '0000-00-00 00:00:00', '628954763552f7c67ad18283aef64920d35470623f23fe79ca59c32215dc7785:vpLX24rTTlLf51dtpr7WQh6ZGAkdroyB:1', '', '', 1, '', '', '', '', '77547913', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-19 08:17:43', NULL),
(1768, 'Warsawnus', 'dosugasia@yandex.com', '0000-00-00 00:00:00', '85986566b0f6ed4706c5e926a7dc7a9d80cb1dcbea80d7cdc1d1763c42f89f63:gZGc0wUObxkZcwgrD4jQMF5EYX53yPur:1', '', '', 1, '', '', '', '', '86744921347', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-18 23:30:53', NULL),
(1769, 'Dr Gaffar', 'mgaffarali@gmail.com', '0000-00-00 00:00:00', 'f59e217fbe315c48e635a5131ff3f846054b45beac42f0ea0ee2eea84d95cc3e:O5i28SEw2RUIjXq4G6lo6JBT03yq1qps:1', '', '', 1, '', '', '', '', '55900153', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-20 05:23:49', NULL),
(1770, 'Fareeha', 'fareehaimtiaz21@gmail.com', '0000-00-00 00:00:00', '4f984059aab535be27c3fb4a21b02120315a023c9ec1f51e3758b506d103c914:L5VtMJaClh4vzjp3lpeTPZuOtSds5MrV:1', '', '', 1, '', '', '', '', ' +974 5502 6327', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-23 10:59:55', NULL),
(1771, 'Sarah ', 'namanysarah95@gmail.com', '0000-00-00 00:00:00', '66b9dc4bb4d646b9d1816ce7c2454012369d01f7e878da3ad29249a3d2351ac8:PdeyUn7vQsCRhN1EwArz778Y0una6jkh:1', '', '', 1, '', '', '', '', '55795449', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-24 07:41:09', NULL),
(1772, 'IndianTib', 'ali.nacit@yandex.com', '0000-00-00 00:00:00', '01f2d2194efc9d9a4e0503aacf445f5036817577dec511fce9a1ce476d25bdc2:y3CxmjVjp1KGnWVz9cS1P0yZYhbuHQn0:1', '', '', 1, '', '', '', '', '89534276233', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-25 04:42:10', NULL),
(1773, 'Maribel', 'maricetimo07@gmail.com', '0000-00-00 00:00:00', '24824bd5793d29d64b5e562ceb6cd9c409687001121592fd579a0e61c7ddb10c:J41VCYUyv2fYo7cBoD3UoRwHb7jXCRss:1', '', '', 1, '', '', '', '', ' +5218129155921', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-25 05:15:10', NULL),
(1774, 'Isaque', 'isaquearaujo2520@gmail.com', '0000-00-00 00:00:00', '735a13c8324ef857d482426bebd548f18bd364a0a5bc0c99bffbf7309ef5d066:mKQfHpEuAN1ow2ZidxwfSLeVRfI2TT32:1', '', '', 1, '', '', '', '', ' +5573998610074', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-25 20:09:19', NULL),
(1775, 'منى', 'anoodel9eed2010@hotmail.com', '0000-00-00 00:00:00', 'e8747cd71cc5c74329543a7e710fd07023ebd01dd69377214faddd201bd89894:oqGaLYkzXIcde4Qodhcl61c1jYTLxomM:1', '', '', 1, '', '', '', '', '٣١٥٣٨٥٠٨', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-28 03:42:57', NULL),
(1776, 'Henzelleme', 'elcumredis@mojenewsy.com.pl', '0000-00-00 00:00:00', '27cf47713ee38cbe5f9021400d287b923a7b4e9f97d3e5773961bcad4a12a424:uf1uilydL1bH8exgXSL8IzrVT65N2Aqf:1', '', '', 1, '', '', '', '', '83431461114', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-28 16:08:50', NULL),
(1777, 'Eddielot', 'xuoozhV9uWVT@softdisc.site', '0000-00-00 00:00:00', '343cd48a98f233ab88da7fe197faefb2ba7e9b76b26c08751d801bb5a36eb091:Y3mk4asp9Rs7v2Pqb55ZSPPKQ6pKRGwy:1', '', '', 1, '', '', '', '', '87422999365', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-29 09:04:52', NULL),
(1778, 'hrhrthrt', 'dodevap396@canyona.com', '0000-00-00 00:00:00', '50165732356c0c6cb389d04531cf6915d02d5fce3b8d9a9ff3b766ea30b864fa:0hSxnWZNaHwJVglix5RAtBkQtERDymcA:1', '', '', 1, '', '', '', '', '628962114876', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-29 11:23:49', NULL),
(1779, 'Alanoud', 'arrubaiei@gmail.com', '0000-00-00 00:00:00', '384907f744820c1294c0d1b4e46f7a3c73f9c2671f5c13136f7be6d56c510142:bMixSzY7qMoDPrhQOq8APTSX5ut7PQ3y:1', '', '', 1, '', '', '', '', ' +97455509459', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-09-29 13:16:03', NULL),
(1780, 'Jailyn', 'jailyncabugao@yahoo.com', '0000-00-00 00:00:00', '94d85bebc024993ec0be35e364aa54615c8e81beb276079f85653469b17d099f:hbevKFD0tfgLYtQoaxv2UOjIYtrnVvc7:1', '', '', 1, '', '', '', '', ' +97450071215', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-01 19:53:36', NULL),
(1781, 'Famela', 'fmbe0421@gmail.com', '0000-00-00 00:00:00', '0bc37ccd316adc3644b199a030c2992b14dae8bff0a1d65ed138c0fcc96fa500:XwXg2fNX87xNgGKl2jKUFGAr1ADjQdUz:1', '', '', 1, '', '', '', '', '55765881', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-02 03:59:03', NULL),
(1782, 'salih', 'salihiqbal007@gmail.com', '0000-00-00 00:00:00', '5390e8d91aea179f0cb684775c793cf77d3ff087d3be0a9f848a555d330e42ef:Dwl1s78YEjpk9BBYx14IXURimJirmmup:1', '', '', 1, '', '', '', '', '50620105', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-02 07:50:29', NULL),
(1783, 'Rami', 'ramishamiah@hotmail.com', '0000-00-00 00:00:00', '627504824bc24f1ab1929141e9c12117c6dde9432b936e4a7957d51b3e1fb46e:qvKERql4VeO1sUoXcLfdeQAX9WMsGj7w:1', '', '', 1, '', '', '', '', '0097433147215', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-03 18:16:56', NULL),
(1784, 'Reem', 'raljanahi600@gmail.com', '0000-00-00 00:00:00', '9581a14d842e0b2bc7f7fc5b0e56ed8a9c73d0f3747c95b1097f934e497b71f5:OfQB41CO6y3k4YZVJqmZDQHRhlpbCRP0:1', '', '', 1, '', '', '', '', '0097455197600', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-04 12:58:22', NULL),
(1785, 'Lucapbulse', 'eric3927@outlook.com', '0000-00-00 00:00:00', 'b4081057caeadffaa307cd5872248f2c3d74581b7e7834676b989867e08320da:7jbkzP3s6EV8hY4YRMN3171epgsBI9cD:1', '', '', 1, '', '', '', '', '89156268364', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-04 13:52:59', NULL),
(1786, 'abdelrhman', 'aboody.mix@gmail.com', '0000-00-00 00:00:00', '4ccd570946b84a0732943b87a613bf8878c7a6b133a0aad98f2481eae3b166ba:iE5UkziferHbBOey44QAjBCxIKswQbMV:1', '', '', 1, '', '', '', '', ' +97466281006', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-05 22:20:03', NULL),
(1787, 'Yacine', 'kaid.med031@gmail.com', '0000-00-00 00:00:00', 'dd151908ecb8d2e538ac24e68f352075de286c2a602df55080c55318113a57b3:LGG6NgcSFm1KBNgaSXMIcMBFAxddoOHz:1', '', '', 1, '', '', '', '', ' +97433103585', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-05 22:58:59', NULL),
(1788, 'fatima', 'princess.toomy25@gmail.com', '0000-00-00 00:00:00', 'e05939139c7cacda8ad57f247caf755e24a2fbb3710e806cd632433eea67d217:fV1swynXGZED8nt5gCQZOukt4jDCCTuJ:1', '', '', 1, '', '', '', '', '66978862', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-06 23:15:22', NULL),
(1789, 'CHRISTOS', 'cvaitsis@gmail.com', '0000-00-00 00:00:00', '3a4bf4cbb3a3d5760dcaacc9ecf9ffff86d1a6ce77ec78e87910a14dc6118255:zlnN3Bx0731iWOOAF2rT0koQHdTo59mX:1', '', '', 1, '', '', '', '', ' +97450638088', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-08 07:35:42', NULL),
(1790, 'Chan', 'monitor5tony@gmail.com', '0000-00-00 00:00:00', '5b192bd0f8fadf94613fc502e304b405158ec3f4f282ba8dabec98f443d9e3a9:OvvOj2HhTE7wt7YpHAOmVCQHrMin5gaP:1', '', '', 1, '', '', '', '', '98865565', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-08 14:53:06', NULL),
(1791, 'Khady', 'dijamadou@gmail.com', '0000-00-00 00:00:00', '7101ff33168b7cea1dd7e2e8409ef31e3182a3b659301c30c7b598a957b90114:LZyZa1Trfzomd5lL4MLLdBZWsH0ZSTQP:1', '', '', 1, '', '', '', '', '19292287686', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-08 17:00:48', NULL),
(1792, 'ShanteMal', 'filya_borisov_81@autorambler.ru', '0000-00-00 00:00:00', 'f60e229967608a05acea3485d6462947f3cde71a4c255779df328307b8545120:ugV5m0bcY9lb3lbIdUvKoBlnAcU5DwS4:1', '', '', 1, '', '', '', '', '84844474937', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-09 09:59:32', NULL),
(1793, 'Madushani ', 'madhu.madawanarachi@gmail.com', '0000-00-00 00:00:00', '4d7c03d9dee00fa116db515b35208e2dcbf26fbf17e40e6d7e0fdf57e7d2f9a9:fGLU9nJ6obJLacZp4s1EZHWmHUmfYpta:1', '', '', 1, '', '', '', '', '70026855', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-09 16:27:13', NULL),
(1794, 'Govind', 'govindku328@gmail.com', '0000-00-00 00:00:00', 'e1d7972c359dcf7f8e759c7ceab7f20358deaa86c8e288927c62085e31c6d710:HxxOL1xd3N4HoYN8kTjf5mz9nNh0WuTV:1', '', '', 1, '', '', '', '', ' +916388922443', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-10 12:05:23', NULL),
(1795, 'Amina', 'amina.ali.aljaber@gmail.com', '0000-00-00 00:00:00', 'b49c0e2b3e024f198a62f72671a17bf19740c03633cf03af29c0d5219fd97198:ExF9fTXdr0PLt1sXiH1NlzLMK7ACnUdG:1', '', '', 1, '', '', '', '', ' +97455870595', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-11 19:03:41', NULL),
(1796, 'Elmer1444fem', 'rey.mccar@mail.com', '0000-00-00 00:00:00', 'c79cd9c5a3a779b0d3c3e7e2905f11b6f63eb1c6a9a9400c269cc597e142c0af:GthsgRyClhf3FkOJAYeT5MJXkxomNcrh:1', '', '', 1, '', '', '', '', '84519475528', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-13 15:25:02', NULL),
(1797, 'raza', 'rajathorve23@gmail.com', '0000-00-00 00:00:00', 'f1f5ca8cd1d86f42851f7aab4f805c2c1ede2361aa8f4fac73a1c72be7930891:aQzR3Xc2NTOXTJWbKSY3hb2Jfef19gvT:1', '', '', 1, '', '', '', '', ' +97431086691', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-14 08:48:17', NULL),
(1798, 'Suhaib', 'suhaibelnair@gmail.com', '0000-00-00 00:00:00', '8c14d4175f49500925e87512c0a7d45aca058095b5ee602f78c379278863533e:KDygQQp5FKFkCybmP41xXys6xYcl4GLX:1', '', '', 1, '', '', '', '', '70094343', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-14 14:32:25', NULL),
(1799, 'العنود', 'melove112009@hotmail.com', '0000-00-00 00:00:00', '10b8f01f112d442e3f6eea805c2c04417a8b957977c519a28db5425bb54e553d:yOac7xDcec6CVvfr2zOIg3gS8803rzD9:1', '', '', 1, '', '', '', '', '66288465', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-14 15:30:51', NULL),
(1800, 'datafastproxiespx01', 'datafastpx@gmail.com', '0000-00-00 00:00:00', 'ff71b483e215b8d3b395f69fd33c9f2e0c47ebfe5a4a7c81c96bc5e3bd995a4a:cNcVjqaFOM9kiwflAeSoCQmFfjTOAwxp:1', '', '', 1, '', '', '', '', '84411298392', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-14 15:56:15', NULL),
(1801, 'Ratnesh Kumar', 'rktech81994@gmail.com', '0000-00-00 00:00:00', 'e2ac87ebf6410e05c8330960fb1eb4d7992a874ea05682d9adcbba2a287f951a:ipnENK3ajPaBAWVC6D8uLQcLzw0w1bUJ:1', '', '', 1, '', '', '', '', '70203180', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-15 18:23:29', NULL),
(1802, 'leegeo', 'leegeothefalcon@gmail.com', '0000-00-00 00:00:00', '3543e36e9091aed333f973f3cc75df162311a6390c5fe7edee6b6109fd8939e2:uOYHXxVAV6pAAYVFZM7RAUVLWKGPi4zp:1', '', '', 1, '', '', '', '', '70148787', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-16 04:18:11', NULL),
(1803, 'Muhamed', 'muhamedibnas@gmail.com', '0000-00-00 00:00:00', 'eb493b28078c497da47dae7e78d9f30e1d6e91fef5b72a168b86643a82bb259e:HlBBTWyxqeeUZXCYbIjG2Uov9pJio3nw:1', '', '', 1, '', '', '', '', ' +97431149176', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-16 10:11:22', NULL),
(1804, 'marie', 'mariearielchua@gmail.com', '0000-00-00 00:00:00', '95d5ffb6d96ce3a5c31d065fb7920d36d17247238de81f6b64f9c548469940d6:UvLOSVs8kYdXYwKyfPnhFiRtGyArTBWO:1', '', '', 1, '', '', '', '', ' +97455299512', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-16 22:23:33', NULL),
(1805, 'Mohammed Faizan', 'mfawaheed1808@gmail.com', '0000-00-00 00:00:00', '7bbb2e4ad4ec40a54d143a85edab306248e0500a94ee2646e873972c768166d4:bCUj2op7tUFE09jdZEBKB8w9gBuSN47t:1', '', '', 1, '', '', '', '', ' +97470742696', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-18 20:01:48', NULL),
(1806, 'Reina Marie', 'rein_lepardo@yahoo.com', '0000-00-00 00:00:00', 'ddf0c1cf5f09996836b1b06d4c892a9fabc9b3c6203255abceedf3ae9df6b558:Xe0g2Wk3niVoOaXWbLIfYLzMOSrnTbFd:1', '', '', 1, '', '', '', '', '33601309', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-19 04:43:06', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(1807, 'Jasmin', 'jasminpalanca@gmail.com', '0000-00-00 00:00:00', 'b9a818748e144c914e481e71749fd9cb08a0fe3ef42b2cb71aba763c950c8677:B9SwOfzgvNPM8oM4h9OBONfvMxaFl42K:1', '', '', 1, '', '', '', '', '50757039', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-20 08:26:34', NULL),
(1808, 'April', '842739425@qq.com', '0000-00-00 00:00:00', '4a46dd3448d1f6a5736d024eb07a769e23ec299505cd352f4694a745456b4b8f:AUO9rCTJzmF3ZwtkIZ5bmQwY1hYwieRd:1', '', '', 1, '', '', '', '', '30914335', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-22 23:00:24', NULL),
(1809, 'Mashail', 'mashailjolo@icloud.com', '0000-00-00 00:00:00', '96c91419ad9bc7469a4fdbef611c49c5143b07e38b67998b782e65feb65c3f4c:CzKpGvLLZJtoDZxXS8A4l2tm6KksFtGc:1', '', '', 1, '', '', '', '', '66888906', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-23 06:04:55', NULL),
(1810, 'Eddielot', 'tEuSfuSNZy1x@softdisc.site', '0000-00-00 00:00:00', '5480c222f59015e57d888fefaa0a3dd55d13ae8f07e7bb14e43e3850c6c5d19b:Gs3Q1o9Y9qUIicDUxgwfy7F9arT2gydt:1', '', '', 1, '', '', '', '', '83157986837', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-23 21:33:57', NULL),
(1811, 'Oday', 'oday.elayan@yahoo.com', '0000-00-00 00:00:00', '491a8d0655f1c22d780211993bdaaeb71deb663f6c40973efa1a733c065a9e1d:uPAlKrqxXmUazR5uwfk5N3A41CrdTXvg:1', '', '', 1, '', '', '', '', '30878732', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-24 07:34:10', NULL),
(1812, 'YASMEEN', 'yasmeen@albatateel.com', '0000-00-00 00:00:00', 'fde55c9cdeb8cd9e9ed625f1088fd4edb6b969e1f47092dac755c4ea4adcc734:JePmpUHsZ65JMUvKUODo4qFmc4dGPbqI:1', '', '', 1, '', '', '', '', '55272346', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-25 08:13:01', NULL),
(1813, 'mohamed', 'm.salah.elbaz@gmail.com', '0000-00-00 00:00:00', '75d8a4f3d47f04e527b3c581a1110c5e741e7ff12dfab67e34c9b1935fbb6c9b:S4nU6Hkkx3R23vLRPLuecQJB1fEv5W19:1', '', '', 1, '', '', '', '', '55162574', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-26 21:43:15', NULL),
(1814, 'Danette', 'danette430@gmail.com', '0000-00-00 00:00:00', '305ed5085a800c3bba146c955675d2a730f74d89b81956c5e2e6db1745a944a7:kkInNEtuLszbS7TY2QNIifomgxJBd0AM:1', '', '', 1, '', '', '', '', '787-505-3340 ', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-27 00:47:51', NULL),
(1815, 'lubna', 'lubnamun99@gmail.com', '0000-00-00 00:00:00', '8a1e4bf0b10972584aa6c9bc4e6b9653adbbe51ab1b898be1c200c1b85453ff1:RQmPKEgIccALcdOj5BPgM9nUt9ZjqgRk:1', '', '', 1, '', '', '', '', '31098751', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-27 13:14:39', NULL),
(1816, 'bo', 'qtr66312@gmail.com', '0000-00-00 00:00:00', '5c4a8d03ed449f2e0ae7d5597f0efc17a7beed913b69f7a34214d772ee3667b4:ombAGcFcFpcJfM8torgFtCzKBkEHu2UB:1', '', '', 1, '', '', '', '', '77222920', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-28 12:05:03', NULL),
(1817, 'm', 'r_qatar55@hotmail.com', '0000-00-00 00:00:00', '58bc34c9f3123395c477f2b66f93e7d2eb4625f40ff37373c3abbc93a34203b5:OqJACbDPY5OUTeR1EzyfdYtNqfomdolw:1', '', '', 1, '', '', '', '', '77127300', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-28 13:59:14', NULL),
(1818, 'maximllsr', 'm.a.xim.got.o.ste.i.ne.r.w.i.lli.y.a.m.4636@gmail.com', '0000-00-00 00:00:00', 'd22b186595880b6ebd0e39fd4ba25de04c31b0c28e8f2fbfed200ec69bca1fcf:UAtDRnHaayaoGvphgJ8r8bOAgiq9T95Q:1', '', '', 1, '', '', '', '', '83418835942', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-31 12:23:54', NULL),
(1819, 'alia', 'alia.alsada2307@gmail.com', '0000-00-00 00:00:00', '91fea6493e90a81c7b50d1965a0a3f0cf2a36d92718cef3b3461fb83cfea7b3a:CTQDKO7mVATRo0lthtAJmdJBNDzggBAc:1', '', '', 1, '', '', '', '', '74714144', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-31 14:14:23', NULL),
(1820, 'gaelle', 'gaelle.i.khourryy@gmail.com', '0000-00-00 00:00:00', 'e70043e8e89b49bb4d607dab526839b395b2570c9150f366496b3e9b55000771:VEnBfyXXMHVQe3kmGvbz2t94kLl4Xu3L:1', '', '', 1, '', '', '', '', '78907908', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-10-31 15:53:17', NULL),
(1821, 'rasha', 'r.alamoooodi@gmail.com', '0000-00-00 00:00:00', '284a6cec9bda940d5bb9d07f581de7eff57fe1dfb10dc34c90d32ffbeafd5fbb:egw7SRb2rrLCUPWxJ7KOBjBJjCAE1q7j:1', '', '', 1, '', '', '', '', '55561744', 21, 19, 0, '', '', 0, '1', 1, 2022, '2022-11-01 11:14:14', NULL),
(1822, 'Autumn Decker Dean', 'jipof28122@orlydns.com', NULL, '$2y$10$B3aOUPcMKFQUKR9af/taSei07iAEaiT2TaaWaofuM4cMuspsIffH.', 'Ou5C4kwC0iMZ7K2nAP7m2mZulHnXvIhz5j3VAaWNxboVpCbwFcUVPpPP8DXX', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 05:33:41', '2022-09-21 05:39:16'),
(1823, 's s', 'marohman74@gmail.com', NULL, '$2y$10$fLfrcsXAEO4Ppl.RzHEj2ObbdSBKKgy8XC3kPDIjE/Fqp.yRnCqea', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/s-s-2022-09-22-10-19-00-8064.jpg', '+881682825123', 0, 0, 0, NULL, 'qww', 0, NULL, 1, 1, '2022-09-21 05:40:21', '2022-09-22 04:19:00'),
(1824, 'nayeem', 'mrnayeem75@gmail.com', NULL, '$2y$10$97EjXmtnALzk8asIK7c92exVWTjNqiVZY0i63WLgTpiltIxcej66a', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/nayeem-2022-09-21-10-02-25-6264.jpg', '+88123456789', 4, 7, 10, NULL, 'catsle', 0, NULL, 1, 1, '2022-09-21 06:48:34', '2022-09-21 16:02:25'),
(1825, 'Amaya Hendrix', 'hijigov511@pahed.com', NULL, '$2y$10$slQDXnVvhpogMQB3OyqAeeIEBYNCS7pwN8rVHlYsSDv/nA3tIhEDu', '79HU6m46aLjWK3lR8MhLPqXJFwskcBHuHSu3KvLp2wQGQjZVLNxvck2gCHs6', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 07:08:27', '2022-09-21 07:08:48'),
(1826, 'Harding Rosa', 'fegig12897@ploneix.com', NULL, '$2y$10$.Z7BHjmwrhswRQA1/SDRUubKwZDTtFU8GK9ZGbkxprsMCDWBycSXC', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 07:11:54', '2022-09-21 07:12:14'),
(1827, 'Nasim Horne', 'wokij22557@geekjun.com', NULL, '$2y$10$fSYHi6.oqhxsPYKZA1aASOA3YbujGYabkkoE/w/G3kKBoSRqzO2TG', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 07:17:37', '2022-09-21 07:18:01'),
(1828, 'Xaviera Barnes', 'rokayo4006@pahed.com', NULL, '$2y$10$W0ffeYoOKWHml0SiziQ7uuB0WjbSkf3hbNuuwwmNi5ZFxD/ybSD4W', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 07:21:41', '2022-09-21 07:22:03'),
(1829, 'Kelsey Conrad', 'tofor67338@geekjun.com', NULL, '$2y$10$LZJN3KNzoF6wZFyO0AvaYeyKnf7j51qGfjFWIj5nfq5czpVnCSWaa', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 07:26:08', '2022-09-21 07:27:50'),
(1831, 'Moses Haynes Short', 'cacixi5247@corylan.com', NULL, '$2y$10$SjifGqNkcVvFPhQuDFe8iebZ1KGkDpsRywLbCc3.mGA2rfp.3lO0.', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-10-27 08:33:02', '2022-10-27 08:33:14'),
(1832, 'Abdur1 Rohman1', 'facik91345@pahed.com', NULL, '$2y$10$1fb1W./8xpgma9gJo/nGIu8eGxqoULkt8cKsCBLBcZwQJ/yS81/sW', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '973589', 0, 1, '2022-09-20 10:04:42', '2022-09-20 10:04:42'),
(1833, 'John Do', 'meyaj42636@pahed.com', NULL, '$2y$10$PCusAOjlo72nk4dfE9mJl.AQ/i9BBjczfwYqhRxtudDGQzoV4U2Ki', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '846418', 0, 1, '2022-09-21 05:25:34', '2022-09-21 05:25:34'),
(1834, 'John Do', 'piway67338@geekjun.com', NULL, '$2y$10$MWP/Jt4d1Sz0U6NrOPZcSutWhIuAb3eeV4Erw82YP7ja32Qjl8LQC', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '191269', 0, 1, '2022-09-21 05:26:32', '2022-09-21 05:26:32'),
(1835, 'Kelsey Conrad', 'Habbriyi', NULL, '$2y$10$6mUC3rwW9E42jqilivcw0unRzFcE/BK/6a8GbxpQXF8GIe1Gd8VVW', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '604590', 0, 1, '2022-09-21 07:24:58', '2022-09-21 07:24:58'),
(1836, 'john', 'abc@mail.com', NULL, '$2y$10$zY5XNem0/1OYs1mIVntBy.yWtqpqsVIquQSqYw1ZSSIjRRcHGYHjG', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '236985', 0, 1, '2022-11-01 23:19:43', '2022-11-01 23:19:43'),
(18230, 'Mamun', 'itsmemamun1@gmail.com', NULL, '$2y$10$RRDT3Q0R80k65SX7H2uDyOVS.cvwOu46Z9MlveGfOGKGh3NnEPbXm', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/mamun-2022-09-22-04-59-16-4997.jpg', '+881303527300', 4, 7, NULL, NULL, 'hskaha', 0, NULL, 1, 1, '2022-09-22 05:04:53', '2022-09-22 10:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `total_amount` double NOT NULL DEFAULT '0',
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `is_featured` int NOT NULL DEFAULT '0',
  `top_rated` int NOT NULL DEFAULT '0',
  `verified_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int NOT NULL DEFAULT '0',
  `greeting_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `total_amount`, `banner_image`, `logo`, `phone`, `email`, `shop_name`, `slug`, `open_at`, `closed_at`, `address`, `seo_title`, `seo_description`, `status`, `is_featured`, `top_rated`, `verified_token`, `is_verified`, `greeting_msg`, `created_at`, `updated_at`) VALUES
(1, 4, 0, 'uploads/custom-images/seller-banner-2022-09-21-11-58-14-6681.png', 'uploads/custom-images/seller-logo-2022-09-21-11-58-14-9795.png', '01792166627', 'jipof28122@orlydns.com', 'Shopno BD', 'shopno-bd', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Shopno BD', 'Shopno BD', 1, 0, 0, NULL, 0, 'Welcome to Shopno BD', '2022-09-21 05:58:14', '2022-09-21 05:58:32'),
(2, 7, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-10-12-1265.png', 'uploads/custom-images/seller-logo-2022-09-21-01-10-12-2682.png', '01792166627', 'hijigov511@pahed.com', 'Eecoms Shop', 'eecoms-shop', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Eecoms Shop', 'Eecoms Shop', 1, 0, 0, NULL, 0, 'Welcome to Eecoms Shop', '2022-09-21 07:10:12', '2022-09-21 07:10:21'),
(3, 8, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-16-13-9611.png', 'uploads/custom-images/seller-logo-2022-09-21-01-16-13-5847.png', '01792166627', 'fegig12897@ploneix.com', 'Fusion X', 'fusion-x', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Fusion X', 'Fusion X', 1, 0, 0, NULL, 0, 'Welcome to Fusion X', '2022-09-21 07:16:13', '2022-09-21 07:16:18'),
(4, 9, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-19-19-5022.png', 'uploads/custom-images/seller-logo-2022-09-21-01-19-19-3916.png', '01792166627', 'wokij22557@geekjun.com', 'Rikayi Rox', 'rikayi-rox', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Rikayi Rox', 'Rikayi Rox', 1, 0, 0, NULL, 0, 'Welcome to Rikayi Rox', '2022-09-21 07:19:19', '2022-09-21 07:19:24'),
(5, 10, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-22-55-5481.png', 'uploads/custom-images/seller-logo-2022-09-21-01-22-55-6660.png', '01792166627', 'rokayo4006@pahed.com', 'Habbriyi', 'habbriyi', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Habbriyi', 'Habbriyi', 1, 0, 0, NULL, 0, 'Welcome to Habbriyi', '2022-09-21 07:22:55', '2022-09-21 07:23:06'),
(6, 12, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-30-45-9893.png', 'uploads/custom-images/seller-logo-2022-09-21-01-30-46-9044.png', '01792166627', 'tofor67338@geekjun.com', 'Rayhans', 'rayhans', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Rayhans', 'Rayhans', 1, 0, 0, NULL, 0, 'Welcome to Rayhans', '2022-09-21 07:30:46', '2022-09-21 07:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_social_links`
--

CREATE TABLE `vendor_social_links` (
  `id` bigint UNSIGNED NOT NULL,
  `vendor_id` int NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 5, 4, '2022-09-21 17:31:07', '2022-09-21 17:31:07'),
(9, 13, 34, '2022-09-25 17:08:45', '2022-09-25 17:08:45'),
(10, 13, 32, '2022-09-25 17:08:46', '2022-09-25 17:08:46'),
(11, 13, 35, '2022-09-25 17:09:16', '2022-09-25 17:09:16'),
(12, 13, 37, '2022-09-26 04:28:38', '2022-09-26 04:28:38'),
(19, 7, 37, '2022-10-27 09:42:51', '2022-10-27 09:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` double NOT NULL DEFAULT '0',
  `max_amount` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `announcement_modals`
--
ALTER TABLE `announcement_modals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_payments`
--
ALTER TABLE `bank_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breadcrumb_images`
--
ALTER TABLE `breadcrumb_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compare_products`
--
ALTER TABLE `compare_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_pages`
--
ALTER TABLE `contact_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_countries`
--
ALTER TABLE `currency_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error_pages`
--
ALTER TABLE `error_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_comments`
--
ALTER TABLE `facebook_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_categories`
--
ALTER TABLE `featured_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_one_visibilities`
--
ALTER TABLE `home_page_one_visibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintainance_texts`
--
ALTER TABLE `maintainance_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mega_menu_categories`
--
ALTER TABLE `mega_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mega_menu_sub_categories`
--
ALTER TABLE `mega_menu_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_visibilities`
--
ALTER TABLE `menu_visibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product_variants`
--
ALTER TABLE `order_product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `popular_categories`
--
ALTER TABLE `popular_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular_posts`
--
ALTER TABLE `popular_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reports`
--
ALTER TABLE `product_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specification_keys`
--
ALTER TABLE `product_specification_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pusher_credentails`
--
ALTER TABLE `pusher_credentails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_mail_logs`
--
ALTER TABLE `seller_mail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_withdraws`
--
ALTER TABLE `seller_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart_variants`
--
ALTER TABLE `shopping_cart_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_pages`
--
ALTER TABLE `shop_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders1`
--
ALTER TABLE `sliders1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders2`
--
ALTER TABLE `sliders2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders3`
--
ALTER TABLE `sliders3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders4`
--
ALTER TABLE `sliders4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders5`
--
ALTER TABLE `sliders5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders6`
--
ALTER TABLE `sliders6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders7`
--
ALTER TABLE `sliders7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders8`
--
ALTER TABLE `sliders8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders9`
--
ALTER TABLE `sliders9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders10`
--
ALTER TABLE `sliders10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_login_information`
--
ALTER TABLE `social_login_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sslcommerz_payments`
--
ALTER TABLE `sslcommerz_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `three_column_categories`
--
ALTER TABLE `three_column_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_social_links`
--
ALTER TABLE `vendor_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `announcement_modals`
--
ALTER TABLE `announcement_modals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_payments`
--
ALTER TABLE `bank_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `breadcrumb_images`
--
ALTER TABLE `breadcrumb_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `compare_products`
--
ALTER TABLE `compare_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_pages`
--
ALTER TABLE `contact_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `currency_countries`
--
ALTER TABLE `currency_countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `error_pages`
--
ALTER TABLE `error_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facebook_comments`
--
ALTER TABLE `facebook_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `featured_categories`
--
ALTER TABLE `featured_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_one_visibilities`
--
ALTER TABLE `home_page_one_visibilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maintainance_texts`
--
ALTER TABLE `maintainance_texts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mega_menu_categories`
--
ALTER TABLE `mega_menu_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mega_menu_sub_categories`
--
ALTER TABLE `mega_menu_sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu_visibilities`
--
ALTER TABLE `menu_visibilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `order_addresses`
--
ALTER TABLE `order_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `order_product_variants`
--
ALTER TABLE `order_product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popular_categories`
--
ALTER TABLE `popular_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `popular_posts`
--
ALTER TABLE `popular_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_reports`
--
ALTER TABLE `product_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_specification_keys`
--
ALTER TABLE `product_specification_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pusher_credentails`
--
ALTER TABLE `pusher_credentails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller_mail_logs`
--
ALTER TABLE `seller_mail_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_withdraws`
--
ALTER TABLE `seller_withdraws`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `shopping_cart_variants`
--
ALTER TABLE `shopping_cart_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_pages`
--
ALTER TABLE `shop_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders1`
--
ALTER TABLE `sliders1`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sliders2`
--
ALTER TABLE `sliders2`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders3`
--
ALTER TABLE `sliders3`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders4`
--
ALTER TABLE `sliders4`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders5`
--
ALTER TABLE `sliders5`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders6`
--
ALTER TABLE `sliders6`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders7`
--
ALTER TABLE `sliders7`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders8`
--
ALTER TABLE `sliders8`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders9`
--
ALTER TABLE `sliders9`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders10`
--
ALTER TABLE `sliders10`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_login_information`
--
ALTER TABLE `social_login_information`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sslcommerz_payments`
--
ALTER TABLE `sslcommerz_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `three_column_categories`
--
ALTER TABLE `three_column_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18232;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendor_social_links`
--
ALTER TABLE `vendor_social_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
