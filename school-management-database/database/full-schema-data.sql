drop database if exists school;
create database school;
use school;

create table rooms(
    code varchar(10) primary key,
    capacity int not null,
    type varchar(50) not null
);

create table guardians(
    id int primary key ,
    name varchar(50) not null,
    job varchar(50),
    mobileNo varchar(50) not null
);

create table teachers(
    id int primary key ,
    Fname varchar(50) not null,
    Lname varchar(50) not null,
    hireDate date not null,
    major varchar(50) not null,
    email varchar(50),
    mobileNo varchar(50) not null
);

create table classes(
    code varchar(10) primary key,
    name varchar(50) not null,
    level int not null,
    roomcode varchar(50) not null,
    teacherID int not null,
    constraint `fk1` foreign key (teacherID) references teachers(Id),
    constraint `fk2` foreign key (roomcode) references rooms(code)
);

create table teach_subject(
    name varchar(50) not null,
    IecPerWeek int default 7,
    teacherId int ,
    classescode varchar(50) ,
    primary key (teacherId,classescode),
	constraint `fk3` foreign key (teacherId) references teachers(id),
    constraint `fk4` foreign key (classescode) references classes(code)
);


create table students(
    id int primary key ,
    Fname varchar(50) not null,
    Lname varchar(50) not null,
    DOB date not null,
    gender varchar(6) not null,
    address varchar(50),
    classescode varchar(50) not null,
    guardianId int not null,
    constraint `fk5` foreign key (classescode) references classes(code),
    constraint `fk6` foreign key (guardianId) references guardians(id)
);

create table exams(
    code varchar(50) primary key,
    discription varchar(50),
    classesId varchar(50) ,
    teacherId int not null,
    totalMarks decimal(5,2) not null check (totalMarks > 0),
    appointment datetime not null,
    constraint `fk7` foreign key (teacherId) references teachers(id),
    constraint `fk8` foreign key (classesId) references classes(code)
);

create table results(
    studentId int not null,
    examcode varchar(50) not null,
    studentmark decimal(5,2) not null check (studentmark >= 0),
    primary key(studentId , examcode ),
    constraint `fk9` foreign key (studentId) references students(id),
    constraint `fk10` foreign key (examcode) references exams(code)
);

insert into rooms values ('B0',20,'classroom');
insert into rooms values ('B1',25,'classroom');
insert into rooms values ('B2',20,'classroom');
insert into rooms values ('01',15,'ComputerLab');
insert into rooms values ('02',20,'classroom');
insert into rooms values ('11',22,'classroom');
insert into rooms values ('12',25,'classroom');
insert into rooms values ('13',32,'classroom');
insert into rooms values ('14',14,'scienceLab');

insert into guardians values(1,'Nidal Qasem','Nurse','0599415812');
insert into guardians values(2,'Yousef Jameel','Accountant','0599647892');
insert into guardians values(3,'AbdalRaouf Jihad','Manager','0599125212');
insert into guardians values(4,'Yaser Ahmed','Doctor','0599647899');
insert into guardians values(5,'Mohamed Ali','Engineer','0599611112');
insert into guardians values(6,'Addeb Kmail','IT Technician','0599147812');
insert into guardians values(7,'Israa Hamdan','Civil Engineer','0599477812');
insert into guardians values(8,'Karam Zayed','Marketing Officer','0590057812');
insert into guardians values(9,'Yazeed Allam','Driver','0599647414');
insert into guardians values(10,'Sami Mahmood','Plumber','0599647693');
insert into guardians values(11,'Sadiq Naser','Marketing Officer','0598057812');
insert into guardians values(12,'Isam Badi','Electrician','0599647774');
insert into guardians values(13,'Bilal Saber','Cleaner','0599647945');
insert into guardians values(14,'Asem Morad','Teacher','0599611945');
insert into guardians values(15,'Abdelrahman Khaleel','Police Man','0599671645');
insert into guardians values(16,'Najeeb Rahal','','0599677199');
insert into guardians values(17,'Hakeem Nazzal','Doctor','0599677199');
insert into guardians values(18,'Qais Rjob','Security Guard','0599677199');

