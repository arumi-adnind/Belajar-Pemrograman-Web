-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 09:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaya_in`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Kalung Little Mermaid', 'Bahan : Rhodium dan Cubic Zirconia, Color : Silver, Rose Gold, Ukuran : dapat diatur 40-44cm', 'Kalung', 130000, 15, 'kalungmermaid.png'),
(2, 'Anting Baby Butterfly', 'Bahan : Rhodium, Color : Gold, Panjang Anting : 2.5 cm, Hoop Diameter : 1 cm', 'Anting', 99000, 21, 'butterfly.png'),
(3, 'Gelang Titanium-Molly', 'Bahan : Titanium 316L, Color : Gold, Ukuran :  dapat diatur 16 -20cm', 'Gelang', 139000, 17, 'molly.png'),
(6, 'Cincin Titanium-MiniDaisy', 'Bahan : Titanium / Stainless 316L, Color : Silver dan Rose Gold, Ukuran : dapat diatur', 'Cincin', 90000, 10, 'minidaisy.png'),
(7, 'Anting White Pearl', 'Bahan : Titanium 316L, Color : Rose Gold, Ukuran : 0.6 cm / 0.8 cm', 'Anting', 89000, 6, 'pearl.png'),
(8, 'Gelang Panlandwoo Bangle-Mickey', 'Bahan : Rhodium dan Cubic Zirconia, Color : Silver, Rose Gold, Ukuran : 15.5 + 4cm', 'Gelang', 119000, 9, 'mickey.png'),
(9, 'Kalung Vicky', 'Bahan : Rhodium dan Cubic Zirconia, Color : Rose Gold, Ukuran : dapat diatur 39-44cm', 'Kalung', 109000, 23, 'vicky.png'),
(10, 'Kalung Sonya', 'Bahan : Rhodium dan Cubic Zirconia, Color : Silver, Rose Gold, Ukuran : dapat diatur 40-44cm', 'Kalung', 119000, 33, 'sonya.png'),
(11, 'Anting Panlandwo-Dreamy', 'Bahan : Rhodium dan Cubic Zirconia, Color : Silver, Gold', 'Anting', 119000, 33, 'dreamy.png'),
(12, 'Cincin Set Panlandwoo-Black Magic', 'Bahan : Rhodium, Color : Silver + Black, Ukuran : 16mm', 'Cincin', 89000, 46, 'blackmagic.png'),
(13, 'Anting Panlandwoo-Minnie', 'Bahan : Stainless Steel, Color : Rose Gold', 'Anting', 109000, 25, 'minnie.png'),
(14, 'Cincin Panlandwoo-Adela', 'Bahan : Rhodium dan Cubic Zirconia,\r\nColor : Gold,\r\nUkuran : 16mm / 1.6cm (bisa diatur)', 'Cincin', 99000, 15, 'adela.png'),
(15, 'Kalung Panlandwoo-Angelina', 'Bahan : Stainless Steel, Color : Rose Gold, Ukuran : dapat diatur 39-44cm', 'Kalung', 119000, 11, 'angelina.png'),
(16, 'Cincin Rose Gold Twist', 'Bahan : Titanium / Stainless 316L, Color : Rose Gold, Ukuran : dapat diatur', 'Cincin', 79000, 20, 'twist.png'),
(17, 'Gelang Helen', 'Bahan : Titanium 316L, Color : Gold, Ukuran :  dapat diatur 16-20 cm', 'Gelang', 139000, 32, 'helen.png'),
(18, 'Gelang Alana', 'Bahan : Stainless Steel, Color : Rose Gold, Ukuran : dapat diatur 39-44cm', 'Gelang', 119000, 11, 'alana.png'),
(20, 'Cincin Olivia', 'Bahan : Rhodium dan Cubic Zirconia, Warna : Rose Gold, Ukuran : 16mm (bisa diatur)', 'Cincin', 177000, 12, 'olivia1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Arumi Adnindriasih', 'Pemalang, Jawa Tengah', '2020-07-10 00:39:27', '2020-07-11 00:39:27'),
(2, 'Nurestu', 'JL. A.Yani Utara Gang IX, RT 05 RW 20 Mulyoharjo, Pemalang, Jawa Tengah', '2020-07-10 00:51:36', '2020-07-11 00:51:36'),
(3, 'Irene', 'Jl. Wiroto VI no 15, Semarang, Jawa Tengah', '2020-07-10 18:04:20', '2020-07-11 18:04:20'),
(16, 'Sayekti Rospa', 'Jl. Mochtar No.17, Kebondalem, Kec. Pemalang, Kabupaten Pemalang, Jawa Tengah 52312', '2020-07-11 12:41:33', '2020-07-12 12:41:33'),
(17, 'Rospatriasih Sayekti', 'Jl. Smangka XI no 27 RT 07/RW 01, Bojongbata, Pemalang, Jawa Tengah', '2020-07-11 13:59:02', '2020-07-12 13:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(70) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Kalung Little Mermaid', 1, 130000, ''),
(2, 1, 2, 'Anting Baby Butterfly', 1, 99000, ''),
(3, 1, 3, 'Gelang Titanium-Molly', 1, 139000, ''),
(4, 1, 6, 'Cincin Titanium-MiniDaisy', 1, 90000, ''),
(5, 2, 1, 'Kalung Little Mermaid', 1, 130000, ''),
(6, 2, 2, 'Anting Baby Butterfly', 1, 99000, ''),
(7, 3, 1, 'Kalung Little Mermaid', 1, 130000, ''),
(16, 16, 3, 'Gelang Titanium-Molly', 1, 139000, ''),
(17, 16, 8, 'Gelang Panlandwoo Bangle-Mickey', 1, 119000, ''),
(18, 16, 10, 'Kalung Sonya', 1, 119000, ''),
(19, 16, 15, 'Kalung Panlandwoo-Angelina', 1, 119000, ''),
(20, 17, 10, 'Kalung Sonya', 1, 119000, ''),
(21, 17, 1, 'Kalung Little Mermaid', 1, 130000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'Arumi', 'arumi123', 1),
(2, 'user', 'Adnin', 'adnin123', 2),
(3, 'Yekti', 'Sayekti', 'yekti123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
