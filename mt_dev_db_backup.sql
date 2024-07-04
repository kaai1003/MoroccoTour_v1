-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: mt_dev_db
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `name` varchar(128) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('Religious and Spiritual Tourism','259c3a1c-3882-4e96-a143-209a80c36a85','2024-06-29 21:35:36','2024-06-29 22:35:36'),('Cultural Tourism','25ae0343-9242-49fc-88d2-236208a46bd2','2024-06-29 21:35:36','2024-06-29 22:35:36'),('Nature and Ecotourism','29aaf724-7c7e-42c7-8fb6-6b768cb53b38','2024-06-29 21:35:36','2024-06-29 22:35:36'),('Adventure Tourism','9bb00d96-3092-437e-8237-21903db17f03','2024-06-29 21:35:36','2024-06-29 22:35:36'),('Beach and Coastal Tourism','a415c3cc-7be5-4636-9447-d15722c68525','2024-06-29 21:35:36','2024-06-29 22:35:36'),('Shopping and Souvenirs','ea138b68-8466-42de-a658-1f58984b11e1','2024-06-29 21:35:36','2024-06-29 22:35:36');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `name` varchar(128) NOT NULL,
  `region_id` varchar(60) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('Rommani','e9b11464-1e8c-43a1-b94a-24ba4694cf5e','0b89841e-c8cf-4170-ba4a-ab9846e9ec08','2024-06-29 20:53:24','2024-06-29 21:53:24'),('Meknes','3fa0dc3f-4858-4ab4-a204-2d2fe364f779','0e3b1b11-cdd7-45eb-8b9a-a19969d49bf6','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Agadir','710dfb62-a1f7-4241-ac98-58daa35b3057','0ed4ebc3-a10a-4a8c-bbb7-07d6eeeb3757','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Fes','3fa0dc3f-4858-4ab4-a204-2d2fe364f779','1140ab0a-b0e3-4a3b-b714-6e30b33cf6c1','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Mdiq','a3ce87c6-ee95-40f9-b94f-8d7a8f255de9','153b7813-bbf6-4ef0-9bd8-ece521f75394','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Oulmes','e9b11464-1e8c-43a1-b94a-24ba4694cf5e','19ecbc16-f0fc-4178-8e8b-53d45597870f','2024-06-29 20:53:24','2024-06-29 21:53:24'),('Zagoura','52568f4b-155c-4c65-b06d-48c45e11e8a1','19fd7001-f9ef-41f1-b522-eefc349a4b41','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Taourirt','14063a7e-0a3d-44d8-8f09-6c8c6a5c68d5','25385208-e7c0-4b97-a1f7-8cd6cf202b55','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Kenitra','e9b11464-1e8c-43a1-b94a-24ba4694cf5e','26e1e105-2a8a-475d-87c6-6f7a541b461b','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Ifrane','3fa0dc3f-4858-4ab4-a204-2d2fe364f779','2b1fbc20-cb82-482d-9cb2-637f543899aa','2024-06-29 20:53:22','2024-06-29 21:53:22'),('KsarelKebir','a3ce87c6-ee95-40f9-b94f-8d7a8f255de9','34f198e9-9b20-4cab-8a57-8a194c2e0d66','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Ezzhiliga','e9b11464-1e8c-43a1-b94a-24ba4694cf5e','397dabc5-a68f-4ce5-a4d9-8316fbd58f12','2024-06-29 20:53:24','2024-06-29 21:53:24'),('Laayoune','c1b51bee-53a0-424b-8bd3-6cdc03e3fc38','3bd09630-39e0-45f0-8808-591f064c95d3','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Tanger','a3ce87c6-ee95-40f9-b94f-8d7a8f255de9','4356f60c-fa13-42af-9f9b-84dc3d201aa0','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Tiznit','710dfb62-a1f7-4241-ac98-58daa35b3057','43a7f149-c74c-4615-a05f-1f679e7efcda','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Marrakech','b091adf1-b159-4053-b5de-19f50b5073ab','452cde21-4f77-4d04-a541-7e34732c0233','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Sale','e9b11464-1e8c-43a1-b94a-24ba4694cf5e','481c1a99-2f65-4bc6-b889-00052d14c698','2024-06-29 20:53:23','2024-06-29 21:53:23'),('SidiBennour','6dca2534-4cb9-4a4b-96b3-a6e2e070399a','481d543f-95c5-49bf-b61a-eb123aa26e31','2024-06-29 20:53:22','2024-06-29 21:53:22'),('TanTan','587970fa-1611-450e-ba38-6e21f3d2c509','48d22c61-2c23-41df-adc6-5baf15e01ad7','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Ouarzazate','52568f4b-155c-4c65-b06d-48c45e11e8a1','4c64e318-a23d-411d-8646-e492894cb1ae','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Oualidia','6dca2534-4cb9-4a4b-96b3-a6e2e070399a','4d74dacd-6f8e-4c17-b789-dbbd1c1134e7','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Essaouira','b091adf1-b159-4053-b5de-19f50b5073ab','4f16cbf2-2efe-494a-b044-f23bf8683424','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Tafraout','710dfb62-a1f7-4241-ac98-58daa35b3057','506b499a-de3c-4c30-9f86-f07bc9c32708','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Ouezzane','a3ce87c6-ee95-40f9-b94f-8d7a8f255de9','52c460f8-9a24-43ac-a6ec-a55086806df8','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Casablanca','6dca2534-4cb9-4a4b-96b3-a6e2e070399a','5588d210-cc10-4205-9618-c38ad72db359','2024-06-29 20:53:22','2024-06-29 21:53:22'),('KasbaTadla','9927b839-8bec-4387-8ac4-baea6e66296b','5eb2c8e0-24cf-427a-aae5-3d4e0d6bef88','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Tetouan','a3ce87c6-ee95-40f9-b94f-8d7a8f255de9','5fcb384c-1189-4c2a-b503-45456cc3ab38','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Dakhla','e2e3c5df-a9f8-44c3-8c0d-b93c48af72d5','615e8e84-ea23-405c-936f-7fd8dd2d1118','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Boulmane','3fa0dc3f-4858-4ab4-a204-2d2fe364f779','63ccf503-d6bc-431d-8c12-179d7b976e67','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Taouante','3fa0dc3f-4858-4ab4-a204-2d2fe364f779','6fc04df1-dec6-4862-8d0e-411fa90f3745','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Jerada','14063a7e-0a3d-44d8-8f09-6c8c6a5c68d5','7077be36-050e-47a0-8693-4fa1d0da4a84','2024-06-29 20:53:22','2024-06-29 21:53:22'),('SidiIfni','587970fa-1611-450e-ba38-6e21f3d2c509','7614265a-5350-4b69-b766-345fcf6ca3db','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Lagouira','e2e3c5df-a9f8-44c3-8c0d-b93c48af72d5','76d832f7-9b58-4b15-8889-82d2ea138418','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Khenifra','9927b839-8bec-4387-8ac4-baea6e66296b','78ebee12-fd84-4b4f-8761-a8b0f457c68b','2024-06-29 20:53:23','2024-06-29 21:53:23'),('AlHoceima','a3ce87c6-ee95-40f9-b94f-8d7a8f255de9','7ba6ee74-0821-4dca-93e3-851ed54ce032','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Sefrou','3fa0dc3f-4858-4ab4-a204-2d2fe364f779','7c22c049-a096-42fb-a296-06ac1ef4d247','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Essamara','c1b51bee-53a0-424b-8bd3-6cdc03e3fc38','7c6a7986-bda1-410a-803e-81e136ef46f8','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Chefchaouen','a3ce87c6-ee95-40f9-b94f-8d7a8f255de9','84b5e3be-450d-45c5-bc58-110496a6731f','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Safi','b091adf1-b159-4053-b5de-19f50b5073ab','861964f7-6bbd-4458-a0fe-d21b761891a6','2024-06-29 20:53:23','2024-06-29 21:53:23'),('ElJadida','6dca2534-4cb9-4a4b-96b3-a6e2e070399a','8b6d2404-4687-431f-9acc-aa6abf51ae16','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Azilal','9927b839-8bec-4387-8ac4-baea6e66296b','8b9711b3-03de-490c-8b11-618a1910b7ef','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Larache','a3ce87c6-ee95-40f9-b94f-8d7a8f255de9','92d7f325-d89b-4a28-b6c5-834c94f44a13','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Mohammedia','6dca2534-4cb9-4a4b-96b3-a6e2e070399a','92e86f1f-7f6d-4713-9f6c-def10f4d5276','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Guercif','14063a7e-0a3d-44d8-8f09-6c8c6a5c68d5','98603bb6-22c3-4c2f-8b3d-69bd0fefa1a9','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Erfoud','52568f4b-155c-4c65-b06d-48c45e11e8a1','a04772bc-d184-42fe-bc23-d2a35f3f0365','2024-06-29 20:53:22','2024-06-29 21:53:22'),('MoulayYacoub','3fa0dc3f-4858-4ab4-a204-2d2fe364f779','a1f5c6e7-8161-4799-9992-dfc6f5e3f3cc','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Guelmin','587970fa-1611-450e-ba38-6e21f3d2c509','a73cd350-f9b3-422d-908b-cc59f296380c','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Driouch','14063a7e-0a3d-44d8-8f09-6c8c6a5c68d5','aa1e3826-4b4b-4f9f-87ef-4fd830bf65a0','2024-06-29 20:53:22','2024-06-29 21:53:22'),('BeniMellal','9927b839-8bec-4387-8ac4-baea6e66296b','b0587d8d-a919-49e2-862f-6dd13a997cd4','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Taliouine','710dfb62-a1f7-4241-ac98-58daa35b3057','c393d3cb-8f7b-49c9-af23-b8cc789004f4','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Errachidia','52568f4b-155c-4c65-b06d-48c45e11e8a1','c5f386a7-0f33-4112-8ee1-a0eaaa7870b6','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Boujdour','c1b51bee-53a0-424b-8bd3-6cdc03e3fc38','c6dfb023-83d5-43a0-a8c5-83f5cb5d6cbd','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Taza','3fa0dc3f-4858-4ab4-a204-2d2fe364f779','c77f4bb3-9910-496e-9180-7592bd49bcda','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Tarfaya','c1b51bee-53a0-424b-8bd3-6cdc03e3fc38','d076a717-d839-421d-a3c1-3458b8df83fd','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Midelt','52568f4b-155c-4c65-b06d-48c45e11e8a1','d47db977-63a2-41b0-85cd-d43b623e121b','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Rabat','e9b11464-1e8c-43a1-b94a-24ba4694cf5e','d9d4bfb2-8dae-4690-a615-a980633201d5','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Taroudant','710dfb62-a1f7-4241-ac98-58daa35b3057','daab9027-b3f2-44fb-88de-1385f4a4ce32','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Berkane','14063a7e-0a3d-44d8-8f09-6c8c6a5c68d5','dbf69f7e-33bf-45e0-adcc-dff72cd8a9cc','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Oujda','14063a7e-0a3d-44d8-8f09-6c8c6a5c68d5','e5197e85-cc0b-451c-8969-d6a729b471e1','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Demnate','9927b839-8bec-4387-8ac4-baea6e66296b','e5724820-a696-4535-9f4c-59b3a6f67ed5','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Assilah','a3ce87c6-ee95-40f9-b94f-8d7a8f255de9','e7e847ce-d6c7-4cdd-8d6e-f5910d3cbce0','2024-06-29 20:53:23','2024-06-29 21:53:23'),('Tinghrir','52568f4b-155c-4c65-b06d-48c45e11e8a1','f097a350-8e19-4949-92d0-4b188baca356','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Nador','14063a7e-0a3d-44d8-8f09-6c8c6a5c68d5','f706862d-3cdf-43e7-b95c-fa56e0388262','2024-06-29 20:53:22','2024-06-29 21:53:22'),('Fnideq','a3ce87c6-ee95-40f9-b94f-8d7a8f255de9','f97823aa-1a47-4727-8689-652ea2ae493f','2024-06-29 20:53:23','2024-06-29 21:53:23');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilities` (
  `name` varchar(128) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES ('Guided Tours','0d76b88c-2e2e-4aa3-98b6-c5cb1b514fe9','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Water Sports and Equipment Rentals','19660a55-32ba-45b5-acc3-72049fa3e7ba','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Local Accommodations','2335ba6b-3a6e-44a0-a794-2b0a934ab621','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Hiking Trails','25866a4b-0275-4b61-b41a-adf71da80032','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Spa and Wellness Services','4793aecb-d05b-4a77-b65b-8f99dae216d1','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Cultural and Educational Programs','54f025bf-bfb7-4c9b-b6fe-78b124a22179','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Picnic Areas','5ab0739e-54db-4511-8393-7b131bed09e3','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Camping Areas','5bf90102-1129-4c48-957c-3d845a06ad31','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Cafes and Restaurants','6529116d-afab-48c8-9d91-f47867fe5012','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Historical Exhibits and Information','8c1bb212-ac69-49e3-b3e2-2516972cffa4','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Restrooms','9686b692-c7c1-4dd7-8b8b-dc8fa6934a06','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Shopping','b361796a-76fc-4fd9-bab2-99596b847f19','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Art and Craft Workshops','e563541d-15be-4187-a9db-a8899762c7c5','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Scenic Viewpoints','e69109a6-c1fa-4b5b-918b-bda234449727','2024-06-29 21:35:47','2024-06-29 22:35:47'),('Health and Wellness Treatments','ff3ac51e-7533-436f-a68b-75164f697f45','2024-06-29 21:35:47','2024-06-29 22:35:47');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_facility`