insert into teachers values (1,'Ali','Ahmed',"2009-08-21",'Math','al12@gmail.com','0569378918');
insert into teachers values (2,'Nizar','Kareem',"2012-08-23",'Biology','nizar12@gmail.com','056415918');
insert into teachers values (3,'Moath','Alaa',"2010-08-15",'Arbic Langauge','moath123@gmail.com','0569374135');
insert into teachers values (4,'Hasan','Nidal',"2009-09-12",'English Language','h2sana@gmail.com','0599392712');
insert into teachers values (5,'Ahamed','Rami',"2011-07-16",'Chemistry','ahmad_rami@gmail.com','0599399511');
insert into teachers values (6,'Aws','Sadiq',"2009-08-10",'Physics','saiq201@gmail.com','0569399718');
insert into teachers values (7,'Noor','Waleed',"2011-06-19",'Arts','shsf12@gmail.com','0569399718');
insert into teachers values (8,'Besan','Rajab',"2011-09-25",'Physical Education','beso145_15@gmail.com','056944044');
insert into teachers values (9,'Musab','Imran',"2015-07-13",'Islamic Education','imran2020@gmail.com','0569397931');


insert into classes values('4A','Four Section A',4,'B0',1);
insert into classes values('4B','Four Section B',4,'B1',2);
insert into classes values('5A','Five Section A',5,'B2',3);
insert into classes values('5B','Five Section B',5,'01',4);
insert into classes values('5C','Five Section C',5,'02',5);
insert into classes values('6A','Six Section A',6,'11',6);
insert into classes values('6B','Six Section B',6,'12',7);
insert into classes values('7A','Seven Section A',7,'13',8);
insert into classes values('7B','Seven Section B',7,'14',9);
insert into classes values('8B','Seven Section B',7,'14',9);
insert into classes values('9B','Seven Section c',7,'14',9);



insert into teach_subject values('Math',8,1,'4A');
insert into teach_subject values('Biology',7,2,'4B');
insert into teach_subject values('Arbic Langauge',5,3,'5A');
insert into teach_subject values('English Language',5,4,'5B');
insert into teach_subject values('Chemistry',6,5,'5C');
insert into teach_subject values('Physics',7,6,'6A');
insert into teach_subject values('Arts',8,7,'6B');
insert into teach_subject values('Physical Education',10,8,'7A');
insert into teach_subject values('Islamic Education',11,9,'7B');


insert into students values(1,"Ali","Assaf","2011-08-15","Male","Jenin",'4A',1);
insert into students values(2,"Khalid ","Jameel","2010-08-15","Male","Nablus",'4A',2);
insert into students values(3,"Ayham","Jihad","2012-08-15","Male","Jenin",'4B',3);
insert into students values(4,"Mohammed","Nimer","2012-08-15","Male","Zababdeh",'4B',4);
insert into students values(5,"Yousef","Nabeel","2013-08-15","Male","Nablus",'5A',5);
insert into students values(6,"Foad","Rasem","2011-08-15","Male","Jenin",'5A',6);
insert into students values(7,"Faris","Hamdan","2010-08-15","Male","Jenin Camp",'5B',7);
insert into students values(8,"Mustafa","Zayed","2013-08-15","Male","Zababdeh",'5C',8);
insert into students values(9,"Asmaa","Allam","2010-08-15","Female","Tubas",'6A',9);
insert into students values(10,"Khitam","Mahmood","2013-08-15","Female","Jenin",'6A',10);
insert into students values(11,"Majd","Naser","2011-08-15","Female","Jenin",'6B',11);
insert into students values(12,"Hala","Badi","2011-08-15","Female","Jenin",'6B',12);
insert into students values(13,"Abbas","Saber","2012-08-15","Male","Jenin",'7A',13);
insert into students values(14,"Hadi","Morad","2010-08-15","Male","Jenin",'7A',14);
insert into students values(15,"Hiba","Khaleel","2011-08-15","Female","Tubas",'7A',15);
insert into students values(16,"Jalal","Rahal","2011-08-15","Male","Jenin",'7B',16);
insert into students values(17,"Omar","Nazzal","2012-08-15","Male","Tubas",'7B',17);
insert into students values(18,"Talal","Rjob","2011-08-15","Male","Jenin Camp",'7B',18);



