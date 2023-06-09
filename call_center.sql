CREATE DATABASE call_center;
CREATE TABLE call_data (
ID int NOT NULL AUTO_INCREMENT, 
Weekend DATE,
Emp_ID int,
Name varchar(255),
Inbound int,
Outbound int,
AVG_Call_Handeled TIME,
Call_Handeled int,
PRIMARY KEY(ID),
FOREIGN KEY(Emp_ID) REFERENCES process_data(Emp_ID)
);

CREATE TABLE manager_data (
Emp_ID int PRIMARY KEY,
Name varchar(255),
Manager varchar(255)
);

CREATE TABLE process_data (
Emp_ID int PRIMARY KEY,
Name varchar(255),
Process varchar(255),
Region varchar(255),
Rating decimal(2,1)
);

INSERT INTO process_data (Emp_ID, Name, Process, Region, Rating)
VALUES 
(1001, 'Venky TR', 'Collection', 'USA', 4.8),
(1109, 'Yasin Khan', 'Collection', 'Canada', 3.7),
(1058, 'Sana Patil', 'Collection', 'Canada', 2.9),
(1111, 'Jessica Gomes', 'Collection', 'Canada', 2.8),
(1178, 'Sid Kamara', 'Cutomer Care', 'India', 2.3),
(1180, 'Kamlesh Nath', 'Sales', 'USA', 3.1),
(1185, 'Sajid Khan', 'Sales', 'USA', 4.5),
(1003, 'Shashank Naidu', 'Cutomer Care', 'USA', 3.6),
(1112, 'Pavan Jingur', 'Tech Support', 'India', 2.4),
(1102, 'Kanoma Chetri', 'Tech Support', 'USA', 2.1),
(1100, 'Anand Sharma', 'Tech Support', 'Canada', 3.4);

INSERT INTO manager_data (Emp_ID, Name, Manager)
VALUES
(1005, 'Amar Jain', 'Jack John'),
(1008, 'Kirthi Pandey', 'Trisha Ken'),
(1115, 'Parul Shetty', 'Asif Khan'),
(1001, 'Venky TR', 'Asif Khan'),
(1109, 'Yasin Khan', 'Shiva Reddy'),
(1058, 'Sana Patil', 'Vicky Chopra'),
(1111, 'Jessica Gomes', 'Jack John'),
(1178, 'Sid Kamara', 'Trisha Ken'),
(1180, 'Kamlesh Nath', 'Vicky Chopra'),
(1185, 'Sajid Khan', 'Trisha Ken'),
(1003, 'Shashank Naidu', 'Shiva Reddy'),
(1112, 'Pavan Jingur', 'Shiva Reddy'),
(1102, 'Kanoma Chetri', 'Shiva Reddy'),
(1100, 'Anand Sharma', 'Jack John');

