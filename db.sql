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
INSERT INTO major(oid,code,major,color) VALUE(2, 'cs', '컴퓨터공학전공','#');
INSERT INTO major(oid,code,major,color) VALUE(3, 'ai', '인공지능전공','#');

CREATE TABLE slider(
                       `id` INT(10) NOT NULL AUTO_INCREMENT,
                       `slider_img` VARCHAR(100) DEFAULT NULL,
                       `slider_major` VARCHAR(100) DEFAULT NULL,
                       PRIMARY KEY (`id`)
);

INSERT INTO slider(id,slider_img,slider_major) VALUE(1, '/assets/images/slider/slider_img1.jpg', 'main');
INSERT INTO slider(id,slider_img,slider_major) VALUE(2, '/assets/images/slider/slider_img2.jpg', 'main');
INSERT INTO slider(id,slider_img,slider_major) VALUE(3, '/assets/images/slider/slider_img3.jpg', 'main');

CREATE TABLE banner(
                       `id` INT(10) NOT NULL AUTO_INCREMENT,
                       `title` VARCHAR(100) DEFAULT NULL,
                       `description` VARCHAR(100) DEFAULT NULL,
                       `link` VARCHAR(100) DEFAULT NULL,
                       PRIMARY KEY (`id`)
);

INSERT INTO banner(id,title,description,link) VALUE(1, 'SWAIG', '설명1', 'main.kgu?major=main');
INSERT INTO banner(id,title,description,link) VALUE(2, 'KUTIS', '설명2', 'https://kutis.kyonggi.ac.kr/webkutis/view/indexWeb.jsp');
INSERT INTO banner(id,title,description,link) VALUE(3, 'LMS', '설명3', 'https://lms.kyonggi.ac.kr/');
INSERT INTO banner(id,title,description,link) VALUE(4, 'Facebook', '설명4', 'https://www.facebook.com/kgucs/');
INSERT INTO banner(id,title,description,link) VALUE(5, '소프트웨어중심대학사업단', '설명5', 'https://swuniv.kyonggi.ac.kr/introduction/organization');
INSERT INTO banner(id,title,description,link) VALUE(6, '콘텐츠융합소프트웨어연구소', '설명6', 'https://sites.google.com/kyonggi.ac.kr/ccsri');

