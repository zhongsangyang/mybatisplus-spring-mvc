# DROP table my_user;
CREATE TABLE my_user
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    emai VARCHAR(15) DEFAULT '没填',
    phone varchar(11),
    qq_number INT,
    wei_Bo INT,
    introduct_self TEXT
)engine=INNODB charset 'utf8' comment ='后台用户表';
ALTER TABLE my_user ADD user_name VARCHAR(10) NULL;
ALTER TABLE my_user ADD password VARCHAR(10) NULL;