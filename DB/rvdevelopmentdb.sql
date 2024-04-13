-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema rvdevelopmentdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `rvdevelopmentdb` ;

-- -----------------------------------------------------
-- Schema rvdevelopmentdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `rvdevelopmentdb` DEFAULT CHARACTER SET utf8 ;
USE `rvdevelopmentdb` ;

-- -----------------------------------------------------
-- Table `land_acquisition`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `land_acquisition` ;

CREATE TABLE IF NOT EXISTS `land_acquisition` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `parcel_id` VARCHAR(255) NOT NULL,
  `street_address` VARCHAR(255) NULL,
  `city` VARCHAR(100) NULL,
  `county` VARCHAR(100) NULL,
  `state` VARCHAR(2) NULL,
  `zipcode` VARCHAR(45) NULL,
  `latitude` DECIMAL(10,8) NULL,
  `longitude` DECIMAL(10,8) NULL,
  `zoning_status` VARCHAR(45) NULL,
  `size` DECIMAL(10,2) NULL,
  `land_status` VARCHAR(45) NULL,
  `asking_price` DECIMAL(13,2) NULL,
  `purchase_price` DECIMAL(13,2) NULL,
  `utilities_status` VARCHAR(255) NULL,
  `contract_date` DATETIME NULL,
  `closing_date` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS student;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'student' IDENTIFIED BY 'student';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'student';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `land_acquisition`
-- -----------------------------------------------------
START TRANSACTION;
USE `rvdevelopmentdb`;
INSERT INTO `land_acquisition` (`id`, `parcel_id`, `street_address`, `city`, `county`, `state`, `zipcode`, `latitude`, `longitude`, `zoning_status`, `size`, `land_status`, `asking_price`, `purchase_price`, `utilities_status`, `contract_date`, `closing_date`) VALUES (1, '1001', '123 Greenway Blvd', 'Santa Fe', 'Santa Fe', 'NM', '87501', NULL, NULL, 'Residential', 10.5, 'For Sale', 500000, 500000, 'None', NULL, NULL);
INSERT INTO `land_acquisition` (`id`, `parcel_id`, `street_address`, `city`, `county`, `state`, `zipcode`, `latitude`, `longitude`, `zoning_status`, `size`, `land_status`, `asking_price`, `purchase_price`, `utilities_status`, `contract_date`, `closing_date`) VALUES (2, '156454', NULL, 'Taos', 'Taos', 'NM', '87571', NULL, NULL, 'Agricultural', 50.0, 'Interested', NULL, NULL, 'Water, Electric', NULL, NULL);
INSERT INTO `land_acquisition` (`id`, `parcel_id`, `street_address`, `city`, `county`, `state`, `zipcode`, `latitude`, `longitude`, `zoning_status`, `size`, `land_status`, `asking_price`, `purchase_price`, `utilities_status`, `contract_date`, `closing_date`) VALUES (3, '546898722132', '789 Desert Rd', 'Albuquerque', 'Bernalillo', 'NM', '87102', NULL, NULL, 'Commercial', 5.0, 'Under Contract', 350000, 300000, 'All', '2023-01-15', NULL);

COMMIT;

