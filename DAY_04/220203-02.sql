-- ROLL BACK
-- 트랜잭션 시작
START TRANSACTION;

INSERT INTO author (name, email) VALUES ("트랜잭션 테스트", "태스트!! 제대로된 데이터");

-- 트랜잭션 시작 전으로
ROLLBACK;

-- 데이터 추가를 확정 할 것이다.
COMMIT;

SELECT * FROM author;
