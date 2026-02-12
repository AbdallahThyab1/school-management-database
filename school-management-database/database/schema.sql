drop database if exists school;
create database school;
use school;

create table Rooms(
    code varchar(10) primary key,
    capacity int not null,
    type varchar(50) not null
);

create table Guardians(
    id int primary key ,
    name varchar(50) not null,
    job varchar(50),
    mobileNo varchar(50) not null
);

create table Teachers(
    Id int primary key ,
    Fname varchar(50) not null,
    Lname varchar(50) not null,
    hiredate date not null,
    major varchar(50) not null,
    email varchar(50),
    mobileNo varchar(50) not null
);

create table Class(
    code varchar(10) primary key,
    name varchar(50) not null,
    level int not null,
    roomcode varchar(50) not null,
    teacherID int not null,
    constraint `fk2` foreign key (teacherID) references Teachers(Id),
    constraint `fk7` foreign key (roomcode) references Rooms(code)
);

create table Subjects(
    id int primary key ,
    name varchar(50) not null,
    teacherId int unique not null,
    constraint `fk3` foreign key (teacherId) references Teachers(Id)
);


create table Students(
    id int primary key ,
    Fname varchar(50) not null,
    Lname varchar(50) not null,
    DOB date not null,
    gender varchar(6) not null,
    address varchar(50),
    classcode varchar(50) not null,
    guardianId int not null,
    constraint `fk1` foreign key (classcode) references Class(code),
    constraint `fk6` foreign key (guardianId) references Guardians(id)
);

create table Exams(
    code varchar(50) primary key,
    discription varchar(50),
    subjectId int not null,
    classId varchar(50) not null,
    totalMarks decimal(5,2) not null check (totalMarks > 0),
    appointment datetime not null,
    constraint `fk4` foreign key (subjectId) references Subjects(Id),
    constraint `fk10` foreign key (classId) references class(code)
);