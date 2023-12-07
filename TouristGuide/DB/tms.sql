-- MySQL dump 10.13  Distrib 5.5.24, for Win32 (x86)
--
-- Host: localhost    Database: tms
-- ------------------------------------------------------
-- Server version	5.5.24-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin123','2017-05-13 11:18:49');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbooking`
--

DROP TABLE IF EXISTS `tblbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL AUTO_INCREMENT,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`BookingId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbooking`
--

LOCK TABLES `tblbooking` WRITE;
/*!40000 ALTER TABLE `tblbooking` DISABLE KEYS */;
INSERT INTO `tblbooking` VALUES (2,1,'anuj@gmail.com','05/18/2017','05/31/2017','\"Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ','2017-05-13 19:01:10',2,'u','2017-05-13 21:30:23'),(3,2,'anuj@gmail.com','05/16/2017','05/31/2017','casf esd sg gd gdfh df','2017-05-13 20:20:01',2,'a','2017-05-13 23:04:40'),(4,1,'anuj@gmail.com','05/16/2017','05/31/2017','dwef  fwe','2017-05-13 20:32:54',2,'a','2017-05-13 21:36:39'),(5,1,'anuj@gmail.com','05/16/2017','05/31/2017','dwef  fwe','2017-05-13 20:33:17',2,'a','2019-07-20 20:02:42'),(6,2,'anuj@gmail.com','05/14/2017','05/24/2017','test demo','2017-05-13 21:18:37',2,'a','2017-05-14 07:58:28'),(7,4,'sarita@gmail.com','05/26/2017','05/30/2017','Sample Data ','2017-05-14 05:09:11',2,'a','2017-05-14 07:47:39'),(8,2,'sarita@gmail.com','05/27/2017','05/28/2017','ubub5u6','2017-05-14 05:10:24',2,'a','2017-05-14 05:13:03'),(9,1,'demo@test.com','05/19/2017','05/21/2017','demo test demo test','2017-05-14 07:45:11',1,NULL,'2017-05-14 07:47:45'),(10,5,'abc@g.com','05/22/2017','05/24/2017',' test ttest test t','2017-05-14 07:56:26',1,NULL,'2017-05-14 07:58:19'),(11,4,'anuj@gmail.com','2019-07-31','2019-08-02','This is sample text for testing,','2019-07-20 20:15:35',0,NULL,NULL);
/*!40000 ALTER TABLE `tblbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblenquiry`
--

DROP TABLE IF EXISTS `tblenquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblenquiry`
--

LOCK TABLES `tblenquiry` WRITE;
/*!40000 ALTER TABLE `tblenquiry` DISABLE KEYS */;
INSERT INTO `tblenquiry` VALUES (1,'anuj','anuj.lpu1@gmail.com','2354235235','Package Details Required','Sample Content','2017-05-13 22:23:53',1),(2,'efgegter','terterte@gmail.com','3454353453','About Refund','Can i get refund if i cancel?','2017-05-13 22:27:00',1),(3,'fwerwetrwet','fwsfhrtre@hdhdhqw.com','8888888888','erwt wet','abcd','2017-05-13 22:28:11',1),(4,'Usha','test@gm.com','4747474747','Test','Sample Enquiry','2017-05-14 07:54:07',1);
/*!40000 ALTER TABLE `tblenquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblissues`
--

DROP TABLE IF EXISTS `tblissues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblissues`
--

LOCK TABLES `tblissues` WRITE;
/*!40000 ALTER TABLE `tblissues` DISABLE KEYS */;
INSERT INTO `tblissues` VALUES (4,'anuj@gmail.com','Cancellation','abc ','2017-05-13 22:03:33','Request not accepted','2017-05-13 23:50:40'),(5,'sarita@gmail.com','Cancellation','tbt 3y 34y4 3y3hgg34t','2017-05-14 05:12:14','sg sd gs g sdgfs ','2017-05-14 07:52:07'),(6,'demo@test.com','Refund','demo test.com demo test.comdemo test.comdemo test.comdemo test.com','2017-05-14 07:45:37',NULL,'0000-00-00 00:00:00'),(7,'abc@g.com','Refund','test test ttest test ttest test ttest test ttest test ttest test t','2017-05-14 07:56:46','vetet ert erteryre','2017-05-14 07:58:43');
/*!40000 ALTER TABLE `tblissues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT '',
  `detail` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpages`
--

LOCK TABLES `tblpages` WRITE;
/*!40000 ALTER TABLE `tblpages` DISABLE KEYS */;
INSERT INTO `tblpages` VALUES (1,'terms','<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),(2,'privacy','<p style=\"line-height: 1.8; color: rgb(85, 85, 85); font-family: proxima-nova, sans-serif; font-size: 18px;\">This Privacy Policy describes how your personal information is collected, used, and shared when you visit or make a purchase from (Store URL).</p><p style=\"line-height: 1.8; color: rgb(85, 85, 85); font-family: proxima-nova, sans-serif; font-size: 18px;\"><span style=\"font-weight: 700;\">WHAT PERSONAL INFORMATION WE COLLECT</span></p><p style=\"line-height: 1.8; color: rgb(85, 85, 85); font-family: proxima-nova, sans-serif; font-size: 18px;\">When you visit the Site, we automatically collect certain information about your device, including information about your web browser, IP address, time zone, and some of the cookies that are installed on your device.</p><p style=\"line-height: 1.8; color: rgb(85, 85, 85); font-family: proxima-nova, sans-serif; font-size: 18px;\">Additionally, as you browse the Site, we collect information about the individual web pages or products that you view, what websites or search terms referred you to the Site, and information about how you interact with the Site. We refer to this automatically collected information as&nbsp;<span style=\"font-weight: 700;\">Device Information</span>.</p><p style=\"line-height: 1.8; color: rgb(85, 85, 85); font-family: proxima-nova, sans-serif; font-size: 18px;\">We collect Device Information using the following technologies:</p><ul style=\"margin: 1.5em 0px; padding: 0px 0px 0px 20px; line-height: 1.5; counter-reset: item 0; position: relative; color: rgb(85, 85, 85); font-family: proxima-nova, sans-serif; font-size: 18px;\"><li style=\"margin: 0px 0px 10px; padding: 0px;\"><p style=\"line-height: 1.8;\"><span style=\"font-weight: 700;\">Cookies</span>&nbsp;are data files that are placed on your device or computer and often include an anonymous unique identifier.</p></li><li style=\"margin: 0px 0px 10px; padding: 0px;\"><p style=\"line-height: 1.8;\"><span style=\"font-weight: 700;\">Log files</span>&nbsp;track actions occurring on the Site, and collect data including your IP address, browser type, Internet service provider, referring/exit pages, and date/time stamps.</p></li></ul>'),(3,'aboutus','<span style=\"color: rgb(3, 0, 47); font-family: FKGrotesk, Helvetica, Arial, sans-serif; font-size: 18px;\">We promotes their core value of remote working throughout their website and our organisation is a great example of how you can promote your core values too. As a core value to their business, their About Us page is focused around this global team and the productivity that they bring to the company. Not only do they put their team front and center, but they share how the team works so that someone interested in applying for a position with the company can be sure they will enjoy working for the company before they start.</span>'),(11,'contact','<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contact us at 9876549072 for booking.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Mail us nikhitha@ezeetours.com for enquiries.</span></div>');
/*!40000 ALTER TABLE `tblpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltourpackages`
--

DROP TABLE IF EXISTS `tbltourpackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL AUTO_INCREMENT,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PackageId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltourpackages`
--

LOCK TABLES `tbltourpackages` WRITE;
/*!40000 ALTER TABLE `tbltourpackages` DISABLE KEYS */;
INSERT INTO `tbltourpackages` VALUES (1,'Manali Trip ','General','Kullu Manali India',100,'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer','\"Hello Viewer\"','14287acc-b5cb-46db-b8b4-e3ffe652fc0d.png','2017-05-13 14:23:44','2017-05-13 17:51:01'),(2,'Test ','Test','Delhi India',5433,'\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ','demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test ','phpgurukul-1.png','2017-05-13 15:24:26','2017-05-13 17:51:57'),(3,'Demo Demo  Demo Demo test','Demo Demo Demo Demo Demo Demo  test','Demo Demo Demo Demo Demo Demo  test',1000,'Demo Demo  test','Sample Text for testing.','complaints.jpg','2017-05-13 16:00:58','2019-07-20 20:12:41'),(4,'Kerla','Familty and Couple','Kerlal',2000,' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"',' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"','images.jpg','2017-05-13 22:39:37','0000-00-00 00:00:00'),(5,'Coorg : Tour Packages','General','Coorg',3000,' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"',' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"','coorg-hill-station1.jpg','2017-05-13 22:42:10','0000-00-00 00:00:00'),(6,'Indonesia','Family','Indonesia',5000,'Frree wifi, pickup and drop etc','Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ','mamp-pro-logo-big.png','2017-05-14 08:01:08','2017-05-14 08:01:27');
/*!40000 ALTER TABLE `tbltourpackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `EmailId` (`EmailId`),
  KEY `EmailId_2` (`EmailId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusers`
--

LOCK TABLES `tblusers` WRITE;
/*!40000 ALTER TABLE `tblusers` DISABLE KEYS */;
INSERT INTO `tblusers` VALUES (1,'Anuj kumar','1111111111','anuj@gmail.com','f925916e2754e5e03f75dd58a5733251','2017-05-10 10:38:17','2019-07-20 20:18:18'),(3,'sarita','9999999999','sarita@gmail.com','5c428d8875d2948607f3e3fe134d71b4','2017-05-10 10:50:48','2017-05-14 07:40:19'),(7,'test','7676767676','test@gm.com','f925916e2754e5e03f75dd58a5733251','2017-05-10 10:54:56','0000-00-00 00:00:00'),(8,'Anuj kumar','9999999999','demo@gmail.com','f925916e2754e5e03f75dd58a5733251','2017-05-14 07:17:44','0000-00-00 00:00:00'),(9,'XYZabc','3333333333','xyz@gmail.com','f925916e2754e5e03f75dd58a5733251','2017-05-14 07:25:13','2017-05-14 07:25:42'),(10,'Anuj Kumar','4543534534','demo@test.com','f925916e2754e5e03f75dd58a5733251','2017-05-14 07:43:23','2017-05-14 07:46:57'),(11,'XYZ','8888888888','abc@g.com','f925916e2754e5e03f75dd58a5733251','2017-05-14 07:54:32','2017-05-14 07:55:17');
/*!40000 ALTER TABLE `tblusers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-09 20:57:54
