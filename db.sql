-- MySQL dump 10.13  Distrib 5.7.15, for Win64 (x86_64)
--
-- Host: localhost    Database: sms
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'beacon','123456',1),(19,'201701132801','201701132801',2),(20,'201701132802','201701132802',2),(21,'201701132803','201701132803',2),(22,'201701132804','201701132804',2),(23,'201701132805','201701132805',2),(24,'201701132806','201701132806',2),(25,'201701132807','201701132807',2),(26,'201701132808','201701132808',2),(27,'201701132809','201701132809',2),(28,'201701132810','201701132810',2),(29,'201701132811','201701132811',2),(30,'201701132812','201701132812',2),(31,'201701132813','201701132813',2),(32,'201701132814','201701132814',2),(33,'20170102','20170102',3),(34,'20170103','20170103',3),(35,'20170104','20170104',3),(36,'20170105','20170105',3),(37,'20170106','20170106',3),(38,'20170107','20170107',3),(39,'20170108','20170108',3),(40,'20170109','20170109',3),(41,'20170110','20170110',3),(42,'20170111','20170111',3),(43,'20170112','20170112',3),(44,'20170113','20170113',3),(45,'20170114','20170114',3),(46,'20170115','20170115',3),(47,'20170116','20170116',3),(48,'20170117','20170117',3),(49,'20170118','20170118',3),(50,'20170119','20170119',3),(51,'20170120','20170120',3);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_no` varchar(20) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `class_name` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `join_time` varchar(20) DEFAULT NULL,
  `student_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (27,'2017042827',28,'休闲体育1班','在读','2017',0),(28,'2017011328',13,'市场营销1班','在读','2017',14),(29,'2017011529',15,'人力资源管理1班','在读','2017',0),(30,'2017011430',14,'会计学1班','在读','2017',0),(31,'2017011631',16,'国际经济与贸易1班','在读','2017',0),(32,'2017070232',2,'信息与计算科学1班','在读','2017',0),(33,'2017070233',2,'信息与计算科学1班','在读','2017',0);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(30) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `course_time` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (20,'数据库',4,36,'必修');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depart_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'经济与管理学院'),(2,'政法学院'),(3,'教育科学学院'),(4,'体育与健康学院'),(5,'文学院'),(6,'外国语学院'),(7,'数学与统计学院'),(8,'生命科学学院'),(9,'机械与汽车工程学院'),(10,'电子与电气工程学院'),(11,'计算机科学与软件学院'),(12,'环境与化学工程学院'),(13,'食品与制药工程学院'),(14,'旅游与历史文化学院'),(15,'音乐学院'),(16,'美术学院');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `major_name` varchar(30) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,'数学与应用科学',7),(2,'信息与计算科学',7),(3,'金融与应用统计',7),(4,'汉语言文化',5),(5,'秘书学',5),(6,'书法学',5),(7,'汉语国际教育',5),(8,'语文教育',5),(9,'计算机科学与技术',11),(10,'网络工程',11),(11,'软件工程',11),(12,'物联网工程',11),(13,'市场营销',1),(14,'会计学',1),(15,'人力资源管理',1),(16,'国际经济与贸易',1),(17,'投资学和电子商务',1),(18,'法学',2),(19,'思想政治教育',2),(20,'行政管理',2),(21,'政治学与法律学',2),(22,'应用心理学',3),(23,'小学教育',3),(24,'学前教育',3),(25,'教育技术学',3),(26,'体育教育',4),(27,'社会体育指导与管理',4),(28,'休闲体育',4),(29,'师范英语',6),(30,'商务英语',6),(31,'外贸日语',6),(32,'生物科学与技术',8),(33,'园林工程',8),(34,'食品质量与安全',8),(35,'机械设计制造及其自动化',9),(36,'车辆工程',9),(37,'物理学',10),(38,'电子信息科学与技术',10),(39,'通信工程',10),(40,'电气工程及其自动化',10),(41,'化学',12),(42,'环境工程',12),(43,'制药工程',12),(44,'食品加工技术',12),(45,'精细化学品生产技术',12),(46,'制药工程',13),(47,'旅游管理',14),(48,'酒店管理',14),(49,'历史学',14),(50,'音乐学',15),(51,'音乐表演',15),(52,'舞蹈学',15),(53,'美术学',16),(54,'工艺美术',16),(55,'产品设计',16),(56,'动画设计',16),(57,'环境设计',16),(58,'视觉传达设计',16);
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `teaching_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,18,100,1,1),(2,19,50,1,1),(3,20,0,2,1),(4,21,0,2,1),(5,22,89,1,1),(6,23,0,2,1),(7,24,89,1,1),(8,25,0,2,1),(9,26,0,2,1),(10,27,0,2,1),(11,28,0,2,1),(12,29,0,2,1),(13,30,0,2,1),(14,31,0,2,1);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1,'2017-2018-1'),(2,'2017-2018-2'),(3,'2018-2019-1'),(4,'2018-2019-2'),(5,'2019-2020-1'),(6,'2019-2020-2');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_no` varchar(20) DEFAULT NULL,
  `student_name` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `origin` varchar(20) DEFAULT NULL,
  `cellphone` varchar(20) DEFAULT NULL,
  `idcard` varchar(30) DEFAULT NULL,
  `imageurl` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `politics` varchar(20) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `voucher` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `detailed_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (18,'201701132801','beacon','内蒙古省乌海市乌达区wdawd','男','11/21/2017','广东广州','18992323647','4412244342323141311',NULL,'在读','中共党员',28,'4412244342323141311','内蒙古','乌海','乌达区','wdawd'),(19,'201701132802','beacon1','广东省广州市花都花都路1号','男','01/14/1996','广东广州','18939827347','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路1号'),(20,'201701132803','beacon2','广东省广州市花都花都路2号','男','01/14/1997','广东广州','18939827348','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路2号'),(21,'201701132804','beacon3','广东省广州市花都花都路3号','男','01/14/1998','广东广州','18939827349','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路3号'),(22,'201701132805','beacon4','广东省广州市花都花都路4号','男','01/14/1999','广东广州','18939827350','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路4号'),(23,'201701132806','beacon5','广东省广州市花都花都路5号','男','01/14/2000','广东广州','18939827351','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路5号'),(24,'201701132807','beacon6','广东省广州市花都花都路6号','男','01/14/2001','广东广州','18939827352','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路6号'),(25,'201701132808','beacon7','广东省广州市花都花都路7号','男','01/14/2002','广东广州','18939827353','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路7号'),(26,'201701132809','beacon8','广东省广州市花都花都路8号','男','01/14/2003','广东广州','18939827354','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路8号'),(27,'201701132810','beacon9','广东省广州市花都花都路9号','男','01/14/2004','广东广州','18939827355','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路9号'),(28,'201701132811','beacon10','广东省广州市花都花都路10号','男','01/14/2005','广东广州','18939827356','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路10号'),(29,'201701132812','beacon11','广东省广州市花都花都路11号','男','01/14/2006','广东广州','18939827357','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路11号'),(30,'201701132813','beacon12','广东省广州市花都花都路12号','男','01/14/2007','广东广州','18939827358','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路12号'),(31,'201701132814','beacon13','广东省广州市花都花都路13号','男','01/14/2008','广东广州','18939827359','441225193847563821',NULL,'在读','共青团员',28,'441225193847563821','广东','广州','花都','花都路13号');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_no` varchar(20) DEFAULT NULL,
  `teacher_name` varchar(20) DEFAULT NULL,
  `cellphone` varchar(11) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `education` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `idcard` varchar(30) DEFAULT NULL,
  `voucher` varchar(30) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `detailed_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (2,'20170102','孔奥登1','18237458129','女','02/04/1985',1,'博士','广东省肇庆市端州区肇庆学院601号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院601号'),(3,'20170103','孔奥登2','18237458130','女','02/04/1986',1,'博士','广东省肇庆市端州区肇庆学院602号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院602号'),(4,'20170104','孔奥登3','18237458131','女','02/04/1987',1,'博士','广东省肇庆市端州区肇庆学院603号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院603号'),(5,'20170105','孔奥登4','18237458132','女','02/04/1988',1,'博士','广东省肇庆市端州区肇庆学院604号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院604号'),(6,'20170106','孔奥登5','18237458133','女','02/04/1989',1,'博士','广东省肇庆市端州区肇庆学院605号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院605号'),(7,'20170107','孔奥登6','18237458134','女','02/04/1990',1,'博士','广东省肇庆市端州区肇庆学院606号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院606号'),(8,'20170108','孔奥登7','18237458135','女','02/04/1991',1,'博士','广东省肇庆市端州区肇庆学院607号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院607号'),(9,'20170109','孔奥登8','18237458136','女','02/04/1992',1,'博士','广东省肇庆市端州区肇庆学院608号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院608号'),(10,'20170110','孔奥登9','18237458137','女','02/04/1993',1,'博士','广东省肇庆市端州区肇庆学院609号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院609号'),(11,'20170111','孔奥登10','18237458138','女','02/04/1994',1,'博士','广东省肇庆市端州区肇庆学院610号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院610号'),(12,'20170112','孔奥登11','18237458139','女','02/04/1995',1,'博士','广东省肇庆市端州区肇庆学院611号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院611号'),(13,'20170113','孔奥登12','18237458140','女','02/04/1996',1,'博士','广东省肇庆市端州区肇庆学院612号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院612号'),(14,'20170114','孔奥登13','18237458141','女','02/04/1997',1,'博士','广东省肇庆市端州区肇庆学院613号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院613号'),(15,'20170115','孔奥登14','18237458142','女','02/04/1998',1,'博士','广东省肇庆市端州区肇庆学院614号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院614号'),(16,'20170116','孔奥登15','18237458143','女','02/04/1999',1,'博士','广东省肇庆市端州区肇庆学院615号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院615号'),(17,'20170117','孔奥登16','18237458144','女','02/04/2000',1,'博士','广东省肇庆市端州区肇庆学院616号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院616号'),(18,'20170118','孔奥登17','18237458145','女','02/04/2001',1,'博士','广东省肇庆市端州区肇庆学院617号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院617号'),(19,'20170119','孔奥登18','18237458146','女','02/04/2002',1,'博士','广东省肇庆市端州区肇庆学院618号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院618号'),(20,'20170120','孔奥登19','18237458147','女','02/04/2003',1,'博士','广东省肇庆市端州区肇庆学院619号','44282519283746248392','44282519283746248392','广东','肇庆','端州区','肇庆学院619号');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaching`
--

DROP TABLE IF EXISTS `teaching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teaching` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaching`
--

LOCK TABLES `teaching` WRITE;
/*!40000 ALTER TABLE `teaching` DISABLE KEYS */;
INSERT INTO `teaching` VALUES (1,2,28,1,20);
/*!40000 ALTER TABLE `teaching` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-11  0:11:13
