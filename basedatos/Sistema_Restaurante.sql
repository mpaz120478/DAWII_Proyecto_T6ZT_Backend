-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_restaurante
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `IdCargo` int NOT NULL,
  `NombreCargo` varchar(50) NOT NULL,
  PRIMARY KEY (`IdCargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Gerente General'),(2,'Administradora(o)'),(3,'Contadora(o)'),(4,'Cajera(o)'),(5,'Moza(o)'),(6,'Cocinera(o)'),(7,'Ayudante Cocina'),(8,'Limpieza'),(9,'Sistemas');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL,
  `DocCliente` char(11) DEFAULT NULL,
  `DatosCliente` varchar(100) DEFAULT NULL,
  `DirecCliente` varchar(100) DEFAULT NULL,
  `FonoCliente` varchar(9) DEFAULT NULL,
  `EmailCliente` varchar(50) DEFAULT NULL,
  `Estado` smallint DEFAULT NULL,
  `FechaRegistro` datetime DEFAULT NULL,
  `IdPais` int NOT NULL,
  KEY `IdDepartamento_idx` (`IdPais`),
  CONSTRAINT `IdDepartamento` FOREIGN KEY (`IdPais`) REFERENCES `departamento` (`IdDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'40644438','Paz Leiva Manuel Enrique','Cal. Las Perlas Mz.70 Lt.26-Urb. La Rinconada-Trujillo','943778684','mpaz@gmail.com',1,'2022-10-05 00:00:00',13);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `IdDepartamento` int NOT NULL,
  `NombreDpto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Amazonas'),(2,'Áncash'),(3,'Apurímac'),(4,'Arequipa'),(5,'Ayacucho'),(6,'Cajamarca'),(7,'Callao'),(8,'Cusco'),(9,'Huancavelica'),(10,'Huánuco'),(11,'Ica'),(12,'Junín'),(13,'La Libertad'),(14,'Lambayeque'),(15,'Lima'),(16,'Loreto'),(17,'Madre de Dios'),(18,'Moquegua'),(19,'Pasco'),(20,'Piura'),(21,'Puno'),(22,'San Martín'),(23,'Tacna'),(24,'Tumbes'),(25,'Ucayali');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `IdEmpleado` int NOT NULL,
  `DniEmpleado` char(8) NOT NULL,
  `ApeEmpleado` varchar(50) NOT NULL,
  `NomEmpleado` varchar(50) NOT NULL,
  `EmailEmpleado` varchar(100) NOT NULL,
  `Telefono` varchar(9) NOT NULL,
  `IdCargo` int NOT NULL,
  `IdRol` int NOT NULL,
  `FechaContrato` date NOT NULL,
  `SueldoEmpleado` decimal(10,2) NOT NULL,
  `Estado` smallint NOT NULL,
  PRIMARY KEY (`IdEmpleado`),
  UNIQUE KEY `DniEmpleado_UNIQUE` (`DniEmpleado`),
  UNIQUE KEY `EmailEmpleado_UNIQUE` (`EmailEmpleado`),
  KEY `IdCargo_idx` (`IdCargo`),
  KEY `IdRol_idx` (`IdRol`),
  CONSTRAINT `IdCargo` FOREIGN KEY (`IdCargo`) REFERENCES `cargo` (`IdCargo`),
  CONSTRAINT `IdRol` FOREIGN KEY (`IdRol`) REFERENCES `roles` (`IdRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'40644438','Paz Leiva','Manuel Enrique','mepl1204@gmail.com','943778684',9,3,'2022-10-07',1500.00,1),(2,'41424344','Rojas Rojas','Carlos Carlos','rrcc10@gmail.com','963852147',1,2,'2022-09-30',1400.00,1),(3,'42434445','Mendoza Ruíz','Pamela','mendozarp@outlook.es','963258147',2,3,'2022-09-15',1500.00,1);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `IdRol` int NOT NULL,
  `NombreRol` varchar(50) NOT NULL,
  PRIMARY KEY (`IdRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrativo'),(2,'Usuario'),(3,'SuperAdmin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `IdUsuario` int NOT NULL,
  `IdEmpleado` int NOT NULL,
  `DniEmpleado` char(8) NOT NULL,
  `ApeEmpleado` varchar(50) NOT NULL,
  `NomEmpleado` varchar(50) NOT NULL,
  `NomUsuario` varchar(10) NOT NULL,
  `ClaveUsuario` varchar(20) NOT NULL,
  `FechaRegistro` datetime DEFAULT NULL,
  `Estado` smallint DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`),
  KEY `IdEmpleado_idx` (`IdEmpleado`),
  CONSTRAINT `IdEmpleado` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleado` (`IdEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'40644438','Paz Leiva','Manuel Enrique','mpaz','mpaz123','2022-10-07 21:07:25',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-19 19:25:24
