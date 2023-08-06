CREATE DATABASE xworkz;

CREATE TABLE court_details(id INT, Case_Title VARCHAR(20), Petitioner_Name VARCHAR(20), Case_Category VARCHAR(20), Case_Status VARCHAR(20), Filing_Date DATE, Hearing_Date DATE, Judge_Name VARCHAR(20));
CREATE TABLE crime_details(id INT, Crime_Type VARCHAR(20), Crime_Location VARCHAR(20), Crime_Date DATE, Victim_Name VARCHAR(20), Suspect_Name VARCHAR(20), Suspect_Address VARCHAR(20), Suspect_Phone BIGINT);
CREATE TABLE bank_details(id INT, Bank_id INT, Bank_Name VARCHAR(20), Branch_Name VARCHAR(20), Account_Number BIGINT, Holder_Name VARCHAR(20), Account_Type VARCHAR(20), Transaction_Type VARCHAR(20));
CREATE TABLE cricket_match(id INT, Match_Date DATE, Match_Time TIME, Stadium_Name VARCHAR(20), City_Name VARCHAR(20), Team1_Name VARCHAR(20), Team2_Name VARCHAR(20), Match_Resullt VARCHAR(20));
CREATE TABLE miss_world(id INT, Contestant_Id INT, Contestant_Name VARCHAR(20), Country_Name VARCHAR(20), Age INT, Height FLOAT, Weight FLOAT, Hometown VARCHAR(20), Talent VARCHAR(20));

DESC court_details;

SELECT * FROM court_details;
SELECT * FROM crime_details;
SELECT * FROM bank_details;
SELECT * FROM cricket_match;
SELECT * FROM miss_world;

ALTER TABLE court_details ADD COLUMN Case_Id INT;
ALTER TABLE court_details ADD COLUMN Lawyer_Name VARCHAR(20);
ALTER TABLE court_details DROP COLUMN Case_Category;
ALTER TABLE court_details RENAME COLUMN Case_Title TO Case_Name;

ALTER TABLE crime_details ADD COLUMN Officer_Name  VARCHAR(20);
ALTER TABLE crime_details ADD COLUMN Case_Status VARCHAR(20);
ALTER TABLE crime_details DROP COLUMN Suspect_Address;
ALTER TABLE crime_details RENAME COLUMN Crime_Location TO Crime_Place;

ALTER TABLE bank_details ADD COLUMN Transaction_Date DATE;
ALTER TABLE bank_details ADD COLUMN Transaction_Amount INT;
ALTER TABLE bank_details DROP COLUMN Bank_id;
ALTER TABLE bank_details RENAME COLUMN Holder_Name TO Account_Holder_Name;

ALTER TABLE cricket_match ADD COLUMN Player_Of_The_Match  VARCHAR(20);
ALTER TABLE cricket_match ADD COLUMN Match_Summary VARCHAR(20);
ALTER TABLE cricket_match DROP COLUMN City_Name;
ALTER TABLE cricket_match RENAME COLUMN Stadium_Name TO Stadium;

ALTER TABLE miss_world ADD COLUMN Swimming_Score INT;
ALTER TABLE miss_world ADD COLUMN Gown_Score INT;
ALTER TABLE miss_world DROP COLUMN Talent;
ALTER TABLE miss_world RENAME COLUMN Hometown TO Home_Place;

INSERT INTO court_details VALUES(1, 'Theft', 'Sneha', 'Reopened', '2022-10-01', '2022-10-24', 'Nisha Patel', '67', 'Sanjay Patel');
INSERT INTO court_details VALUES(2, 'Property', 'Aryan', 'Settled', '2021-01-11', '2021-02-11', 'Arjun Singh', '987', 'Deepak Gupta');
INSERT INTO court_details VALUES(3, 'Traffic', 'Nisha', 'Dismissed', '2023-04-21', '2023-05-21', 'Ravi Kumar', '87', 'Smita Choudhary');
INSERT INTO court_details VALUES(4, 'Family', 'Arjun', 'Pending', '2023-02-09', '2023-02-19', 'Nisha Patel', '345', 'Priya Singh');
INSERT INTO court_details VALUES(5, 'Murder', 'Meera', 'Open', '2022-06-17', '2022-08-17', 'Ravi Kumar', '98', 'Rajesh Kapoor');
INSERT INTO court_details VALUES(6, 'Divorce', 'Anika', 'Settled', '2023-03-28', '2023-04-09', 'Meera Sharma', '987', 'Deepak Gupta');
INSERT INTO court_details VALUES(7, 'Traffic', 'Priya', 'Pending', '2023-07-31', '2023-08-01', 'Arjun Singh', '56', 'Neha Desai');
INSERT INTO court_details VALUES(8, 'Murder', 'Ravi', 'Closed', '2021-12-09', '2022-02-21', 'Meera Sharma', '987', 'Anjali Sharma');
INSERT INTO court_details VALUES(9, 'property', 'Siddharth', 'Reopened', '2022-11-24', '2023-02-01', 'Nisha Patel', '567', 'Vikram Khanna');
INSERT INTO court_details VALUES(10, 'Divorce', 'Varun', 'Adjourned', '2020-10-19', '2021-08-21', 'Ravi Kumar', '098', 'Priya Singh');

