-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: ontology
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `disease_symptoms`
--

DROP TABLE IF EXISTS `disease_symptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `disease_symptoms` (
  `disease_id` varchar(255) DEFAULT NULL,
  `symptom_id` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  KEY `disease_id` (`disease_id`),
  KEY `symptom_id` (`symptom_id`),
  CONSTRAINT `disease_symptoms_ibfk_1` FOREIGN KEY (`disease_id`) REFERENCES `diseases` (`disease_id`),
  CONSTRAINT `disease_symptoms_ibfk_2` FOREIGN KEY (`symptom_id`) REFERENCES `symptoms` (`symptom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease_symptoms`
--

LOCK TABLES `disease_symptoms` WRITE;
/*!40000 ALTER TABLE `disease_symptoms` DISABLE KEYS */;
INSERT INTO `disease_symptoms` VALUES ('C0043352','C0557875',9),('C0043352','C0020175',9),('C0043352','C0232471',9),('C0011847','C0024031',9),('C0011847','C0848724',9),('C0149725','C0231617',9),('C0149725','C0010200',9),('C0149725','C1321587',9),('C0149725','C0085593',9),('C0036916','C0406671',9),('C0036916','C1442877',9),('C0036916','C0015230',19),('C0036916','C0549386',9),('C0036916','C0848720',9),('C0036916','C0231218',9),('C0036916','C0085624',9),('C0036916','C0033774',9),('C0004096','C0010200',239),('C0004096','C0231617',39),('C0004096','C0027424',19),('C0004096','C0232292',39),('C0004096','C0043144',99),('C0004096','C0683369',19),('C0004096','C0013404',119),('C0024138','C0030193',19),('C0024138','C0003862',9),('C0024138','C0234238',9),('C0024138','C0231528',9),('C0497169','C0015230',389),('C0011847','C0557875',69),('C0004096','C1659989',9),('C0004096','C0302539',9),('C0004096','C0425449',19),('C0004096','C0037384',9),('C0004096','C0033774',19),('C0004096','C0016382',9),('C0041912','C0085593',9),('C0442874','C0278146',9),('C0442874','C0028643',9),('C0442874','C2242996',9),('C0442874','C0030193',9),('C0442874','C0455270',9),('C0011847','C0152165',9),('C0018621','C0010200',9),('C0004096','C1321587',19),('C0004096','C0557875',29),('C0004096','C0000737',9),('C0004096','C0012833',19),('C0004096','C0030193',49),('C0004096','C1579931',9),('C0004096','C0423636',9),('C0004096','C0018681',39),('C0011847','C0040822',29),('C0011847','C0231772',9),('C0004096','C0221423',49),('C0004096','C0497406',19),('C0270724','C0026821',9),('C0270724','C0023218',9),('C0004096','C0026821',19),('C0004096','C0023218',9),('C0004096','C0003862',9),('C0004096','C0011991',9),('C0241266','C0596601',9),('C0011847','C0030193',159),('C0011847','C0026821',9),('C0011847','C0023218',9),('C0004096','C0008031',39),('C0004096','C0795691',9),('C0497169','C0027424',19),('C0497169','C0242429',229),('C0497169','C0010200',99),('C0004096','C0857172',9),('C0004096','C0027769',19),('C0497169','C0030193',149),('C0497169','C0003862',79),('C0497169','C0221423',239),('C0497169','C2129214',69),('C0497169','C0235309',39),('C0497169','C0015672',149),('C0497169','C0149651',69),('C0497169','C0012833',99),('C0011847','C0085624',19),('C0011847','C0012833',59),('C0497169','C0578454',9),('C0497169','C0007859',39),('C0497169','C2242996',19),('C3280240','C0028084',9),('C3280240','C0234233',9),('C0702135','C0036572',9),('C0702135','C0221423',9),('C0702135','C0015672',9),('C0702135','C0043144',9),('C0702135','C0231617',9),('C0702135','C0018681',9),('C0702135','C0010200',9),('C0012634','C0010201',9),('C0012634','C0010200',9),('C0012634','C0013404',9),('C0009443','C0232292',9),('C0004096','C0231655',9),('C0011847','C0042571',19),('C0004096','C0037090',9),('C0004096','C0016204',9),('C0004096','C0231811',9),('C0004096','C0742339',9),('C0004096','C0744318',9),('C0004096','C0857027',9),('C0004096','C0085624',9),('C0004096','C0264345',9),('C0011847','C0003862',29),('C0011847','C3714552',99),('C0011847','C0010200',29),('C0011849','C0026821',9),('C0011847','C0221170',9),('C0011847','C0018681',89),('C0011847','C0683369',29),('C0004096','C1517205',9),('C0004096','C0438716',9),('C0041912','C0043144',9),('C0009443','C0013404',9),('C0004096','C0037088',9),('C0004096','C0220870',9),('C0004096','C0242429',9),('C0004096','C0234233',9),('C0011847','C0221423',89),('C0011847','C0221100',9),('C0011847','C0028643',39),('C0011847','C0232854',9),('C0011847','C1135120',9),('C0011849','C0221423',9),('C0011847','C0043144',9),('C0011849','C0020175',19),('C0011849','C0344232',9),('C0011847','C0020175',49),('C0011847','C0231218',59),('C0011847','C0232471',59),('C0011847','C0037088',29),('C0004096','C0231218',9),('C0004096','C0042571',9),('C0012634','C0221423',9),('C0004096','C0009806',9),('C0004096','C3714552',9),('C0004096','C0917801',9),('C0011847','C0858708',9),('C0497169','C0221512',69),('C0497169','C0392171',119),('C0497169','C0234657',9),('C0497169','C0011991',109),('C0004096','C0849791',9),('C0011847','C0013911',9),('C0011847','C0577573',9),('C0011847','C1704276',9),('C0011847','C0497406',99),('C0011847','C0033774',29),('C0497169','C1579838',39),('C0497169','C0231617',79),('C0497169','C0033774',179),('C0497169','C0231528',89),('C0497169','C0018681',139),('C0497169','C0231218',119),('C0497169','C0085624',79),('C0497169','C0850149',59),('C0497169','C0241374',9),('C0497169','C0042963',29),('C0497169','C0234233',159),('C3280240','C0557875',9),('C0011847','C0004604',19),('C0011847','C0302539',29),('C0497169','C0278145',9),('C0497169','C0849850',9),('C0497169','C0600142',9),('C0497169','C0455270',9),('C0497169','C0028081',59),('C0497169','C0239589',19),('C0031350','C0242429',29),('C0031350','C0027769',19),('C0497169','C0231749',9),('C0011847','C0795691',19),('C0011847','C0220870',29),('C0040253','C0392171',9),('C0497169','C0234238',69),('C0497169','C0857027',19),('C0497169','C0033775',9),('C0497169','C0039070',19),('C0497169','C0741585',39),('C0011847','C0015230',29),('C0011847','C0016512',39),('C0011847','C0850630',9),('C0011847','C2242996',29),('C0497169','C2957106',9),('C0017665','C0812426',9),('C0011847','C0858600',9),('C0011860','C0028643',9),('C0011860','C0030193',9),('C0019693','C0221423',9),('C0019693','C0231218',9),('C0442874','C0016382',9),('C0036916','C0221423',19),('C0036916','C0018681',9),('C0497169','C1260880',39),('C0497169','C0036396',9),('C0497169','C0040822',29),('C0497169','C0037088',29),('C0020456','C0557875',9),('C0004135','C3714552',9),('C0497169','C0557875',89),('C0497169','C0027497',79),('C0497169','C0085593',49),('C0497169','C1291077',19),('C0497169','C0014724',9),('C0011847','C0857027',19),('C0011847','C0849640',9),('C0497169','C0849959',9),('C0019693','C0027769',9),('C0497169','C3714552',59),('C0497169','C0344232',9),('C0497169','C0683369',59),('C0011847','C0085602',9),('C0011847','C0015672',69),('C0011860','C0011991',9),('C0011860','C0042963',9),('C0497169','C0239783',19),('C0497169','C0522067',9),('C0497169','C0236000',39),('C0497169','C0013404',19),('C0011847','C0039070',19),('C0149756','C0751372',9),('C0011847','C0231617',19),('C0497169','C0000737',29),('C0014518','C0231617',9),('C0497169','C0474585',9),('C0497169','C0220870',19),('C0036916','C0392171',9),('C0036916','C0030193',9),('C0036916','C0220870',9),('C0011847','C0392674',19),('C0497169','C0848290',9),('C0011849','C0557875',19),('C0011849','C0027497',9),('C0011849','C0015672',9),('C0011849','C0231218',9),('C0011849','C0012833',19),('C0011849','C0232471',9),('C0011849','C0018681',9),('C0011849','C0392674',9),('C1263960','C0042963',9),('C0497169','C0027769',79),('C0497169','C0241727',9),('C0011847','C0235129',9),('C0011847','C0239649',19),('C0011847','C0085593',19),('C0019340','C0006625',9),('C0011847','C0011991',19),('C0497169','C3640014',9),('C0497169','C0013456',29),('C0497169','C0344375',19),('C0011847','C0042963',19),('C0011847','C0027497',49),('C0011847','C0344232',9),('C0011849','C0596601',9),('C0011849','C0023218',9),('C1704330','C1442877',9),('C0011847','C0018834',9),('C0011847','C0085631',9),('C0011847','C0240941',9),('C0011847','C0007859',9),('C0011847','C3257803',9),('C0011847','C0600142',9),('C0011847','C0232431',9),('C0497169','C0578687',9),('C0497169','C0312422',9),('C0497169','C0026821',9),('C0497169','C0232292',9),('C0497169','C0847550',9),('C0497169','C0019825',9),('C0019693','C0015230',29),('C0011847','C0231749',9),('C0011847','C0009806',9),('C0011847','C0231528',9),('C0011847','C0917801',29),('C0011847','C0036572',19),('C0011847','C0234238',9),('C0011847','C0023222',9),('C0011847','C0221758',9),('C0011847','C0574002',9),('C0011847','C0238656',9),('C0011847','C0427008',9),('C0497169','C0235108',9),('C0497169','C0221170',9),('C0497169','C0151908',9),('C0011847','C0233401',9),('C0497169','C0848283',19),('C0497169','C1096446',9),('C0011847','C0235309',19),('C0019360','C0030193',9),('C0011847','C0518214',9),('C0497169','C0857057',9),('C0030360','C0221423',9),('C0011847','C0312414',9),('C0027051','C0221512',9),('C0027051','C0231218',9),('C0027051','C0030193',9),('C0014518','C0030193',9),('C0014518','C0600142',9),('C0263068','C0557875',9),('C0263068','C0040822',9),('C0263068','C0151315',9),('C0237974','C2129214',9),('C0237974','C0015230',9),('C0237974','C0015672',9),('C0237974','C0231528',9),('C0237974','C0013404',9),('C0796085','C0011991',9),('C0796085','C0007859',9),('C0796085','C0231528',9),('C0796085','C0004604',9),('C0497169','C0497406',9),('C0497169','C0235710',19),('C0497169','C2364135',19),('C0497169','C0004604',19),('C0011849','C0036572',9),('C0011847','C2957106',9),('C3280240','C0037088',9),('C0011849','C0028643',9),('C0011849','C0005904',9),('C0011849','C0030193',29),('C0497169','C0542476',19),('C0018939','C2242996',9),('C0018939','C0027769',9),('C0001175','C0011991',9),('C0001175','C0015230',9),('C0001175','C0030193',9),('C0019693','C0033774',9),('C0011847','C0011124',9),('C0497169','C0233763',9),('C0011847','C0028081',9),('C0011847','C0027498',9),('C0011847','C1579931',19),('C0011847','C0234369',9),('C0011847','C0742339',9),('C0011849','C0278141',9),('C3280240','C0221423',9),('C0019693','C0231617',19),('C0022658','C0027769',19),('C0022658','C0848168',9),('C0022658','C0030193',249),('C3887499','C0030193',9),('C0235640','C0030193',9),('C0022658','C0027497',29),('C0022658','C0000729',9),('C0022658','C0085624',59),('C0022658','C0234230',9),('C0022658','C0004604',59),('C0022658','C0234233',19),('C0011849','C0027769',9),('C0022658','C0003862',9),('C0022658','C0221423',9),('C0022658','C0281856',9),('C0022658','C0558489',39),('C0022658','C0015672',49),('C0022658','C0033774',19),('C0022658','C0857245',9),('C0022658','C0234238',9),('C0022658','C0016199',19),('C0022658','C0857213',9),('C0022658','C1446787',39),('C0022650','C0234238',9),('C0022650','C0016382',9),('C0022650','C0812426',9),('C0022658','C0683369',29),('C0022658','C0024031',39),('C0022658','C0557875',19),('C0022658','C1291077',19),('C0022658','C0748706',29),('C0022650','C0004604',9),('C0011847','C0700590',9),('C0011847','C0016204',9),('C0033771','C0578050',9),('C0022658','C0278144',9),('C0022658','C0015230',19),('C0022658','C0577573',9),('C0022658','C0184567',9),('C0022658','C0009806',29),('C0022658','C0037763',9),('C0022658','C0016382',9),('C0022658','C2896456',9),('C0022658','C0000737',39),('C0022658','C0854148',9),('C0022658','C0438716',9),('C0011175','C0027497',9),('C0011175','C0231218',9),('C0011175','C0012833',9),('C0011175','C0004604',9),('C0011175','C0030193',9),('C0022658','C0036572',9),('C0022658','C0027424',19),('C0022658','C0018681',29),('C0022658','C3714552',39),('C0022658','C0026821',29),('C0022658','C0917801',29),('C0022658','C0221512',9),('C0022658','C0231218',39),('C0022658','C0455270',19),('C0022658','C0232854',9),('C0022658','C0314719',9),('C0022658','C0016204',9),('C0022658','C0751295',9),('C3280240','C0581394',9),('C0019693','C1096446',9),('C0019693','C0015672',9),('C0019693','C0018681',9),('C0019693','C0850149',9),('C0022658','C0037088',9),('C0022650','C0030193',19),('C0010709','C0234238',9),('C0022658','C0040822',19),('C0022658','C0574068',9),('C0022658','C0151830',9),('C0011847','C0008031',9),('C0011847','C0013395',9),('C0011847','C0018520',9),('C0022658','C0392674',9),('C0022658','C0497406',9),('C0022658','C0011991',9),('C0022658','C0549299',9),('C0022658','C0236083',9),('C0022658','C0042963',29),('C0022658','C0741585',9),('C0022658','C0231617',9),('C0042109','C0015230',9),('C0042109','C0033774',9),('C0497169','C0426623',9),('C0497169','C1096596',9),('C0497169','C0564822',9),('C0000833','C0030193',9),('C0022658','C0812426',9),('C3714506','C0574002',9),('C1384594','C0577573',9),('C1384594','C0423640',9),('C1384594','C0235299',9),('C0022658','C0178310',9),('C0022658','C0849963',9),('C0022658','C0423736',9),('C0022658','C0085593',9),('C0022658','C0013404',9),('C0497169','C0577573',9),('C0497169','C0281856',9),('C0497169','C0849796',9),('C0497169','C0043144',9),('C0497169','C1442877',9),('C0497169','C0020175',9),('C0022658','C0497481',9),('C0022658','C0220870',9),('C0497169','C0028643',29),('C0497169','C0239832',29),('C0497169','C0231772',29),('C0019693','C0042963',9),('C0019693','C0027497',9),('C0022658','C0574002',9),('C0497169','C2029681',9),('C0497169','C0151315',9),('C0497169','C0863105',9),('C0497169','C2220244',9),('C0031350','C0015230',9),('C0019693','C0234238',9),('C0042029','C0231617',9),('C0042029','C0085624',9),('C3280240','C3714552',9),('C3280240','C0030193',9);
/*!40000 ALTER TABLE `disease_symptoms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-21 21:14:55