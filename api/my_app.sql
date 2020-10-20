-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: my_app
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
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `id_restaurants` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `kind_food` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_restaurants`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,'Tulsi Vegan Restaurant','C. del Consell de Cent, 279, 08011 Barcelona',41.388,2.16104,'Vegetariana'),(2,'Mosaic','Plaça de Milagros Consarnau i Sabaté, 30, 08902 L\'Hospitalet de Llobregat, Barcelona',41.3659,2.12997,'Árabe,Vegetariana,Mediterránea'),(3,'Ichiban Sushi','Carrer del Vallespir, 130, 08014 Barcelona',41.3823,2.13542,'Asiática'),(4,'La Taquería','Passatge de Font, 5, 08013 Barcelona',41.4026,2.17554,'Mexicana'),(5,'Palacio de China','Carrer de la Marina, 87, 08018 Barcelona',41.3935,2.18834,'Asiática'),(6,'Gandhi','Carrer de Balmes, 21, 08007 Barcelona',41.3878,2.16445,'Asiática,Vegetariana'),(7,'Alo Beirut','Carrer d\'Aribau, 90, 08036 Barcelona',41.3898,2.15774,'Árabe'),(8,'Aladdin','Avinguda de Gaudí, 50, 08025 Barcelona',41.409,2.1876,'Árabe,Vegetariana'),(9,'La Catrina Fusion','Carrer de la Providència, 88, 08024 Barcelona',41.4081,2.15941,'Mediterránea,Mexicana,Vegetariana'),(10,'Bar Delicias','Carrer de Mühlberg, 1, 08024 Barcelona',41.4183,2.15758,'Mediterránea');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-12 19:41:44
