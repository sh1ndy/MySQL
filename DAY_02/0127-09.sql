-- employee 테이블

-- select 문
-- 1. 직원들의 이름(FIRST_NAME + LAST_NAME)을 Full Name 이라는 열 이름으로 조회
SELECT CONCAT(FIRST_NAME, LAST_NAME) AS FULL_NAME FROM employees;

-- 4. 각 직원의 이름, salary와, salary의 6%를 tax라는 별명으로 조회
SELECT CONCAT(FIRST_NAME, LAST_NAME) AS FULL_NAME, salary, salary * 0.06 AS tax FROM employees;

-- 5. last_name이 6자인 직원 목록
SELECT LAST_NAME FROM employees WHERE LAST_NAME LIKE "______";

-- 6. salary 범위 10000 ~ 15000의 직원 목록
SELECT salary FROM employees WHERE salary >= 10000 and salary <= 15000;

-- 7. department_id가 30이거나 100인 직원 목록
SELECT * FROM employees WHERE DEPARTMENT_ID = 30 OR DEPARTMENT_ID = 100;

-- 집계함수
-- 3. 직원 테이블의 job_id의 개수
SELECT COUNT(DISTINCT JOB_ID) FROM employees;

-- 8. 최고 연봉과 최저 연봉의 차를 구해보세요.
SELECT MAX(salary), MIN(salary), MAX(salary) - MIN(salary) AS Gap FROM employees;

-- 9. department_id가 90인 직원들의 평균 salary와 몇 명인지?
SELECT department_id, AVG(salary), COUNT(*) FROM employees WHERE department_id = 90;

-- 10. 부서별 직원의 평균 salary(단, 부서에 8000이상의 연봉을 받는 직원이 있어야 함)
SELECT department_id, AVG(salary) FROM employees WHERE salary > 8000 GROUP BY department_id;

-- 11. 소속 부서 직원이 10명 이상 보유한 부서의 최고 salary
SELECT department_id, COUNT(department_id) AS cnt, MAX(SALARY) FROM employees GROUP BY department_id HAVING cnt > 10;

-- sub-query문과 집계함수
-- 14. 연봉 상위 10명을 오름차순으로(동일 연봉일시 last_name 오름차순)
SELECT * FROM employees ORDER BY salary DESC LIMIT 10;
SELECT * FROM (SELECT * FROM employees ORDER BY salary DESC LIMIT 10) AS TOP ORDER BY salary ASC, last_name ASC;

-- 2. 연봉(salary)이 직원들 중 가장 작은 직원
SELECT * FROM employees WHERE salary = (SELECT MIN(salary) FROM employees);

-- 12. 5번째로 적은 salary를 받는 직원 목록
SELECT DISTINCT salary FROM employees ORDER BY salary ASC LIMIT 4, 1;
SELECT * FROM employees WHERE salary = (SELECT DISTINCT salary FROM employees ORDER BY salary ASC LIMIT 4, 1);

-- 13. last_name이 Bull인 직원보다 높은 연봉을 받는 직원 목록
SELECT salary FROM employees WHERE last_name = "Bull"; -- 4100.00
SELECT * FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name = "Bull") ORDER BY salary ASC;

-- employee 테이블이 벗어남
-- 15. 부서의 위치가 US인 직원들 (부서의 위치는 departments 테이블에 location_id로 알 수 있음)
-- 16. 부서명이 IT로 시작하는 부서에서 근무하는 직원 (부서명은 departments 테이블의 department_name)



