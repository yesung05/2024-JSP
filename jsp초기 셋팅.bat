@echo off
echo ------------------------------------------
echo DB �ڵ� ����                         v0.0.1
echo ------------------------------------------
::made by Yesung.Cho

cd C:\Program Files\MySQL\MySQL Server 8.0\bin
mysql -u root -pdongyang -e "CREATE DATABASE IF NOT EXISTS basicjsp;CREATE USER 'jspid'@'localhost' identified by 'jsppass';grant all privileges on basicjsp.* to 'jspid'@'localhost';grant PROCESS on *.* to 'jspid'@'localhost';"
echo ------------------------------------------
echo jspid ���� �����Ϸ�
echo ------------------------------------------
mysql -u jspid -pjsppass -e "use basicjsp;create table if not exists member(id varchar(50) not null primary key,pass varchar(16) not null, name varchar(10) not null, reg_date datetime not null); create table if not exists test(num_id int not null primary key auto_increment, title varchar(50) not null, content text not null);"
echo ------------------------------------------
echo member, test ���̺� ���� �Ϸ�
echo ------------------------------------------
curl -L -o "C:\Program Files\Java\jdk-11\lib\mysql-connector-java-5.1.46-bin.jar" "https://drive.google.com/uc?export=download&id=1P_wJZ1w7hViyREtHQ4jl5soDp_Z2JclW"
echo ------------------------------------------
echo jar ���� �ٿ� �Ϸ�
echo ------------------------------------------
explorer "C:\Program Files\Java\jdk-11\lib"
cd /d "C:\Eclipse" 
start eclipse.exe
start https://url.kr/5uc8f8
echo ------------------------------------------
echo ���� �Ϸ�
echo ------------------------------------------
cd C:\Program Files\MySQL\MySQL Server 8.0\bin
cmd /k