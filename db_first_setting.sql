-- DB 생성
CREATE DATABASE pofo
CHARACTER SET = 'utf8'
COLLATE = 'utf8_general_ci';

-- 계정 추가
CREATE USER 'pofo'@'%' IDENTIFIED BY 'pofo1234';

-- 권한 추가
GRANT ALL PRIVILEGES ON pofo.* TO 'pofo1234'@'%';

-- 데이터베이스 변경
USE DATABASE pofo;