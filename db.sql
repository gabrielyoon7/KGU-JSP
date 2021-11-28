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

INSERT INTO major(oid,code,major,color) VALUE(1, 'main', 'AI컴퓨터공학부','#a12c2f');
INSERT INTO major(oid,code,major,color) VALUE(2, 'cs', '컴퓨터공학전공','#004300');
INSERT INTO major(oid,code,major,color) VALUE(3, 'ai', '인공지능전공','#000042');

CREATE TABLE slider(
                       `id` INT(10) NOT NULL AUTO_INCREMENT,
                       `slider_img` VARCHAR(100) DEFAULT NULL,
                       `slider_major` VARCHAR(100) DEFAULT NULL,
                       PRIMARY KEY (`id`)
);

INSERT INTO slider(id,slider_img,slider_major) VALUE(1, '/assets/images/slider/slider_img1.jpg', 'main');
INSERT INTO slider(id,slider_img,slider_major) VALUE(2, '/assets/images/slider/slider_img2.jpg', 'main');
INSERT INTO slider(id,slider_img,slider_major) VALUE(3, '/assets/images/slider/slider_img3.jpg', 'main');

CREATE TABLE menu_tabs(
                          `tab_id` INT(10) NOT NULL,
                          `tab_title` VARCHAR(30) NOT NULL,
                          PRIMARY KEY(`tab_id`)
);
INSERT INTO menu_tabs(tab_id, tab_title) VALUES(1, '학과소개');
INSERT INTO menu_tabs(tab_id, tab_title) VALUES(2, '교육활동');
INSERT INTO menu_tabs(tab_id, tab_title) VALUES(3, '구성원');
INSERT INTO menu_tabs(tab_id, tab_title) VALUES(4, '학과알림');
INSERT INTO menu_tabs(tab_id, tab_title) VALUES(5, '신청하기');
INSERT INTO menu_tabs(tab_id, tab_title) VALUES(6, '웹진');

CREATE TABLE menu_pages(
                           `page_id` INT(10) NOT NULL,
                           `tab_id` INT(10) NOT NULL,
                           `orderNum` INT(10) NOT NULL,
                           `page_path` VARCHAR(50) NOT NULL,
                           `page_title` VARCHAR(250) NOT NULL,
                           PRIMARY KEY(`page_id`)
);

INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(10, 1, 0, 'information.kgu', '학과소개');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(11, 1, 1, 'information.kgu', '연혁');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(12, 1, 2, 'information.kgu', '교육환경');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(13, 1, 3, 'information.kgu', '교육목표');


INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(20, 2, 0, 'information.kgu', '교육과정');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(21, 2, 1, 'information.kgu', '학습활동');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(22, 2, 2, 'information.kgu', '동아리소개');

INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(30, 3, 0, 'information.kgu', '교수소개');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(31, 3, 1, 'information.kgu', '연구실');

INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(40, 4, 0, 'bbs.kgu', '전체공지');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(41, 4, 1, 'bbs.kgu', '학과공지');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(42, 4, 2, 'bbs.kgu', '수업공지');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(43, 4, 3, 'bbs.kgu', '취업공지');

INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(50, 5, 0, 'information.kgu', '신청 및 접수');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(51, 5, 1, 'information.kgu', '졸업논문');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(52, 5, 2, 'information.kgu', '학과 자료실');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(53, 5, 3, 'information.kgu', '사물함 신청');

INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(60, 6, 0, 'information.kgu', '학과 소식');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(61, 6, 1, 'information.kgu', '우수 작품전');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(62, 6, 2, 'information.kgu', '수상 소식');

INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(90, 9, 0, 'admin.kgu', '관리자 메인');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(91, 9, 1, 'admin.kgu', '하위 전공 관리');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(92, 9, 2, 'admin.kgu', '회원 관리');
INSERT INTO menu_pages(page_id,tab_id,orderNum,page_path,page_title) VALUE(93, 9, 3, 'admin.kgu', '슬라이드 관리');


CREATE TABLE banner(
                       `id` INT(10) NOT NULL AUTO_INCREMENT,
                       `title` VARCHAR(100) DEFAULT NULL,
                       `description` VARCHAR(100) DEFAULT NULL,
                       `link` VARCHAR(100) DEFAULT NULL,
                       PRIMARY KEY (`id`)
);

INSERT INTO banner(id,title,description,link) VALUE(1, 'SWAIG', '설명1', 'http://swaig.kyonggi.ac.kr:8080');
INSERT INTO banner(id,title,description,link) VALUE(2, 'KUTIS', '설명2', 'https://kutis.kyonggi.ac.kr/webkutis/view/indexWeb.jsp');
INSERT INTO banner(id,title,description,link) VALUE(3, 'LMS', '설명3', 'https://lms.kyonggi.ac.kr/');
INSERT INTO banner(id,title,description,link) VALUE(4, 'Facebook', '설명4', 'https://www.facebook.com/kgucs/');
INSERT INTO banner(id,title,description,link) VALUE(5, '소프트웨어중심대학사업단', '설명5', 'https://swuniv.kyonggi.ac.kr/introduction/organization');
INSERT INTO banner(id,title,description,link) VALUE(6, '콘텐츠융합소프트웨어연구소', '설명6', 'https://sites.google.com/kyonggi.ac.kr/ccsri');

CREATE TABLE information(
                       `id` INT(10) NOT NULL,
                       `major` VARCHAR(30) NOT NULL,
                       `description` TEXT DEFAULT NULL
);

INSERT INTO information(id,major,description) VALUE(10, 'main', '학과소개');
INSERT INTO information(id,major,description) VALUE(11, 'main', '연혁');
INSERT INTO information(id,major,description) VALUE(12, 'main', '교육환경');
INSERT INTO information(id,major,description) VALUE(13, 'main', '교육목표');


INSERT INTO information(id,major,description) VALUE(20, 'main', '교육과정');
INSERT INTO information(id,major,description) VALUE(21, 'main', '학습활동');
INSERT INTO information(id,major,description) VALUE(22, 'main', '동아리소개');

INSERT INTO information(id,major,description) VALUE(30, 'main', '교수소개');
INSERT INTO information(id,major,description) VALUE(31, 'main', '연구실');

INSERT INTO information(id,major,description) VALUE(50, 'main', '신청 및 접수');
INSERT INTO information(id,major,description) VALUE(51, 'main', '졸업논문');
INSERT INTO information(id,major,description) VALUE(52, 'main', '학과 자료실');
INSERT INTO information(id,major,description) VALUE(53, 'main', '사물함 신청');

INSERT INTO information(id,major,description) VALUE(60, 'main', '학과 소식');
INSERT INTO information(id,major,description) VALUE(61, 'main', '우수 작품전');
INSERT INTO information(id,major,description) VALUE(62, 'main', '수상 소식');

