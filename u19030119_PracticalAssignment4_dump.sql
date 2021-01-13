CREATE DATABASE  IF NOT EXISTS `u19030119_MUSIC_P4` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `u19030119_MUSIC_P4`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: wheatley.cs.up.ac.za    Database: u19030119_MUSIC_P4
-- ------------------------------------------------------
-- Server version	5.6.38-log

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
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` char(64) NOT NULL,
  `API_key` char(32) NOT NULL,
  `seenMessage` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Caleb','Johnstone','calebdjohnstone@gmail.com','058032922fcff57f2ef6435dac483619b0b578ed37602f11b6184d2c103b2dec','464fb6a8b26f3d46cdddf54edc682df5',0),(3,'Campbell','Johnstone','camjohnstone@gmail.com','e0bec591f6f0caeb08361727b51463b72aa22691e48e102d1a941cc09d97ef73','d8e98b190d377b6043880e0a294ab052',1),(4,'Ryan','Trahan','ryantray@yahoo.com','42941d9d5185e9c129f8d10b09960ead285ca9a0ebfb018d1b1fa31f2ddc950b','1c03b97b2d28d98a0cedef8daf6b33f7',1),(6,'Carter','Johnstone','carterjohnstone@gmail.com','e43831f6d391c92f1120cab4757cb8140a0ae2333a0bce7d97620ea4b1f2730f','ee26cc2f17f8bdc156caac5ee0ca1f09',1),(7,'Brent','Ford','brentf@gmail.com','061c2630735a74584ee972c16591c4e51a97e97418a8764e55d989c55e80282c','c0eb778acaa8afc243eb11bfca0d00e7',1),(8,'John','Smith','jsmith@yahoo.com','afd84fe98e780ce7bdc0c365e1a93f222a72dc1c7704b6cf92b42ff17920d9d9','f4022b6b64f8cf61275feb0c0125da4d',1),(9,'Beth','Wilson','bethwilson@gmail.com','7831e72c0b106d75e57250a3f1c6c44e8e0e7d18899359b4d1a1b5da15c45fac','9c72152dbea6e3733d18285d07ce5468',1),(10,'Travis','Streeps','thetravstreepster@verycool.com','a055b765e3f40f0954e3040ef6c4724fa9a1c19da4d1e42ad392ec28d53e1b22','708ae5ecd547b48371252511fcc00906',1),(11,'Adam','Vine','adamvcrazy@gmail.com','bad6015a20142718733aec1118bae940e3023c08d5b70e72dcd3e2ef7af702d7','39200c9f29bec34e83d44fb9cea43a5a',1),(12,'Caron','Mangara','caronm@gmail.com','aec940a87edb9085315393caa47272e336c3a0614f161d15638d67f40b790e4e','d9768d929020764520ff8b5d60c24dea',1),(13,'Drew','Gooden','dannygonzalez@gmail.com','7e98b903ad812014308ea232f3363e320cf5f6004cb0c29562691c2ea742f68d','60cc10729ec5e09a823c866e5860c9fb',1),(14,'Danny','Gonzalez','kurtisconner@gmail.com','6107a4caaf745ff1596ad41cd7429b9a6020bd6b5fe64814f40777e2241f9084','f572dee4fd11ca4f8572fdcc18a135b3',1),(15,'Chris','Richardson','richardchris@gmail.com','d63870110cda1055dcc2d349066a43fda9a5ec011b1592cabb311fa2769022cc','e892546621423a01a4119cdacd89e107',1),(16,'Amanda','Chance','amandach@gmail.com','dd56974594b1975a595b5e6070f638e40eee6a860fd48b6acb7c3729af4bc379','07d72fa29fd75a3a9b328773c2b57f30',1),(17,'Stanie','Starneld','star_boy@gmail.com','c1bba80bf048812862c7d509ffb51bafcaefbf39e29ac26bdce2eda5d71090a1','743847f3699fce4f2775050183357a53',1),(18,'Moses','Frances','mosesfra@gmail.com','85d2fbe0f1d2ead175425c70761317a0e5fe86d748380b0b4a308f7d4d41c89d','46c76c4b063a39945c6e86c3a46af574',1),(19,'Darling','Mine','minedarling@gmail.com','62ce35461c2f7d73f0d08645f6217dd6ad000082aa31c8f42b237d79c630f579','8329fccde0bb16c438217dc261650461',1),(20,'Kurtis','Mc Gregor','mcGkurtis@gmail.com','0229b8d1ee545f499815db5dcddabb4832d0d7c0fb2dfba9754ac1a43045fda3','3a39abfe2380ba2f1cdae1909f7f45ad',1),(21,'Nathan','Edwards','nathanedw@yahoo.com','6ff319fab29a4413f65244de885e3fada7676931695437c86b5976eb0406f484','d69eb89763079706637e713ec34917fa',1),(22,'Ryan','Ford','fordryan235@gmail.com','d8210c8c5771e05038c1c1cd36d2ba8be203f5ded49fece7f4dd28577b27d9ac','ae19c1963c29b7971aaab8ed4d8b4456',1),(23,'Darrel','Jefferson','jeffdan@gmail.com','d3bbe1f9a209a952f9e1fc7f0bad488a78cfe7f128e1bae26a4899ed1309ac3b','e706928a0001cae08b96ff1bc5910331',1),(24,'Darrel','Smith','lifezen@yahoo.com','d4fe50b90d90d7feca7e1ca34fa5db44a2b5aa071c61fd41d3b30cf8ee01f673','9c023384d72230eb0923828fc40cca5a',1),(25,'Wayne','Vennon','waynvennon@gmail.com','ff9c99d8198c4e349e9a82ecb0bfb7a37cdea306d0b449bada9ba5cde683fb38','c27cc101e9814664aa4a985dede37f3e',1),(26,'Kevin','Anderson','keva@yahoo.com','5bf6780599ff13097b34306062950824ac0fff41a8aa1444fdeebd5a67aaac5e','5cbae505a2c69d6bc66db9b1461c1d68',1),(27,'Tom','Sted','tommysteddy@outlook.com','5e8feb09a925c5895c63f53af82bddd6463390ce53e711d3785f69f5c85d56d5','6893661b0e718289049a12a2a411f1b4',1),(28,'Kevin','Daniels','kevthemandans@gmail.com','f570cd26754d7c71ea9ad7b0e1c81fb88dcd995c7cfd9c82109d4ef145fb0a08','cd6fd6a3c69943abbc354cdd58bebb43',1),(29,'Tom','Scott','tomscott@gmail.com','1eef94a4d1df83ca5fd776089c4f687be53476b1542582353795d199acc5b6e3','6488e49b1146e9b12a0fbe74dd695084',1),(30,'Dwayne','van der Merwe','dwaynevdw@gmail.com','abe099b6abb52c9552b90ae00b9074118e9b3cda17bab72a5d3497ea9ef3be11','5167545010871d74de28503540da5091',0),(31,'Tim','Renalds','timrenalds@gmail.com','0148058558f9e25f79be22956f853b76b2ace44c46314aa9a29cefee985d7fd0','a02c2136b6cf53cf9cfb537152fa5b04',0),(32,'Michael','Matthews','michaelthematthew@gmail.com','82a1ca4c2aadcd8068bb99547cf653f36bf66197949d981366bae1351767f9fd','8321743568b6dd40c7314161a9b24524',0),(33,'Ryan','Smith','ryantoplad@gmail.com','d346bc3f67b7ec4e164e4ac3d1ebd0b1ea977aaacbb9e50905e2609a8703b95a','e468a0da82a467097c6921d6ba48023f',0),(34,'Nkosi','Tshabalala','nkositshsa@gmail.com','df1452d19a899ca9c457d269f7058962a2dd699b643abbeea3e9047100e40667','37116cfc35d3eaa21ff9104edb949b3a',1),(35,'Nathan','Sted','nathansted@gmail.com','fc94cfed1af63460d1bba8e070f6ffef36f4d0ae2a256b0cc131ee1ad5283935','96b3026a387c10e258668eba282c1deb',0),(36,'Tim','Crawford','crawfordtim@gmail.com','cf33ccb30d4b175572d388419ab38a551274dabc9ee50cbe7e6fda9c766c8fc6','fdda717fea3dae0dbe2620aa365ce102',0),(37,'Tim','Vennon','timvennon@yahoo.com','cf71d0cf0c1a7e812d905b7601683e7d5e70138ffd777e4f56e41900085e8498','6f32b7b63c931a7825ba2f6acffe5687',0),(38,'Max','Well','maxieeqn@gmail.com','dd4b6977ab3851cb00b15aad878f8c1875816e59734dec2d6e824837c41d83ed','d0f4497dc35f305248b5f05ee4702bf6',0),(39,'Tim','Van Jarsveld','timj@gmail.com','3177d0f8fde0f9b05d32a76d87a71324e83cf9fcf0afed7d7ab8ca6d4bfe0d21','e73f11a76a79a98605c60f2d420c230c',0),(40,'Kevin','Sted','kevins@gmail.com','55817183ea6b0aac98fc8185c96d9613d662ed8437f9bc51bffd19fb04bcceed','294ae05c6a86b234b2a924a854e67afb',0),(41,'Anthony','Zee','antz@yahoo.com','475c9ca6429b833c6fef6d8b246735bcdff160943f5339349b5f9905e0de2e66','0033d8464002c8310f90cdc03a664f18',0),(42,'Ashley','Vance','vanshley@gmail.com','57df3e8b33dc74929c84942e75c0d1223c474d739f69c4bb43ab0614f8ef7141','50a2dd375335f5219fcb7e1469456c91',0),(43,'Doran','Greg','dorangreg12@gmail.com','7dd403207eeb6776a729f30cdeb7801956983ada4108aa2ae94bcc5e06029bad','18678edd5beff610576f3dda9f285205',1),(44,'Betty','Vance','bettyv@gmail.com','27950db7208b93b8c3a7140689d9467c5540aa5f172a61b5c43e026c14e83985','f25c77674710612e01fa9d1b0d8bdd84',0);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featured_song`
