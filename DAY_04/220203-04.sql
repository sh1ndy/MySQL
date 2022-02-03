-- 함수를 사용하기 위한 명령어 처음에는 생성 못하게 Off로 되어있음
SET GLOBAL log_bin_trust_function_creators = 1;

-- 문장의 끝을 $$값으로 변경한다.
DELIMITER $$

-- 함수 생성 하는 법
CREATE FUNCTION helloname2 (name VARCHAR(50))  -- 함수이름과 파라미터를 생성한다.
RETURNS VARCHAR(60)		-- 리턴 타입을 생성한다.
-- BEGIN ~ END 사이에 query문 을 작성하면 된다.
BEGIN
	RETURN CONCAT("HELLO2 ", name);
END$$

-- 문장의 끝을 ;값으로 원복한다.
DELIMITER ;

SELECT helloname("홍길동");

SELECT * FROM first;
