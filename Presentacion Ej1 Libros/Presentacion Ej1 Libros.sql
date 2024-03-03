-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ejemplo-entidad-relacion
-- -----------------------------------------------------
-- ejemplo de transformaion al esquema ER

-- -----------------------------------------------------
-- Schema ejemplo-entidad-relacion
--
-- ejemplo de transformaion al esquema ER
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ejemplo-entidad-relacion` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `ejemplo-entidad-relacion` ;

-- -----------------------------------------------------
-- Table `ejemplo-entidad-relacion`.`autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ejemplo-entidad-relacion`.`autor` (
  `autor` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`autor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ejemplo-entidad-relacion`.`edicion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ejemplo-entidad-relacion`.`edicion` (
  `año` INT NOT NULL,
  PRIMARY KEY (`año`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ejemplo-entidad-relacion`.`libro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ejemplo-entidad-relacion`.`libro` (
  `ISBN` INT NOT NULL,
  `Titulo_principal` VARCHAR(45) NOT NULL,
  `subtitulo` VARCHAR(45) NULL,
  `editorial` VARCHAR(10) NULL,
  `idioma` VARCHAR(15) NULL,
  `edicion_año` INT NOT NULL,
  `autor_autor` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ISBN`),
  INDEX `fk_libro_edicion_idx` (`edicion_año` ASC) VISIBLE,
  INDEX `fk_libro_autor1_idx` (`autor_autor` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
