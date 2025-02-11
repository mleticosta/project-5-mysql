-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: academia_game
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` varchar(45) NOT NULL,
  `idade` int NOT NULL,
  `genero` varchar(45) NOT NULL,
  `data_inscricao` datetime NOT NULL,
  `feedback_instrutor` varchar(45) DEFAULT NULL,
  `feedback_treino` varchar(45) DEFAULT NULL,
  `nivel_aluno` varchar(45) NOT NULL,
  `bioimpedancia_idbioimpedancia1` int NOT NULL,
  `frequencia_idfrequencia` int NOT NULL,
  `frequencia_aluno_id_aluno` int NOT NULL,
  PRIMARY KEY (`id_aluno`,`bioimpedancia_idbioimpedancia1`,`frequencia_idfrequencia`,`frequencia_aluno_id_aluno`),
  UNIQUE KEY `id_aluno_UNIQUE` (`id_aluno`),
  KEY `fk_aluno_bioimpedancia_idx` (`bioimpedancia_idbioimpedancia1`),
  KEY `fk_aluno_frequencia1_idx` (`frequencia_idfrequencia`,`frequencia_aluno_id_aluno`),
  CONSTRAINT `fk_aluno_bioimpedancia` FOREIGN KEY (`bioimpedancia_idbioimpedancia1`) REFERENCES `bioimpedancia` (`idbioimpedancia`),
  CONSTRAINT `fk_aluno_frequencia1` FOREIGN KEY (`frequencia_idfrequencia`, `frequencia_aluno_id_aluno`) REFERENCES `frequencia` (`idfrequencia`, `aluno_id_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'João Silva',25,'Masculino','2023-09-01 10:00:00','Bom desempenho','Treino intenso','Intermediário',1,1,1),(2,'Maria Oliveira',30,'Feminino','2023-09-02 11:00:00','Dedicada','Treino consistente','Avançado',2,2,2);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bioimpedancia`
--

DROP TABLE IF EXISTS `bioimpedancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bioimpedancia` (
  `idbioimpedancia` int NOT NULL AUTO_INCREMENT,
  `data_bio` date NOT NULL,
  `peso` decimal(5,2) NOT NULL,
  `massa_magra` decimal(5,2) NOT NULL,
  `massa_gorda` decimal(5,2) NOT NULL,
  `percentual_gordura` decimal(5,2) NOT NULL,
  `imc` float NOT NULL,
  `percentual_agua_corpo` decimal(5,2) NOT NULL,
  PRIMARY KEY (`idbioimpedancia`),
  UNIQUE KEY `idbioimpedancia_UNIQUE` (`idbioimpedancia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bioimpedancia`
--

LOCK TABLES `bioimpedancia` WRITE;
/*!40000 ALTER TABLE `bioimpedancia` DISABLE KEYS */;
INSERT INTO `bioimpedancia` VALUES (1,'2023-10-01',70.50,55.00,15.50,22.00,24.5,60.00),(2,'2023-10-08',71.00,56.00,15.00,21.00,24.7,61.00),(3,'2023-10-01',70.50,55.00,15.50,22.00,24.5,60.00),(4,'2023-10-08',71.00,56.00,15.00,21.00,24.7,61.00);
/*!40000 ALTER TABLE `bioimpedancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercicios`
--

DROP TABLE IF EXISTS `exercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercicios` (
  `idexercicios` int NOT NULL AUTO_INCREMENT,
  `nome_exercicio` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `grupo_muscular` varchar(45) DEFAULT NULL,
  `dificuldade` tinyint NOT NULL,
  `calorias` int NOT NULL,
  `tempo` varchar(45) NOT NULL,
  PRIMARY KEY (`idexercicios`),
  UNIQUE KEY `idexercicios_UNIQUE` (`idexercicios`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercicios`
--

