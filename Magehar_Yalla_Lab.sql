CREATE DATABASE Magehar_Yalla_Lab ;
USE Magehar_Yalla_leb;
CREATE TABLE lab_technicians (tech_id INT , tech_name VARCHAR(225), birth_date DATE, gender CHAR(1), lab_room_number INT );
SHOW TABLES;
INSERT INTO lab_technicians (tech_id, tech_name, birth_date, gender, lab_room_number )
VALUES (1,"Ahmad Ezz", "1988-04-12", "M", 101);
SELECT * FROM lab_technicians;
CREATE TABLE medical_tests (test_id INT, test_name VARCHAR(225), test_date DATE,patient_id INT, tech_id INT, test_result VARCHAR(100));
INSERT INTO medical_tests (test_id, test_name, test_date, patient_id, tech_id, test_result)
VALUES (1, "CBC", "2026-05-01", 1, 1, "Normal");
INSERT INTO patients (patient_id, patient_name, birth_date, gender) VALUES
(6, 'Youssef Omar', '1992-03-12', 'M'),
(7, 'Fatma Ali', '1989-11-23', 'F'),
(8, 'Kareem Shady', '2001-05-05', 'M'),
(9, 'Nourhan Fady', '1996-08-14', 'F'),
(10, 'Moustafa Amr', '1985-01-30', 'M');
INSERT INTO medical_tests (test_id, test_name, test_date, patient_id, tech_id, test_result) VALUES
(6, 'CBC', '2026-05-06', 6, 1, 'Normal'),
(7, 'Vitamin D', '2026-05-07', 7, 2, '20 ng/mL (Low)'),
(8, 'Glucose', '2026-05-08', 8, 3, '95 mg/dL'),
(9, 'Thyroid TSH', '2026-05-09', 9, 4, '2.5 uIU/mL'),
(10, 'Uric Acid', '2026-05-10', 10, 1, '8.2 mg/dL (High)');
SELECT patient_name, test_name, test_result
FROM medical_tests
JOIN patients ON medical_tests.patient_id = patients.patient_id
WHERE test_result LIKE "High";
