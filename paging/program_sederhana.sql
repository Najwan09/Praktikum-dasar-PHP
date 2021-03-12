-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2021 pada 07.48
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `program_sederhana`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(11) NOT NULL,
  `nama` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jenis_kelamin`, `telp`, `alamat`, `foto`) VALUES
('11223', 'Najwan', 'Laki-laki', '0898023337', 'kp.cipicung', '0103202113305728022021135834user.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_masjid`
--

CREATE TABLE `tb_masjid` (
  `Id` int(11) NOT NULL,
  `Nama_msj` varchar(50) NOT NULL,
  `Alamat` text NOT NULL,
  `Kecamatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_masjid`
--

INSERT INTO `tb_masjid` (`Id`, `Nama_msj`, `Alamat`, `Kecamatan`) VALUES
(1, 'Al-Mabrur', 'Tugu Juang', 'Baleendah'),
(2, 'Al-ikhlas', 'Cipicung', 'Baleendah'),
(3, 'Al-Qana\'ah', 'Cikopo', 'Ciparay'),
(4, 'Al-Mu\'min', 'Cangkring', 'Ciheulang'),
(5, 'Baiturrahman', 'Cipicung', 'Baleendah'),
(6, 'Al-istiqamah', 'Cipicung', 'Baleendah'),
(7, 'As-shurur', 'Cijapati', 'Majalaya'),
(8, 'An-nisa', 'batununggal', 'batununggal'),
(9, 'Istiqlal', 'taman wijaya', 'sawah besar'),
(10, 'Al akbar', 'pagesang', 'jambangan'),
(11, 'Kubah Mas', 'meruyung', 'Limo'),
(12, 'Raya Makasar', 'Goddong', 'bontoala'),
(13, 'At-tin', 'taman mini', 'makasar'),
(14, 'Rahmatan lil Alamin', 'mekarjaya', 'gantar'),
(15, 'Al mashum', 'singsingmangaraja', 'medan kota'),
(16, 'Nabawi', 'mekkah', 'arab'),
(17, 'Qiblatain', 'Madinah', 'Arab saudi'),
(18, 'Masjidil Aqsa', 'Baitul maqdis', 'palestina'),
(19, 'Menara kudus', 'kudus', 'kudus'),
(20, 'Al-hidayah', 'bandung', 'bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin123', 'admin'),
(2, 'pegawai', 'pegawai', 'pegawai123', 'pegawai'),
(3, 'pengurus', 'pengurus', 'pengurus123', 'pengurus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user1`
--

CREATE TABLE `user1` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user1`
--

INSERT INTO `user1` (`id`, `nama`, `alamat`, `pekerjaan`) VALUES
(1, 'Andi', 'Surabaya', 'web programmer'),
(2, 'Santoso', 'Jakarta', 'Web designer'),
(3, 'Samsul', 'Sumedang', 'Pegawai'),
(5, 'Najwan', 'Bandung', 'Pelajar');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_masjid`
--
ALTER TABLE `tb_masjid`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_masjid`
--
ALTER TABLE `tb_masjid`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
