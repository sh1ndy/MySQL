-- 데이터베이스 목록 보기
SHOW DATABASES;
-- world 데이터베이스 사용
USE world;

SHOW TABLES;

DESC country;

SELECT Name, Code FROM country;

SELECT * FROM country;

SELECT Name FROM city;
SELECT * FROM city;

-- country 테이블에서 Code, Name, GNP 조회
SELECT CODE, NAME, GNP FROM country;

SELECT 1 + 1;
SELECT "HELLO WROLD";
SELECT 'HELLO WOLRD';
SELECT "'HELLO WOLRD'";
SELECT 1 = 1;
SELECT 2 >= 2;
SELECT 1 < 2;
SELECT NULL;


/* 여러 줄 주석*/

-- sakila << 사용
-- USE sakila;
