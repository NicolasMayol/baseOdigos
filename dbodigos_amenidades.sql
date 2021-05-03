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
-- Table structure for table `amenidades`
--

DROP TABLE IF EXISTS `amenidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenidades` (
  `id_amenidades` int NOT NULL AUTO_INCREMENT,
  `amenidades` text,
  `fk_inmueble` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_amenidades`),
  KEY `fk_amenidades_idx` (`fk_inmueble`),
  CONSTRAINT `fk_amenidades` FOREIGN KEY (`fk_inmueble`) REFERENCES `inmuebles` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenidades`
--

LOCK TABLES `amenidades` WRITE;
/*!40000 ALTER TABLE `amenidades` DISABLE KEYS */;
INSERT INTO `amenidades` VALUES (1,'Cocina integral, Cuarto de servicio, Bodega, Cisterna, Vigilancia','IBS-CR-081983','2021-04-30 20:25:41','2021-04-30 17:38:46'),(2,'Cocina integral, Family, Chimenea, Cuarto de servicio, Cuarto de lavado, Despensa, Bodega, Cisterna','IBS-CV-081906','2021-04-30 20:25:41','2021-04-30 17:38:46'),(3,'Cocina integral, Family, Chimenea, Cuarto de servicio, Cuarto de lavado, Despensa, Bodega, Cisterna','IBS-CV-081907','2021-04-30 20:25:41','2021-04-30 17:38:46'),(4,'Cocina integral, Chimenea, Cava, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Vigilancia','IBS-CV-081932','2021-04-30 20:25:41','2021-04-30 17:38:46'),(5,'Barra desayunador, Estudio, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Vigilancia, Salón de juegos','IBS-CV-081945','2021-04-30 20:25:41','2021-04-30 17:38:46'),(6,'Cocina Integral, Estudio, Family, Cuarto Servicio, Cuarto de Lavado, Despensa, Desayunador, Bodega, \nCisterna, Vigilancia, ','IBS-CV-081950','2021-04-30 20:25:41','2021-04-30 17:38:46'),(7,'Cocina Integral, Family, Cuarto Servicio, Cuarto de Lavado, Despensa, Bodega, Puerta Electrica, \n Cisterna, Zona Arbolada, Vigilancia, Juegos Infantiles ','IBS-CV-081952','2021-04-30 20:25:41','2021-04-30 17:38:46'),(8,'Cocina integral, Estudio, Cava, Cuarto de Servicio, Cuarto de Lavado, Desayunador, Cisterna, Vigilancia, Salón de fiestas, Mantenimiento semestral','IBS-CV-081959','2021-04-30 20:25:41','2021-04-30 17:38:46'),(9,'Cocina integral, Barra desayunador, Estudio, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Cisterna, Vigilancia','IBS-CV-081961','2021-04-30 20:25:41','2021-04-30 17:38:46'),(10,'Cocina integral, Cuarto de servicio, Bodega, Cisterna, Vigilancia','IBS-CV-081982','2021-04-30 20:25:41','2021-04-30 17:38:46'),(11,'Cocina Integral, Barra Desayunador, Estudio, Cuarto Servicio, Cuarto de Lavado, Despensa, Desayunador, Bodega, \nPuerta Electrica, Vigilancia, Juegos Infantiles, Gimnasio','IBS-CV-111902','2021-04-30 20:25:41','2021-04-30 17:38:46'),(12,'Cocina Integral, Family, Cuarto de Lavado, Bodega, Puerta Electrica, Cisterna, \nZona Arbolada, Vigilancia, Jacuzzi','IBS-CV-111915','2021-04-30 20:25:41','2021-04-30 17:38:46'),(13,'Cocina integral, Estudio, Family, Cava, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Bodega, Cisterna, Vigilancia, Juegos infantiles, Gimnasio, Lounge, Bar, Boliche, Business center, Cancha de tenis','IBS-DR-071912','2021-04-30 20:25:41','2021-04-30 17:38:46'),(14,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Desayunador, Vigilancia, Jacuzzi, Boliche, Business Center, Juegos infantiles, Cine, Pádel, Tenis, Salón de fiestas, Salón de juegos, Alberca','IBS-DR-081924','2021-04-30 20:25:41','2021-04-30 17:38:46'),(15,'Cocina integral, Barra desayunador, Cuarto de servicio, Cuarto de lavado, Despensa, Bodega, Cisterna, Vigilancia','IBS-DR-081970','2021-04-30 20:25:41','2021-04-30 17:38:46'),(16,'Cocina integral, Barra desayunador, Cuarto de servicio, Cuarto de lavado, Cisterna, Vigilancia, Jacuzzi, Juegos infantiles, Gimnasio, Cine, Alberca','IBS-DR-081976','2021-04-30 20:25:41','2021-04-30 17:38:46'),(17,'Cocina integral, Barra desayunador, Estudio, Cuarto de servicio, Cuarto de lavado, Bodega, Cisterna, Vigilancia, Juegos infantiles, Gimnasio, Salón de fiestas','IBS-DR-081979','2021-04-30 20:25:41','2021-04-30 17:38:46'),(18,'Cocina integral, Cuarto de lavado, Cisterna, Vigilancia','IBS-DR-081980','2021-04-30 20:25:41','2021-04-30 17:38:46'),(19,'Cocina integral, Barra desayunador, Cisterna, Vigilancia, Jacuzzi, Business center, Juegos infantiles, Gimnasio, Cine, Alberca','IBS-DR-081981','2021-04-30 20:25:41','2021-04-30 17:38:46'),(20,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Bodega, Cisterna, Zona arbolada, Vigilancia, Juegos infantiles, Gimnasio, Business center, Salón de fiestas','IBS-DR-081990','2021-04-30 20:25:41','2021-04-30 17:38:46'),(21,'Cocina integral, Barra desayunador, Cuarto de servicio, Cuarto de lavado, Despensa, Jacuzzi, Juegos infantiles, Boliche, Pádel, Tenis, Salón de fiestas, Alberca, Gimnasio','IBS-DR-081995','2021-04-30 20:25:41','2021-04-30 17:38:46'),(22,'Cocina integral, Barra desayunador, Estudio, Family, Cuarto de servicio, Cuarto de lavado, Cisterna, Vigilancia','IBS-DR-091965','2021-04-30 20:25:41','2021-04-30 17:38:46'),(23,'Cocina Integral, Cuarto Servicio, Cuarto de Lavado, Despensa, Desayunador, Amueblado, Puerta Electrica, Cisterna,   \nZona Arbolada, Vigilancia','IBS-DR-101902','2021-04-30 20:25:41','2021-04-30 17:38:46'),(24,'Cocina integral, Estudio, Family, Cava, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Bodega, Cisterna, Vigilancia, Juegos infantiles, Gimnasio, Lounge, Bar, Boliche, Business center, Cancha de tenis','IBS-DV-081912','2021-04-30 20:25:41','2021-04-30 17:38:46'),(25,'Cocina integral, Barra desayunador, Cuarto de lavado, Despensa, Cisterna, Vigilancia, Juegos infantiles, Gimnasio, Cancha de pádel, Cancha de tenis, Alberca','IBS-DV-081914','2021-04-30 20:25:41','2021-04-30 17:38:46'),(26,'Cocina integral, Barra desayunador, Despensa, Cisterna, Vigilancia, Jacuzzi, Business center, Gimnasio, Cine, Salón de juegos, Salón de fiestas, Alberca','IBS-DV-081922','2021-04-30 20:25:41','2021-04-30 17:38:46'),(27,'Cocina Integral, Family, Cava, Cuarto Servicio, Cuarto de Lavado, Amueblado,\n Cisterna, Vigilancia, Juegos Infantiles, Gimnasio, Salón Fiestas, Salón Juegos ','IBS-DV-081923','2021-04-30 20:25:41','2021-04-30 17:38:46'),(28,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Bodega, Cisterna, Vigilancia, Gimnasio','IBS-DV-081926','2021-04-30 20:25:41','2021-04-30 17:38:46'),(29,'Family, Cuarto de servicio, Cuarto de lavado, Despensa, Bodega, Cisterna, Vigilancia','IBS-DV-081951','2021-04-30 20:25:41','2021-04-30 17:38:46'),(30,'Cocina Integral, Barra Desayunador, Cuarto de Lavado, Bodega, Cisterna, \nVigilancia, Juegos Infantiles, Gimnasio, Lounge, Salón Fiestas, Salón Juegos ','IBS-DV-081957','2021-04-30 20:25:41','2021-04-30 17:38:46'),(31,'Cocina integral, Cuarto de servicio, Bodega, Vigilancia','IBS-DV-081958','2021-04-30 20:25:41','2021-04-30 17:38:46'),(32,'Salón de juegos, Barra desayunador, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Bodega, Cisterna, Vigilancia, Gimnasio, Salón de fiestas','IBS-DV-081960','2021-04-30 20:25:41','2021-04-30 17:38:46'),(33,'Chimenea, Cava, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Bodega, Cisterna, Vigilancia, Juegos infantiles, Gimnasio, Salón de fiestas, Salón de juegos, Alberca','IBS-DV-081962','2021-04-30 20:25:41','2021-04-30 17:38:46'),(34,'Salón de fiestas, Cocina integral, Barra desayunador, Bodega, Cisterna, Vigilancia, Jacuzzi, Juegos infantiles, Gimnasio','IBS-DV-081978','2021-04-30 20:25:41','2021-04-30 17:38:46'),(35,'Cocina integral, Barra desayunador, Estudio, Family, Puerta eléctrica, Zona arbolada, Cuarto de servicio, Cuarto de lavado, Despensa, Bodega, Vigilancia','IBS-DV-081984','2021-04-30 20:25:41','2021-04-30 17:38:46'),(36,'Cocina integral, Barra desayunador, Estudio, Chimenea, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Bodega, Zona arbolada, Vigilancia, Jacuzzi, Bar, Business center, Juegos infantiles, Gimnasio, Cancha de tenis, Mantenimiento club de golf $16,000','IBS-DV-081987','2021-04-30 20:25:41','2021-04-30 17:38:46'),(37,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Bodega, Cisterna, Zona arbolada, Vigilancia, Juegos infantiles, Gimnasio, Business center, Salón de fiestas','IBS-DV-081989','2021-04-30 20:25:41','2021-04-30 17:38:46'),(38,'Cocina Integral, Family, Biblioteca, Cuarto Servicio, Cuarto de Lavado, Despensa, Desayunador, Bodega, Cisterna,  \nVigilancia, Jazuzzi, Gimnasio, Cine, Lounge, Salón de Fiestas, Salón de Juegos','IBS-DV-081993','2021-04-30 20:25:41','2021-04-30 17:38:46'),(39,'Cocina integral, Cuarto de servicio, Cisterna, Vigilancia','IBS-DV-081996','2021-04-30 20:25:41','2021-04-30 17:38:46'),(40,'Cocina integral, Barra desayunador, Estudio, Family, Cuarto de servicio, Cuarto de lavado, Cisterna, Vigilancia','IBS-DV-091964','2021-04-30 20:25:41','2021-04-30 17:38:46'),(41,'Cocina Integral, Family, Cuarto Servicio, Cuarto de Lavado, Desayunador, Bodega, \nVigilancia, Jazuzzi, Juegos Infantiles, Gimnasio, Cine, Lounge, Canche de Tenis, Alberca','IBS-DV-101903','2021-04-30 20:25:41','2021-04-30 17:38:46'),(42,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Amueblado, Vigilancia','QUN-CR-081903','2021-04-30 20:25:41','2021-04-30 17:38:46'),(43,'Family, Cuarto de servicio, Cuarto de lavado, Desayunador','QUN-CR-081904','2021-04-30 20:25:41','2021-04-30 17:38:46'),(44,'Cocina Integral, Cuarto de servicio, Cuarto de Lavado, Bodega, Vigilancia','QUN-CR-101911','2021-04-30 20:25:41','2021-04-30 17:38:46'),(45,'Cocina integral, Barra desayunador, Estudio, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Vigilancia','QUN-CR-101916','2021-04-30 20:25:41','2021-04-30 17:38:46'),(46,'Cocina Integral, Cuarto de servicio, Salón de Fiestas, Vigilancia','QUN-CR-121921','2021-04-30 20:25:41','2021-04-30 17:38:46'),(47,'Cocina Integral, Barra Desayunador, Estudio, Family, Cuarto Servicio, Cuarto de Lavado, Despensa, Bodega, \nZona Arbolada, Vigilancia, Juegos Infantiles','QUN-CR-121926','2021-04-30 20:25:41','2021-04-30 17:38:46'),(48,'Cocina Integral, Barra Desayunador, Estudio, Family, Cuarto Servicio, Cuarto de Lavado, Despensa, Desayunador,\n Bodega, Puerta Electrica, Vigilancia','QUN-CR-121927','2021-04-30 20:25:41','2021-04-30 17:38:46'),(49,'Family, Cuarto de servicio, Cuarto de lavado, Despensa, Vigilancia, Juegos infantiles','QUN-CV-081905','2021-04-30 20:25:41','2021-04-30 17:38:46'),(50,'Bodega, Vigilancia, Juegos infantiles, Salón de fiestas','QUN-CV-081906','2021-04-30 20:25:41','2021-04-30 17:38:46'),(51,'Cocina integral, Estudio, Family, Cuarto de servicio, Cuarto de lavado, Cisterna','QUN-CV-081907','2021-04-30 20:25:41','2021-04-30 17:38:46'),(52,'Cocina Integral, Cuarto de servicio, Desayunador, Estudio','QUN-CV-081908','2021-04-30 20:25:41','2021-04-30 17:38:46'),(53,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Desayunador, Vigilancia','QUN-CV-081909','2021-04-30 20:25:41','2021-04-30 17:38:46'),(54,'Cocina integral, Chimenea, Cuarto de servicio, Cuarto de lavado, Despensa, Alarma, Cisterna, Vigilancia','QUN-CV-081910','2021-04-30 20:25:41','2021-04-30 17:38:46'),(55,'Cocina integral, Chimenea, Cuarto de servicio, Cuarto de lavado, Despensa, Alarma, Cisterna, Vigilancia','QUN-CV-081911','2021-04-30 20:25:41','2021-04-30 17:38:46'),(56,'Cocina, Family, Cuarto de servicio, Cuarto de lavado, Bodega, Vigilancia','QUN-CV-081912','2021-04-30 20:25:41','2021-04-30 17:38:46'),(57,'Cocina integral, Barra desayunador, Family, Cava, Cuarto de lavado, Despensa, Desayunador','QUN-CV-081913','2021-04-30 20:25:41','2021-04-30 17:38:46'),(58,'Cocina integral, Barra desayunador, Estudio, Family, Biblioteca, Chimenea, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Bodega, Zona arbolada, Vigilancia','QUN-CV-081915','2021-04-30 20:25:41','2021-04-30 17:38:46'),(59,'Cocina integral, Barra desayunador, Estudio, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Vigilancia','QUN-CV-101901','2021-04-30 20:25:41','2021-04-30 17:38:46'),(60,'Cocina integral, Barra desayunador, Estudio, Family, Biblioteca, Chimenea, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Bodega, Zona arbolada, Vigilancia','QUN-CV-101908','2021-04-30 20:25:41','2021-04-30 17:38:46'),(61,'Cocina integral, Estudio, Barra desayunador, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Bodega, Cisterna, Zona arbolada','QUN-CV-101912','2021-04-30 20:25:41','2021-04-30 17:38:46'),(62,'Cocina integral, Barra desayunador, Estudio, Cava, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Vigilancia, Juegos infantiles','QUN-CV-101913','2021-04-30 20:25:41','2021-04-30 17:38:46'),(63,'Cocina Integral, Barra Desayunar, Estudio, Chimenea, Cuarto Servicio, Despensa, Desayunador, Bodega, Cisterna, Zona Arbolada, Vigilancia','QUN-CV-101914','2021-04-30 20:25:41','2021-04-30 17:38:46'),(64,'Cocina Integral, Cuarto de servicio, Estudio, Vigilancia','QUN-CV-121901','2021-04-30 20:25:41','2021-04-30 17:38:46'),(65,'Cocina Integral, Estudio, Family, Cuarto Servicio, Cuarto de Lavado, Despensa, Desayunador, \nAlarma, Cisterna, Zona Arbolada, Vigilancia','QUN-CV-121902','2021-04-30 20:25:41','2021-04-30 17:38:46'),(66,'Cocina Integral, Barra Desayunar, Estudio, Chimenea, Cuarto Servicio, Despensa, Desayunador, Bodega, Cisterna, Zona Arbolada, Vigilancia','QUN-CV-121920','2021-04-30 20:25:41','2021-04-30 17:38:46'),(67,'Cocina Integral, Cuarto de servicio, Salón de Fiestas, Vigilancia','QUN-CV-121922','2021-04-30 20:25:41','2021-04-30 17:38:46'),(68,'Cocina Integral, Cuarto de servicio, Bodega, Vigilancia','QUN-CV-121923','2021-04-30 20:25:41','2021-04-30 17:38:46'),(69,'Cocina Integral, Barra Desayunador, Estudio, Family, Cuarto Servicio, Cuarto de Lavado, Despensa, Desayunador, Bodega, Puerta Electrica, Vigilancia','QUN-CV-121924','2021-04-30 20:25:41','2021-04-30 17:38:46'),(70,'Cocina Integral, Barra Desayunador, Estudio, Family, Cuarto Servicio, Cuarto de Lavado, Despensa, Bodega, \nZona Arbolada, Vigilancia, Juegos Infantiles','QUN-CV-121925','2021-04-30 20:25:41','2021-04-30 17:38:46'),(71,'Family, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Vigilancia, Juegos infantiles, Gimnasio, Cine, Cancha de pádel, Alberca','QUN-DR-071945','2021-04-30 20:25:41','2021-04-30 17:38:46'),(72,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Bodega, Juegos infantiles, Gimnasio, Cancha de tenis','QUN-DR-081902','2021-04-30 20:25:41','2021-04-30 17:38:46'),(73,'Cuarto de servicio, Cuarto de lavado, Despensa, Vigilancia, Juegos infantiles, Gimnasio, Salón de fiestas, Alberca','QUN-DR-081916','2021-04-30 20:25:41','2021-04-30 17:38:46'),(74,'Estudio, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Vigilancia, Juegos infantiles, Gimnasio','QUN-DR-081918','2021-04-30 20:25:41','2021-04-30 17:38:46'),(75,'Bodega, Vigilancia, Gimnasio, Cancha de tenis, Salón de fiestas, Alberca','QUN-DR-081919','2021-04-30 20:25:41','2021-04-30 17:38:46'),(76,'Bodega, Vigilancia, Gimnasio, Cancha de tenis, Salón de fiestas, Alberca','QUN-DR-081922','2021-04-30 20:25:41','2021-04-30 17:38:46'),(77,'Cocina integral, Barra desayunador, Cuarto de lavado, Bodega, Vigilancia, Jacuzzi, Juegos infantiles, Gimnasio, Cancha de tenis, Alberca','QUN-DR-101903','2021-04-30 20:25:41','2021-04-30 17:38:46'),(78,'Cocina integral, Cuarto de lavado, Despensa, Bodega, Vigilancia, Jacuzzi, Gimnasio, Cine, Salón de fiestas, Salón de juegos, Alberca','QUN-DR-101904','2021-04-30 20:25:41','2021-04-30 17:38:46'),(79,'Cocina integral, Barra desayunador, Cuarto de lavado, Despensa, Puerta eléctrica, Vigilancia, Jacuzzi, Bar, Business center, Gimnasio, Lounge, Salón de fiestas, Salón de juegos, Alberca','QUN-DR-101905','2021-04-30 20:25:41','2021-04-30 17:38:46'),(80,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Zona arbolada, Vigilancia','QUN-DR-101915','2021-04-30 20:25:41','2021-04-30 17:38:46'),(81,'Cocina Integral, Family, Cuarto Servicio, Cuarto de Lavado, Despensa, Vigilancia, Gimnasio,\n Cancha de Paddle, Cancha de Tenis, Salón de Juegos, Salón de fiestas Alberca','QUN-DR-101917','2021-04-30 20:25:41','2021-04-30 17:38:46'),(82,'Cocina Integral, Barra Desayunar, Estudio, Family, Cuarto Servicio, Cuarto de Lavado, Despensa, Desayunador, Cisterna, Zona Arbolada, Vigilancia, Juegos Infantiles, Gimnasio, Cancha de Paddle, Cancha de Basket, Salón de Fiestas, Salon de Juegos, Alberca Cubierta','QUN-DR-101922','2021-04-30 20:25:41','2021-04-30 17:38:46'),(83,'Cocina integral, Vigilancia, Alberca, Gimnasio','QUN-DR-111903','2021-04-30 20:25:41','2021-04-30 17:38:46'),(84,'Cocina Integral, Estudio,Cuarto de servicio,  Cuarto de Lavado, Bodega,  Despensa, Alberca, Gimnasio,  Paddle, Salón de fiestas, Vigilancia','QUN-DR-121904','2021-04-30 20:25:41','2021-04-30 17:38:46'),(85,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Bodega, Juegos infantiles, Gimnasio, Cancha de tenis','QUN-DV-081901','2021-04-30 20:25:41','2021-04-30 17:38:46'),(86,'Cocina integral, Cuarto de servicio, Cuarto de lavado, Cine, Cancha de pádel, Alberca','QUN-DV-081923','2021-04-30 20:25:41','2021-04-30 17:38:46'),(87,'Cocina integral, Cuarto de servicio, Cuarto de lavado, Cisterna, Vigilancia, Juegos infantiles, Alberca','QUN-DV-081924','2021-04-30 20:25:41','2021-04-30 17:38:46'),(88,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Despensa, Puerta eléctrica, Vigilancia','QUN-DV-081925','2021-04-30 20:25:41','2021-04-30 17:38:46'),(89,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Bodega, Vigilancia, Juegos infantiles, Gimnasio, Alberca','QUN-DV-081926','2021-04-30 20:25:41','2021-04-30 17:38:46'),(90,'Vigilancia, Juegos infantiles, Gimnasio, Salón de fiestas','QUN-DV-081928','2021-04-30 20:25:41','2021-04-30 17:38:46'),(91,'Vigilancia, Juegos infantiles, Gimnasio, Salón de fiestas','QUN-DV-081929','2021-04-30 20:25:41','2021-04-30 17:38:46'),(92,'Vigilancia, Juegos infantiles, Gimnasio, Salón de fiestas','QUN-DV-081930','2021-04-30 20:25:41','2021-04-30 17:38:46'),(93,'Vigilancia, Juegos infantiles, Gimnasio, Salón de fiestas','QUN-DV-081931','2021-04-30 20:25:41','2021-04-30 17:38:46'),(94,'Cocina Integral, Estudio,Cuarto de servicio, Cuarto de lavado, Bodega, Cancha de Paddle, Alberca, Vigilancia','QUN-DV-081932','2021-04-30 20:25:41','2021-04-30 17:38:46'),(95,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Desayunador, Vigilancia, Juegos infantiles, Gimnasio, Salón de fiestas, Cancha de tenis, Alberca','QUN-DV-081933','2021-04-30 20:25:41','2021-04-30 17:38:46'),(96,'Cocina integral, Barra desayunador, Cuarto de lavado, Cisterna, Vigilancia, Juegos infantiles, Gimnasio, Jacuzzi','QUN-DV-081934','2021-04-30 20:25:41','2021-04-30 17:38:46'),(97,'Barra desayunador, Cuarto de servicio, Cuarto de lavado, Vigilancia, Juegos infantiles, Gimnasio, Cine, Jacuzzi, Business center','QUN-DV-081935','2021-04-30 20:25:41','2021-04-30 17:38:46'),(98,'Cuarto de Servicio, Alberca, Salón de fiestas, Gimnasio ','QUN-DV-081936','2021-04-30 20:25:41','2021-04-30 17:38:46'),(99,'Cocina integral, Cuarto de servicio, Cuarto de lavado, Vigilancia','QUN-DV-081937','2021-04-30 20:25:41','2021-04-30 17:38:46'),(100,'Cocina integral, Cuarto de servicio, Cuarto de lavado, Vigilancia, Juegos infantiles, Gimnasio, Cancha de tenis, Alberca','QUN-DV-081938','2021-04-30 20:25:41','2021-04-30 17:38:46'),(101,'Cocina integral, Cuarto de servicio, Cuarto de lavado, Despensa, Bodega, Amueblado, Puerta eléctrica, Alarma, Cisterna, Zona arbolada, Vigilancia, Juegos infantiles, Gimnasio, Cine, Jacuzzi, Bar, Boliche, Business center, Cancha de tenis, Salón de fiestas, Alberca','QUN-DV-081939','2021-04-30 20:25:41','2021-04-30 17:38:46'),(102,'Cocina Integral, Cuarto de servicio, Desayunador, Vigilancia','QUN-DV-081940','2021-04-30 20:25:41','2021-04-30 17:38:46'),(103,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Bodega, Vigilancia, Gimnasio, Cancha de pádel, Salón de fiestas','QUN-DV-081943','2021-04-30 20:25:41','2021-04-30 17:38:46'),(104,'Cuarto de servicio, Cuarto de lavado, Bodega, Vigilancia, Gimnasio, Salón de juegos, Alberca','QUN-DV-081944','2021-04-30 20:25:41','2021-04-30 17:38:46'),(105,'Family, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Vigilancia, Juegos infantiles, Gimnasio, Cine, Cancha de pádel, Alberca','QUN-DV-081945','2021-04-30 20:25:41','2021-04-30 17:38:46'),(106,'Cocina integral, Family, Cuarto de servicio, Cuarto de lavado, Vigilancia, Alberca','QUN-DV-081946','2021-04-30 20:25:41','2021-04-30 17:38:46'),(107,'Cocina integral, Cuarto de servicio, Cuarto de lavado, Despensa, Bodega, Salón de fiestas, Salón de juegos, Alberca','QUN-DV-081947','2021-04-30 20:25:41','2021-04-30 17:38:46'),(108,'Cocina integral, Cuarto de servicio, Cuarto de lavado, Bodega, Juegos infantiles, Gimnasio','QUN-DV-081948','2021-04-30 20:25:41','2021-04-30 17:38:46'),(109,'Cocina integral, Cuarto de servicio, Cuarto de lavado, Bodega, Juegos infantiles, Gimnasio','QUN-DV-081949','2021-04-30 20:25:41','2021-04-30 17:38:46'),(110,'Barra desayunador, Cuarto de servicio, Cuarto de lavado, Bodega, Juegos infantiles, Gimnasio, Cine, Business center, Alberca','QUN-DV-081950','2021-04-30 20:25:41','2021-04-30 17:38:46'),(111,'Cocina integral, Barra desayunador, Cuarto de servicio, Bodega, Vigilancia','QUN-DV-081951','2021-04-30 20:25:41','2021-04-30 17:38:46'),(112,'Cocina integral, Cuarto de servicio, Cuarto de lavado, Vigilancia','QUN-DV-081952','2021-04-30 20:25:41','2021-04-30 17:38:46'),(113,'Cocina integral, Cuarto de servicio, Cuarto de lavado, Despensa, Bodega, Vigilancia, Juegos infantiles, Gimnasio, Cancha de paddle, Salon de fiestas','QUN-DV-081953','2021-04-30 20:25:41','2021-04-30 17:38:46'),(114,'Cocina integral, Barra desayunador, Cuarto de servicio, Cuarto de lavado, Despensa, Desayunador, Zona arbolada, Vigilancia, Jacuzzi, Bar, Business center, Juegos infantiles, Cine, Gimnasio, Cancha de tenis, Salón de fiestas, Alberca','QUN-DV-081954','2021-04-30 20:25:41','2021-04-30 17:38:46'),(115,'Cocina Integral, Family, Cuarto Servicio, Cuarto de Lavado, Despensa, Vigilancia, Gimnasio,\n Cancha de Paddle, Cancha de Tenis, Salón de Juegos, Salón de fiestas Alberca','QUN-DV-101902','2021-04-30 20:25:41','2021-04-30 17:38:46'),(116,'Cocina integral, Barra desayunador, Cuarto de lavado, Despensa, Puerta eléctrica, Vigilancia, Jacuzzi, Bar, Business center, Gimnasio, Lounge, Salón de fiestas, Salón de juegos, Alberca','QUN-DV-101906','2021-04-30 20:25:41','2021-04-30 17:38:46'),(117,'Cocina Integral,  Cuarto de Lavado, Vigilancia, Gimnasio, Cine, Salón de Fiestas, Alberca','QUN-DV-101909','2021-04-30 20:25:41','2021-04-30 17:38:46'),(118,'Cocina integral, Family, Barra desayunador, Cuarto de servicio, Cuarto de lavado, Desayunador, Vigilancia, Jacuzzi, Business center, Juegos infantiles, Gimnasio, Cancha de pádel, Salón de fiestas, Salón de juegos, Alberca','QUN-DV-101910','2021-04-30 20:25:41','2021-04-30 17:38:46'),(119,'Cocina Integral, Cuarto de Servicio, Cuarto de Lavado, Alberca, Cine, Salón de fiestas, Gimnasio, Bodega','QUN-DV-111901','2021-04-30 20:25:41','2021-04-30 17:38:46'),(120,'Cocina Integral, Cuarto de servicio, Bodega, Vigilancia','QUN-DV-111902','2021-04-30 20:25:41','2021-04-30 17:38:46'),(121,'Cocina Integral, Cuarto de servicio, Estudio, Vigilancia','QUN-DV-111904','2021-04-30 20:25:41','2021-04-30 17:38:46'),(122,'Cocina integral, Vigilancia, Alberca, Gimnasio','QUN-DV-111905','2021-04-30 20:25:41','2021-04-30 17:38:46'),(123,'Cocina integral, Cuarto de servicio, Cisterna, Vigilancia','QUN-DV-111906','2021-04-30 20:25:41','2021-04-30 17:38:46'),(124,'Cocina Integral, Cuarto de servicio, Bodega, Vigilancia','QUN-DV-121903','2021-04-30 20:25:41','2021-04-30 17:38:46'),(125,'Cocina Integral, Estudio,Cuarto de servicio,  Cuarto de Lavado, Bodega,  Despensa, Alberca, Gimnasio,  Paddle, Salón de fiestas, Vigilancia','QUN-DV-121904','2021-04-30 20:25:41','2021-04-30 17:38:46'),(126,'Cocina Integral, Estudio, Cuarto de servicio, Bodega, Alberca, Cine, Paddle, Vigilancia','QUN-DV-121905','2021-04-30 20:25:41','2021-04-30 17:38:46');
/*!40000 ALTER TABLE `amenidades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-02 23:09:09
