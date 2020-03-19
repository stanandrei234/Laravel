-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mart. 19, 2020 la 06:17 AM
-- Versiune server: 10.1.38-MariaDB
-- Versiune PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `laravel`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Stan Andrei', 'stan.andrey@yahoo.com', '123456', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'nume autor 1', NULL, NULL),
(2, 'nume autor 2', NULL, NULL),
(3, 'nume autor 3\r\n', NULL, NULL),
(4, 'nume autor 5', '2020-03-16 07:42:17', '2020-03-16 07:42:17'),
(5, 'nume autor 5', '2020-03-16 07:43:14', '2020-03-16 07:43:14'),
(6, 'nume autor 55', '2020-03-16 07:45:11', '2020-03-16 07:45:11'),
(7, 'nume autorrr 1', '2020-03-16 07:48:19', '2020-03-16 07:48:19'),
(8, 'nume autor 55', '2020-03-16 07:48:52', '2020-03-16 07:48:52'),
(9, 'test', '2020-03-16 07:51:07', '2020-03-16 07:51:07'),
(10, 'nume autor 1', '2020-03-16 07:54:24', '2020-03-16 07:54:24'),
(11, 'nume autor 1', '2020-03-16 07:54:25', '2020-03-16 07:54:25'),
(12, 'nume autorrr 1', '2020-03-16 07:55:43', '2020-03-16 07:55:43'),
(13, 'test', '2020-03-16 08:04:15', '2020-03-16 08:04:15'),
(14, 'qw', '2020-03-16 08:07:00', '2020-03-16 08:07:00'),
(15, 'as', '2020-03-16 08:07:43', '2020-03-16 08:07:43'),
(16, 'as', '2020-03-16 08:08:12', '2020-03-16 08:08:12'),
(17, 'as', '2020-03-16 08:09:20', '2020-03-16 08:09:20'),
(18, 'as', '2020-03-16 08:10:25', '2020-03-16 08:10:25'),
(19, 'test', '2020-03-16 08:11:37', '2020-03-16 08:11:37'),
(20, 'kn', '2020-03-16 18:14:13', '2020-03-16 18:14:13');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bookwithdetails` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `books`
--

INSERT INTO `books` (`id`, `id_bookwithdetails`, `id_author`, `created_at`, `updated_at`) VALUES
(1, 9, 1, NULL, NULL),
(2, 7, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `book_with_details`
--

CREATE TABLE `book_with_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '7',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `book_with_details`
--

INSERT INTO `book_with_details` (`id`, `name`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'numbe book 177', 7, 7, NULL, '2020-03-16 18:14:24'),
(2, 'numbe book 2', 0, 7, NULL, NULL),
(3, 'numbe book 5', 5, 5, '2020-03-16 07:42:17', '2020-03-16 07:42:17'),
(4, 'numbe book 5', 5, 5, '2020-03-16 07:43:14', '2020-03-16 07:43:14'),
(5, 'numbe book 55', 55, 55, '2020-03-16 07:45:11', '2020-03-16 07:45:11'),
(6, 'numbe book 55', 5, 7, '2020-03-16 07:48:19', '2020-03-16 07:48:19'),
(7, 'numbe book 55', 7, 55, '2020-03-16 07:48:52', '2020-03-16 07:48:52'),
(8, 'test', 0, 0, '2020-03-16 07:51:08', '2020-03-16 07:51:08'),
(9, 'numbe book 1', 55, 5, '2020-03-16 07:54:24', '2020-03-16 07:54:24'),
(10, 'numbe book 1', 55, 5, '2020-03-16 07:54:25', '2020-03-16 07:54:25'),
(11, 'numbe book 55', 0, 7, '2020-03-16 07:55:44', '2020-03-16 07:55:44'),
(12, 'test', 0, 7, '2020-03-16 08:04:15', '2020-03-16 08:04:15'),
(13, 'qw', 1, 1, '2020-03-16 08:07:00', '2020-03-16 08:07:00'),
(14, 'as', 1, 1, '2020-03-16 08:07:43', '2020-03-16 08:07:43'),
(15, 'as', 1, 1, '2020-03-16 08:08:13', '2020-03-16 08:08:13'),
(16, 'as', 1, 1, '2020-03-16 08:09:21', '2020-03-16 08:09:21'),
(17, 'as', 1, 1, '2020-03-16 08:10:25', '2020-03-16 08:10:25'),
(18, 'test', 11, 11, '2020-03-16 08:11:37', '2020-03-16 08:11:37'),
(19, 'jn', 7, 8, '2020-03-16 18:14:13', '2020-03-16 18:14:13');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_03_09_132210_create_users_table', 1),
(2, '2020_03_09_132224_create_admins_table', 1),
(3, '2020_03_11_071031_create_book_with_details_table', 2),
(4, '2020_03_11_071456_create_authors_table', 2),
(5, '2020_03_11_095907_create_book_with_details_table', 3),
(6, '2020_03_11_100052_create_authors_table', 3),
(7, '2020_03_11_100203_create_books_table', 4),
(8, '2020_03_11_125605_create_book_with_details_table', 5),
(9, '2020_03_11_125915_create_books_table', 6),
(10, '2020_03_18_162433_order', 7),
(11, '2020_03_11_072045_create_books_table', 8),
(12, '2020_03_18_162851_ordered_product', 9);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `id_book` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('stan.andrey@yahoo.com', '$2y$10$ST0ou0x6kCVWZK7DO6A0y.VLuCeSSrv.DZVe5JBk/QcQC6nZ46f/e', '2020-03-10 11:26:00');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'gicu', 'ghita@yahoo.com', '123456', NULL, '2020-03-10 02:19:58', '2020-03-10 02:19:58'),
(5, 'test', 'test@yahoo.com', '123', NULL, '2020-03-10 02:23:28', '2020-03-10 02:23:28'),
(6, 'test', 'test@yahoo.com', '123', NULL, '2020-03-10 02:23:57', '2020-03-10 02:23:57'),
(7, 'test', 'test@yahoo.com', '123', NULL, '2020-03-10 02:25:52', '2020-03-10 02:25:52'),
(8, 'ionut', 'stan.andrey@yahoo.com', '123', NULL, '2020-03-10 02:48:42', '2020-03-10 02:48:42'),
(9, 'reli', 'stan.andrey@yahoo.com', '123', NULL, '2020-03-10 02:53:27', '2020-03-10 02:53:27'),
(10, 'ert', 'stan.andrey@yahoo.com', '123', NULL, '2020-03-10 02:58:46', '2020-03-10 02:58:46'),
(11, 'ionnn', 'stan.andrey@yahoo.com', 'ana', NULL, '2020-03-11 12:50:26', '2020-03-11 12:50:26');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_id_bookwithdetails_foreign` (`id_bookwithdetails`),
  ADD KEY `books_id_author_foreign` (`id_author`);

--
-- Indexuri pentru tabele `book_with_details`
--
ALTER TABLE `book_with_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordered_products_id_order_foreign` (`id_order`),
  ADD KEY `ordered_products_id_book_foreign` (`id_book`);

--
-- Indexuri pentru tabele `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_user_foreign` (`id_user`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pentru tabele `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `book_with_details`
--
ALTER TABLE `book_with_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pentru tabele `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pentru tabele `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_id_author_foreign` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_id_bookwithdetails_foreign` FOREIGN KEY (`id_bookwithdetails`) REFERENCES `book_with_details` (`id`);

--
-- Constrângeri pentru tabele `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD CONSTRAINT `ordered_products_id_book_foreign` FOREIGN KEY (`id_book`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `ordered_products_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`);

--
-- Constrângeri pentru tabele `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
