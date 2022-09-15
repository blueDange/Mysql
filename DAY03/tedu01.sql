set names utf8;
DROP DATABASE if EXISTS tedu;
CREATE DATABASE tedu charset = utf8;
use tedu;
CREATE Table dept(
    did INT PRIMARY KEY auto_increment,
    dname VARCHAR(8) UNIQUE
);
INSERT INTO dept VALUES('10','研发部');
INSERT INTO dept VALUES('20','运营部');
INSERT INTO dept VALUES('30','市场部');
INSERT INTO dept VALUES('40','测试部');
CREATE TABLE emp(
    eid INT PRIMARY KEY auto_increment,
    ename VARCHAR(16) NOT NULL,
    sex BOOLEAN DEFAULT'1',
    birthday DATE,
    salary DECIMAL(7,2),
    deptid INT,
    FOREIGN KEY(deptid) REFERENCES dept(did)
);
INSERT INTO emp VALUES('001','清单1',1,'2000-1-1','10000','10');
INSERT INTO emp VALUES(NULL,'清单2',0,'2000-1-2','10002','20');
INSERT INTO emp VALUES(NULL,'清单3',0,'2000-1-3','10003','30');
INSERT INTO emp VALUES(NULL,'清单4',1,'2000-1-4','10004','40');



