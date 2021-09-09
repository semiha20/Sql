CREATE TABLE Student_inform
(
StudentID INT,
Student_name VARCHAR(100),
Student_surname VARCHAR(100),
Student_university VARCHAR(100),
PRIMARY KEY (StudentID),
);
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (1,'Su','Mila','IAU');
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (2,'Sara','ala','IU');
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (3,'sila','Mila','ISU');
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (4,'ayse','Aila','IRU');
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (5,'Su','Lila','IU');
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (6,'ayse','Aila','IRU');
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (7,'Su','Lila','IU');
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (8,'ayse','Aila','IRU');
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (8,'Su','Lila','IU');
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (9,'ayse','Aila','IRU');
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (16,'Su','Lila','IU');
INSERT INTO Student_inform(StudentID,Student_name,Student_surname,Student_university) VALUES (27,'ayla','lalin','IZU');
select * from Student_inform

CREATE TABLE mails 
(
StudentID INT NOT NULL,
Student_mail VARCHAR(100),
FOREIGN KEY (StudentID) REFERENCES Student_inform (StudentID),

);

INSERT INTO mails(StudentID,Student_mail) VALUES (1,'SuMila@gmail.com');
INSERT INTO mails(StudentID,Student_mail) VALUES (1,'Mila@gmail.com');
select* from mails 

CREATE TABLE phones
(
StudentID INT NOT NULL,
Student_phone_number INT,
FOREIGN KEY (StudentID) REFERENCES Student_inform (StudentID),

);
INSERT INTO phones(StudentID,Student_phone_number) VALUES (1,'064278');
INSERT INTO phones(StudentID,Student_phone_number) VALUES (2,'473268');
INSERT INTO phones(StudentID,Student_phone_number) VALUES (3,'473268');
select*from phones



CREATE TABLE Room
(
Room_id INT ,
StudentID INT NOT NULL ,
Room_phone_number INT,
Type_room VARCHAR(100) NOT NULL,
Remaining_bed INT,
PRIMARY KEY(Room_id),
FOREIGN KEY (StudentID) REFERENCES Student_inform (StudentID),

);

INSERT INTO Room(Room_id,StudentID,Room_phone_number,Type_room,Remaining_bed) VALUES (11,1,1111,'single bed room',0);
INSERT INTO Room(Room_id,StudentID,Room_phone_number,Type_room,Remaining_bed) VALUES (13,2,1113,'two bed room',0);
INSERT INTO Room(Room_id,StudentID,Room_phone_number,Type_room,Remaining_bed) VALUES (15,3,1115,'single bed room',0);
INSERT INTO Room(Room_id,StudentID,Room_phone_number,Type_room,Remaining_bed) VALUES (17,4,1117,'two bed room',1);
INSERT INTO Room(Room_id,StudentID,Room_phone_number,Type_room,Remaining_bed) VALUES (19,5,1119,'two bed room',1);
INSERT INTO Room(Room_id,StudentID,Room_phone_number,Type_room,Remaining_bed) VALUES (21,6,1121,'single bed room',0);
INSERT INTO Room(Room_id,StudentID,Room_phone_number,Type_room,Remaining_bed) VALUES (17,4,1117,'two bed room',1);
INSERT INTO Room(Room_id,StudentID,Room_phone_number,Type_room,Remaining_bed) VALUES (19,5,1119,'two bed room',1);
INSERT INTO Room(Room_id,StudentID,Room_phone_number,Type_room,Remaining_bed) VALUES (21,6,1121,'single bed room',0);

select * from Room





CREATE TABLE room2 
(
Type_room VARCHAR(100) NOT NULL,
Capacity INT,
);
INSERT INTO Room2(Type_room,Capacity) VALUES ('single bed room',1);
INSERT INTO Room2(Type_room,Capacity) VALUES ('two bed room',2);
INSERT INTO Room2(Type_room,Capacity) VALUES ('meeting',100);
select * from room2



CREATE TABLE Emergency_info
(
StudentID INT NOT NULL ,
Blood_group VARCHAR(15),
Allergies VARCHAR(100),
Used_medicine VARCHAR(100),
FOREIGN KEY (StudentID) REFERENCES Student_inform (StudentID),
);
INSERT INTO Emergency_info(StudentID,Blood_group,Allergies,Used_medicine) VALUES (1,'ARH+',NULL,'parol');
INSERT INTO Emergency_info(StudentID,Blood_group,Allergies,Used_medicine) VALUES (2,'ARH-',NULL,NULL);
INSERT INTO Emergency_info(StudentID,Blood_group,Allergies,Used_medicine) VALUES (3,'ARH+',NULL,NULL);
INSERT INTO Emergency_info(StudentID,Blood_group,Allergies,Used_medicine) VALUES (4,'ABRH+','antibiotics','astım');
INSERT INTO Emergency_info(StudentID,Blood_group,Allergies,Used_medicine) VALUES (5,'BRH+',NULL,NULL);
INSERT INTO Emergency_info(StudentID,Blood_group,Allergies,Used_medicine) VALUES (6,'ARH-','cats',NULL);
INSERT INTO Emergency_info(StudentID,Blood_group,Allergies,Used_medicine) VALUES (7,'0RH+',NULL,NULL);
INSERT INTO Emergency_info(StudentID,Blood_group,Allergies,Used_medicine) VALUES (8,'0RH-',NULL,NULL);
select *from Emergency_info



