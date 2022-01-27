-- 데이터베이스 만들기
CREATE DATABASE my_db;

-- 모든 데이터베이스 보기;
SHOW DATABASES;

-- 데이터베이스 위치 변경
USE my_db;

-- 테이블 만들기
CREATE TABLE person (
	-- 컬럼 이름 및 데이터타입 설정
    -- CHAR() : 값이 10이면 글자수를 포함한 빈공간으로 10을 다 채움
    -- VARCHAR() : 값이 10이여도 글자수만큼만 차지
    name VARCHAR(10),
    age INT
);

-- 존재할 경우 이름 및 타입이 조회 가능
DESC person;

-- person 테이블에 자료 집어 넣기
INSERT INTO person (name, age) VALUES ("홍길동", 33);
INSERT INTO person (name, age) VALUES ("둘리", 26);
-- poerson 테이블에 여러 자료 집어 넣기
INSERT INTO person (name, age) VALUES ("도우너", 28), ("마이콜", 30);

-- 자료가 잘 들어 갔는지 확인
SELECT * FROM person;

-- 테이블 지우는 법 (항상 조심할 것)
-- DROP TABLE person;
