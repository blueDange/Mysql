set names utf8;
DROP DATABASE if EXISTS jd;
CREATE DATABASE jd charset = utf8;
use jd;
CREATE TABLE product(
    pid INT PRIMARY KEY,
    title VARCHAR(64),
    pic VARCHAR(128),
    price DECIMAL(7,2) NOT NULL,
    stime DATE,
    isonsale BOOLEAN,
    stock CHAR(8)
);
INSERT INTO product VALUES('00001','华为Mate50','https://cdn.pixabay.com/photo/2015/09/04/01/50/person-921509_960_720.jpg','9998,99','2022-1-1',true,'9999');
INSERT INTO product VALUES('00003','华为Mate-50','https://cdn.pixabay.com/photo/2015/09/04/01/50/person-921509_960_720.jpg','99999','2022-1-2',true,'9997');
INSERT INTO product VALUES('00002','Mi12','https://cdn.pixabay.com/photo/2015/09/04/01/50/person-921509_960_720.jpg','2222',NULL,true,'9998');