CREATE TABLE Family_info
(
StudentID INT NOT NULL,
Family_name VARCHAR(100),
Family_surname VARCHAR(100),
FOREIGN KEY (StudentID) REFERENCES Student_inform (StudentID),
);

INSERT INTO Family_info(StudentID,Family_name,Family_surname) VALUES (1,'ali','mila');
INSERT INTO Family_info(StudentID,Family_name,Family_surname) VALUES (1,'ali','mila');
INSERT INTO Family_info(StudentID,Family_name,Family_surname) VALUES (1,'ali','mila');
INSERT INTO Family_info(StudentID,Family_name,Family_surname) VALUES (1,'ali','mila');
INSERT INTO Family_info(StudentID,Family_name,Family_surname) VALUES (1,'ali','mila');
INSERT INTO Family_info(StudentID,Family_name,Family_surname) VALUES (1,'ali','mila');
select * from Family_info

CREATE TABLE FamMail
(
StudentID INT NOT NULL,
Family_email VARCHAR(100),
FOREIGN KEY (StudentID) REFERENCES Student_inform (StudentID),
);

INSERT INTO FamMail(StudentID,Family_email) VALUES (1,'Milafam@gmail.com');
select * from  FamMail

CREATE TABLE FamPhone
(
StudentID INT NOT NULL,
Family_phone INT,
FOREIGN KEY (StudentID) REFERENCES Student_inform (StudentID),
);
INSERT INTO FamPhone(StudentID,Family_phone) VALUES (1,'873482');
INSERT INTO FamPhone(StudentID,Family_phone) VALUES (1,'873482');
INSERT INTO FamPhone(StudentID,Family_phone) VALUES (27,NULL);
INSERT INTO FamPhone(StudentID,Family_phone) VALUES (3,'873482');
INSERT INTO FamPhone(StudentID,Family_phone) VALUES (6,'873482');
INSERT INTO FamPhone(StudentID,Family_phone) VALUES (7,NULL);
select * from FamPhone


CREATE TABLE Finance
(
StudentID INT ,
Paid_payment INT,
Remaining_payment INT,
Total_Payment INT,
FOREIGN KEY (StudentID) REFERENCES Student_inform (StudentID),
);

INSERT INTO Finance(StudentID,Paid_payment,Remaining_payment,Total_Payment) VALUES (1,1000,2000,3000);
INSERT INTO Finance(StudentID,Paid_payment,Remaining_payment,Total_Payment) VALUES (2,1000,0,4000);
INSERT INTO Finance(StudentID,Paid_payment,Remaining_payment,Total_Payment) VALUES (3,1000,2000,5000);
INSERT INTO Finance(StudentID,Paid_payment,Remaining_payment,Total_Payment) VALUES (4,1000,0,6000);
INSERT INTO Finance(StudentID,Paid_payment,Remaining_payment,Total_Payment) VALUES (5,0,2000,9000);
INSERT INTO Finance(StudentID,Paid_payment,Remaining_payment,Total_Payment) VALUES (6,1000,2000,3000);
INSERT INTO Finance(StudentID,Paid_payment,Remaining_payment,Total_Payment) VALUES (7,1000,2000,3000);
INSERT INTO Finance(StudentID,Paid_payment,Remaining_payment,Total_Payment) VALUES (8,2000,0,3000);
SELECT * FROM Finance





CREATE TABLE Duration_of_stay
(
StudentID INT ,
Entry_d Date,
exit_d Date,
Total_duration VARCHAR(30),
FOREIGN KEY (StudentID) REFERENCES Student_inform (StudentID),
);
INSERT INTO Duration_of_stay(StudentID,Entry_d,exit_d,Total_duration) VALUES (1,'10/10/2019','10/10/2021','3 years');
INSERT INTO Duration_of_stay(StudentID,Entry_d,exit_d,Total_duration) VALUES (2,'10/10/2019','10/10/2021','2 years');
INSERT INTO Duration_of_stay(StudentID,Entry_d,exit_d,Total_duration) VALUES (3,'10/10/2019','10/10/2021','4 years');
INSERT INTO Duration_of_stay(StudentID,Entry_d,exit_d,Total_duration) VALUES (4,'10/10/2019','10/10/2021','5 years');
INSERT INTO Duration_of_stay(StudentID,Entry_d,exit_d,Total_duration) VALUES (5,'10/10/2019','10/10/2021','2 years');
INSERT INTO Duration_of_stay(StudentID,Entry_d,exit_d,Total_duration) VALUES (6,'10/10/2019','10/10/2021','4 years');
INSERT INTO Duration_of_stay(StudentID,Entry_d,exit_d,Total_duration) VALUES (7,'10/10/2019','10/10/2021','3 years');
INSERT INTO Duration_of_stay(StudentID,Entry_d,exit_d,Total_duration) VALUES (8,'10/10/2019','10/10/2021','3 years');
select * from Duration_of_stay