LOCK TABLES `exercicios` WRITE;
/*!40000 ALTER TABLE `exercicios` DISABLE KEYS */;
INSERT INTO `exercicios` VALUES (1,'Agachamento','Agachamento livre com barra','Pernas',3,150,'00:45'),(2,'Supino','Supino reto com barra','Peito',2,120,'00:40'),(23,'Supino Reto','Exercício para peitoral','Peito',3,100,'00:45:00'),(24,'Agachamento Livre','Exercício para pernas','Pernas',4,150,'01:00:00'),(25,'Barra Fixa','Exercício para costas','Costas',5,120,'00:30:00'),(26,'Abdominal Crunch','Exercício para abdômen','Abdômen',2,80,'00:20:00');
/*!40000 ALTER TABLE `exercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercicios_has_plano_treino1`
--

DROP TABLE IF EXISTS `exercicios_has_plano_treino1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercicios_has_plano_treino1` (
  `exercicios_idexercicios` int NOT NULL,
  `plano_treino_idplano` int NOT NULL,
  `series` int NOT NULL,
  `repeticoes` int NOT NULL,
  PRIMARY KEY (`exercicios_idexercicios`,`plano_treino_idplano`),
  KEY `fk_exercicios_has_plano_treino1_plano_treino1_idx` (`plano_treino_idplano`),
  KEY `fk_exercicios_has_plano_treino1_exercicios1_idx` (`exercicios_idexercicios`),
  CONSTRAINT `fk_exercicios_has_plano_treino1_exercicios1` FOREIGN KEY (`exercicios_idexercicios`) REFERENCES `exercicios` (`idexercicios`),
  CONSTRAINT `fk_exercicios_has_plano_treino1_plano_treino1` FOREIGN KEY (`plano_treino_idplano`) REFERENCES `plano_treino` (`idplano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercicios_has_plano_treino1`
--

LOCK TABLES `exercicios_has_plano_treino1` WRITE;
/*!40000 ALTER TABLE `exercicios_has_plano_treino1` DISABLE KEYS */;
INSERT INTO `exercicios_has_plano_treino1` VALUES (1,1,3,15),(2,1,3,10),(26,2,3,10);
/*!40000 ALTER TABLE `exercicios_has_plano_treino1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frequencia`
--

DROP TABLE IF EXISTS `frequencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frequencia` (
  `idfrequencia` int NOT NULL AUTO_INCREMENT,
  `data_freq` datetime NOT NULL,
  `tempo_treino` time NOT NULL,
  `treinos_fin` int NOT NULL,
  `treinos_faltantes` int NOT NULL,
  `total_treinos` int NOT NULL,
  `aluno_id_aluno` int NOT NULL,
  PRIMARY KEY (`idfrequencia`,`aluno_id_aluno`),
  UNIQUE KEY `idfrequencia_UNIQUE` (`idfrequencia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequencia`
--

LOCK TABLES `frequencia` WRITE;
/*!40000 ALTER TABLE `frequencia` DISABLE KEYS */;
INSERT INTO `frequencia` VALUES (1,'2023-10-01 08:00:00','01:30:00',3,1,4,1),(2,'2023-10-08 08:00:00','02:00:00',4,0,4,2),(3,'2023-10-01 08:00:00','01:30:00',3,1,4,1),(4,'2023-10-08 08:00:00','02:00:00',4,0,4,2);
/*!40000 ALTER TABLE `frequencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrutor`
--

DROP TABLE IF EXISTS `instrutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instrutor` (
  `idinstrutor` int NOT NULL AUTO_INCREMENT,
  `nome_instrutor` varchar(45) NOT NULL,
  `especialidade` varchar(45) NOT NULL,
  `aluno_id_aluno` int NOT NULL,
  `aluno_bioimpedancia_idbioimpedancia1` int NOT NULL,
  `aluno_frequencia_idfrequencia` int NOT NULL,
  `aluno_frequencia_aluno_id_aluno` int NOT NULL,
  PRIMARY KEY (`idinstrutor`,`aluno_id_aluno`,`aluno_bioimpedancia_idbioimpedancia1`,`aluno_frequencia_idfrequencia`,`aluno_frequencia_aluno_id_aluno`),
  UNIQUE KEY `idinstrutor_UNIQUE` (`idinstrutor`),
  KEY `fk_instrutor_aluno1_idx` (`aluno_id_aluno`,`aluno_bioimpedancia_idbioimpedancia1`,`aluno_frequencia_idfrequencia`,`aluno_frequencia_aluno_id_aluno`),
  CONSTRAINT `fk_instrutor_aluno1` FOREIGN KEY (`aluno_id_aluno`, `aluno_bioimpedancia_idbioimpedancia1`, `aluno_frequencia_idfrequencia`, `aluno_frequencia_aluno_id_aluno`) REFERENCES `aluno` (`id_aluno`, `bioimpedancia_idbioimpedancia1`, `frequencia_idfrequencia`, `frequencia_aluno_id_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrutor`
--

LOCK TABLES `instrutor` WRITE;
/*!40000 ALTER TABLE `instrutor` DISABLE KEYS */;
INSERT INTO `instrutor` VALUES (1,'Carlos Silva','Musculação',0,0,0,0),(2,'Ana Souza','Funcional',0,0,0,0);
/*!40000 ALTER TABLE `instrutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objetivo`
--

DROP TABLE IF EXISTS `objetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objetivo` (
  `idobjetivo` int NOT NULL AUTO_INCREMENT,
  `meta_final` varchar(45) NOT NULL,
  `aluno_id_aluno` int NOT NULL,
  PRIMARY KEY (`idobjetivo`,`aluno_id_aluno`),
  UNIQUE KEY `idobjetivo_UNIQUE` (`idobjetivo`),
  KEY `fk_objetivo_aluno1_idx` (`aluno_id_aluno`),
  CONSTRAINT `fk_objetivo_aluno1` FOREIGN KEY (`aluno_id_aluno`) REFERENCES `aluno` (`id_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objetivo`
--

LOCK TABLES `objetivo` WRITE;
/*!40000 ALTER TABLE `objetivo` DISABLE KEYS */;
INSERT INTO `objetivo` VALUES (1,'Perder 5kg em 1 mês',1),(2,'Ganhar 3kg de massa magra em 2 meses',2);
/*!40000 ALTER TABLE `objetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plano_treino`
--

DROP TABLE IF EXISTS `plano_treino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plano_treino` (
  `idplano` int NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `intensidade` varchar(45) NOT NULL,
  `descanso` varchar(45) NOT NULL,
  `estado` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `feedback` varchar(45) DEFAULT NULL,
  `aluno_id_aluno` int NOT NULL,
  `aluno_frequencia_idfrequencia` int NOT NULL,
  `aluno_frequencia_aluno_id_aluno` int NOT NULL,
  PRIMARY KEY (`idplano`,`aluno_id_aluno`,`aluno_frequencia_idfrequencia`,`aluno_frequencia_aluno_id_aluno`),
  UNIQUE KEY `idplano_treino_UNIQUE` (`idplano`),
  KEY `fk_plano_treino_aluno1_idx` (`aluno_id_aluno`,`aluno_frequencia_idfrequencia`,`aluno_frequencia_aluno_id_aluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano_treino`
--

LOCK TABLES `plano_treino` WRITE;
/*!40000 ALTER TABLE `plano_treino` DISABLE KEYS */;
INSERT INTO `plano_treino` VALUES (1,'2023-10-01','2023-10-31','Alta','2 minutos','Ativo','Bom progresso',1,1,1),(2,'2023-10-01','2023-10-31','Média','1 minuto','Ativo','Consistente',2,2,2);
/*!40000 ALTER TABLE `plano_treino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_objetivo`
--

DROP TABLE IF EXISTS `tipo_objetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_objetivo` (
  `idtipo_objetivo` int NOT NULL AUTO_INCREMENT,
  `nome_tipo_objetivo` varchar(45) NOT NULL,
  `objetivo_idobjetivo` int NOT NULL,
  PRIMARY KEY (`idtipo_objetivo`,`objetivo_idobjetivo`),
  UNIQUE KEY `nome_tipo_objetivo_UNIQUE` (`nome_tipo_objetivo`),
  KEY `fk_tipo_objetivo_objetivo1_idx` (`objetivo_idobjetivo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_objetivo`
--

LOCK TABLES `tipo_objetivo` WRITE;
/*!40000 ALTER TABLE `tipo_objetivo` DISABLE KEYS */;
INSERT INTO `tipo_objetivo` VALUES (2,'Ganho de massa',2),(1,'Perda de peso',1);
/*!40000 ALTER TABLE `tipo_objetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'academia_game'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-11 10:54:27
