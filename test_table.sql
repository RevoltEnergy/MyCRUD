CREATE DATABASE  IF NOT EXISTS `test`;
USE `test`;

--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.7.17-log

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `isAdmin` tinyint(1) DEFAULT '0',
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (1,'Jack','Deniels',200,1,NOW()),(2,'John','Walker',150,0,NOW()),(3,'Jim','Beam',100,0,NOW());
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;