--

DROP TABLE IF EXISTS `place_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_facility` (
  `place_id` varchar(60) NOT NULL,
  `facility_id` varchar(60) NOT NULL,
  PRIMARY KEY (`place_id`,`facility_id`),
  KEY `facility_id` (`facility_id`),
  CONSTRAINT `place_facility_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `place_facility_ibfk_2` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_facility`
--

LOCK TABLES `place_facility` WRITE;
/*!40000 ALTER TABLE `place_facility` DISABLE KEYS */;
/*!40000 ALTER TABLE `place_facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `city_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `categorie_id` varchar(60) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `user_id` (`user_id`),
  KEY `categorie_id` (`categorie_id`),
  CONSTRAINT `places_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `places_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `places_ibfk_3` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('Jemaa el-Fnaa','Jemaa el-Fnaa in Marrakesh, Morocco, is a famous public square and market place in the citys medina. Known for its vibrant atmosphere, it hosts a variety of performers, food stalls, and artisans, offering an immersive cultural experience. The square transforms throughout the day, bustling with activity from storytellers, musicians, and traditional healers, making it a central hub of local life and tourism.',31.6258,7.9894,'452cde21-4f77-4d04-a541-7e34732c0233','42228493-34d5-45e8-8cb1-a2a8dab5d114','25ae0343-9242-49fc-88d2-236208a46bd2','2e32f0dc-078f-453f-95a2-8124fb5e7f8e','2024-07-02 23:30:29','2024-07-03 00:30:29'),('Al Quaraouiyine University','Al Quaraouiyine University in Fes, Morocco, founded in 859, is considered the oldest existing, continually operating educational institution in the world. Originally established as a madrasa and mosque, it became a renowned center for Islamic learning and culture, attracting scholars from around the globe. The university remains a significant religious and educational institution, known for its historic architecture and scholarly heritage.',34.0655,4.9738,'1140ab0a-b0e3-4a3b-b714-6e30b33cf6c1','42228493-34d5-45e8-8cb1-a2a8dab5d114','25ae0343-9242-49fc-88d2-236208a46bd2','4a684d8d-a7a9-4154-9ad9-ad27452ebd83','2024-07-02 23:30:29','2024-07-03 00:30:29'),('Hassan Tower','Hassan Tower in Rabat, Morocco, is an unfinished minaret of a grand mosque that began construction in 1195. Intended to be the worlds tallest minaret, it stands at 44 meters (144 feet) due to halted construction after Sultan Yacoub al-Mansours death. The tower, with its intricate design and historical significance, is part of a UNESCO World Heritage Site alongside the nearby Mausoleum of Mohammed V.',34.0241,6.8227,'d9d4bfb2-8dae-4690-a615-a980633201d5','42228493-34d5-45e8-8cb1-a2a8dab5d114','25ae0343-9242-49fc-88d2-236208a46bd2','637afb28-0a7b-4a07-83e6-a6ee4ce3abae','2024-07-02 23:30:28','2024-07-03 00:30:28'),('Sahara Desert tours','Sahara Desert tours in Ouarzazate, Morocco, offer an unforgettable adventure into the vast and stunning landscapes of the Sahara Desert. Starting from Ouarzazate, known as the \"Gateway to the Desert,\" these tours typically include visits to impressive sand dunes, camel rides, traditional Berber villages, and overnight stays in desert camps under star-filled skies. They provide a unique opportunity to experience the beauty and culture of Morocco desert regions.',30.9189,6.8931,'4c64e318-a23d-411d-8646-e492894cb1ae','42228493-34d5-45e8-8cb1-a2a8dab5d114','9bb00d96-3092-437e-8237-21903db17f03','64f6c1ea-fc2a-41ca-9831-fe13a043aa16','2024-07-02 23:30:29','2024-07-03 00:30:29'),('Hassan II Mosque','The Hassan II Mosque in Casablanca, Morocco, is one of the largest mosques in the world, completed in 1993. It features a striking 210-meter (689-foot) tall minaret, the tallest in the world, and can accommodate 25,000 worshippers inside, with space for an additional 80,000 in the courtyard. The mosque is renowned for its intricate Moroccan craftsmanship, stunning oceanfront location, and the use of modern technology, including a retractable roof.',33.6073,7.6325,'5588d210-cc10-4205-9618-c38ad72db359','42228493-34d5-45e8-8cb1-a2a8dab5d114','25ae0343-9242-49fc-88d2-236208a46bd2','9df7f495-fd2c-4d49-b86e-6f45e4adb862','2024-07-02 23:30:29','2024-07-03 00:30:29'),('Kasbah Museum','The Kasbah Museum in Tangier, Morocco, is housed in the former Sultans palace, Dar el-Makhzen. It features exhibits showcasing the region history, culture, and art, including artifacts from the Phoenician, Roman, and Islamic periods. The museum is known for its beautiful Andalusian-style architecture and stunning views of the Strait of Gibraltar',35.7904,5.8129,'4356f60c-fa13-42af-9f9b-84dc3d201aa0','42228493-34d5-45e8-8cb1-a2a8dab5d114','25ae0343-9242-49fc-88d2-236208a46bd2','df7c8cb9-7b10-42a8-8087-2af1db0d44d7','2024-07-02 23:30:28','2024-07-03 00:30:28'),('Outa el Hammam','Outa el Hammam Square in Chefchaouen, Morocco, is the vibrant heart of the city, surrounded by cafes, restaurants, and shops. It offers a lively atmosphere and stunning views of the surrounding blue-painted buildings. The square is also home to the historic Grand Mosque and the Kasbah, making it a central hub for both locals and visitors.',35.1686,5.2639,'84b5e3be-450d-45c5-bc58-110496a6731f','42228493-34d5-45e8-8cb1-a2a8dab5d114','25ae0343-9242-49fc-88d2-236208a46bd2','e43565e3-c5d7-4407-848c-41e35b37e419','2024-07-02 23:30:28','2024-07-03 00:30:28');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `name` varchar(128) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES ('Oriental','14063a7e-0a3d-44d8-8f09-6c8c6a5c68d5','2024-06-29 20:52:42','2024-06-29 21:52:42'),('Fes-Meknes','3fa0dc3f-4858-4ab4-a204-2d2fe364f779','2024-06-29 20:52:42','2024-06-29 21:52:42'),('Draa-Tafilalet','52568f4b-155c-4c65-b06d-48c45e11e8a1','2024-06-29 20:52:43','2024-06-29 21:52:43'),('Guelmim-OuedNoun','587970fa-1611-450e-ba38-6e21f3d2c509','2024-06-29 20:52:43','2024-06-29 21:52:43'),('Casablanca-Settat','6dca2534-4cb9-4a4b-96b3-a6e2e070399a','2024-06-29 20:52:42','2024-06-29 21:52:42'),('Souss-Massa','710dfb62-a1f7-4241-ac98-58daa35b3057','2024-06-29 20:52:43','2024-06-29 21:52:43'),('Beni Mellal-Khenifra','9927b839-8bec-4387-8ac4-baea6e66296b','2024-06-29 20:52:42','2024-06-29 21:52:42'),('Tanger-Tetouan-AlHoceima','a3ce87c6-ee95-40f9-b94f-8d7a8f255de9','2024-06-29 20:52:42','2024-06-29 21:52:42'),('Marrakech-Safi','b091adf1-b159-4053-b5de-19f50b5073ab','2024-06-29 20:52:42','2024-06-29 21:52:42'),('Laayoune-SaguiaalHamra','c1b51bee-53a0-424b-8bd3-6cdc03e3fc38','2024-06-29 20:52:43','2024-06-29 21:52:43'),('Dakhla-OuedEdDahab','e2e3c5df-a9f8-44c3-8c0d-b93c48af72d5','2024-06-29 20:52:43','2024-06-29 21:52:43'),('Rabat-Sale-Kenitra','e9b11464-1e8c-43a1-b94a-24ba4694cf5e','2024-06-29 20:52:42','2024-06-29 21:52:42');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `comment` varchar(1024) NOT NULL,
  `rating` int DEFAULT NULL,
  `user_id` varchar(60) NOT NULL,
  `place_id` varchar(60) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `place_id` (`place_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('Visiting Hassan Tower was a wonderful experience. The minaret stands tall and proud, and the intricate designs are a testament to the craftsmanship of the era. The site is well-preserved, and the views from the esplanade are fantastic. It’s a great place to learn about Moroccan history and enjoy some quiet reflection.',10,'42228493-34d5-45e8-8cb1-a2a8dab5d114','637afb28-0a7b-4a07-83e6-a6ee4ce3abae','173f982c-873e-4570-8588-13da394c17a3','2024-07-02 23:47:29','2024-07-03 00:47:29'),('I was pleasantly surprised by the Kasbah Museum. It’s well-maintained and the staff is very knowledgeable. The Andalusian-style architecture is gorgeous, and the views of the Strait of Gibraltar are breathtaking. The museum offers a great blend of historical artifacts and art pieces. A must-visit for history enthusiasts.',9,'42228493-34d5-45e8-8cb1-a2a8dab5d114','df7c8cb9-7b10-42a8-8087-2af1db0d44d7','21b35323-ece3-4d05-bd66-af4abe4b1499','2024-07-02 23:47:29','2024-07-03 00:47:29'),('I love spending time at Outa el Hammam Square. It is always bustling with activity, from street performers to local artisans selling their crafts. The cafes around the square offer great Moroccan tea and snacks. The Kasbah and the Grand Mosque nearby make it a significant cultural hub in Chefchaouen. Definitely a place you must visit.',10,'42228493-34d5-45e8-8cb1-a2a8dab5d114','e43565e3-c5d7-4407-848c-41e35b37e419','7fe739ec-2b4d-48a2-8ff0-88f18466b7fd','2024-07-02 23:47:29','2024-07-03 00:47:29'),('As a local, Jemaa el-Fnaa holds a special place in my heart. It is the beating heart of Marrakesh, where you can find everything from delicious food to unique crafts. The square truly comes alive in the evening with all the performers and storytellers. It is a great place to soak in the atmosphere and feel the pulse of the city.',10,'42228493-34d5-45e8-8cb1-a2a8dab5d114','2e32f0dc-078f-453f-95a2-8124fb5e7f8e','bdc29675-8537-4ee2-abce-0a2802010897','2024-07-02 23:47:29','2024-07-03 00:47:29');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('aimad','kacem','kacem.aimad@gmail.com','test1234','42228493-34d5-45e8-8cb1-a2a8dab5d114','2024-06-30 23:10:42','2024-07-01 00:10:42');
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

-- Dump completed on 2024-07-05  0:00:55
