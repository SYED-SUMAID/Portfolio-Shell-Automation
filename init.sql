
-- Create PostgreSQL user
CREATE USER jhon WITH PASSWORD 'jhon doe';

-- Create database
CREATE DATABASE restaurant_book OWNER jhon;

-- Connect to the new database
\c restaurant_book

-- Create dining table
CREATE TABLE dinning (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    phone VARCHAR(20),
    date DATE NOT NULL,
    time TIME NOT NULL,
    guests INTEGER NOT NULL
);

-- Insert sample values
INSERT INTO dinning
(name, email, phone, date, time, guests)
VALUES
('Ali Khan', 'ali@gmail.com', '9999999991', '2026-08-20', '19:00', 2),
('Sumaid Ahmed', 'sumaid@gmail.com', '9999999992', '2026-08-21', '20:00', 4),
('Omar Malik', 'omar@gmail.com', '9999999993', '2026-08-22', '18:30', 3),
('Ayaan Shah', 'ayaan@gmail.com', '9999999994', '2026-08-23', '21:00', 5);
