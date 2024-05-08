-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 09 mai 2024 à 01:28
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `université`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `university_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `university_id`, `comment`, `created_at`, `updated_at`) VALUES
(26, 4, 3, 'ain d’Informatique, Représentation du Togo (IAI-TOGO) est une représentation de l’IAI qui a été créé le 29 janvier 1971 à Fort Lamy (actuel Ndjaména) en république du TCHAD. Son siège est à Libreville au Gabon. C’est un établissement d’enseignement supérieur en informatique. L’accord d’établissement entre l’IAI et la république Togolaise a été signé le 12 mai 2006 à Lomé. .\r\n\r\nLocation: Lomé,Togo', '2024-05-07 13:00:21', '2024-05-07 13:00:21'),
(32, 6, 3, 'L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.', '2024-05-07 15:24:45', '2024-05-07 15:24:45'),
(36, 4, 1, 'L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.', '2024-05-07 18:56:33', '2024-05-07 18:56:33');

-- --------------------------------------------------------

--
-- Structure de la table `criteria`
--

CREATE TABLE `criteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(65, '2014_10_12_000000_create_users_table', 1),
(70, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(71, '2019_08_19_000000_create_failed_jobs_table', 2),
(72, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(73, '2024_04_25_213111_universities', 2),
(74, '2024_04_25_213136_ratings', 2),
(75, '2024_04_25_213158_comments', 2),
(76, '2024_04_28_100650_create_permission_tables', 2),
(77, '2024_04_28_121728_create_role_user_table', 2),
(78, '2024_04_29_122124_criteria', 2),
(79, '2024_05_04_224235_add_criteria_to_ratings_table', 3),
(80, '2024_05_04_224856_add_average_score_to_ratings_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `university_id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quality` int(11) NOT NULL,
  `research` int(11) NOT NULL,
  `student_life` int(11) NOT NULL,
  `student_support` int(11) NOT NULL,
  `average_score` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `university_id`, `score`, `created_at`, `updated_at`, `quality`, `research`, `student_life`, `student_support`, `average_score`) VALUES
(24, 6, 2, 0, '2024-05-06 14:48:50', '2024-05-06 14:48:50', 1, 1, 1, 1, 1.00),
(28, 5, 2, 0, '2024-05-06 19:35:30', '2024-05-06 19:35:30', 4, 5, 4, 4, 4.25),
(29, 4, 2, 0, '2024-05-07 07:47:44', '2024-05-07 07:47:44', 3, 4, 3, 3, 3.25),
(30, 4, 1, 0, '2024-05-07 13:02:48', '2024-05-07 13:02:48', 4, 5, 3, 1, 3.25),
(31, 4, 3, 0, '2024-05-07 13:03:04', '2024-05-07 13:03:04', 2, 5, 4, 3, 3.50),
(33, 6, 1, 0, '2024-05-07 15:23:25', '2024-05-07 15:23:25', 4, 5, 3, 1, 3.25),
(34, 6, 3, 0, '2024-05-07 15:24:37', '2024-05-07 15:24:37', 3, 3, 3, 3, 3.00);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-04-29 12:50:02', '2024-04-29 12:50:02');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `universities`
--

CREATE TABLE `universities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `universities`
--

INSERT INTO `universities` (`id`, `name`, `description`, `location`, `website`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Université de Lomé', 'L\'\'université de Lomé\' est une université publique située à Lomé, la capitale du Togo. En 2015, son effectif était estimé à 44 525 étudiants, dont 565 étaient des étrangers.', 'Lomé,Togo', 'https://univ-lome.tg/', 'logos/images.png', '2024-04-29 22:01:30', '2024-04-29 22:01:30'),
(2, 'Université de La kara', 'L\'université de Kara est une université publique d\'Afrique de l\'Ouest .Elle est située dans la ville de Kara au nord du Togo. Fondée en 2004, elle est l\'une des deux universités d\'enseignement supérieur du Togo après l\'université de Lomé', 'N.19, Kara-Togo\r\n', '\r\nhttps://univ-Kara.tg/', 'logos/PkcsnU8DPF6jPbwy8lBA5n4vvrovEA0pLZ2cIZ4h.jpg', '2024-04-29 22:17:49', '2024-04-29 22:17:49'),
(3, 'IAI-TOGO', 'L’institut Africain d’Informatique, Représentation du Togo (IAI-TOGO) est une représentation de l’IAI qui a été créé le 29 janvier 1971 à Fort Lamy (actuel Ndjaména) en république du TCHAD. Son siège est à Libreville au Gabon. C’est un établissement d’enseignement supérieur en informatique. L’accord d’établissement entre l’IAI et la république Togolaise a été signé le 12 mai 2006 à Lomé. .', 'Lomé,Togo', 'https://new.iai-togo.tg/', 'logos/oMyz9NlG6tO7iO08tmIKVliIUy2zZYy7HLtLXg8T.jpg', '2024-04-29 22:21:29', '2024-04-29 22:21:29');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin@gmail.com', '2024-04-29 12:50:08', '$2y$12$NTVeDRorb7LZjp4Ja2XjKOKoIe10/QFPKadUi5L4/jr3NjUoh686G', 'SU5WgW2CteGrKkvqBDimm8lllcSr9nro4OKLE0l95ZRWAYpbSV6Ky2OUZeO5', '2024-04-29 12:50:08', '2024-04-29 12:50:08'),
(4, 'Jody Afanou', 'jodyafanou05@gmail.com', NULL, '$2y$12$pb.SiPNFwOSOBPVJyvy2z.iIAgJ8PqhgZUiIAv8.pc.rxKX.axU2e', NULL, '2024-04-30 19:38:28', '2024-04-30 19:38:28'),
(5, 'Jody', 'jodyafanou05p@gmail.com', NULL, '$2y$12$PykdDccxJWFld9ZxCt0GCOyvC7OrhgNY.cpumvZDlyf1PMNy36sl6', NULL, '2024-05-06 14:14:13', '2024-05-06 14:14:13'),
(6, 'isaac', 'isaac8@gmail.com', NULL, '$2y$12$cZPqK7yBSYx2bOtUdtorg.yGirVtzbyprHkAaezA9jSAUvCeulKc2', NULL, '2024-05-06 14:31:33', '2024-05-06 14:31:33');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_university_id_foreign` (`university_id`);

--
-- Index pour la table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_university_id_foreign` (`university_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD UNIQUE KEY `role_user_role_id_user_id_unique` (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Index pour la table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
