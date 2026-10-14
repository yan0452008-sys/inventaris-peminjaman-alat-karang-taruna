-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2026 at 05:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karang_taruna`
--

-- --------------------------------------------------------

--
-- Table structure for table `alat`
--

CREATE TABLE `alat` (
  `id_alat` int(11) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `kondisi` varchar(50) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `status` enum('Tersedia','Dipinjam','Rusak') DEFAULT 'Tersedia',
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alat`
--

INSERT INTO `alat` (`id_alat`, `nama_alat`, `kategori`, `jumlah`, `kondisi`, `lokasi`, `status`, `keterangan`) VALUES
(1, 'Meja', 'Perlengkapan', 40, 'Baik', 'Rumah Bekakas', 'Tersedia', 'Lengkap dan Baik'),
(2, 'Tamplak Meja', 'Perlengkapan', 40, 'Baik', 'Rumah Bekakas', 'Tersedia', 'Lengkap dan Baik'),
(3, 'Kipas Blower', 'Elektronik', 4, 'Baik', 'Rumah Bekakas', 'Tersedia', 'Baik '),
(4, 'Lampu', 'Elektronik', 20, 'Baik', 'Rumah Bekakas', 'Tersedia', 'Lengkap dan Baik'),
(5, 'Tikar', 'Perlengkapan', 14, 'Baik', 'Rumah Bekakas', 'Tersedia', 'Baik'),
(6, 'Panggung', 'Perlengkapan', 1, 'Baik', 'Rumah Bekakas', 'Tersedia', 'Baik'),
(7, 'Kursi', 'Perlengkapan', 85, 'Baik', 'Rumah Bekakas', 'Tersedia', 'Lengkap dan Baik');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `jenis_kelamin`, `alamat`, `no_hp`, `jabatan`) VALUES
(3, 'Faizal', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 881-0260-47', 'Anggota'),
(4, 'Arman', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 897-96778-8', 'Anggota'),
(5, 'Neto', 'Laki-laki', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 737-8372-39', 'Anggota'),
(6, 'Rezky', 'Laki-laki', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 764-7658-98', 'Anggota'),
(7, 'Fahmi', 'Laki-laki', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 7765-8655-8', 'Anggota'),
(8, 'Ilham', 'Laki-laki', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 8755-9877-9', 'Anggota'),
(9, 'Refan', 'Laki-laki', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 9765-822-28', 'Anggota'),
(10, 'Sigit', 'Laki-laki', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 3836-3837-2', 'Anggota'),
(11, 'Eko', 'Laki-laki', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 936-3473-33', 'Anggota'),
(12, 'Rizky', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 3537-3737-8', 'Anggota'),
(13, 'Heri Apri', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 4447-8575-5', 'Anggota'),
(14, 'Heri Aji P', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 844-4644-84', 'Anggota'),
(15, 'Bagus', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 866-7655-76', 'Anggota'),
(16, 'Ilham', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 725-7262-82', 'Anggota'),
(17, 'Dimas', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 263-7222-97', 'Anggota'),
(18, 'Brian', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 9776-2828-7', 'Anggota'),
(19, 'Bintang', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 8258-2726-2', 'Anggota'),
(20, 'Andi', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 6373-2872-2', 'Anggota'),
(21, 'Nabila', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 9277-2782-2', 'Anggota'),
(22, 'Tiur', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 8362-6363-3', 'Anggota'),
(23, 'Cindy', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 922-7328-28', 'Anggota'),
(24, 'Nisa', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 287-2683-93', 'Anggota'),
(25, 'Vina', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 937-2738-37', 'Anggota'),
(26, 'Puput', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 635-3733-37', 'Anggota'),
(27, 'Feby', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 2338-3838-3', 'Anggota'),
(28, 'Widhi', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 9373-3822-2', 'Anggota'),
(29, 'Tya', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 7338-2928-3', 'Anggota'),
(30, 'Yanti', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 2728-3823-2', 'Anggota'),
(31, 'Decha', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 3738-3873-3', 'Anggota'),
(32, 'Yeni', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 874-3344-73', 'Anggota'),
(33, 'Deva', 'Perempuan', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 4569-9879-5', 'Anggota'),
(34, 'Etik', 'Perempuan', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 5678-987-87', 'Anggota'),
(35, 'Manda', 'Perempuan', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 345-7588-09', 'Anggota'),
(36, 'Putri', 'Perempuan', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 3364-4343-3', 'Anggota'),
(37, 'Yuni', 'Perempuan', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 5888-998-98', 'Anggota'),
(38, 'Emi', 'Perempuan', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 889-7644-22', 'Anggota'),
(39, 'Nailah', 'Perempuan', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 556-9869-09', 'Anggota'),
(40, 'Yani', 'Perempuan', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 457-9870-09', 'Sekretaris'),
(41, 'Indah', 'Perempuan', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 4560-987-97', 'Sekretaris'),
(42, 'Nazwa', 'Perempuan', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 456-9806-08', 'Bendahara'),
(43, 'Malva', 'Perempuan', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 567-0876-97', 'Bendahara'),
(44, 'Alfiah', 'Perempuan', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 336-9447-59', 'Wakil Ketua'),
(45, 'Adit', 'Laki-laki', 'RT 10/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 753-9373-38', 'Wakil Ketua'),
(46, 'Farid', 'Laki-laki', 'RT 11/RW 05 JETIS, TIRTOMARTO, CAWAS', '+62 574-9076-86', 'Ketua');

-- --------------------------------------------------------

--
-- Table structure for table `detail_peminjaman`
--

CREATE TABLE `detail_peminjaman` (
  `id_detail` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_alat` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `nama_peminjam` varchar(100) DEFAULT NULL,
  `id_alat` int(11) DEFAULT NULL,
  `jumlah_pinjam` int(11) NOT NULL DEFAULT 1,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `keperluan` text DEFAULT NULL,
  `status` enum('Menunggu','Disetujui','Ditolak','Selesai') DEFAULT 'Menunggu',
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `nama_peminjam`, `id_alat`, `jumlah_pinjam`, `tanggal_pinjam`, `tanggal_kembali`, `keperluan`, `status`, `id_user`) VALUES
(1, 'anggota', 7, 5, '2026-10-13', '2026-10-17', 'untuk kegiatan pengajian', 'Selesai', 2),
(2, 'anggota', 7, 5, '2026-10-13', '2026-10-17', 'untuk kegiatan pengajian', 'Selesai', 2),
(3, 'anggota', 2, 1, '2026-10-13', '2026-10-14', 'pengajian', 'Selesai', 2),
(4, 'warga_baru', 3, 1, '2026-10-14', '2026-10-17', 'Acara Keluarga', 'Selesai', 3),
(5, 'Alfiah', 1, 1, '2026-10-14', '2026-10-17', 'Acara', 'Selesai', 3),
(6, 'Farid', 6, 1, '2026-10-14', '2026-10-17', 'Acara', 'Selesai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','anggota') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin123', 'admin'),
(2, 'anggota', 'anggota123', 'anggota'),
(3, 'warga', '$2y$10$5Q5PmByRRXPLaAx5HtLSX.gWUeZ1yGeo2S2ScH7oF3RRWML0JebX2', 'anggota');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alat`
--
ALTER TABLE `alat`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_alat` (`id_alat`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alat`
--
ALTER TABLE `alat`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD CONSTRAINT `detail_peminjaman_ibfk_1` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`),
  ADD CONSTRAINT `detail_peminjaman_ibfk_2` FOREIGN KEY (`id_alat`) REFERENCES `alat` (`id_alat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
