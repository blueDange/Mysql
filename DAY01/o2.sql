DROP DATABASE if EXISTS web;
CREATE DATABASE web;
DROP DATABASE if EXISTS tedu;
CREATE DATABASE tedu;
use web;
CREATE Table student(
    id INT,
    name VARCHAR(16),
    sex VARCHAR(1),
    score INT(3)
     

);
use tedu;
CREATE Table emp(
    eid INT,
    ename VARCHAR(16),
    phone INT(11),
    addr VARCHAR(15)
);
insert into student values('1','xin','m','60');
SELECT * FROM student