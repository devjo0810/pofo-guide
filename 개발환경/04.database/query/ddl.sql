-- DB 생성
CREATE DATABASE mcs
CHARACTER SET = 'utf8'
COLLATE = 'utf8_general_ci';

-- 계정 추가
USE DATABASE mysql;
CREATE USER 'mcsadmin'@'%' IDENTIFIED BY 'mcs1234';
GRANT ALL PRIVILEGES ON mcs.* TO 'mcsadmin'@'%';

