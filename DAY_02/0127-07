USE sakila;

-- actor table filed --
DESC actor;

SELECT * FROM actor;

-- pk : actor_id 가 100번의 배우
SELECT * FROM actor WHERE actor_id = 100;

-- first_name이 Scarlett
SELECT * FROM actor WHERE first_name = "Scarlett";

-- last_name이 Johansson
SELECT * FROM actor WHERE last_name = "Johansson";

-- last_name이 Johansson인 배우의 수
SELECT COUNT(*) FROM actor WHERE last_name = "Johansson";

-- 배우들의 last_name의 목록(중복 X)
SELECT DISTINCT last_name FROM actor;

-- 각 같은 last_name를 가지는 배우의 수를 각각 조회
SELECT last_name, COUNT(last_name) AS Count FROM actor group by last_name ORDER BY Count DESC;

-- 각 last_name이 2명 이상
SELECT last_name, COUNT(last_name) AS Count FROM actor GROUP BY last_name HAVING Count > 1 ORDER BY Count DESC;
