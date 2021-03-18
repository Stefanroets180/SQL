-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema links
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema links
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `links` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `links` ;

-- -----------------------------------------------------
-- Table `links`.`profession`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`profession` (
  `prof_id` INT NOT NULL AUTO_INCREMENT,
  `profession` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`prof_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `links`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`status` (
  `status_id` INT NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`status_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `links`.`zip_code`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`zip_code` (
  `zip_code` INT NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(50) NULL DEFAULT NULL,
  `state` VARCHAR(2) NULL DEFAULT NULL,
  PRIMARY KEY (`zip_code`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `links`.`my_contacts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`my_contacts` (
  `contact_id` INT NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(30) NULL DEFAULT NULL,
  `first_name` VARCHAR(20) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `gender` CHAR(1) NULL DEFAULT NULL,
  `birthday` DATE NULL DEFAULT NULL,
  `prof_id` INT NULL DEFAULT NULL,
  `zip_code` INT NULL DEFAULT NULL,
  `status_id` INT NULL DEFAULT NULL,
  `interests` VARCHAR(100) NULL DEFAULT NULL,
  `seeking` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  INDEX `my_contacts_prof_id_fk_1` (`prof_id` ASC) VISIBLE,
  INDEX `my_contacts_zip_code_fk_2` (`zip_code` ASC) VISIBLE,
  INDEX `my_contacts_status_id_fk_2` (`status_id` ASC) VISIBLE,
  CONSTRAINT `my_contacts_prof_id_fk_1`
    FOREIGN KEY (`prof_id`)
    REFERENCES `links`.`profession` (`prof_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `my_contacts_status_id_fk_2`
    FOREIGN KEY (`status_id`)
    REFERENCES `links`.`status` (`status_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `my_contacts_zip_code_fk_2`
    FOREIGN KEY (`zip_code`)
    REFERENCES `links`.`zip_code` (`zip_code`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `links`.`interests`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`interests` (
  `int_id` INT NOT NULL AUTO_INCREMENT,
  `interest` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`int_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 24
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `links`.`contact_interest`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`contact_interest` (
  `contact_id` INT NOT NULL,
  `int_id` INT NOT NULL,
  PRIMARY KEY (`contact_id`, `int_id`),
  INDEX `contact_interest_fk_idx` (`int_id` ASC) VISIBLE,
  CONSTRAINT `contact_interest_ibfk_1`
    FOREIGN KEY (`contact_id`)
    REFERENCES `links`.`my_contacts` (`contact_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `contact_interest_fk`
    FOREIGN KEY (`int_id`)
    REFERENCES `links`.`interests` (`int_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `links`.`seeking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`seeking` (
  `seeking_id` INT NOT NULL AUTO_INCREMENT,
  `seeking` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`seeking_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `links`.`contact_seeking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`contact_seeking` (
  `contact_id` INT NOT NULL,
  `seeking_id` INT NOT NULL,
  PRIMARY KEY (`contact_id`, `seeking_id`),
  INDEX `seeking_id` (`seeking_id` ASC) VISIBLE,
  CONSTRAINT `contact_seeking_ibfk_1`
    FOREIGN KEY (`contact_id`)
    REFERENCES `links`.`my_contacts` (`contact_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `contact_seeking_ibfk_2`
    FOREIGN KEY (`seeking_id`)
    REFERENCES `links`.`seeking` (`seeking_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `links`.`interest`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`interest` (
  `interest_id` INT NOT NULL AUTO_INCREMENT,
  `interest` VARCHAR(100) NULL DEFAULT NULL,
  `interest1` VARCHAR(100) NULL DEFAULT NULL,
  `interest2` VARCHAR(100) NULL DEFAULT NULL,
  `interest3` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`interest_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 73
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `links`.`interest_separate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`interest_separate` (
  `interest` VARCHAR(100) NULL DEFAULT NULL,
  `interest1` VARCHAR(100) NULL DEFAULT NULL,
  `interest2` VARCHAR(100) NULL DEFAULT NULL,
  `interest3` VARCHAR(100) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `links`.`job_current`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`job_current` (
  `contact_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(30) NOT NULL,
  `salary` INT NOT NULL,
  `start_date` DATE NOT NULL,
  PRIMARY KEY (`contact_id`),
  CONSTRAINT `fk_my_contacts`
    FOREIGN KEY (`contact_id`)
    REFERENCES `links`.`my_contacts` (`contact_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `links`.`job_listings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`job_listings` (
  `job_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50) NOT NULL,
  `salary` INT NOT NULL,
  `zip` INT NOT NULL,
  `description` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `links`.`job_desired`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `links`.`job_desired` (
  `title` VARCHAR(30) NOT NULL,
  `salary_low` INT NOT NULL,
  `salary_high` INT NOT NULL,
  `available` VARCHAR(20) NOT NULL,
  `years_exp` INT NOT NULL,
  `contact_id` INT NOT NULL,
  `job_id` INT NULL,
  PRIMARY KEY (`contact_id`),
  INDEX `fk_job_id_idx` (`job_id` ASC) VISIBLE,
  CONSTRAINT `fk_job_desired`
    FOREIGN KEY (`contact_id`)
    REFERENCES `links`.`my_contacts` (`contact_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_job_id`
    FOREIGN KEY (`job_id`)
    REFERENCES `links`.`job_listings` (`job_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
