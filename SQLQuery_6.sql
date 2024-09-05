-- Customer Table
CREATE TABLE Customer_infor (
    CName VARCHAR(250) PRIMARY KEY,
    CAddress VARCHAR(255),
    CCategory INT
);
Select * from Customer_infor;
-- Assemblies Table
CREATE TABLE Assemblies_infor (
    Assembly_ID INT PRIMARY KEY,
    Date_Ordered DATE,
    Assembly_Details VARCHAR(250),
    Customer_Name VARCHAR(250),
    FOREIGN KEY (Customer_Name) REFERENCES Customer_infor(CName)
);


-- Department Table
CREATE TABLE Department_infor (
    Dept_Number INT PRIMARY KEY,
    Dept_Data VARCHAR(250)
);


-- Process Table
CREATE TABLE Process_infor (
    Process_ID INT PRIMARY KEY,
    Process_Data VARCHAR(250),
    Department_Number INT,
    FOREIGN KEY (Department_Number) REFERENCES Department_infor(Dept_Number)
);

-- Begins Table
CREATE TABLE Begins_infor (
    Process_ID INT,
    Assembly_ID INT,
    PRIMARY KEY(Process_ID,Assembly_ID),
    FOREIGN KEY (Process_ID) REFERENCES Process_infor(Process_ID),
    FOREIGN KEY (Assembly_ID) REFERENCES Assemblies_infor(Assembly_ID)
);

-- Fit Table
CREATE TABLE Fit_infor (
    Process_ID INT PRIMARY KEY,
    Fit_Type VARCHAR(250)
    FOREIGN KEY (Process_ID) REFERENCES Process_infor(Process_ID)
);

-- Paint Table
CREATE TABLE Paint_infor (
    Process_ID INT PRIMARY KEY,
    Painting_Type VARCHAR(250),
    Painting_Method VARCHAR(250)
    FOREIGN KEY (Process_ID) REFERENCES Process_infor(Process_ID)
);

-- Cut Table
CREATE TABLE Cut_infor (
    Process_ID INT PRIMARY KEY,
    Cutting_Type VARCHAR(250),
    Mach_Type VARCHAR(250)
    FOREIGN KEY (Process_ID) REFERENCES Process_infor(Process_ID)
);

-- Job Table
CREATE TABLE Job_infor (
    Job_No INT PRIMARY KEY,
    Date_Commenced DATE,
    Date_Completed DATE,
    type_job VARCHAR(250),
    Process_ID INT,
    Assembly_ID INT
    FOREIGN KEY (Process_ID) REFERENCES Process_infor(Process_ID),
    FOREIGN KEY (Assembly_ID) REFERENCES Assemblies_infor(Assembly_ID)
);
Select * from Job_infor;

-- Cut Job Table
CREATE TABLE Cut_Job_infor (
    Job_No INT PRIMARY KEY,
    Type_Machine VARCHAR(250),
    Amount_of_Time INT,
    Mat_Used VARCHAR(250),
    Labour_Time INT,
    FOREIGN KEY (Job_No) REFERENCES Job_infor(Job_No)
);

INSERT INTO Cut_Job_infor VALUES(1, 'Rod', 35, 'Steel', 50);
INSERT INTO Cut_Job_infor VALUES(2, 'Knife', 30, 'Alloy', 56);
select * from Cut_Job_infor;

-- Paint Job Table
CREATE TABLE Paint_Job_infor (
    Job_No INT PRIMARY KEY,
    Color VARCHAR(250),
    Volume INT,
    Labour_Time INT,
    FOREIGN KEY (Job_No) REFERENCES Job_infor(Job_No)
);

insert into Paint_Job_infor values(3, 'red', 30, 60);
insert into Paint_Job_infor values(4, 'blue', 35, 70);


-- Fit Job Table
CREATE TABLE Fit_Job_infor (
    Job_No INT PRIMARY KEY,
    Labour_Time INT,
    FOREIGN KEY (Job_No) REFERENCES Job_infor(Job_No)
);

insert into Fit_Job_infor values(5, 60);
insert into Fit_Job_infor values(6, 70);

