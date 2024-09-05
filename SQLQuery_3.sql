-- 1. Enter a new customer (30/day)
CREATE PROCEDURE EnterNewCustomer (
    @Name NVARCHAR(220),
    @Address NVARCHAR(220),
    @Category INT
)
AS
BEGIN
    INSERT INTO Customer1 (Name, Address, Category) VALUES (@Name, @Address, @Category);
END;

-- 2. Enter a new department (infrequent)
CREATE PROCEDURE EnterNewDepartment (
    @Dept_no INT,
    @Dept_data NVARCHAR(255)
)
AS
BEGIN
    INSERT INTO Department1 (Dept_no, Dept_data) VALUES (@Dept_no, @Dept_data);
END;

-- 3. Enter a new process-id and its department together with its type and information relevant to the type (infrequent)
CREATE PROCEDURE EnterNewProcess (
    @Process_id INT,
    @dept_no INT,
    @Process_Data NVARCHAR(255)
)
AS
BEGIN
    INSERT INTO Process1 (Process_id, dept_no, Process_Data) VALUES (@Process_id, @dept_no, @Process_Data);
END;

-- 4. Enter a new assembly with its customer-name, assembly-details, assembly-id, and date-ordered and associate it with one or more processes (40/day)
CREATE PROCEDURE EnterNewAssembly (
    @AssemblyID INT,
    @AssemblyDetails NVARCHAR(255),
    @Date_Ordered DATE,
    @Name NVARCHAR(220)
)
AS
BEGIN
    INSERT INTO Assembly1 (AssemblyID, AssemblyDetails, Date_Ordered, Name) VALUES (@AssemblyID, @AssemblyDetails, @Date_Ordered, @Name);
    -- Additional logic to associate with processes if needed
END;

-- 5. Create a new account and associate it with the process, assembly, or department to which it is applicable (10/day)
CREATE PROCEDURE CreateNewAccount (
    @Accnt_no INT,
    @Date_established DATE
)
AS
BEGIN
    INSERT INTO Account1 (Accnt_no, Date_established) VALUES (@Accnt_no, @Date_established);
    -- Additional logic to associate with process, assembly, or department if needed
END;

-- 6. Enter a new job, given its job-no, assembly-id, process-id, and date the job commenced (50/day)
CREATE PROCEDURE EnterNewJob (
    @Job_no INT,
    @Date_Commenced DATETIME,
    @AssemblyID INT,
    @Process_id INT
)
AS
BEGIN
    INSERT INTO Job1 (Job_no, Date_Commenced, AssemblyID, Process_id) VALUES (@Job_no, @Date_Commenced, @AssemblyID, @Process_id);
END;

-- 7. At the completion of a job, enter the date it completed and the information relevant to the type of job (50/day)
CREATE PROCEDURE CompleteJob (
    @Job_no INT,
    @Date_Completed DATETIME,
    -- Additional parameters for job information
)
AS
BEGIN
    UPDATE Job1 SET Date_Completed = @Date_Completed WHERE Job_no = @Job_no;
    -- Additional logic to update job information
END;

-- 8. Enter a transaction-no and its sup-cost and update all the costs (details) of the affected accounts by adding sup-cost to their current values of details (50/day)
CREATE PROCEDURE EnterTransactionAndUpdateCosts (
    @Transact_no INT,
    @Accnt_no INT,
    @Sup_Cost INT
)
AS
BEGIN
    INSERT INTO Transactions1 (transact_no, accnt_no, given_cost) VALUES (@Transact_no, @Accnt_no, @Sup_Cost);
    UPDATE Process_accnt1 SET cost_processes = cost_processes + @Sup_Cost WHERE accnt_no = @Accnt_no;
    -- Additional logic to update other account details
END;

-- 9. Retrieve the total cost incurred on an assembly-id (200/day)
CREATE PROCEDURE RetrieveTotalCostForAssembly (
    @AssemblyID INT
)
AS
BEGIN
    SELECT SUM(given_cost) AS Total_Cost
    FROM Transactions1
    WHERE job_no IN (SELECT Job_no FROM Job1 WHERE AssemblyID = @AssemblyID);
END;

-- 10. Retrieve the total labor time within a department for jobs completed in the department during a given date (20/day)
CREATE PROCEDURE RetrieveTotalLaborTimeForDepartment (
    @Dept_no INT,
    @Date_Completed DATE
)
AS
BEGIN
    SELECT SUM(Labour_time) AS Total_Labor_Time
    FROM FitJob1
    WHERE Job_no IN (
        SELECT Job_no
        FROM Job1
        WHERE Process_id IN (
            SELECT Process_id
            FROM Process1
            WHERE dept_no = @Dept_no
        ) AND Date_Completed = @Date_Completed
    );
END;

-- 11. Retrieve the processes through which a given assembly-id has passed so far (in date-commenced order) and the department responsible for each process (100/day)
CREATE PROCEDURE RetrieveProcessesForAssembly (
    @AssemblyID INT
)
AS
BEGIN
    SELECT Process1.Process_id, Process1.Process_Data, Process1.dept_no, Department1.Dept_data
    FROM Process1
    INNER JOIN Begins1 ON Process1.Process_id = Begins1.process_id
    INNER JOIN Department1 ON Process1.dept_no = Department1.Dept_no
    WHERE Begins1.AssemblyID = @AssemblyID
    ORDER BY Job1.Date_Commenced;
END;

-- 12. Retrieve the customers (in name order) whose category is in a given range (100/day)
CREATE PROCEDURE RetrieveCustomersByCategoryRange (
    @MinCategory INT,
    @MaxCategory INT
)
AS
BEGIN
    SELECT * FROM Customer1 WHERE Category BETWEEN @MinCategory AND @MaxCategory ORDER BY Name;
END;

-- 13. Delete all cut-jobs whose job-no is in a given range (1/month)
CREATE PROCEDURE DeleteCutJobsByJobNoRange (
    @MinJobNo INT,
    @MaxJobNo INT
)
AS
BEGIN
    DELETE FROM CutJob1 WHERE Job_no BETWEEN @MinJobNo AND @MaxJobNo;
END;

-- 14. Change the color of a given paint job (1/week)
CREATE PROCEDURE ChangePaintJobColor (
    @Job_no INT,
    @NewColor VARCHAR(220)
)
AS
BEGIN
    UPDATE PaintJob1 SET color = @NewColor WHERE Job_no = @Job_no;
END;
