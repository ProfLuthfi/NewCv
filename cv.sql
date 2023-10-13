-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Okt 2023 pada 05.25
-- Versi server: 8.1.0
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cv`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sekolah`
--

CREATE TABLE `tb_sekolah` (
  `id_user` int NOT NULL,
  `id_sekolah` int NOT NULL,
  `sekolah` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `jurusan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_sekolah`
--

INSERT INTO `tb_sekolah` (`id_user`, `id_sekolah`, `sekolah`, `tahun`, `jurusan`) VALUES
(1, 1, 'SD 1 Banjar', '2005', 'sains'),
(1, 2, 'SMP  1 JAYA', '2009', 'Fisika'),
(1, 3, 'SMA  1 JAYA', '2019', 'IPA'),
(2, 4, 'SD 1 Tasikmalaya', '2009', 'Aspal Jalan Kampung'),
(2, 5, 'SMP ASPAL JAYA ', '2019', 'Aspal Jalan Kota'),
(2, 6, 'SMA JAYA ASPAL', '2022', 'Aspal Jalan Tol'),
(3, 7, 'SD 1 Tasikmalaya', '2009', 'Sekertaris Cilik'),
(3, 8, 'SMP1 Tasikmalaya', '2015', 'Sekertaris Pertamana'),
(3, 9, 'SMA 1 Tasikmalaya', '2018', 'Sekertaris Pertamana 1'),
(4, 10, 'SD 1 Tasikmalaya', '2005', 'Speasialis Minuman'),
(4, 11, 'SMP 1 Tasikmalaya', '2019', 'Bartener Minuman'),
(4, 12, 'SMA 1 Tasikmalaya', '2022', 'Tataboga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_skill`
--

CREATE TABLE `tb_skill` (
  `id_user` int NOT NULL,
  `id_skill` int NOT NULL,
  `skill` varchar(50) NOT NULL,
  `lembaga` varchar(50) NOT NULL,
  `nilai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_skill`
--

INSERT INTO `tb_skill` (`id_user`, `id_skill`, `skill`, `lembaga`, `nilai`) VALUES
(1, 1, 'Ms.World', 'Jaya Komputer', '100'),
(1, 2, 'Adobe Illustrator', 'Jaya Komputer', '100'),
(1, 3, 'Photoshop', 'Jaya Komputer', '100'),
(2, 4, 'Pemeliharan Aspal', 'PUPR Student', '100'),
(2, 5, 'Sim Setum', 'PUPR Student', '100'),
(2, 6, 'Hot mix', 'PUPR Student', '100'),
(3, 7, 'Ms.World', 'Sekertaris World', '100'),
(3, 8, 'Ms.Exel', 'Sekertaris World', '100'),
(3, 9, 'Ms.PowerPoint', 'Sekertaris World', '100'),
(4, 10, 'Negotion Costumer', 'Costumer Service', '100'),
(4, 11, 'Bartener', 'Bartener Group', '100'),
(4, 12, 'Chef Officer', 'ChefGroup', '100');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `no_telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `fullname`, `email`, `job`, `no_telepon`) VALUES
(1, 'Muhammad Luthfi', 'Muhammadluthfi@gmail.com', 'Desain Grafis', '08998992856'),
(2, 'Irgi', 'Irgi@gmail.com', 'Kabag.Lapangan PUPR', '08998992857'),
(3, 'irvan', 'irvan@gmail.com', 'Sekertaris PUPR', '08998992858'),
(4, 'Faisal', 'Faisal@gmail.com', 'Kasir MIxue', '08998992859');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  ADD PRIMARY KEY (`id_sekolah`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_skill`
--
ALTER TABLE `tb_skill`
  ADD PRIMARY KEY (`id_skill`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  MODIFY `id_sekolah` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_skill`
--
ALTER TABLE `tb_skill`
  MODIFY `id_skill` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  ADD CONSTRAINT `tb_sekolah_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_skill`
--
ALTER TABLE `tb_skill`
  ADD CONSTRAINT `tb_skill_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
