-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: comp
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `dep_empl`
--

DROP TABLE IF EXISTS `dep_empl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dep_empl` (
  `id_depemp` int NOT NULL AUTO_INCREMENT,
  `id_dep` int DEFAULT NULL,
  `id_emp` int DEFAULT NULL,
  PRIMARY KEY (`id_depemp`),
  KEY `id_dep` (`id_dep`),
  KEY `id_emp` (`id_emp`),
  CONSTRAINT `dep_empl_ibfk_1` FOREIGN KEY (`id_dep`) REFERENCES `departments` (`id_depart`),
  CONSTRAINT `dep_empl_ibfk_2` FOREIGN KEY (`id_emp`) REFERENCES `employees` (`id_emplo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep_empl`
--

LOCK TABLES `dep_empl` WRITE;
/*!40000 ALTER TABLE `dep_empl` DISABLE KEYS */;
INSERT INTO `dep_empl` VALUES (1,1,1),(2,3,4),(3,2,5);
/*!40000 ALTER TABLE `dep_empl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id_depart` int NOT NULL AUTO_INCREMENT,
  `name_depart` varchar(250) DEFAULT NULL,
  `adress` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_depart`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Обслуживание','г. Уфа'),(2,'Закупок','г. Уфа'),(3,'Технической поддержки','г. Уфа');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id_emplo` int NOT NULL AUTO_INCREMENT,
  `fio` varchar(250) DEFAULT NULL,
  `passport` int DEFAULT NULL,
  `b_date` date DEFAULT NULL,
  `status_emp` varchar(250) DEFAULT NULL,
  `login` varchar(250) DEFAULT NULL,
  `password_emp` int DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `fire_date` date DEFAULT NULL,
  PRIMARY KEY (`id_emplo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Алексеев Данил',45464,'2000-01-01','Работает','1',1,'2022-01-01',NULL),(4,'Михайлюк Артем',35546,'2000-02-05','Работает','2',2,'2022-04-08',NULL),(5,'Алексеев Матвей',67688,'2000-09-12','Работает','3',3,'2022-07-11',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `id_eq` int NOT NULL AUTO_INCREMENT,
  `name_eq` varchar(250) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `status_eq` varchar(250) DEFAULT NULL,
  `type_eq` int DEFAULT NULL,
  PRIMARY KEY (`id_eq`),
  KEY `equipment` (`type_eq`),
  CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`type_eq`) REFERENCES `equipment_type` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'Наушники ',1500,'Выдан',1),(2,'Мышь',500,'Выдан',1),(3,'Видеокарта',30000,'Выдан',2);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_type`
--

DROP TABLE IF EXISTS `equipment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment_type` (
  `id_type` int NOT NULL AUTO_INCREMENT,
  `name_type` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_type`
--

LOCK TABLES `equipment_type` WRITE;
/*!40000 ALTER TABLE `equipment_type` DISABLE KEYS */;
INSERT INTO `equipment_type` VALUES (1,'Переферия'),(2,'Комплектующие'),(3,'Разное');
/*!40000 ALTER TABLE `equipment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal`
--

DROP TABLE IF EXISTS `journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal` (
  `id_jour` int NOT NULL AUTO_INCREMENT,
  `dep_empl_id` int DEFAULT NULL,
  `equp_id` int DEFAULT NULL,
  PRIMARY KEY (`id_jour`),
  KEY `dep_empl_id` (`dep_empl_id`),
  KEY `equp_id` (`equp_id`),
  CONSTRAINT `journal_ibfk_1` FOREIGN KEY (`dep_empl_id`) REFERENCES `dep_empl` (`id_depemp`),
  CONSTRAINT `journal_ibfk_2` FOREIGN KEY (`equp_id`) REFERENCES `equipment` (`id_eq`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal`
--

LOCK TABLES `journal` WRITE;
/*!40000 ALTER TABLE `journal` DISABLE KEYS */;
INSERT INTO `journal` VALUES (1,1,3),(2,2,2),(3,3,1);
/*!40000 ALTER TABLE `journal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-20 18:15:09
