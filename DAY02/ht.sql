set names utf8;
DROP DATABASE if EXISTS ht;
CREATE DATABASE ht charset = utf8;
use ht;
-- CREATE Table news(
--     nid VARCHAR(29),
--     title VARCHAR(30),
--     ctime TIME(6),
--     origin VARCHAR(39),
--     detail TEXT
-- );
-- INSERT INTO news VALUES('新闻列表','这是新闻列表','100','来源于数据库','这是详情里面还有好多内容');
-- INSERT INTO news VALUES('游戏列表','这是游戏列表','100','来源于数据库','这是详情里面还有好多内容');
-- INSERT INTO news VALUES('娱乐列表','这是娱乐列表','100','来源于数据库','这是详情里面还有好多内容');
-- INSERT INTO news VALUES('有趣列表','这是有趣列表','100','来源于数据库','这是详情里面还有好多内容');

-- UPDATE news set nid = '聊天列表' WHERE nid = '新闻列表'
create  table user(
        id int primary key auto_increment,
        username varchar(20)
    );
    
    -- 创建订单表
    create  table orders(
        id int primary key auto_increment,
        totalprice double,
        user_id int
    );