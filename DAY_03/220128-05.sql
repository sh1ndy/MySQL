USE my_db;

-- INSERT INTO pets (name, age, spec) VALUES ("어피치", 5, "복숭아");

-- 붙일 내용이 없어도 왼쪽에 붙이고 싶을 때 LEFT OUTER JOIN
-- 붙일 내용이 없을 때 INNER JOIN
SELECT A.*, B.*
FROM pets AS A
LEFT OUTER JOIN owners B ON A.ownerId = B.id;

-- 기준인 테이블 역으로 바꿈
SELECT * FROM owners AS A RIGHT JOIN pets AS B ON A.id = B.ownerId;
