/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AbstractModifiedResidue`
--
DROP TABLE IF EXISTS `AbstractModifiedResidue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AbstractModifiedResidue` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `referenceSequence` int(10) unsigned DEFAULT NULL,
    `referenceSequence_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `referenceSequence` (`referenceSequence`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Affiliation_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Affiliation_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Affiliation`
--
DROP TABLE IF EXISTS `Affiliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Affiliation` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `address` mediumtext COLLATE utf8_unicode_ci,
    KEY `address` (`address`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Anatomy`
--
DROP TABLE IF EXISTS `Anatomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Anatomy` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BlackBoxEvent`
--
DROP TABLE IF EXISTS `BlackBoxEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlackBoxEvent` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `templateEvent` int(10) unsigned DEFAULT NULL,
    `templateEvent_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `templateEvent` (`templateEvent`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Book_2_chapterAuthors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Book_2_chapterAuthors` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `chapterAuthors_rank` int(10) unsigned DEFAULT NULL,
  `chapterAuthors` int(10) unsigned DEFAULT NULL,
  `chapterAuthors_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `chapterAuthors` (`chapterAuthors`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Book`
--
DROP TABLE IF EXISTS `Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Book` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `ISBN` mediumtext COLLATE utf8_unicode_ci,
    `chapterTitle` mediumtext COLLATE utf8_unicode_ci,
    `pages` mediumtext COLLATE utf8_unicode_ci,
    `year` int(10) DEFAULT NULL,
    `publisher` int(10) unsigned DEFAULT NULL,
    `publisher_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `ISBN` (`ISBN`(10)),
    KEY `chapterTitle` (`chapterTitle`(10)),
    KEY `pages` (`pages`(10)),
    KEY `year` (`year`),
    KEY `publisher` (`publisher`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `CandidateSet_2_hasCandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CandidateSet_2_hasCandidate` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `hasCandidate_rank` int(10) unsigned DEFAULT NULL,
  `hasCandidate` int(10) unsigned DEFAULT NULL,
  `hasCandidate_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasCandidate` (`hasCandidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CandidateSet`
--
DROP TABLE IF EXISTS `CandidateSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CandidateSet` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `CatalystActivity_2_activeUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CatalystActivity_2_activeUnit` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `activeUnit_rank` int(10) unsigned DEFAULT NULL,
  `activeUnit` int(10) unsigned DEFAULT NULL,
  `activeUnit_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `activeUnit` (`activeUnit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CatalystActivity`
--
DROP TABLE IF EXISTS `CatalystActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CatalystActivity` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `activity` int(10) unsigned DEFAULT NULL,
    `activity_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `physicalEntity` int(10) unsigned DEFAULT NULL,
    `physicalEntity_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `activity` (`activity`),
    KEY `physicalEntity` (`physicalEntity`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CatalystActivityReference`
--
DROP TABLE IF EXISTS `CatalystActivityReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CatalystActivityReference` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `catalystActivity` int(10) unsigned DEFAULT NULL,
    `catalystActivity_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `catalystActivity` (`catalystActivity`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Cell_2_RNAMarker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cell_2_RNAMarker` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `RNAMarker_rank` int(10) unsigned DEFAULT NULL,
  `RNAMarker` int(10) unsigned DEFAULT NULL,
  `RNAMarker_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `RNAMarker` (`RNAMarker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Cell_2_markerReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cell_2_markerReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `markerReference_rank` int(10) unsigned DEFAULT NULL,
  `markerReference` int(10) unsigned DEFAULT NULL,
  `markerReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `markerReference` (`markerReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Cell_2_proteinMarker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cell_2_proteinMarker` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `proteinMarker_rank` int(10) unsigned DEFAULT NULL,
  `proteinMarker` int(10) unsigned DEFAULT NULL,
  `proteinMarker_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `proteinMarker` (`proteinMarker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Cell_2_species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cell_2_species` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `species_rank` int(10) unsigned DEFAULT NULL,
  `species` int(10) unsigned DEFAULT NULL,
  `species_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Cell`
--
DROP TABLE IF EXISTS `Cell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cell` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `organ` int(10) unsigned DEFAULT NULL,
    `organ_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `tissueLayer` int(10) unsigned DEFAULT NULL,
    `tissueLayer_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `tissue` int(10) unsigned DEFAULT NULL,
    `tissue_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `organ` (`organ`),
    KEY `tissueLayer` (`tissueLayer`),
    KEY `tissue` (`tissue`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CellDevelopmentStep`
--
DROP TABLE IF EXISTS `CellDevelopmentStep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CellDevelopmentStep` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `tissue` int(10) unsigned DEFAULT NULL,
    `tissue_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `tissue` (`tissue`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CellLineagePath`
--
DROP TABLE IF EXISTS `CellLineagePath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CellLineagePath` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `tissue` int(10) unsigned DEFAULT NULL,
    `tissue_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `tissue` (`tissue`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CellType`
--
DROP TABLE IF EXISTS `CellType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CellType` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ChemicalDrug`
--
DROP TABLE IF EXISTS `ChemicalDrug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChemicalDrug` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Compartment`
--
DROP TABLE IF EXISTS `Compartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Compartment` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Complex_2_hasComponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Complex_2_hasComponent` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `hasComponent_rank` int(10) unsigned DEFAULT NULL,
  `hasComponent` int(10) unsigned DEFAULT NULL,
  `hasComponent_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasComponent` (`hasComponent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Complex_2_includedLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Complex_2_includedLocation` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `includedLocation_rank` int(10) unsigned DEFAULT NULL,
  `includedLocation` int(10) unsigned DEFAULT NULL,
  `includedLocation_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `includedLocation` (`includedLocation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Complex_2_compartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Complex_2_compartment` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `compartment_rank` int(10) unsigned DEFAULT NULL,
  `compartment` int(10) unsigned DEFAULT NULL,
  `compartment_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `compartment` (`compartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Complex_2_entityOnOtherCell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Complex_2_entityOnOtherCell` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `entityOnOtherCell_rank` int(10) unsigned DEFAULT NULL,
  `entityOnOtherCell` int(10) unsigned DEFAULT NULL,
  `entityOnOtherCell_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `entityOnOtherCell` (`entityOnOtherCell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Complex_2_relatedSpecies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Complex_2_relatedSpecies` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `relatedSpecies_rank` int(10) unsigned DEFAULT NULL,
  `relatedSpecies` int(10) unsigned DEFAULT NULL,
  `relatedSpecies_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `relatedSpecies` (`relatedSpecies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Complex_2_species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Complex_2_species` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `species_rank` int(10) unsigned DEFAULT NULL,
  `species` int(10) unsigned DEFAULT NULL,
  `species_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Complex`
--
DROP TABLE IF EXISTS `Complex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Complex` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `stoichiometryKnown` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    `isChimeric` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `stoichiometryKnown` (`stoichiometryKnown`),
    KEY `isChimeric` (`isChimeric`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ControlledVocabulary_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ControlledVocabulary_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ControlledVocabulary`
--
DROP TABLE IF EXISTS `ControlledVocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ControlledVocabulary` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `definition` mediumtext COLLATE utf8_unicode_ci,
    KEY `definition` (`definition`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ControlReference_2_literatureReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ControlReference_2_literatureReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `literatureReference_rank` int(10) unsigned DEFAULT NULL,
  `literatureReference` int(10) unsigned DEFAULT NULL,
  `literatureReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `literatureReference` (`literatureReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ControlReference`
--
DROP TABLE IF EXISTS `ControlReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ControlReference` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `CrosslinkedResidue_2_secondCoordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CrosslinkedResidue_2_secondCoordinate` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `secondCoordinate_rank` int(10) unsigned DEFAULT NULL,
  `secondCoordinate` int(10) DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `secondCoordinate` (`secondCoordinate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CrosslinkedResidue`
--
DROP TABLE IF EXISTS `CrosslinkedResidue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CrosslinkedResidue` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `modification` int(10) unsigned DEFAULT NULL,
    `modification_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `modification` (`modification`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `DatabaseIdentifier_2_crossReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatabaseIdentifier_2_crossReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `crossReference_rank` int(10) unsigned DEFAULT NULL,
  `crossReference` int(10) unsigned DEFAULT NULL,
  `crossReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `crossReference` (`crossReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DatabaseIdentifier`
--
DROP TABLE IF EXISTS `DatabaseIdentifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatabaseIdentifier` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `identifier` mediumtext COLLATE utf8_unicode_ci,
    `referenceDatabase` int(10) unsigned DEFAULT NULL,
    `referenceDatabase_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `identifier` (`identifier`(10)),
    KEY `referenceDatabase` (`referenceDatabase`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `DatabaseObject_2_modified`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatabaseObject_2_modified` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `modified_rank` int(10) unsigned DEFAULT NULL,
  `modified` int(10) unsigned DEFAULT NULL,
  `modified_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DatabaseObject`
--
DROP TABLE IF EXISTS `DatabaseObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatabaseObject` (
    `DB_ID` int(10) NOT NULL AUTO_INCREMENT,
    `_displayName` mediumtext COLLATE utf8_unicode_ci,
    `_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created` int(10) unsigned DEFAULT NULL,
    `created_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `stableIdentifier` int(10) unsigned DEFAULT NULL,
    `stableIdentifier_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `_displayName` (`_displayName`(10)),
    KEY `_timestamp` (`_timestamp`),
    KEY `created` (`created`),
    KEY `stableIdentifier` (`stableIdentifier`),
    KEY `_class` (`_class`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9859833 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DataModel`
--
DROP TABLE IF EXISTS `DataModel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DataModel` (
    `thing` text COLLATE utf8_unicode_ci,
    `thing_class` enum('SchemaClass','SchemaClassAttribute','Schema') COLLATE utf8_unicode_ci DEFAULT NULL,
    `property_name` text COLLATE utf8_unicode_ci,
    `property_value` text COLLATE utf8_unicode_ci,
    `property_value_type` enum('INTEGER','SYMBOL','STRING','INSTANCE','SchemaClass','SchemaClassAttribute') COLLATE utf8_unicode_ci DEFAULT NULL,
    `property_value_rank` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DefinedSet`
--
DROP TABLE IF EXISTS `DefinedSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DefinedSet` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `_Deleted_2_deletedInstanceDB_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_Deleted_2_deletedInstanceDB_ID` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `deletedInstanceDB_ID_rank` int(10) unsigned DEFAULT NULL,
  `deletedInstanceDB_ID` int(10) DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `deletedInstanceDB_ID` (`deletedInstanceDB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `_Deleted_2_deletedInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_Deleted_2_deletedInstance` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `deletedInstance_rank` int(10) unsigned DEFAULT NULL,
  `deletedInstance` int(10) unsigned DEFAULT NULL,
  `deletedInstance_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `deletedInstance` (`deletedInstance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `_Deleted_2_replacementInstances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_Deleted_2_replacementInstances` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `replacementInstances_rank` int(10) unsigned DEFAULT NULL,
  `replacementInstances` int(10) unsigned DEFAULT NULL,
  `replacementInstances_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `replacementInstances` (`replacementInstances`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `_Deleted_2_replacementInstanceDB_IDs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_Deleted_2_replacementInstanceDB_IDs` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `replacementInstanceDB_IDs_rank` int(10) unsigned DEFAULT NULL,
  `replacementInstanceDB_IDs` int(10) DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `replacementInstanceDB_IDs` (`replacementInstanceDB_IDs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_Deleted`
--
DROP TABLE IF EXISTS `_Deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_Deleted` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `curatorComment` mediumtext COLLATE utf8_unicode_ci,
    `reason` int(10) unsigned DEFAULT NULL,
    `reason_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `curatorComment` (`curatorComment`(10)),
    KEY `reason` (`reason`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DeletedControlledVocabulary`
--
DROP TABLE IF EXISTS `DeletedControlledVocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DeletedControlledVocabulary` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `_DeletedInstance_2_species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_DeletedInstance_2_species` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `species_rank` int(10) unsigned DEFAULT NULL,
  `species` int(10) unsigned DEFAULT NULL,
  `species_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_DeletedInstance`
--
DROP TABLE IF EXISTS `_DeletedInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_DeletedInstance` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `class` text COLLATE utf8_unicode_ci,
    `deletedInstanceDB_ID` int(10) unsigned DEFAULT NULL,
    `deletedStableIdentifier` int(10) unsigned DEFAULT NULL,
    `deletedStableIdentifier_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `name` text COLLATE utf8_unicode_ci,
    KEY `class` (`class`(10)),
    KEY `deletedInstanceDB_ID` (`deletedInstanceDB_ID`),
    KEY `deletedStableIdentifier` (`deletedStableIdentifier`),
    KEY `name` (`name`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Depolymerisation`
--
DROP TABLE IF EXISTS `Depolymerisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Depolymerisation` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Disease`
--
DROP TABLE IF EXISTS `Disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Disease` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Drug_2_compartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Drug_2_compartment` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `compartment_rank` int(10) unsigned DEFAULT NULL,
  `compartment` int(10) unsigned DEFAULT NULL,
  `compartment_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `compartment` (`compartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Drug`
--
DROP TABLE IF EXISTS `Drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Drug` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `referenceEntity` int(10) unsigned DEFAULT NULL,
    `referenceEntity_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `referenceEntity` (`referenceEntity`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `DrugActionType_2_instanceOf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DrugActionType_2_instanceOf` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `instanceOf_rank` int(10) unsigned DEFAULT NULL,
  `instanceOf` int(10) unsigned DEFAULT NULL,
  `instanceOf_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `instanceOf` (`instanceOf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DrugActionType`
--
DROP TABLE IF EXISTS `DrugActionType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DrugActionType` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `EntityFunctionalStatus_2_functionalStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntityFunctionalStatus_2_functionalStatus` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `functionalStatus_rank` int(10) unsigned DEFAULT NULL,
  `functionalStatus` int(10) unsigned DEFAULT NULL,
  `functionalStatus_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `functionalStatus` (`functionalStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EntityFunctionalStatus`
--
DROP TABLE IF EXISTS `EntityFunctionalStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntityFunctionalStatus` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `diseaseEntity` int(10) unsigned DEFAULT NULL,
    `diseaseEntity_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `normalEntity` int(10) unsigned DEFAULT NULL,
    `normalEntity_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `diseaseEntity` (`diseaseEntity`),
    KEY `normalEntity` (`normalEntity`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `EntitySet_2_compartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntitySet_2_compartment` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `compartment_rank` int(10) unsigned DEFAULT NULL,
  `compartment` int(10) unsigned DEFAULT NULL,
  `compartment_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `compartment` (`compartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `EntitySet_2_relatedSpecies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntitySet_2_relatedSpecies` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `relatedSpecies_rank` int(10) unsigned DEFAULT NULL,
  `relatedSpecies` int(10) unsigned DEFAULT NULL,
  `relatedSpecies_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `relatedSpecies` (`relatedSpecies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `EntitySet_2_species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntitySet_2_species` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `species_rank` int(10) unsigned DEFAULT NULL,
  `species` int(10) unsigned DEFAULT NULL,
  `species_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `EntitySet_2_hasMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntitySet_2_hasMember` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `hasMember_rank` int(10) unsigned DEFAULT NULL,
  `hasMember` int(10) unsigned DEFAULT NULL,
  `hasMember_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasMember` (`hasMember`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EntitySet`
--
DROP TABLE IF EXISTS `EntitySet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntitySet` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `isOrdered` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `isOrdered` (`isOrdered`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `EntityWithAccessionedSequence_2_hasModifiedResidue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntityWithAccessionedSequence_2_hasModifiedResidue` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `hasModifiedResidue_rank` int(10) unsigned DEFAULT NULL,
  `hasModifiedResidue` int(10) unsigned DEFAULT NULL,
  `hasModifiedResidue_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasModifiedResidue` (`hasModifiedResidue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EntityWithAccessionedSequence`
--
DROP TABLE IF EXISTS `EntityWithAccessionedSequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntityWithAccessionedSequence` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `endCoordinate` int(10) DEFAULT NULL,
    `startCoordinate` int(10) DEFAULT NULL,
    `referenceEntity` int(10) unsigned DEFAULT NULL,
    `referenceEntity_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `endCoordinate` (`endCoordinate`),
    KEY `startCoordinate` (`startCoordinate`),
    KEY `referenceEntity` (`referenceEntity`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_disease` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `disease_rank` int(10) unsigned DEFAULT NULL,
  `disease` int(10) unsigned DEFAULT NULL,
  `disease_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `disease` (`disease`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_precedingEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_precedingEvent` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `precedingEvent_rank` int(10) unsigned DEFAULT NULL,
  `precedingEvent` int(10) unsigned DEFAULT NULL,
  `precedingEvent_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `precedingEvent` (`precedingEvent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_inferredFrom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_inferredFrom` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `inferredFrom_rank` int(10) unsigned DEFAULT NULL,
  `inferredFrom` int(10) unsigned DEFAULT NULL,
  `inferredFrom_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `inferredFrom` (`inferredFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_orthologousEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_orthologousEvent` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `orthologousEvent_rank` int(10) unsigned DEFAULT NULL,
  `orthologousEvent` int(10) unsigned DEFAULT NULL,
  `orthologousEvent_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `orthologousEvent` (`orthologousEvent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_reviewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_reviewed` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `reviewed_rank` int(10) unsigned DEFAULT NULL,
  `reviewed` int(10) unsigned DEFAULT NULL,
  `reviewed_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `reviewed` (`reviewed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_internalReviewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_internalReviewed` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `internalReviewed_rank` int(10) unsigned DEFAULT NULL,
  `internalReviewed` int(10) unsigned DEFAULT NULL,
  `internalReviewed_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `internalReviewed` (`internalReviewed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_negativePrecedingEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_negativePrecedingEvent` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `negativePrecedingEvent_rank` int(10) unsigned DEFAULT NULL,
  `negativePrecedingEvent` int(10) unsigned DEFAULT NULL,
  `negativePrecedingEvent_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `negativePrecedingEvent` (`negativePrecedingEvent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_structureModified`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_structureModified` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `structureModified_rank` int(10) unsigned DEFAULT NULL,
  `structureModified` int(10) unsigned DEFAULT NULL,
  `structureModified_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `structureModified` (`structureModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_authored`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_authored` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `authored_rank` int(10) unsigned DEFAULT NULL,
  `authored` int(10) unsigned DEFAULT NULL,
  `authored_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `authored` (`authored`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_edited`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_edited` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `edited_rank` int(10) unsigned DEFAULT NULL,
  `edited` int(10) unsigned DEFAULT NULL,
  `edited_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `edited` (`edited`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_crossReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_crossReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `crossReference_rank` int(10) unsigned DEFAULT NULL,
  `crossReference` int(10) unsigned DEFAULT NULL,
  `crossReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `crossReference` (`crossReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_figure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_figure` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `figure_rank` int(10) unsigned DEFAULT NULL,
  `figure` int(10) unsigned DEFAULT NULL,
  `figure_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `figure` (`figure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_literatureReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_literatureReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `literatureReference_rank` int(10) unsigned DEFAULT NULL,
  `literatureReference` int(10) unsigned DEFAULT NULL,
  `literatureReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `literatureReference` (`literatureReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_relatedSpecies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_relatedSpecies` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `relatedSpecies_rank` int(10) unsigned DEFAULT NULL,
  `relatedSpecies` int(10) unsigned DEFAULT NULL,
  `relatedSpecies_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `relatedSpecies` (`relatedSpecies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_revised`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_revised` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `revised_rank` int(10) unsigned DEFAULT NULL,
  `revised` int(10) unsigned DEFAULT NULL,
  `revised_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `revised` (`revised`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_species` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `species_rank` int(10) unsigned DEFAULT NULL,
  `species` int(10) unsigned DEFAULT NULL,
  `species_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Event_2_summation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_2_summation` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `summation_rank` int(10) unsigned DEFAULT NULL,
  `summation` int(10) unsigned DEFAULT NULL,
  `summation_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `summation` (`summation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Event`
--
DROP TABLE IF EXISTS `Event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `_doRelease` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    `releaseStatus` mediumtext COLLATE utf8_unicode_ci,
    `evidenceType` int(10) unsigned DEFAULT NULL,
    `evidenceType_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `reviewStatus` int(10) unsigned DEFAULT NULL,
    `reviewStatus_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `previousReviewStatus` int(10) unsigned DEFAULT NULL,
    `previousReviewStatus_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `definition` mediumtext COLLATE utf8_unicode_ci,
    `goBiologicalProcess` int(10) unsigned DEFAULT NULL,
    `goBiologicalProcess_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `releaseDate` date DEFAULT NULL,
    KEY `_doRelease` (`_doRelease`),
    KEY `releaseStatus` (`releaseStatus`(10)),
    KEY `evidenceType` (`evidenceType`),
    KEY `reviewStatus` (`reviewStatus`),
    KEY `previousReviewStatus` (`previousReviewStatus`),
    KEY `definition` (`definition`(10)),
    KEY `goBiologicalProcess` (`goBiologicalProcess`),
    KEY `releaseDate` (`releaseDate`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EvidenceType`
--
DROP TABLE IF EXISTS `EvidenceType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EvidenceType` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ExternalOntology_2_synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExternalOntology_2_synonym` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `synonym_rank` int(10) unsigned DEFAULT NULL,
  `synonym` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `synonym` (`synonym`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ExternalOntology_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExternalOntology_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ExternalOntology_2_instanceOf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExternalOntology_2_instanceOf` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `instanceOf_rank` int(10) unsigned DEFAULT NULL,
  `instanceOf` int(10) unsigned DEFAULT NULL,
  `instanceOf_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `instanceOf` (`instanceOf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExternalOntology`
--
DROP TABLE IF EXISTS `ExternalOntology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExternalOntology` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `definition` mediumtext COLLATE utf8_unicode_ci,
    `identifier` mediumtext COLLATE utf8_unicode_ci,
    `referenceDatabase` int(10) unsigned DEFAULT NULL,
    `referenceDatabase_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `definition` (`definition`(10)),
    KEY `identifier` (`identifier`(10)),
    KEY `referenceDatabase` (`referenceDatabase`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FailedReaction`
--
DROP TABLE IF EXISTS `FailedReaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FailedReaction` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Figure`
--
DROP TABLE IF EXISTS `Figure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Figure` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `url` mediumtext COLLATE utf8_unicode_ci,
    KEY `url` (`url`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FragmentDeletionModification`
--
DROP TABLE IF EXISTS `FragmentDeletionModification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FragmentDeletionModification` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FragmentInsertionModification`
--
DROP TABLE IF EXISTS `FragmentInsertionModification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FragmentInsertionModification` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `coordinate` int(10) DEFAULT NULL,
    KEY `coordinate` (`coordinate`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FragmentModification`
--
DROP TABLE IF EXISTS `FragmentModification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FragmentModification` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `endPositionInReferenceSequence` int(10) DEFAULT NULL,
    `startPositionInReferenceSequence` int(10) DEFAULT NULL,
    KEY `endPositionInReferenceSequence` (`endPositionInReferenceSequence`),
    KEY `startPositionInReferenceSequence` (`startPositionInReferenceSequence`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FragmentReplacedModification`
--
DROP TABLE IF EXISTS `FragmentReplacedModification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FragmentReplacedModification` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `alteredAminoAcidFragment` mediumtext COLLATE utf8_unicode_ci,
    KEY `alteredAminoAcidFragment` (`alteredAminoAcidFragment`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `FrontPage_2_frontPageItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FrontPage_2_frontPageItem` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `frontPageItem_rank` int(10) unsigned DEFAULT NULL,
  `frontPageItem` int(10) unsigned DEFAULT NULL,
  `frontPageItem_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `frontPageItem` (`frontPageItem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FrontPage`
--
DROP TABLE IF EXISTS `FrontPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FrontPage` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FunctionalStatus`
--
DROP TABLE IF EXISTS `FunctionalStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FunctionalStatus` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `functionalStatusType` int(10) unsigned DEFAULT NULL,
    `functionalStatusType_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `structuralVariant` int(10) unsigned DEFAULT NULL,
    `structuralVariant_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `functionalStatusType` (`functionalStatusType`),
    KEY `structuralVariant` (`structuralVariant`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `FunctionalStatusType_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FunctionalStatusType_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FunctionalStatusType`
--
DROP TABLE IF EXISTS `FunctionalStatusType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FunctionalStatusType` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `definition` mediumtext COLLATE utf8_unicode_ci,
    KEY `definition` (`definition`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GeneticallyModifiedResidue`
--
DROP TABLE IF EXISTS `GeneticallyModifiedResidue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GeneticallyModifiedResidue` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `GenomeEncodedEntity_2_compartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GenomeEncodedEntity_2_compartment` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `compartment_rank` int(10) unsigned DEFAULT NULL,
  `compartment` int(10) unsigned DEFAULT NULL,
  `compartment_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `compartment` (`compartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GenomeEncodedEntity`
--
DROP TABLE IF EXISTS `GenomeEncodedEntity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GenomeEncodedEntity` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `species` int(10) unsigned DEFAULT NULL,
    `species_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `species` (`species`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `GO_BiologicalProcess_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_BiologicalProcess_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GO_BiologicalProcess`
--
DROP TABLE IF EXISTS `GO_BiologicalProcess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_BiologicalProcess` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `accession` mediumtext COLLATE utf8_unicode_ci,
    `definition` mediumtext COLLATE utf8_unicode_ci,
    `referenceDatabase` int(10) unsigned DEFAULT NULL,
    `referenceDatabase_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `accession` (`accession`(10)),
    KEY `definition` (`definition`(10)),
    KEY `referenceDatabase` (`referenceDatabase`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `GO_CellularComponent_2_componentOf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_CellularComponent_2_componentOf` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `componentOf_rank` int(10) unsigned DEFAULT NULL,
  `componentOf` int(10) unsigned DEFAULT NULL,
  `componentOf_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `componentOf` (`componentOf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `GO_CellularComponent_2_hasPart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_CellularComponent_2_hasPart` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `hasPart_rank` int(10) unsigned DEFAULT NULL,
  `hasPart` int(10) unsigned DEFAULT NULL,
  `hasPart_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasPart` (`hasPart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `GO_CellularComponent_2_surroundedBy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_CellularComponent_2_surroundedBy` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `surroundedBy_rank` int(10) unsigned DEFAULT NULL,
  `surroundedBy` int(10) unsigned DEFAULT NULL,
  `surroundedBy_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `surroundedBy` (`surroundedBy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `GO_CellularComponent_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_CellularComponent_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `GO_CellularComponent_2_instanceOf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_CellularComponent_2_instanceOf` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `instanceOf_rank` int(10) unsigned DEFAULT NULL,
  `instanceOf` int(10) unsigned DEFAULT NULL,
  `instanceOf_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `instanceOf` (`instanceOf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GO_CellularComponent`
--
DROP TABLE IF EXISTS `GO_CellularComponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_CellularComponent` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `accession` mediumtext COLLATE utf8_unicode_ci,
    `definition` mediumtext COLLATE utf8_unicode_ci,
    `referenceDatabase` int(10) unsigned DEFAULT NULL,
    `referenceDatabase_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `accession` (`accession`(10)),
    KEY `definition` (`definition`(10)),
    KEY `referenceDatabase` (`referenceDatabase`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `GO_MolecularFunction_2_ecNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_MolecularFunction_2_ecNumber` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `ecNumber_rank` int(10) unsigned DEFAULT NULL,
  `ecNumber` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `ecNumber` (`ecNumber`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `GO_MolecularFunction_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_MolecularFunction_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GO_MolecularFunction`
--
DROP TABLE IF EXISTS `GO_MolecularFunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_MolecularFunction` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `accession` mediumtext COLLATE utf8_unicode_ci,
    `definition` mediumtext COLLATE utf8_unicode_ci,
    `referenceDatabase` int(10) unsigned DEFAULT NULL,
    `referenceDatabase_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `accession` (`accession`(10)),
    KEY `definition` (`definition`(10)),
    KEY `referenceDatabase` (`referenceDatabase`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GroupModifiedResidue`
--
DROP TABLE IF EXISTS `GroupModifiedResidue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupModifiedResidue` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `modification` int(10) unsigned DEFAULT NULL,
    `modification_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `modification` (`modification`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `InstanceEdit_2_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InstanceEdit_2_author` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `author_rank` int(10) unsigned DEFAULT NULL,
  `author` int(10) unsigned DEFAULT NULL,
  `author_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `author` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `InstanceEdit`
--
DROP TABLE IF EXISTS `InstanceEdit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InstanceEdit` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `note` mediumtext COLLATE utf8_unicode_ci,
    `_applyToAllEditedInstances` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `dateTime` (`dateTime`),
    KEY `note` (`note`(10)),
    KEY `_applyToAllEditedInstances` (`_applyToAllEditedInstances`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `InteractionEvent_2_partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InteractionEvent_2_partners` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `partners_rank` int(10) unsigned DEFAULT NULL,
  `partners` int(10) unsigned DEFAULT NULL,
  `partners_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `partners` (`partners`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `InteractionEvent`
--
DROP TABLE IF EXISTS `InteractionEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InteractionEvent` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `InterChainCrosslinkedResidue_2_equivalentTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InterChainCrosslinkedResidue_2_equivalentTo` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `equivalentTo_rank` int(10) unsigned DEFAULT NULL,
  `equivalentTo` int(10) unsigned DEFAULT NULL,
  `equivalentTo_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `equivalentTo` (`equivalentTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `InterChainCrosslinkedResidue_2_secondReferenceSequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InterChainCrosslinkedResidue_2_secondReferenceSequence` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `secondReferenceSequence_rank` int(10) unsigned DEFAULT NULL,
  `secondReferenceSequence` int(10) unsigned DEFAULT NULL,
  `secondReferenceSequence_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `secondReferenceSequence` (`secondReferenceSequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `InterChainCrosslinkedResidue`
--
DROP TABLE IF EXISTS `InterChainCrosslinkedResidue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InterChainCrosslinkedResidue` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IntraChainCrosslinkedResidue`
--
DROP TABLE IF EXISTS `IntraChainCrosslinkedResidue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IntraChainCrosslinkedResidue` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LiteratureReference`
--
DROP TABLE IF EXISTS `LiteratureReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LiteratureReference` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `journal` text COLLATE utf8_unicode_ci,
    `pages` mediumtext COLLATE utf8_unicode_ci,
    `pubMedIdentifier` int(10) DEFAULT NULL,
    `volume` int(10) DEFAULT NULL,
    `year` int(10) DEFAULT NULL,
    KEY `journal` (`journal`(10)),
    KEY `pages` (`pages`(10)),
    KEY `pubMedIdentifier` (`pubMedIdentifier`),
    KEY `volume` (`volume`),
    KEY `year` (`year`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `MarkerReference_2_cell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MarkerReference_2_cell` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `cell_rank` int(10) unsigned DEFAULT NULL,
  `cell` int(10) unsigned DEFAULT NULL,
  `cell_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `cell` (`cell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MarkerReference`
--
DROP TABLE IF EXISTS `MarkerReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MarkerReference` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `marker` int(10) unsigned DEFAULT NULL,
    `marker_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `marker` (`marker`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ModifiedNucleotide`
--
DROP TABLE IF EXISTS `ModifiedNucleotide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModifiedNucleotide` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `coordinate` int(10) DEFAULT NULL,
    `modification` int(10) unsigned DEFAULT NULL,
    `modification_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `coordinate` (`coordinate`),
    KEY `modification` (`modification`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ModifiedResidue`
--
DROP TABLE IF EXISTS `ModifiedResidue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModifiedResidue` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NegativeGeneExpressionRegulation`
--
DROP TABLE IF EXISTS `NegativeGeneExpressionRegulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NegativeGeneExpressionRegulation` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `NegativePrecedingEvent_2_precedingEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NegativePrecedingEvent_2_precedingEvent` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `precedingEvent_rank` int(10) unsigned DEFAULT NULL,
  `precedingEvent` int(10) unsigned DEFAULT NULL,
  `precedingEvent_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `precedingEvent` (`precedingEvent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NegativePrecedingEvent`
--
DROP TABLE IF EXISTS `NegativePrecedingEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NegativePrecedingEvent` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `comment` text COLLATE utf8_unicode_ci,
    `reason` int(10) unsigned DEFAULT NULL,
    `reason_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `comment` (`comment`(10)),
    KEY `reason` (`reason`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NegativePrecedingEventReason`
--
DROP TABLE IF EXISTS `NegativePrecedingEventReason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NegativePrecedingEventReason` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NegativeRegulation`
--
DROP TABLE IF EXISTS `NegativeRegulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NegativeRegulation` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NonsenseMutation`
--
DROP TABLE IF EXISTS `NonsenseMutation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NonsenseMutation` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ontology`
--
DROP TABLE IF EXISTS `Ontology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ontology` (
    `ontology` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `OtherEntity_2_compartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OtherEntity_2_compartment` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `compartment_rank` int(10) unsigned DEFAULT NULL,
  `compartment` int(10) unsigned DEFAULT NULL,
  `compartment_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `compartment` (`compartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OtherEntity`
--
DROP TABLE IF EXISTS `OtherEntity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OtherEntity` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Pathway_2_compartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pathway_2_compartment` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `compartment_rank` int(10) unsigned DEFAULT NULL,
  `compartment` int(10) unsigned DEFAULT NULL,
  `compartment_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `compartment` (`compartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Pathway_2_hasEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pathway_2_hasEvent` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `hasEvent_rank` int(10) unsigned DEFAULT NULL,
  `hasEvent` int(10) unsigned DEFAULT NULL,
  `hasEvent_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasEvent` (`hasEvent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Pathway`
--
DROP TABLE IF EXISTS `Pathway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pathway` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `doi` text COLLATE utf8_unicode_ci,
    `hasEHLD` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    `isCanonical` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    `normalPathway` int(10) unsigned DEFAULT NULL,
    `normalPathway_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `lastUpdatedDate` text COLLATE utf8_unicode_ci,
    KEY `doi` (`doi`(10)),
    KEY `hasEHLD` (`hasEHLD`),
    KEY `isCanonical` (`isCanonical`),
    KEY `normalPathway` (`normalPathway`),
    KEY `lastUpdatedDate` (`lastUpdatedDate`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PathwayDiagram_2_representedPathway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PathwayDiagram_2_representedPathway` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `representedPathway_rank` int(10) unsigned DEFAULT NULL,
  `representedPathway` int(10) unsigned DEFAULT NULL,
  `representedPathway_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `representedPathway` (`representedPathway`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PathwayDiagram`
--
DROP TABLE IF EXISTS `PathwayDiagram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PathwayDiagram` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `width` int(10) DEFAULT NULL,
    `height` int(10) DEFAULT NULL,
    `storedATXML` longblob,
    KEY `width` (`width`),
    KEY `height` (`height`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Person_2_affiliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person_2_affiliation` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `affiliation_rank` int(10) unsigned DEFAULT NULL,
  `affiliation` int(10) unsigned DEFAULT NULL,
  `affiliation_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `affiliation` (`affiliation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Person_2_crossReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person_2_crossReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `crossReference_rank` int(10) unsigned DEFAULT NULL,
  `crossReference` int(10) unsigned DEFAULT NULL,
  `crossReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `crossReference` (`crossReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Person_2_figure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person_2_figure` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `figure_rank` int(10) unsigned DEFAULT NULL,
  `figure` int(10) unsigned DEFAULT NULL,
  `figure_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `figure` (`figure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Person`
--
DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `firstname` mediumtext COLLATE utf8_unicode_ci,
    `initial` mediumtext COLLATE utf8_unicode_ci,
    `project` mediumtext COLLATE utf8_unicode_ci,
    `surname` mediumtext COLLATE utf8_unicode_ci,
    `url` mediumtext COLLATE utf8_unicode_ci,
    KEY `firstname` (`firstname`(10)),
    KEY `initial` (`initial`(10)),
    KEY `project` (`project`(10)),
    KEY `surname` (`surname`(10)),
    KEY `url` (`url`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_inferredTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_inferredTo` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `inferredTo_rank` int(10) unsigned DEFAULT NULL,
  `inferredTo` int(10) unsigned DEFAULT NULL,
  `inferredTo_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `inferredTo` (`inferredTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_inferredFrom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_inferredFrom` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `inferredFrom_rank` int(10) unsigned DEFAULT NULL,
  `inferredFrom` int(10) unsigned DEFAULT NULL,
  `inferredFrom_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `inferredFrom` (`inferredFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_reviewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_reviewed` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `reviewed_rank` int(10) unsigned DEFAULT NULL,
  `reviewed` int(10) unsigned DEFAULT NULL,
  `reviewed_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `reviewed` (`reviewed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_cellType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_cellType` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `cellType_rank` int(10) unsigned DEFAULT NULL,
  `cellType` int(10) unsigned DEFAULT NULL,
  `cellType_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `cellType` (`cellType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_crossReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_crossReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `crossReference_rank` int(10) unsigned DEFAULT NULL,
  `crossReference` int(10) unsigned DEFAULT NULL,
  `crossReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `crossReference` (`crossReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_edited`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_edited` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `edited_rank` int(10) unsigned DEFAULT NULL,
  `edited` int(10) unsigned DEFAULT NULL,
  `edited_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `edited` (`edited`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_figure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_figure` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `figure_rank` int(10) unsigned DEFAULT NULL,
  `figure` int(10) unsigned DEFAULT NULL,
  `figure_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `figure` (`figure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_literatureReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_literatureReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `literatureReference_rank` int(10) unsigned DEFAULT NULL,
  `literatureReference` int(10) unsigned DEFAULT NULL,
  `literatureReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `literatureReference` (`literatureReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_revised`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_revised` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `revised_rank` int(10) unsigned DEFAULT NULL,
  `revised` int(10) unsigned DEFAULT NULL,
  `revised_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `revised` (`revised`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_summation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_summation` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `summation_rank` int(10) unsigned DEFAULT NULL,
  `summation` int(10) unsigned DEFAULT NULL,
  `summation_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `summation` (`summation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `PhysicalEntity_2_disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity_2_disease` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `disease_rank` int(10) unsigned DEFAULT NULL,
  `disease` int(10) unsigned DEFAULT NULL,
  `disease_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `disease` (`disease`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PhysicalEntity`
--
DROP TABLE IF EXISTS `PhysicalEntity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhysicalEntity` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `systematicName` mediumtext COLLATE utf8_unicode_ci,
    `goCellularComponent` int(10) unsigned DEFAULT NULL,
    `goCellularComponent_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `authored` int(10) unsigned DEFAULT NULL,
    `authored_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `definition` mediumtext COLLATE utf8_unicode_ci,
    KEY `systematicName` (`systematicName`(10)),
    KEY `goCellularComponent` (`goCellularComponent`),
    KEY `authored` (`authored`),
    KEY `definition` (`definition`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Polymer_2_repeatedUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Polymer_2_repeatedUnit` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `repeatedUnit_rank` int(10) unsigned DEFAULT NULL,
  `repeatedUnit` int(10) unsigned DEFAULT NULL,
  `repeatedUnit_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `repeatedUnit` (`repeatedUnit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Polymer_2_compartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Polymer_2_compartment` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `compartment_rank` int(10) unsigned DEFAULT NULL,
  `compartment` int(10) unsigned DEFAULT NULL,
  `compartment_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `compartment` (`compartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Polymer_2_species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Polymer_2_species` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `species_rank` int(10) unsigned DEFAULT NULL,
  `species` int(10) unsigned DEFAULT NULL,
  `species_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Polymer`
--
DROP TABLE IF EXISTS `Polymer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Polymer` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `maxUnitCount` int(10) DEFAULT NULL,
    `minUnitCount` int(10) DEFAULT NULL,
    KEY `maxUnitCount` (`maxUnitCount`),
    KEY `minUnitCount` (`minUnitCount`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Polymerisation`
--
DROP TABLE IF EXISTS `Polymerisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Polymerisation` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PositiveGeneExpressionRegulation`
--
DROP TABLE IF EXISTS `PositiveGeneExpressionRegulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PositiveGeneExpressionRegulation` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PositiveRegulation`
--
DROP TABLE IF EXISTS `PositiveRegulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PositiveRegulation` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProteinDrug`
--
DROP TABLE IF EXISTS `ProteinDrug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProteinDrug` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PsiMod`
--
DROP TABLE IF EXISTS `PsiMod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PsiMod` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `label` text COLLATE utf8_unicode_ci,
    KEY `label` (`label`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Publication_2_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Publication_2_author` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `author_rank` int(10) unsigned DEFAULT NULL,
  `author` int(10) unsigned DEFAULT NULL,
  `author_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `author` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Publication`
--
DROP TABLE IF EXISTS `Publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Publication` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `title` mediumtext COLLATE utf8_unicode_ci,
    KEY `title` (`title`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Reaction`
--
DROP TABLE IF EXISTS `Reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reaction` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `reverseReaction` int(10) unsigned DEFAULT NULL,
    `reverseReaction_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `reverseReaction` (`reverseReaction`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReactionlikeEvent_2_entityFunctionalStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent_2_entityFunctionalStatus` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `entityFunctionalStatus_rank` int(10) unsigned DEFAULT NULL,
  `entityFunctionalStatus` int(10) unsigned DEFAULT NULL,
  `entityFunctionalStatus_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `entityFunctionalStatus` (`entityFunctionalStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReactionlikeEvent_2_regulatedBy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent_2_regulatedBy` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `regulatedBy_rank` int(10) unsigned DEFAULT NULL,
  `regulatedBy` int(10) unsigned DEFAULT NULL,
  `regulatedBy_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `regulatedBy` (`regulatedBy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReactionlikeEvent_2_regulationReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent_2_regulationReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `regulationReference_rank` int(10) unsigned DEFAULT NULL,
  `regulationReference` int(10) unsigned DEFAULT NULL,
  `regulationReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `regulationReference` (`regulationReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReactionlikeEvent_2_hasInteraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent_2_hasInteraction` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `hasInteraction_rank` int(10) unsigned DEFAULT NULL,
  `hasInteraction` int(10) unsigned DEFAULT NULL,
  `hasInteraction_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasInteraction` (`hasInteraction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReactionlikeEvent_2_reactionType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent_2_reactionType` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `reactionType_rank` int(10) unsigned DEFAULT NULL,
  `reactionType` int(10) unsigned DEFAULT NULL,
  `reactionType_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `reactionType` (`reactionType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReactionlikeEvent_2_catalystActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent_2_catalystActivity` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `catalystActivity_rank` int(10) unsigned DEFAULT NULL,
  `catalystActivity` int(10) unsigned DEFAULT NULL,
  `catalystActivity_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `catalystActivity` (`catalystActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReactionlikeEvent_2_compartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent_2_compartment` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `compartment_rank` int(10) unsigned DEFAULT NULL,
  `compartment` int(10) unsigned DEFAULT NULL,
  `compartment_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `compartment` (`compartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReactionlikeEvent_2_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent_2_input` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `input_rank` int(10) unsigned DEFAULT NULL,
  `input` int(10) unsigned DEFAULT NULL,
  `input_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `input` (`input`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReactionlikeEvent_2_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent_2_output` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `output_rank` int(10) unsigned DEFAULT NULL,
  `output` int(10) unsigned DEFAULT NULL,
  `output_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `output` (`output`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReactionlikeEvent_2_entityOnOtherCell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent_2_entityOnOtherCell` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `entityOnOtherCell_rank` int(10) unsigned DEFAULT NULL,
  `entityOnOtherCell` int(10) unsigned DEFAULT NULL,
  `entityOnOtherCell_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `entityOnOtherCell` (`entityOnOtherCell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReactionlikeEvent_2_requiredInputComponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent_2_requiredInputComponent` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `requiredInputComponent_rank` int(10) unsigned DEFAULT NULL,
  `requiredInputComponent` int(10) unsigned DEFAULT NULL,
  `requiredInputComponent_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `requiredInputComponent` (`requiredInputComponent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReactionlikeEvent`
--
DROP TABLE IF EXISTS `ReactionlikeEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionlikeEvent` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `systematicName` mediumtext COLLATE utf8_unicode_ci,
    `catalystActivityReference` int(10) unsigned DEFAULT NULL,
    `catalystActivityReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `isChimeric` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    `normalReaction` int(10) unsigned DEFAULT NULL,
    `normalReaction_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `systematicName` (`systematicName`(10)),
    KEY `catalystActivityReference` (`catalystActivityReference`),
    KEY `isChimeric` (`isChimeric`),
    KEY `normalReaction` (`normalReaction`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReactionType`
--
DROP TABLE IF EXISTS `ReactionType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReactionType` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceDatabase_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceDatabase_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReferenceDatabase`
--
DROP TABLE IF EXISTS `ReferenceDatabase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceDatabase` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `accessUrl` mediumtext COLLATE utf8_unicode_ci,
    `url` mediumtext COLLATE utf8_unicode_ci,
    `resourceIdentifier` text COLLATE utf8_unicode_ci,
    KEY `accessUrl` (`accessUrl`(10)),
    KEY `url` (`url`(10)),
    KEY `resourceIdentifier` (`resourceIdentifier`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReferenceDNASequence`
--
DROP TABLE IF EXISTS `ReferenceDNASequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceDNASequence` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceEntity_2_crossReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceEntity_2_crossReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `crossReference_rank` int(10) unsigned DEFAULT NULL,
  `crossReference` int(10) unsigned DEFAULT NULL,
  `crossReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `crossReference` (`crossReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceEntity_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceEntity_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceEntity_2_otherIdentifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceEntity_2_otherIdentifier` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `otherIdentifier_rank` int(10) unsigned DEFAULT NULL,
  `otherIdentifier` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `otherIdentifier` (`otherIdentifier`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReferenceEntity`
--
DROP TABLE IF EXISTS `ReferenceEntity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceEntity` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `identifier` mediumtext COLLATE utf8_unicode_ci,
    `referenceDatabase` int(10) unsigned DEFAULT NULL,
    `referenceDatabase_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `identifier` (`identifier`(10)),
    KEY `referenceDatabase` (`referenceDatabase`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceGeneProduct_2_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceGeneProduct_2_chain` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `chain_rank` int(10) unsigned DEFAULT NULL,
  `chain` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `chain` (`chain`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceGeneProduct_2_referenceGene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceGeneProduct_2_referenceGene` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `referenceGene_rank` int(10) unsigned DEFAULT NULL,
  `referenceGene` int(10) unsigned DEFAULT NULL,
  `referenceGene_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `referenceGene` (`referenceGene`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceGeneProduct_2_referenceTranscript`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceGeneProduct_2_referenceTranscript` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `referenceTranscript_rank` int(10) unsigned DEFAULT NULL,
  `referenceTranscript` int(10) unsigned DEFAULT NULL,
  `referenceTranscript_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `referenceTranscript` (`referenceTranscript`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReferenceGeneProduct`
--
DROP TABLE IF EXISTS `ReferenceGeneProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceGeneProduct` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `_chainChangeLog` mediumtext COLLATE utf8_unicode_ci,
    KEY `_chainChangeLog` (`_chainChangeLog`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReferenceGroup`
--
DROP TABLE IF EXISTS `ReferenceGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceGroup` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `formula` mediumtext COLLATE utf8_unicode_ci,
    KEY `formula` (`formula`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceIsoform_2_isoformParent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceIsoform_2_isoformParent` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `isoformParent_rank` int(10) unsigned DEFAULT NULL,
  `isoformParent` int(10) unsigned DEFAULT NULL,
  `isoformParent_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `isoformParent` (`isoformParent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReferenceIsoform`
--
DROP TABLE IF EXISTS `ReferenceIsoform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceIsoform` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `variantIdentifier` mediumtext COLLATE utf8_unicode_ci,
    KEY `variantIdentifier` (`variantIdentifier`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReferenceMolecule`
--
DROP TABLE IF EXISTS `ReferenceMolecule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceMolecule` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `formula` mediumtext COLLATE utf8_unicode_ci,
    KEY `formula` (`formula`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceRNASequence_2_referenceGene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceRNASequence_2_referenceGene` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `referenceGene_rank` int(10) unsigned DEFAULT NULL,
  `referenceGene` int(10) unsigned DEFAULT NULL,
  `referenceGene_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `referenceGene` (`referenceGene`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReferenceRNASequence`
--
DROP TABLE IF EXISTS `ReferenceRNASequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceRNASequence` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceSequence_2_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceSequence_2_comment` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `comment_rank` int(10) unsigned DEFAULT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `comment` (`comment`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceSequence_2_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceSequence_2_description` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `description_rank` int(10) unsigned DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `description` (`description`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceSequence_2_geneName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceSequence_2_geneName` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `geneName_rank` int(10) unsigned DEFAULT NULL,
  `geneName` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `geneName` (`geneName`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceSequence_2_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceSequence_2_keyword` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `keyword_rank` int(10) unsigned DEFAULT NULL,
  `keyword` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `keyword` (`keyword`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceSequence_2_secondaryIdentifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceSequence_2_secondaryIdentifier` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `secondaryIdentifier_rank` int(10) unsigned DEFAULT NULL,
  `secondaryIdentifier` mediumtext COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `secondaryIdentifier` (`secondaryIdentifier`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReferenceSequence`
--
DROP TABLE IF EXISTS `ReferenceSequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceSequence` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `checksum` mediumtext COLLATE utf8_unicode_ci,
    `isSequenceChanged` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    `sequenceLength` int(10) DEFAULT NULL,
    `species` int(10) unsigned DEFAULT NULL,
    `species_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `checksum` (`checksum`(10)),
    KEY `isSequenceChanged` (`isSequenceChanged`),
    KEY `sequenceLength` (`sequenceLength`),
    KEY `species` (`species`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceTherapeutic_2_approvalSource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceTherapeutic_2_approvalSource` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `approvalSource_rank` int(10) unsigned DEFAULT NULL,
  `approvalSource` text COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `approvalSource` (`approvalSource`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceTherapeutic_2_activeDrugIds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceTherapeutic_2_activeDrugIds` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `activeDrugIds_rank` int(10) unsigned DEFAULT NULL,
  `activeDrugIds` text COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `activeDrugIds` (`activeDrugIds`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReferenceTherapeutic_2_prodrugIds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceTherapeutic_2_prodrugIds` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `prodrugIds_rank` int(10) unsigned DEFAULT NULL,
  `prodrugIds` text COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `prodrugIds` (`prodrugIds`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReferenceTherapeutic`
--
DROP TABLE IF EXISTS `ReferenceTherapeutic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceTherapeutic` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `abbreviation` text COLLATE utf8_unicode_ci,
    `approved` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    `withdrawn` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    `inn` text COLLATE utf8_unicode_ci,
    `type` text COLLATE utf8_unicode_ci,
    KEY `abbreviation` (`abbreviation`(10)),
    KEY `approved` (`approved`),
    KEY `withdrawn` (`withdrawn`),
    KEY `inn` (`inn`(10)),
    KEY `type` (`type`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Regulation_2_activeUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Regulation_2_activeUnit` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `activeUnit_rank` int(10) unsigned DEFAULT NULL,
  `activeUnit` int(10) unsigned DEFAULT NULL,
  `activeUnit_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `activeUnit` (`activeUnit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Regulation`
--
DROP TABLE IF EXISTS `Regulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Regulation` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `activity` int(10) unsigned DEFAULT NULL,
    `activity_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `goBiologicalProcess` int(10) unsigned DEFAULT NULL,
    `goBiologicalProcess_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `regulator` int(10) unsigned DEFAULT NULL,
    `regulator_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `activity` (`activity`),
    KEY `goBiologicalProcess` (`goBiologicalProcess`),
    KEY `regulator` (`regulator`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RegulationReference`
--
DROP TABLE IF EXISTS `RegulationReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RegulationReference` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `regulation` int(10) unsigned DEFAULT NULL,
    `regulation_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `regulation` (`regulation`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `ReplacedResidue_2_psiMod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReplacedResidue_2_psiMod` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `psiMod_rank` int(10) unsigned DEFAULT NULL,
  `psiMod` int(10) unsigned DEFAULT NULL,
  `psiMod_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `psiMod` (`psiMod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReplacedResidue`
--
DROP TABLE IF EXISTS `ReplacedResidue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReplacedResidue` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `coordinate` int(10) DEFAULT NULL,
    KEY `coordinate` (`coordinate`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_Release`
--
DROP TABLE IF EXISTS `_Release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_Release` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `releaseNumber` int(10) DEFAULT NULL,
    `releaseDate` mediumtext COLLATE utf8_unicode_ci,
    KEY `releaseNumber` (`releaseNumber`),
    KEY `releaseDate` (`releaseDate`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Requirement`
--
DROP TABLE IF EXISTS `Requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Requirement` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReviewStatus`
--
DROP TABLE IF EXISTS `ReviewStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReviewStatus` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RNADrug`
--
DROP TABLE IF EXISTS `RNADrug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RNADrug` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SequenceOntology`
--
DROP TABLE IF EXISTS `SequenceOntology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SequenceOntology` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `SimpleEntity_2_compartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SimpleEntity_2_compartment` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `compartment_rank` int(10) unsigned DEFAULT NULL,
  `compartment` int(10) unsigned DEFAULT NULL,
  `compartment_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `compartment` (`compartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SimpleEntity`
--
DROP TABLE IF EXISTS `SimpleEntity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SimpleEntity` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `referenceEntity` int(10) unsigned DEFAULT NULL,
    `referenceEntity_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `species` int(10) unsigned DEFAULT NULL,
    `species_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `referenceEntity` (`referenceEntity`),
    KEY `species` (`species`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Species`
--
DROP TABLE IF EXISTS `Species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Species` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `abbreviation` text COLLATE utf8_unicode_ci,
    KEY `abbreviation` (`abbreviation`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `StableIdentifier_2_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StableIdentifier_2_history` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `history_rank` int(10) unsigned DEFAULT NULL,
  `history` int(10) unsigned DEFAULT NULL,
  `history_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `history` (`history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StableIdentifier`
--
DROP TABLE IF EXISTS `StableIdentifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StableIdentifier` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `oldIdentifier` mediumtext COLLATE utf8_unicode_ci,
    `oldIdentifierVersion` mediumtext COLLATE utf8_unicode_ci,
    `released` enum('TRUE','FALSE') COLLATE utf8_unicode_ci DEFAULT NULL,
    `identifier` mediumtext COLLATE utf8_unicode_ci,
    `identifierVersion` mediumtext COLLATE utf8_unicode_ci,
    KEY `oldIdentifier` (`oldIdentifier`(10)),
    KEY `oldIdentifierVersion` (`oldIdentifierVersion`(10)),
    KEY `released` (`released`),
    KEY `identifier` (`identifier`(10)),
    KEY `identifierVersion` (`identifierVersion`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `StableIdentifierHistory_2_historyStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StableIdentifierHistory_2_historyStatus` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `historyStatus_rank` int(10) unsigned DEFAULT NULL,
  `historyStatus` int(10) unsigned DEFAULT NULL,
  `historyStatus_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `historyStatus` (`historyStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StableIdentifierHistory`
--
DROP TABLE IF EXISTS `StableIdentifierHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StableIdentifierHistory` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `identifier` text COLLATE utf8_unicode_ci,
    `identifierVersion` text COLLATE utf8_unicode_ci,
    KEY `identifier` (`identifier`(10)),
    KEY `identifierVersion` (`identifierVersion`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StableIdentifierReleaseStatus`
--
DROP TABLE IF EXISTS `StableIdentifierReleaseStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StableIdentifierReleaseStatus` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `releaseNumber` int(10) DEFAULT NULL,
    `status` enum('EXISTS','CREATED','INCREMENTED','REPLACEMENT','ORTHO') COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `releaseNumber` (`releaseNumber`),
    KEY `status` (`status`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Summation_2_literatureReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Summation_2_literatureReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `literatureReference_rank` int(10) unsigned DEFAULT NULL,
  `literatureReference` int(10) unsigned DEFAULT NULL,
  `literatureReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `literatureReference` (`literatureReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Summation`
--
DROP TABLE IF EXISTS `Summation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Summation` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `text` mediumtext COLLATE utf8_unicode_ci,
    KEY `text` (`text`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Taxon_2_crossReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Taxon_2_crossReference` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `crossReference_rank` int(10) unsigned DEFAULT NULL,
  `crossReference` int(10) unsigned DEFAULT NULL,
  `crossReference_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `crossReference` (`crossReference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `Taxon_2_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Taxon_2_name` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `name_rank` int(10) unsigned DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Taxon`
--
DROP TABLE IF EXISTS `Taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Taxon` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `superTaxon` int(10) unsigned DEFAULT NULL,
    `superTaxon_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `superTaxon` (`superTaxon`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TranscriptionalModification`
--
DROP TABLE IF EXISTS `TranscriptionalModification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TranscriptionalModification` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TranslationalModification`
--
DROP TABLE IF EXISTS `TranslationalModification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TranslationalModification` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `coordinate` int(10) DEFAULT NULL,
    `psiMod` int(10) unsigned DEFAULT NULL,
    `psiMod_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `coordinate` (`coordinate`),
    KEY `psiMod` (`psiMod`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `_UpdateTracker_2_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_UpdateTracker_2_action` (
  `DB_ID` int(10) unsigned DEFAULT NULL,
  `action_rank` int(10) unsigned DEFAULT NULL,
  `action` text COLLATE utf8_unicode_ci,
  KEY `DB_ID` (`DB_ID`),
  KEY `action` (`action`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_UpdateTracker`
--
DROP TABLE IF EXISTS `_UpdateTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_UpdateTracker` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `_release` int(10) unsigned DEFAULT NULL,
    `_release_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    `updatedInstance` int(10) unsigned DEFAULT NULL,
    `updatedInstance_class` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
    KEY `_release` (`_release`),
    KEY `updatedInstance` (`updatedInstance`),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `URL`
--
DROP TABLE IF EXISTS `URL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `URL` (
    `DB_ID` int(10) unsigned NOT NULL DEFAULT '0',
    `uniformResourceLocator` mediumtext COLLATE utf8_unicode_ci,
    KEY `uniformResourceLocator` (`uniformResourceLocator`(10)),
    PRIMARY KEY (`DB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

INSERT INTO `DataModel` VALUES ('Schema','Schema','_timestamp','Friday, 09 February 2024 10:36AM UTC+0000','STRING',0),('Schema','Schema','pins_file_stub',NULL,'STRING',0),('Schema','Schema','pont_file_content',NULL,'STRING',0),('Schema','Schema','pprj_file_content',NULL,'STRING',0),('AbstractModifiedResidue','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('AbstractModifiedResidue','SchemaClass','abstract','TRUE','SYMBOL',0),('AbstractModifiedResidue','SchemaClass','name','AbstractModifiedResidue','STRING',0),('AbstractModifiedResidue:referenceSequence','SchemaClassAttribute','class','AbstractModifiedResidue','SchemaClass',0),('AbstractModifiedResidue:referenceSequence','SchemaClassAttribute','name','referenceSequence','STRING',0),('referenceSequence','SchemaClassAttribute','name','referenceSequence','STRING',0),('AbstractModifiedResidue:referenceSequence','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('referenceSequence','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('AbstractModifiedResidue:referenceSequence','SchemaClassAttribute','type','db_instance_type','STRING',0),('referenceSequence','SchemaClassAttribute','type','db_instance_type','STRING',0),('AbstractModifiedResidue:referenceSequence','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('referenceSequence','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('AbstractModifiedResidue:referenceSequence','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('referenceSequence','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('AbstractModifiedResidue:referenceSequence','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('referenceSequence','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('AbstractModifiedResidue:referenceSequence','SchemaClassAttribute','allowed_classes','ReferenceSequence','SchemaClass',0),('referenceSequence','SchemaClassAttribute','allowed_classes','ReferenceSequence','SchemaClass',0),('AbstractModifiedResidue:referenceSequence','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('AbstractModifiedResidue:referenceSequence','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Affiliation','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('Affiliation','SchemaClass','abstract',NULL,'SYMBOL',0),('Affiliation','SchemaClass','name','Affiliation','STRING',0),('Affiliation:address','SchemaClassAttribute','class','Affiliation','SchemaClass',0),('Affiliation:address','SchemaClassAttribute','name','address','STRING',0),('address','SchemaClassAttribute','name','address','STRING',0),('Affiliation:address','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('address','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Affiliation:address','SchemaClassAttribute','type','db_string_type','STRING',0),('address','SchemaClassAttribute','type','db_string_type','STRING',0),('Affiliation:address','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('address','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Affiliation:address','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('address','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Affiliation:address','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('address','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Affiliation:address','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Affiliation:name','SchemaClassAttribute','class','Affiliation','SchemaClass',0),('Affiliation:name','SchemaClassAttribute','name','name','STRING',0),('name','SchemaClassAttribute','name','name','STRING',0),('Affiliation:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Affiliation:name','SchemaClassAttribute','type','db_string_type','STRING',0),('name','SchemaClassAttribute','type','db_string_type','STRING',0),('Affiliation:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Affiliation:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Affiliation:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Affiliation:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Affiliation:name','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Anatomy','SchemaClass','super_classes','ExternalOntology','SchemaClass',0),('Anatomy','SchemaClass','abstract',NULL,'SYMBOL',0),('Anatomy','SchemaClass','name','Anatomy','STRING',0),('BlackBoxEvent','SchemaClass','super_classes','ReactionlikeEvent','SchemaClass',0),('BlackBoxEvent','SchemaClass','abstract',NULL,'SYMBOL',0),('BlackBoxEvent','SchemaClass','name','BlackBoxEvent','STRING',0),('BlackBoxEvent:templateEvent','SchemaClassAttribute','class','BlackBoxEvent','SchemaClass',0),('BlackBoxEvent:templateEvent','SchemaClassAttribute','name','templateEvent','STRING',0),('templateEvent','SchemaClassAttribute','name','templateEvent','STRING',0),('BlackBoxEvent:templateEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('templateEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('BlackBoxEvent:templateEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('templateEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('BlackBoxEvent:templateEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('templateEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('BlackBoxEvent:templateEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('templateEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('BlackBoxEvent:templateEvent','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('templateEvent','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('BlackBoxEvent:templateEvent','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('templateEvent','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('BlackBoxEvent:templateEvent','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('BlackBoxEvent:authored','SchemaClassAttribute','class','BlackBoxEvent','SchemaClass',0),('BlackBoxEvent:authored','SchemaClassAttribute','name','authored','STRING',0),('authored','SchemaClassAttribute','name','authored','STRING',0),('BlackBoxEvent:authored','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('authored','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('BlackBoxEvent:authored','SchemaClassAttribute','type','db_instance_type','STRING',0),('authored','SchemaClassAttribute','type','db_instance_type','STRING',0),('BlackBoxEvent:authored','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('authored','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('BlackBoxEvent:authored','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('authored','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('BlackBoxEvent:authored','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('authored','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('BlackBoxEvent:authored','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('authored','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('BlackBoxEvent:authored','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('BlackBoxEvent:edited','SchemaClassAttribute','class','BlackBoxEvent','SchemaClass',0),('BlackBoxEvent:edited','SchemaClassAttribute','name','edited','STRING',0),('edited','SchemaClassAttribute','name','edited','STRING',0),('BlackBoxEvent:edited','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('edited','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('BlackBoxEvent:edited','SchemaClassAttribute','type','db_instance_type','STRING',0),('edited','SchemaClassAttribute','type','db_instance_type','STRING',0),('BlackBoxEvent:edited','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('edited','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('BlackBoxEvent:edited','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('edited','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('BlackBoxEvent:edited','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('edited','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('BlackBoxEvent:edited','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('edited','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('BlackBoxEvent:edited','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('BlackBoxEvent:catalystActivity','SchemaClassAttribute','class','BlackBoxEvent','SchemaClass',0),('BlackBoxEvent:catalystActivity','SchemaClassAttribute','name','catalystActivity','STRING',0),('catalystActivity','SchemaClassAttribute','name','catalystActivity','STRING',0),('BlackBoxEvent:catalystActivity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('catalystActivity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('BlackBoxEvent:catalystActivity','SchemaClassAttribute','type','db_instance_type','STRING',0),('catalystActivity','SchemaClassAttribute','type','db_instance_type','STRING',0),('BlackBoxEvent:catalystActivity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('catalystActivity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('BlackBoxEvent:catalystActivity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('catalystActivity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('BlackBoxEvent:catalystActivity','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('catalystActivity','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('BlackBoxEvent:catalystActivity','SchemaClassAttribute','allowed_classes','CatalystActivity','SchemaClass',0),('catalystActivity','SchemaClassAttribute','allowed_classes','CatalystActivity','SchemaClass',0),('BlackBoxEvent:catalystActivity','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('BlackBoxEvent:catalystActivity','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('BlackBoxEvent:goBiologicalProcess','SchemaClassAttribute','class','BlackBoxEvent','SchemaClass',0),('BlackBoxEvent:goBiologicalProcess','SchemaClassAttribute','name','goBiologicalProcess','STRING',0),('goBiologicalProcess','SchemaClassAttribute','name','goBiologicalProcess','STRING',0),('BlackBoxEvent:goBiologicalProcess','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('goBiologicalProcess','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('BlackBoxEvent:goBiologicalProcess','SchemaClassAttribute','type','db_instance_type','STRING',0),('goBiologicalProcess','SchemaClassAttribute','type','db_instance_type','STRING',0),('BlackBoxEvent:goBiologicalProcess','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('goBiologicalProcess','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('BlackBoxEvent:goBiologicalProcess','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('goBiologicalProcess','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('BlackBoxEvent:goBiologicalProcess','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('goBiologicalProcess','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('BlackBoxEvent:goBiologicalProcess','SchemaClassAttribute','allowed_classes','GO_BiologicalProcess','SchemaClass',0),('goBiologicalProcess','SchemaClassAttribute','allowed_classes','GO_BiologicalProcess','SchemaClass',0),('BlackBoxEvent:goBiologicalProcess','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('BlackBoxEvent:literatureReference','SchemaClassAttribute','class','BlackBoxEvent','SchemaClass',0),('BlackBoxEvent:literatureReference','SchemaClassAttribute','name','literatureReference','STRING',0),('literatureReference','SchemaClassAttribute','name','literatureReference','STRING',0),('BlackBoxEvent:literatureReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('literatureReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('BlackBoxEvent:literatureReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('literatureReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('BlackBoxEvent:literatureReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('literatureReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('BlackBoxEvent:literatureReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('literatureReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('BlackBoxEvent:literatureReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('literatureReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('BlackBoxEvent:literatureReference','SchemaClassAttribute','allowed_classes','Publication','SchemaClass',0),('literatureReference','SchemaClassAttribute','allowed_classes','Publication','SchemaClass',0),('BlackBoxEvent:literatureReference','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('BlackBoxEvent:input','SchemaClassAttribute','class','BlackBoxEvent','SchemaClass',0),('BlackBoxEvent:input','SchemaClassAttribute','name','input','STRING',0),('input','SchemaClassAttribute','name','input','STRING',0),('BlackBoxEvent:input','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('input','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('BlackBoxEvent:input','SchemaClassAttribute','type','db_instance_type','STRING',0),('input','SchemaClassAttribute','type','db_instance_type','STRING',0),('BlackBoxEvent:input','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('input','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('BlackBoxEvent:input','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('input','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('BlackBoxEvent:input','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('input','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('BlackBoxEvent:input','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('input','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('BlackBoxEvent:input','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('BlackBoxEvent:input','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('BlackBoxEvent:output','SchemaClassAttribute','class','BlackBoxEvent','SchemaClass',0),('BlackBoxEvent:output','SchemaClassAttribute','name','output','STRING',0),('output','SchemaClassAttribute','name','output','STRING',0),('BlackBoxEvent:output','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('output','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('BlackBoxEvent:output','SchemaClassAttribute','type','db_instance_type','STRING',0),('output','SchemaClassAttribute','type','db_instance_type','STRING',0),('BlackBoxEvent:output','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('output','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('BlackBoxEvent:output','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('output','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('BlackBoxEvent:output','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('output','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('BlackBoxEvent:output','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('output','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('BlackBoxEvent:output','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('BlackBoxEvent:output','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('BlackBoxEvent:releaseDate','SchemaClassAttribute','class','BlackBoxEvent','SchemaClass',0),('BlackBoxEvent:releaseDate','SchemaClassAttribute','name','releaseDate','STRING',0),('releaseDate','SchemaClassAttribute','name','releaseDate','STRING',0),('BlackBoxEvent:releaseDate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('releaseDate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('BlackBoxEvent:releaseDate','SchemaClassAttribute','type','db_string_type','STRING',0),('releaseDate','SchemaClassAttribute','type','db_string_type','STRING',0),('BlackBoxEvent:releaseDate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('releaseDate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('BlackBoxEvent:releaseDate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('releaseDate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('BlackBoxEvent:releaseDate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('releaseDate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('BlackBoxEvent:releaseDate','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('BlackBoxEvent:requiredInputComponent','SchemaClassAttribute','class','BlackBoxEvent','SchemaClass',0),('BlackBoxEvent:requiredInputComponent','SchemaClassAttribute','name','requiredInputComponent','STRING',0),('requiredInputComponent','SchemaClassAttribute','name','requiredInputComponent','STRING',0),('BlackBoxEvent:requiredInputComponent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('requiredInputComponent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('BlackBoxEvent:requiredInputComponent','SchemaClassAttribute','type','db_instance_type','STRING',0),('requiredInputComponent','SchemaClassAttribute','type','db_instance_type','STRING',0),('BlackBoxEvent:requiredInputComponent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('requiredInputComponent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('BlackBoxEvent:requiredInputComponent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('requiredInputComponent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('BlackBoxEvent:requiredInputComponent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('requiredInputComponent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('BlackBoxEvent:requiredInputComponent','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('requiredInputComponent','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('BlackBoxEvent:requiredInputComponent','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Book','SchemaClass','super_classes','Publication','SchemaClass',0),('Book','SchemaClass','abstract',NULL,'SYMBOL',0),('Book','SchemaClass','name','Book','STRING',0),('Book:ISBN','SchemaClassAttribute','class','Book','SchemaClass',0),('Book:ISBN','SchemaClassAttribute','name','ISBN','STRING',0),('ISBN','SchemaClassAttribute','name','ISBN','STRING',0),('Book:ISBN','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ISBN','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Book:ISBN','SchemaClassAttribute','type','db_string_type','STRING',0),('ISBN','SchemaClassAttribute','type','db_string_type','STRING',0),('Book:ISBN','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ISBN','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Book:ISBN','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ISBN','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Book:ISBN','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ISBN','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Book:ISBN','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Book:ISBN','SchemaClassAttribute','value_defines_instance','any','SYMBOL',0),('Book:chapterTitle','SchemaClassAttribute','class','Book','SchemaClass',0),('Book:chapterTitle','SchemaClassAttribute','name','chapterTitle','STRING',0),('chapterTitle','SchemaClassAttribute','name','chapterTitle','STRING',0),('Book:chapterTitle','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('chapterTitle','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Book:chapterTitle','SchemaClassAttribute','type','db_string_type','STRING',0),('chapterTitle','SchemaClassAttribute','type','db_string_type','STRING',0),('Book:chapterTitle','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('chapterTitle','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Book:chapterTitle','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('chapterTitle','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Book:chapterTitle','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('chapterTitle','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Book:chapterTitle','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Book:chapterTitle','SchemaClassAttribute','value_defines_instance','any','SYMBOL',0),('Book:pages','SchemaClassAttribute','class','Book','SchemaClass',0),('Book:pages','SchemaClassAttribute','name','pages','STRING',0),('pages','SchemaClassAttribute','name','pages','STRING',0),('Book:pages','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('pages','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Book:pages','SchemaClassAttribute','type','db_string_type','STRING',0),('pages','SchemaClassAttribute','type','db_string_type','STRING',0),('Book:pages','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('pages','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Book:pages','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('pages','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Book:pages','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('pages','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Book:pages','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Book:year','SchemaClassAttribute','class','Book','SchemaClass',0),('Book:year','SchemaClassAttribute','name','year','STRING',0),('year','SchemaClassAttribute','name','year','STRING',0),('Book:year','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('year','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Book:year','SchemaClassAttribute','type','db_integer_type','STRING',0),('year','SchemaClassAttribute','type','db_integer_type','STRING',0),('Book:year','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('year','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Book:year','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('year','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Book:year','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('year','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Book:year','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Book:chapterAuthors','SchemaClassAttribute','class','Book','SchemaClass',0),('Book:chapterAuthors','SchemaClassAttribute','name','chapterAuthors','STRING',0),('chapterAuthors','SchemaClassAttribute','name','chapterAuthors','STRING',0),('Book:chapterAuthors','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('chapterAuthors','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Book:chapterAuthors','SchemaClassAttribute','type','db_instance_type','STRING',0),('chapterAuthors','SchemaClassAttribute','type','db_instance_type','STRING',0),('Book:chapterAuthors','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('chapterAuthors','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Book:chapterAuthors','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('chapterAuthors','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Book:chapterAuthors','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('chapterAuthors','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Book:chapterAuthors','SchemaClassAttribute','allowed_classes','Person','SchemaClass',0),('chapterAuthors','SchemaClassAttribute','allowed_classes','Person','SchemaClass',0),('Book:chapterAuthors','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Book:publisher','SchemaClassAttribute','class','Book','SchemaClass',0),('Book:publisher','SchemaClassAttribute','name','publisher','STRING',0),('publisher','SchemaClassAttribute','name','publisher','STRING',0),('Book:publisher','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('publisher','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Book:publisher','SchemaClassAttribute','type','db_instance_type','STRING',0),('publisher','SchemaClassAttribute','type','db_instance_type','STRING',0),('Book:publisher','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('publisher','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Book:publisher','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('publisher','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Book:publisher','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('publisher','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Book:publisher','SchemaClassAttribute','allowed_classes','Affiliation','SchemaClass',0),('publisher','SchemaClassAttribute','allowed_classes','Affiliation','SchemaClass',0),('Book:publisher','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('CandidateSet','SchemaClass','super_classes','EntitySet','SchemaClass',0),('CandidateSet','SchemaClass','abstract',NULL,'SYMBOL',0),('CandidateSet','SchemaClass','name','CandidateSet','STRING',0),('CandidateSet:hasCandidate','SchemaClassAttribute','class','CandidateSet','SchemaClass',0),('CandidateSet:hasCandidate','SchemaClassAttribute','name','hasCandidate','STRING',0),('hasCandidate','SchemaClassAttribute','name','hasCandidate','STRING',0),('CandidateSet:hasCandidate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('hasCandidate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CandidateSet:hasCandidate','SchemaClassAttribute','type','db_instance_type','STRING',0),('hasCandidate','SchemaClassAttribute','type','db_instance_type','STRING',0),('CandidateSet:hasCandidate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('hasCandidate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CandidateSet:hasCandidate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('hasCandidate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CandidateSet:hasCandidate','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('hasCandidate','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('CandidateSet:hasCandidate','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('hasCandidate','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('CandidateSet:hasCandidate','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('CandidateSet:hasCandidate','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('CandidateSet:hasMember','SchemaClassAttribute','class','CandidateSet','SchemaClass',0),('CandidateSet:hasMember','SchemaClassAttribute','name','hasMember','STRING',0),('hasMember','SchemaClassAttribute','name','hasMember','STRING',0),('CandidateSet:hasMember','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('hasMember','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CandidateSet:hasMember','SchemaClassAttribute','type','db_instance_type','STRING',0),('hasMember','SchemaClassAttribute','type','db_instance_type','STRING',0),('CandidateSet:hasMember','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('hasMember','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CandidateSet:hasMember','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('hasMember','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CandidateSet:hasMember','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('hasMember','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('CandidateSet:hasMember','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('hasMember','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('CandidateSet:hasMember','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('CandidateSet:hasMember','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('CatalystActivity','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('CatalystActivity','SchemaClass','abstract',NULL,'SYMBOL',0),('CatalystActivity','SchemaClass','name','CatalystActivity','STRING',0),('CatalystActivity:activeUnit','SchemaClassAttribute','class','CatalystActivity','SchemaClass',0),('CatalystActivity:activeUnit','SchemaClassAttribute','name','activeUnit','STRING',0),('activeUnit','SchemaClassAttribute','name','activeUnit','STRING',0),('CatalystActivity:activeUnit','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('activeUnit','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CatalystActivity:activeUnit','SchemaClassAttribute','type','db_instance_type','STRING',0),('activeUnit','SchemaClassAttribute','type','db_instance_type','STRING',0),('CatalystActivity:activeUnit','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('activeUnit','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CatalystActivity:activeUnit','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('activeUnit','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CatalystActivity:activeUnit','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('activeUnit','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('CatalystActivity:activeUnit','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('activeUnit','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('CatalystActivity:activeUnit','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('CatalystActivity:activeUnit','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('CatalystActivity:activity','SchemaClassAttribute','class','CatalystActivity','SchemaClass',0),('CatalystActivity:activity','SchemaClassAttribute','name','activity','STRING',0),('activity','SchemaClassAttribute','name','activity','STRING',0),('CatalystActivity:activity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('activity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CatalystActivity:activity','SchemaClassAttribute','type','db_instance_type','STRING',0),('activity','SchemaClassAttribute','type','db_instance_type','STRING',0),('CatalystActivity:activity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('activity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CatalystActivity:activity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('activity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CatalystActivity:activity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('activity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('CatalystActivity:activity','SchemaClassAttribute','allowed_classes','GO_MolecularFunction','SchemaClass',0),('activity','SchemaClassAttribute','allowed_classes','GO_MolecularFunction','SchemaClass',0),('CatalystActivity:activity','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('CatalystActivity:activity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('CatalystActivity:physicalEntity','SchemaClassAttribute','class','CatalystActivity','SchemaClass',0),('CatalystActivity:physicalEntity','SchemaClassAttribute','name','physicalEntity','STRING',0),('physicalEntity','SchemaClassAttribute','name','physicalEntity','STRING',0),('CatalystActivity:physicalEntity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('physicalEntity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CatalystActivity:physicalEntity','SchemaClassAttribute','type','db_instance_type','STRING',0),('physicalEntity','SchemaClassAttribute','type','db_instance_type','STRING',0),('CatalystActivity:physicalEntity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('physicalEntity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CatalystActivity:physicalEntity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('physicalEntity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CatalystActivity:physicalEntity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('physicalEntity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('CatalystActivity:physicalEntity','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('physicalEntity','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('CatalystActivity:physicalEntity','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('CatalystActivity:physicalEntity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('CatalystActivityReference','SchemaClass','super_classes','ControlReference','SchemaClass',0),('CatalystActivityReference','SchemaClass','abstract',NULL,'SYMBOL',0),('CatalystActivityReference','SchemaClass','name','CatalystActivityReference','STRING',0),('CatalystActivityReference:catalystActivity','SchemaClassAttribute','class','CatalystActivityReference','SchemaClass',0),('CatalystActivityReference:catalystActivity','SchemaClassAttribute','name','catalystActivity','STRING',0),('CatalystActivityReference:catalystActivity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CatalystActivityReference:catalystActivity','SchemaClassAttribute','type','db_instance_type','STRING',0),('CatalystActivityReference:catalystActivity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CatalystActivityReference:catalystActivity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CatalystActivityReference:catalystActivity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('CatalystActivityReference:catalystActivity','SchemaClassAttribute','allowed_classes','CatalystActivity','SchemaClass',0),('CatalystActivityReference:catalystActivity','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('CatalystActivityReference:catalystActivity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Cell','SchemaClass','super_classes','PhysicalEntity','SchemaClass',0),('Cell','SchemaClass','abstract',NULL,'SYMBOL',0),('Cell','SchemaClass','name','Cell','STRING',0),('Cell:RNAMarker','SchemaClassAttribute','class','Cell','SchemaClass',0),('Cell:RNAMarker','SchemaClassAttribute','name','RNAMarker','STRING',0),('RNAMarker','SchemaClassAttribute','name','RNAMarker','STRING',0),('Cell:RNAMarker','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('RNAMarker','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Cell:RNAMarker','SchemaClassAttribute','type','db_instance_type','STRING',0),('RNAMarker','SchemaClassAttribute','type','db_instance_type','STRING',0),('Cell:RNAMarker','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('RNAMarker','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Cell:RNAMarker','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('RNAMarker','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Cell:RNAMarker','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('RNAMarker','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Cell:RNAMarker','SchemaClassAttribute','allowed_classes','EntityWithAccessionedSequence','SchemaClass',0),('RNAMarker','SchemaClassAttribute','allowed_classes','EntityWithAccessionedSequence','SchemaClass',0),('Cell:RNAMarker','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Cell:markerReference','SchemaClassAttribute','class','Cell','SchemaClass',0),('Cell:markerReference','SchemaClassAttribute','name','markerReference','STRING',0),('markerReference','SchemaClassAttribute','name','markerReference','STRING',0),('Cell:markerReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('markerReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Cell:markerReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('markerReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('Cell:markerReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('markerReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Cell:markerReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('markerReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Cell:markerReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('markerReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Cell:markerReference','SchemaClassAttribute','allowed_classes','MarkerReference','SchemaClass',0),('markerReference','SchemaClassAttribute','allowed_classes','MarkerReference','SchemaClass',0),('Cell:markerReference','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Cell:organ','SchemaClassAttribute','class','Cell','SchemaClass',0),('Cell:organ','SchemaClassAttribute','name','organ','STRING',0),('organ','SchemaClassAttribute','name','organ','STRING',0),('Cell:organ','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('organ','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Cell:organ','SchemaClassAttribute','type','db_instance_type','STRING',0),('organ','SchemaClassAttribute','type','db_instance_type','STRING',0),('Cell:organ','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('organ','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Cell:organ','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('organ','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Cell:organ','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('organ','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Cell:organ','SchemaClassAttribute','allowed_classes','Anatomy','SchemaClass',0),('organ','SchemaClassAttribute','allowed_classes','Anatomy','SchemaClass',0),('Cell:organ','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Cell:proteinMarker','SchemaClassAttribute','class','Cell','SchemaClass',0),('Cell:proteinMarker','SchemaClassAttribute','name','proteinMarker','STRING',0),('proteinMarker','SchemaClassAttribute','name','proteinMarker','STRING',0),('Cell:proteinMarker','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('proteinMarker','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Cell:proteinMarker','SchemaClassAttribute','type','db_instance_type','STRING',0),('proteinMarker','SchemaClassAttribute','type','db_instance_type','STRING',0),('Cell:proteinMarker','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('proteinMarker','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Cell:proteinMarker','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('proteinMarker','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Cell:proteinMarker','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('proteinMarker','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Cell:proteinMarker','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Cell:proteinMarker','SchemaClassAttribute','allowed_classes','EntityWithAccessionedSequence','SchemaClass',0),('proteinMarker','SchemaClassAttribute','allowed_classes','EntityWithAccessionedSequence','SchemaClass',0),('Cell:proteinMarker','SchemaClassAttribute','allowed_classes','Complex','SchemaClass',1),('proteinMarker','SchemaClassAttribute','allowed_classes','Complex','SchemaClass',1),('Cell:tissueLayer','SchemaClassAttribute','class','Cell','SchemaClass',0),('Cell:tissueLayer','SchemaClassAttribute','name','tissueLayer','STRING',0),('tissueLayer','SchemaClassAttribute','name','tissueLayer','STRING',0),('Cell:tissueLayer','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('tissueLayer','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Cell:tissueLayer','SchemaClassAttribute','type','db_instance_type','STRING',0),('tissueLayer','SchemaClassAttribute','type','db_instance_type','STRING',0),('Cell:tissueLayer','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('tissueLayer','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Cell:tissueLayer','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('tissueLayer','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Cell:tissueLayer','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('tissueLayer','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Cell:tissueLayer','SchemaClassAttribute','allowed_classes','Anatomy','SchemaClass',0),('tissueLayer','SchemaClassAttribute','allowed_classes','Anatomy','SchemaClass',0),('Cell:tissueLayer','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Cell:species','SchemaClassAttribute','class','Cell','SchemaClass',0),('Cell:species','SchemaClassAttribute','name','species','STRING',0),('species','SchemaClassAttribute','name','species','STRING',0),('Cell:species','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('species','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Cell:species','SchemaClassAttribute','type','db_instance_type','STRING',0),('species','SchemaClassAttribute','type','db_instance_type','STRING',0),('Cell:species','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('species','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Cell:species','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('species','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Cell:species','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('species','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Cell:species','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Cell:species','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('species','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('Cell:species','SchemaClassAttribute','allowed_classes','Taxon','SchemaClass',1),('species','SchemaClassAttribute','allowed_classes','Taxon','SchemaClass',1),('Cell:tissue','SchemaClassAttribute','class','Cell','SchemaClass',0),('Cell:tissue','SchemaClassAttribute','name','tissue','STRING',0),('tissue','SchemaClassAttribute','name','tissue','STRING',0),('Cell:tissue','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('tissue','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Cell:tissue','SchemaClassAttribute','type','db_instance_type','STRING',0),('tissue','SchemaClassAttribute','type','db_instance_type','STRING',0),('Cell:tissue','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('tissue','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Cell:tissue','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('tissue','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Cell:tissue','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('tissue','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Cell:tissue','SchemaClassAttribute','allowed_classes','Anatomy','SchemaClass',0),('tissue','SchemaClassAttribute','allowed_classes','Anatomy','SchemaClass',0),('Cell:tissue','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Cell:cellType','SchemaClassAttribute','class','Cell','SchemaClass',0),('Cell:cellType','SchemaClassAttribute','name','cellType','STRING',0),('cellType','SchemaClassAttribute','name','cellType','STRING',0),('Cell:cellType','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('cellType','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Cell:cellType','SchemaClassAttribute','type','db_instance_type','STRING',0),('cellType','SchemaClassAttribute','type','db_instance_type','STRING',0),('Cell:cellType','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('cellType','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Cell:cellType','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('cellType','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Cell:cellType','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('cellType','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Cell:cellType','SchemaClassAttribute','allowed_classes','CellType','SchemaClass',0),('cellType','SchemaClassAttribute','allowed_classes','CellType','SchemaClass',0),('Cell:cellType','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Cell:cellType','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('CellDevelopmentStep','SchemaClass','super_classes','ReactionlikeEvent','SchemaClass',0),('CellDevelopmentStep','SchemaClass','abstract',NULL,'SYMBOL',0),('CellDevelopmentStep','SchemaClass','name','CellDevelopmentStep','STRING',0),('CellDevelopmentStep:tissue','SchemaClassAttribute','class','CellDevelopmentStep','SchemaClass',0),('CellDevelopmentStep:tissue','SchemaClassAttribute','name','tissue','STRING',0),('CellDevelopmentStep:tissue','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CellDevelopmentStep:tissue','SchemaClassAttribute','type','db_instance_type','STRING',0),('CellDevelopmentStep:tissue','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CellDevelopmentStep:tissue','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CellDevelopmentStep:tissue','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('CellDevelopmentStep:tissue','SchemaClassAttribute','allowed_classes','Anatomy','SchemaClass',0),('CellDevelopmentStep:tissue','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('CellDevelopmentStep:catalystActivity','SchemaClassAttribute','class','CellDevelopmentStep','SchemaClass',0),('CellDevelopmentStep:catalystActivity','SchemaClassAttribute','name','catalystActivity','STRING',0),('CellDevelopmentStep:catalystActivity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CellDevelopmentStep:catalystActivity','SchemaClassAttribute','type','db_instance_type','STRING',0),('CellDevelopmentStep:catalystActivity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CellDevelopmentStep:catalystActivity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CellDevelopmentStep:catalystActivity','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('CellDevelopmentStep:catalystActivity','SchemaClassAttribute','allowed_classes','CatalystActivity','SchemaClass',0),('CellDevelopmentStep:catalystActivity','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('CellDevelopmentStep:catalystActivity','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('CellDevelopmentStep:input','SchemaClassAttribute','class','CellDevelopmentStep','SchemaClass',0),('CellDevelopmentStep:input','SchemaClassAttribute','name','input','STRING',0),('CellDevelopmentStep:input','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CellDevelopmentStep:input','SchemaClassAttribute','type','db_instance_type','STRING',0),('CellDevelopmentStep:input','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CellDevelopmentStep:input','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CellDevelopmentStep:input','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('CellDevelopmentStep:input','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('CellDevelopmentStep:input','SchemaClassAttribute','allowed_classes','Cell','SchemaClass',0),('CellDevelopmentStep:input','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('CellDevelopmentStep:output','SchemaClassAttribute','class','CellDevelopmentStep','SchemaClass',0),('CellDevelopmentStep:output','SchemaClassAttribute','name','output','STRING',0),('CellDevelopmentStep:output','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CellDevelopmentStep:output','SchemaClassAttribute','type','db_instance_type','STRING',0),('CellDevelopmentStep:output','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CellDevelopmentStep:output','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CellDevelopmentStep:output','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('CellDevelopmentStep:output','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('CellDevelopmentStep:output','SchemaClassAttribute','allowed_classes','Cell','SchemaClass',0),('CellDevelopmentStep:output','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('CellLineagePath','SchemaClass','super_classes','Pathway','SchemaClass',0),('CellLineagePath','SchemaClass','abstract',NULL,'SYMBOL',0),('CellLineagePath','SchemaClass','name','CellLineagePath','STRING',0),('CellLineagePath:tissue','SchemaClassAttribute','class','CellLineagePath','SchemaClass',0),('CellLineagePath:tissue','SchemaClassAttribute','name','tissue','STRING',0),('CellLineagePath:tissue','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CellLineagePath:tissue','SchemaClassAttribute','type','db_instance_type','STRING',0),('CellLineagePath:tissue','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CellLineagePath:tissue','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CellLineagePath:tissue','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('CellLineagePath:tissue','SchemaClassAttribute','allowed_classes','Anatomy','SchemaClass',0),('CellLineagePath:tissue','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('CellLineagePath:hasEvent','SchemaClassAttribute','class','CellLineagePath','SchemaClass',0),('CellLineagePath:hasEvent','SchemaClassAttribute','name','hasEvent','STRING',0),('hasEvent','SchemaClassAttribute','name','hasEvent','STRING',0),('CellLineagePath:hasEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('hasEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CellLineagePath:hasEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('hasEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('CellLineagePath:hasEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('hasEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CellLineagePath:hasEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('hasEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CellLineagePath:hasEvent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('hasEvent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('CellLineagePath:hasEvent','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('CellLineagePath:hasEvent','SchemaClassAttribute','allowed_classes','CellLineagePath','SchemaClass',0),('hasEvent','SchemaClassAttribute','allowed_classes','CellLineagePath','SchemaClass',0),('CellLineagePath:hasEvent','SchemaClassAttribute','allowed_classes','CellDevelopmentStep','SchemaClass',1),('hasEvent','SchemaClassAttribute','allowed_classes','CellDevelopmentStep','SchemaClass',1),('CellLineagePath:hasEvent','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('CellType','SchemaClass','super_classes','ExternalOntology','SchemaClass',0),('CellType','SchemaClass','abstract',NULL,'SYMBOL',0),('CellType','SchemaClass','name','CellType','STRING',0),('CellType:instanceOf','SchemaClassAttribute','class','CellType','SchemaClass',0),('CellType:instanceOf','SchemaClassAttribute','name','instanceOf','STRING',0),('instanceOf','SchemaClassAttribute','name','instanceOf','STRING',0),('CellType:instanceOf','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('instanceOf','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CellType:instanceOf','SchemaClassAttribute','type','db_instance_type','STRING',0),('instanceOf','SchemaClassAttribute','type','db_instance_type','STRING',0),('CellType:instanceOf','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('instanceOf','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CellType:instanceOf','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('instanceOf','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CellType:instanceOf','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('instanceOf','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('CellType:instanceOf','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('CellType:instanceOf','SchemaClassAttribute','allowed_classes','CellType','SchemaClass',0),('instanceOf','SchemaClassAttribute','allowed_classes','CellType','SchemaClass',0),('ChemicalDrug','SchemaClass','super_classes','Drug','SchemaClass',0),('ChemicalDrug','SchemaClass','abstract',NULL,'SYMBOL',0),('ChemicalDrug','SchemaClass','name','ChemicalDrug','STRING',0),('Compartment','SchemaClass','super_classes','GO_CellularComponent','SchemaClass',0),('Compartment','SchemaClass','abstract',NULL,'SYMBOL',0),('Compartment','SchemaClass','name','Compartment','STRING',0),('Complex','SchemaClass','super_classes','PhysicalEntity','SchemaClass',0),('Complex','SchemaClass','abstract',NULL,'SYMBOL',0),('Complex','SchemaClass','name','Complex','STRING',0),('Complex:hasComponent','SchemaClassAttribute','class','Complex','SchemaClass',0),('Complex:hasComponent','SchemaClassAttribute','name','hasComponent','STRING',0),('hasComponent','SchemaClassAttribute','name','hasComponent','STRING',0),('Complex:hasComponent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('hasComponent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Complex:hasComponent','SchemaClassAttribute','type','db_instance_type','STRING',0),('hasComponent','SchemaClassAttribute','type','db_instance_type','STRING',0),('Complex:hasComponent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('hasComponent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Complex:hasComponent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('hasComponent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Complex:hasComponent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('hasComponent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Complex:hasComponent','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('hasComponent','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('Complex:hasComponent','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Complex:hasComponent','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Complex:stoichiometryKnown','SchemaClassAttribute','class','Complex','SchemaClass',0),('Complex:stoichiometryKnown','SchemaClassAttribute','name','stoichiometryKnown','STRING',0),('stoichiometryKnown','SchemaClassAttribute','name','stoichiometryKnown','STRING',0),('Complex:stoichiometryKnown','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('stoichiometryKnown','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Complex:stoichiometryKnown','SchemaClassAttribute','type','db_enum_type','STRING',0),('stoichiometryKnown','SchemaClassAttribute','type','db_enum_type','STRING',0),('Complex:stoichiometryKnown','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('stoichiometryKnown','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Complex:stoichiometryKnown','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('stoichiometryKnown','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Complex:stoichiometryKnown','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('stoichiometryKnown','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Complex:stoichiometryKnown','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Complex:includedLocation','SchemaClassAttribute','class','Complex','SchemaClass',0),('Complex:includedLocation','SchemaClassAttribute','name','includedLocation','STRING',0),('includedLocation','SchemaClassAttribute','name','includedLocation','STRING',0),('Complex:includedLocation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('includedLocation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Complex:includedLocation','SchemaClassAttribute','type','db_instance_type','STRING',0),('includedLocation','SchemaClassAttribute','type','db_instance_type','STRING',0),('Complex:includedLocation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('includedLocation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Complex:includedLocation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('includedLocation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Complex:includedLocation','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('includedLocation','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Complex:includedLocation','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('includedLocation','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('Complex:includedLocation','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('Complex:compartment','SchemaClassAttribute','class','Complex','SchemaClass',0),('Complex:compartment','SchemaClassAttribute','name','compartment','STRING',0),('compartment','SchemaClassAttribute','name','compartment','STRING',0),('Complex:compartment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('compartment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Complex:compartment','SchemaClassAttribute','type','db_instance_type','STRING',0),('compartment','SchemaClassAttribute','type','db_instance_type','STRING',0),('Complex:compartment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('compartment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Complex:compartment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('compartment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Complex:compartment','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('compartment','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Complex:compartment','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('compartment','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('Complex:compartment','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Complex:entityOnOtherCell','SchemaClassAttribute','class','Complex','SchemaClass',0),('Complex:entityOnOtherCell','SchemaClassAttribute','name','entityOnOtherCell','STRING',0),('entityOnOtherCell','SchemaClassAttribute','name','entityOnOtherCell','STRING',0),('Complex:entityOnOtherCell','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('entityOnOtherCell','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Complex:entityOnOtherCell','SchemaClassAttribute','type','db_instance_type','STRING',0),('entityOnOtherCell','SchemaClassAttribute','type','db_instance_type','STRING',0),('Complex:entityOnOtherCell','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('entityOnOtherCell','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Complex:entityOnOtherCell','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('entityOnOtherCell','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Complex:entityOnOtherCell','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('entityOnOtherCell','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Complex:entityOnOtherCell','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('entityOnOtherCell','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('Complex:entityOnOtherCell','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Complex:isChimeric','SchemaClassAttribute','class','Complex','SchemaClass',0),('Complex:isChimeric','SchemaClassAttribute','name','isChimeric','STRING',0),('isChimeric','SchemaClassAttribute','name','isChimeric','STRING',0),('Complex:isChimeric','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('isChimeric','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Complex:isChimeric','SchemaClassAttribute','type','db_enum_type','STRING',0),('isChimeric','SchemaClassAttribute','type','db_enum_type','STRING',0),('Complex:isChimeric','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('isChimeric','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Complex:isChimeric','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('isChimeric','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Complex:isChimeric','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('isChimeric','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Complex:isChimeric','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Complex:relatedSpecies','SchemaClassAttribute','class','Complex','SchemaClass',0),('Complex:relatedSpecies','SchemaClassAttribute','name','relatedSpecies','STRING',0),('relatedSpecies','SchemaClassAttribute','name','relatedSpecies','STRING',0),('Complex:relatedSpecies','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('relatedSpecies','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Complex:relatedSpecies','SchemaClassAttribute','type','db_instance_type','STRING',0),('relatedSpecies','SchemaClassAttribute','type','db_instance_type','STRING',0),('Complex:relatedSpecies','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('relatedSpecies','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Complex:relatedSpecies','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('relatedSpecies','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Complex:relatedSpecies','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('relatedSpecies','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Complex:relatedSpecies','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('relatedSpecies','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('Complex:relatedSpecies','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Complex:species','SchemaClassAttribute','class','Complex','SchemaClass',0),('Complex:species','SchemaClassAttribute','name','species','STRING',0),('Complex:species','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Complex:species','SchemaClassAttribute','type','db_instance_type','STRING',0),('Complex:species','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Complex:species','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Complex:species','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Complex:species','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('Complex:species','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('ControlledVocabulary','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('ControlledVocabulary','SchemaClass','abstract','TRUE','SYMBOL',0),('ControlledVocabulary','SchemaClass','name','ControlledVocabulary','STRING',0),('ControlledVocabulary:definition','SchemaClassAttribute','class','ControlledVocabulary','SchemaClass',0),('ControlledVocabulary:definition','SchemaClassAttribute','name','definition','STRING',0),('definition','SchemaClassAttribute','name','definition','STRING',0),('ControlledVocabulary:definition','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('definition','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ControlledVocabulary:definition','SchemaClassAttribute','type','db_string_type','STRING',0),('definition','SchemaClassAttribute','type','db_string_type','STRING',0),('ControlledVocabulary:definition','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('definition','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ControlledVocabulary:definition','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('definition','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ControlledVocabulary:definition','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('definition','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ControlledVocabulary:definition','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ControlledVocabulary:name','SchemaClassAttribute','class','ControlledVocabulary','SchemaClass',0),('ControlledVocabulary:name','SchemaClassAttribute','name','name','STRING',0),('ControlledVocabulary:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ControlledVocabulary:name','SchemaClassAttribute','type','db_string_type','STRING',0),('ControlledVocabulary:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ControlledVocabulary:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ControlledVocabulary:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ControlledVocabulary:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ControlReference','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('ControlReference','SchemaClass','abstract','TRUE','SYMBOL',0),('ControlReference','SchemaClass','name','ControlReference','STRING',0),('ControlReference:literatureReference','SchemaClassAttribute','class','ControlReference','SchemaClass',0),('ControlReference:literatureReference','SchemaClassAttribute','name','literatureReference','STRING',0),('ControlReference:literatureReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ControlReference:literatureReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('ControlReference:literatureReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ControlReference:literatureReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ControlReference:literatureReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ControlReference:literatureReference','SchemaClassAttribute','allowed_classes','Publication','SchemaClass',0),('ControlReference:literatureReference','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('CrosslinkedResidue','SchemaClass','super_classes','TranslationalModification','SchemaClass',0),('CrosslinkedResidue','SchemaClass','abstract','TRUE','SYMBOL',0),('CrosslinkedResidue','SchemaClass','name','CrosslinkedResidue','STRING',0),('CrosslinkedResidue:secondCoordinate','SchemaClassAttribute','class','CrosslinkedResidue','SchemaClass',0),('CrosslinkedResidue:secondCoordinate','SchemaClassAttribute','name','secondCoordinate','STRING',0),('secondCoordinate','SchemaClassAttribute','name','secondCoordinate','STRING',0),('CrosslinkedResidue:secondCoordinate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('secondCoordinate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CrosslinkedResidue:secondCoordinate','SchemaClassAttribute','type','db_integer_type','STRING',0),('secondCoordinate','SchemaClassAttribute','type','db_integer_type','STRING',0),('CrosslinkedResidue:secondCoordinate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('secondCoordinate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CrosslinkedResidue:secondCoordinate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('secondCoordinate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CrosslinkedResidue:secondCoordinate','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('secondCoordinate','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('CrosslinkedResidue:secondCoordinate','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('CrosslinkedResidue:secondCoordinate','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('CrosslinkedResidue:modification','SchemaClassAttribute','class','CrosslinkedResidue','SchemaClass',0),('CrosslinkedResidue:modification','SchemaClassAttribute','name','modification','STRING',0),('modification','SchemaClassAttribute','name','modification','STRING',0),('CrosslinkedResidue:modification','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('modification','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('CrosslinkedResidue:modification','SchemaClassAttribute','type','db_instance_type','STRING',0),('modification','SchemaClassAttribute','type','db_instance_type','STRING',0),('CrosslinkedResidue:modification','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('modification','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('CrosslinkedResidue:modification','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('modification','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('CrosslinkedResidue:modification','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('modification','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('CrosslinkedResidue:modification','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('CrosslinkedResidue:modification','SchemaClassAttribute','allowed_classes','ReferenceGroup','SchemaClass',0),('modification','SchemaClassAttribute','allowed_classes','ReferenceGroup','SchemaClass',0),('CrosslinkedResidue:modification','SchemaClassAttribute','allowed_classes','Polymer','SchemaClass',1),('modification','SchemaClassAttribute','allowed_classes','Polymer','SchemaClass',1),('CrosslinkedResidue:modification','SchemaClassAttribute','allowed_classes','EntitySet','SchemaClass',2),('modification','SchemaClassAttribute','allowed_classes','EntitySet','SchemaClass',2),('CrosslinkedResidue:modification','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('DatabaseIdentifier','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('DatabaseIdentifier','SchemaClass','abstract',NULL,'SYMBOL',0),('DatabaseIdentifier','SchemaClass','name','DatabaseIdentifier','STRING',0),('DatabaseIdentifier:crossReference','SchemaClassAttribute','class','DatabaseIdentifier','SchemaClass',0),('DatabaseIdentifier:crossReference','SchemaClassAttribute','name','crossReference','STRING',0),('crossReference','SchemaClassAttribute','name','crossReference','STRING',0),('DatabaseIdentifier:crossReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('crossReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DatabaseIdentifier:crossReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('crossReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('DatabaseIdentifier:crossReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('crossReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DatabaseIdentifier:crossReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('crossReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DatabaseIdentifier:crossReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('crossReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('DatabaseIdentifier:crossReference','SchemaClassAttribute','allowed_classes','DatabaseIdentifier','SchemaClass',0),('crossReference','SchemaClassAttribute','allowed_classes','DatabaseIdentifier','SchemaClass',0),('DatabaseIdentifier:crossReference','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('DatabaseIdentifier:identifier','SchemaClassAttribute','class','DatabaseIdentifier','SchemaClass',0),('DatabaseIdentifier:identifier','SchemaClassAttribute','name','identifier','STRING',0),('identifier','SchemaClassAttribute','name','identifier','STRING',0),('DatabaseIdentifier:identifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('identifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DatabaseIdentifier:identifier','SchemaClassAttribute','type','db_string_type','STRING',0),('identifier','SchemaClassAttribute','type','db_string_type','STRING',0),('DatabaseIdentifier:identifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('identifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DatabaseIdentifier:identifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('identifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DatabaseIdentifier:identifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('identifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('DatabaseIdentifier:identifier','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('DatabaseIdentifier:identifier','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('DatabaseIdentifier:referenceDatabase','SchemaClassAttribute','class','DatabaseIdentifier','SchemaClass',0),('DatabaseIdentifier:referenceDatabase','SchemaClassAttribute','name','referenceDatabase','STRING',0),('referenceDatabase','SchemaClassAttribute','name','referenceDatabase','STRING',0),('DatabaseIdentifier:referenceDatabase','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('referenceDatabase','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DatabaseIdentifier:referenceDatabase','SchemaClassAttribute','type','db_instance_type','STRING',0),('referenceDatabase','SchemaClassAttribute','type','db_instance_type','STRING',0),('DatabaseIdentifier:referenceDatabase','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('referenceDatabase','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DatabaseIdentifier:referenceDatabase','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('referenceDatabase','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DatabaseIdentifier:referenceDatabase','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('referenceDatabase','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('DatabaseIdentifier:referenceDatabase','SchemaClassAttribute','allowed_classes','ReferenceDatabase','SchemaClass',0),('referenceDatabase','SchemaClassAttribute','allowed_classes','ReferenceDatabase','SchemaClass',0),('DatabaseIdentifier:referenceDatabase','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('DatabaseIdentifier:referenceDatabase','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('DatabaseObject','SchemaClass','abstract','TRUE','SYMBOL',0),('DatabaseObject','SchemaClass','name','DatabaseObject','STRING',0),('DatabaseObject:_displayName','SchemaClassAttribute','class','DatabaseObject','SchemaClass',0),('DatabaseObject:_displayName','SchemaClassAttribute','name','_displayName','STRING',0),('_displayName','SchemaClassAttribute','name','_displayName','STRING',0),('DatabaseObject:_displayName','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_displayName','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DatabaseObject:_displayName','SchemaClassAttribute','type','db_string_type','STRING',0),('_displayName','SchemaClassAttribute','type','db_string_type','STRING',0),('DatabaseObject:_displayName','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_displayName','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DatabaseObject:_displayName','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_displayName','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DatabaseObject:_displayName','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_displayName','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('DatabaseObject:_displayName','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('DatabaseObject:_timestamp','SchemaClassAttribute','class','DatabaseObject','SchemaClass',0),('DatabaseObject:_timestamp','SchemaClassAttribute','name','_timestamp','STRING',0),('_timestamp','SchemaClassAttribute','name','_timestamp','STRING',0),('DatabaseObject:_timestamp','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_timestamp','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DatabaseObject:_timestamp','SchemaClassAttribute','type','db_string_type','STRING',0),('_timestamp','SchemaClassAttribute','type','db_string_type','STRING',0),('DatabaseObject:_timestamp','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_timestamp','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DatabaseObject:_timestamp','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_timestamp','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DatabaseObject:_timestamp','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_timestamp','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('DatabaseObject:_timestamp','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('DatabaseObject:created','SchemaClassAttribute','class','DatabaseObject','SchemaClass',0),('DatabaseObject:created','SchemaClassAttribute','name','created','STRING',0),('created','SchemaClassAttribute','name','created','STRING',0),('DatabaseObject:created','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('created','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DatabaseObject:created','SchemaClassAttribute','type','db_instance_type','STRING',0),('created','SchemaClassAttribute','type','db_instance_type','STRING',0),('DatabaseObject:created','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('created','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DatabaseObject:created','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('created','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DatabaseObject:created','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('created','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('DatabaseObject:created','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('created','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('DatabaseObject:created','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('DatabaseObject:modified','SchemaClassAttribute','class','DatabaseObject','SchemaClass',0),('DatabaseObject:modified','SchemaClassAttribute','name','modified','STRING',0),('modified','SchemaClassAttribute','name','modified','STRING',0),('DatabaseObject:modified','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('modified','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DatabaseObject:modified','SchemaClassAttribute','type','db_instance_type','STRING',0),('modified','SchemaClassAttribute','type','db_instance_type','STRING',0),('DatabaseObject:modified','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('modified','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DatabaseObject:modified','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('modified','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DatabaseObject:modified','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('modified','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('DatabaseObject:modified','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('modified','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('DatabaseObject:modified','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('DatabaseObject:stableIdentifier','SchemaClassAttribute','class','DatabaseObject','SchemaClass',0),('DatabaseObject:stableIdentifier','SchemaClassAttribute','name','stableIdentifier','STRING',0),('stableIdentifier','SchemaClassAttribute','name','stableIdentifier','STRING',0),('DatabaseObject:stableIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('stableIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DatabaseObject:stableIdentifier','SchemaClassAttribute','type','db_instance_type','STRING',0),('stableIdentifier','SchemaClassAttribute','type','db_instance_type','STRING',0),('DatabaseObject:stableIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('stableIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DatabaseObject:stableIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('stableIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DatabaseObject:stableIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('stableIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('DatabaseObject:stableIdentifier','SchemaClassAttribute','allowed_classes','StableIdentifier','SchemaClass',0),('stableIdentifier','SchemaClassAttribute','allowed_classes','StableIdentifier','SchemaClass',0),('DatabaseObject:stableIdentifier','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('DatabaseObject:DB_ID','SchemaClassAttribute','class','DatabaseObject','SchemaClass',0),('DatabaseObject:DB_ID','SchemaClassAttribute','name','DB_ID','STRING',0),('DB_ID','SchemaClassAttribute','name','DB_ID','STRING',0),('DatabaseObject:DB_ID','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DB_ID','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DatabaseObject:DB_ID','SchemaClassAttribute','type','db_long_type','STRING',0),('DB_ID','SchemaClassAttribute','type','db_long_type','STRING',0),('DatabaseObject:DB_ID','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DB_ID','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DatabaseObject:DB_ID','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DB_ID','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DatabaseObject:DB_ID','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('DB_ID','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('DatabaseObject:DB_ID','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('DefinedSet','SchemaClass','super_classes','EntitySet','SchemaClass',0),('DefinedSet','SchemaClass','abstract',NULL,'SYMBOL',0),('DefinedSet','SchemaClass','name','DefinedSet','STRING',0),('DefinedSet:hasMember','SchemaClassAttribute','class','DefinedSet','SchemaClass',0),('DefinedSet:hasMember','SchemaClassAttribute','name','hasMember','STRING',0),('DefinedSet:hasMember','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DefinedSet:hasMember','SchemaClassAttribute','type','db_instance_type','STRING',0),('DefinedSet:hasMember','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DefinedSet:hasMember','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DefinedSet:hasMember','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('DefinedSet:hasMember','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('DefinedSet:hasMember','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('DefinedSet:hasMember','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('_Deleted','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('_Deleted','SchemaClass','abstract',NULL,'SYMBOL',0),('_Deleted','SchemaClass','name','_Deleted','STRING',0),('_Deleted:curatorComment','SchemaClassAttribute','class','_Deleted','SchemaClass',0),('_Deleted:curatorComment','SchemaClassAttribute','name','curatorComment','STRING',0),('curatorComment','SchemaClassAttribute','name','curatorComment','STRING',0),('_Deleted:curatorComment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('curatorComment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_Deleted:curatorComment','SchemaClassAttribute','type','db_string_type','STRING',0),('curatorComment','SchemaClassAttribute','type','db_string_type','STRING',0),('_Deleted:curatorComment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('curatorComment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_Deleted:curatorComment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('curatorComment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_Deleted:curatorComment','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('curatorComment','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_Deleted:curatorComment','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_Deleted:deletedInstanceDB_ID','SchemaClassAttribute','class','_Deleted','SchemaClass',0),('_Deleted:deletedInstanceDB_ID','SchemaClassAttribute','name','deletedInstanceDB_ID','STRING',0),('deletedInstanceDB_ID','SchemaClassAttribute','name','deletedInstanceDB_ID','STRING',0),('_Deleted:deletedInstanceDB_ID','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('deletedInstanceDB_ID','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_Deleted:deletedInstanceDB_ID','SchemaClassAttribute','type','db_long_type','STRING',0),('deletedInstanceDB_ID','SchemaClassAttribute','type','db_long_type','STRING',0),('_Deleted:deletedInstanceDB_ID','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('deletedInstanceDB_ID','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_Deleted:deletedInstanceDB_ID','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('deletedInstanceDB_ID','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_Deleted:deletedInstanceDB_ID','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('deletedInstanceDB_ID','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('_Deleted:deletedInstanceDB_ID','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_Deleted:reason','SchemaClassAttribute','class','_Deleted','SchemaClass',0),('_Deleted:reason','SchemaClassAttribute','name','reason','STRING',0),('reason','SchemaClassAttribute','name','reason','STRING',0),('_Deleted:reason','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('reason','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_Deleted:reason','SchemaClassAttribute','type','db_instance_type','STRING',0),('reason','SchemaClassAttribute','type','db_instance_type','STRING',0),('_Deleted:reason','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('reason','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_Deleted:reason','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('reason','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_Deleted:reason','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('reason','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_Deleted:reason','SchemaClassAttribute','allowed_classes','DeletedControlledVocabulary','SchemaClass',0),('reason','SchemaClassAttribute','allowed_classes','DeletedControlledVocabulary','SchemaClass',0),('_Deleted:reason','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_Deleted:deletedInstance','SchemaClassAttribute','class','_Deleted','SchemaClass',0),('_Deleted:deletedInstance','SchemaClassAttribute','name','deletedInstance','STRING',0),('deletedInstance','SchemaClassAttribute','name','deletedInstance','STRING',0),('_Deleted:deletedInstance','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('deletedInstance','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_Deleted:deletedInstance','SchemaClassAttribute','type','db_instance_type','STRING',0),('deletedInstance','SchemaClassAttribute','type','db_instance_type','STRING',0),('_Deleted:deletedInstance','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('deletedInstance','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_Deleted:deletedInstance','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('deletedInstance','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_Deleted:deletedInstance','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('deletedInstance','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('_Deleted:deletedInstance','SchemaClassAttribute','allowed_classes','_DeletedInstance','SchemaClass',0),('deletedInstance','SchemaClassAttribute','allowed_classes','_DeletedInstance','SchemaClass',0),('_Deleted:deletedInstance','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_Deleted:replacementInstances','SchemaClassAttribute','class','_Deleted','SchemaClass',0),('_Deleted:replacementInstances','SchemaClassAttribute','name','replacementInstances','STRING',0),('replacementInstances','SchemaClassAttribute','name','replacementInstances','STRING',0),('_Deleted:replacementInstances','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('replacementInstances','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_Deleted:replacementInstances','SchemaClassAttribute','type','db_instance_type','STRING',0),('replacementInstances','SchemaClassAttribute','type','db_instance_type','STRING',0),('_Deleted:replacementInstances','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('replacementInstances','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_Deleted:replacementInstances','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('replacementInstances','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_Deleted:replacementInstances','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('replacementInstances','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('_Deleted:replacementInstances','SchemaClassAttribute','allowed_classes','DatabaseObject','SchemaClass',0),('replacementInstances','SchemaClassAttribute','allowed_classes','DatabaseObject','SchemaClass',0),('_Deleted:replacementInstances','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_Deleted:replacementInstanceDB_IDs','SchemaClassAttribute','class','_Deleted','SchemaClass',0),('_Deleted:replacementInstanceDB_IDs','SchemaClassAttribute','name','replacementInstanceDB_IDs','STRING',0),('replacementInstanceDB_IDs','SchemaClassAttribute','name','replacementInstanceDB_IDs','STRING',0),('_Deleted:replacementInstanceDB_IDs','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('replacementInstanceDB_IDs','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_Deleted:replacementInstanceDB_IDs','SchemaClassAttribute','type','db_long_type','STRING',0),('replacementInstanceDB_IDs','SchemaClassAttribute','type','db_long_type','STRING',0),('_Deleted:replacementInstanceDB_IDs','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('replacementInstanceDB_IDs','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_Deleted:replacementInstanceDB_IDs','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('replacementInstanceDB_IDs','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_Deleted:replacementInstanceDB_IDs','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('replacementInstanceDB_IDs','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('_Deleted:replacementInstanceDB_IDs','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('DeletedControlledVocabulary','SchemaClass','super_classes','ControlledVocabulary','SchemaClass',0),('DeletedControlledVocabulary','SchemaClass','abstract',NULL,'SYMBOL',0),('DeletedControlledVocabulary','SchemaClass','name','DeletedControlledVocabulary','STRING',0),('_DeletedInstance','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('_DeletedInstance','SchemaClass','abstract',NULL,'SYMBOL',0),('_DeletedInstance','SchemaClass','name','_DeletedInstance','STRING',0),('_DeletedInstance:class','SchemaClassAttribute','class','_DeletedInstance','SchemaClass',0),('_DeletedInstance:class','SchemaClassAttribute','name','class','STRING',0),('class','SchemaClassAttribute','name','class','STRING',0),('_DeletedInstance:class','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('class','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_DeletedInstance:class','SchemaClassAttribute','type','db_string_type','STRING',0),('class','SchemaClassAttribute','type','db_string_type','STRING',0),('_DeletedInstance:class','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('class','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_DeletedInstance:class','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('class','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_DeletedInstance:class','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('class','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_DeletedInstance:class','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_DeletedInstance:class','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('_DeletedInstance:deletedInstanceDB_ID','SchemaClassAttribute','class','_DeletedInstance','SchemaClass',0),('_DeletedInstance:deletedInstanceDB_ID','SchemaClassAttribute','name','deletedInstanceDB_ID','STRING',0),('_DeletedInstance:deletedInstanceDB_ID','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_DeletedInstance:deletedInstanceDB_ID','SchemaClassAttribute','type','db_long_type','STRING',0),('_DeletedInstance:deletedInstanceDB_ID','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_DeletedInstance:deletedInstanceDB_ID','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_DeletedInstance:deletedInstanceDB_ID','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_DeletedInstance:deletedInstanceDB_ID','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_DeletedInstance:deletedInstanceDB_ID','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('_DeletedInstance:deletedStableIdentifier','SchemaClassAttribute','class','_DeletedInstance','SchemaClass',0),('_DeletedInstance:deletedStableIdentifier','SchemaClassAttribute','name','deletedStableIdentifier','STRING',0),('deletedStableIdentifier','SchemaClassAttribute','name','deletedStableIdentifier','STRING',0),('_DeletedInstance:deletedStableIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('deletedStableIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_DeletedInstance:deletedStableIdentifier','SchemaClassAttribute','type','db_instance_type','STRING',0),('deletedStableIdentifier','SchemaClassAttribute','type','db_instance_type','STRING',0),('_DeletedInstance:deletedStableIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('deletedStableIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_DeletedInstance:deletedStableIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('deletedStableIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_DeletedInstance:deletedStableIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('deletedStableIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_DeletedInstance:deletedStableIdentifier','SchemaClassAttribute','allowed_classes','StableIdentifier','SchemaClass',0),('deletedStableIdentifier','SchemaClassAttribute','allowed_classes','StableIdentifier','SchemaClass',0),('_DeletedInstance:deletedStableIdentifier','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_DeletedInstance:deletedStableIdentifier','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('_DeletedInstance:name','SchemaClassAttribute','class','_DeletedInstance','SchemaClass',0),('_DeletedInstance:name','SchemaClassAttribute','name','name','STRING',0),('_DeletedInstance:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_DeletedInstance:name','SchemaClassAttribute','type','db_string_type','STRING',0),('_DeletedInstance:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_DeletedInstance:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_DeletedInstance:name','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_DeletedInstance:name','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_DeletedInstance:name','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('_DeletedInstance:species','SchemaClassAttribute','class','_DeletedInstance','SchemaClass',0),('_DeletedInstance:species','SchemaClassAttribute','name','species','STRING',0),('_DeletedInstance:species','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_DeletedInstance:species','SchemaClassAttribute','type','db_instance_type','STRING',0),('_DeletedInstance:species','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_DeletedInstance:species','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_DeletedInstance:species','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('_DeletedInstance:species','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_DeletedInstance:species','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('_DeletedInstance:species','SchemaClassAttribute','allowed_classes','Taxon','SchemaClass',1),('_DeletedInstance:species','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Depolymerisation','SchemaClass','super_classes','ReactionlikeEvent','SchemaClass',0),('Depolymerisation','SchemaClass','abstract',NULL,'SYMBOL',0),('Depolymerisation','SchemaClass','name','Depolymerisation','STRING',0),('Depolymerisation:catalystActivity','SchemaClassAttribute','class','Depolymerisation','SchemaClass',0),('Depolymerisation:catalystActivity','SchemaClassAttribute','name','catalystActivity','STRING',0),('Depolymerisation:catalystActivity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Depolymerisation:catalystActivity','SchemaClassAttribute','type','db_instance_type','STRING',0),('Depolymerisation:catalystActivity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Depolymerisation:catalystActivity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Depolymerisation:catalystActivity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Depolymerisation:catalystActivity','SchemaClassAttribute','allowed_classes','CatalystActivity','SchemaClass',0),('Depolymerisation:catalystActivity','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Depolymerisation:catalystActivity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Depolymerisation:authored','SchemaClassAttribute','class','Depolymerisation','SchemaClass',0),('Depolymerisation:authored','SchemaClassAttribute','name','authored','STRING',0),('Depolymerisation:authored','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Depolymerisation:authored','SchemaClassAttribute','type','db_instance_type','STRING',0),('Depolymerisation:authored','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Depolymerisation:authored','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Depolymerisation:authored','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Depolymerisation:authored','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Depolymerisation:authored','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Depolymerisation:edited','SchemaClassAttribute','class','Depolymerisation','SchemaClass',0),('Depolymerisation:edited','SchemaClassAttribute','name','edited','STRING',0),('Depolymerisation:edited','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Depolymerisation:edited','SchemaClassAttribute','type','db_instance_type','STRING',0),('Depolymerisation:edited','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Depolymerisation:edited','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Depolymerisation:edited','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Depolymerisation:edited','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Depolymerisation:edited','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Depolymerisation:goBiologicalProcess','SchemaClassAttribute','class','Depolymerisation','SchemaClass',0),('Depolymerisation:goBiologicalProcess','SchemaClassAttribute','name','goBiologicalProcess','STRING',0),('Depolymerisation:goBiologicalProcess','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Depolymerisation:goBiologicalProcess','SchemaClassAttribute','type','db_instance_type','STRING',0),('Depolymerisation:goBiologicalProcess','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Depolymerisation:goBiologicalProcess','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Depolymerisation:goBiologicalProcess','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Depolymerisation:goBiologicalProcess','SchemaClassAttribute','allowed_classes','GO_BiologicalProcess','SchemaClass',0),('Depolymerisation:goBiologicalProcess','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Depolymerisation:literatureReference','SchemaClassAttribute','class','Depolymerisation','SchemaClass',0),('Depolymerisation:literatureReference','SchemaClassAttribute','name','literatureReference','STRING',0),('Depolymerisation:literatureReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Depolymerisation:literatureReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('Depolymerisation:literatureReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Depolymerisation:literatureReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Depolymerisation:literatureReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Depolymerisation:literatureReference','SchemaClassAttribute','allowed_classes','Publication','SchemaClass',0),('Depolymerisation:literatureReference','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Depolymerisation:releaseDate','SchemaClassAttribute','class','Depolymerisation','SchemaClass',0),('Depolymerisation:releaseDate','SchemaClassAttribute','name','releaseDate','STRING',0),('Depolymerisation:releaseDate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Depolymerisation:releaseDate','SchemaClassAttribute','type','db_string_type','STRING',0),('Depolymerisation:releaseDate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Depolymerisation:releaseDate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Depolymerisation:releaseDate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Depolymerisation:releaseDate','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Depolymerisation:requiredInputComponent','SchemaClassAttribute','class','Depolymerisation','SchemaClass',0),('Depolymerisation:requiredInputComponent','SchemaClassAttribute','name','requiredInputComponent','STRING',0),('Depolymerisation:requiredInputComponent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Depolymerisation:requiredInputComponent','SchemaClassAttribute','type','db_instance_type','STRING',0),('Depolymerisation:requiredInputComponent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Depolymerisation:requiredInputComponent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Depolymerisation:requiredInputComponent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Depolymerisation:requiredInputComponent','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('Depolymerisation:requiredInputComponent','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Disease','SchemaClass','super_classes','ExternalOntology','SchemaClass',0),('Disease','SchemaClass','abstract',NULL,'SYMBOL',0),('Disease','SchemaClass','name','Disease','STRING',0),('Disease:instanceOf','SchemaClassAttribute','class','Disease','SchemaClass',0),('Disease:instanceOf','SchemaClassAttribute','name','instanceOf','STRING',0),('Disease:instanceOf','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Disease:instanceOf','SchemaClassAttribute','type','db_instance_type','STRING',0),('Disease:instanceOf','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Disease:instanceOf','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Disease:instanceOf','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Disease:instanceOf','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Disease:instanceOf','SchemaClassAttribute','allowed_classes','Disease','SchemaClass',0),('Drug','SchemaClass','super_classes','PhysicalEntity','SchemaClass',0),('Drug','SchemaClass','abstract','TRUE','SYMBOL',0),('Drug','SchemaClass','name','Drug','STRING',0),('Drug:compartment','SchemaClassAttribute','class','Drug','SchemaClass',0),('Drug:compartment','SchemaClassAttribute','name','compartment','STRING',0),('Drug:compartment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Drug:compartment','SchemaClassAttribute','type','db_instance_type','STRING',0),('Drug:compartment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Drug:compartment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Drug:compartment','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Drug:compartment','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('Drug:compartment','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Drug:compartment','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Drug:referenceEntity','SchemaClassAttribute','class','Drug','SchemaClass',0),('Drug:referenceEntity','SchemaClassAttribute','name','referenceEntity','STRING',0),('referenceEntity','SchemaClassAttribute','name','referenceEntity','STRING',0),('Drug:referenceEntity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('referenceEntity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Drug:referenceEntity','SchemaClassAttribute','type','db_instance_type','STRING',0),('referenceEntity','SchemaClassAttribute','type','db_instance_type','STRING',0),('Drug:referenceEntity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('referenceEntity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Drug:referenceEntity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('referenceEntity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Drug:referenceEntity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('referenceEntity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Drug:referenceEntity','SchemaClassAttribute','allowed_classes','ReferenceTherapeutic','SchemaClass',0),('referenceEntity','SchemaClassAttribute','allowed_classes','ReferenceTherapeutic','SchemaClass',0),('Drug:referenceEntity','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Drug:referenceEntity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Drug:disease','SchemaClassAttribute','class','Drug','SchemaClass',0),('Drug:disease','SchemaClassAttribute','name','disease','STRING',0),('disease','SchemaClassAttribute','name','disease','STRING',0),('Drug:disease','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('disease','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Drug:disease','SchemaClassAttribute','type','db_instance_type','STRING',0),('disease','SchemaClassAttribute','type','db_instance_type','STRING',0),('Drug:disease','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('disease','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Drug:disease','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('disease','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Drug:disease','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('disease','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Drug:disease','SchemaClassAttribute','allowed_classes','Disease','SchemaClass',0),('disease','SchemaClassAttribute','allowed_classes','Disease','SchemaClass',0),('Drug:disease','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Drug:disease','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('DrugActionType','SchemaClass','super_classes','ReactionType','SchemaClass',0),('DrugActionType','SchemaClass','abstract',NULL,'SYMBOL',0),('DrugActionType','SchemaClass','name','DrugActionType','STRING',0),('DrugActionType:instanceOf','SchemaClassAttribute','class','DrugActionType','SchemaClass',0),('DrugActionType:instanceOf','SchemaClassAttribute','name','instanceOf','STRING',0),('DrugActionType:instanceOf','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('DrugActionType:instanceOf','SchemaClassAttribute','type','db_instance_type','STRING',0),('DrugActionType:instanceOf','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('DrugActionType:instanceOf','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('DrugActionType:instanceOf','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('DrugActionType:instanceOf','SchemaClassAttribute','allowed_classes','DrugActionType','SchemaClass',0),('DrugActionType:instanceOf','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('EntityFunctionalStatus','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('EntityFunctionalStatus','SchemaClass','abstract',NULL,'SYMBOL',0),('EntityFunctionalStatus','SchemaClass','name','EntityFunctionalStatus','STRING',0),('EntityFunctionalStatus:functionalStatus','SchemaClassAttribute','class','EntityFunctionalStatus','SchemaClass',0),('EntityFunctionalStatus:functionalStatus','SchemaClassAttribute','name','functionalStatus','STRING',0),('functionalStatus','SchemaClassAttribute','name','functionalStatus','STRING',0),('EntityFunctionalStatus:functionalStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('functionalStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntityFunctionalStatus:functionalStatus','SchemaClassAttribute','type','db_instance_type','STRING',0),('functionalStatus','SchemaClassAttribute','type','db_instance_type','STRING',0),('EntityFunctionalStatus:functionalStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('functionalStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntityFunctionalStatus:functionalStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('functionalStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntityFunctionalStatus:functionalStatus','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('functionalStatus','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('EntityFunctionalStatus:functionalStatus','SchemaClassAttribute','allowed_classes','FunctionalStatus','SchemaClass',0),('functionalStatus','SchemaClassAttribute','allowed_classes','FunctionalStatus','SchemaClass',0),('EntityFunctionalStatus:functionalStatus','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('EntityFunctionalStatus:functionalStatus','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('EntityFunctionalStatus:diseaseEntity','SchemaClassAttribute','class','EntityFunctionalStatus','SchemaClass',0),('EntityFunctionalStatus:diseaseEntity','SchemaClassAttribute','name','diseaseEntity','STRING',0),('diseaseEntity','SchemaClassAttribute','name','diseaseEntity','STRING',0),('EntityFunctionalStatus:diseaseEntity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('diseaseEntity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntityFunctionalStatus:diseaseEntity','SchemaClassAttribute','type','db_instance_type','STRING',0),('diseaseEntity','SchemaClassAttribute','type','db_instance_type','STRING',0),('EntityFunctionalStatus:diseaseEntity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('diseaseEntity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntityFunctionalStatus:diseaseEntity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('diseaseEntity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntityFunctionalStatus:diseaseEntity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('diseaseEntity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('EntityFunctionalStatus:diseaseEntity','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('diseaseEntity','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('EntityFunctionalStatus:diseaseEntity','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('EntityFunctionalStatus:diseaseEntity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('EntityFunctionalStatus:normalEntity','SchemaClassAttribute','class','EntityFunctionalStatus','SchemaClass',0),('EntityFunctionalStatus:normalEntity','SchemaClassAttribute','name','normalEntity','STRING',0),('normalEntity','SchemaClassAttribute','name','normalEntity','STRING',0),('EntityFunctionalStatus:normalEntity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('normalEntity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntityFunctionalStatus:normalEntity','SchemaClassAttribute','type','db_instance_type','STRING',0),('normalEntity','SchemaClassAttribute','type','db_instance_type','STRING',0),('EntityFunctionalStatus:normalEntity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('normalEntity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntityFunctionalStatus:normalEntity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('normalEntity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntityFunctionalStatus:normalEntity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('normalEntity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('EntityFunctionalStatus:normalEntity','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('normalEntity','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('EntityFunctionalStatus:normalEntity','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('EntityFunctionalStatus:normalEntity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('EntitySet','SchemaClass','super_classes','PhysicalEntity','SchemaClass',0),('EntitySet','SchemaClass','abstract','TRUE','SYMBOL',0),('EntitySet','SchemaClass','name','EntitySet','STRING',0),('EntitySet:isOrdered','SchemaClassAttribute','class','EntitySet','SchemaClass',0),('EntitySet:isOrdered','SchemaClassAttribute','name','isOrdered','STRING',0),('isOrdered','SchemaClassAttribute','name','isOrdered','STRING',0),('EntitySet:isOrdered','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('isOrdered','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntitySet:isOrdered','SchemaClassAttribute','type','db_enum_type','STRING',0),('isOrdered','SchemaClassAttribute','type','db_enum_type','STRING',0),('EntitySet:isOrdered','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('isOrdered','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntitySet:isOrdered','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('isOrdered','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntitySet:isOrdered','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('isOrdered','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('EntitySet:isOrdered','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('EntitySet:compartment','SchemaClassAttribute','class','EntitySet','SchemaClass',0),('EntitySet:compartment','SchemaClassAttribute','name','compartment','STRING',0),('EntitySet:compartment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntitySet:compartment','SchemaClassAttribute','type','db_instance_type','STRING',0),('EntitySet:compartment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntitySet:compartment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntitySet:compartment','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('EntitySet:compartment','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('EntitySet:relatedSpecies','SchemaClassAttribute','class','EntitySet','SchemaClass',0),('EntitySet:relatedSpecies','SchemaClassAttribute','name','relatedSpecies','STRING',0),('EntitySet:relatedSpecies','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntitySet:relatedSpecies','SchemaClassAttribute','type','db_instance_type','STRING',0),('EntitySet:relatedSpecies','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntitySet:relatedSpecies','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntitySet:relatedSpecies','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('EntitySet:relatedSpecies','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('EntitySet:relatedSpecies','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('EntitySet:species','SchemaClassAttribute','class','EntitySet','SchemaClass',0),('EntitySet:species','SchemaClassAttribute','name','species','STRING',0),('EntitySet:species','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntitySet:species','SchemaClassAttribute','type','db_instance_type','STRING',0),('EntitySet:species','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntitySet:species','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntitySet:species','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('EntitySet:species','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('EntitySet:species','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('EntitySet:hasMember','SchemaClassAttribute','class','EntitySet','SchemaClass',0),('EntitySet:hasMember','SchemaClassAttribute','name','hasMember','STRING',0),('EntitySet:hasMember','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntitySet:hasMember','SchemaClassAttribute','type','db_instance_type','STRING',0),('EntitySet:hasMember','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntitySet:hasMember','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntitySet:hasMember','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('EntitySet:hasMember','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('EntitySet:hasMember','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('EntityWithAccessionedSequence','SchemaClass','super_classes','GenomeEncodedEntity','SchemaClass',0),('EntityWithAccessionedSequence','SchemaClass','abstract',NULL,'SYMBOL',0),('EntityWithAccessionedSequence','SchemaClass','name','EntityWithAccessionedSequence','STRING',0),('EntityWithAccessionedSequence:endCoordinate','SchemaClassAttribute','class','EntityWithAccessionedSequence','SchemaClass',0),('EntityWithAccessionedSequence:endCoordinate','SchemaClassAttribute','name','endCoordinate','STRING',0),('endCoordinate','SchemaClassAttribute','name','endCoordinate','STRING',0),('EntityWithAccessionedSequence:endCoordinate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('endCoordinate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntityWithAccessionedSequence:endCoordinate','SchemaClassAttribute','type','db_integer_type','STRING',0),('endCoordinate','SchemaClassAttribute','type','db_integer_type','STRING',0),('EntityWithAccessionedSequence:endCoordinate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('endCoordinate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:endCoordinate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('endCoordinate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:endCoordinate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('endCoordinate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('EntityWithAccessionedSequence:endCoordinate','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('EntityWithAccessionedSequence:endCoordinate','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('EntityWithAccessionedSequence:startCoordinate','SchemaClassAttribute','class','EntityWithAccessionedSequence','SchemaClass',0),('EntityWithAccessionedSequence:startCoordinate','SchemaClassAttribute','name','startCoordinate','STRING',0),('startCoordinate','SchemaClassAttribute','name','startCoordinate','STRING',0),('EntityWithAccessionedSequence:startCoordinate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('startCoordinate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntityWithAccessionedSequence:startCoordinate','SchemaClassAttribute','type','db_integer_type','STRING',0),('startCoordinate','SchemaClassAttribute','type','db_integer_type','STRING',0),('EntityWithAccessionedSequence:startCoordinate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('startCoordinate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:startCoordinate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('startCoordinate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:startCoordinate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('startCoordinate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('EntityWithAccessionedSequence:startCoordinate','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('EntityWithAccessionedSequence:startCoordinate','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('EntityWithAccessionedSequence:hasModifiedResidue','SchemaClassAttribute','class','EntityWithAccessionedSequence','SchemaClass',0),('EntityWithAccessionedSequence:hasModifiedResidue','SchemaClassAttribute','name','hasModifiedResidue','STRING',0),('hasModifiedResidue','SchemaClassAttribute','name','hasModifiedResidue','STRING',0),('EntityWithAccessionedSequence:hasModifiedResidue','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('hasModifiedResidue','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntityWithAccessionedSequence:hasModifiedResidue','SchemaClassAttribute','type','db_instance_type','STRING',0),('hasModifiedResidue','SchemaClassAttribute','type','db_instance_type','STRING',0),('EntityWithAccessionedSequence:hasModifiedResidue','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('hasModifiedResidue','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:hasModifiedResidue','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('hasModifiedResidue','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:hasModifiedResidue','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('hasModifiedResidue','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('EntityWithAccessionedSequence:hasModifiedResidue','SchemaClassAttribute','allowed_classes','AbstractModifiedResidue','SchemaClass',0),('hasModifiedResidue','SchemaClassAttribute','allowed_classes','AbstractModifiedResidue','SchemaClass',0),('EntityWithAccessionedSequence:hasModifiedResidue','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('EntityWithAccessionedSequence:hasModifiedResidue','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('EntityWithAccessionedSequence:referenceEntity','SchemaClassAttribute','class','EntityWithAccessionedSequence','SchemaClass',0),('EntityWithAccessionedSequence:referenceEntity','SchemaClassAttribute','name','referenceEntity','STRING',0),('EntityWithAccessionedSequence:referenceEntity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntityWithAccessionedSequence:referenceEntity','SchemaClassAttribute','type','db_instance_type','STRING',0),('EntityWithAccessionedSequence:referenceEntity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:referenceEntity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:referenceEntity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('EntityWithAccessionedSequence:referenceEntity','SchemaClassAttribute','allowed_classes','ReferenceSequence','SchemaClass',0),('EntityWithAccessionedSequence:referenceEntity','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('EntityWithAccessionedSequence:referenceEntity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('EntityWithAccessionedSequence:name','SchemaClassAttribute','class','EntityWithAccessionedSequence','SchemaClass',0),('EntityWithAccessionedSequence:name','SchemaClassAttribute','name','name','STRING',0),('EntityWithAccessionedSequence:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntityWithAccessionedSequence:name','SchemaClassAttribute','type','db_string_type','STRING',0),('EntityWithAccessionedSequence:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('EntityWithAccessionedSequence:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('EntityWithAccessionedSequence:name','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('EntityWithAccessionedSequence:species','SchemaClassAttribute','class','EntityWithAccessionedSequence','SchemaClass',0),('EntityWithAccessionedSequence:species','SchemaClassAttribute','name','species','STRING',0),('EntityWithAccessionedSequence:species','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EntityWithAccessionedSequence:species','SchemaClassAttribute','type','db_instance_type','STRING',0),('EntityWithAccessionedSequence:species','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:species','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EntityWithAccessionedSequence:species','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('EntityWithAccessionedSequence:species','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('EntityWithAccessionedSequence:species','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('EntityWithAccessionedSequence:species','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('Event','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('Event','SchemaClass','abstract','TRUE','SYMBOL',0),('Event','SchemaClass','name','Event','STRING',0),('Event:_doRelease','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:_doRelease','SchemaClassAttribute','name','_doRelease','STRING',0),('_doRelease','SchemaClassAttribute','name','_doRelease','STRING',0),('Event:_doRelease','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_doRelease','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:_doRelease','SchemaClassAttribute','type','db_enum_type','STRING',0),('_doRelease','SchemaClassAttribute','type','db_enum_type','STRING',0),('Event:_doRelease','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_doRelease','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:_doRelease','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_doRelease','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:_doRelease','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_doRelease','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Event:_doRelease','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:releaseStatus','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:releaseStatus','SchemaClassAttribute','name','releaseStatus','STRING',0),('releaseStatus','SchemaClassAttribute','name','releaseStatus','STRING',0),('Event:releaseStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('releaseStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:releaseStatus','SchemaClassAttribute','type','db_string_type','STRING',0),('releaseStatus','SchemaClassAttribute','type','db_string_type','STRING',0),('Event:releaseStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('releaseStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:releaseStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('releaseStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:releaseStatus','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('releaseStatus','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Event:releaseStatus','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('Event:disease','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:disease','SchemaClassAttribute','name','disease','STRING',0),('Event:disease','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:disease','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:disease','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:disease','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:disease','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:disease','SchemaClassAttribute','allowed_classes','Disease','SchemaClass',0),('Event:disease','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:evidenceType','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:evidenceType','SchemaClassAttribute','name','evidenceType','STRING',0),('evidenceType','SchemaClassAttribute','name','evidenceType','STRING',0),('Event:evidenceType','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('evidenceType','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:evidenceType','SchemaClassAttribute','type','db_instance_type','STRING',0),('evidenceType','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:evidenceType','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('evidenceType','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:evidenceType','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('evidenceType','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:evidenceType','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('evidenceType','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Event:evidenceType','SchemaClassAttribute','allowed_classes','EvidenceType','SchemaClass',0),('evidenceType','SchemaClassAttribute','allowed_classes','EvidenceType','SchemaClass',0),('Event:evidenceType','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:precedingEvent','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:precedingEvent','SchemaClassAttribute','name','precedingEvent','STRING',0),('precedingEvent','SchemaClassAttribute','name','precedingEvent','STRING',0),('Event:precedingEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('precedingEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:precedingEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('precedingEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:precedingEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('precedingEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:precedingEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('precedingEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:precedingEvent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('precedingEvent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:precedingEvent','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('precedingEvent','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('Event:precedingEvent','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:inferredFrom','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:inferredFrom','SchemaClassAttribute','name','inferredFrom','STRING',0),('inferredFrom','SchemaClassAttribute','name','inferredFrom','STRING',0),('Event:inferredFrom','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('inferredFrom','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:inferredFrom','SchemaClassAttribute','type','db_instance_type','STRING',0),('inferredFrom','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:inferredFrom','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('inferredFrom','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:inferredFrom','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('inferredFrom','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:inferredFrom','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('inferredFrom','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:inferredFrom','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('inferredFrom','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('Event:inferredFrom','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:orthologousEvent','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:orthologousEvent','SchemaClassAttribute','name','orthologousEvent','STRING',0),('orthologousEvent','SchemaClassAttribute','name','orthologousEvent','STRING',0),('Event:orthologousEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('orthologousEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:orthologousEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('orthologousEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:orthologousEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('orthologousEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:orthologousEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('orthologousEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:orthologousEvent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('orthologousEvent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:orthologousEvent','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('orthologousEvent','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('Event:orthologousEvent','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('orthologousEvent','SchemaClassAttribute','inverse_slots','orthologousEvent','SchemaClassAttribute',0),('Event:reviewed','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:reviewed','SchemaClassAttribute','name','reviewed','STRING',0),('reviewed','SchemaClassAttribute','name','reviewed','STRING',0),('Event:reviewed','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('reviewed','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:reviewed','SchemaClassAttribute','type','db_instance_type','STRING',0),('reviewed','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:reviewed','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('reviewed','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:reviewed','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('reviewed','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:reviewed','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('reviewed','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:reviewed','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('reviewed','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Event:reviewed','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Event:internalReviewed','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:internalReviewed','SchemaClassAttribute','name','internalReviewed','STRING',0),('internalReviewed','SchemaClassAttribute','name','internalReviewed','STRING',0),('Event:internalReviewed','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('internalReviewed','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:internalReviewed','SchemaClassAttribute','type','db_instance_type','STRING',0),('internalReviewed','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:internalReviewed','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('internalReviewed','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:internalReviewed','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('internalReviewed','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:internalReviewed','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('internalReviewed','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:internalReviewed','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('internalReviewed','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Event:internalReviewed','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:negativePrecedingEvent','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:negativePrecedingEvent','SchemaClassAttribute','name','negativePrecedingEvent','STRING',0),('negativePrecedingEvent','SchemaClassAttribute','name','negativePrecedingEvent','STRING',0),('Event:negativePrecedingEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('negativePrecedingEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:negativePrecedingEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('negativePrecedingEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:negativePrecedingEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('negativePrecedingEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:negativePrecedingEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('negativePrecedingEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:negativePrecedingEvent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('negativePrecedingEvent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:negativePrecedingEvent','SchemaClassAttribute','allowed_classes','NegativePrecedingEvent','SchemaClass',0),('negativePrecedingEvent','SchemaClassAttribute','allowed_classes','NegativePrecedingEvent','SchemaClass',0),('Event:negativePrecedingEvent','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:reviewStatus','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:reviewStatus','SchemaClassAttribute','name','reviewStatus','STRING',0),('reviewStatus','SchemaClassAttribute','name','reviewStatus','STRING',0),('Event:reviewStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('reviewStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:reviewStatus','SchemaClassAttribute','type','db_instance_type','STRING',0),('reviewStatus','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:reviewStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('reviewStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:reviewStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('reviewStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:reviewStatus','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('reviewStatus','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Event:reviewStatus','SchemaClassAttribute','allowed_classes','ReviewStatus','SchemaClass',0),('reviewStatus','SchemaClassAttribute','allowed_classes','ReviewStatus','SchemaClass',0),('Event:reviewStatus','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:previousReviewStatus','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:previousReviewStatus','SchemaClassAttribute','name','previousReviewStatus','STRING',0),('previousReviewStatus','SchemaClassAttribute','name','previousReviewStatus','STRING',0),('Event:previousReviewStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('previousReviewStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:previousReviewStatus','SchemaClassAttribute','type','db_instance_type','STRING',0),('previousReviewStatus','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:previousReviewStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('previousReviewStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:previousReviewStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('previousReviewStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:previousReviewStatus','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('previousReviewStatus','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Event:previousReviewStatus','SchemaClassAttribute','allowed_classes','ReviewStatus','SchemaClass',0),('previousReviewStatus','SchemaClassAttribute','allowed_classes','ReviewStatus','SchemaClass',0),('Event:previousReviewStatus','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:structureModified','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:structureModified','SchemaClassAttribute','name','structureModified','STRING',0),('structureModified','SchemaClassAttribute','name','structureModified','STRING',0),('Event:structureModified','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('structureModified','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:structureModified','SchemaClassAttribute','type','db_instance_type','STRING',0),('structureModified','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:structureModified','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('structureModified','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:structureModified','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('structureModified','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:structureModified','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('structureModified','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:structureModified','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('structureModified','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Event:structureModified','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('Event:authored','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:authored','SchemaClassAttribute','name','authored','STRING',0),('Event:authored','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:authored','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:authored','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:authored','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:authored','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:authored','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Event:authored','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:edited','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:edited','SchemaClassAttribute','name','edited','STRING',0),('Event:edited','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:edited','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:edited','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:edited','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:edited','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:edited','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Event:edited','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:crossReference','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:crossReference','SchemaClassAttribute','name','crossReference','STRING',0),('Event:crossReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:crossReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:crossReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:crossReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:crossReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:crossReference','SchemaClassAttribute','allowed_classes','DatabaseIdentifier','SchemaClass',0),('Event:crossReference','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:definition','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:definition','SchemaClassAttribute','name','definition','STRING',0),('Event:definition','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:definition','SchemaClassAttribute','type','db_string_type','STRING',0),('Event:definition','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:definition','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:definition','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Event:definition','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:figure','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:figure','SchemaClassAttribute','name','figure','STRING',0),('figure','SchemaClassAttribute','name','figure','STRING',0),('Event:figure','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('figure','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:figure','SchemaClassAttribute','type','db_instance_type','STRING',0),('figure','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:figure','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('figure','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:figure','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('figure','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:figure','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('figure','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:figure','SchemaClassAttribute','allowed_classes','Figure','SchemaClass',0),('figure','SchemaClassAttribute','allowed_classes','Figure','SchemaClass',0),('Event:figure','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:goBiologicalProcess','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:goBiologicalProcess','SchemaClassAttribute','name','goBiologicalProcess','STRING',0),('Event:goBiologicalProcess','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:goBiologicalProcess','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:goBiologicalProcess','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:goBiologicalProcess','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:goBiologicalProcess','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Event:goBiologicalProcess','SchemaClassAttribute','allowed_classes','GO_BiologicalProcess','SchemaClass',0),('Event:goBiologicalProcess','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('Event:literatureReference','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:literatureReference','SchemaClassAttribute','name','literatureReference','STRING',0),('Event:literatureReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:literatureReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:literatureReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:literatureReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:literatureReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:literatureReference','SchemaClassAttribute','allowed_classes','Publication','SchemaClass',0),('Event:literatureReference','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:name','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:name','SchemaClassAttribute','name','name','STRING',0),('Event:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:name','SchemaClassAttribute','type','db_string_type','STRING',0),('Event:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Event:name','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('Event:relatedSpecies','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:relatedSpecies','SchemaClassAttribute','name','relatedSpecies','STRING',0),('Event:relatedSpecies','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:relatedSpecies','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:relatedSpecies','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:relatedSpecies','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:relatedSpecies','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:relatedSpecies','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('Event:relatedSpecies','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:revised','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:revised','SchemaClassAttribute','name','revised','STRING',0),('revised','SchemaClassAttribute','name','revised','STRING',0),('Event:revised','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('revised','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:revised','SchemaClassAttribute','type','db_instance_type','STRING',0),('revised','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:revised','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('revised','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:revised','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('revised','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:revised','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('revised','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:revised','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('revised','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Event:revised','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Event:species','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:species','SchemaClassAttribute','name','species','STRING',0),('Event:species','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:species','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:species','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:species','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:species','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:species','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('Event:species','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Event:summation','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:summation','SchemaClassAttribute','name','summation','STRING',0),('summation','SchemaClassAttribute','name','summation','STRING',0),('Event:summation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('summation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:summation','SchemaClassAttribute','type','db_instance_type','STRING',0),('summation','SchemaClassAttribute','type','db_instance_type','STRING',0),('Event:summation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('summation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:summation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('summation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:summation','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('summation','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Event:summation','SchemaClassAttribute','allowed_classes','Summation','SchemaClass',0),('summation','SchemaClassAttribute','allowed_classes','Summation','SchemaClass',0),('Event:summation','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Event:releaseDate','SchemaClassAttribute','class','Event','SchemaClass',0),('Event:releaseDate','SchemaClassAttribute','name','releaseDate','STRING',0),('Event:releaseDate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Event:releaseDate','SchemaClassAttribute','type','db_string_type','STRING',0),('Event:releaseDate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Event:releaseDate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Event:releaseDate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Event:releaseDate','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('EvidenceType','SchemaClass','super_classes','ExternalOntology','SchemaClass',0),('EvidenceType','SchemaClass','abstract',NULL,'SYMBOL',0),('EvidenceType','SchemaClass','name','EvidenceType','STRING',0),('EvidenceType:instanceOf','SchemaClassAttribute','class','EvidenceType','SchemaClass',0),('EvidenceType:instanceOf','SchemaClassAttribute','name','instanceOf','STRING',0),('EvidenceType:instanceOf','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EvidenceType:instanceOf','SchemaClassAttribute','type','db_instance_type','STRING',0),('EvidenceType:instanceOf','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EvidenceType:instanceOf','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EvidenceType:instanceOf','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('EvidenceType:instanceOf','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('EvidenceType:instanceOf','SchemaClassAttribute','allowed_classes','EvidenceType','SchemaClass',0),('EvidenceType:name','SchemaClassAttribute','class','EvidenceType','SchemaClass',0),('EvidenceType:name','SchemaClassAttribute','name','name','STRING',0),('EvidenceType:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('EvidenceType:name','SchemaClassAttribute','type','db_string_type','STRING',0),('EvidenceType:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('EvidenceType:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('EvidenceType:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('EvidenceType:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('EvidenceType:name','SchemaClassAttribute','value_defines_instance','any','SYMBOL',0),('ExternalOntology','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('ExternalOntology','SchemaClass','abstract','TRUE','SYMBOL',0),('ExternalOntology','SchemaClass','name','ExternalOntology','STRING',0),('ExternalOntology:synonym','SchemaClassAttribute','class','ExternalOntology','SchemaClass',0),('ExternalOntology:synonym','SchemaClassAttribute','name','synonym','STRING',0),('synonym','SchemaClassAttribute','name','synonym','STRING',0),('ExternalOntology:synonym','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('synonym','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ExternalOntology:synonym','SchemaClassAttribute','type','db_string_type','STRING',0),('synonym','SchemaClassAttribute','type','db_string_type','STRING',0),('ExternalOntology:synonym','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('synonym','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ExternalOntology:synonym','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('synonym','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ExternalOntology:synonym','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('synonym','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ExternalOntology:synonym','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ExternalOntology:definition','SchemaClassAttribute','class','ExternalOntology','SchemaClass',0),('ExternalOntology:definition','SchemaClassAttribute','name','definition','STRING',0),('ExternalOntology:definition','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ExternalOntology:definition','SchemaClassAttribute','type','db_string_type','STRING',0),('ExternalOntology:definition','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ExternalOntology:definition','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ExternalOntology:definition','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ExternalOntology:definition','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ExternalOntology:identifier','SchemaClassAttribute','class','ExternalOntology','SchemaClass',0),('ExternalOntology:identifier','SchemaClassAttribute','name','identifier','STRING',0),('ExternalOntology:identifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ExternalOntology:identifier','SchemaClassAttribute','type','db_string_type','STRING',0),('ExternalOntology:identifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ExternalOntology:identifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ExternalOntology:identifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ExternalOntology:identifier','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ExternalOntology:identifier','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('ExternalOntology:name','SchemaClassAttribute','class','ExternalOntology','SchemaClass',0),('ExternalOntology:name','SchemaClassAttribute','name','name','STRING',0),('ExternalOntology:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ExternalOntology:name','SchemaClassAttribute','type','db_string_type','STRING',0),('ExternalOntology:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ExternalOntology:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ExternalOntology:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ExternalOntology:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ExternalOntology:referenceDatabase','SchemaClassAttribute','class','ExternalOntology','SchemaClass',0),('ExternalOntology:referenceDatabase','SchemaClassAttribute','name','referenceDatabase','STRING',0),('ExternalOntology:referenceDatabase','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ExternalOntology:referenceDatabase','SchemaClassAttribute','type','db_instance_type','STRING',0),('ExternalOntology:referenceDatabase','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ExternalOntology:referenceDatabase','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ExternalOntology:referenceDatabase','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ExternalOntology:referenceDatabase','SchemaClassAttribute','allowed_classes','ReferenceDatabase','SchemaClass',0),('ExternalOntology:referenceDatabase','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ExternalOntology:instanceOf','SchemaClassAttribute','class','ExternalOntology','SchemaClass',0),('ExternalOntology:instanceOf','SchemaClassAttribute','name','instanceOf','STRING',0),('ExternalOntology:instanceOf','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ExternalOntology:instanceOf','SchemaClassAttribute','type','db_instance_type','STRING',0),('ExternalOntology:instanceOf','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ExternalOntology:instanceOf','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ExternalOntology:instanceOf','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ExternalOntology:instanceOf','SchemaClassAttribute','allowed_classes','ExternalOntology','SchemaClass',0),('ExternalOntology:instanceOf','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('FailedReaction','SchemaClass','super_classes','ReactionlikeEvent','SchemaClass',0),('FailedReaction','SchemaClass','abstract',NULL,'SYMBOL',0),('FailedReaction','SchemaClass','name','FailedReaction','STRING',0),('FailedReaction:catalystActivity','SchemaClassAttribute','class','FailedReaction','SchemaClass',0),('FailedReaction:catalystActivity','SchemaClassAttribute','name','catalystActivity','STRING',0),('FailedReaction:catalystActivity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FailedReaction:catalystActivity','SchemaClassAttribute','type','db_instance_type','STRING',0),('FailedReaction:catalystActivity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FailedReaction:catalystActivity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FailedReaction:catalystActivity','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('FailedReaction:catalystActivity','SchemaClassAttribute','allowed_classes','CatalystActivity','SchemaClass',0),('FailedReaction:catalystActivity','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('FailedReaction:catalystActivity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('FailedReaction:authored','SchemaClassAttribute','class','FailedReaction','SchemaClass',0),('FailedReaction:authored','SchemaClassAttribute','name','authored','STRING',0),('FailedReaction:authored','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FailedReaction:authored','SchemaClassAttribute','type','db_instance_type','STRING',0),('FailedReaction:authored','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FailedReaction:authored','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FailedReaction:authored','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('FailedReaction:authored','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('FailedReaction:authored','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('FailedReaction:edited','SchemaClassAttribute','class','FailedReaction','SchemaClass',0),('FailedReaction:edited','SchemaClassAttribute','name','edited','STRING',0),('FailedReaction:edited','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FailedReaction:edited','SchemaClassAttribute','type','db_instance_type','STRING',0),('FailedReaction:edited','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FailedReaction:edited','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FailedReaction:edited','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('FailedReaction:edited','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('FailedReaction:edited','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('FailedReaction:goBiologicalProcess','SchemaClassAttribute','class','FailedReaction','SchemaClass',0),('FailedReaction:goBiologicalProcess','SchemaClassAttribute','name','goBiologicalProcess','STRING',0),('FailedReaction:goBiologicalProcess','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FailedReaction:goBiologicalProcess','SchemaClassAttribute','type','db_instance_type','STRING',0),('FailedReaction:goBiologicalProcess','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FailedReaction:goBiologicalProcess','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FailedReaction:goBiologicalProcess','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('FailedReaction:goBiologicalProcess','SchemaClassAttribute','allowed_classes','GO_BiologicalProcess','SchemaClass',0),('FailedReaction:goBiologicalProcess','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('FailedReaction:literatureReference','SchemaClassAttribute','class','FailedReaction','SchemaClass',0),('FailedReaction:literatureReference','SchemaClassAttribute','name','literatureReference','STRING',0),('FailedReaction:literatureReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FailedReaction:literatureReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('FailedReaction:literatureReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FailedReaction:literatureReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FailedReaction:literatureReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('FailedReaction:literatureReference','SchemaClassAttribute','allowed_classes','Publication','SchemaClass',0),('FailedReaction:literatureReference','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('FailedReaction:normalReaction','SchemaClassAttribute','class','FailedReaction','SchemaClass',0),('FailedReaction:normalReaction','SchemaClassAttribute','name','normalReaction','STRING',0),('normalReaction','SchemaClassAttribute','name','normalReaction','STRING',0),('FailedReaction:normalReaction','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('normalReaction','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FailedReaction:normalReaction','SchemaClassAttribute','type','db_instance_type','STRING',0),('normalReaction','SchemaClassAttribute','type','db_instance_type','STRING',0),('FailedReaction:normalReaction','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('normalReaction','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FailedReaction:normalReaction','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('normalReaction','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FailedReaction:normalReaction','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('normalReaction','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('FailedReaction:normalReaction','SchemaClassAttribute','allowed_classes','ReactionlikeEvent','SchemaClass',0),('normalReaction','SchemaClassAttribute','allowed_classes','ReactionlikeEvent','SchemaClass',0),('FailedReaction:normalReaction','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('FailedReaction:output','SchemaClassAttribute','class','FailedReaction','SchemaClass',0),('FailedReaction:output','SchemaClassAttribute','name','output','STRING',0),('FailedReaction:output','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FailedReaction:output','SchemaClassAttribute','type','db_instance_type','STRING',0),('FailedReaction:output','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FailedReaction:output','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FailedReaction:output','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('FailedReaction:output','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('FailedReaction:output','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('FailedReaction:output','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('FailedReaction:requiredInputComponent','SchemaClassAttribute','class','FailedReaction','SchemaClass',0),('FailedReaction:requiredInputComponent','SchemaClassAttribute','name','requiredInputComponent','STRING',0),('FailedReaction:requiredInputComponent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FailedReaction:requiredInputComponent','SchemaClassAttribute','type','db_instance_type','STRING',0),('FailedReaction:requiredInputComponent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FailedReaction:requiredInputComponent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FailedReaction:requiredInputComponent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('FailedReaction:requiredInputComponent','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('FailedReaction:requiredInputComponent','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Figure','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('Figure','SchemaClass','abstract',NULL,'SYMBOL',0),('Figure','SchemaClass','name','Figure','STRING',0),('Figure:url','SchemaClassAttribute','class','Figure','SchemaClass',0),('Figure:url','SchemaClassAttribute','name','url','STRING',0),('url','SchemaClassAttribute','name','url','STRING',0),('Figure:url','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('url','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Figure:url','SchemaClassAttribute','type','db_string_type','STRING',0),('url','SchemaClassAttribute','type','db_string_type','STRING',0),('Figure:url','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('url','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Figure:url','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('url','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Figure:url','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('url','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Figure:url','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Figure:url','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('FragmentDeletionModification','SchemaClass','super_classes','FragmentModification','SchemaClass',0),('FragmentDeletionModification','SchemaClass','abstract',NULL,'SYMBOL',0),('FragmentDeletionModification','SchemaClass','name','FragmentDeletionModification','STRING',0),('FragmentInsertionModification','SchemaClass','super_classes','FragmentModification','SchemaClass',0),('FragmentInsertionModification','SchemaClass','abstract',NULL,'SYMBOL',0),('FragmentInsertionModification','SchemaClass','name','FragmentInsertionModification','STRING',0),('FragmentInsertionModification:coordinate','SchemaClassAttribute','class','FragmentInsertionModification','SchemaClass',0),('FragmentInsertionModification:coordinate','SchemaClassAttribute','name','coordinate','STRING',0),('coordinate','SchemaClassAttribute','name','coordinate','STRING',0),('FragmentInsertionModification:coordinate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('coordinate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FragmentInsertionModification:coordinate','SchemaClassAttribute','type','db_integer_type','STRING',0),('coordinate','SchemaClassAttribute','type','db_integer_type','STRING',0),('FragmentInsertionModification:coordinate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('coordinate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FragmentInsertionModification:coordinate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('coordinate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FragmentInsertionModification:coordinate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('coordinate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('FragmentInsertionModification:coordinate','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('FragmentInsertionModification:coordinate','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('FragmentModification','SchemaClass','super_classes','GeneticallyModifiedResidue','SchemaClass',0),('FragmentModification','SchemaClass','abstract','TRUE','SYMBOL',0),('FragmentModification','SchemaClass','name','FragmentModification','STRING',0),('FragmentModification:endPositionInReferenceSequence','SchemaClassAttribute','class','FragmentModification','SchemaClass',0),('FragmentModification:endPositionInReferenceSequence','SchemaClassAttribute','name','endPositionInReferenceSequence','STRING',0),('endPositionInReferenceSequence','SchemaClassAttribute','name','endPositionInReferenceSequence','STRING',0),('FragmentModification:endPositionInReferenceSequence','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('endPositionInReferenceSequence','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FragmentModification:endPositionInReferenceSequence','SchemaClassAttribute','type','db_integer_type','STRING',0),('endPositionInReferenceSequence','SchemaClassAttribute','type','db_integer_type','STRING',0),('FragmentModification:endPositionInReferenceSequence','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('endPositionInReferenceSequence','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FragmentModification:endPositionInReferenceSequence','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('endPositionInReferenceSequence','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FragmentModification:endPositionInReferenceSequence','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('endPositionInReferenceSequence','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('FragmentModification:endPositionInReferenceSequence','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('FragmentModification:endPositionInReferenceSequence','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('FragmentModification:startPositionInReferenceSequence','SchemaClassAttribute','class','FragmentModification','SchemaClass',0),('FragmentModification:startPositionInReferenceSequence','SchemaClassAttribute','name','startPositionInReferenceSequence','STRING',0),('startPositionInReferenceSequence','SchemaClassAttribute','name','startPositionInReferenceSequence','STRING',0),('FragmentModification:startPositionInReferenceSequence','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('startPositionInReferenceSequence','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FragmentModification:startPositionInReferenceSequence','SchemaClassAttribute','type','db_integer_type','STRING',0),('startPositionInReferenceSequence','SchemaClassAttribute','type','db_integer_type','STRING',0),('FragmentModification:startPositionInReferenceSequence','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('startPositionInReferenceSequence','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FragmentModification:startPositionInReferenceSequence','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('startPositionInReferenceSequence','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FragmentModification:startPositionInReferenceSequence','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('startPositionInReferenceSequence','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('FragmentModification:startPositionInReferenceSequence','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('FragmentModification:startPositionInReferenceSequence','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('FragmentReplacedModification','SchemaClass','super_classes','FragmentModification','SchemaClass',0),('FragmentReplacedModification','SchemaClass','abstract',NULL,'SYMBOL',0),('FragmentReplacedModification','SchemaClass','name','FragmentReplacedModification','STRING',0),('FragmentReplacedModification:alteredAminoAcidFragment','SchemaClassAttribute','class','FragmentReplacedModification','SchemaClass',0),('FragmentReplacedModification:alteredAminoAcidFragment','SchemaClassAttribute','name','alteredAminoAcidFragment','STRING',0),('alteredAminoAcidFragment','SchemaClassAttribute','name','alteredAminoAcidFragment','STRING',0),('FragmentReplacedModification:alteredAminoAcidFragment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('alteredAminoAcidFragment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FragmentReplacedModification:alteredAminoAcidFragment','SchemaClassAttribute','type','db_string_type','STRING',0),('alteredAminoAcidFragment','SchemaClassAttribute','type','db_string_type','STRING',0),('FragmentReplacedModification:alteredAminoAcidFragment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('alteredAminoAcidFragment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FragmentReplacedModification:alteredAminoAcidFragment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('alteredAminoAcidFragment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FragmentReplacedModification:alteredAminoAcidFragment','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('alteredAminoAcidFragment','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('FragmentReplacedModification:alteredAminoAcidFragment','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('FragmentReplacedModification:alteredAminoAcidFragment','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('FrontPage','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('FrontPage','SchemaClass','abstract',NULL,'SYMBOL',0),('FrontPage','SchemaClass','name','FrontPage','STRING',0),('FrontPage:frontPageItem','SchemaClassAttribute','class','FrontPage','SchemaClass',0),('FrontPage:frontPageItem','SchemaClassAttribute','name','frontPageItem','STRING',0),('frontPageItem','SchemaClassAttribute','name','frontPageItem','STRING',0),('FrontPage:frontPageItem','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('frontPageItem','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FrontPage:frontPageItem','SchemaClassAttribute','type','db_instance_type','STRING',0),('frontPageItem','SchemaClassAttribute','type','db_instance_type','STRING',0),('FrontPage:frontPageItem','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('frontPageItem','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FrontPage:frontPageItem','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('frontPageItem','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FrontPage:frontPageItem','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('frontPageItem','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('FrontPage:frontPageItem','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('frontPageItem','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('FrontPage:frontPageItem','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('FunctionalStatus','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('FunctionalStatus','SchemaClass','abstract',NULL,'SYMBOL',0),('FunctionalStatus','SchemaClass','name','FunctionalStatus','STRING',0),('FunctionalStatus:functionalStatusType','SchemaClassAttribute','class','FunctionalStatus','SchemaClass',0),('FunctionalStatus:functionalStatusType','SchemaClassAttribute','name','functionalStatusType','STRING',0),('functionalStatusType','SchemaClassAttribute','name','functionalStatusType','STRING',0),('FunctionalStatus:functionalStatusType','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('functionalStatusType','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FunctionalStatus:functionalStatusType','SchemaClassAttribute','type','db_instance_type','STRING',0),('functionalStatusType','SchemaClassAttribute','type','db_instance_type','STRING',0),('FunctionalStatus:functionalStatusType','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('functionalStatusType','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FunctionalStatus:functionalStatusType','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('functionalStatusType','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FunctionalStatus:functionalStatusType','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('functionalStatusType','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('FunctionalStatus:functionalStatusType','SchemaClassAttribute','allowed_classes','FunctionalStatusType','SchemaClass',0),('functionalStatusType','SchemaClassAttribute','allowed_classes','FunctionalStatusType','SchemaClass',0),('FunctionalStatus:functionalStatusType','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('FunctionalStatus:functionalStatusType','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('FunctionalStatus:structuralVariant','SchemaClassAttribute','class','FunctionalStatus','SchemaClass',0),('FunctionalStatus:structuralVariant','SchemaClassAttribute','name','structuralVariant','STRING',0),('structuralVariant','SchemaClassAttribute','name','structuralVariant','STRING',0),('FunctionalStatus:structuralVariant','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('structuralVariant','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FunctionalStatus:structuralVariant','SchemaClassAttribute','type','db_instance_type','STRING',0),('structuralVariant','SchemaClassAttribute','type','db_instance_type','STRING',0),('FunctionalStatus:structuralVariant','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('structuralVariant','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FunctionalStatus:structuralVariant','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('structuralVariant','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FunctionalStatus:structuralVariant','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('structuralVariant','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('FunctionalStatus:structuralVariant','SchemaClassAttribute','allowed_classes','SequenceOntology','SchemaClass',0),('structuralVariant','SchemaClassAttribute','allowed_classes','SequenceOntology','SchemaClass',0),('FunctionalStatus:structuralVariant','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('FunctionalStatus:structuralVariant','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('FunctionalStatusType','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('FunctionalStatusType','SchemaClass','abstract',NULL,'SYMBOL',0),('FunctionalStatusType','SchemaClass','name','FunctionalStatusType','STRING',0),('FunctionalStatusType:definition','SchemaClassAttribute','class','FunctionalStatusType','SchemaClass',0),('FunctionalStatusType:definition','SchemaClassAttribute','name','definition','STRING',0),('FunctionalStatusType:definition','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FunctionalStatusType:definition','SchemaClassAttribute','type','db_string_type','STRING',0),('FunctionalStatusType:definition','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FunctionalStatusType:definition','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FunctionalStatusType:definition','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('FunctionalStatusType:definition','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('FunctionalStatusType:name','SchemaClassAttribute','class','FunctionalStatusType','SchemaClass',0),('FunctionalStatusType:name','SchemaClassAttribute','name','name','STRING',0),('FunctionalStatusType:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('FunctionalStatusType:name','SchemaClassAttribute','type','db_string_type','STRING',0),('FunctionalStatusType:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('FunctionalStatusType:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('FunctionalStatusType:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('FunctionalStatusType:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('FunctionalStatusType:name','SchemaClassAttribute','value_defines_instance','any','SYMBOL',0),('GeneticallyModifiedResidue','SchemaClass','super_classes','AbstractModifiedResidue','SchemaClass',0),('GeneticallyModifiedResidue','SchemaClass','abstract','TRUE','SYMBOL',0),('GeneticallyModifiedResidue','SchemaClass','name','GeneticallyModifiedResidue','STRING',0),('GenomeEncodedEntity','SchemaClass','super_classes','PhysicalEntity','SchemaClass',0),('GenomeEncodedEntity','SchemaClass','abstract',NULL,'SYMBOL',0),('GenomeEncodedEntity','SchemaClass','name','GenomeEncodedEntity','STRING',0),('GenomeEncodedEntity:compartment','SchemaClassAttribute','class','GenomeEncodedEntity','SchemaClass',0),('GenomeEncodedEntity:compartment','SchemaClassAttribute','name','compartment','STRING',0),('GenomeEncodedEntity:compartment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GenomeEncodedEntity:compartment','SchemaClassAttribute','type','db_instance_type','STRING',0),('GenomeEncodedEntity:compartment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GenomeEncodedEntity:compartment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GenomeEncodedEntity:compartment','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('GenomeEncodedEntity:compartment','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('GenomeEncodedEntity:compartment','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GenomeEncodedEntity:compartment','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('GenomeEncodedEntity:species','SchemaClassAttribute','class','GenomeEncodedEntity','SchemaClass',0),('GenomeEncodedEntity:species','SchemaClassAttribute','name','species','STRING',0),('GenomeEncodedEntity:species','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GenomeEncodedEntity:species','SchemaClassAttribute','type','db_instance_type','STRING',0),('GenomeEncodedEntity:species','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GenomeEncodedEntity:species','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GenomeEncodedEntity:species','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GenomeEncodedEntity:species','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GenomeEncodedEntity:species','SchemaClassAttribute','allowed_classes','Taxon','SchemaClass',0),('GenomeEncodedEntity:species','SchemaClassAttribute','allowed_classes','Species','SchemaClass',1),('GenomeEncodedEntity:species','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('GO_BiologicalProcess','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('GO_BiologicalProcess','SchemaClass','abstract',NULL,'SYMBOL',0),('GO_BiologicalProcess','SchemaClass','name','GO_BiologicalProcess','STRING',0),('GO_BiologicalProcess:accession','SchemaClassAttribute','class','GO_BiologicalProcess','SchemaClass',0),('GO_BiologicalProcess:accession','SchemaClassAttribute','name','accession','STRING',0),('accession','SchemaClassAttribute','name','accession','STRING',0),('GO_BiologicalProcess:accession','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('accession','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_BiologicalProcess:accession','SchemaClassAttribute','type','db_string_type','STRING',0),('accession','SchemaClassAttribute','type','db_string_type','STRING',0),('GO_BiologicalProcess:accession','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('accession','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_BiologicalProcess:accession','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('accession','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_BiologicalProcess:accession','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('accession','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GO_BiologicalProcess:accession','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GO_BiologicalProcess:accession','SchemaClassAttribute','value_defines_instance','any','SYMBOL',0),('GO_BiologicalProcess:definition','SchemaClassAttribute','class','GO_BiologicalProcess','SchemaClass',0),('GO_BiologicalProcess:definition','SchemaClassAttribute','name','definition','STRING',0),('GO_BiologicalProcess:definition','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_BiologicalProcess:definition','SchemaClassAttribute','type','db_string_type','STRING',0),('GO_BiologicalProcess:definition','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_BiologicalProcess:definition','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_BiologicalProcess:definition','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GO_BiologicalProcess:definition','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('GO_BiologicalProcess:name','SchemaClassAttribute','class','GO_BiologicalProcess','SchemaClass',0),('GO_BiologicalProcess:name','SchemaClassAttribute','name','name','STRING',0),('GO_BiologicalProcess:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_BiologicalProcess:name','SchemaClassAttribute','type','db_string_type','STRING',0),('GO_BiologicalProcess:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_BiologicalProcess:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_BiologicalProcess:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('GO_BiologicalProcess:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GO_BiologicalProcess:referenceDatabase','SchemaClassAttribute','class','GO_BiologicalProcess','SchemaClass',0),('GO_BiologicalProcess:referenceDatabase','SchemaClassAttribute','name','referenceDatabase','STRING',0),('GO_BiologicalProcess:referenceDatabase','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_BiologicalProcess:referenceDatabase','SchemaClassAttribute','type','db_instance_type','STRING',0),('GO_BiologicalProcess:referenceDatabase','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_BiologicalProcess:referenceDatabase','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_BiologicalProcess:referenceDatabase','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GO_BiologicalProcess:referenceDatabase','SchemaClassAttribute','allowed_classes','ReferenceDatabase','SchemaClass',0),('GO_BiologicalProcess:referenceDatabase','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GO_CellularComponent','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('GO_CellularComponent','SchemaClass','abstract',NULL,'SYMBOL',0),('GO_CellularComponent','SchemaClass','name','GO_CellularComponent','STRING',0),('GO_CellularComponent:componentOf','SchemaClassAttribute','class','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:componentOf','SchemaClassAttribute','name','componentOf','STRING',0),('componentOf','SchemaClassAttribute','name','componentOf','STRING',0),('GO_CellularComponent:componentOf','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('componentOf','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_CellularComponent:componentOf','SchemaClassAttribute','type','db_instance_type','STRING',0),('componentOf','SchemaClassAttribute','type','db_instance_type','STRING',0),('GO_CellularComponent:componentOf','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('componentOf','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_CellularComponent:componentOf','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('componentOf','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_CellularComponent:componentOf','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('componentOf','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('GO_CellularComponent:componentOf','SchemaClassAttribute','allowed_classes','GO_CellularComponent','SchemaClass',0),('componentOf','SchemaClassAttribute','allowed_classes','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:componentOf','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('GO_CellularComponent:hasPart','SchemaClassAttribute','class','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:hasPart','SchemaClassAttribute','name','hasPart','STRING',0),('hasPart','SchemaClassAttribute','name','hasPart','STRING',0),('GO_CellularComponent:hasPart','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('hasPart','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_CellularComponent:hasPart','SchemaClassAttribute','type','db_instance_type','STRING',0),('hasPart','SchemaClassAttribute','type','db_instance_type','STRING',0),('GO_CellularComponent:hasPart','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('hasPart','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_CellularComponent:hasPart','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('hasPart','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_CellularComponent:hasPart','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('hasPart','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('GO_CellularComponent:hasPart','SchemaClassAttribute','allowed_classes','GO_CellularComponent','SchemaClass',0),('hasPart','SchemaClassAttribute','allowed_classes','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:hasPart','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('GO_CellularComponent:surroundedBy','SchemaClassAttribute','class','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:surroundedBy','SchemaClassAttribute','name','surroundedBy','STRING',0),('surroundedBy','SchemaClassAttribute','name','surroundedBy','STRING',0),('GO_CellularComponent:surroundedBy','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('surroundedBy','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_CellularComponent:surroundedBy','SchemaClassAttribute','type','db_instance_type','STRING',0),('surroundedBy','SchemaClassAttribute','type','db_instance_type','STRING',0),('GO_CellularComponent:surroundedBy','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('surroundedBy','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_CellularComponent:surroundedBy','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('surroundedBy','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_CellularComponent:surroundedBy','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('surroundedBy','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('GO_CellularComponent:surroundedBy','SchemaClassAttribute','allowed_classes','GO_CellularComponent','SchemaClass',0),('surroundedBy','SchemaClassAttribute','allowed_classes','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:surroundedBy','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('GO_CellularComponent:accession','SchemaClassAttribute','class','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:accession','SchemaClassAttribute','name','accession','STRING',0),('GO_CellularComponent:accession','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_CellularComponent:accession','SchemaClassAttribute','type','db_string_type','STRING',0),('GO_CellularComponent:accession','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_CellularComponent:accession','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_CellularComponent:accession','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GO_CellularComponent:accession','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GO_CellularComponent:accession','SchemaClassAttribute','value_defines_instance','any','SYMBOL',0),('GO_CellularComponent:definition','SchemaClassAttribute','class','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:definition','SchemaClassAttribute','name','definition','STRING',0),('GO_CellularComponent:definition','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_CellularComponent:definition','SchemaClassAttribute','type','db_string_type','STRING',0),('GO_CellularComponent:definition','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_CellularComponent:definition','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_CellularComponent:definition','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GO_CellularComponent:definition','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('GO_CellularComponent:name','SchemaClassAttribute','class','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:name','SchemaClassAttribute','name','name','STRING',0),('GO_CellularComponent:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_CellularComponent:name','SchemaClassAttribute','type','db_string_type','STRING',0),('GO_CellularComponent:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_CellularComponent:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_CellularComponent:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('GO_CellularComponent:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GO_CellularComponent:referenceDatabase','SchemaClassAttribute','class','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:referenceDatabase','SchemaClassAttribute','name','referenceDatabase','STRING',0),('GO_CellularComponent:referenceDatabase','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_CellularComponent:referenceDatabase','SchemaClassAttribute','type','db_instance_type','STRING',0),('GO_CellularComponent:referenceDatabase','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_CellularComponent:referenceDatabase','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_CellularComponent:referenceDatabase','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GO_CellularComponent:referenceDatabase','SchemaClassAttribute','allowed_classes','ReferenceDatabase','SchemaClass',0),('GO_CellularComponent:referenceDatabase','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GO_CellularComponent:instanceOf','SchemaClassAttribute','class','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:instanceOf','SchemaClassAttribute','name','instanceOf','STRING',0),('GO_CellularComponent:instanceOf','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_CellularComponent:instanceOf','SchemaClassAttribute','type','db_instance_type','STRING',0),('GO_CellularComponent:instanceOf','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_CellularComponent:instanceOf','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_CellularComponent:instanceOf','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('GO_CellularComponent:instanceOf','SchemaClassAttribute','allowed_classes','GO_CellularComponent','SchemaClass',0),('GO_CellularComponent:instanceOf','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('GO_MolecularFunction','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('GO_MolecularFunction','SchemaClass','abstract',NULL,'SYMBOL',0),('GO_MolecularFunction','SchemaClass','name','GO_MolecularFunction','STRING',0),('GO_MolecularFunction:ecNumber','SchemaClassAttribute','class','GO_MolecularFunction','SchemaClass',0),('GO_MolecularFunction:ecNumber','SchemaClassAttribute','name','ecNumber','STRING',0),('ecNumber','SchemaClassAttribute','name','ecNumber','STRING',0),('GO_MolecularFunction:ecNumber','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ecNumber','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_MolecularFunction:ecNumber','SchemaClassAttribute','type','db_string_type','STRING',0),('ecNumber','SchemaClassAttribute','type','db_string_type','STRING',0),('GO_MolecularFunction:ecNumber','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ecNumber','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_MolecularFunction:ecNumber','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ecNumber','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_MolecularFunction:ecNumber','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ecNumber','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('GO_MolecularFunction:ecNumber','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('GO_MolecularFunction:accession','SchemaClassAttribute','class','GO_MolecularFunction','SchemaClass',0),('GO_MolecularFunction:accession','SchemaClassAttribute','name','accession','STRING',0),('GO_MolecularFunction:accession','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_MolecularFunction:accession','SchemaClassAttribute','type','db_string_type','STRING',0),('GO_MolecularFunction:accession','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_MolecularFunction:accession','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_MolecularFunction:accession','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GO_MolecularFunction:accession','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GO_MolecularFunction:accession','SchemaClassAttribute','value_defines_instance','any','SYMBOL',0),('GO_MolecularFunction:definition','SchemaClassAttribute','class','GO_MolecularFunction','SchemaClass',0),('GO_MolecularFunction:definition','SchemaClassAttribute','name','definition','STRING',0),('GO_MolecularFunction:definition','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_MolecularFunction:definition','SchemaClassAttribute','type','db_string_type','STRING',0),('GO_MolecularFunction:definition','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_MolecularFunction:definition','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_MolecularFunction:definition','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GO_MolecularFunction:definition','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('GO_MolecularFunction:name','SchemaClassAttribute','class','GO_MolecularFunction','SchemaClass',0),('GO_MolecularFunction:name','SchemaClassAttribute','name','name','STRING',0),('GO_MolecularFunction:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_MolecularFunction:name','SchemaClassAttribute','type','db_string_type','STRING',0),('GO_MolecularFunction:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_MolecularFunction:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_MolecularFunction:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('GO_MolecularFunction:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GO_MolecularFunction:referenceDatabase','SchemaClassAttribute','class','GO_MolecularFunction','SchemaClass',0),('GO_MolecularFunction:referenceDatabase','SchemaClassAttribute','name','referenceDatabase','STRING',0),('GO_MolecularFunction:referenceDatabase','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GO_MolecularFunction:referenceDatabase','SchemaClassAttribute','type','db_instance_type','STRING',0),('GO_MolecularFunction:referenceDatabase','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GO_MolecularFunction:referenceDatabase','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GO_MolecularFunction:referenceDatabase','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GO_MolecularFunction:referenceDatabase','SchemaClassAttribute','allowed_classes','ReferenceDatabase','SchemaClass',0),('GO_MolecularFunction:referenceDatabase','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GroupModifiedResidue','SchemaClass','super_classes','TranslationalModification','SchemaClass',0),('GroupModifiedResidue','SchemaClass','abstract',NULL,'SYMBOL',0),('GroupModifiedResidue','SchemaClass','name','GroupModifiedResidue','STRING',0),('GroupModifiedResidue:modification','SchemaClassAttribute','class','GroupModifiedResidue','SchemaClass',0),('GroupModifiedResidue:modification','SchemaClassAttribute','name','modification','STRING',0),('GroupModifiedResidue:modification','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GroupModifiedResidue:modification','SchemaClassAttribute','type','db_instance_type','STRING',0),('GroupModifiedResidue:modification','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GroupModifiedResidue:modification','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GroupModifiedResidue:modification','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GroupModifiedResidue:modification','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GroupModifiedResidue:modification','SchemaClassAttribute','allowed_classes','Polymer','SchemaClass',0),('GroupModifiedResidue:modification','SchemaClassAttribute','allowed_classes','EntitySet','SchemaClass',1),('GroupModifiedResidue:modification','SchemaClassAttribute','allowed_classes','ReferenceGroup','SchemaClass',2),('GroupModifiedResidue:modification','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('GroupModifiedResidue:psiMod','SchemaClassAttribute','class','GroupModifiedResidue','SchemaClass',0),('GroupModifiedResidue:psiMod','SchemaClassAttribute','name','psiMod','STRING',0),('psiMod','SchemaClassAttribute','name','psiMod','STRING',0),('GroupModifiedResidue:psiMod','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('psiMod','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('GroupModifiedResidue:psiMod','SchemaClassAttribute','type','db_instance_type','STRING',0),('psiMod','SchemaClassAttribute','type','db_instance_type','STRING',0),('GroupModifiedResidue:psiMod','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('psiMod','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('GroupModifiedResidue:psiMod','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('psiMod','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('GroupModifiedResidue:psiMod','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('psiMod','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('GroupModifiedResidue:psiMod','SchemaClassAttribute','allowed_classes','PsiMod','SchemaClass',0),('psiMod','SchemaClassAttribute','allowed_classes','PsiMod','SchemaClass',0),('GroupModifiedResidue:psiMod','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('GroupModifiedResidue:psiMod','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('InstanceEdit','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('InstanceEdit','SchemaClass','abstract',NULL,'SYMBOL',0),('InstanceEdit','SchemaClass','name','InstanceEdit','STRING',0),('InstanceEdit:dateTime','SchemaClassAttribute','class','InstanceEdit','SchemaClass',0),('InstanceEdit:dateTime','SchemaClassAttribute','name','dateTime','STRING',0),('dateTime','SchemaClassAttribute','name','dateTime','STRING',0),('InstanceEdit:dateTime','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('dateTime','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('InstanceEdit:dateTime','SchemaClassAttribute','type','db_string_type','STRING',0),('dateTime','SchemaClassAttribute','type','db_string_type','STRING',0),('InstanceEdit:dateTime','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('dateTime','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('InstanceEdit:dateTime','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('dateTime','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('InstanceEdit:dateTime','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('dateTime','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('InstanceEdit:note','SchemaClassAttribute','class','InstanceEdit','SchemaClass',0),('InstanceEdit:note','SchemaClassAttribute','name','note','STRING',0),('note','SchemaClassAttribute','name','note','STRING',0),('InstanceEdit:note','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('note','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('InstanceEdit:note','SchemaClassAttribute','type','db_string_type','STRING',0),('note','SchemaClassAttribute','type','db_string_type','STRING',0),('InstanceEdit:note','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('note','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('InstanceEdit:note','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('note','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('InstanceEdit:note','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('note','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('InstanceEdit:_applyToAllEditedInstances','SchemaClassAttribute','class','InstanceEdit','SchemaClass',0),('InstanceEdit:_applyToAllEditedInstances','SchemaClassAttribute','name','_applyToAllEditedInstances','STRING',0),('_applyToAllEditedInstances','SchemaClassAttribute','name','_applyToAllEditedInstances','STRING',0),('InstanceEdit:_applyToAllEditedInstances','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_applyToAllEditedInstances','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('InstanceEdit:_applyToAllEditedInstances','SchemaClassAttribute','type','db_enum_type','STRING',0),('_applyToAllEditedInstances','SchemaClassAttribute','type','db_enum_type','STRING',0),('InstanceEdit:_applyToAllEditedInstances','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_applyToAllEditedInstances','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('InstanceEdit:_applyToAllEditedInstances','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_applyToAllEditedInstances','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('InstanceEdit:_applyToAllEditedInstances','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_applyToAllEditedInstances','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('InstanceEdit:author','SchemaClassAttribute','class','InstanceEdit','SchemaClass',0),('InstanceEdit:author','SchemaClassAttribute','name','author','STRING',0),('author','SchemaClassAttribute','name','author','STRING',0),('InstanceEdit:author','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('author','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('InstanceEdit:author','SchemaClassAttribute','type','db_instance_type','STRING',0),('author','SchemaClassAttribute','type','db_instance_type','STRING',0),('InstanceEdit:author','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('author','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('InstanceEdit:author','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('author','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('InstanceEdit:author','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('author','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('InstanceEdit:author','SchemaClassAttribute','allowed_classes','Person','SchemaClass',0),('author','SchemaClassAttribute','allowed_classes','Person','SchemaClass',0),('InteractionEvent','SchemaClass','super_classes','Event','SchemaClass',0),('InteractionEvent','SchemaClass','abstract',NULL,'SYMBOL',0),('InteractionEvent','SchemaClass','name','InteractionEvent','STRING',0),('InteractionEvent:partners','SchemaClassAttribute','class','InteractionEvent','SchemaClass',0),('InteractionEvent:partners','SchemaClassAttribute','name','partners','STRING',0),('partners','SchemaClassAttribute','name','partners','STRING',0),('InteractionEvent:partners','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('partners','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('InteractionEvent:partners','SchemaClassAttribute','type','db_instance_type','STRING',0),('partners','SchemaClassAttribute','type','db_instance_type','STRING',0),('InteractionEvent:partners','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('partners','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('InteractionEvent:partners','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('partners','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('InteractionEvent:partners','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('partners','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('InteractionEvent:partners','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('partners','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('InteractionEvent:partners','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('InterChainCrosslinkedResidue','SchemaClass','super_classes','CrosslinkedResidue','SchemaClass',0),('InterChainCrosslinkedResidue','SchemaClass','abstract',NULL,'SYMBOL',0),('InterChainCrosslinkedResidue','SchemaClass','name','InterChainCrosslinkedResidue','STRING',0),('InterChainCrosslinkedResidue:equivalentTo','SchemaClassAttribute','class','InterChainCrosslinkedResidue','SchemaClass',0),('InterChainCrosslinkedResidue:equivalentTo','SchemaClassAttribute','name','equivalentTo','STRING',0),('equivalentTo','SchemaClassAttribute','name','equivalentTo','STRING',0),('InterChainCrosslinkedResidue:equivalentTo','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('equivalentTo','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('InterChainCrosslinkedResidue:equivalentTo','SchemaClassAttribute','type','db_instance_type','STRING',0),('equivalentTo','SchemaClassAttribute','type','db_instance_type','STRING',0),('InterChainCrosslinkedResidue:equivalentTo','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('equivalentTo','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('InterChainCrosslinkedResidue:equivalentTo','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('equivalentTo','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('InterChainCrosslinkedResidue:equivalentTo','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('equivalentTo','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('InterChainCrosslinkedResidue:equivalentTo','SchemaClassAttribute','allowed_classes','InterChainCrosslinkedResidue','SchemaClass',0),('equivalentTo','SchemaClassAttribute','allowed_classes','InterChainCrosslinkedResidue','SchemaClass',0),('InterChainCrosslinkedResidue:equivalentTo','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('InterChainCrosslinkedResidue:secondReferenceSequence','SchemaClassAttribute','class','InterChainCrosslinkedResidue','SchemaClass',0),('InterChainCrosslinkedResidue:secondReferenceSequence','SchemaClassAttribute','name','secondReferenceSequence','STRING',0),('secondReferenceSequence','SchemaClassAttribute','name','secondReferenceSequence','STRING',0),('InterChainCrosslinkedResidue:secondReferenceSequence','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('secondReferenceSequence','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('InterChainCrosslinkedResidue:secondReferenceSequence','SchemaClassAttribute','type','db_instance_type','STRING',0),('secondReferenceSequence','SchemaClassAttribute','type','db_instance_type','STRING',0),('InterChainCrosslinkedResidue:secondReferenceSequence','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('secondReferenceSequence','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('InterChainCrosslinkedResidue:secondReferenceSequence','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('secondReferenceSequence','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('InterChainCrosslinkedResidue:secondReferenceSequence','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('secondReferenceSequence','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('InterChainCrosslinkedResidue:secondReferenceSequence','SchemaClassAttribute','allowed_classes','ReferenceSequence','SchemaClass',0),('secondReferenceSequence','SchemaClassAttribute','allowed_classes','ReferenceSequence','SchemaClass',0),('InterChainCrosslinkedResidue:secondReferenceSequence','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('InterChainCrosslinkedResidue:secondReferenceSequence','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('IntraChainCrosslinkedResidue','SchemaClass','super_classes','CrosslinkedResidue','SchemaClass',0),('IntraChainCrosslinkedResidue','SchemaClass','abstract',NULL,'SYMBOL',0),('IntraChainCrosslinkedResidue','SchemaClass','name','IntraChainCrosslinkedResidue','STRING',0),('LiteratureReference','SchemaClass','super_classes','Publication','SchemaClass',0),('LiteratureReference','SchemaClass','abstract',NULL,'SYMBOL',0),('LiteratureReference','SchemaClass','name','LiteratureReference','STRING',0),('LiteratureReference:journal','SchemaClassAttribute','class','LiteratureReference','SchemaClass',0),('LiteratureReference:journal','SchemaClassAttribute','name','journal','STRING',0),('journal','SchemaClassAttribute','name','journal','STRING',0),('LiteratureReference:journal','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('journal','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('LiteratureReference:journal','SchemaClassAttribute','type','db_string_type','STRING',0),('journal','SchemaClassAttribute','type','db_string_type','STRING',0),('LiteratureReference:journal','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('journal','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('LiteratureReference:journal','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('journal','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('LiteratureReference:journal','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('journal','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('LiteratureReference:journal','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('LiteratureReference:pages','SchemaClassAttribute','class','LiteratureReference','SchemaClass',0),('LiteratureReference:pages','SchemaClassAttribute','name','pages','STRING',0),('LiteratureReference:pages','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('LiteratureReference:pages','SchemaClassAttribute','type','db_string_type','STRING',0),('LiteratureReference:pages','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('LiteratureReference:pages','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('LiteratureReference:pages','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('LiteratureReference:pages','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('LiteratureReference:pubMedIdentifier','SchemaClassAttribute','class','LiteratureReference','SchemaClass',0),('LiteratureReference:pubMedIdentifier','SchemaClassAttribute','name','pubMedIdentifier','STRING',0),('pubMedIdentifier','SchemaClassAttribute','name','pubMedIdentifier','STRING',0),('LiteratureReference:pubMedIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('pubMedIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('LiteratureReference:pubMedIdentifier','SchemaClassAttribute','type','db_integer_type','STRING',0),('pubMedIdentifier','SchemaClassAttribute','type','db_integer_type','STRING',0),('LiteratureReference:pubMedIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('pubMedIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('LiteratureReference:pubMedIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('pubMedIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('LiteratureReference:pubMedIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('pubMedIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('LiteratureReference:pubMedIdentifier','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('LiteratureReference:pubMedIdentifier','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('LiteratureReference:volume','SchemaClassAttribute','class','LiteratureReference','SchemaClass',0),('LiteratureReference:volume','SchemaClassAttribute','name','volume','STRING',0),('volume','SchemaClassAttribute','name','volume','STRING',0),('LiteratureReference:volume','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('volume','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('LiteratureReference:volume','SchemaClassAttribute','type','db_integer_type','STRING',0),('volume','SchemaClassAttribute','type','db_integer_type','STRING',0),('LiteratureReference:volume','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('volume','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('LiteratureReference:volume','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('volume','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('LiteratureReference:volume','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('volume','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('LiteratureReference:volume','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('LiteratureReference:year','SchemaClassAttribute','class','LiteratureReference','SchemaClass',0),('LiteratureReference:year','SchemaClassAttribute','name','year','STRING',0),('LiteratureReference:year','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('LiteratureReference:year','SchemaClassAttribute','type','db_integer_type','STRING',0),('LiteratureReference:year','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('LiteratureReference:year','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('LiteratureReference:year','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('LiteratureReference:year','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('MarkerReference','SchemaClass','super_classes','ControlReference','SchemaClass',0),('MarkerReference','SchemaClass','abstract',NULL,'SYMBOL',0),('MarkerReference','SchemaClass','name','MarkerReference','STRING',0),('MarkerReference:marker','SchemaClassAttribute','class','MarkerReference','SchemaClass',0),('MarkerReference:marker','SchemaClassAttribute','name','marker','STRING',0),('marker','SchemaClassAttribute','name','marker','STRING',0),('MarkerReference:marker','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('marker','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('MarkerReference:marker','SchemaClassAttribute','type','db_instance_type','STRING',0),('marker','SchemaClassAttribute','type','db_instance_type','STRING',0),('MarkerReference:marker','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('marker','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('MarkerReference:marker','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('marker','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('MarkerReference:marker','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('marker','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('MarkerReference:marker','SchemaClassAttribute','allowed_classes','EntityWithAccessionedSequence','SchemaClass',0),('marker','SchemaClassAttribute','allowed_classes','EntityWithAccessionedSequence','SchemaClass',0),('MarkerReference:marker','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('MarkerReference:cell','SchemaClassAttribute','class','MarkerReference','SchemaClass',0),('MarkerReference:cell','SchemaClassAttribute','name','cell','STRING',0),('cell','SchemaClassAttribute','name','cell','STRING',0),('MarkerReference:cell','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('cell','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('MarkerReference:cell','SchemaClassAttribute','type','db_instance_type','STRING',0),('cell','SchemaClassAttribute','type','db_instance_type','STRING',0),('MarkerReference:cell','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('cell','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('MarkerReference:cell','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('cell','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('MarkerReference:cell','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('cell','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('MarkerReference:cell','SchemaClassAttribute','allowed_classes','Cell','SchemaClass',0),('cell','SchemaClassAttribute','allowed_classes','Cell','SchemaClass',0),('MarkerReference:cell','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ModifiedNucleotide','SchemaClass','super_classes','TranscriptionalModification','SchemaClass',0),('ModifiedNucleotide','SchemaClass','abstract',NULL,'SYMBOL',0),('ModifiedNucleotide','SchemaClass','name','ModifiedNucleotide','STRING',0),('ModifiedNucleotide:coordinate','SchemaClassAttribute','class','ModifiedNucleotide','SchemaClass',0),('ModifiedNucleotide:coordinate','SchemaClassAttribute','name','coordinate','STRING',0),('ModifiedNucleotide:coordinate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ModifiedNucleotide:coordinate','SchemaClassAttribute','type','db_integer_type','STRING',0),('ModifiedNucleotide:coordinate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ModifiedNucleotide:coordinate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ModifiedNucleotide:coordinate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ModifiedNucleotide:coordinate','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ModifiedNucleotide:coordinate','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('ModifiedNucleotide:modification','SchemaClassAttribute','class','ModifiedNucleotide','SchemaClass',0),('ModifiedNucleotide:modification','SchemaClassAttribute','name','modification','STRING',0),('ModifiedNucleotide:modification','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ModifiedNucleotide:modification','SchemaClassAttribute','type','db_instance_type','STRING',0),('ModifiedNucleotide:modification','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ModifiedNucleotide:modification','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ModifiedNucleotide:modification','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ModifiedNucleotide:modification','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ModifiedNucleotide:modification','SchemaClassAttribute','allowed_classes','ReferenceGroup','SchemaClass',0),('ModifiedNucleotide:modification','SchemaClassAttribute','allowed_classes','ReferenceMolecule','SchemaClass',1),('ModifiedNucleotide:modification','SchemaClassAttribute','allowed_classes','Polymer','SchemaClass',2),('ModifiedNucleotide:modification','SchemaClassAttribute','allowed_classes','EntitySet','SchemaClass',3),('ModifiedNucleotide:modification','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('ModifiedResidue','SchemaClass','super_classes','TranslationalModification','SchemaClass',0),('ModifiedResidue','SchemaClass','abstract',NULL,'SYMBOL',0),('ModifiedResidue','SchemaClass','name','ModifiedResidue','STRING',0),('ModifiedResidue:psiMod','SchemaClassAttribute','class','ModifiedResidue','SchemaClass',0),('ModifiedResidue:psiMod','SchemaClassAttribute','name','psiMod','STRING',0),('ModifiedResidue:psiMod','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ModifiedResidue:psiMod','SchemaClassAttribute','type','db_instance_type','STRING',0),('ModifiedResidue:psiMod','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ModifiedResidue:psiMod','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ModifiedResidue:psiMod','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ModifiedResidue:psiMod','SchemaClassAttribute','allowed_classes','PsiMod','SchemaClass',0),('ModifiedResidue:psiMod','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ModifiedResidue:psiMod','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('NegativeGeneExpressionRegulation','SchemaClass','super_classes','NegativeRegulation','SchemaClass',0),('NegativeGeneExpressionRegulation','SchemaClass','abstract',NULL,'SYMBOL',0),('NegativeGeneExpressionRegulation','SchemaClass','name','NegativeGeneExpressionRegulation','STRING',0),('NegativePrecedingEvent','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('NegativePrecedingEvent','SchemaClass','abstract',NULL,'SYMBOL',0),('NegativePrecedingEvent','SchemaClass','name','NegativePrecedingEvent','STRING',0),('NegativePrecedingEvent:comment','SchemaClassAttribute','class','NegativePrecedingEvent','SchemaClass',0),('NegativePrecedingEvent:comment','SchemaClassAttribute','name','comment','STRING',0),('comment','SchemaClassAttribute','name','comment','STRING',0),('NegativePrecedingEvent:comment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('comment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('NegativePrecedingEvent:comment','SchemaClassAttribute','type','db_string_type','STRING',0),('comment','SchemaClassAttribute','type','db_string_type','STRING',0),('NegativePrecedingEvent:comment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('comment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('NegativePrecedingEvent:comment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('comment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('NegativePrecedingEvent:comment','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('comment','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('NegativePrecedingEvent:comment','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('NegativePrecedingEvent:precedingEvent','SchemaClassAttribute','class','NegativePrecedingEvent','SchemaClass',0),('NegativePrecedingEvent:precedingEvent','SchemaClassAttribute','name','precedingEvent','STRING',0),('NegativePrecedingEvent:precedingEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('NegativePrecedingEvent:precedingEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('NegativePrecedingEvent:precedingEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('NegativePrecedingEvent:precedingEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('NegativePrecedingEvent:precedingEvent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('NegativePrecedingEvent:precedingEvent','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('NegativePrecedingEvent:precedingEvent','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('NegativePrecedingEvent:reason','SchemaClassAttribute','class','NegativePrecedingEvent','SchemaClass',0),('NegativePrecedingEvent:reason','SchemaClassAttribute','name','reason','STRING',0),('NegativePrecedingEvent:reason','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('NegativePrecedingEvent:reason','SchemaClassAttribute','type','db_instance_type','STRING',0),('NegativePrecedingEvent:reason','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('NegativePrecedingEvent:reason','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('NegativePrecedingEvent:reason','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('NegativePrecedingEvent:reason','SchemaClassAttribute','allowed_classes','NegativePrecedingEventReason','SchemaClass',0),('NegativePrecedingEvent:reason','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('NegativePrecedingEventReason','SchemaClass','super_classes','ControlledVocabulary','SchemaClass',0),('NegativePrecedingEventReason','SchemaClass','abstract',NULL,'SYMBOL',0),('NegativePrecedingEventReason','SchemaClass','name','NegativePrecedingEventReason','STRING',0),('NegativeRegulation','SchemaClass','super_classes','Regulation','SchemaClass',0),('NegativeRegulation','SchemaClass','abstract',NULL,'SYMBOL',0),('NegativeRegulation','SchemaClass','name','NegativeRegulation','STRING',0),('NegativeRegulation:regulator','SchemaClassAttribute','class','NegativeRegulation','SchemaClass',0),('NegativeRegulation:regulator','SchemaClassAttribute','name','regulator','STRING',0),('regulator','SchemaClassAttribute','name','regulator','STRING',0),('NegativeRegulation:regulator','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('regulator','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('NegativeRegulation:regulator','SchemaClassAttribute','type','db_instance_type','STRING',0),('regulator','SchemaClassAttribute','type','db_instance_type','STRING',0),('NegativeRegulation:regulator','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('regulator','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('NegativeRegulation:regulator','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('regulator','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('NegativeRegulation:regulator','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('regulator','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('NegativeRegulation:regulator','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('regulator','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('NegativeRegulation:regulator','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('NegativeRegulation:regulator','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('NonsenseMutation','SchemaClass','super_classes','ReplacedResidue','SchemaClass',0),('NonsenseMutation','SchemaClass','abstract',NULL,'SYMBOL',0),('NonsenseMutation','SchemaClass','name','NonsenseMutation','STRING',0),('NonsenseMutation:psiMod','SchemaClassAttribute','class','NonsenseMutation','SchemaClass',0),('NonsenseMutation:psiMod','SchemaClassAttribute','name','psiMod','STRING',0),('NonsenseMutation:psiMod','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('NonsenseMutation:psiMod','SchemaClassAttribute','type','db_instance_type','STRING',0),('NonsenseMutation:psiMod','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('NonsenseMutation:psiMod','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('NonsenseMutation:psiMod','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('NonsenseMutation:psiMod','SchemaClassAttribute','allowed_classes','PsiMod','SchemaClass',0),('NonsenseMutation:psiMod','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('NonsenseMutation:psiMod','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('OtherEntity','SchemaClass','super_classes','PhysicalEntity','SchemaClass',0),('OtherEntity','SchemaClass','abstract',NULL,'SYMBOL',0),('OtherEntity','SchemaClass','name','OtherEntity','STRING',0),('OtherEntity:compartment','SchemaClassAttribute','class','OtherEntity','SchemaClass',0),('OtherEntity:compartment','SchemaClassAttribute','name','compartment','STRING',0),('OtherEntity:compartment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('OtherEntity:compartment','SchemaClassAttribute','type','db_instance_type','STRING',0),('OtherEntity:compartment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('OtherEntity:compartment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('OtherEntity:compartment','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('OtherEntity:compartment','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('OtherEntity:compartment','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('OtherEntity:compartment','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Pathway','SchemaClass','super_classes','Event','SchemaClass',0),('Pathway','SchemaClass','abstract',NULL,'SYMBOL',0),('Pathway','SchemaClass','name','Pathway','STRING',0),('Pathway:doi','SchemaClassAttribute','class','Pathway','SchemaClass',0),('Pathway:doi','SchemaClassAttribute','name','doi','STRING',0),('doi','SchemaClassAttribute','name','doi','STRING',0),('Pathway:doi','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('doi','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Pathway:doi','SchemaClassAttribute','type','db_string_type','STRING',0),('doi','SchemaClassAttribute','type','db_string_type','STRING',0),('Pathway:doi','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('doi','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Pathway:doi','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('doi','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Pathway:doi','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('doi','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Pathway:doi','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Pathway:hasEHLD','SchemaClassAttribute','class','Pathway','SchemaClass',0),('Pathway:hasEHLD','SchemaClassAttribute','name','hasEHLD','STRING',0),('hasEHLD','SchemaClassAttribute','name','hasEHLD','STRING',0),('Pathway:hasEHLD','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('hasEHLD','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Pathway:hasEHLD','SchemaClassAttribute','type','db_enum_type','STRING',0),('hasEHLD','SchemaClassAttribute','type','db_enum_type','STRING',0),('Pathway:hasEHLD','SchemaClassAttribute','default','FALSE','SYMBOL',0),('hasEHLD','SchemaClassAttribute','default','FALSE','SYMBOL',0),('Pathway:hasEHLD','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('hasEHLD','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Pathway:hasEHLD','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('hasEHLD','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Pathway:hasEHLD','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('hasEHLD','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Pathway:hasEHLD','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Pathway:isCanonical','SchemaClassAttribute','class','Pathway','SchemaClass',0),('Pathway:isCanonical','SchemaClassAttribute','name','isCanonical','STRING',0),('isCanonical','SchemaClassAttribute','name','isCanonical','STRING',0),('Pathway:isCanonical','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('isCanonical','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Pathway:isCanonical','SchemaClassAttribute','type','db_enum_type','STRING',0),('isCanonical','SchemaClassAttribute','type','db_enum_type','STRING',0),('Pathway:isCanonical','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('isCanonical','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Pathway:isCanonical','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('isCanonical','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Pathway:isCanonical','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('isCanonical','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Pathway:isCanonical','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Pathway:normalPathway','SchemaClassAttribute','class','Pathway','SchemaClass',0),('Pathway:normalPathway','SchemaClassAttribute','name','normalPathway','STRING',0),('normalPathway','SchemaClassAttribute','name','normalPathway','STRING',0),('Pathway:normalPathway','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('normalPathway','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Pathway:normalPathway','SchemaClassAttribute','type','db_instance_type','STRING',0),('normalPathway','SchemaClassAttribute','type','db_instance_type','STRING',0),('Pathway:normalPathway','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('normalPathway','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Pathway:normalPathway','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('normalPathway','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Pathway:normalPathway','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('normalPathway','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Pathway:normalPathway','SchemaClassAttribute','allowed_classes','Pathway','SchemaClass',0),('normalPathway','SchemaClassAttribute','allowed_classes','Pathway','SchemaClass',0),('Pathway:normalPathway','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Pathway:lastUpdatedDate','SchemaClassAttribute','class','Pathway','SchemaClass',0),('Pathway:lastUpdatedDate','SchemaClassAttribute','name','lastUpdatedDate','STRING',0),('lastUpdatedDate','SchemaClassAttribute','name','lastUpdatedDate','STRING',0),('Pathway:lastUpdatedDate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('lastUpdatedDate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Pathway:lastUpdatedDate','SchemaClassAttribute','type','db_string_type','STRING',0),('lastUpdatedDate','SchemaClassAttribute','type','db_string_type','STRING',0),('Pathway:lastUpdatedDate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('lastUpdatedDate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Pathway:lastUpdatedDate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('lastUpdatedDate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Pathway:lastUpdatedDate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('lastUpdatedDate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Pathway:lastUpdatedDate','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Pathway:authored','SchemaClassAttribute','class','Pathway','SchemaClass',0),('Pathway:authored','SchemaClassAttribute','name','authored','STRING',0),('Pathway:authored','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Pathway:authored','SchemaClassAttribute','type','db_instance_type','STRING',0),('Pathway:authored','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Pathway:authored','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Pathway:authored','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Pathway:authored','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Pathway:authored','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Pathway:compartment','SchemaClassAttribute','class','Pathway','SchemaClass',0),('Pathway:compartment','SchemaClassAttribute','name','compartment','STRING',0),('Pathway:compartment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Pathway:compartment','SchemaClassAttribute','type','db_instance_type','STRING',0),('Pathway:compartment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Pathway:compartment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Pathway:compartment','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Pathway:compartment','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('Pathway:compartment','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Pathway:edited','SchemaClassAttribute','class','Pathway','SchemaClass',0),('Pathway:edited','SchemaClassAttribute','name','edited','STRING',0),('Pathway:edited','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Pathway:edited','SchemaClassAttribute','type','db_instance_type','STRING',0),('Pathway:edited','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Pathway:edited','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Pathway:edited','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Pathway:edited','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Pathway:edited','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Pathway:goBiologicalProcess','SchemaClassAttribute','class','Pathway','SchemaClass',0),('Pathway:goBiologicalProcess','SchemaClassAttribute','name','goBiologicalProcess','STRING',0),('Pathway:goBiologicalProcess','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Pathway:goBiologicalProcess','SchemaClassAttribute','type','db_instance_type','STRING',0),('Pathway:goBiologicalProcess','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Pathway:goBiologicalProcess','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Pathway:goBiologicalProcess','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Pathway:goBiologicalProcess','SchemaClassAttribute','allowed_classes','GO_BiologicalProcess','SchemaClass',0),('Pathway:goBiologicalProcess','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Pathway:hasEvent','SchemaClassAttribute','class','Pathway','SchemaClass',0),('Pathway:hasEvent','SchemaClassAttribute','name','hasEvent','STRING',0),('Pathway:hasEvent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Pathway:hasEvent','SchemaClassAttribute','type','db_instance_type','STRING',0),('Pathway:hasEvent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Pathway:hasEvent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Pathway:hasEvent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Pathway:hasEvent','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('Pathway:hasEvent','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Pathway:hasEvent','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('PathwayDiagram','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('PathwayDiagram','SchemaClass','abstract',NULL,'SYMBOL',0),('PathwayDiagram','SchemaClass','name','PathwayDiagram','STRING',0),('PathwayDiagram:width','SchemaClassAttribute','class','PathwayDiagram','SchemaClass',0),('PathwayDiagram:width','SchemaClassAttribute','name','width','STRING',0),('width','SchemaClassAttribute','name','width','STRING',0),('PathwayDiagram:width','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('width','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PathwayDiagram:width','SchemaClassAttribute','type','db_integer_type','STRING',0),('width','SchemaClassAttribute','type','db_integer_type','STRING',0),('PathwayDiagram:width','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('width','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PathwayDiagram:width','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('width','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PathwayDiagram:width','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('width','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('PathwayDiagram:width','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('PathwayDiagram:height','SchemaClassAttribute','class','PathwayDiagram','SchemaClass',0),('PathwayDiagram:height','SchemaClassAttribute','name','height','STRING',0),('height','SchemaClassAttribute','name','height','STRING',0),('PathwayDiagram:height','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('height','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PathwayDiagram:height','SchemaClassAttribute','type','db_integer_type','STRING',0),('height','SchemaClassAttribute','type','db_integer_type','STRING',0),('PathwayDiagram:height','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('height','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PathwayDiagram:height','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('height','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PathwayDiagram:height','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('height','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('PathwayDiagram:height','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('PathwayDiagram:storedATXML','SchemaClassAttribute','class','PathwayDiagram','SchemaClass',0),('PathwayDiagram:storedATXML','SchemaClassAttribute','name','storedATXML','STRING',0),('storedATXML','SchemaClassAttribute','name','storedATXML','STRING',0),('PathwayDiagram:storedATXML','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('storedATXML','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PathwayDiagram:storedATXML','SchemaClassAttribute','type','db_string_type','STRING',0),('storedATXML','SchemaClassAttribute','type','db_string_type','STRING',0),('PathwayDiagram:storedATXML','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('storedATXML','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PathwayDiagram:storedATXML','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('storedATXML','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PathwayDiagram:storedATXML','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('storedATXML','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('PathwayDiagram:storedATXML','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('PathwayDiagram:representedPathway','SchemaClassAttribute','class','PathwayDiagram','SchemaClass',0),('PathwayDiagram:representedPathway','SchemaClassAttribute','name','representedPathway','STRING',0),('representedPathway','SchemaClassAttribute','name','representedPathway','STRING',0),('PathwayDiagram:representedPathway','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('representedPathway','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PathwayDiagram:representedPathway','SchemaClassAttribute','type','db_instance_type','STRING',0),('representedPathway','SchemaClassAttribute','type','db_instance_type','STRING',0),('PathwayDiagram:representedPathway','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('representedPathway','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PathwayDiagram:representedPathway','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('representedPathway','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PathwayDiagram:representedPathway','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('representedPathway','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PathwayDiagram:representedPathway','SchemaClassAttribute','allowed_classes','Pathway','SchemaClass',0),('representedPathway','SchemaClassAttribute','allowed_classes','Pathway','SchemaClass',0),('PathwayDiagram:representedPathway','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('PathwayDiagram:representedPathway','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Person','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('Person','SchemaClass','abstract',NULL,'SYMBOL',0),('Person','SchemaClass','name','Person','STRING',0),('Person:firstname','SchemaClassAttribute','class','Person','SchemaClass',0),('Person:firstname','SchemaClassAttribute','name','firstname','STRING',0),('firstname','SchemaClassAttribute','name','firstname','STRING',0),('Person:firstname','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('firstname','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Person:firstname','SchemaClassAttribute','type','db_string_type','STRING',0),('firstname','SchemaClassAttribute','type','db_string_type','STRING',0),('Person:firstname','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('firstname','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Person:firstname','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('firstname','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Person:firstname','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('firstname','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Person:firstname','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Person:firstname','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Person:initial','SchemaClassAttribute','class','Person','SchemaClass',0),('Person:initial','SchemaClassAttribute','name','initial','STRING',0),('initial','SchemaClassAttribute','name','initial','STRING',0),('Person:initial','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('initial','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Person:initial','SchemaClassAttribute','type','db_string_type','STRING',0),('initial','SchemaClassAttribute','type','db_string_type','STRING',0),('Person:initial','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('initial','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Person:initial','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('initial','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Person:initial','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('initial','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Person:initial','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Person:initial','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Person:project','SchemaClassAttribute','class','Person','SchemaClass',0),('Person:project','SchemaClassAttribute','name','project','STRING',0),('project','SchemaClassAttribute','name','project','STRING',0),('Person:project','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('project','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Person:project','SchemaClassAttribute','type','db_string_type','STRING',0),('project','SchemaClassAttribute','type','db_string_type','STRING',0),('Person:project','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('project','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Person:project','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('project','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Person:project','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('project','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Person:project','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Person:project','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Person:surname','SchemaClassAttribute','class','Person','SchemaClass',0),('Person:surname','SchemaClassAttribute','name','surname','STRING',0),('surname','SchemaClassAttribute','name','surname','STRING',0),('Person:surname','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('surname','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Person:surname','SchemaClassAttribute','type','db_string_type','STRING',0),('surname','SchemaClassAttribute','type','db_string_type','STRING',0),('Person:surname','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('surname','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Person:surname','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('surname','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Person:surname','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('surname','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Person:surname','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Person:surname','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Person:url','SchemaClassAttribute','class','Person','SchemaClass',0),('Person:url','SchemaClassAttribute','name','url','STRING',0),('Person:url','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Person:url','SchemaClassAttribute','type','db_string_type','STRING',0),('Person:url','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Person:url','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Person:url','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Person:url','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Person:affiliation','SchemaClassAttribute','class','Person','SchemaClass',0),('Person:affiliation','SchemaClassAttribute','name','affiliation','STRING',0),('affiliation','SchemaClassAttribute','name','affiliation','STRING',0),('Person:affiliation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('affiliation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Person:affiliation','SchemaClassAttribute','type','db_instance_type','STRING',0),('affiliation','SchemaClassAttribute','type','db_instance_type','STRING',0),('Person:affiliation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('affiliation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Person:affiliation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('affiliation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Person:affiliation','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('affiliation','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Person:affiliation','SchemaClassAttribute','allowed_classes','Affiliation','SchemaClass',0),('affiliation','SchemaClassAttribute','allowed_classes','Affiliation','SchemaClass',0),('Person:affiliation','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Person:crossReference','SchemaClassAttribute','class','Person','SchemaClass',0),('Person:crossReference','SchemaClassAttribute','name','crossReference','STRING',0),('Person:crossReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Person:crossReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('Person:crossReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Person:crossReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Person:crossReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Person:crossReference','SchemaClassAttribute','allowed_classes','DatabaseIdentifier','SchemaClass',0),('Person:crossReference','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Person:figure','SchemaClassAttribute','class','Person','SchemaClass',0),('Person:figure','SchemaClassAttribute','name','figure','STRING',0),('Person:figure','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Person:figure','SchemaClassAttribute','type','db_instance_type','STRING',0),('Person:figure','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Person:figure','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Person:figure','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Person:figure','SchemaClassAttribute','allowed_classes','Figure','SchemaClass',0),('Person:figure','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('PhysicalEntity','SchemaClass','abstract','TRUE','SYMBOL',0),('PhysicalEntity','SchemaClass','name','PhysicalEntity','STRING',0),('PhysicalEntity:systematicName','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:systematicName','SchemaClassAttribute','name','systematicName','STRING',0),('systematicName','SchemaClassAttribute','name','systematicName','STRING',0),('PhysicalEntity:systematicName','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('systematicName','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:systematicName','SchemaClassAttribute','type','db_string_type','STRING',0),('systematicName','SchemaClassAttribute','type','db_string_type','STRING',0),('PhysicalEntity:systematicName','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('systematicName','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:systematicName','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('systematicName','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:systematicName','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('systematicName','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('PhysicalEntity:systematicName','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:goCellularComponent','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:goCellularComponent','SchemaClassAttribute','name','goCellularComponent','STRING',0),('goCellularComponent','SchemaClassAttribute','name','goCellularComponent','STRING',0),('PhysicalEntity:goCellularComponent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('goCellularComponent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:goCellularComponent','SchemaClassAttribute','type','db_instance_type','STRING',0),('goCellularComponent','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:goCellularComponent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('goCellularComponent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:goCellularComponent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('goCellularComponent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:goCellularComponent','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('goCellularComponent','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('PhysicalEntity:goCellularComponent','SchemaClassAttribute','allowed_classes','GO_CellularComponent','SchemaClass',0),('goCellularComponent','SchemaClassAttribute','allowed_classes','GO_CellularComponent','SchemaClass',0),('PhysicalEntity:goCellularComponent','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:inferredTo','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:inferredTo','SchemaClassAttribute','name','inferredTo','STRING',0),('inferredTo','SchemaClassAttribute','name','inferredTo','STRING',0),('PhysicalEntity:inferredTo','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('inferredTo','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:inferredTo','SchemaClassAttribute','type','db_instance_type','STRING',0),('inferredTo','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:inferredTo','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('inferredTo','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:inferredTo','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('inferredTo','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:inferredTo','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('inferredTo','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:inferredTo','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('inferredTo','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('PhysicalEntity:inferredTo','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:inferredFrom','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:inferredFrom','SchemaClassAttribute','name','inferredFrom','STRING',0),('PhysicalEntity:inferredFrom','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:inferredFrom','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:inferredFrom','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:inferredFrom','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:inferredFrom','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:inferredFrom','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('PhysicalEntity:inferredFrom','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:reviewed','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:reviewed','SchemaClassAttribute','name','reviewed','STRING',0),('PhysicalEntity:reviewed','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:reviewed','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:reviewed','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:reviewed','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:reviewed','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:reviewed','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('PhysicalEntity:reviewed','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:authored','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:authored','SchemaClassAttribute','name','authored','STRING',0),('PhysicalEntity:authored','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:authored','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:authored','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:authored','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:authored','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('PhysicalEntity:authored','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('PhysicalEntity:authored','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:cellType','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:cellType','SchemaClassAttribute','name','cellType','STRING',0),('PhysicalEntity:cellType','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:cellType','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:cellType','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:cellType','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:cellType','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:cellType','SchemaClassAttribute','allowed_classes','CellType','SchemaClass',0),('PhysicalEntity:cellType','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:cellType','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('PhysicalEntity:crossReference','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:crossReference','SchemaClassAttribute','name','crossReference','STRING',0),('PhysicalEntity:crossReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:crossReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:crossReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:crossReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:crossReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:crossReference','SchemaClassAttribute','allowed_classes','DatabaseIdentifier','SchemaClass',0),('PhysicalEntity:crossReference','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:definition','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:definition','SchemaClassAttribute','name','definition','STRING',0),('PhysicalEntity:definition','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:definition','SchemaClassAttribute','type','db_string_type','STRING',0),('PhysicalEntity:definition','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:definition','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:definition','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('PhysicalEntity:definition','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:edited','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:edited','SchemaClassAttribute','name','edited','STRING',0),('PhysicalEntity:edited','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:edited','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:edited','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:edited','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:edited','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:edited','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('PhysicalEntity:edited','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:figure','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:figure','SchemaClassAttribute','name','figure','STRING',0),('PhysicalEntity:figure','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:figure','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:figure','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:figure','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:figure','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:figure','SchemaClassAttribute','allowed_classes','Figure','SchemaClass',0),('PhysicalEntity:figure','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:literatureReference','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:literatureReference','SchemaClassAttribute','name','literatureReference','STRING',0),('PhysicalEntity:literatureReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:literatureReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:literatureReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:literatureReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:literatureReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:literatureReference','SchemaClassAttribute','allowed_classes','Publication','SchemaClass',0),('PhysicalEntity:literatureReference','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:name','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:name','SchemaClassAttribute','name','name','STRING',0),('PhysicalEntity:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:name','SchemaClassAttribute','type','db_string_type','STRING',0),('PhysicalEntity:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('PhysicalEntity:revised','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:revised','SchemaClassAttribute','name','revised','STRING',0),('PhysicalEntity:revised','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:revised','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:revised','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:revised','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:revised','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:revised','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('PhysicalEntity:revised','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:summation','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:summation','SchemaClassAttribute','name','summation','STRING',0),('PhysicalEntity:summation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:summation','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:summation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:summation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:summation','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:summation','SchemaClassAttribute','allowed_classes','Summation','SchemaClass',0),('PhysicalEntity:summation','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:disease','SchemaClassAttribute','class','PhysicalEntity','SchemaClass',0),('PhysicalEntity:disease','SchemaClassAttribute','name','disease','STRING',0),('PhysicalEntity:disease','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PhysicalEntity:disease','SchemaClassAttribute','type','db_instance_type','STRING',0),('PhysicalEntity:disease','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PhysicalEntity:disease','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PhysicalEntity:disease','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PhysicalEntity:disease','SchemaClassAttribute','allowed_classes','Disease','SchemaClass',0),('PhysicalEntity:disease','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PhysicalEntity:disease','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('Polymer','SchemaClass','super_classes','PhysicalEntity','SchemaClass',0),('Polymer','SchemaClass','abstract',NULL,'SYMBOL',0),('Polymer','SchemaClass','name','Polymer','STRING',0),('Polymer:maxUnitCount','SchemaClassAttribute','class','Polymer','SchemaClass',0),('Polymer:maxUnitCount','SchemaClassAttribute','name','maxUnitCount','STRING',0),('maxUnitCount','SchemaClassAttribute','name','maxUnitCount','STRING',0),('Polymer:maxUnitCount','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('maxUnitCount','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymer:maxUnitCount','SchemaClassAttribute','type','db_integer_type','STRING',0),('maxUnitCount','SchemaClassAttribute','type','db_integer_type','STRING',0),('Polymer:maxUnitCount','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('maxUnitCount','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymer:maxUnitCount','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('maxUnitCount','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymer:maxUnitCount','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('maxUnitCount','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Polymer:maxUnitCount','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Polymer:minUnitCount','SchemaClassAttribute','class','Polymer','SchemaClass',0),('Polymer:minUnitCount','SchemaClassAttribute','name','minUnitCount','STRING',0),('minUnitCount','SchemaClassAttribute','name','minUnitCount','STRING',0),('Polymer:minUnitCount','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('minUnitCount','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymer:minUnitCount','SchemaClassAttribute','type','db_integer_type','STRING',0),('minUnitCount','SchemaClassAttribute','type','db_integer_type','STRING',0),('Polymer:minUnitCount','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('minUnitCount','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymer:minUnitCount','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('minUnitCount','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymer:minUnitCount','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('minUnitCount','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Polymer:minUnitCount','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Polymer:repeatedUnit','SchemaClassAttribute','class','Polymer','SchemaClass',0),('Polymer:repeatedUnit','SchemaClassAttribute','name','repeatedUnit','STRING',0),('repeatedUnit','SchemaClassAttribute','name','repeatedUnit','STRING',0),('Polymer:repeatedUnit','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('repeatedUnit','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymer:repeatedUnit','SchemaClassAttribute','type','db_instance_type','STRING',0),('repeatedUnit','SchemaClassAttribute','type','db_instance_type','STRING',0),('Polymer:repeatedUnit','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('repeatedUnit','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymer:repeatedUnit','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('repeatedUnit','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymer:repeatedUnit','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('repeatedUnit','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Polymer:repeatedUnit','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('repeatedUnit','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('Polymer:repeatedUnit','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Polymer:repeatedUnit','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Polymer:compartment','SchemaClassAttribute','class','Polymer','SchemaClass',0),('Polymer:compartment','SchemaClassAttribute','name','compartment','STRING',0),('Polymer:compartment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymer:compartment','SchemaClassAttribute','type','db_instance_type','STRING',0),('Polymer:compartment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymer:compartment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymer:compartment','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Polymer:compartment','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('Polymer:compartment','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Polymer:species','SchemaClassAttribute','class','Polymer','SchemaClass',0),('Polymer:species','SchemaClassAttribute','name','species','STRING',0),('Polymer:species','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymer:species','SchemaClassAttribute','type','db_instance_type','STRING',0),('Polymer:species','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymer:species','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymer:species','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Polymer:species','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('Polymer:species','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Polymerisation','SchemaClass','super_classes','ReactionlikeEvent','SchemaClass',0),('Polymerisation','SchemaClass','abstract',NULL,'SYMBOL',0),('Polymerisation','SchemaClass','name','Polymerisation','STRING',0),('Polymerisation:catalystActivity','SchemaClassAttribute','class','Polymerisation','SchemaClass',0),('Polymerisation:catalystActivity','SchemaClassAttribute','name','catalystActivity','STRING',0),('Polymerisation:catalystActivity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymerisation:catalystActivity','SchemaClassAttribute','type','db_instance_type','STRING',0),('Polymerisation:catalystActivity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymerisation:catalystActivity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymerisation:catalystActivity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Polymerisation:catalystActivity','SchemaClassAttribute','allowed_classes','CatalystActivity','SchemaClass',0),('Polymerisation:catalystActivity','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Polymerisation:catalystActivity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Polymerisation:authored','SchemaClassAttribute','class','Polymerisation','SchemaClass',0),('Polymerisation:authored','SchemaClassAttribute','name','authored','STRING',0),('Polymerisation:authored','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymerisation:authored','SchemaClassAttribute','type','db_instance_type','STRING',0),('Polymerisation:authored','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymerisation:authored','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymerisation:authored','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Polymerisation:authored','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Polymerisation:authored','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Polymerisation:edited','SchemaClassAttribute','class','Polymerisation','SchemaClass',0),('Polymerisation:edited','SchemaClassAttribute','name','edited','STRING',0),('Polymerisation:edited','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymerisation:edited','SchemaClassAttribute','type','db_instance_type','STRING',0),('Polymerisation:edited','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymerisation:edited','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymerisation:edited','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Polymerisation:edited','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Polymerisation:edited','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Polymerisation:goBiologicalProcess','SchemaClassAttribute','class','Polymerisation','SchemaClass',0),('Polymerisation:goBiologicalProcess','SchemaClassAttribute','name','goBiologicalProcess','STRING',0),('Polymerisation:goBiologicalProcess','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymerisation:goBiologicalProcess','SchemaClassAttribute','type','db_instance_type','STRING',0),('Polymerisation:goBiologicalProcess','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymerisation:goBiologicalProcess','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymerisation:goBiologicalProcess','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Polymerisation:goBiologicalProcess','SchemaClassAttribute','allowed_classes','GO_BiologicalProcess','SchemaClass',0),('Polymerisation:goBiologicalProcess','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Polymerisation:literatureReference','SchemaClassAttribute','class','Polymerisation','SchemaClass',0),('Polymerisation:literatureReference','SchemaClassAttribute','name','literatureReference','STRING',0),('Polymerisation:literatureReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymerisation:literatureReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('Polymerisation:literatureReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymerisation:literatureReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymerisation:literatureReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Polymerisation:literatureReference','SchemaClassAttribute','allowed_classes','Publication','SchemaClass',0),('Polymerisation:literatureReference','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Polymerisation:releaseDate','SchemaClassAttribute','class','Polymerisation','SchemaClass',0),('Polymerisation:releaseDate','SchemaClassAttribute','name','releaseDate','STRING',0),('Polymerisation:releaseDate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymerisation:releaseDate','SchemaClassAttribute','type','db_string_type','STRING',0),('Polymerisation:releaseDate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymerisation:releaseDate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymerisation:releaseDate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Polymerisation:releaseDate','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Polymerisation:requiredInputComponent','SchemaClassAttribute','class','Polymerisation','SchemaClass',0),('Polymerisation:requiredInputComponent','SchemaClassAttribute','name','requiredInputComponent','STRING',0),('Polymerisation:requiredInputComponent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Polymerisation:requiredInputComponent','SchemaClassAttribute','type','db_instance_type','STRING',0),('Polymerisation:requiredInputComponent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Polymerisation:requiredInputComponent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Polymerisation:requiredInputComponent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Polymerisation:requiredInputComponent','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('Polymerisation:requiredInputComponent','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PositiveGeneExpressionRegulation','SchemaClass','super_classes','PositiveRegulation','SchemaClass',0),('PositiveGeneExpressionRegulation','SchemaClass','abstract',NULL,'SYMBOL',0),('PositiveGeneExpressionRegulation','SchemaClass','name','PositiveGeneExpressionRegulation','STRING',0),('PositiveRegulation','SchemaClass','super_classes','Regulation','SchemaClass',0),('PositiveRegulation','SchemaClass','abstract',NULL,'SYMBOL',0),('PositiveRegulation','SchemaClass','name','PositiveRegulation','STRING',0),('PositiveRegulation:regulator','SchemaClassAttribute','class','PositiveRegulation','SchemaClass',0),('PositiveRegulation:regulator','SchemaClassAttribute','name','regulator','STRING',0),('PositiveRegulation:regulator','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PositiveRegulation:regulator','SchemaClassAttribute','type','db_instance_type','STRING',0),('PositiveRegulation:regulator','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PositiveRegulation:regulator','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PositiveRegulation:regulator','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('PositiveRegulation:regulator','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('PositiveRegulation:regulator','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('PositiveRegulation:regulator','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('ProteinDrug','SchemaClass','super_classes','Drug','SchemaClass',0),('ProteinDrug','SchemaClass','abstract',NULL,'SYMBOL',0),('ProteinDrug','SchemaClass','name','ProteinDrug','STRING',0),('PsiMod','SchemaClass','super_classes','ExternalOntology','SchemaClass',0),('PsiMod','SchemaClass','abstract',NULL,'SYMBOL',0),('PsiMod','SchemaClass','name','PsiMod','STRING',0),('PsiMod:label','SchemaClassAttribute','class','PsiMod','SchemaClass',0),('PsiMod:label','SchemaClassAttribute','name','label','STRING',0),('label','SchemaClassAttribute','name','label','STRING',0),('PsiMod:label','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('label','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PsiMod:label','SchemaClassAttribute','type','db_string_type','STRING',0),('label','SchemaClassAttribute','type','db_string_type','STRING',0),('PsiMod:label','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('label','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PsiMod:label','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('label','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PsiMod:label','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('label','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('PsiMod:label','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('PsiMod:instanceOf','SchemaClassAttribute','class','PsiMod','SchemaClass',0),('PsiMod:instanceOf','SchemaClassAttribute','name','instanceOf','STRING',0),('PsiMod:instanceOf','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PsiMod:instanceOf','SchemaClassAttribute','type','db_instance_type','STRING',0),('PsiMod:instanceOf','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PsiMod:instanceOf','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PsiMod:instanceOf','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('PsiMod:instanceOf','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('PsiMod:instanceOf','SchemaClassAttribute','allowed_classes','PsiMod','SchemaClass',0),('PsiMod:name','SchemaClassAttribute','class','PsiMod','SchemaClass',0),('PsiMod:name','SchemaClassAttribute','name','name','STRING',0),('PsiMod:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('PsiMod:name','SchemaClassAttribute','type','db_string_type','STRING',0),('PsiMod:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('PsiMod:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('PsiMod:name','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('PsiMod:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Publication','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('Publication','SchemaClass','abstract','TRUE','SYMBOL',0),('Publication','SchemaClass','name','Publication','STRING',0),('Publication:title','SchemaClassAttribute','class','Publication','SchemaClass',0),('Publication:title','SchemaClassAttribute','name','title','STRING',0),('title','SchemaClassAttribute','name','title','STRING',0),('Publication:title','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('title','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Publication:title','SchemaClassAttribute','type','db_string_type','STRING',0),('title','SchemaClassAttribute','type','db_string_type','STRING',0),('Publication:title','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('title','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Publication:title','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('title','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Publication:title','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('title','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Publication:title','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Publication:author','SchemaClassAttribute','class','Publication','SchemaClass',0),('Publication:author','SchemaClassAttribute','name','author','STRING',0),('Publication:author','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Publication:author','SchemaClassAttribute','type','db_instance_type','STRING',0),('Publication:author','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Publication:author','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Publication:author','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Publication:author','SchemaClassAttribute','allowed_classes','Person','SchemaClass',0),('Publication:author','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Reaction','SchemaClass','super_classes','ReactionlikeEvent','SchemaClass',0),('Reaction','SchemaClass','abstract',NULL,'SYMBOL',0),('Reaction','SchemaClass','name','Reaction','STRING',0),('Reaction:reverseReaction','SchemaClassAttribute','class','Reaction','SchemaClass',0),('Reaction:reverseReaction','SchemaClassAttribute','name','reverseReaction','STRING',0),('reverseReaction','SchemaClassAttribute','name','reverseReaction','STRING',0),('Reaction:reverseReaction','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('reverseReaction','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Reaction:reverseReaction','SchemaClassAttribute','type','db_instance_type','STRING',0),('reverseReaction','SchemaClassAttribute','type','db_instance_type','STRING',0),('Reaction:reverseReaction','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('reverseReaction','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Reaction:reverseReaction','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('reverseReaction','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Reaction:reverseReaction','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('reverseReaction','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Reaction:reverseReaction','SchemaClassAttribute','allowed_classes','Reaction','SchemaClass',0),('reverseReaction','SchemaClassAttribute','allowed_classes','Reaction','SchemaClass',0),('Reaction:reverseReaction','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('reverseReaction','SchemaClassAttribute','inverse_slots','reverseReaction','SchemaClassAttribute',0),('Reaction:catalystActivity','SchemaClassAttribute','class','Reaction','SchemaClass',0),('Reaction:catalystActivity','SchemaClassAttribute','name','catalystActivity','STRING',0),('Reaction:catalystActivity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Reaction:catalystActivity','SchemaClassAttribute','type','db_instance_type','STRING',0),('Reaction:catalystActivity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Reaction:catalystActivity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Reaction:catalystActivity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Reaction:catalystActivity','SchemaClassAttribute','allowed_classes','CatalystActivity','SchemaClass',0),('Reaction:catalystActivity','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Reaction:catalystActivity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Reaction:authored','SchemaClassAttribute','class','Reaction','SchemaClass',0),('Reaction:authored','SchemaClassAttribute','name','authored','STRING',0),('Reaction:authored','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Reaction:authored','SchemaClassAttribute','type','db_instance_type','STRING',0),('Reaction:authored','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Reaction:authored','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Reaction:authored','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Reaction:authored','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Reaction:authored','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Reaction:edited','SchemaClassAttribute','class','Reaction','SchemaClass',0),('Reaction:edited','SchemaClassAttribute','name','edited','STRING',0),('Reaction:edited','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Reaction:edited','SchemaClassAttribute','type','db_instance_type','STRING',0),('Reaction:edited','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Reaction:edited','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Reaction:edited','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Reaction:edited','SchemaClassAttribute','allowed_classes','InstanceEdit','SchemaClass',0),('Reaction:edited','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Reaction:goBiologicalProcess','SchemaClassAttribute','class','Reaction','SchemaClass',0),('Reaction:goBiologicalProcess','SchemaClassAttribute','name','goBiologicalProcess','STRING',0),('Reaction:goBiologicalProcess','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Reaction:goBiologicalProcess','SchemaClassAttribute','type','db_instance_type','STRING',0),('Reaction:goBiologicalProcess','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Reaction:goBiologicalProcess','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Reaction:goBiologicalProcess','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Reaction:goBiologicalProcess','SchemaClassAttribute','allowed_classes','GO_BiologicalProcess','SchemaClass',0),('Reaction:goBiologicalProcess','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Reaction:literatureReference','SchemaClassAttribute','class','Reaction','SchemaClass',0),('Reaction:literatureReference','SchemaClassAttribute','name','literatureReference','STRING',0),('Reaction:literatureReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Reaction:literatureReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('Reaction:literatureReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Reaction:literatureReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Reaction:literatureReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Reaction:literatureReference','SchemaClassAttribute','allowed_classes','Publication','SchemaClass',0),('Reaction:literatureReference','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Reaction:input','SchemaClassAttribute','class','Reaction','SchemaClass',0),('Reaction:input','SchemaClassAttribute','name','input','STRING',0),('Reaction:input','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Reaction:input','SchemaClassAttribute','type','db_instance_type','STRING',0),('Reaction:input','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Reaction:input','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Reaction:input','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Reaction:input','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('Reaction:input','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Reaction:input','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Reaction:output','SchemaClassAttribute','class','Reaction','SchemaClass',0),('Reaction:output','SchemaClassAttribute','name','output','STRING',0),('Reaction:output','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Reaction:output','SchemaClassAttribute','type','db_instance_type','STRING',0),('Reaction:output','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Reaction:output','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Reaction:output','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Reaction:output','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('Reaction:output','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Reaction:output','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Reaction:releaseDate','SchemaClassAttribute','class','Reaction','SchemaClass',0),('Reaction:releaseDate','SchemaClassAttribute','name','releaseDate','STRING',0),('Reaction:releaseDate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Reaction:releaseDate','SchemaClassAttribute','type','db_string_type','STRING',0),('Reaction:releaseDate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Reaction:releaseDate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Reaction:releaseDate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Reaction:releaseDate','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Reaction:requiredInputComponent','SchemaClassAttribute','class','Reaction','SchemaClass',0),('Reaction:requiredInputComponent','SchemaClassAttribute','name','requiredInputComponent','STRING',0),('Reaction:requiredInputComponent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Reaction:requiredInputComponent','SchemaClassAttribute','type','db_instance_type','STRING',0),('Reaction:requiredInputComponent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Reaction:requiredInputComponent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Reaction:requiredInputComponent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Reaction:requiredInputComponent','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('Reaction:requiredInputComponent','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReactionlikeEvent','SchemaClass','super_classes','Event','SchemaClass',0),('ReactionlikeEvent','SchemaClass','abstract','TRUE','SYMBOL',0),('ReactionlikeEvent','SchemaClass','name','ReactionlikeEvent','STRING',0),('ReactionlikeEvent:systematicName','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:systematicName','SchemaClassAttribute','name','systematicName','STRING',0),('ReactionlikeEvent:systematicName','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:systematicName','SchemaClassAttribute','type','db_string_type','STRING',0),('ReactionlikeEvent:systematicName','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:systematicName','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:systematicName','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReactionlikeEvent:systematicName','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReactionlikeEvent:catalystActivityReference','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:catalystActivityReference','SchemaClassAttribute','name','catalystActivityReference','STRING',0),('catalystActivityReference','SchemaClassAttribute','name','catalystActivityReference','STRING',0),('ReactionlikeEvent:catalystActivityReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('catalystActivityReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:catalystActivityReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('catalystActivityReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:catalystActivityReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('catalystActivityReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:catalystActivityReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('catalystActivityReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:catalystActivityReference','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('catalystActivityReference','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReactionlikeEvent:catalystActivityReference','SchemaClassAttribute','allowed_classes','CatalystActivityReference','SchemaClass',0),('catalystActivityReference','SchemaClassAttribute','allowed_classes','CatalystActivityReference','SchemaClass',0),('ReactionlikeEvent:catalystActivityReference','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReactionlikeEvent:entityFunctionalStatus','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:entityFunctionalStatus','SchemaClassAttribute','name','entityFunctionalStatus','STRING',0),('entityFunctionalStatus','SchemaClassAttribute','name','entityFunctionalStatus','STRING',0),('ReactionlikeEvent:entityFunctionalStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('entityFunctionalStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:entityFunctionalStatus','SchemaClassAttribute','type','db_instance_type','STRING',0),('entityFunctionalStatus','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:entityFunctionalStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('entityFunctionalStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:entityFunctionalStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('entityFunctionalStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:entityFunctionalStatus','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('entityFunctionalStatus','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReactionlikeEvent:entityFunctionalStatus','SchemaClassAttribute','allowed_classes','EntityFunctionalStatus','SchemaClass',0),('entityFunctionalStatus','SchemaClassAttribute','allowed_classes','EntityFunctionalStatus','SchemaClass',0),('ReactionlikeEvent:entityFunctionalStatus','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReactionlikeEvent:entityFunctionalStatus','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('ReactionlikeEvent:regulatedBy','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:regulatedBy','SchemaClassAttribute','name','regulatedBy','STRING',0),('regulatedBy','SchemaClassAttribute','name','regulatedBy','STRING',0),('ReactionlikeEvent:regulatedBy','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('regulatedBy','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:regulatedBy','SchemaClassAttribute','type','db_instance_type','STRING',0),('regulatedBy','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:regulatedBy','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('regulatedBy','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:regulatedBy','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('regulatedBy','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:regulatedBy','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('regulatedBy','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReactionlikeEvent:regulatedBy','SchemaClassAttribute','allowed_classes','Regulation','SchemaClass',0),('regulatedBy','SchemaClassAttribute','allowed_classes','Regulation','SchemaClass',0),('ReactionlikeEvent:regulatedBy','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReactionlikeEvent:regulationReference','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:regulationReference','SchemaClassAttribute','name','regulationReference','STRING',0),('regulationReference','SchemaClassAttribute','name','regulationReference','STRING',0),('ReactionlikeEvent:regulationReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('regulationReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:regulationReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('regulationReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:regulationReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('regulationReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:regulationReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('regulationReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:regulationReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('regulationReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReactionlikeEvent:regulationReference','SchemaClassAttribute','allowed_classes','RegulationReference','SchemaClass',0),('regulationReference','SchemaClassAttribute','allowed_classes','RegulationReference','SchemaClass',0),('ReactionlikeEvent:regulationReference','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReactionlikeEvent:hasInteraction','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:hasInteraction','SchemaClassAttribute','name','hasInteraction','STRING',0),('hasInteraction','SchemaClassAttribute','name','hasInteraction','STRING',0),('ReactionlikeEvent:hasInteraction','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('hasInteraction','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:hasInteraction','SchemaClassAttribute','type','db_instance_type','STRING',0),('hasInteraction','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:hasInteraction','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('hasInteraction','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:hasInteraction','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('hasInteraction','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:hasInteraction','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('hasInteraction','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReactionlikeEvent:hasInteraction','SchemaClassAttribute','allowed_classes','InteractionEvent','SchemaClass',0),('hasInteraction','SchemaClassAttribute','allowed_classes','InteractionEvent','SchemaClass',0),('ReactionlikeEvent:hasInteraction','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReactionlikeEvent:reactionType','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:reactionType','SchemaClassAttribute','name','reactionType','STRING',0),('reactionType','SchemaClassAttribute','name','reactionType','STRING',0),('ReactionlikeEvent:reactionType','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('reactionType','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:reactionType','SchemaClassAttribute','type','db_instance_type','STRING',0),('reactionType','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:reactionType','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('reactionType','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:reactionType','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('reactionType','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:reactionType','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('reactionType','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReactionlikeEvent:reactionType','SchemaClassAttribute','allowed_classes','ReactionType','SchemaClass',0),('reactionType','SchemaClassAttribute','allowed_classes','ReactionType','SchemaClass',0),('ReactionlikeEvent:reactionType','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReactionlikeEvent:catalystActivity','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:catalystActivity','SchemaClassAttribute','name','catalystActivity','STRING',0),('ReactionlikeEvent:catalystActivity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:catalystActivity','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:catalystActivity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:catalystActivity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:catalystActivity','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReactionlikeEvent:catalystActivity','SchemaClassAttribute','allowed_classes','CatalystActivity','SchemaClass',0),('ReactionlikeEvent:catalystActivity','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('ReactionlikeEvent:compartment','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:compartment','SchemaClassAttribute','name','compartment','STRING',0),('ReactionlikeEvent:compartment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:compartment','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:compartment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:compartment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:compartment','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReactionlikeEvent:compartment','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('ReactionlikeEvent:compartment','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ReactionlikeEvent:input','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:input','SchemaClassAttribute','name','input','STRING',0),('ReactionlikeEvent:input','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:input','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:input','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:input','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:input','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReactionlikeEvent:input','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('ReactionlikeEvent:input','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('ReactionlikeEvent:output','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:output','SchemaClassAttribute','name','output','STRING',0),('ReactionlikeEvent:output','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:output','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:output','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:output','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:output','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReactionlikeEvent:output','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('ReactionlikeEvent:output','SchemaClassAttribute','value_defines_instance',NULL,'SYMBOL',0),('ReactionlikeEvent:isChimeric','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:isChimeric','SchemaClassAttribute','name','isChimeric','STRING',0),('ReactionlikeEvent:isChimeric','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:isChimeric','SchemaClassAttribute','type','db_enum_type','STRING',0),('ReactionlikeEvent:isChimeric','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:isChimeric','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:isChimeric','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReactionlikeEvent:isChimeric','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReactionlikeEvent:entityOnOtherCell','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:entityOnOtherCell','SchemaClassAttribute','name','entityOnOtherCell','STRING',0),('ReactionlikeEvent:entityOnOtherCell','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:entityOnOtherCell','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:entityOnOtherCell','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:entityOnOtherCell','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:entityOnOtherCell','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReactionlikeEvent:entityOnOtherCell','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('ReactionlikeEvent:entityOnOtherCell','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReactionlikeEvent:normalReaction','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:normalReaction','SchemaClassAttribute','name','normalReaction','STRING',0),('ReactionlikeEvent:normalReaction','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:normalReaction','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:normalReaction','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:normalReaction','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:normalReaction','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReactionlikeEvent:normalReaction','SchemaClassAttribute','allowed_classes','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:normalReaction','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReactionlikeEvent:requiredInputComponent','SchemaClassAttribute','class','ReactionlikeEvent','SchemaClass',0),('ReactionlikeEvent:requiredInputComponent','SchemaClassAttribute','name','requiredInputComponent','STRING',0),('ReactionlikeEvent:requiredInputComponent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReactionlikeEvent:requiredInputComponent','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReactionlikeEvent:requiredInputComponent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReactionlikeEvent:requiredInputComponent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReactionlikeEvent:requiredInputComponent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReactionlikeEvent:requiredInputComponent','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('ReactionType','SchemaClass','super_classes','ControlledVocabulary','SchemaClass',0),('ReactionType','SchemaClass','abstract',NULL,'SYMBOL',0),('ReactionType','SchemaClass','name','ReactionType','STRING',0),('ReferenceDatabase','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('ReferenceDatabase','SchemaClass','abstract',NULL,'SYMBOL',0),('ReferenceDatabase','SchemaClass','name','ReferenceDatabase','STRING',0),('ReferenceDatabase:accessUrl','SchemaClassAttribute','class','ReferenceDatabase','SchemaClass',0),('ReferenceDatabase:accessUrl','SchemaClassAttribute','name','accessUrl','STRING',0),('accessUrl','SchemaClassAttribute','name','accessUrl','STRING',0),('ReferenceDatabase:accessUrl','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('accessUrl','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceDatabase:accessUrl','SchemaClassAttribute','type','db_string_type','STRING',0),('accessUrl','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceDatabase:accessUrl','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('accessUrl','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceDatabase:accessUrl','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('accessUrl','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceDatabase:accessUrl','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('accessUrl','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceDatabase:accessUrl','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ReferenceDatabase:url','SchemaClassAttribute','class','ReferenceDatabase','SchemaClass',0),('ReferenceDatabase:url','SchemaClassAttribute','name','url','STRING',0),('ReferenceDatabase:url','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceDatabase:url','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceDatabase:url','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceDatabase:url','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceDatabase:url','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceDatabase:url','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ReferenceDatabase:resourceIdentifier','SchemaClassAttribute','class','ReferenceDatabase','SchemaClass',0),('ReferenceDatabase:resourceIdentifier','SchemaClassAttribute','name','resourceIdentifier','STRING',0),('resourceIdentifier','SchemaClassAttribute','name','resourceIdentifier','STRING',0),('ReferenceDatabase:resourceIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('resourceIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceDatabase:resourceIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('resourceIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceDatabase:resourceIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('resourceIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceDatabase:resourceIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('resourceIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceDatabase:resourceIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('resourceIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceDatabase:resourceIdentifier','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceDatabase:name','SchemaClassAttribute','class','ReferenceDatabase','SchemaClass',0),('ReferenceDatabase:name','SchemaClassAttribute','name','name','STRING',0),('ReferenceDatabase:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceDatabase:name','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceDatabase:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceDatabase:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceDatabase:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceDatabase:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ReferenceDatabase:name','SchemaClassAttribute','value_defines_instance','any','SYMBOL',0),('ReferenceDNASequence','SchemaClass','super_classes','ReferenceSequence','SchemaClass',0),('ReferenceDNASequence','SchemaClass','abstract',NULL,'SYMBOL',0),('ReferenceDNASequence','SchemaClass','name','ReferenceDNASequence','STRING',0),('ReferenceEntity','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('ReferenceEntity','SchemaClass','abstract','TRUE','SYMBOL',0),('ReferenceEntity','SchemaClass','name','ReferenceEntity','STRING',0),('ReferenceEntity:crossReference','SchemaClassAttribute','class','ReferenceEntity','SchemaClass',0),('ReferenceEntity:crossReference','SchemaClassAttribute','name','crossReference','STRING',0),('ReferenceEntity:crossReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceEntity:crossReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReferenceEntity:crossReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceEntity:crossReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceEntity:crossReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceEntity:crossReference','SchemaClassAttribute','allowed_classes','DatabaseIdentifier','SchemaClass',0),('ReferenceEntity:crossReference','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceEntity:identifier','SchemaClassAttribute','class','ReferenceEntity','SchemaClass',0),('ReferenceEntity:identifier','SchemaClassAttribute','name','identifier','STRING',0),('ReferenceEntity:identifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceEntity:identifier','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceEntity:identifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceEntity:identifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceEntity:identifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceEntity:name','SchemaClassAttribute','class','ReferenceEntity','SchemaClass',0),('ReferenceEntity:name','SchemaClassAttribute','name','name','STRING',0),('ReferenceEntity:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceEntity:name','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceEntity:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceEntity:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceEntity:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceEntity:name','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceEntity:otherIdentifier','SchemaClassAttribute','class','ReferenceEntity','SchemaClass',0),('ReferenceEntity:otherIdentifier','SchemaClassAttribute','name','otherIdentifier','STRING',0),('otherIdentifier','SchemaClassAttribute','name','otherIdentifier','STRING',0),('ReferenceEntity:otherIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('otherIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceEntity:otherIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('otherIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceEntity:otherIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('otherIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceEntity:otherIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('otherIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceEntity:otherIdentifier','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('otherIdentifier','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceEntity:otherIdentifier','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceEntity:referenceDatabase','SchemaClassAttribute','class','ReferenceEntity','SchemaClass',0),('ReferenceEntity:referenceDatabase','SchemaClassAttribute','name','referenceDatabase','STRING',0),('ReferenceEntity:referenceDatabase','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceEntity:referenceDatabase','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReferenceEntity:referenceDatabase','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceEntity:referenceDatabase','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceEntity:referenceDatabase','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceEntity:referenceDatabase','SchemaClassAttribute','allowed_classes','ReferenceDatabase','SchemaClass',0),('ReferenceGeneProduct','SchemaClass','super_classes','ReferenceSequence','SchemaClass',0),('ReferenceGeneProduct','SchemaClass','abstract',NULL,'SYMBOL',0),('ReferenceGeneProduct','SchemaClass','name','ReferenceGeneProduct','STRING',0),('ReferenceGeneProduct:chain','SchemaClassAttribute','class','ReferenceGeneProduct','SchemaClass',0),('ReferenceGeneProduct:chain','SchemaClassAttribute','name','chain','STRING',0),('chain','SchemaClassAttribute','name','chain','STRING',0),('ReferenceGeneProduct:chain','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('chain','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceGeneProduct:chain','SchemaClassAttribute','type','db_string_type','STRING',0),('chain','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceGeneProduct:chain','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('chain','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceGeneProduct:chain','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('chain','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceGeneProduct:chain','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('chain','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceGeneProduct:chain','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceGeneProduct:_chainChangeLog','SchemaClassAttribute','class','ReferenceGeneProduct','SchemaClass',0),('ReferenceGeneProduct:_chainChangeLog','SchemaClassAttribute','name','_chainChangeLog','STRING',0),('_chainChangeLog','SchemaClassAttribute','name','_chainChangeLog','STRING',0),('ReferenceGeneProduct:_chainChangeLog','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_chainChangeLog','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceGeneProduct:_chainChangeLog','SchemaClassAttribute','type','db_string_type','STRING',0),('_chainChangeLog','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceGeneProduct:_chainChangeLog','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_chainChangeLog','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceGeneProduct:_chainChangeLog','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_chainChangeLog','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceGeneProduct:_chainChangeLog','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_chainChangeLog','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceGeneProduct:_chainChangeLog','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceGeneProduct:referenceGene','SchemaClassAttribute','class','ReferenceGeneProduct','SchemaClass',0),('ReferenceGeneProduct:referenceGene','SchemaClassAttribute','name','referenceGene','STRING',0),('referenceGene','SchemaClassAttribute','name','referenceGene','STRING',0),('ReferenceGeneProduct:referenceGene','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('referenceGene','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceGeneProduct:referenceGene','SchemaClassAttribute','type','db_instance_type','STRING',0),('referenceGene','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReferenceGeneProduct:referenceGene','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('referenceGene','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceGeneProduct:referenceGene','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('referenceGene','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceGeneProduct:referenceGene','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('referenceGene','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceGeneProduct:referenceGene','SchemaClassAttribute','allowed_classes','ReferenceDNASequence','SchemaClass',0),('referenceGene','SchemaClassAttribute','allowed_classes','ReferenceDNASequence','SchemaClass',0),('ReferenceGeneProduct:referenceTranscript','SchemaClassAttribute','class','ReferenceGeneProduct','SchemaClass',0),('ReferenceGeneProduct:referenceTranscript','SchemaClassAttribute','name','referenceTranscript','STRING',0),('referenceTranscript','SchemaClassAttribute','name','referenceTranscript','STRING',0),('ReferenceGeneProduct:referenceTranscript','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('referenceTranscript','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceGeneProduct:referenceTranscript','SchemaClassAttribute','type','db_instance_type','STRING',0),('referenceTranscript','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReferenceGeneProduct:referenceTranscript','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('referenceTranscript','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceGeneProduct:referenceTranscript','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('referenceTranscript','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceGeneProduct:referenceTranscript','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('referenceTranscript','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceGeneProduct:referenceTranscript','SchemaClassAttribute','allowed_classes','ReferenceRNASequence','SchemaClass',0),('referenceTranscript','SchemaClassAttribute','allowed_classes','ReferenceRNASequence','SchemaClass',0),('ReferenceGroup','SchemaClass','super_classes','ReferenceEntity','SchemaClass',0),('ReferenceGroup','SchemaClass','abstract',NULL,'SYMBOL',0),('ReferenceGroup','SchemaClass','name','ReferenceGroup','STRING',0),('ReferenceGroup:formula','SchemaClassAttribute','class','ReferenceGroup','SchemaClass',0),('ReferenceGroup:formula','SchemaClassAttribute','name','formula','STRING',0),('formula','SchemaClassAttribute','name','formula','STRING',0),('ReferenceGroup:formula','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('formula','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceGroup:formula','SchemaClassAttribute','type','db_string_type','STRING',0),('formula','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceGroup:formula','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('formula','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceGroup:formula','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('formula','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceGroup:formula','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('formula','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceGroup:formula','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceGroup:name','SchemaClassAttribute','class','ReferenceGroup','SchemaClass',0),('ReferenceGroup:name','SchemaClassAttribute','name','name','STRING',0),('ReferenceGroup:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceGroup:name','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceGroup:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceGroup:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceGroup:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceGroup:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ReferenceGroup:otherIdentifier','SchemaClassAttribute','class','ReferenceGroup','SchemaClass',0),('ReferenceGroup:otherIdentifier','SchemaClassAttribute','name','otherIdentifier','STRING',0),('ReferenceGroup:otherIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceGroup:otherIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceGroup:otherIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceGroup:otherIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceGroup:otherIdentifier','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceGroup:otherIdentifier','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('ReferenceIsoform','SchemaClass','super_classes','ReferenceGeneProduct','SchemaClass',0),('ReferenceIsoform','SchemaClass','abstract',NULL,'SYMBOL',0),('ReferenceIsoform','SchemaClass','name','ReferenceIsoform','STRING',0),('ReferenceIsoform:variantIdentifier','SchemaClassAttribute','class','ReferenceIsoform','SchemaClass',0),('ReferenceIsoform:variantIdentifier','SchemaClassAttribute','name','variantIdentifier','STRING',0),('variantIdentifier','SchemaClassAttribute','name','variantIdentifier','STRING',0),('ReferenceIsoform:variantIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('variantIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceIsoform:variantIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('variantIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceIsoform:variantIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('variantIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceIsoform:variantIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('variantIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceIsoform:variantIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('variantIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceIsoform:variantIdentifier','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ReferenceIsoform:variantIdentifier','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('ReferenceIsoform:isoformParent','SchemaClassAttribute','class','ReferenceIsoform','SchemaClass',0),('ReferenceIsoform:isoformParent','SchemaClassAttribute','name','isoformParent','STRING',0),('isoformParent','SchemaClassAttribute','name','isoformParent','STRING',0),('ReferenceIsoform:isoformParent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('isoformParent','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceIsoform:isoformParent','SchemaClassAttribute','type','db_instance_type','STRING',0),('isoformParent','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReferenceIsoform:isoformParent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('isoformParent','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceIsoform:isoformParent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('isoformParent','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceIsoform:isoformParent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('isoformParent','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceIsoform:isoformParent','SchemaClassAttribute','allowed_classes','ReferenceGeneProduct','SchemaClass',0),('isoformParent','SchemaClassAttribute','allowed_classes','ReferenceGeneProduct','SchemaClass',0),('ReferenceIsoform:isoformParent','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ReferenceMolecule','SchemaClass','super_classes','ReferenceEntity','SchemaClass',0),('ReferenceMolecule','SchemaClass','abstract',NULL,'SYMBOL',0),('ReferenceMolecule','SchemaClass','name','ReferenceMolecule','STRING',0),('ReferenceMolecule:formula','SchemaClassAttribute','class','ReferenceMolecule','SchemaClass',0),('ReferenceMolecule:formula','SchemaClassAttribute','name','formula','STRING',0),('ReferenceMolecule:formula','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceMolecule:formula','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceMolecule:formula','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceMolecule:formula','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceMolecule:formula','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceMolecule:formula','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceMolecule:name','SchemaClassAttribute','class','ReferenceMolecule','SchemaClass',0),('ReferenceMolecule:name','SchemaClassAttribute','name','name','STRING',0),('ReferenceMolecule:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceMolecule:name','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceMolecule:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceMolecule:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceMolecule:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceMolecule:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ReferenceMolecule:otherIdentifier','SchemaClassAttribute','class','ReferenceMolecule','SchemaClass',0),('ReferenceMolecule:otherIdentifier','SchemaClassAttribute','name','otherIdentifier','STRING',0),('ReferenceMolecule:otherIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceMolecule:otherIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceMolecule:otherIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceMolecule:otherIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceMolecule:otherIdentifier','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceMolecule:otherIdentifier','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('ReferenceRNASequence','SchemaClass','super_classes','ReferenceSequence','SchemaClass',0),('ReferenceRNASequence','SchemaClass','abstract',NULL,'SYMBOL',0),('ReferenceRNASequence','SchemaClass','name','ReferenceRNASequence','STRING',0),('ReferenceRNASequence:referenceGene','SchemaClassAttribute','class','ReferenceRNASequence','SchemaClass',0),('ReferenceRNASequence:referenceGene','SchemaClassAttribute','name','referenceGene','STRING',0),('ReferenceRNASequence:referenceGene','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceRNASequence:referenceGene','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReferenceRNASequence:referenceGene','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceRNASequence:referenceGene','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceRNASequence:referenceGene','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceRNASequence:referenceGene','SchemaClassAttribute','allowed_classes','ReferenceDNASequence','SchemaClass',0),('ReferenceRNASequence:referenceGene','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceSequence','SchemaClass','super_classes','ReferenceEntity','SchemaClass',0),('ReferenceSequence','SchemaClass','abstract',NULL,'SYMBOL',0),('ReferenceSequence','SchemaClass','name','ReferenceSequence','STRING',0),('ReferenceSequence:checksum','SchemaClassAttribute','class','ReferenceSequence','SchemaClass',0),('ReferenceSequence:checksum','SchemaClassAttribute','name','checksum','STRING',0),('checksum','SchemaClassAttribute','name','checksum','STRING',0),('ReferenceSequence:checksum','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('checksum','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceSequence:checksum','SchemaClassAttribute','type','db_string_type','STRING',0),('checksum','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceSequence:checksum','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('checksum','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceSequence:checksum','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('checksum','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceSequence:checksum','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('checksum','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceSequence:checksum','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('ReferenceSequence:comment','SchemaClassAttribute','class','ReferenceSequence','SchemaClass',0),('ReferenceSequence:comment','SchemaClassAttribute','name','comment','STRING',0),('ReferenceSequence:comment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceSequence:comment','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceSequence:comment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceSequence:comment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceSequence:comment','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceSequence:comment','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceSequence:description','SchemaClassAttribute','class','ReferenceSequence','SchemaClass',0),('ReferenceSequence:description','SchemaClassAttribute','name','description','STRING',0),('description','SchemaClassAttribute','name','description','STRING',0),('ReferenceSequence:description','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('description','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceSequence:description','SchemaClassAttribute','type','db_string_type','STRING',0),('description','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceSequence:description','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('description','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceSequence:description','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('description','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceSequence:description','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('description','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceSequence:description','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceSequence:geneName','SchemaClassAttribute','class','ReferenceSequence','SchemaClass',0),('ReferenceSequence:geneName','SchemaClassAttribute','name','geneName','STRING',0),('geneName','SchemaClassAttribute','name','geneName','STRING',0),('ReferenceSequence:geneName','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('geneName','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceSequence:geneName','SchemaClassAttribute','type','db_string_type','STRING',0),('geneName','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceSequence:geneName','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('geneName','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceSequence:geneName','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('geneName','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceSequence:geneName','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('geneName','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceSequence:geneName','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceSequence:isSequenceChanged','SchemaClassAttribute','class','ReferenceSequence','SchemaClass',0),('ReferenceSequence:isSequenceChanged','SchemaClassAttribute','name','isSequenceChanged','STRING',0),('isSequenceChanged','SchemaClassAttribute','name','isSequenceChanged','STRING',0),('ReferenceSequence:isSequenceChanged','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('isSequenceChanged','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceSequence:isSequenceChanged','SchemaClassAttribute','type','db_enum_type','STRING',0),('isSequenceChanged','SchemaClassAttribute','type','db_enum_type','STRING',0),('ReferenceSequence:isSequenceChanged','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('isSequenceChanged','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceSequence:isSequenceChanged','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('isSequenceChanged','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceSequence:isSequenceChanged','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('isSequenceChanged','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceSequence:isSequenceChanged','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceSequence:keyword','SchemaClassAttribute','class','ReferenceSequence','SchemaClass',0),('ReferenceSequence:keyword','SchemaClassAttribute','name','keyword','STRING',0),('keyword','SchemaClassAttribute','name','keyword','STRING',0),('ReferenceSequence:keyword','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('keyword','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceSequence:keyword','SchemaClassAttribute','type','db_string_type','STRING',0),('keyword','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceSequence:keyword','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('keyword','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceSequence:keyword','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('keyword','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceSequence:keyword','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('keyword','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceSequence:keyword','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceSequence:secondaryIdentifier','SchemaClassAttribute','class','ReferenceSequence','SchemaClass',0),('ReferenceSequence:secondaryIdentifier','SchemaClassAttribute','name','secondaryIdentifier','STRING',0),('secondaryIdentifier','SchemaClassAttribute','name','secondaryIdentifier','STRING',0),('ReferenceSequence:secondaryIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('secondaryIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceSequence:secondaryIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('secondaryIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceSequence:secondaryIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('secondaryIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceSequence:secondaryIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('secondaryIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceSequence:secondaryIdentifier','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('secondaryIdentifier','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceSequence:secondaryIdentifier','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceSequence:sequenceLength','SchemaClassAttribute','class','ReferenceSequence','SchemaClass',0),('ReferenceSequence:sequenceLength','SchemaClassAttribute','name','sequenceLength','STRING',0),('sequenceLength','SchemaClassAttribute','name','sequenceLength','STRING',0),('ReferenceSequence:sequenceLength','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('sequenceLength','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceSequence:sequenceLength','SchemaClassAttribute','type','db_integer_type','STRING',0),('sequenceLength','SchemaClassAttribute','type','db_integer_type','STRING',0),('ReferenceSequence:sequenceLength','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('sequenceLength','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceSequence:sequenceLength','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('sequenceLength','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceSequence:sequenceLength','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('sequenceLength','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceSequence:species','SchemaClassAttribute','class','ReferenceSequence','SchemaClass',0),('ReferenceSequence:species','SchemaClassAttribute','name','species','STRING',0),('ReferenceSequence:species','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceSequence:species','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReferenceSequence:species','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceSequence:species','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceSequence:species','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceSequence:species','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('ReferenceSequence:species','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ReferenceSequence:species','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('ReferenceSequence:otherIdentifier','SchemaClassAttribute','class','ReferenceSequence','SchemaClass',0),('ReferenceSequence:otherIdentifier','SchemaClassAttribute','name','otherIdentifier','STRING',0),('ReferenceSequence:otherIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceSequence:otherIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceSequence:otherIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceSequence:otherIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceSequence:otherIdentifier','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceSequence:otherIdentifier','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('ReferenceTherapeutic','SchemaClass','super_classes','ReferenceEntity','SchemaClass',0),('ReferenceTherapeutic','SchemaClass','abstract',NULL,'SYMBOL',0),('ReferenceTherapeutic','SchemaClass','name','ReferenceTherapeutic','STRING',0),('ReferenceTherapeutic:abbreviation','SchemaClassAttribute','class','ReferenceTherapeutic','SchemaClass',0),('ReferenceTherapeutic:abbreviation','SchemaClassAttribute','name','abbreviation','STRING',0),('abbreviation','SchemaClassAttribute','name','abbreviation','STRING',0),('ReferenceTherapeutic:abbreviation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('abbreviation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceTherapeutic:abbreviation','SchemaClassAttribute','type','db_string_type','STRING',0),('abbreviation','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceTherapeutic:abbreviation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('abbreviation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceTherapeutic:abbreviation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('abbreviation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceTherapeutic:abbreviation','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('abbreviation','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceTherapeutic:abbreviation','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceTherapeutic:approvalSource','SchemaClassAttribute','class','ReferenceTherapeutic','SchemaClass',0),('ReferenceTherapeutic:approvalSource','SchemaClassAttribute','name','approvalSource','STRING',0),('approvalSource','SchemaClassAttribute','name','approvalSource','STRING',0),('ReferenceTherapeutic:approvalSource','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('approvalSource','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceTherapeutic:approvalSource','SchemaClassAttribute','type','db_string_type','STRING',0),('approvalSource','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceTherapeutic:approvalSource','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('approvalSource','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceTherapeutic:approvalSource','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('approvalSource','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceTherapeutic:approvalSource','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('approvalSource','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceTherapeutic:approvalSource','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceTherapeutic:activeDrugIds','SchemaClassAttribute','class','ReferenceTherapeutic','SchemaClass',0),('ReferenceTherapeutic:activeDrugIds','SchemaClassAttribute','name','activeDrugIds','STRING',0),('activeDrugIds','SchemaClassAttribute','name','activeDrugIds','STRING',0),('ReferenceTherapeutic:activeDrugIds','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('activeDrugIds','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceTherapeutic:activeDrugIds','SchemaClassAttribute','type','db_string_type','STRING',0),('activeDrugIds','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceTherapeutic:activeDrugIds','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('activeDrugIds','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceTherapeutic:activeDrugIds','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('activeDrugIds','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceTherapeutic:activeDrugIds','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('activeDrugIds','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceTherapeutic:activeDrugIds','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceTherapeutic:prodrugIds','SchemaClassAttribute','class','ReferenceTherapeutic','SchemaClass',0),('ReferenceTherapeutic:prodrugIds','SchemaClassAttribute','name','prodrugIds','STRING',0),('prodrugIds','SchemaClassAttribute','name','prodrugIds','STRING',0),('ReferenceTherapeutic:prodrugIds','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('prodrugIds','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceTherapeutic:prodrugIds','SchemaClassAttribute','type','db_string_type','STRING',0),('prodrugIds','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceTherapeutic:prodrugIds','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('prodrugIds','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceTherapeutic:prodrugIds','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('prodrugIds','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceTherapeutic:prodrugIds','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('prodrugIds','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReferenceTherapeutic:prodrugIds','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceTherapeutic:approved','SchemaClassAttribute','class','ReferenceTherapeutic','SchemaClass',0),('ReferenceTherapeutic:approved','SchemaClassAttribute','name','approved','STRING',0),('approved','SchemaClassAttribute','name','approved','STRING',0),('ReferenceTherapeutic:approved','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('approved','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceTherapeutic:approved','SchemaClassAttribute','type','db_enum_type','STRING',0),('approved','SchemaClassAttribute','type','db_enum_type','STRING',0),('ReferenceTherapeutic:approved','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('approved','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceTherapeutic:approved','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('approved','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceTherapeutic:approved','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('approved','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceTherapeutic:approved','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ReferenceTherapeutic:withdrawn','SchemaClassAttribute','class','ReferenceTherapeutic','SchemaClass',0),('ReferenceTherapeutic:withdrawn','SchemaClassAttribute','name','withdrawn','STRING',0),('withdrawn','SchemaClassAttribute','name','withdrawn','STRING',0),('ReferenceTherapeutic:withdrawn','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('withdrawn','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceTherapeutic:withdrawn','SchemaClassAttribute','type','db_enum_type','STRING',0),('withdrawn','SchemaClassAttribute','type','db_enum_type','STRING',0),('ReferenceTherapeutic:withdrawn','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('withdrawn','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceTherapeutic:withdrawn','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('withdrawn','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceTherapeutic:withdrawn','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('withdrawn','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceTherapeutic:withdrawn','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('ReferenceTherapeutic:inn','SchemaClassAttribute','class','ReferenceTherapeutic','SchemaClass',0),('ReferenceTherapeutic:inn','SchemaClassAttribute','name','inn','STRING',0),('inn','SchemaClassAttribute','name','inn','STRING',0),('ReferenceTherapeutic:inn','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('inn','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceTherapeutic:inn','SchemaClassAttribute','type','db_string_type','STRING',0),('inn','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceTherapeutic:inn','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('inn','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceTherapeutic:inn','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('inn','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceTherapeutic:inn','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('inn','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceTherapeutic:inn','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('ReferenceTherapeutic:type','SchemaClassAttribute','class','ReferenceTherapeutic','SchemaClass',0),('ReferenceTherapeutic:type','SchemaClassAttribute','name','type','STRING',0),('type','SchemaClassAttribute','name','type','STRING',0),('ReferenceTherapeutic:type','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('type','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReferenceTherapeutic:type','SchemaClassAttribute','type','db_string_type','STRING',0),('type','SchemaClassAttribute','type','db_string_type','STRING',0),('ReferenceTherapeutic:type','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('type','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReferenceTherapeutic:type','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('type','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReferenceTherapeutic:type','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('type','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReferenceTherapeutic:type','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Regulation','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('Regulation','SchemaClass','abstract','TRUE','SYMBOL',0),('Regulation','SchemaClass','name','Regulation','STRING',0),('Regulation:activeUnit','SchemaClassAttribute','class','Regulation','SchemaClass',0),('Regulation:activeUnit','SchemaClassAttribute','name','activeUnit','STRING',0),('Regulation:activeUnit','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Regulation:activeUnit','SchemaClassAttribute','type','db_instance_type','STRING',0),('Regulation:activeUnit','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Regulation:activeUnit','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Regulation:activeUnit','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Regulation:activeUnit','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('Regulation:activeUnit','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Regulation:activeUnit','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Regulation:activity','SchemaClassAttribute','class','Regulation','SchemaClass',0),('Regulation:activity','SchemaClassAttribute','name','activity','STRING',0),('Regulation:activity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Regulation:activity','SchemaClassAttribute','type','db_instance_type','STRING',0),('Regulation:activity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Regulation:activity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Regulation:activity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Regulation:activity','SchemaClassAttribute','allowed_classes','GO_MolecularFunction','SchemaClass',0),('Regulation:activity','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Regulation:activity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Regulation:goBiologicalProcess','SchemaClassAttribute','class','Regulation','SchemaClass',0),('Regulation:goBiologicalProcess','SchemaClassAttribute','name','goBiologicalProcess','STRING',0),('Regulation:goBiologicalProcess','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Regulation:goBiologicalProcess','SchemaClassAttribute','type','db_instance_type','STRING',0),('Regulation:goBiologicalProcess','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Regulation:goBiologicalProcess','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Regulation:goBiologicalProcess','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Regulation:goBiologicalProcess','SchemaClassAttribute','allowed_classes','GO_BiologicalProcess','SchemaClass',0),('Regulation:goBiologicalProcess','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Regulation:regulator','SchemaClassAttribute','class','Regulation','SchemaClass',0),('Regulation:regulator','SchemaClassAttribute','name','regulator','STRING',0),('Regulation:regulator','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Regulation:regulator','SchemaClassAttribute','type','db_instance_type','STRING',0),('Regulation:regulator','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Regulation:regulator','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Regulation:regulator','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Regulation:regulator','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('Regulation:regulator','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('RegulationReference','SchemaClass','super_classes','ControlReference','SchemaClass',0),('RegulationReference','SchemaClass','abstract',NULL,'SYMBOL',0),('RegulationReference','SchemaClass','name','RegulationReference','STRING',0),('RegulationReference:regulation','SchemaClassAttribute','class','RegulationReference','SchemaClass',0),('RegulationReference:regulation','SchemaClassAttribute','name','regulation','STRING',0),('regulation','SchemaClassAttribute','name','regulation','STRING',0),('RegulationReference:regulation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('regulation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('RegulationReference:regulation','SchemaClassAttribute','type','db_instance_type','STRING',0),('regulation','SchemaClassAttribute','type','db_instance_type','STRING',0),('RegulationReference:regulation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('regulation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('RegulationReference:regulation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('regulation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('RegulationReference:regulation','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('regulation','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('RegulationReference:regulation','SchemaClassAttribute','allowed_classes','Regulation','SchemaClass',0),('regulation','SchemaClassAttribute','allowed_classes','Regulation','SchemaClass',0),('RegulationReference:regulation','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('RegulationReference:regulation','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('ReplacedResidue','SchemaClass','super_classes','GeneticallyModifiedResidue','SchemaClass',0),('ReplacedResidue','SchemaClass','abstract',NULL,'SYMBOL',0),('ReplacedResidue','SchemaClass','name','ReplacedResidue','STRING',0),('ReplacedResidue:coordinate','SchemaClassAttribute','class','ReplacedResidue','SchemaClass',0),('ReplacedResidue:coordinate','SchemaClassAttribute','name','coordinate','STRING',0),('ReplacedResidue:coordinate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReplacedResidue:coordinate','SchemaClassAttribute','type','db_integer_type','STRING',0),('ReplacedResidue:coordinate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReplacedResidue:coordinate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReplacedResidue:coordinate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('ReplacedResidue:coordinate','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('ReplacedResidue:coordinate','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('ReplacedResidue:psiMod','SchemaClassAttribute','class','ReplacedResidue','SchemaClass',0),('ReplacedResidue:psiMod','SchemaClassAttribute','name','psiMod','STRING',0),('ReplacedResidue:psiMod','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('ReplacedResidue:psiMod','SchemaClassAttribute','type','db_instance_type','STRING',0),('ReplacedResidue:psiMod','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('ReplacedResidue:psiMod','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('ReplacedResidue:psiMod','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('ReplacedResidue:psiMod','SchemaClassAttribute','allowed_classes','PsiMod','SchemaClass',0),('ReplacedResidue:psiMod','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('ReplacedResidue:psiMod','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('_Release','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('_Release','SchemaClass','abstract',NULL,'SYMBOL',0),('_Release','SchemaClass','name','_Release','STRING',0),('_Release:releaseNumber','SchemaClassAttribute','class','_Release','SchemaClass',0),('_Release:releaseNumber','SchemaClassAttribute','name','releaseNumber','STRING',0),('releaseNumber','SchemaClassAttribute','name','releaseNumber','STRING',0),('_Release:releaseNumber','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('releaseNumber','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_Release:releaseNumber','SchemaClassAttribute','type','db_integer_type','STRING',0),('releaseNumber','SchemaClassAttribute','type','db_integer_type','STRING',0),('_Release:releaseNumber','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('releaseNumber','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_Release:releaseNumber','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('releaseNumber','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_Release:releaseNumber','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('releaseNumber','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_Release:releaseNumber','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('_Release:releaseDate','SchemaClassAttribute','class','_Release','SchemaClass',0),('_Release:releaseDate','SchemaClassAttribute','name','releaseDate','STRING',0),('_Release:releaseDate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_Release:releaseDate','SchemaClassAttribute','type','db_string_type','STRING',0),('_Release:releaseDate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_Release:releaseDate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_Release:releaseDate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_Release:releaseDate','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Requirement','SchemaClass','super_classes','PositiveRegulation','SchemaClass',0),('Requirement','SchemaClass','abstract',NULL,'SYMBOL',0),('Requirement','SchemaClass','name','Requirement','STRING',0),('Requirement:regulator','SchemaClassAttribute','class','Requirement','SchemaClass',0),('Requirement:regulator','SchemaClassAttribute','name','regulator','STRING',0),('Requirement:regulator','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Requirement:regulator','SchemaClassAttribute','type','db_instance_type','STRING',0),('Requirement:regulator','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Requirement:regulator','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Requirement:regulator','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Requirement:regulator','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',0),('Requirement:regulator','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Requirement:regulator','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('ReviewStatus','SchemaClass','super_classes','ControlledVocabulary','SchemaClass',0),('ReviewStatus','SchemaClass','abstract',NULL,'SYMBOL',0),('ReviewStatus','SchemaClass','name','ReviewStatus','STRING',0),('RNADrug','SchemaClass','super_classes','Drug','SchemaClass',0),('RNADrug','SchemaClass','abstract',NULL,'SYMBOL',0),('RNADrug','SchemaClass','name','RNADrug','STRING',0),('SequenceOntology','SchemaClass','super_classes','ExternalOntology','SchemaClass',0),('SequenceOntology','SchemaClass','abstract',NULL,'SYMBOL',0),('SequenceOntology','SchemaClass','name','SequenceOntology','STRING',0),('SequenceOntology:instanceOf','SchemaClassAttribute','class','SequenceOntology','SchemaClass',0),('SequenceOntology:instanceOf','SchemaClassAttribute','name','instanceOf','STRING',0),('SequenceOntology:instanceOf','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('SequenceOntology:instanceOf','SchemaClassAttribute','type','db_instance_type','STRING',0),('SequenceOntology:instanceOf','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('SequenceOntology:instanceOf','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('SequenceOntology:instanceOf','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('SequenceOntology:instanceOf','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('SequenceOntology:instanceOf','SchemaClassAttribute','allowed_classes','SequenceOntology','SchemaClass',0),('SequenceOntology:identifier','SchemaClassAttribute','class','SequenceOntology','SchemaClass',0),('SequenceOntology:identifier','SchemaClassAttribute','name','identifier','STRING',0),('SequenceOntology:identifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('SequenceOntology:identifier','SchemaClassAttribute','type','db_string_type','STRING',0),('SequenceOntology:identifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('SequenceOntology:identifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('SequenceOntology:identifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('SequenceOntology:identifier','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('SequenceOntology:identifier','SchemaClassAttribute','value_defines_instance','any','SYMBOL',0),('SequenceOntology:name','SchemaClassAttribute','class','SequenceOntology','SchemaClass',0),('SequenceOntology:name','SchemaClassAttribute','name','name','STRING',0),('SequenceOntology:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('SequenceOntology:name','SchemaClassAttribute','type','db_string_type','STRING',0),('SequenceOntology:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('SequenceOntology:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('SequenceOntology:name','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('SequenceOntology:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('SimpleEntity','SchemaClass','super_classes','PhysicalEntity','SchemaClass',0),('SimpleEntity','SchemaClass','abstract',NULL,'SYMBOL',0),('SimpleEntity','SchemaClass','name','SimpleEntity','STRING',0),('SimpleEntity:referenceEntity','SchemaClassAttribute','class','SimpleEntity','SchemaClass',0),('SimpleEntity:referenceEntity','SchemaClassAttribute','name','referenceEntity','STRING',0),('SimpleEntity:referenceEntity','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('SimpleEntity:referenceEntity','SchemaClassAttribute','type','db_instance_type','STRING',0),('SimpleEntity:referenceEntity','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('SimpleEntity:referenceEntity','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('SimpleEntity:referenceEntity','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('SimpleEntity:referenceEntity','SchemaClassAttribute','allowed_classes','ReferenceMolecule','SchemaClass',0),('SimpleEntity:referenceEntity','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('SimpleEntity:referenceEntity','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('SimpleEntity:compartment','SchemaClassAttribute','class','SimpleEntity','SchemaClass',0),('SimpleEntity:compartment','SchemaClassAttribute','name','compartment','STRING',0),('SimpleEntity:compartment','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('SimpleEntity:compartment','SchemaClassAttribute','type','db_instance_type','STRING',0),('SimpleEntity:compartment','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('SimpleEntity:compartment','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('SimpleEntity:compartment','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('SimpleEntity:compartment','SchemaClassAttribute','allowed_classes','Compartment','SchemaClass',0),('SimpleEntity:compartment','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('SimpleEntity:compartment','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('SimpleEntity:species','SchemaClassAttribute','class','SimpleEntity','SchemaClass',0),('SimpleEntity:species','SchemaClassAttribute','name','species','STRING',0),('SimpleEntity:species','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('SimpleEntity:species','SchemaClassAttribute','type','db_instance_type','STRING',0),('SimpleEntity:species','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('SimpleEntity:species','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('SimpleEntity:species','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('SimpleEntity:species','SchemaClassAttribute','allowed_classes','Species','SchemaClass',0),('SimpleEntity:species','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('SimpleEntity:species','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Species','SchemaClass','super_classes','Taxon','SchemaClass',0),('Species','SchemaClass','abstract',NULL,'SYMBOL',0),('Species','SchemaClass','name','Species','STRING',0),('Species:abbreviation','SchemaClassAttribute','class','Species','SchemaClass',0),('Species:abbreviation','SchemaClassAttribute','name','abbreviation','STRING',0),('Species:abbreviation','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Species:abbreviation','SchemaClassAttribute','type','db_string_type','STRING',0),('Species:abbreviation','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Species:abbreviation','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Species:abbreviation','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Species:abbreviation','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('StableIdentifier','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('StableIdentifier','SchemaClass','abstract',NULL,'SYMBOL',0),('StableIdentifier','SchemaClass','name','StableIdentifier','STRING',0),('StableIdentifier:oldIdentifier','SchemaClassAttribute','class','StableIdentifier','SchemaClass',0),('StableIdentifier:oldIdentifier','SchemaClassAttribute','name','oldIdentifier','STRING',0),('oldIdentifier','SchemaClassAttribute','name','oldIdentifier','STRING',0),('StableIdentifier:oldIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('oldIdentifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('StableIdentifier:oldIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('oldIdentifier','SchemaClassAttribute','type','db_string_type','STRING',0),('StableIdentifier:oldIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('oldIdentifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('StableIdentifier:oldIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('oldIdentifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('StableIdentifier:oldIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('oldIdentifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('StableIdentifier:oldIdentifier','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('StableIdentifier:oldIdentifierVersion','SchemaClassAttribute','class','StableIdentifier','SchemaClass',0),('StableIdentifier:oldIdentifierVersion','SchemaClassAttribute','name','oldIdentifierVersion','STRING',0),('oldIdentifierVersion','SchemaClassAttribute','name','oldIdentifierVersion','STRING',0),('StableIdentifier:oldIdentifierVersion','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('oldIdentifierVersion','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('StableIdentifier:oldIdentifierVersion','SchemaClassAttribute','type','db_string_type','STRING',0),('oldIdentifierVersion','SchemaClassAttribute','type','db_string_type','STRING',0),('StableIdentifier:oldIdentifierVersion','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('oldIdentifierVersion','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('StableIdentifier:oldIdentifierVersion','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('oldIdentifierVersion','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('StableIdentifier:oldIdentifierVersion','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('oldIdentifierVersion','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('StableIdentifier:oldIdentifierVersion','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('StableIdentifier:released','SchemaClassAttribute','class','StableIdentifier','SchemaClass',0),('StableIdentifier:released','SchemaClassAttribute','name','released','STRING',0),('released','SchemaClassAttribute','name','released','STRING',0),('StableIdentifier:released','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('released','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('StableIdentifier:released','SchemaClassAttribute','type','db_enum_type','STRING',0),('released','SchemaClassAttribute','type','db_enum_type','STRING',0),('StableIdentifier:released','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('released','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('StableIdentifier:released','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('released','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('StableIdentifier:released','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('released','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('StableIdentifier:released','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('StableIdentifier:history','SchemaClassAttribute','class','StableIdentifier','SchemaClass',0),('StableIdentifier:history','SchemaClassAttribute','name','history','STRING',0),('history','SchemaClassAttribute','name','history','STRING',0),('StableIdentifier:history','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('history','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('StableIdentifier:history','SchemaClassAttribute','type','db_instance_type','STRING',0),('history','SchemaClassAttribute','type','db_instance_type','STRING',0),('StableIdentifier:history','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('history','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('StableIdentifier:history','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('history','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('StableIdentifier:history','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('history','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('StableIdentifier:history','SchemaClassAttribute','allowed_classes','StableIdentifierHistory','SchemaClass',0),('history','SchemaClassAttribute','allowed_classes','StableIdentifierHistory','SchemaClass',0),('StableIdentifier:history','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('StableIdentifier:identifier','SchemaClassAttribute','class','StableIdentifier','SchemaClass',0),('StableIdentifier:identifier','SchemaClassAttribute','name','identifier','STRING',0),('StableIdentifier:identifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('StableIdentifier:identifier','SchemaClassAttribute','type','db_string_type','STRING',0),('StableIdentifier:identifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('StableIdentifier:identifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('StableIdentifier:identifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('StableIdentifier:identifier','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('StableIdentifier:identifierVersion','SchemaClassAttribute','class','StableIdentifier','SchemaClass',0),('StableIdentifier:identifierVersion','SchemaClassAttribute','name','identifierVersion','STRING',0),('identifierVersion','SchemaClassAttribute','name','identifierVersion','STRING',0),('StableIdentifier:identifierVersion','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('identifierVersion','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('StableIdentifier:identifierVersion','SchemaClassAttribute','type','db_string_type','STRING',0),('identifierVersion','SchemaClassAttribute','type','db_string_type','STRING',0),('StableIdentifier:identifierVersion','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('identifierVersion','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('StableIdentifier:identifierVersion','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('identifierVersion','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('StableIdentifier:identifierVersion','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('identifierVersion','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('StableIdentifier:identifierVersion','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('StableIdentifierHistory','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('StableIdentifierHistory','SchemaClass','abstract',NULL,'SYMBOL',0),('StableIdentifierHistory','SchemaClass','name','StableIdentifierHistory','STRING',0),('StableIdentifierHistory:historyStatus','SchemaClassAttribute','class','StableIdentifierHistory','SchemaClass',0),('StableIdentifierHistory:historyStatus','SchemaClassAttribute','name','historyStatus','STRING',0),('historyStatus','SchemaClassAttribute','name','historyStatus','STRING',0),('StableIdentifierHistory:historyStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('historyStatus','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('StableIdentifierHistory:historyStatus','SchemaClassAttribute','type','db_instance_type','STRING',0),('historyStatus','SchemaClassAttribute','type','db_instance_type','STRING',0),('StableIdentifierHistory:historyStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('historyStatus','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('StableIdentifierHistory:historyStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('historyStatus','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('StableIdentifierHistory:historyStatus','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('historyStatus','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('StableIdentifierHistory:historyStatus','SchemaClassAttribute','allowed_classes','StableIdentifierReleaseStatus','SchemaClass',0),('historyStatus','SchemaClassAttribute','allowed_classes','StableIdentifierReleaseStatus','SchemaClass',0),('StableIdentifierHistory:historyStatus','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('StableIdentifierHistory:identifier','SchemaClassAttribute','class','StableIdentifierHistory','SchemaClass',0),('StableIdentifierHistory:identifier','SchemaClassAttribute','name','identifier','STRING',0),('StableIdentifierHistory:identifier','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('StableIdentifierHistory:identifier','SchemaClassAttribute','type','db_string_type','STRING',0),('StableIdentifierHistory:identifier','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('StableIdentifierHistory:identifier','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('StableIdentifierHistory:identifier','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('StableIdentifierHistory:identifier','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('StableIdentifierHistory:identifierVersion','SchemaClassAttribute','class','StableIdentifierHistory','SchemaClass',0),('StableIdentifierHistory:identifierVersion','SchemaClassAttribute','name','identifierVersion','STRING',0),('StableIdentifierHistory:identifierVersion','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('StableIdentifierHistory:identifierVersion','SchemaClassAttribute','type','db_string_type','STRING',0),('StableIdentifierHistory:identifierVersion','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('StableIdentifierHistory:identifierVersion','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('StableIdentifierHistory:identifierVersion','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('StableIdentifierHistory:identifierVersion','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('StableIdentifierReleaseStatus','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('StableIdentifierReleaseStatus','SchemaClass','abstract',NULL,'SYMBOL',0),('StableIdentifierReleaseStatus','SchemaClass','name','StableIdentifierReleaseStatus','STRING',0),('StableIdentifierReleaseStatus:releaseNumber','SchemaClassAttribute','class','StableIdentifierReleaseStatus','SchemaClass',0),('StableIdentifierReleaseStatus:releaseNumber','SchemaClassAttribute','name','releaseNumber','STRING',0),('StableIdentifierReleaseStatus:releaseNumber','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('StableIdentifierReleaseStatus:releaseNumber','SchemaClassAttribute','type','db_integer_type','STRING',0),('StableIdentifierReleaseStatus:releaseNumber','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('StableIdentifierReleaseStatus:releaseNumber','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('StableIdentifierReleaseStatus:releaseNumber','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('StableIdentifierReleaseStatus:releaseNumber','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('StableIdentifierReleaseStatus:releaseNumber','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('StableIdentifierReleaseStatus:status','SchemaClassAttribute','class','StableIdentifierReleaseStatus','SchemaClass',0),('StableIdentifierReleaseStatus:status','SchemaClassAttribute','name','status','STRING',0),('status','SchemaClassAttribute','name','status','STRING',0),('StableIdentifierReleaseStatus:status','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('status','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('StableIdentifierReleaseStatus:status','SchemaClassAttribute','type','db_enum_type','STRING',0),('status','SchemaClassAttribute','type','db_enum_type','STRING',0),('StableIdentifierReleaseStatus:status','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('status','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('StableIdentifierReleaseStatus:status','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('status','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('StableIdentifierReleaseStatus:status','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('status','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('StableIdentifierReleaseStatus:status','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('StableIdentifierReleaseStatus:status','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Summation','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('Summation','SchemaClass','abstract',NULL,'SYMBOL',0),('Summation','SchemaClass','name','Summation','STRING',0),('Summation:text','SchemaClassAttribute','class','Summation','SchemaClass',0),('Summation:text','SchemaClassAttribute','name','text','STRING',0),('text','SchemaClassAttribute','name','text','STRING',0),('Summation:text','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('text','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Summation:text','SchemaClassAttribute','type','db_string_type','STRING',0),('text','SchemaClassAttribute','type','db_string_type','STRING',0),('Summation:text','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('text','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Summation:text','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('text','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Summation:text','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('text','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Summation:text','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Summation:text','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('Summation:literatureReference','SchemaClassAttribute','class','Summation','SchemaClass',0),('Summation:literatureReference','SchemaClassAttribute','name','literatureReference','STRING',0),('Summation:literatureReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Summation:literatureReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('Summation:literatureReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Summation:literatureReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Summation:literatureReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Summation:literatureReference','SchemaClassAttribute','allowed_classes','Publication','SchemaClass',0),('Summation:literatureReference','SchemaClassAttribute','category','OPTIONAL','SYMBOL',0),('Taxon','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('Taxon','SchemaClass','abstract',NULL,'SYMBOL',0),('Taxon','SchemaClass','name','Taxon','STRING',0),('Taxon:superTaxon','SchemaClassAttribute','class','Taxon','SchemaClass',0),('Taxon:superTaxon','SchemaClassAttribute','name','superTaxon','STRING',0),('superTaxon','SchemaClassAttribute','name','superTaxon','STRING',0),('Taxon:superTaxon','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('superTaxon','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Taxon:superTaxon','SchemaClassAttribute','type','db_instance_type','STRING',0),('superTaxon','SchemaClassAttribute','type','db_instance_type','STRING',0),('Taxon:superTaxon','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('superTaxon','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Taxon:superTaxon','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('superTaxon','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Taxon:superTaxon','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('superTaxon','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('Taxon:superTaxon','SchemaClassAttribute','allowed_classes','Taxon','SchemaClass',0),('superTaxon','SchemaClassAttribute','allowed_classes','Taxon','SchemaClass',0),('Taxon:superTaxon','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('Taxon:crossReference','SchemaClassAttribute','class','Taxon','SchemaClass',0),('Taxon:crossReference','SchemaClassAttribute','name','crossReference','STRING',0),('Taxon:crossReference','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Taxon:crossReference','SchemaClassAttribute','type','db_instance_type','STRING',0),('Taxon:crossReference','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Taxon:crossReference','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Taxon:crossReference','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Taxon:crossReference','SchemaClassAttribute','allowed_classes','DatabaseIdentifier','SchemaClass',0),('Taxon:crossReference','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Taxon:name','SchemaClassAttribute','class','Taxon','SchemaClass',0),('Taxon:name','SchemaClassAttribute','name','name','STRING',0),('Taxon:name','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('Taxon:name','SchemaClassAttribute','type','db_string_type','STRING',0),('Taxon:name','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('Taxon:name','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('Taxon:name','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('Taxon:name','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('Taxon:name','SchemaClassAttribute','value_defines_instance','any','SYMBOL',0),('TranscriptionalModification','SchemaClass','super_classes','AbstractModifiedResidue','SchemaClass',0),('TranscriptionalModification','SchemaClass','abstract','TRUE','SYMBOL',0),('TranscriptionalModification','SchemaClass','name','TranscriptionalModification','STRING',0),('TranslationalModification','SchemaClass','super_classes','AbstractModifiedResidue','SchemaClass',0),('TranslationalModification','SchemaClass','abstract','TRUE','SYMBOL',0),('TranslationalModification','SchemaClass','name','TranslationalModification','STRING',0),('TranslationalModification:coordinate','SchemaClassAttribute','class','TranslationalModification','SchemaClass',0),('TranslationalModification:coordinate','SchemaClassAttribute','name','coordinate','STRING',0),('TranslationalModification:coordinate','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('TranslationalModification:coordinate','SchemaClassAttribute','type','db_integer_type','STRING',0),('TranslationalModification:coordinate','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('TranslationalModification:coordinate','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('TranslationalModification:coordinate','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('TranslationalModification:coordinate','SchemaClassAttribute','category','REQUIRED','SYMBOL',0),('TranslationalModification:coordinate','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('TranslationalModification:psiMod','SchemaClassAttribute','class','TranslationalModification','SchemaClass',0),('TranslationalModification:psiMod','SchemaClassAttribute','name','psiMod','STRING',0),('TranslationalModification:psiMod','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('TranslationalModification:psiMod','SchemaClassAttribute','type','db_instance_type','STRING',0),('TranslationalModification:psiMod','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('TranslationalModification:psiMod','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('TranslationalModification:psiMod','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('TranslationalModification:psiMod','SchemaClassAttribute','allowed_classes','PsiMod','SchemaClass',0),('TranslationalModification:psiMod','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('TranslationalModification:psiMod','SchemaClassAttribute','value_defines_instance','all','SYMBOL',0),('_UpdateTracker','SchemaClass','super_classes','DatabaseObject','SchemaClass',0),('_UpdateTracker','SchemaClass','abstract',NULL,'SYMBOL',0),('_UpdateTracker','SchemaClass','name','_UpdateTracker','STRING',0),('_UpdateTracker:action','SchemaClassAttribute','class','_UpdateTracker','SchemaClass',0),('_UpdateTracker:action','SchemaClassAttribute','name','action','STRING',0),('action','SchemaClassAttribute','name','action','STRING',0),('_UpdateTracker:action','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('action','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_UpdateTracker:action','SchemaClassAttribute','type','db_string_type','STRING',0),('action','SchemaClassAttribute','type','db_string_type','STRING',0),('_UpdateTracker:action','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('action','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_UpdateTracker:action','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('action','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_UpdateTracker:action','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('action','SchemaClassAttribute','multiple','TRUE','SYMBOL',0),('_UpdateTracker:action','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_UpdateTracker:_release','SchemaClassAttribute','class','_UpdateTracker','SchemaClass',0),('_UpdateTracker:_release','SchemaClassAttribute','name','_release','STRING',0),('_release','SchemaClassAttribute','name','_release','STRING',0),('_UpdateTracker:_release','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_release','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_UpdateTracker:_release','SchemaClassAttribute','type','db_instance_type','STRING',0),('_release','SchemaClassAttribute','type','db_instance_type','STRING',0),('_UpdateTracker:_release','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_release','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_UpdateTracker:_release','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_release','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_UpdateTracker:_release','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_release','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_UpdateTracker:_release','SchemaClassAttribute','allowed_classes','_Release','SchemaClass',0),('_release','SchemaClassAttribute','allowed_classes','_Release','SchemaClass',0),('_UpdateTracker:_release','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_UpdateTracker:updatedInstance','SchemaClassAttribute','class','_UpdateTracker','SchemaClass',0),('_UpdateTracker:updatedInstance','SchemaClassAttribute','name','updatedInstance','STRING',0),('updatedInstance','SchemaClassAttribute','name','updatedInstance','STRING',0),('_UpdateTracker:updatedInstance','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('updatedInstance','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('_UpdateTracker:updatedInstance','SchemaClassAttribute','type','db_instance_type','STRING',0),('updatedInstance','SchemaClassAttribute','type','db_instance_type','STRING',0),('_UpdateTracker:updatedInstance','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('updatedInstance','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('_UpdateTracker:updatedInstance','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('updatedInstance','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('_UpdateTracker:updatedInstance','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('updatedInstance','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('_UpdateTracker:updatedInstance','SchemaClassAttribute','category','NOMANUALEDIT','SYMBOL',0),('_UpdateTracker:updatedInstance','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('updatedInstance','SchemaClassAttribute','allowed_classes','Event','SchemaClass',0),('_UpdateTracker:updatedInstance','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',1),('updatedInstance','SchemaClassAttribute','allowed_classes','PhysicalEntity','SchemaClass',1),('URL','SchemaClass','super_classes','Publication','SchemaClass',0),('URL','SchemaClass','abstract',NULL,'SYMBOL',0),('URL','SchemaClass','name','URL','STRING',0),('URL:uniformResourceLocator','SchemaClassAttribute','class','URL','SchemaClass',0),('URL:uniformResourceLocator','SchemaClassAttribute','name','uniformResourceLocator','STRING',0),('uniformResourceLocator','SchemaClassAttribute','name','uniformResourceLocator','STRING',0),('URL:uniformResourceLocator','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('uniformResourceLocator','SchemaClassAttribute','max_cardinality',NULL,'INTEGER',0),('URL:uniformResourceLocator','SchemaClassAttribute','type','db_string_type','STRING',0),('uniformResourceLocator','SchemaClassAttribute','type','db_string_type','STRING',0),('URL:uniformResourceLocator','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('uniformResourceLocator','SchemaClassAttribute','min_cardinality','0','INTEGER',0),('URL:uniformResourceLocator','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('uniformResourceLocator','SchemaClassAttribute','max_cardinality','0','INTEGER',0),('URL:uniformResourceLocator','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('uniformResourceLocator','SchemaClassAttribute','multiple',NULL,'SYMBOL',0),('URL:uniformResourceLocator','SchemaClassAttribute','category','MANDATORY','SYMBOL',0),('URL:uniformResourceLocator','SchemaClassAttribute','value_defines_instance','any','SYMBOL',0);