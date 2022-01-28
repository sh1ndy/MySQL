-- 원본 테이블을 그대로 복사한 테이블 생성 (데이터가 아니고 테이블의 형태 복사)
CREATE TABLE owners_copy LIKE owners;
-- 조회한 테이블의 데이터를 그대로 복사한다.
INSERT INTO owners_copy SELECT * FROM owners;

-- 조회된 테이블을 그래도 복사 (데이터, 테이블의 형태 복사)
CREATE TABLE owners_copy2 SELECT * FROM owners;

-- 임시로 테이블을 만들고 싶을 때 (잠깐 사용) // 접속 끊을 때 까지만 존재
-- IF NOT EXISTS 동일한 이름이 없을때만 생성
CREATE TEMPORARY TABLE IF NOT EXISTS temp_table (
	temp_id INT PRIMARY KEY AUTO_INCREMENT,
    tempName VARCHAR(10)
);

-- PRIMAY KEY 초기화가 되지 않고 데이터만 초기화 된다.
DELETE FROM temp_table;

-- 가장 초기 상태로 돌아갈 때 (PRIMARY KEY 또한 초기화 된다)
TRUNCATE TABLE temp_table;

DESC temp_table;

SELECT * FROM owners_copy2;
SELECT * FROM owners_copy;
SELECT * FROM temp_table;
INSERT INTO temp_table (tempName) VALUES ("a"), ("b"), ("c");

DROP TABLE owners_copy;
DROP TABLE owners_copy2;
