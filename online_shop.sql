-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 02:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'admin', 'Nopal');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `telepon` varchar(25) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email`, `password`, `nama`, `telepon`, `alamat`, `username`) VALUES
(7, 'irfananda2000@gmail.com', 'nopal123', 'Nopal Ganteng', '085227010589', 'Solo', ''),
(32, 'coba1@gmail.com', 'coba123', 'coba1', '0851', 'Solo Utara', NULL),
(33, 'l200180096@student.ums.ac.id', NULL, 'IRFANANDA IRSYAD AINUNNAUVAL', '09878', NULL, 'l200180096'),
(34, 'gaminglos776@gmail.com', NULL, 'Nop Gaming', NULL, NULL, 'gaminglos776'),
(35, 'lapon@gmai.com', 'nopal123', 'Lapon', '089987678987', 'Jakarta', NULL),
(36, 'dika@gmail.com', 'dika123', 'Dika', '09988897665', 'Solo', NULL),
(37, 'ahmadfaizal@gmail.com', '12345678', 'Faizal', '088273642129', 'Gumpang', NULL),
(38, 'faizalahmad@gmail.com', 'asdfgh', 'Ahmad', '088742182374', 'Solo', NULL),
(39, 'faizalalamin@gmail.com', 'hgfdsa', 'Alamin', '089201923892', 'Kartasura', NULL),
(40, 'firdiandika@gmail.com', 'qwerty', 'Firdian', '087489123847', 'Pekalongan', NULL),
(41, 'muhzaidan@gmail.com', 'zaidan', 'Zaidan', '082376491123', 'Timuran', NULL),
(42, 'alazizzaidan@gmail.com', 'zaidan123', 'alaziz', '087123746782', 'Palur', NULL),
(43, 'rafialif@gmail.com', 'rafialif', 'Rafi', '087281237555', 'Sragen', NULL),
(44, 'azmizain@gmail.com', 'azmiazmi', 'Azmi', '089201982384', 'Ponorogo', NULL),
(45, 'lailynopal@gmail.com', 'laily', 'Laily', '087987123874', 'Mojosongo', NULL),
(46, 'fazafaza@gmail.com', 'fazafaza', 'Faza', '087283712387', 'Sumber', NULL),
(47, 'malviniqbal@gmail.com', 'malvin', 'Malvin', '087654789876', 'Nusukan', NULL),
(48, 'fikocakra@gmail.com', 'fikocakra', 'Fiko', '089123984872', 'Purbayan', NULL),
(49, 'aldiasibnu@gmail.com', 'Aldias', 'Aldias', '089098123874', 'Ngawi', NULL),
(50, 'itmamul@gmail.com', 'itmamul', 'Mamul', '089123784892', 'Banyumas', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `tanggal`, `bukti`) VALUES
(58, 130, 'Coba1', 'BCA', '2022-03-25', '623d8c84aee82.png'),
(59, 131, 'Nopal', 'BRI', '2022-03-26', '623e93ac8a33a.png'),
(60, 133, 'kk', 'll', '2022-04-01', '62472ddb1ccdc.png'),
(61, 137, 'Nopal', 'BRI', '2022-04-05', '624b960f81ccf.png'),
(62, 138, 'Nopal', 'BRI', '2022-04-05', '624b9d3825806.png'),
(63, 136, 'Irfan', 'BCA', '2022-04-05', '624b9eff18266.png');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_harga` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembayaran` varchar(100) NOT NULL DEFAULT 'pending',
  `resi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `tanggal_pembelian`, `total_harga`, `alamat_pengiriman`, `status_pembayaran`, `resi`) VALUES
