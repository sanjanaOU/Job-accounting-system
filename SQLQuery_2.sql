Insert into customer_details values ('Luke', 'Norman', 1);
Insert into customer_details values ('Abby', 'Irving', 2);
Insert into customer_details values ('John', 'Dallas', 3);
Insert into customer_details values ('Nick','Austin', 4);
Insert into customer_details values ('Maddie', 'Georgia', 5);

select * from customer_details; 

Insert into assembly_details values(1,'2002-10-22','Maddie',10);
Insert into assembly_details values(2,'2003-12-23','Luke',2);
Insert into assembly_details values(3,'2006-12-25','John',3);
Insert into assembly_details values(4,'2001-12-23','Luke',4);
Insert into assembly_details values(5,'2001-12-24','Nick',5);
Insert into assembly_details values(6,'2001-12-25','John',6);
Insert into assembly_details values(7,'2001-12-26','Abby',11);
Insert into assembly_details values(8,'2005-12-27','Luke',8);
Insert into assembly_details values(9,'2001-12-28','Abby',9);
Insert into assembly_details values(10,'2001-12-29','Maddie',10);

select * from assembly_details;


Insert into department_details values(1 ,'Mechanical');
Insert into department_details values(2 ,'Electronics');
Insert into department_details values(3 ,'Robotics');
Insert into department_details values(4 ,'Computer Science');
Insert into department_details values( 5,'Architecture');

select * from department_details;

insert into process_details values(11,'Cut',1);
Insert into process_details values(22,'Paint',2);
Insert into process_details values(33,'Cut',3);
Insert into process_details values(44,'Fit',4);
Insert into process_details values(55,'Cut',5);
Insert into process_details values(66,'Cut',1);
Insert into process_details values(77,'Fit',2);
Insert into process_details values(88,'Paint',3);
Insert into process_details values(99,'Cut',4);
Insert into process_details values(100,'Fit',5);

select * from process_details;

insert into begins values(11,1);
insert into begins values(22,2);
insert into begins values(33,3);
insert into begins values(44,5);
insert into begins values(55,5);
insert into begins values(66,6);
insert into begins values(11,7);
insert into begins values(88,8);
insert into begins values(99,9);
insert into begins values(100,10);
select * from begins;


Insert into Job values(1,11-12-2001,11-12-2002,'Cut_job');
Insert into Job values(2,12-12-2001,12-12-2002,'Paint_job');
Insert into Job values(3,13-12-2001,13-13-2002,'Fit_job');
Insert into Job values(4,14-12-2001,14-12-2001,'Cut_job');
Insert into Job values(5,15-12-2001,15-12-2002,'Paint_job');
Insert into Job values(6,16-12-2001,16-12-2002,'Fit_job');
Insert into Job values(7,17-12-2001,17-12-2002,'Cut_job');
Insert into Job values(8,18-12-2001,18-12-2002,'Paint_job');
Insert into Job values(9,19-12-2001,19-12-2002,'Fit_job');
Insert into Job values(10,20-12-2001,20-12-2002,'Cut_job');

select * from job;


Insert into Fit values(2,'ab');
Insert into Fit values(4,'cd');
Insert into Fit values(6,'ef');
Insert into Fit values(8,'gh');
Insert into Fit values(10,'ij');
Insert into Fit values(1,'kl');
Insert into Fit values(3,'mn');
Insert into Fit values(5,'op');
Insert into Fit values(7,'qr');
Insert into Fit values(9,'st');

select * from fit;

Insert into Paint values (1,'water','abc');
Insert into Paint values (3,'glass','def');
Insert into Paint values (5,'acrylic','ghi');
Insert into Paint values (7,'sand','jlk');
Insert into Paint values (9,'pastel','mno');
Insert into Paint values (2,'enamel','nandy');
Insert into Paint values (4,'rangoli','pqr');
Insert into Paint values (6,'foodcolors','stu');
Insert into Paint values (8,'metallic','vwx');
Insert into Paint values (10,'wall','yz');

select * from Paint;

insert into cut values (1,'a','j');
insert into cut values (2,'b','k');
insert into cut values (3,'c','k');
insert into cut values (4,'d','m');
insert into cut values (5,'e','n');
insert into cut values (6,'f','o');
insert into cut values (7,'g','p');
insert into cut values (8,'h','q');
insert into cut values (10,'i','r');
insert into cut values (9,'t','s');

select * from cut;

Insert into assembly values(1,'det1','2001-12-20','John',1);
Insert into assembly values(2,'det2','2001-12-21','Abby',2);
Insert into assembly values(3,'det3','2001-12-22','Blake',3);
Insert into assembly values(4,'det4','2001-12-23','Luke',4);
Insert into assembly values(5,'det5','2001-12-24','Madison',5);
Insert into assembly values(6,'det6','2001-12-25','John',6);
Insert into assembly values(7,'det7','2001-12-26','Madison',7);
Insert into assembly values(8,'det8','2001-12-27','Luke',8);
Insert into assembly values(9,'det9','2001-12-28','Abby',9);
Insert into assembly values(10,'det10','2001-12-29','Blake',10);

select * from assembly;

insert into CutJob values (2,'a','19:30:10','s','1:1:1');
insert into CutJob values (4,'b','20:30:12','t','2:2:2');
insert into CutJob values (6,'c','19:30:29','u','3:3:3');
insert into CutJob values (8,'d','10:23:2','v','4:4:4');
insert into CutJob values (10,'e','10:12:22','w','5:5:5');
insert into CutJob values (1,'f','9:3:6','x','6:6:6');
insert into CutJob values (3,'g','10:3:3','y','7:7:7');
insert into CutJob values (5,'h','4:4:4','z','8:8:8');
insert into CutJob values (7,'i','5:5:5','pp','9:9:9');
insert into CutJob values (9,'j','7:7:7','ll','10:10:10');

