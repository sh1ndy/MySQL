SELECT Code, Name, Population FROM country;

-- 컬럼에 대한 별명을 지우줄 수 있음 (AS 별명이름)
SELECT Code AS 코드, Name AS 이름, Population AS 인구 FROM country;

SELECT Name, Population, SurfaceArea FROM country;

-- 인구 / 면적을 보고싶을때 연산한 값이 새로운 컬럼에 추가되고 이 때 별명을 지어주는 것이 좋다.
SELECT Name, Population, SurfaceArea, Population / SurfaceArea AS 인구밀도 FROM country;

-- 특정한 기준을 가지고 정렬 할 때 ORDER BY 오름차순 ASC(굳이 안적어도 됨) 내림차순은 DESC
-- SELECT ~ FROM ~ WHERE ~ ORDER 순서
SELECT Name, LifeExpectancy FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy DESC;

-- 인구밀도(Density) 내림차순으로 Code, Name, Population, SurfaceArea, Density 조회하기
SELECT Code, Name, Population, SurfaceArea, Population / SurfaceArea AS Density FROM country ORDER BY Density DESC;

-- 이름 역순으로 조회하기
SELECT * FROM country ORDER BY Name DESC;

-- 여러개의 기준점으로 조회하기.
SELECT * FROM country ORDER BY Continent ASC, Population DESC;

SELECT * FROM country WHERE Continent = "Asia";
