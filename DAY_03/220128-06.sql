use hr;

SELECT * FROM employees;
SELECT * FROM departments;

-- 부서 이름 IT로 시작하는 부서에서 일하는 직원
SELECT first_name, last_name, department_name
FROM employees AS A
LEFT JOIN departments AS B
ON A.DEPARTMENT_ID = B.DEPARTMENT_ID
WHERE department_name LIKE "IT%";

-- US에 위치하는 부서에서 일하는 직원
SELECT *
FROM employees AS A
LEFT JOIN departments AS B ON A.department_id = B.department_id
LEFT JOIN locations AS C ON B.location_id = C.location_id
WHERE country_id = "US";

-- 직원 목록 + 각 직원의 해당 부서평균 salary
SELECT first_name, last_name, salary, A.department_id, B.dep_avg
FROM employees AS A
LEFT JOIN (SELECT department_id, AVG(salary) AS dep_avg FROM employees GROUP BY DEPARTMENT_ID) B ON A.department_id = b.department_id;
