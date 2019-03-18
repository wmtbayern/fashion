-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: fashion
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `app_goods`
--

DROP TABLE IF EXISTS `app_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_goods` (
  `id` varchar(200) NOT NULL,
  `img` varchar(300) NOT NULL,
  `wen` varchar(300) NOT NULL,
  `alt` varchar(300) NOT NULL,
  `said1` varchar(300) NOT NULL,
  `said2` varchar(300) NOT NULL,
  `price_good` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_goods`
--

LOCK TABLES `app_goods` WRITE;
/*!40000 ALTER TABLE `app_goods` DISABLE KEYS */;
INSERT INTO `app_goods` VALUES ('1001','img/14374759c35e3b8b02d-160x192.jpg','棉 男士 长袖衬衫','棉 男士 长袖衬衫','Givenchy','纪梵希','12000'),('1002','img/14191759c20865d19a9-160x192.jpg','小牛皮 女士 单肩包','小牛皮 女士 单肩包','Saint Laurent','纪梵希','13455'),('1003','img/15053459cdf0be309ee-160x192.jpg','棉 男士 户外鞋','棉 男士 户外鞋','Saint Laurent','纪梵希','12344'),('1004','img/1741355942564f9389e-160x192.jpg','浅亚麻色LEI系列手提包\"','浅亚麻色LEI系列手提包\"','Saint Laurent','纪梵希','7896'),('1005','img/h-128241-1.jpg','17春夏新款  小牛皮 女士 手提包','17春夏新款  小牛皮 女士 手提包','Dolce&amp;Gabbana','杜嘉班纳','5444'),('1006','img/14054859801a3cba02a-160x192.jpg','深蓝色女士牛仔裤','深蓝色女士牛仔裤','Burberry','博柏利','6756'),('1007 ','img/1007315983d6e3971e6-160x192.jpg','小牛皮 女士 单肩包','小牛皮 女士 单肩包','VERSACE JEANS','范思哲牛仔','7779'),('1009','img/10391259cc60d040df6-160x192.jpg','小清新 女士 手提包','小清新 女士 手提包','Givenchy','纪梵希','8765');
/*!40000 ALTER TABLE `app_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_lunbo`
--

DROP TABLE IF EXISTS `app_lunbo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_lunbo` (
  `id` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `wen` varchar(200) NOT NULL,
  `alt` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_lunbo`
--

LOCK TABLES `app_lunbo` WRITE;
/*!40000 ALTER TABLE `app_lunbo` DISABLE KEYS */;
INSERT INTO `app_lunbo` VALUES ('101','static/img/13233359cdd8d599109.jpg','伦敦潮鞋 新晋街头时尚品牌','伦敦潮鞋 新晋街头时尚品牌'),('102','static/img/13241259cdd8fcc3e6d.jpg','穿搭神器 女士牛仔 Diesel、Just Cavalli、J Brand','穿搭神器 女士牛仔 Diesel、Just Cavalli、J Brand');
/*!40000 ALTER TABLE `app_lunbo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_lunbo1`
--

DROP TABLE IF EXISTS `app_lunbo1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_lunbo1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(200) NOT NULL,
  `trackid` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_lunbo1`
--

LOCK TABLES `app_lunbo1` WRITE;
/*!40000 ALTER TABLE `app_lunbo1` DISABLE KEYS */;
INSERT INTO `app_lunbo1` VALUES (1,'http://img01.bqstatic.com//upload/activity/2017031716035274.jpg@90Q.jpg','21870','酸奶女王'),(2,'http://img01.bqstatic.com//upload/activity/2017031710450787.jpg@90Q.jpg','21869','优选圣女果'),(3,'http://img01.bqstatic.com//upload/activity/2017030714522982.jpg@90Q.jpg','21862','伊利酸奶大放价'),(4,'http://img01.bqstatic.com//upload/activity/2017032116081698.jpg@90Q.jpg','21770','鲜货直供－窝夫小子'),(5,'http://img01.bqstatic.com//upload/activity/2017032117283348.jpg@90Q.jpg','21874','鲜货直供－狼博森食品');
/*!40000 ALTER TABLE `app_lunbo1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_order`
--

DROP TABLE IF EXISTS `app_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` datetime(6) NOT NULL,
  `updatetime` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `identifier` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_order_user_id_f25a9fc4_fk_user_id` (`user_id`),
  CONSTRAINT `app_order_user_id_f25a9fc4_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_order`
--

LOCK TABLES `app_order` WRITE;
/*!40000 ALTER TABLE `app_order` DISABLE KEYS */;
INSERT INTO `app_order` VALUES (1,'2019-03-17 03:20:51.726484','2019-03-17 03:20:51.726556',0,'1552792851.72578382931',10),(2,'2019-03-17 05:24:40.666813','2019-03-17 05:24:40.666880',0,'1552800280.66614878964',10),(3,'2019-03-17 05:40:23.201852','2019-03-17 05:40:23.201924',0,'1552801223.20111587381',10),(4,'2019-03-17 05:44:13.940341','2019-03-17 05:44:13.940421',0,'1552801453.93773441454',10),(5,'2019-03-17 05:45:08.686952','2019-03-17 05:45:08.687020',0,'1552801508.68650447957',10),(6,'2019-03-17 05:45:27.306860','2019-03-17 05:45:27.306934',0,'1552801527.30532722118',10),(7,'2019-03-17 05:45:36.839316','2019-03-17 05:45:36.839390',0,'1552801536.83872943347',10),(8,'2019-03-17 05:45:56.601853','2019-03-17 05:45:56.601933',0,'1552801556.60017448774',10),(9,'2019-03-17 05:46:42.165418','2019-03-17 05:46:42.165492',0,'1552801602.1648538390',10),(10,'2019-03-17 05:46:44.868444','2019-03-17 05:46:44.868512',0,'1552801604.86740661283',10),(11,'2019-03-17 05:47:04.762636','2019-03-17 05:47:04.762705',0,'1552801624.76211746548',10),(12,'2019-03-17 05:48:09.283285','2019-03-17 05:48:09.283352',0,'1552801689.2827083087',10),(13,'2019-03-17 05:48:29.609295','2019-03-17 05:48:29.609363',0,'1552801709.60881046939',10),(14,'2019-03-17 05:54:00.648310','2019-03-17 05:54:00.648382',0,'1552802040.64767125989',10),(15,'2019-03-17 05:54:04.609841','2019-03-17 05:54:04.609911',0,'1552802044.60925872798',10),(16,'2019-03-17 05:54:05.689214','2019-03-17 05:54:05.689284',0,'1552802045.68862751274',10),(17,'2019-03-17 05:54:05.947689','2019-03-17 05:54:05.947753',0,'1552802045.94724753908',10),(18,'2019-03-17 05:54:41.061232','2019-03-17 05:54:41.061309',0,'1552802081.06033833146',10),(19,'2019-03-17 05:54:58.840150','2019-03-17 05:54:58.840227',0,'1552802098.8364718414',10),(20,'2019-03-17 05:57:33.326485','2019-03-17 05:57:33.326553',0,'1552802253.3259844667',10),(21,'2019-03-17 05:57:34.269654','2019-03-17 05:57:34.269719',0,'1552802254.26921279033',10),(22,'2019-03-17 05:57:35.150817','2019-03-17 05:57:35.150882',0,'1552802255.15024351011',10),(23,'2019-03-17 05:57:36.648884','2019-03-17 05:57:36.648954',0,'1552802256.6467369715',10),(24,'2019-03-17 06:02:12.740049','2019-03-17 06:02:12.740139',0,'1552802532.7396069441',10),(25,'2019-03-17 06:04:17.302241','2019-03-17 06:04:17.302314',0,'1552802657.30162241030',10),(26,'2019-03-17 06:07:39.810989','2019-03-17 06:07:39.811067',0,'1552802859.8100759374',10),(27,'2019-03-17 06:08:15.507898','2019-03-17 06:08:15.507967',0,'1552802895.50732379342',10),(28,'2019-03-17 06:10:11.873431','2019-03-17 06:10:11.873498',0,'1552803011.87296723480',10),(29,'2019-03-17 06:10:56.161027','2019-03-17 06:10:56.161102',0,'1552803056.16041923132',10),(30,'2019-03-17 06:12:07.716490','2019-03-17 06:12:07.716560',0,'1552803127.71523719562',10),(31,'2019-03-17 06:12:21.352773','2019-03-17 06:12:21.352857',0,'1552803141.35089239060',10),(32,'2019-03-17 06:12:47.737302','2019-03-17 06:12:47.737374',0,'1552803167.72532875235',10),(33,'2019-03-17 06:13:34.187482','2019-03-17 06:13:34.187549',0,'1552803214.18701745053',10),(34,'2019-03-17 06:14:11.558134','2019-03-17 06:14:11.558202',0,'1552803251.55766132063',10),(35,'2019-03-17 06:14:13.501769','2019-03-17 06:14:13.501835',0,'1552803253.50107312978',10),(36,'2019-03-17 06:14:51.893313','2019-03-17 06:14:51.893387',0,'1552803291.89274986783',10),(37,'2019-03-17 06:20:03.167169','2019-03-17 06:20:03.167239',0,'1552803603.16659953240',10),(38,'2019-03-17 06:20:04.517243','2019-03-17 06:20:04.517313',0,'1552803604.51602755561',10),(39,'2019-03-17 06:23:42.018450','2019-03-17 06:23:42.018516',0,'1552803822.01795153577',10),(40,'2019-03-17 06:23:43.166768','2019-03-17 06:23:43.166838',0,'1552803823.1662772878',10),(41,'2019-03-17 06:25:02.677594','2019-03-17 06:25:02.677668',0,'1552803902.67696142296',10),(42,'2019-03-17 06:25:05.636267','2019-03-17 06:25:05.636333',0,'1552803905.63580428162',10),(43,'2019-03-17 06:25:08.668781','2019-03-17 06:25:08.668848',0,'1552803908.6647633285',10),(44,'2019-03-17 06:25:09.698125','2019-03-17 06:25:09.698189',0,'1552803909.69769243191',10),(45,'2019-03-17 06:27:54.910907','2019-03-17 06:27:54.910987',0,'1552804074.90876341767',10),(46,'2019-03-17 06:27:59.134729','2019-03-17 06:27:59.134800',0,'1552804079.13415774961',10),(47,'2019-03-17 06:28:00.356406','2019-03-17 06:28:00.356474',0,'1552804080.35593777101',10),(48,'2019-03-17 06:28:01.588757','2019-03-17 06:28:01.588827',0,'1552804081.58808888578',10),(49,'2019-03-17 06:31:20.486335','2019-03-17 06:31:20.486401',0,'1552804280.48579887301',10),(50,'2019-03-17 06:31:50.269850','2019-03-17 06:31:50.269920',0,'1552804310.26937444328',10),(51,'2019-03-17 06:32:41.228358','2019-03-17 06:32:41.228423',0,'1552804361.22778371871',10),(52,'2019-03-17 06:43:50.580415','2019-03-17 06:43:50.580490',0,'1552805030.57970986215',10),(53,'2019-03-17 06:43:52.012026','2019-03-17 06:43:52.014434',0,'1552805032.01149347393',10),(54,'2019-03-17 06:43:53.505410','2019-03-17 06:43:53.505481',0,'1552805033.50386938341',10),(55,'2019-03-17 06:44:23.558847','2019-03-17 06:44:23.558918',0,'1552805063.55822835709',10),(56,'2019-03-17 06:44:25.099572','2019-03-17 06:44:25.099640',0,'1552805065.09912358703',10),(57,'2019-03-17 06:45:54.805587','2019-03-17 06:45:54.805657',0,'1552805154.80502417638',10),(58,'2019-03-17 06:48:58.168270','2019-03-17 06:48:58.168344',0,'1552805338.16765288058',10),(59,'2019-03-17 06:49:00.736794','2019-03-17 06:49:00.736862',0,'1552805340.73624976746',10),(60,'2019-03-17 06:49:02.296773','2019-03-17 06:49:02.296842',0,'1552805342.29623412503',10),(61,'2019-03-17 06:49:03.450118','2019-03-17 06:49:03.450191',0,'1552805343.449597274',10),(62,'2019-03-17 06:52:59.702497','2019-03-17 06:52:59.702565',0,'1552805579.702062043',10),(63,'2019-03-17 06:53:00.923639','2019-03-17 06:53:00.923712',0,'1552805580.92310053461',10),(64,'2019-03-17 06:53:01.906607','2019-03-17 06:53:01.906678',0,'1552805581.90614943077',10),(65,'2019-03-17 06:53:02.979046','2019-03-17 06:53:02.979120',0,'1552805582.9768064528',10),(66,'2019-03-17 06:53:03.999579','2019-03-17 06:53:03.999645',0,'1552805583.9991352533',10),(67,'2019-03-17 06:57:06.311113','2019-03-17 06:57:06.311178',0,'1552805826.31068066939',10),(68,'2019-03-17 06:57:09.263348','2019-03-17 06:57:09.263419',0,'1552805829.26278663903',10),(69,'2019-03-17 06:57:10.596438','2019-03-17 06:57:10.596519',0,'1552805830.59585577878',10),(70,'2019-03-17 06:59:32.763439','2019-03-17 06:59:32.763507',0,'1552805972.7636207',10),(71,'2019-03-17 06:59:34.249201','2019-03-17 06:59:34.249269',0,'1552805974.24874887399',10),(72,'2019-03-17 07:04:00.794097','2019-03-17 07:04:00.794166',0,'1552806240.79284721950',10),(73,'2019-03-17 07:04:02.158638','2019-03-17 07:04:02.158709',0,'1552806242.15679365274',10),(74,'2019-03-17 07:04:19.333007','2019-03-17 07:04:19.333080',0,'1552806259.3323666220',10),(75,'2019-03-17 07:04:20.384651','2019-03-17 07:04:20.384729',0,'1552806260.38215377327',10),(76,'2019-03-17 07:04:21.383440','2019-03-17 07:04:21.383512',0,'1552806261.38288247978',10),(77,'2019-03-17 07:05:28.044227','2019-03-17 07:05:28.044305',0,'1552806328.037858197',10),(78,'2019-03-17 07:05:31.084326','2019-03-17 07:05:31.084401',0,'1552806331.08375671429',10),(79,'2019-03-17 07:17:33.476551','2019-03-17 07:17:33.476627',0,'1552807053.47437025304',10),(80,'2019-03-17 07:17:34.547867','2019-03-17 07:17:34.547941',0,'1552807054.54724383411',10),(81,'2019-03-17 07:17:35.313093','2019-03-17 07:17:35.313156',0,'1552807055.31266435708',10),(82,'2019-03-17 07:17:35.741690','2019-03-17 07:17:35.741762',0,'1552807055.74119193458',10),(83,'2019-03-17 07:17:36.205457','2019-03-17 07:17:36.205535',0,'1552807056.20228623992',10),(84,'2019-03-17 07:17:36.728299','2019-03-17 07:17:36.728366',0,'1552807056.72774776703',10),(85,'2019-03-17 07:17:37.333545','2019-03-17 07:17:37.333620',0,'1552807057.33305268299',10),(86,'2019-03-17 07:17:37.730819','2019-03-17 07:17:37.730883',0,'1552807057.73040754149',10),(87,'2019-03-17 07:17:38.146889','2019-03-17 07:17:38.146966',0,'1552807058.14552164203',10),(88,'2019-03-17 07:17:38.548640','2019-03-17 07:17:38.548711',0,'1552807058.54801469474',10),(89,'2019-03-17 07:17:39.557111','2019-03-17 07:17:39.557182',0,'1552807059.55576018098',10),(90,'2019-03-17 07:17:40.325143','2019-03-17 07:17:40.325213',0,'1552807060.32467171362',10),(91,'2019-03-17 07:17:40.729338','2019-03-17 07:17:40.729405',0,'1552807060.7288352901',10),(92,'2019-03-17 07:17:43.061141','2019-03-17 07:17:43.061213',0,'1552807063.0605572135',10),(93,'2019-03-17 07:23:21.377513','2019-03-17 07:23:21.377591',0,'1552807401.37547839537',10),(94,'2019-03-17 07:23:33.549539','2019-03-17 07:23:33.549661',0,'1552807413.5490418594',10),(95,'2019-03-17 07:23:34.804619','2019-03-17 07:23:34.804689',0,'1552807414.80405357485',10),(96,'2019-03-17 07:23:36.446386','2019-03-17 07:23:36.446462',0,'1552807416.44556436764',10),(97,'2019-03-17 07:24:12.839457','2019-03-17 07:24:12.839522',0,'1552807452.83892461191',10),(98,'2019-03-17 07:24:24.128315','2019-03-17 07:24:24.128391',0,'1552807464.12622711955',10),(99,'2019-03-17 07:24:25.199640','2019-03-17 07:24:25.199716',0,'1552807465.1968517386',10),(100,'2019-03-17 07:24:26.278845','2019-03-17 07:24:26.278917',0,'1552807466.27829481248',10),(101,'2019-03-17 07:24:27.276815','2019-03-17 07:24:27.276889',0,'1552807467.27626445968',10),(102,'2019-03-17 07:24:27.686785','2019-03-17 07:24:27.686850',0,'1552807467.68637324789',10),(103,'2019-03-17 07:24:28.164674','2019-03-17 07:24:28.164745',0,'1552807468.16422774992',10),(104,'2019-03-17 07:24:28.708270','2019-03-17 07:24:28.708340',0,'1552807468.7077195813',10),(105,'2019-03-17 07:24:29.939302','2019-03-17 07:24:29.939375',0,'1552807469.93538835149',10),(106,'2019-03-17 07:24:30.901602','2019-03-17 07:24:30.901672',0,'1552807470.90103532593',10),(107,'2019-03-17 07:26:02.638093','2019-03-17 07:26:02.638158',0,'1552807562.63757472635',10),(108,'2019-03-17 07:26:04.451990','2019-03-17 07:26:04.452054',0,'1552807564.45156818567',10),(109,'2019-03-17 07:26:05.818609','2019-03-17 07:26:05.818676',0,'1552807565.81808734490',10),(110,'2019-03-17 07:26:07.090430','2019-03-17 07:26:07.090497',0,'1552807567.08997344413',10),(111,'2019-03-17 07:27:48.086109','2019-03-17 07:27:48.086193',0,'1552807668.08547833570',10),(112,'2019-03-17 07:28:25.810824','2019-03-17 07:28:25.810896',0,'1552807705.8101042333',10),(113,'2019-03-17 07:29:02.737247','2019-03-17 07:29:02.737320',0,'1552807742.73650886333',10),(114,'2019-03-17 07:29:48.027695','2019-03-17 07:29:48.027765',0,'1552807788.02649888467',10),(115,'2019-03-17 07:32:16.179507','2019-03-17 07:32:16.179586',0,'1552807936.1785378194',10),(116,'2019-03-17 07:32:43.878211','2019-03-17 07:32:43.878288',0,'1552807963.87758354575',10),(117,'2019-03-17 07:43:33.023195','2019-03-17 07:43:33.023268',0,'1552808613.0224319554',10),(118,'2019-03-17 07:44:29.187842','2019-03-17 07:44:29.187914',0,'1552808669.18738999821',10),(119,'2019-03-17 07:44:31.135546','2019-03-17 07:44:31.135611',0,'1552808671.1351089153',10),(120,'2019-03-17 07:44:32.217639','2019-03-17 07:44:32.217705',0,'1552808672.21718245197',10),(121,'2019-03-17 07:44:58.366504','2019-03-17 07:44:58.366578',0,'1552808698.36511977827',10),(122,'2019-03-17 07:45:01.357573','2019-03-17 07:45:01.357648',0,'1552808701.35705525970',10),(123,'2019-03-17 07:45:02.595563','2019-03-17 07:45:02.595634',0,'1552808702.59505847130',10),(124,'2019-03-17 07:45:28.855224','2019-03-17 07:45:28.855298',0,'1552808728.85472515080',10),(125,'2019-03-17 07:46:38.345732','2019-03-17 07:46:38.345804',0,'1552808798.34511356842',10),(126,'2019-03-17 07:46:39.831862','2019-03-17 07:46:39.831936',0,'1552808799.83134177644',10),(127,'2019-03-17 07:46:40.705321','2019-03-17 07:46:40.705387',0,'1552808800.70488437102',10),(128,'2019-03-17 07:47:11.613070','2019-03-17 07:47:11.613139',0,'1552808831.61251359995',10),(129,'2019-03-17 07:47:14.998764','2019-03-17 07:47:14.998837',0,'1552808834.99819955946',10),(130,'2019-03-17 07:47:29.819197','2019-03-17 07:47:29.819272',0,'1552808849.81697153146',10),(131,'2019-03-17 07:48:07.799932','2019-03-17 07:48:07.800005',0,'1552808887.79942636550',10),(132,'2019-03-17 07:48:22.700261','2019-03-17 07:48:22.700336',0,'1552808902.69955645574',10),(133,'2019-03-17 07:48:29.799543','2019-03-17 07:48:29.799609',0,'1552808909.79910921235',10),(134,'2019-03-17 07:48:51.867227','2019-03-17 07:48:51.867304',0,'1552808931.86377177048',10),(135,'2019-03-17 08:00:10.678854','2019-03-17 08:00:10.678937',0,'1552809610.67809279627',10),(136,'2019-03-17 08:00:12.965604','2019-03-17 08:00:12.965676',0,'1552809612.9650671610',10),(137,'2019-03-17 08:00:14.237189','2019-03-17 08:00:14.237262',0,'1552809614.2360435362',10),(138,'2019-03-17 08:00:22.618026','2019-03-17 08:00:22.618099',0,'1552809622.6174247550',10),(139,'2019-03-17 08:00:35.622722','2019-03-17 08:00:35.622810',0,'1552809635.62213541606',10),(140,'2019-03-18 01:59:51.040552','2019-03-18 01:59:51.040615',0,'1552874391.04002336204',10),(141,'2019-03-18 01:59:57.419707','2019-03-18 01:59:57.419779',0,'1552874397.41911346747',10),(142,'2019-03-18 02:00:27.249848','2019-03-18 02:00:27.249918',0,'1552874427.2477584316',10),(143,'2019-03-18 02:05:35.198984','2019-03-18 02:05:35.199053',0,'1552874735.198376503',10),(144,'2019-03-18 02:05:38.070310','2019-03-18 02:05:38.070382',0,'1552874738.0667429559',10),(145,'2019-03-18 02:05:39.307178','2019-03-18 02:05:39.307243',0,'1552874739.30651935933',10),(146,'2019-03-18 02:05:40.209662','2019-03-18 02:05:40.209743',0,'1552874740.20882539279',10),(147,'2019-03-18 02:06:06.184933','2019-03-18 02:06:06.185001',0,'1552874766.18441272363',10),(148,'2019-03-18 02:06:14.954646','2019-03-18 02:06:14.954714',0,'1552874774.9540382260',10),(149,'2019-03-18 02:06:16.309176','2019-03-18 02:06:16.309238',0,'1552874776.30876373106',10),(150,'2019-03-18 02:06:17.774586','2019-03-18 02:06:17.774656',0,'1552874777.77396236955',10),(151,'2019-03-18 02:06:19.878596','2019-03-18 02:06:19.878663',0,'1552874779.87818966222',10),(152,'2019-03-18 02:06:52.591314','2019-03-18 02:06:52.591388',0,'1552874812.59072184066',10),(153,'2019-03-18 02:06:55.472493','2019-03-18 02:06:55.472561',0,'1552874815.47196368052',10),(154,'2019-03-18 02:07:21.474388','2019-03-18 02:07:21.474453',0,'1552874841.47391084879',10),(155,'2019-03-18 02:07:22.562474','2019-03-18 02:07:22.562541',0,'1552874842.5606833979',10),(156,'2019-03-18 02:07:24.103240','2019-03-18 02:07:24.103304',0,'1552874844.1028022214',10),(157,'2019-03-18 02:08:28.610399','2019-03-18 02:08:28.610474',0,'1552874908.60778263872',10),(158,'2019-03-18 02:10:14.865679','2019-03-18 02:10:14.865751',0,'1552875014.8649542618',10),(159,'2019-03-18 06:56:35.688703','2019-03-18 06:56:35.688775',0,'1552892195.68771224820',10),(160,'2019-03-18 07:02:35.149017','2019-03-18 07:02:35.149095',0,'1552892555.1482653718',10);
/*!40000 ALTER TABLE `app_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ordergoods`
--

DROP TABLE IF EXISTS `app_ordergoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `goods_id` varchar(200) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_ordergoods_goods_id_b3c19f94_fk_app_goods_id` (`goods_id`),
  KEY `app_ordergoods_order_id_ef926487_fk_app_order_id` (`order_id`),
  CONSTRAINT `app_ordergoods_goods_id_b3c19f94_fk_app_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `app_goods` (`id`),
  CONSTRAINT `app_ordergoods_order_id_ef926487_fk_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ordergoods`
--

LOCK TABLES `app_ordergoods` WRITE;
/*!40000 ALTER TABLE `app_ordergoods` DISABLE KEYS */;
INSERT INTO `app_ordergoods` VALUES (1,21,'1001',1),(2,30,'1002',1),(3,14,'1005',1),(4,6,'1001',2),(5,2,'1002',2),(6,4,'1002',3),(7,1,'1002',24),(8,3,'1001',25),(9,1,'1001',26),(10,3,'1002',117),(11,12,'1003',124),(12,6,'1003',130),(13,5,'1003',132),(14,5,'1003',134),(15,4,'1003',139),(16,1,'1002',142),(17,6,'1002',147),(18,1,'1001',157);
/*!40000 ALTER TABLE `app_ordergoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add lunbo',7,'add_lunbo'),(20,'Can change lunbo',7,'change_lunbo'),(21,'Can delete lunbo',7,'delete_lunbo'),(22,'Can add lunbo1',8,'add_lunbo1'),(23,'Can change lunbo1',8,'change_lunbo1'),(24,'Can delete lunbo1',8,'delete_lunbo1'),(25,'Can add user',9,'add_user'),(26,'Can change user',9,'change_user'),(27,'Can delete user',9,'delete_user'),(28,'Can add goods',10,'add_goods'),(29,'Can change goods',10,'change_goods'),(30,'Can delete goods',10,'delete_goods'),(31,'Can add cart',11,'add_cart'),(32,'Can change cart',11,'change_cart'),(33,'Can delete cart',11,'delete_cart'),(34,'Can add foodtype',12,'add_foodtype'),(35,'Can change foodtype',12,'change_foodtype'),(36,'Can delete foodtype',12,'delete_foodtype'),(37,'Can add goodtype',12,'add_goodtype'),(38,'Can change goodtype',12,'change_goodtype'),(39,'Can delete goodtype',12,'delete_goodtype'),(40,'Can add order',13,'add_order'),(41,'Can change order',13,'change_order'),(42,'Can delete order',13,'delete_order'),(43,'Can add order goods',14,'add_ordergoods'),(44,'Can change order goods',14,'change_ordergoods'),(45,'Can delete order goods',14,'delete_ordergoods'),(46,'Can add car',11,'add_car'),(47,'Can change car',11,'change_car'),(48,'Can delete car',11,'delete_car');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `isselect` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL,
  `goods_id` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `axf_cart_goods_id_46fdd1df_fk_app_goods_id` (`goods_id`),
  KEY `axf_cart_user_id_439bbb3d_fk_user_id` (`user_id`),
  CONSTRAINT `axf_cart_goods_id_46fdd1df_fk_app_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `app_goods` (`id`),
  CONSTRAINT `axf_cart_user_id_439bbb3d_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (4,8,0,0,'1001',10),(5,2,0,0,'1006',10),(6,13,0,0,'1003',10),(7,4,0,0,'1002',10),(8,1,0,0,'1007 ',10);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(11,'app','car'),(10,'app','goods'),(12,'app','goodtype'),(7,'app','lunbo'),(8,'app','lunbo1'),(13,'app','order'),(14,'app','ordergoods'),(9,'app','user'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-03-14 13:16:28.911644'),(2,'auth','0001_initial','2019-03-14 13:16:39.257965'),(3,'admin','0001_initial','2019-03-14 13:16:41.446166'),(4,'admin','0002_logentry_remove_auto_add','2019-03-14 13:16:41.590099'),(5,'app','0001_initial','2019-03-14 13:16:42.078431'),(6,'contenttypes','0002_remove_content_type_name','2019-03-14 13:16:43.626678'),(7,'auth','0002_alter_permission_name_max_length','2019-03-14 13:16:44.640301'),(8,'auth','0003_alter_user_email_max_length','2019-03-14 13:16:45.621627'),(9,'auth','0004_alter_user_username_opts','2019-03-14 13:16:45.675849'),(10,'auth','0005_alter_user_last_login_null','2019-03-14 13:16:46.409479'),(11,'auth','0006_require_contenttypes_0002','2019-03-14 13:16:46.461165'),(12,'auth','0007_alter_validators_add_error_messages','2019-03-14 13:16:46.523086'),(13,'auth','0008_alter_user_username_max_length','2019-03-14 13:16:47.908276'),(14,'sessions','0001_initial','2019-03-14 13:16:48.555234'),(15,'app','0002_lunbo1','2019-03-15 01:30:11.563675'),(16,'app','0003_user','2019-03-15 02:19:24.970503'),(17,'app','0004_auto_20190315_1109','2019-03-15 03:09:10.394628'),(18,'app','0005_auto_20190315_1109','2019-03-15 03:09:51.832937'),(19,'app','0006_user_name','2019-03-15 03:18:19.530250'),(20,'app','0007_auto_20190315_1537','2019-03-15 07:37:25.431691'),(21,'app','0008_auto_20190315_1539','2019-03-15 07:39:33.366170'),(22,'app','0009_auto_20190315_1543','2019-03-15 07:43:58.329850'),(23,'app','0010_goods','2019-03-15 08:10:13.989946'),(24,'app','0011_cart','2019-03-15 11:57:20.670093'),(25,'app','0012_auto_20190315_1957','2019-03-15 11:57:20.904842'),(26,'app','0013_foodtype','2019-03-16 04:19:51.582127'),(27,'app','0014_auto_20190316_1220','2019-03-16 04:20:58.284517'),(28,'app','0015_auto_20190316_1400','2019-03-16 06:00:53.853969');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7o41xeb5nzp49wy6x95rkzkoxq2cwa7b','NGFjZDNkMGY1NTQ1YTk3YmI5YzQxMDU5OGQ1NmMyMGFlNjc4YzNmNjp7InRva2VuIjoiMzUxNmZiOWFiODBiMmJmYWQyNjBiODU1OWFjODY3ZGMifQ==','2019-04-01 08:05:25.835203'),('ng0ku399184exgpn845k0mk3nk43q39k','Nzg5ODk1NjQwMGQ2ZTUxZTY0NTE4MDk2NDEwMWZjOTU0NDI3MjhlMzp7InRva2VuIjoiNjJjYWM2NDdlODk1NjVkNmEzZmMzNmFlM2UzM2Y0NGQifQ==','2019-03-30 07:42:53.231963'),('s0tfup4dlpd7wk69xo0l519rff140xkp','ODZjZTNlNThkMThjYTdhNTJmOTc0NTQ0YTVhMzQzYjY1Yzk4ZTMyNjp7InRva2VuIjoiN2U2YjM0ZWE2ZGI5NmUxZDg5YjY0ZDk5Y2JiODcwMTMifQ==','2019-03-30 09:26:26.787145');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10,'13715275083','3d24b838770ee90773804e8599e549ff','fff');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-18 17:10:42