insert into exams values('EA1','First Exam','4A',1,20,"2026-01-12 10:30:00");
insert into exams values('EA2','Second Exam','4A',1,20,"2026-01-12 11:30:00");
insert into exams values('EA3','Midterm Exam','4B',1,20,"2026-01-12 12:30:00");
insert into exams values('EA4','Quiz','4B',1,20,"2026-01-12 10:30:00");
insert into exams values('EA5','First Exam','5A',1,20,"2026-01-12 10:30:00");
insert into exams values('EAA2','Second Exam' ,'5A', 1,20,"2026-01-28 11:30:00");
insert into exams values('EAA3','Midterm Exam','5B',1,20,"2026-02-22 12:30:00");
insert into exams values('EAA4','Quiz','5B',1,20,"2026-03-1 10:30:00");
insert into exams values('AA1','First Exam','5B',1,20,"2026-03-15 10:30:00");
insert into exams values('AA2','Second Exam','5C',1,20,"2026-03-17 11:30:00");
insert into exams values('AA3','Midterm Exam','5C',1,20,"2026-05-14 12:30:00");
insert into exams values('AA4','Quiz','5C',1,20,"2026-04-29 08:30:00");
insert into exams values('GAA2','Second Exam','6A',1,20,"2026-01-12 11:30:00");
insert into exams values('GA3','Midterm Exam','6B',1,20,"2026-01-20 12:30:00");
insert into exams values('GAA4','Quiz','6B',1,20,"2026-01-25 10:30:00");
insert into exams values('GAA1','First Exam','6A',1,20,"2026-01-23 10:30:00");
insert into exams values('GA2','Second Exam','6B',1,20,"2026-01-27 11:30:00");
insert into exams values('GA33','Midterm Exam','6A',1,20,"2026-02-09 12:30:00");
insert into exams values('GA41','Quiz','5B',1,70,"2026-03-01 10:30:00");
insert into exams values('GG12','First Exam','7B',1,20,"2026-03-11 10:30:00");
insert into exams values('GG21','Second Exam','5C',1,20,"2026-03-16 11:30:00");
insert into exams values('GG32','Midterm Exam','6A',1,20,"2026-05-4 12:30:00");
insert into exams values('GG41','Quiz','7B',1,20,"2026-04-07 08:30:00");


insert into results values (1,'EA1','18');
insert into results values (2,'EA1','15');
insert into results values (1,'EA2','17');
insert into results values (2,'EA2','16');
insert into results values (3,'EA3','14');
insert into results values (4,'EA3','19');
insert into results values (3,'EA4','13');
insert into results values (4,'EA4','18');
insert into results values (5,'EA5','16');
insert into results values (6,'EA5','14');
insert into results values (5,'EAA2','17');
insert into results values (6,'EAA2','15');
insert into results values (7,'EAA3','18');
insert into results values (7,'EAA4','16');
insert into results values (7,'AA1','19');
insert into results values (8,'AA2','14');
insert into results values (8,'AA3','16');
insert into results values (8,'AA4','15');
insert into results values (9,'GAA1','18');
insert into results values (10,'GAA1','17');
insert into results values (9,'GAA2','16');
insert into results values (10,'GAA2','19');
insert into results values (11,'GA3','15');
insert into results values (12,'GA3','18');
insert into results values (11,'GAA4','14');
insert into results values (12,'GA33','17');
insert into results values (13,'GA2','16');
insert into results values (14,'GA2','18');
insert into results values (15,'GA2','17');
insert into results values (16,'GG12','15');
insert into results values (17,'GG12','18');
insert into results values (18,'GG41','16');


select * from school.students where gender = 'Male';
select count(id) AS 'Number of Female Students' from school.students where gender = 'Female';
select concat(Fname ,' ',Lname) AS 'Full Name' from school.teachers where year(hireDate) > 2010;
select * from school.students where address = 'Jenin';
select * from school.rooms where capacity >= 20;
select * from school.guardians where job in('Engineer','Doctor');

select concat(s.Fname ,' ', s.Lname) AS 'Student Name' , c.name AS 'Class Name' from school.students s
join school.classes c
On c.code = s.classescode;

select c.code , count(s.id) AS `Number Student` from school.classes c 
join school.students s
On s.classescode = c.code
group by c.code
order by `Number Student` desc;

select c.code , c.name , c.roomcode , concat(Fname ,' ',Lname) AS 'Teacher Name' from school.classes c
join school.teachers t
on c.teacherID = t.id;

