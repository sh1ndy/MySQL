USE world;

-- 두개의 값을 밑으로 붙일 때 UNION ALL (COLUMN 의 규칙이 같을 때 사용 가능)
SELECT * FROM country WHERE Continent = "Asia"
UNION ALL
SELECT * FROM country WHERE Continent = "Africa"
UNION ALL
SELECT * FROM country WHERE COntinent = "Europe";

-- 위에 테이블과 밑에 테이블이 중복일 때는 데이터를 제거 해줌 UNION
SELECT 1, 2, 3
UNION
SELECT 1, 2, 3
UNION
SELECT 2, 2, 3;
