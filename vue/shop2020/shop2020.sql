-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: shop2020
-- ------------------------------------------------------
-- Server version	5.6.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_table`
--

DROP TABLE IF EXISTS `branch_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_table` (
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(128) NOT NULL,
  `transaction_id` bigint(20) DEFAULT NULL,
  `resource_group_id` varchar(32) DEFAULT NULL,
  `resource_id` varchar(256) DEFAULT NULL,
  `lock_key` varchar(128) DEFAULT NULL,
  `branch_type` varchar(8) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `client_id` varchar(64) DEFAULT NULL,
  `application_data` varchar(2000) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`branch_id`),
  KEY `idx_xid` (`xid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_table`
--

LOCK TABLES `branch_table` WRITE;
/*!40000 ALTER TABLE `branch_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `branch_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_ad`
--

DROP TABLE IF EXISTS `e_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `sort` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `img` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `adsense_id` int(11) DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_ad`
--

LOCK TABLES `e_ad` WRITE;
/*!40000 ALTER TABLE `e_ad` DISABLE KEYS */;
INSERT INTO `e_ad` VALUES (1,'q','2',NULL,'2019-01-14 10:37:20','2020-02-08 10:37:22','/upload/20200128202353atkl.png','',',,12,q,',1,'0'),(2,'1','11',NULL,'2019-01-15 10:42:04','2020-02-29 10:42:04','/upload/20191218140639fgp8.png','121','11,1212',1,'0'),(3,'2222',NULL,NULL,'2020-01-29 11:22:55','2020-01-31 00:00:00','/upload/20200129113325q9hs.png','222','222',1,'0'),(4,'w',NULL,'33','2020-01-29 00:00:00','2020-01-31 00:00:00','/upload/20200129113242k8ft.png',NULL,'3',1,'0'),(5,'22',NULL,NULL,NULL,NULL,'/upload/20200202113055h2lf.png',NULL,NULL,1,'0'),(6,'ww',NULL,'w',NULL,NULL,'','','1',1,'0');
/*!40000 ALTER TABLE `e_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_address`
--

DROP TABLE IF EXISTS `e_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `area` varchar(200) DEFAULT NULL,
  `def` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `addressName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_address`
--

LOCK TABLES `e_address` WRITE;
/*!40000 ALTER TABLE `e_address` DISABLE KEYS */;
INSERT INTO `e_address` VALUES (1,'22','15881169173','颐天福诚医院','22',0,3,'颐天福诚医院'),(2,'3','15881169173','云顶雅居','33',1,3,'云顶雅居'),(3,'wwe','15881169173','云顶雅居','we',1,7,'云顶雅居');
/*!40000 ALTER TABLE `e_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_adsense`
--

DROP TABLE IF EXISTS `e_adsense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_adsense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `sort` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_adsense`
--

LOCK TABLES `e_adsense` WRITE;
/*!40000 ALTER TABLE `e_adsense` DISABLE KEYS */;
INSERT INTO `e_adsense` VALUES (1,'首页广告位','1'),(2,NULL,NULL),(3,NULL,NULL);
/*!40000 ALTER TABLE `e_adsense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_cart`
--

DROP TABLE IF EXISTS `e_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL COMMENT '单价',
  `num` varchar(45) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `dateline` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `discount` decimal(8,2) DEFAULT NULL COMMENT '优惠',
  `refer` varchar(45) DEFAULT NULL,
  `referid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_cart`
--

LOCK TABLES `e_cart` WRITE;
/*!40000 ALTER TABLE `e_cart` DISABLE KEYS */;
INSERT INTO `e_cart` VALUES (19,'陶华碧老干妈香辣脆油辣椒210克/瓶 ',3.00,'1','/upload/20200130133930zdyc.jpg','2020-02-15 19:03:40',7,105,'[\"中\",\"黑\"]',NULL,'Product',10),(20,'陶华碧老干妈香辣脆油辣椒210克/瓶 ',1.00,'1','/upload/20200130133930zdyc.jpg','2020-02-27 18:38:21',3,102,'[\"小\",\"红\"]',NULL,'Product',10);
/*!40000 ALTER TABLE `e_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_channel`
--

DROP TABLE IF EXISTS `e_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `pid` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `path` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `sort` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_channel`
--

LOCK TABLES `e_channel` WRITE;
/*!40000 ALTER TABLE `e_channel` DISABLE KEYS */;
INSERT INTO `e_channel` VALUES (1,'新闻',NULL,'news','/upload/20191218150242dj2r.png','1'),(2,'视频',NULL,'video',NULL,'2'),(3,'图片',NULL,'image',NULL,'3'),(4,'时政','1','shizheng',NULL,'1'),(5,'产品',NULL,'product',NULL,'4'),(6,'明星',NULL,'mx','','22'),(13,'ss','12','ss','ss','2'),(14,'测试二级分类','6','11','2','2'),(15,'sss','3','s','s','1'),(16,'22',NULL,'22','','222');
/*!40000 ALTER TABLE `e_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_code`
--

DROP TABLE IF EXISTS `e_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `yaoqing` decimal(9,2) DEFAULT NULL,
  `yaoqing_fee` decimal(9,2) DEFAULT NULL,
  `shouyi_fee` decimal(9,2) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_code`
--

LOCK TABLES `e_code` WRITE;
/*!40000 ALTER TABLE `e_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_collect`
--

DROP TABLE IF EXISTS `e_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `referid` int(11) DEFAULT NULL,
  `refer` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dateline` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` mediumtext COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_collect`
--

LOCK TABLES `e_collect` WRITE;
/*!40000 ALTER TABLE `e_collect` DISABLE KEYS */;
INSERT INTO `e_collect` VALUES (4,'Product',10,'Product','2020-02-02 17:37:00',7,NULL),(5,'Product',11,'Product','2020-02-15 19:01:18',7,NULL);
/*!40000 ALTER TABLE `e_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_comment`
--

DROP TABLE IF EXISTS `e_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(6000) COLLATE utf8_bin DEFAULT NULL,
  `refer` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `referid` int(11) DEFAULT NULL,
  `parent` varchar(45) COLLATE utf8_bin DEFAULT '',
  `dateline` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_comment`
--

LOCK TABLES `e_comment` WRITE;
/*!40000 ALTER TABLE `e_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_content`
--

DROP TABLE IF EXISTS `e_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `content` mediumtext COLLATE utf8_bin,
  `dateline` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(20000) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `user_id` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `channel_id` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_content`
--

LOCK TABLES `e_content` WRITE;
/*!40000 ALTER TABLE `e_content` DISABLE KEYS */;
INSERT INTO `e_content` VALUES (12,'22','<p>22dsadasd</p><p>dsadsa<img src=\"/upload/20191221150803y6rn.jpg\" width=\"78\" style=\"cursor: nwse-resize;\"></p>',' 2019-12-19 13:51:09','22','/upload/201912200846185je3.png',NULL,'1'),(13,'2','<p>不少人认为，妈妈照顾家庭没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/3051677302/1000\"></p><p><strong>特约作者 | 张田勘</strong></p><p>最近，某知名母婴社区平台发布了《2019年度中国家庭孕育方式白皮书》。数据很多，最吸引人的，无疑是“95后全职妈妈占比达到82%”。一些网友惊呼数据可怕——“这么多25岁以下的人做了全职妈妈！”过去是妇女能顶半边天，现在是“95后全职妈妈占八成”。为何会发生这种变化？</p><p><strong>中国的“全职妈妈”越来越多</strong></p><p>在这则报告中，中国年轻父母全职在家的比例逐渐上升，达到58.6%；其中，95后全职妈妈占比已达到82%，集中在低线城市。</p><p>所谓高线城市一般指一二线城市，低线城市是三四五线城市。有人觉得，“八成”比例太高，当然任何调查都可能有误差，但从社交媒体和其他调查报告也可以看出，中国的全职妈妈是一个相当庞大的群体。</p><p><strong>“全职妈妈”被忽视，是因为她们处在社会的边缘，声音很少被听到。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065318848/1000\"></p><p>实际上，早在2012年的第三期中国妇女社会地位调查数据即显示，在有0-3岁孩子的18-45岁城镇女性中，有过职业中断经历的比例为35.5%，其中67.2%是因为结婚生育、照顾孩子。<strong>此外，还有28.9%的人目前没有工作，其中98%是为了照顾孩子。</strong></p><p>现实中，中国社会目前看护3岁以下孩子主要是4种模式：祖辈照料、保姆照顾、全职妈妈养育和托育机构照顾。对于缺乏祖辈照料，雇保姆又不合算的家庭来说，一个人全职孩子是很自然的事。</p><p>全<strong>职妈妈的增加，既与经济条件改善有关，也有育儿观念变化的原因。</strong>在低线城市，父母一般会为孩子准备好婚房，平时也会接济子女，年轻夫妻的经济压力小。这也是为何95后全职妈妈会集中在低线城市。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065326232/1000\"></p><p>另一方面，父母对子女的教育越来越重视，养育孩子就是投资未来的观念深入人心。很多人愿意暂时放弃职场，全心全意养育宝宝。<strong>于是，很多高知女性也开始加入全职妈妈的队伍。</strong></p><p>此外，就算有父母可以帮忙，一些年轻人依然会选择自己带孩子。这可能有对原生家庭的不满——自己做父母了，不能再按原来的方式教育子女。以上种种，都会让年轻人倾向于做全职家长。</p><p><strong>但中国的全职妈妈仍面临巨大压力，甚至一些女性也不认可“全职妈妈”这个职业</strong></p><p>人类进入信息时代，一个明显的特点是生育意愿下降。生育意愿降低原因很多，如追求自由和没有孩子拖累的生活，受财力、住房等条件的限制，想要不断提升自己等，都会造成生育率的下降。中国也不例外。</p><p>邻国日本人口也连续13年负成长，2019年出生人数首度跌破90万。韩国年轻夫女结婚五年内，四成无子女。原因也与中国差不多，主要是“夫妻双职工身份”、“没有房产”。</p><p>全职母亲尽管人数不少，也是在投资未来，但她们承受的压力也是巨大的。</p><p>在强调经济独立的今天，人们普遍将经济独立和人格、思想的独立紧密联系。<strong>做全职妈妈，不仅是旁人会担忧，自己也会很难接受。一位高知女性这样描述自己的焦虑，</strong>“一个女人如果经济不独立，就意味着自由受限，虽不至于低到尘埃里，可和老公拌嘴吵架都要缺一口气，哪怕未来分手都要重新自谋生路。这让从小就被教育“女孩子一定要自立自强，想要什么自己赚钱买，好好爱自己最重要”的我，时时刻刻不能摆脱“被人养，没出息”的羞辱感，<strong>曾有一段时间我每天都感觉自信在迅速崩塌。</strong>”（微信公号：奴隶社会）</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065332073/1000\"><em>微博网友评论</em></p><p>更可怕的是，整个社会对全职妈妈的价值仍没有足够的认识。在韩国，有妈虫一词——人们经常把“虫”加在各种让人看不惯的行为后面，用来讽刺某类人。“妈虫”这个词则专门用来讽刺要靠丈夫养活、自己吃喝玩乐的全职妈妈。</p><p><strong>在不少人眼中，妈妈照顾家庭也没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</strong></p><p>这也是为什么全职妈妈回归职场的愿望都很强。2016年上半年国家卫计委在北京、上海、广州、沈阳等10个城市进行调查。被调查的全职母亲中，近1/3是因为孩子无人照料而被迫中断就业；<strong>超过3/4的全职母亲表示，如有人帮助带孩子，将会重新就业。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/8926614317/1000\"><em>数据来源：《2018年职场妈妈生存状况调查报告》</em></p><p>但一个尖锐而不容回避的问题是，东亚国家职场劳动强度大，竞争激烈。如果女性脱离职场几年或十几年，她还能否顺利回到职场？</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065351629/1000\"></p><p><strong>对全职妈妈要有实实在在的帮助</strong></p><p>如果能解决全职妈妈的回归职场的后顾之忧，不仅是可以让养育投资更有价值，也能鼓励更多的现代年轻女性勇于生育孩子，提升日益低迷的生育率。这对于任何一个国家和社会都是多赢的结局。<strong>毕竟，有了后代的正常繁衍，一个社会才能延续和繁荣下去。</strong></p><p>尽管中国尚无确切的调查数据反映全职妈妈成功回归职场的比例有多少，但一组数字还可以看出中国女性的就业困境：人口普查数据显示，<strong>中国城市地区20-59岁女性的就业率从1990年的77.4%下降到2010年的60.8%。</strong></p><p>对全职妈妈提供帮助，一些国家的做法值得借鉴。</p><p><strong>发达国家的普遍情况是，首先承认全职妈妈是一个与其他360行一样不分高低的职业。</strong></p><p>在美国，全职妈妈或庭主妇不缴纳社保退休金，但是在其退休龄时，依然可以领取配偶退休金的一半（这笔钱是政府配发的，不会影响到配偶拿到的数额）。也就是说，全职妈妈或家庭主妇也是一个正常的职业，退休时可以拿养老金。而且，只要家庭中有一人工作，无论是妻子还是丈夫和不满18岁的孩子都可以享受医疗保险。<strong>正由于这个原因，发达国家的全职爸爸也不少。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065368230/1000\"></p><p><strong>有的国家如加拿大，是以政府补贴来资助全职妈妈，也就是承认这是一种职业。</strong>全职妈妈的福利包括免税、孩子的日常津贴、牛奶金等，平均每个孩子每个月可以拿到800加元左右（约合人民币4100元）。如果以两胎计算，全职妈妈一年至少能拿到3-5万加元（约合人民币16-26万）的政府补贴——相当于一个全职职工的收入。</p><p>更为重要的是，这些国家的全职妈妈想要回归职场不会有任何障碍，只要岗位适合，雇主就必须雇用，否则就是歧视。正因为如此，我们能看到国外航空有很多妈级的空乘，以及各种职业中的中老年女性职员。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065370579/1000\"></p><p>相形之下，中国的全职妈妈没有工资、没有补贴、没有医保，由于较长时间脱离岗位和社会，也容易产生种种问题：经济开销不容易、夫妻矛盾、回归职场难，还不被社会认可。</p><p><strong>国家的财力是有限的，但一些工程可以不搞，对全职妈妈的帮助不能没有。</strong>如果没有对她们养育孩子的辛苦和职业的认同和帮助，全职妈妈将难以为继，中国的人口形势亦会继续恶化。</p><p>免责声明：本文来自腾讯新闻客户端自媒体，不代表腾讯网的观点和立场。</p><p>不少人认为，妈妈照顾家庭没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/3051677302/1000\"></p><p><strong>特约作者 | 张田勘</strong></p><p>最近，某知名母婴社区平台发布了《2019年度中国家庭孕育方式白皮书》。数据很多，最吸引人的，无疑是“95后全职妈妈占比达到82%”。一些网友惊呼数据可怕——“这么多25岁以下的人做了全职妈妈！”过去是妇女能顶半边天，现在是“95后全职妈妈占八成”。为何会发生这种变化？</p><p><strong>中国的“全职妈妈”越来越多</strong></p><p>在这则报告中，中国年轻父母全职在家的比例逐渐上升，达到58.6%；其中，95后全职妈妈占比已达到82%，集中在低线城市。</p><p>所谓高线城市一般指一二线城市，低线城市是三四五线城市。有人觉得，“八成”比例太高，当然任何调查都可能有误差，但从社交媒体和其他调查报告也可以看出，中国的全职妈妈是一个相当庞大的群体。</p><p><strong>“全职妈妈”被忽视，是因为她们处在社会的边缘，声音很少被听到。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065318848/1000\"></p><p>实际上，早在2012年的第三期中国妇女社会地位调查数据即显示，在有0-3岁孩子的18-45岁城镇女性中，有过职业中断经历的比例为35.5%，其中67.2%是因为结婚生育、照顾孩子。<strong>此外，还有28.9%的人目前没有工作，其中98%是为了照顾孩子。</strong></p><p>现实中，中国社会目前看护3岁以下孩子主要是4种模式：祖辈照料、保姆照顾、全职妈妈养育和托育机构照顾。对于缺乏祖辈照料，雇保姆又不合算的家庭来说，一个人全职孩子是很自然的事。</p><p>全<strong>职妈妈的增加，既与经济条件改善有关，也有育儿观念变化的原因。</strong>在低线城市，父母一般会为孩子准备好婚房，平时也会接济子女，年轻夫妻的经济压力小。这也是为何95后全职妈妈会集中在低线城市。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065326232/1000\"></p><p>另一方面，父母对子女的教育越来越重视，养育孩子就是投资未来的观念深入人心。很多人愿意暂时放弃职场，全心全意养育宝宝。<strong>于是，很多高知女性也开始加入全职妈妈的队伍。</strong></p><p>此外，就算有父母可以帮忙，一些年轻人依然会选择自己带孩子。这可能有对原生家庭的不满——自己做父母了，不能再按原来的方式教育子女。以上种种，都会让年轻人倾向于做全职家长。</p><p><strong>但中国的全职妈妈仍面临巨大压力，甚至一些女性也不认可“全职妈妈”这个职业</strong></p><p>人类进入信息时代，一个明显的特点是生育意愿下降。生育意愿降低原因很多，如追求自由和没有孩子拖累的生活，受财力、住房等条件的限制，想要不断提升自己等，都会造成生育率的下降。中国也不例外。</p><p>邻国日本人口也连续13年负成长，2019年出生人数首度跌破90万。韩国年轻夫女结婚五年内，四成无子女。原因也与中国差不多，主要是“夫妻双职工身份”、“没有房产”。</p><p>全职母亲尽管人数不少，也是在投资未来，但她们承受的压力也是巨大的。</p><p>在强调经济独立的今天，人们普遍将经济独立和人格、思想的独立紧密联系。<strong>做全职妈妈，不仅是旁人会担忧，自己也会很难接受。一位高知女性这样描述自己的焦虑，</strong>“一个女人如果经济不独立，就意味着自由受限，虽不至于低到尘埃里，可和老公拌嘴吵架都要缺一口气，哪怕未来分手都要重新自谋生路。这让从小就被教育“女孩子一定要自立自强，想要什么自己赚钱买，好好爱自己最重要”的我，时时刻刻不能摆脱“被人养，没出息”的羞辱感，<strong>曾有一段时间我每天都感觉自信在迅速崩塌。</strong>”（微信公号：奴隶社会）</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065332073/1000\"><em>微博网友评论</em></p><p>更可怕的是，整个社会对全职妈妈的价值仍没有足够的认识。在韩国，有妈虫一词——人们经常把“虫”加在各种让人看不惯的行为后面，用来讽刺某类人。“妈虫”这个词则专门用来讽刺要靠丈夫养活、自己吃喝玩乐的全职妈妈。</p><p><strong>在不少人眼中，妈妈照顾家庭也没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</strong></p><p>这也是为什么全职妈妈回归职场的愿望都很强。2016年上半年国家卫计委在北京、上海、广州、沈阳等10个城市进行调查。被调查的全职母亲中，近1/3是因为孩子无人照料而被迫中断就业；<strong>超过3/4的全职母亲表示，如有人帮助带孩子，将会重新就业。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/8926614317/1000\"><em>数据来源：《2018年职场妈妈生存状况调查报告》</em></p><p>但一个尖锐而不容回避的问题是，东亚国家职场劳动强度大，竞争激烈。如果女性脱离职场几年或十几年，她还能否顺利回到职场？</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065351629/1000\"></p><p><strong>对全职妈妈要有实实在在的帮助</strong></p><p>如果能解决全职妈妈的回归职场的后顾之忧，不仅是可以让养育投资更有价值，也能鼓励更多的现代年轻女性勇于生育孩子，提升日益低迷的生育率。这对于任何一个国家和社会都是多赢的结局。<strong>毕竟，有了后代的正常繁衍，一个社会才能延续和繁荣下去。</strong></p><p>尽管中国尚无确切的调查数据反映全职妈妈成功回归职场的比例有多少，但一组数字还可以看出中国女性的就业困境：人口普查数据显示，<strong>中国城市地区20-59岁女性的就业率从1990年的77.4%下降到2010年的60.8%。</strong></p><p>对全职妈妈提供帮助，一些国家的做法值得借鉴。</p><p><strong>发达国家的普遍情况是，首先承认全职妈妈是一个与其他360行一样不分高低的职业。</strong></p><p>在美国，全职妈妈或庭主妇不缴纳社保退休金，但是在其退休龄时，依然可以领取配偶退休金的一半（这笔钱是政府配发的，不会影响到配偶拿到的数额）。也就是说，全职妈妈或家庭主妇也是一个正常的职业，退休时可以拿养老金。而且，只要家庭中有一人工作，无论是妻子还是丈夫和不满18岁的孩子都可以享受医疗保险。<strong>正由于这个原因，发达国家的全职爸爸也不少。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065368230/1000\"></p><p><strong>有的国家如加拿大，是以政府补贴来资助全职妈妈，也就是承认这是一种职业。</strong>全职妈妈的福利包括免税、孩子的日常津贴、牛奶金等，平均每个孩子每个月可以拿到800加元左右（约合人民币4100元）。如果以两胎计算，全职妈妈一年至少能拿到3-5万加元（约合人民币16-26万）的政府补贴——相当于一个全职职工的收入。</p><p>更为重要的是，这些国家的全职妈妈想要回归职场不会有任何障碍，只要岗位适合，雇主就必须雇用，否则就是歧视。正因为如此，我们能看到国外航空有很多妈级的空乘，以及各种职业中的中老年女性职员。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065370579/1000\"></p><p>相形之下，中国的全职妈妈没有工资、没有补贴、没有医保，由于较长时间脱离岗位和社会，也容易产生种种问题：经济开销不容易、夫妻矛盾、回归职场难，还不被社会认可。</p><p><strong>国家的财力是有限的，但一些工程可以不搞，对全职妈妈的帮助不能没有。</strong>如果没有对她们养育孩子的辛苦和职业的认同和帮助，全职妈妈将难以为继，中国的人口形势亦会继续恶化。</p><p>免责声明：本文来自腾讯新闻客户端自媒体，不代表腾讯网的观点和立场。</p><p>不少人认为，妈妈照顾家庭没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/3051677302/1000\"></p><p><strong>特约作者 | 张田勘</strong></p><p>最近，某知名母婴社区平台发布了《2019年度中国家庭孕育方式白皮书》。数据很多，最吸引人的，无疑是“95后全职妈妈占比达到82%”。一些网友惊呼数据可怕——“这么多25岁以下的人做了全职妈妈！”过去是妇女能顶半边天，现在是“95后全职妈妈占八成”。为何会发生这种变化？</p><p><strong>中国的“全职妈妈”越来越多</strong></p><p>在这则报告中，中国年轻父母全职在家的比例逐渐上升，达到58.6%；其中，95后全职妈妈占比已达到82%，集中在低线城市。</p><p>所谓高线城市一般指一二线城市，低线城市是三四五线城市。有人觉得，“八成”比例太高，当然任何调查都可能有误差，但从社交媒体和其他调查报告也可以看出，中国的全职妈妈是一个相当庞大的群体。</p><p><strong>“全职妈妈”被忽视，是因为她们处在社会的边缘，声音很少被听到。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065318848/1000\"></p><p>实际上，早在2012年的第三期中国妇女社会地位调查数据即显示，在有0-3岁孩子的18-45岁城镇女性中，有过职业中断经历的比例为35.5%，其中67.2%是因为结婚生育、照顾孩子。<strong>此外，还有28.9%的人目前没有工作，其中98%是为了照顾孩子。</strong></p><p>现实中，中国社会目前看护3岁以下孩子主要是4种模式：祖辈照料、保姆照顾、全职妈妈养育和托育机构照顾。对于缺乏祖辈照料，雇保姆又不合算的家庭来说，一个人全职孩子是很自然的事。</p><p>全<strong>职妈妈的增加，既与经济条件改善有关，也有育儿观念变化的原因。</strong>在低线城市，父母一般会为孩子准备好婚房，平时也会接济子女，年轻夫妻的经济压力小。这也是为何95后全职妈妈会集中在低线城市。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065326232/1000\"></p><p>另一方面，父母对子女的教育越来越重视，养育孩子就是投资未来的观念深入人心。很多人愿意暂时放弃职场，全心全意养育宝宝。<strong>于是，很多高知女性也开始加入全职妈妈的队伍。</strong></p><p>此外，就算有父母可以帮忙，一些年轻人依然会选择自己带孩子。这可能有对原生家庭的不满——自己做父母了，不能再按原来的方式教育子女。以上种种，都会让年轻人倾向于做全职家长。</p><p><strong>但中国的全职妈妈仍面临巨大压力，甚至一些女性也不认可“全职妈妈”这个职业</strong></p><p>人类进入信息时代，一个明显的特点是生育意愿下降。生育意愿降低原因很多，如追求自由和没有孩子拖累的生活，受财力、住房等条件的限制，想要不断提升自己等，都会造成生育率的下降。中国也不例外。</p><p>邻国日本人口也连续13年负成长，2019年出生人数首度跌破90万。韩国年轻夫女结婚五年内，四成无子女。原因也与中国差不多，主要是“夫妻双职工身份”、“没有房产”。</p><p>全职母亲尽管人数不少，也是在投资未来，但她们承受的压力也是巨大的。</p><p>在强调经济独立的今天，人们普遍将经济独立和人格、思想的独立紧密联系。<strong>做全职妈妈，不仅是旁人会担忧，自己也会很难接受。一位高知女性这样描述自己的焦虑，</strong>“一个女人如果经济不独立，就意味着自由受限，虽不至于低到尘埃里，可和老公拌嘴吵架都要缺一口气，哪怕未来分手都要重新自谋生路。这让从小就被教育“女孩子一定要自立自强，想要什么自己赚钱买，好好爱自己最重要”的我，时时刻刻不能摆脱“被人养，没出息”的羞辱感，<strong>曾有一段时间我每天都感觉自信在迅速崩塌。</strong>”（微信公号：奴隶社会）</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065332073/1000\"><em>微博网友评论</em></p><p>更可怕的是，整个社会对全职妈妈的价值仍没有足够的认识。在韩国，有妈虫一词——人们经常把“虫”加在各种让人看不惯的行为后面，用来讽刺某类人。“妈虫”这个词则专门用来讽刺要靠丈夫养活、自己吃喝玩乐的全职妈妈。</p><p><strong>在不少人眼中，妈妈照顾家庭也没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</strong></p><p>这也是为什么全职妈妈回归职场的愿望都很强。2016年上半年国家卫计委在北京、上海、广州、沈阳等10个城市进行调查。被调查的全职母亲中，近1/3是因为孩子无人照料而被迫中断就业；<strong>超过3/4的全职母亲表示，如有人帮助带孩子，将会重新就业。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/8926614317/1000\"><em>数据来源：《2018年职场妈妈生存状况调查报告》</em></p><p>但一个尖锐而不容回避的问题是，东亚国家职场劳动强度大，竞争激烈。如果女性脱离职场几年或十几年，她还能否顺利回到职场？</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065351629/1000\"></p><p><strong>对全职妈妈要有实实在在的帮助</strong></p><p>如果能解决全职妈妈的回归职场的后顾之忧，不仅是可以让养育投资更有价值，也能鼓励更多的现代年轻女性勇于生育孩子，提升日益低迷的生育率。这对于任何一个国家和社会都是多赢的结局。<strong>毕竟，有了后代的正常繁衍，一个社会才能延续和繁荣下去。</strong></p><p>尽管中国尚无确切的调查数据反映全职妈妈成功回归职场的比例有多少，但一组数字还可以看出中国女性的就业困境：人口普查数据显示，<strong>中国城市地区20-59岁女性的就业率从1990年的77.4%下降到2010年的60.8%。</strong></p><p>对全职妈妈提供帮助，一些国家的做法值得借鉴。</p><p><strong>发达国家的普遍情况是，首先承认全职妈妈是一个与其他360行一样不分高低的职业。</strong></p><p>在美国，全职妈妈或庭主妇不缴纳社保退休金，但是在其退休龄时，依然可以领取配偶退休金的一半（这笔钱是政府配发的，不会影响到配偶拿到的数额）。也就是说，全职妈妈或家庭主妇也是一个正常的职业，退休时可以拿养老金。而且，只要家庭中有一人工作，无论是妻子还是丈夫和不满18岁的孩子都可以享受医疗保险。<strong>正由于这个原因，发达国家的全职爸爸也不少。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065368230/1000\"></p><p><strong>有的国家如加拿大，是以政府补贴来资助全职妈妈，也就是承认这是一种职业。</strong>全职妈妈的福利包括免税、孩子的日常津贴、牛奶金等，平均每个孩子每个月可以拿到800加元左右（约合人民币4100元）。如果以两胎计算，全职妈妈一年至少能拿到3-5万加元（约合人民币16-26万）的政府补贴——相当于一个全职职工的收入。</p><p>更为重要的是，这些国家的全职妈妈想要回归职场不会有任何障碍，只要岗位适合，雇主就必须雇用，否则就是歧视。正因为如此，我们能看到国外航空有很多妈级的空乘，以及各种职业中的中老年女性职员。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065370579/1000\"></p><p>相形之下，中国的全职妈妈没有工资、没有补贴、没有医保，由于较长时间脱离岗位和社会，也容易产生种种问题：经济开销不容易、夫妻矛盾、回归职场难，还不被社会认可。</p><p><strong>国家的财力是有限的，但一些工程可以不搞，对全职妈妈的帮助不能没有。</strong>如果没有对她们养育孩子的辛苦和职业的认同和帮助，全职妈妈将难以为继，中国的人口形势亦会继续恶化。</p><p>免责声明：本文来自腾讯新闻客户端自媒体，不代表腾讯网的观点和立场。</p><p>不少人认为，妈妈照顾家庭没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/3051677302/1000\"></p><p><strong>特约作者 | 张田勘</strong></p><p>最近，某知名母婴社区平台发布了《2019年度中国家庭孕育方式白皮书》。数据很多，最吸引人的，无疑是“95后全职妈妈占比达到82%”。一些网友惊呼数据可怕——“这么多25岁以下的人做了全职妈妈！”过去是妇女能顶半边天，现在是“95后全职妈妈占八成”。为何会发生这种变化？</p><p><strong>中国的“全职妈妈”越来越多</strong></p><p>在这则报告中，中国年轻父母全职在家的比例逐渐上升，达到58.6%；其中，95后全职妈妈占比已达到82%，集中在低线城市。</p><p>所谓高线城市一般指一二线城市，低线城市是三四五线城市。有人觉得，“八成”比例太高，当然任何调查都可能有误差，但从社交媒体和其他调查报告也可以看出，中国的全职妈妈是一个相当庞大的群体。</p><p><strong>“全职妈妈”被忽视，是因为她们处在社会的边缘，声音很少被听到。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065318848/1000\"></p><p>实际上，早在2012年的第三期中国妇女社会地位调查数据即显示，在有0-3岁孩子的18-45岁城镇女性中，有过职业中断经历的比例为35.5%，其中67.2%是因为结婚生育、照顾孩子。<strong>此外，还有28.9%的人目前没有工作，其中98%是为了照顾孩子。</strong></p><p>现实中，中国社会目前看护3岁以下孩子主要是4种模式：祖辈照料、保姆照顾、全职妈妈养育和托育机构照顾。对于缺乏祖辈照料，雇保姆又不合算的家庭来说，一个人全职孩子是很自然的事。</p><p>全<strong>职妈妈的增加，既与经济条件改善有关，也有育儿观念变化的原因。</strong>在低线城市，父母一般会为孩子准备好婚房，平时也会接济子女，年轻夫妻的经济压力小。这也是为何95后全职妈妈会集中在低线城市。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065326232/1000\"></p><p>另一方面，父母对子女的教育越来越重视，养育孩子就是投资未来的观念深入人心。很多人愿意暂时放弃职场，全心全意养育宝宝。<strong>于是，很多高知女性也开始加入全职妈妈的队伍。</strong></p><p>此外，就算有父母可以帮忙，一些年轻人依然会选择自己带孩子。这可能有对原生家庭的不满——自己做父母了，不能再按原来的方式教育子女。以上种种，都会让年轻人倾向于做全职家长。</p><p><strong>但中国的全职妈妈仍面临巨大压力，甚至一些女性也不认可“全职妈妈”这个职业</strong></p><p>人类进入信息时代，一个明显的特点是生育意愿下降。生育意愿降低原因很多，如追求自由和没有孩子拖累的生活，受财力、住房等条件的限制，想要不断提升自己等，都会造成生育率的下降。中国也不例外。</p><p>邻国日本人口也连续13年负成长，2019年出生人数首度跌破90万。韩国年轻夫女结婚五年内，四成无子女。原因也与中国差不多，主要是“夫妻双职工身份”、“没有房产”。</p><p>全职母亲尽管人数不少，也是在投资未来，但她们承受的压力也是巨大的。</p><p>在强调经济独立的今天，人们普遍将经济独立和人格、思想的独立紧密联系。<strong>做全职妈妈，不仅是旁人会担忧，自己也会很难接受。一位高知女性这样描述自己的焦虑，</strong>“一个女人如果经济不独立，就意味着自由受限，虽不至于低到尘埃里，可和老公拌嘴吵架都要缺一口气，哪怕未来分手都要重新自谋生路。这让从小就被教育“女孩子一定要自立自强，想要什么自己赚钱买，好好爱自己最重要”的我，时时刻刻不能摆脱“被人养，没出息”的羞辱感，<strong>曾有一段时间我每天都感觉自信在迅速崩塌。</strong>”（微信公号：奴隶社会）</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065332073/1000\"><em>微博网友评论</em></p><p>更可怕的是，整个社会对全职妈妈的价值仍没有足够的认识。在韩国，有妈虫一词——人们经常把“虫”加在各种让人看不惯的行为后面，用来讽刺某类人。“妈虫”这个词则专门用来讽刺要靠丈夫养活、自己吃喝玩乐的全职妈妈。</p><p><strong>在不少人眼中，妈妈照顾家庭也没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</strong></p><p>这也是为什么全职妈妈回归职场的愿望都很强。2016年上半年国家卫计委在北京、上海、广州、沈阳等10个城市进行调查。被调查的全职母亲中，近1/3是因为孩子无人照料而被迫中断就业；<strong>超过3/4的全职母亲表示，如有人帮助带孩子，将会重新就业。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/8926614317/1000\"><em>数据来源：《2018年职场妈妈生存状况调查报告》</em></p><p>但一个尖锐而不容回避的问题是，东亚国家职场劳动强度大，竞争激烈。如果女性脱离职场几年或十几年，她还能否顺利回到职场？</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065351629/1000\"></p><p><strong>对全职妈妈要有实实在在的帮助</strong></p><p>如果能解决全职妈妈的回归职场的后顾之忧，不仅是可以让养育投资更有价值，也能鼓励更多的现代年轻女性勇于生育孩子，提升日益低迷的生育率。这对于任何一个国家和社会都是多赢的结局。<strong>毕竟，有了后代的正常繁衍，一个社会才能延续和繁荣下去。</strong></p><p>尽管中国尚无确切的调查数据反映全职妈妈成功回归职场的比例有多少，但一组数字还可以看出中国女性的就业困境：人口普查数据显示，<strong>中国城市地区20-59岁女性的就业率从1990年的77.4%下降到2010年的60.8%。</strong></p><p>对全职妈妈提供帮助，一些国家的做法值得借鉴。</p><p><strong>发达国家的普遍情况是，首先承认全职妈妈是一个与其他360行一样不分高低的职业。</strong></p><p>在美国，全职妈妈或庭主妇不缴纳社保退休金，但是在其退休龄时，依然可以领取配偶退休金的一半（这笔钱是政府配发的，不会影响到配偶拿到的数额）。也就是说，全职妈妈或家庭主妇也是一个正常的职业，退休时可以拿养老金。而且，只要家庭中有一人工作，无论是妻子还是丈夫和不满18岁的孩子都可以享受医疗保险。<strong>正由于这个原因，发达国家的全职爸爸也不少。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065368230/1000\"></p><p><strong>有的国家如加拿大，是以政府补贴来资助全职妈妈，也就是承认这是一种职业。</strong>全职妈妈的福利包括免税、孩子的日常津贴、牛奶金等，平均每个孩子每个月可以拿到800加元左右（约合人民币4100元）。如果以两胎计算，全职妈妈一年至少能拿到3-5万加元（约合人民币16-26万）的政府补贴——相当于一个全职职工的收入。</p><p>更为重要的是，这些国家的全职妈妈想要回归职场不会有任何障碍，只要岗位适合，雇主就必须雇用，否则就是歧视。正因为如此，我们能看到国外航空有很多妈级的空乘，以及各种职业中的中老年女性职员。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065370579/1000\"></p><p>相形之下，中国的全职妈妈没有工资、没有补贴、没有医保，由于较长时间脱离岗位和社会，也容易产生种种问题：经济开销不容易、夫妻矛盾、回归职场难，还不被社会认可。</p><p><strong>国家的财力是有限的，但一些工程可以不搞，对全职妈妈的帮助不能没有。</strong>如果没有对她们养育孩子的辛苦和职业的认同和帮助，全职妈妈将难以为继，中国的人口形势亦会继续恶化。</p><p>免责声明：本文来自腾讯新闻客户端自媒体，不代表腾讯网的观点和立场。</p><p>不少人认为，妈妈照顾家庭没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/3051677302/1000\"></p><p><strong>特约作者 | 张田勘</strong></p><p>最近，某知名母婴社区平台发布了《2019年度中国家庭孕育方式白皮书》。数据很多，最吸引人的，无疑是“95后全职妈妈占比达到82%”。一些网友惊呼数据可怕——“这么多25岁以下的人做了全职妈妈！”过去是妇女能顶半边天，现在是“95后全职妈妈占八成”。为何会发生这种变化？</p><p><strong>中国的“全职妈妈”越来越多</strong></p><p>在这则报告中，中国年轻父母全职在家的比例逐渐上升，达到58.6%；其中，95后全职妈妈占比已达到82%，集中在低线城市。</p><p>所谓高线城市一般指一二线城市，低线城市是三四五线城市。有人觉得，“八成”比例太高，当然任何调查都可能有误差，但从社交媒体和其他调查报告也可以看出，中国的全职妈妈是一个相当庞大的群体。</p><p><strong>“全职妈妈”被忽视，是因为她们处在社会的边缘，声音很少被听到。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065318848/1000\"></p><p>实际上，早在2012年的第三期中国妇女社会地位调查数据即显示，在有0-3岁孩子的18-45岁城镇女性中，有过职业中断经历的比例为35.5%，其中67.2%是因为结婚生育、照顾孩子。<strong>此外，还有28.9%的人目前没有工作，其中98%是为了照顾孩子。</strong></p><p>现实中，中国社会目前看护3岁以下孩子主要是4种模式：祖辈照料、保姆照顾、全职妈妈养育和托育机构照顾。对于缺乏祖辈照料，雇保姆又不合算的家庭来说，一个人全职孩子是很自然的事。</p><p>全<strong>职妈妈的增加，既与经济条件改善有关，也有育儿观念变化的原因。</strong>在低线城市，父母一般会为孩子准备好婚房，平时也会接济子女，年轻夫妻的经济压力小。这也是为何95后全职妈妈会集中在低线城市。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065326232/1000\"></p><p>另一方面，父母对子女的教育越来越重视，养育孩子就是投资未来的观念深入人心。很多人愿意暂时放弃职场，全心全意养育宝宝。<strong>于是，很多高知女性也开始加入全职妈妈的队伍。</strong></p><p>此外，就算有父母可以帮忙，一些年轻人依然会选择自己带孩子。这可能有对原生家庭的不满——自己做父母了，不能再按原来的方式教育子女。以上种种，都会让年轻人倾向于做全职家长。</p><p><strong>但中国的全职妈妈仍面临巨大压力，甚至一些女性也不认可“全职妈妈”这个职业</strong></p><p>人类进入信息时代，一个明显的特点是生育意愿下降。生育意愿降低原因很多，如追求自由和没有孩子拖累的生活，受财力、住房等条件的限制，想要不断提升自己等，都会造成生育率的下降。中国也不例外。</p><p>邻国日本人口也连续13年负成长，2019年出生人数首度跌破90万。韩国年轻夫女结婚五年内，四成无子女。原因也与中国差不多，主要是“夫妻双职工身份”、“没有房产”。</p><p>全职母亲尽管人数不少，也是在投资未来，但她们承受的压力也是巨大的。</p><p>在强调经济独立的今天，人们普遍将经济独立和人格、思想的独立紧密联系。<strong>做全职妈妈，不仅是旁人会担忧，自己也会很难接受。一位高知女性这样描述自己的焦虑，</strong>“一个女人如果经济不独立，就意味着自由受限，虽不至于低到尘埃里，可和老公拌嘴吵架都要缺一口气，哪怕未来分手都要重新自谋生路。这让从小就被教育“女孩子一定要自立自强，想要什么自己赚钱买，好好爱自己最重要”的我，时时刻刻不能摆脱“被人养，没出息”的羞辱感，<strong>曾有一段时间我每天都感觉自信在迅速崩塌。</strong>”（微信公号：奴隶社会）</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065332073/1000\"><em>微博网友评论</em></p><p>更可怕的是，整个社会对全职妈妈的价值仍没有足够的认识。在韩国，有妈虫一词——人们经常把“虫”加在各种让人看不惯的行为后面，用来讽刺某类人。“妈虫”这个词则专门用来讽刺要靠丈夫养活、自己吃喝玩乐的全职妈妈。</p><p><strong>在不少人眼中，妈妈照顾家庭也没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</strong></p><p>这也是为什么全职妈妈回归职场的愿望都很强。2016年上半年国家卫计委在北京、上海、广州、沈阳等10个城市进行调查。被调查的全职母亲中，近1/3是因为孩子无人照料而被迫中断就业；<strong>超过3/4的全职母亲表示，如有人帮助带孩子，将会重新就业。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/8926614317/1000\"><em>数据来源：《2018年职场妈妈生存状况调查报告》</em></p><p>但一个尖锐而不容回避的问题是，东亚国家职场劳动强度大，竞争激烈。如果女性脱离职场几年或十几年，她还能否顺利回到职场？</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065351629/1000\"></p><p><strong>对全职妈妈要有实实在在的帮助</strong></p><p>如果能解决全职妈妈的回归职场的后顾之忧，不仅是可以让养育投资更有价值，也能鼓励更多的现代年轻女性勇于生育孩子，提升日益低迷的生育率。这对于任何一个国家和社会都是多赢的结局。<strong>毕竟，有了后代的正常繁衍，一个社会才能延续和繁荣下去。</strong></p><p>尽管中国尚无确切的调查数据反映全职妈妈成功回归职场的比例有多少，但一组数字还可以看出中国女性的就业困境：人口普查数据显示，<strong>中国城市地区20-59岁女性的就业率从1990年的77.4%下降到2010年的60.8%。</strong></p><p>对全职妈妈提供帮助，一些国家的做法值得借鉴。</p><p><strong>发达国家的普遍情况是，首先承认全职妈妈是一个与其他360行一样不分高低的职业。</strong></p><p>在美国，全职妈妈或庭主妇不缴纳社保退休金，但是在其退休龄时，依然可以领取配偶退休金的一半（这笔钱是政府配发的，不会影响到配偶拿到的数额）。也就是说，全职妈妈或家庭主妇也是一个正常的职业，退休时可以拿养老金。而且，只要家庭中有一人工作，无论是妻子还是丈夫和不满18岁的孩子都可以享受医疗保险。<strong>正由于这个原因，发达国家的全职爸爸也不少。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065368230/1000\"></p><p><strong>有的国家如加拿大，是以政府补贴来资助全职妈妈，也就是承认这是一种职业。</strong>全职妈妈的福利包括免税、孩子的日常津贴、牛奶金等，平均每个孩子每个月可以拿到800加元左右（约合人民币4100元）。如果以两胎计算，全职妈妈一年至少能拿到3-5万加元（约合人民币16-26万）的政府补贴——相当于一个全职职工的收入。</p><p>更为重要的是，这些国家的全职妈妈想要回归职场不会有任何障碍，只要岗位适合，雇主就必须雇用，否则就是歧视。正因为如此，我们能看到国外航空有很多妈级的空乘，以及各种职业中的中老年女性职员。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065370579/1000\"></p><p>相形之下，中国的全职妈妈没有工资、没有补贴、没有医保，由于较长时间脱离岗位和社会，也容易产生种种问题：经济开销不容易、夫妻矛盾、回归职场难，还不被社会认可。</p><p><strong>国家的财力是有限的，但一些工程可以不搞，对全职妈妈的帮助不能没有。</strong>如果没有对她们养育孩子的辛苦和职业的认同和帮助，全职妈妈将难以为继，中国的人口形势亦会继续恶化。</p><p>免责声明：本文来自腾讯新闻客户端自媒体，不代表腾讯网的观点和立场。</p><p>不少人认为，妈妈照顾家庭没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/3051677302/1000\"></p><p><strong>特约作者 | 张田勘</strong></p><p>最近，某知名母婴社区平台发布了《2019年度中国家庭孕育方式白皮书》。数据很多，最吸引人的，无疑是“95后全职妈妈占比达到82%”。一些网友惊呼数据可怕——“这么多25岁以下的人做了全职妈妈！”过去是妇女能顶半边天，现在是“95后全职妈妈占八成”。为何会发生这种变化？</p><p><strong>中国的“全职妈妈”越来越多</strong></p><p>在这则报告中，中国年轻父母全职在家的比例逐渐上升，达到58.6%；其中，95后全职妈妈占比已达到82%，集中在低线城市。</p><p>所谓高线城市一般指一二线城市，低线城市是三四五线城市。有人觉得，“八成”比例太高，当然任何调查都可能有误差，但从社交媒体和其他调查报告也可以看出，中国的全职妈妈是一个相当庞大的群体。</p><p><strong>“全职妈妈”被忽视，是因为她们处在社会的边缘，声音很少被听到。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065318848/1000\"></p><p>实际上，早在2012年的第三期中国妇女社会地位调查数据即显示，在有0-3岁孩子的18-45岁城镇女性中，有过职业中断经历的比例为35.5%，其中67.2%是因为结婚生育、照顾孩子。<strong>此外，还有28.9%的人目前没有工作，其中98%是为了照顾孩子。</strong></p><p>现实中，中国社会目前看护3岁以下孩子主要是4种模式：祖辈照料、保姆照顾、全职妈妈养育和托育机构照顾。对于缺乏祖辈照料，雇保姆又不合算的家庭来说，一个人全职孩子是很自然的事。</p><p>全<strong>职妈妈的增加，既与经济条件改善有关，也有育儿观念变化的原因。</strong>在低线城市，父母一般会为孩子准备好婚房，平时也会接济子女，年轻夫妻的经济压力小。这也是为何95后全职妈妈会集中在低线城市。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065326232/1000\"></p><p>另一方面，父母对子女的教育越来越重视，养育孩子就是投资未来的观念深入人心。很多人愿意暂时放弃职场，全心全意养育宝宝。<strong>于是，很多高知女性也开始加入全职妈妈的队伍。</strong></p><p>此外，就算有父母可以帮忙，一些年轻人依然会选择自己带孩子。这可能有对原生家庭的不满——自己做父母了，不能再按原来的方式教育子女。以上种种，都会让年轻人倾向于做全职家长。</p><p><strong>但中国的全职妈妈仍面临巨大压力，甚至一些女性也不认可“全职妈妈”这个职业</strong></p><p>人类进入信息时代，一个明显的特点是生育意愿下降。生育意愿降低原因很多，如追求自由和没有孩子拖累的生活，受财力、住房等条件的限制，想要不断提升自己等，都会造成生育率的下降。中国也不例外。</p><p>邻国日本人口也连续13年负成长，2019年出生人数首度跌破90万。韩国年轻夫女结婚五年内，四成无子女。原因也与中国差不多，主要是“夫妻双职工身份”、“没有房产”。</p><p>全职母亲尽管人数不少，也是在投资未来，但她们承受的压力也是巨大的。</p><p>在强调经济独立的今天，人们普遍将经济独立和人格、思想的独立紧密联系。<strong>做全职妈妈，不仅是旁人会担忧，自己也会很难接受。一位高知女性这样描述自己的焦虑，</strong>“一个女人如果经济不独立，就意味着自由受限，虽不至于低到尘埃里，可和老公拌嘴吵架都要缺一口气，哪怕未来分手都要重新自谋生路。这让从小就被教育“女孩子一定要自立自强，想要什么自己赚钱买，好好爱自己最重要”的我，时时刻刻不能摆脱“被人养，没出息”的羞辱感，<strong>曾有一段时间我每天都感觉自信在迅速崩塌。</strong>”（微信公号：奴隶社会）</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065332073/1000\"><em>微博网友评论</em></p><p>更可怕的是，整个社会对全职妈妈的价值仍没有足够的认识。在韩国，有妈虫一词——人们经常把“虫”加在各种让人看不惯的行为后面，用来讽刺某类人。“妈虫”这个词则专门用来讽刺要靠丈夫养活、自己吃喝玩乐的全职妈妈。</p><p><strong>在不少人眼中，妈妈照顾家庭也没有创造多少价值，甚至觉得全职妈妈是“好吃懒做”的人生选择。</strong></p><p>这也是为什么全职妈妈回归职场的愿望都很强。2016年上半年国家卫计委在北京、上海、广州、沈阳等10个城市进行调查。被调查的全职母亲中，近1/3是因为孩子无人照料而被迫中断就业；<strong>超过3/4的全职母亲表示，如有人帮助带孩子，将会重新就业。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/8926614317/1000\"><em>数据来源：《2018年职场妈妈生存状况调查报告》</em></p><p>但一个尖锐而不容回避的问题是，东亚国家职场劳动强度大，竞争激烈。如果女性脱离职场几年或十几年，她还能否顺利回到职场？</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065351629/1000\"></p><p><strong>对全职妈妈要有实实在在的帮助</strong></p><p>如果能解决全职妈妈的回归职场的后顾之忧，不仅是可以让养育投资更有价值，也能鼓励更多的现代年轻女性勇于生育孩子，提升日益低迷的生育率。这对于任何一个国家和社会都是多赢的结局。<strong>毕竟，有了后代的正常繁衍，一个社会才能延续和繁荣下去。</strong></p><p>尽管中国尚无确切的调查数据反映全职妈妈成功回归职场的比例有多少，但一组数字还可以看出中国女性的就业困境：人口普查数据显示，<strong>中国城市地区20-59岁女性的就业率从1990年的77.4%下降到2010年的60.8%。</strong></p><p>对全职妈妈提供帮助，一些国家的做法值得借鉴。</p><p><strong>发达国家的普遍情况是，首先承认全职妈妈是一个与其他360行一样不分高低的职业。</strong></p><p>在美国，全职妈妈或庭主妇不缴纳社保退休金，但是在其退休龄时，依然可以领取配偶退休金的一半（这笔钱是政府配发的，不会影响到配偶拿到的数额）。也就是说，全职妈妈或家庭主妇也是一个正常的职业，退休时可以拿养老金。而且，只要家庭中有一人工作，无论是妻子还是丈夫和不满18岁的孩子都可以享受医疗保险。<strong>正由于这个原因，发达国家的全职爸爸也不少。</strong></p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065368230/1000\"></p><p><strong>有的国家如加拿大，是以政府补贴来资助全职妈妈，也就是承认这是一种职业。</strong>全职妈妈的福利包括免税、孩子的日常津贴、牛奶金等，平均每个孩子每个月可以拿到800加元左右（约合人民币4100元）。如果以两胎计算，全职妈妈一年至少能拿到3-5万加元（约合人民币16-26万）的政府补贴——相当于一个全职职工的收入。</p><p>更为重要的是，这些国家的全职妈妈想要回归职场不会有任何障碍，只要岗位适合，雇主就必须雇用，否则就是歧视。正因为如此，我们能看到国外航空有很多妈级的空乘，以及各种职业中的中老年女性职员。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/11065370579/1000\"></p><p>相形之下，中国的全职妈妈没有工资、没有补贴、没有医保，由于较长时间脱离岗位和社会，也容易产生种种问题：经济开销不容易、夫妻矛盾、回归职场难，还不被社会认可。</p><p><strong>国家的财力是有限的，但一些工程可以不搞，对全职妈妈的帮助不能没有。</strong>如果没有对她们养育孩子的辛苦和职业的认同和帮助，全职妈妈将难以为继，中国的人口形势亦会继续恶化。</p><p>免责声明：本文来自腾讯新闻客户端自媒体，不代表腾讯网的观点和立场。</p>',' 2019-12-24 15:04:34',NULL,'',NULL,NULL),(14,'dwqweqweqww','<p>缺少<span style=\"color: rgb(36, 39, 41);\">httpcore-X.X.X.jar</span>包</p><p>httpclient使用时，引用的包版本需要相同（应该是），否则会各种错误。</p><p>如：</p><p>httpclient-4.2.1.jar</p><p>httpcore-4.2.1,jar</p>','2020-02-15 15:42:56','1212','',NULL,NULL),(15,'52岁的老田是武汉本地市民，1月30日从武汉市肺科医院治愈出院。','<p>2月13日，在武汉儿童医院，经过两个多星期治疗，一名危重型新冠肺炎患儿康复出院。患儿年仅1岁两个多月，因间断腹泻、呕吐、精神萎靡、呼吸急促，被紧急送入武汉儿童医院重症医学科隔离病房救治。经治疗，患儿肺部感染已基本吸收，且两次核酸检测为阴性，已达出院标准。</p><p>武汉儿童医院供图（新华社发）</p><p>随着武汉市对新冠肺炎患者应收尽收、应治尽治工作的开展，连日来一批批患者陆续出院。记者采访了4名出院患者，讲述他们配合治疗、摆脱恐惧、战胜病毒的故事。</p><p>张昌盛——</p><p>“这个病欺软怕硬，跟它斗争不能泄气”</p><p>2月5日，张昌盛出院了。他是华中科技大学协和医院最早被感染的14名医护人员之一，也是14人中病情最严重的之一，但他始终保持乐观态度。</p><p>1月17日，张昌盛发热37.8度，浑身乏力。因为神经外科监护室病房收治了很多危重病人，他坚持上了夜班。第二天，同科室的医护人员做咽拭子核酸检查，确认14人感染。</p><p>“医院通知我下午住院隔离观察，我蒙了一下，但很快镇定下来了，我很庆幸及早把家人送回了老家，而且我相信医院一定能治好我的病。”张昌盛说。</p><p>张昌盛说，他爱人是协和医院的护士，“见过大场面，并不怎么害怕”。“但孩子们还小，每次都会问‘爸爸好了没有’‘可以出院了吗’‘能来接我们回家了吗’，我都会告诉她们爸爸快好了。”张昌盛说。</p><p>“我知道疾病会是一个发展的过程，总会有一个拐点出现的，只要我把那个最困难的时期过了，就会逐渐好起来。”张昌盛说，他的管床医生王小溶一直在鼓励他，很多同事也会抽空打电话给他打气，给他送营养品。</p><p>“这个病欺软怕硬，跟它斗争不能泄气。”张昌盛笑着说。</p><p>张女士——</p><p>“他们真的很贴心、很认真”</p><p>2月5日从湖北省中西医结合医院出院之后，说起广东医疗队，张女士说的最多的就是“谢谢”。</p><p>1月29日，张女士呼吸困难，发觉情况不对，她就联系救护车去了湖北省中西医结合医院。也就是在当天，广东省医疗队接管了医院5楼的呼吸科。</p><p>在救治过程中，广东医疗队的医护人员很注意鼓舞患者士气，每天都会不断给患者打气：“加油，你今天很不错，再坚持一下马上就胜利了。”医疗队队长黄东晖说，一些患者经过治疗症状减轻之后，其他患者看见了心态也好了起来。</p><p>刚开始张女士害怕吃中药，医护人员发现后，就给她带了巧克力，“他们真的很贴心、很认真。”张女士说。随着医护人员的细心照料，她的病情渐渐好转。2月1日，张女士做了一次核酸检测，呈阴性，过两天之后她做了第二次检测，也是阴性，加上身体状态已经恢复，张女士符合出院标准。</p><p>吴刚——</p><p>“配合治疗才是正事儿”</p><p>先是担心，再是恐慌，而后是镇定，最后又有点后怕……回想起这些天的经历，吴刚（化名）觉得自己像是坐了一趟过山车。2月14日，是吴刚康复出院的第五天。</p><p>春节前，吴刚就有些咳嗽。起初，他以为是感冒，并未在意。“过了几天就开始发高烧，很担心是新冠肺炎。”</p><p>吴刚把自己锁在书房里与家人隔离，“后来觉得老拖着不是办法，才下定决心去医院排查”。</p><p>结果显示，两次核酸检测都是阳性。“那会儿，心里特别害怕。我才40岁，上有老下有小，要是治不好怎么办？”</p><p>1月28日，正月初四，吴刚住进了武汉市中心医院。“在医院里，医生都很温柔，除了治疗以外，还不断给我解释这个病毒的一些特征，让我增强信心。有时候，还问我想吃什么。”吴刚说，他其实根本没胃口，什么也吃不下。</p><p>在医院里，吴刚的心情也是起伏不定。有时候，他特别清醒，能记得护士给他打麻药、做心电图；有时候，又有些恍惚。回想起住院经历，吴刚不由自主地攥紧了拳头：“后来我想开了，配合治疗才是正事儿。”</p><p>6天之后，吴刚的病情终于稳定下来。CT片显示，他的肺部出现明显好转。不久，就从ICU转到普通病房。</p><p>“我2月10号下午出的院，为了安全起见没有回家，就在外边租了一间民房住下。”吴刚说，他想把自己隔离14天。</p><p>吴刚说，现在他每天都在日历上画个圈，“希望时间过得快一点，早日回家团聚。”</p><p>老田——</p><p>“我能和家人一起吃饭了，很开心”</p><p>“我已经在家隔离两周了，身体没有什么不舒服。”52岁的老田是武汉本地市民，1月30日从武汉市肺科医院治愈出院。</p><p>“我都不知道自己是怎么染上这个病的。”老田回忆，一开始，他感觉浑身不舒服，以为是感冒了，去药店买了一盒感冒药，吃了却没有任何效果，在家量了体温，发现是38度。后来，老田去楼下社区卫生服务中心打了退烧针，吃了一些药，直到晚上也没有什么效果，反而烧到了39度。</p><p>1月15日一早，老田到武汉市第四医院看门诊并住上了院，“当时我以为自己过两天就能回家过年了。”1月20日，老田被转移到武汉市肺科医院，经过核酸检查呈阳性，确诊为新冠肺炎，随后住进了隔离病房。</p><p>“看到穿着防护服的医生护士，一开始我有点慌。”老田回忆，在隔离区，他连续几天都在吸氧。“我刚开始住院的时候，家里人都挺心慌的，但通过视频聊天，他们看到我的状态一天天变好，也就踏实了。”老田说，治愈后他在家隔离，两周独自待在房里，一个人吃饭，用的东西也跟家人分开，“从今天起，我能和家人一起吃饭了，很开心。”</p><p>（本报记者汪晓东、付文、程远州、申少铁、吴君）</p><p><br></p><p>649</p>','2020-02-15 16:59:04','22','',NULL,NULL),(16,'2','<p>22</p>','2020-02-15 17:02:34','22','',NULL,NULL);
/*!40000 ALTER TABLE `e_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_count`
--

DROP TABLE IF EXISTS `e_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referid` int(11) DEFAULT NULL,
  `refer` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `viewsmonth` int(11) DEFAULT NULL,
  `viewsweek` int(11) DEFAULT NULL,
  `viewsday` int(11) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `commentsmonth` int(11) DEFAULT NULL,
  `commentsweek` int(11) DEFAULT NULL,
  `commentsday` int(11) DEFAULT NULL,
  `praise` int(11) DEFAULT '0' COMMENT '点赞',
  `collect` int(11) DEFAULT '0' COMMENT '收藏',
  `collected` int(11) DEFAULT '0',
  `praiseed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_count`
--

LOCK TABLES `e_count` WRITE;
/*!40000 ALTER TABLE `e_count` DISABLE KEYS */;
INSERT INTO `e_count` VALUES (300,12,'Content',549,0,0,0,0,NULL,NULL,NULL,0,0,0,NULL),(301,13,'Content',0,0,0,0,0,NULL,NULL,NULL,0,0,0,NULL),(309,10,'Product',81,81,81,81,0,NULL,NULL,NULL,0,1,0,NULL),(310,11,'Product',0,0,0,0,0,NULL,NULL,NULL,0,1,0,NULL),(311,12,'Product',0,0,0,0,0,NULL,NULL,NULL,0,0,0,NULL),(312,13,'Product',0,0,0,0,0,NULL,NULL,NULL,0,0,0,NULL),(313,NULL,NULL,0,NULL,0,0,0,NULL,NULL,NULL,0,0,0,NULL),(314,14,'Content',0,NULL,0,0,0,NULL,NULL,NULL,0,0,0,NULL),(315,15,'Content',0,NULL,0,0,0,NULL,NULL,NULL,0,0,0,NULL),(316,16,'Content',0,NULL,0,0,0,NULL,NULL,NULL,0,0,0,NULL);
/*!40000 ALTER TABLE `e_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_coupon`
--

DROP TABLE IF EXISTS `e_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '优惠券标题（有图片则显示图片）：无门槛50元优惠券 | 单品最高减2000元',
  `img` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL COMMENT '1满减券 2叠加满减券 3无门槛券（需要限制大小）',
  `full_money` decimal(9,2) DEFAULT NULL COMMENT '满减',
  `price` decimal(9,2) DEFAULT NULL COMMENT '优惠券金额',
  `status` varchar(45) DEFAULT NULL COMMENT '状态',
  `remark` varchar(4500) DEFAULT NULL COMMENT '备注',
  `num` int(11) DEFAULT NULL COMMENT '发券数量',
  `valid_type` varchar(45) DEFAULT NULL COMMENT '时效:1绝对时效（领取后XXX-XXX时间段有效）  2相对时效（领取后N天有效）',
  `valid_start_time` datetime DEFAULT NULL COMMENT '使用开始时间',
  `valid_end_time` datetime DEFAULT NULL COMMENT '使用结束时间',
  `valid_days` int(11) DEFAULT NULL COMMENT '自领取之日起有效天数',
  `take_count` int(11) DEFAULT NULL COMMENT '已领取的优惠券数量',
  `used_count` int(11) DEFAULT NULL COMMENT '已使用的优惠券数量',
  `start_time` datetime DEFAULT NULL COMMENT '发放开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '发放结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_coupon`
--

LOCK TABLES `e_coupon` WRITE;
/*!40000 ALTER TABLE `e_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_coupon_log`
--

DROP TABLE IF EXISTS `e_coupon_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_coupon_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_no` varchar(45) DEFAULT NULL,
  `order_id` varchar(45) DEFAULT NULL,
  `coupon_price` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT '日志状态: 默认为0，支付回调成功后为1',
  `dateline` datetime DEFAULT NULL COMMENT '使用时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_coupon_log`
--

LOCK TABLES `e_coupon_log` WRITE;
/*!40000 ALTER TABLE `e_coupon_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_coupon_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_coupon_product`
--

DROP TABLE IF EXISTS `e_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_coupon_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_coupon_product`
--

LOCK TABLES `e_coupon_product` WRITE;
/*!40000 ALTER TABLE `e_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_coupon_product_cat`
--

DROP TABLE IF EXISTS `e_coupon_product_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_coupon_product_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `coupon_id` varchar(45) DEFAULT NULL,
  `cat_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_coupon_product_cat`
--

LOCK TABLES `e_coupon_product_cat` WRITE;
/*!40000 ALTER TABLE `e_coupon_product_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_coupon_product_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_coupon_receive`
--

DROP TABLE IF EXISTS `e_coupon_receive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_coupon_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `dateline` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT '状态，1为已使用，0为已领取未使用，-1为已过期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_coupon_receive`
--

LOCK TABLES `e_coupon_receive` WRITE;
/*!40000 ALTER TABLE `e_coupon_receive` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_coupon_receive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_feedback`
--

DROP TABLE IF EXISTS `e_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '举报类型：jubao、yijian等',
  `content` varchar(5000) COLLATE utf8_bin DEFAULT NULL COMMENT '举报内容',
  `status` varchar(45) COLLATE utf8_bin DEFAULT '0' COMMENT '举报状态0,待处理，1已经处理',
  `img` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `remark` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '备注/回复',
  `dateline` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '举报时间',
  `user_id` int(11) DEFAULT NULL COMMENT '提交人',
  `to_uid` int(11) DEFAULT NULL COMMENT '举报用户可为空',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_feedback`
--

LOCK TABLES `e_feedback` WRITE;
/*!40000 ALTER TABLE `e_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_flash_buy`
--

DROP TABLE IF EXISTS `e_flash_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_flash_buy` (
  `id` bigint(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT '活动状态',
  `sort` varchar(45) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_flash_buy`
--

LOCK TABLES `e_flash_buy` WRITE;
/*!40000 ALTER TABLE `e_flash_buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_flash_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_flash_buy_step`
--

DROP TABLE IF EXISTS `e_flash_buy_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_flash_buy_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `dateline` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_flash_buy_step`
--

LOCK TABLES `e_flash_buy_step` WRITE;
/*!40000 ALTER TABLE `e_flash_buy_step` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_flash_buy_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_flash_product`
--

DROP TABLE IF EXISTS `e_flash_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_flash_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flash_id` int(11) DEFAULT NULL,
  `flash_step_id` int(11) DEFAULT NULL,
  `product_id` varchar(45) DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_flash_product`
--

LOCK TABLES `e_flash_product` WRITE;
/*!40000 ALTER TABLE `e_flash_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_flash_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_follow`
--

DROP TABLE IF EXISTS `e_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `from_uid` int(11) DEFAULT NULL COMMENT '关注来源',
  `to_uid` int(11) DEFAULT NULL COMMENT '关注对象',
  `dateline` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_follow`
--

LOCK TABLES `e_follow` WRITE;
/*!40000 ALTER TABLE `e_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_foot`
--

DROP TABLE IF EXISTS `e_foot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_foot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `referid` int(11) DEFAULT NULL,
  `refer` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dateline` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_bin,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_foot`
--

LOCK TABLES `e_foot` WRITE;
/*!40000 ALTER TABLE `e_foot` DISABLE KEYS */;
INSERT INTO `e_foot` VALUES (1,'陶华碧老干妈香辣脆油辣椒210克/瓶 ',10,'Product','2020-02-27 18:38:16',3,'{\"attributes\":\"[{\\\"name\\\":\\\"尺寸\\\",\\\"attrs\\\":[\\\"小\\\",\\\"中\\\",\\\"大\\\"]},{\\\"name\\\":\\\"颜色\\\",\\\"attrs\\\":[\\\"红\\\",\\\"黑\\\"]}]\",\"attributesList\":[{\"name\":\"尺寸\",\"attrs\":[\"小\",\"中\",\"大\"]},{\"name\":\"颜色\",\"attrs\":[\"红\",\"黑\"]}],\"collected\":true,\"content\":\"<p>22</p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p>\",\"count\":{\"collect\":1,\"comments\":0,\"commentsday\":0,\"commentsmonth\":0,\"commentsweek\":0,\"id\":309,\"praise\":0,\"refer\":\"Product\",\"referid\":10,\"views\":42,\"viewsday\":42,\"viewsmonth\":42,\"viewsweek\":42},\"dateline\":\"2020-01-29 20:13:19\",\"id\":10,\"img\":\"/upload/20200130133930zdyc.jpg\",\"imgList\":[{\"name\":\"\",\"url\":\"/upload/20200130135808akpd.png\"},{\"name\":\"\",\"url\":\"/upload/20200130135811ixp7.png\"}],\"imgs\":\"[{\\\"name\\\":\\\"\\\",\\\"url\\\":\\\"/upload/20200130135808akpd.png\\\"},{\\\"name\\\":\\\"\\\",\\\"url\\\":\\\"/upload/20200130135811ixp7.png\\\"}]\",\"item_param\":\"[]\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":166,\"price\":1.0,\"productAttrList\":[{\"attributes\":\"[\\\"小\\\",\\\"红\\\"]\",\"icon\":\"\",\"id\":102,\"img\":\"\",\"name\":\"\",\"price\":1.0,\"product_id\":10,\"status\":\"0\",\"stock\":11},{\"attributes\":\"[\\\"小\\\",\\\"黑\\\"]\",\"icon\":\"\",\"id\":103,\"img\":\"\",\"name\":\"\",\"price\":1.0,\"product_id\":10,\"status\":\"0\",\"stock\":11},{\"attributes\":\"[\\\"中\\\",\\\"红\\\"]\",\"icon\":\"\",\"id\":104,\"img\":\"\",\"name\":\"\",\"price\":2.0,\"product_id\":10,\"status\":\"0\",\"stock\":11},{\"attributes\":\"[\\\"中\\\",\\\"黑\\\"]\",\"icon\":\"\",\"id\":105,\"img\":\"\",\"name\":\"\",\"price\":3.0,\"product_id\":10,\"status\":\"0\",\"stock\":111},{\"attributes\":\"[\\\"大\\\",\\\"红\\\"]\",\"icon\":\"\",\"id\":106,\"img\":\"\",\"name\":\"\",\"price\":4.0,\"product_id\":10,\"status\":\"0\",\"stock\":11},{\"attributes\":\"[\\\"大\\\",\\\"黑\\\"]\",\"icon\":\"\",\"id\":107,\"img\":\"\",\"name\":\"\",\"price\":5.0,\"product_id\":10,\"status\":\"0\",\"stock\":11}],\"productCat\":{\"hiden\":\"0\",\"icon\":\"11\",\"id\":13,\"img\":\"/upload/20200129113342gdhc.png\",\"item_param\":\"[]\",\"name\":\"测试\",\"parent\":{\"hiden\":\"0\",\"id\":3,\"img\":\"\",\"item_param\":\"[]\",\"name\":\"手机\",\"parent\":{\"hiden\":\"0\",\"icon\":\"\",\"id\":1,\"img\":\"/upload/201912241128294b4e.png\",\"item_param\":\"[]\",\"name\":\"IT数码\",\"remark\":\"\",\"sort\":0},\"sort\":1},\"remark\":\"11\",\"sort\":11},\"remark\":\"2\",\"sale\":0,\"sort\":2,\"status\":\"0\",\"unit\":\"2\"}','2020-02-27 18:38:16'),(2,'ww',13,'Product','2020-02-15 19:15:30',3,'{\"collected\":false,\"content\":\"<p>11</p>\",\"count\":{\"collect\":0,\"comments\":0,\"commentsday\":0,\"commentsmonth\":0,\"commentsweek\":0,\"id\":312,\"praise\":0,\"refer\":\"Product\",\"referid\":13,\"views\":0,\"viewsday\":0,\"viewsmonth\":0,\"viewsweek\":0},\"dateline\":\"2020-01-29 20:58:10\",\"id\":13,\"img\":\"/upload/20200129205743akhp.png\",\"imgList\":[],\"imgs\":\"[]\",\"item_param\":\"[]\",\"name\":\"ww\",\"num\":11,\"price\":11.0,\"productAttrList\":[],\"productCat\":{\"hiden\":\"0\",\"icon\":\"11\",\"id\":13,\"img\":\"/upload/20200129113342gdhc.png\",\"item_param\":\"[]\",\"name\":\"测试\",\"parent\":{\"hiden\":\"0\",\"id\":3,\"img\":\"\",\"item_param\":\"[]\",\"name\":\"手机\",\"parent\":{\"hiden\":\"0\",\"icon\":\"\",\"id\":1,\"img\":\"/upload/201912241128294b4e.png\",\"item_param\":\"[]\",\"name\":\"IT数码\",\"remark\":\"\",\"sort\":0},\"sort\":1},\"remark\":\"11\",\"sort\":11},\"remark\":\"11\",\"sale\":0,\"sort\":22,\"status\":\"0\",\"unit\":\"11\"}','2020-02-15 19:15:30'),(3,'dss',12,'Product','2020-02-10 15:58:07',3,'{\"collected\":false,\"content\":\"<p>222</p>\",\"count\":{\"collect\":0,\"comments\":0,\"commentsday\":0,\"commentsmonth\":0,\"commentsweek\":0,\"id\":311,\"praise\":0,\"refer\":\"Product\",\"referid\":12,\"views\":0,\"viewsday\":0,\"viewsmonth\":0,\"viewsweek\":0},\"dateline\":\"2020-01-29 20:54:57\",\"id\":12,\"img\":\"\",\"imgList\":[],\"imgs\":\"[]\",\"item_param\":\"[]\",\"name\":\"dss\",\"num\":22,\"price\":222.0,\"productAttrList\":[],\"productCat\":{\"hiden\":\"0\",\"icon\":\"11\",\"id\":13,\"img\":\"/upload/20200129113342gdhc.png\",\"item_param\":\"[]\",\"name\":\"测试\",\"parent\":{\"hiden\":\"0\",\"id\":3,\"img\":\"\",\"item_param\":\"[]\",\"name\":\"手机\",\"parent\":{\"hiden\":\"0\",\"icon\":\"\",\"id\":1,\"img\":\"/upload/201912241128294b4e.png\",\"item_param\":\"[]\",\"name\":\"IT数码\",\"remark\":\"\",\"sort\":0},\"sort\":1},\"remark\":\"11\",\"sort\":11},\"remark\":\"22\",\"sale\":0,\"sort\":22,\"status\":\"0\",\"unit\":\"22\"}','2020-02-10 15:58:07'),(4,'ww',11,'Product','2020-02-15 19:15:33',3,'{\"collected\":false,\"content\":\"<p>22</p>\",\"count\":{\"collect\":0,\"comments\":0,\"commentsday\":0,\"commentsmonth\":0,\"commentsweek\":0,\"id\":310,\"praise\":0,\"refer\":\"Product\",\"referid\":11,\"views\":0,\"viewsday\":0,\"viewsmonth\":0,\"viewsweek\":0},\"dateline\":\"2020-01-29 20:14:12\",\"id\":11,\"img\":\"\",\"imgList\":[],\"imgs\":\"[]\",\"item_param\":\"[]\",\"name\":\"ww\",\"num\":0,\"price\":22.0,\"productAttrList\":[],\"productCat\":{\"hiden\":\"0\",\"icon\":\"ss\",\"id\":16,\"img\":\"/upload/202001291137475xl8.png\",\"item_param\":\"[]\",\"name\":\"ss\",\"parent\":{\"hiden\":\"0\",\"icon\":\"ss\",\"id\":15,\"img\":\"/upload/202001291136561t10.png\",\"item_param\":\"[]\",\"name\":\"ss\",\"parent\":{\"hiden\":\"0\",\"id\":12,\"img\":\"\",\"item_param\":\"[{\\\"params\\\":[{\\\"k\\\":\\\"1\\\",\\\"v\\\":\\\"北欧\\\"},{\\\"k\\\":\\\"2\\\",\\\"v\\\":\\\"现代\\\"}],\\\"group\\\":\\\"风格\\\",\\\"inputVisible\\\":false,\\\"inputValue\\\":\\\"\\\"},{\\\"params\\\":[{\\\"k\\\":\\\"1\\\",\\\"v\\\":\\\"自营\\\"},{\\\"k\\\":\\\"2\\\",\\\"v\\\":\\\"其他\\\"}],\\\"group\\\":\\\"厂家\\\",\\\"inputVisible\\\":false,\\\"inputValue\\\":\\\"\\\"}]\",\"name\":\"家具\",\"sort\":4},\"remark\":\"ss\",\"sort\":1},\"remark\":\"12\",\"sort\":2},\"remark\":\"2\",\"sale\":0,\"sort\":6,\"status\":\"0\",\"unit\":\"22\"}','2020-02-15 19:15:33'),(5,'陶华碧老干妈香辣脆油辣椒210克/瓶 ',10,'Product','2020-02-15 19:03:27',7,'{\"attributes\":\"[{\\\"name\\\":\\\"尺寸\\\",\\\"attrs\\\":[\\\"小\\\",\\\"中\\\",\\\"大\\\"]},{\\\"name\\\":\\\"颜色\\\",\\\"attrs\\\":[\\\"红\\\",\\\"黑\\\"]}]\",\"attributesList\":[{\"name\":\"尺寸\",\"attrs\":[\"小\",\"中\",\"大\"]},{\"name\":\"颜色\",\"attrs\":[\"红\",\"黑\"]}],\"collected\":false,\"content\":\"<p>22</p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p>\",\"count\":{\"collect\":1,\"comments\":0,\"commentsday\":0,\"commentsmonth\":0,\"commentsweek\":0,\"id\":309,\"praise\":0,\"refer\":\"Product\",\"referid\":10,\"views\":56,\"viewsday\":56,\"viewsmonth\":56,\"viewsweek\":56},\"dateline\":\"2020-01-29 20:13:19\",\"id\":10,\"img\":\"/upload/20200130133930zdyc.jpg\",\"imgList\":[{\"name\":\"\",\"url\":\"/upload/20200130135808akpd.png\"},{\"name\":\"\",\"url\":\"/upload/20200130135811ixp7.png\"}],\"imgs\":\"[{\\\"name\\\":\\\"\\\",\\\"url\\\":\\\"/upload/20200130135808akpd.png\\\"},{\\\"name\\\":\\\"\\\",\\\"url\\\":\\\"/upload/20200130135811ixp7.png\\\"}]\",\"item_param\":\"[]\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":166,\"price\":1.0,\"productAttrList\":[{\"attributes\":\"[\\\"小\\\",\\\"红\\\"]\",\"icon\":\"\",\"id\":102,\"img\":\"\",\"name\":\"\",\"price\":1.0,\"product_id\":10,\"status\":\"0\",\"stock\":11},{\"attributes\":\"[\\\"小\\\",\\\"黑\\\"]\",\"icon\":\"\",\"id\":103,\"img\":\"\",\"name\":\"\",\"price\":1.0,\"product_id\":10,\"status\":\"0\",\"stock\":11},{\"attributes\":\"[\\\"中\\\",\\\"红\\\"]\",\"icon\":\"\",\"id\":104,\"img\":\"\",\"name\":\"\",\"price\":2.0,\"product_id\":10,\"status\":\"0\",\"stock\":11},{\"attributes\":\"[\\\"中\\\",\\\"黑\\\"]\",\"icon\":\"\",\"id\":105,\"img\":\"\",\"name\":\"\",\"price\":3.0,\"product_id\":10,\"status\":\"0\",\"stock\":111},{\"attributes\":\"[\\\"大\\\",\\\"红\\\"]\",\"icon\":\"\",\"id\":106,\"img\":\"\",\"name\":\"\",\"price\":4.0,\"product_id\":10,\"status\":\"0\",\"stock\":11},{\"attributes\":\"[\\\"大\\\",\\\"黑\\\"]\",\"icon\":\"\",\"id\":107,\"img\":\"\",\"name\":\"\",\"price\":5.0,\"product_id\":10,\"status\":\"0\",\"stock\":11}],\"productCat\":{\"hiden\":\"0\",\"icon\":\"11\",\"id\":13,\"img\":\"/upload/20200129113342gdhc.png\",\"item_param\":\"[]\",\"name\":\"测试\",\"parent\":{\"hiden\":\"0\",\"id\":3,\"img\":\"\",\"item_param\":\"[]\",\"name\":\"手机\",\"parent\":{\"hiden\":\"0\",\"icon\":\"\",\"id\":1,\"img\":\"/upload/201912241128294b4e.png\",\"item_param\":\"[]\",\"name\":\"IT数码\",\"remark\":\"\",\"sort\":0},\"sort\":1},\"remark\":\"11\",\"sort\":11},\"remark\":\"2\",\"sale\":0,\"sort\":2,\"status\":\"0\",\"unit\":\"2\"}','2020-02-15 19:03:27'),(6,'ww',13,'Product','2020-02-15 19:03:18',7,'{\"collected\":false,\"content\":\"<p>11</p>\",\"count\":{\"collect\":0,\"comments\":0,\"commentsday\":0,\"commentsmonth\":0,\"commentsweek\":0,\"id\":312,\"praise\":0,\"refer\":\"Product\",\"referid\":13,\"views\":0,\"viewsday\":0,\"viewsmonth\":0,\"viewsweek\":0},\"dateline\":\"2020-01-29 20:58:10\",\"id\":13,\"img\":\"/upload/20200129205743akhp.png\",\"imgList\":[],\"imgs\":\"[]\",\"item_param\":\"[]\",\"name\":\"ww\",\"num\":11,\"price\":11.00,\"productAttrList\":[],\"productCat\":{\"hiden\":\"0\",\"icon\":\"11\",\"id\":13,\"img\":\"/upload/20200129113342gdhc.png\",\"item_param\":\"[]\",\"name\":\"测试\",\"parent\":{\"hiden\":\"0\",\"id\":3,\"img\":\"\",\"item_param\":\"[]\",\"name\":\"手机\",\"parent\":{\"hiden\":\"0\",\"icon\":\"\",\"id\":1,\"img\":\"/upload/201912241128294b4e.png\",\"item_param\":\"[]\",\"name\":\"IT数码\",\"remark\":\"\",\"sort\":0},\"sort\":1},\"remark\":\"11\",\"sort\":11},\"remark\":\"11\",\"sale\":0,\"sort\":22,\"status\":\"0\",\"unit\":\"11\"}','2020-02-15 19:03:18'),(7,'ww',11,'Product','2020-02-15 19:01:53',7,'{\"collected\":false,\"content\":\"<p>22</p>\",\"count\":{\"collect\":0,\"comments\":0,\"commentsday\":0,\"commentsmonth\":0,\"commentsweek\":0,\"id\":310,\"praise\":0,\"refer\":\"Product\",\"referid\":11,\"views\":0,\"viewsday\":0,\"viewsmonth\":0,\"viewsweek\":0},\"dateline\":\"2020-01-29 20:14:12\",\"id\":11,\"img\":\"/upload/2020020514285207ia.png\",\"item_param\":\"[]\",\"name\":\"ww\",\"num\":0,\"price\":22.00,\"productAttrList\":[],\"productCat\":{\"hiden\":\"0\",\"icon\":\"ss\",\"id\":16,\"img\":\"/upload/202001291137475xl8.png\",\"item_param\":\"[]\",\"name\":\"ss\",\"parent\":{\"hiden\":\"0\",\"icon\":\"ss\",\"id\":15,\"img\":\"/upload/202001291136561t10.png\",\"item_param\":\"[]\",\"name\":\"ss\",\"parent\":{\"hiden\":\"0\",\"id\":12,\"img\":\"\",\"item_param\":\"[{\\\"params\\\":[{\\\"k\\\":\\\"1\\\",\\\"v\\\":\\\"北欧\\\"},{\\\"k\\\":\\\"2\\\",\\\"v\\\":\\\"现代\\\"}],\\\"group\\\":\\\"风格\\\",\\\"inputVisible\\\":false,\\\"inputValue\\\":\\\"\\\"},{\\\"params\\\":[{\\\"k\\\":\\\"1\\\",\\\"v\\\":\\\"自营\\\"},{\\\"k\\\":\\\"2\\\",\\\"v\\\":\\\"其他\\\"}],\\\"group\\\":\\\"厂家\\\",\\\"inputVisible\\\":false,\\\"inputValue\\\":\\\"\\\"}]\",\"name\":\"家具\",\"sort\":4},\"remark\":\"ss\",\"sort\":1},\"remark\":\"12\",\"sort\":2},\"remark\":\"2\",\"sale\":0,\"sort\":6,\"status\":\"0\",\"unit\":\"22\"}','2020-02-15 19:01:53'),(8,'dss',12,'Product','2020-02-15 18:59:55',7,'{\"collected\":false,\"content\":\"<p>222</p>\",\"count\":{\"collect\":0,\"comments\":0,\"commentsday\":0,\"commentsmonth\":0,\"commentsweek\":0,\"id\":311,\"praise\":0,\"refer\":\"Product\",\"referid\":12,\"views\":0,\"viewsday\":0,\"viewsmonth\":0,\"viewsweek\":0},\"dateline\":\"2020-01-29 20:54:57\",\"id\":12,\"img\":\"/upload/202002051428389e9l.png\",\"item_param\":\"[]\",\"name\":\"dss\",\"num\":0,\"price\":222.00,\"productAttrList\":[],\"productCat\":{\"hiden\":\"0\",\"icon\":\"11\",\"id\":13,\"img\":\"/upload/20200129113342gdhc.png\",\"item_param\":\"[]\",\"name\":\"测试\",\"parent\":{\"hiden\":\"0\",\"id\":3,\"img\":\"\",\"item_param\":\"[]\",\"name\":\"手机\",\"parent\":{\"hiden\":\"0\",\"icon\":\"\",\"id\":1,\"img\":\"/upload/201912241128294b4e.png\",\"item_param\":\"[]\",\"name\":\"IT数码\",\"remark\":\"\",\"sort\":0},\"sort\":1},\"remark\":\"11\",\"sort\":11},\"remark\":\"22\",\"sale\":0,\"sort\":22,\"status\":\"0\",\"unit\":\"22\"}','2020-02-15 18:59:55');
/*!40000 ALTER TABLE `e_foot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_group_buy`
--

DROP TABLE IF EXISTS `e_group_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_group_buy` (
  `id` int(11) NOT NULL,
  `product_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `origin_price` decimal(9,2) DEFAULT NULL,
  `group_price` decimal(9,2) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `hours` int(11) DEFAULT NULL COMMENT '多少小时结束',
  `peoples` int(11) DEFAULT NULL COMMENT '人数',
  `status` varchar(45) DEFAULT NULL COMMENT '状态是否开启',
  `dateline` datetime DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL COMMENT '最多多少人开团',
  `limit_goods` int(11) DEFAULT NULL COMMENT '数量限制',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_group_buy`
--

LOCK TABLES `e_group_buy` WRITE;
/*!40000 ALTER TABLE `e_group_buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_group_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_message`
--

DROP TABLE IF EXISTS `e_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `data` varchar(5000) DEFAULT NULL,
  `dateline` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `from_uid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_message`
--

LOCK TABLES `e_message` WRITE;
/*!40000 ALTER TABLE `e_message` DISABLE KEYS */;
INSERT INTO `e_message` VALUES (1,'MESSAGE','USER',NULL,'2020-02-14 18:13:07','1','333','0','3'),(2,'MESSAGE','USER',NULL,'2020-02-14 18:14:06','1','33','0','1'),(3,'ALL','USER','{}','2020-02-14 18:31:27','1','111','0',NULL),(4,'ALL','USER','{}','2020-02-14 18:34:27','3','22','0',NULL),(5,'ALL','USER','{}','2020-02-14 18:37:05','3','213312321231312','0',NULL),(6,'ALL','USER','{}','2020-02-14 18:37:26','3','312123','0',NULL),(7,'MESSAGE','USER',NULL,'2020-02-14 19:07:27','1','22','0','3'),(8,'MESSAGE','USER',NULL,'2020-02-14 19:11:24','1','44','0','3'),(9,'MESSAGE','USER',NULL,'2020-02-14 19:11:46','3','888','0','1'),(10,'MESSAGE','USER',NULL,'2020-02-14 19:11:56','1','88','0','3'),(11,'MESSAGE','USER',NULL,'2020-02-14 19:12:02','3','99','0','1'),(12,'MESSAGE','USER',NULL,'2020-02-14 19:12:18','1','99','0','3'),(13,'MESSAGE','USER',NULL,'2020-02-14 19:12:23','3','111','0','1');
/*!40000 ALTER TABLE `e_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_nav`
--

DROP TABLE IF EXISTS `e_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `sort` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '排序号',
  `icon` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '图标',
  `img` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '图片链接',
  `url` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '跳转地址',
  `status` varchar(45) COLLATE utf8_bin DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_nav`
--

LOCK TABLES `e_nav` WRITE;
/*!40000 ALTER TABLE `e_nav` DISABLE KEYS */;
INSERT INTO `e_nav` VALUES (1,'环球美食','4','','/upload/20200202115123n3dg.png','','1'),(2,'个护美妆','2',NULL,'/upload/202002021152228ftd.png',NULL,'1'),(3,'营养保健','3',NULL,'/upload/202002021152483ifu.png','http://www.baidu.com','1'),(4,'家居厨卫','3',NULL,'/upload/20200202115325rpjg.png',NULL,'1'),(5,'素食生鲜','5',NULL,'/upload/20200202115347tu5i.png',NULL,'1');
/*!40000 ALTER TABLE `e_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_notice`
--

DROP TABLE IF EXISTS `e_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `start_time` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `end_time` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `dateline` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_notice`
--

LOCK TABLES `e_notice` WRITE;
/*!40000 ALTER TABLE `e_notice` DISABLE KEYS */;
INSERT INTO `e_notice` VALUES (1,'ss','http://www.baidu.com','ee','<p>rr</p>','2020-02-02 11:10:51','2020-02-14 00:00:00','/upload/2020020211341862d5.png','2020-02-29 00:00:00'),(2,'1','1','1','<p>1</p>',NULL,NULL,'',NULL),(3,'22',NULL,NULL,'<p>22</p>',NULL,NULL,'',NULL),(4,'2323',NULL,NULL,'<p>32</p>',NULL,NULL,'',NULL),(5,'5',NULL,NULL,NULL,NULL,NULL,'',NULL),(6,'88',NULL,NULL,NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `e_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_order`
--

DROP TABLE IF EXISTS `e_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '订单编号',
  `order_no` varchar(45) DEFAULT NULL COMMENT '订单编号',
  `status` varchar(45) DEFAULT NULL COMMENT '订单状态',
  `content` longtext,
  `total` decimal(9,2) DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `pay` varchar(45) DEFAULT NULL,
  `pay_type` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `dateline` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` longtext,
  `shipping_status` varchar(45) DEFAULT '0' COMMENT '发货状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `user_id` int(11) DEFAULT NULL,
  `comment` varchar(45) DEFAULT '0' COMMENT '评论',
  `reason` varchar(45) DEFAULT '0' COMMENT '原因',
  `platform` varchar(45) DEFAULT NULL COMMENT '来源',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `shipping_time` datetime DEFAULT NULL COMMENT '确认收货时间',
  `comment_time` datetime DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_order`
--

LOCK TABLES `e_order` WRITE;
/*!40000 ALTER TABLE `e_order` DISABLE KEYS */;
INSERT INTO `e_order` VALUES (6,'product','20200202175841854','-1','{\"goodsData\":[{\"attr_id\":106,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":4.0,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"大\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',4.00,4.00,NULL,1,'0','wechat',NULL,'2020-02-02 17:58:41','云顶雅居','{\"area\":\"we\",\"address\":\"云顶雅居\",\"def\":true,\"phone\":\"15881169173\",\"user_id\":7,\"name\":\"wwe\",\"addressName\":\"云顶雅居\",\"id\":3}','0','2020-02-02 17:58:41',7,'0','0',NULL,NULL,NULL,NULL),(7,'product','20200208164728674','-1','{\"goodsData\":[{\"id\":16,\"img\":\"/upload/202002051428389e9l.png\",\"name\":\"dss\",\"num\":4,\"price\":222.00,\"refer\":\"Product\",\"referid\":12},{\"attr_id\":102,\"id\":15,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":5,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"33\",\"def\":true,\"id\":2,\"name\":\"3\",\"phone\":\"15881169173\",\"user_id\":3}}',893.00,893.00,'hhh',9,'0',NULL,NULL,'2020-02-08 16:47:28','15881169173','云顶雅居','0','2020-02-08 16:47:28',3,'0','0',NULL,NULL,NULL,NULL),(8,'product','20200208170746758','-1','{\"goodsData\":[{\"img\":\"/upload/20200130133930zdyc.jpg\",\"refer\":\"Product\",\"price\":3.00,\"num\":4,\"referid\":10,\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"remark\":\"[\\\"中\\\",\\\"黑\\\"]\",\"attr_id\":105}],\"addressData\":{\"area\":\"11-22\",\"address\":\"四川云顶雅居\",\"def\":true,\"phone\":\"15881169173\",\"user_id\":7,\"name\":\"赵海员\",\"addressName\":\"云顶雅居\",\"id\":3}}',12.00,12.00,NULL,4,'0',NULL,NULL,'2020-02-08 17:07:46','15881169173','云顶雅居','0','2020-02-08 17:07:46',7,'0','0',NULL,NULL,NULL,NULL),(9,'product','20200209112430412','1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":2,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"33\",\"def\":true,\"id\":2,\"name\":\"3\",\"phone\":\"15881169173\",\"user_id\":3}}',2.00,2.00,NULL,2,'1','alipay',NULL,'2020-02-09 11:24:30','15881169173','云顶雅居','3','2020-02-09 11:24:30',3,'0','0','pc',NULL,NULL,NULL),(10,'product','20200209113414916','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"33\",\"def\":true,\"id\":2,\"name\":\"3\",\"phone\":\"15881169173\",\"user_id\":3}}',1.00,1.00,'23322',1,'0','alipay',NULL,'2020-02-09 11:34:14','15881169173','云顶雅居','0','2020-02-09 11:34:14',3,'0','0','pc',NULL,NULL,NULL),(11,'product','2020020911520911','1','{\"goodsData\":[{\"img\":\"/upload/20200130133930zdyc.jpg\",\"refer\":\"Product\",\"price\":1.00,\"num\":1,\"referid\":10,\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"remark\":\"[\\\"小\\\",\\\"红\\\"]\",\"attr_id\":102}],\"addressData\":{\"area\":\"33\",\"address\":\"云顶雅居\",\"def\":true,\"phone\":\"15881169173\",\"user_id\":3,\"name\":\"3\",\"addressName\":\"云顶雅居\",\"id\":2}}',1.00,1.00,NULL,1,'-1','alipay',NULL,'2020-02-09 11:52:09','15881169173','云顶雅居','3','2020-02-09 11:52:09',3,'0','0','pc',NULL,NULL,NULL),(12,'product','20200210133935130','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"33\",\"def\":true,\"id\":2,\"name\":\"3\",\"phone\":\"15881169173\",\"user_id\":3}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-10 13:39:35','15881169173','云顶雅居','0','2020-02-10 13:39:35',3,'0','0','pc',NULL,NULL,NULL),(13,'product','2020021014210264','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"33\",\"def\":true,\"id\":2,\"name\":\"3\",\"phone\":\"15881169173\",\"user_id\":3}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-10 14:21:02','15881169173','云顶雅居','0','2020-02-10 14:21:02',3,'0','0','pc',NULL,NULL,NULL),(14,'product','20200210143731180','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"33\",\"def\":true,\"id\":2,\"name\":\"3\",\"phone\":\"15881169173\",\"user_id\":3}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-10 14:37:31','15881169173','云顶雅居','0','2020-02-10 14:37:31',3,'0','0','pc',NULL,NULL,NULL),(15,'product','20200210144408772','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"33\",\"def\":true,\"id\":2,\"name\":\"3\",\"phone\":\"15881169173\",\"user_id\":3}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-10 14:44:08','15881169173','云顶雅居','0','2020-02-10 14:44:08',3,'0','0','pc',NULL,NULL,NULL),(16,'product','20200210151016747','1','{\"goodsData\":[{\"img\":\"/upload/20200129205743akhp.png\",\"name\":\"ww\",\"num\":1,\"price\":11.00,\"refer\":\"Product\",\"referid\":13,\"remark\":\"[]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"33\",\"def\":true,\"id\":2,\"name\":\"3\",\"phone\":\"15881169173\",\"user_id\":3}}',11.00,11.00,NULL,1,'1',NULL,NULL,'2020-02-10 15:10:16','15881169173','云顶雅居','3','2020-02-10 15:10:16',3,'0','0','pc','2020-02-10 07:11:11','2020-02-10 07:23:55',NULL),(17,'product','20200212122553327','-1','{\"goodsData\":[{\"img\":\"/upload/20200130133930zdyc.jpg\",\"refer\":\"Product\",\"price\":1.00,\"num\":1,\"referid\":10,\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"remark\":\"[\\\"小\\\",\\\"红\\\"]\",\"attr_id\":102}],\"addressData\":{\"area\":\"33wwss\",\"address\":\"云顶雅居\",\"def\":true,\"phone\":\"15881169173\",\"user_id\":3,\"name\":\"3ppp33\",\"addressName\":\"云顶雅居\",\"id\":2}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 12:25:53','15881169173','云顶雅居','0','2020-02-12 12:25:53',3,'0','0','pc',NULL,NULL,NULL),(18,'product','20200212122637336','-1','{\"goodsData\":[{\"img\":\"/upload/20200130133930zdyc.jpg\",\"refer\":\"Product\",\"price\":1.00,\"num\":4,\"referid\":10,\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"remark\":\"[\\\"小\\\",\\\"红\\\"]\",\"attr_id\":102}],\"addressData\":{\"area\":\"338880022\",\"address\":\"云顶雅居\",\"def\":true,\"phone\":\"15881169173\",\"user_id\":3,\"name\":\"3232332213321\",\"addressName\":\"云顶雅居\",\"id\":2}}',4.00,4.00,NULL,4,'0',NULL,NULL,'2020-02-12 12:26:37','15881169173','云顶雅居','0','2020-02-12 12:26:37',3,'0','0','pc',NULL,NULL,NULL),(19,'product','20200212142633271','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:26:33','15881169173','云顶雅居','0','2020-02-12 14:26:33',7,'0','0','pc',NULL,NULL,NULL),(20,'product','20200212142829851','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:28:29','15881169173','云顶雅居','0','2020-02-12 14:28:29',7,'0','0','pc',NULL,NULL,NULL),(21,'product','20200212143344801','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:33:44','15881169173','云顶雅居','0','2020-02-12 14:33:44',7,'0','0','pc',NULL,NULL,NULL),(22,'product','20200212143517321','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:35:17','15881169173','云顶雅居','0','2020-02-12 14:35:17',7,'0','0','pc',NULL,NULL,NULL),(23,'product','20200212143705614','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:37:05','15881169173','云顶雅居','0','2020-02-12 14:37:05',7,'0','0','pc',NULL,NULL,NULL),(24,'product','20200212143837212','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:38:37','15881169173','云顶雅居','0','2020-02-12 14:38:37',7,'0','0','pc',NULL,NULL,NULL),(25,'product','20200212144206358','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:42:06','15881169173','云顶雅居','0','2020-02-12 14:42:06',7,'0','0','pc',NULL,NULL,NULL),(26,'product','20200212144321433','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:43:21','15881169173','云顶雅居','0','2020-02-12 14:43:21',7,'0','0','pc',NULL,NULL,NULL),(27,'product','20200212144447418','-1','{\"goodsData\":[{\"img\":\"/upload/20200130133930zdyc.jpg\",\"refer\":\"Product\",\"price\":1.00,\"num\":1,\"referid\":10,\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"remark\":\"[\\\"小\\\",\\\"红\\\"]\",\"attr_id\":102}],\"addressData\":{\"area\":\"we\",\"address\":\"云顶雅居\",\"def\":true,\"phone\":\"15881169173\",\"user_id\":7,\"name\":\"wwedd\",\"addressName\":\"云顶雅居\",\"id\":3}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:44:47','15881169173','云顶雅居','0','2020-02-12 14:44:47',7,'0','0','pc',NULL,NULL,NULL),(28,'product','20200212144942569','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:49:42','15881169173','云顶雅居','0','2020-02-12 14:49:42',7,'0','0','pc',NULL,NULL,NULL),(29,'product','202002121449518','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:49:51','15881169173','云顶雅居','0','2020-02-12 14:49:51',7,'0','0','pc',NULL,NULL,NULL),(30,'product','20200212145044702','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:50:44','15881169173','云顶雅居','0','2020-02-12 14:50:44',7,'0','0','pc',NULL,NULL,NULL),(31,'product','20200212145250887','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:52:50','15881169173','云顶雅居','0','2020-02-12 14:52:50',7,'0','0','pc',NULL,NULL,NULL),(32,'product','20200212145643619','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:56:43','15881169173','云顶雅居','0','2020-02-12 14:56:43',7,'0','0','pc',NULL,NULL,NULL),(33,'product','20200212145652139','-1','{\"goodsData\":[{\"img\":\"/upload/20200130133930zdyc.jpg\",\"refer\":\"Product\",\"price\":1.00,\"num\":1,\"referid\":10,\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"remark\":\"[\\\"小\\\",\\\"红\\\"]\",\"attr_id\":102}],\"addressData\":{\"area\":\"we\",\"address\":\"云顶雅居\",\"def\":true,\"phone\":\"15881169173\",\"user_id\":7,\"name\":\"wwe\",\"addressName\":\"云顶雅居\",\"id\":3}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:56:52','15881169173','云顶雅居','0','2020-02-12 14:56:52',7,'0','0','pc',NULL,NULL,NULL),(34,'product','20200212145750731','-1','{\"goodsData\":[{\"img\":\"/upload/20200130133930zdyc.jpg\",\"refer\":\"Product\",\"price\":1.00,\"num\":1,\"referid\":10,\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"remark\":\"[\\\"小\\\",\\\"红\\\"]\",\"attr_id\":102}],\"addressData\":{\"area\":\"we\",\"address\":\"云顶雅居\",\"def\":true,\"phone\":\"15881169173\",\"user_id\":7,\"name\":\"wwess\",\"addressName\":\"云顶雅居\",\"id\":3}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:57:50','15881169173','云顶雅居','0','2020-02-12 14:57:50',7,'0','0','pc',NULL,NULL,NULL),(35,'product','20200212145952178','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 14:59:52','15881169173','云顶雅居','0','2020-02-12 14:59:52',7,'0','0','pc',NULL,NULL,NULL),(36,'product','20200212152008410','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 15:20:08','15881169173','云顶雅居','0','2020-02-12 15:20:08',7,'0','0','pc',NULL,NULL,NULL),(37,'product','20200212152116441','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 15:21:16','15881169173','云顶雅居','0','2020-02-12 15:21:16',7,'0','0','pc',NULL,NULL,NULL),(38,'product','20200212152210728','-1','{\"goodsData\":[{\"attr_id\":102,\"img\":\"/upload/20200130133930zdyc.jpg\",\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"num\":1,\"price\":1.00,\"refer\":\"Product\",\"referid\":10,\"remark\":\"[\\\"小\\\",\\\"红\\\"]\"}],\"addressData\":{\"address\":\"云顶雅居\",\"addressName\":\"云顶雅居\",\"area\":\"we\",\"def\":true,\"id\":3,\"name\":\"wwe\",\"phone\":\"15881169173\",\"user_id\":7}}',1.00,1.00,NULL,1,'0',NULL,NULL,'2020-02-12 15:22:10','15881169173','云顶雅居','0','2020-02-12 15:22:10',7,'0','0','pc',NULL,NULL,NULL),(41,'product','20200214181611952','-1','{\"goodsData\":[{\"img\":\"/upload/20200130133930zdyc.jpg\",\"refer\":\"Product\",\"price\":3.00,\"num\":1,\"referid\":10,\"name\":\"陶华碧老干妈香辣脆油辣椒210克/瓶 \",\"remark\":\"[\\\"中\\\",\\\"黑\\\"]\",\"id\":17,\"attr_id\":105}],\"addressData\":{\"area\":\"33\",\"address\":\"云顶雅居\",\"def\":true,\"phone\":\"15881169173\",\"user_id\":3,\"name\":\"3\",\"addressName\":\"云顶雅居\",\"id\":2}}',3.00,3.00,'566565',1,'0',NULL,NULL,'2020-02-14 18:16:11','15881169173','云顶雅居','0','2020-02-14 18:16:11',3,'0','0','pc',NULL,NULL,NULL);
/*!40000 ALTER TABLE `e_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_order_note`
--

DROP TABLE IF EXISTS `e_order_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_order_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `dateline` datetime DEFAULT NULL,
  `content` longtext,
  `remark` varchar(2000) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_order_note`
--

LOCK TABLES `e_order_note` WRITE;
/*!40000 ALTER TABLE `e_order_note` DISABLE KEYS */;
INSERT INTO `e_order_note` VALUES (3,NULL,'2020-02-10 10:28:31','{\"pay\":\"1\",\"status\":\"1\",\"shipping_status\":\"4\"}','修改发货状态',11,1),(4,NULL,'2020-02-10 10:28:52','{\"pay\":\"1\",\"status\":\"1\",\"shipping_status\":\"2\"}','修改发货状态',11,1),(5,NULL,'2020-02-10 10:29:46','{\"pay\":\"1\",\"status\":\"1\",\"shipping_status\":\"3\"}','修改发货状态',11,1),(6,NULL,'2020-02-10 10:30:46','{\"pay\":\"1\",\"status\":\"1\",\"shipping_status\":\"3\"}','修改收货地址',11,1),(7,NULL,'2020-02-10 10:42:14','{\"pay\":\"1\",\"status\":\"1\",\"shipping_status\":\"3\"}','dsasdasdsa',11,1),(8,NULL,'2020-02-10 10:42:29','{\"pay\":\"0\",\"status\":\"-1\",\"shipping_status\":\"0\"}','dsdsaads',10,1),(9,NULL,'2020-02-10 10:43:11','{\"pay\":\"1\",\"status\":\"1\",\"shipping_status\":\"3\"}','dsdasdas',9,1),(10,NULL,'2020-02-10 10:53:23','{\"pay\":\"2\",\"status\":\"1\",\"shipping_status\":\"3\"}','修改支付状态',11,1),(11,NULL,'2020-02-10 10:53:34','{\"pay\":\"-1\",\"status\":\"1\",\"shipping_status\":\"3\"}','修改支付状态',11,1),(12,NULL,'2020-02-10 13:47:15','{\"pay\":\"1\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改支付状态',12,1),(13,NULL,'2020-02-10 13:52:50','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改支付状态',12,1),(14,NULL,'2020-02-10 14:00:04','{\"pay\":\"1\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改支付状态',12,1),(15,NULL,'2020-02-10 14:00:07','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改支付状态',12,1),(16,NULL,'2020-02-10 15:11:10','{\"pay\":\"1\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改支付状态',16,1),(17,NULL,'2020-02-10 15:12:29','{\"pay\":\"1\",\"status\":\"0\",\"shipping_status\":\"2\"}','完成发货',16,1),(18,NULL,'2020-02-10 15:12:38','{\"pay\":\"1\",\"status\":\"1\",\"shipping_status\":\"3\"}','修改发货状态',16,1),(19,NULL,'2020-02-10 15:23:37','{\"pay\":\"1\",\"status\":\"1\",\"shipping_status\":\"1\"}','修改发货状态',16,1),(20,NULL,'2020-02-10 15:23:54','{\"pay\":\"1\",\"status\":\"1\",\"shipping_status\":\"3\"}','修改发货状态',16,1),(21,NULL,'2020-02-12 12:28:42','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',18,1),(22,NULL,'2020-02-12 12:31:41','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',18,1),(23,NULL,'2020-02-12 12:33:27','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',18,1),(24,NULL,'2020-02-12 12:35:55','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',17,1),(25,NULL,'2020-02-12 12:38:10','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',18,1),(26,NULL,'2020-02-12 12:39:26','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',18,1),(27,NULL,'2020-02-12 12:43:56','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',18,1),(28,NULL,'2020-02-12 12:44:08','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','饿11221',18,1),(29,NULL,'2020-02-12 12:47:46','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',18,1),(30,NULL,'2020-02-12 12:49:53','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',17,1),(31,NULL,'2020-02-12 12:50:11','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',17,1),(32,NULL,'2020-02-12 12:50:31','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',17,1),(33,NULL,'2020-02-12 13:59:09','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',18,1),(34,NULL,'2020-02-12 14:51:32','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',27,1),(35,NULL,'2020-02-12 15:00:31','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',34,1),(36,NULL,'2020-02-12 15:02:53','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',33,1),(37,NULL,'2020-02-14 15:09:59','{\"pay\":\"0\",\"status\":\"-1\",\"shipping_status\":\"0\"}','222',40,1),(38,NULL,'2020-02-14 18:17:33','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','6',41,3),(39,NULL,'2020-02-14 18:28:40','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','1',41,3),(40,NULL,'2020-02-14 18:29:37','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',41,3),(41,NULL,'2020-02-14 18:38:20','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',41,3),(42,NULL,'2020-02-14 18:41:31','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',41,3),(43,NULL,'2020-02-14 18:42:08','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',41,3),(44,NULL,'2020-02-14 18:46:35','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',41,3),(45,NULL,'2020-02-14 19:12:58','{\"pay\":\"0\",\"status\":\"0\",\"shipping_status\":\"0\"}','修改收货地址',41,3);
/*!40000 ALTER TABLE `e_order_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_order_setting`
--

DROP TABLE IF EXISTS `e_order_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_order_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `order_timeout` int(11) DEFAULT NULL COMMENT '订单多少天后自动超时',
  `pay_timeout` int(11) DEFAULT NULL COMMENT '支付多少时间自动关闭',
  `shipping_timeout` int(11) DEFAULT NULL COMMENT '发货后多少时间自动收货',
  `comment_timeout` int(11) DEFAULT NULL COMMENT '评论多少后自动好评',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_order_setting`
--

LOCK TABLES `e_order_setting` WRITE;
/*!40000 ALTER TABLE `e_order_setting` DISABLE KEYS */;
INSERT INTO `e_order_setting` VALUES (1,NULL,7,3,14,7);
/*!40000 ALTER TABLE `e_order_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_praise`
--

DROP TABLE IF EXISTS `e_praise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_praise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `refer` varchar(45) DEFAULT NULL COMMENT '关联对象',
  `referid` int(11) DEFAULT NULL COMMENT '关联id',
  `user_id` int(11) DEFAULT NULL,
  `dateline` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_praise`
--

LOCK TABLES `e_praise` WRITE;
/*!40000 ALTER TABLE `e_praise` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_praise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_product`
--

DROP TABLE IF EXISTS `e_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `num` int(11) DEFAULT '0' COMMENT '库存',
  `remark` varchar(200) DEFAULT NULL,
  `content` text,
  `imgs` varchar(2000) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `dateline` varchar(45) DEFAULT NULL,
  `attributes` varchar(2000) DEFAULT NULL COMMENT '规格参数',
  `status` varchar(45) DEFAULT '0' COMMENT '0上架，1下架',
  `item_param` text,
  `sale` int(11) DEFAULT '0' COMMENT '销售数量',
  `bar_code` varchar(200) DEFAULT NULL COMMENT '商品条码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_product`
--

LOCK TABLES `e_product` WRITE;
/*!40000 ALTER TABLE `e_product` DISABLE KEYS */;
INSERT INTO `e_product` VALUES (10,'陶华碧老干妈香辣脆油辣椒210克/瓶 ','/upload/20200130133930zdyc.jpg',13,1.00,'2',166,'2','<p>22</p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p><p><br></p><h1>陶华碧老干妈香辣脆油辣椒210克/瓶</h1><p><br></p>','[{\"name\":\"\",\"url\":\"/upload/20200130135808akpd.png\"},{\"name\":\"\",\"url\":\"/upload/20200130135811ixp7.png\"}]',2,'2020-01-29 20:13:19','[{\"name\":\"尺寸\",\"attrs\":[\"小\",\"中\",\"大\"]},{\"name\":\"颜色\",\"attrs\":[\"红\",\"黑\"]}]','0','[]',0,NULL),(11,'ww','/upload/2020020514285207ia.png',16,22.00,'22',NULL,'2','<p>22</p>',NULL,6,'2020-01-29 20:14:12',NULL,'0','[]',0,NULL),(12,'dss','/upload/202002051428389e9l.png',13,222.00,'22',NULL,'22','<p>222</p>',NULL,22,'2020-01-29 20:54:57',NULL,'0','[]',0,NULL),(13,'ww','/upload/20200129205743akhp.png',13,11.00,'11',11,'11','<p>11</p>','[]',22,'2020-01-29 20:58:10',NULL,'0','[]',0,NULL);
/*!40000 ALTER TABLE `e_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_product_attr`
--

DROP TABLE IF EXISTS `e_product_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_product_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `attributes` varchar(2000) DEFAULT NULL COMMENT '属性组合',
  `price` decimal(9,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL COMMENT '库存数量',
  `status` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL COMMENT '图片',
  `img` varchar(200) DEFAULT NULL COMMENT '商品的图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_product_attr`
--

LOCK TABLES `e_product_attr` WRITE;
/*!40000 ALTER TABLE `e_product_attr` DISABLE KEYS */;
INSERT INTO `e_product_attr` VALUES (102,10,'','[\"小\",\"红\"]',1.00,11,'0','',''),(103,10,'','[\"小\",\"黑\"]',1.00,11,'0','',''),(104,10,'','[\"中\",\"红\"]',2.00,11,'0','',''),(105,10,'','[\"中\",\"黑\"]',3.00,111,'0','',''),(106,10,'','[\"大\",\"红\"]',4.00,11,'0','',''),(107,10,'','[\"大\",\"黑\"]',5.00,11,'0','','');
/*!40000 ALTER TABLE `e_product_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_product_cat`
--

DROP TABLE IF EXISTS `e_product_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_product_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `hiden` varchar(45) DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  `item_param` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_product_cat`
--

LOCK TABLES `e_product_cat` WRITE;
/*!40000 ALTER TABLE `e_product_cat` DISABLE KEYS */;
INSERT INTO `e_product_cat` VALUES (1,'IT数码',NULL,'/upload/20200227182254omcy.png','','0',0,'','[]'),(2,'服装服饰',NULL,'',NULL,'0',1,'',NULL),(3,'手机',1,'',NULL,'0',1,NULL,'[]'),(4,'配件',1,'',NULL,'0',2,NULL,NULL),(5,'女装',2,'',NULL,'0',1,NULL,NULL),(6,'男装',2,'',NULL,'0',2,NULL,NULL),(7,'母婴',2,'',NULL,'0',3,NULL,NULL),(8,'生鲜配送',NULL,'',NULL,'0',2,NULL,NULL),(9,'鲜花',8,'',NULL,'0',1,NULL,NULL),(10,'蔬菜',8,'',NULL,'0',2,NULL,NULL),(11,'水果',8,'',NULL,'0',3,NULL,NULL),(12,'家具',NULL,'',NULL,'0',4,NULL,'[{\"params\":[{\"k\":\"1\",\"v\":\"北欧\"},{\"k\":\"2\",\"v\":\"现代\"}],\"group\":\"风格\",\"inputVisible\":false,\"inputValue\":\"\"},{\"params\":[{\"k\":\"1\",\"v\":\"自营\"},{\"k\":\"2\",\"v\":\"其他\"}],\"group\":\"厂家\",\"inputVisible\":false,\"inputValue\":\"\"}]'),(13,'测试',3,'/upload/20200129113342gdhc.png','11','0',11,'11','[]'),(14,'撒',12,'/upload/20200129113703wmkv.png','1','0',2,'2','[]'),(15,'ss',12,'/upload/202001291136561t10.png','ss','0',1,'ss','[]'),(16,'ss',15,'/upload/202001291137475xl8.png','ss','0',2,'12','[]');
/*!40000 ALTER TABLE `e_product_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_shipping`
--

DROP TABLE IF EXISTS `e_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '快递名称',
  `dateline` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `express` varchar(45) DEFAULT NULL COMMENT '快递单号',
  `type` varchar(45) DEFAULT '0' COMMENT '类型',
  `path` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_shipping`
--

LOCK TABLES `e_shipping` WRITE;
/*!40000 ALTER TABLE `e_shipping` DISABLE KEYS */;
INSERT INTO `e_shipping` VALUES (1,'百世快递','2020-02-09 17:00:53',11,'121221',NULL,NULL),(2,'2ewqwe','2020-02-09 17:20:09',9,'wqeqwe',NULL,NULL),(3,'34324','2020-02-10 15:12:29',16,'432432',NULL,NULL);
/*!40000 ALTER TABLE `e_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_yaoqing`
--

DROP TABLE IF EXISTS `e_yaoqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_yaoqing` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `money` decimal(9,2) DEFAULT NULL COMMENT '金额',
  `jiangli` decimal(9,2) DEFAULT NULL COMMENT '注册奖励',
  `sid0` int(11) DEFAULT NULL COMMENT '师傅id',
  `code` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '邀请码',
  `status` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '是否奖励',
  `dateline` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_yaoqing`
--

LOCK TABLES `e_yaoqing` WRITE;
/*!40000 ALTER TABLE `e_yaoqing` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_yaoqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_table`
--

DROP TABLE IF EXISTS `global_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_table` (
  `xid` varchar(128) NOT NULL,
  `transaction_id` bigint(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `application_id` varchar(64) DEFAULT NULL,
  `transaction_service_group` varchar(64) DEFAULT NULL,
  `transaction_name` varchar(64) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `begin_time` bigint(20) DEFAULT NULL,
  `application_data` varchar(2000) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`xid`),
  KEY `idx_gmt_modified_status` (`gmt_modified`,`status`),
  KEY `idx_transaction_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_table`
--

LOCK TABLES `global_table` WRITE;
/*!40000 ALTER TABLE `global_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `global_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lock_table`
--

DROP TABLE IF EXISTS `lock_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lock_table` (
  `row_key` varchar(128) NOT NULL,
  `xid` varchar(96) DEFAULT NULL,
  `transaction_id` mediumtext,
  `branch_id` mediumtext,
  `resource_id` varchar(256) DEFAULT NULL,
  `table_name` varchar(32) DEFAULT NULL,
  `pk` varchar(32) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`row_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lock_table`
--

LOCK TABLES `lock_table` WRITE;
/*!40000 ALTER TABLE `lock_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `lock_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_account`
--

DROP TABLE IF EXISTS `t_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `account` tinyint(10) DEFAULT '0' COMMENT '排序号',
  `cash_amount` int(11) DEFAULT NULL,
  `uncash_amount` int(11) DEFAULT NULL,
  `freeze_cash_amount` int(11) DEFAULT NULL,
  `freeze_uncash_amount` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `MD5` varchar(255) DEFAULT NULL,
  `safeAnswer` varchar(255) DEFAULT NULL,
  `safeQuestion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_account`
--

LOCK TABLES `t_account` WRITE;
/*!40000 ALTER TABLE `t_account` DISABLE KEYS */;
INSERT INTO `t_account` VALUES (1,NULL,0,0,0,0,0,0,NULL,NULL,NULL),(3,NULL,0,0,0,0,0,0,NULL,NULL,NULL),(4,NULL,0,0,0,0,0,0,NULL,NULL,NULL),(5,NULL,0,0,0,0,0,0,NULL,NULL,NULL),(6,NULL,0,0,0,0,0,0,NULL,NULL,NULL),(7,NULL,0,0,0,0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app`
--

DROP TABLE IF EXISTS `t_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_app` (
  `id` varchar(200) NOT NULL,
  `name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `sort` int(10) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app`
--

LOCK TABLES `t_app` WRITE;
/*!40000 ALTER TABLE `t_app` DISABLE KEYS */;
INSERT INTO `t_app` VALUES ('37755ee2e14548428801c4307d60e595','222',NULL),('75186a364ca149e29b32c82923c30ba3','小程序端',NULL);
/*!40000 ALTER TABLE `t_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_authentication`
--

DROP TABLE IF EXISTS `t_authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_authentication` (
  `id` varchar(200) NOT NULL,
  `uid` int(10) DEFAULT NULL COMMENT '角色名称',
  `username` varchar(200) DEFAULT '0' COMMENT '排序号',
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `loginTime` datetime DEFAULT NULL,
  `loginIp` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_authentication`
--

LOCK TABLES `t_authentication` WRITE;
/*!40000 ALTER TABLE `t_authentication` DISABLE KEYS */;
INSERT INTO `t_authentication` VALUES ('07eb39e5584d4d9ea04595a54d01422d',1,'admin','','','2020-02-27 11:31:29','127.0.0.1','2020-02-27 11:31:46'),('2dca38d52f874cff84128c9fdfc2b05f',3,'test','15881169173','2596310607@qq.com','2020-02-14 04:01:39','127.0.0.1','2020-02-14 09:48:32');
/*!40000 ALTER TABLE `t_authentication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_captcha`
--

DROP TABLE IF EXISTS `t_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_captcha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `captcha` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dateline` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_captcha`
--

LOCK TABLES `t_captcha` WRITE;
/*!40000 ALTER TABLE `t_captcha` DISABLE KEYS */;
INSERT INTO `t_captcha` VALUES (46,'2596310607@qq.com','471926','2019-01-07 14:20:26');
/*!40000 ALTER TABLE `t_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dictionary`
--

DROP TABLE IF EXISTS `t_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `value` varchar(255) DEFAULT NULL,
  `ctgId` int(11) DEFAULT NULL,
  `sort` int(10) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dictionary`
--

LOCK TABLES `t_dictionary` WRITE;
/*!40000 ALTER TABLE `t_dictionary` DISABLE KEYS */;
INSERT INTO `t_dictionary` VALUES (1,'男','男',1,1),(2,'女','女',1,2),(3,'保密','保密',1,0),(4,'显示','0',2,0),(5,'隐藏','1',2,1),(6,'个','个',3,0),(7,'件','件',3,1),(8,'盒','盒',3,2),(9,'条','条',3,3),(10,'袋','袋',3,5),(11,'包','包',3,6),(12,'箱','箱',3,6),(13,'只','只',3,7),(14,'瓶','瓶',3,7),(15,'斤','斤',3,8),(16,'订单关闭','-1',4,0),(17,'交易中','0',4,0),(18,'未支付','0',5,0),(19,'已经支付','1',5,1),(20,'已经退款','-1',5,0),(21,'余额','yue',6,1),(22,'支付宝','alipay',6,2),(23,'微信','wechat',6,3),(24,'菜单','0',7,0),(25,'按钮','1',7,1),(26,'禁用','true',8,0),(27,'启用','false',8,2),(28,'待支付','0',9,0),(29,'已支付','1',9,1),(30,'交易完成','1',4,1),(31,'微信公众号支付','wx',6,4),(32,'所有平台','all',10,0),(33,'网页端','pc',10,1),(34,'微信公众号','wx',10,2),(35,'app端','app',10,3),(36,'退款中','2',5,2),(37,'未发货','0',11,0),(38,'备货中','1',11,1),(39,'已经发货','2',11,2),(40,'已收货','3',11,3),(41,'退货中','4',11,4),(42,'已退货','5',11,5);
/*!40000 ALTER TABLE `t_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dictionaryctg`
--

DROP TABLE IF EXISTS `t_dictionaryctg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_dictionaryctg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `code` varchar(255) DEFAULT NULL,
  `sort` int(10) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dictionaryctg`
--

LOCK TABLES `t_dictionaryctg` WRITE;
/*!40000 ALTER TABLE `t_dictionaryctg` DISABLE KEYS */;
INSERT INTO `t_dictionaryctg` VALUES (1,'性别','user_sex',NULL),(2,'是否显示','is_show',NULL),(3,'单位','product_unit',NULL),(4,'订单状态','order_status',NULL),(5,'订单支付','order_pay',NULL),(6,'支付方式','order_pay_type',NULL),(7,'菜单类型','menu_type',NULL),(8,'用户状态','user_disabled',NULL),(9,'支付状态','pay_log_status',NULL),(10,'支付类型','payments_platform',NULL),(11,'物流状态','shipping_status',NULL);
/*!40000 ALTER TABLE `t_dictionaryctg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_file`
--

DROP TABLE IF EXISTS `t_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `dateline` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_file`
--

LOCK TABLES `t_file` WRITE;
/*!40000 ALTER TABLE `t_file` DISABLE KEYS */;
INSERT INTO `t_file` VALUES (103,'/upload/20191212162305rvkq.png','2019-12-12 16:23:12'),(104,'/upload/20191212162526hqji.png','2019-12-12 16:25:26'),(105,'/upload/20191212162834okx0.png','2019-12-12 16:28:40'),(106,'/upload/20191212172023jxs3.png','2019-12-12 17:20:31'),(107,'/upload/20191212172138wumt.png','2019-12-12 17:22:04'),(108,'/upload/20191212172253w55i.png','2019-12-12 17:22:55'),(109,'/upload/20191212172331q7pn.png','2019-12-12 17:23:32'),(110,'/upload/20191212172439nbhs.png','2019-12-12 17:24:39'),(111,'/upload/2019121217482975d0.png','2019-12-12 17:48:29'),(112,'/upload/20191212175350qyyu.png','2019-12-12 17:53:50'),(113,'/upload/20191212182332ytxv.png','2019-12-12 18:23:32'),(114,'/upload/20191214130245aj5o.png','2019-12-14 13:02:45'),(115,'/upload/20191214151841c09o.png','2019-12-14 15:18:41'),(116,'/upload/20191214152012gx2r.png','2019-12-14 15:20:12'),(117,'/upload/20191214152100a0ay.png','2019-12-14 15:21:00'),(118,'/upload/20191214152201a2ob.png','2019-12-14 15:22:01'),(119,'/upload/20191214152214m4kj.png','2019-12-14 15:22:14'),(120,'/upload/201912141522557loz.png','2019-12-14 15:22:55'),(121,'/upload/201912141523285n7x.png','2019-12-14 15:23:28'),(122,'/upload/201912141540027otn.png','2019-12-14 15:40:02'),(123,'/upload/20191214155936w7s7.png','2019-12-14 15:59:36'),(124,'/upload/20191214164945vbxb.png','2019-12-14 16:49:45'),(125,'/upload/201912141650215zbp.png','2019-12-14 16:50:21'),(126,'/upload/201912141650282z34.png','2019-12-14 16:50:28'),(127,'/upload/20191214165041o0ow.png','2019-12-14 16:50:41'),(128,'/upload/20191214165051bxw3.png','2019-12-14 16:50:51'),(129,'/upload/20191214165133dj4t.png','2019-12-14 16:51:33'),(130,'/upload/20191214165424qk4a.png','2019-12-14 16:54:24'),(131,'/upload/201912141702241v23.png','2019-12-14 17:02:24'),(132,'/upload/201912141703407o1k.png','2019-12-14 17:03:40'),(133,'/upload/20191214170421bkn5.png','2019-12-14 17:04:21'),(134,'/upload/20191214170428qzo0.png','2019-12-14 17:04:28'),(135,'/upload/201912141705109yuz.png','2019-12-14 17:05:10'),(136,'/upload/20191214170542ih7k.png','2019-12-14 17:05:42'),(137,'/upload/20191214170559w9m2.png','2019-12-14 17:05:59'),(138,'/upload/20191214170708w8y0.png','2019-12-14 17:07:08'),(139,'/upload/201912141708519p0z.png','2019-12-14 17:08:51'),(140,'/upload/2019121417085770wk.png','2019-12-14 17:08:57'),(141,'/upload/20191214171033cwj4.png','2019-12-14 17:10:33'),(142,'/upload/2019121417113673pc.png','2019-12-14 17:11:36'),(143,'/upload/20191214173325bzer.png','2019-12-14 17:33:25'),(144,'/upload/201912181014452oq1.png','2019-12-18 10:14:45'),(145,'/upload/20191218101531vxn6.png','2019-12-18 10:15:31'),(146,'/upload/20191218101628fzmr.png','2019-12-18 10:16:28'),(147,'/upload/2019121810194235lq.png','2019-12-18 10:19:42'),(148,'/upload/201912181020185cjw.png','2019-12-18 10:20:18'),(149,'/upload/20191218102046hxwl.png','2019-12-18 10:20:46'),(150,'/upload/201912181023295oxs.png','2019-12-18 10:23:29'),(151,'/upload/20191218102534g9yt.png','2019-12-18 10:25:34'),(152,'/upload/20191218102601kbd1.png','2019-12-18 10:26:01'),(153,'/upload/20191218102634wcz2.png','2019-12-18 10:26:34'),(154,'/upload/20191218102839ljm5.png','2019-12-18 10:28:39'),(155,'/upload/2019121810303016hc.png','2019-12-18 10:30:30'),(156,'/upload/20191218103223rodl.png','2019-12-18 10:32:23'),(157,'/upload/20191218103519hec9.png','2019-12-18 10:35:19'),(158,'/upload/201912181037417z4y.png','2019-12-18 10:37:41'),(159,'/upload/20191218103805aezi.png','2019-12-18 10:38:05'),(160,'/upload/20191218105145ldi0.png','2019-12-18 10:51:45'),(161,'/upload/20191218105243d8h0.png','2019-12-18 10:52:43'),(162,'/upload/201912181057180bcr.png','2019-12-18 10:57:18'),(163,'/upload/20191218105746o8kh.png','2019-12-18 10:57:46'),(164,'/upload/20191218111702x1mg.png','2019-12-18 11:17:02'),(165,'/upload/20191218111743smx6.png','2019-12-18 11:17:43'),(166,'/upload/20191218111828zgoj.png','2019-12-18 11:18:28'),(167,'/upload/20191218111916mvy8.png','2019-12-18 11:19:16'),(168,'/upload/201912181119545i98.png','2019-12-18 11:19:54'),(169,'/upload/20191218112035y8ed.png','2019-12-18 11:20:35'),(170,'/upload/20191218112104296v.png','2019-12-18 11:21:04'),(171,'/upload/2019121811224474b6.png','2019-12-18 11:22:44'),(172,'/upload/20191218112614sazx.png','2019-12-18 11:26:14'),(173,'/upload/201912181126388xbc.png','2019-12-18 11:26:38'),(174,'/upload/20191218114139lyoy.png','2019-12-18 11:41:39'),(175,'/upload/201912181142211vug.png','2019-12-18 11:42:21'),(176,'/upload/20191218114337h05n.png','2019-12-18 11:43:37'),(177,'/upload/20191218114525aik5.png','2019-12-18 11:45:25'),(178,'/upload/201912181146379fjz.png','2019-12-18 11:46:37'),(179,'/upload/20191218114712yuli.png','2019-12-18 11:47:12'),(180,'/upload/20191218114752gno4.png','2019-12-18 11:47:52'),(181,'/upload/20191218114855dmg6.png','2019-12-18 11:48:55'),(182,'/upload/201912181150091lit.png','2019-12-18 11:50:09'),(183,'/upload/20191218115300qj35.png','2019-12-18 11:53:00'),(184,'/upload/20191218115325jk3a.png','2019-12-18 11:53:25'),(185,'/upload/20191218115350x36a.png','2019-12-18 11:53:50'),(186,'/upload/201912181154207te5.png','2019-12-18 11:54:20'),(187,'/upload/20191218115506u97h.png','2019-12-18 11:55:06'),(188,'/upload/20191218115614ds0d.png','2019-12-18 11:56:14'),(189,'/upload/20191218115730w9a4.png','2019-12-18 11:57:30'),(190,'/upload/20191218115735blky.png','2019-12-18 11:57:35'),(191,'/upload/201912181159092qdk.png','2019-12-18 11:59:09'),(192,'/upload/20191218120100kn35.png','2019-12-18 12:01:00'),(193,'/upload/20191218120106sypy.png','2019-12-18 12:01:06'),(194,'/upload/20191218120132u1cj.png','2019-12-18 12:01:32'),(195,'/upload/20191218120136rybk.png','2019-12-18 12:01:36'),(196,'/upload/2019121812014139sz.png','2019-12-18 12:01:41'),(197,'/upload/20191218120328c4sf.png','2019-12-18 12:03:28'),(198,'/upload/201912181203314a7q.png','2019-12-18 12:03:31'),(199,'/upload/20191218120352p1pc.png','2019-12-18 12:03:52'),(200,'/upload/201912181205274k54.png','2019-12-18 12:05:27'),(201,'/upload/20191218120530f1b1.png','2019-12-18 12:05:30'),(202,'/upload/20191218120718t84q.png','2019-12-18 12:07:18'),(203,'/upload/201912181207214k3u.png','2019-12-18 12:07:21'),(204,'/upload/20191218125724zqxc.png','2019-12-18 12:57:24'),(205,'/upload/20191218125917q1ye.png','2019-12-18 12:59:17'),(206,'/upload/20191218125921axuh.png','2019-12-18 12:59:21'),(207,'/upload/20191218130017ms21.png','2019-12-18 13:00:17'),(208,'/upload/20191218130120f3kn.png','2019-12-18 13:01:20'),(209,'/upload/201912181301245tfp.png','2019-12-18 13:01:24'),(210,'/upload/20191218130236z7c2.png','2019-12-18 13:02:36'),(211,'/upload/2019121813044860u0.png','2019-12-18 13:04:48'),(212,'/upload/20191218130719zgs6.png','2019-12-18 13:07:19'),(213,'/upload/20191218130756t4hm.png','2019-12-18 13:07:56'),(214,'/upload/20191218130830ydjz.png','2019-12-18 13:08:30'),(215,'/upload/20191218130841prkc.png','2019-12-18 13:08:41'),(216,'/upload/20191218130951ms26.png','2019-12-18 13:09:51'),(217,'/upload/201912181309577qhh.png','2019-12-18 13:09:57'),(218,'/upload/20191218131039u96v.png','2019-12-18 13:10:39'),(219,'/upload/20191218131128smxx.png','2019-12-18 13:11:28'),(220,'/upload/20191218131208gx0u.png','2019-12-18 13:12:08'),(221,'/upload/201912181312126v86.png','2019-12-18 13:12:12'),(222,'/upload/20191218131215g14g.png','2019-12-18 13:12:15'),(223,'/upload/20191218131351bx80.png','2019-12-18 13:13:51'),(224,'/upload/201912181317367v1h.png','2019-12-18 13:17:36'),(225,'/upload/20191218131825oj5m.png','2019-12-18 13:18:25'),(226,'/upload/2019121813225915r1.png','2019-12-18 13:22:59'),(227,'/upload/201912181323583hmt.png','2019-12-18 13:23:58'),(228,'/upload/20191218133650rv8x.png','2019-12-18 13:36:50'),(229,'/upload/20191218133743p07y.png','2019-12-18 13:37:43'),(230,'/upload/201912181353214f60.png','2019-12-18 13:53:21'),(231,'/upload/201912181400560n1e.png','2019-12-18 14:00:56'),(232,'/upload/20191218140639fgp8.png','2019-12-18 14:06:39'),(233,'/upload/20191218141055hw8i.png','2019-12-18 14:10:55'),(234,'/upload/20191218141106jqfc.png','2019-12-18 14:11:06'),(235,'/upload/201912181411176vrp.png','2019-12-18 14:11:17'),(236,'/upload/20191218150127yhb1.png','2019-12-18 15:01:27'),(237,'/upload/20191218150242dj2r.png','2019-12-18 15:02:42'),(238,'/upload/20191218150428775v.png','2019-12-18 15:04:28'),(239,'/upload/201912200846185je3.png','2019-12-20 08:46:18'),(240,'/upload/20191221133037jw03.jpg','2019-12-21 13:30:37'),(241,'/upload/201912211332252liu.jpg','2019-12-21 13:32:25'),(242,'/upload/201912211333109e0n.jpg','2019-12-21 13:33:10'),(243,'/upload/20191221133353yw2c.jpg','2019-12-21 13:33:53'),(244,'/upload/20191221133448od85.jpg','2019-12-21 13:34:48'),(245,'/upload/20191221133541999s.jpg','2019-12-21 13:35:41'),(246,'/upload/201912211336468mdl.jpg','2019-12-21 13:36:46'),(247,'/upload/20191221133740ajp2.jpg','2019-12-21 13:37:40'),(248,'/upload/20191221134343kd64.jpg','2019-12-21 13:43:43'),(249,'/upload/20191221141739x6e0.jpg','2019-12-21 14:17:39'),(250,'/upload/20191221141924dk0c.png','2019-12-21 14:19:24'),(251,'/upload/201912211420174joi.png','2019-12-21 14:20:17'),(252,'/upload/20191221142811mjac.jpg','2019-12-21 14:28:11'),(253,'/upload/20191221144338pg8v.jpg','2019-12-21 14:43:38'),(254,'/upload/20191221145221izrz.jpg','2019-12-21 14:52:21'),(255,'/upload/20191221150803y6rn.jpg','2019-12-21 15:08:03'),(256,'/upload/20191224112347ogpv.png','2019-12-24 11:23:47'),(257,'/upload/201912241127561l6x.png','2019-12-24 11:27:56'),(258,'/upload/201912241128294b4e.png','2019-12-24 11:28:29'),(259,'/upload/20191224142813ltke.png','2019-12-24 14:28:13'),(260,'/upload/20191224144153mafp.png','2019-12-24 14:41:53'),(261,'/upload/20191224144439opmp.png','2019-12-24 14:44:39'),(262,'/upload/201912241444428v5i.jpg','2019-12-24 14:44:42'),(263,'/upload/20200128202353atkl.png','2020-01-28 20:23:53'),(264,'/upload/20200129113242k8ft.png','2020-01-29 11:32:42'),(265,'/upload/20200129113325q9hs.png','2020-01-29 11:33:25'),(266,'/upload/20200129113342gdhc.png','2020-01-29 11:33:42'),(267,'/upload/202001291136561t10.png','2020-01-29 11:36:56'),(268,'/upload/20200129113703wmkv.png','2020-01-29 11:37:03'),(269,'/upload/202001291137475xl8.png','2020-01-29 11:37:47'),(270,'/upload/202001292055331hdk.png','2020-01-29 20:55:33'),(271,'/upload/202001292055401jwy.png','2020-01-29 20:55:40'),(272,'/upload/202001292055502zpp.png','2020-01-29 20:55:50'),(273,'/upload/20200129205618e71q.png','2020-01-29 20:56:18'),(274,'/upload/20200129205743akhp.png','2020-01-29 20:57:43'),(275,'/upload/20200130133930zdyc.jpg','2020-01-30 13:39:30'),(276,'/upload/2020013013422759hd.png','2020-01-30 13:42:27'),(277,'/upload/20200130134229kr88.png','2020-01-30 13:42:29'),(278,'/upload/20200130134232spnv.png','2020-01-30 13:42:32'),(279,'/upload/2020013013430838sp.png','2020-01-30 13:43:08'),(280,'/upload/202001301346038tas.png','2020-01-30 13:46:03'),(281,'/upload/2020013013460723jb.png','2020-01-30 13:46:07'),(282,'/upload/20200130134610eoye.png','2020-01-30 13:46:10'),(283,'/upload/20200130134612kzz4.png','2020-01-30 13:46:12'),(284,'/upload/202001301348169bqo.png','2020-01-30 13:48:16'),(285,'/upload/20200130134820zymc.png','2020-01-30 13:48:20'),(286,'/upload/202001301348223ime.png','2020-01-30 13:48:22'),(287,'/upload/202001301348258fj4.png','2020-01-30 13:48:25'),(288,'/upload/20200130134953e95g.png','2020-01-30 13:49:53'),(289,'/upload/20200130134956xk8d.png','2020-01-30 13:49:56'),(290,'/upload/20200130135059n6fx.png','2020-01-30 13:50:59'),(291,'/upload/202001301354527bv3.png','2020-01-30 13:54:52'),(292,'/upload/2020013013545531md.png','2020-01-30 13:54:55'),(293,'/upload/20200130135808akpd.png','2020-01-30 13:58:08'),(294,'/upload/20200130135811ixp7.png','2020-01-30 13:58:11'),(295,'/upload/20200202113055h2lf.png','2020-02-02 11:30:55'),(296,'/upload/20200202113135k5ex.png','2020-02-02 11:31:35'),(297,'/upload/20200202113220latz.png','2020-02-02 11:32:20'),(298,'/upload/20200202113403srrd.png','2020-02-02 11:34:03'),(299,'/upload/2020020211341862d5.png','2020-02-02 11:34:18'),(300,'/upload/20200202115123n3dg.png','2020-02-02 11:51:23'),(301,'/upload/202002021152228ftd.png','2020-02-02 11:52:22'),(302,'/upload/202002021152483ifu.png','2020-02-02 11:52:48'),(303,'/upload/20200202115325rpjg.png','2020-02-02 11:53:25'),(304,'/upload/20200202115347tu5i.png','2020-02-02 11:53:47'),(305,'/upload/20200204163540tx8z.png','2020-02-04 16:35:40'),(306,'/upload/20200204163707310z.png','2020-02-04 16:37:07'),(307,'/upload/20200204163847430m.png','2020-02-04 16:38:49'),(308,'/upload/20200204163929l17e.png','2020-02-04 16:39:29'),(309,'/upload/20200204164018twat.png','2020-02-04 16:40:18'),(310,'/upload/20200204164116o8on.png','2020-02-04 16:41:16'),(311,'/upload/202002041641304ld3.png','2020-02-04 16:41:30'),(312,'/upload/20200204164145vwvu.png','2020-02-04 16:41:45'),(313,'/upload/20200204164311v4fe.png','2020-02-04 16:43:11'),(314,'/upload/202002041644075gxe.png','2020-02-04 16:44:07'),(315,'/upload/20200204164433fa2e.png','2020-02-04 16:44:33'),(316,'/upload/202002041654599drn.png','2020-02-04 16:54:59'),(317,'/upload/202002051428389e9l.png','2020-02-05 14:28:38'),(318,'/upload/2020020514285207ia.png','2020-02-05 14:28:52'),(319,'/upload/20200227182254omcy.png','2020-02-27 18:22:54');
/*!40000 ALTER TABLE `t_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_item_param`
--

DROP TABLE IF EXISTS `t_item_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_item_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `content` mediumtext,
  `path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_item_param`
--

LOCK TABLES `t_item_param` WRITE;
/*!40000 ALTER TABLE `t_item_param` DISABLE KEYS */;
INSERT INTO `t_item_param` VALUES (1,'手机',1,'[{\"group\":\"基本参数\",\"params\":[\"品牌\",\"型号\",\"电池类型\",\"CPU核心数\",\"机身颜色\",\"手机类型\",\"操作系统\",\"CPU品牌\",\"产品名称\"]},{\"group\":\"存储\",\"params\":[\"运行内存RAM\\t\",\"存储容量\"]},{\"group\":\"网络\",\"params\":[\"网络类型\",\"网络模式\"]},{\"group\":\"显示\",\"params\":[\"分辨率\",\"触摸屏类型\",\"屏幕尺寸\"]},{\"group\":\"拍照功能\",\"params\":[\"后置摄像头\",\"摄像头类型\",\"视频显示格式\"]},{\"group\":\"包装清单\",\"params\":[\"手机主机\",\"电源适配器\",\"极简手机保护套\",\"入门指南\",\"USB Type-C数据线\",\"插针\",\"三包凭证\"]}]','phone'),(2,'家具【床】',2,'[{\"group\":\"基本参数\",\"params\":[\"品牌\",\"型号\",\"风格\",\"尺寸\",\"适用人数\",\"颜色分类\",\"是否可定制\",\"家具结构\",\"材质\",\"工艺\",\"产地\",\"地市\",\"出租车是否可运输\",\"款式定位\",\"安装说明详情\"]}]','chuang'),(3,'电器',1,'[{\"group\":\"基本参数\",\"params\":[\"品牌\",\"型号\",\"容量范围\",\"售后服务\",\"产地\",\"颜色分类\",\"产品类别\",\"功率\"]}]','dianqi'),(4,'生鲜',3,'[{\"group\":\"基本参数\",\"params\":[\"厂名\",\"厂址\",\"厂家联系方式\",\"保质期\",\"品牌\",\"价格\",\"产地\",\"省份\",\"城市\",\"净含量\",\"售卖方式\",\"重量（不含箱）\",\"包装方式\",\"生鲜储存温度\"]}]','shengxian');
/*!40000 ALTER TABLE `t_item_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_job_log`
--

DROP TABLE IF EXISTS `t_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_job_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `content` varchar(255) DEFAULT NULL,
  `dateline` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_job_log`
--

LOCK TABLES `t_job_log` WRITE;
/*!40000 ALTER TABLE `t_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL COMMENT '资源菜单的action',
  `status` varchar(45) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `page` varchar(200) DEFAULT NULL COMMENT '页面地址',
  `type` varchar(45) DEFAULT '0' COMMENT '类型',
  `perms` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` VALUES (1,'系统管理',10,'fa fa-cog','/system','0',NULL,NULL,'0','system'),(2,'APP管理',2,'fa fa-android','/app/list','0',1,NULL,'0','app'),(3,'字典管理',3,'fa fa-bars','/dictionaryCtg/list','0',1,NULL,'0',NULL),(4,'字典分类',4,'fa fa-bars','/dictionary/list','1',1,NULL,'0',NULL),(5,'菜单管理',5,'fa fa-bars','/menu/list','0',1,NULL,'0',NULL),(6,'角色管理',6,'fa fa-user-circle','/role/list','0',1,NULL,'0',NULL),(7,'管理员管理',7,'fa fa-id-card','/user/list','0',1,NULL,'0',NULL),(8,'用户管理',8,'fa fa-user','/unifiedUser/list','0',1,NULL,'0',NULL),(9,'调度任务',9,'fa fa-calendar-o','/scheduleJob/list','0',1,NULL,'0',NULL),(10,'调度日志管理',10,'fa fa-flag','/jobLog/list','0',1,NULL,'0',NULL),(11,'系统日志',11,'fa fa-flag','/systemLog/list','0',1,NULL,'0',NULL),(12,'运营管理',2,'fa fa-bars','/operate','0',0,NULL,'0',NULL),(13,'广告位管理',1,'fa fa-folder','/adsense/list','0',12,NULL,'0',NULL),(14,'广告管理',3,'fa fa-newspaper-o ','/ad/list','0',12,NULL,'0',NULL),(15,'栏目管理',4,'fa fa-th-large','/channel/list','0',12,NULL,'0',NULL),(16,'内容管理',4,'fa fa-file-text-o','/content/list','0',12,NULL,'0',NULL),(17,'新增',0,NULL,NULL,'0',2,NULL,'1','sys:app:add'),(18,'编辑',2,NULL,'','0',2,NULL,'1','sys:app:edit'),(19,'系统设置',0,'fa fa-cog','/config/config','0',1,NULL,'0',NULL),(20,'删除',3,NULL,NULL,'0',2,NULL,'1','sys:app:delete'),(21,'新增',0,NULL,'','0',5,NULL,'1','sys:menu:add'),(22,'编辑',2,NULL,NULL,'0',5,NULL,'1','sys:menu:edit'),(23,'删除',3,NULL,NULL,'0',5,NULL,'1','sys:menu:delete'),(24,'新增',1,NULL,NULL,'0',4,NULL,'1','sys:dictionaryCtg:add'),(25,'编辑',2,NULL,NULL,'0',4,NULL,'1','sys:dictionaryCtg:edit'),(26,'删除',3,NULL,NULL,'0',4,NULL,'1','sys:dictionaryCtg:delete'),(27,'新增',1,NULL,NULL,'0',3,NULL,'1','sys:dictionary:add'),(28,'编辑',2,NULL,NULL,'0',3,NULL,'1','sys:dictionary:edit'),(29,'删除',3,NULL,NULL,'0',3,NULL,'1','sys:dictionary:delete'),(30,'新增',1,NULL,NULL,'0',6,NULL,'1','sys:role:add'),(31,'编辑',2,NULL,NULL,'0',6,NULL,'1','sys:role:edit'),(32,'删除',3,NULL,NULL,'0',6,NULL,'1','sys:role:delete'),(33,'新增',1,NULL,NULL,'0',7,NULL,'1','sys:user:add'),(34,'编辑',2,NULL,NULL,'0',7,NULL,'1','sys:user:edit'),(35,'删除',3,NULL,NULL,'0',7,NULL,'1','sys:user:delete'),(36,'新增',1,NULL,NULL,'0',8,NULL,'1','sys:unifiedUser:add'),(37,'编辑',2,NULL,NULL,'0',8,NULL,'1','sys:unifiedUser:edit'),(38,'删除',3,NULL,NULL,'0',8,NULL,'1','sys:unifiedUser:delete'),(39,'新增',1,NULL,NULL,'0',9,NULL,'1','sys:scheduleJob:add'),(40,'编辑',2,NULL,NULL,'0',9,NULL,'1','sys:scheduleJob:edit'),(41,'删除',3,NULL,NULL,'0',9,NULL,'1','sys:scheduleJob:delete'),(42,'新增',1,NULL,NULL,'0',10,NULL,'1','sys:jobLog:add'),(43,'编辑',2,NULL,NULL,'0',10,NULL,'1','sys:jobLog:edit'),(44,'删除',3,NULL,NULL,'0',10,NULL,'1','sys:jobLog:delete'),(45,'新增',1,NULL,NULL,'0',11,NULL,'1','sys:systemLog:add'),(46,'编辑',2,NULL,NULL,'0',11,NULL,'1','sys:systemLog:edit'),(47,'删除',3,NULL,NULL,'0',11,NULL,'1','sys:systemLog:delete'),(48,'新增',1,NULL,NULL,'0',13,NULL,'1','sys:adsense:add'),(49,'编辑',2,NULL,NULL,'0',13,NULL,'1','sys:adsense:edit'),(50,'删除',3,NULL,NULL,'0',13,NULL,'1','sys:adsense:delete'),(51,'新增',1,NULL,NULL,'0',14,NULL,'1','sys:ad:add'),(52,'编辑',2,NULL,NULL,'0',14,NULL,'1','sys:ad:edit'),(53,'删除',3,NULL,NULL,'0',14,NULL,'1','sys:ad:delete'),(54,'新增',1,NULL,'','0',15,NULL,'1','sys:channel:add'),(55,'编辑',2,NULL,NULL,'0',15,NULL,'1','sys:channel:edit'),(56,'删除',3,NULL,NULL,'0',15,NULL,'1','sys:channel:delete'),(57,'新增',1,NULL,NULL,'0',16,NULL,'1','sys:content:add'),(58,'编辑',2,NULL,NULL,'0',16,NULL,'1','sys:content:edit'),(59,'删除',3,NULL,NULL,'0',16,NULL,'1','sys:content:delete'),(60,'支付记录',12,'fa fa-ticket','/paybill/list','0',1,NULL,'0',NULL),(61,'添加',0,NULL,NULL,'0',60,NULL,'1','sys: paybill:add'),(62,'编辑',2,NULL,NULL,'0',60,NULL,'1','sys: paybill:edit'),(63,'删除',3,NULL,NULL,'0',60,NULL,'1','sys: paybill:delete'),(64,'交易流水',13,'fa fa-window-maximize','/paylog/list','0',1,NULL,'0',NULL),(65,'删除',1,NULL,NULL,'0',64,NULL,'1','sys:paylog:delete'),(66,'评论管理',5,'fa fa-comments','/comment/list','0',12,NULL,'0',NULL),(67,'删除',3,NULL,NULL,'0',66,NULL,'1','sys:comment:delete'),(68,'意见反馈',6,'fa fa-question-circle','/feedback/list','0',12,NULL,'0',NULL),(69,'删除',3,NULL,NULL,'0',68,NULL,'1','sys:feedback:delete'),(70,'常用管理',1,'fa fa-bars','/manager','0',NULL,NULL,'0',NULL),(71,'产品分类',0,'fa fa-bars','/productCat/list','0',70,NULL,'0',NULL),(72,'产品管理',2,'fa fa-shopping-bag','/product/list','0',70,NULL,'0',NULL),(73,'新增',0,NULL,NULL,'0',71,NULL,'1','sys:productCat:add'),(74,'编辑',1,NULL,NULL,'0',71,NULL,'1','sys:productCat:edit'),(75,'删除',2,NULL,NULL,'0',71,NULL,'1','sys:productCat:delete'),(76,'新增',0,NULL,NULL,'0',72,NULL,'1','sys:product:add'),(77,'编辑',1,NULL,NULL,'0',72,NULL,'1','sys:product:edit'),(78,'删除',2,NULL,NULL,'0',72,NULL,'1','sys:product:delete'),(79,'参数模版',15,'fa fa-cubes','/itemParam/list','0',1,NULL,'0',NULL),(80,'新增',0,NULL,NULL,'0',79,NULL,'1','sys:itemParam:add'),(81,'编辑',2,NULL,NULL,'0',79,NULL,'1','sys:itemParam:edit'),(82,'删除',3,NULL,NULL,'0',79,'','1','sys:itemParam:delete'),(83,'消息管理',7,'fa fa-bullhorn','/message/list','0',12,NULL,'0',NULL),(84,'新增',1,NULL,NULL,'0',83,NULL,'1','sys:message:add'),(85,'编辑',2,NULL,NULL,'0',83,NULL,'1','sys:message:edit'),(86,'删除',3,NULL,NULL,'0',83,NULL,'1','sys:message:delete'),(87,'订单管理',3,'fa fa-align-justify','/order/list','0',70,NULL,'0',NULL),(88,'删除',3,NULL,NULL,'0',87,NULL,'1','sys:order:delete'),(89,'APP导航',10,'fa fa-bars','/nav/list','0',12,NULL,'0','list'),(90,'新增',1,NULL,NULL,'0',89,NULL,'1','sys:nav:add'),(91,'编辑',NULL,NULL,NULL,'0',89,NULL,'1','sys:nav:edit'),(92,'删除',NULL,NULL,NULL,'0',89,NULL,'1','sys:nav:delete'),(93,'通知管理',8,'fa fa-bullhorn','/notice/list','0',12,NULL,'0',''),(94,'新增',1,NULL,NULL,'0',93,NULL,'1','sys:notice:add'),(95,'编辑',2,NULL,NULL,'0',93,NULL,'1','sys:notice:edit'),(96,'删除',3,NULL,NULL,'0',93,NULL,'1','sys:notice:delete'),(97,'授权',4,NULL,NULL,'0',6,NULL,'1','sys:role:perm'),(98,'订单详情',1,NULL,'/order/detail','0',87,NULL,'1','sys:order:detail'),(99,'支付方式设置',12,'fa fa-credit-card','/payments/list','0',1,NULL,'0',''),(100,'新增',1,NULL,'add','0',99,NULL,'1','sys:payments:add'),(101,'编辑',2,NULL,'edit','0',99,NULL,'1','sys:payments:edit'),(102,'删除',3,NULL,'delete','0',99,NULL,'1','sys:payments:delete'),(103,'订单设置',4,'fa fa-cog','/order/setting','0',70,NULL,'0',NULL),(104,'物流发货',2,NULL,NULL,'0',87,NULL,'1','sys:order:shipping'),(105,'备注订单',4,NULL,NULL,'0',87,NULL,'1','sys:order:remark'),(106,'取消订单',5,NULL,NULL,'0',87,NULL,'1','sys:order:cancel'),(107,'修改支付状态',6,NULL,NULL,'0',87,NULL,'1','sys:order:pay'),(108,'修改收货地址',6,NULL,NULL,'0',87,NULL,'1','sys:order:address'),(109,'修改收货状态',7,NULL,NULL,'0',87,NULL,'1','sys:order:shipping_status'),(110,'聊天',4,NULL,'/user/chat','0',7,NULL,'1','sys:user:chat');
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paybill`
--

DROP TABLE IF EXISTS `t_paybill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_paybill` (
  `id` varchar(45) COLLATE utf8_bin NOT NULL,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `order_no` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `subject` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `body` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `pay_type` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tran_amount` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `payeer_id` int(11) DEFAULT NULL,
  `payeer_username` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paybill`
--

LOCK TABLES `t_paybill` WRITE;
/*!40000 ALTER TABLE `t_paybill` DISABLE KEYS */;
INSERT INTO `t_paybill` VALUES ('20191018154209107','ORDER','2019101815420947','用户订单_20191018154209832','用户订单','wx','2019-10-18 15:42:09',NULL,0,0,'0.01',40,'15881169173'),('20191018154245171','ORDER','20191018154245351','用户订单_20191018154245812','用户订单','wx','2019-10-18 15:42:45',NULL,0,0,'0.01',40,'15881169173'),('20191018154630844','ORDER','2019101815463093','用户订单_20191018154630239','用户订单','wx','2019-10-18 15:46:30',NULL,0,0,'0.01',40,'15881169173'),('20191018155842155','ORDER','20191018155842496','用户订单_20191018000001','用户订单',NULL,'2019-10-18 15:58:42',NULL,0,0,'0.01',40,'15881169173'),('20191018155854745','ORDER','20191018155854875','用户订单_20191018000001','用户订单',NULL,'2019-10-18 15:58:54',NULL,0,0,'0.01',40,'15881169173'),('20191018155916182','ORDER','20191018155916919','用户订单_20191018000001','用户订单',NULL,'2019-10-18 15:59:16',NULL,0,0,'0.01',40,'15881169173'),('20191018155951744','ORDER','20191018155951828','用户订单_20191018000003','用户订单',NULL,'2019-10-18 15:59:51',NULL,0,0,'0.02',40,'15881169173'),('20191018173750430','ORDER','20191018000001','用户订单_20191018000001','用户订单','wx','2019-10-18 17:37:50',NULL,0,0,'0.01',40,'15881169173'),('20191018173816702','ORDER','20191018000001','用户订单_20191018000001','用户订单','wx','2019-10-18 17:38:16',NULL,0,0,'0.01',40,'15881169173'),('20191018173929253','ORDER','20191018000001','用户订单_20191018000001','用户订单','wx','2019-10-18 17:39:29',NULL,0,0,'0.01',40,'15881169173'),('20191018174118792','ORDER','20191018000002','用户订单_20191018000002','用户订单','wx','2019-10-18 17:41:18',NULL,0,0,'0.01',40,'15881169173'),('20191018174213210','ORDER','20191018000002','用户订单_20191018000002','用户订单','wx','2019-10-18 17:42:13',NULL,0,0,'0.01',40,'15881169173'),('20191018174450801','ORDER','201910180653','用户订单_201910180653','用户订单','wx','2019-10-18 17:44:50',NULL,0,0,'0.01',40,'15881169173'),('20191018174909523','ORDER','20191018000001','用户订单_20191018000001','用户订单','wx','2019-10-18 17:49:09',NULL,0,0,'0.01',40,'15881169173'),('20191018175018903','ORDER','20191018000001','用户订单_20191018000001','用户订单','wx','2019-10-18 17:50:18',NULL,0,0,'0.01',40,'15881169173'),('20191018175409174','ORDER','201910180003','用户订单_201910180003','用户订单','wx','2019-10-18 17:54:09',NULL,0,0,'0.01',40,'15881169173'),('20191018175734310','ORDER','201910180006','用户订单_201910180006','用户订单','wx','2019-10-18 17:57:34',NULL,0,0,'0.01',40,'15881169173'),('20191018180006883','ORDER','201910180006','用户订单_201910180006','用户订单','wx','2019-10-18 18:00:06',NULL,0,0,'0.01',40,'15881169173'),('20191018180135303','ORDER','201910180063','用户订单_201910180063','用户订单','wx','2019-10-18 18:01:35',NULL,0,0,'0.01',40,'15881169173'),('20191018180808113','ORDER','201910180025','用户订单_201910180025','用户订单','wx','2019-10-18 18:08:08',NULL,0,0,'0.01',40,'15881169173'),('2019101818094242','ORDER','201910180025','用户订单_201910180025','用户订单','wx','2019-10-18 18:09:42',NULL,0,0,'0.01',40,'15881169173'),('20191018182609333','ORDER','20191018000001','用户订单_20191018000001','用户订单','alipay','2019-10-18 18:26:09',NULL,0,0,'0.01',40,'15881169173'),('2019101818264746','ORDER','20191018182647762','用户订单_20191018182647161','用户订单','wx','2019-10-18 18:26:47',NULL,0,0,'0.01',40,'15881169173'),('20191019092914674','ORDER','20191019092914978','用户订单_201910190929149','用户订单','wx','2019-10-19 09:29:14',NULL,0,0,'0.01',40,'15881169173'),('20191019092934783','ORDER','20191019092934825','用户订单_20191019092934338','用户订单','wx','2019-10-19 09:29:34',NULL,0,0,'0.01',40,'15881169173'),('20191019093033142','ORDER','20191018000001','用户订单_20191018000001','用户订单','wx','2019-10-19 09:30:33',NULL,0,0,'0.01',40,'15881169173'),('20191019093056418','ORDER','20191018000001','用户订单_20191018000001','用户订单','alipay','2019-10-19 09:30:56',NULL,0,0,'0.01',40,'15881169173'),('20191019093108618','ORDER','2019101909310812','用户订单_20191019093108435','用户订单','wx','2019-10-19 09:31:08',NULL,0,0,'0.01',40,'15881169173'),('20191019093114771','ORDER','20191019093114639','用户订单_2019101909311479','用户订单','wx','2019-10-19 09:31:14',NULL,0,0,'0.01',40,'15881169173'),('2019101909312186','ORDER','20191018000001','用户订单_20191018000001','用户订单','wx','2019-10-19 09:31:21','2019-10-19 18:05:43',1,1,'0.01',40,'15881169173'),('20191019154835805','ORDER','20191018123456','用户订单_20191018123456','用户订单','wx','2019-10-19 15:48:35','2019-10-19 16:22:53',1,1,'0.01',40,'15881169173'),('20191019155046723','ORDER','20191018123456','用户订单_20191018123456','用户订单','wx','2019-10-19 15:50:46',NULL,0,0,'0.01',40,'15881169173'),('20191019155222319','ORDER','2019101812345','用户订单_2019101812345','用户订单','wx','2019-10-19 15:52:22',NULL,0,0,'0.01',40,'15881169173'),('201910191612554','ORDER','201910182015','用户订单_201910182015','用户订单','alipay','2019-10-19 16:12:55',NULL,0,0,'0.01',40,'15881169173'),('20191019162406583','ORDER','201910180023','用户订单_201910180023','用户订单','alipay','2019-10-19 16:24:06',NULL,0,0,'0.01',40,'15881169173'),('20191019165811419','ORDER','20191019165811618','用户订单_20191019165811139','用户订单','wx','2019-10-19 16:58:11',NULL,0,0,'0.01',40,'15881169173'),('2019101917032718','ORDER','20191018523','用户订单_20191018523','用户订单','alipay','2019-10-19 17:03:27',NULL,0,0,'0.01',40,'15881169173'),('20191019171426974','ORDER','2019101800326','用户订单_2019101800326','用户订单','wx','2019-10-19 17:14:26',NULL,0,0,'0.01',40,'15881169173'),('20191019171440958','ORDER','2019101800324','用户订单_2019101800324','用户订单','alipay','2019-10-19 17:14:40',NULL,0,0,'0.01',40,'15881169173'),('2019101917332819','ORDER','20191018000365','用户订单_20191018000365','用户订单','alipay','2019-10-19 17:33:28','2019-10-19 17:33:39',1,1,'0.01',40,'15881169173'),('20191022161452160','ORDER','1','用户订单_1','用户订单','alipay','2019-10-22 16:14:52',NULL,0,0,'0.01',40,'15881169173'),('20191022161743612','ORDER','1','用户订单_1','用户订单','alipay111','2019-10-22 16:17:43',NULL,0,0,'0.01',40,'15881169173'),('20191022162047511','ORDER','1','用户订单_1','用户订单','alipay','2019-10-22 16:20:47',NULL,0,0,'0.01',40,'15881169173'),('20191115161535410','ORDER','20191115160849468','用户订单_20191115160849468','用户订单','alipay','2019-11-15 16:15:35',NULL,0,0,'134.0',40,'15881169173'),('20191115164455785','ORDER','20191115164449590','用户订单_20191115164449590','用户订单','wechat','2019-11-15 16:44:55',NULL,0,0,'792.5',40,'15881169173'),('20191115164524867','ORDER','20191115164449590','用户订单_20191115164449590','用户订单','alipay','2019-11-15 16:45:24',NULL,0,0,'792.5',40,'15881169173'),('20191115164638658','ORDER','20191115164449590','用户订单_20191115164449590','用户订单','wechat','2019-11-15 16:46:38',NULL,0,0,'792.5',40,'15881169173'),('20191115165635800','ORDER','20191115165633380','用户订单_20191115165633380','用户订单','wechat','2019-11-15 16:56:35',NULL,0,0,'255.0',40,'15881169173'),('20191115165714410','ORDER','20191115160849468','用户订单_20191115160849468','用户订单','wechat','2019-11-15 16:57:14',NULL,0,0,'134.0',40,'15881169173'),('20191115165956113','ORDER','20191115160849468','用户订单_20191115160849468','用户订单','alipay','2019-11-15 16:59:56',NULL,0,0,'134.0',40,'15881169173'),('20191115170034919','ORDER','20191115160849468','用户订单_20191115160849468','用户订单','wechat','2019-11-15 17:00:34',NULL,0,0,'134.0',40,'15881169173'),('20191115170145872','ORDER','2019111517014288','用户订单_2019111517014288','用户订单','wechat','2019-11-15 17:01:45',NULL,0,0,'255.0',40,'15881169173'),('20191115170241607','ORDER','20191115170234518','用户订单_20191115170234518','用户订单','wechat','2019-11-15 17:02:41',NULL,0,0,'238.0',40,'15881169173'),('20191115172546531','ORDER','20191115172544818','用户订单_20191115172544818','用户订单','wechat','2019-11-15 17:25:46',NULL,0,0,'255.0',40,'15881169173'),('20191115172607520','ORDER','20191115172544818','用户订单_20191115172544818','用户订单','wechat','2019-11-15 17:26:07',NULL,0,0,'255.0',40,'15881169173'),('20191115172654750','ORDER','20191115172544818','用户订单_20191115172544818','用户订单','wechat','2019-11-15 17:26:54',NULL,0,0,'255.0',40,'15881169173'),('20191115172815426','ORDER','20191115172812474','用户订单_20191115172812474','用户订单','wechat','2019-11-15 17:28:15',NULL,0,0,'245.0',40,'15881169173'),('2019111517293659','ORDER','20191115172812474','用户订单_20191115172812474','用户订单','wechat','2019-11-15 17:29:36',NULL,0,0,'245.0',40,'15881169173'),('20191115173338351','ORDER','20191115173336300','用户订单_20191115173336300','用户订单','wechat','2019-11-15 17:33:38',NULL,0,0,'238.0',40,'15881169173'),('2019111517423699','ORDER','20191115174231926','用户订单_20191115174231926','用户订单','wechat','2019-11-15 17:42:36',NULL,0,0,'787.5',40,'15881169173'),('20191115174430243','ORDER','20191115174231926','用户订单_20191115174231926','用户订单','wechat','2019-11-15 17:44:30',NULL,0,0,'787.5',40,'15881169173'),('20191115174446960','ORDER','20191115174400710','用户订单_20191115174400710','用户订单','wechat','2019-11-15 17:44:46',NULL,0,0,'1104.0',40,'15881169173'),('20191115174456147','ORDER','20191115174231926','用户订单_20191115174231926','用户订单','wechat','2019-11-15 17:44:56',NULL,0,0,'787.5',40,'15881169173'),('20191115174929976','ORDER','20191115174927934','用户订单_20191115174927934','用户订单','wechat','2019-11-15 17:49:29',NULL,0,0,'250.0',40,'15881169173'),('20191115175726323','ORDER','20191115175720273','用户订单_20191115175720273','用户订单','alipay','2019-11-15 17:57:26',NULL,0,0,'931.0',40,'15881169173'),('20191115175745658','ORDER','20191115175744597','用户订单_20191115175744597','用户订单','alipay','2019-11-15 17:57:45',NULL,0,0,'248.0',40,'15881169173'),('20191115180520359','ORDER','20191115180518124','用户订单_20191115180518124','用户订单','alipay','2019-11-15 18:05:20',NULL,0,0,'245.0',40,'15881169173'),('20191115180743134','ORDER','20191115180742213','用户订单_20191115180742213','用户订单','alipay','2019-11-15 18:07:43',NULL,0,0,'245.0',40,'15881169173'),('20191115182407586','ORDER','20191115182405999','用户订单_20191115182405999','用户订单','alipay','2019-11-15 18:24:07',NULL,0,0,'255.0',40,'15881169173'),('20191115182555451','ORDER','20191115182553807','用户订单_20191115182553807','用户订单','alipay','2019-11-15 18:25:55',NULL,0,0,'255.0',40,'15881169173'),('20191115182620397','ORDER','20191115182553807','用户订单_20191115182553807','用户订单','alipay','2019-11-15 18:26:20',NULL,0,0,'255.0',40,'15881169173'),('20191115182802831','ORDER','20191115182800851','用户订单_20191115182800851','用户订单','alipay','2019-11-15 18:28:02',NULL,0,0,'255.0',40,'15881169173'),('20191115183053710','ORDER','20191115183051615','用户订单_20191115183051615','用户订单','wechat','2019-11-15 18:30:53',NULL,0,0,'245.0',40,'15881169173'),('20191115183123477','ORDER','20191115183051615','用户订单_20191115183051615','用户订单','alipay','2019-11-15 18:31:23',NULL,0,0,'245.0',40,'15881169173'),('20191115184047286','ORDER','20191115184045542','用户订单_20191115184045542','用户订单','wechat','2019-11-15 18:40:47',NULL,0,0,'245.0',40,'15881169173'),('20191115184109307','ORDER','20191115184045542','用户订单_20191115184045542','用户订单','alipay','2019-11-15 18:41:09',NULL,0,0,'245.0',40,'15881169173'),('2019111518422017','ORDER','20191115184218702','用户订单_20191115184218702','用户订单','alipay','2019-11-15 18:42:20',NULL,0,0,'245.0',40,'15881169173'),('20191115185642577','ORDER','2019111518562129','用户订单_2019111518562129','用户订单','wechat','2019-11-15 18:56:42',NULL,0,0,'1104.0',40,'15881169173'),('20191115185921743','ORDER','20191115185919977','用户订单_20191115185919977','用户订单','wechat','2019-11-15 18:59:21',NULL,0,0,'1104.0',40,'15881169173'),('20200209123917628','ORDER','2020020911520911','用户订单_2020020911520911','用户订单','alipay','2020-02-09 12:39:17',NULL,0,0,'1.00',3,'test'),('20200209123949862','ORDER','2020020911520911','用户订单_2020020911520911','用户订单','alipay','2020-02-09 12:39:49',NULL,0,0,'1.00',3,'test'),('2020020912403198','ORDER','2020020911520911','用户订单_2020020911520911','用户订单','alipay','2020-02-09 12:40:31',NULL,0,0,'1.00',3,'test'),('20200209124533268','ORDER','2020020911520911','用户订单_2020020911520911','用户订单','alipay','2020-02-09 12:45:33',NULL,0,0,'1.00',3,'test'),('20200209124659168','ORDER','2020020911520911','用户订单_2020020911520911','用户订单','alipay','2020-02-09 12:46:59',NULL,0,0,'1.00',3,'test'),('20200209124708653','ORDER','20200209113414916','用户订单_20200209113414916','用户订单','alipay','2020-02-09 12:47:08',NULL,0,0,'1.00',3,'test'),('20200209124730352','ORDER','20200209113414916','用户订单_20200209113414916','用户订单','alipay','2020-02-09 12:47:30',NULL,0,0,'1.00',3,'test'),('20200209125339949','ORDER','20200209113414916','用户订单_20200209113414916','用户订单','alipay','2020-02-09 12:53:39',NULL,0,0,'1.00',3,'test'),('20200209125558867','ORDER','2020020911520911','用户订单_2020020911520911','用户订单','alipay','2020-02-09 12:55:58',NULL,0,0,'1.00',3,'test'),('20200209125616690','ORDER','20200209112430412','用户订单_20200209112430412','用户订单','alipay','2020-02-09 12:56:16',NULL,0,0,'2.00',3,'test');
/*!40000 ALTER TABLE `t_paybill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paylog`
--

DROP TABLE IF EXISTS `t_paylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_paylog` (
  `id` varchar(45) COLLATE utf8_bin NOT NULL,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '0未处理，1处理',
  `dateline` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `trade_no` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '交易号',
  `payeer_id` int(11) DEFAULT NULL COMMENT '交易账户',
  `payeer_username` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `trade_status` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '交易状态',
  `total_fee` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paylog`
--

LOCK TABLES `t_paylog` WRITE;
/*!40000 ALTER TABLE `t_paylog` DISABLE KEYS */;
INSERT INTO `t_paylog` VALUES ('2019101800324',NULL,'1','2019-10-19 17:14:53','2019101922001483390572668357',NULL,NULL,'TRADE_SUCCESS',NULL),('20191018154209107','ORDER','0','2019-10-18 15:42:12',NULL,NULL,NULL,NULL,NULL),('20191018154245171','ORDER','0','2019-10-18 15:42:48',NULL,NULL,NULL,NULL,NULL),('20191018154630844','ORDER','0','2019-10-18 15:46:33',NULL,NULL,NULL,NULL,NULL),('20191018155842155','ORDER','0','2019-10-18 15:58:44',NULL,NULL,NULL,NULL,NULL),('20191018155854745','ORDER','0','2019-10-18 15:58:57',NULL,NULL,NULL,NULL,NULL),('20191018155916182','ORDER','0','2019-10-18 15:59:19',NULL,NULL,NULL,NULL,NULL),('20191018155951744','ORDER','0','2019-10-18 15:59:56',NULL,NULL,NULL,NULL,NULL),('20191018173750430','ORDER','0','2019-10-18 17:37:53',NULL,NULL,NULL,NULL,NULL),('20191018173816702','ORDER','0','2019-10-18 17:38:19',NULL,NULL,NULL,NULL,NULL),('20191018173929253','ORDER','0','2019-10-18 17:39:32',NULL,NULL,NULL,NULL,NULL),('20191018174118792','ORDER','0','2019-10-18 17:41:21',NULL,NULL,NULL,NULL,NULL),('20191018174213210','ORDER','0','2019-10-18 17:42:15',NULL,NULL,NULL,NULL,NULL),('20191018174450801','ORDER','0','2019-10-18 17:44:53',NULL,NULL,NULL,NULL,NULL),('20191018174909523','ORDER','0','2019-10-18 17:49:14',NULL,NULL,NULL,NULL,NULL),('20191018175018903','ORDER','0','2019-10-18 17:50:21',NULL,NULL,NULL,NULL,NULL),('20191018175409174','ORDER','0','2019-10-18 17:54:12',NULL,NULL,NULL,NULL,NULL),('20191018175734310','ORDER','0','2019-10-18 17:57:37',NULL,NULL,NULL,NULL,NULL),('20191018180006883','ORDER','0','2019-10-18 18:00:10',NULL,NULL,NULL,NULL,NULL),('20191018180135303','ORDER','0','2019-10-18 18:01:38',NULL,NULL,NULL,NULL,NULL),('20191018180808113','ORDER','0','2019-10-18 18:08:10',NULL,NULL,NULL,NULL,NULL),('2019101818094242','ORDER','0','2019-10-18 18:09:45',NULL,NULL,NULL,NULL,NULL),('20191018182609333','ORDER','0','2019-10-18 18:26:09',NULL,NULL,NULL,NULL,NULL),('2019101818264746','ORDER','0','2019-10-18 18:26:47',NULL,NULL,NULL,NULL,NULL),('201910182015',NULL,'1','2019-10-19 17:39:22','2019101922001483390569843079',NULL,NULL,'TRADE_SUCCESS',NULL),('20191018523',NULL,'1','2019-10-19 17:17:41','2019101922001483390570632938',NULL,NULL,'TRADE_SUCCESS',NULL),('20191019092914674','ORDER','0','2019-10-19 09:29:14',NULL,NULL,NULL,NULL,NULL),('20191019092934783','ORDER','0','2019-10-19 09:29:34',NULL,NULL,NULL,NULL,NULL),('20191019093033142','ORDER','0','2019-10-19 09:30:33',NULL,NULL,NULL,NULL,NULL),('20191019093056418','ORDER','0','2019-10-19 09:30:56',NULL,NULL,NULL,NULL,NULL),('20191019093108618','ORDER','0','2019-10-19 09:31:08',NULL,NULL,NULL,NULL,NULL),('20191019093114771','ORDER','0','2019-10-19 09:31:14',NULL,NULL,NULL,NULL,NULL),('2019101909312186','ORDER','1','2019-10-19 09:31:21','4200000433201910194923969451',NULL,NULL,'SUCCESS',NULL),('20191019154835805','ORDER','1','2019-10-19 15:48:35','4200000439201910190614372888',NULL,NULL,'SUCCESS',NULL),('20191019155046723','ORDER','0','2019-10-19 15:50:46',NULL,NULL,NULL,NULL,NULL),('20191019155222319','ORDER','0','2019-10-19 15:52:33',NULL,NULL,NULL,NULL,NULL),('201910191612554','ORDER','0','2019-10-19 16:12:55',NULL,NULL,NULL,NULL,NULL),('20191019162406583','ORDER','0','2019-10-19 16:24:08',NULL,NULL,NULL,NULL,NULL),('20191019165811419','ORDER','0','2019-10-19 16:58:14',NULL,NULL,NULL,NULL,NULL),('2019101917032718','ORDER','0','2019-10-19 17:03:27',NULL,NULL,NULL,NULL,NULL),('20191019171426974','ORDER','0','2019-10-19 17:14:26',NULL,NULL,NULL,NULL,NULL),('20191019171440958','ORDER','0','2019-10-19 17:14:40',NULL,NULL,NULL,NULL,NULL),('2019101917332819','ORDER','1','2019-10-19 17:33:28','2019101922001483390573095714',NULL,NULL,'TRADE_SUCCESS',NULL),('20191022161452160','ORDER','0','2019-10-22 16:14:55',NULL,NULL,NULL,NULL,NULL),('20191022161743612','ORDER','0','2019-10-22 16:17:45',NULL,NULL,NULL,NULL,NULL),('20191022162047511','ORDER','0','2019-10-22 16:20:49',NULL,NULL,NULL,NULL,NULL),('20191115161535410','ORDER','0','2019-11-15 16:15:36',NULL,NULL,NULL,NULL,NULL),('20191115164455785','ORDER','0','2019-11-15 16:44:55',NULL,NULL,NULL,NULL,NULL),('20191115164524867','ORDER','0','2019-11-15 16:45:24',NULL,NULL,NULL,NULL,NULL),('20191115164638658','ORDER','0','2019-11-15 16:46:39',NULL,NULL,NULL,NULL,NULL),('20191115165635800','ORDER','0','2019-11-15 16:56:35',NULL,NULL,NULL,NULL,NULL),('20191115165714410','ORDER','0','2019-11-15 16:57:14',NULL,NULL,NULL,NULL,NULL),('20191115165956113','ORDER','0','2019-11-15 16:59:56',NULL,NULL,NULL,NULL,NULL),('20191115170034919','ORDER','0','2019-11-15 17:00:34',NULL,NULL,NULL,NULL,NULL),('20191115170145872','ORDER','0','2019-11-15 17:01:45',NULL,NULL,NULL,NULL,NULL),('20191115170241607','ORDER','0','2019-11-15 17:02:41',NULL,NULL,NULL,NULL,NULL),('20191115172546531','ORDER','0','2019-11-15 17:25:46',NULL,NULL,NULL,NULL,NULL),('20191115172607520','ORDER','0','2019-11-15 17:26:07',NULL,NULL,NULL,NULL,NULL),('20191115172654750','ORDER','0','2019-11-15 17:26:54',NULL,NULL,NULL,NULL,NULL),('20191115172815426','ORDER','0','2019-11-15 17:28:16',NULL,NULL,NULL,NULL,NULL),('2019111517293659','ORDER','0','2019-11-15 17:29:36',NULL,NULL,NULL,NULL,NULL),('20191115173338351','ORDER','0','2019-11-15 17:33:38',NULL,NULL,NULL,NULL,NULL),('2019111517423699','ORDER','0','2019-11-15 17:42:36',NULL,NULL,NULL,NULL,NULL),('20191115174430243','ORDER','0','2019-11-15 17:44:30',NULL,NULL,NULL,NULL,NULL),('20191115174446960','ORDER','0','2019-11-15 17:44:46',NULL,NULL,NULL,NULL,NULL),('20191115174456147','ORDER','0','2019-11-15 17:44:56',NULL,NULL,NULL,NULL,NULL),('20191115174929976','ORDER','0','2019-11-15 17:49:29',NULL,NULL,NULL,NULL,NULL),('20191115175726323','ORDER','0','2019-11-15 17:57:26',NULL,NULL,NULL,NULL,NULL),('20191115175745658','ORDER','0','2019-11-15 17:57:45',NULL,NULL,NULL,NULL,NULL),('20191115180520359','ORDER','0','2019-11-15 18:05:20',NULL,NULL,NULL,NULL,NULL),('20191115180743134','ORDER','0','2019-11-15 18:07:43',NULL,NULL,NULL,NULL,NULL),('20191115182407586','ORDER','0','2019-11-15 18:24:07',NULL,NULL,NULL,NULL,NULL),('20191115182555451','ORDER','0','2019-11-15 18:25:55',NULL,NULL,NULL,NULL,NULL),('20191115182620397','ORDER','0','2019-11-15 18:26:20',NULL,NULL,NULL,NULL,NULL),('20191115182802831','ORDER','0','2019-11-15 18:28:02',NULL,NULL,NULL,NULL,NULL),('20191115183053710','ORDER','0','2019-11-15 18:30:53',NULL,NULL,NULL,NULL,NULL),('20191115183123477','ORDER','0','2019-11-15 18:31:23',NULL,NULL,NULL,NULL,NULL),('20191115184047286','ORDER','0','2019-11-15 18:40:47',NULL,NULL,NULL,NULL,NULL),('20191115184109307','ORDER','0','2019-11-15 18:41:09',NULL,NULL,NULL,NULL,NULL),('2019111518422017','ORDER','0','2019-11-15 18:42:20',NULL,NULL,NULL,NULL,NULL),('20191115185642577','ORDER','0','2019-11-15 18:56:42',NULL,NULL,NULL,NULL,NULL),('20191115185921743','ORDER','0','2019-11-15 18:59:21',NULL,NULL,NULL,NULL,NULL),('20200209123917628','ORDER','0','2020-02-09 12:39:17',NULL,NULL,NULL,NULL,NULL),('20200209123949862','ORDER','0','2020-02-09 12:39:49',NULL,NULL,NULL,NULL,NULL),('2020020912403198','ORDER','0','2020-02-09 12:40:31',NULL,NULL,NULL,NULL,NULL),('20200209124533268','ORDER','0','2020-02-09 12:45:33',NULL,NULL,NULL,NULL,NULL),('20200209124659168','ORDER','0','2020-02-09 12:46:59',NULL,NULL,NULL,NULL,NULL),('20200209124708653','ORDER','0','2020-02-09 12:47:08',NULL,NULL,NULL,NULL,NULL),('20200209124730352','ORDER','0','2020-02-09 12:47:30',NULL,NULL,NULL,NULL,NULL),('20200209125339949','ORDER','0','2020-02-09 12:53:39',NULL,NULL,NULL,NULL,NULL),('20200209125558867','ORDER','0','2020-02-09 12:55:58',NULL,NULL,NULL,NULL,NULL),('20200209125616690','ORDER','0','2020-02-09 12:56:16',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_paylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_payments`
--

DROP TABLE IF EXISTS `t_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `sort` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `content` mediumtext,
  `type` varchar(45) DEFAULT NULL,
  `platform` varchar(45) DEFAULT NULL COMMENT '应用平台',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_payments`
--

LOCK TABLES `t_payments` WRITE;
/*!40000 ALTER TABLE `t_payments` DISABLE KEYS */;
INSERT INTO `t_payments` VALUES (1,'支付宝','0','0','支付网站支付','',NULL,'alipay','pc'),(2,'支付宝','1','0','支付宝app支付','',NULL,'alipay','app'),(3,'微信','2','0','微信app支付','',NULL,'wechat','app'),(4,'微信','3','0','微信公众号支付','',NULL,'wx','wx'),(5,'余额支付','4','0','余额支付','',NULL,'yue','all');
/*!40000 ALTER TABLE `t_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(200) DEFAULT NULL,
  `allPerms` int(11) DEFAULT NULL,
  `sort` int(10) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (3,'管理员','',1,0),(10,'test','',0,0);
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_menu`
--

DROP TABLE IF EXISTS `t_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_menu`
--

LOCK TABLES `t_role_menu` WRITE;
/*!40000 ALTER TABLE `t_role_menu` DISABLE KEYS */;
INSERT INTO `t_role_menu` VALUES (34,10,12),(35,10,13);
/*!40000 ALTER TABLE `t_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_perms`
--

DROP TABLE IF EXISTS `t_role_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role_perms` (
  `role_id` int(11) NOT NULL,
  `perm` varchar(200) DEFAULT NULL COMMENT '角色名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_perms`
--

LOCK TABLES `t_role_perms` WRITE;
/*!40000 ALTER TABLE `t_role_perms` DISABLE KEYS */;
INSERT INTO `t_role_perms` VALUES (5,'/index.do'),(5,'/top.do'),(5,'/index.do'),(5,'/top.do'),(3,'/index.do'),(3,'/top.do');
/*!40000 ALTER TABLE `t_role_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_user`
--

DROP TABLE IF EXISTS `t_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `role_id` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_user`
--

LOCK TABLES `t_role_user` WRITE;
/*!40000 ALTER TABLE `t_role_user` DISABLE KEYS */;
INSERT INTO `t_role_user` VALUES (29,10,4),(30,29,4),(31,1,10),(32,1,3),(35,3,3);
/*!40000 ALTER TABLE `t_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_schedule_job`
--

DROP TABLE IF EXISTS `t_schedule_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_schedule_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL COMMENT '名称',
  `cronExpression` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dateline` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_schedule_job`
--

LOCK TABLES `t_schedule_job` WRITE;
/*!40000 ALTER TABLE `t_schedule_job` DISABLE KEYS */;
INSERT INTO `t_schedule_job` VALUES (3,'RegJob','com.shuogesha.scheduler.job.RegJob','0 0 3 * * ?','shangmen提醒  //////  0 0 1 * * ?',NULL,NULL),(4,'OrderCancelJob','com.shuogesha.scheduler.job.OrderCancelJob','0 10 * * * ?','支付超时的订单取消','0','2020-02-12 15:06:19');
/*!40000 ALTER TABLE `t_schedule_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_site`
--

DROP TABLE IF EXISTS `t_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(500) DEFAULT NULL COMMENT '站点描述',
  `termId` int(11) DEFAULT '0',
  `host` varchar(200) DEFAULT NULL,
  `tongjiCode` varchar(200) DEFAULT NULL,
  `tplSolution` varchar(200) DEFAULT NULL,
  `dxHost` varchar(200) DEFAULT NULL,
  `dxAppkey` varchar(200) DEFAULT NULL,
  `dxSecret` varchar(200) DEFAULT NULL,
  `dxSign` varchar(200) DEFAULT NULL,
  `dxTpl` varchar(200) DEFAULT NULL,
  `email_port` varchar(200) DEFAULT NULL,
  `email_username` varchar(200) DEFAULT NULL,
  `email_host` varchar(200) DEFAULT NULL,
  `email_password` varchar(200) DEFAULT NULL,
  `email_encoding` varchar(200) DEFAULT NULL,
  `message_code_subject` varchar(200) DEFAULT NULL,
  `message_code_text` varchar(200) DEFAULT NULL,
  `countClearTime` varchar(255) DEFAULT NULL,
  `countCopyTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_site`
--

LOCK TABLES `t_site` WRITE;
/*!40000 ALTER TABLE `t_site` DISABLE KEYS */;
INSERT INTO `t_site` VALUES (1,NULL,NULL,NULL,'后台管理系统',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-02-27 18:38:16','2017-11-15 10:18:37');
/*!40000 ALTER TABLE `t_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_system_log`
--

DROP TABLE IF EXISTS `t_system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dateline` datetime DEFAULT NULL,
  `content` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `method` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `param` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36949 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_system_log`
--

LOCK TABLES `t_system_log` WRITE;
/*!40000 ALTER TABLE `t_system_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_unifieduser`
--

DROP TABLE IF EXISTS `t_unifieduser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_unifieduser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickName` varchar(200) DEFAULT NULL COMMENT '名称',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `realname` varchar(200) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `activation` int(11) DEFAULT '1',
  `disabled` int(11) DEFAULT NULL,
  `registerIp` varchar(200) DEFAULT NULL,
  `registerTime` varchar(200) DEFAULT NULL,
  `lastLoginTime` varchar(200) DEFAULT NULL,
  `lastLoginIp` varchar(200) DEFAULT NULL,
  `sex` varchar(200) DEFAULT '保密',
  `type` varchar(45) DEFAULT 'User' COMMENT '用户类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_unifieduser`
--

LOCK TABLES `t_unifieduser` WRITE;
/*!40000 ALTER TABLE `t_unifieduser` DISABLE KEYS */;
INSERT INTO `t_unifieduser` VALUES (1,'admin','admin','202cb962ac59075b964b07152d234b70','','','',NULL,1,0,'127.0.0.1','2017-10-09 14:47:16','2020-02-27 19:31:28','127.0.0.1','男','Admin'),(3,'test','test','e10adc3949ba59abbe56e057f20f883e','2596310607@qq.com','15881169173','test','',1,0,'192.168.0.101','2019-01-07 12:24:07','2020-02-14 12:01:38','127.0.0.1','男','Admin'),(4,'','721xou74xfc','d41d8cd98f00b204e9800998ecf8427e','','15881169174','','',1,0,'0:0:0:0:0:0:0:1','2020-02-02 17:30:42','2020-02-02 17:30:42','0:0:0:0:0:0:0:1','保密','User'),(5,'','tb10aay2zre','d41d8cd98f00b204e9800998ecf8427e','','15881169177','','',1,0,'0:0:0:0:0:0:0:1','2020-02-02 17:31:51','2020-02-02 17:31:51','0:0:0:0:0:0:0:1','保密','User'),(6,'','tc3qtanyni4','d41d8cd98f00b204e9800998ecf8427e','','15881169175','','',1,0,'0:0:0:0:0:0:0:1','2020-02-02 17:34:06','2020-02-02 17:34:06','0:0:0:0:0:0:0:1','保密','User'),(7,'23','x2wqiidg93z','d41d8cd98f00b204e9800998ecf8427e','','15881169176','','/upload/20200204164433fa2e.png',1,0,'0:0:0:0:0:0:0:1','2020-02-02 17:35:49','2020-02-02 17:35:49','0:0:0:0:0:0:0:1','保密','User');
/*!40000 ALTER TABLE `t_unifieduser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_unifieduser_token`
--

DROP TABLE IF EXISTS `t_unifieduser_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_unifieduser_token` (
  `id` varchar(32) NOT NULL,
  `appid` varchar(2000) DEFAULT NULL COMMENT '角色名称',
  `encryptSignature` varchar(5000) DEFAULT '0' COMMENT '排序号',
  `token` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_unifieduser_token`
--

LOCK TABLES `t_unifieduser_token` WRITE;
/*!40000 ALTER TABLE `t_unifieduser_token` DISABLE KEYS */;
INSERT INTO `t_unifieduser_token` VALUES ('3b4404fa8f90f816a1e1ac42bc1d5b02','75186a364ca149e29b32c82923c30ba3','3a1202f5e784f39d59d2ab3cd8ffe320','XrbuYhuCzolxHO1P7MZZaP3S9WmwEubVcnX2I5FkoxS5M7BAlqmzgJkmWqPyVskvTXxl/8OKNItPPMFm8dTV0UoAYvIRnAvLQbEcYQlZqN30PNBBKDEccqCGdo6zc61O0MZWJyaASO4mMiJRl+sydGx51wIBFrwfzNQMC8mKd7PKK/qQsyszpEnPiBa/xZ3o'),('533e2e029aef3a824bba56e7ed250c6b','75186a364ca149e29b32c82923c30ba3','a98e85713c3b047cbe49b81a8909abee','XrbuYhuCzolxHO1P7MZZaP3S9WmwEubVcnX2I5FkoxS5M7BAlqmzgJkmWqPyVskv8X1RGzhJtbOva5mVOXPKPk1myuVmPyFMMHieRQ7ud5nWng+m5N4LXGHNjpMeZHTvib2I6cqy8r5DUND2PGdJSlMcQ2Cpc9hv9jA5uojBlcOwXPWahDdnnyBBKbzw0PAY'),('54dd18aa0cd6ae0af11401f4651a625a','75186a364ca149e29b32c82923c30ba3','01a3b796903b04f12249004e7cd70622','XrbuYhuCzolxHO1P7MZZaP3S9WmwEubVcnX2I5FkoxS5M7BAlqmzgJkmWqPyVskv4xt36w/06oVS9W4+GFalyf8uQoDq3Yyl2ecOEn9L6nAwR8xsZ1ILZDHicatYB7aFsvgsHCu5VzexSR4QWJKb1U2NDbG9akv5ulzG9FothKnjTooMd+Sse6+atDgNWEvw'),('745720203f8d56b208837dd91a667248','75186a364ca149e29b32c82923c30ba3','026160fa3c2d1d9ceb3ac56060a6dfcb','XrbuYhuCzolxHO1P7MZZaP3S9WmwEubVcnX2I5FkoxS5M7BAlqmzgJkmWqPyVskvboGXXCF9qXJ/ElQwzyvir2DOXZjoGgAvqU9gCukrspco2K8GCwVngOfP6+ufcGPnQ5k2LrmMWOpeUGGVgnePQcq4EwHllhzwtGE3JecUfkYOO7xh4pYWRxE8sumYITik'),('8aebb4dca2d94ae436809bb3c07bef72','75186a364ca149e29b32c82923c30ba3','d6fcdb5e5ed1d2f65c78eca2c9972a12','XrbuYhuCzolxHO1P7MZZaP3S9WmwEubVcnX2I5FkoxS5M7BAlqmzgJkmWqPyVskvm7Nz0gT45D2v7DEx0TshI/eCD5juuV1qSDBHq3uwVpMCfRXaG23o4Rg1Zdg1F/qi2HSK0LYQQjIFY8Sv4Xta6a2FVvOZqoyaGfBVaR8kSb7mG1qYWah1CN67wdyLYwQb');
/*!40000 ALTER TABLE `t_unifieduser_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL COMMENT '用户',
  `email` varchar(10) DEFAULT '0' COMMENT '排序号',
  `phone` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `dateline` varchar(255) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `selfAdmin` int(11) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `siteId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'admin','','',NULL,'on','','2017-10-09 14:47:16',1,0,NULL,1),(3,'test',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `undo_log`
--

DROP TABLE IF EXISTS `undo_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `undo_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) NOT NULL,
  `context` varchar(128) NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `undo_log`
--

LOCK TABLES `undo_log` WRITE;
/*!40000 ALTER TABLE `undo_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `undo_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-03 16:48:45