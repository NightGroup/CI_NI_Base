CREATE DATABASE  IF NOT EXISTS `nidb1` /*!40100 DEFAULT CHARACTER SET cp1251 */;
USE `nidb1`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: nidb1
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Table structure for table `atlas`
--

DROP TABLE IF EXISTS `atlas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atlas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `atlas_name` varchar(100) NOT NULL,
  `atlas_description` varchar(250) DEFAULT NULL,
  `atlas_parent_id` int(11) NOT NULL DEFAULT '0',
  `atlas_network` varchar(15) DEFAULT NULL,
  `atlas_network_mask` smallint(6) DEFAULT NULL,
  `atlas_is_network` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_atlas_atlas_is_network` (`atlas_is_network`),
  KEY `idx_atlas_atlas_parent_id` (`atlas_parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=5461;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atlas`
--

LOCK TABLES `atlas` WRITE;
/*!40000 ALTER TABLE `atlas` DISABLE KEYS */;
/*!40000 ALTER TABLE `atlas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `atlas_view`
--

DROP TABLE IF EXISTS `atlas_view`;
/*!50001 DROP VIEW IF EXISTS `atlas_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `atlas_view` AS SELECT 
 1 AS `id`,
 1 AS `atlas_name`,
 1 AS `atlas_description`,
 1 AS `atlas_parent_id`,
 1 AS `atlas_network`,
 1 AS `atlas_network_mask`,
 1 AS `node_count`,
 1 AS `node_disabled_count`,
 1 AS `node_enabled_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `default_monitoring_pack_for_device_type`
--

DROP TABLE IF EXISTS `default_monitoring_pack_for_device_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_monitoring_pack_for_device_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_type_id` int(11) NOT NULL,
  `node_monitoring_pack_id` bigint(20) NOT NULL,
  `node_monitoring_time` int(11) NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`),
  KEY `idx_default_monitoring_pack_for_device_type_device_type_id` (`device_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=256 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_monitoring_pack_for_device_type`
--

LOCK TABLES `default_monitoring_pack_for_device_type` WRITE;
/*!40000 ALTER TABLE `default_monitoring_pack_for_device_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_monitoring_pack_for_device_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `default_monitoring_pack_for_device_type_2_view`
--

DROP TABLE IF EXISTS `default_monitoring_pack_for_device_type_2_view`;
/*!50001 DROP VIEW IF EXISTS `default_monitoring_pack_for_device_type_2_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `default_monitoring_pack_for_device_type_2_view` AS SELECT 
 1 AS `device_type_id`,
 1 AS `device_subcategory_name`,
 1 AS `monitoring_packs`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `default_monitoring_pack_for_device_type_date_range`
--

DROP TABLE IF EXISTS `default_monitoring_pack_for_device_type_date_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_monitoring_pack_for_device_type_date_range` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_monitoring_date_range_start` time NOT NULL DEFAULT '00:00:00',
  `node_monitoring_date_range_end` time NOT NULL DEFAULT '23:59:59',
  `node_monitoring_date_range_type_id` smallint(6) NOT NULL DEFAULT '1',
  `node_monitoring_date_range_day_id` smallint(6) NOT NULL DEFAULT '8',
  `default_monitoring_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_default_monitoring_pack_54_default_monitoring_id` (`default_monitoring_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=256 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_monitoring_pack_for_device_type_date_range`
--

LOCK TABLES `default_monitoring_pack_for_device_type_date_range` WRITE;
/*!40000 ALTER TABLE `default_monitoring_pack_for_device_type_date_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_monitoring_pack_for_device_type_date_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `default_monitoring_pack_for_device_type_view`
--

DROP TABLE IF EXISTS `default_monitoring_pack_for_device_type_view`;
/*!50001 DROP VIEW IF EXISTS `default_monitoring_pack_for_device_type_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `default_monitoring_pack_for_device_type_view` AS SELECT 
 1 AS `id`,
 1 AS `device_type_id`,
 1 AS `node_monitoring_pack_id`,
 1 AS `node_monitoring_time`,
 1 AS `node_monitoring_pack_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_sys_object_id` varchar(45) DEFAULT NULL,
  `device_subcategory_id` int(11) NOT NULL,
  `device_advanced_check` tinyint(4) NOT NULL DEFAULT '0',
  `device_advanced_check_oid` varchar(100) DEFAULT NULL,
  `device_advanced_check_oid_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=627 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=75;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_category`
--

DROP TABLE IF EXISTS `device_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_category_name` varchar(45) NOT NULL,
  `device_class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=512;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_category`
--

LOCK TABLES `device_category` WRITE;
/*!40000 ALTER TABLE `device_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_class`
--

DROP TABLE IF EXISTS `device_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=744;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_class`
--

LOCK TABLES `device_class` WRITE;
/*!40000 ALTER TABLE `device_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_manufacturer`
--

DROP TABLE IF EXISTS `device_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_manufacturer_name` varchar(45) NOT NULL,
  `device_manufacturer_oui_name` varchar(150) DEFAULT NULL,
  `device_manufacturer_oui_alias` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=1170;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_manufacturer`
--

LOCK TABLES `device_manufacturer` WRITE;
/*!40000 ALTER TABLE `device_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_subcategory`
--

DROP TABLE IF EXISTS `device_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_subcategory_name` varchar(150) NOT NULL,
  `image_db_id` int(11) NOT NULL DEFAULT '1',
  `device_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=566 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=105;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_subcategory`
--

LOCK TABLES `device_subcategory` WRITE;
/*!40000 ALTER TABLE `device_subcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_type`
--

DROP TABLE IF EXISTS `device_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_manufacturer_id` int(11) NOT NULL,
  `device_subcategory_id` int(11) NOT NULL,
  `device_category_id` int(11) NOT NULL,
  `device_class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=8192 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_type`
--

LOCK TABLES `device_type` WRITE;
/*!40000 ALTER TABLE `device_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `device_type_view`
--

DROP TABLE IF EXISTS `device_type_view`;
/*!50001 DROP VIEW IF EXISTS `device_type_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `device_type_view` AS SELECT 
 1 AS `id`,
 1 AS `device_manufacturer_id`,
 1 AS `device_subcategory_id`,
 1 AS `device_category_id`,
 1 AS `device_class_id`,
 1 AS `image_db_id`,
 1 AS `image_db_16`,
 1 AS `image_db_24`,
 1 AS `image_db_64`,
 1 AS `image_db_name`,
 1 AS `device_subcategory_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `image_db`
--

DROP TABLE IF EXISTS `image_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_db_16` varchar(45) DEFAULT NULL,
  `image_db_24` varchar(45) DEFAULT NULL,
  `image_db_64` varchar(45) DEFAULT NULL,
  `image_db_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=16384;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_db`
--

LOCK TABLES `image_db` WRITE;
/*!40000 ALTER TABLE `image_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `monitoring_next_request_date`
--

DROP TABLE IF EXISTS `monitoring_next_request_date`;
/*!50001 DROP VIEW IF EXISTS `monitoring_next_request_date`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `monitoring_next_request_date` AS SELECT 
 1 AS `node_monitoring_next_request`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `monitoring_pack_for_computer_db_id_view`
--

DROP TABLE IF EXISTS `monitoring_pack_for_computer_db_id_view`;
/*!50001 DROP VIEW IF EXISTS `monitoring_pack_for_computer_db_id_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `monitoring_pack_for_computer_db_id_view` AS SELECT 
 1 AS `node_computer_db_id`,
 1 AS `node_monitoring_pack_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `monitoring_pack_for_node_id_view`
--

DROP TABLE IF EXISTS `monitoring_pack_for_node_id_view`;
/*!50001 DROP VIEW IF EXISTS `monitoring_pack_for_node_id_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `monitoring_pack_for_node_id_view` AS SELECT 
 1 AS `node_id`,
 1 AS `node_monitoring_pack_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node_dns_name` varchar(200) NOT NULL,
  `node_ip_address` varchar(15) NOT NULL,
  `node_mac_address` varchar(25) NOT NULL,
  `device_type_id` int(11) NOT NULL,
  `node_computer_db_id` int(11) NOT NULL DEFAULT '0',
  `atlas_id` int(11) NOT NULL,
  `node_monitoring_enable` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_node_atlas_id` (`atlas_id`),
  KEY `idx_node_device_type_id` (`device_type_id`),
  KEY `idx_node_node_computer_db_id` (`node_computer_db_id`),
  KEY `idx_node_node_ip_address` (`node_ip_address`),
  KEY `idx_node_node_monitoring_enable` (`node_monitoring_enable`)
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=3276;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ni_user`@`%`*/ /*!50003 TRIGGER add_def_mon_packstrigger
	AFTER INSERT
	ON node
	FOR EACH ROW
BEGIN
DECLARE done tinyint DEFAULT 0;
DECLARE var_new_node_id BIGINT DEFAULT NEW.`id`;
DECLARE var_new_device_type_id INT DEFAULT NEW.`device_type_id`;

DECLARE var_def_monitoring_id BIGINT;
DECLARE var_node_monitoring_pack_id BIGINT;
DECLARE var_node_monitoring_time INT;
-- 
-- INSERT INTO node_monitoring (  node_id, node_monitoring_pack_id, node_monitoring_time)
-- 
-- SELECT @new_node_id,  default_monitoring_pack_for_device_type.node_monitoring_pack_id, 
--   default_monitoring_pack_for_device_type.node_monitoring_time
--  FROM default_monitoring_pack_for_device_type
-- WHERE default_monitoring_pack_for_device_type.device_type_id = @new_device_type_id;



DECLARE cursor_monitoring_ CURSOR FOR 
  SELECT   default_monitoring_pack_for_device_type.id, default_monitoring_pack_for_device_type.node_monitoring_pack_id, 
  default_monitoring_pack_for_device_type.node_monitoring_time
 FROM default_monitoring_pack_for_device_type
WHERE default_monitoring_pack_for_device_type.device_type_id = var_new_device_type_id;

 
DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
  
OPEN cursor_monitoring_;
 
 

REPEAT
  FETCH cursor_monitoring_ INTO var_def_monitoring_id, var_node_monitoring_pack_id, var_node_monitoring_time;
 
  IF NOT done THEN

   INSERT INTO node_monitoring ( node_id, node_monitoring_pack_id, node_monitoring_time) 
    VALUES (var_new_node_id, var_node_monitoring_pack_id, var_node_monitoring_time);
  
 SET @last_id := LAST_INSERT_ID();

 
INSERT INTO node_monitoring_date_range (  node_monitoring_date_range_start,
  node_monitoring_date_range_end,
  node_monitoring_date_range_type_id,
  node_monitoring_date_range_day_id, 
  node_monitoring_id)
 
  SELECT
  default_monitoring_pack_for_device_type_date_range.node_monitoring_date_range_start,
  default_monitoring_pack_for_device_type_date_range.node_monitoring_date_range_end,
  default_monitoring_pack_for_device_type_date_range.node_monitoring_date_range_type_id,
  default_monitoring_pack_for_device_type_date_range.node_monitoring_date_range_day_id, 
  @last_id
FROM default_monitoring_pack_for_device_type_date_range
WHERE default_monitoring_pack_for_device_type_date_range.default_monitoring_id = var_def_monitoring_id;
-- 

 
 END IF;
 UNTIL done END REPEAT;

CLOSE cursor_monitoring_;





 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `node_inventory`
--

DROP TABLE IF EXISTS `node_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) NOT NULL,
  `node_inventory_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5448 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=5461 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory`
--

LOCK TABLES `node_inventory` WRITE;
/*!40000 ALTER TABLE `node_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_availability`
--

DROP TABLE IF EXISTS `node_inventory_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_availability` (
  `id` smallint(5) unsigned NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=780;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_availability`
--

LOCK TABLES `node_inventory_availability` WRITE;
/*!40000 ALTER TABLE `node_inventory_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_bios`
--

DROP TABLE IF EXISTS `node_inventory_bios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_bios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `description` varchar(256) NOT NULL,
  `status` varchar(10) NOT NULL,
  `primary_bios` tinyint(4) NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `version` varchar(256) NOT NULL,
  `caption` varchar(64) NOT NULL,
  `build_number` varchar(64) NOT NULL,
  `identification_code` varchar(64) NOT NULL,
  `install_date` datetime DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `serial_number` varchar(256) NOT NULL,
  `release_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5507 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=160;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_bios`
--

LOCK TABLES `node_inventory_bios` WRITE;
/*!40000 ALTER TABLE `node_inventory_bios` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_bios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_computer_system`
--

DROP TABLE IF EXISTS `node_inventory_computer_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_computer_system` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `system_type` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model` varchar(256) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `dns_host_name` varchar(256) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `domain` varchar(256) NOT NULL,
  `domain_role_id` smallint(5) unsigned NOT NULL,
  `bootup_state` varchar(30) NOT NULL,
  `power_state_id` smallint(5) unsigned NOT NULL,
  `thermal_state_id` smallint(5) unsigned NOT NULL,
  `wakeup_type_id` smallint(5) unsigned NOT NULL,
  `primary_os_manufacturer` varchar(256) NOT NULL,
  `primary_os_up_time` datetime DEFAULT NULL,
  `primary_os_boot_device` varchar(255) NOT NULL,
  `primary_os_install_date` datetime DEFAULT NULL,
  `free_virtual_memory_kb` bigint(20) NOT NULL,
  `free_physical_memory_kb` bigint(20) NOT NULL,
  `free_space_in_paging_files_kb` bigint(20) NOT NULL,
  `admin_password_status_id` smallint(5) unsigned NOT NULL,
  `caption` varchar(64) NOT NULL,
  `number_of_logical_processors` smallint(6) NOT NULL,
  `number_of_processors` smallint(6) NOT NULL,
  `part_of_domain` tinyint(4) NOT NULL,
  `pc_system_type_id` smallint(5) unsigned NOT NULL,
  `primary_os_sku_id` smallint(5) unsigned NOT NULL,
  `primary_os_caption` varchar(64) NOT NULL,
  `primary_os_architecture` varchar(64) NOT NULL,
  `primary_os_serial_number` varchar(256) NOT NULL,
  `total_virtual_memory_size_kb` bigint(20) NOT NULL,
  `total_swap_space_size_kb` bigint(20) NOT NULL,
  `total_visible_memory_size_kb` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5367 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=8192;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_computer_system`
--

LOCK TABLES `node_inventory_computer_system` WRITE;
/*!40000 ALTER TABLE `node_inventory_computer_system` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_computer_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_computer_system_admin_password_status`
--

DROP TABLE IF EXISTS `node_inventory_computer_system_admin_password_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_computer_system_admin_password_status` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_computer_system_admin_password_status`
--

LOCK TABLES `node_inventory_computer_system_admin_password_status` WRITE;
/*!40000 ALTER TABLE `node_inventory_computer_system_admin_password_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_computer_system_admin_password_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_computer_system_domain_role`
--

DROP TABLE IF EXISTS `node_inventory_computer_system_domain_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_computer_system_domain_role` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=2730;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_computer_system_domain_role`
--

LOCK TABLES `node_inventory_computer_system_domain_role` WRITE;
/*!40000 ALTER TABLE `node_inventory_computer_system_domain_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_computer_system_domain_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_computer_system_power_state`
--

DROP TABLE IF EXISTS `node_inventory_computer_system_power_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_computer_system_power_state` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=1638;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_computer_system_power_state`
--

LOCK TABLES `node_inventory_computer_system_power_state` WRITE;
/*!40000 ALTER TABLE `node_inventory_computer_system_power_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_computer_system_power_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_computer_system_sku`
--

DROP TABLE IF EXISTS `node_inventory_computer_system_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_computer_system_sku` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=341;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_computer_system_sku`
--

LOCK TABLES `node_inventory_computer_system_sku` WRITE;
/*!40000 ALTER TABLE `node_inventory_computer_system_sku` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_computer_system_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_computer_system_thermal_state`
--

DROP TABLE IF EXISTS `node_inventory_computer_system_thermal_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_computer_system_thermal_state` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=2730;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_computer_system_thermal_state`
--

LOCK TABLES `node_inventory_computer_system_thermal_state` WRITE;
/*!40000 ALTER TABLE `node_inventory_computer_system_thermal_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_computer_system_thermal_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_computer_system_type`
--

DROP TABLE IF EXISTS `node_inventory_computer_system_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_computer_system_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=1820;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_computer_system_type`
--

LOCK TABLES `node_inventory_computer_system_type` WRITE;
/*!40000 ALTER TABLE `node_inventory_computer_system_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_computer_system_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_computer_system_wake_up_type`
--

DROP TABLE IF EXISTS `node_inventory_computer_system_wake_up_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_computer_system_wake_up_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=1820;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_computer_system_wake_up_type`
--

LOCK TABLES `node_inventory_computer_system_wake_up_type` WRITE;
/*!40000 ALTER TABLE `node_inventory_computer_system_wake_up_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_computer_system_wake_up_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_config_manager_error_code`
--

DROP TABLE IF EXISTS `node_inventory_config_manager_error_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_config_manager_error_code` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=512;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_config_manager_error_code`
--

LOCK TABLES `node_inventory_config_manager_error_code` WRITE;
/*!40000 ALTER TABLE `node_inventory_config_manager_error_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_config_manager_error_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_disk`
--

DROP TABLE IF EXISTS `node_inventory_disk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_disk` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `interface_type` varchar(5) NOT NULL,
  `status` varchar(10) NOT NULL,
  `availability_id` smallint(5) unsigned NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `model` varchar(64) NOT NULL,
  `media_type` varchar(150) NOT NULL,
  `media_size_bytes` bigint(20) NOT NULL,
  `caption` varchar(64) NOT NULL,
  `config_manager_error_code_id` smallint(5) unsigned NOT NULL,
  `description` varchar(2000) NOT NULL,
  `device_id` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `partitions` tinyint(4) NOT NULL,
  `serial_number` varchar(256) NOT NULL,
  `total_cylinders` bigint(20) NOT NULL,
  `total_heads` int(11) NOT NULL,
  `total_sectors` bigint(20) NOT NULL,
  `total_tracks` bigint(20) NOT NULL,
  `tracks_per_cylinder` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6920 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=444;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_disk`
--

LOCK TABLES `node_inventory_disk` WRITE;
/*!40000 ALTER TABLE `node_inventory_disk` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_disk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_display_adapter`
--

DROP TABLE IF EXISTS `node_inventory_display_adapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_display_adapter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `status` varchar(10) NOT NULL,
  `availability_id` smallint(5) unsigned NOT NULL,
  `compatibility` varchar(256) NOT NULL,
  `video_processor` varchar(255) NOT NULL,
  `adapter_ram_bytes` int(11) NOT NULL,
  `dac_type` varchar(256) NOT NULL,
  `current_horizontal_resolution` int(11) NOT NULL,
  `current_refresh_rate_hz` int(11) NOT NULL,
  `caption` varchar(64) NOT NULL,
  `config_manager_error_code_id` smallint(6) unsigned NOT NULL,
  `current_bits_per_pixel` int(11) NOT NULL,
  `current_number_of_colors` bigint(20) NOT NULL,
  `current_vertical_resolution` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `video_architecture_id` smallint(6) unsigned NOT NULL,
  `video_memory_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10739 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=277;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_display_adapter`
--

LOCK TABLES `node_inventory_display_adapter` WRITE;
/*!40000 ALTER TABLE `node_inventory_display_adapter` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_display_adapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_display_adapter_video_architecture`
--

DROP TABLE IF EXISTS `node_inventory_display_adapter_video_architecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_display_adapter_video_architecture` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=1260;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_display_adapter_video_architecture`
--

LOCK TABLES `node_inventory_display_adapter_video_architecture` WRITE;
/*!40000 ALTER TABLE `node_inventory_display_adapter_video_architecture` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_display_adapter_video_architecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_display_adapter_video_memory_type`
--

DROP TABLE IF EXISTS `node_inventory_display_adapter_video_memory_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_display_adapter_video_memory_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=1260;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_display_adapter_video_memory_type`
--

LOCK TABLES `node_inventory_display_adapter_video_memory_type` WRITE;
/*!40000 ALTER TABLE `node_inventory_display_adapter_video_memory_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_display_adapter_video_memory_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_installed_software`
--

DROP TABLE IF EXISTS `node_inventory_installed_software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_installed_software` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `caption` varchar(1000) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `install_date` varchar(15) NOT NULL,
  `install_location` varchar(2000) NOT NULL,
  `install_source` varchar(2000) NOT NULL,
  `install_state_id` smallint(6) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `vendor` varchar(256) NOT NULL,
  `version` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72671 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=440;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_installed_software`
--

LOCK TABLES `node_inventory_installed_software` WRITE;
/*!40000 ALTER TABLE `node_inventory_installed_software` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_installed_software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_monitor`
--

DROP TABLE IF EXISTS `node_inventory_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_monitor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `description` varchar(256) NOT NULL,
  `status` varchar(10) NOT NULL,
  `availability_id` smallint(5) unsigned NOT NULL,
  `monitor_manufacturer` varchar(256) NOT NULL,
  `screen_height` int(11) NOT NULL,
  `res_height` int(11) NOT NULL,
  `caption` varchar(64) NOT NULL,
  `device_id` varchar(256) NOT NULL,
  `config_manager_error_code_id` smallint(5) unsigned NOT NULL,
  `manufacture_date` varchar(256) NOT NULL,
  `res_width` int(11) NOT NULL,
  `screen_width` int(11) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `model` varchar(256) NOT NULL,
  `screen_diag` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9450 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=399;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_monitor`
--

LOCK TABLES `node_inventory_monitor` WRITE;
/*!40000 ALTER TABLE `node_inventory_monitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_monitor_display_type`
--

DROP TABLE IF EXISTS `node_inventory_monitor_display_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_monitor_display_type` (
  `jd` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`jd`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=2730;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_monitor_display_type`
--

LOCK TABLES `node_inventory_monitor_display_type` WRITE;
/*!40000 ALTER TABLE `node_inventory_monitor_display_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_monitor_display_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_motherboard`
--

DROP TABLE IF EXISTS `node_inventory_motherboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_motherboard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `availability_id` smallint(5) unsigned NOT NULL,
  `primary_bus_type` varchar(20) NOT NULL,
  `secondary_bus_type` varchar(20) NOT NULL,
  `caption` varchar(64) NOT NULL,
  `config_manager_error_code_id` smallint(5) unsigned NOT NULL,
  `device_id` varchar(2000) NOT NULL,
  `revision_number` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `name` varchar(64) NOT NULL,
  `system_name` varchar(64) NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `model` varchar(64) NOT NULL,
  `product` varchar(255) NOT NULL,
  `part_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5470 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=244;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_motherboard`
--

LOCK TABLES `node_inventory_motherboard` WRITE;
/*!40000 ALTER TABLE `node_inventory_motherboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_motherboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_network_adapter`
--

DROP TABLE IF EXISTS `node_inventory_network_adapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_network_adapter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `adapter_type_id` smallint(5) unsigned NOT NULL,
  `auto_sense` tinyint(4) NOT NULL,
  `availability_id` smallint(6) NOT NULL,
  `caption` varchar(64) NOT NULL,
  `config_manager_error_code_id` smallint(5) unsigned NOT NULL,
  `description` varchar(256) NOT NULL,
  `device_id` varchar(256) NOT NULL,
  `installed` tinyint(4) NOT NULL,
  `interface_index` int(11) NOT NULL,
  `mac_address` varchar(30) NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `max_speed_bits_per_sec` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `netConnection_id` varchar(256) NOT NULL,
  `net_connection_status_id` smallint(5) unsigned NOT NULL,
  `net_enabled` tinyint(4) NOT NULL,
  `physical_adapter` tinyint(4) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `speed_bits_per_sec` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54415 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=356;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_network_adapter`
--

LOCK TABLES `node_inventory_network_adapter` WRITE;
/*!40000 ALTER TABLE `node_inventory_network_adapter` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_network_adapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_network_adapter_connection_status`
--

DROP TABLE IF EXISTS `node_inventory_network_adapter_connection_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_network_adapter_connection_status` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=1170;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_network_adapter_connection_status`
--

LOCK TABLES `node_inventory_network_adapter_connection_status` WRITE;
/*!40000 ALTER TABLE `node_inventory_network_adapter_connection_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_network_adapter_connection_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_network_adapter_type`
--

DROP TABLE IF EXISTS `node_inventory_network_adapter_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_network_adapter_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=1170;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_network_adapter_type`
--

LOCK TABLES `node_inventory_network_adapter_type` WRITE;
/*!40000 ALTER TABLE `node_inventory_network_adapter_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_network_adapter_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_on_board_device`
--

DROP TABLE IF EXISTS `node_inventory_on_board_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_on_board_device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `status` varchar(10) NOT NULL,
  `device_type_id` smallint(5) unsigned NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `version` varchar(64) NOT NULL,
  `caption` varchar(64) NOT NULL,
  `enabled` smallint(6) NOT NULL,
  `hot_swappable` smallint(6) NOT NULL,
  `model` varchar(64) NOT NULL,
  `part_number` varchar(256) NOT NULL,
  `serial_number` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=383 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=136;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_on_board_device`
--

LOCK TABLES `node_inventory_on_board_device` WRITE;
/*!40000 ALTER TABLE `node_inventory_on_board_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_on_board_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_on_board_device_type`
--

DROP TABLE IF EXISTS `node_inventory_on_board_device_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_on_board_device_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=2340;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_on_board_device_type`
--

LOCK TABLES `node_inventory_on_board_device_type` WRITE;
/*!40000 ALTER TABLE `node_inventory_on_board_device_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_on_board_device_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_physical_memory`
--

DROP TABLE IF EXISTS `node_inventory_physical_memory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_physical_memory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `bank_label` varchar(64) NOT NULL,
  `capacity` bigint(20) NOT NULL,
  `device_locator` varchar(255) NOT NULL,
  `form_factor_id` smallint(5) unsigned NOT NULL,
  `memory_type_id` smallint(5) unsigned NOT NULL,
  `hot_swappable` smallint(6) NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `max_voltage` int(11) unsigned NOT NULL,
  `min_voltage` int(11) unsigned NOT NULL,
  `model` varchar(64) NOT NULL,
  `part_number` varchar(256) NOT NULL,
  `serial_number` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `status` varchar(10) NOT NULL,
  `speed` int(11) unsigned NOT NULL,
  `type_detail_id` smallint(5) unsigned NOT NULL,
  `version` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5493 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=282;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_physical_memory`
--

LOCK TABLES `node_inventory_physical_memory` WRITE;
/*!40000 ALTER TABLE `node_inventory_physical_memory` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_physical_memory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_physical_memory_form_factor`
--

DROP TABLE IF EXISTS `node_inventory_physical_memory_form_factor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_physical_memory_form_factor` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=682;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_physical_memory_form_factor`
--

LOCK TABLES `node_inventory_physical_memory_form_factor` WRITE;
/*!40000 ALTER TABLE `node_inventory_physical_memory_form_factor` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_physical_memory_form_factor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_physical_memory_type`
--

DROP TABLE IF EXISTS `node_inventory_physical_memory_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_physical_memory_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=655;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_physical_memory_type`
--

LOCK TABLES `node_inventory_physical_memory_type` WRITE;
/*!40000 ALTER TABLE `node_inventory_physical_memory_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_physical_memory_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_physical_memory_type_detail`
--

DROP TABLE IF EXISTS `node_inventory_physical_memory_type_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_physical_memory_type_detail` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=1260;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_physical_memory_type_detail`
--

LOCK TABLES `node_inventory_physical_memory_type_detail` WRITE;
/*!40000 ALTER TABLE `node_inventory_physical_memory_type_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_physical_memory_type_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_processor`
--

DROP TABLE IF EXISTS `node_inventory_processor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_processor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `caption` varchar(64) NOT NULL,
  `status` varchar(10) NOT NULL,
  `availability_id` smallint(5) unsigned NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `description` varchar(255) NOT NULL,
  `max_clock_speed_mhz` int(11) unsigned NOT NULL,
  `current_clock_speed_mhz` int(11) unsigned NOT NULL,
  `load_percentage` smallint(6) NOT NULL,
  `architecture_id` smallint(5) unsigned NOT NULL,
  `config_manager_error_code_id` smallint(5) unsigned NOT NULL,
  `cpu_status_id` smallint(5) unsigned NOT NULL,
  `device_id` varchar(30) NOT NULL,
  `name` varchar(256) NOT NULL,
  `number_of_cores` smallint(5) unsigned NOT NULL,
  `number_of_enabled_core` smallint(5) unsigned NOT NULL,
  `number_of_logical_processors` smallint(5) unsigned NOT NULL,
  `part_number` varchar(256) NOT NULL,
  `processor_id` varchar(150) NOT NULL,
  `processor_type_id` smallint(5) unsigned NOT NULL,
  `revision` smallint(5) unsigned NOT NULL,
  `role` varchar(100) NOT NULL,
  `serial_number` varchar(64) NOT NULL,
  `socket_designation` varchar(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `vm_mode` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5423 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=277;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_processor`
--

LOCK TABLES `node_inventory_processor` WRITE;
/*!40000 ALTER TABLE `node_inventory_processor` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_processor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_processor_architecture`
--

DROP TABLE IF EXISTS `node_inventory_processor_architecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_processor_architecture` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=2340;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_processor_architecture`
--

LOCK TABLES `node_inventory_processor_architecture` WRITE;
/*!40000 ALTER TABLE `node_inventory_processor_architecture` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_processor_architecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_processor_cpu_status`
--

DROP TABLE IF EXISTS `node_inventory_processor_cpu_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_processor_cpu_status` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=2048;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_processor_cpu_status`
--

LOCK TABLES `node_inventory_processor_cpu_status` WRITE;
/*!40000 ALTER TABLE `node_inventory_processor_cpu_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_processor_cpu_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_processor_type`
--

DROP TABLE IF EXISTS `node_inventory_processor_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_processor_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=2730;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_processor_type`
--

LOCK TABLES `node_inventory_processor_type` WRITE;
/*!40000 ALTER TABLE `node_inventory_processor_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_processor_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_qfe_update`
--

DROP TABLE IF EXISTS `node_inventory_qfe_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_qfe_update` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `caption` varchar(64) NOT NULL,
  `description` varchar(256) NOT NULL,
  `fix_comments` varchar(2000) NOT NULL,
  `installed_by` varchar(255) NOT NULL,
  `installed_on` varchar(255) NOT NULL,
  `hot_fix_id` varchar(15) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1617165 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=264;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_qfe_update`
--

LOCK TABLES `node_inventory_qfe_update` WRITE;
/*!40000 ALTER TABLE `node_inventory_qfe_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_qfe_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_sound`
--

DROP TABLE IF EXISTS `node_inventory_sound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_sound` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `availability_id` smallint(5) unsigned NOT NULL,
  `caption` varchar(64) NOT NULL,
  `config_manager_error_code_id` smallint(5) unsigned NOT NULL,
  `description` varchar(2000) NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9607 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=16384;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_sound`
--

LOCK TABLES `node_inventory_sound` WRITE;
/*!40000 ALTER TABLE `node_inventory_sound` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_sound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_inventory_startup_program`
--

DROP TABLE IF EXISTS `node_inventory_startup_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_inventory_startup_program` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_inventory_id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `command` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_inventory_startup_program`
--

LOCK TABLES `node_inventory_startup_program` WRITE;
/*!40000 ALTER TABLE `node_inventory_startup_program` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_inventory_startup_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_monitoring`
--

DROP TABLE IF EXISTS `node_monitoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) NOT NULL,
  `node_monitoring_pack_id` bigint(20) NOT NULL,
  `node_monitoring_time` int(11) NOT NULL DEFAULT '5',
  `node_monitoring_last_request` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_node_monitoring_node_id` (`node_id`),
  KEY `idx_node_monitoring_node_monitoring_pack_id` (`node_monitoring_pack_id`)
) ENGINE=MyISAM AUTO_INCREMENT=318 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=1638 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring`
--

LOCK TABLES `node_monitoring` WRITE;
/*!40000 ALTER TABLE `node_monitoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `node_monitoring2_view`
--

DROP TABLE IF EXISTS `node_monitoring2_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring2_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring2_view` AS SELECT 
 1 AS `id`,
 1 AS `node_id`,
 1 AS `node_monitoring_pack_id`,
 1 AS `node_monitoring_time`,
 1 AS `node_monitoring_last_request`,
 1 AS `node_monitoring_next_request`,
 1 AS `node_monitoring_pack_name`,
 1 AS `node_dns_name`,
 1 AS `node_ip_address`,
 1 AS `node_mac_address`,
 1 AS `node_computer_db_id`,
 1 AS `node_monitoring_enable`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `node_monitoring_alarm`
--

DROP TABLE IF EXISTS `node_monitoring_alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_alarm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `alarm_name` varchar(100) NOT NULL,
  `alarm_description` varchar(255) DEFAULT NULL,
  `alarm_action_id` smallint(6) NOT NULL DEFAULT '1',
  `node_monitoring_pack_sensor_engine_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_node_monitoring_alarm_node_id` (`node_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=136;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_alarm`
--

LOCK TABLES `node_monitoring_alarm` WRITE;
/*!40000 ALTER TABLE `node_monitoring_alarm` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_alarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_monitoring_alarm_action`
--

DROP TABLE IF EXISTS `node_monitoring_alarm_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_alarm_action` (
  `id` smallint(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=28;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_alarm_action`
--

LOCK TABLES `node_monitoring_alarm_action` WRITE;
/*!40000 ALTER TABLE `node_monitoring_alarm_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_alarm_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_monitoring_alarm_node`
--

DROP TABLE IF EXISTS `node_monitoring_alarm_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_alarm_node` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) NOT NULL,
  `alarm_id` bigint(20) NOT NULL,
  `status_id` smallint(6) NOT NULL DEFAULT '1',
  `alarm_time` datetime NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_node_monitoring_alarm_nod2` (`status_id`),
  KEY `IDX_node_monitoring_alarm_node` (`alarm_id`),
  KEY `idx_node_monitoring_alarm_node_node_id` (`node_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_alarm_node`
--

LOCK TABLES `node_monitoring_alarm_node` WRITE;
/*!40000 ALTER TABLE `node_monitoring_alarm_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_alarm_node` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ni_user`@`%`*/ /*!50003 TRIGGER trigger1
	AFTER INSERT
	ON node_monitoring_alarm_node
	FOR EACH ROW
BEGIN

 INSERT INTO node_monitoring_alarm_node_history (node_id, alarm_id, status_id, alarm_time) VALUES (NEW.node_id, NEW.alarm_id, NEW.status_id, NEW.alarm_time);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ni_user`@`%`*/ /*!50003 TRIGGER trigger2
	AFTER DELETE
	ON node_monitoring_alarm_node
	FOR EACH ROW
BEGIN
  INSERT INTO node_monitoring_alarm_node_history (node_id, alarm_id, status_id, alarm_time) VALUES (OLD.node_id, OLD.alarm_id, 2, OLD.alarm_time);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `node_monitoring_alarm_node2_view`
--

DROP TABLE IF EXISTS `node_monitoring_alarm_node2_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_alarm_node2_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_alarm_node2_view` AS SELECT 
 1 AS `node_id`,
 1 AS `alarm_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `node_monitoring_alarm_node_history`
--

DROP TABLE IF EXISTS `node_monitoring_alarm_node_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_alarm_node_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) NOT NULL,
  `alarm_id` bigint(20) NOT NULL,
  `status_id` smallint(6) NOT NULL,
  `alarm_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_node_monitoring_alarm_node_history_alarm_id` (`alarm_id`),
  KEY `idx_node_monitoring_alarm_node_history_node_id` (`node_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_alarm_node_history`
--

LOCK TABLES `node_monitoring_alarm_node_history` WRITE;
/*!40000 ALTER TABLE `node_monitoring_alarm_node_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_alarm_node_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `node_monitoring_alarm_node_view`
--

DROP TABLE IF EXISTS `node_monitoring_alarm_node_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_alarm_node_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_alarm_node_view` AS SELECT 
 1 AS `id`,
 1 AS `node_id`,
 1 AS `alarm_id`,
 1 AS `status_id`,
 1 AS `alarm_time`,
 1 AS `alarm_name`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `node_monitoring_date_range`
--

DROP TABLE IF EXISTS `node_monitoring_date_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_date_range` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_monitoring_date_range_start` time NOT NULL DEFAULT '00:00:00',
  `node_monitoring_date_range_end` time NOT NULL DEFAULT '23:59:59',
  `node_monitoring_date_range_type_id` smallint(6) NOT NULL DEFAULT '1',
  `node_monitoring_date_range_day_id` smallint(6) NOT NULL DEFAULT '1',
  `node_monitoring_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=299 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=1489 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_date_range`
--

LOCK TABLES `node_monitoring_date_range` WRITE;
/*!40000 ALTER TABLE `node_monitoring_date_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_date_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_monitoring_date_range_day`
--

DROP TABLE IF EXISTS `node_monitoring_date_range_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_date_range_day` (
  `id` smallint(6) NOT NULL,
  `node_monitoring_date_range_day_name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=2340;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_date_range_day`
--

LOCK TABLES `node_monitoring_date_range_day` WRITE;
/*!40000 ALTER TABLE `node_monitoring_date_range_day` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_date_range_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_monitoring_date_range_type`
--

DROP TABLE IF EXISTS `node_monitoring_date_range_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_date_range_type` (
  `id` smallint(6) NOT NULL,
  `node_monitoring_date_range_type_name` varchar(15) NOT NULL,
  `node_monitoring_date_range_type_is_period` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_date_range_type`
--

LOCK TABLES `node_monitoring_date_range_type` WRITE;
/*!40000 ALTER TABLE `node_monitoring_date_range_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_date_range_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `node_monitoring_history_archive_last_view`
--

DROP TABLE IF EXISTS `node_monitoring_history_archive_last_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_history_archive_last_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_history_archive_last_view` AS SELECT 
 1 AS `node_dns_name`,
 1 AS `node_monitoring_pack_sensor_name_def`,
 1 AS `Value`,
 1 AS `node_computer_db_id`,
 1 AS `max_action_dt`,
 1 AS `node_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `node_monitoring_history_archive_view`
--

DROP TABLE IF EXISTS `node_monitoring_history_archive_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_history_archive_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_history_archive_view` AS SELECT 
 1 AS `node_id`,
 1 AS `node_dns_name`,
 1 AS `node_monitoring_pack_sensor_name_def`,
 1 AS `Value`,
 1 AS `node_computer_db_id`,
 1 AS `action_dt`,
 1 AS `id`,
 1 AS `total_printed_page_sensor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `node_monitoring_history_last_view`
--

DROP TABLE IF EXISTS `node_monitoring_history_last_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_history_last_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_history_last_view` AS SELECT 
 1 AS `node_dns_name`,
 1 AS `node_monitoring_pack_sensor_name_def`,
 1 AS `Value`,
 1 AS `node_computer_db_id`,
 1 AS `max_action_dt`,
 1 AS `node_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `node_monitoring_history_last_view_tmp`
--

DROP TABLE IF EXISTS `node_monitoring_history_last_view_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_history_last_view_tmp` (
  `node_dns_name` varchar(200) NOT NULL,
  `node_monitoring_pack_sensor_name_def` varchar(100) NOT NULL,
  `Value` varchar(2000) DEFAULT NULL,
  `node_computer_db_id` int(11) NOT NULL DEFAULT '0',
  `max_action_dt` datetime NOT NULL,
  `node_id` bigint(20) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=2314;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_history_last_view_tmp`
--

LOCK TABLES `node_monitoring_history_last_view_tmp` WRITE;
/*!40000 ALTER TABLE `node_monitoring_history_last_view_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_history_last_view_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `node_monitoring_history_view`
--

DROP TABLE IF EXISTS `node_monitoring_history_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_history_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_history_view` AS SELECT 
 1 AS `node_id`,
 1 AS `node_dns_name`,
 1 AS `node_monitoring_pack_sensor_name_def`,
 1 AS `Value`,
 1 AS `node_computer_db_id`,
 1 AS `action_dt`,
 1 AS `id`,
 1 AS `total_printed_page_sensor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `node_monitoring_last_view`
--

DROP TABLE IF EXISTS `node_monitoring_last_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_last_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_last_view` AS SELECT 
 1 AS `node_id`,
 1 AS `last_request`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `node_monitoring_pack`
--

DROP TABLE IF EXISTS `node_monitoring_pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_pack` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_monitoring_pack_name` varchar(150) NOT NULL,
  `node_monitoring_pack_group_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=4096;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_pack`
--

LOCK TABLES `node_monitoring_pack` WRITE;
/*!40000 ALTER TABLE `node_monitoring_pack` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_monitoring_pack_group`
--

DROP TABLE IF EXISTS `node_monitoring_pack_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_pack_group` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `node_monitoring_pack_group_name` varchar(100) NOT NULL,
  `node_monitoring_pack_group_parent_id` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=2340;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_pack_group`
--

LOCK TABLES `node_monitoring_pack_group` WRITE;
/*!40000 ALTER TABLE `node_monitoring_pack_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_pack_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_monitoring_pack_sensor`
--

DROP TABLE IF EXISTS `node_monitoring_pack_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_pack_sensor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_monitoring_pack_sensor_type_id` smallint(6) NOT NULL,
  `node_monitoring_pack_sensor_value` varchar(1000) DEFAULT NULL,
  `node_monitoring_pack_sensor_engine_id` smallint(6) NOT NULL DEFAULT '1',
  `node_monitoring_pack_id` bigint(20) NOT NULL,
  `node_monitoring_pack_sensor_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_node_monitoring_pack_sensor_node_89g_pack_id` (`node_monitoring_pack_id`),
  KEY `idx_node_monitoring_pack_sensor_node_m22_name_id` (`node_monitoring_pack_sensor_name_id`)
) ENGINE=MyISAM AUTO_INCREMENT=274 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=399;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_pack_sensor`
--

LOCK TABLES `node_monitoring_pack_sensor` WRITE;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_monitoring_pack_sensor_engine`
--

DROP TABLE IF EXISTS `node_monitoring_pack_sensor_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_pack_sensor_engine` (
  `id` smallint(6) NOT NULL,
  `node_monitoring_pack_sensor_engine_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=2730;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_pack_sensor_engine`
--

LOCK TABLES `node_monitoring_pack_sensor_engine` WRITE;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor_engine` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_monitoring_pack_sensor_history`
--

DROP TABLE IF EXISTS `node_monitoring_pack_sensor_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_pack_sensor_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) NOT NULL,
  `node_monitoring_pack_sensor_id` bigint(20) NOT NULL,
  `action_dt` datetime NOT NULL,
  `Value` varchar(2000) DEFAULT NULL,
  `action_status_id` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `IDX_node_monitoring_pack_sens2` (`node_id`,`action_dt`),
  KEY `IDX_node_monitoring_pack_sens3` (`action_dt`),
  KEY `IDX_node_monitoring_pack_sens4` (`node_id`),
  KEY `IDX_node_monitoring_pack_senso` (`node_id`,`node_monitoring_pack_sensor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20037287 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=129;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_pack_sensor_history`
--

LOCK TABLES `node_monitoring_pack_sensor_history` WRITE;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_monitoring_pack_sensor_history_archive`
--

DROP TABLE IF EXISTS `node_monitoring_pack_sensor_history_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_pack_sensor_history_archive` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) NOT NULL,
  `node_monitoring_pack_sensor_id` bigint(20) NOT NULL,
  `action_dt` datetime NOT NULL,
  `Value` varchar(2000) DEFAULT NULL,
  `action_status_id` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_node_monitoridde_action_dt_node_id` (`action_dt`,`node_id`),
  KEY `IDX_node_monitoring_pack_senso` (`node_id`,`node_monitoring_pack_sensor_id`),
  KEY `idx_node_monitoring_pack_sensor_history_archive_action_dt` (`action_dt`),
  KEY `idx_node_monitoring_pack_sensor_history_archive_node_id` (`node_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1129510 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=129;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_pack_sensor_history_archive`
--

LOCK TABLES `node_monitoring_pack_sensor_history_archive` WRITE;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor_history_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor_history_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `node_monitoring_pack_sensor_last_history`
--

DROP TABLE IF EXISTS `node_monitoring_pack_sensor_last_history`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_pack_sensor_last_history`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_pack_sensor_last_history` AS SELECT 
 1 AS `id1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `node_monitoring_pack_sensor_last_history_archive`
--

DROP TABLE IF EXISTS `node_monitoring_pack_sensor_last_history_archive`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_pack_sensor_last_history_archive`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_pack_sensor_last_history_archive` AS SELECT 
 1 AS `id1`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `node_monitoring_pack_sensor_name`
--

DROP TABLE IF EXISTS `node_monitoring_pack_sensor_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_pack_sensor_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_monitoring_pack_sensor_name_def` varchar(100) NOT NULL,
  `node_monitoring_pack_sensor_name_def_descr` varchar(255) DEFAULT NULL,
  `total_printed_page_sensor` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_node_monitoring_packrrk_sensor_name_def` (`node_monitoring_pack_sensor_name_def`),
  KEY `IDX_node_monitoring_pack_sensor_name_total_printed_page_sensor` (`total_printed_page_sensor`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=564;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_pack_sensor_name`
--

LOCK TABLES `node_monitoring_pack_sensor_name` WRITE;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_monitoring_pack_sensor_type`
--

DROP TABLE IF EXISTS `node_monitoring_pack_sensor_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_pack_sensor_type` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `node_monitoring_pack_sensor_name` varchar(100) NOT NULL,
  `node_monitoring_pack_sensor_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=5461;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_pack_sensor_type`
--

LOCK TABLES `node_monitoring_pack_sensor_type` WRITE;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_pack_sensor_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `node_monitoring_sensor_view`
--

DROP TABLE IF EXISTS `node_monitoring_sensor_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_sensor_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_sensor_view` AS SELECT 
 1 AS `id`,
 1 AS `node_monitoring_pack_sensor_type_id`,
 1 AS `node_monitoring_pack_sensor_value`,
 1 AS `node_monitoring_pack_sensor_engine_id`,
 1 AS `node_monitoring_pack_id`,
 1 AS `node_monitoring_pack_sensor_name_id`,
 1 AS `node_monitoring_pack_sensor_name_def`,
 1 AS `node_mon_id`,
 1 AS `node_id`,
 1 AS `node_monitoring_pack_name`,
 1 AS `node_dns_name`,
 1 AS `node_ip_address`,
 1 AS `node_mac_address`,
 1 AS `node_computer_db_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `node_monitoring_status`
--

DROP TABLE IF EXISTS `node_monitoring_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_status` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) NOT NULL,
  `engine_id` smallint(6) NOT NULL,
  `action_dt` datetime NOT NULL,
  `Value` varchar(2000) NOT NULL,
  `action_status_id` smallint(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IDX_node_monitoring_status` (`action_dt`,`node_id`),
  KEY `IDX_node_monitoring_status_nod` (`node_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2132118 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=56;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_status`
--

LOCK TABLES `node_monitoring_status` WRITE;
/*!40000 ALTER TABLE `node_monitoring_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `node_monitoring_status_last2_view`
--

DROP TABLE IF EXISTS `node_monitoring_status_last2_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_status_last2_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_status_last2_view` AS SELECT 
 1 AS `node_id`,
 1 AS `max_action_dt`,
 1 AS `engine_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `node_monitoring_status_last3_view`
--

DROP TABLE IF EXISTS `node_monitoring_status_last3_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_status_last3_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_status_last3_view` AS SELECT 
 1 AS `node_id`,
 1 AS `engine_id`,
 1 AS `Value`,
 1 AS `action_status_id`,
 1 AS `max_action_dt`,
 1 AS `node_monitoring_pack_sensor_engine_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `node_monitoring_status_last4_view`
--

DROP TABLE IF EXISTS `node_monitoring_status_last4_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_status_last4_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_status_last4_view` AS SELECT 
 1 AS `monitoring_status`,
 1 AS `node_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `node_monitoring_status_last_view`
--

DROP TABLE IF EXISTS `node_monitoring_status_last_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_status_last_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_status_last_view` AS SELECT 
 1 AS `node_id`,
 1 AS `engine_id`,
 1 AS `Value`,
 1 AS `action_status_id`,
 1 AS `max_action_dt`,
 1 AS `node_monitoring_pack_sensor_engine_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `node_monitoring_status_name`
--

DROP TABLE IF EXISTS `node_monitoring_status_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node_monitoring_status_name` (
  `id` smallint(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=24;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_monitoring_status_name`
--

LOCK TABLES `node_monitoring_status_name` WRITE;
/*!40000 ALTER TABLE `node_monitoring_status_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_monitoring_status_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `node_monitoring_status_view`
--

DROP TABLE IF EXISTS `node_monitoring_status_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_status_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_status_view` AS SELECT 
 1 AS `host`,
 1 AS `type`,
 1 AS `system`,
 1 AS `last_request`,
 1 AS `monitoring_packs`,
 1 AS `node_monitoring_enable`,
 1 AS `monitoring_status`,
 1 AS `has_alarm`,
 1 AS `id`,
 1 AS `atlas_id`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `node_monitoring_view`
--

DROP TABLE IF EXISTS `node_monitoring_view`;
/*!50001 DROP VIEW IF EXISTS `node_monitoring_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_monitoring_view` AS SELECT 
 1 AS `id`,
 1 AS `node_id`,
 1 AS `node_monitoring_pack_id`,
 1 AS `node_monitoring_time`,
 1 AS `node_monitoring_last_request`,
 1 AS `node_monitoring_next_request`,
 1 AS `can_exec_pack`,
 1 AS `node_dns_name`,
 1 AS `node_ip_address`,
 1 AS `node_mac_address`,
 1 AS `node_computer_db_id`,
 1 AS `node_monitoring_pack_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `node_view`
--

DROP TABLE IF EXISTS `node_view`;
/*!50001 DROP VIEW IF EXISTS `node_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_view` AS SELECT 
 1 AS `id`,
 1 AS `host`,
 1 AS `type`,
 1 AS `system`,
 1 AS `last_request`,
 1 AS `monitoring_packs`,
 1 AS `atlas_id`,
 1 AS `atlas_name`,
 1 AS `node_monitoring_enable`,
 1 AS `description`,
 1 AS `user_id`,
 1 AS `user_full_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `node_view2`
--

DROP TABLE IF EXISTS `node_view2`;
/*!50001 DROP VIEW IF EXISTS `node_view2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `node_view2` AS SELECT 
 1 AS `id`,
 1 AS `host`,
 1 AS `type`,
 1 AS `system`,
 1 AS `last_request`,
 1 AS `monitoring_packs`,
 1 AS `atlas_id`,
 1 AS `atlas_name`,
 1 AS `node_monitoring_enable`,
 1 AS `description`,
 1 AS `device_type_id`,
 1 AS `node_computer_db_id`,
 1 AS `node_dns_name`,
 1 AS `node_ip_address`,
 1 AS `node_mac_address`,
 1 AS `user_id`,
 1 AS `user_full_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `producer`
--

DROP TABLE IF EXISTS `producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_manufacturer_id` int(11) NOT NULL,
  `producer_id` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=871 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=75;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producer`
--

LOCK TABLES `producer` WRITE;
/*!40000 ALTER TABLE `producer` DISABLE KEYS */;
/*!40000 ALTER TABLE `producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_results`
--

DROP TABLE IF EXISTS `show_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_monitoring_pack_id` int(11) NOT NULL,
  `formula` varchar(3000) DEFAULT NULL,
  `header_id` int(11) NOT NULL,
  `control_type_id` smallint(6) NOT NULL DEFAULT '1' COMMENT '1 -text, 2 - progress',
  `control_color_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=cp1251 AVG_ROW_LENGTH=86;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_results`
--

LOCK TABLES `show_results` WRITE;
/*!40000 ALTER TABLE `show_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `show_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_printed_page_view`
--

DROP TABLE IF EXISTS `total_printed_page_view`;
/*!50001 DROP VIEW IF EXISTS `total_printed_page_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_printed_page_view` AS SELECT 
 1 AS `Value`,
 1 AS `node_computer_db_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `error_login_count` tinyint(4) DEFAULT '0',
  `hash` varchar(255) DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `photo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_user` (`active`,`error_login_count`,`email`,`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'nidb1'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `event1` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = cp1251 */ ;;
/*!50003 SET character_set_results = cp1251 */ ;;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`ni_user`@`%`*/ /*!50106 EVENT `event1` ON SCHEDULE EVERY 1 WEEK STARTS '2017-11-03 18:39:03' ON COMPLETION PRESERVE ENABLE DO BEGIN
 
REPAIR TABLE atlas, default_monitoring_pack_for_device_type, default_monitoring_pack_for_device_type_date_range, device, device_category, device_class, device_manufacturer, device_subcategory, device_type, image_db, node, node_inventory, node_inventory_availability, node_inventory_bios, node_inventory_computer_system, node_inventory_computer_system_admin_password_status, node_inventory_computer_system_domain_role, node_inventory_computer_system_power_state, node_inventory_computer_system_sku, node_inventory_computer_system_thermal_state, node_inventory_computer_system_type, node_inventory_computer_system_wake_up_type, node_inventory_config_manager_error_code, node_inventory_disk, node_inventory_display_adapter, node_inventory_display_adapter_video_architecture, node_inventory_display_adapter_video_memory_type, node_inventory_installed_software, node_inventory_monitor, node_inventory_monitor_display_type, node_inventory_motherboard, node_inventory_network_adapter, node_inventory_network_adapter_connection_status, node_inventory_network_adapter_type, node_inventory_on_board_device, node_inventory_on_board_device_type, node_inventory_physical_memory, node_inventory_physical_memory_form_factor, node_inventory_physical_memory_type, node_inventory_physical_memory_type_detail, node_inventory_processor, node_inventory_processor_architecture, node_inventory_processor_cpu_status, node_inventory_processor_type, node_inventory_qfe_update, node_inventory_sound, node_inventory_startup_program, node_monitoring, node_monitoring_alarm, node_monitoring_alarm_action, node_monitoring_alarm_node, node_monitoring_alarm_node_history, node_monitoring_date_range, node_monitoring_date_range_day, node_monitoring_date_range_type, node_monitoring_history_last_view_tmp, node_monitoring_pack, node_monitoring_pack_group, node_monitoring_pack_sensor, node_monitoring_pack_sensor_engine, node_monitoring_pack_sensor_history, node_monitoring_pack_sensor_history_archive, node_monitoring_pack_sensor_name, node_monitoring_pack_sensor_type, node_monitoring_status, node_monitoring_status_name, producer, show_results QUICK;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `event_send_to_archive` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = cp1251 */ ;;
/*!50003 SET character_set_results = cp1251 */ ;;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`ni_user`@`%`*/ /*!50106 EVENT `event_send_to_archive` ON SCHEDULE EVERY 1 MONTH STARTS '2016-12-24 13:11:43' ON COMPLETION PRESERVE ENABLE DO BEGIN

declare wdate DATE;

  SET wdate := ADDDATE(SYSDATE(), INTERVAL -1 MONTH); 


 INSERT INTO node_monitoring_pack_sensor_history_archive ( node_id, node_monitoring_pack_sensor_id, action_dt, Value, action_status_id)
SELECT
  node_monitoring_pack_sensor_history.node_id,
  node_monitoring_pack_sensor_history.node_monitoring_pack_sensor_id,
  node_monitoring_pack_sensor_history.action_dt,
  node_monitoring_pack_sensor_history.Value,
  node_monitoring_pack_sensor_history.action_status_id
FROM node_monitoring_pack_sensor_history
WHERE node_monitoring_pack_sensor_history.action_dt <= wdate; 

DELETE from node_monitoring_pack_sensor_history WHERE node_monitoring_pack_sensor_history.action_dt <= wdate;


END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'nidb1'
--
/*!50003 DROP FUNCTION IF EXISTS `CanExecutePack` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CanExecutePack`(NodeMonitoringNextRequest DATETIME, NodeMonitoringEnable TINYINT) RETURNS tinyint(4)
BEGIN
 
 IF ( ISNULL( NodeMonitoringNextRequest) OR NodeMonitoringEnable = 0) THEN
    RETURN 0;
  END IF;

 IF (NodeMonitoringNextRequest = NOW()) THEN
   RETURN  1;
 END IF;
  
RETURN 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FormatDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FormatDate`(dt datetime) RETURNS varchar(20) CHARSET cp1251
BEGIN

  DECLARE dts varchar(20) DEFAULT 'never';
  DECLARE sec bigint;

  -- TIMESTAMPDIFF(SECOND, end_date, start_date)
  -- TIMEDIFF(NOW(),`datetimecolumn`) - разница типа TIME
  -- TIME_TO_SEC(TIMEDIFF(NOW(),`datetimecolumn `)) - разница в секундах


  IF (ISNULL(dt)) THEN
    RETURN dts;
  END IF;



--  SET sec :=  IFNULL(TIME_TO_SEC(TIMEDIFF( NOW(), dt)), 0);
      
 
  -- IF (sec < 60) THEN
   --  SET dts := '< 1 min. ago';
--   ELSEIF (sec = 60) THEN
--     SET dts := '1 min. ago';
--   ELSEIF (sec < 120) THEN
--     SET dts := '< 2 min. ago';
--   ELSEIF (sec = 120) THEN
--     SET dts := '2 min. ago';
--   ELSEIF (sec < 180) THEN
--     SET dts := '< 3 min. ago';
--   ELSEIF (sec = 180) THEN
--     SET dts := '3 min. ago';
--   ELSEIF (sec < 240) THEN
--     SET dts := '< 4 min. ago';
--   ELSEIF (sec = 240) THEN
--     SET dts := '4 min. ago';
--   ELSEIF (sec < 300) THEN
--     SET dts := '< 5 min. ago';
--   ELSEIF (sec = 300) THEN
--     SET dts := '5 min. ago';
-- 
 --  ELSE
    SET dts := DATE_FORMAT(dt, '%d.%m.%Y %T');


--  END IF;




  RETURN dts;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GenQuery` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`%` FUNCTION `GenQuery`(node_computer_db_id INT) RETURNS text CHARSET cp1251
BEGIN

DECLARE sql_str text DEFAULT '';
DECLARE r0 datetime;


 SET group_concat_max_len = 20480; -- 20 мб

SELECT GROUP_CONCAT( CONCAT('SELECT ', `control_type_id`, ' as control_type_id, ' , `formula`, ' AS value,  GetActionDate(' , `header_id`, ', ', `node_computer_db_id`, ') AS max_action_dt,  GetHeader(' , `header_id`, ', ', `node_computer_db_id`, ', ', `control_type_id`, ') AS header' ) SEPARATOR ' UNION ') FROM show_results f WHERE f.node_monitoring_pack_id IN (select g.node_monitoring_pack_id from monitoring_pack_for_computer_db_id_view g where g.node_computer_db_id = node_computer_db_id) INTO sql_str;
 
 SET @sql_str :=  REPLACE(REPLACE(sql_str, '}','\')'), '{',CONCAT('GetValue(', node_computer_db_id, ', \''));

 SET group_concat_max_len = 1024; -- 1 мб

   RETURN @sql_str;
   
   

-- SELECT REPLACE(REPLACE(f.formula, '}','\')'), '{','GetValue(node_computer_db_id, \'') AS value , GetHeader(f.header_id) AS header FROM show_results f WHERE f.node_monitoring_pack_id IN (select g.node_monitoring_pack_id from monitoring_pack_for_computer_db_id_view g where g.node_computer_db_id = node_computer_db_id);

-- SELECT GROUP_CONCAT( CONCAT('SELECT ', `control_type_id`, ' as control_type_id, ' , `formula`, ' AS value, GetHeader(' , `header_id`, ') AS header' ) SEPARATOR ' UNION ') FROM show_results f WHERE f.node_monitoring_pack_id IN (select g.node_monitoring_pack_id from monitoring_pack_for_computer_db_id_view g where g.node_computer_db_id = node_computer_db_id) INTO r;
 
-- RETURN  REPLACE(REPLACE(r, '}','\')'), '{',CONCAT('GetValue(', node_computer_db_id, ', \''));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetActionDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`%` FUNCTION `GetActionDate`(header_id int, node_computer_db_id int) RETURNS datetime
BEGIN


DECLARE ret1 varchar(100) DEFAULT '';
DECLARE ret2 datetime;
  
SELECT   IFNULL(f0.node_monitoring_pack_sensor_name_def, '')  FROM node_monitoring_pack_sensor_name f0 where f0.id = header_id LIMIT 0,1  INTO ret1;

select MAX(f.max_action_dt) from node_monitoring_history_last_view_tmp f where f.node_computer_db_id = node_computer_db_id AND f.node_monitoring_pack_sensor_name_def = node_monitoring_pack_sensor_name_def LIMIT 0,1 INTO ret2;

 -- SET ret := ret3;

 
RETURN ret2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetActionDate2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`%` FUNCTION `GetActionDate2`(header_id int, node_id int) RETURNS datetime
BEGIN


DECLARE ret1 varchar(100) DEFAULT '';
DECLARE ret2 datetime;
  
SELECT   IFNULL(f0.node_monitoring_pack_sensor_name_def, '')  FROM node_monitoring_pack_sensor_name f0 where f0.id = header_id LIMIT 0,1  INTO ret1;

select MAX(f.max_action_dt) from node_monitoring_history_last_view_tmp f where f.node_id = node_id AND f.node_monitoring_pack_sensor_name_def = node_monitoring_pack_sensor_name_def LIMIT 0,1 INTO ret2;

 -- SET ret := ret3;

 
RETURN ret2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetHeader` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`%` FUNCTION `GetHeader`(header_id int, node_computer_db_id int, control_type_id smallINT) RETURNS varchar(2260) CHARSET cp1251
BEGIN

DECLARE ret varchar(2260) DEFAULT '';
DECLARE ret1 varchar(100) DEFAULT '';
DECLARE ret2 varchar(2000) DEFAULT '';
DECLARE ret3 varchar(255) DEFAULT '';

 
SELECT   IFNULL(f.node_monitoring_pack_sensor_name_def, '') , IFNULL(f.node_monitoring_pack_sensor_name_def_descr, '') INTO ret1, ret3 FROM node_monitoring_pack_sensor_name f where f.id = header_id LIMIT 0,1 ;

  SET ret := ret3;


IF(control_type_id = 2) THEN
  SELECT GetValue(node_computer_db_id, ret1) INTO ret2;
SET ret := CONCAT(ret3, ' (', ret2, ')');

  END IF;

RETURN ret;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetHeader2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`%` FUNCTION `GetHeader2`(header_id int, node_id int, control_type_id smallINT) RETURNS varchar(2260) CHARSET cp1251
BEGIN

DECLARE ret varchar(2260) DEFAULT '';
DECLARE ret1 varchar(100) DEFAULT '';
DECLARE ret2 varchar(2000) DEFAULT '';
DECLARE ret3 varchar(255) DEFAULT '';

 
SELECT   IFNULL(f.node_monitoring_pack_sensor_name_def, '') , IFNULL(f.node_monitoring_pack_sensor_name_def_descr, '') INTO ret1, ret3 FROM node_monitoring_pack_sensor_name f where f.id = header_id LIMIT 0,1 ;

  SET ret := ret3;


IF(control_type_id = 2) THEN
  SELECT GetValue2(node_id, ret1) INTO ret2;
SET ret := CONCAT(ret3, ' (', ret2, ')');

  END IF;

RETURN ret;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetMonitorigStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`localhost` FUNCTION `GetMonitorigStatus`(NodeId BIGINT) RETURNS varchar(5000) CHARSET cp1251
BEGIN

DECLARE r varchar(5000) DEFAULT '(none)';


SELECT GROUP_CONCAT(CONCAT(`node_monitoring_pack_sensor_engine_name`,'|' , engine_id,'|', max_action_dt,'|', action_status_id,'|', Value )   SEPARATOR ';') AS monitoring_status FROM `node_monitoring_status_last3_view` WHERE `node_id` = NodeId  INTO r;

RETURN r;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetMonitoringPack` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetMonitoringPack`(NodeId BIGINT) RETURNS varchar(5000) CHARSET cp1251
BEGIN

DECLARE r varchar(5000) DEFAULT '(none)';

 SELECT GROUP_CONCAT(CONCAT(`node_monitoring_pack_name`,' (every ' , `node_monitoring_time`, ' min)')   SEPARATOR ', ') FROM `node_monitoring_view` WHERE `node_id` = NodeId  INTO r;

RETURN r;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetMonitoringPackDef` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetMonitoringPackDef`(TypeId BIGINT) RETURNS varchar(5000) CHARSET cp1251
BEGIN

DECLARE r varchar(5000) DEFAULT '(none)';

 SELECT GROUP_CONCAT( CONCAT(`node_monitoring_pack_name`,' (every ' , `node_monitoring_time`, ' min)') SEPARATOR ', ') FROM `default_monitoring_pack_for_device_type_view` WHERE `device_type_id` = TypeId  INTO r;

RETURN r;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetNextRequestDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetNextRequestDate`( NodeMonitoringId bigint, NodeMonitoringTime int, NodeMonitoringLastRequest datetime ) RETURNS datetime
BEGIN
DECLARE rdt datetime DEFAULT NULL;
DECLARE cdt datetime DEFAULT NOW();
DECLARE ndt datetime DEFAULT TIMESTAMPADD(MINUTE, NodeMonitoringTime, IFNULL(NodeMonitoringLastRequest, cdt));

DECLARE done tinyint DEFAULT 0;
DECLARE var_node_monitoring_date_range_start time;
DECLARE var_node_monitoring_date_range_end time;
DECLARE var_node_monitoring_date_range_type_id smallint;
DECLARE var_node_monitoring_date_range_day_id smallint;



DECLARE cursor_monitoring_date CURSOR FOR SELECT
  node_monitoring_date_range.node_monitoring_date_range_start,
  node_monitoring_date_range.node_monitoring_date_range_end,
  node_monitoring_date_range.node_monitoring_date_range_type_id,
  node_monitoring_date_range.node_monitoring_date_range_day_id
FROM node_monitoring_date_range
WHERE node_monitoring_date_range.node_monitoring_id = NodeMonitoringId ORDER BY var_node_monitoring_date_range_day_id DESC;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
  
OPEN cursor_monitoring_date;

WHILE done = 0 DO
  FETCH cursor_monitoring_date INTO var_node_monitoring_date_range_start,var_node_monitoring_date_range_end,var_node_monitoring_date_range_type_id,var_node_monitoring_date_range_day_id;
 
-- var_node_monitoring_date_range_day_id  
-- 1	Sunday
-- 2	Monday
-- 3	Tuesday
-- 4	Wednesday
-- 5	Thursday
-- 6	Friday
-- 7	Saturday

-- 8	All

-- var_node_monitoring_date_range_type_id
--   1	all the time

--   2	never
--   3	between
--   4	except
     set rdt:= TIMESTAMPADD(MINUTE,NodeMonitoringTime, NodeMonitoringLastRequest);

  IF( var_node_monitoring_date_range_type_id = 1 AND var_node_monitoring_date_range_day_id = 8) THEN
    IF(ISNULL(NodeMonitoringLastRequest) OR ndt < cdt) THEN
       set rdt:= cdt;
   

    END IF;
 
    SET done:= 1;
   
  END IF;
   
  IF( done = 0 AND var_node_monitoring_date_range_type_id = 2 AND var_node_monitoring_date_range_day_id = 8) THEN
    
    set rdt:= NULL;
    set done:= 1;
  END IF;
  
  IF( done = 0 AND  var_node_monitoring_date_range_day_id IN (1, 2, 3, 4, 5, 6, 7) ) THEN
    -- weekday DAYOFWEEK SELECT SEC_TO_TIME
     -- select TIMESTAMPADD(DAY,-WEEKDAY(`time`)-7,DATE(`time`)) as `WeekStart`,TIMESTAMPADD(DAY,6-WEEKDAY(`time`)-7,DATE(`time`)) as `WeekEnd` from ..


-- IF var_node_monitoring_date_range_day_id =  DAYOFWEEK (cdt) THEN

-- END IF;

    set rdt:= NULL;
    set done:= 1;
  END IF;
   
  
  
    

END WHILE;

 
RETURN rdt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetNextRequestDate11` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetNextRequestDate11`( NodeMonitoringId bigint, NodeMonitoringTime int, NodeMonitoringLastRequest datetime  ) RETURNS datetime
BEGIN
DECLARE rdt datetime DEFAULT NULL;
DECLARE cdt datetime DEFAULT NOW();
DECLARE ndt datetime DEFAULT TIMESTAMPADD(MINUTE, NodeMonitoringTime, IFNULL(NodeMonitoringLastRequest, cdt));

DECLARE done tinyint DEFAULT 0;
DECLARE var_node_monitoring_date_range_start time;
DECLARE var_node_monitoring_date_range_end time;
DECLARE var_node_monitoring_date_range_type_id smallint;
DECLARE var_node_monitoring_date_range_day_id smallint;



DECLARE cursor_monitoring_date CURSOR FOR SELECT
  node_monitoring_date_range.node_monitoring_date_range_start,
  node_monitoring_date_range.node_monitoring_date_range_end,
  node_monitoring_date_range.node_monitoring_date_range_type_id,
  node_monitoring_date_range.node_monitoring_date_range_day_id
FROM node_monitoring_date_range
WHERE node_monitoring_date_range.node_monitoring_id = NodeMonitoringId ORDER BY var_node_monitoring_date_range_day_id DESC;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
  
OPEN cursor_monitoring_date;

WHILE done = 0 DO
  FETCH cursor_monitoring_date INTO var_node_monitoring_date_range_start,var_node_monitoring_date_range_end,var_node_monitoring_date_range_type_id,var_node_monitoring_date_range_day_id;
 
-- var_node_monitoring_date_range_day_id  
-- 1	Sunday
-- 2	Monday
-- 3	Tuesday
-- 4	Wednesday
-- 5	Thursday
-- 6	Friday
-- 7	Saturday

-- 8	All

-- var_node_monitoring_date_range_type_id
--   1	all the time

--   2	never
--   3	between
--   4	except
     
    IF( ISNULL(NodeMonitoringLastRequest) ) THEN
       set NodeMonitoringLastRequest:= NOW();
    END IF;
  
     set rdt:= TIMESTAMPADD(MINUTE,NodeMonitoringTime, NodeMonitoringLastRequest);

  IF( var_node_monitoring_date_range_type_id = 1 AND var_node_monitoring_date_range_day_id = 8) THEN
    IF( ndt < cdt) THEN
       set rdt:= cdt;
   

    END IF;
 
    SET done:= 1;
   
  END IF;
   
  IF( done = 0 AND var_node_monitoring_date_range_type_id = 2 AND var_node_monitoring_date_range_day_id = 8) THEN
    
    set rdt:= NULL;
    set done:= 1;
  END IF;
  
  IF( done = 0 AND  var_node_monitoring_date_range_day_id IN (1, 2, 3, 4, 5, 6, 7) ) THEN
    -- weekday DAYOFWEEK SELECT SEC_TO_TIME
     -- select TIMESTAMPADD(DAY,-WEEKDAY(`time`)-7,DATE(`time`)) as `WeekStart`,TIMESTAMPADD(DAY,6-WEEKDAY(`time`)-7,DATE(`time`)) as `WeekEnd` from ..


-- IF var_node_monitoring_date_range_day_id =  DAYOFWEEK (cdt) THEN

-- END IF;

    set rdt:= NULL;
    set done:= 1;
  END IF;
   
  
  
    

END WHILE;

 
RETURN rdt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetValue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`%` FUNCTION `GetValue`(node_computer_db_id INT, node_monitoring_pack_sensor_name_def VARCHAR(100)) RETURNS varchar(2000) CHARSET cp1251
BEGIN

DECLARE ret varchar(2000) DEFAULT '';

select IFNULL(f.Value, '') from node_monitoring_history_last_view_tmp f where f.node_computer_db_id = node_computer_db_id AND f.node_monitoring_pack_sensor_name_def = node_monitoring_pack_sensor_name_def INTO ret;

RETURN ret;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetValue2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`%` FUNCTION `GetValue2`(node_id INT, node_monitoring_pack_sensor_name_def VARCHAR(100)) RETURNS varchar(2000) CHARSET cp1251
BEGIN

DECLARE ret varchar(2000) DEFAULT '';

select IFNULL(f.Value, '') from node_monitoring_history_last_view_tmp f where f.node_id = node_id AND f.node_monitoring_pack_sensor_name_def = node_monitoring_pack_sensor_name_def INTO ret;

RETURN ret;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckAlarm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`%` PROCEDURE `CheckAlarm`(IN NodeId BIGINT, IN AlarmId BIGINT, IN IsPresent SMALLINT)
BEGIN

    IF IsPresent = 1 THEN
     
    INSERT IGNORE INTO node_monitoring_alarm_node
    SET node_id = NodeId,
    alarm_id = AlarmId,
    status_id = 1,
    alarm_time = SYSDATE() ;
      ELSE
      DELETE FROM node_monitoring_alarm_node WHERE node_id = NodeId AND alarm_id = AlarmId;

  END IF;


  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMonitoringValue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`%` PROCEDURE `GetMonitoringValue`(IN node_computer_db_id INT)
BEGIN

DECLARE sql_str text DEFAULT '';
DECLARE r0 datetime;

 DELETE FROM node_monitoring_history_last_view_tmp  WHERE node_computer_db_id = node_computer_db_id;
 INSERT INTO node_monitoring_history_last_view_tmp (node_dns_name, node_monitoring_pack_sensor_name_def, Value, node_computer_db_id, max_action_dt, node_id)
   SELECT
     tt.node_dns_name,
     tt.node_monitoring_pack_sensor_name_def,
     tt.Value,
     tt.node_computer_db_id,
     tt.max_action_dt,
     tt.node_id
   FROM node_monitoring_history_last_view tt WHERE tt.node_computer_db_id = node_computer_db_id;

IF NOT EXISTS (SELECT node_id FROM node_monitoring_history_last_view_tmp  WHERE node_computer_db_id = node_computer_db_id) THEN
 INSERT INTO node_monitoring_history_last_view_tmp (node_dns_name, node_monitoring_pack_sensor_name_def, Value, node_computer_db_id, max_action_dt, node_id)
   SELECT
     tt0.node_dns_name,
     tt0.node_monitoring_pack_sensor_name_def,
     tt0.Value,
     tt0.node_computer_db_id,
     tt0.max_action_dt,
     tt0.node_id
   FROM node_monitoring_history_archive_last_view tt0 WHERE tt0.node_computer_db_id = node_computer_db_id;


END IF;


 SET group_concat_max_len = 20480; -- 20 мб

SELECT GROUP_CONCAT( CONCAT('SELECT ', `control_type_id`, ' as control_type_id, \'', `control_color_name`, '\' as control_color_name, ' , `formula`, ' AS value,  GetActionDate(' , `header_id`, ', ', `node_computer_db_id`, ') AS max_action_dt,  GetHeader(' , `header_id`, ', ', `node_computer_db_id`, ', ', `control_type_id`, ') AS header' ) SEPARATOR ' UNION ') FROM show_results f WHERE f.node_monitoring_pack_id IN (select g.node_monitoring_pack_id from monitoring_pack_for_computer_db_id_view g where g.node_computer_db_id = node_computer_db_id) INTO sql_str;
 
 SET @sql_str :=  REPLACE(REPLACE(sql_str, '}','\')'), '{',CONCAT('GetValue(', node_computer_db_id, ', \''));
 
 -- SELECT @sql_str;
  PREPARE sql_ FROM @sql_str;
  EXECUTE sql_;

   SET group_concat_max_len = 1024; -- 1 мб

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMonitoringValue2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`localhost` PROCEDURE `GetMonitoringValue2`(IN node_id BIGINT)
BEGIN


DECLARE sql_str text DEFAULT '';
DECLARE r0 datetime;

 DELETE FROM node_monitoring_history_last_view_tmp  WHERE node_id = node_id;
 INSERT INTO node_monitoring_history_last_view_tmp (node_dns_name, node_monitoring_pack_sensor_name_def, Value, node_computer_db_id, max_action_dt, node_id)
   SELECT
     tt.node_dns_name,
     tt.node_monitoring_pack_sensor_name_def,
     tt.Value,
     tt.node_computer_db_id,
     tt.max_action_dt,
     tt.node_id
   FROM node_monitoring_history_last_view tt WHERE tt.node_id = node_id;

IF NOT EXISTS (SELECT node_id FROM node_monitoring_history_last_view_tmp  WHERE node_computer_db_id = node_computer_db_id) THEN
 INSERT INTO node_monitoring_history_last_view_tmp (node_dns_name, node_monitoring_pack_sensor_name_def, Value, node_computer_db_id, max_action_dt, node_id)
   SELECT
     tt0.node_dns_name,
     tt0.node_monitoring_pack_sensor_name_def,
     tt0.Value,
     tt0.node_computer_db_id,
     tt0.max_action_dt,
     tt0.node_id
   FROM node_monitoring_history_archive_last_view tt0 WHERE tt0.node_id = node_id;


END IF;



 SET group_concat_max_len = 20480; -- 20 мб

SELECT GROUP_CONCAT( CONCAT('SELECT ', `control_type_id`, ' as control_type_id, \'', `control_color_name`, '\' as control_color_name, ' , `formula`, ' AS value,  GetActionDate2(' , `header_id`, ', ', `node_id`, ') AS max_action_dt,  GetHeader2(' , `header_id`, ', ', `node_id`, ', ', `control_type_id`, ') AS header' ) SEPARATOR ' UNION ') FROM show_results f WHERE f.node_monitoring_pack_id IN (select g.node_monitoring_pack_id from monitoring_pack_for_node_id_view g where g.node_id = node_id) INTO sql_str;
 
 SET @sql_str :=  REPLACE(REPLACE(sql_str, '}','\')'), '{',CONCAT('GetValue2(', node_id, ', \''));
 
  -- SELECT @sql_str;
   PREPARE sql_ FROM @sql_str;
   EXECUTE sql_;

   SET group_concat_max_len = 1024; -- 1 мб


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetWeekRange` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`%` PROCEDURE `GetWeekRange`(IN cd DATETIME)
BEGIN
 select TIMESTAMPADD(DAY,-WEEKDAY(cd),DATE(cd)) as `WeekStart`,TIMESTAMPADD(DAY,6-WEEKDAY(cd),DATE(cd)) as `WeekEnd`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MoveHistoryToArchive` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp1251 */ ;
/*!50003 SET character_set_results = cp1251 */ ;
/*!50003 SET collation_connection  = cp1251_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`ni_user`@`%` PROCEDURE `MoveHistoryToArchive`(IN at_date DATE)
BEGIN

INSERT INTO node_monitoring_pack_sensor_history_archive ( node_id, node_monitoring_pack_sensor_id, action_dt, Value, action_status_id)
  SELECT
    node_monitoring_pack_sensor_history.node_id,
    node_monitoring_pack_sensor_history.node_monitoring_pack_sensor_id,
    node_monitoring_pack_sensor_history.action_dt,
    node_monitoring_pack_sensor_history.Value,
    node_monitoring_pack_sensor_history.action_status_id
  FROM node_monitoring_pack_sensor_history WHERE action_dt < at_date;

DELETE  FROM node_monitoring_pack_sensor_history WHERE action_dt < at_date;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `atlas_view`
--

/*!50001 DROP VIEW IF EXISTS `atlas_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `atlas_view` AS select `atlas`.`id` AS `id`,`atlas`.`atlas_name` AS `atlas_name`,ifnull(`atlas`.`atlas_description`,'') AS `atlas_description`,`atlas`.`atlas_parent_id` AS `atlas_parent_id`,ifnull(`atlas`.`atlas_network`,'0.0.0.0') AS `atlas_network`,`atlas`.`atlas_network_mask` AS `atlas_network_mask`,(select count(`node`.`id`) AS `expr1` from `node` where (`node`.`atlas_id` = `atlas`.`id`)) AS `node_count`,(select count(`node`.`id`) AS `expr1` from `node` where ((`node`.`node_monitoring_enable` = 0) and (`node`.`atlas_id` = `atlas`.`id`))) AS `node_disabled_count`,(select count(`node`.`id`) AS `expr1` from `node` where ((`node`.`node_monitoring_enable` = 1) and (`node`.`atlas_id` = `atlas`.`id`))) AS `node_enabled_count` from `atlas` where (`atlas`.`atlas_is_network` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `default_monitoring_pack_for_device_type_2_view`
--

/*!50001 DROP VIEW IF EXISTS `default_monitoring_pack_for_device_type_2_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `default_monitoring_pack_for_device_type_2_view` AS select distinct `default_monitoring_pack_for_device_type`.`device_type_id` AS `device_type_id`,`device_type_view`.`device_subcategory_name` AS `device_subcategory_name`,`GetMonitoringPackDef`(`default_monitoring_pack_for_device_type`.`device_type_id`) AS `monitoring_packs` from (`device_type_view` join `default_monitoring_pack_for_device_type` on((`device_type_view`.`id` = `default_monitoring_pack_for_device_type`.`device_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `default_monitoring_pack_for_device_type_view`
--

/*!50001 DROP VIEW IF EXISTS `default_monitoring_pack_for_device_type_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `default_monitoring_pack_for_device_type_view` AS select `default_monitoring_pack_for_device_type`.`id` AS `id`,`default_monitoring_pack_for_device_type`.`device_type_id` AS `device_type_id`,`default_monitoring_pack_for_device_type`.`node_monitoring_pack_id` AS `node_monitoring_pack_id`,`default_monitoring_pack_for_device_type`.`node_monitoring_time` AS `node_monitoring_time`,`node_monitoring_pack`.`node_monitoring_pack_name` AS `node_monitoring_pack_name` from (`default_monitoring_pack_for_device_type` join `node_monitoring_pack` on((`default_monitoring_pack_for_device_type`.`node_monitoring_pack_id` = `node_monitoring_pack`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `device_type_view`
--

/*!50001 DROP VIEW IF EXISTS `device_type_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `device_type_view` AS select `device_type`.`id` AS `id`,`device_type`.`device_manufacturer_id` AS `device_manufacturer_id`,`device_type`.`device_subcategory_id` AS `device_subcategory_id`,`device_type`.`device_category_id` AS `device_category_id`,`device_type`.`device_class_id` AS `device_class_id`,`device_subcategory`.`image_db_id` AS `image_db_id`,`image_db`.`image_db_16` AS `image_db_16`,`image_db`.`image_db_24` AS `image_db_24`,`image_db`.`image_db_64` AS `image_db_64`,`image_db`.`image_db_name` AS `image_db_name`,`device_subcategory`.`device_subcategory_name` AS `device_subcategory_name` from ((`device_type` join `device_subcategory` on((`device_type`.`device_subcategory_id` = `device_subcategory`.`id`))) join `image_db` on((`device_subcategory`.`image_db_id` = `image_db`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `monitoring_next_request_date`
--

/*!50001 DROP VIEW IF EXISTS `monitoring_next_request_date`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `monitoring_next_request_date` AS select ifnull(min(`node_monitoring_view`.`node_monitoring_next_request`),'') AS `node_monitoring_next_request` from `node_monitoring_view` where (`node_monitoring_view`.`can_exec_pack` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `monitoring_pack_for_computer_db_id_view`
--

/*!50001 DROP VIEW IF EXISTS `monitoring_pack_for_computer_db_id_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `monitoring_pack_for_computer_db_id_view` AS select `node`.`node_computer_db_id` AS `node_computer_db_id`,`node_monitoring`.`node_monitoring_pack_id` AS `node_monitoring_pack_id` from (`node` join `node_monitoring` on((`node`.`id` = `node_monitoring`.`node_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `monitoring_pack_for_node_id_view`
--

/*!50001 DROP VIEW IF EXISTS `monitoring_pack_for_node_id_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `monitoring_pack_for_node_id_view` AS select `node`.`id` AS `node_id`,`node_monitoring`.`node_monitoring_pack_id` AS `node_monitoring_pack_id` from (`node` join `node_monitoring` on((`node`.`id` = `node_monitoring`.`node_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring2_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring2_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring2_view` AS select `node_monitoring`.`id` AS `id`,`node_monitoring`.`node_id` AS `node_id`,`node_monitoring`.`node_monitoring_pack_id` AS `node_monitoring_pack_id`,`node_monitoring`.`node_monitoring_time` AS `node_monitoring_time`,`node_monitoring`.`node_monitoring_last_request` AS `node_monitoring_last_request`,`GetNextRequestDate`(`node_monitoring`.`id`,`node_monitoring`.`node_monitoring_time`,`node_monitoring`.`node_monitoring_last_request`) AS `node_monitoring_next_request`,`node_monitoring_pack`.`node_monitoring_pack_name` AS `node_monitoring_pack_name`,`node`.`node_dns_name` AS `node_dns_name`,`node`.`node_ip_address` AS `node_ip_address`,`node`.`node_mac_address` AS `node_mac_address`,`node`.`node_computer_db_id` AS `node_computer_db_id`,`node`.`node_monitoring_enable` AS `node_monitoring_enable` from ((`node_monitoring` join `node_monitoring_pack` on((`node_monitoring`.`node_monitoring_pack_id` = `node_monitoring_pack`.`id`))) join `node` on((`node_monitoring`.`node_id` = `node`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_alarm_node2_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_alarm_node2_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_alarm_node2_view` AS select `node_monitoring_alarm_node_view`.`node_id` AS `node_id`,count(`node_monitoring_alarm_node_view`.`alarm_id`) AS `alarm_count` from `node_monitoring_alarm_node_view` where (`node_monitoring_alarm_node_view`.`status_id` = 1) group by `node_monitoring_alarm_node_view`.`node_id`,`node_monitoring_alarm_node_view`.`alarm_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_alarm_node_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_alarm_node_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_alarm_node_view` AS select `node_monitoring_alarm_node`.`id` AS `id`,`node_monitoring_alarm_node`.`node_id` AS `node_id`,`node_monitoring_alarm_node`.`alarm_id` AS `alarm_id`,`node_monitoring_alarm_node`.`status_id` AS `status_id`,`node_monitoring_alarm_node`.`alarm_time` AS `alarm_time`,`node_monitoring_alarm`.`alarm_name` AS `alarm_name`,`node_monitoring_alarm_node`.`value` AS `value` from (`node_monitoring_alarm` join `node_monitoring_alarm_node` on((`node_monitoring_alarm`.`id` = `node_monitoring_alarm_node`.`alarm_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_history_archive_last_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_history_archive_last_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_history_archive_last_view` AS select `node_monitoring_history_archive_view`.`node_dns_name` AS `node_dns_name`,`node_monitoring_history_archive_view`.`node_monitoring_pack_sensor_name_def` AS `node_monitoring_pack_sensor_name_def`,`node_monitoring_history_archive_view`.`Value` AS `Value`,`node_monitoring_history_archive_view`.`node_computer_db_id` AS `node_computer_db_id`,`node_monitoring_history_archive_view`.`action_dt` AS `max_action_dt`,`node_monitoring_history_archive_view`.`node_id` AS `node_id` from (`node_monitoring_history_archive_view` join `node_monitoring_pack_sensor_last_history_archive` on((`node_monitoring_history_archive_view`.`id` = `node_monitoring_pack_sensor_last_history_archive`.`id1`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_history_archive_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_history_archive_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_history_archive_view` AS select `node`.`id` AS `node_id`,`node`.`node_dns_name` AS `node_dns_name`,`node_monitoring_pack_sensor_name`.`node_monitoring_pack_sensor_name_def` AS `node_monitoring_pack_sensor_name_def`,`node_monitoring_pack_sensor_history_archive`.`Value` AS `Value`,`node`.`node_computer_db_id` AS `node_computer_db_id`,`node_monitoring_pack_sensor_history_archive`.`action_dt` AS `action_dt`,`node_monitoring_pack_sensor_history_archive`.`id` AS `id`,`node_monitoring_pack_sensor_name`.`total_printed_page_sensor` AS `total_printed_page_sensor` from (((`node_monitoring_pack_sensor_history_archive` join `node` on((`node_monitoring_pack_sensor_history_archive`.`node_id` = `node`.`id`))) join `node_monitoring_pack_sensor` on((`node_monitoring_pack_sensor_history_archive`.`node_monitoring_pack_sensor_id` = `node_monitoring_pack_sensor`.`id`))) join `node_monitoring_pack_sensor_name` on((`node_monitoring_pack_sensor`.`node_monitoring_pack_sensor_name_id` = `node_monitoring_pack_sensor_name`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_history_last_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_history_last_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_history_last_view` AS select `node_monitoring_history_view`.`node_dns_name` AS `node_dns_name`,`node_monitoring_history_view`.`node_monitoring_pack_sensor_name_def` AS `node_monitoring_pack_sensor_name_def`,`node_monitoring_history_view`.`Value` AS `Value`,`node_monitoring_history_view`.`node_computer_db_id` AS `node_computer_db_id`,`node_monitoring_history_view`.`action_dt` AS `max_action_dt`,`node_monitoring_history_view`.`node_id` AS `node_id` from (`node_monitoring_history_view` join `node_monitoring_pack_sensor_last_history` on((`node_monitoring_history_view`.`id` = `node_monitoring_pack_sensor_last_history`.`id1`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_history_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_history_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_history_view` AS select `node`.`id` AS `node_id`,`node`.`node_dns_name` AS `node_dns_name`,`node_monitoring_pack_sensor_name`.`node_monitoring_pack_sensor_name_def` AS `node_monitoring_pack_sensor_name_def`,`node_monitoring_pack_sensor_history`.`Value` AS `Value`,`node`.`node_computer_db_id` AS `node_computer_db_id`,`node_monitoring_pack_sensor_history`.`action_dt` AS `action_dt`,`node_monitoring_pack_sensor_history`.`id` AS `id`,`node_monitoring_pack_sensor_name`.`total_printed_page_sensor` AS `total_printed_page_sensor` from (((`node_monitoring_pack_sensor_history` join `node` on((`node_monitoring_pack_sensor_history`.`node_id` = `node`.`id`))) join `node_monitoring_pack_sensor` on((`node_monitoring_pack_sensor_history`.`node_monitoring_pack_sensor_id` = `node_monitoring_pack_sensor`.`id`))) join `node_monitoring_pack_sensor_name` on((`node_monitoring_pack_sensor`.`node_monitoring_pack_sensor_name_id` = `node_monitoring_pack_sensor_name`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_last_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_last_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_last_view` AS select `node_monitoring2_view`.`node_id` AS `node_id`,`FormatDate`(max(`node_monitoring2_view`.`node_monitoring_last_request`)) AS `last_request` from `node_monitoring2_view` group by `node_monitoring2_view`.`node_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_pack_sensor_last_history`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_pack_sensor_last_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_pack_sensor_last_history` AS select max(`node_monitoring_pack_sensor_history`.`id`) AS `id1` from `node_monitoring_pack_sensor_history` group by `node_monitoring_pack_sensor_history`.`node_id`,`node_monitoring_pack_sensor_history`.`node_monitoring_pack_sensor_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_pack_sensor_last_history_archive`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_pack_sensor_last_history_archive`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_pack_sensor_last_history_archive` AS select max(`node_monitoring_pack_sensor_history_archive`.`id`) AS `id1` from `node_monitoring_pack_sensor_history_archive` group by `node_monitoring_pack_sensor_history_archive`.`node_id`,`node_monitoring_pack_sensor_history_archive`.`node_monitoring_pack_sensor_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_sensor_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_sensor_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_sensor_view` AS select `node_monitoring_pack_sensor`.`id` AS `id`,`node_monitoring_pack_sensor`.`node_monitoring_pack_sensor_type_id` AS `node_monitoring_pack_sensor_type_id`,`node_monitoring_pack_sensor`.`node_monitoring_pack_sensor_value` AS `node_monitoring_pack_sensor_value`,`node_monitoring_pack_sensor`.`node_monitoring_pack_sensor_engine_id` AS `node_monitoring_pack_sensor_engine_id`,`node_monitoring_pack_sensor`.`node_monitoring_pack_id` AS `node_monitoring_pack_id`,`node_monitoring_pack_sensor`.`node_monitoring_pack_sensor_name_id` AS `node_monitoring_pack_sensor_name_id`,`node_monitoring_pack_sensor_name`.`node_monitoring_pack_sensor_name_def` AS `node_monitoring_pack_sensor_name_def`,`node_monitoring_view`.`id` AS `node_mon_id`,`node_monitoring_view`.`node_id` AS `node_id`,`node_monitoring_pack`.`node_monitoring_pack_name` AS `node_monitoring_pack_name`,`node_monitoring_view`.`node_dns_name` AS `node_dns_name`,`node_monitoring_view`.`node_ip_address` AS `node_ip_address`,`node_monitoring_view`.`node_mac_address` AS `node_mac_address`,`node_monitoring_view`.`node_computer_db_id` AS `node_computer_db_id` from (((`node_monitoring_pack_sensor` join `node_monitoring_pack_sensor_name` on((`node_monitoring_pack_sensor`.`node_monitoring_pack_sensor_name_id` = `node_monitoring_pack_sensor_name`.`id`))) join `node_monitoring_pack` on((`node_monitoring_pack_sensor`.`node_monitoring_pack_id` = `node_monitoring_pack`.`id`))) join `node_monitoring_view` on((`node_monitoring_view`.`node_monitoring_pack_id` = `node_monitoring_pack`.`id`))) where (`node_monitoring_view`.`can_exec_pack` = 1) order by `node_monitoring_view`.`node_id`,`node_monitoring_view`.`node_id`,`node_monitoring_view`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_status_last2_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_status_last2_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_status_last2_view` AS select `node_monitoring_status_last_view`.`node_id` AS `node_id`,max(`node_monitoring_status_last_view`.`max_action_dt`) AS `max_action_dt`,`node_monitoring_status_last_view`.`engine_id` AS `engine_id` from `node_monitoring_status_last_view` group by `node_monitoring_status_last_view`.`node_id`,`node_monitoring_status_last_view`.`engine_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_status_last3_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_status_last3_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_status_last3_view` AS select `node_monitoring_status_last_view`.`node_id` AS `node_id`,`node_monitoring_status_last_view`.`engine_id` AS `engine_id`,`node_monitoring_status_last_view`.`Value` AS `Value`,`node_monitoring_status_last_view`.`action_status_id` AS `action_status_id`,`node_monitoring_status_last_view`.`max_action_dt` AS `max_action_dt`,`node_monitoring_status_last_view`.`node_monitoring_pack_sensor_engine_name` AS `node_monitoring_pack_sensor_engine_name` from (`node_monitoring_status_last2_view` join `node_monitoring_status_last_view` on(((`node_monitoring_status_last2_view`.`node_id` = `node_monitoring_status_last_view`.`node_id`) and (`node_monitoring_status_last2_view`.`max_action_dt` = `node_monitoring_status_last_view`.`max_action_dt`) and (`node_monitoring_status_last2_view`.`engine_id` = `node_monitoring_status_last_view`.`engine_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_status_last4_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_status_last4_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_status_last4_view` AS select group_concat(concat(`node_monitoring_status_last3_view`.`node_monitoring_pack_sensor_engine_name`,'|',`node_monitoring_status_last3_view`.`engine_id`,'|',`node_monitoring_status_last3_view`.`max_action_dt`,'|',`node_monitoring_status_last3_view`.`action_status_id`,'|',`node_monitoring_status_last3_view`.`Value`) separator ';') AS `monitoring_status`,`node_monitoring_status_last3_view`.`node_id` AS `node_id` from `node_monitoring_status_last3_view` group by `node_monitoring_status_last3_view`.`node_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_status_last_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_status_last_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_status_last_view` AS select `node_monitoring_status`.`node_id` AS `node_id`,`node_monitoring_status`.`engine_id` AS `engine_id`,`node_monitoring_status`.`Value` AS `Value`,`node_monitoring_status`.`action_status_id` AS `action_status_id`,max(`node_monitoring_status`.`action_dt`) AS `max_action_dt`,`node_monitoring_pack_sensor_engine`.`node_monitoring_pack_sensor_engine_name` AS `node_monitoring_pack_sensor_engine_name` from (`node_monitoring_pack_sensor_engine` join `node_monitoring_status` on((`node_monitoring_pack_sensor_engine`.`id` = `node_monitoring_status`.`engine_id`))) group by `node_monitoring_status`.`node_id`,`node_monitoring_status`.`engine_id`,`node_monitoring_status`.`Value`,`node_monitoring_status`.`action_status_id`,`node_monitoring_pack_sensor_engine`.`node_monitoring_pack_sensor_engine_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_status_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_status_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_status_view` AS select `node_view2`.`host` AS `host`,`node_view2`.`type` AS `type`,`node_view2`.`system` AS `system`,`node_view2`.`last_request` AS `last_request`,`node_view2`.`monitoring_packs` AS `monitoring_packs`,`node_view2`.`node_monitoring_enable` AS `node_monitoring_enable`,`node_monitoring_status_last4_view`.`monitoring_status` AS `monitoring_status`,ifnull((`node_monitoring_alarm_node2_view`.`alarm_count` > 0),0) AS `has_alarm`,`node_view2`.`id` AS `id`,`node_view2`.`atlas_id` AS `atlas_id`,`node_view2`.`description` AS `description` from ((`node_view2` left join `node_monitoring_status_last4_view` on((`node_monitoring_status_last4_view`.`node_id` = `node_view2`.`id`))) left join `node_monitoring_alarm_node2_view` on((`node_monitoring_alarm_node2_view`.`node_id` = `node_view2`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_monitoring_view`
--

/*!50001 DROP VIEW IF EXISTS `node_monitoring_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `node_monitoring_view` AS select `node_monitoring2_view`.`id` AS `id`,`node_monitoring2_view`.`node_id` AS `node_id`,`node_monitoring2_view`.`node_monitoring_pack_id` AS `node_monitoring_pack_id`,`node_monitoring2_view`.`node_monitoring_time` AS `node_monitoring_time`,`node_monitoring2_view`.`node_monitoring_last_request` AS `node_monitoring_last_request`,`node_monitoring2_view`.`node_monitoring_next_request` AS `node_monitoring_next_request`,`CanExecutePack`(`node_monitoring2_view`.`node_monitoring_next_request`,`node_monitoring2_view`.`node_monitoring_enable`) AS `can_exec_pack`,`node_monitoring2_view`.`node_dns_name` AS `node_dns_name`,`node_monitoring2_view`.`node_ip_address` AS `node_ip_address`,`node_monitoring2_view`.`node_mac_address` AS `node_mac_address`,`node_monitoring2_view`.`node_computer_db_id` AS `node_computer_db_id`,`node_monitoring2_view`.`node_monitoring_pack_name` AS `node_monitoring_pack_name` from `node_monitoring2_view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_view`
--

/*!50001 DROP VIEW IF EXISTS `node_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `node_view` AS select `node`.`id` AS `id`,concat(`node`.`node_dns_name`,' (',`node`.`node_ip_address`,')') AS `host`,concat(`device_class`.`Name`,' - ',`device_category`.`device_category_name`) AS `type`,`device_subcategory`.`device_subcategory_name` AS `system`,`node_monitoring_last_view`.`last_request` AS `last_request`,`GetMonitoringPack`(`node`.`id`) AS `monitoring_packs`,`node`.`atlas_id` AS `atlas_id`,`atlas`.`atlas_name` AS `atlas_name`,`node`.`node_monitoring_enable` AS `node_monitoring_enable`,`node`.`description` AS `description`,`node`.`user_id` AS `user_id`,`user`.`full_name` AS `user_full_name` from (((((((`node` join `device_type` on((`node`.`device_type_id` = `device_type`.`id`))) join `device_subcategory` on((`device_type`.`device_subcategory_id` = `device_subcategory`.`id`))) join `device_category` on(((`device_type`.`device_category_id` = `device_category`.`id`) and (`device_subcategory`.`device_category_id` = `device_category`.`id`)))) join `device_class` on(((`device_type`.`device_class_id` = `device_class`.`id`) and (`device_category`.`device_class_id` = `device_class`.`id`)))) join `node_monitoring_last_view` on((`node`.`id` = `node_monitoring_last_view`.`node_id`))) join `atlas` on((`node`.`atlas_id` = `atlas`.`id`))) join `user` on((`user`.`id` = `node`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `node_view2`
--

/*!50001 DROP VIEW IF EXISTS `node_view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `node_view2` AS select `node`.`id` AS `id`,concat(`node`.`node_dns_name`,' (',`node`.`node_ip_address`,')') AS `host`,concat(`device_class`.`Name`,' - ',`device_category`.`device_category_name`) AS `type`,`device_subcategory`.`device_subcategory_name` AS `system`,`node_monitoring_last_view`.`last_request` AS `last_request`,`GetMonitoringPack`(`node`.`id`) AS `monitoring_packs`,`node`.`atlas_id` AS `atlas_id`,`atlas`.`atlas_name` AS `atlas_name`,`node`.`node_monitoring_enable` AS `node_monitoring_enable`,`node`.`description` AS `description`,`node`.`device_type_id` AS `device_type_id`,`node`.`node_computer_db_id` AS `node_computer_db_id`,`node`.`node_dns_name` AS `node_dns_name`,`node`.`node_ip_address` AS `node_ip_address`,`node`.`node_mac_address` AS `node_mac_address`,`node`.`user_id` AS `user_id`,`user`.`full_name` AS `user_full_name` from (((((((`node` join `device_type` on((`node`.`device_type_id` = `device_type`.`id`))) join `device_subcategory` on((`device_type`.`device_subcategory_id` = `device_subcategory`.`id`))) join `device_category` on(((`device_type`.`device_category_id` = `device_category`.`id`) and (`device_subcategory`.`device_category_id` = `device_category`.`id`)))) join `device_class` on(((`device_type`.`device_class_id` = `device_class`.`id`) and (`device_category`.`device_class_id` = `device_class`.`id`)))) join `node_monitoring_last_view` on((`node`.`id` = `node_monitoring_last_view`.`node_id`))) join `atlas` on((`node`.`atlas_id` = `atlas`.`id`))) join `user` on((`user`.`id` = `node`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_printed_page_view`
--

/*!50001 DROP VIEW IF EXISTS `total_printed_page_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp1251 */;
/*!50001 SET character_set_results     = cp1251 */;
/*!50001 SET collation_connection      = cp1251_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ni_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `total_printed_page_view` AS select `node_monitoring_history_view`.`Value` AS `Value`,`node_monitoring_history_view`.`node_computer_db_id` AS `node_computer_db_id` from (`node_monitoring_history_view` join `node_monitoring_pack_sensor_last_history` on((`node_monitoring_history_view`.`id` = `node_monitoring_pack_sensor_last_history`.`id1`))) where (`node_monitoring_history_view`.`total_printed_page_sensor` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-27  2:01:19