select concat(s.Fname , ' ' , s.Lname ) AS 'Student Name' , g.name AS 'Guardian Name' from school.students s
join school.guardians g
on s.guardianId = g.id;

select g.id , g.name AS 'Guardian Name' ,count(s.id) AS 'Number Students' from school.students s
join school.guardians g
on s.guardianId = g.id
group by g.id , g.name ;

select s.id AS 'Student ID' , concat(s.Fname , ' ' , s.Lname ) AS 'Student Name' , g.id AS 'Guardian ID', g.name as 'Guardian Name' from school.students s
join school.guardians g
on g.id = s.guardianId
where g.job = 'Doctor';

select concat(s.Fname ,' ',s.Lname) AS 'Student Name' , c.name AS 'Class Name', concat(t.Fname ,' ',t.Lname) AS 'Teacher Name' from school.students s
join school.classes c
on s.classescode = c.code
join school.teachers t
on c.teacherID = t.id;


select t.id as 'Teacher ID' , concat(t.Fname ,' ',t.Lname) AS 'Teacher Name' , ts.name as 'Name Subject' , c.code AS 'Class Code' from school.teachers t
join school.teach_subject ts
on ts.teacherId = t.id
join school.classes c
on c.code = ts.classescode;


select e.code as 'Exam Code' , c.name as 'Class Name'  , concat(t.Fname ,' ',t.Lname) AS 'Teacher Name' from school.exams e
join school.classes c
on c.code = e.classesId
join school.teachers t
on e.teacherId = t.id;


select c.code as 'Class Code' , c.name as 'Class Name' , r.code as 'Room Code' , r.capacity as 'Room Capacity' , r.type as 'Room Type' from school.classes c
join school.rooms r 
on r.code = c.roomcode;


select s.address , count(s.id) as 'Number Student' from school.students s
group by s.address;

select c.code AS 'Class Code', count(s.gender = 'Male' or null) AS 'Number Male', count(s.gender = 'Female' or null) AS 'Number Female' FROM school.classes c
join school.students s
on s.classescode = c.code
group by c.code;

select  c.level as 'Student Level', count(s.id) as 'Students Count' from school.classes c
join school.students s
on s.classescode = c.code
group by c.level;

select t.major as 'Major Name' , count(t.id) as 'Teacher Count' from school.teachers t
group by t.major;

select t.id as 'Teacher ID' , count(c.code) AS 'Number Class' from school.teachers t
join school.classes c
on c.teacherID = t.id
group by t.id ;

select ts.teacherId as 'Teacher ID' , concat(t.Fname ,' ',t.Lname) AS 'Teacher Name' , sum(ts.IecPerWeek) as `Teacher Count` from school.teach_subject ts
join school.teachers t
on t.id = ts.teacherId
group by ts.teacherId, t.Fname , t.Lname
order by `Teacher Count` desc;

-- 1. عدد الطلاب في كل فصل
SELECT c.name, COUNT(s.id) 
FROM classes c 
JOIN students s ON c.code = s.classescode 
GROUP BY c.code;

-- 2. متوسط درجات كل طالب
SELECT s.id, CONCAT(s.Fname, ' ', s.Lname), AVG(r.studentmark)
FROM students s 
JOIN results r ON s.id = r.studentId 
GROUP BY s.id;

-- 3. عدد الحصص لكل معلم
SELECT t.id, CONCAT(t.Fname, ' ', t.Lname), SUM(ts.lecPerWeek)
FROM teachers t 
JOIN teach_subject ts ON t.id = ts.teacherId 
GROUP BY t.id;

-- 4. توزيع الطلاب حسب الجنس في كل فصل
SELECT c.code, 
       COUNT(s.gender = 'Male' OR NULL) AS Male,
       COUNT(s.gender = 'Female' OR NULL) AS Female
FROM classes c 
JOIN students s ON c.code = s.classescode 
GROUP BY c.code;

-- 5. الفصول التي ليس لها امتحانات
SELECT c.* 
FROM classes c 
LEFT JOIN exams e ON c.code = e.classesId 
WHERE e.code IS NULL;

-- 6. أفضل 3 طلاب حسب المعدل
SELECT s.id, CONCAT(s.Fname, ' ', s.Lname), AVG(r.studentmark) as avg
FROM students s 
JOIN results r ON s.id = r.studentId 
GROUP BY s.id 
ORDER BY avg DESC 
LIMIT 3;