INSERT INTO crime_details VALUES(1, 'Cybercrime', 'Hubli', '2023-05-21', 'Meera Reddy', 'Sanya Malhotra', '7654321098', 'Gauri Mehta', 'Pending');
INSERT INTO crime_details VALUES(2, 'Fraud', 'Dharwad', '2023-04-09', 'Rajesh Patel', 'Yash Kapoor', '9998887776', 'Farhan Khan', 'Solved');
INSERT INTO crime_details VALUES(3, 'Burglary', 'Bangalore', '2023-07-31', 'Neha Singhania', 'Ananya Reddy', '9876543210', 'Esha Choudhary', 'Open');
INSERT INTO crime_details VALUES(4, 'Cybercrime', 'Hubli', '2022-06-17', 'Arjun Sharma', 'Aditya Sharma', '8527419630', 'Diya Verma', 'Pending');
INSERT INTO crime_details VALUES(5, 'Robbery', 'Hubli', '2020-10-19', 'Ayesha Khan', 'Riya Gupta', '8765432109', 'Chetan Desai', 'Closed');
INSERT INTO crime_details VALUES(6, 'Assault', 'Bangalore', '2022-11-24', 'Ravi Bhatia', 'Arjun Singhania', '7654321098', 'Bhavya Gupta', 'Lack Of evidence');
INSERT INTO crime_details VALUES(7, 'Robbery', 'Belagavi', '2023-04-09', 'Priya Choudhary', 'Nisha Verma', '8887776665', 'Anand Kumar', 'Solved');
INSERT INTO crime_details VALUES(8, 'Theft', 'Gadag', '2021-08-21', 'Vikram Joshi', 'Siddharth Patel', '9876543211', 'Avni Patel', 'Reviewing');
INSERT INTO crime_details VALUES(9, 'Burglary', 'Bangalore', '2023-03-28', 'Sneha Desai', 'Aisha Khan', '7654321097', 'Aarav Sharma', 'Open');
INSERT INTO crime_details VALUES(10, 'Fraud', 'Bangalore', '2023-02-19', 'Rahul Mehta', 'Rohan Sharma', '8765432108', 'Anand Kumar', 'Pending');

INSERT INTO bank_details VALUES(1, 'SBI', 'Riverside', '09876545678', 'Siddharth Gupta', 'Savings', 'Debit', '2023-07-31', '4000');
INSERT INTO bank_details VALUES(2, 'ICICI', 'Crown Heights', '67890987654', 'Ananya Patel', 'Current', 'Debit', '2023-03-28', '8000');
INSERT INTO bank_details VALUES(3, 'UNION', 'Freedom Plaza', '098765434567', 'Ravi Sharma', 'Savings', 'Credit', '2022-08-17', '7000');
INSERT INTO bank_details VALUES(4, 'SBI', 'Park Avenue', '7656787654', 'Riya Desai', 'Current', 'Debit', '2023-02-09', '15000');
INSERT INTO bank_details VALUES(5, 'KARNATAKA', 'Riverside', '87654345678', 'Arjun Singhania', 'Savings', 'Credit', '2023-05-2', '20000');
INSERT INTO bank_details VALUES(6, 'SBI', 'Ocean View', '09876543456', 'Neha Verma', 'Savings', 'Debit', '2021-01-11', '90000');
INSERT INTO bank_details VALUES(7, 'ICICI', 'Downtown', '45678987654', 'Ayesha Reddy', 'Current', 'Credit', '2022-10-24', '45000');
INSERT INTO bank_details VALUES(8, 'BOB', 'Freedom Plaza', '98765433456', 'Yash Khan', 'Savings', 'Credit', '2022-08-17', '7000');
INSERT INTO bank_details VALUES(9, 'RBL', 'Ocean View', '76543345678', 'Meera Choudhary', 'Savings', 'Debit', '2023-05-2', '50000');
INSERT INTO bank_details VALUES(10, 'SBI', 'Lakeside', '345678876543', 'Aditya Kumar', 'Savings', 'Credit', '2022-10-24', '24000');

