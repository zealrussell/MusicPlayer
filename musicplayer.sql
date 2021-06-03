-- MySQL dump 10.10
--
-- Host: localhost    Database: musicplayer
-- ------------------------------------------------------
-- Server version	5.0.17-nt

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
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `userid` int(255) default NULL,
  `musicid` int(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collect`
--


/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
LOCK TABLES `collect` WRITE;
INSERT INTO `collect` VALUES (2,1),(3,1),(4,10),(5,1),(2,2),(3,2),(4,2),(5,2),(2,3),(3,3),(4,3),(5,3),(2,4),(3,4),(4,4),(5,4),(2,5),(3,5),(4,5),(5,5),(2,6),(3,6),(4,6),(5,6),(2,7),(3,7),(4,7),(5,7),(2,8),(3,8),(4,8),(5,8),(2,9),(3,9),(4,9),(5,9),(1,1),(2,10),(3,10),(4,1),(5,10),(1,10),(NULL,NULL),(NULL,NULL),(1,6),(1,5),(1,3);
UNLOCK TABLES;
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `singername` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `music`
--


/*!40000 ALTER TABLE `music` DISABLE KEYS */;
LOCK TABLES `music` WRITE;
INSERT INTO `music` VALUES (1,'MICDrop','BTS','BTS-MICDrop.wav'),(2,'Her','BTS','BTS-Her.wav'),(3,'Pied piper','BTS','BTS-PiedPiper.wav'),(4,'All Cried Out','Hi-Rez','Hi-Rez-AllCriedOut.mp3'),(5,'Find A Way','Hi-Rez','Hi-Rez-FindAWay.mp3'),(6,'It Was Never Easy','Hi-Rez','Hi-Rez-ItWasNeverEasy.mp3'),(7,'Plan Z','Hi-Rez','Hi-Rez-PlanZ.mp3'),(8,'My City 南京','Jony J','JonyJ-MyCity南京.mp3'),(9,'写给父亲','卢恒宇','卢恒宇-写给父亲.mp3'),(10,'可乐','赵紫骅','赵紫骅-可乐.mp3'),(12,'KillersWithMe','21Savage','21Savage-KillersWithMe.mp3'),(13,'Logic','44More','44More-Logic.mp3'),(14,'Here','AlessiaCara','AlessiaCara-Here.mp3'),(15,'Innocence','AvrilLavigne','AvrilLavigne-Innocence.mp3'),(16,'Freak','AziziGibson','AziziGibson-Freak.mp3');
UNLOCK TABLES;
/*!40000 ALTER TABLE `music` ENABLE KEYS */;

--
-- Table structure for table `singer`
--

DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `musicid` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `singer`
--


/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
LOCK TABLES `singer` WRITE;
INSERT INTO `singer` VALUES (1,'BTS',1),(1,'BTS',2),(1,'BTS',3),(2,'Hi-Rez',4),(2,'Hi-Rez',5),(2,'Hi-Rez',6),(2,'Hi-Rez',7),(3,'Jony J',8),(4,'卢恒宇',9),(5,'赵紫骅',10),(7,'21Savage',12),(8,'44More',13),(9,'AlessiaCara',14),(10,'AvrilLavigne',15),(11,'AziziGibson',16);
UNLOCK TABLES;
/*!40000 ALTER TABLE `singer` ENABLE KEYS */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--


/*!40000 ALTER TABLE `user` DISABLE KEYS */;
LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (1,'user1','123456'),(2,'user2','123456'),(3,'user3','123456'),(4,'user4','123456'),(5,'user5','123456');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

