-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: make_up
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
-- Table structure for table `about_me`
--

DROP TABLE IF EXISTS `about_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_me` (
  `about_me_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_me_title` varchar(255) NOT NULL,
  `about_me_description` varchar(1000) NOT NULL,
  `about_me_img` varchar(255) NOT NULL,
  `about_me_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`about_me_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_me`
--

LOCK TABLES `about_me` WRITE;
/*!40000 ALTER TABLE `about_me` DISABLE KEYS */;
INSERT INTO `about_me` VALUES (1,'About Me : LALIA ECH-CHEIKH','Hi there! I\'m Lalia Ech-Cheikh , a Professional Make-Up Artist based in Sydney  welcome to my website!\r\n\r\nI truly appreciate that choosing a Make-Up Artist for your event is an extremely important and personal choice for any bride-to-be. I am extremely passionate about ensuring the experience I provide is really enjoyable, from the initial consultation and trial to the big day itself. Just as importantly, I will work relentlessly to ensure the final look meets the exact requirements of the client, as demonstrated by my track record, experience and recommendations.\r\n\r\nThis website includes more details about myself, my track record and approach, along with examples of my work. \r\n\r\nThanks for visiting my website - hope you speak to you soon!!\r\n','Picture33.jpg','2019-01-24 04:51:31');
/*!40000 ALTER TABLE `about_me` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `about_me_has_image`
--

DROP TABLE IF EXISTS `about_me_has_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_me_has_image` (
  `about_me_has_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_me_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`about_me_has_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_me_has_image`
--

LOCK TABLES `about_me_has_image` WRITE;
/*!40000 ALTER TABLE `about_me_has_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `about_me_has_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_mail` varchar(255) NOT NULL,
  `account_password` varchar(255) NOT NULL,
  `account_username` varchar(20) NOT NULL,
  `account_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account_update` int(11) NOT NULL,
  `account_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (2,'alex@example.com','$2y$10$ku25kBcDHwHpFt09pFUy5.E8xtss6Ufmj3XtF7gBivOoQ3N72prxi','alexexample','2019-02-07 07:26:29',2019,1),(3,'laliaechcheikh@gmail.com','$2y$10$bWXuyCeU1ZgBFI6f9oPWY.QREpsluzt5FwcfF5X9PJQpW5iTEGBMG','laliae','2019-02-12 04:14:41',2019,1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_img` varchar(500) NOT NULL,
  `gallery_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (50,'Picture50.jpg',1),(51,'Picture51.jpg',1),(52,'Picture52.jpg',1),(53,'Picture53.jpg',1),(54,'Picture54.jpg',1),(55,'Picture55.jpg',1),(56,'Picture56.jpg',1),(57,'Picture57.jpg',1),(58,'Picture58.jpg',1),(59,'Picture59.jpg',1),(60,'Picture60.jpg',1),(61,'Picture61.jpg',1),(62,'Picture62.jpg',1),(63,'Picture63.jpg',1),(64,'Picture64.jpg',1),(65,'Picture65.jpg',1),(66,'Picture66.jpg',1),(67,'Picture67.jpg',1),(68,'Picture68.jpg',1),(69,'Picture69.jpg',1),(70,'Picture70.jpg',1);
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_has_image`
--

DROP TABLE IF EXISTS `gallery_has_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_has_image` (
  `gallery_has_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`gallery_has_image_id`),
  KEY `FK_gallery_id` (`gallery_id`),
  KEY `FK_image_id` (`image_id`),
  CONSTRAINT `FK_gallery_id` FOREIGN KEY (`gallery_id`) REFERENCES `gallery` (`gallery_id`),
  CONSTRAINT `FK_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  CONSTRAINT `gallery_has_image_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `gallery` (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_has_image`
--

LOCK TABLES `gallery_has_image` WRITE;
/*!40000 ALTER TABLE `gallery_has_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_has_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_article`
--

DROP TABLE IF EXISTS `home_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_article` (
  `home_article_id` int(11) NOT NULL AUTO_INCREMENT,
  `home_article_img` varchar(500) NOT NULL,
  `home_article_title` varchar(60) NOT NULL,
  `home_article_description` varchar(1000) NOT NULL,
  `home_article_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `home_article_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`home_article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_article`
--

LOCK TABLES `home_article` WRITE;
/*!40000 ALTER TABLE `home_article` DISABLE KEYS */;
INSERT INTO `home_article` VALUES (1,'Picture30.jpg','WEDDING MAKEUP','Weddings are my true passion. To play a small part of a bride\'s big day is something I find magical and humbling.\r\nI believe that my experience of working at the photography studio on a daily basis and also working on different film sets has given me the perfect background to create flawless looks for the cameras and to ensure the pictures turn out perfectly.\r\nOrganising a wedding can be a very stressful time and choosing a make-up artist that you can trust to deliver your exact requirements is really important. I always recommend having a make-up trial for the bride and bridal party if required. The trial normally takes place a month or two before the big day and lasts for around two hours, enabling us to try a number of different looks to ensure you are 100% happy with your bridal make up ready for your big day.','2019-01-23 00:23:33',1),(2,'Picture31.jpg','PARTY MAKEUP','Special Occasions e.g. Wedding Anniversaries, Birthdays etc Why not treat yourself to a professional makeup application for your birthday or anniversary? \r\nI can make you feel extra special as you celebrate these precious occasions. Glam up your evening with false lashes or simply try a new look! \r\nGo on, you know you want to!\r\n','2019-01-23 00:23:33',1),(12,'Picture695c6b67b09c774.jpg',' Hi kids its halloween','hohoho','2019-02-19 02:19:28',1);
/*!40000 ALTER TABLE `home_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(256) NOT NULL,
  `image_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'Picture1.jpg','2019-01-07 01:16:52',1),(2,'Picture2.jpg','2019-01-07 01:38:53',1),(3,'Picture3.jpg','2019-01-07 01:38:53',1),(4,'Picture4.jpg','2019-01-07 01:38:53',1),(5,'Picture5.jpg','2019-01-07 01:38:53',1),(6,'Picture6.jpg','2019-01-07 01:38:53',1),(7,'Picture7.jpg','2019-01-07 01:38:53',1),(8,'Picture8.jpg','2019-01-07 01:38:53',1),(9,'Picture9.jpg','2019-01-07 01:38:53',1),(10,'Picture10.jpg','2019-01-07 01:38:53',1),(11,'Picture11.jpg','2019-01-07 01:38:53',1),(12,'Picture12.jpg','2019-01-07 01:38:53',1),(13,'Picture13.jpg','2019-01-07 01:38:53',1),(14,'Picture14.jpg','2019-01-07 01:38:53',1),(15,'Picture15.jpg','2019-01-07 01:38:53',1),(16,'Picture16.jpg','2019-01-07 01:38:53',1),(17,'Picture17.jpg','2019-01-07 01:38:53',1),(18,'Picture18.jpg','2019-01-07 01:38:53',1),(19,'Picture19.jpg','2019-01-07 01:38:53',1),(20,'Picture20.jpg','2019-01-07 01:38:53',1),(21,'Picture21.jpg','2019-01-07 01:38:53',1),(22,'Picture22.jpg','2019-01-07 01:38:53',1),(23,'Picture23.jpg','2019-01-07 01:38:53',1),(24,'Picture24.jpg','2019-01-07 01:38:53',1),(25,'Picture25.jpg','2019-01-07 01:38:53',1),(26,'Picture26.jpg','2019-01-07 01:38:53',1),(27,'Picture27.jpg','2019-01-07 01:38:53',1),(28,'Picture28.jpg','2019-01-07 01:38:53',1),(30,'Picture30.jpg','2019-01-31 03:21:38',1),(31,'Picture31.jpg','2019-01-31 03:24:10',1),(33,'Picture33.jpg','2019-01-31 04:09:45',1),(41,'Picture41.jpg','2019-02-01 03:53:44',1),(42,'Picture42.jpg','2019-02-01 03:54:04',1),(43,'Picture43.jpg','2019-02-01 03:54:04',1),(45,'Picture45.jpg','2019-02-02 05:30:52',1);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_booking`
--

DROP TABLE IF EXISTS `online_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online_booking` (
  `online_booking_id` int(11) NOT NULL,
  `online_booking_name` varchar(500) NOT NULL,
  `online_booking_description` varchar(500) NOT NULL,
  `online_booking_img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_booking`
--

LOCK TABLES `online_booking` WRITE;
/*!40000 ALTER TABLE `online_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `online_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `services_id` int(11) NOT NULL AUTO_INCREMENT,
  `services_title` varchar(100) NOT NULL,
  `services_description` varchar(500) NOT NULL,
  `services_img` varchar(500) NOT NULL,
  `services_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `services_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`services_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Glamour Makeup - $120','A professional makeover that will help you create a flawless face, enhance your features and expose your natural beauty. Perfect for weddings, parties, corporate events and special occasions.','Picture40.jpg','2019-02-01 03:43:35',1),(2,'Wedding Trial - $120','We\'ll work together to discover the bridal makeup that will help you shine on your special day. \r\n\r\nAfter working with you to create a mood board of looks that you love, I will assist you in experimenting with different styles to help you to determine what works best for you. \r\n\r\n50% of the cost of this session will be refunded when your wedding booking is made. ','Picture41.jpg','2019-02-01 03:43:35',1),(3,'Wedding Makeup - $200','I will enable you and your bridal party to look flawless on your special day. \r\n\r\nWith waterproof eye makeup, smudge proof lipstick, false eyelashes and a glowing complexion, I\'ll leave you confident that you can dance the night away in gorgeous long-lasting bridal makeup.\r\n\r\nBridal party - $120pp','Picture42.jpg','2019-02-01 03:45:01',1),(4,'Makeup Classes - $100','Learn from a professional makeup artist how to best apply your makeup and create a look that enhances your features and suits your style.\r\n\r\nThis tailor-made workshop concentrates on 3 looks: everyday, night time glam and smokey eye with a bold lip. ','Picture43.jpg','2019-02-01 03:45:01',1),(5,'Hairstyling - $80','From sexy beach waves to a sleek up-do, hairstyling will help you to complete your look. \r\n\r\nHair stylist services are only available with a makeover.','Picture45.jpg','2019-02-01 03:45:37',1),(8,'hummmm','no pressure in here','Picture515c6b6785812c2.jpg','2019-02-19 02:18:45',1);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-19  2:31:25