INSERT INTO cricket_match VALUES(1, '2023-08-15', '19:00:00', 'Eden Gardens', 'India', 'Pakistan', 'India', 'Rohit Sharma', 'by 5 wickets');
INSERT INTO cricket_match VALUES(2, '2023-08-14', '16:30:00', 'M. Chinnaswamy', 'Pakistan', 'Australia', 'Pakistan', 'Babar Azam', 'by 25 runs');
INSERT INTO cricket_match VALUES(3, '2023-08-13', '13:45:00', 'Wankhede', 'India', 'England', 'England', 'Joe Root', 'by 9 wickets');
INSERT INTO cricket_match VALUES(4, '2023-08-12', '10:00:00', 'Narendra Modi', 'Australia', 'England', 'Australia', 'Steve Smith', 'by 7 wickets');
INSERT INTO cricket_match VALUES(5, '2023-08-11', '10:00:00', 'Sharjah', 'England', 'Afghanistan', 'England', 'Ben Stokes', 'by 120 runs');
INSERT INTO cricket_match VALUES(6, '2023-08-10', '17:30:00', 'Wankhede', 'Afghanistan', 'Netherland', 'Afghanistan', 'Rashid Khan', 'by 1 wickets');
INSERT INTO cricket_match VALUES(7, '2023-08-09', '18:00:00', 'Eden Gardens', 'Bangladesh', 'Zimbabwe', 'Bangladesh', 'Shakib Al Hasan', 'by 65 runs');
INSERT INTO cricket_match VALUES(8, '2023-08-08', '12:45:00', 'M. Chinnaswamy', 'Ireland', 'Bangladesh', 'Ireland', 'Paul Stirling', 'by 4 wickets');
INSERT INTO cricket_match VALUES(9, '2023-08-07', '15:00:00', 'Eden Gardens', 'Netherland', 'India', 'India', 'Virat Kholi', 'by 87 runs');
INSERT INTO cricket_match VALUES(10, '2023-08-06', '13:00:00', 'Narendra Modi', 'Zimbabwe', 'Pakistan', 'Pakistan', 'Mohd Rizwan', 'by 1 runs');

INSERT INTO miss_world VALUES(1, '11', 'Wenanita Angang', 'Australia', '24', '182', '56', 'Melbourne', '9', '7');
INSERT INTO miss_world VALUES(2, '06', 'Byun Hyu-jung', 'Korea', '27', '168', '52', 'Gyeongsang', '8', '8');
INSERT INTO miss_world VALUES(3, '12', 'Kana Yamaguchi[', 'Japan', '25', '170', '48', 'Toyama', '10', '9');
INSERT INTO miss_world VALUES(4, '16', 'Ivanna McMahon', 'Ireland', '28', '167', '53', 'Barefield', '8', '7');
INSERT INTO miss_world VALUES(5, '18', 'Sini Shetty', 'India', '21', '175', '56', 'Udupi', '10', '10');
INSERT INTO miss_world VALUES(6, '2', 'Clémence Botino', 'France', '26', '172', '29', 'Baie-Mahault', '7', '5');
INSERT INTO miss_world VALUES(7, '1', 'Jessica Gagen', 'England', '28', '178', '50', 'Skelmersdale', '10', '7');
INSERT INTO miss_world VALUES(8, '4', 'Xu Xin', 'China', '20', '169', '48', 'Heilongjiang', '9', '9');
INSERT INTO miss_world VALUES(9, '21', 'Jaime Vandenberg', 'Canada', '27', '177', '51', 'Lethbridge', '8', '9');
INSERT INTO miss_world VALUES(10, '9', 'Kristen Wright', 'Malaysia', '26', '181', '54', 'Kota Kinabalu', '10', '7');
