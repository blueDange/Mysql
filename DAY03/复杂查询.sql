SELECT count(*) FROM emp;-- 查询所有员工数量
SELECT count(eid) FROM emp; -- 通过eid查询
SELECT count(deptid) FROM emp;  
SELECT count(salary) FROM emp WHERE sex = 0;
SELECT avg(salary) FROM emp WHERE deptid = '20';
SELECT max(salary) FROM emp WHERE deptid = '10';
SELECT min(birthday) FROM emp WHERE sex = 0;
-- 分组查询
SELECT count(eid),sum(salary), ename, sex FROM emp GROUP BY sex;
SELECT count(eid),max(salary),min(salary), ename, sex,deptid FROM emp GROUP BY deptid;
SELECT * FROM emp WHERE year(birthday) = 1990;
SELECT min(birthday) FROM emp WHERE sex = 0; -- 最大年龄女员工 '1983 -07-15'
SELECT * FROM emp WHERE birthday = '1983-07-15';
SELECT * FROM emp WHERE birthday = (SELECT min(birthday) FROM emp WHERE sex = 0 );
SELECT * FROM emp WHERE salary > (SELECT avg(salary) from emp);
SELECT * FROM emp WHERE deptid = (SELECT deptid from emp WHERE ename = 'xin') && ename!= 'xin';
SELECT * FROM emp WHERE year(birthday) = (SELECT year(birthday) from emp WHERE ename = 'tom') && ename!= 'tom';
-- 多表查询
SELECT ename,dname from emp,dept WHERE deptid = did;
SELECT emp.ename,dept.dname from emp,dept WHERE emp.deptid = dept.did;