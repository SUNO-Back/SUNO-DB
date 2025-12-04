-- employees 테이블을 생성해주세요.
-- 속석명 id의 자료형은 INT입니다. 추가로 자동으로 1씩 증가하도록 설정하고 기본키로 지정합니다.
-- 속성명 name의 자료형은 VARCHAR(100)입니다.
-- 속석명 position의 자료형은 VARCHAR(100)입니다.
-- 속석명 salary의 자료형은 DECIMAL(10,2)입니다.
CREATE DATABASE assignment;
USE assignment;
CREATE TABLE employees(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10,2)
);
-- -- 2.직원 데이터를 employees에 추가해주세요.
INSERT INTO employees(name,position,salary) VALUES("혜린", "PM", 90000);
INSERT INTO employees(name,position,salary) VALUES("은우", "Frontend", 80000);
INSERT INTO employees(name,position,salary) VALUES("가을", "Backend", 92000);
INSERT INTO employees(name,position,salary) VALUES("지수", "Frontend", 7800);
INSERT INTO employees(name,position,salary) VALUES("민혁", "Frontend", 96000);
INSERT INTO employees(name,position,salary) VALUES("하은", "Backend", 130000);
-- 3.모든 직원의 이름과 연봉 정보만을 조회하는 쿼리를 작성해주세요. 
SELECT * FROM employees;
-- Frontend직책을 가진 직원 중에서 연봉이 90000이하인 직원의 이름과 연봉을 조회하세요
SELECT name,salary FROM employees WHERE position = 'Frontend' AND salary <= 90000;
-- PM직책을 가진 모든 직원의 연봉을 10%인상한 후 그 결과를 입력하세요 
UPDATE employees SET salary = salary * 1.1 WHERE position = 'PM';
SELECT * FROM employees WHERE position ='PM';
-- 민혁 사원의 데이터를 삭제하세요
DELETE FROM employees WHERE name = "민혁";
-- 모든 직원을 position 별로 그룹화 하여 각 직책의 평균 연봉을 계산하세요 
SELECT position, AVG(salary) AS average_salary FROM employees GROUP BY position;
-- employees 테이블을 삭제하세요 
DROP TABLE employees;