-- Assembly_Account Table
CREATE TABLE Assembly_Account_infor (
   Assembly_Account_Number INT PRIMARY KEY,
   Date_Creation_assembly DATE,
   Cost_Assembly INT
);

INSERT INTO Assembly_Account_infor VALUES(1001,'2000-1-1', 50);
INSERT INTO Assembly_Account_infor VALUES(2003,'2000-1-2', 51);
INSERT INTO Assembly_Account_infor VALUES(3003,'2000-1-3', 52);
INSERT INTO Assembly_Account_infor VALUES(4004,'2000-1-4', 53);
INSERT INTO Assembly_Account_infor VALUES(5005,'2000-1-5', 54);
INSERT INTO Assembly_Account_infor VALUES(6006,'2000-1-6', 55);
INSERT INTO Assembly_Account_infor VALUES(7007,'2000-1-7', 56);
INSERT INTO Assembly_Account_infor VALUES(8008,'2000-1-8', 57);
INSERT INTO Assembly_Account_infor VALUES(9009,'2000-1-9', 58);
INSERT INTO Assembly_Account_infor VALUES(1100,'2000-1-10', 59);

select * from Assembly_Account_infor;

-- Department_Account Table
CREATE TABLE Department_Account_infor (
    Department_Account_Number INT PRIMARY KEY,
    Date_Creation_department DATE,
    Cost_Department INT
);

INSERT INTO Department_Account_infor VALUES(1221,'2000-2-1', 500);
INSERT INTO Department_Account_infor VALUES(1131,'2000-2-2', 501);
INSERT INTO Department_Account_infor VALUES(1141,'2000-2-3', 502);
INSERT INTO Department_Account_infor VALUES(1151,'2000-2-4', 503);
INSERT INTO Department_Account_infor VALUES(1161,'2000-2-5', 504);
INSERT INTO Department_Account_infor VALUES(1171,'2000-2-6', 505);
INSERT INTO Department_Account_infor VALUES(1181,'2000-2-7', 506);
INSERT INTO Department_Account_infor VALUES(1191,'2000-2-8', 507);
INSERT INTO Department_Account_infor VALUES(2101,'2000-2-9', 508);
INSERT INTO Department_Account_infor VALUES(2111,'2000-2-10', 509);

select * from Department_Account_infor;

-- Process_Account Table
CREATE TABLE Process_Account_infor (
    Process_Account_Number INT PRIMARY KEY,
    Date_Creation_process DATE,
    Cost_Process INT
);

INSERT INTO Process_Account_infor VALUES(1234,'2000-12-1', 507);
INSERT INTO Process_Account_infor VALUES(2345,'2000-12-2', 508);
INSERT INTO Process_Account_infor VALUES(3456,'2000-12-3', 509);
INSERT INTO Process_Account_infor VALUES(4567,'2000-12-4', 571);
INSERT INTO Process_Account_infor VALUES(5678,'2000-12-5', 572);
INSERT INTO Process_Account_infor VALUES(6789,'2000-12-6', 573);
INSERT INTO Process_Account_infor VALUES(7890,'2000-12-7', 574);
INSERT INTO Process_Account_infor VALUES(8900,'2000-12-8', 575);
INSERT INTO Process_Account_infor VALUES(9010,'2000-12-9', 576);
INSERT INTO Process_Account_infor VALUES(9020,'2000-12-10', 577);

-- Transaction Table
CREATE TABLE Transaction_infor (
    Transaction_Number INT PRIMARY KEY,
    Sup_Cost DECIMAL (10,2),
    Assembly_Account_Number INT,
    Department_Account_Number INT,
    Process_Account_Number INT
    FOREIGN KEY (Assembly_Account_Number) REFERENCES Assembly_Account_infor(Assembly_Account_Number),
    FOREIGN KEY (Department_Account_Number) REFERENCES Department_Account_infor(Department_Account_Number),
    FOREIGN KEY (Process_Account_Number) REFERENCES Process_Account_infor(Process_Account_Number)
);

