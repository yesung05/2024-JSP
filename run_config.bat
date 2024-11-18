@echo off
cd "C:\Program Files\MySQL\MySQL Server 8.0\bin"

mysql -u root -pdongyang -e "CREATE DATABASE IF NOT EXISTS basicjsp; \
CREATE USER IF NOT EXISTS 'jspid'@'localhost' IDENTIFIED BY 'jsppass'; \
GRANT ALL PRIVILEGES ON basicjsp.* TO 'jspid'@'localhost'; \
GRANT PROCESS ON *.* TO 'jspid'@'localhost'; \
USE basicjsp; \
CREATE TABLE IF NOT EXISTS member ( \
    id VARCHAR(50) NOT NULL PRIMARY KEY, \
    pass VARCHAR(16) NOT NULL, \
    name VARCHAR(10) NOT NULL, \
    reg_date DATETIME NOT NULL \
); \
CREATE TABLE IF NOT EXISTS test ( \
    num_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, \
    title VARCHAR(50) NOT NULL, \
    content TEXT NOT NULL \
);"
