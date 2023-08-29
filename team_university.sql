drop table college_list;
drop table department_list;
drop table subject;
drop table grade;

drop table basket;

drop table student_info;
drop table admin;

drop table board;
drop table comments;
drop table eval_list;
drop table eval_score;

--------------------------------------------------------------------------------
create table college_list(  -- 대학 DB
    college varchar2(50) primary key
);

insert into college_list(college) values('인문대학');
insert into college_list(college) values('공과대학');
insert into college_list(college) values('예체능대학');
--------------------------------------------------------------------------------
create table department_list(   -- 학과 DB
    college varchar2(50),
    department varchar2(50) primary key
);

insert into department_list values('인문대학','정치외교학과');
insert into department_list values('인문대학','행정학과');
insert into department_list values('인문대학','철학과');

insert into department_list values('공과대학','컴퓨터공학과');
insert into department_list values('공과대학','전자공학과');
insert into department_list values('공과대학','기계공학과');

insert into department_list values('예체능대학','실용음악과');
insert into department_list values('예체능대학','동양화과');
insert into department_list values('예체능대학','사회체육학과');

--------------------------------------------------------------------------------
create table subject(   -- 과목 DB
    college varchar2(50),
    department varchar2(50),
    subjectNum number(3) primary key,
    subject varchar2(50) unique,
    professor varchar2(10),
    score number(1),
    day1 varchar2(10),
    time1 varchar2(20),
    day2 varchar2(10),
    time2 varchar2(20)
);

insert into subject values('인문대학','정치외교학과','101','정치학개론','김면회','3','Thr','13:00~15:00','Fri','13:00~15:00'); --thrC, friC
insert into subject values('인문대학','정치외교학과','102','국제정치이론','남궁영','3','Wed','15:00~17:00','Thr','09:00~11:00'); --wedD, thrA
insert into subject values('인문대학','정치외교학과','103','비교정치','서경교','2','Mon','09:00~11:00','Wed','09:00~11:00'); --monA, wedA
insert into subject values('인문대학','정치외교학과','104','고대정치사상','이상환','2','Tue','13:00~15:00','Fri','09:00~11:00'); --tueC, friA
insert into subject values('인문대학','정치외교학과','105','정치학연구방법론','이재목','3','Tue','11:00~13:00','Wed','13:00~15:00'); --tueB, wedC

