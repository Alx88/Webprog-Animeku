-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07 Des 2016 pada 15.02
-- Versi Server: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `animeku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `msanime`
--

CREATE TABLE IF NOT EXISTS `msanime` (
  `Id` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `Rating` double NOT NULL,
  `Episode` int(11) NOT NULL,
  `Aired` date DEFAULT NULL,
  `Season` varchar(20) NOT NULL,
  `Studio` varchar(50) NOT NULL,
  `Duration` int(11) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `msanime`
--

INSERT INTO `msanime` (`Id`, `Title`, `Description`, `Genre`, `Rating`, `Episode`, `Aired`, `Season`, `Studio`, `Duration`, `Status`, `Image`) VALUES
(1, 'Kimi no Na Wa', 'Mitsuha Miyamizu, a high school girl, yearns to live the life of a boy in the bustling city of Tokyo—a dream that stands in stark contrast to her present life in the countryside. Meanwhile in the city, Taki Tachibana lives a busy life as a high school student while juggling his part-time job and hopes for a future in architecture.\r\n\r\nOne day, Mitsuha awakens in a room that is not her own and suddenly finds herself living the dream life in Tokyo—but in Taki''s body! Elsewhere, Taki finds himself living Mitsuha''s life in the humble countryside. In pursuit of an answer to this strange phenomenon, they begin to search for one another.\r\n\r\nKimi no Na wa. revolves around Mitsuha and Taki''s actions, which begin to have a dramatic impact on each other''s lives, weaving them into a fabric held together by fate and circumstance.', 'Drama, Romance, School', 9.38, 1, '2016-08-26', '-', 'CoMix Wave Films', 106, 'Finish', 'kimi no na wa.jpg'),
(3, 'ReLife', 'Berceritakan tentang seorang pengangguran yang tidak dapat pekerjaan yang akhirnya di bantu sama perusahaan relife untuk mengubah dirinya jadi muda lagi dan memperbaiki hidupnya', 'Drama, Comedy', 8, 12, '2016-04-15', 'Summer 2016', 'Nikko Studio', 24, 'Finish', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `msuser`
--

CREATE TABLE IF NOT EXISTS `msuser` (
  `Email` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `msuser`
--

INSERT INTO `msuser` (`Email`, `Name`, `Password`, `Gender`, `role`) VALUES
('admin@admin.com', 'admin', 'admin', 'Male', 'admin'),
('croco.tommychachi@gmail.com', 'Tommy Lee', 'tommy', 'Male', 'member'),
('member@member.com', 'member', 'member', 'Female', 'member'),
('rifqi.naufali@yahoo.com', 'Rifqi Naufali', 'rifqi', 'Male', 'member'),
('testing@gmail.com', 'testing', 'testing', 'Male', 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `ReviewId` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `AnimeId` int(11) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`ReviewId`, `Email`, `AnimeId`, `Description`) VALUES
(1, 'croco.tommychachi@gmail.com', 1, 'The Best anime ever'),
(2, 'member@member.com', 1, 'WTH, saya sudah menunggu ini berbulan-bulan dan akhirnya keluar. YESS!!!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msanime`
--
ALTER TABLE `msanime`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `msuser`
--
ALTER TABLE `msuser`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ReviewId`), ADD KEY `Email` (`Email`), ADD KEY `AnimeId` (`AnimeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msanime`
--
ALTER TABLE `msanime`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `ReviewId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `review`
--
ALTER TABLE `review`
ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `msuser` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`AnimeId`) REFERENCES `msanime` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