INSERT INTO call_data (Weekend, Emp_ID, Name, Inbound, Outbound, AVG_Call_Handeled, Call_Handeled)
VALUES
('2022-10-03', 1005, 'Amar Jain', 5, 38, '01:02:30', 39),
('2022-10-03', 1008, 'Kirthi Pandey', 11, 37, '02:02:30', 45),
('2022-10-03', 1115, 'Parul Shetty', 16, 33, '03:02:30', 35),
('2022-10-03', 1001, 'Venky TR', 15, 33, '04:02:30', 41),
('2022-10-03', 1109, 'Yasin Khan', 12, 26, '05:02:30', 30),
('2022-10-03', 1058, 'Sana Patil', 5, 33, '00:45:18', 28),
('2022-10-03', 1111, 'Jessica Gomes', 12, 31, '01:45:18', 42),
('2022-10-03', 1178, 'Sid Kamara', 11, 29, '02:45:18', 35),
('2022-10-03', 1180, 'Kamlesh Nath', 3, 30, '03:45:18', 30),
('2022-10-03', 1185, 'Sajid Khan', 10, 6, '03:45:18', 10),
('2022-10-03', 1003, 'Shashank Naidu', 8, 15, '05:45:18', 19),
('2022-10-03', 1102, 'Kanoma Chetri', 7, 5, '00:45:18', 5),
('2022-10-03', 1100, 'Anand Sharma', 12, 8, '01:45:18', 18),
('2022-10-03', 1112, 'Pavan Jingur', 17, 35, '01:18:02', 51),
('2022-10-10', 1005, 'Amar Jain', 13, 29, '04:02:30', 36),
('2022-10-10', 1008, 'Kirthi Pandey', 5, 11, '05:02:30', 13),
('2022-10-10', 1115, 'Parul Shetty', 13, 28, '00:45:18', 38),
('2022-10-10', 1001, 'Venky TR', 8, 31, '01:45:18', 36),
('2022-10-10', 1109, 'Yasin Khan', 17, 30, '02:45:18', 44),
('2022-10-10', 1058, 'Sana Patil', 14, 18, '03:45:18', 29),
('2022-10-10', 1111, 'Jessica Gomes', 12, 22, '02:02:30', 31),
('2022-10-10', 1178, 'Sid Kamara', 10, 2, '03:02:30', 6),
('2022-10-10', 1180, 'Kamlesh Nath', 12, 23, '04:02:30', 29),
('2022-10-10', 1185, 'Sajid Khan', 11, 35, '05:02:30', 40),
('2022-10-10', 1003, 'Shashank Naidu', 14, 25, '00:45:18', 33),
('2022-10-10', 1112, 'Pavan Jingur', 11, 29, '01:45:18', 34),
('2022-10-17', 1005, 'Amar Jain', 5, 27, '00:18:02', 26),
('2022-10-17', 1008, 'Kirthi Pandey', 10, 26, '04:02:30', 30),
('2022-10-17', 1115, 'Parul Shetty', 13, 34, '04:20:30', 46),
('2022-10-17', 1001, 'Venky TR', 13, 28, '00:45:18', 40),
('2022-10-17', 1109, 'Yasin Khan', 5, 21, '01:45:18', 25),
('2022-10-17', 1058, 'Sana Patil', 13, 22, '02:45:18', 34),
('2022-10-17', 1111, 'Jessica Gomes', 8, 26, '02:02:30', 33),
('2022-10-17', 1178, 'Sid Kamara', 3, 28, '03:02:30', 30),
('2022-10-17', 1180, 'Kamlesh Nath', 10, 25, '04:02:30', 34),
('2022-10-17', 1185, 'Sajid Khan', 5, 34, '05:02:30', 34),
('2022-10-17', 1003, 'Shashank Naidu', 8, 29, '00:45:18', 32),
('2022-10-17', 1112, 'Pavan Jingur', 16, 20, '01:45:18', 31),
('2022-10-24', 1005, 'Amar Jain', 8, 23, '00:18:02', 26),
('2022-10-24', 1008, 'Kirthi Pandey', 2, 26, '04:02:30', 23),
('2022-10-24', 1115, 'Parul Shetty', 15, 15, '05:02:30', 25),
('2022-10-24', 1001, 'Venky TR', 17, 10, '03:45:18', 22),
('2022-10-24', 1109, 'Yasin Khan', 11, 22, '02:02:30', 28),
('2022-10-24', 1058, 'Sana Patil', 15, 35, '04:12:30', 45),
('2022-10-24', 1111, 'Jessica Gomes', 17, 25, '04:02:30', 35),
('2022-10-24', 1178, 'Sid Kamara', 17, 18, '05:02:30', 28),
('2022-10-24', 1180, 'Kamlesh Nath', 9, 28, '02:45:18', 30),
('2022-10-24', 1185, 'Sajid Khan', 12, 22, '01:45:18', 27),
('2022-10-24', 1003, 'Shashank Naidu', 14, 31, '00:18:02', 38),
('2022-10-24', 1112, 'Pavan Jingur', 9, 25, '04:02:30', 27),
('2022-10-31', 1005, 'Amar Jain', 12, 5, '05:02:30', 10),
('2022-10-31', 1008, 'Kirthi Pandey', 9, 31, '00:45:18', 33),
('2022-10-31', 1115, 'Parul Shetty', 14, 25, '01:45:18', 32),
('2022-10-31', 1001, 'Venky TR', 11, 22, '00:18:02', 32),
('2022-10-31', 1109, 'Yasin Khan', 13, 35, '04:02:30', 47),
('2022-10-31', 1058, 'Sana Patil', 9, 14, '05:02:30', 22),
('2022-10-31', 1111, 'Jessica Gomes', 14, 24, '04:45:18', 37),
('2022-10-31', 1178, 'Sid Kamara', 10, 24, '03:59:18', 33),
('2022-10-31', 1180, 'Kamlesh Nath', 15, 25, '00:18:02', 39),
('2022-10-31', 1185, 'Sajid Khan', 8, 14, '03:02:30', 21),
('2022-10-31', 1003, 'Shashank Naidu', 10, 35, '04:02:30', 34),
('2022-10-31', 1112, 'Pavan Jingur', 16, 27, '05:02:30', 32),
('2022-11-07', 1005, 'Amar Jain', 14, 45, '08:45:18', 48),
('2022-11-07', 1008, 'Kirthi Pandey', 12, 33, '01:45:18', 34),
('2022-11-07', 1115, 'Parul Shetty', 14, 50, '03:28:02', 53),
('2022-11-07', 1001, 'Venky TR', 15, 39, '04:02:30', 42),
('2022-11-07', 1109, 'Yasin Khan', 15, 32, '04:02:30', 35),
('2022-11-07', 1058, 'Sana Patil', 25, 30, '05:02:30', 43),
('2022-11-07', 1111, 'Jessica Gomes', 11, 34, '00:45:18', 33),
('2022-11-07', 1178, 'Sid Kamara', 16, 35, '02:45:18', 39),
('2022-11-07', 1180, 'Kamlesh Nath', 29, 25, '00:18:02', 42),
('2022-11-07', 1185, 'Sajid Khan', 13, 40, '04:02:30', 41),
('2022-11-07', 1003, 'Shashank Naidu', 17, 32, '05:02:30', 37),
('2022-11-07', 1112, 'Pavan Jingur', 10, 23, '04:45:18', 21),
('2022-11-14', 1005, 'Amar Jain', 16, 25, '03:59:18', 29),
('2022-11-14', 1008, 'Kirthi Pandey', 14, 31, '01:18:02', 33),
('2022-11-14', 1115, 'Parul Shetty', 9, 44, '03:02:30', 41),
('2022-11-14', 1001, 'Venky TR', 12, 29, '04:02:30', 29),
('2022-11-14', 1109, 'Yasin Khan', 11, 22, '05:02:30', 24),
('2022-11-14', 1058, 'Sana Patil', 2, 29, '06:45:18', 22),
('2022-11-14', 1111, 'Jessica Gomes', 14, 31, '01:45:18', 36),
('2022-11-14', 1178, 'Sid Kamara', 9, 34, '03:28:02', 34),
('2022-11-14', 1180, 'Kamlesh Nath', 11, 33, '04:02:30', 35),
('2022-11-14', 1185, 'Sajid Khan', 17, 33, '04:02:30', 41),
('2022-11-14', 1003, 'Shashank Naidu', 34, 24, '05:02:30', 49),
('2022-11-14', 1112, 'Pavan Jingur', 12, 24, '04:45:18', 27),
('2022-11-21', 1005, 'Amar Jain', 22, 31, '03:59:18', 44),
('2022-11-21', 1008, 'Kirthi Pandey', 10, 20, '02:18:02', 20),
('2022-11-21', 1115, 'Parul Shetty', 22, 28, '03:02:30', 40),
('2022-11-21', 1001, 'Venky TR', 5, 48, '04:02:30', 43),
('2022-11-21', 1109, 'Yasin Khan', 9, 34, '05:02:30', 33),
('2022-11-21', 1058, 'Sana Patil', 9, 33, '07:00:18', 32),
('2022-11-21', 1111, 'Jessica Gomes', 17, 33, '01:45:18', 40),
('2022-11-21', 1178, 'Sid Kamara', 23, 28, '03:28:02', 41),
('2022-11-21', 1180, 'Kamlesh Nath', 15, 29, '04:02:30', 34),
('2022-11-21', 1185, 'Sajid Khan', 8, 29, '04:02:30', 27),
('2022-11-21', 1003, 'Shashank Naidu', 7, 35, '05:55:30', 28),
('2022-11-21', 1112, 'Pavan Jingur', 14, 45, '03:59:18', 45),
('2022-11-28', 1005, 'Amar Jain', 10, 32, '01:18:02', 28),
('2022-11-28', 1008, 'Kirthi Pandey', 14, 55, '03:02:30', 55),
('2022-11-28', 1115, 'Parul Shetty', 5, 15, '04:02:30', 6),
('2022-11-28', 1001, 'Venky TR', 16, 55, '05:02:30', 57),
('2022-11-28', 1109, 'Yasin Khan', 7, 15, '04:45:18', 8),
('2022-11-28', 1058, 'Sana Patil', 14, 30, '03:45:18', 41),
('2022-11-28', 1111, 'Jessica Gomes', 13, 22, '03:28:02', 32),
('2022-11-28', 1178, 'Sid Kamara', 25, 34, '04:02:30', 56),
('2022-11-28', 1180, 'Kamlesh Nath', 10, 31, '04:02:30', 38),
('2022-11-28', 1185, 'Sajid Khan', 2, 12, '05:02:30', 9),
('2022-11-28', 1003, 'Shashank Naidu', 14, 21, '04:45:18', 30),
('2022-11-28', 1102, 'Kanoma Chetri', 5, 22, '03:28:02', 22),
('2022-11-28', 1100, 'Anand Sharma', 2, 12, '04:02:30', 9),
('2022-11-28', 1112, 'Pavan Jingur', 2, 30, '04:02:30', 27),
('2022-12-05', 1005, 'Amar Jain', 11, 24, '02:18:02', 30),
('2022-12-05', 1008, 'Kirthi Pandey', 11, 30, '05:02:30', 36),
('2022-12-05', 1115, 'Parul Shetty', 16, 26, '04:02:30', 37),
('2022-12-05', 1001, 'Venky TR', 17, 29, '03:59:18', 44),
('2022-12-05', 1109, 'Yasin Khan', 14, 48, '01:18:02', 60),
('2022-12-05', 1058, 'Sana Patil', 17, 26, '03:02:30', 41),
('2022-12-05', 1111, 'Jessica Gomes', 17, 20, '04:02:30', 35),
('2022-12-05', 1178, 'Sid Kamara', 13, 45, '05:02:30', 56),
('2022-12-05', 1180, 'Kamlesh Nath', 14, 35, '06:45:18', 47),
('2022-12-05', 1185, 'Sajid Khan', 33, 32, '01:45:18', 63),
('2022-12-05', 1003, 'Shashank Naidu', 16, 20, '03:28:02', 28),
('2022-12-05', 1112, 'Pavan Jingur', 8, 25, '04:02:30', 25),
('2022-12-12', 1005, 'Amar Jain', 11, 24, '04:02:30', 27),
('2022-12-12', 1008, 'Kirthi Pandey', 12, 23, '05:02:30', 27),
('2022-12-12', 1115, 'Parul Shetty', 33, 25, '04:45:18', 50),
('2022-12-12', 1001, 'Venky TR', 16, 20, '03:59:18', 28),
('2022-12-12', 1109, 'Yasin Khan', 14, 31, '02:18:02', 37),
('2022-12-12', 1058, 'Sana Patil', 12, 30, '03:02:30', 34),
('2022-12-12', 1111, 'Jessica Gomes', 15, 35, '04:02:30', 46),
('2022-12-12', 1178, 'Sid Kamara', 9, 35, '05:02:30', 40),
('2022-12-12', 1180, 'Kamlesh Nath', 14, 28, '03:59:18', 38),
('2022-12-12', 1185, 'Sajid Khan', 45, 24, '01:18:02', 65),
('2022-12-12', 1003, 'Shashank Naidu', 17, 23, '03:02:30', 36),
('2022-12-12', 1112, 'Pavan Jingur', 12, 22, '04:02:30', 30),
('2022-12-19', 1005, 'Amar Jain', 12, 31, '04:02:30', 39),
('2022-12-19', 1008, 'Kirthi Pandey', 8, 27, '06:45:18', 33),
('2022-12-19', 1115, 'Parul Shetty', 8, 34, '01:45:18', 40),
('2022-12-19', 1001, 'Venky TR', 12, 28, '03:28:02', 38),
('2022-12-19', 1109, 'Yasin Khan', 14, 28, '04:02:30', 40),
('2022-12-19', 1058, 'Sana Patil', 34, 29, '04:02:30', 61),
('2022-12-19', 1111, 'Jessica Gomes', 14, 34, '05:02:30', 37),
('2022-12-19', 1178, 'Sid Kamara', 12, 34, '04:15:22', 35),
('2022-12-19', 1180, 'Kamlesh Nath', 12, 25, '03:59:18', 26),
('2022-12-19', 1185, 'Sajid Khan', 12, 35, '02:18:02', 36),
('2022-12-19', 1003, 'Shashank Naidu', 15, 32, '03:02:30', 36),
('2022-12-19', 1112, 'Pavan Jingur', 10, 44, '04:02:30', 43),
('2022-12-26', 1005, 'Amar Jain', 11, 12, '06:22:35', 17),
('2022-12-26', 1008, 'Kirthi Pandey', 12, 24, '04:02:30', 30),
('2022-12-26', 1115, 'Parul Shetty', 16, 23, '04:02:30', 33),
('2022-12-26', 1001, 'Venky TR', 14, 22, '05:02:30', 30),
('2022-12-26', 1109, 'Yasin Khan', 16, 35, '04:45:18', 45),
('2022-12-26', 1058, 'Sana Patil', 21, 45, '03:45:18', 60),
('2022-12-26', 1111, 'Jessica Gomes', 13, 40, '02:18:02', 47),
('2022-12-26', 1178, 'Sid Kamara', 22, 29, '05:02:30', 50),
('2022-12-26', 1180, 'Kamlesh Nath', 13, 44, '04:02:30', 56),
('2022-12-26', 1185, 'Sajid Khan', 3, 28, '04:01:18', 30),
('2022-12-26', 1003, 'Shashank Naidu', 12, 35, '01:18:02', 40),
('2022-12-26', 1112, 'Pavan Jingur', 9, 34, '03:42:30', 36),
('2022-12-26', 1102, 'Kanoma Chetri', 9, 9, '03:15:18', 11),
('2022-12-26', 1100, 'Anand Sharma', 18, 10, '04:29:25', 12);

CREATE VIEW Total_calls AS
SELECT ID, Weekend, Emp_ID, Name, Inbound, Outbound, AVG_Call_Handeled, Call_Handeled, 
SUM(Inbound + Outbound) as Total_calls
from call_data
GROUP BY ID; 

CREATE VIEW Productivity AS
SELECT ID, Weekend, Emp_ID, Name, Inbound, Outbound, AVG_Call_Handeled, Call_Handeled, Total_calls,
(Call_Handeled/Total_calls)*1 as Productivity
from total_calls
GROUP BY ID;
