-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2023 at 07:09 AM
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
(1, ' Web Programming', 'web-programming', '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(2, ' Personal', 'personal', '2023-11-03 00:00:09', '2023-11-03 00:00:09');

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
(1, 2, 2, 'Fugiat officiis rerum asperiores et est ut nihil deleniti hic.', 'id-est-ea-et-dolorem-eos', 'Sit neque dolores perferendis inventore. Nesciunt id aut asperiores sit. Velit quibusdam voluptatem sit iusto. Ut hic nulla nemo ut velit quae.', 'Sequi laudantium eos rerum voluptas ipsam eius. Repellendus eum consequuntur enim maiores. Nesciunt delectus veritatis sint necessitatibus. Nihil iure et odio eveniet fuga. Unde molestias voluptatem doloribus officia illo. Ut sequi quasi aut distinctio quaerat. Deleniti esse quia et mollitia accusamus et autem.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(2, 1, 2, 'Repudiandae quam ut animi.', 'ut-velit-similique-impedit-rem-dignissimos-dolorem-mollitia', 'Incidunt at quis consequatur vitae quidem exercitationem. Itaque saepe dolorum eos molestiae magnam et quidem.', 'Mollitia excepturi molestiae et sequi est dolorem totam. Repellendus ratione occaecati dolore quod quia qui. Laboriosam laboriosam laudantium sed illum et reiciendis et sint. Nobis praesentium debitis non amet cum sit ut. Perferendis sed voluptatem aut perferendis. Ut neque molestiae assumenda dolor atque. Et sit velit quidem maxime. Sunt corporis veniam quia labore error perferendis. Quam necessitatibus hic laborum quo vel. Repellendus consequatur nam et ea. Eos reiciendis molestiae molestias ut hic. Minus earum fugit eos in sed.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(3, 2, 2, 'Et tempore.', 'laboriosam-amet-et-quia-alias-quia', 'Quisquam esse totam nobis libero impedit. Numquam eveniet sapiente voluptatem aut aut voluptate adipisci exercitationem. Omnis in voluptate qui sunt sunt magnam. Quas voluptatum ea placeat aliquam sequi. Accusamus modi et necessitatibus voluptas debitis perspiciatis voluptatem.', 'Deserunt rerum voluptatibus facere voluptatem eius. Tenetur iure magni mollitia quia. Nihil voluptatem doloremque omnis cupiditate reprehenderit. Perferendis quam accusamus ab dignissimos quam sed labore totam. Maiores consequatur totam suscipit quasi ut. Magni inventore voluptatibus nobis cupiditate fuga. Ad harum enim nihil officiis et adipisci.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(4, 1, 1, 'Rerum quis vel tenetur.', 'blanditiis-eveniet-libero-velit-similique', 'Veniam quia neque sed. Omnis sit magnam aliquid sit rerum eos omnis. Eius voluptas voluptatem eos eligendi. Officiis commodi et quas est dolorum.', 'Voluptas ut commodi neque sunt deserunt cumque quo. Nobis numquam magnam voluptas inventore. Aut soluta iusto nihil deserunt illo fugit aperiam odio. Vitae et qui sint aperiam sapiente aut. Illo velit ipsum tenetur qui non aut.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(5, 2, 3, 'Consectetur consectetur earum perspiciatis explicabo est.', 'sapiente-eum-sint-sunt-quia-quo-enim-delectus', 'Aliquid cumque necessitatibus ut explicabo vel sit velit. Fugit iure porro ut aut eum. Velit labore autem eius esse ratione autem. Suscipit excepturi aut autem similique non facilis deleniti.', 'Eum placeat itaque assumenda veniam dolores praesentium. Aut itaque mollitia deleniti et tempore. Quidem eligendi cum quibusdam fugit dolorem corrupti dicta rerum. Asperiores aliquam sed saepe qui. Occaecati itaque provident ut at optio. At exercitationem ipsa accusantium recusandae ex vero tenetur inventore.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(6, 2, 3, 'Ad sint et.', 'quas-nesciunt-voluptas-odio-aut-qui-doloribus-beatae', 'Eos modi recusandae ad veniam beatae nostrum. Perspiciatis nihil et dolore officia consequatur deleniti. Sunt dolore vel cum consectetur itaque excepturi eveniet. Sed quia quia doloribus reprehenderit excepturi rerum consequatur.', 'Et corrupti iste id sit autem. Quia consequuntur optio pariatur nemo et quas repellat sint. Facere voluptates quibusdam magni ex. Cum consequatur ipsa quas tempora libero culpa a in. Autem delectus adipisci sequi aut. Nostrum laboriosam ut mollitia iure est pariatur non. Ipsa recusandae ea impedit dolorem sequi aut officia architecto. Quis perspiciatis aut eveniet quo sapiente. Ipsam quo repellendus facilis.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(7, 2, 3, 'Architecto rerum architecto cumque.', 'consequatur-quia-quis-qui-occaecati-corrupti-qui-accusantium', 'Nostrum sed quia minima sed iure. Eum quaerat veniam voluptate ad doloremque. Voluptas deleniti sunt quis iste voluptatem natus iste blanditiis.', 'Praesentium quia assumenda ut nesciunt. Sapiente eligendi officiis exercitationem est saepe aut. Expedita rerum voluptatibus aut minima consequatur cum aut. Ipsa adipisci velit non praesentium provident. Earum harum ad aperiam ut numquam. Libero maiores pariatur neque quis in itaque. Aut qui in molestiae eum. Est sit repudiandae rerum sed.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(8, 2, 2, 'Et soluta vitae mollitia amet voluptatem minima rerum dolorem tempore laborum.', 'dolor-voluptates-tempora-fugit-facere-consequatur-rerum', 'Et iure veritatis ipsum eligendi. Sunt quia doloremque magnam assumenda libero. In voluptatem incidunt provident consectetur perferendis voluptatum suscipit.', 'Necessitatibus voluptate quia repellat non explicabo in. Perferendis ut autem cum velit quas. Nesciunt voluptates facilis adipisci debitis maiores in. Harum culpa voluptatem et quod est excepturi impedit. Quia distinctio incidunt quas consequatur optio tempora. Qui dolore nobis doloremque tempore voluptate doloribus quas.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(9, 2, 3, 'Vel minus veritatis.', 'nihil-sunt-voluptatem-deleniti-ab', 'Nihil repellat vel ducimus illo. Sed laborum illo voluptatem delectus autem fugiat. Repellat consectetur facilis itaque nisi. Repudiandae ducimus molestias dolores quis laudantium.', 'Ipsam voluptas et consequatur tempora cumque et. Unde sit reprehenderit eius. Expedita assumenda rem id dolorem et doloribus. Numquam et a modi ut debitis doloribus. Qui dolores voluptatibus at officia consequuntur. Inventore omnis fugiat repellat quisquam. Id et provident incidunt id. Et dignissimos voluptas consectetur nulla dolores. Nulla rerum vel sit vel facere.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(10, 2, 2, 'Repellat est necessitatibus rerum labore vitae.', 'consequatur-voluptate-eum-in-eum-ut-quia', 'Omnis omnis dolorum omnis deserunt aut in. Quo et eligendi ut nihil eum commodi delectus. Eum et quisquam eligendi enim consectetur voluptatibus sit eum. Enim enim quaerat dolorum quia impedit vero.', 'Cupiditate laborum dolor magni doloribus rerum omnis in. Corrupti adipisci et delectus earum consequatur. Sapiente qui at nisi. Aut natus consequatur delectus consequatur quam voluptatem vero. Voluptas quibusdam et non aut deserunt provident eum. Voluptatibus optio ex maxime enim inventore adipisci praesentium. Tempora unde facere odio doloribus error eum. Ea ducimus perspiciatis magni quaerat porro voluptatem ex. Corporis sed odit voluptatibus ipsum velit magni facere. Voluptate assumenda aut perferendis. Et officia modi optio quod nam. Dicta in aliquam placeat quos deleniti velit sunt. Officia expedita possimus quam dolorem quis itaque.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(11, 1, 1, 'Quisquam nemo expedita sed assumenda.', 'voluptate-facilis-quisquam-dolores-soluta', 'Nulla totam dolores nihil ab nulla. Et porro velit ut minus beatae dolore expedita. Assumenda repellat ipsam nihil.', 'Quia est rerum aut dolorem. Aperiam ex quidem neque rerum quasi. Itaque blanditiis perferendis ab excepturi eos. Deserunt explicabo id ratione fugiat minus quia sapiente. Nam qui ut voluptas atque et unde ea nobis. Ut unde eum molestias. Et nisi ipsum occaecati et. Odio quisquam quisquam aliquam rerum suscipit aut aperiam. Ipsum aut eius amet eum sequi ut necessitatibus.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(12, 1, 1, 'Qui harum.', 'consequatur-sunt-ad-quia-ab', 'Molestiae et iusto est velit molestiae modi expedita. Dolor quia sunt facere voluptatibus quis corrupti. Saepe doloribus repellat occaecati quaerat totam sint quia corporis.', 'Et aut ipsa pariatur fugiat sed aliquid labore. Alias est ut possimus eos ut. Vel provident eum accusantium sapiente nostrum ea. Quisquam nihil voluptatem non earum quia aut dicta. Tenetur temporibus ut autem qui velit quidem fugit. Quo eaque quisquam aperiam repudiandae amet est id. Sint repudiandae in et cumque quia. Voluptate architecto vero rerum sint exercitationem et. Voluptates dolores vitae magni culpa maiores quidem nihil laborum. Velit at beatae sunt cumque mollitia totam. Quae quis enim minus nihil nisi sit illum. Sit libero voluptate blanditiis ad repellat eum corporis architecto.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(13, 1, 1, 'Quo vero doloremque voluptatem earum velit.', 'quaerat-eum-necessitatibus-optio-ullam-repudiandae-aliquid-fuga-sit', 'Animi et provident quas et ut vel. Nisi beatae et sapiente.', 'Aut eius illum ad reiciendis suscipit. Unde quam fuga laudantium assumenda in qui. Et est ab quam iusto. Et expedita nihil provident est deleniti ut dolorum itaque.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(14, 1, 1, 'Necessitatibus magnam magnam voluptates rerum eius omnis nobis nobis quae.', 'eligendi-repellat-et-debitis-ut', 'Voluptatem provident expedita sapiente aut doloremque aut et. Rerum sint laudantium sed sint ipsam maxime tempore aperiam. Sint nihil enim et doloremque quisquam. Quas magni et expedita expedita voluptatibus iure inventore.', 'Accusamus corrupti error tempore aut tempore modi odit. Et delectus distinctio accusantium qui. Et recusandae est consequatur beatae saepe et. Magnam reprehenderit placeat cumque nisi at provident nisi. Consequatur soluta tempore neque.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(15, 1, 1, 'Fuga facere accusantium.', 'officia-molestiae-libero-provident-sit-nostrum', 'Voluptatum ratione voluptatem placeat in eos ut non. Ea deleniti explicabo molestiae labore deserunt quia. Ut nisi qui omnis enim.', 'Iusto tenetur ratione ad nostrum ipsa. Vel dolorum soluta est omnis. Veritatis vel et facilis molestiae earum libero. Voluptatibus voluptate natus consequatur. Autem tempore at quam iusto voluptate voluptatem at. Laborum rerum tempora doloribus expedita impedit eum consequatur. Et minus accusamus corrupti eos deleniti. Vero id qui culpa recusandae. Laboriosam et facere illo odio ipsum accusantium eos.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(16, 2, 1, 'Dolores at et facere modi.', 'recusandae-reiciendis-ut-illum-consequatur', 'Sed sed corporis quasi soluta. Voluptas amet aut voluptatem tenetur labore.', 'Alias quidem vel voluptatum consectetur eos quo sunt. Est sit sed rerum voluptate at. Quidem doloribus eveniet dolore dolor a dolor. In et eos et. Natus et perspiciatis sit aut. Veniam officia architecto amet libero. Ut dolor assumenda dolorum unde quasi. Sunt omnis fuga et quis.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(17, 1, 1, 'Temporibus amet tempore blanditiis voluptatibus amet ut.', 'dolor-expedita-ex-nesciunt-aut-vero', 'Ab sit quia nesciunt eum. Est culpa quia corrupti. Quisquam id quia et.', 'Error voluptatem qui quaerat. Animi commodi aut fugiat. Quae doloribus animi et eos numquam architecto. Non dolorem ipsum quis at autem id. Accusamus voluptates fugit consequatur consequatur possimus saepe dolores. Voluptas minus eos incidunt et ratione. Expedita animi necessitatibus est facere sit ex. Amet et sed omnis quia. Quisquam fuga est dolores asperiores mollitia. Dolor perferendis architecto facilis. Voluptatibus aut ea provident explicabo consequatur est.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(18, 1, 1, 'Voluptatem quas.', 'est-officiis-delectus-quibusdam-aut-voluptate-harum', 'Dolores voluptate ut et. Iure nihil deleniti velit aliquam necessitatibus. Autem officia aliquid et temporibus explicabo.', 'Velit iste vel sit eligendi. Est quo beatae voluptas. Sequi aut impedit totam fuga rerum voluptatibus error. Possimus et cumque sunt sit officia totam deleniti quos. Nulla sunt labore sed qui illo qui voluptas iure. Quia est autem nam quasi. Dicta quidem officiis accusamus consectetur quasi. Totam laboriosam eligendi velit. Quis autem ipsa ut incidunt saepe numquam.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(19, 1, 2, 'Pariatur nostrum dicta quia ut alias qui impedit.', 'molestias-earum-consequatur-voluptate', 'Laboriosam deleniti expedita et odit nulla voluptas occaecati. Possimus autem quo vitae asperiores qui non. Non ut est corporis iusto iste quasi. Magnam perferendis officia voluptatibus veniam ut.', 'Dignissimos est corporis laboriosam amet ipsam. Recusandae omnis veritatis est. Debitis repellendus enim fugiat officia sit vel. Delectus ex dolor qui. Eum vel vero sint omnis autem exercitationem quia. Magnam consectetur blanditiis sapiente voluptates. Similique et aperiam nostrum blanditiis ut laborum quam.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(20, 1, 2, 'Autem aspernatur eum.', 'ut-velit-exercitationem-ut-ducimus', 'Unde optio reiciendis et corrupti minima possimus. Sit ad dolor dolorem et eos. Amet sit sunt natus quisquam id. Quas qui dolores tempore quo ipsam qui voluptatem. Ut nostrum eligendi et aut omnis doloribus.', 'Ea voluptas ut consectetur quia possimus quod. Cum qui ea nisi nam aliquam cupiditate sunt quisquam. Tenetur voluptatum et ea quia nobis. Dolor et aperiam omnis ut. Nisi repellat maiores quisquam dolorum neque qui. Accusantium labore ut saepe.', NULL, '2023-11-03 00:00:09', '2023-11-03 00:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lasmanto Wahyudin', 'jelita03', 'nkuswandari@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-03 00:00:09', 'PpJ7Ay1RVG', '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(2, 'Adiarja Mahendra S.H.', 'btarihoran', 'embuh.tarihoran@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-03 00:00:09', 'ZXX1x6WHql', '2023-11-03 00:00:09', '2023-11-03 00:00:09'),
(3, 'Alika Kuswandari', 'cengkir.saragih', 'yhakim@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-03 00:00:09', 'MVJGFkFDAO', '2023-11-03 00:00:09', '2023-11-03 00:00:09');

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
  ADD UNIQUE KEY `users_username_unique` (`username`),
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
