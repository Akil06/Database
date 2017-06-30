-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `AddressType` enum('Mail','Home','Work') NOT NULL,
  `EffectiveDate` date NOT NULL,
  `Address1` varchar(40) DEFAULT NULL,
  `Address2` varchar(40) DEFAULT NULL,
  `Address3` varchar(40) DEFAULT NULL,
  `City` char(15) DEFAULT NULL,
  `State` char(20) DEFAULT NULL,
  `County` char(20) DEFAULT NULL,
  `ZipCode` varchar(15) DEFAULT NULL,
  `Country` char(15) DEFAULT NULL,
  `BusinessObjectID` int(11) NOT NULL,
  PRIMARY KEY (`AddressType`,`EffectiveDate`,`BusinessObjectID`),
  KEY `FKAddressesBusinessObject` (`BusinessObjectID`),
  CONSTRAINT `FKAddressesBusinessObject` FOREIGN KEY (`BusinessObjectID`) REFERENCES `businessobject` (`BusinessObjectID`),
  CONSTRAINT `hasAddress` FOREIGN KEY (`BusinessObjectID`) REFERENCES `businessobject` (`BusinessObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES ('Mail','2005-09-06','22 Sussex Street','','','Boston','MA','','20120','IND',10000001),('Mail','2005-09-07','142 Smith Street','','','Boston','MA','','20121','USA',10000002),('Mail','2005-09-08','2 Huntington Ave','4th Floor','','Boston','MA','','29001','CHN',10000003),('Mail','2005-09-09','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','631502','MEX',10000004),('Mail','2005-09-10','34 KTS Steer','','','Kanchipuram','TN','','631900','UAE',10000005),('Mail','2005-09-11','Hudson Ave','','','Cambridge','NC','','33432','UK',10000006),('Mail','2005-09-12','Park hill Stret','','','Chennai','TN','','631602','FRA',10000007),('Mail','2005-09-13','Mahendrapallavan Steer','No 23','','Mumbai','HK','','343434','SWE',10000008),('Mail','2005-09-14','89 Peterborough ','','','NewYork','NY','','3434','NOR',10000009),('Mail','2005-09-15','34 Cadar ','','','San Fransico','CA','','99990','DEN',10000010),('Mail','2005-09-16','22 Sussex Street','','','Boston','MA','','20120','GER',10000011),('Mail','2005-09-17','142 Smith Street','','','Boston','MA','','20121','BRA',10000012),('Mail','2005-09-18','2 Huntington Ave','4th Floor','','Boston','MA','','29001','AUS',10000013),('Mail','2005-09-19','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','631502','NZL',10000014),('Mail','2005-09-20','34 KTS Steer','','','Kanchipuram','TN','','631900','RUS',10000015),('Mail','2005-09-21','Hudson Ave','','','Cambridge','NC','','33432','IND',10000016),('Mail','2005-09-22','Park hill Stret','','','Chennai','TN','','631602','USA',10000017),('Mail','2005-09-23','Mahendrapallavan Steer','No 23','','Mumbai','HK','','343434','CHN',10000018),('Mail','2005-09-24','89 Peterborough ','','','NewYork','NY','','3434','MEX',10000019),('Mail','2005-09-25','34 Cadar ','','','San Fransico','CA','','99990','UAE',10000020),('Mail','2005-09-26','23 Sussex Street','','','Boston','MA','','296987.5333','UK',10000021),('Mail','2005-09-27','143 Smith Street','','','Boston','MA','','306539.1576','FRA',10000022),('Mail','2005-09-28','3 Huntington Ave','5th Floor','','Boston','MA','','316090.7818','SWE',10000023),('Mail','2005-09-29','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','325642.4061','NOR',10000024),('Mail','2005-09-30','35 KTS Steer','','','Kanchipuram','TN','','335194.0303','DEN',10000025),('Mail','2005-10-01','Hudson Ave','','','Cambridge','NC','','344745.6545','GER',10000026),('Mail','2005-10-02','Park hill Stret','','','Chennai','TN','','354297.2788','BRA',10000027),('Mail','2005-10-03','Mahendrapallavan Steer','No 24','','Mumbai','HK','','363848.903','AUS',10000028),('Mail','2005-10-04','90 Peterborough ','','','NewYork','NY','','373400.5273','NZL',10000029),('Mail','2005-10-05','35 Cadar ','','','San Fransico','CA','','382952.1515','RUS',10000030),('Mail','2005-10-06','24 Sussex Street','','','Boston','MA','','392503.7758','IND',10000031),('Mail','2005-10-07','144 Smith Street','','','Boston','MA','','402055.4','USA',10000032),('Mail','2005-10-08','4 Huntington Ave','6th Floor','','Boston','MA','','411607.0242','CHN',10000033),('Mail','2005-10-09','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','421158.6485','MEX',10000034),('Mail','2005-10-10','36 KTS Steer','','','Kanchipuram','TN','','430710.2727','UAE',10000035),('Mail','2005-10-11','Hudson Ave','','','Cambridge','NC','','440261.897','UK',10000036),('Mail','2005-10-12','Park hill Stret','','','Chennai','TN','','449813.5212','FRA',10000037),('Mail','2005-10-13','Mahendrapallavan Steer','No 25','','Mumbai','HK','','459365.1455','SWE',10000038),('Mail','2005-10-14','91 Peterborough ','','','NewYork','NY','','468916.7697','NOR',10000039),('Mail','2005-10-15','36 Cadar ','','','San Fransico','CA','','478468.3939','DEN',10000040),('Mail','2005-10-16','25 Sussex Street','','','Boston','MA','','488020.0182','GER',10000041),('Mail','2005-10-17','145 Smith Street','','','Boston','MA','','497571.6424','BRA',10000042),('Mail','2005-10-18','5 Huntington Ave','7th Floor','','Boston','MA','','507123.2667','AUS',10000043),('Mail','2005-10-19','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','516674.8909','NZL',10000044),('Mail','2005-10-20','37 KTS Steer','','','Kanchipuram','TN','','526226.5152','RUS',10000045),('Mail','2005-10-21','Hudson Ave','','','Cambridge','NC','','535778.1394','IND',10000046),('Mail','2005-10-22','Park hill Stret','','','Chennai','TN','','545329.7636','USA',10000047),('Mail','2005-10-23','Mahendrapallavan Steer','No 26','','Mumbai','HK','','554881.3879','CHN',10000048),('Mail','2005-10-24','92 Peterborough ','','','NewYork','NY','','564433.0121','MEX',10000049),('Mail','2005-10-25','37 Cadar ','','','San Fransico','CA','','573984.6364','UAE',10000050),('Mail','2005-10-26','26 Sussex Street','','','Boston','MA','','583536.2606','UK',10000051),('Mail','2005-10-27','146 Smith Street','','','Boston','MA','','593087.8848','FRA',10000052),('Mail','2005-10-28','6 Huntington Ave','8th Floor','','Boston','MA','','602639.5091','SWE',10000053),('Mail','2005-10-29','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','612191.1333','NOR',10000054),('Mail','2005-10-30','38 KTS Steer','','','Kanchipuram','TN','','621742.7576','DEN',10000055),('Mail','2005-10-31','Hudson Ave','','','Cambridge','NC','','631294.3818','GER',10000056),('Mail','2005-11-01','Park hill Stret','','','Chennai','TN','','640846.0061','BRA',10000057),('Mail','2005-11-02','Mahendrapallavan Steer','No 27','','Mumbai','HK','','650397.6303','AUS',10000058),('Mail','2005-11-03','93 Peterborough ','','','NewYork','NY','','659949.2545','NZL',10000059),('Mail','2005-11-04','38 Cadar ','','','San Fransico','CA','','669500.8788','RUS',10000060),('Mail','2005-11-05','27 Sussex Street','','','Boston','MA','','679052.503','IND',10000061),('Mail','2005-11-06','147 Smith Street','','','Boston','MA','','688604.1273','USA',10000062),('Mail','2005-11-07','7 Huntington Ave','9th Floor','','Boston','MA','','698155.7515','CHN',10000063),('Mail','2005-11-08','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','707707.3758','MEX',10000064),('Mail','2005-11-09','39 KTS Steer','','','Kanchipuram','TN','','717259','UAE',10000065),('Mail','2005-11-10','Hudson Ave','','','Cambridge','NC','','726810.6242','UK',10000066),('Mail','2005-11-11','Park hill Stret','','','Chennai','TN','','736362.2485','FRA',10000067),('Mail','2005-11-12','Mahendrapallavan Steer','No 28','','Mumbai','HK','','745913.8727','SWE',10000068),('Mail','2005-11-13','94 Peterborough ','','','NewYork','NY','','755465.497','NOR',10000069),('Mail','2005-11-14','39 Cadar ','','','San Fransico','CA','','765017.1212','DEN',10000070),('Mail','2005-11-15','28 Sussex Street','','','Boston','MA','','774568.7455','GER',10000071),('Mail','2005-11-16','148 Smith Street','','','Boston','MA','','784120.3697','BRA',10000072),('Mail','2005-11-17','8 Huntington Ave','10th Floor','','Boston','MA','','793671.9939','AUS',10000073),('Mail','2005-11-18','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','803223.6182','NZL',10000074),('Mail','2005-11-19','40 KTS Steer','','','Kanchipuram','TN','','812775.2424','RUS',10000075),('Mail','2005-11-20','Hudson Ave','','','Cambridge','NC','','822326.8667','IND',10000076),('Mail','2005-11-21','Park hill Stret','','','Chennai','TN','','831878.4909','USA',10000077),('Mail','2005-11-22','Mahendrapallavan Steer','No 29','','Mumbai','HK','','841430.1152','CHN',10000078),('Mail','2005-11-23','95 Peterborough ','','','NewYork','NY','','850981.7394','MEX',10000079),('Mail','2005-11-24','40 Cadar ','','','San Fransico','CA','','860533.3636','UAE',10000080),('Mail','2005-11-25','29 Sussex Street','','','Boston','MA','','870084.9879','UK',10000081),('Mail','2005-11-26','149 Smith Street','','','Boston','MA','','879636.6121','FRA',10000082),('Mail','2005-11-27','9 Huntington Ave','11th Floor','','Boston','MA','','889188.2364','SWE',10000083),('Mail','2005-11-28','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','898739.8606','NOR',10000084),('Mail','2005-11-29','41 KTS Steer','','','Kanchipuram','TN','','908291.4848','DEN',10000085),('Mail','2005-11-30','Hudson Ave','','','Cambridge','NC','','917843.1091','GER',10000086),('Mail','2005-12-01','Park hill Stret','','','Chennai','TN','','927394.7333','BRA',10000087),('Mail','2005-12-02','Mahendrapallavan Steer','No 30','','Mumbai','HK','','936946.3576','AUS',10000088),('Mail','2005-12-03','96 Peterborough ','','','NewYork','NY','','946497.9818','NZL',10000089),('Mail','2005-12-04','41 Cadar ','','','San Fransico','CA','','956049.6061','RUS',10000090),('Mail','2005-12-05','30 Sussex Street','','','Boston','MA','','965601.2303','IND',10000091),('Mail','2005-12-06','150 Smith Street','','','Boston','MA','','975152.8545','USA',10000092),('Mail','2005-12-07','10 Huntington Ave','12th Floor','','Boston','MA','','984704.4788','CHN',10000093),('Mail','2005-12-08','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','994256.103','MEX',10000094),('Mail','2005-12-09','42 KTS Steer','','','Kanchipuram','TN','','1003807.727','UAE',10000095),('Mail','2005-12-10','Hudson Ave','','','Cambridge','NC','','1013359.352','UK',10000096),('Mail','2005-12-11','Park hill Stret','','','Chennai','TN','','1022910.976','FRA',10000097),('Mail','2005-12-12','Mahendrapallavan Steer','No 31','','Mumbai','HK','','1032462.6','SWE',10000098),('Mail','2005-12-13','97 Peterborough ','','','NewYork','NY','','1042014.224','NOR',10000099),('Mail','2005-12-14','42 Cadar ','','','San Fransico','CA','','1051565.848','DEN',10000100),('Mail','2005-12-15','31 Sussex Street','','','Boston','MA','','1061117.473','GER',10000101),('Mail','2005-12-16','151 Smith Street','','','Boston','MA','','1070669.097','BRA',10000102),('Mail','2005-12-17','11 Huntington Ave','13th Floor','','Boston','MA','','1080220.721','AUS',10000103),('Mail','2005-12-18','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1089772.345','NZL',10000104),('Mail','2005-12-19','43 KTS Steer','','','Kanchipuram','TN','','1099323.97','RUS',10000105),('Mail','2005-12-20','Hudson Ave','','','Cambridge','NC','','1108875.594','IND',10000106),('Mail','2005-12-21','Park hill Stret','','','Chennai','TN','','1118427.218','USA',10000107),('Mail','2005-12-22','Mahendrapallavan Steer','No 32','','Mumbai','HK','','1127978.842','CHN',10000108),('Mail','2005-12-23','98 Peterborough ','','','NewYork','NY','','1137530.467','MEX',10000109),('Mail','2005-12-24','43 Cadar ','','','San Fransico','CA','','1147082.091','UAE',10000110),('Mail','2005-12-25','32 Sussex Street','','','Boston','MA','','1156633.715','UK',10000111),('Mail','2005-12-26','152 Smith Street','','','Boston','MA','','1166185.339','FRA',10000112),('Mail','2005-12-27','12 Huntington Ave','14th Floor','','Boston','MA','','1175736.964','SWE',10000113),('Mail','2005-12-28','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1185288.588','NOR',10000114),('Mail','2005-12-29','44 KTS Steer','','','Kanchipuram','TN','','1194840.212','DEN',10000115),('Mail','2005-12-30','Hudson Ave','','','Cambridge','NC','','1204391.836','GER',10000116),('Mail','2005-12-31','Park hill Stret','','','Chennai','TN','','1213943.461','BRA',10000117),('Mail','2006-01-01','Mahendrapallavan Steer','No 33','','Mumbai','HK','','1223495.085','AUS',10000118),('Mail','2006-01-02','99 Peterborough ','','','NewYork','NY','','1233046.709','NZL',10000119),('Mail','2006-01-03','44 Cadar ','','','San Fransico','CA','','1242598.333','RUS',10000120),('Mail','2006-01-04','33 Sussex Street','','','Boston','MA','','1252149.958','IND',10000121),('Mail','2006-01-05','153 Smith Street','','','Boston','MA','','1261701.582','USA',10000122),('Mail','2006-01-06','13 Huntington Ave','15th Floor','','Boston','MA','','1271253.206','CHN',10000123),('Mail','2006-01-07','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1280804.83','MEX',10000124),('Mail','2006-01-08','45 KTS Steer','','','Kanchipuram','TN','','1290356.455','UAE',10000125),('Mail','2006-01-09','Hudson Ave','','','Cambridge','NC','','1299908.079','UK',10000126),('Mail','2006-01-10','Park hill Stret','','','Chennai','TN','','1309459.703','FRA',10000127),('Mail','2006-01-11','Mahendrapallavan Steer','No 34','','Mumbai','HK','','1319011.327','SWE',10000128),('Mail','2006-01-12','100 Peterborough ','','','NewYork','NY','','1328562.952','NOR',10000129),('Mail','2006-01-13','45 Cadar ','','','San Fransico','CA','','1338114.576','DEN',10000130),('Mail','2006-01-14','34 Sussex Street','','','Boston','MA','','1347666.2','GER',10000131),('Mail','2006-01-15','154 Smith Street','','','Boston','MA','','1357217.824','BRA',10000132),('Mail','2006-01-16','14 Huntington Ave','16th Floor','','Boston','MA','','1366769.448','AUS',10000133),('Mail','2006-01-17','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1376321.073','NZL',10000134),('Mail','2006-01-18','46 KTS Steer','','','Kanchipuram','TN','','1385872.697','RUS',10000135),('Mail','2006-01-19','Hudson Ave','','','Cambridge','NC','','1395424.321','IND',10000136),('Mail','2006-01-20','Park hill Stret','','','Chennai','TN','','1404975.945','USA',10000137),('Mail','2006-01-21','Mahendrapallavan Steer','No 35','','Mumbai','HK','','1414527.57','CHN',10000138),('Mail','2006-01-22','101 Peterborough ','','','NewYork','NY','','1424079.194','MEX',10000139),('Mail','2006-01-23','46 Cadar ','','','San Fransico','CA','','1433630.818','UAE',10000140),('Mail','2006-01-24','35 Sussex Street','','','Boston','MA','','1443182.442','UK',10000141),('Mail','2006-01-25','155 Smith Street','','','Boston','MA','','1452734.067','FRA',10000142),('Mail','2006-01-26','15 Huntington Ave','17th Floor','','Boston','MA','','1462285.691','SWE',10000143),('Mail','2006-01-27','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1471837.315','NOR',10000144),('Mail','2006-01-28','47 KTS Steer','','','Kanchipuram','TN','','1481388.939','DEN',10000145),('Mail','2006-01-29','Hudson Ave','','','Cambridge','NC','','1490940.564','GER',10000146),('Mail','2006-01-30','Park hill Stret','','','Chennai','TN','','1500492.188','BRA',10000147),('Mail','2006-01-31','Mahendrapallavan Steer','No 36','','Mumbai','HK','','1510043.812','AUS',10000148),('Mail','2006-02-01','102 Peterborough ','','','NewYork','NY','','1519595.436','NZL',10000149),('Mail','2006-02-02','47 Cadar ','','','San Fransico','CA','','1529147.061','RUS',10000150),('Mail','2006-02-03','36 Sussex Street','','','Boston','MA','','1538698.685','IND',10000151),('Mail','2006-02-04','156 Smith Street','','','Boston','MA','','1548250.309','USA',10000152),('Mail','2006-02-05','16 Huntington Ave','18th Floor','','Boston','MA','','1557801.933','CHN',10000153),('Mail','2006-02-06','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1567353.558','MEX',10000154),('Mail','2006-02-07','48 KTS Steer','','','Kanchipuram','TN','','1576905.182','UAE',10000155),('Mail','2006-02-08','Hudson Ave','','','Cambridge','NC','','1586456.806','UK',10000156),('Mail','2006-02-09','Park hill Stret','','','Chennai','TN','','1596008.43','FRA',10000157),('Mail','2006-02-10','Mahendrapallavan Steer','No 37','','Mumbai','HK','','1605560.055','SWE',10000158),('Mail','2006-02-11','103 Peterborough ','','','NewYork','NY','','1615111.679','NOR',10000159),('Mail','2006-02-12','48 Cadar ','','','San Fransico','CA','','1624663.303','DEN',10000160),('Mail','2006-02-13','37 Sussex Street','','','Boston','MA','','1634214.927','GER',10000161),('Mail','2006-02-14','157 Smith Street','','','Boston','MA','','1643766.552','BRA',10000162),('Mail','2006-02-15','17 Huntington Ave','19th Floor','','Boston','MA','','1653318.176','AUS',10000163),('Mail','2006-02-16','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1662869.8','NZL',10000164),('Mail','2006-02-17','49 KTS Steer','','','Kanchipuram','TN','','1672421.424','RUS',10000165),('Mail','2006-02-18','Hudson Ave','','','Cambridge','NC','','1681973.048','IND',10000166),('Mail','2006-02-19','Park hill Stret','','','Chennai','TN','','1691524.673','USA',10000167),('Mail','2006-02-20','Mahendrapallavan Steer','No 38','','Mumbai','HK','','1701076.297','CHN',10000168),('Mail','2006-02-21','104 Peterborough ','','','NewYork','NY','','1710627.921','MEX',10000169),('Mail','2006-02-22','49 Cadar ','','','San Fransico','CA','','1720179.545','UAE',10000170),('Mail','2006-02-23','38 Sussex Street','','','Boston','MA','','1729731.17','UK',10000171),('Mail','2006-02-24','158 Smith Street','','','Boston','MA','','1739282.794','FRA',10000172),('Mail','2006-02-25','18 Huntington Ave','20th Floor','','Boston','MA','','1748834.418','SWE',10000173),('Mail','2006-02-26','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1758386.042','NOR',10000174),('Mail','2006-02-27','50 KTS Steer','','','Kanchipuram','TN','','1767937.667','DEN',10000175),('Mail','2006-02-28','Hudson Ave','','','Cambridge','NC','','1777489.291','GER',10000176),('Mail','2006-03-01','Park hill Stret','','','Chennai','TN','','1787040.915','BRA',10000177),('Mail','2006-03-02','Mahendrapallavan Steer','No 39','','Mumbai','HK','','1796592.539','AUS',10000178),('Mail','2006-03-03','105 Peterborough ','','','NewYork','NY','','1806144.164','NZL',10000179),('Mail','2006-03-04','50 Cadar ','','','San Fransico','CA','','1815695.788','RUS',10000180),('Mail','2006-03-05','39 Sussex Street','','','Boston','MA','','1825247.412','IND',10000181),('Mail','2006-03-06','159 Smith Street','','','Boston','MA','','1834799.036','USA',10000182),('Mail','2006-03-07','19 Huntington Ave','21st Floor','','Boston','MA','','1844350.661','CHN',10000183),('Mail','2006-03-08','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1853902.285','MEX',10000184),('Mail','2006-03-09','51 KTS Steer','','','Kanchipuram','TN','','1863453.909','UAE',10000185),('Mail','2006-03-10','Hudson Ave','','','Cambridge','NC','','1873005.533','UK',10000186),('Mail','2006-03-11','Park hill Stret','','','Chennai','TN','','1882557.158','FRA',10000187),('Mail','2006-03-12','Mahendrapallavan Steer','No 40','','Mumbai','HK','','1892108.782','SWE',10000188),('Mail','2006-03-13','106 Peterborough ','','','NewYork','NY','','1901660.406','NOR',10000189),('Mail','2006-03-14','51 Cadar ','','','San Fransico','CA','','1911212.03','DEN',10000190),('Mail','2006-03-15','40 Sussex Street','','','Boston','MA','','1920763.655','GER',10000191),('Mail','2006-03-16','160 Smith Street','','','Boston','MA','','1930315.279','BRA',10000192),('Mail','2006-03-17','20 Huntington Ave','22nd Floor','','Boston','MA','','1939866.903','AUS',10000193),('Mail','2006-03-18','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1949418.527','NZL',10000194),('Mail','2006-03-19','52 KTS Steer','','','Kanchipuram','TN','','1958970.152','RUS',10000195),('Mail','2006-03-20','Hudson Ave','','','Cambridge','NC','','1968521.776','IND',10000196),('Mail','2006-03-21','Park hill Stret','','','Chennai','TN','','1978073.4','USA',10000197),('Mail','2006-03-22','Mahendrapallavan Steer','No 41','','Mumbai','HK','','1987625.024','CHN',10000198),('Mail','2006-03-23','107 Peterborough ','','','NewYork','NY','','1997176.648','MEX',10000199),('Mail','2006-03-24','52 Cadar ','','','San Fransico','CA','','2006728.273','UAE',10000200),('Work','1995-12-12','25 Sussex Street','','','Boston','MA','','1404975.945','UK',10000001),('Work','1995-12-13','145 Smith Street','','','Boston','MA','','1414527.57','FRA',10000002),('Work','1995-12-14','5 Huntington Ave','7th Floor','','Boston','MA','','1424079.194','SWE',10000003),('Work','1995-12-15','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1433630.818','NOR',10000004),('Work','1995-12-16','37 KTS Steer','','','Kanchipuram','TN','','1443182.442','DEN',10000005),('Work','1995-12-17','Hudson Ave','','','Cambridge','NC','','1452734.067','GER',10000006),('Work','1995-12-18','Park hill Stret','','','Chennai','TN','','1462285.691','BRA',10000007),('Work','1995-12-19','Mahendrapallavan Steer','No 26','','Mumbai','HK','','1471837.315','AUS',10000008),('Work','1995-12-20','92 Peterborough ','','','NewYork','NY','','1481388.939','NZL',10000009),('Work','1995-12-21','37 Cadar ','','','San Fransico','CA','','1490940.564','RUS',10000010),('Work','1995-12-22','26 Sussex Street','','','Boston','MA','','1500492.188','IND',10000011),('Work','1995-12-23','146 Smith Street','','','Boston','MA','','1510043.812','USA',10000012),('Work','1995-12-24','6 Huntington Ave','8th Floor','','Boston','MA','','1519595.436','CHN',10000013),('Work','1995-12-25','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1529147.061','MEX',10000014),('Work','1995-12-26','38 KTS Steer','','','Kanchipuram','TN','','1538698.685','UAE',10000015),('Work','1995-12-27','Hudson Ave','','','Cambridge','NC','','1548250.309','UK',10000016),('Work','1995-12-28','Park hill Stret','','','Chennai','TN','','1557801.933','FRA',10000017),('Work','1995-12-29','Mahendrapallavan Steer','No 27','','Mumbai','HK','','1567353.558','SWE',10000018),('Work','1995-12-30','93 Peterborough ','','','NewYork','NY','','1576905.182','NOR',10000019),('Work','1995-12-31','38 Cadar ','','','San Fransico','CA','','1586456.806','DEN',10000020),('Work','1996-01-01','27 Sussex Street','','','Boston','MA','','1596008.43','GER',10000021),('Work','1996-01-02','147 Smith Street','','','Boston','MA','','1605560.055','BRA',10000022),('Work','1996-01-03','7 Huntington Ave','9th Floor','','Boston','MA','','1615111.679','AUS',10000023),('Work','1996-01-04','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1624663.303','NZL',10000024),('Work','1996-01-05','39 KTS Steer','','','Kanchipuram','TN','','1634214.927','RUS',10000025),('Work','1996-01-06','Hudson Ave','','','Cambridge','NC','','1643766.552','IND',10000026),('Work','1996-01-07','Park hill Stret','','','Chennai','TN','','1653318.176','USA',10000027),('Work','1996-01-08','Mahendrapallavan Steer','No 28','','Mumbai','HK','','1662869.8','CHN',10000028),('Work','1996-01-09','94 Peterborough ','','','NewYork','NY','','1672421.424','MEX',10000029),('Work','1996-01-10','39 Cadar ','','','San Fransico','CA','','1681973.048','UAE',10000030),('Work','1996-01-11','22 Sussex Street','','','Boston','MA','','1691524.673','UK',10000031),('Work','1996-01-12','142 Smith Street','','','Boston','MA','','1701076.297','FRA',10000032),('Work','1996-01-13','2 Huntington Ave','4th Floor','','Boston','MA','','1710627.921','SWE',10000033),('Work','1996-01-14','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1720179.545','NOR',10000034),('Work','1996-01-15','34 KTS Steer','','','Kanchipuram','TN','','1729731.17','DEN',10000035),('Work','1996-01-16','Hudson Ave','','','Cambridge','NC','','1739282.794','GER',10000036),('Work','1996-01-17','Park hill Stret','','','Chennai','TN','','1748834.418','BRA',10000037),('Work','1996-01-18','Mahendrapallavan Steer','No 23','','Mumbai','HK','','1758386.042','AUS',10000038),('Work','1996-01-19','89 Peterborough ','','','NewYork','NY','','1767937.667','NZL',10000039),('Work','1996-01-20','34 Cadar ','','','San Fransico','CA','','1777489.291','RUS',10000040),('Work','1996-01-21','22 Sussex Street','','','Boston','MA','','1787040.915','IND',10000041),('Work','1996-01-22','142 Smith Street','','','Boston','MA','','1796592.539','USA',10000042),('Work','1996-01-23','2 Huntington Ave','4th Floor','','Boston','MA','','1806144.164','CHN',10000043),('Work','1996-01-24','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1815695.788','MEX',10000044),('Work','1996-01-25','34 KTS Steer','','','Kanchipuram','TN','','1825247.412','UAE',10000045),('Work','1996-01-26','Hudson Ave','','','Cambridge','NC','','1834799.036','UK',10000046),('Work','1996-01-27','Park hill Stret','','','Chennai','TN','','1844350.661','FRA',10000047),('Work','1996-01-28','Mahendrapallavan Steer','No 23','','Mumbai','HK','','1853902.285','SWE',10000048),('Work','1996-01-29','89 Peterborough ','','','NewYork','NY','','1863453.909','NOR',10000049),('Work','1996-01-30','34 Cadar ','','','San Fransico','CA','','1873005.533','DEN',10000050),('Work','1996-01-31','23 Sussex Street','','','Boston','MA','','1882557.158','GER',10000051),('Work','1996-02-01','143 Smith Street','','','Boston','MA','','1892108.782','BRA',10000052),('Work','1996-02-02','3 Huntington Ave','5th Floor','','Boston','MA','','1901660.406','AUS',10000053),('Work','1996-02-03','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1911212.03','NZL',10000054),('Work','1996-02-04','35 KTS Steer','','','Kanchipuram','TN','','1920763.655','RUS',10000055),('Work','1996-02-05','Hudson Ave','','','Cambridge','NC','','1930315.279','IND',10000056),('Work','1996-02-06','Park hill Stret','','','Chennai','TN','','1939866.903','USA',10000057),('Work','1996-02-07','Mahendrapallavan Steer','No 24','','Mumbai','HK','','1949418.527','CHN',10000058),('Work','1996-02-08','90 Peterborough ','','','NewYork','NY','','1958970.152','MEX',10000059),('Work','1996-02-09','35 Cadar ','','','San Fransico','CA','','1968521.776','UAE',10000060),('Work','1996-02-10','24 Sussex Street','','','Boston','MA','','1978073.4','UK',10000061),('Work','1996-02-11','144 Smith Street','','','Boston','MA','','1987625.024','FRA',10000062),('Work','1996-02-12','4 Huntington Ave','6th Floor','','Boston','MA','','1997176.648','SWE',10000063),('Work','1996-02-13','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','2006728.273','NOR',10000064),('Work','1996-02-14','36 KTS Steer','','','Kanchipuram','TN','','1404975.945','DEN',10000065),('Work','1996-02-15','Hudson Ave','','','Cambridge','NC','','1414527.57','GER',10000066),('Work','1996-02-16','Park hill Stret','','','Chennai','TN','','1424079.194','BRA',10000067),('Work','1996-02-17','Mahendrapallavan Steer','No 25','','Mumbai','HK','','1433630.818','AUS',10000068),('Work','1996-02-18','91 Peterborough ','','','NewYork','NY','','1443182.442','NZL',10000069),('Work','1996-02-19','36 Cadar ','','','San Fransico','CA','','1452734.067','RUS',10000070),('Work','1996-02-20','23 Sussex Street','','','Boston','MA','','1462285.691','IND',10000071),('Work','1996-02-21','143 Smith Street','','','Boston','MA','','1471837.315','USA',10000072),('Work','1996-02-22','3 Huntington Ave','5th Floor','','Boston','MA','','1481388.939','CHN',10000073),('Work','1996-02-23','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1490940.564','MEX',10000074),('Work','1996-02-24','35 KTS Steer','','','Kanchipuram','TN','','1500492.188','UAE',10000075),('Work','1996-02-25','Hudson Ave','','','Cambridge','NC','','1510043.812','UK',10000076),('Work','1996-02-26','Park hill Stret','','','Chennai','TN','','1519595.436','FRA',10000077),('Work','1996-02-27','Mahendrapallavan Steer','No 24','','Mumbai','HK','','1529147.061','SWE',10000078),('Work','1996-02-28','90 Peterborough ','','','NewYork','NY','','1538698.685','NOR',10000079),('Work','1996-02-29','35 Cadar ','','','San Fransico','CA','','1548250.309','DEN',10000080),('Work','1996-03-01','23 Sussex Street','','','Boston','MA','','1557801.933','GER',10000081),('Work','1996-03-02','143 Smith Street','','','Boston','MA','','1567353.558','BRA',10000082),('Work','1996-03-03','3 Huntington Ave','5th Floor','','Boston','MA','','1576905.182','AUS',10000083),('Work','1996-03-04','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1586456.806','NZL',10000084),('Work','1996-03-05','35 KTS Steer','','','Kanchipuram','TN','','1596008.43','RUS',10000085),('Work','1996-03-06','Hudson Ave','','','Cambridge','NC','','1605560.055','IND',10000086),('Work','1996-03-07','Park hill Stret','','','Chennai','TN','','1615111.679','USA',10000087),('Work','1996-03-08','Mahendrapallavan Steer','No 24','','Mumbai','HK','','1624663.303','CHN',10000088),('Work','1996-03-09','90 Peterborough ','','','NewYork','NY','','1634214.927','MEX',10000089),('Work','1996-03-10','35 Cadar ','','','San Fransico','CA','','1643766.552','UAE',10000090),('Work','1996-03-11','24 Sussex Street','','','Boston','MA','','1653318.176','UK',10000091),('Work','1996-03-12','144 Smith Street','','','Boston','MA','','1662869.8','FRA',10000092),('Work','1996-03-13','4 Huntington Ave','6th Floor','','Boston','MA','','1672421.424','SWE',10000093),('Work','1996-03-14','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1681973.048','NOR',10000094),('Work','1996-03-15','36 KTS Steer','','','Kanchipuram','TN','','1691524.673','DEN',10000095),('Work','1996-03-16','Hudson Ave','','','Cambridge','NC','','1701076.297','GER',10000096),('Work','1996-03-17','Park hill Stret','','','Chennai','TN','','1710627.921','BRA',10000097),('Work','1996-03-18','Mahendrapallavan Steer','No 25','','Mumbai','HK','','1720179.545','AUS',10000098),('Work','1996-03-19','91 Peterborough ','','','NewYork','NY','','1729731.17','NZL',10000099),('Work','1996-03-20','36 Cadar ','','','San Fransico','CA','','1739282.794','RUS',10000100),('Work','1996-03-21','25 Sussex Street','','','Boston','MA','','1748834.418','IND',10000101),('Work','1996-03-22','145 Smith Street','','','Boston','MA','','1758386.042','USA',10000102),('Work','1996-03-23','5 Huntington Ave','7th Floor','','Boston','MA','','1767937.667','CHN',10000103),('Work','1996-03-24','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1777489.291','MEX',10000104),('Work','1996-03-25','37 KTS Steer','','','Kanchipuram','TN','','1787040.915','UAE',10000105),('Work','1996-03-26','Hudson Ave','','','Cambridge','NC','','1796592.539','UK',10000106),('Work','1996-03-27','Park hill Stret','','','Chennai','TN','','1806144.164','FRA',10000107),('Work','1996-03-28','Mahendrapallavan Steer','No 26','','Mumbai','HK','','1815695.788','SWE',10000108),('Work','1996-03-29','92 Peterborough ','','','NewYork','NY','','1825247.412','NOR',10000109),('Work','1996-03-30','37 Cadar ','','','San Fransico','CA','','1834799.036','DEN',10000110),('Work','1996-03-31','24 Sussex Street','','','Boston','MA','','1844350.661','GER',10000111),('Work','1996-04-01','144 Smith Street','','','Boston','MA','','1853902.285','BRA',10000112),('Work','1996-04-02','91 Peterborough ','','','NewYork','NY','','1863453.909','AUS',10000113),('Work','1996-04-03','36 Cadar ','','','San Fransico','CA','','1873005.533','NZL',10000114),('Work','1996-04-04','23 Sussex Street','','','Boston','MA','','1882557.158','RUS',10000115),('Work','1996-04-05','143 Smith Street','','','Boston','MA','','1892108.782','IND',10000116),('Work','1996-04-06','3 Huntington Ave','5th Floor','','Boston','MA','','1901660.406','USA',10000117),('Work','1996-04-07','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1911212.03','CHN',10000118),('Work','1996-04-08','35 KTS Steer','','','Kanchipuram','TN','','1920763.655','MEX',10000119),('Work','1996-04-09','93 Peterborough ','','','NewYork','NY','','1930315.279','UAE',10000120),('Work','1996-04-10','38 Cadar ','','','San Fransico','CA','','1939866.903','UK',10000121),('Work','1996-04-11','25 Sussex Street','','','Boston','MA','','1949418.527','FRA',10000122),('Work','1996-04-12','145 Smith Street','','','Boston','MA','','1958970.152','SWE',10000123),('Work','1996-04-13','92 Peterborough ','','','NewYork','NY','','1968521.776','NOR',10000124),('Work','1996-04-14','37 Cadar ','','','San Fransico','CA','','1978073.4','DEN',10000125),('Work','1996-04-15','24 Sussex Street','','','Boston','MA','','1987625.024','GER',10000126),('Work','1996-04-16','144 Smith Street','','','Boston','MA','','1997176.648','BRA',10000127),('Work','1996-04-17','4 Huntington Ave','6th Floor','','Boston','MA','','2006728.273','AUS',10000128),('Work','1996-04-18','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1404975.945','NZL',10000129),('Work','1996-04-19','36 KTS Steer','','','Kanchipuram','TN','','1414527.57','RUS',10000130),('Work','1996-04-20','94 Peterborough ','','','NewYork','NY','','1424079.194','IND',10000131),('Work','1996-04-21','39 Cadar ','','','San Fransico','CA','','1433630.818','USA',10000132),('Work','1996-04-22','26 Sussex Street','','','Boston','MA','','1443182.442','CHN',10000133),('Work','1996-04-23','146 Smith Street','','','Boston','MA','','1452734.067','MEX',10000134),('Work','1996-04-24','93 Peterborough ','','','NewYork','NY','','1462285.691','UAE',10000135),('Work','1996-04-25','38 Cadar ','','','San Fransico','CA','','1471837.315','UK',10000136),('Work','1996-04-26','25 Sussex Street','','','Boston','MA','','1481388.939','FRA',10000137),('Work','1996-04-27','145 Smith Street','','','Boston','MA','','1490940.564','SWE',10000138),('Work','1996-04-28','5 Huntington Ave','7th Floor','','Boston','MA','','1500492.188','NOR',10000139),('Work','1996-04-29','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1510043.812','DEN',10000140),('Work','1996-04-30','37 KTS Steer','','','Kanchipuram','TN','','1519595.436','GER',10000141),('Work','1996-05-01','95 Peterborough ','','','NewYork','NY','','1529147.061','BRA',10000142),('Work','1996-05-02','40 Cadar ','','','San Fransico','CA','','1538698.685','AUS',10000143),('Work','1996-05-03','27 Sussex Street','','','Boston','MA','','1548250.309','NZL',10000144),('Work','1996-05-04','147 Smith Street','','','Boston','MA','','1557801.933','RUS',10000145),('Work','1996-05-05','94 Peterborough ','','','NewYork','NY','','1567353.558','IND',10000146),('Work','1996-05-06','39 Cadar ','','','San Fransico','CA','','1576905.182','USA',10000147),('Work','1996-05-07','26 Sussex Street','','','Boston','MA','','1586456.806','CHN',10000148),('Work','1996-05-08','146 Smith Street','','','Boston','MA','','1596008.43','MEX',10000149),('Work','1996-05-09','6 Huntington Ave','8th Floor','','Boston','MA','','1605560.055','UAE',10000150),('Work','1996-05-10','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1615111.679','UK',10000151),('Work','1996-05-11','38 KTS Steer','','','Kanchipuram','TN','','1624663.303','FRA',10000152),('Work','1996-05-12','96 Peterborough ','','','NewYork','NY','','1634214.927','SWE',10000153),('Work','1996-05-13','41 Cadar ','','','San Fransico','CA','','1643766.552','NOR',10000154),('Work','1996-05-14','28 Sussex Street','','','Boston','MA','','1653318.176','DEN',10000155),('Work','1996-05-15','148 Smith Street','','','Boston','MA','','1662869.8','GER',10000156),('Work','1996-05-16','95 Peterborough ','','','NewYork','NY','','1672421.424','BRA',10000157),('Work','1996-05-17','40 Cadar ','','','San Fransico','CA','','1681973.048','AUS',10000158),('Work','1996-05-18','27 Sussex Street','','','Boston','MA','','1691524.673','NZL',10000159),('Work','1996-05-19','147 Smith Street','','','Boston','MA','','1701076.297','RUS',10000160),('Work','1996-05-20','7 Huntington Ave','9th Floor','','Boston','MA','','1710627.921','IND',10000161),('Work','1996-05-21','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1720179.545','USA',10000162),('Work','1996-05-22','39 KTS Steer','','','Kanchipuram','TN','','1729731.17','CHN',10000163),('Work','1996-05-23','97 Peterborough ','','','NewYork','NY','','1739282.794','MEX',10000164),('Work','1996-05-24','42 Cadar ','','','San Fransico','CA','','1748834.418','UAE',10000165),('Work','1996-05-25','29 Sussex Street','','','Boston','MA','','1758386.042','UK',10000166),('Work','1996-05-26','149 Smith Street','','','Boston','MA','','1767937.667','FRA',10000167),('Work','1996-05-27','96 Peterborough ','','','NewYork','NY','','1777489.291','SWE',10000168),('Work','1996-05-28','41 Cadar ','','','San Fransico','CA','','1787040.915','NOR',10000169),('Work','1996-05-29','28 Sussex Street','','','Boston','MA','','1796592.539','DEN',10000170),('Work','1996-05-30','148 Smith Street','','','Boston','MA','','1806144.164','GER',10000171),('Work','1996-05-31','8 Huntington Ave','10th Floor','','Boston','MA','','1815695.788','BRA',10000172),('Work','1996-06-01','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1825247.412','AUS',10000173),('Work','1996-06-02','40 KTS Steer','','','Kanchipuram','TN','','1834799.036','NZL',10000174),('Work','1996-06-03','98 Peterborough ','','','NewYork','NY','','1844350.661','RUS',10000175),('Work','1996-06-04','43 Cadar ','','','San Fransico','CA','','1853902.285','IND',10000176),('Work','1996-06-05','30 Sussex Street','','','Boston','MA','','1863453.909','USA',10000177),('Work','1996-06-06','150 Smith Street','','','Boston','MA','','1873005.533','CHN',10000178),('Work','1996-06-07','97 Peterborough ','','','NewYork','NY','','1882557.158','MEX',10000179),('Work','1996-06-08','42 Cadar ','','','San Fransico','CA','','1892108.782','UAE',10000180),('Work','1996-06-09','29 Sussex Street','','','Boston','MA','','1901660.406','UK',10000181),('Work','1996-06-10','149 Smith Street','','','Boston','MA','','1911212.03','FRA',10000182),('Work','1996-06-11','9 Huntington Ave','11th Floor','','Boston','MA','','1920763.655','SWE',10000183),('Work','1996-06-12','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1930315.279','NOR',10000184),('Work','1996-06-13','41 KTS Steer','','','Kanchipuram','TN','','1939866.903','DEN',10000185),('Work','1996-06-14','99 Peterborough ','','','NewYork','NY','','1949418.527','GER',10000186),('Work','1996-06-15','44 Cadar ','','','San Fransico','CA','','1958970.152','BRA',10000187),('Work','1996-06-16','31 Sussex Street','','','Boston','MA','','1968521.776','AUS',10000188),('Work','1996-06-17','151 Smith Street','','','Boston','MA','','1978073.4','NZL',10000189),('Work','1996-06-18','98 Peterborough ','','','NewYork','NY','','1987625.024','RUS',10000190),('Work','1996-06-19','43 Cadar ','','','San Fransico','CA','','1997176.648','IND',10000191),('Work','1996-06-20','30 Sussex Street','','','Boston','MA','','2006728.273','USA',10000192),('Work','1996-06-21','150 Smith Street','','','Boston','MA','','1404975.945','CHN',10000193),('Work','1996-06-22','10 Huntington Ave','12th Floor','','Boston','MA','','1414527.57','MEX',10000194),('Work','1996-06-23','Bharthidasan Steet','Mamallan Nagar','','Kanchipuram','TN','','1424079.194','UAE',10000195),('Work','1996-06-24','42 KTS Steer','','','Kanchipuram','TN','','1433630.818','UK',10000196),('Work','1996-06-25','100 Peterborough ','','','NewYork','NY','','1443182.442','FRA',10000197),('Work','1996-06-26','45 Cadar ','','','San Fransico','CA','','1452734.067','SWE',10000198),('Work','1996-06-27','32 Sussex Street','','','Boston','MA','','1462285.691','NOR',10000199),('Work','1996-06-28','152 Smith Street','','','Boston','MA','','1471837.315','DEN',10000200);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businessgroup`
--

DROP TABLE IF EXISTS `businessgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businessgroup` (
  `BusinessGroupID` char(4) NOT NULL,
  `BusinessGroupName` char(50) NOT NULL,
  PRIMARY KEY (`BusinessGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businessgroup`
--

LOCK TABLES `businessgroup` WRITE;
/*!40000 ALTER TABLE `businessgroup` DISABLE KEYS */;
INSERT INTO `businessgroup` VALUES ('BFS','Banking and Finance'),('CG','Consumer Goods'),('HC','Healthcare'),('IME','Information Media and Entertainment'),('INA','Insurance'),('ML','Manufacturing and Logistics'),('RHL','Retail and Hospitality');
/*!40000 ALTER TABLE `businessgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businessobject`
--

DROP TABLE IF EXISTS `businessobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businessobject` (
  `BusinessObjectID` int(11) NOT NULL AUTO_INCREMENT,
  `BusinessObjectTypeID` int(1) NOT NULL,
  PRIMARY KEY (`BusinessObjectID`,`BusinessObjectTypeID`),
  KEY `FKBusinessObjectBusinessType` (`BusinessObjectTypeID`),
  CONSTRAINT `FKBusinessObjectBusinessType` FOREIGN KEY (`BusinessObjectTypeID`) REFERENCES `businessobjecttype` (`BusinessObjectTypeID`),
  CONSTRAINT `is a type of` FOREIGN KEY (`BusinessObjectTypeID`) REFERENCES `businessobjecttype` (`BusinessObjectTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=10000301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businessobject`
--

LOCK TABLES `businessobject` WRITE;
/*!40000 ALTER TABLE `businessobject` DISABLE KEYS */;
INSERT INTO `businessobject` VALUES (10000001,1),(10000002,1),(10000003,1),(10000004,1),(10000005,1),(10000006,1),(10000007,1),(10000008,1),(10000009,1),(10000010,1),(10000011,1),(10000012,1),(10000013,1),(10000014,1),(10000015,1),(10000016,1),(10000017,1),(10000018,1),(10000019,1),(10000020,1),(10000021,1),(10000022,1),(10000023,1),(10000024,1),(10000025,1),(10000026,1),(10000027,1),(10000028,1),(10000029,1),(10000030,1),(10000031,1),(10000032,1),(10000033,1),(10000034,1),(10000035,1),(10000036,1),(10000037,1),(10000038,1),(10000039,1),(10000040,1),(10000041,1),(10000042,1),(10000043,1),(10000044,1),(10000045,1),(10000046,1),(10000047,1),(10000048,1),(10000049,1),(10000050,1),(10000051,1),(10000052,1),(10000053,1),(10000054,1),(10000055,1),(10000056,1),(10000057,1),(10000058,1),(10000059,1),(10000060,1),(10000061,1),(10000062,1),(10000063,1),(10000064,1),(10000065,1),(10000066,1),(10000067,1),(10000068,1),(10000069,1),(10000070,1),(10000071,1),(10000072,1),(10000073,1),(10000074,1),(10000075,1),(10000076,1),(10000077,1),(10000078,1),(10000079,1),(10000080,1),(10000081,1),(10000082,1),(10000083,1),(10000084,1),(10000085,1),(10000086,1),(10000087,1),(10000088,1),(10000089,1),(10000090,1),(10000091,1),(10000092,1),(10000093,1),(10000094,1),(10000095,1),(10000096,1),(10000097,1),(10000098,1),(10000099,1),(10000100,1),(10000101,1),(10000102,1),(10000103,1),(10000104,1),(10000105,1),(10000106,1),(10000107,1),(10000108,1),(10000109,1),(10000110,1),(10000111,1),(10000112,1),(10000113,1),(10000114,1),(10000115,1),(10000116,1),(10000117,1),(10000118,1),(10000119,1),(10000120,1),(10000121,1),(10000122,1),(10000123,1),(10000124,1),(10000125,1),(10000126,1),(10000127,1),(10000128,1),(10000129,1),(10000130,1),(10000131,1),(10000132,1),(10000133,1),(10000134,1),(10000135,1),(10000136,1),(10000137,1),(10000138,1),(10000139,1),(10000140,1),(10000141,1),(10000142,1),(10000143,1),(10000144,1),(10000145,1),(10000146,1),(10000147,1),(10000148,1),(10000149,1),(10000150,1),(10000151,1),(10000152,1),(10000153,1),(10000154,1),(10000155,1),(10000156,1),(10000157,1),(10000158,1),(10000159,1),(10000160,1),(10000161,1),(10000162,1),(10000163,1),(10000164,1),(10000165,2),(10000166,2),(10000167,2),(10000168,2),(10000169,2),(10000170,2),(10000171,2),(10000172,2),(10000173,2),(10000174,2),(10000175,2),(10000176,2),(10000177,2),(10000178,2),(10000179,2),(10000180,2),(10000181,2),(10000182,2),(10000183,2),(10000184,2),(10000185,2),(10000186,2),(10000187,2),(10000188,2),(10000189,2),(10000190,2),(10000191,2),(10000192,2),(10000193,2),(10000194,2),(10000195,2),(10000196,2),(10000197,2),(10000198,2),(10000199,2),(10000200,2),(10000201,2),(10000202,2),(10000203,2),(10000204,2),(10000205,2),(10000206,2),(10000207,2),(10000208,2),(10000209,2),(10000210,2),(10000211,2),(10000212,2),(10000213,2),(10000214,2),(10000215,2),(10000216,2),(10000217,2),(10000218,2),(10000219,2),(10000220,2),(10000221,2),(10000222,2),(10000223,2),(10000224,2),(10000225,2),(10000226,2),(10000227,2),(10000228,2),(10000229,2),(10000230,2),(10000231,2),(10000232,2),(10000233,2),(10000234,2),(10000235,2),(10000236,2),(10000237,2),(10000238,2),(10000239,2),(10000240,2),(10000241,2),(10000242,2),(10000243,2),(10000244,2),(10000245,2),(10000246,2),(10000247,2),(10000248,2),(10000249,2),(10000250,2),(10000251,2),(10000252,2),(10000253,2),(10000254,2),(10000255,2),(10000256,2),(10000257,2),(10000258,2),(10000259,2),(10000260,2),(10000261,2),(10000262,2),(10000263,2),(10000264,2),(10000265,2),(10000266,2),(10000267,2),(10000268,2),(10000269,2),(10000270,2),(10000271,2),(10000272,2),(10000273,2),(10000274,2),(10000275,2),(10000276,2),(10000277,2),(10000278,2),(10000279,2),(10000280,2),(10000281,2),(10000282,2),(10000283,2),(10000284,2),(10000285,2),(10000286,2),(10000287,2),(10000288,2),(10000289,2),(10000290,2),(10000291,2),(10000292,2),(10000293,2),(10000294,2),(10000295,2),(10000296,2),(10000297,2),(10000298,2),(10000299,2),(10000300,2);
/*!40000 ALTER TABLE `businessobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businessobjecttype`
--

DROP TABLE IF EXISTS `businessobjecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businessobjecttype` (
  `BusinessObjectTypeID` int(1) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(15) NOT NULL,
  PRIMARY KEY (`BusinessObjectTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businessobjecttype`
--

LOCK TABLES `businessobjecttype` WRITE;
/*!40000 ALTER TABLE `businessobjecttype` DISABLE KEYS */;
INSERT INTO `businessobjecttype` VALUES (1,'Person'),(2,'Company');
/*!40000 ALTER TABLE `businessobjecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `companyview`
--

DROP TABLE IF EXISTS `companyview`;
/*!50001 DROP VIEW IF EXISTS `companyview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `companyview` AS SELECT 
 1 AS `CustomerID`,
 1 AS `CompanyName`,
 1 AS `CustomerType`,
 1 AS `Region`,
 1 AS `NetWorth`,
 1 AS `StockSymbol`,
 1 AS `WebURL`,
 1 AS `YearStarted`,
 1 AS `BusinessGroupName`,
 1 AS `Business Phone`,
 1 AS `Business Extension`,
 1 AS `Business Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `contactsview`
--

DROP TABLE IF EXISTS `contactsview`;
/*!50001 DROP VIEW IF EXISTS `contactsview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `contactsview` AS SELECT 
 1 AS `PersonID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `DateOfBirth`,
 1 AS `MartialStatus`,
 1 AS `Gender`,
 1 AS `Business Phone`,
 1 AS `Personal Phone`,
 1 AS `Home Phone`,
 1 AS `Business Email`,
 1 AS `Personal Email`,
 1 AS `Address1`,
 1 AS `Address2`,
 1 AS `City`,
 1 AS `State`,
 1 AS `ZipCode`,
 1 AS `Country`,
 1 AS `BusinessObjectIDCompany`,
 1 AS `CustomerID`,
 1 AS `Companyname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `Country` char(3) NOT NULL,
  `Description` char(30) NOT NULL,
  PRIMARY KEY (`Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('AUS','Australia'),('BRA','Brazil'),('CHN','China'),('DEN','Denmark'),('FRA','France'),('GER','Germany'),('IND','India'),('MEX','Mexico'),('NOR','Norway'),('NZL','New Zealand'),('RUS','Russia'),('SWE','Swedon'),('UAE','United Arab Emirates'),('UK','United Kingdom'),('USA','United States Of America');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustomerID` int(15) NOT NULL AUTO_INCREMENT,
  `CustomerType` enum('Prospect','Existing Customer') DEFAULT NULL,
  `NetWorth` varchar(50) DEFAULT NULL,
  `YearStarted` int(5) DEFAULT NULL,
  `WebURL` varchar(50) DEFAULT NULL,
  `StockSymbol` char(10) DEFAULT NULL,
  `Region` char(20) DEFAULT NULL,
  `BusinessObjectIDCompany` int(11) NOT NULL,
  `CompanyName` varchar(50) DEFAULT NULL,
  `BusinessGroupID` char(4) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`,`BusinessObjectIDCompany`),
  KEY `FKCustomerBusinessGroup` (`BusinessGroupID`),
  KEY `FKCustomerBusinessObject` (`BusinessObjectIDCompany`),
  KEY `FKCustomerRegion` (`Region`),
  CONSTRAINT `FKCustomerBusinessGroup` FOREIGN KEY (`BusinessGroupID`) REFERENCES `businessgroup` (`BusinessGroupID`),
  CONSTRAINT `FKCustomerBusinessObject` FOREIGN KEY (`BusinessObjectIDCompany`) REFERENCES `businessobject` (`BusinessObjectID`),
  CONSTRAINT `FKCustomerRegion` FOREIGN KEY (`Region`) REFERENCES `region` (`Region`),
  CONSTRAINT `is a Customer` FOREIGN KEY (`BusinessObjectIDCompany`) REFERENCES `businessobject` (`BusinessObjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=1200100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1200000,'Prospect','200000',1910,'www.Abc.com','A','Asia Pacific',10000165,'Abc','HC'),(1200001,'Prospect','200001',1911,'www.Putnam.com','D','North America',10000166,'Putnam','BFS'),(1200002,'Prospect','200002',1912,'www.Bosch.com','C','South America',10000167,'Bosch','IME'),(1200003,'Prospect','200003',1913,'www.Ariel.com','T','Continental Europe',10000168,'Ariel','CG'),(1200004,'Prospect','200004',1914,'www.Whirlpool.com','O','Asia Pacific',10000169,'Whirlpool','IME'),(1200005,'Prospect','200005',1915,'www.ICICI.com','E','North America',10000170,'ICICI','BFS'),(1200006,'Prospect','200006',1916,'www.Capital One.com','D','South America',10000171,'Capital One','BFS'),(1200007,'Prospect','200007',1917,'www.Santander.com','E','Continental Europe',10000172,'Santander','BFS'),(1200008,'Prospect','200008',1918,'www.Bank of America.com','F','Asia Pacific',10000173,'Bank of America','BFS'),(1200009,'Prospect','200009',1919,'www.Walmart.com','SD','Asia Pacific',10000174,'Walmart','ML'),(1200010,'Prospect','200010',1920,'www.Cosco.com','ER','North America',10000175,'Cosco','ML'),(1200011,'Prospect','200011',1921,'www.Sony.com','RE','South America',10000176,'Sony','IME'),(1200012,'Prospect','200012',1922,'www.AIWA.com','DDS','Continental Europe',10000177,'AIWA','IME'),(1200013,'Prospect','200013',1923,'www.Kelvinator.com','SD','Asia Pacific',10000178,'Kelvinator','IME'),(1200014,'Prospect','200014',1924,'www.Samsung.com','ERE','Asia Pacific',10000179,'Samsung','IME'),(1200015,'Prospect','8000000',1925,'www.United Health Insurance.com','S','North America',10000180,'United Health Insurance','INA'),(1200016,'Prospect','8000001',1926,'www.ICICI Lombart.com','SDD','South America',10000181,'ICICI Lombart','INA'),(1200017,'Prospect','8000002',1927,'www.Bharat Insurance.com','I','Continental Europe',10000182,'Bharat Insurance','INA'),(1200018,'Prospect','8000003',1928,'www.XEROX.com','OP','Asia Pacific',10000183,'XEROX','ML'),(1200019,'Prospect','8000004',1929,'www.Packers and Moveers.com','PO','North America',10000184,'Packers and Moveers','ML'),(1200020,'Prospect','8000005',1930,'www.Landry\'s Inc. -.com','ER','South America',10000185,'Landry\'s Inc. -','RHL'),(1200021,'Prospect','8000006',1931,'www.AT and T.com','REE','Continental Europe',10000186,'AT and T','RHL'),(1200022,'Prospect','8000007',1932,'www.Tesco.com','SD','Asia Pacific',10000187,'Tesco','RHL'),(1200023,'Prospect','8000008',1933,'www.Ranbaxy.com','C','Asia Pacific',10000188,'Ranbaxy','HC'),(1200024,'Prospect','8000009',1934,'www.Hearltland Autmotive.com','T','North America',10000189,'Hearltland Autmotive','CG'),(1200025,'Prospect','8000010',1935,'www.Goodwin Hospital.com','O','South America',10000190,'Goodwin Hospital','HC'),(1200026,'Prospect','8000011',1936,'www.CentrePlace.com','E','Continental Europe',10000191,'CentrePlace','IME'),(1200027,'Prospect','8000012',1937,'www.Conviniencec.com','D','Asia Pacific',10000192,'Conviniencec','CG'),(1200028,'Prospect','8000013',1938,'www.Star1.com','E','Asia Pacific',10000193,'Star1','CG'),(1200029,'Prospect','8000014',1939,'www.Stop and Shop1.com','F','North America',10000194,'Boston Hospital','HC'),(1200030,'Prospect','8000015',1940,'www.Apple1.com','SD','South America',10000195,'Apple1','IME'),(1200031,'Prospect','8000016',1941,'www.Lenova1.com','ER','Continental Europe',10000196,'Lenova1','IME'),(1200032,'Prospect','90000000',1942,'www.Philips2.com','RE','Asia Pacific',10000197,'Philips2','IME'),(1200033,'Prospect','90000001',1943,'www.Onida2.com','DDS','North America',10000198,'Onida2','IME'),(1200034,'Prospect','90000002',1944,'www.HBO Pvt Ltd.com','SD','South America',10000199,'HBO Pvt Ltd','IME'),(1200035,'Prospect','90000003',1945,'www.Xfinity Cables.com','C','Continental Europe',10000200,'Xfinity Cables','RHL'),(1200036,'Prospect','90000004',1946,'www.FedEx.com','T','Asia Pacific',10000201,'FedEx','RHL'),(1200037,'Prospect','90000005',1947,'www.RBS.com','O','Asia Pacific',10000202,'RBS','RHL'),(1200038,'Prospect','90000006',1948,'www.Ciitizen.com','E','North America',10000203,'Ciitizen','INA'),(1200039,'Prospect','90000007',1949,'www.Star.com','D','South America',10000204,'Star','CG'),(1200040,'Prospect','90000008',1950,'www.Stop and Shop.com','E','Continental Europe',10000205,'Stop and Shop','RHL'),(1200041,'Prospect','90000009',1951,'www.Apple.com','F','Asia Pacific',10000206,'Apple','CG'),(1200042,'Prospect','90000010',1952,'www.Lenova.com','SD','Asia Pacific',10000207,'Lenova','RHL'),(1200043,'Prospect','90000011',1953,'www.Philips.com','ER','North America',10000208,'Philips','ML'),(1200044,'Prospect','90000012',1954,'www.Onida.com','RE','South America',10000209,'Onida','ML'),(1200045,'Prospect','90000013',1955,'www.HBO.com','DDS','Continental Europe',10000210,'HBO','CG'),(1200046,'Prospect','90000014',1956,'www.Xfinity.com','SD','Asia Pacific',10000211,'Xfinity','ML'),(1200047,'Prospect','90000015',1957,'www.Start Health.com','C','North America',10000212,'Start Health','RHL'),(1200048,'Prospect','90000016',1958,'www.Royal Insurance.com','T','South America',10000213,'Royal Insurance','INA'),(1200049,'Prospect','90000017',1959,'www.Putnam corporation 1.com','O','Continental Europe',10000214,'Putnam corporation 1','HC'),(1200050,'Existing Customer','90000018',1960,'www.Bosch enerprises 2.com','E','Asia Pacific',10000215,'Bosch enerprises 2','IME'),(1200051,'Existing Customer','90000019',1961,'www.Ariel Pvt Ltd 4.com','D','Asia Pacific',10000216,'Ariel Pvt Ltd 4','CG'),(1200052,'Existing Customer','90000020',1962,'www.Whirlpool Electronics 2.com','E','North America',10000217,'Whirlpool Electronics 2','ML'),(1200053,'Existing Customer','90000021',1963,'www.FedEx.com','F','South America',10000218,'FedEx','ML'),(1200054,'Existing Customer','90000022',1964,'www.RBS.com','SD','Continental Europe',10000219,'RBS','BFS'),(1200055,'Existing Customer','120000000',1965,'www.Ciitizen.com','ER','Asia Pacific',10000220,'Ciitizen','BFS'),(1200056,'Existing Customer','120000001',1966,'www.Star.com','RE','Asia Pacific',10000221,'Star','ML'),(1200057,'Existing Customer','120000002',1967,'www.Stop and Shop.com','DDS','North America',10000222,'Stop and Shop','ML'),(1200058,'Existing Customer','120000003',1968,'www.Apple.com','SD','South America',10000223,'Apple','IME'),(1200059,'Existing Customer','120000004',1969,'www.Lenova.com','C','Continental Europe',10000224,'Lenova','IME'),(1200060,'Existing Customer','120000005',1970,'www.Philips.com','T','Asia Pacific',10000225,'Philips','IME'),(1200061,'Existing Customer','120000006',1971,'www.Onida.com','O','North America',10000226,'Onida','IME'),(1200062,'Existing Customer','120000007',1972,'www.HBO.com','E','South America',10000227,'HBO','CG'),(1200063,'Existing Customer','120000008',1973,'www.Xfinity.com','D','Continental Europe',10000228,'Xfinity','CG'),(1200064,'Existing Customer','120000009',1974,'www.Start Health.com','E','Asia Pacific',10000229,'Start Health','INA'),(1200065,'Existing Customer','120000010',1975,'www.Royal Insurance.com','F','Asia Pacific',10000230,'Royal Insurance','INA'),(1200066,'Existing Customer','120000011',1976,'www.Rebecca.com','SD','North America',10000231,'Rebecca','RHL'),(1200067,'Existing Customer','120000012',1977,'www.Pizza Hut.com','ER','South America',10000232,'Pizza Hut','RHL'),(1200068,'Existing Customer','120000013',1978,'www.KFC.com','RE','Continental Europe',10000233,'KFC','RHL'),(1200069,'Existing Customer','120000014',1979,'www.Boston Hospital.com','DDS','Asia Pacific',10000234,'Boston Hospital','RHL'),(1200070,'Existing Customer','120000015',1980,'www.Cipla.com','SD','Asia Pacific',10000235,'Cipla','RHL'),(1200071,'Existing Customer','239000909',1981,'www.McDonald.com','C','North America',10000236,'McDonald','CG'),(1200072,'Existing Customer','239000910',1982,'www.Logica.com','T','South America',10000237,'Logica','BFS'),(1200073,'Existing Customer','239000911',1983,'www.Casio.com','O','Continental Europe',10000238,'Casio','ML'),(1200074,'Existing Customer','239000912',1984,'www.OnePlus.com','E','Asia Pacific',10000239,'OnePlus','ML'),(1200075,'Existing Customer','239000913',1985,'www.Tmobile.com','D','North America',10000240,'Tmobile','IME'),(1200076,'Existing Customer','239000914',1986,'www.Lyca.com','E','South America',10000241,'Lyca','IME'),(1200077,'Existing Customer','239000915',1987,'www.Reliance.com','F','Continental Europe',10000242,'Reliance','IME'),(1200078,'Existing Customer','239000916',1988,'www.Enterprise.com','SD','Asia Pacific',10000243,'Enterprise','IME'),(1200079,'Existing Customer','239000917',1989,'www.Gmobile.com','ER','Asia Pacific',10000244,'Gmobile','CG'),(1200080,'Existing Customer','239000918',1990,'www.AMC.com','RE','North America',10000245,'AMC','CG'),(1200081,'Existing Customer','239000919',1991,'www.BAC .com','DDS','South America',10000246,'BAC ','INA'),(1200082,'Existing Customer','239000920',1992,'www.MTR.com','SD','Continental Europe',10000247,'MTR','INA'),(1200083,'Existing Customer','239000921',1993,'www.Shakthi corporations.com','C','Asia Pacific',10000248,'Shakthi corporations','RHL'),(1200084,'Existing Customer','239000922',1994,'www.Tide.com','T','Asia Pacific',10000249,'Tide','RHL'),(1200085,'Existing Customer','239000923',1995,'www.KTR.com','O','North America',10000250,'KTR','RHL'),(1200086,'Existing Customer','67839900',1996,'www.ICICI.com','E','South America',10000251,'ICICI','RHL'),(1200087,'Existing Customer','67839901',1997,'www.Capital One.com','D','Continental Europe',10000252,'Capital One','BFS'),(1200088,'Existing Customer','67839902',1998,'www.Santander.com','E','Asia Pacific',10000253,'Santander','ML'),(1200089,'Existing Customer','67839903',1999,'www.Putnam corporation.com','F','North America',10000254,'Putnam corporation','ML'),(1200090,'Existing Customer','67839904',2000,'www.Bosch enerprises.com','SD','South America',10000255,'Bosch enerprises','IME'),(1200091,'Existing Customer','67839905',2001,'www.Ariel Pvt Ltd.com','ER','Continental Europe',10000256,'Ariel Pvt Ltd','IME'),(1200092,'Existing Customer','67839906',2002,'www.Whirlpool Electronics.com','RE','Asia Pacific',10000257,'Whirlpool Electronics','IME'),(1200093,'Existing Customer','67839907',2003,'www.ICICI banking solutions.com','DDS','Asia Pacific',10000258,'ICICI banking solutions','IME'),(1200094,'Existing Customer','67839908',2004,'www.Capital One Invesments.com','SD','North America',10000259,'Capital One Invesments','CG'),(1200095,'Existing Customer','67839909',2005,'www.Santander Online.com','C','South America',10000260,'Santander Online','CG'),(1200096,'Existing Customer','67839910',2006,'www.Bank of America Online.com','T','Continental Europe',10000261,'Bank of America Online','INA'),(1200097,'Existing Customer','67839911',2007,'www.Walmart Shops and Hotels.com','O','Asia Pacific',10000262,'Walmart Shops and Hotels','INA'),(1200098,'Existing Customer','67839912',2008,'www.Cosco Pvt ltd.com','E','Asia Pacific',10000263,'Cosco Pvt ltd','RHL'),(1200099,'Existing Customer','67839913',2009,'www.Sony electricals.com','D','North America',10000264,'Sony electricals','ML');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `MailType` enum('Business','Personal') NOT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `BusinessObjectID` int(11) NOT NULL,
  PRIMARY KEY (`BusinessObjectID`,`MailType`),
  CONSTRAINT `FKNameEmailBusinessObject` FOREIGN KEY (`BusinessObjectID`) REFERENCES `businessobject` (`BusinessObjectID`),
  CONSTRAINT `has` FOREIGN KEY (`BusinessObjectID`) REFERENCES `businessobject` (`BusinessObjectID`),
  CONSTRAINT `hasEmail` FOREIGN KEY (`BusinessObjectID`) REFERENCES `businessobject` (`BusinessObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES ('Business','Adam@ITSolutions.com',10000001),('Personal','Abraham@gmail.com',10000001),('Business','Adrian@ITSolutions.com',10000002),('Personal','Allan@gmail.com',10000002),('Business','Alan@ITSolutions.com',10000003),('Personal','Alsop@gmail.com',10000003),('Business','Alexander@ITSolutions.com',10000004),('Personal','Anderson@gmail.com',10000004),('Business','Andrew@ITSolutions.com',10000005),('Personal','Arnold@gmail.com',10000005),('Business','Anthony@ITSolutions.com',10000006),('Personal','Avery@gmail.com',10000006),('Business','Austin@ITSolutions.com',10000007),('Personal','Bailey@gmail.com',10000007),('Business','Benjamin@ITSolutions.com',10000008),('Personal','Baker@gmail.com',10000008),('Business','Blake@ITSolutions.com',10000009),('Personal','Ball@gmail.com',10000009),('Business','Boris@ITSolutions.com',10000010),('Personal','Bell@gmail.com',10000010),('Business','Brandon@ITSolutions.com',10000011),('Personal','Berry@gmail.com',10000011),('Business','Brian@ITSolutions.com',10000012),('Personal','Black@gmail.com',10000012),('Business','Cameron@ITSolutions.com',10000013),('Personal','Blake@gmail.com',10000013),('Business','Carl@ITSolutions.com',10000014),('Personal','Bond@gmail.com',10000014),('Business','Charles@ITSolutions.com',10000015),('Personal','Bower@gmail.com',10000015),('Business','Christian@ITSolutions.com',10000016),('Personal','Brown@gmail.com',10000016),('Business','Christopher@ITSolutions.com',10000017),('Personal','Buckland@gmail.com',10000017),('Business','Colin@ITSolutions.com',10000018),('Personal','Burgess@gmail.com',10000018),('Business','Connor@ITSolutions.com',10000019),('Personal','Butler@gmail.com',10000019),('Business','Dan@ITSolutions.com',10000020),('Personal','Cameron@gmail.com',10000020),('Business','David@ITSolutions.com',10000021),('Personal','Campbell@gmail.com',10000021),('Business','Dominic@ITSolutions.com',10000022),('Personal','Carr@gmail.com',10000022),('Business','Dylan@ITSolutions.com',10000023),('Personal','Chapman@gmail.com',10000023),('Business','Edward@ITSolutions.com',10000024),('Personal','Churchill@gmail.com',10000024),('Business','Eric@ITSolutions.com',10000025),('Personal','Clark@gmail.com',10000025),('Business','Evan@ITSolutions.com',10000026),('Personal','Clarkson@gmail.com',10000026),('Business','Frank@ITSolutions.com',10000027),('Personal','Coleman@gmail.com',10000027),('Business','Gavin@ITSolutions.com',10000028),('Personal','Cornish@gmail.com',10000028),('Business','Gordon@ITSolutions.com',10000029),('Personal','Davidson@gmail.com',10000029),('Personal','Davies@gmail.com',10000030),('Personal','Dickens@gmail.com',10000031),('Personal','Dowd@gmail.com',10000032),('Personal','Duncan@gmail.com',10000033),('Personal','Dyer@gmail.com',10000034),('Personal','Edmunds@gmail.com',10000035),('Personal','Ellison@gmail.com',10000036),('Personal','Ferguson@gmail.com',10000037),('Personal','Fisher@gmail.com',10000038),('Personal','Forsyth@gmail.com',10000039),('Personal','Fraser@gmail.com',10000040),('Personal','Gibson@gmail.com',10000041),('Personal','Gill@gmail.com',10000042),('Personal','Glover@gmail.com',10000043),('Personal','Graham@gmail.com',10000044),('Personal','Grant@gmail.com',10000045),('Personal','Gray@gmail.com',10000046),('Personal','Greene@gmail.com',10000047),('Personal','Hamilton@gmail.com',10000048),('Personal','Hardacre@hotmail.com',10000049),('Personal','Harris@hotmail.com',10000050),('Personal','Hart@hotmail.com',10000051),('Personal','Hemmings@hotmail.com',10000052),('Personal','Hill@hotmail.com',10000054),('Personal','Hodges@hotmail.com',10000055),('Personal','Howard@hotmail.com',10000056),('Personal','Hudson@hotmail.com',10000057),('Personal','Hughes@hotmail.com',10000058),('Personal','Hunter@hotmail.com',10000059),('Personal','Ince@hotmail.com',10000060),('Personal','Jackson@hotmail.com',10000061),('Personal','James@hotmail.com',10000062),('Personal','Johnston@hotmail.com',10000063),('Personal','Jones@hotmail.com',10000064),('Personal','Kelly@hotmail.com',10000065),('Personal','Kerr@hotmail.com',10000066),('Personal','King@hotmail.com',10000067),('Personal','Knox@hotmail.com',10000068),('Personal','Lambert@hotmail.com',10000069),('Personal','Langdon@hotmail.com',10000070),('Personal','Lawrence@hotmail.com',10000071),('Personal','Lee@hotmail.com',10000072),('Personal','Lewis@hotmail.com',10000073),('Personal','Lyman@hotmail.com',10000074),('Personal','Mackay@hotmail.com',10000076),('Personal','MacLeod@hotmail.com',10000078),('Personal','Manning@hotmail.com',10000079),('Personal','Marshall@hotmail.com',10000080),('Personal','Martin@hotmail.com',10000081),('Personal','Mathis@hotmail.com',10000082),('Personal','May@hotmail.com',10000083),('Personal','McDonald@hotmail.com',10000084),('Personal','McLean@hotmail.com',10000085),('Personal','McGrath@hotmail.com',10000086),('Personal','Metcalfe@hotmail.com',10000087),('Personal','Miller@hotmail.com',10000088),('Personal','Mills@hotmail.com',10000089),('Personal','Mitchell@hotmail.com',10000090),('Personal','Morgan@hotmail.com',10000091),('Personal','Morrison@hotmail.com',10000092),('Personal','Murray@hotmail.com',10000093),('Personal','Nash@hotmail.com',10000094),('Personal','Newman@hotmail.com',10000095),('Personal','Nolan@hotmail.com',10000096),('Personal','North@hotmail.com',10000097),('Personal','Ogden@hotmail.com',10000098),('Personal','Oliver@hotmail.com',10000099),('Personal','Paige@hotmail.com',10000100),('Personal','Parr@hotmail.com',10000101),('Personal','Parsons@hotmail.com',10000102),('Personal','Paterson@hotmail.com',10000103),('Personal','Payne@hotmail.com',10000104),('Personal','Peake@hotmail.com',10000105),('Personal','Peters@hotmail.com',10000106),('Personal','Piper@hotmail.com',10000107),('Personal','Poole@hotmail.com',10000108),('Personal','Powell@hotmail.com',10000109),('Personal','Pullman@hotmail.com',10000110),('Personal','Quinn@hotmail.com',10000111),('Personal','Rampling@hotmail.com',10000112),('Personal','Randall@hotmail.com',10000113),('Personal','Rees@hotmail.com',10000114),('Personal','Reid@hotmail.com',10000115),('Personal','Roberts@hotmail.com',10000116),('Personal','Ross@hotmail.com',10000118),('Personal','Russell@hotmail.com',10000119),('Personal','Scott@hotmail.com',10000122),('Personal','Sharp@hotmail.com',10000123),('Personal','Short@ymail.com',10000124),('Personal','Simpson@ymail.com',10000125),('Personal','Skinner@ymail.com',10000126),('Personal','Slater@ymail.com',10000127),('Personal','Smith@ymail.com',10000128),('Personal','Springer@ymail.com',10000129),('Personal','Stewart@ymail.com',10000130),('Personal','Sutherland@ymail.com',10000131),('Personal','Taylor@ymail.com',10000132),('Personal','Terry@ymail.com',10000133),('Personal','Thomson@ymail.com',10000134),('Business','Megan@ITSolutions.com',10000135),('Personal','Tucker@ymail.com',10000135),('Business','Melanie@ITSolutions.com',10000136),('Personal','Turner@ymail.com',10000136),('Business','Michelle@ITSolutions.com',10000137),('Personal','Underwood@ymail.com',10000137),('Business','Molly@ITSolutions.com',10000138),('Personal','Vance@ymail.com',10000138),('Business','Natalie@ITSolutions.com',10000139),('Personal','Vaughan@ymail.com',10000139),('Business','Nicola@ITSolutions.com',10000140),('Personal','Walker@ymail.com',10000140),('Business','Olivia@ITSolutions.com',10000141),('Personal','Wallace@ymail.com',10000141),('Business','Penelope@ITSolutions.com',10000142),('Personal','Walsh@ymail.com',10000142),('Business','Pippa@ITSolutions.com',10000143),('Personal','Watson@ymail.com',10000143),('Business','Rachel@ITSolutions.com',10000144),('Personal','Welch@ymail.com',10000144),('Business','Rebecca@ITSolutions.com',10000145),('Personal','White@ymail.com',10000145),('Business','Rose@ITSolutions.com',10000146),('Personal','Wilkins@ymail.com',10000146),('Business','Ruth@ITSolutions.com',10000147),('Personal','Wilson@ymail.com',10000147),('Business','Sally@ITSolutions.com',10000148),('Personal','Wright@ymail.com',10000148),('Business','Samantha@ITSolutions.com',10000149),('Personal','Young@ymail.com',10000149),('Business','Sarah@ITSolutions.com',10000150),('Personal','Abraham@ymail.com',10000150),('Business','Sonia@ITSolutions.com',10000151),('Personal','Allan@ymail.com',10000151),('Business','Sophie@ITSolutions.com',10000152),('Personal','Alsop@ymail.com',10000152),('Business','Stephanie@ITSolutions.com',10000153),('Personal','Anderson@ymail.com',10000153),('Business','Sue@ITSolutions.com',10000154),('Personal','Arnold@ymail.com',10000154),('Business','Theresa@ITSolutions.com',10000155),('Personal','Avery@ymail.com',10000155),('Business','Tracey@ITSolutions.com',10000156),('Personal','Bailey@ymail.com',10000156),('Business','Una@ITSolutions.com',10000157),('Personal','Baker@ymail.com',10000157),('Business','Vanessa@ITSolutions.com',10000158),('Personal','Ball@ymail.com',10000158),('Business','Victoria@ITSolutions.com',10000159),('Personal','Bell@ymail.com',10000159),('Business','Virginia@ITSolutions.com',10000160),('Personal','Berry@ymail.com',10000160),('Business','Wanda@ITSolutions.com',10000161),('Personal','Black@ymail.com',10000161),('Business','Wendy@ITSolutions.com',10000162),('Personal','Blake@ymail.com',10000162),('Business','Yvonne@ITSolutions.com',10000163),('Personal','Bond@ymail.com',10000163),('Business','Zoe@ITSolutions.com',10000164),('Personal','Bower@ymail.com',10000164),('Business','contact@Abc.com',10000165),('Business','contact@Putnam.com',10000166),('Business','contact@Bosch.com',10000167),('Business','contact@Ariel.com',10000168),('Business','contact@Whirlpool.com',10000169),('Business','contact@ICICI.com',10000170),('Business','contact@Capital One.com',10000171),('Business','contact@Santander.com',10000172),('Business','contact@Bank of America.com',10000173),('Business','contact@Walmart.com',10000174),('Business','contact@Cosco.com',10000175),('Business','contact@Sony.com',10000176),('Business','contact@AIWA.com',10000177),('Business','contact@Kelvinator.com',10000178),('Business','contact@Samsung.com',10000179),('Business','contact@United Health Insurance.com',10000180),('Business','contact@ICICI Lombart.com',10000181),('Business','contact@Bharat Insurance.com',10000182),('Business','contact@XEROX.com',10000183),('Business','contact@Packers and Moveers.com',10000184),('Business','contact@Landry\'s Inc. -.com',10000185),('Business','contact@AT and T.com',10000186),('Business','contact@Tesco.com',10000187),('Business','contact@Ranbaxy.com',10000188),('Business','contact@Hearltland Autmotive.com',10000189),('Business','contact@Goodwin Hospital.com',10000190),('Business','contact@CentrePlace.com',10000191),('Business','contact@Conviniencec.com',10000192),('Business','contact@Star1.com',10000193),('Business','contact@Boston Hospital.com',10000194),('Business','contact@Apple1.com',10000195),('Business','contact@Lenova1.com',10000196),('Business','contact@Philips2.com',10000197),('Business','contact@Onida2.com',10000198),('Business','contact@HBO Pvt Ltd.com',10000199),('Business','contact@Xfinity Cables.com',10000200),('Business','contact@FedEx.com',10000201),('Business','contact@RBS.com',10000202),('Business','contact@Ciitizen.com',10000203),('Business','contact@Star.com',10000204),('Business','contact@Stop and Shop.com',10000205),('Business','contact@Apple.com',10000206),('Business','contact@Lenova.com',10000207),('Business','contact@Philips.com',10000208),('Business','contact@Onida.com',10000209),('Business','contact@HBO.com',10000210),('Business','contact@Xfinity.com',10000211),('Business','contact@Start Health.com',10000212),('Business','contact@Royal Insurance.com',10000213),('Business','contact@Putnam corporation 1.com',10000214),('Business','contact@Bosch enerprises 2.com',10000215),('Business','contact@Ariel Pvt Ltd 4.com',10000216),('Business','contact@Whirlpool Electronics 2.com',10000217),('Business','contact@FedEx.com',10000218),('Business','contact@RBS.com',10000219),('Business','contact@Ciitizen.com',10000220),('Business','contact@Star.com',10000221),('Business','contact@Stop and Shop.com',10000222),('Business','contact@Apple.com',10000223),('Business','contact@Lenova.com',10000224),('Business','contact@Philips.com',10000225),('Business','contact@Onida.com',10000226),('Business','contact@HBO.com',10000227),('Business','contact@Xfinity.com',10000228),('Business','contact@Start Health.com',10000229),('Business','contact@Royal Insurance.com',10000230),('Business','contact@Rebecca.com',10000231),('Business','contact@Pizza Hut.com',10000232),('Business','contact@KFC.com',10000233),('Business','contact@Boston Hospital.com',10000234),('Business','contact@Cipla.com',10000235),('Business','contact@McDonald.com',10000236),('Business','contact@Logica.com',10000237),('Business','contact@Casio.com',10000238),('Business','contact@OnePlus.com',10000239),('Business','contact@Tmobile.com',10000240),('Business','contact@Lyca.com',10000241),('Business','contact@Reliance.com',10000242),('Business','contact@Enterprise.com',10000243),('Business','contact@Gmobile.com',10000244),('Business','contact@AMC.com',10000245),('Business','contact@BAC .com',10000246),('Business','contact@MTR.com',10000247),('Business','contact@Shakthi corporations.com',10000248),('Business','contact@Tide.com',10000249),('Business','contact@KTR.com',10000250),('Business','contact@ICICI.com',10000251),('Business','contact@Capital One.com',10000252),('Business','contact@Santander.com',10000253),('Business','contact@Putnam corporation.com',10000254),('Business','contact@Bosch enerprises.com',10000255),('Business','contact@Ariel Pvt Ltd.com',10000256),('Business','contact@Whirlpool Electronics.com',10000257),('Business','contact@ICICI banking solutions.com',10000258),('Business','contact@Capital One Invesments.com',10000259),('Business','contact@Santander Online.com',10000260),('Business','contact@Bank of America Online.com',10000261),('Business','contact@Walmart Shops and Hotels.com',10000262),('Business','contact@Cosco Pvt ltd.com',10000263),('Business','contact@Sony electricals.com',10000264);
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `EmployeeID` int(7) NOT NULL AUTO_INCREMENT,
  `EmployeeStatus` enum('Active','Inactive') DEFAULT NULL,
  `PersonID` int(11) NOT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE KEY `EmployeeID` (`EmployeeID`),
  KEY `FKEmployeePerson` (`PersonID`),
  CONSTRAINT `FKEmployeePerson` FOREIGN KEY (`PersonID`) REFERENCES `person` (`PersonID`),
  CONSTRAINT `is a Person` FOREIGN KEY (`PersonID`) REFERENCES `person` (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=3000060 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (3000001,'Active',2000001),(3000002,'Active',2000002),(3000003,'Active',2000003),(3000004,'Active',2000004),(3000005,'Active',2000005),(3000006,'Active',2000006),(3000007,'Active',2000007),(3000008,'Active',2000008),(3000009,'Active',2000009),(3000010,'Active',2000010),(3000011,'Active',2000011),(3000012,'Active',2000012),(3000013,'Active',2000013),(3000014,'Active',2000014),(3000015,'Active',2000015),(3000016,'Active',2000016),(3000017,'Active',2000017),(3000018,'Active',2000018),(3000019,'Active',2000019),(3000020,'Active',2000020),(3000021,'Active',2000021),(3000022,'Active',2000022),(3000023,'Active',2000023),(3000024,'Active',2000024),(3000025,'Active',2000025),(3000026,'Active',2000026),(3000027,'Active',2000027),(3000028,'Active',2000028),(3000029,'Active',2000029),(3000030,'Active',2000135),(3000031,'Active',2000136),(3000032,'Active',2000137),(3000033,'Active',2000138),(3000034,'Active',2000139),(3000035,'Inactive',2000140),(3000036,'Inactive',2000141),(3000037,'Inactive',2000142),(3000038,'Inactive',2000143),(3000039,'Inactive',2000144),(3000040,'Inactive',2000145),(3000041,'Inactive',2000146),(3000042,'Inactive',2000147),(3000043,'Inactive',2000148),(3000044,'Inactive',2000149),(3000045,'Active',2000150),(3000046,'Active',2000151),(3000047,'Active',2000152),(3000048,'Active',2000153),(3000049,'Active',2000154),(3000050,'Active',2000155),(3000051,'Active',2000156),(3000052,'Active',2000157),(3000053,'Active',2000158),(3000054,'Active',2000159),(3000055,'Active',2000160),(3000056,'Active',2000161),(3000057,'Active',2000162),(3000058,'Active',2000163),(3000059,'Active',2000164);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeerole`
--

DROP TABLE IF EXISTS `employeerole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeerole` (
  `EmployeeID` int(7) NOT NULL,
  `RoleID` int(2) NOT NULL,
  PRIMARY KEY (`EmployeeID`,`RoleID`),
  KEY `FKEmployeeRoleRole` (`RoleID`),
  CONSTRAINT `FKEmployeeRoleEmployee` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `FKEmployeeRoleRole` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeerole`
--

LOCK TABLES `employeerole` WRITE;
/*!40000 ALTER TABLE `employeerole` DISABLE KEYS */;
INSERT INTO `employeerole` VALUES (3000001,1),(3000002,1),(3000003,1),(3000004,1),(3000005,1),(3000016,2),(3000017,2),(3000018,2),(3000019,2),(3000020,2),(3000021,3),(3000022,3),(3000023,3),(3000024,3),(3000025,3),(3000026,3),(3000027,3),(3000028,3),(3000029,3),(3000030,3),(3000031,3),(3000032,4),(3000033,4),(3000034,4),(3000035,4),(3000036,4),(3000037,4),(3000006,5),(3000007,5),(3000008,5),(3000009,5),(3000010,5),(3000038,5),(3000039,5),(3000040,5),(3000041,5),(3000042,5),(3000043,5),(3000011,6),(3000012,6),(3000013,6),(3000014,6),(3000015,6),(3000044,6),(3000045,6),(3000046,6),(3000047,6),(3000048,6),(3000049,6),(3000050,6),(3000051,7),(3000052,7),(3000053,7),(3000054,7),(3000055,7),(3000056,7),(3000057,7),(3000058,8),(3000059,8);
/*!40000 ALTER TABLE `employeerole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead`
--

DROP TABLE IF EXISTS `lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead` (
  `LeadID` int(11) NOT NULL AUTO_INCREMENT,
  `LeadDescription` varchar(50) DEFAULT NULL,
  `LeadStatus` char(4) DEFAULT 'OPEN',
  `PersonID` int(11) NOT NULL,
  `BusinessObjectIDPerson` int(11) NOT NULL,
  `CustomerID` int(15) NOT NULL,
  `BusinessObjectIDCompany` int(11) NOT NULL,
  `Comments` varchar(50) DEFAULT NULL,
  `CreatedBy` int(7) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastModifiedBy` int(7) NOT NULL,
  `LastModifiedOn` datetime NOT NULL,
  PRIMARY KEY (`LeadID`),
  KEY `FKLeadPerson` (`PersonID`,`BusinessObjectIDPerson`),
  KEY `FKLeadCustomer` (`CustomerID`,`BusinessObjectIDCompany`),
  KEY `FKLeadEmployeeCreatedBy` (`CreatedBy`),
  KEY `FKLeadEmployee` (`LastModifiedBy`),
  KEY `FKLeadStatus` (`LeadStatus`),
  CONSTRAINT `FKLeadCustomer` FOREIGN KEY (`CustomerID`, `BusinessObjectIDCompany`) REFERENCES `customer` (`CustomerID`, `BusinessObjectIDCompany`),
  CONSTRAINT `FKLeadEmployee` FOREIGN KEY (`LastModifiedBy`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `FKLeadEmployeeCreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `FKLeadPerson` FOREIGN KEY (`PersonID`, `BusinessObjectIDPerson`) REFERENCES `person` (`PersonID`, `BusinessObjectIDPerson`),
  CONSTRAINT `FKLeadStatus` FOREIGN KEY (`LeadStatus`) REFERENCES `status` (`StatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=3000117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead`
--

LOCK TABLES `lead` WRITE;
/*!40000 ALTER TABLE `lead` DISABLE KEYS */;
INSERT INTO `lead` VALUES (3000001,'Lead for Company for  Abc','OPEN',2000029,10000029,1200000,10000165,'',3000006,'1999-11-06 00:00:00',3000006,'1999-11-06 00:00:00'),(3000002,'Lead for Company for  Putnam','OPEN',2000030,10000030,1200001,10000166,'',3000007,'1999-11-07 00:00:00',3000007,'1999-11-07 00:00:00'),(3000003,'Lead for Company for  Bosch','OPEN',2000031,10000031,1200002,10000167,'',3000008,'1999-11-08 00:00:00',3000008,'1999-11-08 00:00:00'),(3000004,'Lead for Company for  Ariel','OPEN',2000032,10000032,1200003,10000168,'',3000009,'1999-11-09 00:00:00',3000009,'1999-11-09 00:00:00'),(3000005,'Lead for Company for  Whirlpool','INPR',2000033,10000033,1200004,10000169,'',3000010,'1999-11-10 00:00:00',3000010,'1999-11-10 00:00:00'),(3000006,'Lead for Company for  ICICI','INPR',2000034,10000034,1200005,10000170,'',3000011,'1999-11-11 00:00:00',3000011,'1999-11-11 00:00:00'),(3000007,'Lead for Company for  Capital One','INPR',2000035,10000035,1200006,10000171,'',3000012,'1999-11-12 00:00:00',3000012,'1999-11-12 00:00:00'),(3000008,'Lead for Company for  Santander','INPR',2000036,10000036,1200007,10000172,'',3000013,'2003-06-23 00:00:00',3000013,'2003-06-23 00:00:00'),(3000009,'Lead for Company for  Bank of America','WORK',2000037,10000037,1200008,10000173,'',3000014,'2003-06-24 00:00:00',3000014,'2003-06-24 00:00:00'),(3000010,'Lead for Company for  Walmart','WORK',2000038,10000038,1200009,10000174,'',3000015,'2003-06-25 00:00:00',3000015,'2003-06-25 00:00:00'),(3000011,'Lead for Company for  Cosco','WORK',2000039,10000039,1200010,10000175,'',3000038,'2003-06-26 00:00:00',3000038,'2003-06-26 00:00:00'),(3000012,'Lead for Company for  Sony','CMPL',2000040,10000040,1200011,10000176,'',3000039,'2003-06-27 00:00:00',3000039,'2003-06-27 00:00:00'),(3000013,'Lead for Company for  AIWA','WORK',2000041,10000041,1200012,10000177,'',3000040,'2003-06-28 00:00:00',3000040,'2003-06-28 00:00:00'),(3000014,'Lead for Company for  Kelvinator','CMPL',2000042,10000042,1200013,10000178,'',3000041,'2003-06-29 00:00:00',3000041,'2003-06-29 00:00:00'),(3000015,'Lead for Company for  Samsung','CMPL',2000043,10000043,1200014,10000179,'',3000042,'2003-06-30 00:00:00',3000042,'2003-06-30 00:00:00'),(3000016,'Lead for Company for  United Health Insurance','CMPL',2000044,10000044,1200015,10000180,'',3000043,'2003-07-01 00:00:00',3000043,'2003-07-01 00:00:00'),(3000017,'Lead for Company for  ICICI Lombart','CMPL',2000045,10000045,1200016,10000181,'',3000044,'2005-02-17 00:00:00',3000044,'2005-02-17 00:00:00'),(3000018,'Lead for Company for  Bharat Insurance','CMPL',2000046,10000046,1200017,10000182,'',3000045,'2005-02-18 00:00:00',3000045,'2005-02-18 00:00:00'),(3000019,'Lead for Company for  XEROX','OPEN',2000047,10000047,1200018,10000183,'',3000046,'2005-02-19 00:00:00',3000046,'2005-02-19 00:00:00'),(3000020,'Lead for Company for  Packers and Moveers','OPEN',2000048,10000048,1200019,10000184,'',3000047,'2005-02-20 00:00:00',3000047,'2005-02-20 00:00:00'),(3000021,'Lead for Company for  Landry\'s Inc. -','OPEN',2000049,10000049,1200020,10000185,'',3000048,'2005-02-21 00:00:00',3000048,'2005-02-21 00:00:00'),(3000022,'Lead for Company for  AT and T','OPEN',2000050,10000050,1200021,10000186,'',3000049,'2005-02-22 00:00:00',3000049,'2005-02-22 00:00:00'),(3000023,'Lead for Company for  Tesco','INPR',2000051,10000051,1200022,10000187,'',3000050,'2005-02-23 00:00:00',3000050,'2005-02-23 00:00:00'),(3000024,'Lead for Company for  Ranbaxy','INPR',2000052,10000052,1200023,10000188,'',3000058,'2005-02-24 00:00:00',3000058,'2005-02-24 00:00:00'),(3000025,'Lead for Company for  Hearltland Autmotive','INPR',2000053,10000053,1200024,10000189,'',3000061,'2005-02-25 00:00:00',3000061,'2005-02-25 00:00:00'),(3000026,'Lead for Company for  Goodwin Hospital','INPR',2000054,10000054,1200025,10000190,'',3000063,'1999-11-09 00:00:00',3000063,'1999-11-09 00:00:00'),(3000027,'Lead for Company for  CentrePlace','WORK',2000055,10000055,1200026,10000191,'',3000066,'1999-11-10 00:00:00',3000066,'1999-11-10 00:00:00'),(3000028,'Lead for Company for  Conviniencec','WORK',2000056,10000056,1200027,10000192,'',3000068,'1999-11-11 00:00:00',3000068,'1999-11-11 00:00:00'),(3000029,'Lead for Company for  Star1','WORK',2000057,10000057,1200028,10000193,'',3000070,'1999-11-12 00:00:00',3000070,'1999-11-12 00:00:00'),(3000030,'Lead for Company for  Boston Hospital','WORK',2000058,10000058,1200029,10000194,'',3000073,'2003-06-23 00:00:00',3000073,'2003-06-23 00:00:00'),(3000031,'Lead for Company for  Apple1','WORK',2000059,10000059,1200030,10000195,'',3000075,'2003-06-24 00:00:00',3000075,'2003-06-24 00:00:00'),(3000032,'Lead for Company for  Lenova1','CMPL',2000060,10000060,1200031,10000196,'',3000078,'2003-06-25 00:00:00',3000078,'2003-06-25 00:00:00'),(3000033,'Lead for Company for  Philips2','CMPL',2000061,10000061,1200032,10000197,'',3000080,'2003-06-26 00:00:00',3000080,'2003-06-26 00:00:00'),(3000034,'Lead for Company for  Onida2','CMPL',2000062,10000062,1200033,10000198,'',3000083,'2003-06-27 00:00:00',3000083,'2003-06-27 00:00:00'),(3000035,'Lead for Company for  HBO Pvt Ltd','CMPL',2000063,10000063,1200034,10000199,'',3000085,'2003-06-28 00:00:00',3000085,'2003-06-28 00:00:00'),(3000036,'Lead for Company for  Xfinity Cables','CMPL',2000064,10000064,1200035,10000200,'',3000087,'1999-11-09 00:00:00',3000087,'1999-11-09 00:00:00'),(3000037,'Lead for Company for  FedEx','OPEN',2000065,10000065,1200036,10000201,'',3000090,'1999-11-10 00:00:00',3000090,'1999-11-10 00:00:00'),(3000038,'Lead for Company for  RBS','OPEN',2000066,10000066,1200037,10000202,'',3000092,'1999-11-11 00:00:00',3000092,'1999-11-11 00:00:00'),(3000039,'Lead for Company for  Ciitizen','OPEN',2000067,10000067,1200038,10000203,'',3000095,'1999-11-12 00:00:00',3000095,'1999-11-12 00:00:00'),(3000040,'Lead for Company for  Star','OPEN',2000068,10000068,1200039,10000204,'',3000097,'2003-06-23 00:00:00',3000097,'2003-06-23 00:00:00'),(3000041,'Lead for Company for  Stop and Shop','INPR',2000069,10000069,1200040,10000205,'',3000099,'2003-06-24 00:00:00',3000099,'2003-06-24 00:00:00'),(3000042,'Lead for Company for  Apple','INPR',2000070,10000070,1200041,10000206,'',3000102,'2003-06-25 00:00:00',3000102,'2003-06-25 00:00:00'),(3000043,'Lead for Company for  Lenova','INPR',2000071,10000071,1200042,10000207,'',3000104,'2003-06-26 00:00:00',3000104,'2003-06-26 00:00:00'),(3000044,'Lead for Company for  Philips','INPR',2000072,10000072,1200043,10000208,'',3000107,'2003-06-27 00:00:00',3000107,'2003-06-27 00:00:00'),(3000045,'Lead for Company for  Onida','WORK',2000073,10000073,1200044,10000209,'',3000109,'2003-06-28 00:00:00',3000109,'2003-06-28 00:00:00'),(3000046,'Lead for Company for  HBO','WORK',2000074,10000074,1200045,10000210,'',3000111,'1999-11-09 00:00:00',3000111,'1999-11-09 00:00:00'),(3000047,'Lead for Company for  Xfinity','WORK',2000075,10000075,1200046,10000211,'',3000114,'1999-11-10 00:00:00',3000114,'1999-11-10 00:00:00'),(3000048,'Lead for Company for  Start Health','WORK',2000076,10000076,1200047,10000212,'',3000116,'1999-11-11 00:00:00',3000116,'1999-11-11 00:00:00'),(3000049,'Lead for Company for  Royal Insurance','WORK',2000077,10000077,1200048,10000213,'',3000119,'1999-11-12 00:00:00',3000119,'1999-11-12 00:00:00'),(3000050,'Lead for Company for  Putnam corporation 1','CMPL',2000078,10000078,1200049,10000214,'',3000121,'2003-06-23 00:00:00',3000121,'2003-06-23 00:00:00'),(3000051,'Lead for Company for  Bosch enerprises 2','CMPL',2000079,10000079,1200050,10000215,'',3000124,'2003-06-24 00:00:00',3000124,'2003-06-24 00:00:00'),(3000052,'Lead for Company for  Ariel Pvt Ltd 4','CMPL',2000080,10000080,1200051,10000216,'',3000126,'2003-06-25 00:00:00',3000126,'2003-06-25 00:00:00'),(3000053,'Lead for Company for  Whirlpool Electronics 2','CMPL',2000081,10000081,1200052,10000217,'',3000128,'2003-06-26 00:00:00',3000128,'2003-06-26 00:00:00'),(3000054,'Lead for Company for  FedEx','CMPL',2000082,10000082,1200053,10000218,'',3000131,'2003-06-27 00:00:00',3000131,'2003-06-27 00:00:00'),(3000055,'Lead for Company for  RBS','OPEN',2000083,10000083,1200054,10000219,'',3000133,'2003-06-28 00:00:00',3000133,'2003-06-28 00:00:00'),(3000056,'Lead for Company for  Ciitizen','OPEN',2000084,10000084,1200055,10000220,'',3000136,'1999-11-09 00:00:00',3000136,'1999-11-09 00:00:00'),(3000057,'Lead for Company for  Star','OPEN',2000085,10000085,1200056,10000221,'',3000138,'1999-11-10 00:00:00',3000138,'1999-11-10 00:00:00'),(3000058,'Lead for Company for  Stop and Shop','OPEN',2000086,10000086,1200057,10000222,'',3000140,'1999-11-11 00:00:00',3000140,'1999-11-11 00:00:00'),(3000059,'Lead for Company for  Apple','INPR',2000087,10000087,1200058,10000223,'',3000143,'1999-11-12 00:00:00',3000143,'1999-11-12 00:00:00'),(3000060,'Lead for Company for  Lenova','INPR',2000088,10000088,1200059,10000224,'',3000145,'2003-06-23 00:00:00',3000145,'2003-06-23 00:00:00'),(3000061,'Lead for Company for  Philips','INPR',2000089,10000089,1200060,10000225,'',3000148,'2003-06-24 00:00:00',3000148,'2003-06-24 00:00:00'),(3000062,'Lead for Company for  Onida','INPR',2000090,10000090,1200061,10000226,'',3000150,'2003-06-25 00:00:00',3000150,'2003-06-25 00:00:00'),(3000063,'Lead for Company for  HBO','WORK',2000091,10000091,1200062,10000227,'',3000153,'2003-06-26 00:00:00',3000153,'2003-06-26 00:00:00'),(3000064,'Lead for Company for  Xfinity','WORK',2000092,10000092,1200063,10000228,'',3000155,'2003-06-27 00:00:00',3000155,'2003-06-27 00:00:00'),(3000065,'Lead for Company for  Start Health','WORK',2000093,10000093,1200064,10000229,'',3000157,'2003-06-28 00:00:00',3000157,'2003-06-28 00:00:00'),(3000066,'Lead for Company for  Royal Insurance','WORK',2000094,10000094,1200065,10000230,'',3000160,'2003-06-29 00:00:00',3000160,'2003-06-29 00:00:00'),(3000067,'Lead for Company for  Rebecca','INPR',2000095,10000095,1200066,10000231,'',3000162,'2003-06-30 00:00:00',3000162,'2003-06-30 00:00:00'),(3000068,'Lead for Company for  Pizza Hut','CMPL',2000096,10000096,1200067,10000232,'',3000165,'2003-07-01 00:00:00',3000165,'2003-07-01 00:00:00'),(3000069,'Lead for Company for  KFC','CMPL',2000097,10000097,1200068,10000233,'',3000167,'2003-06-27 00:00:00',3000167,'2003-06-27 00:00:00'),(3000070,'Lead for Company for  Boston Hospital','CMPL',2000098,10000098,1200069,10000234,'',3000169,'2003-06-28 00:00:00',3000169,'2003-06-28 00:00:00'),(3000071,'Lead for Company for  Cipla','CMPL',2000099,10000099,1200070,10000235,'',3000172,'2003-06-29 00:00:00',3000172,'2003-06-29 00:00:00'),(3000072,'Lead for Company for  McDonald','CMPL',2000100,10000100,1200071,10000236,'',3000174,'2003-06-30 00:00:00',3000174,'2003-06-30 00:00:00'),(3000073,'Lead for Company for  Logica','OPEN',2000101,10000101,1200072,10000237,'',3000177,'2003-07-01 00:00:00',3000177,'2003-07-01 00:00:00'),(3000074,'Lead for Company for  Casio','OPEN',2000102,10000102,1200073,10000238,'',3000179,'2003-07-02 00:00:00',3000179,'2003-07-02 00:00:00'),(3000075,'Lead for Company for  OnePlus','OPEN',2000103,10000103,1200074,10000239,'',3000181,'2003-07-03 00:00:00',3000181,'2003-07-03 00:00:00'),(3000076,'Lead for Company for  Tmobile','OPEN',2000104,10000104,1200075,10000240,'',3000184,'2003-07-04 00:00:00',3000184,'2003-07-04 00:00:00'),(3000077,'Lead for Company for  Lyca','INPR',2000105,10000105,1200076,10000241,'',3000186,'2003-07-05 00:00:00',3000186,'2003-07-05 00:00:00'),(3000078,'Lead for Company for  Reliance','INPR',2000106,10000106,1200077,10000242,'',3000189,'2003-07-06 00:00:00',3000189,'2003-07-06 00:00:00'),(3000079,'Lead for Company for  Enterprise','INPR',2000107,10000107,1200078,10000243,'',3000191,'2003-07-07 00:00:00',3000191,'2003-07-07 00:00:00'),(3000080,'Lead for Company for  Gmobile','INPR',2000108,10000108,1200079,10000244,'',3000194,'2009-05-21 00:00:00',3000194,'2009-05-21 00:00:00'),(3000081,'Lead for Company for  AMC','WORK',2000109,10000109,1200080,10000245,'',3000196,'2009-05-22 00:00:00',3000196,'2009-05-22 00:00:00'),(3000082,'Lead for Company for  BAC ','WORK',2000110,10000110,1200081,10000246,'',3000198,'2009-05-23 00:00:00',3000198,'2009-05-23 00:00:00'),(3000083,'Lead for Company for  MTR','WORK',2000111,10000111,1200082,10000247,'',3000201,'2009-05-24 00:00:00',3000201,'2009-05-24 00:00:00'),(3000084,'Lead for Company for  Shakthi corporations','WORK',2000112,10000112,1200083,10000248,'',3000203,'2009-05-25 00:00:00',3000203,'2009-05-25 00:00:00'),(3000085,'Lead for Company for  Tide','WORK',2000113,10000113,1200084,10000249,'',3000206,'2009-05-26 00:00:00',3000206,'2009-05-26 00:00:00'),(3000086,'Lead for Company for  KTR','CMPL',2000114,10000114,1200085,10000250,'',3000208,'2009-05-27 00:00:00',3000208,'2009-05-27 00:00:00'),(3000087,'Lead for Company for  ICICI','CMPL',2000115,10000115,1200086,10000251,'',3000210,'2009-05-28 00:00:00',3000210,'2009-05-28 00:00:00'),(3000088,'Lead for Company for  Capital One','CMPL',2000116,10000116,1200087,10000252,'',3000213,'2009-05-29 00:00:00',3000213,'2009-05-29 00:00:00'),(3000089,'Lead for Company for  Santander','CMPL',2000117,10000117,1200088,10000253,'',3000215,'2009-05-30 00:00:00',3000215,'2009-05-30 00:00:00'),(3000090,'Lead for Company for  Putnam corporation','CMPL',2000118,10000118,1200089,10000254,'',3000218,'2009-05-31 00:00:00',3000218,'2009-05-31 00:00:00'),(3000091,'Lead for Company for  Bosch enerprises','OPEN',2000119,10000119,1200090,10000255,'',3000220,'2012-09-01 00:00:00',3000220,'2012-09-01 00:00:00'),(3000092,'Lead for Company for  Ariel Pvt Ltd','OPEN',2000120,10000120,1200091,10000256,'',3000222,'2012-09-02 00:00:00',3000222,'2012-09-02 00:00:00'),(3000093,'Lead for Company for  Whirlpool Electronics','OPEN',2000121,10000121,1200092,10000257,'',3000225,'2012-09-03 00:00:00',3000225,'2012-09-03 00:00:00'),(3000094,'Lead for Company for  ICICI banking solutions','OPEN',2000122,10000122,1200093,10000258,'',3000227,'2012-09-04 00:00:00',3000227,'2012-09-04 00:00:00'),(3000095,'Lead for Company for  Capital One Invesments','INPR',2000123,10000123,1200094,10000259,'',3000230,'2012-09-05 00:00:00',3000230,'2012-09-05 00:00:00'),(3000096,'Lead for Company for  Santander Online','INPR',2000124,10000124,1200095,10000260,'',3000232,'2012-09-06 00:00:00',3000232,'2012-09-06 00:00:00'),(3000097,'Lead for Company for  Bank of America Online','INPR',2000125,10000125,1200096,10000261,'',3000235,'2012-09-07 00:00:00',3000235,'2012-09-07 00:00:00'),(3000098,'Lead for Company for  Walmart Shops and Hotels','INPR',2000126,10000126,1200097,10000262,'',3000237,'2012-09-08 00:00:00',3000237,'2012-09-08 00:00:00'),(3000099,'Lead for Company for  Cosco Pvt ltd','WORK',2000127,10000127,1200098,10000263,'',3000239,'2012-09-09 00:00:00',3000239,'2012-09-09 00:00:00'),(3000100,'Lead for Company for  Sony electricals','WORK',2000128,10000128,1200099,10000264,'',3000242,'2012-09-10 00:00:00',3000242,'2012-09-10 00:00:00'),(3000101,'Lead for Company for  Star','WORK',2000129,10000129,1200056,10000221,'',3000244,'2012-09-11 00:00:00',3000244,'2012-09-11 00:00:00'),(3000102,'Lead for Company for  Stop and Shop','WORK',2000130,10000130,1200057,10000222,'',3000247,'2012-09-12 00:00:00',3000247,'2012-09-12 00:00:00'),(3000103,'Lead for Company for  Apple','WORK',2000131,10000131,1200058,10000223,'',3000249,'1999-11-12 00:00:00',3000249,'1999-11-12 00:00:00'),(3000104,'Lead for Company for  Lenova','CMPL',2000132,10000132,1200059,10000224,'',3000251,'1999-11-13 00:00:00',3000251,'1999-11-13 00:00:00'),(3000105,'Lead for Company for  Philips','CMPL',2000133,10000133,1200060,10000225,'',3000254,'1999-11-14 00:00:00',3000254,'1999-11-14 00:00:00'),(3000106,'Lead for Company for  Onida','CMPL',2000134,10000134,1200061,10000226,'',3000256,'1999-11-15 00:00:00',3000256,'1999-11-15 00:00:00'),(3000107,'Lead for Company for  HBO','CMPL',2000029,10000029,1200062,10000227,'',3000259,'1999-11-16 00:00:00',3000259,'1999-11-16 00:00:00'),(3000108,'Lead for Company for  Xfinity','CMPL',2000030,10000030,1200063,10000228,'',3000261,'1999-11-17 00:00:00',3000261,'1999-11-17 00:00:00'),(3000109,'Lead for Company for  Start Health','OPEN',2000031,10000031,1200064,10000229,'',3000264,'1999-11-18 00:00:00',3000264,'1999-11-18 00:00:00'),(3000110,'Lead for Company for  Royal Insurance','OPEN',2000032,10000032,1200065,10000230,'',3000266,'1999-11-19 00:00:00',3000266,'1999-11-19 00:00:00'),(3000111,'Lead for Company for  Rebecca','OPEN',2000033,10000033,1200066,10000231,'',3000251,'2003-07-03 00:00:00',3000251,'2003-07-03 00:00:00'),(3000112,'Lead for Company for  Pizza Hut','OPEN',2000034,10000034,1200067,10000232,'',3000254,'2003-07-04 00:00:00',3000254,'2003-07-04 00:00:00'),(3000113,'Lead for Company for  KFC','INPR',2000035,10000035,1200068,10000233,'',3000256,'2003-07-05 00:00:00',3000256,'2003-07-05 00:00:00'),(3000114,'Lead for Company for  Boston Hospital','INPR',2000036,10000036,1200069,10000234,'',3000259,'2003-07-06 00:00:00',3000259,'2003-07-06 00:00:00'),(3000115,'Lead for Company for  Goodwin Hospital','INPR',2000037,10000037,1200025,10000190,'',3000261,'2003-07-07 00:00:00',3000261,'2003-07-07 00:00:00'),(3000116,'Lead for Company for  CentrePlace','INPR',2000038,10000038,1200026,10000191,'',3000264,'2003-07-08 00:00:00',3000264,'2003-07-08 00:00:00');
/*!40000 ALTER TABLE `lead` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger LeadHistory
before update on lead
for each row
begin
-- select @maxvalue=max(l.sequenceNumber) from lead l where l.LeadID=old.LeadID;
-- set @seq=@maxvalue+1;
Insert into leadhistory(leadid,eventname,oldvalue,newvalue) 
values(old.LeadID,'LeadStatusChanged',Old.leadstatus,new.leadstatus);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `leadhistory`
--

DROP TABLE IF EXISTS `leadhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leadhistory` (
  `LeadID` int(11) NOT NULL,
  `SequenceNumber` int(3) NOT NULL AUTO_INCREMENT,
  `EventName` char(30) DEFAULT NULL,
  `OldValue` char(20) NOT NULL,
  `NewValue` char(20) DEFAULT NULL,
  `Description` char(20) DEFAULT NULL,
  PRIMARY KEY (`SequenceNumber`,`LeadID`),
  KEY `FKLeadHistoryLead` (`LeadID`),
  CONSTRAINT `FKLeadHistoryLead` FOREIGN KEY (`LeadID`) REFERENCES `lead` (`LeadID`),
  CONSTRAINT `LeadHistoryLead` FOREIGN KEY (`LeadID`) REFERENCES `lead` (`LeadID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leadhistory`
--

LOCK TABLES `leadhistory` WRITE;
/*!40000 ALTER TABLE `leadhistory` DISABLE KEYS */;
INSERT INTO `leadhistory` VALUES (3000067,1,'LeadStatusChanged','WORK','INPR',NULL),(3000012,2,'LeadStatusChanged','WORK','CMPL',NULL);
/*!40000 ALTER TABLE `leadhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `leadview`
--

DROP TABLE IF EXISTS `leadview`;
/*!50001 DROP VIEW IF EXISTS `leadview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `leadview` AS SELECT 
 1 AS `LeadID`,
 1 AS `LeadDescription`,
 1 AS `Status`,
 1 AS `ContactName`,
 1 AS `CreatedOn`,
 1 AS `CreatedBy`,
 1 AS `Companyname`,
 1 AS `BusinessGroupName`,
 1 AS `CustomerType`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `name`
--

DROP TABLE IF EXISTS `name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `name` (
  `BusinessObjectID` int(11) NOT NULL,
  `Initials` char(5) DEFAULT NULL,
  `Prefix` char(5) DEFAULT NULL,
  `FirstName` char(20) DEFAULT NULL,
  `MiddleName` char(20) DEFAULT NULL,
  `LastName` char(20) DEFAULT NULL,
  `Suffix` char(5) DEFAULT NULL,
  PRIMARY KEY (`BusinessObjectID`),
  CONSTRAINT `FKNameBusinessObject` FOREIGN KEY (`BusinessObjectID`) REFERENCES `businessobject` (`BusinessObjectID`),
  CONSTRAINT `has Name` FOREIGN KEY (`BusinessObjectID`) REFERENCES `businessobject` (`BusinessObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `name`
--

LOCK TABLES `name` WRITE;
/*!40000 ALTER TABLE `name` DISABLE KEYS */;
INSERT INTO `name` VALUES (10000001,'','Mr','Adam','','Abraham',NULL),(10000002,'','Mr','Adrian','','Allan',NULL),(10000003,'','Mr','Alan','','Alsop',NULL),(10000004,'','Mr','Alexander','','Anderson',NULL),(10000005,'','Mr','Andrew','','Arnold',NULL),(10000006,'','Mr','Anthony','','Avery',NULL),(10000007,'','Mr','Austin','','Bailey',NULL),(10000008,'','Mr','Benjamin','','Baker',NULL),(10000009,'','Mr','Blake','','Ball',NULL),(10000010,'','Mr','Boris','','Bell',NULL),(10000011,'','Mr','Brandon','','Berry',NULL),(10000012,'','Mr','Brian','','Black',NULL),(10000013,'','Mr','Cameron','','Blake',NULL),(10000014,'','Mr','Carl','','Bond',NULL),(10000015,'','Mr','Charles','','Bower',NULL),(10000016,'','Mr','Christian','','Brown',NULL),(10000017,'','Mr','Christopher','','Buckland',NULL),(10000018,'','Mr','Colin','','Burgess',NULL),(10000019,'','Mr','Connor','','Butler',NULL),(10000020,'','Mr','Dan','','Cameron',NULL),(10000021,'','Mr','David','','Campbell',NULL),(10000022,'','Mr','Dominic','','Carr',NULL),(10000023,'','Mr','Dylan','','Chapman',NULL),(10000024,'','Mr','Edward','','Churchill',NULL),(10000025,'','Mr','Eric','','Clark',NULL),(10000026,'','Mr','Evan','','Clarkson',NULL),(10000027,'','Mr','Frank','','Coleman',NULL),(10000028,'','Mr','Gavin','','Cornish',NULL),(10000029,'','Mr','Gordon','','Davidson',NULL),(10000030,'','Mr','Harry','','Davies',NULL),(10000031,'','Mr','Ian','','Dickens',NULL),(10000032,'','Mr','Isaac','','Dowd',NULL),(10000033,'','Mr','Jack','','Duncan',NULL),(10000034,'','Mr','Jacob','','Dyer',NULL),(10000035,'','Mr','Jake','','Edmunds',NULL),(10000036,'','Mr','James','','Ellison',NULL),(10000037,'','Mr','Jason','','Ferguson',NULL),(10000038,'','Mr','Joe','','Fisher',NULL),(10000039,'','Mr','John','','Forsyth',NULL),(10000040,'','Mr','Jonathan','','Fraser',NULL),(10000041,'','Mr','Joseph','','Gibson',NULL),(10000042,'','Mr','Joshua','','Gill',NULL),(10000043,'','Mr','Julian','','Glover',NULL),(10000044,'','Mr','Justin','','Graham',NULL),(10000045,'','Mr','Keith','','Grant',NULL),(10000046,'','Mr','Kevin','','Gray',NULL),(10000047,'','Mr','Leonard','','Greene',NULL),(10000048,'','Mr','Liam','','Hamilton',NULL),(10000049,'','Mr','Lucas','','Hardacre',NULL),(10000050,'','Mr','Luke','','Harris',NULL),(10000051,'','Mr','Matt','','Hart',NULL),(10000052,'','Mr','Max','','Hemmings',NULL),(10000053,'','Mr','Michael','','Henderson',NULL),(10000054,'','Mr','Nathan','','Hill',NULL),(10000055,'','Mr','Neil','','Hodges',NULL),(10000056,'','Mr','Nicholas','','Howard',NULL),(10000057,'','Mr','Oliver','','Hudson',NULL),(10000058,'','Mr','Owen','','Hughes',NULL),(10000059,'','Mr','Paul','','Hunter',NULL),(10000060,'','Mr','Peter','','Ince',NULL),(10000061,'','Mr','Phil','','Jackson',NULL),(10000062,'','Mr','Piers','','James',NULL),(10000063,'','Mr','Richard','','Johnston',NULL),(10000064,'','Mr','Robert','','Jones',NULL),(10000065,'','Mr','Ryan','','Kelly',NULL),(10000066,'','Mr','Sam','','Kerr',NULL),(10000067,'','Mr','Sean','','King',NULL),(10000068,'','Mr','Sebastian','','Knox',NULL),(10000069,'','Mr','Simon','','Lambert',NULL),(10000070,'','Mr','Stephen','','Langdon',NULL),(10000071,'','Mr','Steven','','Lawrence',NULL),(10000072,'','Mr','Stewart','','Lee',NULL),(10000073,'','Mr','Thomas','','Lewis',NULL),(10000074,'','Mr','Tim','','Lyman',NULL),(10000075,'','Mr','Trevor','','MacDonald',NULL),(10000076,'','Mr','Victor','','Mackay',NULL),(10000077,'','Mr','Warren','','Mackenzie',NULL),(10000078,'','Mr','William','','MacLeod',NULL),(10000079,'','Ms','Abigail','','Manning',NULL),(10000080,'','Ms','Alexandra','','Marshall',NULL),(10000081,'','Ms','Alison','','Martin',NULL),(10000082,'','Ms','Amanda','','Mathis',NULL),(10000083,'','Ms','Amelia','','May',NULL),(10000084,'','Ms','Amy','','McDonald',NULL),(10000085,'','Ms','Andrea','','McLean',NULL),(10000086,'','Ms','Angela','','McGrath',NULL),(10000087,'','Ms','Anna','','Metcalfe',NULL),(10000088,'','Ms','Anne','','Miller',NULL),(10000089,'','Ms','Audrey','','Mills',NULL),(10000090,'','Ms','Ava','','Mitchell',NULL),(10000091,'','Ms','Bella','','Morgan',NULL),(10000092,'','Ms','Bernadette','','Morrison',NULL),(10000093,'','Ms','Carol','','Murray',NULL),(10000094,'','Ms','Caroline','','Nash',NULL),(10000095,'','Ms','Carolyn','','Newman',NULL),(10000096,'','Ms','Chloe','','Nolan',NULL),(10000097,'','Ms','Claire','','North',NULL),(10000098,'','Ms','Deirdre','','Ogden',NULL),(10000099,'','Ms','Diana','','Oliver',NULL),(10000100,'','Ms','Diane','','Paige',NULL),(10000101,'','Ms','Donna','','Parr',NULL),(10000102,'','Ms','Dorothy','','Parsons',NULL),(10000103,'','Ms','Elizabeth','','Paterson',NULL),(10000104,'','Ms','Ella','','Payne',NULL),(10000105,'','Ms','Emily','','Peake',NULL),(10000106,'','Ms','Emma','','Peters',NULL),(10000107,'','Ms','Faith','','Piper',NULL),(10000108,'','Ms','Felicity','','Poole',NULL),(10000109,'','Ms','Fiona','','Powell',NULL),(10000110,'','Ms','Gabrielle','','Pullman',NULL),(10000111,'','Ms','Grace','','Quinn',NULL),(10000112,'','Ms','Hannah','','Rampling',NULL),(10000113,'','Ms','Heather','','Randall',NULL),(10000114,'','Ms','Irene','','Rees',NULL),(10000115,'','Ms','Jan','','Reid',NULL),(10000116,'','Ms','Jane','','Roberts',NULL),(10000117,'','Ms','Jasmine','','Robertson',NULL),(10000118,'','Ms','Jennifer','','Ross',NULL),(10000119,'','Ms','Jessica','','Russell',NULL),(10000120,'','Ms','Joan','','Rutherford',NULL),(10000121,'','Ms','Joanne','','Sanderson',NULL),(10000122,'','Ms','Julia','','Scott',NULL),(10000123,'','Ms','Karen','','Sharp',NULL),(10000124,'','Ms','Katherine','','Short',NULL),(10000125,'','Ms','Kimberly','','Simpson',NULL),(10000126,'','Ms','Kylie','','Skinner',NULL),(10000127,'','Ms','Lauren','','Slater',NULL),(10000128,'','Ms','Leah','','Smith',NULL),(10000129,'','Ms','Lillian','','Springer',NULL),(10000130,'','Ms','Lily','','Stewart',NULL),(10000131,'','Ms','Lisa','','Sutherland',NULL),(10000132,'','Ms','Madeleine','','Taylor',NULL),(10000133,'','Ms','Maria','','Terry',NULL),(10000134,'','Ms','Mary','','Thomson',NULL),(10000135,'','Ms','Megan','','Tucker',NULL),(10000136,'','Ms','Melanie','','Turner',NULL),(10000137,'','Ms','Michelle','','Underwood',NULL),(10000138,'','Ms','Molly','','Vance',NULL),(10000139,'','Ms','Natalie','','Vaughan',NULL),(10000140,'','Ms','Nicola','','Walker',NULL),(10000141,'','Ms','Olivia','','Wallace',NULL),(10000142,'','Ms','Penelope','','Walsh',NULL),(10000143,'','Ms','Pippa','','Watson',NULL),(10000144,'','Ms','Rachel','','Welch',NULL),(10000145,'','Ms','Rebecca','','White',NULL),(10000146,'','Ms','Rose','','Wilkins',NULL),(10000147,'','Ms','Ruth','','Wilson',NULL),(10000148,'','Ms','Sally','','Wright',NULL),(10000149,'','Ms','Samantha','','Young',NULL),(10000150,'','Ms','Sarah','','Abraham',NULL),(10000151,'','Ms','Sonia','','Allan',NULL),(10000152,'','Ms','Sophie','','Alsop',NULL),(10000153,'','Ms','Stephanie','','Anderson',NULL),(10000154,'','Ms','Sue','','Arnold',NULL),(10000155,'','Ms','Theresa','','Avery',NULL),(10000156,'','Ms','Tracey','','Bailey',NULL),(10000157,'','Ms','Una','','Baker',NULL),(10000158,'','Ms','Vanessa','','Ball',NULL),(10000159,'','Ms','Victoria','','Bell',NULL),(10000160,'','Ms','Virginia','','Berry',NULL),(10000161,'','Ms','Wanda','','Black',NULL),(10000162,'','Ms','Wendy','','Blake',NULL),(10000163,'','Ms','Yvonne','','Bond',NULL),(10000164,'','Ms','Zoe','','Bower',NULL);
/*!40000 ALTER TABLE `name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunity`
--

DROP TABLE IF EXISTS `opportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunity` (
  `OpportunityID` int(11) NOT NULL AUTO_INCREMENT,
  `OpportunityDescription` varchar(50) DEFAULT NULL,
  `OpportunityStatus` char(4) DEFAULT 'OPEN',
  `ActualCloseDate` date DEFAULT NULL,
  `EstimatedCloseDate` date DEFAULT NULL,
  `ForecastRevenue` varchar(20) DEFAULT NULL,
  `ActualRevenue` varchar(20) DEFAULT NULL,
  `BusinessObjectIDCompany` int(11) NOT NULL,
  `LeadID` int(11) DEFAULT NULL,
  `PersonID` int(11) DEFAULT NULL,
  `BusinessObjectIDPerson` int(11) DEFAULT NULL,
  `CustomerID` int(15) DEFAULT NULL,
  `CreatedBy` int(7) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastModifiedBy` int(7) NOT NULL,
  `LastModifiedOn` datetime NOT NULL,
  PRIMARY KEY (`OpportunityID`),
  KEY `FKOpportunityCustomer` (`CustomerID`,`BusinessObjectIDCompany`),
  KEY `FKOpporutnityPerson` (`PersonID`,`BusinessObjectIDPerson`),
  KEY `FKOpportunityEmployeeCreatedBy` (`CreatedBy`),
  KEY `FKOpportunityEmployee` (`LastModifiedBy`),
  KEY `FKOpportunityStatus` (`OpportunityStatus`),
  CONSTRAINT `FKOpportunityCustomer` FOREIGN KEY (`CustomerID`, `BusinessObjectIDCompany`) REFERENCES `customer` (`CustomerID`, `BusinessObjectIDCompany`),
  CONSTRAINT `FKOpportunityEmployee` FOREIGN KEY (`LastModifiedBy`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `FKOpportunityEmployeeCreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `FKOpportunityStatus` FOREIGN KEY (`OpportunityStatus`) REFERENCES `status` (`StatusID`),
  CONSTRAINT `FKOpporutnityPerson` FOREIGN KEY (`PersonID`, `BusinessObjectIDPerson`) REFERENCES `person` (`PersonID`, `BusinessObjectIDPerson`)
) ENGINE=InnoDB AUTO_INCREMENT=4000121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunity`
--

LOCK TABLES `opportunity` WRITE;
/*!40000 ALTER TABLE `opportunity` DISABLE KEYS */;
INSERT INTO `opportunity` VALUES (4000001,'Opportunity for Abc','OPEN','2000-01-06','2000-01-07','3434989','3467770',10000165,0,2000029,10000029,1200000,3000006,'1999-11-06 00:00:00',3000006,'1999-11-06 00:00:00'),(4000002,'Opportunity for Putnam','OPEN','1999-12-07','1999-12-08','4567850','4865400',10000166,0,2000030,10000030,1200001,3000007,'1999-11-07 00:00:00',3000007,'1999-11-07 00:00:00'),(4000003,'Opportunity for Bosch','OPEN','1999-12-08','1999-12-09','1298881','1298881',10000167,0,2000031,10000031,1200002,3000008,'1999-11-08 00:00:00',3000008,'1999-11-08 00:00:00'),(4000004,'Opportunity for Ariel','OPEN','1999-12-09','1999-12-10','6945232','6945232',10000168,0,2000032,10000032,1200003,3000009,'1999-11-09 00:00:00',3000009,'1999-11-09 00:00:00'),(4000005,'Opportunity for Whirlpool','OPEN','1999-12-10','1999-12-11','18000000','18000000',10000169,0,2000033,10000033,1200004,3000010,'1999-11-10 00:00:00',3000010,'1999-11-10 00:00:00'),(4000006,'Opportunity for ICICI','OPEN','1999-12-11','1999-12-12','30000000','30000000',10000170,0,2000034,10000034,1200005,3000011,'1999-11-11 00:00:00',3000011,'1999-11-11 00:00:00'),(4000007,'Opportunity for Capital One','OPEN','1999-12-12','1999-12-13','3899343','3899343',10000171,0,2000035,10000035,1200006,3000012,'1999-11-12 00:00:00',3000012,'1999-11-12 00:00:00'),(4000008,'Opportunity for Santander','CLDL','2003-07-23','2003-07-24','1298881','1298881',10000172,0,2000036,10000036,1200007,3000013,'2003-06-23 00:00:00',3000013,'2003-06-23 00:00:00'),(4000009,'Opportunity for Bank of America','OPEN','2003-07-24','2003-07-25','6945232','6945232',10000173,0,2000037,10000037,1200008,3000014,'2003-06-24 00:00:00',3000014,'2003-06-24 00:00:00'),(4000010,'Opportunity for Walmart','CLDL','2003-07-25','2003-07-26','18000000','18000000',10000174,0,2000038,10000038,1200009,3000015,'2003-06-25 00:00:00',3000015,'2003-06-25 00:00:00'),(4000011,'Opportunity for Cosco','INPR','2003-07-26','2003-07-27','3434989','3467770',10000175,0,2000039,10000039,1200010,3000038,'2003-06-26 00:00:00',3000038,'2003-06-26 00:00:00'),(4000012,'Opportunity for Sony','INPR','2003-07-27','2003-07-28','4567850','4865400',10000176,0,2000040,10000040,1200011,3000039,'2003-06-27 00:00:00',3000039,'2003-06-27 00:00:00'),(4000013,'Opportunity for AIWA','INPR','2003-07-28','2003-07-29','1298881','1298881',10000177,0,2000041,10000041,1200012,3000040,'2003-06-28 00:00:00',3000040,'2003-06-28 00:00:00'),(4000014,'Opportunity for Kelvinator','INPR','2003-07-29','2003-07-30','6945232','6945232',10000178,0,2000042,10000042,1200013,3000041,'2003-06-29 00:00:00',3000041,'2003-06-29 00:00:00'),(4000015,'Opportunity for Samsung','INPR','2003-07-30','2003-07-31','15500000','20000000',10000179,0,2000043,10000043,1200014,3000042,'2003-06-30 00:00:00',3000042,'2003-06-30 00:00:00'),(4000016,'Opportunity for United Health Insurance','INCT','2003-08-01','2003-08-02','30000000','30000000',10000180,0,2000044,10000044,1200015,3000043,'2003-07-01 00:00:00',3000043,'2003-07-01 00:00:00'),(4000017,'Opportunity for ICICI Lombart','INCT','2005-03-17','2005-03-18','3899343','3899343',10000181,0,2000045,10000045,1200016,3000044,'2005-02-17 00:00:00',3000044,'2005-02-17 00:00:00'),(4000018,'Opportunity for Bharat Insurance','INCT','2005-03-18','2005-03-19','1298881','1298881',10000182,0,2000046,10000046,1200017,3000045,'2005-02-18 00:00:00',3000045,'2005-02-18 00:00:00'),(4000019,'Opportunity for XEROX','INCT','2005-03-19','2005-03-20','6945232','6945232',10000183,0,2000047,10000047,1200018,3000046,'2005-02-19 00:00:00',3000046,'2005-02-19 00:00:00'),(4000020,'Opportunity for Packers and Moveers','INCT','2005-03-20','2005-03-21','3899343','7093707.667',10000184,0,2000048,10000048,1200019,3000047,'2005-02-20 00:00:00',3000047,'2005-02-20 00:00:00'),(4000021,'Opportunity for Landry\'s Inc. -','INCT','2005-03-21','2005-03-22','1298881','8616652.167',10000185,0,2000049,10000049,1200020,3000048,'2005-02-21 00:00:00',3000048,'2005-02-21 00:00:00'),(4000022,'Opportunity for AT and T','INCT','2005-03-22','2005-03-23','6945232','10139596.67',10000186,0,2000050,10000050,1200021,3000049,'2005-02-22 00:00:00',3000049,'2005-02-22 00:00:00'),(4000023,'Opportunity for Tesco','CLDW','2005-03-23','2005-03-24','3899343','11662541.17',10000187,0,2000051,10000051,1200022,3000050,'2005-02-23 00:00:00',3000050,'2005-02-23 00:00:00'),(4000024,'Opportunity for Ranbaxy','CLDW','2005-03-24','2005-03-25','3434989','3467770',10000188,0,2000052,10000052,1200023,3000058,'2005-02-24 00:00:00',3000058,'2005-02-24 00:00:00'),(4000025,'Opportunity for Hearltland Autmotive','CLDW','2005-03-25','2005-03-26','4567850','4865400',10000189,0,2000053,10000053,1200024,3000061,'2005-02-25 00:00:00',3000061,'2005-02-25 00:00:00'),(4000026,'Opportunity for Goodwin Hospital','CLDW','1999-12-09','1999-12-10','1398881','1298881',10000190,0,2000054,10000054,1200025,3000063,'1999-11-09 00:00:00',3000063,'1999-11-09 00:00:00'),(4000027,'Opportunity for CentrePlace','CLDW','1999-12-10','1999-12-11','7545232','6945232',10000191,0,2000055,10000055,1200026,3000066,'1999-11-10 00:00:00',3000066,'1999-11-10 00:00:00'),(4000028,'Opportunity for Conviniencec','CLDW','1999-12-11','1999-12-12','7481369.667','6449669.667',10000192,0,2000056,10000056,1200027,3000068,'1999-11-11 00:00:00',3000068,'1999-11-11 00:00:00'),(4000029,'Opportunity for Star1','CLDW','1999-12-12','1999-12-13','8970060.667','7489585.667',10000193,0,2000057,10000057,1200028,3000070,'1999-11-12 00:00:00',3000070,'1999-11-12 00:00:00'),(4000030,'Opportunity for Boston Hospital','CLDL','2003-07-23','2003-07-24','30000000','30000000',10000194,0,2000058,10000058,1200029,3000073,'2003-06-23 00:00:00',3000073,'2003-06-23 00:00:00'),(4000031,'Opportunity for Apple1','CLDL','2003-07-24','2003-07-25','3899343','3899343',10000195,0,2000059,10000059,1200030,3000075,'2003-06-24 00:00:00',3000075,'2003-06-24 00:00:00'),(4000032,'Opportunity for Lenova1','CLDL','2003-07-25','2003-07-26','1298881','1298881',10000196,0,2000060,10000060,1200031,3000078,'2003-06-25 00:00:00',3000078,'2003-06-25 00:00:00'),(4000033,'Opportunity for Philips2','CLDL','2003-07-26','2003-07-27','6945232','6945232',10000197,0,2000061,10000061,1200032,3000080,'2003-06-26 00:00:00',3000080,'2003-06-26 00:00:00'),(4000034,'Opportunity for Onida2','CLDL','2003-07-27','2003-07-28','18000000','18000000',10000198,0,2000062,10000062,1200033,3000083,'2003-06-27 00:00:00',3000083,'2003-06-27 00:00:00'),(4000035,'Opportunity for HBO Pvt Ltd','CLDL','2003-07-28','2003-07-29','7934305','7934305',10000199,0,2000063,10000063,1200034,3000085,'2003-06-28 00:00:00',3000085,'2003-06-28 00:00:00'),(4000036,'Opportunity for Xfinity Cables','OPEN','1999-12-09','1999-12-10','1298881','1298881',10000200,0,2000064,10000064,1200035,3000087,'1999-11-09 00:00:00',3000087,'1999-11-09 00:00:00'),(4000037,'Opportunity for FedEx','INPR','1999-12-10','1999-12-11','6945232','6945232',10000201,0,2000065,10000065,1200036,3000090,'1999-11-10 00:00:00',3000090,'1999-11-10 00:00:00'),(4000038,'Opportunity for RBS','CLDL','1999-12-11','1999-12-12','1298881','1298881',10000202,0,2000066,10000066,1200037,3000092,'1999-11-11 00:00:00',3000092,'1999-11-11 00:00:00'),(4000039,'Opportunity for Ciitizen','CLDW','1999-12-12','1999-12-13','6945232','6945232',10000203,0,2000067,10000067,1200038,3000095,'1999-11-12 00:00:00',3000095,'1999-11-12 00:00:00'),(4000040,'Opportunity for Star','OPEN','2003-07-23','2003-07-24','1298881','1298881',10000204,0,2000068,10000068,1200039,3000097,'2003-06-23 00:00:00',3000097,'2003-06-23 00:00:00'),(4000041,'Opportunity for Stop and Shop','INPR','2003-07-24','2003-07-25','6945232','6945232',10000205,0,2000069,10000069,1200040,3000099,'2003-06-24 00:00:00',3000099,'2003-06-24 00:00:00'),(4000042,'Opportunity for Apple','CLDL','2003-07-25','2003-07-26','1550000','1550000',10000206,0,2000070,10000070,1200041,3000102,'2003-06-25 00:00:00',3000102,'2003-06-25 00:00:00'),(4000043,'Opportunity for Lenova','CLDW','2003-07-26','2003-07-27','1298881','1298881',10000207,0,2000071,10000071,1200042,3000104,'2003-06-26 00:00:00',3000104,'2003-06-26 00:00:00'),(4000044,'Opportunity for Philips','OPEN','2003-07-27','2003-07-28','6945232','6945232',10000208,0,2000072,10000072,1200043,3000107,'2003-06-27 00:00:00',3000107,'2003-06-27 00:00:00'),(4000045,'Opportunity for Onida','INPR','2003-07-28','2003-07-29','1298881','1298881',10000209,0,2000073,10000073,1200044,3000109,'2003-06-28 00:00:00',3000109,'2003-06-28 00:00:00'),(4000046,'Opportunity for HBO','CLDL','1999-12-09','1999-12-10','6945232','6945232',10000210,0,2000074,10000074,1200045,3000111,'1999-11-09 00:00:00',3000111,'1999-11-09 00:00:00'),(4000047,'Opportunity for Xfinity','CLDW','1999-12-10','1999-12-11','1298881','1298881',10000211,0,2000075,10000075,1200046,3000114,'1999-11-10 00:00:00',3000114,'1999-11-10 00:00:00'),(4000048,'Opportunity for Start Health','OPEN','1999-12-11','1999-12-12','6945232','6945232',10000212,0,2000076,10000076,1200047,3000116,'1999-11-11 00:00:00',3000116,'1999-11-11 00:00:00'),(4000049,'Opportunity for Royal Insurance','OPEN','1999-12-12','1999-12-13','15500000','20000000',10000213,0,2000077,10000077,1200048,3000119,'1999-11-12 00:00:00',3000119,'1999-11-12 00:00:00'),(4000050,'Opportunity for Putnam corporation 1','INPR','2003-07-23','2003-07-24','15500000','15500000',10000214,0,2000078,10000078,1200049,3000121,'2003-06-23 00:00:00',3000121,'2003-06-23 00:00:00'),(4000051,'Opportunity for Bosch enerprises 2','CLDL','2003-07-24','2003-07-25','30000000','30000000',10000215,0,2000079,10000079,1200050,3000124,'2003-06-24 00:00:00',3000124,'2003-06-24 00:00:00'),(4000052,'Opportunity for Ariel Pvt Ltd 4','CLDW','2003-07-25','2003-07-26','3899343','3899343',10000216,0,2000080,10000080,1200051,3000126,'2003-06-25 00:00:00',3000126,'2003-06-25 00:00:00'),(4000053,'Opportunity for Whirlpool Electronics 2','OPEN','2003-07-26','2003-07-27','1298881','1298881',10000217,0,2000081,10000081,1200052,3000128,'2003-06-26 00:00:00',3000128,'2003-06-26 00:00:00'),(4000054,'Opportunity for FedEx','INPR','2003-07-27','2003-07-28','6945232','6945232',10000218,0,2000082,10000082,1200053,3000131,'2003-06-27 00:00:00',3000131,'2003-06-27 00:00:00'),(4000055,'Opportunity for RBS','CLDL','2003-07-28','2003-07-29','3899343','3899343',10000219,0,2000083,10000083,1200054,3000133,'2003-06-28 00:00:00',3000133,'2003-06-28 00:00:00'),(4000056,'Opportunity for Ciitizen','CLDW','1999-12-09','1999-12-10','1298881','1298881',10000220,0,2000084,10000084,1200055,3000136,'1999-11-09 00:00:00',3000136,'1999-11-09 00:00:00'),(4000057,'Opportunity for Star','OPEN','1999-12-10','1999-12-11','6945232','6945232',10000221,0,2000085,10000085,1200056,3000138,'1999-11-10 00:00:00',3000138,'1999-11-10 00:00:00'),(4000058,'Opportunity for Stop and Shop','INPR','1999-12-11','1999-12-12','3899343','3899343',10000222,0,2000086,10000086,1200057,3000140,'1999-11-11 00:00:00',3000140,'1999-11-11 00:00:00'),(4000059,'Opportunity for Apple','CLDL','1999-12-12','1999-12-13','3434989','3434989',10000223,0,2000087,10000087,1200058,3000143,'1999-11-12 00:00:00',3000143,'1999-11-12 00:00:00'),(4000060,'Opportunity for Lenova','CLDW','2003-07-23','2003-07-24','4567850','4567850',10000224,0,2000088,10000088,1200059,3000145,'2003-06-23 00:00:00',3000145,'2003-06-23 00:00:00'),(4000061,'Opportunity for Philips','OPEN','2003-07-24','2003-07-25','1398881','1398881',10000225,0,2000089,10000089,1200060,3000148,'2003-06-24 00:00:00',3000148,'2003-06-24 00:00:00'),(4000062,'Opportunity for Onida','OPEN','2003-07-25','2003-07-26','7545232','7545232',10000226,0,2000090,10000090,1200061,3000150,'2003-06-25 00:00:00',3000150,'2003-06-25 00:00:00'),(4000063,'Opportunity for HBO','INPR','2003-07-26','2003-07-27','15500000','15500000',10000227,0,2000091,10000091,1200062,3000153,'2003-06-26 00:00:00',3000153,'2003-06-26 00:00:00'),(4000064,'Opportunity for Xfinity','CLDL','2003-07-27','2003-07-28','30000000','30000000',10000228,0,2000092,10000092,1200063,3000155,'2003-06-27 00:00:00',3000155,'2003-06-27 00:00:00'),(4000065,'Opportunity for Start Health','CLDW','2003-07-28','2003-07-29','3899343','3899343',10000229,0,2000093,10000093,1200064,3000157,'2003-06-28 00:00:00',3000157,'2003-06-28 00:00:00'),(4000066,'Opportunity for Royal Insurance','OPEN','2003-07-29','2003-07-30','1298881','1298881',10000230,0,2000094,10000094,1200065,3000160,'2003-06-29 00:00:00',3000160,'2003-06-29 00:00:00'),(4000067,'Opportunity for Rebecca','INPR','2003-07-30','2003-07-31','6945232','6945232',10000231,0,2000095,10000095,1200066,3000162,'2003-06-30 00:00:00',3000162,'2003-06-30 00:00:00'),(4000068,'Opportunity for Pizza Hut','CLDL','2003-08-01','2003-08-02','3899343','3899343',10000232,0,2000096,10000096,1200067,3000165,'2003-07-01 00:00:00',3000165,'2003-07-01 00:00:00'),(4000069,'Opportunity for KFC','CLDW','2003-07-27','2003-07-28','1298881','1298881',10000233,0,2000097,10000097,1200068,3000167,'2003-06-27 00:00:00',3000167,'2003-06-27 00:00:00'),(4000070,'Opportunity for Boston Hospital','OPEN','2003-07-28','2003-07-29','6945232','6945232',10000234,0,2000098,10000098,1200069,3000169,'2003-06-28 00:00:00',3000169,'2003-06-28 00:00:00'),(4000071,'Opportunity for Cipla','INPR','2003-07-29','2003-07-30','3899343','3899343',10000235,0,2000099,10000099,1200070,3000172,'2003-06-29 00:00:00',3000172,'2003-06-29 00:00:00'),(4000072,'Opportunity for McDonald','CLDL','2003-07-30','2003-07-31','3434989','3434989',10000236,0,2000100,10000100,1200071,3000174,'2003-06-30 00:00:00',3000174,'2003-06-30 00:00:00'),(4000073,'Opportunity for Logica','CLDW','2003-08-01','2003-08-02','4567850','4567850',10000237,0,2000101,10000101,1200072,3000177,'2003-07-01 00:00:00',3000177,'2003-07-01 00:00:00'),(4000074,'Opportunity for Casio','OPEN','2003-08-02','2003-08-03','1398881','1398881',10000238,0,2000102,10000102,1200073,3000179,'2003-07-02 00:00:00',3000179,'2003-07-02 00:00:00'),(4000075,'Opportunity for OnePlus','OPEN','2003-08-03','2003-08-04','7545232','7545232',10000239,0,2000103,10000103,1200074,3000181,'2003-07-03 00:00:00',3000181,'2003-07-03 00:00:00'),(4000076,'Opportunity for Tmobile','INPR','2003-08-04','2003-08-05','15500000','15500000',10000240,0,2000104,10000104,1200075,3000184,'2003-07-04 00:00:00',3000184,'2003-07-04 00:00:00'),(4000077,'Opportunity for Lyca','CLDL','2003-08-05','2003-08-06','30000000','30000000',10000241,0,2000105,10000105,1200076,3000186,'2003-07-05 00:00:00',3000186,'2003-07-05 00:00:00'),(4000078,'Opportunity for Reliance','CLDW','2003-08-06','2003-08-07','3899343','3899343',10000242,0,2000106,10000106,1200077,3000189,'2003-07-06 00:00:00',3000189,'2003-07-06 00:00:00'),(4000079,'Opportunity for Enterprise','OPEN','2003-08-07','2003-08-08','1298881','1298881',10000243,0,2000107,10000107,1200078,3000191,'2003-07-07 00:00:00',3000191,'2003-07-07 00:00:00'),(4000080,'Opportunity for Gmobile','INPR','2009-06-21','2009-06-22','6945232','6945232',10000244,0,2000108,10000108,1200079,3000194,'2009-05-21 00:00:00',3000194,'2009-05-21 00:00:00'),(4000081,'Opportunity for AMC','CLDL','2009-06-22','2009-06-23','3899343','3899343',10000245,0,2000109,10000109,1200080,3000196,'2009-05-22 00:00:00',3000196,'2009-05-22 00:00:00'),(4000082,'Opportunity for BAC ','CLDW','2009-06-23','2009-06-24','1298881','1298881',10000246,0,2000110,10000110,1200081,3000198,'2009-05-23 00:00:00',3000198,'2009-05-23 00:00:00'),(4000083,'Opportunity for MTR','OPEN','2009-06-24','2009-06-25','6945232','6945232',10000247,0,2000111,10000111,1200082,3000201,'2009-05-24 00:00:00',3000201,'2009-05-24 00:00:00'),(4000084,'Opportunity for Shakthi corporations','INPR','2009-06-25','2009-06-26','3899343','3899343',10000248,0,2000112,10000112,1200083,3000203,'2009-05-25 00:00:00',3000203,'2009-05-25 00:00:00'),(4000085,'Opportunity for Tide','CLDL','2009-06-26','2009-06-27','3434989','3434989',10000249,0,2000113,10000113,1200084,3000206,'2009-05-26 00:00:00',3000206,'2009-05-26 00:00:00'),(4000086,'Opportunity for KTR','CLDW','2009-06-27','2009-06-28','4567850','4567850',10000250,0,2000114,10000114,1200085,3000208,'2009-05-27 00:00:00',3000208,'2009-05-27 00:00:00'),(4000087,'Opportunity for ICICI','OPEN','2009-06-28','2009-06-29','1398881','1398881',10000251,0,2000115,10000115,1200086,3000210,'2009-05-28 00:00:00',3000210,'2009-05-28 00:00:00'),(4000088,'Opportunity for Capital One','OPEN','2009-06-29','2009-06-30','7545232','7545232',10000252,0,2000116,10000116,1200087,3000213,'2009-05-29 00:00:00',3000213,'2009-05-29 00:00:00'),(4000089,'Opportunity for Santander','INPR','2009-06-30','2009-07-01','15500000','15500000',10000253,0,2000117,10000117,1200088,3000215,'2009-05-30 00:00:00',3000215,'2009-05-30 00:00:00'),(4000090,'Opportunity for Putnam corporation','CLDL','2009-07-01','2009-07-02','30000000','30000000',10000254,0,2000118,10000118,1200089,3000218,'2009-05-31 00:00:00',3000218,'2009-05-31 00:00:00'),(4000091,'Opportunity for Bosch enerprises','CLDW','2012-10-01','2012-10-02','3899343','3899343',10000255,0,2000119,10000119,1200090,3000220,'2012-09-01 00:00:00',3000220,'2012-09-01 00:00:00'),(4000092,'Opportunity for Ariel Pvt Ltd','OPEN','2012-10-02','2012-10-03','1298881','1298881',10000256,0,2000120,10000120,1200091,3000222,'2012-09-02 00:00:00',3000222,'2012-09-02 00:00:00'),(4000093,'Opportunity for Whirlpool Electronics','INPR','2012-10-03','2012-10-04','6945232','6945232',10000257,0,2000121,10000121,1200092,3000225,'2012-09-03 00:00:00',3000225,'2012-09-03 00:00:00'),(4000094,'Opportunity for ICICI banking solutions','CLDL','2012-10-04','2012-10-05','3899343','3899343',10000258,0,2000122,10000122,1200093,3000227,'2012-09-04 00:00:00',3000227,'2012-09-04 00:00:00'),(4000095,'Opportunity for Capital One Invesments','CLDW','2012-10-05','2012-10-06','1298881','1298881',10000259,0,2000123,10000123,1200094,3000230,'2012-09-05 00:00:00',3000230,'2012-09-05 00:00:00'),(4000096,'Opportunity for Santander Online','OPEN','2012-10-06','2012-10-07','6945232','6945232',10000260,0,2000124,10000124,1200095,3000232,'2012-09-06 00:00:00',3000232,'2012-09-06 00:00:00'),(4000097,'Opportunity for Bank of America Online','INPR','2012-10-07','2012-10-08','3899343','3899343',10000261,0,2000125,10000125,1200096,3000235,'2012-09-07 00:00:00',3000235,'2012-09-07 00:00:00'),(4000098,'Opportunity for Walmart Shops and Hotels','CLDL','2012-10-08','2012-10-09','3434989','3434989',10000262,0,2000126,10000126,1200097,3000237,'2012-09-08 00:00:00',3000237,'2012-09-08 00:00:00'),(4000099,'Opportunity for Cosco Pvt ltd','CLDW','2012-10-09','2012-10-10','4567850','4567850',10000263,0,2000127,10000127,1200098,3000239,'2012-09-09 00:00:00',3000239,'2012-09-09 00:00:00'),(4000100,'Opportunity for Sony electricals','OPEN','2012-10-10','2012-10-11','1398881','1398881',10000264,0,2000128,10000128,1200099,3000242,'2012-09-10 00:00:00',3000242,'2012-09-10 00:00:00'),(4000101,'Opportunity for Star','OPEN','2012-10-11','2012-10-12','7545232','7545232',10000221,0,2000129,10000129,1200056,3000244,'2012-09-11 00:00:00',3000244,'2012-09-11 00:00:00'),(4000102,'Opportunity for Stop and Shop','INPR','2012-10-12','2012-10-13','7545233','7545233',10000222,0,2000130,10000130,1200057,3000247,'2012-09-12 00:00:00',3000247,'2012-09-12 00:00:00'),(4000103,'Opportunity for Apple','CLDL','1999-12-12','1999-12-13','7545234','7545234',10000223,0,2000131,10000131,1200058,3000249,'1999-11-12 00:00:00',3000249,'1999-11-12 00:00:00'),(4000104,'Opportunity for Lenova','CLDW','1999-12-13','1999-12-14','7545235','7545235',10000224,0,2000132,10000132,1200059,3000251,'1999-11-13 00:00:00',3000251,'1999-11-13 00:00:00'),(4000105,'Opportunity for Philips','OPEN','1999-12-14','1999-12-15','7545236','7545236',10000225,0,2000133,10000133,1200060,3000254,'1999-11-14 00:00:00',3000254,'1999-11-14 00:00:00'),(4000106,'Opportunity for Onida','INPR','1999-12-15','1999-12-16','7545237','7545237',10000226,0,2000134,10000134,1200061,3000256,'1999-11-15 00:00:00',3000256,'1999-11-15 00:00:00'),(4000107,'Opportunity for HBO','CLDL','1999-12-16','1999-12-17','7545238','7545238',10000227,0,2000029,10000029,1200062,3000259,'1999-11-16 00:00:00',3000259,'1999-11-16 00:00:00'),(4000108,'Opportunity for Xfinity','CLDW','1999-12-17','1999-12-18','7545239','7545239',10000228,0,2000030,10000030,1200063,3000261,'1999-11-17 00:00:00',3000261,'1999-11-17 00:00:00'),(4000109,'Opportunity for Start Health','OPEN','1999-12-18','1999-12-19','7545240','7545240',10000229,0,2000031,10000031,1200064,3000264,'1999-11-18 00:00:00',3000264,'1999-11-18 00:00:00'),(4000110,'Opportunity for Royal Insurance','INPR','1999-12-19','1999-12-20','7545241','7545241',10000230,0,2000032,10000032,1200065,3000266,'1999-11-19 00:00:00',3000266,'1999-11-19 00:00:00'),(4000111,'Opportunity for Rebecca','CLDL','2003-08-03','2003-08-04','1298881','1298881',10000231,0,2000033,10000033,1200066,3000251,'2003-07-03 00:00:00',3000251,'2003-07-03 00:00:00'),(4000112,'Opportunity for Pizza Hut','CLDW','2003-08-04','2003-08-05','1298882','1298882',10000232,0,2000034,10000034,1200067,3000254,'2003-07-04 00:00:00',3000254,'2003-07-04 00:00:00'),(4000113,'Opportunity for KFC','OPEN','2003-08-05','2003-08-06','1298883','1298883',10000233,0,2000035,10000035,1200068,3000256,'2003-07-05 00:00:00',3000256,'2003-07-05 00:00:00'),(4000114,'Opportunity for Boston Hospital','OPEN','2003-08-06','2003-08-07','1298884','1298884',10000234,0,2000036,10000036,1200069,3000259,'2003-07-06 00:00:00',3000259,'2003-07-06 00:00:00'),(4000115,'Opportunity for Goodwin Hospital','INPR','2003-08-07','2003-08-08','1298885','1298885',10000190,0,2000037,10000037,1200025,3000261,'2003-07-07 00:00:00',3000261,'2003-07-07 00:00:00'),(4000116,'Opportunity for CentrePlace','CLDL','2003-08-08','2003-08-09','1298886','1298886',10000191,0,2000038,10000038,1200026,3000264,'2003-07-08 00:00:00',3000264,'2003-07-08 00:00:00'),(4000117,'Opportunity for Abc','CLDW','2009-06-01','2009-07-01','1298887','1298887',10000165,0,2000029,10000029,1200000,3000001,'2009-05-31 00:00:00',3000001,'2009-05-31 00:00:00'),(4000118,'Opportunity for HBO','CLDW','2012-10-01','2012-10-02','3434989','3434989',10000227,0,2000091,10000091,1200062,3000002,'2012-09-01 00:00:00',3000002,'2012-09-01 00:00:00'),(4000119,'Opportunity for Sony electricals','INPR','2016-01-04','2016-01-05','4567850','1398881',10000264,0,2000128,10000128,1200099,3000016,'2015-12-04 00:00:00',3000016,'2015-12-04 00:00:00'),(4000120,'Opportunity for Santander Online','CLDL','2009-04-07','2009-04-08','1298881','1298881',10000260,0,2000124,10000124,1200095,3000017,'2009-03-07 00:00:00',3000017,'2009-03-07 00:00:00');
/*!40000 ALTER TABLE `opportunity` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger OpportunityHistoryStatus
after update on opportunity
for each row
begin

Insert into opportunityhistory(opportunityid,eventname,oldvalue,newvalue) 
values(old.OpportunityID,'OpportunityStatusChanged',Old.opportunitystatus,new.OpportunityStatus);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `opportunityhistory`
--

DROP TABLE IF EXISTS `opportunityhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunityhistory` (
  `OpportunityID` int(11) NOT NULL,
  `SequenceNumber` int(3) NOT NULL AUTO_INCREMENT,
  `EventName` char(40) DEFAULT NULL,
  `OldValue` char(20) DEFAULT NULL,
  `NewValue` char(20) DEFAULT NULL,
  `Description` char(20) DEFAULT NULL,
  PRIMARY KEY (`SequenceNumber`,`OpportunityID`),
  KEY `FKOpportunityHistoryOpportunity` (`OpportunityID`),
  CONSTRAINT `FKOpportunityHistoryOpportunity` FOREIGN KEY (`OpportunityID`) REFERENCES `opportunity` (`OpportunityID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunityhistory`
--

LOCK TABLES `opportunityhistory` WRITE;
/*!40000 ALTER TABLE `opportunityhistory` DISABLE KEYS */;
INSERT INTO `opportunityhistory` VALUES (4000008,1,'OpportunityStatusChanged','OPEN','CLDL',NULL),(4000010,2,'OpportunityStatusChanged','INPR','CLDL',NULL),(4000010,3,'OpportunityStatusChanged','CLDL','CLDL',NULL);
/*!40000 ALTER TABLE `opportunityhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `PersonID` int(11) NOT NULL AUTO_INCREMENT,
  `DateOfBirth` date DEFAULT NULL,
  `PersonType` enum('Internal','External') DEFAULT NULL,
  `MartialStatus` enum('Single','Married') DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `BusinessObjectIDPerson` int(11) NOT NULL,
  PRIMARY KEY (`PersonID`,`BusinessObjectIDPerson`),
  UNIQUE KEY `PersonID` (`PersonID`),
  KEY `FKPersonBusinessObject` (`BusinessObjectIDPerson`),
  CONSTRAINT `FKPersonBusinessObject` FOREIGN KEY (`BusinessObjectIDPerson`) REFERENCES `businessobject` (`BusinessObjectID`),
  CONSTRAINT `is a` FOREIGN KEY (`BusinessObjectIDPerson`) REFERENCES `businessobject` (`BusinessObjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=2000165 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (2000001,'1989-09-06','Internal','Married','Male',10000001),(2000002,'1989-09-07','Internal','Single','Male',10000002),(2000003,'1989-09-08','Internal','Married','Male',10000003),(2000004,'1989-09-09','Internal','Single','Male',10000004),(2000005,'1989-09-10','Internal','Married','Male',10000005),(2000006,'1989-09-11','Internal','Single','Male',10000006),(2000007,'1989-09-12','Internal','Married','Male',10000007),(2000008,'1989-09-13','Internal','Single','Male',10000008),(2000009,'1976-12-04','Internal','Married','Male',10000009),(2000010,'1976-12-05','Internal','Single','Male',10000010),(2000011,'1976-12-06','Internal','Married','Male',10000011),(2000012,'1976-12-07','Internal','Single','Male',10000012),(2000013,'1976-12-08','Internal','Married','Male',10000013),(2000014,'1976-12-09','Internal','Single','Male',10000014),(2000015,'1976-12-10','Internal','Married','Male',10000015),(2000016,'1976-12-11','Internal','Single','Male',10000016),(2000017,'1976-12-12','Internal','Single','Male',10000017),(2000018,'1976-12-13','Internal','Single','Male',10000018),(2000019,'1976-12-14','Internal','Single','Male',10000019),(2000020,'1976-12-15','Internal','Single','Male',10000020),(2000021,'1976-12-16','Internal','Single','Male',10000021),(2000022,'1976-12-17','Internal','Single','Male',10000022),(2000023,'1976-12-18','Internal','Single','Male',10000023),(2000024,'1976-12-19','Internal','Single','Male',10000024),(2000025,'1976-12-20','Internal','Single','Male',10000025),(2000026,'1976-12-21','Internal','Single','Male',10000026),(2000027,'1976-12-22','Internal','Single','Male',10000027),(2000028,'1976-12-23','Internal','Single','Male',10000028),(2000029,'1976-12-24','External','Married','Male',10000029),(2000030,'1976-12-25','External','Married','Male',10000030),(2000031,'1976-12-26','External','Married','Male',10000031),(2000032,'1976-12-27','External','Married','Male',10000032),(2000033,'1976-12-28','External','Married','Male',10000033),(2000034,'1976-12-29','External','Married','Male',10000034),(2000035,'1986-05-07','External','Married','Male',10000035),(2000036,'1986-05-08','External','Married','Male',10000036),(2000037,'1986-05-09','External','Married','Male',10000037),(2000038,'1986-05-10','External','Married','Male',10000038),(2000039,'1986-05-11','External','Married','Male',10000039),(2000040,'1986-05-12','External','Married','Male',10000040),(2000041,'1986-05-13','External','Married','Male',10000041),(2000042,'1986-05-14','External','Single','Male',10000042),(2000043,'1986-05-15','External','Married','Male',10000043),(2000044,'1986-05-16','External','Single','Male',10000044),(2000045,'1986-05-17','External','Married','Male',10000045),(2000046,'1986-05-18','External','Married','Male',10000046),(2000047,'1986-05-19','External','Single','Male',10000047),(2000048,'1986-05-20','External','Married','Male',10000048),(2000049,'1984-01-26','External','Single','Male',10000049),(2000050,'1984-01-27','External','Married','Male',10000050),(2000051,'1984-01-28','External','Married','Male',10000051),(2000052,'1976-12-13','External','Single','Male',10000052),(2000053,'1976-12-14','External','Married','Male',10000053),(2000054,'1976-12-15','External','Single','Male',10000054),(2000055,'1976-12-16','External','Married','Male',10000055),(2000056,'1976-12-17','External','Married','Male',10000056),(2000057,'1976-12-18','External','Married','Male',10000057),(2000058,'1976-12-19','External','Married','Male',10000058),(2000059,'1976-12-20','External','Married','Male',10000059),(2000060,'1995-01-01','External','Married','Male',10000060),(2000061,'1995-01-02','External','Married','Male',10000061),(2000062,'1995-01-03','External','Married','Male',10000062),(2000063,'1995-01-04','External','Married','Male',10000063),(2000064,'1995-01-05','External','Single','Male',10000064),(2000065,'1995-01-06','External','Married','Male',10000065),(2000066,'1995-01-07','External','Married','Male',10000066),(2000067,'1995-01-08','External','Married','Male',10000067),(2000068,'1995-01-09','External','Single','Male',10000068),(2000069,'1995-01-10','External','Single','Male',10000069),(2000070,'1995-01-11','External','Single','Male',10000070),(2000071,'1995-01-12','External','Single','Male',10000071),(2000072,'1995-01-13','External','Single','Male',10000072),(2000073,'1995-01-14','External','Single','Male',10000073),(2000074,'1986-05-13','External','Single','Male',10000074),(2000075,'1986-05-14','External','Married','Male',10000075),(2000076,'1986-05-15','External','Married','Male',10000076),(2000077,'1986-05-16','External','Married','Male',10000077),(2000078,'1986-05-17','External','Married','Male',10000078),(2000079,'1986-05-18','External','Single','Female',10000079),(2000080,'1986-05-19','External','Single','Female',10000080),(2000081,'1986-05-20','External','Married','Female',10000081),(2000082,'1984-01-23','External','Single','Female',10000082),(2000083,'1984-01-24','External','Single','Female',10000083),(2000084,'1984-01-25','External','Single','Female',10000084),(2000085,'1984-01-26','External','Married','Female',10000085),(2000086,'1984-01-27','External','Single','Female',10000086),(2000087,'1984-01-28','External','Married','Female',10000087),(2000088,'1984-01-29','External','Single','Female',10000088),(2000089,'1984-01-30','External','Married','Female',10000089),(2000090,'1984-01-31','External','Single','Female',10000090),(2000091,'1984-02-01','External','Married','Female',10000091),(2000092,'1984-02-02','External','Single','Female',10000092),(2000093,'1984-02-03','External','Married','Female',10000093),(2000094,'1984-02-04','External','Single','Female',10000094),(2000095,'1984-02-05','External','Single','Female',10000095),(2000096,'1984-02-06','External','Single','Female',10000096),(2000097,'1984-02-07','External','Married','Female',10000097),(2000098,'1984-02-08','External','Single','Female',10000098),(2000099,'1984-02-09','External','Married','Female',10000099),(2000100,'1984-02-10','External','Single','Female',10000100),(2000101,'1984-02-11','External','Married','Female',10000101),(2000102,'1984-02-12','External','Single','Female',10000102),(2000103,'1984-02-13','External','Single','Female',10000103),(2000104,'1984-02-14','External','Married','Female',10000104),(2000105,'1984-02-15','External','Single','Female',10000105),(2000106,'1984-02-16','External','Married','Female',10000106),(2000107,'1984-02-17','External','Single','Female',10000107),(2000108,'1984-02-18','External','Married','Female',10000108),(2000109,'1984-02-19','External','Single','Female',10000109),(2000110,'1976-12-14','External','Married','Female',10000110),(2000111,'1976-12-15','External','Single','Female',10000111),(2000112,'1976-12-16','External','Married','Female',10000112),(2000113,'1976-12-17','External','Single','Female',10000113),(2000114,'1976-12-18','External','Married','Female',10000114),(2000115,'1976-12-19','External','Married','Female',10000115),(2000116,'1976-12-14','External','Married','Female',10000116),(2000117,'1976-12-15','External','Single','Female',10000117),(2000118,'1976-12-16','External','Single','Female',10000118),(2000119,'1976-12-17','External','Single','Female',10000119),(2000120,'1976-12-18','External','Single','Female',10000120),(2000121,'1976-12-19','External','Married','Female',10000121),(2000122,'1976-12-20','External','Single','Female',10000122),(2000123,'1976-12-21','External','Married','Female',10000123),(2000124,'1976-12-22','External','Single','Female',10000124),(2000125,'1976-12-23','External','Married','Female',10000125),(2000126,'1976-12-24','External','Single','Female',10000126),(2000127,'1976-12-25','External','Single','Female',10000127),(2000128,'1976-12-26','External','Married','Female',10000128),(2000129,'1976-12-27','External','Single','Female',10000129),(2000130,'1976-12-28','External','Married','Female',10000130),(2000131,'1976-12-29','External','Single','Female',10000131),(2000132,'1976-12-30','External','Married','Female',10000132),(2000133,'1976-12-31','External','Single','Female',10000133),(2000134,'1984-01-20','External','Married','Female',10000134),(2000135,'1984-01-21','Internal','Single','Female',10000135),(2000136,'1984-01-22','Internal','Single','Female',10000136),(2000137,'1984-01-23','Internal','Married','Female',10000137),(2000138,'1984-01-24','Internal','Single','Female',10000138),(2000139,'1984-01-25','Internal','Married','Female',10000139),(2000140,'1984-01-26','Internal','Single','Female',10000140),(2000141,'1984-01-27','Internal','Married','Female',10000141),(2000142,'1984-01-28','Internal','Single','Female',10000142),(2000143,'1984-01-29','Internal','Married','Female',10000143),(2000144,'1984-01-30','Internal','Single','Female',10000144),(2000145,'1984-01-31','Internal','Married','Female',10000145),(2000146,'1984-02-01','Internal','Single','Female',10000146),(2000147,'1984-02-02','Internal','Married','Female',10000147),(2000148,'1984-02-03','Internal','Single','Female',10000148),(2000149,'1984-02-02','Internal','Married','Female',10000149),(2000150,'1984-02-03','Internal','Single','Female',10000150),(2000151,'1995-01-01','Internal','Married','Female',10000151),(2000152,'1995-01-02','Internal','Single','Female',10000152),(2000153,'1995-01-03','Internal','Married','Female',10000153),(2000154,'1995-01-04','Internal','Single','Female',10000154),(2000155,'1995-01-05','Internal','Married','Female',10000155),(2000156,'1995-01-06','Internal','Single','Female',10000156),(2000157,'1995-01-07','Internal','Married','Female',10000157),(2000158,'1995-01-08','Internal','Single','Female',10000158),(2000159,'1995-01-09','Internal','Single','Female',10000159),(2000160,'1995-01-10','Internal','Single','Female',10000160),(2000161,'1995-01-11','Internal','Single','Female',10000161),(2000162,'1995-01-12','Internal','Single','Female',10000162),(2000163,'1995-01-13','Internal','Single','Female',10000163),(2000164,'1995-01-14','Internal','Single','Female',10000164);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone` (
  `PhoneType` enum('Business','Personal','Home') NOT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Extension` int(11) DEFAULT NULL,
  `Fax` int(11) DEFAULT NULL,
  `BusinessObjectID` int(11) NOT NULL,
  PRIMARY KEY (`PhoneType`,`BusinessObjectID`),
  KEY `FKPhoneBusinessObject` (`BusinessObjectID`),
  CONSTRAINT `FKPhoneBusinessObject` FOREIGN KEY (`BusinessObjectID`) REFERENCES `businessobject` (`BusinessObjectID`),
  CONSTRAINT `has Phone` FOREIGN KEY (`BusinessObjectID`) REFERENCES `businessobject` (`BusinessObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES ('Business','9898347474',1,NULL,10000001),('Business','9898347475',1,NULL,10000002),('Business','9898347476',1,NULL,10000003),('Business','9898347477',1,NULL,10000004),('Business','9898347478',1,NULL,10000005),('Business','9898347479',1,NULL,10000006),('Business','9898347480',1,NULL,10000007),('Business','9898347481',1,NULL,10000008),('Business','9898347482',1,NULL,10000009),('Business','6175853129',1,NULL,10000010),('Business','6175853130',1,NULL,10000011),('Business','6175853131',1,NULL,10000012),('Business','6175853132',1,NULL,10000013),('Business','6175853133',1,NULL,10000014),('Business','6175853134',1,NULL,10000015),('Business','6175853135',1,NULL,10000016),('Business','2018215645',1,NULL,10000017),('Business','2018215646',1,NULL,10000018),('Business','2018215647',1,NULL,10000019),('Business','2018215648',1,NULL,10000020),('Business','2018215649',1,NULL,10000021),('Business','2018215650',1,NULL,10000022),('Business','2018215651',1,NULL,10000023),('Business','2018215652',1,NULL,10000024),('Business','2018215653',1,NULL,10000025),('Business','2018215654',1,NULL,10000026),('Business','2018215655',1,NULL,10000027),('Business','2018215656',1,NULL,10000028),('Business','5328288973',1,NULL,10000029),('Business','5328288974',1,NULL,10000030),('Business','5328288975',1,NULL,10000031),('Business','5328288976',1,NULL,10000032),('Business','5328288977',1,NULL,10000033),('Business','5328288978',1,NULL,10000034),('Business','5328288979',1,NULL,10000035),('Business','9944375366',1,NULL,10000036),('Business','9944375367',1,NULL,10000037),('Business','9944375368',1,NULL,10000038),('Business','9944375369',1,NULL,10000039),('Business','9898347477',1,NULL,10000040),('Business','9898347477',1,NULL,10000041),('Business','9898347477',1,NULL,10000042),('Business','9898347477',1,NULL,10000043),('Business','9898347477',1,NULL,10000044),('Business','2018215649',1,NULL,10000045),('Business','2018215650',1,NULL,10000046),('Business','2018215651',1,NULL,10000047),('Business','2018215652',1,NULL,10000048),('Business','2018215653',1,NULL,10000049),('Business','2018215654',1,NULL,10000050),('Business','9898347475',1,NULL,10000051),('Business','9898347476',1,NULL,10000052),('Business','9898347477',1,NULL,10000053),('Business','9898347478',1,NULL,10000054),('Business','9898347479',1,NULL,10000055),('Business','9898347480',1,NULL,10000056),('Business','9898347481',1,NULL,10000057),('Business','9898347482',1,NULL,10000058),('Business','5328288973',1,NULL,10000059),('Business','7134848377',1,NULL,10000060),('Business','7134848378',1,NULL,10000061),('Business','7134848379',1,NULL,10000062),('Business','7134848380',1,NULL,10000063),('Business','7134848381',1,NULL,10000064),('Business','7134848382',1,NULL,10000065),('Business','7134848383',1,NULL,10000066),('Business','7134848384',1,NULL,10000067),('Business','7134848385',1,NULL,10000068),('Business','7134848386',1,NULL,10000069),('Business','7134848387',1,NULL,10000070),('Business','7134848388',1,NULL,10000071),('Business','7134848389',1,NULL,10000072),('Business','7134848390',1,NULL,10000073),('Business','7134848391',1,NULL,10000074),('Business','7134848392',1,NULL,10000075),('Business','7134848393',1,NULL,10000076),('Business','7134848394',1,NULL,10000077),('Business','7134848395',1,NULL,10000078),('Business','7134848396',1,NULL,10000079),('Business','9898347475',1,NULL,10000080),('Business','9898347476',1,NULL,10000081),('Business','9898347477',1,NULL,10000082),('Business','9898347478',1,NULL,10000083),('Business','9898347479',1,NULL,10000084),('Business','9898347480',1,NULL,10000085),('Business','9898347481',1,NULL,10000086),('Business','9898347482',1,NULL,10000087),('Business','8870298100',1,NULL,10000088),('Business','8870298100',1,NULL,10000089),('Business','8870298100',1,NULL,10000090),('Business','8870298100',1,NULL,10000091),('Business','8870298100',1,NULL,10000092),('Business','8870298100',1,NULL,10000093),('Business','8870298100',1,NULL,10000094),('Business','8870298100',1,NULL,10000095),('Business','8870298100',1,NULL,10000096),('Business','8870298100',1,NULL,10000097),('Business','5328288970',1,NULL,10000098),('Business','5328288971',1,NULL,10000099),('Business','5328288972',1,NULL,10000100),('Business','5328288973',1,NULL,10000101),('Business','5328288974',1,NULL,10000102),('Business','5328288975',1,NULL,10000103),('Business','5328288976',1,NULL,10000104),('Business','5328288977',1,NULL,10000105),('Business','5328288978',1,NULL,10000106),('Business','5328288979',1,NULL,10000107),('Business','5328288980',1,NULL,10000108),('Business','5328288981',1,NULL,10000109),('Business','5328288982',1,NULL,10000110),('Business','5328288983',1,NULL,10000111),('Business','5328288984',1,NULL,10000112),('Business','5328288985',1,NULL,10000113),('Business','5328288986',1,NULL,10000114),('Business','8870298090',1,NULL,10000115),('Business','8870298091',1,NULL,10000116),('Business','8870298092',1,NULL,10000117),('Business','8870298093',1,NULL,10000118),('Business','8870298094',1,NULL,10000119),('Business','8870298095',1,NULL,10000120),('Business','8870298096',1,NULL,10000121),('Business','8870298097',1,NULL,10000122),('Business','8870298098',1,NULL,10000123),('Business','8870298099',1,NULL,10000124),('Business','8870298100',1,NULL,10000125),('Business','8870298101',1,NULL,10000126),('Business','8870298102',1,NULL,10000127),('Business','8870298103',1,NULL,10000128),('Business','8870298104',1,NULL,10000129),('Business','8870298105',1,NULL,10000130),('Business','8870298106',1,NULL,10000131),('Business','8870298107',1,NULL,10000132),('Business','8870298108',1,NULL,10000133),('Business','8870298109',1,NULL,10000134),('Business','8870298110',1,NULL,10000135),('Business','8870298111',1,NULL,10000136),('Business','8870298112',1,NULL,10000137),('Business','8870298113',1,NULL,10000138),('Business','8870298114',1,NULL,10000139),('Business','8870298115',1,NULL,10000140),('Business','8870298116',1,NULL,10000141),('Business','8870298117',1,NULL,10000142),('Business','8870298118',1,NULL,10000143),('Business','8870298119',1,NULL,10000144),('Business','8870298120',1,NULL,10000145),('Business','8870298121',1,NULL,10000146),('Business','8870298122',1,NULL,10000147),('Business','8870298123',1,NULL,10000148),('Business','8870298124',1,NULL,10000149),('Business','8870298125',1,NULL,10000150),('Business','8870298126',1,NULL,10000151),('Business','8870298127',1,NULL,10000152),('Business','8870298128',1,NULL,10000153),('Business','7134848388',1,NULL,10000154),('Business','7134848389',1,NULL,10000155),('Business','7134848390',1,NULL,10000156),('Business','7134848391',1,NULL,10000157),('Business','7134848392',1,NULL,10000158),('Business','7134848393',1,NULL,10000159),('Business','7134848394',1,NULL,10000160),('Business','7134848395',1,NULL,10000161),('Business','7134848396',1,NULL,10000162),('Business','5328288970',1,NULL,10000163),('Business','5328288971',1,NULL,10000164),('Business','5328288972',1,NULL,10000165),('Business','8870298096',1,NULL,10000166),('Business','8870298097',1,NULL,10000167),('Business','7134848388',1,NULL,10000168),('Business','7134848389',1,NULL,10000169),('Business','7134848390',1,NULL,10000170),('Business','9898347477',1,NULL,10000171),('Business','9898347477',1,NULL,10000172),('Business','2018215649',1,NULL,10000173),('Business','2018215650',1,NULL,10000174),('Business','2018215651',1,NULL,10000175),('Business','8870298096',44,NULL,10000176),('Business','8870298097',44,NULL,10000177),('Business','8870298098',44,NULL,10000178),('Business','9898347482',44,NULL,10000179),('Business','7134848386',44,NULL,10000180),('Business','7134848387',44,NULL,10000181),('Business','7134848388',44,NULL,10000182),('Business','6175853130',44,NULL,10000183),('Business','6175853131',44,NULL,10000184),('Business','6175853132',44,NULL,10000185),('Business','6175853133',44,NULL,10000186),('Business','7134848393',44,NULL,10000187),('Business','2018215652',44,NULL,10000188),('Business','2018215653',44,NULL,10000189),('Business','2018215654',44,NULL,10000190),('Business','2018215655',44,NULL,10000191),('Business','2018215656',44,NULL,10000192),('Business','5328288973',44,NULL,10000193),('Business','5328288974',44,NULL,10000194),('Business','5328288975',44,NULL,10000195),('Business','5328288976',44,NULL,10000196),('Business','5328288977',44,NULL,10000197),('Business','5328288978',44,NULL,10000198),('Business','5328288979',44,NULL,10000199),('Business','9944375366',44,NULL,10000200),('Business','9944375367',44,NULL,10000201),('Business','9944375368',44,NULL,10000202),('Business','9944375369',44,NULL,10000203),('Business','9898347477',44,NULL,10000204),('Business','9898347477',44,NULL,10000205),('Business','9898347477',44,NULL,10000206),('Business','9898347477',44,NULL,10000207),('Business','9898347477',44,NULL,10000208),('Business','2018215649',44,NULL,10000209),('Business','2018215650',44,NULL,10000210),('Business','2018215651',44,NULL,10000211),('Business','2018215652',44,NULL,10000212),('Business','2018215653',44,NULL,10000213),('Business','2018215654',44,NULL,10000214),('Business','9898347475',44,NULL,10000215),('Business','9898347476',44,NULL,10000216),('Business','9898347477',44,NULL,10000217),('Business','9898347478',44,NULL,10000218),('Business','9898347479',91,NULL,10000219),('Business','9898347480',91,NULL,10000220),('Business','9898347481',91,NULL,10000221),('Business','9898347482',91,NULL,10000222),('Business','5328288973',91,NULL,10000223),('Business','7134848377',91,NULL,10000224),('Business','7134848378',91,NULL,10000225),('Business','7134848379',91,NULL,10000226),('Business','7134848380',91,NULL,10000227),('Business','7134848381',91,NULL,10000228),('Business','7134848382',91,NULL,10000229),('Business','7134848383',91,NULL,10000230),('Business','7134848384',91,NULL,10000231),('Business','7134848385',91,NULL,10000232),('Business','7134848386',91,NULL,10000233),('Business','9898347477',91,NULL,10000234),('Business','9898347478',91,NULL,10000235),('Business','9898347479',91,NULL,10000236),('Business','9898347480',91,NULL,10000237),('Business','9898347481',91,NULL,10000238),('Business','9898347482',91,NULL,10000239),('Business','7134848386',91,NULL,10000240),('Business','7134848387',91,NULL,10000241),('Business','7134848388',91,NULL,10000242),('Business','7134848389',91,NULL,10000243),('Business','7134848390',91,NULL,10000244),('Business','7134848391',91,NULL,10000245),('Business','7134848392',91,NULL,10000246),('Business','7134848393',91,NULL,10000247),('Business','2018215652',91,NULL,10000248),('Business','2018215653',91,NULL,10000249),('Business','2018215654',91,NULL,10000250),('Business','2018215655',91,NULL,10000251),('Business','2018215656',91,NULL,10000252),('Business','5328288973',91,NULL,10000253),('Business','5328288974',91,NULL,10000254),('Business','5328288975',91,NULL,10000255),('Business','8870298100',91,NULL,10000256),('Business','8870298100',91,NULL,10000257),('Business','8870298100',91,NULL,10000258),('Business','8870298100',91,NULL,10000259),('Business','8870298100',91,NULL,10000260),('Business','8870298100',91,NULL,10000261),('Business','5328288970',91,NULL,10000262),('Business','5328288971',91,NULL,10000263),('Business','5328288972',91,NULL,10000264),('Personal','7134848389',1,NULL,10000019),('Personal','7134848390',1,NULL,10000020),('Personal','7134848391',1,NULL,10000021),('Personal','7134848392',1,NULL,10000022),('Personal','7134848393',1,NULL,10000023),('Personal','2018215652',1,NULL,10000024),('Personal','2018215653',1,NULL,10000025),('Personal','2018215654',1,NULL,10000026),('Personal','2018215655',1,NULL,10000027),('Personal','2018215656',1,NULL,10000028),('Personal','5328288973',1,NULL,10000029),('Personal','5328288974',1,NULL,10000030),('Personal','5328288975',1,NULL,10000031),('Personal','5328288976',1,NULL,10000032),('Personal','5328288977',1,NULL,10000033),('Personal','5328288978',1,NULL,10000034),('Personal','5328288979',1,NULL,10000035),('Personal','9944375366',1,NULL,10000036),('Personal','9944375367',1,NULL,10000037),('Personal','9944375368',1,NULL,10000038),('Personal','9944375369',1,NULL,10000039),('Personal','9898347477',1,NULL,10000040),('Personal','9898347477',1,NULL,10000041),('Personal','9898347477',1,NULL,10000042),('Personal','9898347477',1,NULL,10000043),('Personal','9898347477',1,NULL,10000044),('Personal','2018215649',1,NULL,10000045),('Personal','2018215650',1,NULL,10000046),('Personal','2018215651',1,NULL,10000047),('Personal','2018215652',1,NULL,10000048),('Personal','2018215653',1,NULL,10000049),('Personal','2018215654',1,NULL,10000050),('Personal','9898347475',1,NULL,10000051),('Personal','9898347476',1,NULL,10000052),('Personal','9898347477',1,NULL,10000053),('Personal','9898347478',1,NULL,10000054),('Personal','9898347479',1,NULL,10000055),('Personal','9898347480',1,NULL,10000056),('Personal','9898347481',1,NULL,10000057),('Personal','9898347482',1,NULL,10000058),('Personal','5328288973',1,NULL,10000059),('Personal','7134848377',1,NULL,10000060),('Personal','7134848378',1,NULL,10000061),('Personal','7134848379',1,NULL,10000062),('Personal','7134848380',1,NULL,10000063),('Personal','7134848381',1,NULL,10000064),('Personal','7134848382',1,NULL,10000065),('Personal','7134848383',1,NULL,10000066),('Personal','7134848384',1,NULL,10000067),('Personal','7134848385',1,NULL,10000068),('Personal','7134848386',1,NULL,10000069),('Personal','7134848387',1,NULL,10000070),('Personal','7134848388',1,NULL,10000071),('Personal','7134848389',1,NULL,10000072),('Personal','7134848390',1,NULL,10000073),('Personal','7134848391',1,NULL,10000074),('Personal','7134848392',1,NULL,10000075),('Personal','7134848393',1,NULL,10000076),('Personal','7134848394',1,NULL,10000077),('Personal','7134848395',1,NULL,10000078),('Personal','7134848396',1,NULL,10000079),('Personal','9898347475',1,NULL,10000080),('Personal','9898347476',1,NULL,10000081),('Personal','9898347477',1,NULL,10000082),('Personal','9898347478',1,NULL,10000083),('Personal','9898347479',1,NULL,10000084),('Personal','9898347480',1,NULL,10000085),('Personal','9898347481',1,NULL,10000086),('Personal','9898347482',1,NULL,10000087),('Personal','8870298100',1,NULL,10000088),('Personal','8870298100',1,NULL,10000089),('Personal','8870298100',1,NULL,10000090),('Personal','8870298100',1,NULL,10000091),('Personal','8870298100',1,NULL,10000092),('Personal','8870298100',1,NULL,10000093),('Personal','8870298100',1,NULL,10000094),('Personal','8870298100',1,NULL,10000095),('Personal','8870298100',1,NULL,10000096),('Personal','8870298100',1,NULL,10000097),('Personal','5328288970',1,NULL,10000098),('Personal','5328288971',1,NULL,10000099),('Personal','5328288972',1,NULL,10000100),('Personal','5328288973',1,NULL,10000101),('Personal','5328288974',1,NULL,10000102),('Personal','5328288975',1,NULL,10000103),('Personal','5328288976',1,NULL,10000104),('Personal','5328288977',1,NULL,10000105),('Personal','5328288978',1,NULL,10000106),('Personal','5328288979',1,NULL,10000107),('Personal','5328288980',1,NULL,10000108),('Personal','5328288981',1,NULL,10000109),('Personal','5328288982',1,NULL,10000110),('Personal','5328288983',1,NULL,10000111),('Personal','5328288984',1,NULL,10000112),('Personal','5328288985',1,NULL,10000113),('Personal','5328288986',1,NULL,10000114),('Personal','8870298090',1,NULL,10000115),('Personal','8870298091',1,NULL,10000116),('Personal','8870298092',1,NULL,10000117),('Personal','8870298093',1,NULL,10000118),('Personal','8870298094',1,NULL,10000119),('Personal','8870298095',1,NULL,10000120),('Personal','8870298096',1,NULL,10000121),('Personal','8870298097',1,NULL,10000122),('Personal','8870298098',1,NULL,10000123),('Personal','8870298099',1,NULL,10000124),('Personal','8870298100',1,NULL,10000125),('Personal','8870298101',1,NULL,10000126),('Personal','8870298102',1,NULL,10000127),('Personal','8870298103',1,NULL,10000128),('Personal','8870298104',1,NULL,10000129),('Personal','8870298105',1,NULL,10000130),('Personal','8870298106',1,NULL,10000131),('Personal','8870298107',1,NULL,10000132),('Personal','8870298108',1,NULL,10000133),('Personal','8870298109',1,NULL,10000134),('Personal','8870298110',1,NULL,10000135),('Personal','8870298111',1,NULL,10000136),('Personal','8870298112',1,NULL,10000137),('Personal','8870298113',1,NULL,10000138),('Personal','8870298114',1,NULL,10000139),('Personal','8870298115',1,NULL,10000140),('Personal','8870298116',1,NULL,10000141),('Personal','8870298117',1,NULL,10000142),('Personal','8870298118',1,NULL,10000143),('Personal','8870298119',1,NULL,10000144),('Personal','8870298120',1,NULL,10000145),('Personal','8870298121',1,NULL,10000146),('Personal','8870298122',1,NULL,10000147),('Personal','9898347474',1,NULL,10000148),('Personal','9898347475',1,NULL,10000149),('Personal','9898347476',1,NULL,10000150),('Personal','9898347477',1,NULL,10000151),('Personal','9898347478',1,NULL,10000152),('Personal','9898347479',1,NULL,10000153),('Personal','9898347480',1,NULL,10000154),('Personal','9898347481',1,NULL,10000155),('Personal','9898347482',1,NULL,10000156),('Personal','6175853129',1,NULL,10000157),('Personal','6175853130',1,NULL,10000158),('Personal','6175853131',1,NULL,10000159),('Personal','6175853132',1,NULL,10000160),('Personal','6175853133',1,NULL,10000161),('Personal','6175853134',1,NULL,10000162),('Personal','6175853135',1,NULL,10000163),('Personal','2018215645',1,NULL,10000164),('Personal','2018215646',1,NULL,10000165),('Home','9898347474',1,NULL,10000001),('Home','9898347475',1,NULL,10000002),('Home','9898347476',1,NULL,10000003),('Home','9898347477',1,NULL,10000004),('Home','9898347478',1,NULL,10000005),('Home','9898347479',1,NULL,10000006),('Home','9898347480',1,NULL,10000007),('Home','9898347481',1,NULL,10000008),('Home','9898347482',1,NULL,10000009),('Home','6175853129',1,NULL,10000010),('Home','6175853130',1,NULL,10000011),('Home','6175853131',44,NULL,10000012),('Home','6175853132',44,NULL,10000013),('Home','6175853133',44,NULL,10000014),('Home','6175853134',44,NULL,10000015),('Home','6175853135',44,NULL,10000016),('Home','2018215645',44,NULL,10000017),('Home','2018215646',44,NULL,10000018),('Home','7134848389',44,NULL,10000019),('Home','7134848390',44,NULL,10000020),('Home','7134848391',44,NULL,10000021),('Home','7134848392',44,NULL,10000022),('Home','7134848393',44,NULL,10000023),('Home','2018215652',44,NULL,10000024),('Home','2018215653',44,NULL,10000025),('Home','2018215654',44,NULL,10000026),('Home','2018215655',44,NULL,10000027),('Home','2018215656',44,NULL,10000028),('Home','5328288973',44,NULL,10000029),('Home','5328288974',44,NULL,10000030),('Home','5328288975',44,NULL,10000031),('Home','5328288976',44,NULL,10000032),('Home','5328288977',44,NULL,10000033),('Home','5328288978',44,NULL,10000034),('Home','5328288979',44,NULL,10000035),('Home','9944375366',44,NULL,10000036),('Home','9944375367',44,NULL,10000037),('Home','9944375368',44,NULL,10000038),('Home','9944375369',44,NULL,10000039),('Home','9898347477',44,NULL,10000040),('Home','9898347477',44,NULL,10000041),('Home','9898347477',44,NULL,10000042),('Home','9898347477',44,NULL,10000043),('Home','9898347477',44,NULL,10000044),('Home','2018215649',44,NULL,10000045),('Home','2018215650',44,NULL,10000046),('Home','2018215651',44,NULL,10000047),('Home','2018215652',44,NULL,10000048),('Home','2018215653',44,NULL,10000049),('Home','2018215654',44,NULL,10000050),('Home','9898347475',44,NULL,10000051),('Home','9898347476',44,NULL,10000052),('Home','9898347477',44,NULL,10000053),('Home','9898347478',44,NULL,10000054),('Home','9898347479',91,NULL,10000055),('Home','9898347480',91,NULL,10000056),('Home','9898347481',91,NULL,10000057),('Home','9898347482',91,NULL,10000058),('Home','5328288973',91,NULL,10000059),('Home','7134848377',91,NULL,10000060),('Home','7134848378',91,NULL,10000061),('Home','7134848379',91,NULL,10000062),('Home','7134848380',91,NULL,10000063),('Home','7134848381',91,NULL,10000064),('Home','7134848382',91,NULL,10000065),('Home','7134848383',91,NULL,10000066),('Home','7134848384',91,NULL,10000067),('Home','7134848385',91,NULL,10000068),('Home','7134848386',91,NULL,10000069),('Home','9898347477',91,NULL,10000070),('Home','9898347478',91,NULL,10000071),('Home','9898347479',91,NULL,10000072),('Home','9898347480',91,NULL,10000073),('Home','9898347481',91,NULL,10000074),('Home','9898347482',91,NULL,10000075),('Home','7134848386',91,NULL,10000076),('Home','7134848387',91,NULL,10000077),('Home','7134848388',91,NULL,10000078),('Home','7134848389',91,NULL,10000079),('Home','7134848390',91,NULL,10000080),('Home','7134848391',91,NULL,10000081),('Home','7134848392',91,NULL,10000082),('Home','7134848393',91,NULL,10000083),('Home','2018215652',91,NULL,10000084),('Home','2018215653',91,NULL,10000085),('Home','2018215654',91,NULL,10000086),('Home','2018215655',91,NULL,10000087),('Home','2018215656',91,NULL,10000088),('Home','5328288973',91,NULL,10000089),('Home','5328288974',91,NULL,10000090),('Home','5328288975',91,NULL,10000091),('Home','8870298100',91,NULL,10000092),('Home','8870298100',91,NULL,10000093),('Home','8870298100',91,NULL,10000094),('Home','8870298100',91,NULL,10000095),('Home','8870298100',91,NULL,10000096),('Home','8870298100',91,NULL,10000097),('Home','5328288970',91,NULL,10000098),('Home','5328288971',91,NULL,10000099),('Home','5328288972',91,NULL,10000100),('Home','5328288973',91,NULL,10000101),('Home','5328288974',91,NULL,10000102),('Home','5328288975',91,NULL,10000103),('Home','5328288976',91,NULL,10000104),('Home','5328288977',91,NULL,10000105),('Home','5328288978',91,NULL,10000106),('Home','5328288979',91,NULL,10000107),('Home','5328288980',91,NULL,10000108),('Home','5328288981',91,NULL,10000109),('Home','5328288982',91,NULL,10000110),('Home','5328288983',91,NULL,10000111),('Home','5328288984',91,NULL,10000112),('Home','5328288985',91,NULL,10000113),('Home','5328288986',91,NULL,10000114),('Home','8870298090',91,NULL,10000115),('Home','8870298091',91,NULL,10000116),('Home','8870298092',91,NULL,10000117),('Home','8870298093',91,NULL,10000118),('Home','8870298094',91,NULL,10000119),('Home','8870298095',91,NULL,10000120),('Home','8870298096',91,NULL,10000121),('Home','8870298097',91,NULL,10000122),('Home','8870298098',91,NULL,10000123),('Home','8870298099',91,NULL,10000124),('Home','8870298100',91,NULL,10000125),('Home','8870298101',91,NULL,10000126),('Home','8870298102',91,NULL,10000127),('Home','8870298103',91,NULL,10000128),('Home','8870298104',91,NULL,10000129),('Home','8870298105',91,NULL,10000130),('Home','8870298106',91,NULL,10000131),('Home','8870298107',91,NULL,10000132),('Home','8870298108',91,NULL,10000133),('Home','8870298109',91,NULL,10000134),('Home','8870298110',91,NULL,10000135),('Home','8870298111',91,NULL,10000136),('Home','8870298112',91,NULL,10000137),('Home','8870298113',91,NULL,10000138),('Home','8870298114',91,NULL,10000139),('Home','8870298115',91,NULL,10000140),('Home','8870298116',91,NULL,10000141),('Home','8870298117',91,NULL,10000142),('Home','8870298118',91,NULL,10000143),('Home','8870298119',91,NULL,10000144),('Home','8870298120',91,NULL,10000145),('Home','8870298121',91,NULL,10000146),('Home','8870298122',91,NULL,10000147),('Home','9898347474',91,NULL,10000148),('Home','9898347475',91,NULL,10000149),('Home','9898347476',91,NULL,10000150),('Home','9898347477',91,NULL,10000151),('Home','9898347478',91,NULL,10000152),('Home','9898347479',91,NULL,10000153),('Home','9898347480',1,NULL,10000154),('Home','9898347481',1,NULL,10000155),('Home','9898347482',1,NULL,10000156),('Home','6175853129',0,NULL,10000157),('Home','6175853130',0,NULL,10000158),('Home','6175853131',0,NULL,10000159),('Home','6175853132',0,NULL,10000160),('Home','6175853133',0,NULL,10000161),('Home','6175853134',0,NULL,10000162),('Home','6175853135',0,NULL,10000163),('Home','2018215645',0,NULL,10000164),('Home','2018215646',0,NULL,10000165);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `ProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectName` varchar(40) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Status` enum('Active','Inactive') DEFAULT NULL,
  `OpportunityID` int(11) NOT NULL,
  `GrossRevenue` decimal(12,2) NOT NULL,
  PRIMARY KEY (`ProjectID`),
  KEY `FKProjectOpportunity` (`OpportunityID`),
  CONSTRAINT `FKProjectOpportunity` FOREIGN KEY (`OpportunityID`) REFERENCES `opportunity` (`OpportunityID`),
  CONSTRAINT `is created for` FOREIGN KEY (`OpportunityID`) REFERENCES `opportunity` (`OpportunityID`)
) ENGINE=InnoDB AUTO_INCREMENT=5000041 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (5000001,'Project for Tesco','2005-04-23','2006-04-23','Active',4000023,0.00),(5000002,'Project for Ranbaxy','2005-04-24','2006-04-24','Active',4000024,0.00),(5000003,'Project for Hearltland Autmotive','2005-04-25','2006-04-25','Active',4000025,0.00),(5000004,'Project for Goodwin Hospital','2000-01-09','2001-01-09','Active',4000026,0.00),(5000005,'Project for CentrePlace','2000-01-10','2016-01-10','Active',4000027,0.00),(5000006,'Project for Conviniencec','2000-01-11','2016-01-11','Active',4000028,67765658.00),(5000007,'Project for Star1','2000-01-12','2016-01-12','Active',4000029,0.00),(5000008,'Project for Ciitizen','2000-01-12','2001-01-12','Inactive',4000039,0.00),(5000009,'Project for Lenova','2003-08-26','2004-08-26','Inactive',4000043,0.00),(5000010,'Project for Xfinity','2000-01-10','2002-01-10','Inactive',4000047,0.00),(5000011,'Project for Ariel Pvt Ltd 4','2003-08-25','2004-08-25','Active',4000052,0.00),(5000012,'Project for Ciitizen','2000-01-09','2001-01-09','Active',4000056,0.00),(5000013,'Project for Lenova','2003-08-23','2004-08-23','Active',4000060,0.00),(5000014,'Project for Start Health','2003-08-28','2004-08-28','Active',4000065,0.00),(5000015,'Project for KFC','2003-08-27','2004-09-27','Active',4000069,0.00),(5000016,'Project for Logica','2003-09-01','2004-09-01','Active',4000073,0.00),(5000017,'Project for Reliance','2003-09-06','2004-09-06','Active',4000078,0.00),(5000018,'Project for BAC','2009-07-23','2010-07-23','Active',4000082,0.00),(5000019,'Project for KTR','2009-07-27','2010-07-27','Active',4000086,0.00),(5000020,'Project for Bosch enerprises','2012-11-01','2013-11-01','Active',4000091,0.00),(5000021,'Project for Capital One Invesments','2012-11-05','2013-11-05','Active',4000095,0.00),(5000022,'Project for Cosco Pvt ltd','2012-11-09','2015-11-09','Active',4000099,0.00),(5000023,'Project for Lenova','2000-01-13','2001-01-13','Active',4000104,0.00),(5000024,'Project for Xfinity','2000-01-17','2001-01-17','Active',4000108,0.00),(5000025,'Project for Pizza Hut','2003-09-04','2004-09-04','Active',4000112,0.00),(5000026,'Project for Abc','2009-07-01','2010-07-01','Active',4000117,0.00),(5000027,'Project for HBO','2012-11-01','2013-11-01','Active',4000118,0.00),(5000028,'Project for Start Health-1','2003-08-28','2004-08-28','Active',4000065,0.00),(5000029,'Project for KFC-1','2003-08-27','2004-09-27','Active',4000069,0.00),(5000030,'Project for Logica-1','2003-09-01','2004-09-01','Active',4000073,0.00),(5000031,'Project for Reliance-1','2003-09-06','2004-09-06','Active',4000078,0.00),(5000032,'Project for BAC-1','2009-07-23','2010-07-23','Active',4000082,0.00),(5000033,'Project for KTR-1','2009-07-27','2010-07-27','Active',4000086,0.00),(5000034,'Project for Bosch enerprises-1','2012-11-01','2013-11-01','Active',4000091,66775826.00),(5000035,'Project for Capital One Invesments-1','2012-11-05','2013-11-05','Active',4000095,0.00),(5000036,'Project for Cosco Pvt ltd-1','2012-11-09','2015-11-09','Active',4000099,0.00),(5000037,'Project for Lenova-1','2000-01-13','2001-01-13','Inactive',4000104,0.00),(5000038,'Project for KFC-1','2003-08-27','2004-09-27','Active',4000069,0.00),(5000039,'Project for Logica-1','2003-09-01','2004-09-01','Active',4000073,0.00),(5000040,'Project for Reliance-1','2003-09-06','2004-09-06','Active',4000078,0.00);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectrevenue`
--

DROP TABLE IF EXISTS `projectrevenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectrevenue` (
  `Date` date NOT NULL,
  `revenueAmount` decimal(12,2) NOT NULL,
  `profitAmount` decimal(12,2) NOT NULL,
  `ProjectID` int(11) NOT NULL,
  PRIMARY KEY (`ProjectID`,`Date`),
  CONSTRAINT `ProjectRevenueProject` FOREIGN KEY (`ProjectID`) REFERENCES `project` (`ProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectrevenue`
--

LOCK TABLES `projectrevenue` WRITE;
/*!40000 ALTER TABLE `projectrevenue` DISABLE KEYS */;
INSERT INTO `projectrevenue` VALUES ('2005-05-01',3000000.00,30045000.00,5000001),('2005-06-01',3000000.00,30045000.00,5000001),('2005-07-01',3000000.00,30045000.00,5000001),('2005-08-01',3000000.00,30045000.80,5000001),('2005-09-01',1350000.00,30045000.00,5000001),('2005-10-01',3000000.00,30045000.75,5000001),('2005-11-01',3000000.00,30045000.00,5000001),('2005-12-01',3000000.00,30045000.00,5000001),('2006-01-01',3000000.00,30045000.25,5000001),('2006-02-01',3000000.00,30045000.00,5000001),('2006-03-01',3000000.00,30045000.08,5000001),('2006-04-01',3000000.00,30045000.00,5000001),('2005-04-24',234500.00,124500.50,5000002),('2006-05-01',234500.00,854500.00,5000002),('2006-05-24',234500.00,3500.35,5000002),('2006-06-01',2345000.00,3500.00,5000002),('2006-06-24',234500.00,3500.00,5000002),('2006-07-01',23450.00,3500.00,5000002),('2006-07-24',23450.00,12500.00,5000002),('2006-08-01',234500.00,234500.00,5000002),('2006-08-24',234500.00,234500.00,5000002),('2005-04-25',325850.00,115850.00,5000003),('2005-05-25',325850.00,125850.00,5000003),('2005-06-25',3258.00,0.00,5000003),('2005-07-25',32585.00,0.00,5000003),('2005-08-25',325850.00,24500.45,5000003),('2005-09-25',325850.00,2450.15,5000003),('2000-01-09',28900.00,13500.00,5000004),('2000-02-09',28900.00,13500.00,5000004),('2000-03-09',28900.00,850.65,5000004),('2000-04-09',28900.00,0.00,5000004),('2000-05-09',28900.00,0.00,5000004),('2000-06-09',28900.00,12500.00,5000004),('2000-01-10',879860.00,879860.00,5000005),('2000-02-10',879860.00,879860.25,5000005),('2000-03-10',879860.00,107860.00,5000005),('2000-04-10',879860.00,107860.00,5000005),('2000-05-10',879860.00,135860.00,5000005),('2000-06-10',879860.00,525860.00,5000005),('2000-07-10',879860.00,525860.00,5000005),('2000-01-11',986685.00,986685.00,5000006),('2000-02-11',986685.00,986685.00,5000006),('2000-03-11',986685.00,986685.00,5000006),('2013-04-30',989832.00,212234.00,5000006),('2000-01-12',325850.00,325850.75,5000007),('2000-02-12',325850.00,325850.00,5000007),('2000-03-12',925049.00,925049.00,5000007),('2000-01-12',32585.00,32585.00,5000008),('2000-02-12',325850.00,325850.00,5000008),('2000-03-12',625049.00,625049.65,5000008),('2003-08-26',879860.00,879860.45,5000009),('2003-09-26',879860.00,879860.65,5000009),('2003-10-26',879860.00,879860.00,5000009),('2003-11-26',879860.00,879860.00,5000009),('2000-01-09',925049.00,925049.00,5000012),('2000-02-09',32585.00,32585.35,5000012),('2000-03-09',986685.00,986685.00,5000012),('2003-08-23',325850.00,325850.00,5000013),('2003-09-23',325850.00,325850.85,5000013),('2003-10-23',925049.00,925049.00,5000013),('2003-11-23',32585.00,32585.95,5000013),('2003-08-27',879860.00,879860.00,5000015),('2003-09-27',879860.00,879860.60,5000015),('2003-10-27',879860.00,879860.00,5000015),('2009-07-23',986685.00,986685.00,5000018),('2009-08-23',325850.00,325850.45,5000018),('2009-09-23',325850.00,325850.00,5000018),('2012-11-01',28900.00,28900.00,5000020),('2012-12-01',28900.00,28900.10,5000020),('2013-01-01',28900.00,28900.30,5000020),('2013-02-01',879860.00,879860.00,5000020),('2012-11-01',425505.00,425505.25,5000034),('2012-12-01',425505.00,425505.85,5000034),('2013-01-01',425505.00,425505.00,5000034),('2013-02-01',425505.00,425505.00,5000034),('2013-03-01',425505.00,425505.00,5000034),('2013-03-31',989832.00,212234.00,5000034);
/*!40000 ALTER TABLE `projectrevenue` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger UpdatetotalRevenueProject
after Insert  on ProjectRevenue
for each row
begin
set @projectid=new.ProjectID;
call calculatetoalrevenue(@ProjectID,@total);

Update Project set GrossRevenue=@total where projectid=@projectId;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `projectview`
--

DROP TABLE IF EXISTS `projectview`;
/*!50001 DROP VIEW IF EXISTS `projectview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `projectview` AS SELECT 
 1 AS `projectid`,
 1 AS `Grossrevenue`,
 1 AS `projectname`,
 1 AS `status`,
 1 AS `OpportunityID`,
 1 AS `OpportunityDescription`,
 1 AS `customerid`,
 1 AS `companyname`,
 1 AS `region`,
 1 AS `businessgroupname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `Region` char(20) NOT NULL,
  PRIMARY KEY (`Region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES ('Asia Pacific'),('Continental Europe'),('North America'),('South America');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relation` (
  `RelationID` int(11) NOT NULL AUTO_INCREMENT,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `PersonID` int(11) NOT NULL,
  `BusinessObjectIDPerson` int(11) NOT NULL,
  `CustomerID` int(15) NOT NULL,
  `BusinessObjectIDCompany` int(11) NOT NULL,
  PRIMARY KEY (`RelationID`),
  KEY `RelationPerson` (`PersonID`,`BusinessObjectIDPerson`),
  KEY `RelationCompany` (`CustomerID`,`BusinessObjectIDCompany`),
  CONSTRAINT `RelationCompany` FOREIGN KEY (`CustomerID`, `BusinessObjectIDCompany`) REFERENCES `customer` (`CustomerID`, `BusinessObjectIDCompany`),
  CONSTRAINT `RelationPerson` FOREIGN KEY (`PersonID`, `BusinessObjectIDPerson`) REFERENCES `person` (`PersonID`, `BusinessObjectIDPerson`)
) ENGINE=InnoDB AUTO_INCREMENT=110116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation`
--

LOCK TABLES `relation` WRITE;
/*!40000 ALTER TABLE `relation` DISABLE KEYS */;
INSERT INTO `relation` VALUES (110000,'1970-01-01','2006-12-05',2000029,10000029,1200000,10000165),(110001,'1970-01-02','2006-12-06',2000030,10000030,1200001,10000166),(110002,'1970-01-03','2006-12-07',2000031,10000031,1200002,10000167),(110003,'1970-01-04','2006-12-08',2000032,10000032,1200003,10000168),(110004,'1970-01-05','2006-12-09',2000033,10000033,1200004,10000169),(110005,'1970-01-06','2006-12-10',2000034,10000034,1200005,10000170),(110006,'1970-01-07','2006-12-11',2000035,10000035,1200006,10000171),(110007,'1970-01-08','2006-12-12',2000036,10000036,1200007,10000172),(110008,'1970-01-09','2006-12-13',2000037,10000037,1200008,10000173),(110009,'1970-01-10','2006-12-14',2000038,10000038,1200009,10000174),(110010,'1970-01-11','2016-12-05',2000039,10000039,1200010,10000175),(110011,'1970-01-12','2016-12-05',2000040,10000040,1200011,10000176),(110012,'1970-01-13','2016-12-05',2000041,10000041,1200012,10000177),(110013,'1970-01-14','2016-12-05',2000042,10000042,1200013,10000178),(110014,'1970-01-15','2016-12-05',2000043,10000043,1200014,10000179),(110015,'1970-01-16','2016-12-05',2000044,10000044,1200015,10000180),(110016,'1970-01-17','2016-12-05',2000045,10000045,1200016,10000181),(110017,'1970-01-18','2016-12-05',2000046,10000046,1200017,10000182),(110018,'1970-01-19','2016-12-05',2000047,10000047,1200018,10000183),(110019,'1970-01-20','2016-12-05',2000048,10000048,1200019,10000184),(110020,'1970-01-21','2016-12-05',2000049,10000049,1200020,10000185),(110021,'1970-01-22','2016-12-05',2000050,10000050,1200021,10000186),(110022,'1970-01-23','2016-12-05',2000051,10000051,1200022,10000187),(110023,'1970-01-24','2016-12-05',2000052,10000052,1200023,10000188),(110024,'1970-01-25','2016-12-05',2000053,10000053,1200024,10000189),(110025,'1970-01-26','2016-12-05',2000054,10000054,1200025,10000190),(110026,'1970-01-27','2016-12-05',2000055,10000055,1200026,10000191),(110027,'1970-01-28','2016-12-05',2000056,10000056,1200027,10000192),(110028,'1970-01-29','2016-12-05',2000057,10000057,1200028,10000193),(110029,'1970-01-30','2016-12-05',2000058,10000058,1200029,10000194),(110030,'1970-01-31','2016-12-05',2000059,10000059,1200030,10000195),(110031,'1970-02-01','2016-12-05',2000060,10000060,1200031,10000196),(110032,'1970-02-02','2016-12-05',2000061,10000061,1200032,10000197),(110033,'1970-02-03','2016-12-05',2000062,10000062,1200033,10000198),(110034,'1970-02-04','2016-12-05',2000063,10000063,1200034,10000199),(110035,'1970-02-05','2016-12-05',2000064,10000064,1200035,10000200),(110036,'1970-02-06','2016-12-05',2000065,10000065,1200036,10000201),(110037,'1970-02-07','2016-12-05',2000066,10000066,1200037,10000202),(110038,'1970-02-08','2016-12-05',2000067,10000067,1200038,10000203),(110039,'1970-02-09','2016-12-05',2000068,10000068,1200039,10000204),(110040,'1970-02-10','2016-12-05',2000069,10000069,1200040,10000205),(110041,'1970-02-11','2016-12-05',2000070,10000070,1200041,10000206),(110042,'1970-02-12','2016-12-05',2000071,10000071,1200042,10000207),(110043,'1970-02-13','2016-12-05',2000072,10000072,1200043,10000208),(110044,'1970-02-14','2016-12-05',2000073,10000073,1200044,10000209),(110045,'1970-02-15','2016-12-05',2000074,10000074,1200045,10000210),(110046,'1970-02-16','2016-12-05',2000075,10000075,1200046,10000211),(110047,'1970-02-17','2016-12-05',2000076,10000076,1200047,10000212),(110048,'1970-02-18','2016-12-05',2000077,10000077,1200048,10000213),(110049,'1970-02-19','2016-12-05',2000078,10000078,1200049,10000214),(110050,'1970-02-20','2016-12-05',2000079,10000079,1200050,10000215),(110051,'1970-02-21','2016-12-05',2000080,10000080,1200051,10000216),(110052,'1970-02-22','2016-12-05',2000081,10000081,1200052,10000217),(110053,'1970-02-23','2016-12-05',2000082,10000082,1200053,10000218),(110054,'1970-02-24','2016-12-05',2000083,10000083,1200054,10000219),(110055,'1970-02-25','2016-12-05',2000084,10000084,1200055,10000220),(110056,'1970-02-26','2016-12-05',2000085,10000085,1200056,10000221),(110057,'1970-02-27','2016-12-05',2000086,10000086,1200057,10000222),(110058,'1970-02-28','2016-12-05',2000087,10000087,1200058,10000223),(110059,'1970-03-01','2016-12-05',2000088,10000088,1200059,10000224),(110060,'1970-03-02','2016-12-05',2000089,10000089,1200060,10000225),(110061,'1970-03-03','2016-12-05',2000090,10000090,1200061,10000226),(110062,'1970-03-04','2016-12-05',2000091,10000091,1200062,10000227),(110063,'1970-03-05','2016-12-05',2000092,10000092,1200063,10000228),(110064,'1970-03-06','2016-12-05',2000093,10000093,1200064,10000229),(110065,'1970-03-07','2016-12-05',2000094,10000094,1200065,10000230),(110066,'1970-03-08','2016-12-05',2000095,10000095,1200066,10000231),(110067,'1970-03-09','2016-12-05',2000096,10000096,1200067,10000232),(110068,'1970-03-10','2016-12-05',2000097,10000097,1200068,10000233),(110069,'1970-03-11','2016-12-05',2000098,10000098,1200069,10000234),(110070,'1970-03-12','2016-12-05',2000099,10000099,1200070,10000235),(110071,'1970-03-13','2016-12-05',2000100,10000100,1200071,10000236),(110072,'1970-03-14','2016-12-05',2000101,10000101,1200072,10000237),(110073,'1970-03-15','2016-12-05',2000102,10000102,1200073,10000238),(110074,'1970-03-16','2016-12-05',2000103,10000103,1200074,10000239),(110075,'1970-03-17','2016-12-05',2000104,10000104,1200075,10000240),(110076,'1970-03-18','2016-12-05',2000105,10000105,1200076,10000241),(110077,'1970-03-19','2016-12-05',2000106,10000106,1200077,10000242),(110078,'1970-03-20','2016-12-05',2000107,10000107,1200078,10000243),(110079,'1970-03-21','2016-12-05',2000108,10000108,1200079,10000244),(110080,'1970-03-22','2016-12-05',2000109,10000109,1200080,10000245),(110081,'1970-03-23','2016-12-05',2000110,10000110,1200081,10000246),(110082,'1970-03-24','2016-12-05',2000111,10000111,1200082,10000247),(110083,'1970-03-25','2016-12-05',2000112,10000112,1200083,10000248),(110084,'1970-03-26','2016-12-05',2000113,10000113,1200084,10000249),(110085,'1970-03-27','2016-12-05',2000114,10000114,1200085,10000250),(110086,'1970-03-28','2016-12-05',2000115,10000115,1200086,10000251),(110087,'1970-03-29','2016-12-05',2000116,10000116,1200087,10000252),(110088,'1970-03-30','2016-12-05',2000117,10000117,1200088,10000253),(110089,'1970-03-31','2016-12-05',2000118,10000118,1200089,10000254),(110090,'1970-04-01','2016-12-05',2000119,10000119,1200090,10000255),(110091,'1970-04-02','2016-12-05',2000120,10000120,1200091,10000256),(110092,'1970-04-03','2016-12-05',2000121,10000121,1200092,10000257),(110093,'1970-04-04','2016-12-05',2000122,10000122,1200093,10000258),(110094,'1970-04-05','2016-12-05',2000123,10000123,1200094,10000259),(110095,'1970-04-06','2016-12-05',2000124,10000124,1200095,10000260),(110096,'1970-04-07','2016-12-05',2000125,10000125,1200096,10000261),(110097,'1970-04-08','2016-12-05',2000126,10000126,1200097,10000262),(110098,'1970-04-09','2016-12-05',2000127,10000127,1200098,10000263),(110099,'1970-04-10','2016-12-05',2000128,10000128,1200099,10000264),(110100,'1970-04-11','2016-12-05',2000129,10000129,1200056,10000221),(110101,'1970-04-12','2016-12-05',2000130,10000130,1200057,10000222),(110102,'1970-04-13','2016-12-05',2000131,10000131,1200058,10000223),(110103,'1970-04-14','2016-12-05',2000132,10000132,1200059,10000224),(110104,'1970-04-15','2016-12-05',2000133,10000133,1200060,10000225),(110105,'1970-04-16','2016-12-05',2000134,10000134,1200061,10000226),(110106,'2006-12-05','2016-12-05',2000029,10000029,1200062,10000227),(110107,'2006-12-06','2016-12-06',2000030,10000030,1200063,10000228),(110108,'2006-12-07','2016-12-07',2000031,10000031,1200064,10000229),(110109,'2006-12-08','2016-12-08',2000032,10000032,1200065,10000230),(110110,'2006-12-09','2016-12-09',2000033,10000033,1200066,10000231),(110111,'2006-12-10','2016-12-10',2000034,10000034,1200067,10000232),(110112,'2006-12-11','2016-12-11',2000035,10000035,1200068,10000233),(110113,'2006-12-12','2016-12-12',2000036,10000036,1200069,10000234),(110114,'2006-12-13','2016-12-13',2000037,10000037,1200025,10000190),(110115,'2006-12-14','2016-12-14',2000038,10000038,1200026,10000191);
/*!40000 ALTER TABLE `relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `RoleID` int(2) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Account Manager'),(2,'Client Partner'),(3,'Marketing Manager'),(4,'Account Executive'),(5,'Sales Manager'),(6,'Sales Executive'),(7,'Business Development Manager'),(8,'BU Lead');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `StatusID` char(4) NOT NULL,
  `Status_Description` char(15) DEFAULT NULL,
  PRIMARY KEY (`StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES ('CLDL','Closed Lost'),('CLDW','Closed Won'),('CLSD','Closed'),('CMPL','Completed'),('IACT','Inactive'),('INPR','In Progress'),('OPEN','New'),('WORK','Working');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `TaskID` int(11) NOT NULL AUTO_INCREMENT,
  `TaskDescription` varchar(20) DEFAULT NULL,
  `TaskStatus` char(4) DEFAULT 'OPEN',
  `TaskPriority` enum('High','Medium','Low') DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `EmployeeID` int(7) NOT NULL,
  `PersonID` int(11) NOT NULL,
  `CreatedBy` int(7) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastModifiedBy` int(7) NOT NULL,
  `LastModifiedOn` datetime NOT NULL,
  PRIMARY KEY (`TaskID`),
  KEY `FKTaskEmployee` (`LastModifiedBy`),
  KEY `FKTaskEmployeeCreatedBy` (`CreatedBy`),
  KEY `FKTaskStatus` (`TaskStatus`),
  CONSTRAINT `FKTaskEmployee` FOREIGN KEY (`LastModifiedBy`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `FKTaskEmployeeCreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `FKTaskStatus` FOREIGN KEY (`TaskStatus`) REFERENCES `status` (`StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskassign`
--

DROP TABLE IF EXISTS `taskassign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskassign` (
  `PersonID` int(11) NOT NULL,
  `BusinessObjectIDAssignee` int(11) NOT NULL,
  `TaskID` int(11) NOT NULL,
  `CreatedBy` int(7) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastModifiedBy` int(7) NOT NULL,
  `LastModifiedOn` datetime NOT NULL,
  PRIMARY KEY (`PersonID`,`BusinessObjectIDAssignee`,`TaskID`),
  KEY `FKTaskAssignTask` (`TaskID`),
  CONSTRAINT `FKTaskAssign` FOREIGN KEY (`PersonID`, `BusinessObjectIDAssignee`) REFERENCES `person` (`PersonID`, `BusinessObjectIDPerson`),
  CONSTRAINT `FKTaskAssignTask` FOREIGN KEY (`TaskID`) REFERENCES `task` (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskassign`
--

LOCK TABLES `taskassign` WRITE;
/*!40000 ALTER TABLE `taskassign` DISABLE KEYS */;
/*!40000 ALTER TABLE `taskassign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskcontact`
--

DROP TABLE IF EXISTS `taskcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskcontact` (
  `PrimaryFlag` char(20) DEFAULT NULL,
  `PersonID` int(11) NOT NULL,
  `BusinessObjectIDContact` int(11) NOT NULL,
  `CustomerID` int(15) NOT NULL,
  `BusinessObjectIDCompany` int(11) NOT NULL,
  `TaskID` int(11) NOT NULL,
  `CreatedBy` int(7) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastModifiedBy` int(7) NOT NULL,
  `LastModifiedOn` datetime NOT NULL,
  PRIMARY KEY (`TaskID`),
  KEY `FKTaskContactPerson` (`PersonID`,`BusinessObjectIDContact`),
  KEY `FKTaskContactCustomer` (`CustomerID`,`BusinessObjectIDCompany`),
  CONSTRAINT `FKTaskContactCustomer` FOREIGN KEY (`CustomerID`, `BusinessObjectIDCompany`) REFERENCES `customer` (`CustomerID`, `BusinessObjectIDCompany`),
  CONSTRAINT `FKTaskContactPerson` FOREIGN KEY (`PersonID`, `BusinessObjectIDContact`) REFERENCES `person` (`PersonID`, `BusinessObjectIDPerson`),
  CONSTRAINT `FKTaskContactTask` FOREIGN KEY (`TaskID`) REFERENCES `task` (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskcontact`
--

LOCK TABLES `taskcontact` WRITE;
/*!40000 ALTER TABLE `taskcontact` DISABLE KEYS */;
/*!40000 ALTER TABLE `taskcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP FUNCTION IF EXISTS `NumberofCustomersinRegion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `NumberofCustomersinRegion`(region char) RETURNS int(11)
    DETERMINISTIC
begin
declare count int(20);

select count(a.CustomerId) into count from customer a 
where a.CustomerId in (select b.customerid from customer b where  a.CustomerID=b.CustomerID)
and a.Region='Asia Pacific'
group by a.region ;

return(count);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `NumberofCustomersinRegions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `NumberofCustomersinRegions`(region char(30)) RETURNS int(11)
    DETERMINISTIC
begin
declare count int(20);

select count(a.CustomerId) into count from customer a 
where a.CustomerId in (select b.customerid from customer b where  a.CustomerID=b.CustomerID)
and a.Region=region
group by a.region ;

return(count);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculatetoalrevenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculatetoalrevenue`(in projectID int, out total decimal)
begin
SELECT SUM(revenueAmount) into total from projectrevenue where ProjectID=projectID;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findingnextdateforrevenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findingnextdateforrevenue`(in projectID int, out date_revenue date)
begin
select DATE_ADD(max(date),INTERVAL 30 DAY) into date_revenue from ProjectRevenue where ProjectID=projectID;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertProjectrevenuedetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertProjectrevenuedetails`(in projectID int, in project_revenue decimal(11,2),project_profit decimal(11,2))
begin
set @projectid=projectID;
set  @project_revenue=project_revenue;
set @project_profit=project_profit;

call findingnextdateforrevenue(@projectid,@revenue_date);
select @revenue_date;
select @project_revenue;
select @project_profit;
insert into ProjectRevenue select @revenue_date,@project_revenue,@project_profit,@projectID ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MaxNumberofOpportuniesforCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MaxNumberofOpportuniesforCustomer`()
begin

 CREATE TEMPORARY TABLE results (CustomerID int,CustomerName varchar(40),NoOfOpportunities int);
 
 insert into results(CustomerID,CustomerName,NoOfOpportunities)
select o.CustomerID ,c.CompanyName,count(o.OpportunityID) from opportunity o
inner join customer c on c.CustomerID=o.CustomerID
where o.CustomerID in (select customerid from customer where customer.CustomerID=o.CustomerID)
group by o.CustomerID ;

select * from results;

drop table results;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `profitableCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profitableCustomer`(out customername varchar(30))
begin
select c.CompanyName into customername from project pro 
inner join opportunity o on o.opportunityid=pro.opportunityid
inner join customer c on c.customerid=o.customerid
where projectid=(select distinct projectid from projectrevenue pp where
profitamount=(select max(p.profitamount) from projectrevenue p));
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `totalrevenuegeneratedinregion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `totalrevenuegeneratedinregion`(out revenue decimal(11,2),in region varchar(30))
begin 

select sum(revenueAmount) into revenue from projectrevenue where ProjectID in
 (select projectid from project where OpportunityID in (select OpportunityID from opportunity 
 where CustomerID in (select customerid from customer where Region = region)));

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `companyview`
--

/*!50001 DROP VIEW IF EXISTS `companyview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `companyview` AS select `c`.`CustomerID` AS `CustomerID`,`c`.`CompanyName` AS `CompanyName`,`c`.`CustomerType` AS `CustomerType`,`c`.`Region` AS `Region`,`c`.`NetWorth` AS `NetWorth`,`c`.`StockSymbol` AS `StockSymbol`,`c`.`WebURL` AS `WebURL`,`c`.`YearStarted` AS `YearStarted`,`bg`.`BusinessGroupName` AS `BusinessGroupName`,(select `p`.`PhoneNumber` from `phone` `p` where ((`p`.`BusinessObjectID` = `c`.`BusinessObjectIDCompany`) and (`p`.`PhoneType` = 'Business'))) AS `Business Phone`,(select `p`.`Extension` from `phone` `p` where ((`p`.`BusinessObjectID` = `c`.`BusinessObjectIDCompany`) and (`p`.`PhoneType` = 'Business'))) AS `Business Extension`,(select `e`.`EmailID` from `email` `e` where ((`e`.`BusinessObjectID` = `c`.`BusinessObjectIDCompany`) and (`e`.`MailType` = 'Business'))) AS `Business Email` from (`customer` `c` left join `businessgroup` `bg` on((`bg`.`BusinessGroupID` = `c`.`BusinessGroupID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `contactsview`
--

/*!50001 DROP VIEW IF EXISTS `contactsview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contactsview` AS select `a`.`PersonID` AS `PersonID`,`n`.`FirstName` AS `FirstName`,`n`.`LastName` AS `LastName`,`a`.`DateOfBirth` AS `DateOfBirth`,`a`.`MartialStatus` AS `MartialStatus`,`a`.`Gender` AS `Gender`,(select `p`.`PhoneNumber` from `phone` `p` where ((`p`.`BusinessObjectID` = `a`.`BusinessObjectIDPerson`) and (`p`.`PhoneType` = 'Business'))) AS `Business Phone`,(select `p`.`PhoneNumber` from `phone` `p` where ((`p`.`BusinessObjectID` = `a`.`BusinessObjectIDPerson`) and (`p`.`PhoneType` = 'Personal'))) AS `Personal Phone`,(select `p`.`PhoneNumber` from `phone` `p` where ((`p`.`BusinessObjectID` = `a`.`BusinessObjectIDPerson`) and (`p`.`PhoneType` = 'Home'))) AS `Home Phone`,(select `e`.`EmailID` from `email` `e` where ((`e`.`BusinessObjectID` = `a`.`BusinessObjectIDPerson`) and (`e`.`MailType` = 'Business'))) AS `Business Email`,(select `e`.`EmailID` from `email` `e` where ((`e`.`BusinessObjectID` = `a`.`BusinessObjectIDPerson`) and (`e`.`MailType` = 'Personal'))) AS `Personal Email`,`ad`.`Address1` AS `Address1`,`ad`.`Address2` AS `Address2`,`ad`.`City` AS `City`,`ad`.`State` AS `State`,`ad`.`ZipCode` AS `ZipCode`,`ad`.`Country` AS `Country`,`r`.`BusinessObjectIDCompany` AS `BusinessObjectIDCompany`,`r`.`CustomerID` AS `CustomerID`,`c`.`CompanyName` AS `Companyname` from ((((`person` `a` left join `relation` `r` on((`r`.`BusinessObjectIDPerson` = `a`.`BusinessObjectIDPerson`))) left join `name` `n` on((`n`.`BusinessObjectID` = `a`.`BusinessObjectIDPerson`))) left join `customer` `c` on((`c`.`CustomerID` = `r`.`CustomerID`))) left join `addresses` `ad` on((`ad`.`BusinessObjectID` = `a`.`BusinessObjectIDPerson`))) where (`a`.`PersonType` = 'External') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `leadview`
--

/*!50001 DROP VIEW IF EXISTS `leadview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `leadview` AS select `l`.`LeadID` AS `LeadID`,`l`.`LeadDescription` AS `LeadDescription`,`s`.`Status_Description` AS `Status`,concat(`np`.`FirstName`,',',`np`.`LastName`) AS `ContactName`,`l`.`CreatedOn` AS `CreatedOn`,concat(`ne`.`FirstName`,',',`ne`.`LastName`) AS `CreatedBy`,`c`.`CompanyName` AS `Companyname`,`bg`.`BusinessGroupName` AS `BusinessGroupName`,`c`.`CustomerType` AS `CustomerType` from (((((((`lead` `l` left join `customer` `c` on((`c`.`BusinessObjectIDCompany` = `l`.`BusinessObjectIDCompany`))) left join `status` `s` on((`s`.`StatusID` = `l`.`LeadStatus`))) left join `name` `np` on((`l`.`BusinessObjectIDPerson` = `np`.`BusinessObjectID`))) left join `businessgroup` `bg` on((`bg`.`BusinessGroupID` = `c`.`BusinessGroupID`))) left join `employee` `e` on((`e`.`EmployeeID` = `l`.`CreatedBy`))) left join `person` `p` on((`e`.`PersonID` = `p`.`PersonID`))) left join `name` `ne` on((`ne`.`BusinessObjectID` = `p`.`BusinessObjectIDPerson`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projectview`
--

/*!50001 DROP VIEW IF EXISTS `projectview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projectview` AS select `r`.`ProjectID` AS `projectid`,sum(`r`.`revenueAmount`) AS `Grossrevenue`,`p`.`ProjectName` AS `projectname`,`p`.`Status` AS `status`,`o`.`OpportunityID` AS `OpportunityID`,`o`.`OpportunityDescription` AS `OpportunityDescription`,`c`.`CustomerID` AS `customerid`,`c`.`CompanyName` AS `companyname`,`c`.`Region` AS `region`,`g`.`BusinessGroupName` AS `businessgroupname` from ((((`projectrevenue` `r` join `project` `p` on((`p`.`ProjectID` = `r`.`ProjectID`))) left join `opportunity` `o` on((`o`.`OpportunityID` = `p`.`OpportunityID`))) left join `customer` `c` on((`c`.`CustomerID` = `o`.`CustomerID`))) left join `businessgroup` `g` on((`g`.`BusinessGroupID` = `c`.`BusinessGroupID`))) where (`r`.`ProjectID` = (select `project`.`ProjectID` from `project` where (`project`.`ProjectID` = `r`.`ProjectID`))) group by `r`.`ProjectID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-12 14:48:24
