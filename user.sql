-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: user
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `oid` varchar(13) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(120) NOT NULL,
  `name` varchar(45) NOT NULL,
  `role` enum('admin','manager','employee') NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('00101579ea2e','employee1','$argon2i$v=19$m=65536,t=2,p=1$S79rvDYKf+twq9U8ZZFWag$I+/GqyFgh+LRhnkGOzWLXhnyq7cqJSxm/zPC0BEGeYw','Employee1','employee'),('0c425ed5be00','employee2','$argon2i$v=19$m=65536,t=2,p=1$2l/usjQ2x7FDzbuDZl4zAw$8csiHJj8em9HeIMj8ZrhOwoSD2y/ct6qXa0xLPh+3YU','employee2','employee'),('4df29ab94d0a','manager1','$argon2i$v=19$m=65536,t=2,p=1$qnG58W4+tlFffnR5FgsMYg$rWdMcv9k+ZRqUZ01v4rpJ1whmfBfHr3BREdA/g4byIk','Manager1','manager'),('6350b8954b53','admin1','$argon2i$v=19$m=65536,t=2,p=1$Ezrzk9yaX/aRu8GknKyILw$NufGbk3uLIbY1ayYDXh4iBFg2F/aAH0kKLkwNE8hKzo','database admin','admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-24  8:34:30
