-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Okt 2022 pada 09.03
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ambil_mk`
--

CREATE TABLE `ambil_mk` (
  `nim` int(3) NOT NULL,
  `kode_mk` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ambil_mk`
--

INSERT INTO `ambil_mk` (`nim`, `kode_mk`) VALUES
(101, 'PTI447'),
(103, 'TIK333'),
(104, 'PTI333'),
(104, 'PTI777'),
(111, 'PTI123'),
(123, 'PTI999');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(3) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jenis_kelamin`, `alamat`) VALUES
(101, 'Arif', 'L', 'Jl. Kenanga'),
(102, 'Budi', 'L', 'Jl. Jombang'),
(103, 'Wati', 'P', 'Jl. Surabaya'),
(104, 'Ika', 'P', 'Jl. Jombang'),
(105, 'Tono', 'L', 'Jl. Jakarta'),
(106, 'Iwan', 'L', 'Jl. Bandung'),
(107, 'Sari', 'P', 'Jl. Malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(6) NOT NULL,
  `nama_mk` varchar(255) NOT NULL,
  `sks` varchar(3) NOT NULL,
  `semester` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
('PTI447', 'Praktikum Basis Data', '1', '3'),
('TIK342', 'Praktikum Basis Data', '1', '3'),
('PTI333', 'Basis Data Terdistribusi', '3', '5'),
('TIK123', 'Jaringan Komputer', '2', '5'),
('TIK333', 'Sistem Operasi', '3', '5'),
('PTI123', 'Grafika Multimedia', '3', '5'),
('PTI777', 'Sistem Informasi', '2', '3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `nim` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
