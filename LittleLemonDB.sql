-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleLemonDB` DEFAULT CHARACTER SET utf8mb3 ;
USE `LittleLemonDB` ;

-- -----------------------------------------------------
-- Table `LittleLemonDB`.`CustomerDetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`CustomerDetails` (
  `CustomerDetailsID` INT NOT NULL AUTO_INCREMENT,
  `CustomerName` VARCHAR(45) NULL DEFAULT NULL,
  `CustomerPhone` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerDetailsID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`DeliveryStatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`DeliveryStatus` (
  `DeliveryStatusID` INT NOT NULL AUTO_INCREMENT,
  `DeliveryDate` DATETIME NOT NULL,
  `Status` INT NOT NULL,
  PRIMARY KEY (`DeliveryStatusID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`MenuItems`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`MenuItems` (
  `MenuItemsID` INT NOT NULL AUTO_INCREMENT,
  `Cuisine` VARCHAR(45) NOT NULL,
  `Starter` VARCHAR(45) NOT NULL,
  `Dessert` VARCHAR(45) NOT NULL,
  `CourseName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`MenuItemsID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Menu` (
  `MenuID` INT NOT NULL AUTO_INCREMENT,
  `MenuItemsID` INT NOT NULL,
  `MenuName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`MenuID`),
  INDEX `MenuItemsID_idx` (`MenuItemsID` ASC) VISIBLE,
  CONSTRAINT `MenuItemsID`
    FOREIGN KEY (`MenuItemsID`)
    REFERENCES `LittleLemonDB`.`MenuItems` (`MenuItemsID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`StaffMember`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`StaffMember` (
  `StaffMemberID` INT NOT NULL AUTO_INCREMENT,
  `StaffRole` VARCHAR(45) NOT NULL,
  `StaffSalary` INT NOT NULL,
  PRIMARY KEY (`StaffMemberID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Orders` (
  `OrderDate` DATETIME NOT NULL,
  `Quantity` INT NOT NULL,
  `TotalCost` DECIMAL(5,0) NOT NULL,
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `DeliveryStatusID` INT NOT NULL,
  `StaffMemberID` INT NOT NULL,
  `MenuItems` INT NOT NULL,
  `CustomerID` INT NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `DeliveryStatusID_idx` (`DeliveryStatusID` ASC) VISIBLE,
  INDEX `StaffMemberID_idx` (`StaffMemberID` ASC) VISIBLE,
  INDEX `MenuItems_idx` (`MenuItems` ASC) VISIBLE,
  CONSTRAINT `DeliveryStatusID`
    FOREIGN KEY (`DeliveryStatusID`)
    REFERENCES `LittleLemonDB`.`DeliveryStatus` (`DeliveryStatusID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `MenuItems`
    FOREIGN KEY (`MenuItems`)
    REFERENCES `LittleLemonDB`.`Menu` (`MenuID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `StaffMemberID`
    FOREIGN KEY (`StaffMemberID`)
    REFERENCES `LittleLemonDB`.`StaffMember` (`StaffMemberID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Bookings` (
  `BookingID` INT NOT NULL AUTO_INCREMENT,
  `TableNumber` VARCHAR(45) NOT NULL,
  `BookingDate` DATETIME NOT NULL,
  `CustomerDetailsID` INT NULL DEFAULT NULL,
  `OrderID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  INDEX `CustomerDetailsID_idx` (`CustomerDetailsID` ASC) VISIBLE,
  INDEX `OrderID_idx` (`OrderID` ASC) VISIBLE,
  CONSTRAINT `CustomerDetailsID`
    FOREIGN KEY (`CustomerDetailsID`)
    REFERENCES `LittleLemonDB`.`CustomerDetails` (`CustomerDetailsID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `OrderID`
    FOREIGN KEY (`OrderID`)
    REFERENCES `LittleLemonDB`.`Orders` (`OrderID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
