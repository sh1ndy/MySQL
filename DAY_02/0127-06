-- Continent 기준으로 GROUP을 묶음 (단 Continent 기준으로 하나씩만 나옴)
SELECT Continent FROM country GROUP BY Continent;

-- 각 Continent 기준 그룹으로 인구의 총 합을 구함
SELECT Continent, SUM(Population) FROM country GROUP BY Continent;

-- 각 Continent 별 국가의 개수
SELECT Continent, COUNT(*) FROM country GROUP BY Continent;

-- 각 Continent 별 GNP 평균
SELECT Continent, AVG(GNP) FROM country GROUP BY Continent;

-- 각 Continent 별 GNP 최대
SELECT Continent, MAX(GNP) FROM country GROUP BY Continent;

-- 각 Continent 별 GNP 최소
SELECT Continent, MIN(GNP) AS "Min" FROM country WHERE GNP > 0 GROUP BY Continent ORDER BY Min;

-- Region별 인구 수 합 조회
-- 그룹별 10억 이상의 국가만 출력
SELECT Region, SUM(Population) AS "Pop" FROM country GROUP BY Region HAVING Pop > 1000000000 ORDER BY Pop;
