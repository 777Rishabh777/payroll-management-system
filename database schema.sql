-- Create Admin table
CREATE TABLE Admin (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    password VARCHAR(255),
    name VARCHAR(255)
);

-- Create Employee table
CREATE TABLE Employee (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    dept VARCHAR(255),
    name VARCHAR(255),
    doj DATE,
    gender VARCHAR(10),
    age INT
);

-- Create LeaveRequest table (Changed from "Leave" to "LeaveRequest")
CREATE TABLE LeaveRequest (
    leave_id INT AUTO_INCREMENT PRIMARY KEY,
    duration VARCHAR(255),
    emp_id INT,
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

-- Create Salary table
CREATE TABLE Salary (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    basic DECIMAL(10, 2),
    pf DECIMAL(10, 2),
    da DECIMAL(10, 2),
    ta DECIMAL(10, 2),
    total DECIMAL(10, 2),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

-- Create Login Info table
CREATE TABLE LoginInfo (
    login_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    login_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES Admin(admin_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES Employee(emp_id) ON DELETE CASCADE
);
