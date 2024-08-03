-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 05:40 PM
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
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Baju Pria'),
(2, 'Baju Wanita'),
(4, 'Jam Tangan'),
(5, 'Tas'),
(7, 'Hoodie'),
(12, 'Ikat Pinggang'),
(13, 'Kalung'),
(14, 'Sepatu');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('habis','tersedia') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(9, 1, 'Baju 2', 30000, 'qmVLj2L6z6u9wQudPck9.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa sequi debitis in laudantium porro, sunt pariatur, expedita iste iusto quo ea sapiente quam assumenda praesentium ducimus impedit. Odio, amet consequatur.                              ', 'tersedia'),
(10, 1, 'Baju 3', 50000, 'Zbc9oJsHwBMF9CCuGbkt.jpg', '                    Baju Keren                ', 'tersedia'),
(13, 12, 'Ikat Pinggang', 20000, 'JfdXhGMYmkURi0gcTuml.jpg', 'Ikat Pinggang Laki-Laki                                                               ', 'tersedia'),
(15, 2, 'Baju Wanita Keren', 25000, 'oxH21HnGcL5IgzQOyUJl.jpg', '                    Lorem Ipsum                ', 'tersedia'),
(16, 13, 'Kalung Wanita', 10000, 'EIEfliLIhYMJ8Ool2F2R.jpg', 'Super Elegan                                ', 'tersedia'),
(19, 1, 'baju 4', 12000, 'pv36UTKkqDy042YJLJlc.jpg', '                                        Baju pria kekinian                                ', 'tersedia'),
(20, 1, 'baju 5', 15000, 'eYUHYqavxMsFs6nnVoMJ.jpg', '                    Baju pria elegan                ', 'tersedia'),
(21, 1, 'baju 1', 12000, 'Eh2SJIQOeZhcd6KIN3qZ.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa sequi debitis in laudantium porro, sunt pariatur, expedita iste iusto quo ea sapiente quam assumenda praesentium ducimus impedit. Odio, amet consequatur.               ', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$uEOv/sr8giV5qSDuSVrxae17uXzKb3C6Ecw9IRYfQPPQWM3f3kEru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
