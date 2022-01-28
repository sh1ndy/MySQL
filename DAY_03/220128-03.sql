-- SELECT 조회
-- INSERT INTO 추가alter

-- DELETE 해당 하는 행 하나만 삭제
DELETE FROM pets WHERE id = 4;


-- UPDATE 수정
UPDATE pets SET name = "망고" WHERE id = 3;
UPDATE pets SET name = "땅콩" WHERE id = 2;

-- 한번에 여러개 UPDATE
UPDATE pets SET name = "애플", age = "1", spec = "불독" WHERE id = 1;


SELECT * FROM pets;
