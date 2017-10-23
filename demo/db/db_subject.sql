CREATE SCHEMA `milestone` DEFAULT CHARACTER SET utf8 ;

CREATE  TABLE `milestone`.`mile_subject` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(45) NULL ,
  `content` TEXT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) );
  
  CREATE  TABLE `milestone`.`mile_subject_type` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) );
  
  CREATE  TABLE `milestone`.`mile_subject_type_map` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `subject_id` INT NULL ,
  `type_id` INT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX (`subject_id`),
  FOREIGN KEY (`subject_id`) REFERENCES mile_subject(`id`) ON DELETE CASCADE
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) );
  
  