-- Create PostgreSQL user
CREATE USER code WITH PASSWORD '12345';

-- Create database owned by code
CREATE DATABASE vn7 OWNER code;

-- Connect to the new database
\c vn7

-- Create the table
CREATE TABLE sm_users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    time TIME,
    job VARCHAR(100),
    course VARCHAR(100),
    email VARCHAR(150),
    phone VARCHAR(20),
    gender VARCHAR(20)
);

-- Insert sample values
INSERT INTO sm_users
(name, time, job, course, email, phone, gender)
VALUES
('Rahul Sharma', '10:00', 'Software Developer', 'B.Tech', 'rahul@gmail.com', '9876543211', 'Male'),
('Sara Ahmed', '11:30', 'Data Analyst', 'MCA', 'sara@gmail.com', '9876543212', 'Female'),
('Ayaan Malik', '14:00', 'Business Analyst', 'BBA', 'ayaan@gmail.com', '9876543213', 'Male'),
('Aisha Khan', '16:30', 'HR Executive', 'BBA', 'aisha@gmail.com', '9876543214', 'Female');
