-- 도서 관리 데이터베이스
-- 책
-- 제목, 가격, 저자(이름, 이메일 주소), 출판사(이름, 위치)
CREATE TABLE author (
	num INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL,
    email VARCHAR(30) NOT NULL
);

INSERT INTO author (name, email) VALUES ("김호연", "hoyeon@email.com");
INSERT INTO author (name, email) VALUES ("매트 헤이그", "heig@email.com");
INSERT INTO author (name, email) VALUES ("이미예", "miye@email.com");
INSERT INTO author (name, email) VALUES ("최은영", "silver0@email.com");

CREATE TABLE books (
	num INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(20) NOT NULL,
    price INT NOT NULL,
    booknum INT,
    FOREIGN KEY (booknum) REFERENCES author(num),
    lonum INT,
    FOREIGN KEY (lonum) REFERENCES publisher(num)
);

INSERT INTO books (title, price, booknum, lonum) VALUES ("불편한 편의점", 12600, 1, 1);
INSERT INTO books (title, price, booknum, lonum) VALUES ("미드나잇 라이브러리", 14200, 2, 2);
INSERT INTO books (title, price, booknum, lonum) VALUES ("달러구트 꿈 백화점1", 12420, 3, 3);
INSERT INTO books (title, price, booknum, lonum) VALUES ("달러구트 꿈 백화점2", 12400, 3, 3);
INSERT INTO books (title, price, booknum, lonum) VALUES ("밝은 밤", 13000, 4, 4);
INSERT INTO books (title, price, booknum, lonum) VALUES ("고스트라이터즈", 13500, 1, 5);

CREATE TABLE publisher (
	num INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    location VARCHAR(25) NOT NULL
);

INSERT INTO publisher (name, location) VALUES ("나무옆의자", "경기도 고양시");
INSERT INTO publisher (name, location) VALUES ("인플루엔셜", "요크셔 셰필드");
INSERT INTO publisher (name, location) VALUES ("팩토리얼나인", "서울시 영등포구");
INSERT INTO publisher (name, location) VALUES ("문학동네", "경기도 파주시");
INSERT INTO publisher (name, location) VALUES ("위즈덤하우스", "서울대 마포구");


SELECT * FROM books;
SELECT * FROM author;
SELECT * FROM publisher;

-- 제목		가격		저자 이름		저자 이메일		출판사 이름		출판사 위치
SELECT title AS 제목, price AS 가격, A.name AS "저자 이름", A.email AS 이메일, C.name AS "출판사 이름", C.location AS 위치 
FROM author AS A
LEFT JOIN books AS B ON A.num = B.booknum
LEFT JOIN publisher AS C ON C.num = B.lonum;