CREATE TABLE Workers
(
Worker_id VARCHAR(5),
Worker_name VARCHAR(100),
Worker_surname VARCHAR(100),
PRIMARY KEY (Worker_id),
);

INSERT INTO Workers(Worker_id,Worker_name,Worker_surname) VALUES ('WD1','Ayşe','Sarı');
INSERT INTO Workers(Worker_id,Worker_name,Worker_surname) VALUES ('WD2','Ayşe','Sarı');
INSERT INTO Workers(Worker_id,Worker_name,Worker_surname) VALUES ('WD3','Ayşe','Sarı');
INSERT INTO Workers(Worker_id,Worker_name,Worker_surname) VALUES ('WD4','Ayşe','Sarı');
INSERT INTO Workers(Worker_id,Worker_name,Worker_surname) VALUES ('WD5','Ayşe','Sarı');
INSERT INTO Workers(Worker_id,Worker_name,Worker_surname) VALUES ('WD6','Ayşe','Sarı');
INSERT INTO Workers(Worker_id,Worker_name,Worker_surname) VALUES ('WD7','Ayşe','Sarı');
select * from Workers

CREATE TABLE Wmail
(
Worker_id VARCHAR(5) NOT NULL,
Worker_email VARCHAR(100),
FOREIGN KEY (Worker_id) REFERENCES Workers (Worker_id),
);
INSERT INTO Wmail(Worker_id,Worker_email) VALUES ('wd3','ayse@gmail.com');
INSERT INTO Wmail(Worker_id,Worker_email) VALUES ('wd3','sarı@gmail.com');
select * from Wmail

CREATE TABLE Wphone
(
Worker_id VARCHAR(5) NOT NULL,
Worker_phone INT,
FOREIGN KEY (Worker_id) REFERENCES Workers (Worker_id),
);
INSERT INTO Wphone(Worker_id,Worker_phone) VALUES ('wd3',37294);
INSERT INTO Wphone(Worker_id,Worker_phone) VALUES ('wd3',897443);
select * from Wphone


CREATE TABLE Events_
(
Room_id INT  NOT NULL,
Worker_id VARCHAR(5) NOT NULL,
Event_id INT,
Activity VARCHAR(100),
Time_ TIME(6),
PRIMARY KEY (Event_id)
);

INSERT INTO Events_(Room_id,Worker_id,Event_id,Activity,Time_) VALUES (33,'wd3',45,'seminar',NULL);
INSERT INTO Events_(Room_id,Worker_id,Event_id,Activity,Time_) VALUES (35,'wd3',46,'seminar',NULL);
INSERT INTO Events_(Room_id,Worker_id,Event_id,Activity,Time_) VALUES (36,'wd3',47,'seminar',NULL);
INSERT INTO Events_(Room_id,Worker_id,Event_id,Activity,Time_) VALUES (37,'wd3',48,'seminar',NULL);
INSERT INTO Events_(Room_id,Worker_id,Event_id,Activity,Time_) VALUES (38,'wd3',49,'seminar',NULL);
INSERT INTO Events_(Room_id,Worker_id,Event_id,Activity,Time_) VALUES (39,'wd3',41,'seminar',NULL);
INSERT INTO Events_(Room_id,Worker_id,Event_id,Activity,Time_) VALUES (33,'wd3',50,'seminar',NULL);
select * from Events_


CREATE TABLE Event_2
(
Room_id INT,
Activity_capacity INT,
FOREIGN KEY (Room_id) REFERENCES Room (Room_id),
);
INSERT INTO Event_2(Room_id,Activity_capacity) VALUES (33,100);
INSERT INTO Event_2(Room_id,Activity_capacity) VALUES (33,300);
INSERT INTO Event_2(Room_id,Activity_capacity) VALUES (33,50);
INSERT INTO Event_2(Room_id,Activity_capacity) VALUES (33,70);
INSERT INTO Event_2(Room_id,Activity_capacity) VALUES (33,30);
INSERT INTO Event_2(Room_id,Activity_capacity) VALUES (33,100);
select * from Event_2