--

DROP TABLE IF EXISTS `featured_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `featured_song` (
  `id` varchar(22) NOT NULL,
  `title` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `albumImageURL` varchar(120) DEFAULT NULL,
  `artistImageURL` varchar(120) DEFAULT NULL,
  `genre` varchar(70) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `duration` varchar(5) DEFAULT NULL,
  `preview` varchar(120) DEFAULT NULL,
  `ranking` tinyint(3) unsigned NOT NULL,
  `album` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featured_song`
--

LOCK TABLES `featured_song` WRITE;
/*!40000 ALTER TABLE `featured_song` DISABLE KEYS */;
INSERT INTO `featured_song` VALUES ('388202661','Die Lyn','Elandré','https://cdns-images.dzcdn.net/images/cover/38c057aa7c065be4483b24ac59ac4338/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/bd9f11583b6e2c28a77e17c0fb76bf50/500x500-000000-80-0-0.jpg','Afrikaans','2017-09-01','3:04','https://cdns-preview-2.dzcdn.net/stream/c-2da317954a885aaa681e10a7332e2305-3.mp3',10,'Kleindorp - Dromer'),('392355262','What About Us','P!nk','https://e-cdns-images.dzcdn.net/images/cover/41c83e407fde420ec54396ccd068e4ca/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/874ede04c616a86dcaf793aa3283ca63/500x500-000000-80-0-0.jpg','Pop','2017-08-10','4:01','https://cdns-preview-8.dzcdn.net/stream/c-88c34c9313511a58f7bf6d50d03bbdb1-4.mp3',7,'What About Us'),('582143242','Someone You Loved','Lewis Capaldi','https://cdns-images.dzcdn.net/images/cover/9a49265adb09ef5c1ae4920f8420e5ae/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/433eff954f3a209dfe87707d19934ac8/500x500-000000-80-0-0.jpg','Alternative','2018-11-08','3:02','https://cdns-preview-a.dzcdn.net/stream/c-a3001fef0ed7833e91971be2ee2d7927-5.mp3',9,'Breach'),('634831172','Ntab\'Ekizude','Coleman','https://e-cdns-images.dzcdn.net/images/cover/b9686222aae0c16d4a5ebf52b276ddf3/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/b9686222aae0c16d4a5ebf52b276ddf3/500x500-000000-80-0-0.jpg','Pop','2019-02-22','4:03','https://cdns-preview-0.dzcdn.net/stream/c-041a79926b00cfc182a850deca51c275-3.mp3',4,'Ntab\'Ekizude'),('854317202','Back+','Ton Snijders','https://e-cdns-images.dzcdn.net/images/cover/29400d1110ef847b61d95d95f0692772/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/9a304588f50b0a25186b339f19344afc/500x500-000000-80-0-0.jpg','Alternative','2020-04-10','3:00','https://cdns-preview-d.dzcdn.net/stream/c-db3b142eee32783918e4bc5b786e9e53-3.mp3',8,'Back+'),('917268422','Uhuru','Sun-El Musician','https://e-cdns-images.dzcdn.net/images/cover/f601c04522033b3898b307ce799e4907/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/e9fc74f0205ed5fa56f08c53ff867801/500x500-000000-80-0-0.jpg','Electro, Techno/House, Dance','2020-04-17','4:05','https://cdns-preview-f.dzcdn.net/stream/c-f690aabc251b32fa6961dee85685ce0c-3.mp3',6,'Uhuru'),('943921142','Ke Star','Focalistic','https://e-cdns-images.dzcdn.net/images/cover/2acf3e1dd7faf031967cf258acdff258/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/2acf3e1dd7faf031967cf258acdff258/500x500-000000-80-0-0.jpg','Dance','2020-05-01','7:01','https://cdns-preview-c.dzcdn.net/stream/c-cbbd26e03896ef3e0cadd5b35a61fd50-2.mp3',1,'Blecke'),('946333752','Savage Remix (feat. Beyoncé)','Megan Thee Stallion','https://e-cdns-images.dzcdn.net/images/cover/a67c0b2f7d605e7752cf81adb7f83a5b/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/9349371e6a5be6f98db595902a628cad/500x500-000000-80-0-0.jpg','Rap/Hip Hop','2020-04-29','4:02','https://cdns-preview-9.dzcdn.net/stream/c-9564734f5cdb0ab4a97db1ce106fbc55-3.mp3',2,'Savage Remix (feat. Beyoncé)'),('949351102','Lewe Soos \'n Laanie','Biggy','https://cdns-images.dzcdn.net/images/cover/ef34d8f959aaf46bb2026244631d3c1f/500x500-000000-80-0-0.jpg','https://cdns-images.dzcdn.net/images/artist/02ac18b43553db06f6b17b770b5672b7/500x500-000000-80-0-0.jpg','Afrikaans','2020-05-08','3:03','https://cdns-preview-e.dzcdn.net/stream/c-ef2b3cbdc3b22a5c4850c3df3daef8a4-4.mp3',5,'Lewe Soos \'n Laanie'),('952973802','Lock Me Up (feat. Mobi Dixon) (Radio Edit)','Tamara Dey','https://e-cdns-images.dzcdn.net/images/cover/a249e0cf0dce361c8f87eecc44935486/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/a249e0cf0dce361c8f87eecc44935486/500x500-000000-80-0-0.jpg','Electro, Dance','2020-05-01','3:04','https://cdns-preview-f.dzcdn.net/stream/c-f506ecae66ae14e412cc8344643d2b4c-3.mp3',3,'Lock Me Up (feat. Mobi Dixon)');
/*!40000 ALTER TABLE `featured_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newRelease_song`
--

DROP TABLE IF EXISTS `newRelease_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newRelease_song` (
  `id` varchar(22) NOT NULL,
  `title` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `albumImageURL` varchar(120) DEFAULT NULL,
  `artistImageURL` varchar(120) DEFAULT NULL,
  `genre` varchar(70) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `review` varchar(100) DEFAULT NULL,
  `ranking` tinyint(3) unsigned NOT NULL,
  `releaseDate` date DEFAULT NULL,
  `album` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newRelease_song`
--

LOCK TABLES `newRelease_song` WRITE;
/*!40000 ALTER TABLE `newRelease_song` DISABLE KEYS */;
INSERT INTO `newRelease_song` VALUES ('727924692','Dance Monkey','Tones and I','https://cdns-images.dzcdn.net/images/cover/3d7b540eb85c84a37cd5bf53740991cb/500x500-000000-80-0-0.jpg','https://cdns-images.dzcdn.net/images/artist/16f79833aec91a2ececef591007948a5/500x500-000000-80-0-0.jpg','Alternative','Elektra (NEK)','fgfrghtr: dead way to overrated and over played',4,'2019-08-08','Dance Monkey'),('755405702','Memories','Maroon 5','https://e-cdns-images.dzcdn.net/images/cover/535b9b868b048d4c9ee460f1c0120365/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/459dfa4c1f2d710a7e97e70c15bb12a0/500x500-000000-80-0-0.jpg','Pop','222 Records/Interscope Records','bface5: I love your music it is very empresive thank you for sharing it with the world',7,'2019-09-20','Memories'),('763664242','You\'re the One','Elaine','https://cdns-images.dzcdn.net/images/cover/93d853a9975fb9c584f328c41591866e/500x500-000000-80-0-0.jpg','https://cdns-images.dzcdn.net/images/artist/93d853a9975fb9c584f328c41591866e/500x500-000000-80-0-0.jpg','R&B','Elaine Music','No reviews yet',5,'2019-09-29','Elements'),('763664272','Risky','Elaine','https://e-cdns-images.dzcdn.net/images/cover/93d853a9975fb9c584f328c41591866e/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/93d853a9975fb9c584f328c41591866e/500x500-000000-80-0-0.jpg','R&B','Elaine Music','No reviews yet',8,'2019-09-29','Elements'),('770293952','Roses (Imanbek Remix)','SAINt JHN','https://cdns-images.dzcdn.net/images/cover/e98d338e33aec862d25ab963525c6c76/500x500-000000-80-0-0.jpg','https://cdns-images.dzcdn.net/images/artist/9de1ee6fef57af3f981f0835d4e48d22/500x500-000000-80-0-0.jpg','Dance, Pop, International Pop, Rock','Godd Complexx/HITCO, b1/Effective','jamesh88: good\nsong',6,'2019-10-09','Roses (Imanbek Remix)'),('793163542','Don\'t Start Now','Dua Lipa','https://e-cdns-images.dzcdn.net/images/cover/2330b746089b5f6f4507cb84cc35d4d3/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/e6a04d735093a46dcc8be197681d1199/500x500-000000-80-0-0.jpg','Pop','Warner Records','el: best song ever',9,'2019-10-31','Don\'t Start Now'),('866940512','eMcimbini (Live)','Kabza De Small','https://e-cdns-images.dzcdn.net/images/cover/e4ddf2ade04341f0924e27ee0d4ad062/500x500-000000-80-0-0.jpg','https://e-cdns-images.dzcdn.net/images/artist/70534fd7398f842e2aed8d3512a3bbc6/500x500-000000-80-0-0.jpg','Electro, Techno/House, Dance','New Money Gang','No reviews yet',10,'2020-02-03','Scorpion Kings Live'),('908604612','Blinding Lights','The Weeknd','https://cdns-images.dzcdn.net/images/cover/fd00ebd6d30d7253f813dba3bb1c66a9/500x500-000000-80-0-0.jpg','https://cdns-images.dzcdn.net/images/artist/c3cbc4309cf09aec8914784270f194e4/500x500-000000-80-0-0.jpg','R&B','Republic Records','Zio Hancock: Why is this censored? Trying to make me cancel my deezer subscription?',1,'2020-03-20','After Hours'),('941904272','Gimme Your Love','Twinchild Edozie','https://cdns-images.dzcdn.net/images/cover/54a8ca36cefb7b6f8501da86c3085935/500x500-000000-80-0-0.jpg','https://cdns-images.dzcdn.net/images/artist/54a8ca36cefb7b6f8501da86c3085935/500x500-000000-80-0-0.jpg','Pop','Winning Music Records','No reviews yet',2,'2020-05-01','Gimme Your Love'),('947861102','Toosie Slide','Drake','https://cdns-images.dzcdn.net/images/cover/d46b7a8aa40ef7f09d71a03c2ce8edcd/500x500-000000-80-0-0.jpg','https://cdns-images.dzcdn.net/images/artist/5d2fa7f140a6bdc2c864c3465a61fc71/500x500-000000-80-0-0.jpg','Rap/Hip Hop','OVO','Charming.Killer: D4L is the only good song in this album',3,'2020-05-01','Dark Lane Demo Tapes');
/*!40000 ALTER TABLE `newRelease_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trending_song`
--

DROP TABLE IF EXISTS `trending_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trending_song` (
  `id` varchar(22) NOT NULL,
  `title` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `album` varchar(100) DEFAULT NULL,
  `albumImageURL` varchar(120) DEFAULT NULL,
  `artistImageURL` varchar(120) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `genre` varchar(70) DEFAULT NULL,
  `ranking` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trending_song`
--

LOCK TABLES `trending_song` WRITE;
/*!40000 ALTER TABLE `trending_song` DISABLE KEYS */;
INSERT INTO `trending_song` VALUES ('04QTmCTsaVjcGaoxj8rSjE','Know Your Worth','Khalid','Know Your Worth','https://i.scdn.co/image/ab67616d0000b2736d8139ae2807fb26071e75d9','https://i.scdn.co/image/05da6a798c59e8ab7102d77c8deb79d67a1360ed','2020-04-23','alternative r&b, pop',21),('0DWIaEumpHd41vATkCGUK2','SBCNCSLY','Black Coffee','SBCNCSLY','https://i.scdn.co/image/ab67616d0000b273fdfe7ecae862f7601de700d4','https://i.scdn.co/image/db1ee6053bb78590bef0e95867536174edbd2bed','2020-04-24','afro house, deep house, kwaito house',3),('0JQ5MbyriK6ruD3t6RZ7ix','Never Seen The Rain','Tones And I','The Kids Are Coming','https://i.scdn.co/image/ab67616d0000b273aa1beea495a0070294c30e31','https://i.scdn.co/image/182e3f8f59a51783fe181f823c56f0565198c921','2019-08-29','australian pop',46),('0nbXyq5TXYPCO7pr3N8S4I','The Box','Roddy Ricch','Please Excuse Me For Being Antisocial','https://i.scdn.co/image/ab67616d0000b273600adbc750285ea1a8da249f','https://i.scdn.co/image/020e997fb003cf666859a90b57ca0519df769d30','2019-12-06','melodic rap',9),('0OyQns5ayNK2OVaES0Vb8t','Righteous','Juice WRLD','Righteous','https://i.scdn.co/image/ab67616d0000b2736df47ee9cce261bc4aaf946e','https://i.scdn.co/image/d8e62447a338a882b490460da20e90aac6d60ae7','2020-04-24','chicago rap, melodic rap',41),('0sf12qNH5qcw8qpgymFOqD','Blinding Lights','The Weeknd','Blinding Lights','https://i.scdn.co/image/ab67616d0000b273c464fabb4e51b72d657f779a','https://i.scdn.co/image/d9a875c37277c35b94c60c00d2cd256db098505d','2019-11-29','canadian contemporary r&b, canadian pop, pop',5),('11VApNQCWLJdzxWrlmwzUa','Say So (feat. Nicki Minaj)','Doja Cat','Say So (feat. Nicki Minaj)','https://i.scdn.co/image/ab67616d0000b273e7a221a05ef17fd41e9e4c0e','https://i.scdn.co/image/c0492ddbdf41c4595ee1334d3f896ea786005fe9','2020-05-01','la indie, pop',18),('127QTOFJsJQp5LbJbu3A1y','Toosie Slide','Drake','Toosie Slide','https://i.scdn.co/image/ab67616d0000b2736443676b54522a86f6323e65','https://i.scdn.co/image/012ecd119617ac24ab56620ace4b81735b172686','2020-04-03','canadian hip hop, canadian pop, hip hop, toronto rap',13),('1Cv1YLb4q0RzL6pybtaMLo','Sunday Best','Surfaces','Where the Light Is','https://i.scdn.co/image/ab67616d0000b2733667dc27da7b24360d6050d0','https://i.scdn.co/image/0d125e224948b5e4716239384839230205832084','2019-01-06','bedroom soul, pop',15),('1d1n5KjW6aH9ItdA8WmlWW','Don\'t Rush (feat. Headie One)','Young T & Bugsey','Plead The 5th','https://i.scdn.co/image/ab67616d0000b273718586ddad581d6e701b1202','https://i.scdn.co/image/0a72c10d290e6e55f6ea7a41cd532abee90ac1f8','2020-03-20','uk drill, uk hip hop',25),('1fipvP2zmef6vN2IwXfJhY','I’m Ready (with Demi Lovato)','Sam Smith','I’m Ready (with Demi Lovato)','https://i.scdn.co/image/ab67616d0000b2734faa7bcdea2019fc871ef49e','https://i.scdn.co/image/f9c59fff374544fb32293622bd8fce042c2756b4','2020-04-16','pop, post-teen pop, uk pop',47),('1iQDltZqI7BXnHrFy4Qo1k','Trampoline (with ZAYN)','SHAED','Trampoline (with ZAYN)','https://i.scdn.co/image/ab67616d0000b273376ab4e92e92e23191cb4d32','https://i.scdn.co/image/d4a8d208a0334c183ffa012724df7d85a1878c20','2019-09-26','electropop, pop',48),('1jaTQ3nqY3oAAYyCTbIvnM','WHATS POPPIN','Jack Harlow','Sweet Action','https://i.scdn.co/image/ab67616d0000b27305a448540b069450ccfba889','https://i.scdn.co/image/62ba4733520819a3a3ee59d419f1bc72a5239505','2020-03-13','deep underground hip hop, hip hop, pop rap, underground hip hop',34),('1M4qEo4HE3PRaCOM7EXNJq','Adore You','Harry Styles','Adore You','https://i.scdn.co/image/ab67616d0000b273da715ed2f440e2f409f58d47','https://i.scdn.co/image/b2163e7456f3d618a0e2a4e32bc892d6b11ce673','2019-12-06','pop, post-teen pop',33),('1raaNykBg1bDnWENUiglUA','Break My Heart','Dua Lipa','Break My Heart','https://i.scdn.co/image/ab67616d0000b2738c801003e253e5025c437041','https://i.scdn.co/image/330f9806621bc0fe67f5c06f2f1f8df53d011b4e','2020-03-25','dance pop, pop, uk pop',28),('1rgnBhdG2JDFTbYkYRZAku','Dance Monkey','Tones And I','Dance Monkey','https://i.scdn.co/image/ab67616d0000b27338802659d156935ada63c9e3','https://i.scdn.co/image/182e3f8f59a51783fe181f823c56f0565198c921','2019-05-10','australian pop',22),('1WnKdiEPEvd1Meo3gUipPe','If The World Was Ending (feat. Julia Michaels) - Original Demo','JP Saxe','If The World Was Ending (feat. Julia Michaels) [Original Demo]','https://i.scdn.co/image/ab67616d0000b27376122602b15974c0112aba72','https://i.scdn.co/image/e079a1ce6d71b9141a1ba68aeef7fafcd7a34807','2020-04-07','canadian contemporary r&b, pop',35),('24Yi9hE78yPEbZ4kxyoXAI','Roses - Imanbek Remix','SAINt JHN','Roses (Imanbek Remix)','https://i.scdn.co/image/ab67616d0000b273b340b496cb7c38d727ff40be','https://i.scdn.co/image/ec30ea9bc3d2007f775a91a428101b4a831ac64a','2019-10-09','melodic rap, pop rap, rap, trap',19),('2b8fOow8UzyDFAE27YhOZM','Memories','Maroon 5','Memories','https://i.scdn.co/image/ab67616d0000b273b8c0135a218de2d10a8435f5','https://i.scdn.co/image/608c7b23420c9556a7eabd9097f7e171a91d3871','2019-09-20','pop, pop rock',27),('2tnVG71enUj33Ic2nFN6kZ','Ride It','Regard','Ride It','https://i.scdn.co/image/ab67616d0000b2735c27813ae019011fcb370c78','https://i.scdn.co/image/1bebc8be13032082fed628c8d71ae97f365fc135','2019-07-26','pop edm',49),('364dI1bYnvamSnBJ8JcNzN','Intentions','Justin Bieber','Intentions','https://i.scdn.co/image/ab67616d0000b27308e30ab6a058429303d75876','https://i.scdn.co/image/d745628f6659a715f0f69eed1508805849796e5e','2020-02-07','canadian pop, pop, post-teen pop',2),('39Yp9wwQiSRIDOvrVg7mbk','THE SCOTTS','THE SCOTTS','THE SCOTTS','https://i.scdn.co/image/ab67616d0000b27311d6f8c713ef93a9bb64ddfe','https://i.scdn.co/image/f17ad03ecc4f6ea716c90270020133ec277d35af','2020-04-25','',36),('3g0mEQx3NTanacLseoP0Gw','Takeaway','The Chainsmokers','World War Joy','https://i.scdn.co/image/ab67616d0000b2735e90ff76fd49a23f7333de76','https://i.scdn.co/image/960547a625bc2eb742bb3dd170cbc049d2e94cf9','2019-12-06','electropop, pop, tropical house',29),('3H7ihDc1dqLriiWXwsc2po','Breaking Me','Topic','Breaking Me','https://i.scdn.co/image/ab67616d0000b273ca801dab96017456b9847ac2','https://i.scdn.co/image/ae880dea15dc1651a35574a26a88980665177643','2019-12-19','german dance, german pop, pop edm, tropical house',32),('3Z8FwOEN59mRMxDCtb8N0A','Be Kind (with Halsey)','Marshmello','Be Kind (with Halsey)','https://i.scdn.co/image/ab67616d0000b273fdf2e993e10e67396b3bf759','https://i.scdn.co/image/b378853a6838299aeb068851850dfa8f5d18832a','2020-05-01','brostep, pop, progressive electro house',12),('3ZCTVFBt2Brf31RLEnCkWJ','everything i wanted','Billie Eilish','everything i wanted','https://i.scdn.co/image/ab67616d0000b273f2248cf6dad1d6c062587249','https://i.scdn.co/image/2622edec99d68d1d141886be593c88cbe509f6d8','2019-11-13','electropop, pop',1),('4HBZA5flZLE435QTztThqH','Stuck with U (with Justin Bieber)','Ariana Grande','Stuck with U','https://i.scdn.co/image/ab67616d0000b273add5849f0c8094c8c215aa53','https://i.scdn.co/image/b1dfbe843b0b9f54ab2e588f33e7637d2dab065a','2020-05-08','dance pop, pop, post-teen pop',4),('4HDCLYli2SUdkq9OjmvhSD','BELIEVE IT','PARTYNEXTDOOR','PARTYMOBILE','https://i.scdn.co/image/ab67616d0000b273d8082097058d4c44739b17dd','https://i.scdn.co/image/797276c2f8da713f0534e012de4d144f338e1664','2020-03-27','pop, pop rap, rap, urban contemporary',24),('4nK5YrxbMGZstTLbvj6Gxw','Supalonely','BENEE','STELLA & STEVE','https://i.scdn.co/image/ab67616d0000b27382f4ec53c54bdd5be4eed4a0','https://i.scdn.co/image/abd8e6961a652fef88762676b74b6e7eaa876613','2019-11-15','nz pop, pop',37),('4PV0uE5pZSh44E3NqNNDEH','Selfish','Madison Beer','Selfish','https://i.scdn.co/image/ab67616d0000b273603d62ea5d5919e8920ba450','https://i.scdn.co/image/2497635756a066b3d8f861f2932e05dddb9ca916','2020-02-14','dance pop, pop, post-teen pop',45),('4QnC1bIaMSfDQvF4XDhV5M','Boyfriend','Selena Gomez','Rare (Deluxe)','https://i.scdn.co/image/ab67616d0000b2735183fe2502a176f8017da25f','https://i.scdn.co/image/dc6dd5ccdccee8c947b41af13e3b60ce0a235708','2020-04-09','dance pop, pop, post-teen pop',42),('4TnjEaWOeW0eKTKIEvJyCa','Falling','Trevor Daniel','Falling','https://i.scdn.co/image/ab67616d0000b2736376adb8412509a697896090','https://i.scdn.co/image/42dce8deb4dae01e1b39964981d099c92dff1902','2018-10-05','alternative r&b, melodic rap, pop rap',8),('4VginDwYTP2eaHJzO0QMjG','Circles','Post Malone','Circles','https://i.scdn.co/image/ab67616d0000b2732919189f53d1f4ca51ac0aa9','https://i.scdn.co/image/93fec27f9aac86526b9010e882037afbda4e3d5f','2019-08-30','dfw rap, melodic rap, rap',17),('4XOcBYsZrR8oa9c97COoYf','Risky','Elaine','Elements','https://i.scdn.co/image/ab67616d0000b273908d9d53b0e99b808036d544','https://i.scdn.co/image/bd59aa8082cf7fe4519845ed6e5812748d3b4b15','2019-09-29','afro house, south african pop',39),('5v4GgrXPMghOnBBLmveLac','Savage Remix (feat. Beyoncé)','Megan Thee Stallion','Savage Remix (feat. Beyoncé)','https://i.scdn.co/image/ab67616d0000b2739e1cf949785e00f925be7713','https://i.scdn.co/image/2214102a17a9a3df52fc812d43b58f57b386613a','2020-04-29','houston rap, pop, pop rap, trap queen',30),('5yY9lUy8nbvjM1Uyo1Uqoc','Life Is Good (feat. Drake)','Future','Life Is Good (feat. Drake)','https://i.scdn.co/image/ab67616d0000b2738a01c7b77a34378a62f46402','https://i.scdn.co/image/287c505d7b76d3971a8c5b2fbb3935f9b2dbc3ce','2020-01-10','atl hip hop, pop rap, rap, trap',6),('62aP9fBQKYKxi7PDXwcUAS','ily (i love you baby) (feat. Emilee)','Surf Mesa','ily (i love you baby) (feat. Emilee)','https://i.scdn.co/image/ab67616d0000b273b3de5764cc02f94714487c86','https://i.scdn.co/image/0b34550b5e721ce9f59b38418a5f4eba91a30127','2019-11-26','',43),('63Pt6QnepIcsPITzyvvOEt','You\'re the One','Elaine','Elements','https://i.scdn.co/image/ab67616d0000b273908d9d53b0e99b808036d544','https://i.scdn.co/image/bd59aa8082cf7fe4519845ed6e5812748d3b4b15','2019-09-29','south african pop',23),('696DnlkuDOXcMAnKlTgXXK','ROXANNE','Arizona Zervas','ROXANNE','https://i.scdn.co/image/ab67616d0000b273069a93617a916760ab88ffea','https://i.scdn.co/image/d549aadbb8b3a254fdc8e5ac93535a706463dce6','2019-10-10','pop rap',10),('6wJYhPfqk3KGhHRG76WzOh','Blueberry Faygo','Lil Mosey','Blueberry Faygo','https://i.scdn.co/image/ab67616d0000b273ab3f9995f4f3a83e0591c940','https://i.scdn.co/image/cb7532053adb92b2523c1afaa5541d8dde3f045a','2020-02-07','melodic rap, rap conscient, trap, vapor trap',7),('6WrI0LAC5M1Rw2MnX2ZvEg','Don\'t Start Now','Dua Lipa','Don\'t Start Now','https://i.scdn.co/image/ab67616d0000b2738583df1a14bea9175f9ac520','https://i.scdn.co/image/330f9806621bc0fe67f5c06f2f1f8df53d011b4e','2019-10-31','dance pop, pop, uk pop',20),('6xZ4Q2k2ompmDppyeESIY8','Level of Concern','Twenty One Pilots','Level of Concern','https://i.scdn.co/image/ab67616d0000b273ab2f8973949159695f65df7b','https://i.scdn.co/image/19e8f3bc875b7a4b9cf0041a5ee696c4be5478aa','2020-04-09','modern rock, rock',44),('70eFcWOvlMObDhURTqT4Fv','Beautiful People (feat. Khalid)','Ed Sheeran','No.6 Collaborations Project','https://i.scdn.co/image/ab67616d0000b273a53a148d92ce7afa20229e49','https://i.scdn.co/image/f55cab0739390cf3b2c2f773b9c779b2f0ae8a99','2019-07-12','pop, uk pop',31),('7ce20yLkzuXXLUhzIDoZih','Before You Go','Lewis Capaldi','Before You Go','https://i.scdn.co/image/ab67616d0000b273f6cda6c81dd1c2d5783fbd2d','https://i.scdn.co/image/5ed13d249e562fea4e296aaeb745ce06d27ec88f','2019-11-19','pop, uk pop',40),('7CHi4DtfK4heMlQaudCuHK','Lose Control','MEDUZA','Lose Control','https://i.scdn.co/image/ab67616d0000b273d43c59e52d6a8032a4e27fc4','https://i.scdn.co/image/f1dc8347ce1fd49e13f3e799175290a36e02b52d','2019-10-11','pop house',14),('7eJMfftS33KTjuF7lTsMCx','death bed (coffee for your head) (feat. beabadoobee)','Powfu','death bed (coffee for your head) (feat. beabadoobee)','https://i.scdn.co/image/ab67616d0000b273bf01fd0986a195d485922167','https://i.scdn.co/image/caa3b241ab7d11af43bfed13fa536747a4cc38f8','2020-02-08','',11),('7qEHsqek33rTcFNT9PFqLf','Someone You Loved','Lewis Capaldi','Divinely Uninspired To A Hellish Extent','https://i.scdn.co/image/ab67616d0000b273fc2101e6889d6ce9025f85f2','https://i.scdn.co/image/5ed13d249e562fea4e296aaeb745ce06d27ec88f','2019-05-17','pop, uk pop',26),('7szuecWAPwGoV1e5vGu8tl','In Your Eyes','The Weeknd','After Hours','https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36','https://i.scdn.co/image/d9a875c37277c35b94c60c00d2cd256db098505d','2020-03-20','canadian contemporary r&b, canadian pop, pop',38),('7tZ6iUkIibysZmPXA0yLq7','There They Go','Nasty C','There They Go','https://i.scdn.co/image/ab67616d0000b27334acf388fab2817ba89b7dd8','https://i.scdn.co/image/7d959fafbda406090425ff2d5e89a082cc1affa1','2020-03-26','south african hip hop, south african pop',16),('7ytR5pFWmSjzHJIeQkgog4','ROCKSTAR (feat. Roddy Ricch)','DaBaby','BLAME IT ON BABY','https://i.scdn.co/image/ab67616d0000b27320e08c8cc23f404d723b5647','https://i.scdn.co/image/f68192e6516d89a77a2b16904725a77b75b42056','2020-04-17','nc hip hop, rap',50);
/*!40000 ALTER TABLE `trending_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preference`
--

DROP TABLE IF EXISTS `user_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_preference` (
  `userID` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`userID`,`type`),
  CONSTRAINT `id` FOREIGN KEY (`userID`) REFERENCES `User` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preference`
--

LOCK TABLES `user_preference` WRITE;
/*!40000 ALTER TABLE `user_preference` DISABLE KEYS */;
INSERT INTO `user_preference` VALUES (1,'filterGenre','canadian contemporary r&b'),(1,'filterYear','2019'),(1,'sort','title'),(39,'filterGenre','deep house'),(39,'sort','artist'),(43,'filterGenre','dance pop'),(43,'filterYear','2020'),(43,'sort','album');
/*!40000 ALTER TABLE `user_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_rating`
--

DROP TABLE IF EXISTS `user_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_rating` (
  `userID` int(10) unsigned NOT NULL,
  `table_name` varchar(20) NOT NULL,
  `id` varchar(22) NOT NULL,
  `rating` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`userID`,`table_name`,`id`),
  CONSTRAINT `fk_user_rating` FOREIGN KEY (`userID`) REFERENCES `User` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_rating`
--

LOCK TABLES `user_rating` WRITE;
/*!40000 ALTER TABLE `user_rating` DISABLE KEYS */;
INSERT INTO `user_rating` VALUES (1,'trending_song','24Yi9hE78yPEbZ4kxyoXAI',5),(43,'featured_song','392355262',7),(43,'featured_song','634831172',7),(43,'featured_song','743736202',9),(43,'featured_song','806563012',9),(43,'featured_song','854317202',8),(43,'featured_song','874083752',7),(43,'featured_song','893702992',8),(43,'featured_song','915689602',6),(43,'featured_song','916137472',8),(43,'featured_song','917268422',9),(43,'featured_song','930244642',8),(43,'featured_song','932661622',8),(43,'featured_song','935268652',9),(43,'featured_song','936202182',8),(43,'featured_song','943921142',8),(43,'featured_song','946333752',8),(43,'featured_song','952973802',8),(43,'newRelease_song','727924692',9),(43,'newRelease_song','755405702',5),(43,'newRelease_song','763664242',5),(43,'newRelease_song','770293952',9),(43,'newRelease_song','793163542',3),(43,'newRelease_song','803010392',8),(43,'newRelease_song','908604612',8),(43,'newRelease_song','941904272',7),(43,'newRelease_song','947861082',8),(43,'newRelease_song','947861102',6),(43,'trending_song','0DWIaEumpHd41vATkCGUK2',7),(43,'trending_song','0nbXyq5TXYPCO7pr3N8S4I',3),(43,'trending_song','0OyQns5ayNK2OVaES0Vb8t',6),(43,'trending_song','0sf12qNH5qcw8qpgymFOqD',7),(43,'trending_song','0TrPqhAMoaKUFLR7iYDokf',5),(43,'trending_song','127QTOFJsJQp5LbJbu3A1y',7),(43,'trending_song','1Cv1YLb4q0RzL6pybtaMLo',7),(43,'trending_song','1iQDltZqI7BXnHrFy4Qo1k',7),(43,'trending_song','1M4qEo4HE3PRaCOM7EXNJq',5),(43,'trending_song','1raaNykBg1bDnWENUiglUA',7),(43,'trending_song','1WnKdiEPEvd1Meo3gUipPe',7),(43,'trending_song','24Yi9hE78yPEbZ4kxyoXAI',6),(43,'trending_song','2p8IUWQDrpjuFltbdgLOag',9),(43,'trending_song','2tnVG71enUj33Ic2nFN6kZ',4),(43,'trending_song','39Yp9wwQiSRIDOvrVg7mbk',8),(43,'trending_song','3ZCTVFBt2Brf31RLEnCkWJ',8),(43,'trending_song','4PV0uE5pZSh44E3NqNNDEH',5),(43,'trending_song','4QnC1bIaMSfDQvF4XDhV5M',6),(43,'trending_song','4TnjEaWOeW0eKTKIEvJyCa',5),(43,'trending_song','4VginDwYTP2eaHJzO0QMjG',7),(43,'trending_song','5v4GgrXPMghOnBBLmveLac',7),(43,'trending_song','5yY9lUy8nbvjM1Uyo1Uqoc',6),(43,'trending_song','696DnlkuDOXcMAnKlTgXXK',8),(43,'trending_song','6ap9lSRJ0iLriGLqoJ44cq',7),(43,'trending_song','6wJYhPfqk3KGhHRG76WzOh',6),(43,'trending_song','6WrI0LAC5M1Rw2MnX2ZvEg',4),(43,'trending_song','7eJMfftS33KTjuF7lTsMCx',6),(43,'trending_song','7szuecWAPwGoV1e5vGu8tl',7);
/*!40000 ALTER TABLE `user_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'u19030119_MUSIC_P4'
--
/*!50003 DROP PROCEDURE IF EXISTS `kill_other_processes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u19030119`@`%%` PROCEDURE `kill_other_processes`()
BEGIN
  DECLARE finished INT DEFAULT 0;
  DECLARE proc_id INT;
  DECLARE proc_id_cursor CURSOR FOR SELECT id FROM information_schema.processlist;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

  OPEN proc_id_cursor;
  proc_id_cursor_loop: LOOP
    FETCH proc_id_cursor INTO proc_id;

    IF finished = 1 THEN 
      LEAVE proc_id_cursor_loop;
    END IF;

    IF proc_id <> CONNECTION_ID() THEN
      KILL proc_id;
    END IF;

  END LOOP proc_id_cursor_loop;
  CLOSE proc_id_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-09 13:10:35