(130, 32, '2022-03-25', 500000, 'Solo Utara', 'sudah kirim bukti', '11'),
(131, 33, '2022-03-26', 200000, 'Solo', 'lunas', '2'),
(132, 7, '2022-03-27', 850000, 'JKT 45', 'pending', ''),
(133, 33, '2022-03-31', 1050000, 'Jl. Aku No 98 India Barat, Sukohidu, Jawa Utara', 'sudah kirim bukti', ''),
(134, 33, '2022-04-02', 1550000, 'wqwqwq', 'pending', ''),
(135, 7, '2022-04-04', 850000, '123', 'pending', ''),
(136, 7, '2022-04-04', 200000, 'asdasd', 'sudah kirim bukti', ''),
(137, 7, '2022-04-05', 200000, 'Solo', 'sudah kirim bukti', ''),
(138, 33, '2022-04-05', 200000, 'Solo', 'barang dikirim', '000000001');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama_prod` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama_prod`, `harga`, `total_harga`) VALUES
(149, 130, 26, 1, 'Tumpeng Besar 12 Porsi', 500000, 500000),
(150, 131, 27, 1, 'Tart Ulang Tahun', 200000, 200000),
(151, 132, 26, 1, 'Tumpeng Besar 12 Porsi', 500000, 500000),
(152, 132, 27, 1, 'Tart Ulang Tahun', 200000, 200000),
(153, 132, 30, 1, 'Tart Blackforest', 150000, 150000),
(154, 133, 27, 2, 'Tart Ulang Tahun', 200000, 400000),
(155, 133, 26, 1, 'Tumpeng Besar 12 Porsi', 500000, 500000),
(156, 133, 30, 1, 'Tart Blackforest', 150000, 150000),
(157, 134, 26, 2, 'Tumpeng Besar 12 Porsi', 500000, 1000000),
(158, 134, 27, 2, 'Tart Ulang Tahun', 200000, 400000),
(159, 134, 30, 1, 'Tart Blackforest', 150000, 150000),
(160, 135, 26, 1, 'Tumpeng Besar 12 Porsi', 500000, 500000),
(161, 135, 27, 1, 'Tart Ulang Tahun', 200000, 200000),
(162, 135, 30, 1, 'Tart Blackforest', 150000, 150000),
(163, 136, 27, 1, 'Tart Ulang Tahun', 200000, 200000),
(164, 137, 27, 1, 'Tart Ulang Tahun', 200000, 200000),
(165, 138, 27, 1, 'Tart Ulang Tahun', 200000, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat`, `foto_produk`, `deskripsi_produk`) VALUES
(26, 'Tumpeng Besar 12 Porsi', 500000, 15, 'Tumpeng 12 porsi.jpg', 'Isi : Sambal, Krupuk, Ayam, Telur, Urap, Kering Tempe, Sambal Goreng Ati, Bakmi dan Sayurang Segar'),
(27, 'Tart Ulang Tahun', 200000, 10, 'Tar Ultah.jpg', 'Kue Tart Ulang Tahun/Birthday Cake\r\nPilihan cake lezat dengan bahan premium dan kualitas terbaik.\r\n\r\n'),
(31, 'Tumpeng 7 Porsi', 200000, 8, 'Tumpeng 7 porsi.jpg', 'Isi : Sambal, Krupuk, Ayam, Telur, Urap, Kering Tempe, Sambal Goreng Ati, Bakmi dan Sayurang Segar'),
(32, 'Tumpeng Besar + Ingkung', 700000, 20, 'Tumpeng porsi besar + ingkung.jpg', 'Isi : Ingkung, Sambal, Krupuk, Ayam, Telur, Urap, Kering Tempe, Sambal Goreng Ati, Bakmi dan Sayurang Segar'),
(33, 'Nasi Tumpeng Box', 400000, 5, 'Tumpeng Box, minimal pesan 10 box.jpg', 'Nasi Tumpeng ukuran kecil yang di hidangkan menggunakan Box mika, minimal pesan 10 box'),
(34, 'Bakso Bakar', 15000, 1, 'Bakso Bakar.jpg', 'Bakso daging sapi yang dibakar dengan bumbu yang sedap, bisa pedas bisa manis. Minimal pembelian 15 biji');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
