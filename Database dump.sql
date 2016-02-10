-- MySQL dump 10.13  Distrib 5.6.21, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_management
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `assignedto`
--

DROP TABLE IF EXISTS `assignedto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignedto` (
  `RoomID` int(11) NOT NULL DEFAULT '0',
  `SSN` int(11) NOT NULL DEFAULT '0',
  `RID` int(11) NOT NULL DEFAULT '0',
  `EID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RoomID`,`SSN`,`RID`),
  KEY `SSN` (`SSN`),
  KEY `EID` (`EID`),
  KEY `RID` (`RID`),
  CONSTRAINT `assignedto_ibfk_1` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`) ON DELETE CASCADE,
  CONSTRAINT `assignedto_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `inpatient` (`SSN`) ON DELETE CASCADE,
  CONSTRAINT `assignedto_ibfk_3` FOREIGN KEY (`EID`) REFERENCES `nurse` (`EID`) ON DELETE CASCADE,
  CONSTRAINT `assignedto_ibfk_4` FOREIGN KEY (`RID`) REFERENCES `record` (`RID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignedto`
--

LOCK TABLES `assignedto` WRITE;
/*!40000 ALTER TABLE `assignedto` DISABLE KEYS */;
INSERT INTO `assignedto` VALUES (1,6723,201,112),(2,78965,774,112),(3,3213,205,112),(2,1127,131,113),(2,8555,203,113),(4,9999,210,113),(211,9999,211,113);
/*!40000 ALTER TABLE `assignedto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `BID` int(11) NOT NULL DEFAULT '0',
  `BillDate` date DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `SSN` int(11) NOT NULL,
  `EID` int(11) NOT NULL,
  `IID` int(11) DEFAULT NULL,
  `RID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`BID`,`RID`),
  KEY `RID` (`RID`),
  KEY `SSN` (`SSN`),
  KEY `EID` (`EID`),
  KEY `IID` (`IID`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`RID`) REFERENCES `record` (`RID`),
  CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `patient` (`SSN`),
  CONSTRAINT `bill_ibfk_3` FOREIGN KEY (`EID`) REFERENCES `employees` (`EID`),
  CONSTRAINT `bill_ibfk_4` FOREIGN KEY (`IID`) REFERENCES `insurance` (`IID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (11,'2014-11-09',5000,8555,111,444,203),(12,'2014-10-09',6500,1135,111,555,204),(597,'2014-10-10',48200,9999,111,126,210),(598,'2014-10-10',4200,9999,111,129,211),(699,'2014-10-10',62000,1127,111,1333,131),(799,'2014-10-10',12000,78965,111,592,774),(857,'2014-10-10',600,9999,111,421,214),(873,'2014-10-10',600,456321,111,222,213),(926,'2014-10-10',500,1127,111,100,132);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `EID` int(11) NOT NULL DEFAULT '0',
  `NAME` varchar(20) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (111,'Rivera Jone','F',22,'Phoenix AZ',4445555),(112,'Katy Thomas','F',22,'Tucson AZ',4446666),(113,'Roxy Beth','F',22,'Tempe AZ',4447777),(114,'Kevin Golmes','M',22,'Phoenix AZ',4448888),(115,'Mike Scott','M',22,'Scotsdale AZ',4449999),(6251,'Curtis','M',19,'Mesa',984654441),(45655,'Rocker','M',55,'San Andreas',789446123),(65412,'Avisokeo','F',69,'Delhi',9974563214);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inpatient`
--

DROP TABLE IF EXISTS `inpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inpatient` (
  `SSN` int(11) NOT NULL DEFAULT '0',
  `NoDays` int(11) DEFAULT NULL,
  `RID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SSN`),
  KEY `RID` (`RID`),
  CONSTRAINT `RID` FOREIGN KEY (`RID`) REFERENCES `record` (`RID`),
  CONSTRAINT `inpatient_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `patient` (`SSN`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inpatient`
--

LOCK TABLES `inpatient` WRITE;
/*!40000 ALTER TABLE `inpatient` DISABLE KEYS */;
INSERT INTO `inpatient` VALUES (11,10,209),(1127,40,131),(3213,60,205),(6723,28,201),(8555,10,207),(9999,20,210),(78965,40,774);
/*!40000 ALTER TABLE `inpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance` (
  `IID` int(11) NOT NULL DEFAULT '0',
  `Coverage` double DEFAULT NULL,
  `SSN` int(11) NOT NULL,
  PRIMARY KEY (`IID`),
  KEY `SSN` (`SSN`),
  CONSTRAINT `insurance_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `patient` (`SSN`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (77,1000,9999),(100,100,1127),(111,25000,11),(125,2000,9999),(126,2000,9999),(129,1000,9999),(222,20000,6723),(333,30000,3422),(421,100,9999),(444,15000,8555),(555,55000,1135),(592,2000,78965),(597,2000,9999),(1333,5000,1127);
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nurse` (
  `EID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`EID`),
  CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `employees` (`EID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (112),(113);
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outpatient`
--

DROP TABLE IF EXISTS `outpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outpatient` (
  `SSN` int(11) NOT NULL DEFAULT '0',
  `RID` int(11) NOT NULL DEFAULT '207',
  PRIMARY KEY (`SSN`),
  KEY `RID` (`RID`),
  CONSTRAINT `outpatient_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `patient` (`SSN`) ON DELETE CASCADE,
  CONSTRAINT `outpatient_ibfk_2` FOREIGN KEY (`RID`) REFERENCES `record` (`RID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outpatient`
--

LOCK TABLES `outpatient` WRITE;
/*!40000 ALTER TABLE `outpatient` DISABLE KEYS */;
INSERT INTO `outpatient` VALUES (1127,132),(1135,204),(9999,214);
/*!40000 ALTER TABLE `outpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `SSN` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(15) DEFAULT NULL,
  `Sex` varchar(1) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (11,'Michael','M',34,'McClintock drive',248272),(401,'Jeorge','m',21,'Scottsdale',4456645),(1127,'George','M',18,'Tempe',4455),(1135,'briant','m',44,'phoenix',2158964),(1223,'Avi','M',35,'Phoenix',4553),(3213,'briant','F',20,'tempe',2466849),(3422,'tam','F',30,'tempe',8463321),(4013,'jarred','f',21,'Scottsdale',44566455),(4017,'mikky','f',22,'Scottsdale',445664555),(6723,'june','F',28,'mesa',4634444),(8555,'chris','m',50,'chandler',5972164),(9999,'Avishek Roy','M',40,'India',9832177777),(78965,'Chen','M',22,'China',4804805566),(456321,'Luther','M',65,'N',4804414527);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physician`
--

DROP TABLE IF EXISTS `physician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `physician` (
  `EID` int(11) NOT NULL DEFAULT '0',
  `SPECIALITY` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`EID`),
  CONSTRAINT `physician_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `employees` (`EID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physician`
--

LOCK TABLES `physician` WRITE;
/*!40000 ALTER TABLE `physician` DISABLE KEYS */;
INSERT INTO `physician` VALUES (114,'Surgeon'),(115,'ENT');
/*!40000 ALTER TABLE `physician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receptionist` (
  `EID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`EID`),
  CONSTRAINT `receptionist_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `employees` (`EID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receptionist`
--

LOCK TABLES `receptionist` WRITE;
/*!40000 ALTER TABLE `receptionist` DISABLE KEYS */;
INSERT INTO `receptionist` VALUES (111);
/*!40000 ALTER TABLE `receptionist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record` (
  `RID` int(11) NOT NULL,
  `RDATE` date DEFAULT NULL,
  `SYMPTOM` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (131,'2014-07-07','Heart problem'),(132,'2014-07-08','Fever'),(201,'2010-01-10','fever'),(202,'2010-05-11','fever'),(203,'2010-07-07','surgery'),(204,'2011-01-01','fever'),(205,'2011-02-02','cold'),(206,'2014-06-09','Fever'),(207,'2014-06-09','fever'),(209,'2014-06-10','Nausea'),(210,'2014-06-10','Lungs Problem'),(211,'2014-07-07','digestive problem'),(213,'2014-07-07','Fever'),(214,'2014-07-07','Sick'),(774,'2014-06-09','High Fever');
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registers`
--

DROP TABLE IF EXISTS `registers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registers` (
  `SSN` int(11) NOT NULL DEFAULT '0',
  `RID` int(11) NOT NULL DEFAULT '0',
  `EID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SSN`,`RID`),
  KEY `RID` (`RID`),
  KEY `EID` (`EID`),
  CONSTRAINT `registers_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `patient` (`SSN`),
  CONSTRAINT `registers_ibfk_2` FOREIGN KEY (`RID`) REFERENCES `record` (`RID`),
  CONSTRAINT `registers_ibfk_3` FOREIGN KEY (`EID`) REFERENCES `employees` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registers`
--

LOCK TABLES `registers` WRITE;
/*!40000 ALTER TABLE `registers` DISABLE KEYS */;
INSERT INTO `registers` VALUES (11,209,111),(1127,131,111),(1127,132,111),(1135,204,111),(3213,205,111),(6723,201,111),(6723,206,111),(8555,203,111),(8555,207,111),(9999,210,111),(9999,211,111),(9999,214,111),(78965,774,111),(456321,213,111);
/*!40000 ALTER TABLE `registers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `RoomID` int(11) NOT NULL DEFAULT '0',
  `Type` varchar(20) DEFAULT NULL,
  `CostPD` int(11) DEFAULT NULL,
  PRIMARY KEY (`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'Cabin',100),(2,'VIP Cabin',200),(3,'ICU',150),(4,'OT',1200),(211,'OPT',6000);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatment` (
  `SSN` int(11) NOT NULL DEFAULT '0',
  `RID` int(11) NOT NULL DEFAULT '0',
  `EID` int(11) NOT NULL DEFAULT '0',
  `TYPE` varchar(30) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  PRIMARY KEY (`SSN`,`RID`,`EID`),
  KEY `EID` (`EID`),
  KEY `RID` (`RID`),
  CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `patient` (`SSN`) ON DELETE CASCADE,
  CONSTRAINT `treatment_ibfk_2` FOREIGN KEY (`EID`) REFERENCES `physician` (`EID`) ON DELETE CASCADE,
  CONSTRAINT `treatment_ibfk_3` FOREIGN KEY (`RID`) REFERENCES `record` (`RID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES (11,209,115,'Full Body Scan',200),(1127,131,115,'Heart Checkup',50000),(1127,132,115,'checkup',500),(1135,204,115,'checkup',500),(3213,205,115,'full body checkup',1900),(3422,202,115,'checkup',100),(6723,201,115,'full body checkup',100),(8555,203,114,'surgery',75),(8555,207,115,'checkup',200),(9999,210,115,'Lungs Scan',10000),(9999,211,114,'Full Body Scan',5000),(9999,214,114,'checkup',200),(78965,774,115,'Full Body Scan',5000),(456321,213,114,'checkup',200);
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-26 16:42:33
