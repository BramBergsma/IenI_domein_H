/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inschrijvingen` (
  `id_leerlingen` int NOT NULL,
  `vak` varchar(16) NOT NULL,
  PRIMARY KEY (`id_leerlingen`,`vak`),
  KEY `vak` (`vak`),
  CONSTRAINT `inschrijvingen_ibfk_1` FOREIGN KEY (`id_leerlingen`) REFERENCES `leerlingen` (`id_leerlingen`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `inschrijvingen_ibfk_2` FOREIGN KEY (`vak`) REFERENCES `vakken` (`vak`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `inschrijvingen` (`id_leerlingen`, `vak`) VALUES (1,'Engels'),(2,'Engels'),(3,'Engels'),(4,'Engels'),(3,'geschiedenis'),(4,'geschiedenis'),(2,'natuurkunde'),(5,'natuurkunde'),(1,'Nederlands'),(2,'Nederlands'),(5,'Nederlands'),(1,'wiskunde'),(3,'wiskunde'),(4,'wiskunde'),(5,'wiskunde');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leerlingen` (
  `id_leerlingen` int NOT NULL AUTO_INCREMENT,
  `naam` text NOT NULL,
  `klas` varchar(4) NOT NULL,
  PRIMARY KEY (`id_leerlingen`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `leerlingen` (`id_leerlingen`, `naam`, `klas`) VALUES (1,'Alice Pieters','H5A'),(2,'Bob Bouwma','H5B'),(3,'Cindy Young\r\n','H5B'),(4,'Dirk Nauta\r\n','H5A'),(5,'Eve Ning\r\n','H5B');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vakken` (
  `docentnaam` text NOT NULL,
  `vak` varchar(16) NOT NULL,
  `docentcode` varchar(3) NOT NULL,
  `lokaal` varchar(5) NOT NULL,
  PRIMARY KEY (`vak`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `vakken` (`docentnaam`, `vak`, `docentcode`, `lokaal`) VALUES ('Schreuder\r\n','Engels','SCI','A104'),('Scheffers\r\n','Geschiedenis','SCL','B409'),('Palsma\r\n','Natuurkunde','PLP','B206'),('Hoekstra\r\n','Nederlands','HOJ','A202'),('Bakker\r\n','wiskunde','BAH','A105');
