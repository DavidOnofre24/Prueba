-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2020 a las 15:46:33
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blogtailwind`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_25_190128_create_projects_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 11, 'Lesch-Pollich', 'Fugit maiores dignissimos architecto cum nemo voluptas beatae optio. Odio omnis inventore in quia culpa et. Temporibus beatae labore quos veniam quis laboriosam dicta. Reprehenderit quibusdam harum est dolor odit eos rerum. Quos iure aut culpa esse dolorem dolore dolorem.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(2, 11, 'Quigley Ltd', 'Veniam modi minima doloribus sed. Debitis ullam nihil accusantium possimus. Eaque blanditiis iste voluptatibus odit quae.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(3, 11, 'Wolf, Bartoletti and Mitchell', 'Est possimus cupiditate vel perferendis. Soluta et est quas sapiente quia alias eveniet. Nesciunt unde facere a sint culpa voluptate perspiciatis molestiae.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(4, 11, 'McGlynn-Crist', 'Molestias dolor et expedita saepe dolorum. Voluptas numquam aut qui. Beatae molestias et et eum temporibus. Et nihil culpa iure aperiam dolorem tempore.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(5, 11, 'Schmidt LLC', 'Ut necessitatibus cumque voluptatem atque rem animi. Assumenda laboriosam similique molestiae ipsam eius aut sunt. Quam voluptatibus quisquam sed tempora sit optio aut.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(6, 11, 'Terry LLC', 'At laudantium numquam aspernatur et optio harum mollitia culpa. Perspiciatis aut sunt et expedita et. Iusto sequi alias cupiditate delectus quo assumenda.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(7, 11, 'Breitenberg LLC', 'Eos et totam vel doloribus ut placeat in. Maiores unde quis impedit accusantium qui enim. Iusto sed aliquid et distinctio corporis molestiae. Dolorem neque dolorem qui ratione dolorum ipsum.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(8, 11, 'Prohaska, Conroy and Mohr', 'Deserunt ea corrupti expedita praesentium eum. Sed consequatur est aliquam. Quis quam non ut omnis soluta quos.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(9, 11, 'Dickinson PLC', 'Pariatur est quidem excepturi eveniet ipsam inventore ut sint. Nisi error qui quisquam sint inventore et fugit. Consequatur qui est placeat explicabo occaecati.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(10, 11, 'Hagenes-McCullough', 'Excepturi omnis minima unde veniam tempore in architecto. Rerum numquam saepe omnis harum quia. Mollitia et quam adipisci corporis.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(11, 11, 'Murphy Group', 'Rerum veritatis quisquam officia et. Aut impedit inventore nobis est. Veritatis et nisi reprehenderit. Facilis cum in sed corporis at expedita. Cum atque ad in sed id.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(12, 11, 'Keeling Ltd', 'Corporis vitae quae nesciunt in. Eos quia laudantium odio aut. Natus suscipit beatae optio soluta rem. Quo repellendus voluptas necessitatibus maxime repudiandae laudantium earum.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(13, 11, 'Bogisich, Deckow and Hill', 'Quisquam dolores consequuntur eos assumenda facilis pariatur. Error aut consequatur et exercitationem.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(14, 11, 'Prohaska-Cormier', 'Et consequuntur voluptatum vitae nihil nam veritatis. Voluptates eaque veniam perferendis repudiandae fugit in et. Perspiciatis assumenda ex vel illo. A suscipit qui facere eos aspernatur cum.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(15, 11, 'Kassulke, Reilly and Auer', 'Minus et in autem nisi a et. Unde omnis praesentium vitae sunt corrupti praesentium inventore. Ad possimus facilis sit sint. Et saepe consectetur quo.', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(16, 11, 'Flatley, Johnson and Barrows', 'Similique sint aut deleniti ea ut. Et est perferendis illo voluptatem id quae. Et id hic fugit accusantium voluptatum. Ab ea rem consequatur voluptatem consequuntur ipsum quibusdam sed.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(17, 11, 'Crona-Satterfield', 'Nulla earum ducimus perferendis quis quas libero. Ipsa esse et quia facilis officiis. Qui nemo eos exercitationem voluptatum eos laudantium.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(18, 11, 'Bartell Inc', 'Fugit in et a distinctio est sed. Eaque minima molestias aut libero in minima. Enim consequatur non ab repellendus atque.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(19, 11, 'Bradtke, Frami and Becker', 'Ducimus doloremque explicabo quia assumenda nostrum. Laudantium amet exercitationem quae aut voluptatem sint. Aliquam non corrupti eos dolore.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(20, 11, 'Leannon-Brown', 'Qui natus quo dicta. A et error a beatae illum iste quas. Incidunt nostrum nobis illum quis laborum.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(21, 11, 'Torphy-Lakin', 'Delectus unde ad pariatur non possimus. Amet tempora sit esse non eius. At iure neque hic molestiae.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(22, 11, 'Funk Ltd', 'Dolorum officia laudantium velit minus. Consequuntur eos at ipsa numquam. Velit temporibus ipsam ipsa aut. Totam magnam eos amet aut repellat.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(23, 11, 'Reynolds-Hane', 'Voluptas iste quo molestiae sunt. Sed omnis excepturi id aut. Et at rem nihil quibusdam occaecati et odit.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(24, 11, 'Waelchi-Sauer', 'Eos ad et ea non. Nobis cum quis aut quo sint itaque. Repudiandae odit omnis deserunt tempora nemo.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(25, 11, 'Erdman, Schuppe and Fadel', 'Similique quidem quis suscipit similique. Commodi sunt dignissimos eveniet odit aut dolorem nisi. Exercitationem illum aut rerum porro. Velit voluptatibus et possimus repellat voluptatem.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(26, 11, 'West, McKenzie and Ferry', 'Nostrum sit sed et. Incidunt consequatur quia voluptatibus aliquam alias.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(27, 11, 'Gutkowski, Boyer and Wintheiser', 'Accusantium omnis accusantium earum omnis est repellendus laborum. Dolor aliquam itaque ut quia. Similique rerum tenetur et. Non officia explicabo fuga odio assumenda nobis sint. Ut in tempore et at quia.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(28, 11, 'Bednar-Blick', 'Labore sed et aut excepturi a consequuntur. Repellat reprehenderit soluta qui accusantium.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(29, 11, 'Murphy-Wolff', 'Qui nihil veniam qui fuga. Aspernatur saepe vel nulla accusantium unde ut expedita. Numquam placeat et hic voluptas.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(30, 11, 'Langworth, Cummings and Koss', 'Assumenda iste quia nulla iusto et. Nisi odio nam porro non officiis. Asperiores et dolorem nemo dolorum repudiandae modi. In pariatur velit voluptatem voluptatum.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(31, 11, 'Johnston PLC', 'Eius quis optio nulla voluptas. Est illo qui nobis dicta. Natus enim vel doloribus sed qui veritatis expedita. Natus voluptatibus et quia consequatur provident blanditiis quas omnis.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(32, 11, 'Lehner-Runte', 'Eius a fugit perferendis nihil quidem maxime nulla adipisci. Molestiae voluptas ullam voluptatem sed ipsam incidunt. Enim tempora quaerat odio esse.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(33, 11, 'O\'Reilly-Hermann', 'Nulla sed earum consequatur sit modi quis. Pariatur et sed quis quasi voluptate. Modi vel et ut. Aut error temporibus ut rerum quas non quo cumque.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(34, 11, 'Jast, Kirlin and Pfeffer', 'Ab iusto est officia in laudantium quam exercitationem. Qui autem vel recusandae sit nulla velit. Aut dolorem labore et corrupti.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(35, 11, 'Hackett-Miller', 'Autem sequi quaerat at maiores quaerat. Aut et nostrum voluptatibus et. Et aspernatur non dolorem. Hic corrupti enim a sit ipsum rem. Et quis dolor doloribus assumenda voluptas vitae.', '2020-09-26 02:20:47', '2020-09-26 02:20:48'),
(36, 11, 'Bashirian-Bode', 'Praesentium non at accusamus totam et harum accusantium. Delectus eligendi praesentium labore aut mollitia consequatur fugit. Similique quas vel eos repellendus ratione. Enim saepe optio voluptas est rerum. Commodi aut quae accusantium totam.', '2020-09-26 02:20:47', '2020-09-26 02:20:49'),
(37, 11, 'O\'Kon-Vandervort', 'A repellat nemo earum rerum culpa. Quas consequatur laborum sit dolores esse. Deserunt sunt inventore est officiis ut aliquid reiciendis.', '2020-09-26 02:20:47', '2020-09-26 02:20:49'),
(38, 11, 'Witting-Pouros', 'Qui non dolorem nobis laboriosam. Assumenda et et enim ipsam ex. Commodi laboriosam quasi ut et eum esse facilis. Ut eum ut dignissimos expedita sint nihil placeat cum. Dignissimos nobis voluptatum doloribus.', '2020-09-26 02:20:47', '2020-09-26 02:20:49'),
(39, 11, 'Dickinson and Sons', 'Corrupti nam et eum sapiente facere recusandae sint. Minima accusamus perferendis culpa exercitationem qui. Laborum repudiandae repellat facilis. Voluptatibus nihil occaecati aliquam enim fugiat consectetur.', '2020-09-26 02:20:47', '2020-09-26 02:20:49'),
(40, 11, 'Koelpin-Koelpin', 'Consequatur nulla ipsum necessitatibus cumque. Animi beatae quo quas natus inventore iste at. Atque asperiores officiis qui aut.', '2020-09-26 02:20:47', '2020-09-26 02:20:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'davidonofre', 'd@gmail.com', NULL, '$2y$10$mWGsvYe5sl.qdVwAFa8fVOaAdPXIeAUdLKwi2btsD7rXjZLpIQriW', 'MQWWorGOjq', '2020-09-26 02:20:47', '2020-09-26 02:20:47'),
(12, 'david', 'do@gmail.com', NULL, '$2y$10$ukLGtGDyl/1qVHBcFcna2OsIxnxqiJRBpqR/guZ4GC/Seijqlo1Hi', NULL, '2020-09-30 00:16:17', '2020-09-30 00:16:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_name_unique` (`name`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
