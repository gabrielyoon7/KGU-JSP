DROP DATABASE if EXISTS gabrielyoon7 ;
CREATE DATABASE gabrielyoon7 DEFAULT CHARACTER SET utf8mb4;
USE gabrielyoon7 ;

CREATE TABLE user(
                     `oid` INT(10) NOT NULL AUTO_INCREMENT,
                     `google_id` VARCHAR (100) NOT NULL,
                     `google_email` VARCHAR (100) NOT NULL,
                     `google_image_url` VARCHAR (100) DEFAULT NULL,
                     `google_name` VARCHAR (100) DEFAULT NULL,
                     `univ_id` VARCHAR (20) NOT NULL,
                     `name` VARCHAR (20) NOT NULL,
                     `birthday` DATE,
                     `gender` VARCHAR (5),
                     `phone` VARCHAR (20),
                     `type` VARCHAR (10) NOT NULL,
                     `major` VARCHAR (20) NOT NULL,
                     PRIMARY KEY (`oid`)
);

CREATE TABLE usertype(
                         `type_name` varchar(45) NOT NULL,
                         `board_level` int NOT NULL,
                         `for_header` varchar(45) NOT NULL,
                         PRIMARY KEY(`type_name`)
);

INSERT INTO usertype(type_name,board_level,for_header) VALUE('홈페이지관리자', '0', '관리자');
INSERT INTO usertype(type_name,board_level,for_header) VALUE('교수', '1', '교수');
INSERT INTO usertype(type_name,board_level,for_header) VALUE('조교', '1', '조교');
INSERT INTO usertype(type_name,board_level,for_header) VALUE('학부생', '2', '학생');
INSERT INTO usertype(type_name,board_level,for_header) VALUE('학부모', '3', '기타');
INSERT INTO usertype(type_name,board_level,for_header) VALUE('입학예정자', '3', '기타');
INSERT INTO usertype(type_name,board_level,for_header) VALUE('기타', '3', '기타');

CREATE TABLE major(
                      `oid`  INT(10) NOT NULL AUTO_INCREMENT,
                      `code` VARCHAR (30) NOT NULL,
                      `major` VARCHAR (30) NOT NULL,
                      `color` VARCHAR (20) NOT NULL,
                      PRIMARY KEY (`oid`)
);

INSERT INTO major(oid,code,major,color) VALUE(1, 'main', 'AI컴퓨터공학부','#');