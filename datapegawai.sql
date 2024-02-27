-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Feb 2024 pada 05.25
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datapegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_23_040533_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `job` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `image`, `nama`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `job`, `created_at`, `updated_at`) VALUES
(7, 'EEY8xux53XaREaYgIEaiBYbRHsBAm0gLyMejiyjh.jpg', 'Zeta Yoon', 'Kopo', 'Bandung', '2006-11-19', 'Laki-laki', 'Guru', '2022-07-11', 'Front-end', '2024-02-05 21:16:42', '2024-02-26 20:14:40'),
(11, 's4QCwjMrW36BjZQiZTUy07M3wR89SCpy5YAsl4og.jpg', 'Luis Fatan', 'Melong', 'Bandung', '2006-04-15', 'Laki-laki', 'Staff', '2021-06-15', 'Software Engineering', '2024-02-26 19:22:22', '2024-02-26 20:13:06'),
(12, '9jCTYIJ4hzkQA8kaW4QDBkxUnUHtk3eeQJeo0Hke.jpg', 'vanitas', 'jl.bogem', 'Hell', '2018-06-12', 'Laki-laki', 'Staff', '2024-02-08', '<p>saya ingin&nbsp;</p>', '2024-02-26 20:16:41', '2024-02-26 20:16:41'),
(13, 'EQHYA5P3UrsMMWNwzolTE1Vo5AwctgKy3WrWZHvZ.jpg', 'nuwa', 'jl pojok', 'Belanda', '2024-01-29', 'Perempuan', 'Guru', '2024-02-01', 'mau', '2024-02-26 20:24:08', '2024-02-26 20:24:08'),
(14, 'Y4O7BEP7FYEGUaiNIfmUGL2JMGeb6S1LpHnaivz1.jpg', 'kuroko', 'rewtewtew', 'wetert', '2024-02-05', 'Laki-laki', 'Staff', '2024-02-01', 'ah', '2024-02-26 20:25:10', '2024-02-26 20:25:10'),
(15, '3wEYIaEfhFIByRDcKba4HCdk73YjLhVGvBHcRHoO.jpg', 'eimi', 'ytthtt', 'japan', '2024-02-06', 'Perempuan', 'Guru', '2024-02-05', 'aha', '2024-02-26 20:28:29', '2024-02-26 20:28:29'),
(16, 'ex5pwKpVdinm01t5qFqZQoSSoq22UajuSEZRESR4.jpg', 'vergil', 'grherh', 'hghgrhr', '2024-02-07', 'Laki-laki', 'Guru', '2024-02-07', 'gfhh', '2024-02-26 20:29:12', '2024-02-26 20:29:12'),
(17, 'BmH3ZY2rJGlZqF0ONoHE16A3WhjEWTTZW8LLubLh.jpg', 'jin', 'nthntrn', 'thjtyjtyj', '2026-06-27', 'Laki-laki', 'Staff', '2024-02-09', 'yyyru', '2024-02-26 20:29:49', '2024-02-26 20:29:49'),
(18, 'zO1JEdhAe5JxjNBI6kakH0rG54Bfa0AdCFgHvft5.jpg', 'reina', 'iyuity', 'hghdhg', '2023-12-14', 'Perempuan', 'Staff', '2023-11-20', '<p>ghdhd</p>', '2024-02-26 20:31:28', '2024-02-26 20:31:28'),
(19, 'kYszpoXkwbdkEPTQE6gjo3tvPjDYD0TvdG8NbJpF.jpg', 'anna', 'khjkgh', 'hjkghjk', '2023-04-12', 'Perempuan', 'Staff', '2023-08-10', 'kjhkghkg', '2024-02-26 20:32:36', '2024-02-26 20:32:36'),
(20, 'MTmYLtuhMra1VfnXGCAFwS0LFMuPTu67t2mDji2N.jpg', 'Napoleon Bonaparte', 'hrxh', 'franch', '2023-05-25', 'Perempuan', 'Guru', '2023-10-11', '<p>ytuitity</p>', '2024-02-26 20:38:47', '2024-02-26 20:39:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(2255) NOT NULL,
  `verify_key` varchar(100) NOT NULL,
  `active` int(1) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `verify_key`, `active`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'asd@gmail.com', 'alzeta', 'CuZIF2KwBYJtvuyxqKHqqoLSaXaPkVxta2ctd7agOFDnXzuITw0Xl6gXKElUpNMM7NTHgFMx6LGWXJqJcI5PHJ5iwVujcnGaxSOK', 1, NULL, '$2y$12$bEQrcG0.dxL0x9Sb0z1Lcugsy8iDZbUwNT/9jJV5rvVRVamJTdq8a', 'Guest', NULL, '2024-01-29 23:49:47', '2024-01-29 23:49:47'),
(6, 'aswd@gmail.com', 'zaben', '3IoNTq5UxIb9QaI5Jx2F1Gyx0poUaRU9pcSP9uyPfyNvF1F6JfqL0mOTVZKHL3vlnf8FxkfoyDqGSAx5m4dHUDI7whkzM72ocKft', 1, NULL, '$2y$12$CuKUZfGy2r9zrOkafxV.i.0gUHdDQzuLxPRS7hIPoqkogUAqd1ZhG', 'Guest', NULL, '2024-02-05 17:05:39', '2024-02-05 17:05:39'),
(7, 'afs@gmail.com', 'zenn', '266El3haTj0aZ2F2easTRLmFFZ1JZDI22ROQc88AIhWHByw4lWezpoigxdYW3AR1eQuiixdD5vuhzre3GEiy0YNQ3MfERiKhQi3M', 1, NULL, '$2y$12$rWE3VIFqjK0Yf.0gxoT/Q.bQQhGMIPCKWgudEpMBK6CB47ndlmLYq', 'Guest', NULL, '2024-02-05 17:06:40', '2024-02-05 17:06:40'),
(8, 'woi@gmail.com', 'atminjeta', 'dSNGbT7pFjZIV3ZcTGb6FzXyQTueFPoZhANUbxeRctkHpijQ76A0Jc58vpLfjNVfKrzPm4hhUCDiS7x9AnIAB2MPwZnhuxwnWWLj', 1, NULL, '$2y$12$OCck3qUuM3ll0FSU6onkH.Hfmn7Q6GfBbWiFKzWnIOD5MiDEICoke', 'Guest', NULL, '2024-02-05 18:25:11', '2024-02-05 18:25:11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
