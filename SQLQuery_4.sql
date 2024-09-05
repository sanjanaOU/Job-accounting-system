CREATE TABLE customer_details(
    cus_name VARCHAR(60) PRIMARY KEY, 
    address VARCHAR(60), 
    category int
);
CREATE TABLE assembly_details(
    assembly_id INT PRIMARY KEY, 
    ordered_date DATE, 
    cus_name VARCHAR(60) FOREIGN KEY REFERENCES customer_details(cus_name), 
    assembly_details VARCHAR(60)
);
CREATE TABLE 8999888(
    dept_num INT PRIMARY KEY, 
    dept_data VARCHAR(60)
);
CREATE TABLE process_details(
    process_id INT PRIMARY KEY, 
    process_data VARCHAR(60), 
    dept_num INT FOREIGN KEY REFERENCES department_details(dept_num)
);
CREATE TABLE begins_details(
    process_id INT, 
    assembly_id INT,
    PRIMARY KEY(process_id,assembly_id)
);
CREATE TABLE fitproc_details(
    process_id INT PRIMARY KEY,
    fit_type VARCHAR(40)
);
CREATE TABLE paint_proc_details(
    process_id INT PRIMARY KEY, 
    paint_type VARCHAR(20), 
    painting_method VARCHAR(40)
);
CREATE TABLE cut_proc_details(
    process_id INT PRIMARY KEY, 
    cuttingtype VARCHAR(30), 
    machine_type VARCHAR(30)
);
CREATE TABLE job_details(
    jobno INT PRIMARY KEY, 
    joining_date DATE, 
    completion_date DATE, 
    additional_info VARCHAR(50), 
    process_id INT FOREIGN KEY REFERENCES process_details(process_id), 
    assembly_id INT FOREIGN KEY REFERENCES assembly_details(assembly_id)
);
CREATE TABLE cut_job_details(
    jobno INT PRIMARY KEY,
    type_of_machine VARCHAR(40), 
    amt_time INT, 
    material_used VARCHAR(40), 
    labour_time INT
);
CREATE TABLE paint_job_details(
    jobno INT PRIMARY KEY, 
    color VARCHAR(40), 
    volume INT, 
    labour_time INT
);
CREATE TABLE fit_job_details(
    jobno INT PRIMARY KEY,
    labour_time INT
);

CREATE TABLE record(
    transaction_id INT PRIMARY KEY,
    jobno INT FOREIGN KEY REFERENCES job_details(jobno)
);

CREATE TABLE assembly_acc_details(
    assembly_acc_no INT PRIMARY KEY ,
    established_date DATE,
    cost_assembly INT
);
CREATE TABLE department_acc_details(
    department_acc_no INT PRIMARY KEY,
    established_date DATE,
    cost_department INT
);
CREATE TABLE process_acc_details(
    process_acc_no INT PRIMARY KEY,
    established_date DATE,
    cost_process INT
);

CREATE TABLE transaction_details(
    transaction_id INT PRIMARY KEY , 
    sup_cost INT,
    process_acc_no INT FOREIGN KEY REFERENCES process_acc_details(process_acc_no),
    department_acc_no INT FOREIGN KEY REFERENCES department_acc_details(department_acc_no),
    assembly_acc_no INT FOREIGN KEY REFERENCES assembly_acc_details(assembly_acc_no)
);

CREATE TABLE record_cost_process_details(
    process_acc_no INT, 
    process_id INT,
    PRIMARY KEY (process_acc_no,process_id)
);
CREATE TABLE record_cost_assembly_details(
    assembly_acc_no INT,
    assembly_id INT,
    PRIMARY KEY(assembly_acc_no,assembly_id)
);
CREATE TABLE record_cost_department_details(
    department_acc_no INT, 
    department_no INT,
    PRIMARY KEY (department_acc_no,department_no)
);