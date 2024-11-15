-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8111
-- Waktu pembuatan: 15 Nov 2024 pada 08.05
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
-- Database: `i-perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(90) NOT NULL,
  `pesan` varchar(500) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `request`
--

INSERT INTO `request` (`id`, `user`, `nama`, `email`, `pesan`, `tanggal`) VALUES
(3, 'agung', 'setyo agung', 'setyoagungprab@gmail.com', 'joss ', '2024-11-07 21:30:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `nama_buku` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `tahun_terbit` int(4) NOT NULL,
  `jns_buku` varchar(100) NOT NULL,
  `cover_buku` varchar(100) NOT NULL,
  `file_buku` varchar(100) NOT NULL,
  `filetype` varchar(30) NOT NULL,
  `filedata` varchar(100) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `filesize` varchar(100) NOT NULL,
  `admin_input` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `upload`
--

INSERT INTO `upload` (`id`, `nama_buku`, `penerbit`, `pengarang`, `tahun_terbit`, `jns_buku`, `cover_buku`, `file_buku`, `filetype`, `filedata`, `nama_file`, `filesize`, `admin_input`) VALUES
(4, 'Capstone Project 32', 'Universitas Terbuka', 'Esa Firmansyah', 2000, 'Komputer', 'upload/cover/9781257236695_p0_v1_s1200x630.jpg', 'upload/file/Panduan membuat grup pada elearning_2.pdf', 'application/pdf', '%PDF-1.7\r\n%????\r\n1 0 obj\r\n<</Type/Catalog/Pages 2 0 R/Lang(en) /StructTreeRoot 44 0 R/MarkInfo<</Mar', 'Panduan membuat grup pada elearning_2.pdf', '763924', 'admin1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `level` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki - laki','Perempuan') NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_tlp` varchar(100) NOT NULL,
  `tgl_daftar` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`level`, `user`, `password`, `nama`, `tgl_lahir`, `jenis_kelamin`, `email`, `no_tlp`, `tgl_daftar`, `foto`) VALUES
(1, 'admin1', 'admin', 'Admin Utama', '2019-11-01', 'Laki - laki', '', '', '', ''),
(0, 'agung', 'agung1234', 'Agung', '2024-10-16', 'Laki - laki', '1231321@gmail.com', '123123123', '2024-11-10 17:55:49', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