insert into subject values('인문대학','행정학과','111','행정학개론','견진만','3','Mon','13:00~15:00','Thr','15:00~17:00'); --MonC, ThrD
insert into subject values('인문대학','행정학과','112','지방정부론','곽선주','2','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('인문대학','행정학과','113','도시행정','권태형','3','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('인문대학','행정학과','114','행정법I','김선영','3','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA
insert into subject values('인문대학','행정학과','115','공공리더십론','김성수','2','Mon','11:00~13:00','Thr','11:00~13:00'); --MonB, ThrB

insert into subject values('인문대학','철학과','121','근대철학사','신승환','2','Tue','13:00~15:00','Fri','09:00~11:00'); --TueC, FriA
insert into subject values('인문대학','철학과','122','존재론/형이상학','이창우','3','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('인문대학','철학과','123','윤리학','박승찬','2','Mon','11:00~13:00','Thr','11:00~13:00'); --MonB, ThrB
insert into subject values('인문대학','철학과','124','기초논리학','백민정','3','Thr','13:00~15:00','Fri','13:00~15:00'); --ThrC, FriC
insert into subject values('인문대학','철학과','125','분석철학','이병덕','3','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC --가톨릭대--

insert into subject values('공과대학','컴퓨터공학과','201','자료구조','김낙현','2','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('공과대학','컴퓨터공학과','202','프로그래밍어론','김상철','2','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA
insert into subject values('공과대학','컴퓨터공학과','203','데이터마이닝','김성복','3','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC
insert into subject values('공과대학','컴퓨터공학과','204','캡스톤설계및실습','박종혁','3','Mon','B','Thr','B'); --MonB, ThrB
insert into subject values('공과대학','컴퓨터공학과','205','데이터베이스설계','손기락','3','Tue','D','Fri','B'); --TueD, FriB

insert into subject values('공과대학','전자공학과','211','기초미적분학I','강준우','3','Tue','13:00~15:00','Fri','09:00~11:00'); --TueC, FriA
insert into subject values('공과대학','전자공학과','212','이산수학','김동식','3','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA
insert into subject values('공과대학','전자공학과','213','디지털공학','박영철','3','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('공과대학','전자공학과','214','컴퓨터개론','이성현','2','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('공과대학','전자공학과','215','회로이론','이정훈','2','Mon','13:00~15:00','Thr','15:00~17:00'); --MonC, ThrD

insert into subject values('공과대학','기계공학과','221','공학프로그래밍입문','유송민','2','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('공과대학','기계공학과','222','열역학','장승호','3','Tue','13:00~15:00','Fri','09:00~11:00'); --TueC, FriA
insert into subject values('공과대학','기계공학과','223','유체역학','홍희기','3','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC
insert into subject values('공과대학','기계공학과','224','재료역학','이순걸','3','Thr','13:00~15:00','Fri','13:00~15:00'); --ThrC, FriC
insert into subject values('공과대학','기계공학과','225','공학수학I','이경엽','2','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA --경희대--

insert into subject values('예체능대학','실용음악과','301','발성과 가창의 기초','한충완','3','Thr','13:00~15:00','Fri','13:00~15:00'); --ThrC, FriC
insert into subject values('예체능대학','실용음악과','302','보컬테크닉I','권진원','3','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('예체능대학','실용음악과','303','리듬합주I','피정훈','3','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC
insert into subject values('예체능대학','실용음악과','304','합주실기I','오정수','2','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('예체능대학','실용음악과','305','시창청음I','김정배','2','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA --서울예술대학--

insert into subject values('예체능대학','동양화과','311','수묵의 이해I','이만수','2','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('예체능대학','동양화과','312','동양미술사','유근택','2','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC
insert into subject values('예체능대학','동양화과','313','한국미술사','권기범','3','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA
insert into subject values('예체능대학','동양화과','314','화조의 이해','노신경','3','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('예체능대학','동양화과','315','현대미술의쟁점','정성윤','2','Tue','13:00~15:00','Fri','09:00~11:00'); --TueC, FriA --성신여대--

insert into subject values('예체능대학','사회체육학과','321','사회체육개론','유덕수','3','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('예체능대학','사회체육학과','322','스포츠정책론','육현철','3','Mon','13:00~15:00','Thr','15:00~17:00'); --MonC, ThrD
insert into subject values('예체능대학','사회체육학과','323','사회체육프로그램','윤석훈','2','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC
insert into subject values('예체능대학','사회체육학과','324','사회체육행정','윤영길','2','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('예체능대학','사회체육학과','325','사회체육지도론','이미숙','2','Tue','13:00~15:00','Fri','09:00~11:00'); --TueC, FriA --한체대--

--------------------------------------------------------------------------------
create table basket(    -- 장바구니 DB
    college varchar2(50),
    department varchar2(50),
    subjectNum number(3),
    subject varchar2(50),
    professor varchar2(50),
    score number(1),
    day1 varchar2(10),
    time1 varchar2(30),
    day2 varchar2(10),
    time2 varchar2(30),
    id varchar2(10)
);

/*
insert into basket values('인문대학','정치외교학과','101','정치학개론','김면회','3','Thr','C','Fri','C','233002'); --thrC, friC
insert into basket values('인문대학','정치외교학과','102','국제정치이론','남궁영','3','Wed','D','Thr','A','233002'); --wedD, thrA
insert into basket values('인문대학','정치외교학과','103','비교정치','서경교','2','Mon','A','Wed','A','233002'); --monA, wedA
insert into basket values('인문대학','정치외교학과','104','고대정치사상','이상환','2','Tue','C','Fri','A','233002'); --tueC, friA
insert into basket values('인문대학','정치외교학과','105','정치학연구방법론','이재목','3','Tue','B','Wed','C','233002'); --tueB, wedC

insert into basket values('인문대학','행정학과','111','행정학개론','견진만','3','Mon','C','Thr','D','233002'); --MonC, ThrD
insert into basket values('인문대학','행정학과','112','지방정부론','곽선주','2','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('인문대학','행정학과','113','도시행정','권태형','3','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('인문대학','행정학과','114','행정법I','김선영','3','Mon','A','Wed','A','233002'); --MonA, WedA
insert into basket values('인문대학','행정학과','115','공공리더십론','김성수','2','Mon','B','Thr','B','233002'); --MonB, ThrB

insert into basket values('인문대학','철학과','121','근대철학사','신승환','2','Tue','C','Fri','A','233002'); --TueC, FriA
insert into basket values('인문대학','철학과','122','존재론/형이상학','이창우','3','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('인문대학','철학과','123','윤리학','박승찬','2','Mon','B','Thr','B','233002'); --MonB, ThrB
insert into basket values('인문대학','철학과','124','기초논리학','백민정','3','Thr','C','Fri','C','233002'); --ThrC, FriC
insert into basket values('인문대학','철학과','125','분석철학','이병덕','3','Tue','B','Wed','C','233002'); --TueB, WedC --가톨릭대--

insert into basket values('공과대학','컴퓨터공학과','201','자료구조','김낙현','2','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('공과대학','컴퓨터공학과','202','프로그래밍어론','김상철','2','Mon','A','Wed','A','233002'); --MonA, WedA
insert into basket values('공과대학','컴퓨터공학과','203','데이터마이닝','김성복','3','Tue','B','Wed','C','233002'); --TueB, WedC
insert into basket values('공과대학','컴퓨터공학과','204','캡스톤설계및실습','박종혁','3','Mon','B','Thr','B','233002'); --MonB, ThrB
insert into basket values('공과대학','컴퓨터공학과','205','데이터베이스설계','손기락','3','Tue','D','Fri','B','233002'); --TueD, FriB

insert into basket values('공과대학','전자공학과','211','기초미적분학I','강준우','3','Tue','C','Fri','A','233002'); --TueC, FriA
insert into basket values('공과대학','전자공학과','212','이산수학','김동식','3','Mon','A','Wed','A','233002'); --MonA, WedA
insert into basket values('공과대학','전자공학과','213','디지털공학','박영철','3','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('공과대학','전자공학과','214','컴퓨터개론','이성현','2','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('공과대학','전자공학과','215','회로이론','이정훈','2','Mon','C','Thr','D','233002'); --MonC, ThrD

insert into basket values('공과대학','기계공학과','221','공학프로그래밍입문','유송민','2','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('공과대학','기계공학과','222','열역학','장승호','3','Tue','C','Fri','A','233002'); --TueC, FriA
insert into basket values('공과대학','기계공학과','223','유체역학','홍희기','3','Tue','B','Wed','C','233002'); --TueB, WedC
insert into basket values('공과대학','기계공학과','224','재료역학','이순걸','3','Thr','C','Fri','C','233002'); --ThrC, FriC
insert into basket values('공과대학','기계공학과','225','공학수학I','이경엽','2','Mon','A','Wed','A','233002'); --MonA, WedA --경희대--

insert into basket values('예체능대학','실용음악과','301','발성과 가창의 기초','한충완','3','Thr','C','Fri','C','233002'); --ThrC, FriC
insert into basket values('예체능대학','실용음악과','302','보컬테크닉I','권진원','3','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('예체능대학','실용음악과','303','리듬합주I','피정훈','3','Tue','B','Wed','C','233002'); --TueB, WedC
insert into basket values('예체능대학','실용음악과','304','합주실기I','오정수','2','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('예체능대학','실용음악과','305','시창청음I','김정배','2','Mon','A','Wed','A','233002'); --MonA, WedA --서울예술대학--

insert into basket values('예체능대학','동양화과','311','수묵의 이해I','이만수','2','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('예체능대학','동양화과','312','동양미술사','유근택','2','Tue','B','Wed','C','233002'); --TueB, WedC
insert into basket values('예체능대학','동양화과','313','한국미술사','권기범','3','Mon','A','Wed','A','233002'); --MonA, WedA
insert into basket values('예체능대학','동양화과','314','화조의 이해','노신경','3','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('예체능대학','동양화과','315','현대미술의쟁점','정성윤','2','Tue','C','Fri','A','233002'); --TueC, FriA --성신여대--

insert into basket values('예체능대학','사회체육학과','321','사회체육개론','유덕수','3','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('예체능대학','사회체육학과','322','스포츠정책론','육현철','3','Mon','C','Thr','D','233002'); --MonC, ThrD
insert into basket values('예체능대학','사회체육학과','323','사회체육프로그램','윤석훈','2','Tue','B','Wed','C','233002'); --TueB, WedC
insert into basket values('예체능대학','사회체육학과','324','사회체육행정','윤영길','2','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('예체능대학','사회체육학과','325','사회체육지도론','이미숙','2','Tue','C','Fri','A','233002'); --TueC, FriA --한체대--
*/

--------------------------------------------------------------------------------
create table grade( -- 성적 DB
    id varchar2(10),
    subjectNum number(3),
    college varchar2(50),
    department varchar2(50),
    subject varchar2(50),
    name varchar2(20),
    grade char(1),
    grade_score number(3)
);
/*
insert into grade values(111555,'101','인문대학','정치외교학과','정치학개론','aaa','A',50);
insert into grade values(222444,'101','인문대학','정치외교학과','정치학개론','bbb','B',90);
*/

--------------------------------------------------------------------------------
create table student_info(  -- 학생정보 DB
    id varchar2(10) primary key,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    status char(1),
    department varchar2(50),
    phone varchar2(15),
    email varchar2(40),
    birth varchar2(6) not null,
    address varchar2(100),
    nickname varchar(30)
);

insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231001','940604','이민경','정치외교학과','010-1111-1111','leemk@gmail.com','940604','서울시 성북구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231002','040210','윤한결','행정학과','010-2222-2222','yoonhk@kakao.com','040210','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231003','040722','안믿음','철학과','010-3333-3333','ahnme@naver.com','040722','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231004','040206','하설','정치외교학과','010-4444-4444','has@kakao.com','040206','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231005','030410','김진혁','행정학과','010-5555-5555','kimjh@gmail.com','030410','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231006','040803','김수지','철학과','010-6666-6666','kimsj@kakao.com','040803','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231007','031121','천정현','정치외교학과','010-7777-7777','chunjh@gmail.com','031121','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231008','040912','조서영','행정학과','010-8888-8888','josy@naver.com','040912','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231009','040817','김민지','철학과','010-9999-9999','kimmj@naver.com','040817','서울시 구로구','1');

insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232001','990923','안혜린','컴퓨터공학과','010-1234-1234','ahnhr@gmail.com','990923','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232002','030204','이세라','전자공학과','010-2345-2345','leesr@naver.com','030204','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232003','040720','나종훈','기계공학과','010-3456-3456','najh@gmail.com','040720','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232004','031123','이재선','컴퓨터공학과','010-4567-4567','leejs@kakao.com','031123','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232005','040818','이하영','전자공학과','010-5678-5678','leehy@naver.com','040818','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232006','040309','이주애','기계공학과','010-6789-6789','leeja@gmail.com','040309','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232007','031102','윤유상','컴퓨터공학과','010-7890-7890','yoonys@naver.com','031102','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232008','041107','전화록','전자공학과','010-8901-8901','jeonhr@gmail.com','041107','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232009','030211','고은희','기계공학과','010-9012-9012','koeh@kakao.com','030211','서울시 구로구','1');


insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233001','970919','박하영','실용음악과','010-0987-0987','pakhy@gmail.com','970919','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233002','980512','이다은','실용음악과','010-9876-9876','leede@kakao.com','980512','서울시 강동구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233003','891006','양희동','동양화과','010-8765-8765','yanghd@kakao.com','891006','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233004','030815','안지영','사회체육학과','010-7654-7654','ahnjy@naver.com','030815','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233005','030815','안소영','사회체육학과','010-6543-6543','ahnsy@gmail.com','030815','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233006','031126','전지혜','동양화과','010-5432-5432','jeonjh@gmail.com','031126','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233007','040227','하은혜','동양화과','010-4321-4321','haeh@naver.com','040227','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233008','040719','박지원','실용음악과','010-3210-3210','pakjw@gmail.com','040719','서울시 구로구','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233009','040513','서승용','사회체육학과','010-2109-2109','seosy@naver.com','040513','서울시 구로구','1');

--------------------------------------------------------------------------------
create sequence board_seq start with 1 increment by 1;  -- 게시판 글번호 시퀀스

create table board (    -- 게시판 글 등록 DB
    seq number(3) primary key,  -- 게시판 글번호 
    id varchar2(10), -- 학번
    type number(1) not null,    -- 게시판 종류(1:자유 2:익명 3:학과)
    nickname varchar2(30) not null, -- 별명
    title varchar2(50) not null,    -- 글제목
    pass char(4) not null,  -- 글비밀번호
    content varchar2(1000), -- 글내용
    writedate date, -- 작성일
    filename varchar2(30)  -- 등록 파일명
);

insert into board values(board_seq.nextval,111111,1,'aaa','제목','1111','1번입니다', sysdate, '1.txt');
insert into board values(board_seq.nextval,111111,2,'aaa','제목','1111','2번입니다', sysdate, null);

/*
select pass from board where nickname='별명';
select * from board1 where type=1 and title like '%c%';
select * from board1 where type=1 order by seq desc;
SELECT *  FROM (SELECT ROWNUM RNUM, board.*  FROM 
      (SELECT * FROM board1 where type=1 ORDER BY seq DESC) board) 
         WHERE rnum <= 4;*/
--------------------------------------------------------------------------------
create sequence comment_seq start with 1 increment by 1;  -- 게시판 글번호 시퀀스

create table comments (    -- 댓글 등록 DB
    comment_seq number(3) primary key,    -- 댓글 글번호
    board_seq number(3),  -- 게시글 글번호
    id varchar2(10), -- 학번
    nickname varchar2(30) not null, -- 별명
    writedate_c date, -- 작성일
    content_c varchar2(1000) -- 글내용
);


--------------------------------------------------------------------------------
create table admin(  -- 관리자 DB
    id varchar(7) primary key,
    pwd varchar2(20) not null,
    status char(1) not null
);

insert into admin values(1111111, 'admin', '3');

--------------------------------------------------------------------------------
create table eval_list( -- 강의정보 DB
    subject varchar2(50) primary key,
    professor varchar2(20) not null,
    content varchar2(1000)
);

insert into eval_list values('정치학개론','김면회','정치학이란~~~');
insert into eval_list values('국제정치이론','남궁영','국제정치는~~~');
insert into eval_list values('비교정치','서경교','비교정치는~~~');
insert into eval_list values('고대정치사상','이상환','정치사상은~~~');
insert into eval_list values('정치학연구방법론','이재목','연구방법은~~~');

--------------------------------------------------------------------------------
CREATE SEQUENCE eval_seq START WITH 1 INCREMENT BY 1;

create table eval_score( -- 강의평가 DB
    num number(3) primary key,
    subject varchar2(50),
    id varchar2(10),
    content varchar2(500), 
    totalScore varchar2(10), 
    score varchar2(10), 
    lectureScore varchar2(10)
);

alter table eval_score add id varchar2(10);
alter table eval_score add constraint id foreign key(id) references student_info(student_id);

insert into eval_score values(eval_seq.nextval,'공학수학I','111111','내용','A','C','B');

commit;