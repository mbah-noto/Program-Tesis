-- MySQL dump 10.14  Distrib 5.5.34-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: NotoBMT
-- ------------------------------------------------------
-- Server version	5.5.34-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bmt`
--

DROP TABLE IF EXISTS `bmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bmt` (
  `id_bmt` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tahun` year(4) NOT NULL,
  `jmlpegawai` varchar(50) NOT NULL,
  `nomorsah` varbinary(50) NOT NULL,
  `direktur` varchar(255) NOT NULL,
  PRIMARY KEY (`id_bmt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bmt`
--

LOCK TABLES `bmt` WRITE;
/*!40000 ALTER TABLE `bmt` DISABLE KEYS */;
/*!40000 ALTER TABLE `bmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kap`
--

DROP TABLE IF EXISTS `kap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kap` (
  `id_kap` int(11) NOT NULL AUTO_INCREMENT,
  `id_bmt` int(11) NOT NULL,
  PRIMARY KEY (`id_kap`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kap`
--

LOCK TABLES `kap` WRITE;
/*!40000 ALTER TABLE `kap` DISABLE KEYS */;
/*!40000 ALTER TABLE `kap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manajemen`
--

DROP TABLE IF EXISTS `manajemen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manajemen` (
  `id_man` int(11) NOT NULL,
  `id_bmt` int(11) NOT NULL,
  `manum1` enum('y','t') NOT NULL,
  `manum2` enum('y','t') NOT NULL,
  `manum3` enum('y','t') NOT NULL,
  `manum4` enum('y','t') NOT NULL,
  `manum5` enum('y','t') NOT NULL,
  `manum6` enum('y','t') NOT NULL,
  `manum7` enum('y','t') NOT NULL,
  `manum8` enum('y','t') NOT NULL,
  `manum9` enum('y','t') NOT NULL,
  `manum10` enum('y','t') NOT NULL,
  `manum11` enum('y','t') NOT NULL,
  `manum12` enum('y','t') NOT NULL,
  `manlem1` enum('y','t') NOT NULL,
  `manlem2` enum('y','t') NOT NULL,
  `manlem3` enum('y','t') NOT NULL,
  `manlem4` enum('y','t') NOT NULL,
  `manlem5` enum('y','t') NOT NULL,
  `manlem6` enum('y','t') NOT NULL,
  `manmod1` enum('y','t') NOT NULL,
  `manmod2` enum('y','t') NOT NULL,
  `manmod3` enum('y','t') NOT NULL,
  `manmod4` enum('y','t') NOT NULL,
  `manmod5` enum('y','t') NOT NULL,
  `manakt1` enum('y','t') NOT NULL,
  `manakt2` enum('y','t') NOT NULL,
  `manakt3` enum('y','t') NOT NULL,
  `manakt4` enum('y','t') NOT NULL,
  `manakt5` enum('y','t') NOT NULL,
  `manakt6` enum('y','t') NOT NULL,
  `manakt7` enum('y','t') NOT NULL,
  `manakt8` enum('y','t') NOT NULL,
  `manakt9` enum('y','t') NOT NULL,
  `manakt10` enum('y','t') NOT NULL,
  `manlik1` enum('y','t') NOT NULL,
  `manlik2` enum('y','t') NOT NULL,
  `manlik3` enum('y','t') NOT NULL,
  `manlik4` enum('y','t') NOT NULL,
  `manlik5` enum('y','t','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manajemen`
--

LOCK TABLES `manajemen` WRITE;
/*!40000 ALTER TABLE `manajemen` DISABLE KEYS */;
/*!40000 ALTER TABLE `manajemen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modal`
--

DROP TABLE IF EXISTS `modal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modal` (
  `id_modal` int(11) NOT NULL AUTO_INCREMENT,
  `id_bmt` int(11) NOT NULL,
  `modalsen` double NOT NULL,
  `modaltot` double NOT NULL,
  `simpananpokok` double NOT NULL,
  `simpananwajib` double NOT NULL,
  `modalsetara` double NOT NULL,
  `modalserta` double NOT NULL,
  `cadanganumum` double NOT NULL,
  `cadtujuanresiko` double NOT NULL,
  `modalsumbang` double NOT NULL,
  `shubelumbagi` double NOT NULL,
  `modalsetor` double NOT NULL,
  `modaltambah` double NOT NULL,
  `modsertakop` double NOT NULL,
  `kas` double NOT NULL,
  `simpanbank` double NOT NULL,
  `simpankjks` double NOT NULL,
  `pembiayaan` double NOT NULL,
  `penyertakoperasi` double NOT NULL,
  `aktivatetap` double NOT NULL,
  `aktivalain` double NOT NULL,
  PRIMARY KEY (`id_modal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modal`
--

LOCK TABLES `modal` WRITE;
/*!40000 ALTER TABLE `modal` DISABLE KEYS */;
/*!40000 ALTER TABLE `modal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `no` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'arifep2000','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-13  2:30:30
