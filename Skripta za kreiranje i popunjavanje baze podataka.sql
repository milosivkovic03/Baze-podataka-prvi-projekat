-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2024 at 03:20 PM
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
-- Database: `wikisource`
--

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `ID_OSOBE` int(11) NOT NULL,
  `ID_ERE` int(11) NOT NULL,
  `ID_NACIONALNOSTI` int(11) DEFAULT NULL,
  `IME` varchar(30) NOT NULL,
  `PREZIME` varchar(50) DEFAULT NULL,
  `GODINA_RODJENJA` int(11) DEFAULT NULL,
  `GODINA_SMRTI` int(11) DEFAULT NULL,
  `OPIS` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`ID_OSOBE`, `ID_ERE`, `ID_NACIONALNOSTI`, `IME`, `PREZIME`, `GODINA_RODJENJA`, `GODINA_SMRTI`, `OPIS`) VALUES
(1, 12, 104, 'Dante', 'Aligijeri', 1265, 1321, 'Italijanski pesnik i drzavnik, poznat po svojoj pesmi Bozanstvena komedija.'),
(2, 13, 103, 'Onore', 'De Balzak', 1799, 1850, 'Francuski pisac i dramaturg devetnaestog veka. Zbog svog ostrog zapazanja detalja i nefiltriranog predstavljanja drustva, Balzak se smatra jednim od osnivaca realizma u evropskoj knjizevnosti.'),
(3, 11, 100, 'Jefimija', NULL, 1349, 1405, 'Jefimija je bila zena despota Ugljese i monahinja.'),
(4, 13, 102, 'Augusta Ada', 'Bajron', 1815, 1852, 'Engleski matematicar i saradnik Carlsa Bebidza; poznata i kao Ada Lovelace.'),
(5, 14, 104, 'Lorenco', 'Cicareli', NULL, NULL, 'Autor naucnog rada \"Napredak u video kodiranju za aplikacije za emitovanje\".'),
(10, 13, 103, 'Sofi', 'De Arbovil', 1810, 1850, 'jnkwrjhkfgfjkf');

-- --------------------------------------------------------

--
-- Table structure for table `delo`
--

