-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2023 at 05:56 AM
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
-- Database: `putri_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, ' Web Programming', 'web-programming', '2023-11-02 22:51:03', '2023-11-02 22:51:03'),
(2, ' Personal', 'personal', '2023-11-02 22:51:03', '2023-11-02 22:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_02_041817_create_posts_table', 1),
(6, '2023_11_02_102923_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Judul Pertama', 'judul-pertama', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem, nemo optio, vitae officiis? Corrupti excepturi nemo inventore facilis ipsam optio necessitatibus, modi quas illum! Voluptate sint explicabo illo porro, corrupti nihil consequuntur et animi beatae voluptatem. Molestias consectetur provident tenetur molestiae, quasi id dignissimos quos. Exercitationem perferendis nobis qui obcaecati explicabo saepe hic quis animi impedit facilis labore, earum consequatur fugiat eveniet, similique adipisci, nesciunt voluptate numquam amet a officiis eaque quam autem eius! Ut, molestiae dolore at qui id, iusto laboriosam cum vero nobis repellat quod amet?', NULL, '2023-11-02 22:51:03', '2023-11-02 22:51:03'),
(2, 1, 1, 'Judul Ke Dua', 'judul-ke-dua', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem, nemo optio, vitae officiis? Corrupti excepturi nemo inventore facilis ipsam optio necessitatibus, modi quas illum! Voluptate sint explicabo illo porro, corrupti nihil consequuntur et animi beatae voluptatem. Molestias consectetur provident tenetur molestiae, quasi id dignissimos quos. Exercitationem perferendis nobis qui obcaecati explicabo saepe hic quis animi impedit facilis labore, earum consequatur fugiat eveniet, similique adipisci, nesciunt voluptate numquam amet a officiis eaque quam autem eius! Ut, molestiae dolore at qui id, iusto laboriosam cum vero nobis repellat quod amet?', NULL, '2023-11-02 22:51:03', '2023-11-02 22:51:03'),
(3, 2, 1, 'Judul Ke Tiga', 'judul-ke-tiga', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem, nemo optio, vitae officiis? Corrupti excepturi nemo inventore facilis ipsam optio necessitatibus, modi quas illum! Voluptate sint explicabo illo porro, corrupti nihil consequuntur et animi beatae voluptatem. Molestias consectetur provident tenetur molestiae, quasi id dignissimos quos. Exercitationem perferendis nobis qui obcaecati explicabo saepe hic quis animi impedit facilis labore, earum consequatur fugiat eveniet, similique adipisci, nesciunt voluptate numquam amet a officiis eaque quam autem eius! Ut, molestiae dolore at qui id, iusto laboriosam cum vero nobis repellat quod amet?', NULL, '2023-11-02 22:51:03', '2023-11-02 22:51:03'),
(4, 2, 2, 'Judul Ke Empat', 'judul-ke-empat', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolores obcaecati repudiandae reiciendis quia dolor consequuntur error doloribus assumenda nihil quas rem, nemo optio, vitae officiis? Corrupti excepturi nemo inventore facilis ipsam optio necessitatibus, modi quas illum! Voluptate sint explicabo illo porro, corrupti nihil consequuntur et animi beatae voluptatem. Molestias consectetur provident tenetur molestiae, quasi id dignissimos quos. Exercitationem perferendis nobis qui obcaecati explicabo saepe hic quis animi impedit facilis labore, earum consequatur fugiat eveniet, similique adipisci, nesciunt voluptate numquam amet a officiis eaque quam autem eius! Ut, molestiae dolore at qui id, iusto laboriosam cum vero nobis repellat quod amet?', NULL, '2023-11-02 22:51:03', '2023-11-02 22:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, ' Putri Aulia Maulidina', 'ptriauliam@gmail.com', '$2y$10$tuBjR0JB8IGMyD3CzvdUWOdqdxMbCzGsPzmFY21m55/DwmjlkqNaO', NULL, NULL, '2023-11-02 22:51:03', '2023-11-02 22:51:03'),
(2, 'Maulidina Aulia Putri', 'Maaulidina@gmail.com', '$2y$10$0vqfAxTafa6lwbQD0/t3V.I1fJTwZKHHnjMM8KJkJKVb.nfikZSI.', NULL, NULL, '2023-11-02 22:51:03', '2023-11-02 22:51:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
