-- 집계 함수(합, 평균, 갯수 등등.....)

-- 합 : SUM()
SELECT SUM(Population) FROM country;

-- 갯수 : COUNT()
SELECT COUNT(*) FROM country;

-- 평균 : AVG()
SELECT AVG(Population) FROM country;

-- 최대 : MAX()
SELECT MAX(Population) FROM country;

-- 최소 : MIN()
SELECT MIN(Population) FROM country;


-- Region이 ~~~Aremrica로 끝나는 국가의 개수
SELECT COUNT(*) FROM country WHERE Region LIKE "%America";

-- Continent가 Asia인 국가의 평균 GNP
SELECT ROUND(AVG(GNP), 1) AS "아시아 평균 GNP" FROM country WHERE Continent = "Asia";

-- Continent 개수
SELECT COUNT(DISTINCT Continent) FROM country;
