-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2024 at 08:03 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` int(13) NOT NULL,
  `nama_barang` varchar(40) NOT NULL,
  `jenis_barang` varchar(40) NOT NULL,
  `jenis_ukuran` varchar(20) NOT NULL,
  `harga_beli` decimal(40,0) NOT NULL,
  `harga_jual` decimal(40,0) NOT NULL,
  `stok` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `jenis_barang`, `jenis_ukuran`, `harga_beli`, `harga_jual`, `stok`) VALUES
(1, 'zahra', 'Celana', 'M', '123000', '3000', 2),
(2, 'NIKE', 'Jaket', 'M', '230000', '300000', 3),
(3, 'BIR', 'Baju', 'M', '670000', '680000', 2),
(4, 'Adidas', 'Celana', 'M', '23000', '34000', 2),
(6, 'nike', 'Celana', 'S', '890000', '90000', 8),
(7, 'zanjbx', 'Jaket', 'XL', '7888888', '90000', 8),
(8, 'nik', 'Jaket', 'L', '80000', '90000', 5),
(9, 'zaf', 'Baju', 'M', '89000', '90000', 7),
(12, 'nike', 'Celana', 'S', '890000', '90000', 7),
(111, 'nike', 'Celana', 'XL', '890000', '900000', 7);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `NoFaktur` varchar(20) NOT NULL,
  `Tanggal` varchar(20) DEFAULT NULL,
  `ID_Customer` varchar(10) DEFAULT NULL,
  `TotalBeli` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`NoFaktur`, `Tanggal`, `ID_Customer`, `TotalBeli`) VALUES
('TR0001', '07-07-2024', '123', '360000000'),
('TR0002', '08-07-2024', '123', '460000'),
('TR0003', '09-07-2024', '56', '-769934592'),
('TR0004', '09-07-2024', '', '0'),
('TR0005', '19-07-2024', 'TR01', '460000'),
('TR0006', '19-07-2024', '1', '300000'),
('TR0007', '19-07-2024', '2', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(20) DEFAULT NULL,
  `ID_Barang` varchar(10) DEFAULT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Harga` decimal(10,0) DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualanrinci`
--

INSERT INTO `penjualanrinci` (`NoFaktur`, `ID_Barang`, `Nama_Barang`, `Jumlah`, `Harga`, `Total`) VALUES
('TR001', '112', 'Jaket', 3, '20000', '60'),
('TR0001', 'TR01', 'zahra', 30000, '12000', '360000000'),
('TR0002', 'TR002', 'baju', 2, '230000', '460000'),
('TR0003', 'TR001', 'nike', 34000, '230000', '-769934592'),
('TR0005', 'TR01', 'Nike', 2, '230000', '460000'),
('TR0006', '1', 'baju', 3, '100000', '300000'),
('TR0007', '2', 'sepeda', 1, '200000', '200000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`NoFaktur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode_barang` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
