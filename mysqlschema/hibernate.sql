CREATE DATABASE  IF NOT EXISTS `hibernate` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hibernate`;
-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: hibernate
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Table structure for table `A`
--

DROP TABLE IF EXISTS `A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `A` (
  `A_ID` int(11) NOT NULL AUTO_INCREMENT,
  `A_VALUE` varchar(45) NOT NULL,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `A`
--

LOCK TABLES `A` WRITE;
/*!40000 ALTER TABLE `A` DISABLE KEYS */;
INSERT INTO `A` VALUES (1,'A_VALUE');
/*!40000 ALTER TABLE `A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AA`
--

DROP TABLE IF EXISTS `AA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AA` (
  `AA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AA_VALUE` varchar(45) NOT NULL,
  `A_ID` int(11) NOT NULL,
  PRIMARY KEY (`AA_ID`),
  KEY `fk_AA_1_idx` (`A_ID`),
  CONSTRAINT `fk_AA_1` FOREIGN KEY (`A_ID`) REFERENCES `A` (`A_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AA`
--

LOCK TABLES `AA` WRITE;
/*!40000 ALTER TABLE `AA` DISABLE KEYS */;
INSERT INTO `AA` VALUES (1,'AA_1',1),(2,'AA_2',1);
/*!40000 ALTER TABLE `AA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AAA`
--

DROP TABLE IF EXISTS `AAA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AAA` (
  `AAA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AAA_VALUE` varchar(45) NOT NULL,
  `AA_ID` int(11) NOT NULL,
  PRIMARY KEY (`AAA_ID`),
  KEY `fk_AAA_1_idx` (`AA_ID`),
  CONSTRAINT `fk_AAA_1` FOREIGN KEY (`AA_ID`) REFERENCES `AA` (`AA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AAA`
--

LOCK TABLES `AAA` WRITE;
/*!40000 ALTER TABLE `AAA` DISABLE KEYS */;
INSERT INTO `AAA` VALUES (1,'AAA_1',1),(2,'AAA_2',2),(3,'AAA_3',2);
/*!40000 ALTER TABLE `AAA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AAAZ`
--

DROP TABLE IF EXISTS `AAAZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AAAZ` (
  `AAA_ID` int(11) NOT NULL,
  `AAAZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AAA_ID`),
  CONSTRAINT `fk_AAAZ_ID` FOREIGN KEY (`AAA_ID`) REFERENCES `AAA` (`AAA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AAAZ`
--

LOCK TABLES `AAAZ` WRITE;
/*!40000 ALTER TABLE `AAAZ` DISABLE KEYS */;
INSERT INTO `AAAZ` VALUES (1,'AAAZ_VALUE');
/*!40000 ALTER TABLE `AAAZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AAB`
--

DROP TABLE IF EXISTS `AAB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AAB` (
  `AAB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AAB_VALUE` varchar(45) NOT NULL,
  `AA_ID` int(11) NOT NULL,
  PRIMARY KEY (`AAB_ID`),
  KEY `fk_AAB_1_idx` (`AA_ID`),
  CONSTRAINT `fk_AAB_1` FOREIGN KEY (`AA_ID`) REFERENCES `AA` (`AA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AAB`
--

LOCK TABLES `AAB` WRITE;
/*!40000 ALTER TABLE `AAB` DISABLE KEYS */;
INSERT INTO `AAB` VALUES (1,'AAB_1',1),(2,'AAB_2',2),(3,'AAA_3',2);
/*!40000 ALTER TABLE `AAB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AABZ`
--

DROP TABLE IF EXISTS `AABZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AABZ` (
  `AAB_ID` int(11) NOT NULL,
  `AABZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AAB_ID`),
  CONSTRAINT `fk_AABZ_ID` FOREIGN KEY (`AAB_ID`) REFERENCES `AAB` (`AAB_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AABZ`
--

LOCK TABLES `AABZ` WRITE;
/*!40000 ALTER TABLE `AABZ` DISABLE KEYS */;
INSERT INTO `AABZ` VALUES (1,'AABZ_VALUE');
/*!40000 ALTER TABLE `AABZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AAC`
--

DROP TABLE IF EXISTS `AAC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AAC` (
  `AAC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AAC_VALUE` varchar(45) NOT NULL,
  `AA_ID` int(11) NOT NULL,
  PRIMARY KEY (`AAC_ID`),
  KEY `fk_AAC_1_idx` (`AA_ID`),
  CONSTRAINT `fk_AAC_1` FOREIGN KEY (`AA_ID`) REFERENCES `AA` (`AA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AAC`
--

LOCK TABLES `AAC` WRITE;
/*!40000 ALTER TABLE `AAC` DISABLE KEYS */;
INSERT INTO `AAC` VALUES (1,'AAC_1',1),(2,'AAC_2',2),(3,'AAC_3',2);
/*!40000 ALTER TABLE `AAC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AACZ`
--

DROP TABLE IF EXISTS `AACZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AACZ` (
  `AAC_ID` int(11) NOT NULL,
  `AACZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AAC_ID`),
  CONSTRAINT `fk_AACZ_ID` FOREIGN KEY (`AAC_ID`) REFERENCES `AAC` (`AAC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AACZ`
--

LOCK TABLES `AACZ` WRITE;
/*!40000 ALTER TABLE `AACZ` DISABLE KEYS */;
INSERT INTO `AACZ` VALUES (1,'AACZ_VALUE');
/*!40000 ALTER TABLE `AACZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AAZ`
--

DROP TABLE IF EXISTS `AAZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AAZ` (
  `AA_ID` int(11) NOT NULL,
  `AAZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AA_ID`),
  CONSTRAINT `fk_AAZ_ID` FOREIGN KEY (`AA_ID`) REFERENCES `AA` (`AA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AAZ`
--

LOCK TABLES `AAZ` WRITE;
/*!40000 ALTER TABLE `AAZ` DISABLE KEYS */;
INSERT INTO `AAZ` VALUES (1,'AAZ_VALUE');
/*!40000 ALTER TABLE `AAZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AB`
--

DROP TABLE IF EXISTS `AB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AB` (
  `AB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AB_VALUE` varchar(45) NOT NULL,
  `A_ID` int(11) NOT NULL,
  PRIMARY KEY (`AB_ID`),
  KEY `fk_AB_1_idx` (`A_ID`),
  CONSTRAINT `fk_AB_1` FOREIGN KEY (`A_ID`) REFERENCES `A` (`A_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AB`
--

LOCK TABLES `AB` WRITE;
/*!40000 ALTER TABLE `AB` DISABLE KEYS */;
INSERT INTO `AB` VALUES (1,'AB_1',1),(2,'AB_2',1);
/*!40000 ALTER TABLE `AB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ABA`
--

DROP TABLE IF EXISTS `ABA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ABA` (
  `ABA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ABA_VALUE` varchar(45) NOT NULL,
  `AB_ID` int(11) NOT NULL,
  PRIMARY KEY (`ABA_ID`),
  KEY `fk_ABA_1_idx` (`AB_ID`),
  CONSTRAINT `fk_ABA_1` FOREIGN KEY (`AB_ID`) REFERENCES `AB` (`AB_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ABA`
--

LOCK TABLES `ABA` WRITE;
/*!40000 ALTER TABLE `ABA` DISABLE KEYS */;
INSERT INTO `ABA` VALUES (1,'ABA_1',1),(2,'ABA_2',2),(3,'ABA_3',2);
/*!40000 ALTER TABLE `ABA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ABAZ`
--

DROP TABLE IF EXISTS `ABAZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ABAZ` (
  `ABA_ID` int(11) NOT NULL,
  `ABAZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ABA_ID`),
  CONSTRAINT `fk_ABAZ_ID` FOREIGN KEY (`ABA_ID`) REFERENCES `ABA` (`ABA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ABAZ`
--

LOCK TABLES `ABAZ` WRITE;
/*!40000 ALTER TABLE `ABAZ` DISABLE KEYS */;
INSERT INTO `ABAZ` VALUES (1,'ABAZ_VALUE');
/*!40000 ALTER TABLE `ABAZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ABB`
--

DROP TABLE IF EXISTS `ABB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ABB` (
  `ABB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ABB_VALUE` varchar(45) NOT NULL,
  `AB_ID` int(11) NOT NULL,
  PRIMARY KEY (`ABB_ID`),
  KEY `fk_ABB_1_idx` (`AB_ID`),
  CONSTRAINT `fk_ABB_1` FOREIGN KEY (`AB_ID`) REFERENCES `AB` (`AB_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ABB`
--

LOCK TABLES `ABB` WRITE;
/*!40000 ALTER TABLE `ABB` DISABLE KEYS */;
INSERT INTO `ABB` VALUES (1,'ABB_1',1),(2,'ABB_2',2),(3,'ABB_3',2);
/*!40000 ALTER TABLE `ABB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ABBZ`
--

DROP TABLE IF EXISTS `ABBZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ABBZ` (
  `ABB_ID` int(11) NOT NULL,
  `ABBZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ABB_ID`),
  CONSTRAINT `fk_ABBZ_ID` FOREIGN KEY (`ABB_ID`) REFERENCES `ABB` (`ABB_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ABBZ`
--

LOCK TABLES `ABBZ` WRITE;
/*!40000 ALTER TABLE `ABBZ` DISABLE KEYS */;
INSERT INTO `ABBZ` VALUES (1,'ABBZ_VALUE');
/*!40000 ALTER TABLE `ABBZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ABC`
--

DROP TABLE IF EXISTS `ABC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ABC` (
  `ABC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ABC_VALUE` varchar(45) NOT NULL,
  `AB_ID` int(11) NOT NULL,
  PRIMARY KEY (`ABC_ID`),
  KEY `fk_ABC_1_idx` (`AB_ID`),
  CONSTRAINT `fk_ABC_1` FOREIGN KEY (`AB_ID`) REFERENCES `AB` (`AB_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ABC`
--

LOCK TABLES `ABC` WRITE;
/*!40000 ALTER TABLE `ABC` DISABLE KEYS */;
INSERT INTO `ABC` VALUES (1,'ABC_1',1),(2,'ABC_2',2),(3,'ABC_3',2);
/*!40000 ALTER TABLE `ABC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ABCZ`
--

DROP TABLE IF EXISTS `ABCZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ABCZ` (
  `ABC_ID` int(11) NOT NULL,
  `ABCZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ABC_ID`),
  CONSTRAINT `fk_ABCZ_ID` FOREIGN KEY (`ABC_ID`) REFERENCES `ABC` (`ABC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ABCZ`
--

LOCK TABLES `ABCZ` WRITE;
/*!40000 ALTER TABLE `ABCZ` DISABLE KEYS */;
INSERT INTO `ABCZ` VALUES (1,'ABCZ_VALUE');
/*!40000 ALTER TABLE `ABCZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ABZ`
--

DROP TABLE IF EXISTS `ABZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ABZ` (
  `AB_ID` int(11) NOT NULL,
  `ABZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AB_ID`),
  CONSTRAINT `fk_ABZ_ID` FOREIGN KEY (`AB_ID`) REFERENCES `AB` (`AB_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ABZ`
--

LOCK TABLES `ABZ` WRITE;
/*!40000 ALTER TABLE `ABZ` DISABLE KEYS */;
INSERT INTO `ABZ` VALUES (1,'ABZ_VALUE');
/*!40000 ALTER TABLE `ABZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AC`
--

DROP TABLE IF EXISTS `AC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AC` (
  `AC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AC_VALUE` varchar(45) NOT NULL,
  `A_ID` int(11) NOT NULL,
  PRIMARY KEY (`AC_ID`),
  KEY `fk_AC_1_idx` (`A_ID`),
  CONSTRAINT `fk_AC_1` FOREIGN KEY (`A_ID`) REFERENCES `A` (`A_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AC`
--

LOCK TABLES `AC` WRITE;
/*!40000 ALTER TABLE `AC` DISABLE KEYS */;
INSERT INTO `AC` VALUES (1,'AC_1',1),(2,'AC_2',1);
/*!40000 ALTER TABLE `AC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACA`
--

DROP TABLE IF EXISTS `ACA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACA` (
  `ACA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACA_VALUE` varchar(45) NOT NULL,
  `AC_ID` int(11) NOT NULL,
  PRIMARY KEY (`ACA_ID`),
  KEY `fk_ACA_1_idx` (`AC_ID`),
  CONSTRAINT `fk_ACA_1` FOREIGN KEY (`AC_ID`) REFERENCES `AC` (`AC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACA`
--

LOCK TABLES `ACA` WRITE;
/*!40000 ALTER TABLE `ACA` DISABLE KEYS */;
INSERT INTO `ACA` VALUES (1,'ACA_1',1),(2,'ACA_2',2),(3,'ACA_3',2);
/*!40000 ALTER TABLE `ACA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACAZ`
--

DROP TABLE IF EXISTS `ACAZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACAZ` (
  `ACA_ID` int(11) NOT NULL,
  `ACAZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ACA_ID`),
  CONSTRAINT `fk_ACAZ_ID` FOREIGN KEY (`ACA_ID`) REFERENCES `ACA` (`ACA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACAZ`
--

LOCK TABLES `ACAZ` WRITE;
/*!40000 ALTER TABLE `ACAZ` DISABLE KEYS */;
INSERT INTO `ACAZ` VALUES (1,'ACAZ_VALUE');
/*!40000 ALTER TABLE `ACAZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACB`
--

DROP TABLE IF EXISTS `ACB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACB` (
  `ACB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACB_VALUE` varchar(45) NOT NULL,
  `AC_ID` int(11) NOT NULL,
  PRIMARY KEY (`ACB_ID`),
  KEY `fk_ACB_1_idx` (`AC_ID`),
  CONSTRAINT `fk_ACB_1` FOREIGN KEY (`AC_ID`) REFERENCES `AC` (`AC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACB`
--

LOCK TABLES `ACB` WRITE;
/*!40000 ALTER TABLE `ACB` DISABLE KEYS */;
INSERT INTO `ACB` VALUES (1,'ACB_1',1),(2,'ACB_2',2),(3,'ACB_3',2);
/*!40000 ALTER TABLE `ACB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACBZ`
--

DROP TABLE IF EXISTS `ACBZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACBZ` (
  `ACB_ID` int(11) NOT NULL,
  `ACBZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ACB_ID`),
  CONSTRAINT `fk_ACBZ_ID` FOREIGN KEY (`ACB_ID`) REFERENCES `ACB` (`ACB_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACBZ`
--

LOCK TABLES `ACBZ` WRITE;
/*!40000 ALTER TABLE `ACBZ` DISABLE KEYS */;
INSERT INTO `ACBZ` VALUES (1,'ACBZ_VALUE');
/*!40000 ALTER TABLE `ACBZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACC`
--

DROP TABLE IF EXISTS `ACC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACC` (
  `ACC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACC_VALUE` varchar(45) NOT NULL,
  `AC_ID` int(11) NOT NULL,
  PRIMARY KEY (`ACC_ID`),
  KEY `fk_ACC_1_idx` (`AC_ID`),
  CONSTRAINT `fk_ACC_1` FOREIGN KEY (`AC_ID`) REFERENCES `AC` (`AC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACC`
--

LOCK TABLES `ACC` WRITE;
/*!40000 ALTER TABLE `ACC` DISABLE KEYS */;
INSERT INTO `ACC` VALUES (1,'ACC_1',1),(2,'ACC_2',2),(3,'ACC_3',2);
/*!40000 ALTER TABLE `ACC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACCZ`
--

DROP TABLE IF EXISTS `ACCZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACCZ` (
  `ACC_ID` int(11) NOT NULL,
  `ACCZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ACC_ID`),
  CONSTRAINT `fk_ACCZ_ID` FOREIGN KEY (`ACC_ID`) REFERENCES `ACC` (`ACC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCZ`
--

LOCK TABLES `ACCZ` WRITE;
/*!40000 ALTER TABLE `ACCZ` DISABLE KEYS */;
INSERT INTO `ACCZ` VALUES (1,'ACCZ_VALUE');
/*!40000 ALTER TABLE `ACCZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACZ`
--

DROP TABLE IF EXISTS `ACZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACZ` (
  `AC_ID` int(11) NOT NULL,
  `ACZ_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AC_ID`),
  CONSTRAINT `fk_ACZ_ID` FOREIGN KEY (`AC_ID`) REFERENCES `AC` (`AC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACZ`
--

LOCK TABLES `ACZ` WRITE;
/*!40000 ALTER TABLE `ACZ` DISABLE KEYS */;
INSERT INTO `ACZ` VALUES (1,'ACZ_VALUE');
/*!40000 ALTER TABLE `ACZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Z`
--

DROP TABLE IF EXISTS `Z`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Z` (
  `A_ID` int(11) NOT NULL,
  `Z_VALUE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`A_ID`),
  CONSTRAINT `fk_Z_1` FOREIGN KEY (`A_ID`) REFERENCES `A` (`A_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Z`
--

LOCK TABLES `Z` WRITE;
/*!40000 ALTER TABLE `Z` DISABLE KEYS */;
INSERT INTO `Z` VALUES (1,'Z_VALUE');
/*!40000 ALTER TABLE `Z` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-25 19:33:05
