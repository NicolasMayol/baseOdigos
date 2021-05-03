-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: dbodigos
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicacion` (
  `id_ubicacion` int NOT NULL AUTO_INCREMENT,
  `latitud` text,
  `longitud` text,
  `estado` text,
  `alcaldia` text,
  `colonia` text,
  `fk_inmueble` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ubicacion`),
  KEY `fk_ubicacion_idx` (`fk_inmueble`),
  CONSTRAINT `fk_ubicacion` FOREIGN KEY (`fk_inmueble`) REFERENCES `inmuebles` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion`
--

LOCK TABLES `ubicacion` WRITE;
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
INSERT INTO `ubicacion` VALUES (1,'19°23\'42.2\"N\"','99°16\'48.7\"W\"','Estado de México','Naucalpan de Juarez','Valle de las Palmas','IBS-CR-081983','2021-04-30 20:30:50','2021-04-30 17:37:38'),(2,'19°24\'13.1\"N\"','99°15\'10.4\"W\"','Ciudad de México','Miguel Hidalgo','Bosques de las Lomas','IBS-CV-081906','2021-04-30 20:30:50','2021-04-30 17:37:38'),(3,'19°24\'13.1\"N\"','99°15\'10.4\"W\"','Ciudad de México','Miguel Hidalgo','Bosques de las Lomas','IBS-CV-081907','2021-04-30 20:30:50','2021-04-30 17:37:38'),(4,'19°23\'24.5\"N\"','99°16\'29.1\"W\"','Estado de México','Huixquilucan','Lomas del Sol','IBS-CV-081932','2021-04-30 20:30:50','2021-04-30 17:37:38'),(5,'19°25\'00.7\"N\"','99°15\'23.5\"W\"','Estado de México','Huixquilucan','Lomas de la Herradura','IBS-CV-081945','2021-04-30 20:30:50','2021-04-30 17:37:38'),(6,'19°25\'31.9\"N\"','99°15\'22.4\"W\"','Estado de México','Bosques de la Herradura','Huixquilucan','IBS-CV-081950','2021-04-30 20:30:50','2021-04-30 17:37:38'),(7,'19°25\'23.9\"N\"','99°15\'18.6\"W\"','Estado de México','Bosques de la Herradura','Huixquilucan','IBS-CV-081952','2021-04-30 20:30:50','2021-04-30 17:37:38'),(8,'19°23\'38.9\"N\"','99°14\'53.9\"W\"','Ciudad de México','Cuajimalpa de Morelos','Bosques de las Lomas','IBS-CV-081959','2021-04-30 20:30:50','2021-04-30 17:37:38'),(9,'19°22\'35.0\"N\"','99°16\'04.1\"W\"','Ciudad de México','Cuajimalpa de Morelos','Lomas de Vista Hermosa','IBS-CV-081961','2021-04-30 20:30:50','2021-04-30 17:37:38'),(10,'19°23\'42.2\"N\"','99°16\'48.7\"W\"','Estado de México','Naucalpan de Juarez','Valle de las Palmas','IBS-CV-081982','2021-04-30 20:30:50','2021-04-30 17:37:38'),(11,'19°24\'34.8\"N\"','99°14\'52.4\"W\"','Estado de México','Lomas de Tecamachalco','Naucalpan','IBS-CV-111902','2021-04-30 20:30:50','2021-04-30 17:37:38'),(12,'19°24\'36.1\"N\"','99°15\'18.9\"W\"','Estado de México','Lomas de Tecamachalco','Naucalpan','IBS-CV-111915','2021-04-30 20:30:50','2021-04-30 17:37:38'),(13,'19°22\'56.1\"N\"','99°15\'32.6\"W\"','Ciudad de México','Miguel Hidalgo','Bosques de las Lomas','IBS-DR-071912','2021-04-30 20:30:50','2021-04-30 17:37:38'),(14,'19°23\'49.0\"N\"','99°17\'03.6\"W\"','Estado de México','Huixquilucan','Hacienda de las Palmas','IBS-DR-081924','2021-04-30 20:30:50','2021-04-30 17:37:38'),(15,'19°24\'00.5\"N\"','99°16\'43.9\"W\"','Estado de México','Huixquilucan','Bosque de las Palmas','IBS-DR-081970','2021-04-30 20:30:50','2021-04-30 17:37:38'),(16,'19°23\'46.1\"N\"','99°17\'16.8\"W\"','Estado de México','Huixquilucan','Jesús del Monte','IBS-DR-081976','2021-04-30 20:30:50','2021-04-30 17:37:38'),(17,'19°22\'05.2\"N\"','99°17\'58.0\"W\"','Estado de México','Huixquilucan','Jesús del Monte','IBS-DR-081979','2021-04-30 20:30:50','2021-04-30 17:37:38'),(18,'19°25\'46.1\"N\"','99°12\'03.2\"W\"','Ciudad de México','Miguel Hidalgo','Polanco','IBS-DR-081980','2021-04-30 20:30:50','2021-04-30 17:37:38'),(19,'19°23\'52.3\"N\"','99°17\'16.8\"W\"','Estado de México','Huixquilucan','Jesús del Monte','IBS-DR-081981','2021-04-30 20:30:50','2021-04-30 17:37:38'),(20,'19°24\'17.7\"N\"','99°16\'50.9\"W\"','Estado de México','Huixquilucan','Lomas Country Club','IBS-DR-081990','2021-04-30 20:30:50','2021-04-30 17:37:38'),(21,'19°23\'45.0\"N\"','99°17\'24.2\"W\"','Estado de México','Huixquilucan','Hacienda de las Palmas','IBS-DR-081995','2021-04-30 20:30:50','2021-04-30 17:37:38'),(22,'19°26\'10.4\"N\"','99°11\'22.4\"W\"','Ciudad de México','Miguel Hidalgo','Polanco','IBS-DR-091965','2021-04-30 20:30:50','2021-04-30 17:37:38'),(23,'19°25\'26.1\"N\"','99°16\'04.0\"W\"','Estado de México','Bosques de la Herradura','Huixquilucan','IBS-DR-101902','2021-04-30 20:30:50','2021-04-30 17:37:38'),(24,'19°22\'56.1\"N\"','99°15\'32.6\"W\"','Ciudad de México','Miguel Hidalgo','Bosques de las Lomas','IBS-DV-081912','2021-04-30 20:30:50','2021-04-30 17:37:38'),(25,'19°25\'54.3\"N\"','99°16\'57.5\"W\"','Estado de México','Naucalpan de Juarez','Bosque Real','IBS-DV-081914','2021-04-30 20:30:50','2021-04-30 17:37:38'),(26,'19°23\'46.1\"N\"','99°17\'16.8\"W\"','Estado de México','Huixquilucan','Jesús del Monte','IBS-DV-081922','2021-04-30 20:30:50','2021-04-30 17:37:38'),(27,'19°22\'21.2\"N \"','99°14\'53.2\"W\"','Ciudad de México','Lomas de Santa Fe','Álvaro Obregón','IBS-DV-081923','2021-04-30 20:30:50','2021-04-30 17:37:38'),(28,'19°25\'23.3\"N\"','99°15\'34.5\"W\"','Estado de México','Naucalpan de Juarez','Bosques de la Herradura','IBS-DV-081926','2021-04-30 20:30:50','2021-04-30 17:37:38'),(29,'19°24\'23.5\"N\"','99°16\'39.6\"W\"','Estado de México','Huixquilucan','Palmas Altas','IBS-DV-081951','2021-04-30 20:30:50','2021-04-30 17:37:38'),(30,'19°22\'41.0\"N \"','99°15\'20.8\"W\"','Ciudad de México','Santa Fe','Álvaro Obregón','IBS-DV-081957','2021-04-30 20:30:50','2021-04-30 17:37:38'),(31,'19°25\'48.9\"N\"','99°12\'07.1\"W\"','Ciudad de México','Miguel Hidalgo','Polanco','IBS-DV-081958','2021-04-30 20:30:50','2021-04-30 17:37:38'),(32,'19°25\'37.9\"N\"','99°15\'24.6\"W\"','Estado de México','Huixquilucan','Bosques de la Herradura','IBS-DV-081960','2021-04-30 20:30:50','2021-04-30 17:37:38'),(33,'19°24\'23.1\"N\"','99°14\'03.2\"W\"','Ciudad de México','Miguel Hidalgo','Bosques de las Lomas','IBS-DV-081962','2021-04-30 20:30:50','2021-04-30 17:37:38'),(34,'19°23\'46.1\"N\"','99°17\'16.8\"W\"','Estado de México','Huixquilucan','Jesús del Monte','IBS-DV-081978','2021-04-30 20:30:50','2021-04-30 17:37:38'),(35,'19°22\'28.8\"N\"','99°14\'42.4\"W\"','Ciudad de México','Álvaro Obregón','Santa Fé','IBS-DV-081984','2021-04-30 20:30:50','2021-04-30 17:37:38'),(36,'19°22\'42.7\"N\"','99°16\'47.9\"W\"','Ciudad de México','Cuajimalpa de Morelos','Lomas de Vista Hermosa','IBS-DV-081987','2021-04-30 20:30:50','2021-04-30 17:37:38'),(37,'19°24\'17.7\"N\"','99°16\'50.9\"W\"','Estado de México','Huixquilucan','Lomas Country Club','IBS-DV-081989','2021-04-30 20:30:50','2021-04-30 17:37:38'),(38,'19°23\'06.8\"N\"','99°15\'17.9\"W\"','Ciudad de México','Granjas Palo Alto ','Cuajimalpa','IBS-DV-081993','2021-04-30 20:30:50','2021-04-30 17:37:38'),(39,'19°23\'24.1\"N\"','99°15\'37.4\"W\"','Ciudad de México','Cuajimalpa de Morelos','Lomas del Chamizal','IBS-DV-081996','2021-04-30 20:30:50','2021-04-30 17:37:38'),(40,'19°26\'10.4\"N\"','99°11\'22.4\"W\"','Ciudad de México','Miguel Hidalgo','Polanco','IBS-DV-091964','2021-04-30 20:30:50','2021-04-30 17:37:38'),(41,'19°23\'06.8\"N\"','99°15\'17.9\"W\"','Ciudad de México','Granjas Palo Alto ','Cuajimalpa','IBS-DV-101903','2021-04-30 20:30:50','2021-04-30 17:37:38'),(42,'19°24\'01.4\"N\"','99°17\'41.3\"W\"','Estado de México','Huixquilucan','Lomas Country Club','QUN-CR-081903','2021-04-30 20:30:50','2021-04-30 17:37:38'),(43,'19°25\'46.7\"N\"','99°12\'36.7\"W\"','Ciudad de México','Miguel Hidalgo','Lomas de Chapultepec','QUN-CR-081904','2021-04-30 20:30:50','2021-04-30 17:37:38'),(44,'19°23\'42.8\"N\"','99°17\'15.9\"W\"','Estado de México','Bosque de las Palmas','Huixquilucan','QUN-CR-101911','2021-04-30 20:30:50','2021-04-30 17:37:38'),(45,'19°24\'11.3\"N\"','99°16\'53.5\"W\"','Estado de México','Huixquilucan','Interlomas','QUN-CR-101916','2021-04-30 20:30:50','2021-04-30 17:37:38'),(46,'19°23\'42.0\"N\"','99°16\'49.6\"W\"','Estado de México','Valle de Las Palmas','Huixquilucan','QUN-CR-121921','2021-04-30 20:30:50','2021-04-30 17:37:38'),(47,'19°21\'56.0\"N \"','99°16\'55.3\"W\"','Ciudad de México','El Molino','Cuajimalpa','QUN-CR-121926','2021-04-30 20:30:50','2021-04-30 17:37:38'),(48,'19°22\'51.5\"N\"','99°16\'23.1\"W\"','Ciudad de México','Lomas de Vista Hermosa','Cuajimalpa','QUN-CR-121927','2021-04-30 20:30:50','2021-04-30 17:37:38'),(49,'19°24\'17.7\"N\"','99°16\'50.9\"W\"','Estado de México','Huixquilucan','Interlomas','QUN-CV-081905','2021-04-30 20:30:50','2021-04-30 17:37:38'),(50,'19°23\'43.1\"N\"','99°17\'15.8\"W\"','Estado de México','Huixquilucan','Hacienda de las Palmas','QUN-CV-081906','2021-04-30 20:30:50','2021-04-30 17:37:38'),(51,'19°23\'57.7\"N\"','99°16\'07.0\"W\"','Estado de México','Huixquilucan','Lomas Anahuac','QUN-CV-081907','2021-04-30 20:30:50','2021-04-30 17:37:38'),(52,'19°26\'01.3\"N\"','99°11\'56.9\"W\"','Ciudad de México','Polanco','Miguel Hidalgo','QUN-CV-081908','2021-04-30 20:30:50','2021-04-30 17:37:38'),(53,'19°25\'07.5\"N\"','99°15\'04.2\"W\"','Estado de México','Huixquilucan','La Herradura','QUN-CV-081909','2021-04-30 20:30:50','2021-04-30 17:37:38'),(54,'19°23\'52.3\"N\"','99°16\'22.2\"W\"','Estado de México','Huixquilucan','Lomas de las Palmas','QUN-CV-081910','2021-04-30 20:30:50','2021-04-30 17:37:38'),(55,'19°21\'52.4\"N\"','99°17\'24.7\"W\"','Ciudad de México','Cuajimalpa de Morelos','San José de los Cedros','QUN-CV-081911','2021-04-30 20:30:50','2021-04-30 17:37:38'),(56,'19°25\'01.1\"N\"','99°14\'10.3\"W\"','Estado de México','Naucalpan de Juarez','Lomas de Tecamachalco','QUN-CV-081912','2021-04-30 20:30:50','2021-04-30 17:37:38'),(57,'19°24\'21.8\"N\"','99°15\'46.2\"W\"','Estado de México','Huixquilucan','Parques de la Herradura','QUN-CV-081913','2021-04-30 20:30:50','2021-04-30 17:37:38'),(58,'19°24\'21.8\"N\"','99°15\'46.2\"W\"','Estado de México','Huixquilucan','Parques de la Herradura','QUN-CV-081915','2021-04-30 20:30:50','2021-04-30 17:37:38'),(59,'19°24\'11.3\"N\"','99°16\'53.5\"W\"','Estado de México','Huixquilucan','Interlomas','QUN-CV-101901','2021-04-30 20:30:50','2021-04-30 17:37:38'),(60,'19°25\'36.2\"N\"','99°16\'56.7\"W\"','Estado de México','Huixquilucan','Bosque Real','QUN-CV-101908','2021-04-30 20:30:50','2021-04-30 17:37:38'),(61,'19°25\'07.8\"N\"','99°15\'28.6\"W\"','Estado de México','Huixquilucan','La Herradura','QUN-CV-101912','2021-04-30 20:30:50','2021-04-30 17:37:38'),(62,'19°22\'17.0\"N\"','99°17\'42.8\"W\"','Estado de México','Huixquilucan','Jesús del Monte','QUN-CV-101913','2021-04-30 20:30:50','2021-04-30 17:37:38'),(63,'19°25\'51.7\"N\"','99°17\'17.5\"W\"','Estado de México','Bosque Real','Huixquilucan','QUN-CV-101914','2021-04-30 20:30:50','2021-04-30 17:37:38'),(64,'19°24\'35.1\"N\"','99°15\'53.1\"W\"','Estado de México','Parques de la Herradura','Huixquilucan','QUN-CV-121901','2021-04-30 20:30:50','2021-04-30 17:37:38'),(65,'19°24\'18.7\"N\"','99°16\'00.3\"W\"','Estado de México','Parques de la Herradura','Huixquilucan','QUN-CV-121902','2021-04-30 20:30:50','2021-04-30 17:37:38'),(66,'19°25\'51.7\"N\"','99°17\'17.5\"W\"','Estado de México','Bosque Real','Huixquilucan','QUN-CV-121920','2021-04-30 20:30:50','2021-04-30 17:37:38'),(67,'19°23\'42.0\"N\"','99°16\'49.6\"W\"','Estado de México','Valle de Las Palmas','Huixquilucan','QUN-CV-121922','2021-04-30 20:30:50','2021-04-30 17:37:38'),(68,'19°24\'24.3\"N\"','99°15\'53.5\"W\"','Estado de México','Parques de la Herradura','Huixquilucan','QUN-CV-121923','2021-04-30 20:30:50','2021-04-30 17:37:38'),(69,'19°22\'51.5\"N\"','99°16\'23.1\"W\"','Ciudad de México','Lomas de Vista Hermosa','Cuajimalpa','QUN-CV-121924','2021-04-30 20:30:50','2021-04-30 17:37:38'),(70,'19°21\'56.0\"N \"','99°16\'55.3\"W\"','Ciudad de México','El Molino','Cuajimalpa','QUN-CV-121925','2021-04-30 20:30:50','2021-04-30 17:37:38'),(71,'19°23\'03.9\"N\"','99°17\'29.8\"W\"','Estado de México','Huixquilucan','Jesús del Monte','QUN-DR-071945','2021-04-30 20:30:50','2021-04-30 17:37:38'),(72,'19°24\'27.0\"N\"','99°17\'06.9\"W\"','Estado de México','Huixquilucan','Lomas Country Club','QUN-DR-081902','2021-04-30 20:30:50','2021-04-30 17:37:38'),(73,'19°23\'34.0\"N\"','99°17\'08.8\"W\"','Estado de México','Huixquilucan','Hacienda de las Palmas','QUN-DR-081916','2021-04-30 20:30:50','2021-04-30 17:37:38'),(74,'19°23\'13.9\"N\"','99°17\'12.1\"W\"','Estado de México','Huixquilucan','Hacienda de las Palmas','QUN-DR-081918','2021-04-30 20:30:50','2021-04-30 17:37:38'),(75,'19°23\'54.8\"N\"','99°16\'51.6\"W\"','Estado de México','Huixquilucan','Interlomas','QUN-DR-081919','2021-04-30 20:30:50','2021-04-30 17:37:38'),(76,'19°23\'54.8\"N\"','99°16\'51.6\"W\"','Estado de México','Huixquilucan','Interlomas','QUN-DR-081922','2021-04-30 20:30:50','2021-04-30 17:37:38'),(77,'19°24\'23.6\"N\"','99°16\'39.4\"W\"','Estado de México','Naucalpan de Juarez','Bosques de las Palmas','QUN-DR-101903','2021-04-30 20:30:50','2021-04-30 17:37:38'),(78,'19°23\'46.5\"N\"','99°17\'16.8\"W\"','Estado de México','Huixquilucan','Jesús del Monte','QUN-DR-101904','2021-04-30 20:30:50','2021-04-30 17:37:38'),(79,'19°22\'41.4\"N\"','99°15\'24.1\"W\"','Ciudad de México','Álvaro Obregón','Lomas de Santa Fé','QUN-DR-101905','2021-04-30 20:30:50','2021-04-30 17:37:38'),(80,'19°23\'17.5\"N\"','99°15\'27.2\"W\"','Ciudad de México','Cuajimalpa de Morelos','Bosques de las Lomas','QUN-DR-101915','2021-04-30 20:30:50','2021-04-30 17:37:38'),(81,'19°23\'51.4\"N\"','99°17\'13.0\"W\"','Estado de México','Jesús del Monte','Huixquilucan','QUN-DR-101917','2021-04-30 20:30:50','2021-04-30 17:37:38'),(82,'19°25\'34.9\"N\"','99°15\'25.3\"W\"','Estado de México','Bosques de la Herradura','Huixquilucan','QUN-DR-101922','2021-04-30 20:30:50','2021-04-30 17:37:38'),(83,'19°25\'29.9\"N\"','99°17\'18.7\"W\"','Estado de México','Bosque Real','Huixquilucan','QUN-DR-111903','2021-04-30 20:30:50','2021-04-30 17:37:38'),(84,'19°23\'02.4\"N\"','99°17\'30.2\"W\"','Estado de México','Jesús del Monte','Huixquilucan','QUN-DR-121904','2021-04-30 20:30:50','2021-04-30 17:37:38'),(85,'19°24\'27.0\"N\"','99°17\'06.9\"W\"','Estado de México','Huixquilucan','Lomas Country Club','QUN-DV-081901','2021-04-30 20:30:50','2021-04-30 17:37:38'),(86,'19°23\'04.7\"N\"','99°17\'37.4\"W\"','Estado de México','Huixquilucan','Interlomas','QUN-DV-081923','2021-04-30 20:30:50','2021-04-30 17:37:38'),(87,'19°23\'35.3\"N\"','99°16\'58.6\"W\"','Estado de México','Huixquilucan','Interlomas','QUN-DV-081924','2021-04-30 20:30:50','2021-04-30 17:37:38'),(88,'19°22\'09.4\"N\"','99°17\'45.5\"W\"','Ciudad de México','Cuajimalpa de Morelos','Jesús del Monte','QUN-DV-081925','2021-04-30 20:30:50','2021-04-30 17:37:38'),(89,'19°24\'47.9\"N\"','99°16\'38.5\"W\"','Estado de México','Huixquilucan','Lomas Country Club','QUN-DV-081926','2021-04-30 20:30:50','2021-04-30 17:37:38'),(90,'19°24\'30.8\"N\"','99°15\'30.8\"W\"','Estado de México','Huixquilucan','Lomas Anahuac','QUN-DV-081928','2021-04-30 20:30:50','2021-04-30 17:37:38'),(91,'19°24\'30.8\"N\"','99°15\'30.8\"W\"','Estado de México','Huixquilucan','Lomas Anahuac','QUN-DV-081929','2021-04-30 20:30:50','2021-04-30 17:37:38'),(92,'19°24\'30.8\"N\"','99°15\'30.8\"W\"','Estado de México','Huixquilucan','Lomas Anahuac','QUN-DV-081930','2021-04-30 20:30:50','2021-04-30 17:37:38'),(93,'19°24\'30.8\"N\"','99°15\'30.8\"W\"','Estado de México','Huixquilucan','Lomas Anahuac','QUN-DV-081931','2021-04-30 20:30:50','2021-04-30 17:37:38'),(94,'19°23\'23.0\"N\"','99°17\'20.7\"W\"','Estado de México','Huixquilucan ','Hacienda de las Palmas','QUN-DV-081932','2021-04-30 20:30:50','2021-04-30 17:37:38'),(95,'19°25\'35.7\"N\"','99°15\'25.2\"W\"','Estado de México','Naucalpan de Juarez','Bosques de la Herradura','QUN-DV-081933','2021-04-30 20:30:50','2021-04-30 17:37:38'),(96,'19°22\'29.5\"N\"','99°15\'10.9\"W\"','Ciudad de México','Cuajimalpa de Morelos','Lomas de Santa Fé','QUN-DV-081934','2021-04-30 20:30:50','2021-04-30 17:37:38'),(97,'19°24\'12.4\"N\"','99°16\'30.4\"W\"','Ciudad de México','Huixquilucan','Interlomas','QUN-DV-081935','2021-04-30 20:30:50','2021-04-30 17:37:38'),(98,'19°24\'04.9\"N\"','99°16\'59.4\"W\"','Estado de México','Bosque de las Palmas','Huixquilucan','QUN-DV-081936','2021-04-30 20:30:50','2021-04-30 17:37:38'),(99,'19°22\'23.4\"N\"','99°17\'35.6\"W\"','Ciudad de México','Cuajimalpa de Morelos','Jesús del Monte','QUN-DV-081937','2021-04-30 20:30:50','2021-04-30 17:37:38'),(100,'19°24\'48.0\"N\"','99°16\'38.5\"W\"','Estado de México','Huixquilucan','Lomas Country Club','QUN-DV-081938','2021-04-30 20:30:50','2021-04-30 17:37:38'),(101,'19°22\'22.9\"N\"','99°17\'36.7\"W\"','Estado de México','Huixquilucan','Jesús del Monte','QUN-DV-081939','2021-04-30 20:30:50','2021-04-30 17:37:38'),(102,'19°26\'09.5\"N\"','99°11\'49.2\"W\"','Ciudad de México','Polanco','Miguel Hidalgo','QUN-DV-081940','2021-04-30 20:30:50','2021-04-30 17:37:38'),(103,'19°23\'52.9\"N\"','99°17\'31.9\"W\"','Estado de México','Huixquilucan','Interlomas','QUN-DV-081943','2021-04-30 20:30:50','2021-04-30 17:37:38'),(104,'19°23\'17.3\"N\"','99°17\'14.8\"W\"','Estado de México','Huixquilucan','Villa Florence','QUN-DV-081944','2021-04-30 20:30:50','2021-04-30 17:37:38'),(105,'19°23\'03.9\"N\"','99°17\'29.8\"W\"','Estado de México','Huixquilucan','Jesús del Monte','QUN-DV-081945','2021-04-30 20:30:50','2021-04-30 17:37:38'),(106,'19°25\'39.5\"N\"','99°15\'26.8\"W\"','Estado de México','Naucalpan de Juarez','Lomas del Río','QUN-DV-081946','2021-04-30 20:30:50','2021-04-30 17:37:38'),(107,'19°24\'35.5\"N\"','99°15\'31.8\"W\"','Estado de México','Huixquilucan','Lomas Anahuac','QUN-DV-081947','2021-04-30 20:30:50','2021-04-30 17:37:38'),(108,'19°26\'16.0\"N\"','99°12\'14.3\"W\"','Ciudad de México','Miguel Hidalgo','Polanco','QUN-DV-081948','2021-04-30 20:30:50','2021-04-30 17:37:38'),(109,'19°26\'16.0\"N\"','99°12\'14.3\"W\"','Ciudad de México','Miguel Hidalgo','Polanco','QUN-DV-081949','2021-04-30 20:30:50','2021-04-30 17:37:38'),(110,'19°24\'12.1\"N\"','99°16\'30.5\"W\"','Estado de México','Huixquilucan','Interlomas','QUN-DV-081950','2021-04-30 20:30:50','2021-04-30 17:37:38'),(111,'19°21\'10.9\"N\"','99°14\'43.7\"W\"','Ciudad de México','Álvaro Obregón','Lomas de Tarango','QUN-DV-081951','2021-04-30 20:30:50','2021-04-30 17:37:38'),(112,'19°26\'12.8\"N\"','99°11\'09.9\"W\"','Ciudad de México','Miguel Hidalgo','Polanco','QUN-DV-081952','2021-04-30 20:30:50','2021-04-30 17:37:38'),(113,'19°22\'19.0\"N\"','99°14\'50.1\"W\"','Ciudad de México','Álvaro Obregón','Lomas de Santa Fé','QUN-DV-081953','2021-04-30 20:30:50','2021-04-30 17:37:38'),(114,'19°22\'19.2\"N\"','99°17\'36.7\"W\"','Estado de México','Huixquilucan','Jesús del Monte','QUN-DV-081954','2021-04-30 20:30:50','2021-04-30 17:37:38'),(115,'19°23\'51.4\"N\"','99°17\'13.0\"W\"','Estado de México','Jesús del Monte','Huixquilucan','QUN-DV-101902','2021-04-30 20:30:50','2021-04-30 17:37:38'),(116,'19°22\'41.4\"N\"','99°15\'24.1\"W\"','Ciudad de México','Álvaro Obregón','Lomas de Santa Fé','QUN-DV-101906','2021-04-30 20:30:50','2021-04-30 17:37:38'),(117,'19°24\'12.9\"N\"','99°16\'29.8\"W\"','Estado de México','Bosque de las Palmas ','Huixquilucan','QUN-DV-101909','2021-04-30 20:30:50','2021-04-30 17:37:38'),(118,'19°21\'58.9\"N\"','99°15\'07.1\"W\"','Ciudad de México','Álvaro Obregón','Santa Fé','QUN-DV-101910','2021-04-30 20:30:50','2021-04-30 17:37:38'),(119,'19°25\'53.6\"N\"','99°16\'57.0\"W\"','Estado de México','Bosque Real','Huixquilucan','QUN-DV-111901','2021-04-30 20:30:50','2021-04-30 17:37:38'),(120,'19°25\'29.9\"N\"','99°17\'18.7\"W\"','Estado de México','Bosque Real','Huixquilucan','QUN-DV-111902','2021-04-30 20:30:50','2021-04-30 17:37:38'),(121,'19°23\'02.4\"N\"','99°17\'30.2\"W\"','Estado de México','Jesús del Monte','Huixquilucan','QUN-DV-111904','2021-04-30 20:30:50','2021-04-30 17:37:38'),(122,'19°24\'26.3\"N\"','99°17\'41.1\"W\"','Estado de México','Lomas Country Club','Huixquilucan','QUN-DV-111905','2021-04-30 20:30:50','2021-04-30 17:37:38'),(123,'19°24\'34.3\"N\"','99°16\'14.8\"W\"','Estado de México','Lomas de la Herradura','Huixquilucan','QUN-DV-111906','2021-04-30 20:30:50','2021-04-30 17:37:38'),(124,'19°26\'00.5\"N\"','99°17\'13.9\"W\"','Estado de México','Bosque Real','Huixquilucan','QUN-DV-121903','2021-04-30 20:30:50','2021-04-30 17:37:38'),(125,'19°23\'02.4\"N\"','99°17\'30.2\"W\"','Estado de México','Jesús del Monte','Huixquilucan','QUN-DV-121904','2021-04-30 20:30:50','2021-04-30 17:37:38'),(126,'19°23\'02.4\"N\"','99°17\'30.2\"W\"','Estado de México','Jesús del Monte','Huixquilucan','QUN-DV-121905','2021-04-30 20:30:50','2021-04-30 17:37:38');
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-02 23:09:10
