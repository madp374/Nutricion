# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     path
# Server version:               5.0.37-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2012-12-05 13:17:53
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'path'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "path" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "path";


#
# Table structure for table 'jsample'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "jsample" (
  "name" varchar(50) default NULL,
  "id" int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  ("id")
);



#
# Dumping data for table 'jsample'
#

LOCK TABLES "jsample" WRITE;
/*!40000 ALTER TABLE "jsample" DISABLE KEYS;*/
REPLACE INTO "jsample" ("name", "id") VALUES
	('ganesh','1');
REPLACE INTO "jsample" ("name", "id") VALUES
	('Rengarajan','2');
REPLACE INTO "jsample" ("name", "id") VALUES
	('ganesh Rengarajan','3');
REPLACE INTO "jsample" ("name", "id") VALUES
	('vijaya','4');
REPLACE INTO "jsample" ("name", "id") VALUES
	('murali','5');
REPLACE INTO "jsample" ("name", "id") VALUES
	('karthik','6');
REPLACE INTO "jsample" ("name", "id") VALUES
	('shivani','7');
REPLACE INTO "jsample" ("name", "id") VALUES
	('tharadevi','8');
REPLACE INTO "jsample" ("name", "id") VALUES
	('anbu','9');
REPLACE INTO "jsample" ("name", "id") VALUES
	('balaji','10');
REPLACE INTO "jsample" ("name", "id") VALUES
	('vinoth','11');
REPLACE INTO "jsample" ("name", "id") VALUES
	('kelvin','12');
REPLACE INTO "jsample" ("name", "id") VALUES
	('lalitha','13');
REPLACE INTO "jsample" ("name", "id") VALUES
	('subnashe','14');
REPLACE INTO "jsample" ("name", "id") VALUES
	('ravi','15');
REPLACE INTO "jsample" ("name", "id") VALUES
	('ishu','16');
REPLACE INTO "jsample" ("name", "id") VALUES
	('murugan','17');
REPLACE INTO "jsample" ("name", "id") VALUES
	('vengat','18');
REPLACE INTO "jsample" ("name", "id") VALUES
	('anand','19');
REPLACE INTO "jsample" ("name", "id") VALUES
	('kumar','20');
/*!40000 ALTER TABLE "jsample" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
