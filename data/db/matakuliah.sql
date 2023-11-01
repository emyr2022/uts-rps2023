-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 04:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matakuliah`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(12) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `jenkel_dosen` varchar(10) NOT NULL,
  `alamat_dosen` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_dosen`, `jenkel_dosen`, `alamat_dosen`) VALUES
('0527039002', 'Firman Asharudin, S.Kom, M.Kom', 'Pria', 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456'),
(2, 'emyr', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `kota_kelahiran` varchar(30) NOT NULL,
  `tanggal_kelahiran` date NOT NULL,
  `alamat` text NOT NULL,
  `program_studi` varchar(20) NOT NULL,
  `tahun_masuk` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jenis_kelamin`, `kota_kelahiran`, `tanggal_kelahiran`, `alamat`, `program_studi`, `tahun_masuk`) VALUES
('22014832', 'Emyr Firdausi Djarot', 'Pria', 'Malang', '2002-03-16', 'Tluki 6', 'D3 Teknik Informatik', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_matkul` varchar(12) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `sks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_matkul`, `nama_matkul`, `sks`) VALUES
('DT170', 'PERANCANGAN WEB 2', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `kode_matkul` varchar(12) NOT NULL,
  `semester` int(2) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `nim`, `kode_matkul`, `semester`, `nilai`) VALUES
(5, '22.01.4846', 'DT170', 3, 90);

-- --------------------------------------------------------

--
-- Table structure for table `pertemuan`
--

CREATE TABLE `pertemuan` (
  `id` int(11) NOT NULL,
  `kode_matkul` varchar(10) NOT NULL,
  `pertemuan_ke` int(11) NOT NULL,
  `materi` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pertemuan`
--

INSERT INTO `pertemuan` (`id`, `kode_matkul`, `pertemuan_ke`, `materi`, `deskripsi`, `created_at`, `updated_at`) VALUES
(3, 'DT170', 1, 'Menjelaskan konsep dasar website', 'Kontrak belajar 1 semester , Konsep dasar web ', '2023-11-01 13:25:28', '2023-11-01 13:29:38'),
(6, 'DT170', 2, 'Mengimplementasikan variable dan konstanta', 'Variable , Konstanta', '2023-11-01 13:36:50', '2023-11-01 13:36:50'),
(7, 'DT170', 3, 'Menjelaskan tentang percabangan', 'Percabangan', '2023-11-01 13:37:15', '2023-11-01 13:37:15'),
(8, 'DT170', 4, 'Mengimplementasikan percabangan ', 'Implementasi percabangan', '2023-11-01 13:37:49', '2023-11-01 13:37:49'),
(9, 'DT170', 5, 'Menjelaskan tentang perulangan', ' Konsep perulangan , Jenis-jenis perulanagan ', '2023-11-01 13:38:41', '2023-11-01 13:38:41'),
(10, 'DT170', 6, 'Mengimplementasikan perulangan ', 'ImpelemtaPerulangan', '2023-11-01 13:39:07', '2023-11-01 13:39:07'),
(11, 'DT170', 7, 'Menjelaskan tentang function & array', 'Konsep function & array', '2023-11-01 13:39:31', '2023-11-01 13:39:31'),
(12, 'DT170', 8, 'Mengimplementasikan function dan array ', 'Implementasi function & array', '2023-11-01 13:39:56', '2023-11-01 13:39:56'),
(13, 'DT170', 9, 'Menjelaskan tentang form inputan', 'Jenis-jenis form inputan ', '2023-11-01 13:40:35', '2023-11-01 13:40:41'),
(14, 'DT170', 10, 'Mengimplementasikan form inputan', 'Implementasi form inputan', '2023-11-01 13:41:12', '2023-11-01 13:41:12'),
(15, 'DT170', 11, 'Menjelaskan tentang database', 'Alur proses database ', '2023-11-01 13:41:34', '2023-11-01 13:41:34'),
(16, 'DT170', 12, 'Mengimplementasikan database', 'Implementasi database ', '2023-11-01 13:42:11', '2023-11-01 13:42:11'),
(17, 'DT170', 13, 'Menjelaskan tentang session atau hak akses', 'Hak akses', '2023-11-01 13:42:37', '2023-11-01 13:42:37'),
(18, 'DT170', 14, 'Mengimplementasikan session dalam form login', 'Membuat hak akses', '2023-11-01 13:43:00', '2023-11-01 13:43:00'),
(19, 'DT170', 15, 'Mengenal framework', 'Mengenal framework dan mengenal cara kerja framework, serta model MVC', '2023-11-01 13:44:33', '2023-11-01 13:44:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_matkul`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertemuan`
--
ALTER TABLE `pertemuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_matkul` (`kode_matkul`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pertemuan`
--
ALTER TABLE `pertemuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pertemuan`
--
ALTER TABLE `pertemuan`
  ADD CONSTRAINT `pertemuan_ibfk_1` FOREIGN KEY (`kode_matkul`) REFERENCES `matakuliah` (`kode_matkul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
