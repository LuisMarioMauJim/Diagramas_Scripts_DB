-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Persona
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Persona
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Persona` DEFAULT CHARACTER SET utf8 ;
USE `Persona` ;

-- -----------------------------------------------------
-- Table `Persona`.`PERSONA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Persona`.`PERSONA` (
  `dni` INT NOT NULL,
  `nombre` VARCHAR(20) NOT NULL,
  `apellidoPaterno` VARCHAR(15) NOT NULL,
  `apellidoMaterno` VARCHAR(15) NOT NULL,
  `edad` VARCHAR(45) NULL,
  PRIMARY KEY (`dni`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Persona`.`FECHA DE NACIMIENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Persona`.`FECHA DE NACIMIENTO` (
  `dia_nacimiento` INT NOT NULL,
  `mes_nacimiento` VARCHAR(45) NULL,
  `año_nacimiento` VARCHAR(45) NULL,
  `PERSONA_dni` INT NOT NULL,
  PRIMARY KEY (`dia_nacimiento`),
  INDEX `fk_FECHA DE NACIMIENTO_PERSONA_idx` (`PERSONA_dni` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
