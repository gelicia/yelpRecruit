# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.9)
# Database: yelpRecruit
# Generation Time: 2013-05-08 12:33:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table business
# ------------------------------------------------------------

DROP TABLE IF EXISTS `business`;

CREATE TABLE `business` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(300) DEFAULT NULL,
  `fullAddr` varchar(300) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `avgStars` decimal(2,1) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `open` tinyint(1) DEFAULT NULL,
  `reviewCnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table business_cat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `business_cat`;

CREATE TABLE `business_cat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `businessID` int(11) DEFAULT NULL,
  `catID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table checkin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `checkin`;

CREATE TABLE `checkin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `businessGuid` varchar(30) DEFAULT '0',
  `sun_0` int(11) DEFAULT '0',
  `sun_1` int(11) DEFAULT '0',
  `sun_2` int(11) DEFAULT '0',
  `sun_3` int(11) DEFAULT '0',
  `sun_4` int(11) DEFAULT '0',
  `sun_5` int(11) DEFAULT '0',
  `sun_6` int(11) DEFAULT '0',
  `sun_7` int(11) DEFAULT '0',
  `sun_8` int(11) DEFAULT '0',
  `sun_9` int(11) DEFAULT '0',
  `sun_10` int(11) DEFAULT '0',
  `sun_11` int(11) DEFAULT '0',
  `sun_12` int(11) DEFAULT '0',
  `sun_13` int(11) DEFAULT '0',
  `sun_14` int(11) DEFAULT '0',
  `sun_15` int(11) DEFAULT '0',
  `sun_16` int(11) DEFAULT '0',
  `sun_17` int(11) DEFAULT '0',
  `sun_18` int(11) DEFAULT '0',
  `sun_19` int(11) DEFAULT '0',
  `sun_20` int(11) DEFAULT '0',
  `sun_21` int(11) DEFAULT '0',
  `sun_22` int(11) DEFAULT '0',
  `sun_23` int(11) DEFAULT '0',
  `mon_0` int(11) DEFAULT '0',
  `mon_1` int(11) DEFAULT '0',
  `mon_2` int(11) DEFAULT '0',
  `mon_3` int(11) DEFAULT '0',
  `mon_4` int(11) DEFAULT '0',
  `mon_5` int(11) DEFAULT '0',
  `mon_6` int(11) DEFAULT '0',
  `mon_7` int(11) DEFAULT '0',
  `mon_8` int(11) DEFAULT '0',
  `mon_9` int(11) DEFAULT '0',
  `mon_10` int(11) DEFAULT '0',
  `mon_11` int(11) DEFAULT '0',
  `mon_12` int(11) DEFAULT '0',
  `mon_13` int(11) DEFAULT '0',
  `mon_14` int(11) DEFAULT '0',
  `mon_15` int(11) DEFAULT '0',
  `mon_16` int(11) DEFAULT '0',
  `mon_17` int(11) DEFAULT '0',
  `mon_18` int(11) DEFAULT '0',
  `mon_19` int(11) DEFAULT '0',
  `mon_20` int(11) DEFAULT '0',
  `mon_21` int(11) DEFAULT '0',
  `mon_22` int(11) DEFAULT '0',
  `mon_23` int(11) DEFAULT '0',
  `tue_0` int(11) DEFAULT '0',
  `tue_1` int(11) DEFAULT '0',
  `tue_2` int(11) DEFAULT '0',
  `tue_3` int(11) DEFAULT '0',
  `tue_4` int(11) DEFAULT '0',
  `tue_5` int(11) DEFAULT '0',
  `tue_6` int(11) DEFAULT '0',
  `tue_7` int(11) DEFAULT '0',
  `tue_8` int(11) DEFAULT '0',
  `tue_9` int(11) DEFAULT '0',
  `tue_10` int(11) DEFAULT '0',
  `tue_11` int(11) DEFAULT '0',
  `tue_12` int(11) DEFAULT '0',
  `tue_13` int(11) DEFAULT '0',
  `tue_14` int(11) DEFAULT '0',
  `tue_15` int(11) DEFAULT '0',
  `tue_16` int(11) DEFAULT '0',
  `tue_17` int(11) DEFAULT '0',
  `tue_18` int(11) DEFAULT '0',
  `tue_19` int(11) DEFAULT '0',
  `tue_20` int(11) DEFAULT '0',
  `tue_21` int(11) DEFAULT '0',
  `tue_22` int(11) DEFAULT '0',
  `tue_23` int(11) DEFAULT '0',
  `wed_0` int(11) DEFAULT '0',
  `wed_1` int(11) DEFAULT '0',
  `wed_2` int(11) DEFAULT '0',
  `wed_3` int(11) DEFAULT '0',
  `wed_4` int(11) DEFAULT '0',
  `wed_5` int(11) DEFAULT '0',
  `wed_6` int(11) DEFAULT '0',
  `wed_7` int(11) DEFAULT '0',
  `wed_8` int(11) DEFAULT '0',
  `wed_9` int(11) DEFAULT '0',
  `wed_10` int(11) DEFAULT '0',
  `wed_11` int(11) DEFAULT '0',
  `wed_12` int(11) DEFAULT '0',
  `wed_13` int(11) DEFAULT '0',
  `wed_14` int(11) DEFAULT '0',
  `wed_15` int(11) DEFAULT '0',
  `wed_16` int(11) DEFAULT '0',
  `wed_17` int(11) DEFAULT '0',
  `wed_18` int(11) DEFAULT '0',
  `wed_19` int(11) DEFAULT '0',
  `wed_20` int(11) DEFAULT '0',
  `wed_21` int(11) DEFAULT '0',
  `wed_22` int(11) DEFAULT '0',
  `wed_23` int(11) DEFAULT '0',
  `thu_0` int(11) DEFAULT '0',
  `thu_1` int(11) DEFAULT '0',
  `thu_2` int(11) DEFAULT '0',
  `thu_3` int(11) DEFAULT '0',
  `thu_4` int(11) DEFAULT '0',
  `thu_5` int(11) DEFAULT '0',
  `thu_6` int(11) DEFAULT '0',
  `thu_7` int(11) DEFAULT '0',
  `thu_8` int(11) DEFAULT '0',
  `thu_9` int(11) DEFAULT '0',
  `thu_10` int(11) DEFAULT '0',
  `thu_11` int(11) DEFAULT '0',
  `thu_12` int(11) DEFAULT '0',
  `thu_13` int(11) DEFAULT '0',
  `thu_14` int(11) DEFAULT '0',
  `thu_15` int(11) DEFAULT '0',
  `thu_16` int(11) DEFAULT '0',
  `thu_17` int(11) DEFAULT '0',
  `thu_18` int(11) DEFAULT '0',
  `thu_19` int(11) DEFAULT '0',
  `thu_20` int(11) DEFAULT '0',
  `thu_21` int(11) DEFAULT '0',
  `thu_22` int(11) DEFAULT '0',
  `thu_23` int(11) DEFAULT '0',
  `fri_0` int(11) DEFAULT '0',
  `fri_1` int(11) DEFAULT '0',
  `fri_2` int(11) DEFAULT '0',
  `fri_3` int(11) DEFAULT '0',
  `fri_4` int(11) DEFAULT '0',
  `fri_5` int(11) DEFAULT '0',
  `fri_6` int(11) DEFAULT '0',
  `fri_7` int(11) DEFAULT '0',
  `fri_8` int(11) DEFAULT '0',
  `fri_9` int(11) DEFAULT '0',
  `fri_10` int(11) DEFAULT '0',
  `fri_11` int(11) DEFAULT '0',
  `fri_12` int(11) DEFAULT '0',
  `fri_13` int(11) DEFAULT '0',
  `fri_14` int(11) DEFAULT '0',
  `fri_15` int(11) DEFAULT '0',
  `fri_16` int(11) DEFAULT '0',
  `fri_17` int(11) DEFAULT '0',
  `fri_18` int(11) DEFAULT '0',
  `fri_19` int(11) DEFAULT '0',
  `fri_20` int(11) DEFAULT '0',
  `fri_21` int(11) DEFAULT '0',
  `fri_22` int(11) DEFAULT '0',
  `fri_23` int(11) DEFAULT '0',
  `sat_0` int(11) DEFAULT '0',
  `sat_1` int(11) DEFAULT '0',
  `sat_2` int(11) DEFAULT '0',
  `sat_3` int(11) DEFAULT '0',
  `sat_4` int(11) DEFAULT '0',
  `sat_5` int(11) DEFAULT '0',
  `sat_6` int(11) DEFAULT '0',
  `sat_7` int(11) DEFAULT '0',
  `sat_8` int(11) DEFAULT '0',
  `sat_9` int(11) DEFAULT '0',
  `sat_10` int(11) DEFAULT '0',
  `sat_11` int(11) DEFAULT '0',
  `sat_12` int(11) DEFAULT '0',
  `sat_13` int(11) DEFAULT '0',
  `sat_14` int(11) DEFAULT '0',
  `sat_15` int(11) DEFAULT '0',
  `sat_16` int(11) DEFAULT '0',
  `sat_17` int(11) DEFAULT '0',
  `sat_18` int(11) DEFAULT '0',
  `sat_19` int(11) DEFAULT '0',
  `sat_20` int(11) DEFAULT '0',
  `sat_21` int(11) DEFAULT '0',
  `sat_22` int(11) DEFAULT '0',
  `sat_23` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table review
# ------------------------------------------------------------

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userGuid` varchar(30) DEFAULT NULL,
  `businessGuid` varchar(30) DEFAULT NULL,
  `guid` varchar(30) DEFAULT NULL,
  `text` text,
  `stars` decimal(2,1) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `usefulVotes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(30) DEFAULT NULL,
  `avgStars` decimal(5,4) DEFAULT NULL,
  `reviewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
