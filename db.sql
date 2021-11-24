DROP DATABASE if EXISTS gabrielyoon7 ;
CREATE DATABASE gabrielyoon7 DEFAULT CHARACTER SET utf8mb4;
USE gabrielyoon7 ;

CREATE TABLE user(
                     `oid` INT(10) NOT NULL AUTO_INCREMENT,
                     `google_id` VARCHAR (100) NOT NULL,
                     `google_email` VARCHAR (100) NOT NULL,
                     `google_image_url` VARCHAR (100) DEFAULT NULL,
                     `google_name` VARCHAR (100) DEFAULT NULL,
                     `name` VARCHAR (20) NOT NULL,
                     `birthday` DATE,
                     `gender` VARCHAR (5),
                     `phone` VARCHAR (20),
                     `type` VARCHAR (10) NOT NULL,
                     PRIMARY KEY (`oid`)
);