-- recorded Table
CREATE TABLE recorded_infor (
    Transaction_Number INT PRIMARY KEY,
    Job_No INT,
    FOREIGN KEY (Transaction_Number) REFERENCES Transaction_infor(Transaction_Number),
    FOREIGN KEY (Job_No) REFERENCES Job(Job_No)
);

-- record_Assembly Table
CREATE TABLE Record_cost_Assembly_infor (
    Assembly_Account_Number INT,
    Assembly_ID INT,
    PRIMARY KEY (Assembly_Account_Number,Assembly_ID),
    FOREIGN KEY (Assembly_Account_Number) REFERENCES Assembly_Account_infor(Assembly_Account_Number),
    FOREIGN KEY (Assembly_ID) REFERENCES Assemblies_infor(Assembly_ID)
);

INSERT INTO Record_cost_Assembly_infor VALUES(11,34);
INSERT INTO Record_cost_Assembly_infor VALUES(33,98);
INSERT INTO Record_cost_Assembly_infor VALUES(44,398);
INSERT INTO Record_cost_Assembly_infor VALUES(55,560);
INSERT INTO Record_cost_Assembly_infor VALUES(66,659);
INSERT INTO Record_cost_Assembly_infor VALUES(77,767);
INSERT INTO Record_cost_Assembly_infor VALUES(88,870);
INSERT INTO Record_cost_Assembly_infor VALUES(99,8983);
INSERT INTO Record_cost_Assembly_infor VALUES(83,9879);
select * from Record_cost_Assembly_infor;
select * from Assembly_Account_infor;
select * from Assemblies_infor;

-- record_Department Table
CREATE TABLE Record_cost_Department_infor (
    Department_Account_Number INT,
    Department_Number INT,
    PRIMARY KEY(Department_Account_Number,Department_Number),
    FOREIGN KEY (Department_Account_Number) REFERENCES Department_Account_infor(Department_Account_Number),
    FOREIGN KEY (Department_Number) REFERENCES Department_infor(Dept_Number)
);

INSERT INTO Record_cost_Department_infor VALUES(12,496);
INSERT INTO Record_cost_Department_infor VALUES(13,506);
INSERT INTO Record_cost_Department_infor VALUES(14,709);
INSERT INTO Record_cost_Department_infor VALUES(15,1254);
INSERT INTO Record_cost_Department_infor VALUES(16,2356);
INSERT INTO Record_cost_Department_infor VALUES(17,496);
INSERT INTO Record_cost_Department_infor VALUES(18,506);
INSERT INTO Record_cost_Department_infor VALUES(19,709);
INSERT INTO Record_cost_Department_infor VALUES(20,1254);
INSERT INTO Record_cost_Department_infor VALUES(21,496);

select * from Record_cost_Department_infor;
select * from Department_Account_infor;
select * from Department_infor; 


-- record_Process Table
CREATE TABLE Record_cost_Process_infor (
    Process_Account_Number INT,
    Process_ID INT,
    PRIMARY KEY(Process_Account_Number,Process_ID ),
    FOREIGN KEY (Process_Account_Number) REFERENCES Process_Account_infor(Process_Account_Number),
    FOREIGN KEY (Process_ID) REFERENCES Process_infor(Process_ID)
);

INSERT INTO Record_cost_Process_infor VALUES(23, 56);
INSERT INTO Record_cost_Process_infor VALUES(33, 567);
INSERT INTO Record_cost_Process_infor VALUES(58, 679);
INSERT INTO Record_cost_Process_infor VALUES(59, 989);
INSERT INTO Record_cost_Process_infor VALUES(66, 2767);
INSERT INTO Record_cost_Process_infor VALUES(1234, 5498);
INSERT INTO Record_cost_Process_infor VALUES(2345, 6548);
INSERT INTO Record_cost_Process_infor VALUES(3456, 670);
INSERT INTO Record_cost_Process_infor VALUES(4567, 690);
INSERT INTO Record_cost_Process_infor VALUES(5678, 6548);

select * from Process_Account_infor;
select * from Process_infor;
select * from Record_cost_Process_infor;