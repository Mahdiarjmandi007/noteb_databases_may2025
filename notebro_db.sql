-- phpMyAdmin SQL Dump
-- version 5.2.0-rc1-1.el7.remi
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2025 at 03:34 PM
-- Server version: 10.11.9-MariaDB-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notebro_db`
--
CREATE DATABASE IF NOT EXISTS `notebro_db` DEFAULT CHARACTER SET utf16 COLLATE utf16_general_ci;
USE `notebro_db`;

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `ABCORDER`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `ABCORDER` ()  NO SQL BEGIN
SET @tablename = "MODEL";

SET @temptbl = "temptable";

SET @sql_text = CONCAT("DROP TABLE IF EXISTS ",@temptbl); PREPARE stmt from @sql_text;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @sql_text = CONCAT("CREATE TABLE ",@temptbl," (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, model INT)");
PREPARE stmt from @sql_text;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @sql_text = CONCAT("INSERT INTO ",@temptbl," (model) SELECT MODEL.id FROM MODEL LEFT JOIN FAMILIES as fam ON fam.id=MODEL.idfam ORDER BY `MODEL`.`prod` ASC, fam.fam ASC, fam.subfam ASC, `MODEL`.`model` ASC");
#SELECT @sql_text;
PREPARE stmt from @sql_text;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @sql_text = CONCAT('UPDATE ',@tablename,' SET idabc=( SELECT id FROM temptable WHERE ',@temptbl,'.model=MODEL.id)');
PREPARE stmt1 FROM @sql_text;
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1;

SET @sql_text = CONCAT('DROP TABLE IF EXISTS ',@temptbl);
PREPARE stmt1 FROM @sql_text;
EXECUTE stmt1;
DEALLOCATE PREPARE stmt1;

END$$

DROP PROCEDURE IF EXISTS `check_tbl`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `check_tbl` (IN `table_name` CHAR(64))  NO SQL BEGIN
    DECLARE CONTINUE HANDLER FOR SQLSTATE '42S02' SET @err = 1;
    SET @err = 0;
    SET @table_name = table_name;
    SET @sql_query = CONCAT('SELECT NULL FROM ',@table_name);
    PREPARE stmt1 FROM @sql_query;
    
    IF (@err = 1) THEN
        SET @table_exists = 0;
    ELSE
        SET @table_exists = 1;
        DEALLOCATE PREPARE stmt1;
    END IF;
END$$

DROP PROCEDURE IF EXISTS `Display_Duplicates`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `Display_Duplicates` ()  NO SQL SELECT
    *,COUNT(*)
FROM
    DISPLAY
GROUP BY
    rating
HAVING 
    COUNT(*) > 1$$

DROP PROCEDURE IF EXISTS `REORDER`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `REORDER` ()  NO SQL BEGIN
SET @tablename = "reordertbl";

SET @sql_text = CONCAT("DROP TABLE ",@tablename); PREPARE stmt from @sql_text;
#EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @sql_text = CONCAT("CREATE TABLE ",@tablename," LIKE notebro_db.MODEL"); PREPARE stmt from @sql_text;
#EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @sql_text = CONCAT("ALTER TABLE ",@tablename," DROP `id`"); PREPARE stmt from @sql_text;
#EXECUTE stmt;
#DEALLOCATE PREPARE stmt;


#SET @sql = CONCAT('INSERT INTO ',@tablename, ' SELECT ', (SELECT #REPLACE(GROUP_CONCAT(COLUMN_NAME), 'id,', '') FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'MODEL' AND TABLE_SCHEMA = 'notebro_db'),' FROM MODEL ORDER BY `MODEL`.`prod` ASC, `MODEL`.`fam` ASC, `MODEL`.`model` ASC');
PREPARE stmt1 FROM @sql;
#EXECUTE stmt1;

SET @sql_text = CONCAT("TRUNCATE TABLE MODEL"); PREPARE stmt from @sql_text;
DEALLOCATE PREPARE stmt;

SET @sql = CONCAT('INSERT INTO MODEL(',(SELECT REPLACE(GROUP_CONCAT(COLUMN_NAME), 'id,', '') FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'MODEL' AND TABLE_SCHEMA = 'notebro_db'),') SELECT * FROM ',@tablename);
#PREPARE stmt1 FROM @sql;

SELECT @sql;

END$$

DROP PROCEDURE IF EXISTS `REPLACE_STRING`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `REPLACE_STRING` (IN `table_name` VARCHAR(100), IN `column_name` VARCHAR(100), IN `string_what` VARCHAR(100), IN `string_with` VARCHAR(100))  NO SQL BEGIN
SET @sql_text = CONCAT("UPDATE ",@p0," SET ",@p1,"= REPLACE (",@p1,",'",@p2,"','",@p3,"') WHERE ",@p1," LIKE '%",@p2,"%'");
SELECT @sql_text;
PREPARE stmt from @sql_text;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

DROP PROCEDURE IF EXISTS `REPLACE_STRING_CHASSIS_KEY`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `REPLACE_STRING_CHASSIS_KEY` (IN `string_what` VARCHAR(100), IN `string_with` VARCHAR(100))  NO SQL BEGIN SET @sql_text = CONCAT("UPDATE CHASSIS SET keyboard= REPLACE (keyboard,'",@p0,"','",@p1,"') WHERE keyboard LIKE '%",@p0,"%'"); SELECT @sql_text; PREPARE stmt from @sql_text; EXECUTE stmt; DEALLOCATE PREPARE stmt; END$$

DROP PROCEDURE IF EXISTS `REPLACE_STRING_CHASSIS_MSC`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `REPLACE_STRING_CHASSIS_MSC` (IN `string_what` VARCHAR(100), IN `string_with` VARCHAR(100))  NO SQL BEGIN

SET @sql_text = CONCAT("UPDATE CHASSIS SET MSC= REPLACE (MSC,'",@p0,"','",@p1,"') WHERE MSC LIKE '%",@p0,"%'");
SELECT @sql_text;
PREPARE stmt from @sql_text;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

DROP PROCEDURE IF EXISTS `REPLACE_STRING_CHASSIS_pi`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `REPLACE_STRING_CHASSIS_pi` (IN `string_what` VARCHAR(100), IN `string_with` VARCHAR(100))  NO SQL BEGIN SET @sql_text = CONCAT("UPDATE CHASSIS SET pi= REPLACE (pi,'",@p0,"','",@p1,"') WHERE pi LIKE '%",@p0,"%'"); SELECT @sql_text; PREPARE stmt from @sql_text; EXECUTE stmt; DEALLOCATE PREPARE stmt; END$$

DROP PROCEDURE IF EXISTS `SEARCH_MODEL`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `SEARCH_MODEL` (IN `table` VARCHAR(50), IN `text` VARCHAR(50))  NO SQL BEGIN

SET @sql_text = CONCAT("SELECT * FROM ",@p0," WHERE MODEL LIKE '%",@p1,"%'");
PREPARE stmt from @sql_text;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END$$

DROP PROCEDURE IF EXISTS `temp_tbl`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `temp_tbl` ()  NO SQL BEGIN
SET @date=DATE_FORMAT(now(),"%Y%m%d");
SET @random = FLOOR(RAND()*(999999999999999-0)+0);
SET @tablename = CONCAT("tt",@date,@random);

CALL check_tbl(@tablename);

WHILE @table_exists!=0 DO
SET @random = FLOOR(RAND()*(999999999999999-0)+0);
SET @tablename = CONCAT("tt",@date,@random);
CALL check_tbl(@tablename);
END WHILE;

SET @sql_text = CONCAT("CREATE TEMPORARY TABLE ",@tablename," (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, model INT(6), cpu INT(6), display INT(6), mem INT(6), hdd INT(6), shhd INT(6), gpu INT(6), wnet INT(6), odd INT(6), mdb INT(6), chassis INT(6), acum INT(6), war INT(6), sist INT(6), rating INT(6), price INT(6), value FLOAT,  confg_code INT(20) UNIQUE) ENGINE MEMORY"); PREPARE stmt from @sql_text;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
SELECT @tablename;
END$$

DROP PROCEDURE IF EXISTS `test`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `test` (OUT `ending_value` INT)   BEGIN
   DECLARE total_value INT;
   DECLARE v INT;
   DECLARE random BIGINT;
   DECLARE tablename VARCHAR(17);
  
  
  SET random = FLOOR(RAND()*(999999999999999-0)+0);
  SET tablename = CONCAT('tt',random);
  SET random = FLOOR(RAND()*(99999-0)+0);
  SET tablename = CONCAT(tablename,random);
 
  SET @sql_text = concat('CREATE TEMPORARY TABLE ',tablename,'');
      
 SELECT tablename;
  
  SET total_value = 50;

   label1: WHILE total_value <= 3000 DO
     SET total_value = total_value * 2;
   END WHILE label1;

   SET ending_value = total_value;
   
   
   SELECT id FROM CPU LIMIT 1 INTO v;

   
   SELECT * from CPU WHERE TDP>35 AND TDP<55;
   
   SELECT * from CPU WHERE TDP>10 AND TDP<35;
END$$

DROP PROCEDURE IF EXISTS `update ratings`$$
CREATE DEFINER=`notebro_db`@`%` PROCEDURE `update ratings` ()  NO SQL UPDATE notebro_db.GPU db
INNER JOIN notebro_rate.GPU rate ON db.id = rate.id
SET db.rating=rate.ratingnew$$

--
-- Functions
--
DROP FUNCTION IF EXISTS `GEN_NAME`$$
CREATE DEFINER=`notebro_db`@`%` FUNCTION `GEN_NAME` (`id` INT(11)) RETURNS VARCHAR(200) CHARSET utf16  BEGIN

DECLARE select_var VARCHAR(200);
SELECT REGEXP_REPLACE(CONCAT(`notebro_db`.`MODEL`.`prod`,' ',IFNULL((SELECT `notebro_db`.`FAMILIES`.`fam` FROM `notebro_db`.`FAMILIES` WHERE `notebro_db`.`FAMILIES`.`id`=`notebro_db`.`MODEL`.`idfam`),''),' ',IFNULL((SELECT `notebro_db`.`FAMILIES`.`subfam` FROM `notebro_db`.`FAMILIES` WHERE `notebro_db`.`FAMILIES`.`id`=`notebro_db`.`MODEL`.`idfam` and `notebro_db`.`FAMILIES`.`showsubfam`=1),''),' ',`notebro_db`.`MODEL`.`model`),'[[:space:]]+',' ') INTO select_var FROM `notebro_db`.`MODEL` WHERE `notebro_db`.`MODEL`.`id`=id LIMIT 1;
RETURN select_var;

END$$

DROP FUNCTION IF EXISTS `GEN_NAME_WSUBMODEL`$$
CREATE DEFINER=`notebro_db`@`%` FUNCTION `GEN_NAME_WSUBMODEL` (`id` INT(11)) RETURNS VARCHAR(200) CHARSET utf16  BEGIN

DECLARE select_var VARCHAR(200);
SELECT REGEXP_REPLACE(CONCAT(`notebro_db`.`MODEL`.`prod`,' ',IFNULL((SELECT `notebro_db`.`FAMILIES`.`fam` FROM `notebro_db`.`FAMILIES` WHERE `notebro_db`.`FAMILIES`.`id`=`notebro_db`.`MODEL`.`idfam`),''),' ',IFNULL((SELECT `notebro_db`.`FAMILIES`.`subfam` FROM `notebro_db`.`FAMILIES` WHERE `notebro_db`.`FAMILIES`.`id`=`notebro_db`.`MODEL`.`idfam` and `notebro_db`.`FAMILIES`.`showsubfam`=1),''),' ',`notebro_db`.`MODEL`.`model`,`notebro_db`.`MODEL`.`submodel`),'[[:space:]]+',' ') INTO select_var FROM `notebro_db`.`MODEL` WHERE `notebro_db`.`MODEL`.`id`=id LIMIT 1;
RETURN select_var;

END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
