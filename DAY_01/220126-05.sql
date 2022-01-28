/*
	번호(정수), 이름(문자열 최대길이 : 10), 전화번호(고정된 길이의 문자열 : 13), 이메일(문자열 최대길이: 30)
    
	1. 테이블 생성
    2. row를 추가 
		(1, 홍길동, 011-1111-1111, hong@hanmail.net)
        (2, 김유신, 010-2222-2222, kim@hanmail.net)
	3. 테이블 조회
*/

CREATE TABLE person(
    -- 테이블 생성 할 때 PRIMARY KEY 설정 가능
    Number INT NOT NULL,
    Name VARCHAR(10),
    PhoneNumber CHAR(13),
    Email VARCHAR(30),
    PRIMARY KEY(Number)
);

INSERT INTO person(Number, Name, PhoneNumber, Email) VALUES (1, "홍길동", "011-1111-1111", "hong@hanmail.net"),
															(2, "김유신", "010-2222-2222", "kim@hanmail.net");
INSERT INTO person VALUES (3, "홍길동", "010-2222-2222", NULL);
                                                            
SELECT * FROM person;

-- PRIMARY KEY가 존재한다면 기준점으로 삭제 할 수 있다.
DELETE FROM person WHERE number = 3;

-- 제약사항
-- PRIMARY KEY
-- 고유, 값이 꼭 있어야함(NULL 값이 아니여야함) -> 검색 용이