CREATE TABLE Board_of_discipline
(
StudentID INT ,
Worker_id VARCHAR(5) NOT NULL,
Type_problem VARCHAR (300),
Numbers_problem INT,
FOREIGN KEY (StudentID) REFERENCES Student_inform (StudentID),
);
 INSERT INTO Board_of_discipline(StudentID,Worker_id,Type_problem,Numbers_problem) VALUES (1,'WD3',' start a fight',1);
INSERT INTO Board_of_discipline(StudentID,Worker_id,Type_problem,Numbers_problem) VALUES (1,'WD3',NULL,2);
INSERT INTO Board_of_discipline(StudentID,Worker_id,Type_problem,Numbers_problem) VALUES (1,'WD3',' start a fight',3);
INSERT INTO Board_of_discipline(StudentID,Worker_id,Type_problem,Numbers_problem) VALUES (2,'WD3',' late',1);
INSERT INTO Board_of_discipline(StudentID,Worker_id,Type_problem,Numbers_problem) VALUES (3,'WD3','late',1);
INSERT INTO Board_of_discipline(StudentID,Worker_id,Type_problem,Numbers_problem) VALUES (3,NULL,' start a fight',1);
 select* from Board_of_discipline




 ----queries
 ----list the student names grouped by the years they will stay
select Student_inform.Student_name,Duration_of_stay.Total_duration
from Student_inform,Duration_of_stay
group by Duration_of_stay.Total_duration
having Student_inform.StudentID= Duration_of_stay.StudentID

 ---list all the student who are from IAU

select * from Student_inform
where Student_university='IAU'
ORDER BY Student_university 

---List all the students except the ones from ıu
Select * from Student_inform
where not Student_university ='IU'
ORDER BY Student_university

---List all the students except the ones from ıu starting from the end
Select * from Student_inform
where not Student_university ='IU'
ORDER BY Student_university DESC

---change student name 'ayla' to 'aila'

set Student_name = 'aila'
where Student_ID=27 
select * from Student_inform

----list the students name who will stay for 3 years 
select Student_inform.Student_name, Duration_of_stay.Total_duration
from Student_inform,Duration_of_stay
where Total_duration=3
and  Student_inform.StudentID= Duration_of_stay.StudentID

---make a list for the students university who are staying for 2 years
select Student_inform.Student_university, Duration_of_stay.Total_duration
from Student_inform,Duration_of_stay
where Student_inform.StudentID= Duration_of_stay.StudentID
and Total_duration= '2 years'

---List the numbers of students in each university
select count(StudentID),Student_university 
from Student_inform
group by Student_university

---what is the average amount of the paid payment
select AVG(Paid_payment)
from Finance

----list the students name who will pay more then 4000
select Student_inform.Student_name, Finance.Total_Payment
from Student_inform,Finance
where Total_Payment > 4000
and  Student_inform.StudentID= Finance.StudentID

---make a list for the studnts university who are paying above 4k
select Student_inform.Student_university, Finance.Total_Payment
from Student_inform,Finance
where Student_inform.StudentID= Finance.StudentID
and Total_Payment > 4000


---List the number of students in each university except the ones who go to IAU
select count(StudentID),Student_university 
from Student_inform
where Student_university <> 'IAU'
group by Student_university

---List the number of students in each university except the ones who go to IAU
select count(StudentID),Student_university 
from Student_inform
where Student_university <> 'IAU'
group by Student_university

---list the studnets parents who dont have a phone number
Select * from FamPhone
Where Family_phone is NULL



---List the number of students in each university except the ones who go to IU and order them backwards
select count(StudentID),Student_university 
from Student_inform
where Student_university <> 'IU'
group by Student_university
ORDER BY count(StudentID) DESC


---list the universities not duplicate values
select * from Student_inform
select distinct Student_university from Student_inform

----List all the rooms were there are remaining beds
select* from Room
where not Remaining_bed=0

---list the students who have an allergy
select * from Emergency_info
where Allergies is NULL

---list the students whose blood group is aRH-
select * from Emergency_info
where Blood_group='ARH-' 


---list the event id whose capacity avg is higher then 70
select avg(Activity_capacity),Event_id
from Event_2,Events_
where avg(Activity_capacity) > 70 


---list the complainings that dont have a worker id
select * from Board_of_discipline
where Worker_id is NULL

---list the name phone number of students whose type of problem is late
select Board_of_discipline.Type_problem,phones.Student_phone_number
from Board_of_discipline,phones
where phones.StudentID=Board_of_discipline.StudentID
and Board_of_discipline.Type_problem='late'

---list the complainings that dont have a type of problem
select * from Board_of_discipline
where Type_problem is NULL

---select the students who has max number of complaining
select MAX(Numbers_problem)
from Board_of_discipline

---select the students who has min number of complaining
select MIN(Numbers_problem)
from Board_of_discipline