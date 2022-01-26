Use world;
SELECT * FROM country WHERE NAME = "South Korea";
SELECT * FROM country WHERE NAME = "China";

-- Continent 가 Asia인 국가를 조회해보세요.
SELECT * FROM country WHERE Continent = "ASIA";

-- 일본의 Code는 JPN 입니다.. 일본 조회.
SELECT * FROM country WHERE Code = "JPN";
SELECt * FROM country WHERE Code = "KOR";
SELECT * FROM country WHERE Code = "USA";

SELECT * FROM country WHERE NAME = "South Korea" OR NAME = "Japan" OR NAME = "China";
SELECT * FROM country WHERE NAME IN("South Korea", "Japan", "China");
SELECT * FROM country WHERE Continent IN("Asia", "Europe");

-- 인구: Population 컬럼. 인구가 4천 이상인 국가를 조회
SELECT * FROM country WHERE Population >= 40000000;
SELECT * FROM country WHERE Population >= 40000000 AND Population <= 50000000;

SELECT * FROM country WHERE Population BETWEEN 40000000 AND 50000000;

-- 아시아 국가이면서 인구가 4천만 이상인 국가.
SELECT * FROM country WHERE Continent = "Asia" AND Population >= 40000000;

-- 아시아 제외
SELECT * FROM country WHERE Continent <> "Asia";

-- NULL 인지 아닌지 확인할 때는 IS를 사용
SELECt * FROM country WHERE IndepYear IS NULL;
SELECT * FROM country WHERE IndepYear IS NOT NULL;

-- 독립년도가 1940 ~ 1950년 사이의 국가
SELECT * FROM country WHERE IndepYear >= 1940 AND IndepYear <= 1950;
SELECT * FROM country WHERE IndepYear BETWEEN 1940 AND 1950;
