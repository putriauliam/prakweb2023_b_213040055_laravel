-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2023 at 12:16 AM
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
(1, ' Web Programming', 'web-programming', '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(2, ' Web Design', 'web-design', '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(3, ' Personal', 'personal', '2023-11-24 16:06:50', '2023-11-24 16:06:50');

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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Natus atque quia voluptatem incidunt voluptates quo quam harum.', 'labore-non-nam-non', NULL, 'Tempora quis aut voluptas aspernatur. Aut blanditiis ullam nihil.', '<p>Velit quod deserunt dignissimos quam veritatis dolor. Error esse id voluptatem ab quia. Nam ut alias natus illum. Temporibus rem beatae iure aut cumque.</p><p>Ducimus aliquam doloribus hic facilis voluptas enim aspernatur velit. Voluptatum explicabo quis non illum aut occaecati et.</p><p>Nulla eaque sit consequatur quia omnis. Voluptatem est recusandae porro sed. Quam ex dignissimos sed et placeat enim non. Optio et quae aut doloremque sit hic magnam.</p><p>Ut ab quam iure aliquid exercitationem dolor rerum. Asperiores est cumque placeat. Commodi fuga dolore aperiam rerum sit maiores cum. Hic quia qui repudiandae minima mollitia qui eveniet culpa.</p><p>Sequi ipsum aperiam quis. Nesciunt et eveniet et vero pariatur rerum in quia. Vel atque autem optio ad consequatur ab molestiae. Et facilis quasi repellendus id fuga sit cum voluptatem.</p><p>Ducimus alias ea omnis sed nisi. Reiciendis corrupti omnis qui et quae. Rerum fugit sed dolorem iste qui.</p><p>Labore deserunt id molestiae commodi nisi voluptatum. Consequatur laborum ipsam impedit esse saepe ipsam sapiente. Tempore quo possimus et ipsam similique dolor exercitationem autem.</p><p>Ab veniam temporibus ipsa voluptate distinctio. Est provident dolor reprehenderit officia quos dolorem vel. Suscipit unde ut culpa eaque consectetur magnam.</p><p>Maiores tempora occaecati adipisci voluptas animi. Occaecati at labore veniam inventore occaecati nihil. Perspiciatis soluta autem necessitatibus deserunt modi sequi nobis. Adipisci impedit omnis enim aut cumque.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(2, 2, 2, 'Ut tenetur rem qui accusantium excepturi non praesentium sequi dolorem ea.', 'quae-aut-vero-qui-vitae-beatae-sequi-officia', NULL, 'Adipisci fugit nisi eum qui at. Modi voluptatum doloribus aut vitae sunt. Eum velit in enim voluptatem alias. Itaque laborum accusamus est consequatur.', '<p>Veniam quidem adipisci ducimus vero. Voluptatem ut molestiae blanditiis ut asperiores saepe aut. Maiores est enim doloribus illo sint saepe.</p><p>Sunt neque ab ut harum temporibus dicta quo. Voluptatem quidem quam numquam aliquid rerum dolores. Ea voluptas debitis ea dicta. Rerum voluptatem sint a suscipit ullam.</p><p>Illo at id iure culpa qui enim. Optio nihil quis vitae aut pariatur sed et. Vel vero sit et eos cum. Non fuga ratione quidem quibusdam eaque. Deserunt tempora rem voluptates ut deleniti est.</p><p>Dolorem nihil error consequatur. Et et inventore dolorem. Minus quam quos sed ad. Omnis facilis omnis debitis velit.</p><p>Aut ullam mollitia magnam et rerum eveniet vel. Labore illum cumque dolorum maiores in quas exercitationem. Temporibus nihil molestiae qui animi ut porro.</p><p>Ut sit magni soluta officia voluptas. Ea distinctio reiciendis et. Ad blanditiis quibusdam sed voluptatum.</p><p>Ipsum qui sed mollitia cumque aliquid pariatur esse quia. Suscipit sed nihil aut voluptatum unde temporibus enim. Laudantium placeat et vel id aliquam.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(3, 2, 2, 'Optio provident perferendis.', 'qui-quaerat-blanditiis-praesentium-sapiente-dolores-voluptatem-vel-aut', NULL, 'Ut laboriosam natus quibusdam dolorem aspernatur. Voluptates et dolorum provident sed. Est fuga recusandae quia tempora incidunt. Ut reprehenderit tempora quo impedit molestias voluptatum.', '<p>Voluptas est dolor consequatur dolores aperiam repellendus est. Vel tempore consequatur tenetur quas consectetur quis voluptatem molestiae. Vitae nihil vel architecto quos ipsa ducimus. Repellat commodi sed qui eos.</p><p>Quia unde fugit dolor ea ducimus perspiciatis. Minima optio dolor saepe repellat consequatur vero. Quaerat officiis nesciunt distinctio architecto nobis.</p><p>Rerum aperiam porro dignissimos nulla et ullam. Qui fuga quo dignissimos ipsam.</p><p>Dolor deserunt dolorum repudiandae corrupti libero omnis. Molestias autem porro quia est quis voluptatem iusto. Praesentium illo quae distinctio distinctio doloremque aut voluptas.</p><p>Aut officiis facere laudantium. Aut repellendus harum possimus rerum qui illo. At temporibus modi aliquam voluptatibus sit repellendus. Pariatur voluptatem distinctio voluptas aperiam et. Quibusdam voluptatem unde debitis ex quos sed.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(4, 1, 2, 'Nam ut esse.', 'corporis-vel-adipisci-maxime', NULL, 'Rerum ab iusto quia voluptatem eaque. Optio molestias consequuntur voluptatibus est enim quas. Et harum rem accusantium sapiente. Alias autem eum sint accusantium natus. Et enim perspiciatis praesentium.', '<p>Perspiciatis facilis ad non consectetur maiores. Ratione rerum est quasi dolorem voluptatum. Velit esse quae perferendis qui.</p><p>Voluptas recusandae tempore dolore dolore eos laborum odit. Quia numquam neque aut.</p><p>Laboriosam asperiores et temporibus libero qui esse. Repellat ea officia itaque necessitatibus fuga non est. Quidem non omnis et qui. Inventore suscipit dolores totam quae voluptas.</p><p>Assumenda sit optio porro autem. Expedita vel vel at quisquam laboriosam aut. Eum ut quas quis iusto.</p><p>Nobis et illum officia cupiditate ab animi eius. Voluptatem aut in et ea et rerum. A eum rerum dolor natus delectus non qui. Odit numquam accusamus tempora dolores numquam velit voluptates.</p><p>Tenetur veritatis inventore porro illum quia et. Et omnis eos ut similique. Fugit voluptatibus excepturi blanditiis minima quae quis aliquam.</p><p>Vitae architecto quo earum debitis qui quia. Est fugiat temporibus eaque fuga provident voluptatem. Eum consequatur ut aperiam impedit voluptatem.</p><p>Recusandae sunt et aliquid ea nisi qui nostrum. Et iusto dignissimos eius suscipit. Quod porro consectetur magni nisi dolores saepe ut. Aperiam ex sit eum nemo deleniti iste minima autem.</p><p>Facere laborum est earum est nobis officia neque. Ut esse dolor at minus et. Laboriosam optio aut saepe harum et. Illo inventore rerum fugiat voluptatem non dicta.</p><p>Consequatur molestias doloribus quibusdam eaque quis iste qui. Voluptatem quae aliquam a ut. Sunt ut molestiae itaque corrupti aspernatur magnam consequuntur. Vero eveniet aut illo sapiente voluptates velit autem.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(5, 1, 2, 'Corporis repellendus atque saepe rerum est.', 'perferendis-molestiae-facere-aliquam-aut-dolores-culpa', NULL, 'Quo quos facere repellat. Quod laudantium et necessitatibus cumque et. Voluptatem repellat distinctio culpa fugit.', '<p>Blanditiis unde totam laborum consectetur voluptatum quia facere ipsam. Aspernatur accusantium ratione vel officiis minus fugit. Harum est vero temporibus voluptas repellendus illo ea.</p><p>Fuga nostrum aut velit porro ut sunt dolores. Aut fugiat sit et ullam est. Dolorum deserunt officiis est earum.</p><p>Et dolorem illum voluptatibus exercitationem praesentium. Ipsam eligendi sint assumenda corrupti. Aut nihil omnis nobis est. Harum at quo non facere.</p><p>Quod natus repudiandae fugiat error. Quisquam eos dignissimos voluptatibus ea quam. Rerum laboriosam quia nobis modi ipsa. Inventore in dolores nam aut quam quos ad repudiandae.</p><p>Consequatur quam repudiandae ex accusantium enim sed voluptas. Quia excepturi dolores voluptatem placeat. Temporibus dolore est voluptatem sint consequatur dolor. Quaerat enim sint sit.</p><p>Nostrum quas ea assumenda velit quam id. Ea deleniti eum saepe reiciendis ut quis quisquam. Natus dolorem non fugiat officia.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(6, 1, 3, 'Quibusdam est dolores in omnis consectetur.', 'qui-cupiditate-cum-qui-est-et-officia-autem', NULL, 'Numquam nobis eaque temporibus corporis. Incidunt aut natus minus qui deserunt non. Neque magnam itaque dicta nemo consequatur dignissimos quasi.', '<p>Ea dolor et deserunt voluptas qui expedita. Assumenda consequatur quos at. Omnis vero in dolore sit.</p><p>Natus libero minus qui voluptas voluptatibus nihil aut. Expedita dolorem autem dignissimos vitae est ab ut quas. Odio possimus laboriosam est ex ut sed dolorem. Ut unde dolores in sunt enim ipsa et.</p><p>Odit et et minus voluptas nisi consequuntur ab. Iure quasi deleniti fugiat placeat.</p><p>Quis id sit ratione adipisci libero. Omnis numquam placeat libero et. Quo commodi ea nobis qui rerum consequatur. Voluptas quo corrupti facere non cupiditate qui expedita.</p><p>Pariatur distinctio dignissimos atque ad rerum magni. Sunt rerum repellat voluptatem odio. Sint molestias error est omnis officia maxime.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(7, 1, 2, 'Quas saepe dicta ut natus.', 'nam-sit-qui-omnis-tenetur-veritatis-accusamus-nulla', NULL, 'Voluptas ut officia nam ut quasi nemo doloribus. Quisquam consequatur quia voluptatum fugiat. Repudiandae ullam autem recusandae qui. Dolorum non voluptatem voluptatem molestias possimus repellat.', '<p>Ut necessitatibus beatae quos aut. Minima corporis harum amet. Alias quaerat impedit ut fugit reprehenderit qui pariatur. Ducimus tempora molestias et quia molestias.</p><p>Enim quae est id et pariatur rerum dolores at. Sit reiciendis ea dignissimos aliquid nesciunt error. Quis quibusdam qui aut in.</p><p>Veritatis quos ut ea repudiandae sint nihil. Numquam laboriosam dolores repudiandae laudantium ut nesciunt. Sit unde quia est eveniet quia.</p><p>Sint facere ratione dolor ea quisquam. Pariatur doloribus ut corrupti fuga maxime. Ea facilis atque maiores aut quis perspiciatis hic. Voluptas mollitia voluptatem sint.</p><p>Tempore doloribus unde voluptates voluptas id nobis. Facere culpa magni velit dolores atque quos voluptas. Aliquid enim deserunt iusto autem molestiae doloremque repellendus dicta. Minima eaque necessitatibus temporibus ab ea.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(8, 2, 2, 'Rerum corporis cupiditate rerum.', 'quisquam-eveniet-perspiciatis-vel-quis', NULL, 'Dolorum ut impedit molestiae cum reiciendis quisquam. Quisquam nam iure exercitationem sint soluta autem pariatur harum. Non repellat aut voluptatem dolorum praesentium error.', '<p>Aut velit omnis est deleniti autem est. Distinctio aperiam ut quam soluta tempora. Reiciendis quia omnis molestias qui.</p><p>Reprehenderit molestiae eum quos laborum cumque repudiandae impedit. Non voluptatem eius molestiae velit adipisci dolor consequuntur. Soluta quisquam quam atque sed sed repellat sit. Ad veritatis id placeat.</p><p>Eveniet nesciunt ea repellendus perspiciatis. Officiis expedita qui aut placeat est at sit. Tempore suscipit explicabo harum dolores. Consequatur saepe occaecati et ut.</p><p>Et voluptatem mollitia vel dicta. Adipisci debitis error repellat nesciunt commodi omnis voluptatum. Dolorem aut facilis debitis non natus ipsam maiores.</p><p>Vero et alias sunt perspiciatis fugiat. Est molestias consequuntur fugit. Et ut et qui cupiditate. Amet eveniet perspiciatis occaecati repudiandae.</p><p>In eveniet sint voluptatibus temporibus omnis iure sed. Sit illum suscipit in laborum. Et voluptatem eius aliquid quo atque. Rem eos autem consectetur.</p><p>Aspernatur et similique iste. Aut dignissimos vel blanditiis placeat quod et ut. Quia sit quia natus excepturi cupiditate veritatis rerum. Aut ut adipisci tenetur ipsam excepturi.</p><p>Veritatis eaque cum sunt perspiciatis aut repudiandae voluptatem. Et voluptates alias voluptatem sit. Officiis vero in nisi incidunt. Et ut ut deleniti voluptas rerum aliquam delectus.</p><p>Nisi quod maiores eos incidunt non ut expedita et. Porro velit culpa molestiae modi saepe officia. Quia explicabo illo sunt. Optio soluta ad quisquam dolore officiis facere minus vitae. Cumque ab necessitatibus nesciunt quidem qui blanditiis velit.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(9, 2, 1, 'Voluptatem est officia.', 'enim-unde-dolorem-accusantium-cumque-ut-et', NULL, 'Qui et dolores illo beatae laudantium corrupti tenetur. Illum quia perferendis iure sed sed libero nihil. Ut et est dolorem corporis error. Excepturi asperiores qui ea voluptatem architecto unde amet. Voluptas consequuntur velit aliquam omnis ut pariatur dolorem quas.', '<p>Assumenda laboriosam ullam rem debitis sed. Quod et ut laborum possimus. Eum rerum et consectetur quia quidem voluptas totam totam. Dicta ex aut sed cumque.</p><p>Voluptatem nulla dignissimos itaque eligendi. Et nihil sint ipsum quia mollitia ut. Laudantium consequatur ut debitis.</p><p>Quis eos hic corrupti praesentium sed ullam aut dolores. Reprehenderit ut reprehenderit fuga nesciunt quod. Quisquam corporis voluptas esse perspiciatis architecto velit ea. Quasi rerum laboriosam quasi voluptas sint.</p><p>Dignissimos amet cum nisi ullam sit voluptas molestias. Fugiat earum totam repudiandae et cum. Et eligendi illum eos rerum non. Tempora nesciunt id est dolores dolores possimus.</p><p>Voluptate molestiae ab blanditiis dolorem qui optio. Repellat vel placeat nihil accusantium saepe quo occaecati.</p><p>Commodi maxime totam veniam voluptatum numquam sunt dolor. Iste omnis dicta vitae placeat dolorem molestiae. Est eum accusamus consequatur. Eum ea est a veritatis molestias.</p><p>Facilis dolore id fugit ipsam similique eos quam. Nam ad in qui. Qui officia doloremque qui explicabo.</p><p>Sint expedita explicabo excepturi illo reprehenderit. Consequatur quisquam commodi dolores blanditiis ut laborum consequatur laborum. Sint nihil perferendis tenetur similique odit ut vel.</p><p>Odio ut qui dignissimos nihil eos praesentium eum quia. Excepturi hic accusantium sint illum earum rerum vitae. Id aut dicta aut architecto. Nobis dolore ad ut laboriosam asperiores quos nobis.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(10, 1, 2, 'Sed enim voluptatem sed maxime sed sit voluptatem inventore ullam nulla.', 'voluptatem-quia-est-aut-magni', NULL, 'Aperiam est vel quisquam non officiis eum laborum. Eligendi libero velit cumque doloremque. Sit adipisci numquam at et.', '<p>Odio voluptate aliquid aut necessitatibus. Vero beatae praesentium itaque.</p><p>Laboriosam rerum suscipit ut est sunt. Saepe sint voluptas sequi veritatis minus error. Odit officia harum id officiis sequi et illo.</p><p>Voluptatem non atque non et maxime molestiae. Quae ipsam earum at quo.</p><p>Qui et est sit omnis perferendis quidem. Molestiae quaerat quo ab suscipit voluptates repellat voluptatibus. Possimus est ullam neque.</p><p>Soluta dicta voluptate nihil impedit hic. Et quasi omnis ipsam voluptatibus sint eaque. Doloremque sunt amet libero harum veritatis deleniti. Mollitia rem ut minus dolores.</p><p>Quia voluptatum necessitatibus vel qui. In voluptas rerum incidunt sunt. Sit expedita qui esse quidem.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(11, 2, 1, 'Qui accusamus consectetur veniam et ipsa et voluptas vero.', 'nostrum-velit-corrupti-dolorem-qui-eum', NULL, 'Voluptate et ut officiis fugit quis dolor. Ipsa quo quia totam. Temporibus blanditiis molestiae delectus voluptas praesentium. Libero et earum ad.', '<p>Molestiae debitis ut omnis id culpa. Sunt iusto vitae eaque molestias in. Ut temporibus ut corporis rerum accusamus occaecati expedita voluptates. Minima est molestias aliquid ipsa.</p><p>Quos ut et vitae autem necessitatibus. A voluptas numquam sed ab recusandae ipsam. Iure ipsam aperiam illum porro voluptatem in. Non qui dolores magni.</p><p>Harum veritatis dignissimos enim similique ducimus facilis. Qui accusamus et tenetur consequatur perspiciatis. Veritatis excepturi sequi accusamus occaecati.</p><p>Totam quibusdam animi et dolor quo illo ut sit. Doloremque excepturi iste voluptates impedit doloremque reiciendis. Sunt sed quidem non atque.</p><p>Rem cum et perspiciatis aliquid accusantium. Id omnis dolor cumque qui voluptatem a in. Sint placeat et et consequatur ad est nulla.</p><p>Ipsa aut architecto libero eum aut qui doloremque. Impedit est atque temporibus tempore. Saepe facilis ipsa dolor. Deserunt sequi quod quisquam corporis sint. Nam doloremque provident vel quod sit provident.</p><p>Sit odit non amet natus voluptate itaque. Architecto omnis sint nostrum. Sed quae quia assumenda necessitatibus nam. Fugit fugiat et magni quod ut quidem.</p><p>Dolorem perferendis aut aspernatur dolor. Illum omnis aut sapiente sed eos et dolores et. Quae occaecati iste atque aliquid vitae tempore sed. Architecto accusantium et cupiditate consequatur.</p><p>Consequatur odio mollitia ut perferendis incidunt. Dolor delectus dolorum ullam id.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(12, 2, 1, 'Quae libero dolor sunt id voluptatem molestias.', 'dolores-ipsam-voluptatem-autem-exercitationem-quam-qui-dolorem-vitae', NULL, 'Porro soluta ut aut quia qui sed. Eum qui fuga explicabo voluptatem. Harum veniam voluptatem porro.', '<p>Molestiae et nam quaerat ut eius. Assumenda ratione cum mollitia perferendis. Cupiditate ipsum earum omnis vel.</p><p>Hic rerum quibusdam sunt temporibus aut consequatur. Nihil et soluta odio pariatur quod. Incidunt nulla omnis debitis dolor facere neque placeat.</p><p>Nulla placeat dicta soluta fugiat dolorem. Tenetur blanditiis officiis quos et. Explicabo eum dolore nulla deleniti.</p><p>Ut facilis explicabo eligendi consequatur facere rerum distinctio. Et ut dolor vitae veniam provident ut. Saepe nulla est nulla quidem esse aut et est. Reprehenderit quia consequatur dignissimos vero.</p><p>Ut illo est alias quam voluptatem quasi. Culpa ea ut eius harum. Et voluptate minus sit sequi numquam ea.</p><p>Aut velit expedita placeat dolores consequuntur. Odit similique tenetur temporibus est alias commodi. Quia consequatur repellendus eveniet iusto. Nihil dicta esse et animi ad. Aut qui suscipit impedit non saepe culpa qui.</p><p>Voluptas aspernatur occaecati laborum et neque. Dolorem quod sit quis rerum nihil. Ut corporis mollitia et rerum.</p><p>Quis sed nisi beatae eveniet et blanditiis. Sapiente libero dolores natus cupiditate. Voluptatem laudantium aut dolores odio rerum in porro non. Adipisci distinctio ipsum possimus pariatur rerum.</p>', NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(13, 2, 3, 'Provident ratione officia vel omnis maiores iusto et voluptas necessitatibus.', 'sequi-error-doloribus-explicabo-rerum-id-voluptates-ut', NULL, 'Enim iusto sequi ipsa laborum error. Tempora eius explicabo error possimus. Qui doloribus tempora aut dolores sint sed. Maiores fugiat magni sit excepturi distinctio doloribus quo omnis.', '<p>Minus et voluptatem laudantium excepturi architecto. Pariatur esse nostrum consequatur sunt quo. Perferendis et consequuntur consectetur voluptatem eum minima odit. Et corporis et aut natus sed animi laudantium.</p><p>Eveniet debitis quis possimus ut nihil eos ut. Molestias dolor voluptas illum adipisci distinctio hic in. Tempora ducimus molestiae quaerat.</p><p>Molestiae commodi qui illo aspernatur ipsam nihil. Veniam laudantium sunt exercitationem consequatur iste sunt.</p><p>Rerum quasi ea et odio aut. Veritatis voluptas distinctio quibusdam laboriosam provident ducimus veritatis eius. Ipsa facere omnis eum itaque.</p><p>Repellat laboriosam dignissimos sapiente officia sit. Dolores a pariatur voluptatem aspernatur expedita earum. Vero consequatur iste non et nobis ratione. Vel corporis sunt autem ut.</p><p>Quisquam autem et illum ab odit. Quo quae consequatur molestiae molestias. Aut ut id porro dolorum perferendis et eos.</p>', NULL, '2023-11-24 16:06:51', '2023-11-24 16:06:51'),
(14, 2, 2, 'Rerum rem.', 'sapiente-dolor-fugit-hic-ut-inventore-corrupti', NULL, 'Omnis sit magni aut omnis. Vero sit sunt eum quisquam sint fugiat quo. Voluptates vel similique et et. Rerum esse officiis quaerat.', '<p>Voluptate nulla aliquid autem eum commodi totam. Blanditiis totam repellat aut magni distinctio. Ea illo nisi non quia accusantium dolor assumenda.</p><p>Atque voluptatem sed consequatur iure autem aut. Quia aut in aut nemo aliquid sit vel. Qui itaque est laboriosam quos. Sint labore quia nihil qui porro repellat quibusdam.</p><p>Non occaecati qui dolores sapiente. Dolores id sunt quo aut. Omnis debitis aliquam provident. Rerum aliquam et autem sunt ut aut maiores. Veritatis voluptatem neque eaque reiciendis earum minus autem.</p><p>Voluptas facere magni ipsa provident non sed. Similique nemo incidunt id saepe laborum numquam. Fugiat recusandae ut debitis non possimus.</p><p>Ducimus illum id quam recusandae ea. Laborum quia quisquam et dolor mollitia.</p><p>Et cum cumque aut nemo magnam reiciendis. Et ut quae et at. Facere et vel nihil in ab rerum facere eos.</p>', NULL, '2023-11-24 16:06:51', '2023-11-24 16:06:51'),
(15, 2, 3, 'Eum mollitia quam eaque qui ut et quia excepturi laborum doloremque.', 'placeat-magnam-praesentium-id-nulla-qui-asperiores', NULL, 'Enim consequatur asperiores architecto qui porro occaecati vitae. Similique eum consequatur aut est. Est dolorem magni qui culpa officia iste. Illo maxime ducimus nesciunt qui. Itaque laudantium quaerat numquam voluptatum.', '<p>Consequatur neque voluptatem voluptatem veniam aut. Repellat officia quo est vel ex eum ad. Maiores nisi ipsa dignissimos at dolores ullam quisquam saepe.</p><p>Harum sit sed qui ut id maxime rerum. Nisi amet voluptates nostrum harum quam. Iusto illum hic sed omnis aut qui. Aut commodi itaque consectetur et reprehenderit voluptatem. Aliquam excepturi non atque laudantium vel.</p><p>Incidunt accusamus magnam quae dolores amet ab. Voluptatem vitae totam inventore expedita. Enim ut sed voluptates nisi tenetur soluta. Sint dolor eos quaerat totam facilis eveniet.</p><p>Ab dolor veritatis perferendis in itaque suscipit ducimus et. Sint voluptatibus voluptatibus eius. Porro est dolore placeat architecto. Beatae sint repudiandae enim deleniti animi deleniti laboriosam vero.</p><p>Illo sint accusantium unde quam cum vitae. Et architecto odio voluptatem reprehenderit. Et rerum sapiente ut.</p><p>Rerum ut voluptatum voluptatibus est quae iure eveniet. Ad eos esse voluptatem. Iure omnis mollitia quae assumenda nisi.</p><p>Est eligendi quaerat ducimus veritatis incidunt eos deleniti. Tempore velit voluptatem voluptatem aperiam autem at cumque. Ab quia deleniti dolore delectus consectetur ipsum quas.</p><p>Sit ab tempora qui velit vitae. Repellendus atque tenetur incidunt aliquam qui nulla ad ut. Tempora eveniet et ipsa accusamus.</p><p>Earum blanditiis qui culpa est numquam molestiae accusamus. Eaque reprehenderit qui non maiores maxime sunt. Aut provident id qui eos voluptas sunt quisquam. Accusamus dignissimos repellendus voluptas non quibusdam iusto.</p>', NULL, '2023-11-24 16:06:51', '2023-11-24 16:06:51'),
(16, 2, 2, 'Sunt velit cumque quas nisi dolores.', 'tenetur-veritatis-fugit-accusantium-ut-voluptate-non', NULL, 'Reiciendis facilis cum esse nihil tempore dolorem voluptas laborum. Labore veritatis ut explicabo et. Accusamus optio aut consequatur enim reiciendis. Fuga et consequatur incidunt. Omnis corrupti quis error omnis repellendus placeat deserunt.', '<p>Et veritatis alias quo reprehenderit voluptatem. Harum est voluptatem cum delectus maxime. Cumque qui nemo eveniet sed veritatis voluptatem quia. Rerum nostrum esse atque ullam vitae quis. Ut omnis ducimus exercitationem mollitia.</p><p>Provident aut dicta aliquid eius. Fuga nemo consequatur quibusdam autem sit omnis.</p><p>Qui aperiam earum voluptatibus. Ut deleniti nisi maiores minima laboriosam odit dolor. Ad sint et quis fugiat necessitatibus ipsum. Voluptatem quas cupiditate non occaecati. Voluptas molestiae maiores optio cumque qui qui blanditiis.</p><p>Fugit nostrum dignissimos veritatis et illo tempore temporibus. Libero fugit inventore tempore in provident laboriosam. Et laudantium nemo eligendi architecto vel quis. Voluptatem consequatur aut impedit sed fugiat. Commodi sit quis vitae laborum laborum sit.</p><p>Fugit ab in optio ut et. Et illo quos suscipit mollitia reprehenderit. Facilis a nobis temporibus natus.</p><p>Maxime illum vero iste inventore et. Optio repellat doloribus harum ex. Perferendis nisi consectetur laborum.</p><p>Quos laboriosam quos sed rem velit sint. Impedit laboriosam saepe adipisci velit. Libero voluptas asperiores et soluta.</p><p>Animi et repellendus sunt neque. Commodi ea quos aliquam alias cum veniam qui. Velit aut enim et molestiae amet cupiditate.</p><p>Tempore earum et aliquid. Repellendus quia iusto impedit explicabo aut et architecto. Dignissimos quo ex quod quis dolores rerum. Autem repudiandae quisquam dolor molestiae sunt sequi autem.</p><p>In quasi sint occaecati sit exercitationem. Suscipit a reprehenderit exercitationem. Nisi non accusamus alias nihil alias. Aut ipsum voluptatem laudantium.</p>', NULL, '2023-11-24 16:06:51', '2023-11-24 16:06:51'),
(17, 1, 3, 'Esse id mollitia quibusdam aliquid sint totam.', 'quia-soluta-deserunt-ex-iure-suscipit', NULL, 'Aut dignissimos ut recusandae voluptatibus. Voluptatibus hic consequatur voluptas maiores necessitatibus molestias. Aut dolore aliquam sequi molestias. Quas a non earum quidem.', '<p>Et quis atque ex quasi debitis dicta. Cupiditate impedit ullam et maxime.</p><p>Quas aut dolores neque dignissimos sit. Aliquid vel qui sed possimus id numquam in vel. Magni voluptatem laborum est quis accusantium sint.</p><p>In dicta officia iste et quo. Ea culpa est quaerat et laudantium eaque. Ut dolores eum tempore eum consequatur et quis quaerat. Itaque magni reiciendis explicabo vitae et qui adipisci.</p><p>Esse vitae incidunt dignissimos eum. Id est commodi sit sint. Amet quod reiciendis omnis fuga.</p><p>Voluptatem culpa dolorem amet pariatur consectetur velit voluptas. Exercitationem in natus cum quis. Quo quaerat vitae facere ut aliquam. Qui perspiciatis odio eveniet eum voluptate quia omnis quia.</p><p>Saepe quaerat minima et natus ratione nihil. Cum iure quia qui qui officia sed. Occaecati laboriosam enim neque sed id adipisci repellendus est.</p><p>Unde officiis facilis aut in nemo. Ratione sit saepe fuga nihil qui modi minus ducimus. Sed illo temporibus eaque et earum impedit et.</p><p>Reprehenderit corporis vero nobis explicabo. Nesciunt explicabo ipsum est et. In est cum beatae et voluptatem.</p>', NULL, '2023-11-24 16:06:51', '2023-11-24 16:06:51'),
(18, 2, 3, 'Ipsa ab quia possimus occaecati consectetur adipisci.', 'explicabo-eum-omnis-mollitia-necessitatibus-eos-nihil-qui', NULL, 'Aut voluptatem ipsum quia earum ratione officiis. Explicabo nihil quidem ut id et. Saepe quis id voluptas exercitationem iure sed laboriosam. Veniam qui est et perferendis odio.', '<p>Aut vero fuga ducimus similique eos cum libero. Aut mollitia eius consequatur praesentium veritatis. Est ea est perferendis nesciunt modi. Velit fuga sit non voluptatem.</p><p>Dolorem soluta fuga veritatis veniam minus in omnis sit. Eius voluptas totam eum soluta consequatur repudiandae sequi.</p><p>Cupiditate vitae eveniet officiis et sit. Architecto commodi quia eos expedita. Esse fuga explicabo cupiditate harum doloribus ipsam eum. Ipsam quam quod possimus neque accusamus voluptatibus.</p><p>Laboriosam non error voluptatem. Ipsum dolor temporibus in et. Sit ducimus tempore vel aperiam soluta rem beatae.</p><p>Voluptatibus rerum molestias aut. Ut illo sunt commodi occaecati enim natus laborum.</p><p>Consequatur ullam ut et. Voluptas vitae sed numquam omnis voluptatum labore. Dolorum magnam eos fugit. Maiores maxime beatae vel optio aut at odio. Dolor sit aut totam tempora vero a et.</p>', NULL, '2023-11-24 16:06:51', '2023-11-24 16:06:51'),
(19, 1, 3, 'Est ipsa facilis non possimus quibusdam et vel enim ab.', 'quos-maiores-provident-quia-quisquam-ut-dolores', NULL, 'Modi sunt rerum in veniam enim. Omnis quo modi aspernatur numquam consequatur. Dignissimos et enim tempore porro. Nemo tenetur voluptas sapiente dolores nulla consequatur.', '<p>Voluptatem reiciendis esse aut omnis. Sequi voluptatum impedit accusamus soluta. Officiis doloribus ut eum quod quisquam aspernatur. Non molestias necessitatibus asperiores distinctio dolor quae repellat voluptatem. Eius ratione numquam et adipisci.</p><p>Repellat suscipit dicta nostrum facere ut. Labore hic saepe nam qui aut. Dolor excepturi explicabo molestiae. Sed ut placeat et assumenda.</p><p>Et rerum eligendi cum dolore sed fuga. Atque veritatis inventore sed tempora et. Omnis distinctio atque aperiam repellendus. Eveniet ut sed praesentium maiores.</p><p>Voluptate ipsam eaque rerum fugiat recusandae. Pariatur et minus laborum est. Sit est libero aliquid facere deleniti. Temporibus fuga nihil omnis voluptatem unde quae dolorem.</p><p>Fugit voluptatum voluptates qui eum inventore et dignissimos. Hic reiciendis ullam error. Et ullam id velit voluptatem at vel omnis.</p><p>Est nemo ipsa expedita eum. Vero voluptatum doloremque suscipit modi. Blanditiis non minima iste et aperiam id voluptatem. Maxime illo dolore ut quam est nemo nulla.</p>', NULL, '2023-11-24 16:06:51', '2023-11-24 16:06:51'),
(20, 1, 1, 'Et consequatur veritatis.', 'voluptas-ipsum-aut-pariatur-facere', NULL, 'Minima id quidem cum sit soluta aperiam rerum. Dolorum velit ut deleniti quia. Dolores fuga ipsam minima repellat ea aliquam magni. Et laborum aut sint voluptatem laudantium.', '<p>Vel similique asperiores voluptatum iusto aliquam dolorem necessitatibus. Quia consequuntur qui et illum et voluptatem.</p><p>Architecto ea enim dolor quo et ipsa. Deserunt itaque consequatur et. Consequatur quidem sunt beatae blanditiis. Error labore at dolores harum. Incidunt consequatur est eos enim.</p><p>Dicta eveniet ab qui expedita quis et. Cumque aut iusto perspiciatis repudiandae molestias. Unde voluptas quis tenetur est aspernatur et quis nisi. Ab autem et in aliquid sed sint sed.</p><p>Delectus voluptatem atque corrupti quasi qui et. Veritatis labore et velit dolor sapiente in vitae. Consequatur distinctio nulla quasi accusamus expedita. Et tempore ab voluptatem nihil eligendi consequatur.</p><p>Tempora illo et sint quia animi quos ipsam. Placeat blanditiis aliquid est ea. Qui iusto dolores in et nisi perspiciatis.</p>', NULL, '2023-11-24 16:06:51', '2023-11-24 16:06:51'),
(23, 2, 1, 'Post Baru Lagi', 'post-baru-lagi', 'post-images/zKERCz6fY1IlYpTRJ4F7Au12aFEKC67VZhkmfyBs.jpg', 'Post Baru Lagi', '<div>Post Baru Lagi</div>', NULL, '2023-11-24 16:39:29', '2023-11-24 17:12:54');

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
(1, ' Putri Aulia Maulidina', 'ptriauliam', 'ptriauliam@gmail.com', '$2y$10$Pql8N6S38RJCl00kTrKcOeaqb1A7/hAkrnX2Q6NANB./wSxsbJusu', NULL, NULL, '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(2, 'Tri Prasasta', 'hariyah.ifa', 'srahimah@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-24 16:06:50', 'qB9HumzmUC', '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(3, 'Restu Mandasari', 'pratiwi.kawaca', 'suryono.dinda@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-24 16:06:50', 'UhxNY2ffSB', '2023-11-24 16:06:50', '2023-11-24 16:06:50'),
(4, 'Karma Viktor Ramadan S.Psi', 'aisyah.fujiati', 'shasanah@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-24 16:06:50', 'HekZzGEVj1', '2023-11-24 16:06:50', '2023-11-24 16:06:50');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
