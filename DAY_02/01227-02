-- 내림차순 정렬
SELECT * FROM country ORDER BY Population DESC;

-- 상위 Top10만 가져올 때 (LIMIT 사용)
SELECT * FROM country ORDER BY Population DESC LIMIT 10;

-- ORDER BY 없이 사용 가능 (제일 첫번째 순번 부터~~~)
SELECT * FROM country LIMIT 10;

-- Region 값이 Asia를 포함하는 국가 중, 면적이 가장 좁은 10개의 국가 조회하기.
SELECT * FROM country WHERE Region LIKE "%Asia%" ORDER BY SurfaceArea ASC LIMIT 10;

-- Population / SurfaceArea (인구밀도) 상위 10개 국가
SELECT * FROM country ORDER BY Population / SurfaceArea DESC LIMIT 10;

-- 5개 다음에 2개를 보고싶을 때 (OFFSET 사용)
SELECT * FROM country LIMIT 2 OFFSET 5;
SELECT * FROM country LIMIT 5, 2;

-- 사용자가 페이지당 10개씩 보여달라고 함.
-- 사용자가 1페이지 보여달라고 함.
SELECt * FROM country LIMIT 10;

-- 사용자가 2페이지 보여달라고 함.
SELECT * FROM country LIMIT 10, 10;

-- 사용자가 3페이지 보여달라고 함.
SELECT * FROM country LIMIT 10 OFFSET 20;
