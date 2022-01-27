USE world;

SELECT * FROM country WHERE Name = "South Korea";

-- 패턴 매칭 (비슷한거끼리 찾아내는 등호 대신 LIKE / %앞에붙으면 KOREA로 끝나는 이름)
SELECT * FROM country WHERE Name LIKE "%Korea";

-- ~~ ria로 끝나는 이름을 가진 국가
SELECT * FROM country WHERE Name LIKE "%ria";

-- Region이 North~~로 시작하는 국가
SELECT * FROM country WHERE Region LIKE "North%";

-- 이름에 O를 포함하는 국가
SELECT * FROM country WHERE Name LIKE "%O%";

-- O를 기준으로 앞에 두글자 뒤에 한글자 총 4글자로 이루어진 국가 이름 찾기
SELECT * FROM country WHERE Name LIKE "__O_";

-- NOT LIKE (부정)
-- Region 에 America를 포함하지 않는 국가
SELECT * FROM country WHERE Region NOT LIKE "%America%";
