-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 04, 2023 at 04:31 PM
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
(1, ' Web Programming', 'web-programming', '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(2, ' Web Design', 'web-design', '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(3, ' Personal', 'personal', '2023-11-03 03:33:24', '2023-11-03 03:33:24');

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
(1, 1, 1, 'Ducimus velit minus sit et ut consectetur.', 'autem-quae-itaque-quia-accusantium-et', 'Voluptas enim non voluptates eligendi optio. Commodi quia non incidunt et aut molestias facere. Quidem delectus sed sed aspernatur voluptatum. Vel ut dolorum cumque quis suscipit quod id neque.', '<p>Ut sed voluptatem et deleniti laboriosam quam. Velit impedit dolores fugit. Reiciendis illo non deserunt similique laboriosam illum. Officiis natus ut debitis laborum.</p><p>A quia accusamus sapiente. Et est unde temporibus sit exercitationem et. Aut ab in veniam possimus.</p><p>Occaecati voluptatem dolor odit consequuntur. Suscipit officia in accusantium ipsam saepe. Iste aut suscipit doloremque ratione veritatis sunt. Fugiat reiciendis aut accusamus voluptas.</p><p>Tempora quae dolores et sit. Enim voluptates nostrum dolorem id blanditiis laborum. Necessitatibus voluptas tempore error veritatis.</p><p>Recusandae sed repudiandae numquam nihil alias quaerat. Est cum iste eos magnam quidem laborum ipsam. Accusamus voluptatum repellat quo est maiores. Esse mollitia vel molestias ratione.</p><p>Nobis sunt architecto qui sit et voluptatibus. Cupiditate autem aut voluptas minima pariatur eveniet unde. Dolores et iure non ad officia qui.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(2, 1, 3, 'Consequatur tempore.', 'quod-ipsa-non-est', 'Fuga nam magni nesciunt. Quis iure atque ab distinctio sit. Consequatur commodi excepturi labore tempora sit aut quis ut. Eius et consequuntur consequatur ut commodi libero incidunt.', '<p>Consectetur ipsum aut quis omnis voluptas asperiores voluptatum sapiente. Et sit consequuntur tempore et ut repellendus veritatis accusantium. Natus magni cum enim qui consequuntur. Quis fuga id et id consequatur.</p><p>Quo perferendis commodi et. Reiciendis nemo tenetur architecto pariatur odit deserunt et eum.</p><p>Dolores dolorem error non et soluta. Doloribus quo similique iusto odio maxime debitis est. Asperiores neque maiores vero laboriosam corporis est.</p><p>Quo omnis atque ut esse odit et. Quibusdam veritatis magnam asperiores rem qui unde nemo molestiae. Explicabo atque nemo dolorem vel repudiandae fuga aliquam.</p><p>Nobis quia rerum quo et. Suscipit numquam eius et aut. Dignissimos reprehenderit nihil dicta dolores. Cumque et aperiam autem numquam.</p><p>Est aut sequi velit officiis id. Dolor labore sequi assumenda esse error in. Quas aut reprehenderit et dolorum corrupti. Minima eos autem vel numquam numquam ipsam nihil. Provident dolorem repellendus accusamus asperiores.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(3, 1, 2, 'Neque officia ut nisi corrupti reiciendis ratione sunt incidunt explicabo.', 'voluptatem-molestiae-fugiat-repudiandae-odit', 'Autem rerum dolorum facilis omnis corrupti rem. Et inventore repellendus quibusdam quaerat animi. Enim debitis voluptatem quam asperiores vel tempora tempora.', '<p>Ut dolor ea quidem velit et hic officia. Iure soluta voluptates id.</p><p>Occaecati explicabo beatae mollitia ducimus ad ut ipsam vitae. Quisquam laudantium enim ut sit eius ex occaecati asperiores. Possimus quia cupiditate vitae cupiditate labore.</p><p>Officiis dolorum autem aut maiores tempora velit. Aliquid libero dolor eos. Aut molestiae minus explicabo atque et modi. Sit enim itaque aut impedit.</p><p>Quas officia illum rerum laudantium corporis similique est. Dignissimos sapiente qui velit dolorum aut. Voluptatem suscipit sapiente et architecto eum.</p><p>Tenetur laudantium cupiditate eum voluptate quis. Voluptatibus maxime voluptatibus corporis et consequatur. Deleniti velit cupiditate error sunt laborum. Est officia qui itaque labore.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(4, 1, 2, 'Aut laboriosam.', 'illo-porro-qui-et-ut-animi-mollitia-dolorem', 'Illum ut libero aspernatur rerum. Quia labore assumenda perferendis est tempore aut ut debitis. Odio quia maiores animi minima. Tenetur velit rerum in facilis.', '<p>Rerum aut est dolore necessitatibus et ut. Optio non deleniti velit. Molestiae consequatur quo quod corporis voluptatem qui eaque doloribus. Recusandae quaerat expedita quis aut est debitis.</p><p>Nihil dolores placeat corrupti cupiditate est. Et non id repellat deleniti magnam. Exercitationem dolores officia quis ut sapiente ut. Iusto non voluptatem nemo fugiat.</p><p>Quia officia dolorem voluptas mollitia eaque. Accusantium omnis nobis et ut consectetur voluptatem id et. Et illum consectetur minima suscipit minus ut. Nihil eligendi ratione facere in asperiores. Modi minima odio qui qui ipsa quia maxime.</p><p>Quisquam quia quis quia. Quae corrupti ipsa ipsam consequatur itaque eos. Sed et explicabo sit autem non. Qui dolores accusamus sed corporis sunt amet.</p><p>Amet iste iusto repellat odio eveniet hic alias. Ipsa provident amet error optio animi blanditiis expedita. Distinctio velit rerum nulla labore quidem. Eligendi voluptates dolores nihil ipsa.</p><p>Odio ut maxime omnis delectus. Aut cumque numquam accusamus iusto. Et omnis perspiciatis sed praesentium officia voluptatem. Autem molestias doloribus consequatur non aperiam expedita.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(5, 2, 3, 'Amet debitis ipsam similique.', 'ratione-tenetur-sunt-adipisci-nihil-necessitatibus-ab', 'Est sequi et vitae aperiam. Ullam veritatis est perferendis ducimus modi est. Iure et quia et omnis similique.', '<p>Aut neque similique rerum dolores. Id aliquid ab voluptatem architecto. Voluptatum et quaerat perferendis voluptatem et.</p><p>Sed ut ea et labore. Minus ab culpa eveniet aspernatur odio animi quia perspiciatis. Similique repudiandae omnis ipsam nisi suscipit. Repellat dicta sed omnis assumenda dolorem hic et.</p><p>Quasi nesciunt ab doloribus distinctio dolore eos. Magnam fugiat quia ut occaecati ratione. Error exercitationem quos explicabo aut. Nostrum consequatur ducimus omnis doloremque dicta corrupti.</p><p>Cupiditate eligendi totam mollitia ut tempore. Sunt qui aut placeat assumenda. Debitis fugit magni enim rerum tempore ut.</p><p>Accusamus non dicta autem accusantium. Ratione et doloribus eligendi dolorem in. Harum qui sed illum sequi et qui possimus. Nemo dolor quia sed quae occaecati porro.</p><p>Et eos voluptatem quia sunt et ut. Reiciendis praesentium nesciunt omnis sed ut illum debitis. Et et tempora porro alias odit quidem.</p><p>Accusantium consequatur aut dolorem. Dolorum et ut aut minima. Quisquam labore blanditiis blanditiis commodi a. Et est sit non perspiciatis.</p><p>Odio modi sit minima nobis doloribus in. Magnam vitae et architecto nulla id quaerat. Alias eos delectus iste dolores non.</p><p>Dignissimos rerum velit est dolores iste officiis. Sint quia libero neque voluptatem et. Alias maxime dolor enim iure nam eius. Et quia assumenda sunt a consequatur est. Fugit sit nisi laboriosam.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(6, 2, 2, 'Rerum tenetur cumque odio et nisi quos.', 'laudantium-ut-dolorem-omnis-possimus-dignissimos-aut-et-suscipit', 'Quis id ex illo eligendi ut sed tempore. Et itaque atque quia ut ullam blanditiis sed sint. Quibusdam nisi velit dolor.', '<p>Aspernatur quo iure temporibus. Error quae sit enim ullam qui. Dicta qui voluptas autem et quis quisquam voluptas aliquid.</p><p>Esse nam molestiae dolores qui. Consequuntur autem dolor aspernatur quam. Aliquam vitae perferendis ut ullam voluptatem fuga ab vel. Autem ducimus placeat magnam facere vel suscipit quia.</p><p>Ullam numquam et qui impedit maiores commodi pariatur. Ut rem libero et cum. Deserunt sed numquam blanditiis temporibus officiis quia.</p><p>Perferendis dignissimos quo velit aut culpa alias cumque nulla. Voluptatum suscipit qui mollitia consequatur cumque. Ut aut corporis est quis eveniet saepe.</p><p>Et et eum voluptatibus quod cum. Repudiandae incidunt rerum tempora ut recusandae. Dignissimos et ullam sequi soluta amet ut dolores. Voluptas consequatur aliquam sed exercitationem.</p><p>Voluptatum laborum inventore eaque fugit labore quo corrupti. Enim quia fugiat dicta. Aspernatur et distinctio totam voluptas ut delectus ut. Id officiis ipsam officia.</p><p>Voluptatibus ut nemo voluptatem et est culpa. Voluptas aspernatur et voluptatem. Vitae quia est non nisi voluptate consequatur delectus dolor. Beatae officiis voluptas corrupti.</p><p>Sed consequatur et fugiat fugit eum cupiditate sequi. Dolorum temporibus quam in provident et saepe aliquam maxime. Eum et quo quasi error adipisci repudiandae.</p><p>Consequatur minima doloribus sunt minus nihil. Ex quo et nemo sed quibusdam necessitatibus. Corrupti aut nam rerum est provident dignissimos rerum. Non adipisci consequuntur quo provident laboriosam veritatis neque ullam.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(7, 2, 1, 'Aspernatur ut nostrum non minima corporis dolore labore.', 'voluptas-et-aut-dolorem-aspernatur', 'Aut reprehenderit fugit dolores rerum. Blanditiis quas optio dolorum est aut qui.', '<p>Ex sed accusamus voluptatem quae maxime ea. Hic deleniti voluptas recusandae quae illum. Officia possimus cumque repellat. Nulla quidem voluptatem sit molestiae.</p><p>Aliquid excepturi praesentium et rerum. Quo non ut ea quia magnam et. Ut quo corrupti omnis explicabo reiciendis vero sed quos. Voluptatem iure quisquam dolorem similique est sint.</p><p>Commodi repudiandae est dolor laudantium. Unde sunt ut quisquam maiores. Est porro perferendis possimus quas dolorum molestias. Nulla et minus et molestiae ea reprehenderit.</p><p>Amet reprehenderit porro facilis illo. Necessitatibus in labore corrupti adipisci quod. Eum sequi sint quis ipsum.</p><p>Reiciendis fugiat aut sunt. Corrupti iusto est natus itaque aut quos inventore. Ducimus rerum similique pariatur fugit.</p><p>Mollitia quaerat repellat aut autem quaerat. Id explicabo deleniti fugit iste. Vero iste eius non aperiam aut alias.</p><p>Quia quia et dolor facilis. Possimus deserunt repellendus repellat veritatis. Quam recusandae voluptas non facere voluptates unde debitis. Eos qui similique est voluptates ut.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(8, 2, 3, 'Enim voluptatem ex omnis commodi occaecati.', 'dolor-nam-voluptas-enim', 'Corrupti consequatur aspernatur aliquid earum facere voluptates. Repudiandae dolor rem qui ad debitis est. Porro repellat odio ut voluptatibus expedita ad a. Deleniti quo non dolor labore quaerat.', '<p>Ut blanditiis excepturi in ex qui repudiandae. Illo in minus autem doloremque et pariatur voluptatem. Aliquid eum et eum saepe quos quas amet. Voluptatem magni eos ea.</p><p>Ab qui tenetur aliquam unde sint. Corporis ipsum consequuntur ad tempora sit. Modi qui quaerat eaque.</p><p>Iste ab tempora unde tenetur. Facilis est deserunt fuga iste sit soluta. Repellendus quae ipsum magnam est ut enim. Laudantium sunt sint facilis delectus.</p><p>Quos fugiat tempore similique officiis illum totam commodi. Ut in et rerum deleniti aut id rem tenetur. Non consequuntur nihil dicta sed sed dolor. Ratione quam aliquam veniam.</p><p>Dicta natus unde iste numquam illum quis. At quo nulla qui eius veniam. Pariatur dolorem voluptatem nisi recusandae in officiis consequatur. Repellat optio animi quo voluptatem praesentium velit nisi in.</p><p>Odit omnis et et est facilis quidem. Omnis enim facilis voluptatum fugit et omnis. Autem laboriosam et et voluptatem nostrum qui. Et ut rerum omnis expedita.</p><p>Debitis et et officia omnis. Exercitationem nisi beatae magni aut. Exercitationem vitae ullam ut quaerat mollitia dolore alias. Quo excepturi eos beatae voluptatem eos et.</p><p>Dolorem aut et non. Quidem vel eum rerum totam nesciunt et. Quibusdam et adipisci omnis deserunt.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(9, 1, 2, 'Vitae sint labore quasi laboriosam.', 'quia-eum-qui-vel-cumque-nobis-nam-explicabo-voluptatem', 'Omnis facere qui delectus aut hic. Quisquam id aut nihil consequatur itaque. Ea et facilis aut omnis. Ut nisi facere qui distinctio dolorum quasi pariatur. Magnam distinctio officiis dignissimos ut consequatur voluptatem.', '<p>Autem sit soluta esse ut nisi temporibus. Labore eos possimus fugiat aut.</p><p>Quas culpa laudantium debitis. Mollitia quae magnam neque ut autem consectetur. Enim exercitationem non quaerat sed quas esse in. Eligendi doloremque animi veritatis debitis.</p><p>Quo iste ut nemo amet consequuntur at id tempore. Molestias rerum libero ducimus animi iste. Cupiditate qui laboriosam quasi fugit. Rem officiis fugiat labore inventore dolor.</p><p>Exercitationem quis qui velit consectetur odio aspernatur aut omnis. Mollitia molestiae repellendus quia et dicta totam est. Adipisci corrupti voluptatem quos minima neque quam quis.</p><p>Voluptate unde quibusdam rerum cum officia unde non. Nisi magnam harum quo necessitatibus. Enim molestiae et dolores et quia deserunt distinctio. Nulla enim esse ducimus laboriosam autem optio in.</p><p>Qui veniam aliquam aut unde saepe aut enim. Vitae veritatis aspernatur aut iste repellat. Laudantium accusantium est consequatur voluptates. Provident et occaecati nobis. Voluptas necessitatibus qui placeat iusto accusantium.</p><p>Repellendus quod necessitatibus autem. Labore rerum alias reprehenderit fugiat aut commodi alias. Nobis ratione libero et voluptatem fugiat nulla qui. Molestiae quod quam amet tempora ut illum eos accusamus.</p><p>Suscipit expedita dolore inventore iste. Autem dolor dolorem doloremque itaque minus. Veritatis occaecati voluptate sapiente inventore. Unde sed omnis eum voluptatum illo molestias.</p><p>Possimus iste ipsam saepe omnis ducimus et. Dolorem impedit harum incidunt quidem reprehenderit. Enim veritatis libero quia eum veritatis eaque qui. Aut repellat quaerat consequatur distinctio quasi modi. Maxime repellat quibusdam iste quod.</p><p>Eum animi iste voluptatem dolor sunt. Dignissimos ut ut animi recusandae placeat. Similique praesentium doloribus voluptatem in ut inventore.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(10, 1, 1, 'Et eos sed quasi dolor omnis.', 'ipsum-corporis-dolores-sed-labore-dolorem-in', 'Odio vitae atque quisquam animi. Voluptatem recusandae distinctio sunt alias. Et eius quia omnis quibusdam. Harum nesciunt cupiditate laboriosam deleniti vitae.', '<p>Qui occaecati at numquam. Voluptatum quia aut voluptatem ducimus consequatur blanditiis. Id eos molestiae natus dolorem molestias nobis.</p><p>Est molestiae rerum a natus eum. Itaque ea vel error quia earum sit et. Maiores asperiores et consequatur numquam. Laudantium qui sed voluptatem reprehenderit assumenda minima iste.</p><p>Assumenda hic iure sed. Non similique deleniti doloremque eius magni repellat iure. Vel voluptatem harum voluptas quam iure.</p><p>Dolor et non est voluptates quo. Fugit temporibus inventore vel quod. Qui quo perspiciatis ex maiores. Culpa est odio eos enim voluptates. Officia reprehenderit aut culpa nisi repellat.</p><p>Inventore dolor itaque accusamus ipsam. Omnis a ea voluptas recusandae quia perferendis dolorem. Illo ex eum fuga velit mollitia nostrum.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(11, 2, 3, 'Tenetur non illum omnis et voluptatem nisi amet.', 'beatae-dolores-reiciendis-ut-non-suscipit-inventore', 'Natus non explicabo facilis facere eius dolor iste. Rerum impedit qui quaerat quaerat ipsam ut molestiae. Eum consequatur minima tempora quia est libero maxime. Nulla voluptatem nostrum consequatur est nam repellendus.', '<p>Quis adipisci accusantium doloribus voluptates. Aut aliquam aut et quod. Itaque velit et et aut.</p><p>Et ipsam ad et dolores impedit. Culpa qui impedit quaerat vel. Quidem asperiores nam ut enim rerum et quis.</p><p>Provident rerum et adipisci et nesciunt voluptatem repellat. Cupiditate consequatur adipisci tempore voluptates ex dolores nam temporibus. Quam omnis illum voluptatem quis. Qui blanditiis iusto quis recusandae illo.</p><p>Corporis id et ab esse ratione nam iure. Illum reprehenderit nulla vel vel qui quisquam qui. Consequuntur maiores sequi magnam repellat ipsum enim aut et.</p><p>Veniam nulla nam ut sunt. Ea ab veritatis minus velit consequatur quo voluptatibus amet. Eligendi reprehenderit odit rem voluptatem. Velit ab natus iure dolor facilis enim sit.</p><p>Consequatur accusantium natus quibusdam voluptatem. Molestias delectus officia quis ut dolorem optio. Veritatis expedita nostrum debitis sunt. Sapiente vel sed ea qui dolor.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(12, 1, 2, 'Voluptatem ad molestias perspiciatis laboriosam.', 'reiciendis-omnis-a-aut', 'In possimus cupiditate est dolorum illo quod ullam. Laboriosam doloremque dignissimos quasi et. Eum commodi ad et. Sed quas ut provident dicta consequatur recusandae. Sed officiis illo a cupiditate rem pariatur nihil.', '<p>Numquam quas et aliquid. Hic cupiditate perspiciatis possimus minima minus vel eaque. Maiores consequuntur et sint corporis aliquam harum maiores. Dolores aliquid velit eos architecto similique ut.</p><p>Magni ea praesentium id id labore. Vel doloribus officia modi culpa. Sunt vero mollitia et asperiores sapiente. Aut excepturi assumenda in est ut.</p><p>Optio dolorem explicabo sunt beatae. Tempore et dolores commodi expedita est aliquid numquam. Est non occaecati est quia repellendus et voluptas doloremque.</p><p>Et deleniti consequatur ratione repudiandae odit placeat minus. Quam rerum commodi pariatur et in. Pariatur architecto incidunt et eligendi officia soluta. Corrupti eum et facilis at et quod.</p><p>Nisi pariatur quisquam aut quasi cupiditate cumque sapiente nihil. Est nulla debitis quidem voluptas ut non vel. Distinctio atque qui autem quibusdam quam non. Quisquam quis iste corrupti laboriosam consequatur dolorem.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(13, 2, 1, 'Dolores unde qui.', 'est-numquam-fuga-ea-cupiditate-explicabo', 'Velit dignissimos aperiam quod autem distinctio cum dolorem. Ut aut reprehenderit culpa ut excepturi. Aut fugiat aspernatur sed alias non.', '<p>Eos id rem error non aut neque. Molestias qui sunt libero dolorem omnis quasi et. Accusantium sunt repellendus aut dignissimos.</p><p>Consequatur excepturi totam qui qui. Iusto quae itaque omnis eum autem. Pariatur quia ullam aut veritatis sed blanditiis.</p><p>Quasi reprehenderit debitis voluptas ullam inventore doloribus quam deleniti. Tempora magnam possimus id sequi. Adipisci et nihil dolorem rem porro sit omnis id. Distinctio reiciendis quo autem aut.</p><p>Fuga vel ipsam accusantium iure sed voluptas excepturi. Laboriosam incidunt molestiae commodi rerum similique ut vel incidunt. Illum totam fuga itaque.</p><p>Est ad officia aut quas. Maxime eligendi quos exercitationem nihil et voluptates dolorem. Laboriosam quia aut id culpa. Voluptas suscipit dolorem voluptas sequi doloremque architecto at.</p><p>Eos molestiae molestias aut nam maiores ipsam unde voluptatem. Nemo cumque aperiam unde et sequi sunt.</p><p>Minima vitae qui aut atque. Ea id laborum asperiores fugiat. Quibusdam ipsa animi ex repellendus.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(14, 1, 1, 'Facilis cum voluptates.', 'quos-perferendis-ut-corporis-quis-rerum-qui-natus', 'Quam nemo voluptatem qui eaque rem sequi nisi id. Quos occaecati similique sit sint quia nihil sed. Consectetur sed soluta sint quia maiores et. Possimus qui veniam sit reprehenderit qui labore reiciendis.', '<p>Eligendi quos ipsa sed aut. Voluptas maiores molestiae dolores aut dolores. Dicta sed animi odit qui qui.</p><p>Voluptatem deserunt fugiat ipsam omnis iure aut necessitatibus quod. Iure quaerat voluptatem quidem quas sed perspiciatis. Illo veritatis ipsam vitae fuga voluptatem.</p><p>Et dicta veritatis et dicta. Est eligendi voluptatem beatae culpa. Quaerat quam sed ullam magni veniam et veritatis dicta.</p><p>Sint cum aliquid aut dicta dolorem. Consectetur dicta soluta voluptas. Vel beatae eius corrupti quidem neque.</p><p>Repellat nihil vero reprehenderit aut iusto aspernatur ipsam. Voluptatem culpa assumenda perferendis minima et voluptatibus. Quasi mollitia est officiis impedit corrupti et.</p><p>Impedit occaecati rerum excepturi deleniti vel quae est nemo. Magni fuga eos recusandae a nesciunt voluptas quaerat. Voluptatibus cum est nostrum id vel consequatur.</p><p>Cupiditate laboriosam eius cum porro ut. Numquam modi labore sunt ut voluptatem illum id. Fuga nam reiciendis aut veritatis. Natus necessitatibus aut omnis ea possimus consequatur.</p><p>Dolores illum blanditiis iure omnis commodi nam aperiam. Et ab distinctio harum.</p><p>Ad dolorum et culpa quaerat. Sit libero earum sint omnis qui nam ut. Consequuntur magni voluptas voluptas non veniam.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(15, 1, 3, 'Soluta qui repellendus natus ipsa voluptatum similique.', 'architecto-laboriosam-ipsa-aut-ut-aut-repellendus-sequi', 'Eos excepturi debitis praesentium nam quaerat ut consequatur nostrum. Rerum sapiente ut et aperiam omnis architecto.', '<p>Quae ut quam sed voluptates aspernatur. Quibusdam in repudiandae facilis nulla. Animi non magnam ipsa voluptatem ad vitae dolores. Est exercitationem quia tempora et eos nisi accusantium eaque.</p><p>Sit fuga voluptatem aut magni officia. Nostrum fugit est cumque perspiciatis. Accusamus ex quisquam dignissimos qui et. Corporis voluptate animi voluptas cumque.</p><p>Similique sit aut error. Autem laudantium laudantium qui culpa. Quis consequatur aut quaerat ut. Cumque omnis ut minima nulla earum porro ut.</p><p>Voluptas veritatis autem ipsa dolorem. Iure voluptatem temporibus quasi fugit earum. Omnis id dignissimos optio. Voluptas dolores distinctio consequatur itaque asperiores consectetur nesciunt.</p><p>Vitae dolores accusantium ducimus tempora autem. Rerum magnam natus et quia doloribus culpa. Ipsam enim ut laudantium nam enim possimus.</p><p>Qui error fugit asperiores assumenda. Soluta quo culpa nulla et. Non voluptatem rem earum aliquam voluptatem.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(16, 2, 3, 'Eum repellendus est.', 'provident-iusto-modi-ut-qui', 'Expedita aperiam quia eveniet tempora. Odit omnis iste totam nisi temporibus possimus. Accusamus ea odit asperiores.', '<p>Nemo voluptates quibusdam consequatur qui. Sit illum accusamus ducimus. Sunt et non ullam vel.</p><p>Sint dolorum molestiae quisquam. Fuga consequatur eius dolores velit magni. Atque nihil voluptas quibusdam qui optio earum dolor. Ut veniam quidem quaerat officia et. Cum amet tempore ut reiciendis vel.</p><p>Ipsam voluptate voluptas unde illo iste hic voluptatem. Optio incidunt sequi et voluptate deserunt vel quia dolore. Animi omnis quo inventore ut. Minima qui adipisci impedit delectus.</p><p>Officia earum sit illo officia doloribus. Rerum earum non vel cupiditate earum blanditiis modi. Soluta molestias molestias sint. Distinctio voluptatem odio tempora et mollitia.</p><p>Labore culpa illo quod quod. Autem animi ut sed sint laboriosam aut necessitatibus minus. Culpa voluptatem ducimus ex earum omnis sapiente placeat reprehenderit. Quasi est impedit enim et debitis aperiam ratione voluptates. Enim corporis veritatis corrupti voluptatum sunt.</p><p>Ut praesentium perferendis distinctio quia labore. Nisi vero a nam. Eos nostrum molestias nemo nemo dolore et. Ut suscipit similique qui in dicta.</p><p>Et aut optio non. Provident exercitationem vel tempore itaque ut. Esse et dolores ut quia. Mollitia est exercitationem quos.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(17, 2, 3, 'Cumque et possimus beatae quas tenetur maiores.', 'minus-quis-enim-quas-nemo-id-incidunt', 'Possimus sapiente hic magni itaque. Architecto optio consequatur ut iste veritatis officia laborum. Deleniti odit aut voluptatem modi eum.', '<p>Rerum ut quia et facere ut omnis atque. Temporibus explicabo non commodi deserunt possimus. Consequatur delectus ullam rerum ut aut non voluptatem.</p><p>Beatae nihil rerum nesciunt quisquam sunt. Et odio delectus dolores. Quas voluptatem eos excepturi voluptas laboriosam.</p><p>Exercitationem omnis qui laudantium eligendi autem occaecati. Earum qui aspernatur nam. Temporibus qui at odit asperiores ut vel.</p><p>Ut laboriosam autem vitae illo qui qui non deleniti. Illum ab architecto nesciunt deserunt porro aliquid voluptas. Dolorem laudantium rerum neque similique architecto.</p><p>Vero dolorem qui saepe ducimus laboriosam sit. Asperiores fuga expedita accusamus consequatur itaque. Est eaque adipisci at qui suscipit.</p><p>Aperiam dolore ad aut et quas ipsa dolorem et. Eos et adipisci dolorum voluptas cum qui autem. Doloremque ea consectetur dolores sit omnis aperiam.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(18, 2, 1, 'Quo ut.', 'ullam-libero-rerum-ducimus-consequatur-ut', 'Necessitatibus quaerat distinctio quasi corrupti. Porro ut hic itaque explicabo aliquam et. Dignissimos rerum laboriosam accusantium ut. Corporis ipsum id et odio est rerum.', '<p>Tempore aspernatur maiores delectus rerum beatae. Itaque ipsa eius praesentium aliquid iste. Ea voluptas possimus numquam repellat. Cupiditate natus itaque qui enim incidunt esse.</p><p>Aliquid voluptatem voluptas est possimus aut. Eos sint velit sed modi doloremque nihil mollitia ut. Necessitatibus nihil eum quis eveniet ut expedita.</p><p>Est veritatis maiores dolore illo eius sint. Eius doloribus in voluptas harum. Nemo ut molestiae optio ut consequatur error nesciunt. Adipisci eaque quae omnis pariatur.</p><p>Excepturi minus facere at numquam consectetur sit. Dolorem perspiciatis facere sit error. Fugiat maxime aut adipisci ea repellendus quibusdam sunt. Aut laudantium quia id dolor enim velit.</p><p>Rerum officia et qui temporibus. Occaecati laborum qui est culpa repellat. Inventore error odit et repellendus magnam qui. Corporis consequatur aut sunt autem ut. Et reiciendis alias porro repudiandae rerum.</p><p>Expedita necessitatibus officia deserunt. Et ut fuga qui sit ipsum at. Temporibus quos optio ab recusandae. Saepe error officia excepturi recusandae.</p><p>Velit magnam perspiciatis et laudantium quibusdam. Qui impedit aut dolor in omnis eum. Delectus fugit quo earum qui consectetur neque. Odit quod dignissimos occaecati beatae suscipit.</p><p>Suscipit enim fugit numquam aut omnis. Iure explicabo repellendus amet. Consectetur quaerat maiores aliquam natus a iste voluptatem.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(19, 1, 1, 'Quo non dolor.', 'quidem-quas-sit-nostrum-unde-quasi-rem-est', 'Saepe ipsam aut sit et. Saepe rerum nemo sapiente alias aspernatur aliquid corrupti. Voluptatem voluptatibus ipsa debitis modi rem.', '<p>Magnam amet eveniet ut sunt laborum veniam magnam quibusdam. Est odit culpa dolorem perspiciatis. Ratione inventore et voluptatem. Exercitationem quos sequi at ut repellendus.</p><p>Nihil est quis nulla sed odio. Voluptatem dicta dolor natus. Ipsam ex blanditiis odit in.</p><p>Fuga est enim officiis voluptatem. Eos voluptatem qui molestiae ut aut. Consequatur nihil magni aut ducimus est eum in dolorem.</p><p>Cum est harum delectus amet. Fugiat ipsa omnis sit culpa ut aut. Vel eius aliquid ab. Id omnis nobis ad hic reprehenderit est optio.</p><p>Libero magni error officiis labore. Perspiciatis voluptas est impedit qui ea. Laboriosam occaecati adipisci eos.</p><p>Sit necessitatibus dolor sapiente explicabo et illum perferendis. Culpa rerum ullam vero odio nobis odit voluptatem cumque. Est omnis explicabo qui aut qui eius expedita ea.</p><p>Accusamus dolorem qui non corrupti. Quae vel quas consequatur quos aliquid quia. Quidem iure voluptatem ratione aut minima qui.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(20, 2, 2, 'Et quae ullam.', 'eum-est-qui-nulla-possimus', 'Consequatur vitae voluptatem quam praesentium repellat est laudantium. Quia quis nemo provident maxime vitae hic facere ducimus. Placeat iste aspernatur cupiditate consequatur corrupti.', '<p>Quo quo nam quos a voluptate. Omnis vero sit vero veritatis. Tempora magnam qui corporis impedit sit modi rerum. Corrupti maxime in voluptatem eum.</p><p>Unde libero aspernatur quos consectetur. Laboriosam unde rerum molestiae voluptatem distinctio sed. Voluptatibus culpa hic aut odio quos. Dolorem voluptatem ipsam vel ut omnis optio sit.</p><p>Consectetur ut aperiam aut aspernatur repellat iusto ut dolor. Omnis quia voluptas corrupti modi ut expedita facilis. Velit ut ducimus incidunt quisquam. Itaque atque aliquam velit quam reiciendis in sapiente.</p><p>Veritatis aliquid voluptates dolor accusantium occaecati mollitia ipsum. Sit laudantium et animi sed quo aut. Molestiae aut culpa aut rem quo vitae. Nam suscipit sequi dolorum architecto sapiente.</p><p>Facere aut omnis omnis aut. Voluptatum iste ipsum ex libero. Aut quos perferendis neque quas itaque.</p><p>Omnis facere voluptate ut totam sunt. Velit nihil nisi et qui repellendus. Modi amet sint ex sunt vero est odio provident. Expedita et sit quos odio consectetur. Architecto quibusdam enim magni omnis natus.</p>', NULL, '2023-11-03 03:33:24', '2023-11-03 03:33:24');

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
(1, 'Raden Natsir', 'sidiq.aryani', 'xprasasta@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-03 03:33:24', 'iqxxbfOAqO', '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(2, 'Paiman Habibi', 'jagaraga.winarno', 'eyuniar@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-03 03:33:24', 'cRgAPYqlmhxuEm2zBFkSpFIEd4lnAZXlqsvN3Hm8zG0LbUgV71JBASJCCavk', '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(3, 'Kambali Salahudin', 'janet94', 'laila54@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-11-03 03:33:24', 'qyshfhY9VJtRw6PQSMZ9hWDyALFeTq7rZwdpB4vqZkyElJiv97vA818kbEYr', '2023-11-03 03:33:24', '2023-11-03 03:33:24'),
(7, 'Putri Aulia Maulidina', 'ptriauliam', 'putriauliam@gmail.com', '$2y$10$tWfZvBmHV9qmqAbia8hhaOPRxEe8LgjTovLm221dJl.9DkPyGefsO', NULL, NULL, '2023-11-04 05:21:24', '2023-11-04 05:21:24');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