select * from cutjob;

insert into FitJob values(1,'1:1:1');
insert into FitJob values(2,'2:2:2');
insert into FitJob values(3,'3:3:3');
insert into FitJob values(4,'4:4:4');
insert into FitJob values(5,'5:5:5');
insert into FitJob values(6,'6:6:6');
insert into FitJob values(7,'7:7:7');
insert into FitJob values(8,'8:8:8');
insert into FitJob values(9,'9:9:9');
insert into FitJob values(10,'10:20:20');

select * from fitjob;

insert into paintjob values (1,'230','purple','9:9:9');
insert into paintjob values (2,'340','blue','8:8:8');
insert into paintjob values (3,'450','yellow','7:7:7');
insert into paintjob values (4,'560','pink','6:6:6');
insert into paintjob values (5,'670','red','5:5:5');
insert into paintjob values (6,'780','white','4:4:4');
insert into paintjob values (7,'890','black','3:3:3');
insert into paintjob values (8,'990','brown','2:2:2');
insert into paintjob values (9,'345','grey','1:1:1');
insert into paintjob values (10,'456','lavender','10:10:10');
select * from paintjob;

insert into account values(101,'2002-11-12');
insert into account values(202,'2002-11-13');
insert into account values(303,'2002-11-14');
insert into account values(404,'2002-11-15');
insert into account values(505,'2002-11-16');
insert into account values(606,'2002-11-17');
insert into account values(707,'2002-11-18');
insert into account values(808,'2002-11-19');
insert into account values(909,'2002-11-20');
insert into account values(1000,'2002-11-21');
select * from account;

insert into assembly_accnt values(101,'deta_1');
insert into assembly_accnt values(202,'deta_2');
insert into assembly_accnt values(303,'deta_3');
insert into assembly_accnt values(404,'deta_4');
insert into assembly_accnt values(505,'deta_10');
insert into assembly_accnt values(606,'deta_5');
insert into assembly_accnt values(707,'deta_6');
insert into assembly_accnt values(808,'deta_7');
insert into assembly_accnt values(909,'deta_8');
insert into assembly_accnt values(1000,'deta_9');

select * from assembly_accnt;

insert into process_accnt values(101,1000);
insert into process_accnt values(202,1100);
insert into process_accnt values(303,1200);
insert into process_accnt values (404,1300);
insert into process_accnt values(505,1400);
insert into process_accnt values(606,1500);
insert into process_accnt values(707,1600);
insert into process_accnt values(808,1700);
insert into process_accnt values(909,1800);
insert into process_accnt values(1000,1900);
select * from process_accnt;

insert into dept_accnt values(101,'abc');
insert into dept_accnt values(202,'bcd');
insert into dept_accnt values(303,'cde');
insert into dept_accnt values(404,'def');
insert into dept_accnt values(505,'efg');
insert into dept_accnt values(606,'fgh');
insert into dept_accnt values(707,'ghi');
insert into dept_accnt values(808,'ijk');
insert into dept_accnt values(909,'klm');
insert into dept_accnt values(1000,'mno');

select * from dept_accnt;

INSERT INTO Record_cost_process VALUES(1, 101);
INSERT INTO Record_cost_process VALUES(2, 202);
INSERT INTO Record_cost_process VALUES(3,303);
INSERT INTO Record_cost_process VALUES(4,404);
INSERT INTO Record_cost_process VALUES(5, 505);
INSERT INTO Record_cost_process VALUES(6, 606);
INSERT INTO Record_cost_process VALUES(7, 707);
INSERT INTO Record_cost_process VALUES(8, 808);
INSERT INTO Record_cost_process VALUES(9,909);
INSERT INTO Record_cost_process VALUES(10,1000);

SELECT * FROM Record_cost_process;

INSERT INTO Record_cost_dept VALUES(1, 101);
INSERT INTO Record_cost_dept VALUES(2, 202);
INSERT INTO Record_cost_dept VALUES(3, 303);
INSERT INTO Record_cost_dept VALUES(4, 404);
INSERT INTO Record_cost_dept VALUES(5, 505);

select * from record_cost_dept;

INSERT INTO Record_cost_assembly values (1,101);
INSERT INTO Record_cost_assembly values (2,202);
INSERT INTO Record_cost_assembly values (3,303);
INSERT INTO Record_cost_assembly values (4,404);
INSERT INTO Record_cost_assembly values (5,505);
INSERT INTO Record_cost_assembly values (6,606);
INSERT INTO Record_cost_assembly values (7,707);
INSERT INTO Record_cost_assembly values (8,808);
INSERT INTO Record_cost_assembly values (9,909);
INSERT INTO Record_cost_assembly values (10,1000);
select * from record_cost_assembly;

insert into transactions values (110,101,5000,3);
insert into transactions values (111,202,5001,4);
insert into transactions values (112,303,5002,5);
insert into transactions values (113,404,5003,6);
insert into transactions values (114,505,5004,7);
insert into transactions values (115,606,5005,8);
insert into transactions values (116,707,5006,9);
insert into transactions values (117,808,5007,10);
insert into transactions values (118,909,5008,1);
insert into transactions values (119,1000,5009,2);
select * from transactions;

insert into recorded values (110,1);
insert into recorded values (111,2);
insert into recorded values (112,3);
insert into recorded values (113,4);
insert into recorded values (114,5);
insert into recorded values (115,6);
insert into recorded values (116,7);
insert into recorded values (117,8);
insert into recorded values (118,9);
insert into recorded values (119,10);
 select * from recorded;


