-- 문자열 함수 활용

-- 문자열 합연산(CONCAT)
SELECT CONCAT("ABC", "DEF", "GHI") AS "문자열 합연산 함수";

-- 공백 제거(RTRIM) : 오른쪽 제거 , (LTRIM) : 왼쪽 제거
SELECT RTRIM('ABC     ');
SELECT LTRIM('     ABC');

-- 대소문자 변환
SELECT UPPER("abc");
SELECt LOWER("ABC");

-- 문자열 역순 출력
SELECT REVERSE("ABCDEFG");

-- 해당하는 값을 찾아서 변환
-- 원본, 변환할 곳, 변환할 값
SELECT REPLACE("ABCDE", "AB", "가가가");

-- 해당값을 짜르고 싶을 때
-- 시작점, 짜르고 싶은 수 (index 1부터 시작)
SELECT SUBSTRING("ABCDE", 2, 3);

-- 해당 값의 길이 (index 1부터 시작)
SELECT CHAR_LENGTH("ABCDEF");
SELECT CHAR_LENGTH("가나다라마바사");

-- CONCAT의 경우 NULL 값 하나라도 있으면 NULL값을 반환
SELECT CONCAT("ABC", NULL, "DEF");


-- 숫자 함수 활용

-- 절대값(abs)
SELECT ABS(-32);

-- 반올림(round) n값, m(몇번째 자리)
SELECT ROUND(32.5557678, 2);
-- 소수점 값 반올림 하고 나머지 버림
SELECT CEIL(15.5555);
-- 소수점 값 나머지 버림
SELECT FLOOR(15.5555);

-- 제곱근 구하는 법
SELECT POW(2, 3);

-- 난수 생성 0 ~ 1까지
SELECT RAND();
