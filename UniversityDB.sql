create database UniversityDB;
use UniversityDB;

-- Student table strcuture

create table if not exists STUDENT (
StudentID int NOT NULL UNIQUE,
StudentName varchar(255) NOT NULL,
Gender varchar(10) NOT NULL,
InternationalStudent char(1) NOT NULL,
AdmissionYear year NOT NULL,
Degree varchar(255) NOT NULL,
Major varchar(255) NOT NULL,
Minor varchar(255) DEFAULT NULL,
GPA float NOT NULL,
PRIMARY KEY (StudentID)
);

-- Personal Information table strcuture

create table if not exists PERSONAL_INFORMATION (
StudentPhone int NOT NULL UNIQUE,
InformationID int NOT NULL UNIQUE,
StudentPrivateEmail varchar(255) NOT NULL,
EmergencyContact int NOT NULL,
Address varchar(255) NOT NULL,
City varchar(255) NOT NULL,
Pronvince varchar(255) NOT NULL,
Country varchar(255) NOT NULL,
PRIMARY KEY (StudentPhone),
FOREIGN KEY (InformationID) references STUDENT (StudentID)
);

-- Course table strcuture

create table if not exists COURSE (
CourseCode char(5) NOT NULL,
CourseName varchar(255) NOT NULL,
RegisterID int NOT NULL,
InstructorName varchar(255) NOT NULL,
CourseCompletionStatus varchar(20) NOT NULL,
PRIMARY KEY (CourseCode),
FOREIGN KEY (RegisterID) references STUDENT (StudentID)
);

-- Grade Report table strcuture

create table if not exists GRADE_REPORT (
StudentNumber int NOT NULL,
CourseNumber char(5) NOT NULL,
ProjectPresentation float NOT NULL,
ProjectReport float NOT NULL,
Midterm1 float NOT NULL,
Midterm2 float NOT NULL,
FinalExam float NOT NULL,
FinalGrade float NOT NULL,
PRIMARY KEY (StudentNumber),
FOREIGN KEY (CourseNumber) references COURSE (CourseCode)
);

-- insert data

insert into STUDENT (StudentID,StudentName,Gender,InternationalStudent,AdmissionYear,Degree,Major,Minor,GPA)
values ('21123','Alex','Male','N',2021,'Bachelor of Science','Computer Science',NULL,'9'),
('22456','Ben','Male','Y',2022,'Bachelor of Arts','History','Sociolody','10'),
('22789','Cathy','Female','N',2023,'Bachelor of Science','Mathematics','Enviromental Science','8'),
('20135','Delia','Female','N',2020,'Bachelor of Arts','Anthropology',NULL,'7'),
('19790','Enzo','Male','Y',2019,'Bachelor of Science','Health Science',NULL,'8'),
('22246','Fernada','Female','N',2022,'Bachelor of Arts','Philosophy','Political Science','9'),
('21810','Gabriella','Female','Y',2022,'Bachelor of Science','Data Science','Statistics','11'),
('20134','Hayden','Male','Y',2020,'Bachelor of Science','Psychology',NULL,'10'),
('20145','Ivan','Male','N',2020,'Bachelor of Science','Biology','Psychology','6'),
('21567','Jina','Female','N',2021,'Bachelor of Arts','Cultural Studies',NULL,'7');

select * from STUDENT;

insert into PERSONAL_INFORMATION (StudentPhone,InformationID,StudentPrivateEmail,EmergencyContact,Address,City,Pronvince,Country)
values ('271234567','21123','alex@gmail.com','358831233','223 south street','Waterloo','Ontario','Canada'),
('271231234','22456','ben@gmail.com','351239809','46 apple road','Los Angeles','California','USA'),
('272456789','22789','cathy@gmail.com','358833546','346 future road','Calgary','Alberta','Canada'),
('275318907','20135','Delia@gmail.com','354685214','12 king street','Toronto','Ontario','Canada'),
('272455218','19790','Enzo@gmail.com','356658189','56 north road','Gracia','Barcelona','Spain'),
('279645689','22246','Fernada@gmail.com','356178903','346 hazel street','Mississauga','Ontario','Canada'),
('279098234','21810','Gabriella@gmail.com','358838888','155 january road','Sorocaba','Sao Paulo','Brazil'),
('275696315','20134','Hayden@gmail.com','358442286','123 changcheng road','Changsha','Hunan','China'),
('279906328','20145','Ivan@gmail.com','358119066','568 lester street','Waterloo','Ontario','Canada'),
('277413311','21567','Jina@gmail.com','359075300','122 sunview road','Waterloo','Ontario','Canada');

select * from PERSONAL_INFORMATION;

insert into COURSE (CourseCode,CourseName,RegisterID,InstructorName,CourseCompletionStatus)
values ('BI236','Cell Biology','20145','Stephanie, Tina','Completed'),
('MA222','Linear Algebra II','22789','Tomas, Walter','Completed'),
('HI289','History','22456','Giovana, Mandy','In Progress'),
('CP264','Data Structure II','21123','Amanda, Fiona','In Progress'),
('ST259','Probability I','21810','Mark, Roman','Completed'),
('CP213','Object-Oriented Programming','21123','Benjamin, Michael','In Progress'),
('AN356','Applied Anthropology','20135','Adam, Asher','In Progress'),
('PS270','Social Psychology','20134','Daniel, John','In Progress'),
('MA238','Discrete Mathematics','22789','Carmen, Kath','In Progress'),
('GG102','Human Geography','21567','Jenn, Lucia','Completed'),
('CS251','Visual Culture','21567','Sam, Vincent','In Progress'),
('ST260','Intro to Statistics','21810','Wilson, Ethan','In Progress'),
('BI336','Molecular Cell','20145','Rebecca, Vancy','In Progress'),
('SY215','Health and Illness','19790','Israel, Kyle','In Progress'),
('PP214','Philosophy of Mind','22246','Pan, Oliver','In Progress');

select * from COURSE;

insert into GRADE_REPORT (StudentNumber,CourseNumber,ProjectPresentation,ProjectReport,Midterm1,Midterm2,FinalExam,FinalGrade)
values ('21123','BI236','15','14','12','14','35','90');

select * from GRADE_REPORT;