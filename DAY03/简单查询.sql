SELECT DISTINCT sex from emp; -- 去重
SELECT ename,salary*12 from emp; --年薪
SELECT ename a, eid b FROM emp; --改名字
SELECT * from dept ORDER BY did ASC; --升序
SELECT * FROM dept ORDER BY did DESC; --降序
SELECT * from emp WHERE eid = 5; --查询编号为5的员工
SELECT * from emp WHERE deptid IS null; --着为null的
SELECT * from emp WHERE salary >= 8000 AND salary <= 10000;
SELECT * from emp WHERE (salary >=1000 || salary <= 8000) && sex = 0;
SELECT * from emp WHERE (salary >6000 && salary < 10000) ORDER BY salary DESC;
-- 模糊查询
SELECT * FROM emp WHERE ename LIKE '%e%'; --任意一个e
SELECT * FROM emp WHERE ename LIKE '%e'; --以e结尾
SELECT * FROM emp WHERE ename LIKE '%e_'; --倒数第二个为e
SELECT * FROM emp LIMIT 0,5; --第一页
SELECT * FROM emp LIMIT 5,5; --第二页
SELECT * from emo LIMIT 10,5 --第三列