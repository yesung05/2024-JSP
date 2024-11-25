@echo off
echo ------------------------------------------
echo DB 자동 설정--------------------v0.0.2
echo ------------------------------------------
echo ※ 동양미래대학교 3호관 109-1강의실의 컴퓨터 기준으로 작성되었습니다.
echo ※ 개인 컴퓨터에 사용시 정상 실행이 되지 않을 수 있습니다.
::made by Yesung.Cho

c:
cd C:\Program Files\MySQL\MySQL Server 8.0\bin
mysql -u root -pdongyang -e "CREATE DATABASE IF NOT EXISTS basicjsp;CREATE USER 'jspid'@'localhost' identified by 'jsppass';grant all privileges on basicjsp.* to 'jspid'@'localhost';grant PROCESS on *.* to 'jspid'@'localhost';"
echo ------------------------------------------
echo            jspid 계정 생성완료
echo ------------------------------------------
mysql -u jspid -pjsppass -e "use basicjsp;create table if not exists member(id varchar(50) not null primary key,pass varchar(16) not null, name varchar(10) not null, reg_date datetime not null); create table if not exists test(num_id int not null primary key auto_increment, title varchar(50) not null, content text not null);create table tblboard(num int(4) auto_increment primary key, name varchar(10), pass varchar(10), email varchar(20), title varchar(30), contents varchar(255), writedate varchar(20), readcount int(4));"
echo ------------------------------------------
echo     member, test, tblboard 테이블 생성 완료
echo ------------------------------------------
curl -L -o "C:\Program Files\Java\jdk-11\lib\mysql-connector-java-5.1.46-bin.jar" "https://drive.google.com/uc?export=download&id=1P_wJZ1w7hViyREtHQ4jl5soDp_Z2JclW"
echo ------------------------------------------
echo             .jar 파일 다운 완료
echo ------------------------------------------
explorer "C:\Program Files\Java\jdk-11\lib"
cd /d "C:\Eclipse" 
start eclipse.exe
start https://drive.google.com/file/d/18OkthKikPpCoRcpWCWeCeag-30_jcXyM/view?usp=sharing
echo ------------------------------------------
echo 이클립스 작업 폴더의 WEB-INF
echo 하단 lib폴더에 jar파일을 넣어주세요.         
echo ------------------------------------------
cd C:\Program Files\MySQL\MySQL Server 8.0\bin
cmd /k