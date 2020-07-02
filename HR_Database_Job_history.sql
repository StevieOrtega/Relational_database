-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: HR_Database
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `Job_history`
--

DROP TABLE IF EXISTS `Job_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Job_history` (
  `employee_id` int NOT NULL AUTO_INCREMENT COMMENT 'This still needs to be looked into as the employee table still needs to be implemented into the mix. Having some trouble with the multiple cases of the employee id being inserted into the job_history table.',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `job_id` varchar(10) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  KEY `jobhistory__idx` (`job_id`),
  KEY `jobhistory_department_id_idx` (`department_id`),
  KEY `jobhistory_employee_id_idx` (`employee_id`),
  CONSTRAINT `jobhistory_department_id` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`department_id`),
  CONSTRAINT `jobhistory_job_id` FOREIGN KEY (`job_id`) REFERENCES `Jobs` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Job_history`
--

LOCK TABLES `Job_history` WRITE;
/*!40000 ALTER TABLE `Job_history` DISABLE KEYS */;
INSERT INTO `Job_history` VALUES (102,'2001-01-13','2006-07-24','IT_PROG',60),(101,'1997-09-27','2001-10-27','AC_ACCOUNT',110),(101,'2001-10-28','2005-03-15','AC_MGR',110),(201,'2004-02-17','2007-12-19','MK_REP',20),(114,'2006-03-24','2007-12-31','ST_CLERK',50),(122,'2007-01-01','2007-12-31','ST_CLERK',50),(200,'1995-09-17','2001-06-17','AD_ASST',90),(176,'2006-03-24','2006-12-31','SA_REP',80),(176,'2007-01-01','2007-12-31','SA_MAN',80),(200,'2002-07-01','2006-12-31','AC_ACCOUNT',90);
/*!40000 ALTER TABLE `Job_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-02 14:45:42
