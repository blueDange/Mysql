-- 设置客户端连接服务器端编码为utf-8
set names utf8;
DROP DATABASE if EXISTS hantang;
CREATE DATABASE hantang charset = utf8;
use hantang;
CREATE Table recommend(
    rid INT,
    name VARCHAR(16),
    phone INT,
    email VARCHAR(32),
    detail TEXT,
    ctime DATE
);
INSERT into recommend VALUES('1','蓝蓝','13012414','123123'
    ,'hello world','2022-08-29'
);
INSERT into recommend VALUES('2','pink','123012414','123123'
    ,'hello world!!','2022-08-31'
);
INSERT into recommend VALUES('3','skyblue','113012414','123123'
    ,'hello world!','2022-08-30'
);
UPDATE recommend set phone = '190000',email = '1111@163.com' WHERE rid = '1';
