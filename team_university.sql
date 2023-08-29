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
create table college_list(  -- ���� DB
    college varchar2(50) primary key
);

insert into college_list(college) values('�ι�����');
insert into college_list(college) values('��������');
insert into college_list(college) values('��ü�ɴ���');
--------------------------------------------------------------------------------
create table department_list(   -- �а� DB
    college varchar2(50),
    department varchar2(50) primary key
);

insert into department_list values('�ι�����','��ġ�ܱ��а�');
insert into department_list values('�ι�����','�����а�');
insert into department_list values('�ι�����','ö�а�');

insert into department_list values('��������','��ǻ�Ͱ��а�');
insert into department_list values('��������','���ڰ��а�');
insert into department_list values('��������','�����а�');

insert into department_list values('��ü�ɴ���','�ǿ����ǰ�');
insert into department_list values('��ü�ɴ���','����ȭ��');
insert into department_list values('��ü�ɴ���','��ȸü���а�');

--------------------------------------------------------------------------------
create table subject(   -- ���� DB
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

insert into subject values('�ι�����','��ġ�ܱ��а�','101','��ġ�а���','���ȸ','3','Thr','13:00~15:00','Fri','13:00~15:00'); --thrC, friC
insert into subject values('�ι�����','��ġ�ܱ��а�','102','������ġ�̷�','���ÿ�','3','Wed','15:00~17:00','Thr','09:00~11:00'); --wedD, thrA
insert into subject values('�ι�����','��ġ�ܱ��а�','103','����ġ','���汳','2','Mon','09:00~11:00','Wed','09:00~11:00'); --monA, wedA
insert into subject values('�ι�����','��ġ�ܱ��а�','104','�����ġ���','�̻�ȯ','2','Tue','13:00~15:00','Fri','09:00~11:00'); --tueC, friA
insert into subject values('�ι�����','��ġ�ܱ��а�','105','��ġ�п��������','�����','3','Tue','11:00~13:00','Wed','13:00~15:00'); --tueB, wedC

insert into subject values('�ι�����','�����а�','111','�����а���','������','3','Mon','13:00~15:00','Thr','15:00~17:00'); --MonC, ThrD
insert into subject values('�ι�����','�����а�','112','�������η�','������','2','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('�ι�����','�����а�','113','��������','������','3','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('�ι�����','�����а�','114','������I','�輱��','3','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA
insert into subject values('�ι�����','�����а�','115','���������ʷ�','�輺��','2','Mon','11:00~13:00','Thr','11:00~13:00'); --MonB, ThrB

insert into subject values('�ι�����','ö�а�','121','�ٴ�ö�л�','�Ž�ȯ','2','Tue','13:00~15:00','Fri','09:00~11:00'); --TueC, FriA
insert into subject values('�ι�����','ö�а�','122','�����/���̻���','��â��','3','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('�ι�����','ö�а�','123','������','�ڽ���','2','Mon','11:00~13:00','Thr','11:00~13:00'); --MonB, ThrB
insert into subject values('�ι�����','ö�а�','124','���ʳ���','�����','3','Thr','13:00~15:00','Fri','13:00~15:00'); --ThrC, FriC
insert into subject values('�ι�����','ö�а�','125','�м�ö��','�̺���','3','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC --���縯��--

insert into subject values('��������','��ǻ�Ͱ��а�','201','�ڷᱸ��','�賫��','2','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('��������','��ǻ�Ͱ��а�','202','���α׷��־��','���ö','2','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA
insert into subject values('��������','��ǻ�Ͱ��а�','203','�����͸��̴�','�輺��','3','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC
insert into subject values('��������','��ǻ�Ͱ��а�','204','ĸ���漳��׽ǽ�','������','3','Mon','B','Thr','B'); --MonB, ThrB
insert into subject values('��������','��ǻ�Ͱ��а�','205','�����ͺ��̽�����','�ձ��','3','Tue','D','Fri','B'); --TueD, FriB

insert into subject values('��������','���ڰ��а�','211','���ʹ�������I','���ؿ�','3','Tue','13:00~15:00','Fri','09:00~11:00'); --TueC, FriA
insert into subject values('��������','���ڰ��а�','212','�̻����','�赿��','3','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA
insert into subject values('��������','���ڰ��а�','213','�����а���','�ڿ�ö','3','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('��������','���ڰ��а�','214','��ǻ�Ͱ���','�̼���','2','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('��������','���ڰ��а�','215','ȸ���̷�','������','2','Mon','13:00~15:00','Thr','15:00~17:00'); --MonC, ThrD

insert into subject values('��������','�����а�','221','�������α׷����Թ�','���۹�','2','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('��������','�����а�','222','������','���ȣ','3','Tue','13:00~15:00','Fri','09:00~11:00'); --TueC, FriA
insert into subject values('��������','�����а�','223','��ü����','ȫ���','3','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC
insert into subject values('��������','�����а�','224','��Ὺ��','�̼���','3','Thr','13:00~15:00','Fri','13:00~15:00'); --ThrC, FriC
insert into subject values('��������','�����а�','225','���м���I','�̰濱','2','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA --�����--

insert into subject values('��ü�ɴ���','�ǿ����ǰ�','301','�߼��� ��â�� ����','�����','3','Thr','13:00~15:00','Fri','13:00~15:00'); --ThrC, FriC
insert into subject values('��ü�ɴ���','�ǿ����ǰ�','302','������ũ��I','������','3','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('��ü�ɴ���','�ǿ����ǰ�','303','��������I','������','3','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC
insert into subject values('��ü�ɴ���','�ǿ����ǰ�','304','���ֽǱ�I','������','2','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('��ü�ɴ���','�ǿ����ǰ�','305','��âû��I','������','2','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA --���￹������--

insert into subject values('��ü�ɴ���','����ȭ��','311','������ ����I','�̸���','2','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('��ü�ɴ���','����ȭ��','312','����̼���','������','2','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC
insert into subject values('��ü�ɴ���','����ȭ��','313','�ѱ��̼���','�Ǳ��','3','Mon','09:00~11:00','Wed','09:00~11:00'); --MonA, WedA
insert into subject values('��ü�ɴ���','����ȭ��','314','ȭ���� ����','��Ű�','3','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('��ü�ɴ���','����ȭ��','315','����̼�������','������','2','Tue','13:00~15:00','Fri','09:00~11:00'); --TueC, FriA --���ſ���--

insert into subject values('��ü�ɴ���','��ȸü���а�','321','��ȸü������','������','3','Tue','15:00~17:00','Fri','11:00~13:00'); --TueD, FriB
insert into subject values('��ü�ɴ���','��ȸü���а�','322','��������å��','����ö','3','Mon','13:00~15:00','Thr','15:00~17:00'); --MonC, ThrD
insert into subject values('��ü�ɴ���','��ȸü���а�','323','��ȸü�����α׷�','������','2','Tue','11:00~13:00','Wed','13:00~15:00'); --TueB, WedC
insert into subject values('��ü�ɴ���','��ȸü���а�','324','��ȸü������','������','2','Wed','15:00~17:00','Thr','09:00~11:00'); --WedD, ThrA
insert into subject values('��ü�ɴ���','��ȸü���а�','325','��ȸü��������','�̹̼�','2','Tue','13:00~15:00','Fri','09:00~11:00'); --TueC, FriA --��ü��--

--------------------------------------------------------------------------------
create table basket(    -- ��ٱ��� DB
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
insert into basket values('�ι�����','��ġ�ܱ��а�','101','��ġ�а���','���ȸ','3','Thr','C','Fri','C','233002'); --thrC, friC
insert into basket values('�ι�����','��ġ�ܱ��а�','102','������ġ�̷�','���ÿ�','3','Wed','D','Thr','A','233002'); --wedD, thrA
insert into basket values('�ι�����','��ġ�ܱ��а�','103','����ġ','���汳','2','Mon','A','Wed','A','233002'); --monA, wedA
insert into basket values('�ι�����','��ġ�ܱ��а�','104','�����ġ���','�̻�ȯ','2','Tue','C','Fri','A','233002'); --tueC, friA
insert into basket values('�ι�����','��ġ�ܱ��а�','105','��ġ�п��������','�����','3','Tue','B','Wed','C','233002'); --tueB, wedC

insert into basket values('�ι�����','�����а�','111','�����а���','������','3','Mon','C','Thr','D','233002'); --MonC, ThrD
insert into basket values('�ι�����','�����а�','112','�������η�','������','2','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('�ι�����','�����а�','113','��������','������','3','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('�ι�����','�����а�','114','������I','�輱��','3','Mon','A','Wed','A','233002'); --MonA, WedA
insert into basket values('�ι�����','�����а�','115','���������ʷ�','�輺��','2','Mon','B','Thr','B','233002'); --MonB, ThrB

insert into basket values('�ι�����','ö�а�','121','�ٴ�ö�л�','�Ž�ȯ','2','Tue','C','Fri','A','233002'); --TueC, FriA
insert into basket values('�ι�����','ö�а�','122','�����/���̻���','��â��','3','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('�ι�����','ö�а�','123','������','�ڽ���','2','Mon','B','Thr','B','233002'); --MonB, ThrB
insert into basket values('�ι�����','ö�а�','124','���ʳ���','�����','3','Thr','C','Fri','C','233002'); --ThrC, FriC
insert into basket values('�ι�����','ö�а�','125','�м�ö��','�̺���','3','Tue','B','Wed','C','233002'); --TueB, WedC --���縯��--

insert into basket values('��������','��ǻ�Ͱ��а�','201','�ڷᱸ��','�賫��','2','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('��������','��ǻ�Ͱ��а�','202','���α׷��־��','���ö','2','Mon','A','Wed','A','233002'); --MonA, WedA
insert into basket values('��������','��ǻ�Ͱ��а�','203','�����͸��̴�','�輺��','3','Tue','B','Wed','C','233002'); --TueB, WedC
insert into basket values('��������','��ǻ�Ͱ��а�','204','ĸ���漳��׽ǽ�','������','3','Mon','B','Thr','B','233002'); --MonB, ThrB
insert into basket values('��������','��ǻ�Ͱ��а�','205','�����ͺ��̽�����','�ձ��','3','Tue','D','Fri','B','233002'); --TueD, FriB

insert into basket values('��������','���ڰ��а�','211','���ʹ�������I','���ؿ�','3','Tue','C','Fri','A','233002'); --TueC, FriA
insert into basket values('��������','���ڰ��а�','212','�̻����','�赿��','3','Mon','A','Wed','A','233002'); --MonA, WedA
insert into basket values('��������','���ڰ��а�','213','�����а���','�ڿ�ö','3','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('��������','���ڰ��а�','214','��ǻ�Ͱ���','�̼���','2','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('��������','���ڰ��а�','215','ȸ���̷�','������','2','Mon','C','Thr','D','233002'); --MonC, ThrD

insert into basket values('��������','�����а�','221','�������α׷����Թ�','���۹�','2','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('��������','�����а�','222','������','���ȣ','3','Tue','C','Fri','A','233002'); --TueC, FriA
insert into basket values('��������','�����а�','223','��ü����','ȫ���','3','Tue','B','Wed','C','233002'); --TueB, WedC
insert into basket values('��������','�����а�','224','��Ὺ��','�̼���','3','Thr','C','Fri','C','233002'); --ThrC, FriC
insert into basket values('��������','�����а�','225','���м���I','�̰濱','2','Mon','A','Wed','A','233002'); --MonA, WedA --�����--

insert into basket values('��ü�ɴ���','�ǿ����ǰ�','301','�߼��� ��â�� ����','�����','3','Thr','C','Fri','C','233002'); --ThrC, FriC
insert into basket values('��ü�ɴ���','�ǿ����ǰ�','302','������ũ��I','������','3','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('��ü�ɴ���','�ǿ����ǰ�','303','��������I','������','3','Tue','B','Wed','C','233002'); --TueB, WedC
insert into basket values('��ü�ɴ���','�ǿ����ǰ�','304','���ֽǱ�I','������','2','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('��ü�ɴ���','�ǿ����ǰ�','305','��âû��I','������','2','Mon','A','Wed','A','233002'); --MonA, WedA --���￹������--

insert into basket values('��ü�ɴ���','����ȭ��','311','������ ����I','�̸���','2','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('��ü�ɴ���','����ȭ��','312','����̼���','������','2','Tue','B','Wed','C','233002'); --TueB, WedC
insert into basket values('��ü�ɴ���','����ȭ��','313','�ѱ��̼���','�Ǳ��','3','Mon','A','Wed','A','233002'); --MonA, WedA
insert into basket values('��ü�ɴ���','����ȭ��','314','ȭ���� ����','��Ű�','3','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('��ü�ɴ���','����ȭ��','315','����̼�������','������','2','Tue','C','Fri','A','233002'); --TueC, FriA --���ſ���--

insert into basket values('��ü�ɴ���','��ȸü���а�','321','��ȸü������','������','3','Tue','D','Fri','B','233002'); --TueD, FriB
insert into basket values('��ü�ɴ���','��ȸü���а�','322','��������å��','����ö','3','Mon','C','Thr','D','233002'); --MonC, ThrD
insert into basket values('��ü�ɴ���','��ȸü���а�','323','��ȸü�����α׷�','������','2','Tue','B','Wed','C','233002'); --TueB, WedC
insert into basket values('��ü�ɴ���','��ȸü���а�','324','��ȸü������','������','2','Wed','D','Thr','A','233002'); --WedD, ThrA
insert into basket values('��ü�ɴ���','��ȸü���а�','325','��ȸü��������','�̹̼�','2','Tue','C','Fri','A','233002'); --TueC, FriA --��ü��--
*/

--------------------------------------------------------------------------------
create table grade( -- ���� DB
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
insert into grade values(111555,'101','�ι�����','��ġ�ܱ��а�','��ġ�а���','aaa','A',50);
insert into grade values(222444,'101','�ι�����','��ġ�ܱ��а�','��ġ�а���','bbb','B',90);
*/

--------------------------------------------------------------------------------
create table student_info(  -- �л����� DB
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

insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231001','940604','�̹ΰ�','��ġ�ܱ��а�','010-1111-1111','leemk@gmail.com','940604','����� ���ϱ�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231002','040210','���Ѱ�','�����а�','010-2222-2222','yoonhk@kakao.com','040210','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231003','040722','�ȹ���','ö�а�','010-3333-3333','ahnme@naver.com','040722','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231004','040206','�ϼ�','��ġ�ܱ��а�','010-4444-4444','has@kakao.com','040206','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231005','030410','������','�����а�','010-5555-5555','kimjh@gmail.com','030410','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231006','040803','�����','ö�а�','010-6666-6666','kimsj@kakao.com','040803','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231007','031121','õ����','��ġ�ܱ��а�','010-7777-7777','chunjh@gmail.com','031121','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231008','040912','������','�����а�','010-8888-8888','josy@naver.com','040912','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('231009','040817','�����','ö�а�','010-9999-9999','kimmj@naver.com','040817','����� ���α�','1');

insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232001','990923','������','��ǻ�Ͱ��а�','010-1234-1234','ahnhr@gmail.com','990923','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232002','030204','�̼���','���ڰ��а�','010-2345-2345','leesr@naver.com','030204','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232003','040720','������','�����а�','010-3456-3456','najh@gmail.com','040720','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232004','031123','���缱','��ǻ�Ͱ��а�','010-4567-4567','leejs@kakao.com','031123','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232005','040818','���Ͽ�','���ڰ��а�','010-5678-5678','leehy@naver.com','040818','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232006','040309','���־�','�����а�','010-6789-6789','leeja@gmail.com','040309','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232007','031102','������','��ǻ�Ͱ��а�','010-7890-7890','yoonys@naver.com','031102','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232008','041107','��ȭ��','���ڰ��а�','010-8901-8901','jeonhr@gmail.com','041107','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('232009','030211','������','�����а�','010-9012-9012','koeh@kakao.com','030211','����� ���α�','1');


insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233001','970919','���Ͽ�','�ǿ����ǰ�','010-0987-0987','pakhy@gmail.com','970919','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233002','980512','�̴���','�ǿ����ǰ�','010-9876-9876','leede@kakao.com','980512','����� ������','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233003','891006','����','����ȭ��','010-8765-8765','yanghd@kakao.com','891006','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233004','030815','������','��ȸü���а�','010-7654-7654','ahnjy@naver.com','030815','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233005','030815','�ȼҿ�','��ȸü���а�','010-6543-6543','ahnsy@gmail.com','030815','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233006','031126','������','����ȭ��','010-5432-5432','jeonjh@gmail.com','031126','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233007','040227','������','����ȭ��','010-4321-4321','haeh@naver.com','040227','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233008','040719','������','�ǿ����ǰ�','010-3210-3210','pakjw@gmail.com','040719','����� ���α�','1');
insert into student_info(id,pwd,name,department,phone,email,birth,address,status) values('233009','040513','���¿�','��ȸü���а�','010-2109-2109','seosy@naver.com','040513','����� ���α�','1');

--------------------------------------------------------------------------------
create sequence board_seq start with 1 increment by 1;  -- �Խ��� �۹�ȣ ������

create table board (    -- �Խ��� �� ��� DB
    seq number(3) primary key,  -- �Խ��� �۹�ȣ 
    id varchar2(10), -- �й�
    type number(1) not null,    -- �Խ��� ����(1:���� 2:�͸� 3:�а�)
    nickname varchar2(30) not null, -- ����
    title varchar2(50) not null,    -- ������
    pass char(4) not null,  -- �ۺ�й�ȣ
    content varchar2(1000), -- �۳���
    writedate date, -- �ۼ���
    filename varchar2(30)  -- ��� ���ϸ�
);

insert into board values(board_seq.nextval,111111,1,'aaa','����','1111','1���Դϴ�', sysdate, '1.txt');
insert into board values(board_seq.nextval,111111,2,'aaa','����','1111','2���Դϴ�', sysdate, null);

/*
select pass from board where nickname='����';
select * from board1 where type=1 and title like '%c%';
select * from board1 where type=1 order by seq desc;
SELECT *  FROM (SELECT ROWNUM RNUM, board.*  FROM 
      (SELECT * FROM board1 where type=1 ORDER BY seq DESC) board) 
         WHERE rnum <= 4;*/
--------------------------------------------------------------------------------
create sequence comment_seq start with 1 increment by 1;  -- �Խ��� �۹�ȣ ������

create table comments (    -- ��� ��� DB
    comment_seq number(3) primary key,    -- ��� �۹�ȣ
    board_seq number(3),  -- �Խñ� �۹�ȣ
    id varchar2(10), -- �й�
    nickname varchar2(30) not null, -- ����
    writedate_c date, -- �ۼ���
    content_c varchar2(1000) -- �۳���
);


--------------------------------------------------------------------------------
create table admin(  -- ������ DB
    id varchar(7) primary key,
    pwd varchar2(20) not null,
    status char(1) not null
);

insert into admin values(1111111, 'admin', '3');

--------------------------------------------------------------------------------
create table eval_list( -- �������� DB
    subject varchar2(50) primary key,
    professor varchar2(20) not null,
    content varchar2(1000)
);

insert into eval_list values('��ġ�а���','���ȸ','��ġ���̶�~~~');
insert into eval_list values('������ġ�̷�','���ÿ�','������ġ��~~~');
insert into eval_list values('����ġ','���汳','����ġ��~~~');
insert into eval_list values('�����ġ���','�̻�ȯ','��ġ�����~~~');
insert into eval_list values('��ġ�п��������','�����','���������~~~');

--------------------------------------------------------------------------------
CREATE SEQUENCE eval_seq START WITH 1 INCREMENT BY 1;

create table eval_score( -- ������ DB
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

insert into eval_score values(eval_seq.nextval,'���м���I','111111','����','A','C','B');

commit;