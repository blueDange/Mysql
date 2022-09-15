set names utf8;
DROP DATABASE if EXISTS hantang;
CREATE DATABASE hantang charset = utf8;
use hantang;
CREATE Table ht_banner(
    bid int PRIMARY KEY,
    pic VARCHAR(64),
    href VARCHAR(32),
    title VARCHAR(32)
);
CREATE Table ht_cat(
    cid INT PRIMARY KEY,
    cname VARCHAR(8) UNIQUE
);
CREATE TABLE ht_news(
    nid INT PRIMARY KEY auto_increment, --只能给主键加自增
    title VARCHAR(32),
    ctime DATE,
    detail TEXT,
    cat_id INT,
    -- 将cat_id列作为外键,他的值必须在ht_cat表的cid中出现过
    FOREIGN KEY(cat_id) REFERENCES ht_cat(cid)
);
CREATE TABLE ht_about(
    aid INT PRIMARY KEY,
    title VARCHAR(32) DEFAULT '未知',
    detail VARCHAR(5000)
);
CREATE TABLE ht_event(
    nid INT PRIMARY KEY,
    title VARCHAR(32),
    ctime DATE DEFAULT '2022-1-1'
);
CREATE TABLE ht_member(
    mid INT PRIMARY KEY,
    mname VARCHAR(32) UNIQUE NOT NULL
);
INSERT INTO ht_banner VALUES('001','E:\Study\object\one\images\banner.jpg','httts://www.baidu.com','第一张轮播图');
INSERT INTO ht_banner VALUES('002','E:\Study\object\one\images\banner1.jpg','httts://www.baidu.com','第二张轮播图');
INSERT INTO ht_banner VALUES('003','E:\Study\object\one\images\banner2.jpg','httts://www.baidu.com','第三张轮播图');
INSERT INTO ht_cat VALUES('10','公司动态');
INSERT INTO ht_cat VALUES('20','业界资讯');
INSERT INTO ht_cat VALUES('30','产品咨询');
INSERT INTO ht_news VALUES('0001','新闻1','2022-08-30','这是新闻1的详情','10');
INSERT INTO ht_news VALUES('0002','新闻2','2022-09-30','这是新闻2的详情','20');
INSERT INTO ht_news VALUES('0003','新闻3','2022-10-30','这是新闻3的详情','30');
INSERT INTO ht_about VALUES('0001','公司简介','土御门家胡桃');
INSERT INTO ht_about VALUES('0002',NULL,'天才阴阳师胡桃');
INSERT INTO ht_event VALUES('01','一秋秋病了','2002-1-1');
INSERT INTO ht_event VALUES('02','二秋秋瞧','2002-1-2');
INSERT INTO ht_member VALUES('1','泥露公司');
INSERT INTO ht_member VALUES('2','钟离公司');