CREATE TABLE `delo` (
  `ID_DELA` int(11) NOT NULL,
  `ID_JEZIKA` int(11) NOT NULL,
  `ID_ERE` int(11) NOT NULL,
  `ID_ZANRA` int(11) NOT NULL,
  `TEKST` varchar(5000) NOT NULL,
  `NAZIV_DELA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delo`
--

INSERT INTO `delo` (`ID_DELA`, `ID_JEZIKA`, `ID_ERE`, `ID_ZANRA`, `TEKST`, `NAZIV_DELA`) VALUES
(10000, 50, 13, 200, 'bjkfdjhbfbbgjkrlnbjkfngb', 'Bozanstvena komedija'),
(10001, 53, 13, 200, 'jnklefgbjnklbgfjnklbgjnk', 'Cica Gorio'),
(10002, 51, 11, 203, 'hifgsghfvbhfbvhkbhfvkb', 'Pohvala knezu Lazaru'),
(10003, 53, 13, 203, 'kjjhefgjhbdvjkbgjkbh', 'Marija Magdalena'),
(10004, 52, 14, 201, 'higfshghehgjgklbhdgkjswejklghuweohoeghufhuhgbefhlghghghj,ghgrgklhgowhrughruotgtgzh', 'Napredak u video kodiranju za aplikacije za ...'),
(10005, 50, 12, 204, 'jhwdffgegkhkgejhkfgk', 'Tvrdica');

-- --------------------------------------------------------

--
-- Table structure for table `delo_je_povezano_sa`
--

CREATE TABLE `delo_je_povezano_sa` (
  `ID_LINKA` int(11) NOT NULL,
  `ID_DELA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delo_je_povezano_sa`
--

INSERT INTO `delo_je_povezano_sa` (`ID_LINKA`, `ID_DELA`) VALUES
(3000, 10000),
(3001, 10000),
(3001, 10002),
(3002, 10001),
(3003, 10002);

-- --------------------------------------------------------

--
-- Table structure for table `drugi_projekat`
--

CREATE TABLE `drugi_projekat` (
  `ID_PROJEKTA` int(11) NOT NULL,
  `NAZIV_PROJEKTA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drugi_projekat`
--

INSERT INTO `drugi_projekat` (`ID_PROJEKTA`, `NAZIV_PROJEKTA`) VALUES
(4000, 'Wikipedia - Onore De Balzak'),
(4001, 'Wikipedia Commons - Onore De Balzak'),
(4002, 'WikiData - Dante Aligijeri'),
(4003, 'Wikipedia - Dante Aligijeri'),
(4004, 'WikiBooks - Bozanstvena komedija');

-- --------------------------------------------------------

--
-- Table structure for table `era`
--

CREATE TABLE `era` (
  `ID_ERE` int(11) NOT NULL,
  `NAZIV_ERE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `era`
--

INSERT INTO `era` (`ID_ERE`, `NAZIV_ERE`) VALUES
(10, 'Antika'),
(11, 'Srednji vek'),
(12, 'Renesansa'),
(13, 'Moderna'),
(14, 'Savremena');

-- --------------------------------------------------------

--
-- Table structure for table `ime_kategorije`
--

CREATE TABLE `ime_kategorije` (
  `ID_IMENA_KATEGORIJE` int(11) NOT NULL,
  `ID_DELA` int(11) DEFAULT NULL,
  `IME_KATEGORIJE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ime_kategorije`
--

INSERT INTO `ime_kategorije` (`ID_IMENA_KATEGORIJE`, `ID_DELA`, `IME_KATEGORIJE`) VALUES
(20, 10000, 'volume'),
(21, 10001, 'section'),
(22, 10003, 'part'),
(23, 10004, 'number'),
(24, 10005, 'act');

-- --------------------------------------------------------

--
-- Table structure for table `ime_podkategorije`
--

CREATE TABLE `ime_podkategorije` (
  `ID_IMENA_PODKATEGORIJE` int(11) NOT NULL,
  `ID_DELA` int(11) DEFAULT NULL,
  `IME_PODKATEGORIJE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ime_podkategorije`
--

INSERT INTO `ime_podkategorije` (`ID_IMENA_PODKATEGORIJE`, `ID_DELA`, `IME_PODKATEGORIJE`) VALUES
(30, 10000, 'canto'),
(31, 10001, 'chapter'),
(32, 10003, 'chapter'),
(33, 10005, 'scene'),
(34, 10004, 'subnumber');

-- --------------------------------------------------------

--
-- Table structure for table `izabrani_tekst`
--

CREATE TABLE `izabrani_tekst` (
  `ID_DELA` int(11) NOT NULL,
  `REDNI_BROJ_MESECA` int(11) NOT NULL,
  `GODINA_ODABIRA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `izabrani_tekst`
--

INSERT INTO `izabrani_tekst` (`ID_DELA`, `REDNI_BROJ_MESECA`, `GODINA_ODABIRA`) VALUES
(10000, 3, 2023),
(10001, 4, 2021),
(10001, 5, 2026),
(10003, 1, 2022),
(10004, 3, 2024);

-- --------------------------------------------------------

--
-- Table structure for table `jezik`
--

CREATE TABLE `jezik` (
  `ID_JEZIKA` int(11) NOT NULL,
  `NAZIV_JEZIKA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jezik`
--

INSERT INTO `jezik` (`ID_JEZIKA`, `NAZIV_JEZIKA`) VALUES
(50, 'engleski'),
(51, 'srpski'),
(52, 'italijanski'),
(53, 'francuski'),
(54, 'katalonski');

-- --------------------------------------------------------

--
-- Table structure for table `mesec`
--

CREATE TABLE `mesec` (
  `REDNI_BROJ_MESECA` int(11) NOT NULL,
  `NAZIV_MESECA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mesec`
--

INSERT INTO `mesec` (`REDNI_BROJ_MESECA`, `NAZIV_MESECA`) VALUES
(1, 'Januar'),
(2, 'Februar'),
(3, 'Mart'),
(4, 'April'),
(5, 'Maj');

-- --------------------------------------------------------

--
-- Table structure for table `nacionalnost`
--

CREATE TABLE `nacionalnost` (
  `ID_NACIONALNOSTI` int(11) NOT NULL,
  `NAZIV_NACIONALNOSTI` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nacionalnost`
--

INSERT INTO `nacionalnost` (`ID_NACIONALNOSTI`, `NAZIV_NACIONALNOSTI`) VALUES
(100, 'Srbin'),
(101, 'Amerikanac'),
(102, 'Englez'),
(103, 'Francuz'),
(104, 'Italijan');

-- --------------------------------------------------------

--
-- Table structure for table `osoba`
--

CREATE TABLE `osoba` (
  `ID_OSOBE` int(11) NOT NULL,
  `ID_ERE` int(11) NOT NULL,
  `ID_NACIONALNOSTI` int(11) DEFAULT NULL,
  `IME` varchar(30) NOT NULL,
  `PREZIME` varchar(50) DEFAULT NULL,
  `GODINA_RODJENJA` int(11) DEFAULT NULL,
  `GODINA_SMRTI` int(11) DEFAULT NULL,
  `OPIS` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `osoba`
--

INSERT INTO `osoba` (`ID_OSOBE`, `ID_ERE`, `ID_NACIONALNOSTI`, `IME`, `PREZIME`, `GODINA_RODJENJA`, `GODINA_SMRTI`, `OPIS`) VALUES
(1, 12, 104, 'Dante', 'Aligijeri', 1265, 1321, 'Italijanski pesnik i drzavnik, poznat po svojoj pesmi Bozanstvena komedija.'),
(2, 13, 103, 'Onore', 'De Balzak', 1799, 1850, 'Francuski pisac i dramaturg devetnaestog veka. Zbog svog ostrog zapazanja detalja i nefiltriranog predstavljanja drustva, Balzak se smatra jednim od osnivaca realizma u evropskoj knjizevnosti.'),
(3, 11, 100, 'Jefimija', NULL, 1349, 1405, 'Jefimija je bila zena despota Ugljese i monahinja.'),
(4, 13, 102, 'Augusta Ada', 'Bajron', 1815, 1852, 'Engleski matematicar i saradnik Carlsa Bebidza; poznata i kao Ada Lovelace.'),
(5, 14, 104, 'Lorenco', 'Cicareli', NULL, NULL, 'Autor naucnog rada \"Napredak u video kodiranju za aplikacije za emitovanje\".'),
(6, 13, 101, 'Kristijan Frederik', 'Gaus', 1878, 1951, 'Americki knjizevni kriticar i profesor knjizevnosti.'),
(7, 13, 102, 'Meri', 'Foks', 1798, 1864, 'Britanska spisateljica, cerka kralja Vilijama IV.'),
(8, 12, 103, 'Antoan', 'Galand', 1646, 1715, 'Galland je poznat po svom prevodu izvornih prica iz \"Hiljadu i jedne noci\", koji je objavljen na engleskom jeziku pod naslovom \"The Arabian Nights Entertainment\".'),
(9, 11, 100, 'Vuk', 'Stefanovic Karadzic', 1787, 1864, 'Filolog, reformator srpskog jezika, sakupljac narodnih pesama i pisac prvog recnika srpskog jezika.'),
(10, 13, 103, 'Sofi', 'De Arbovil', 1810, 1850, 'Francuski pesnik i romanopisac; rodjena Lecat de Bazancourt.');

-- --------------------------------------------------------

--
-- Table structure for table `pisanje_dela`
--

CREATE TABLE `pisanje_dela` (
  `ID_OSOBE` int(11) NOT NULL,
  `ID_JEZIKA` int(11) NOT NULL,
  `ID_DELA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pisanje_dela`
--

INSERT INTO `pisanje_dela` (`ID_OSOBE`, `ID_JEZIKA`, `ID_DELA`) VALUES
(1, 52, 10000),
(2, 53, 10001),
(3, 51, 10002),
(5, 52, 10004),
(10, 53, 10003);

-- --------------------------------------------------------

--
-- Table structure for table `povezani_link`
--

CREATE TABLE `povezani_link` (
  `ID_LINKA` int(11) NOT NULL,
  `NAZIV_LINKA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `povezani_link`
--

INSERT INTO `povezani_link` (`ID_LINKA`, `NAZIV_LINKA`) VALUES
(3000, 'Italijanska knjizevnost'),
(3001, 'Srednjevekovna knjizevnost'),
(3002, 'Francuska knizevnost'),
(3003, 'Srpska knjizevnost'),
(3004, 'Moderna knjizevnost');

-- --------------------------------------------------------

--
-- Table structure for table `prevodilac`
--

CREATE TABLE `prevodilac` (
  `ID_OSOBE` int(11) NOT NULL,
  `ID_ERE` int(11) NOT NULL,
  `ID_NACIONALNOSTI` int(11) DEFAULT NULL,
  `IME` varchar(30) NOT NULL,
  `PREZIME` varchar(50) DEFAULT NULL,
  `GODINA_RODJENJA` int(11) DEFAULT NULL,
  `GODINA_SMRTI` int(11) DEFAULT NULL,
  `OPIS` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prevodilac`
--

INSERT INTO `prevodilac` (`ID_OSOBE`, `ID_ERE`, `ID_NACIONALNOSTI`, `IME`, `PREZIME`, `GODINA_RODJENJA`, `GODINA_SMRTI`, `OPIS`) VALUES
(4, 13, 102, 'Augusta Ada', 'Bajron', 1815, 1852, 'Engleski matematicar i saradnik Carlsa Bebidza; poznata i kao Ada Lovelace.'),
(6, 13, 101, 'Kristijan Frederik', 'Gaus', 1878, 1951, 'Americki knjizevni kriticar i profesor knjizevnosti.'),
(7, 13, 102, 'Meri', 'Foks', 1798, 1864, 'jhidfhghghjkg'),
(8, 12, 103, 'Antoan', 'Galand', 1646, 1715, 'ftzuftzftzfzfz'),
(9, 11, 100, 'Vuk', 'Stefanovic Karadzic', 1787, 1864, 'dhfuhgzutzitz');

-- --------------------------------------------------------

--
-- Table structure for table `prevod_dela`
--

CREATE TABLE `prevod_dela` (
  `ID_OSOBE` int(11) NOT NULL,
  `JEZ_ID_JEZIKA` int(11) NOT NULL,
  `ID_JEZIKA` int(11) NOT NULL,
  `ID_DELA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prevod_dela`
--

INSERT INTO `prevod_dela` (`ID_OSOBE`, `JEZ_ID_JEZIKA`, `ID_JEZIKA`, `ID_DELA`) VALUES
(6, 52, 50, 10000),
(7, 50, 53, 10000),
(7, 53, 50, 10003),
(8, 52, 53, 10004),
(9, 53, 51, 10001);

-- --------------------------------------------------------

--
-- Table structure for table `profesija`
--

CREATE TABLE `profesija` (
  `ID_PROFESIJE` int(11) NOT NULL,
  `NAZIV_PROFESIJE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profesija`
--

INSERT INTO `profesija` (`ID_PROFESIJE`, `NAZIV_PROFESIJE`) VALUES
(1000, 'lekar'),
(1001, 'slikar'),
(1002, 'botanicar'),
(1003, 'muzicar'),
(1004, 'profesor');

-- --------------------------------------------------------

--
-- Table structure for table `profesija_osobe`
--

CREATE TABLE `profesija_osobe` (
  `ID_PROFESIJE` int(11) NOT NULL,
  `ID_OSOBE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profesija_osobe`
--

INSERT INTO `profesija_osobe` (`ID_PROFESIJE`, `ID_OSOBE`) VALUES
(1000, 2),
(1001, 4),
(1002, 3),
(1004, 1),
(1004, 2);

-- --------------------------------------------------------

--
-- Table structure for table `referenca`
--

CREATE TABLE `referenca` (
  `ID_REFERENCE` int(11) NOT NULL,
  `ID_DELA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referenca`
--

INSERT INTO `referenca` (`ID_REFERENCE`, `ID_DELA`) VALUES
(12346, 10000),
(12348, 10000),
(12349, 10001),
(12347, 10003),
(12345, 10004);

-- --------------------------------------------------------

--
-- Table structure for table `sadrzaj_kategorije`
--

CREATE TABLE `sadrzaj_kategorije` (
  `ID_DELA` int(11) NOT NULL,
  `BROJ_KATEGORIJE` int(11) NOT NULL,
  `POSEBNO_IME_KATEGORIJE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sadrzaj_kategorije`
--

INSERT INTO `sadrzaj_kategorije` (`ID_DELA`, `BROJ_KATEGORIJE`, `POSEBNO_IME_KATEGORIJE`) VALUES
(10000, 1, 'Inferno'),
(10000, 2, 'Purgatorio'),
(10001, 4, NULL),
(10005, 1, NULL),
(10005, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sadrzaj_podkategorije`
--

CREATE TABLE `sadrzaj_podkategorije` (
  `ID_DELA` int(11) NOT NULL,
  `BROJ_KATEGORIJE` int(11) NOT NULL,
  `BROJ_PODKATEGORIJE` int(11) NOT NULL,
  `POSEBNO_IME_PODKATEGORIJE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sadrzaj_podkategorije`
--

INSERT INTO `sadrzaj_podkategorije` (`ID_DELA`, `BROJ_KATEGORIJE`, `BROJ_PODKATEGORIJE`, `POSEBNO_IME_PODKATEGORIJE`) VALUES
(10000, 1, 1, 'The dark forest'),
(10000, 2, 1, 'The Shores of Purgatory'),
(10001, 4, 3, NULL),
(10005, 1, 6, NULL),
(10005, 2, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tip`
--

CREATE TABLE `tip` (
  `ID_TIPA` int(11) NOT NULL,
  `TIP_ID_TIPA` int(11) DEFAULT NULL,
  `NAZIV_TIPA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tip`
--

INSERT INTO `tip` (`ID_TIPA`, `TIP_ID_TIPA`, `NAZIV_TIPA`) VALUES
(20, NULL, 'Knjizevnost'),
(21, NULL, 'Strucna literatura'),
(22, 20, 'Lirika'),
(23, 20, 'Epika'),
(24, 20, 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `veza_sa_drugim_projektima`
--

CREATE TABLE `veza_sa_drugim_projektima` (
  `ID_PROJEKTA` int(11) NOT NULL,
  `ID_DELA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `veza_sa_drugim_projektima`
--

INSERT INTO `veza_sa_drugim_projektima` (`ID_PROJEKTA`, `ID_DELA`) VALUES
(4000, 10001),
(4001, 10001),
(4002, 10000),
(4003, 10000),
(4004, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `zanr`
--

CREATE TABLE `zanr` (
  `ID_ZANRA` int(11) NOT NULL,
  `ID_TIPA` int(11) NOT NULL,
  `NAZIV_ZANRA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zanr`
--

INSERT INTO `zanr` (`ID_ZANRA`, `ID_TIPA`, `NAZIV_ZANRA`) VALUES
(200, 23, 'Drama'),
(201, 21, 'Informatika'),
(202, 21, 'Istorija'),
(203, 22, 'Romantika'),
(204, 24, 'Komedija');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`ID_OSOBE`);

--
-- Indexes for table `delo`
--
ALTER TABLE `delo`
  ADD PRIMARY KEY (`ID_DELA`),
  ADD KEY `FK_DELO_DELO_PRIP_ERA` (`ID_ERE`),
  ADD KEY `FK_DELO_JEZIK_DEL_JEZIK` (`ID_JEZIKA`),
  ADD KEY `FK_DELO_ZANR_DELA_ZANR` (`ID_ZANRA`);

--
-- Indexes for table `delo_je_povezano_sa`
--
ALTER TABLE `delo_je_povezano_sa`
  ADD PRIMARY KEY (`ID_LINKA`,`ID_DELA`),
  ADD KEY `FK_DELO_JE__DELO_JE_P_DELO` (`ID_DELA`);

--
-- Indexes for table `drugi_projekat`
--
ALTER TABLE `drugi_projekat`
  ADD PRIMARY KEY (`ID_PROJEKTA`);

--
-- Indexes for table `era`
--
ALTER TABLE `era`
  ADD PRIMARY KEY (`ID_ERE`);

--
-- Indexes for table `ime_kategorije`
--
ALTER TABLE `ime_kategorije`
  ADD PRIMARY KEY (`ID_IMENA_KATEGORIJE`),
  ADD KEY `FK_IME_KATE_KATEGORIJ_DELO` (`ID_DELA`);

--
-- Indexes for table `ime_podkategorije`
--
ALTER TABLE `ime_podkategorije`
  ADD PRIMARY KEY (`ID_IMENA_PODKATEGORIJE`),
  ADD KEY `FK_IME_PODK_PODKATEGO_DELO` (`ID_DELA`);

--
-- Indexes for table `izabrani_tekst`
--
ALTER TABLE `izabrani_tekst`
  ADD PRIMARY KEY (`ID_DELA`,`REDNI_BROJ_MESECA`,`GODINA_ODABIRA`),
  ADD KEY `FK_IZABRANI_TEKST_JE__MESEC` (`REDNI_BROJ_MESECA`);

--
-- Indexes for table `jezik`
--
ALTER TABLE `jezik`
  ADD PRIMARY KEY (`ID_JEZIKA`);

--
-- Indexes for table `mesec`
--
ALTER TABLE `mesec`
  ADD PRIMARY KEY (`REDNI_BROJ_MESECA`);

--
-- Indexes for table `nacionalnost`
--
ALTER TABLE `nacionalnost`
  ADD PRIMARY KEY (`ID_NACIONALNOSTI`);

--
-- Indexes for table `osoba`
--
ALTER TABLE `osoba`
  ADD PRIMARY KEY (`ID_OSOBE`),
  ADD KEY `FK_OSOBA_NACIONALN_NACIONAL` (`ID_NACIONALNOSTI`),
  ADD KEY `FK_OSOBA_STVARALA__ERA` (`ID_ERE`);

--
-- Indexes for table `pisanje_dela`
--
ALTER TABLE `pisanje_dela`
  ADD PRIMARY KEY (`ID_OSOBE`,`ID_JEZIKA`,`ID_DELA`),
  ADD KEY `FK_PISANJE__DELO_SE_P_DELO` (`ID_DELA`),
  ADD KEY `FK_PISANJE__NAPISANO__JEZIK` (`ID_JEZIKA`);

--
-- Indexes for table `povezani_link`
--
ALTER TABLE `povezani_link`
  ADD PRIMARY KEY (`ID_LINKA`);

--
-- Indexes for table `prevodilac`
--
ALTER TABLE `prevodilac`
  ADD PRIMARY KEY (`ID_OSOBE`);

--
-- Indexes for table `prevod_dela`
--
ALTER TABLE `prevod_dela`
  ADD PRIMARY KEY (`ID_OSOBE`,`JEZ_ID_JEZIKA`,`ID_JEZIKA`,`ID_DELA`),
  ADD KEY `FK_PREVOD_D_DELO_JE_P_DELO` (`ID_DELA`),
  ADD KEY `FK_PREVOD_D_DELO_JE_P_JEZIK` (`JEZ_ID_JEZIKA`),
  ADD KEY `FK_PREVOD_D_DELO_JE_P_JEZIK1` (`ID_JEZIKA`);

--
-- Indexes for table `profesija`
--
ALTER TABLE `profesija`
  ADD PRIMARY KEY (`ID_PROFESIJE`);

--
-- Indexes for table `profesija_osobe`
--
ALTER TABLE `profesija_osobe`
  ADD PRIMARY KEY (`ID_PROFESIJE`,`ID_OSOBE`),
  ADD KEY `FK_PROFESIJ_PROFESIJA_OSOBA` (`ID_OSOBE`);

--
-- Indexes for table `referenca`
--
ALTER TABLE `referenca`
  ADD PRIMARY KEY (`ID_REFERENCE`),
  ADD KEY `FK_REFERENC_REFERENCA_DELO` (`ID_DELA`);

--
-- Indexes for table `sadrzaj_kategorije`
--
ALTER TABLE `sadrzaj_kategorije`
  ADD PRIMARY KEY (`ID_DELA`,`BROJ_KATEGORIJE`);

--
-- Indexes for table `sadrzaj_podkategorije`
--
ALTER TABLE `sadrzaj_podkategorije`
  ADD PRIMARY KEY (`ID_DELA`,`BROJ_KATEGORIJE`,`BROJ_PODKATEGORIJE`);

--
-- Indexes for table `tip`
--
ALTER TABLE `tip`
  ADD PRIMARY KEY (`ID_TIPA`),
  ADD KEY `FK_TIP_NADTIPOVI_TIP` (`TIP_ID_TIPA`);

--
-- Indexes for table `veza_sa_drugim_projektima`
--
ALTER TABLE `veza_sa_drugim_projektima`
  ADD PRIMARY KEY (`ID_PROJEKTA`,`ID_DELA`),
  ADD KEY `FK_VEZA_SA__VEZA_SA_D_DELO` (`ID_DELA`);

--
-- Indexes for table `zanr`
--
ALTER TABLE `zanr`
  ADD PRIMARY KEY (`ID_ZANRA`),
  ADD KEY `FK_ZANR_ZANR_U_OK_TIP` (`ID_TIPA`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `autor`
--
ALTER TABLE `autor`
  ADD CONSTRAINT `FK_AUTOR_VRSTE_OSO_OSOBA` FOREIGN KEY (`ID_OSOBE`) REFERENCES `osoba` (`ID_OSOBE`);

--
-- Constraints for table `delo`
--
ALTER TABLE `delo`
  ADD CONSTRAINT `FK_DELO_DELO_PRIP_ERA` FOREIGN KEY (`ID_ERE`) REFERENCES `era` (`ID_ERE`),
  ADD CONSTRAINT `FK_DELO_JEZIK_DEL_JEZIK` FOREIGN KEY (`ID_JEZIKA`) REFERENCES `jezik` (`ID_JEZIKA`),
  ADD CONSTRAINT `FK_DELO_ZANR_DELA_ZANR` FOREIGN KEY (`ID_ZANRA`) REFERENCES `zanr` (`ID_ZANRA`);

--
-- Constraints for table `delo_je_povezano_sa`
--
ALTER TABLE `delo_je_povezano_sa`
  ADD CONSTRAINT `FK_DELO_JE__DELO_JE_P_DELO` FOREIGN KEY (`ID_DELA`) REFERENCES `delo` (`ID_DELA`),
  ADD CONSTRAINT `FK_DELO_JE__DELO_JE_P_POVEZANI` FOREIGN KEY (`ID_LINKA`) REFERENCES `povezani_link` (`ID_LINKA`);

--
-- Constraints for table `ime_kategorije`
--
ALTER TABLE `ime_kategorije`
  ADD CONSTRAINT `FK_IME_KATE_KATEGORIJ_DELO` FOREIGN KEY (`ID_DELA`) REFERENCES `delo` (`ID_DELA`);

--
-- Constraints for table `ime_podkategorije`
--
ALTER TABLE `ime_podkategorije`
  ADD CONSTRAINT `FK_IME_PODK_PODKATEGO_DELO` FOREIGN KEY (`ID_DELA`) REFERENCES `delo` (`ID_DELA`);

--
-- Constraints for table `izabrani_tekst`
--
ALTER TABLE `izabrani_tekst`
  ADD CONSTRAINT `FK_IZABRANI_DELO_JE_I_DELO` FOREIGN KEY (`ID_DELA`) REFERENCES `delo` (`ID_DELA`),
  ADD CONSTRAINT `FK_IZABRANI_TEKST_JE__MESEC` FOREIGN KEY (`REDNI_BROJ_MESECA`) REFERENCES `mesec` (`REDNI_BROJ_MESECA`);

--
-- Constraints for table `osoba`
--
ALTER TABLE `osoba`
  ADD CONSTRAINT `FK_OSOBA_NACIONALN_NACIONAL` FOREIGN KEY (`ID_NACIONALNOSTI`) REFERENCES `nacionalnost` (`ID_NACIONALNOSTI`),
  ADD CONSTRAINT `FK_OSOBA_STVARALA__ERA` FOREIGN KEY (`ID_ERE`) REFERENCES `era` (`ID_ERE`);

--
-- Constraints for table `pisanje_dela`
--
ALTER TABLE `pisanje_dela`
  ADD CONSTRAINT `FK_PISANJE__AUTOR_PIS_AUTOR` FOREIGN KEY (`ID_OSOBE`) REFERENCES `autor` (`ID_OSOBE`),
  ADD CONSTRAINT `FK_PISANJE__DELO_SE_P_DELO` FOREIGN KEY (`ID_DELA`) REFERENCES `delo` (`ID_DELA`),
  ADD CONSTRAINT `FK_PISANJE__NAPISANO__JEZIK` FOREIGN KEY (`ID_JEZIKA`) REFERENCES `jezik` (`ID_JEZIKA`);

--
-- Constraints for table `prevodilac`
--
ALTER TABLE `prevodilac`
  ADD CONSTRAINT `FK_PREVODIL_VRSTE_OSO_OSOBA` FOREIGN KEY (`ID_OSOBE`) REFERENCES `osoba` (`ID_OSOBE`);

--
-- Constraints for table `prevod_dela`
--
ALTER TABLE `prevod_dela`
  ADD CONSTRAINT `FK_PREVOD_D_DELO_JE_P_DELO` FOREIGN KEY (`ID_DELA`) REFERENCES `delo` (`ID_DELA`),
  ADD CONSTRAINT `FK_PREVOD_D_DELO_JE_P_JEZIK` FOREIGN KEY (`JEZ_ID_JEZIKA`) REFERENCES `jezik` (`ID_JEZIKA`),
  ADD CONSTRAINT `FK_PREVOD_D_DELO_JE_P_JEZIK1` FOREIGN KEY (`ID_JEZIKA`) REFERENCES `jezik` (`ID_JEZIKA`),
  ADD CONSTRAINT `FK_PREVOD_D_PREVODILA_PREVODIL` FOREIGN KEY (`ID_OSOBE`) REFERENCES `prevodilac` (`ID_OSOBE`);

--
-- Constraints for table `profesija_osobe`
--
ALTER TABLE `profesija_osobe`
  ADD CONSTRAINT `FK_PROFESIJ_PROFESIJA_OSOBA` FOREIGN KEY (`ID_OSOBE`) REFERENCES `osoba` (`ID_OSOBE`),
  ADD CONSTRAINT `FK_PROFESIJ_PROFESIJA_PROFESIJ` FOREIGN KEY (`ID_PROFESIJE`) REFERENCES `profesija` (`ID_PROFESIJE`);

--
-- Constraints for table `referenca`
--
ALTER TABLE `referenca`
  ADD CONSTRAINT `FK_REFERENC_REFERENCA_DELO` FOREIGN KEY (`ID_DELA`) REFERENCES `delo` (`ID_DELA`);

--
-- Constraints for table `sadrzaj_kategorije`
--
ALTER TABLE `sadrzaj_kategorije`
  ADD CONSTRAINT `FK_SADRZAJ__DELO_IMA__DELO` FOREIGN KEY (`ID_DELA`) REFERENCES `delo` (`ID_DELA`);

--
-- Constraints for table `sadrzaj_podkategorije`
--
ALTER TABLE `sadrzaj_podkategorije`
  ADD CONSTRAINT `FK_SADRZAJ__KATEGORIJ_SADRZAJ_` FOREIGN KEY (`ID_DELA`,`BROJ_KATEGORIJE`) REFERENCES `sadrzaj_kategorije` (`ID_DELA`, `BROJ_KATEGORIJE`);

--
-- Constraints for table `tip`
--
ALTER TABLE `tip`
  ADD CONSTRAINT `FK_TIP_NADTIPOVI_TIP` FOREIGN KEY (`TIP_ID_TIPA`) REFERENCES `tip` (`ID_TIPA`);

--
-- Constraints for table `veza_sa_drugim_projektima`
--
ALTER TABLE `veza_sa_drugim_projektima`
  ADD CONSTRAINT `FK_VEZA_SA__VEZA_SA_D_DELO` FOREIGN KEY (`ID_DELA`) REFERENCES `delo` (`ID_DELA`),
  ADD CONSTRAINT `FK_VEZA_SA__VEZA_SA_D_DRUGI_PR` FOREIGN KEY (`ID_PROJEKTA`) REFERENCES `drugi_projekat` (`ID_PROJEKTA`);

--
-- Constraints for table `zanr`
--
ALTER TABLE `zanr`
  ADD CONSTRAINT `FK_ZANR_ZANR_U_OK_TIP` FOREIGN KEY (`ID_TIPA`) REFERENCES `tip` (`ID_TIPA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
