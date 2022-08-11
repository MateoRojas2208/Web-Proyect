-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: database_proyectoweb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) NOT NULL,
  `short_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_info` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_short` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_long` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Curso numero 1',12,'ddddddddddddd','infoLargaº','linkImagen1','linkImagen2'),(2,'Curso numero 2',12,'asdafggg','infoLarga1','linkImagen1','linkImagen2'),(3,'Curso numero 3',12,'hola todo bien','infoLarga2','linkImagen1','linkImagen2'),(4,'Curso numero 4',12,'asdasdasdas','infoLarga3','linkImagen1','linkImagen2'),(5,'Curso numero 5',12,'sssssssssss','infoLarga4','linkImagen1','linkImagen2'),(6,'Curso numero 6',12,'como estas','infoLarga5','linkImagen1','linkImagen2'),(7,'Curso numero 7',12,'aaaaaaaaaaaaaaa','infoLarga6','linkImagen1','linkImagen2'),(8,'Curso numero 8',12,'xxxxxxxxxxxxxx','infoLarga7','linkImagen1','linkImagen2'),(9,'Curso numero 9',12,'zzzzzzzzzzzzzzzz','infoLarga8','linkImagen1','linkImagen2'),(10,'Curso numero 10',12,'ìnfoCortacccccccccccccccccccccccccc','infoLarga9','linkImagen1','linkImagen2'),(11,'Curso numero 11',12,'vvvvvvvvvvvvvvvvvvv','infoLarga10','linkImagen1','linkImagen2'),(12,'Curso numero 12',12,'bbbbbbbbbbbbbbbbbbbb','infoLarga11','linkImagen1','linkImagen2'),(13,'Curso numero 13',12,'ìnfoCorta','infoLarga12','linkImagen1','linkImagen2'),(14,'Curso numero 14',12,'ìnfoCorta','infoLarga13','linkImagen1','linkImagen2'),(15,'Curso numero 15',12,'ìnfoCorta','infoLarga14','linkImagen1','linkImagen2'),(16,'Curso numero 16',12,'ìnfoCorta','infoLarga15','linkImagen1','linkImagen2'),(17,'Curso numero 17 asdaaaaaaaaaaaaaaaaaaaaa',12,'ìnfoCorta','infoLarga16','linkImagen1','linkImagen2'),(18,'Curso numero 18',12,'ìnfoCorta','infoLarga17','linkImagen1','linkImagen2'),(19,'Curso numero 19',12,'ìnfoCorta','infoLarga18','linkImagen1','linkImagen2'),(20,'Curso numero 20',12,'ìnfoCorta','infoLarga19','linkImagen1','linkImagen2');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL,
  `courses_id` int(10) unsigned NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_id` (`courses_id`),
  CONSTRAINT `courses_models_ibfk_1` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'ìnfoCorta','infoLargaº','linkImagen1'),(2,2,'ìnfoCorta','infoLarga1','linkImagen1'),(3,3,'ìnfoCorta','infoLarga2','linkImagen1'),(4,4,'ìnfoCorta','infoLarga3','linkImagen1'),(5,5,'ìnfoCorta','infoLarga4','linkImagen1'),(6,6,'ìnfoCorta','infoLarga5','linkImagen1'),(7,7,'ìnfoCorta','infoLarga6','linkImagen1'),(8,8,'ìnfoCorta','infoLarga7','linkImagen1'),(9,9,'ìnfoCorta','infoLarga8','linkImagen1'),(10,10,'ìnfoCorta','infoLarga9','linkImagen1'),(11,11,'ìnfoCorta','infoLarga10','linkImagen1'),(12,12,'ìnfoCorta','infoLarga11','linkImagen1'),(13,13,'ìnfoCorta','infoLarga12','linkImagen1'),(14,14,'ìnfoCorta','infoLarga13','linkImagen1'),(15,15,'ìnfoCorta','infoLarga14','linkImagen1'),(16,16,'ìnfoCorta','infoLarga15','linkImagen1'),(17,17,'ìnfoCorta','infoLarga16','linkImagen1'),(18,18,'ìnfoCorta','infoLarga17','linkImagen1'),(19,19,'ìnfoCorta','infoLarga18','linkImagen1'),(20,20,'ìnfoCorta','infoLarga19','linkImagen1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'database_proyectoweb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-11 19:15:04
