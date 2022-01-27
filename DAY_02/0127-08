-- film 테이블
SELECT * FROM film;

-- special_features 값이 Commentaries를 포함하는 영화 목록
SELECT title, special_features FROM film WHERE special_features LIKE "%Commentaries%";

-- rating이 R 등급인 영화들의 length의 평균 값
SELECT rating, AVG(length) FROM film WHERE rating = "R";

-- 각 rating별 평균 length 조회
SELECT rating, ROUND(AVG(length), 2) FROM film GROUP BY rating;

-- 영화 전체의 평균(115.2720) length 보다 긴 영화
SELECT * FROM film WHERE length > (SELECT AVG(length) FROM film) ORDER BY length DESC; -- Sub-query

-- 가장 긴 length를 가지는 영화
SELECT * FROM film ORDER BY length DESC LIMIT 1; -- 하나만 구할 때
SELECT * FROM film WHERE length = (SELECT MAX(length) FROM film); -- 전체 구할 때

-- 가장 길거나 가장 짧은 length를 가지는 영화
SELECT * FROM film WHERE length = (SELECT MAX(length) FROM film) OR length = (SELECT MIN(length) FROM film);

-- title, length : length - avg
SELECT title, length, length - (SELECT AVG(length) FROM film) AS Gap FROM film;

-- length가 긴 Top 100의 필름을 길이의 오름차순으로 조회 (SUB Query로 가지고있는 테이블은 항상 AS 별명을 지어줘야한다)
SELECT * FROM (SELECT * FROM film ORDER BY length DESC LIMIT 100) AS MyResult ORDER BY length ASC;


