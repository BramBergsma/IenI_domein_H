/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examentraining` (
  `ld_leerlingen` int NOT NULL AUTO_INCREMENT,
  `naam` text NOT NULL,
  `klaas` varchar(4) NOT NULL,
  PRIMARY KEY (`ld_leerlingen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
