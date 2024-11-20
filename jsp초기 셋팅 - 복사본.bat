@echo off
:: MySQL 실행 경로를 확인하고 설정합니다. (예: C:\Program Files\MySQL\MySQL Server 8.0\bin)


cd C:\Program Files\MySQL\MySQL Server 8.0\bin
mysql -u root -pdongyang -e "CREATE DATABASE IF NOT EXISTS basicjsp;CREATE USER 'jspid'@'localhost' identified by 'jsppass';grant all privileges on basicjsp.* to 'jspid'@'localhost';grant PROCESS on *.* to 'jspid'@'localhost';"
mysql -u jspid -pjsppass -e "use basicjsp;create table if not exists member(id varchar(50) not null primary key,pass varchar(16) not null, name varchar(10) not null, reg_date datetime not null); create table if not exists test(num_id int not null primary key auto_increment, title varchar(50) not null, content text not null);"
curl -L -o "C:\test.txt" "https://drive.google.com/uc?export=download&id=1nN7xB45hHzodV9Uidmg5TXq1HYp3-mCz"

cd /d "C:\Eclipse" 
start eclipse.exe
start https://url.kr/5uc8f8
echo 설정 완료
pause