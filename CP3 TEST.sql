--
-- File generated with SQLiteStudio v3.3.3 on ?? 4? 25 14:14:21 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: ALLERGY_SENSITONOGEN
CREATE TABLE ALLERGY_SENSITONOGEN (Allergy_NUM CHAR (5) NOT NULL, Sensitonogen_NUM CHAR (4) NOT NULL, PRIMARY KEY (Allergy_NUM, Sensitonogen_NUM), FOREIGN KEY (Allergy_NUM) REFERENCES HAS_ALLERGY (Allergy_ID), FOREIGN KEY (Sensitonogen_NUM) REFERENCES SENSITONOGEN (Sensitonogen_ID));
INSERT INTO ALLERGY_SENSITONOGEN (Allergy_NUM, Sensitonogen_NUM) VALUES ('7894', '2636338');
INSERT INTO ALLERGY_SENSITONOGEN (Allergy_NUM, Sensitonogen_NUM) VALUES ('1234', '2636337');
INSERT INTO ALLERGY_SENSITONOGEN (Allergy_NUM, Sensitonogen_NUM) VALUES ('1245', '2636338');
INSERT INTO ALLERGY_SENSITONOGEN (Allergy_NUM, Sensitonogen_NUM) VALUES ('1275', '2636340');
INSERT INTO ALLERGY_SENSITONOGEN (Allergy_NUM, Sensitonogen_NUM) VALUES ('2234', '2636338');
INSERT INTO ALLERGY_SENSITONOGEN (Allergy_NUM, Sensitonogen_NUM) VALUES ('2345', '2636312');
INSERT INTO ALLERGY_SENSITONOGEN (Allergy_NUM, Sensitonogen_NUM) VALUES ('4578', '2636323');
INSERT INTO ALLERGY_SENSITONOGEN (Allergy_NUM, Sensitonogen_NUM) VALUES ('6674', '2636323');
INSERT INTO ALLERGY_SENSITONOGEN (Allergy_NUM, Sensitonogen_NUM) VALUES ('6674', '2636335');
INSERT INTO ALLERGY_SENSITONOGEN (Allergy_NUM, Sensitonogen_NUM) VALUES ('3455', '2636336');

-- Table: ALLERGY_SYMPTOM
CREATE TABLE ALLERGY_SYMPTOM (Aller_ID CHAR (5) NOT NULL, Symp_ID CHAR (4) NOT NULL, PRIMARY KEY (Aller_ID, Symp_ID), FOREIGN KEY (Aller_ID) REFERENCES Has_Allergy (Allergy_ID), FOREIGN KEY (Symp_ID) REFERENCES SYMPTOM (Symptom_ID));
INSERT INTO ALLERGY_SYMPTOM (Aller_ID, Symp_ID) VALUES ('1234', '3353');
INSERT INTO ALLERGY_SYMPTOM (Aller_ID, Symp_ID) VALUES ('1245', '3354');
INSERT INTO ALLERGY_SYMPTOM (Aller_ID, Symp_ID) VALUES ('1275', '3355');
INSERT INTO ALLERGY_SYMPTOM (Aller_ID, Symp_ID) VALUES ('2234', '3356');
INSERT INTO ALLERGY_SYMPTOM (Aller_ID, Symp_ID) VALUES ('2345', '3357');
INSERT INTO ALLERGY_SYMPTOM (Aller_ID, Symp_ID) VALUES ('2377', '3358');
INSERT INTO ALLERGY_SYMPTOM (Aller_ID, Symp_ID) VALUES ('3455', '3359');
INSERT INTO ALLERGY_SYMPTOM (Aller_ID, Symp_ID) VALUES ('4578', '3359');
INSERT INTO ALLERGY_SYMPTOM (Aller_ID, Symp_ID) VALUES ('6674', '3360');
INSERT INTO ALLERGY_SYMPTOM (Aller_ID, Symp_ID) VALUES ('7894', '3361');

-- Table: APPOINTMENT
CREATE TABLE APPOINTMENT (Appointment_ID VARCHAR (10) NOT NULL, Status BOOLEAN NOT NULL DEFAULT TRUE, Date DATE NOT NULL, Pat_id varchar (20), Emp_id varchar (20), PRIMARY KEY (Appointment_ID), FOREIGN KEY (Pat_id) REFERENCES PATIENT (PatientID), FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE (Employee_ID));
INSERT INTO APPOINTMENT (Appointment_ID, Status, Date, Pat_id, Emp_id) VALUES ('65753', 1, '3/2/2022', '1854829', '192035');
INSERT INTO APPOINTMENT (Appointment_ID, Status, Date, Pat_id, Emp_id) VALUES ('65754', 1, '3/3/2022', '1854829', '192035');
INSERT INTO APPOINTMENT (Appointment_ID, Status, Date, Pat_id, Emp_id) VALUES ('65755', 1, '3/4/2022', '3848932', '192036');
INSERT INTO APPOINTMENT (Appointment_ID, Status, Date, Pat_id, Emp_id) VALUES ('65756', 1, '2/7/2022', '1387549', '192037');
INSERT INTO APPOINTMENT (Appointment_ID, Status, Date, Pat_id, Emp_id) VALUES ('65757', 1, '1/72022', '4858104', '192037');
INSERT INTO APPOINTMENT (Appointment_ID, Status, Date, Pat_id, Emp_id) VALUES ('65758', 1, '7/2/2021', '5846443', '192036');
INSERT INTO APPOINTMENT (Appointment_ID, Status, Date, Pat_id, Emp_id) VALUES ('65759', 0, '5/28/2021', '1958301', '192038');
INSERT INTO APPOINTMENT (Appointment_ID, Status, Date, Pat_id, Emp_id) VALUES ('65760', 1, '4/16/2021', '5848293', '192036');
INSERT INTO APPOINTMENT (Appointment_ID, Status, Date, Pat_id, Emp_id) VALUES ('99999', 0, '2019-1-3', '5848293', '192038');
INSERT INTO APPOINTMENT (Appointment_ID, Status, Date, Pat_id, Emp_id) VALUES ('66666', 1, '2022-3-4', '1387549', '192036');

-- Table: BANK_CHECK
CREATE TABLE BANK_CHECK (Check_No VARCHAR (22) NOT NULL, Routing_number VARCHAR (12) NOT NULL, Account_Number VARCHAR (12) NOT NULL, Patient_ID VARCHAR (20), P_ID VARCHAR (20), PRIMARY KEY (Check_No, Routing_number, Account_Number), FOREIGN KEY (P_ID) REFERENCES PAYMENT (Payment_ID), FOREIGN KEY (Patient_ID) REFERENCES PATIENT (PatientID));
INSERT INTO BANK_CHECK (Check_No, Routing_number, Account_Number, Patient_ID, P_ID) VALUES ('021000322', '483067802022', '8941232321314', '4858104', '2636338');
INSERT INTO BANK_CHECK (Check_No, Routing_number, Account_Number, Patient_ID, P_ID) VALUES ('021000323', '483067802023', '8941232321312', '1387549', '2858381');
INSERT INTO BANK_CHECK (Check_No, Routing_number, Account_Number, Patient_ID, P_ID) VALUES ('021000324', '483067802024', '8941232321315', '1387549', '2758913');
INSERT INTO BANK_CHECK (Check_No, Routing_number, Account_Number, Patient_ID, P_ID) VALUES ('021000325', '483067802025', '8941232321316', '1387549', '2875819');
INSERT INTO BANK_CHECK (Check_No, Routing_number, Account_Number, Patient_ID, P_ID) VALUES ('021000291', '483067803213', '8543432321314', '3848932', '3454322');
INSERT INTO BANK_CHECK (Check_No, Routing_number, Account_Number, Patient_ID, P_ID) VALUES ('021000295', '432126780213', '8122232321314', '5846443', '5644321');
INSERT INTO BANK_CHECK (Check_No, Routing_number, Account_Number, Patient_ID, P_ID) VALUES ('021000212', '442167803213', '8954432321366', '6788353', '3251244');
INSERT INTO BANK_CHECK (Check_No, Routing_number, Account_Number, Patient_ID, P_ID) VALUES ('021000123', '412367803213', '8957658651332', '9341236', '3214664');

-- Table: CREDITCARD
CREATE TABLE CREDITCARD
( Card_NO VARCHAR(16) NOT NULL,
Holder_name VARCHAR(20) NOT NULL,
Payment_NUM VARCHAR(20),
PRIMARY KEY( Card_NO ),
FOREIGN KEY(Payment_NUM) REFERENCES PAYMENT(Payment_ID));

-- Table: EMPLOYEE
CREATE TABLE EMPLOYEE (Employee_ID VARCHAR (20) NOT NULL, Per_ID varchar (20), PRIMARY KEY (Employee_ID), FOREIGN KEY (Per_ID) REFERENCES Person (Person_ID));
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192035', '123456788');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192036', '123456798');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192037', '123456801');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192038', '123456800');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192039', '123456796');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192040', '123456804');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192041', '123456805');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192042', '123456799');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192043', '123456803');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192044', '123456808');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192056', '123456798');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192053', '123456797');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192052', '123456796');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192051', '123456795');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192050', '123456794');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192049', '123456793');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192048', '123456792');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192047', '123456791');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192046', '123456790');
INSERT INTO EMPLOYEE (Employee_ID, Per_ID) VALUES ('192045', '123456789');

-- Table: HAS_ALLERGY
CREATE TABLE HAS_ALLERGY (Allergy_ID CHAR (5) NOT NULL, Last_Occur DATE, Severe INT NOT NULL, Pat_ID varchar (20), PRIMARY KEY (Allergy_ID), FOREIGN KEY (Pat_ID) REFERENCES PATIENT (PatientID));
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('7894', '2019-1-3', 2, '2412456');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('1234', '2022-3-2', 2, '1387549');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('1245', '2022-3-3', 3, '1958301');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('1275', '2022-3-4', 5, '5848293');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('2234', '2022-2-7', 1, '5846443');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('2345', '2022-1-7', 2, '4858104');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('2377', '2022-7-2', 3, '1854829');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('3455', '2021-5-28', 4, '3848932');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('4578', '2021-5-3', 4, '9341236');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('6674', '2022-3-4', 5, '6788353');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('5385', '2021-2-3', 1, '1387549');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('1869', '2022-1-2', 1, '5846443');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('5863', '2022-4-1', 4, '3848932');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('3059', '2022-3-12', 2, '4858104');
INSERT INTO HAS_ALLERGY (Allergy_ID, Last_Occur, Severe, Pat_ID) VALUES ('7865', '2022-2-12', 3, '9341236');

-- Table: INSURANCE
CREATE TABLE INSURANCE (Insurance_ID VARCHAR (20) NOT NULL, Acceptance BOOLEAN NOT NULL, Provider VARCHAR (20) NOT NULL, PlanName, PRIMARY KEY (Insurance_ID));
INSERT INTO INSURANCE (Insurance_ID, Acceptance, Provider, PlanName) VALUES ('123444', 1, 'Delta', 'DELTAP');
INSERT INTO INSURANCE (Insurance_ID, Acceptance, Provider, PlanName) VALUES ('2125362', 0, 'UnitedHealthCare', 'UHCP');
INSERT INTO INSURANCE (Insurance_ID, Acceptance, Provider, PlanName) VALUES ('3525835', 0, 'Aetna', 'AEEP');
INSERT INTO INSURANCE (Insurance_ID, Acceptance, Provider, PlanName) VALUES ('32873', 0, 'Delta', 'DELTAC');
INSERT INTO INSURANCE (Insurance_ID, Acceptance, Provider, PlanName) VALUES ('990293', 1, 'Humana', 'HUMM');
INSERT INTO INSURANCE (Insurance_ID, Acceptance, Provider, PlanName) VALUES ('321321344', 1, 'Delta', 'DELTAB');
INSERT INTO INSURANCE (Insurance_ID, Acceptance, Provider, PlanName) VALUES ('6623411', 0, 'Humana', 'HUMT');
INSERT INTO INSURANCE (Insurance_ID, Acceptance, Provider, PlanName) VALUES ('551233', 1, 'UnitedHealthCare', 'UHCStudent');
INSERT INTO INSURANCE (Insurance_ID, Acceptance, Provider, PlanName) VALUES ('1123551', 1, 'UnitedHealthCare', 'UHCtravel');
INSERT INTO INSURANCE (Insurance_ID, Acceptance, Provider, PlanName) VALUES ('523441', 0, 'Humana', 'HUMMA');

-- Table: INVOICE
CREATE TABLE INVOICE (Invoice_ID VARCHAR (22) NOT NULL, Date DATE NOT NULL, Appointment_NUM varchar (10), Pat_ID varchar (20), Emp_ID varchar (20), PRIMARY KEY (Invoice_ID), FOREIGN KEY (Pat_ID) REFERENCES PATIENT (PatientID), FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE (Employee_ID), FOREIGN KEY (Appointment_NUM) REFERENCES APPOINTMENT (Appointment_ID));
INSERT INTO INVOICE (Invoice_ID, Date, Appointment_NUM, Pat_ID, Emp_ID) VALUES ('356234', '2022-03-05', '65753', '1854829', '192035');
INSERT INTO INVOICE (Invoice_ID, Date, Appointment_NUM, Pat_ID, Emp_ID) VALUES ('356235', '2022-03-03', '65754', '1854829', '192037');
INSERT INTO INVOICE (Invoice_ID, Date, Appointment_NUM, Pat_ID, Emp_ID) VALUES ('356236', '2022-02-12', '65755', '3848932', '192036');
INSERT INTO INVOICE (Invoice_ID, Date, Appointment_NUM, Pat_ID, Emp_ID) VALUES ('356237', '2022-02-04', '65756', '1387549', '192035');
INSERT INTO INVOICE (Invoice_ID, Date, Appointment_NUM, Pat_ID, Emp_ID) VALUES ('356238', '2022-01-04', '65757', '4858104', '192037');
INSERT INTO INVOICE (Invoice_ID, Date, Appointment_NUM, Pat_ID, Emp_ID) VALUES ('356239', '2021-03-04', '65758', '5846443', '192035');
INSERT INTO INVOICE (Invoice_ID, Date, Appointment_NUM, Pat_ID, Emp_ID) VALUES ('356240', '2021-03-04', '65759', '1958301', '192036');
INSERT INTO INVOICE (Invoice_ID, Date, Appointment_NUM, Pat_ID, Emp_ID) VALUES ('356241', '2021-03-04', '65760', '5848293', '192038');

-- Table: LICENCE
CREATE TABLE LICENCE
( License_ID VARCHAR(22) NOT NULL,
Type VARCHAR(20) NOT NULL,
Emp_ID varchar(20),
Status BOOLEAN,
Expire_date DATE,
Organization VARCHAR(20) NOT NULL,
PRIMARY KEY( License_ID),
FOREIGN KEY(Emp_ID ) REFERENCES EMPLOYEE(Employee_ID));
INSERT INTO LICENCE (License_ID, Type, Emp_ID, Status, Expire_date, Organization) VALUES ('847365910', 'S', '192044', 1, '2028-10-9', 'OHIO');
INSERT INTO LICENCE (License_ID, Type, Emp_ID, Status, Expire_date, Organization) VALUES ('847365912', 'S', '192035', 1, '2030-1-3', 'OHIO');
INSERT INTO LICENCE (License_ID, Type, Emp_ID, Status, Expire_date, Organization) VALUES ('547365911', 'L', '192036', 1, '2050-3-1', 'OHIO');
INSERT INTO LICENCE (License_ID, Type, Emp_ID, Status, Expire_date, Organization) VALUES ('847365913', 'N', '192037', 1, '2029-3-3', 'OHIO');
INSERT INTO LICENCE (License_ID, Type, Emp_ID, Status, Expire_date, Organization) VALUES ('847365914', 'N', '192038', 1, '2026-3-4', 'OHIO');
INSERT INTO LICENCE (License_ID, Type, Emp_ID, Status, Expire_date, Organization) VALUES ('847365915', 'S', '192039', 1, '2029-4-5', 'OHIO');
INSERT INTO LICENCE (License_ID, Type, Emp_ID, Status, Expire_date, Organization) VALUES ('847365916', 'S', '192040', 1, '2028-5-7', 'NEW_YORK');
INSERT INTO LICENCE (License_ID, Type, Emp_ID, Status, Expire_date, Organization) VALUES ('847365917', 'L', '192041', 0, '2026-3-8', 'TEXAS');
INSERT INTO LICENCE (License_ID, Type, Emp_ID, Status, Expire_date, Organization) VALUES ('847365312', 'L', '192042', 0, '2027-5-6', 'TEXAS');
INSERT INTO LICENCE (License_ID, Type, Emp_ID, Status, Expire_date, Organization) VALUES ('847365911', 'N', '192043', 1, '2028-11-3', 'OHIO');

-- Table: MEDICATION
CREATE TABLE MEDICATION
( MedID CHAR(10) NOT NULL,
Medication_Name VARCHAR(20) NOT NULL,
Effect VARCHAR(20) NOT NULL,
PRIMARY KEY(MedID));
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800001', 'medication1', 'effect1');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800002', 'medication2', 'effect2');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800003', 'medication3', 'effect3');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800004', 'medication4', 'effect4');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800005', 'Albuterol', 'Breathing');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800010', 'Losartan', 'BloodPressure');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800009', 'Omeprazole', 'StomachAcid');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800008', 'Metoprolol', 'BloodPressure');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800007', 'Amlodipine', 'BloodPressure');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800006', 'Metformin', 'Diabetes');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800015', '5', 'PAINKILLER');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800011', 'Cyclobenzaprine ', 'skeletal muscle');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800012', 'Brilinta ', 'Platelet aggregation inhibitors');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800013', 'Gilenya', 'Selective immunosuppressants');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800014', 'Hydrochlorothiazide', 'Thiazide diuretics');
INSERT INTO MEDICATION (MedID, Medication_Name, Effect) VALUES ('5657800016', 'Meloxicam', 'Nonsteroidal anti-inflammatory drugs');

-- Table: NON_PROFESSONAL
CREATE TABLE NON_PROFESSONAL
( 
E_ID VARCHAR(20) NOT NULL,
Job_Type VARCHAR(15) NOT NULL,
PRIMARY KEY(E_ID),
FOREIGN KEY (E_ID) REFERENCES Employee(Employee_ID)
);
INSERT INTO NON_PROFESSONAL (E_ID, Job_Type) VALUES ('192056', 'Cleaner');
INSERT INTO NON_PROFESSONAL (E_ID, Job_Type) VALUES ('192053', 'Cleaner');
INSERT INTO NON_PROFESSONAL (E_ID, Job_Type) VALUES ('192052', 'Reception');
INSERT INTO NON_PROFESSONAL (E_ID, Job_Type) VALUES ('192051', 'Reception');
INSERT INTO NON_PROFESSONAL (E_ID, Job_Type) VALUES ('192050', 'Reception');
INSERT INTO NON_PROFESSONAL (E_ID, Job_Type) VALUES ('192049', 'Reception');
INSERT INTO NON_PROFESSONAL (E_ID, Job_Type) VALUES ('192048', 'Cleaner');
INSERT INTO NON_PROFESSONAL (E_ID, Job_Type) VALUES ('192047', 'Cleaner');
INSERT INTO NON_PROFESSONAL (E_ID, Job_Type) VALUES ('192046', 'Reception');
INSERT INTO NON_PROFESSONAL (E_ID, Job_Type) VALUES ('192045', 'Reception');

-- Table: PATIENT
CREATE TABLE PATIENT
( PatientID VARCHAR(20) NOT NULL,
HiPPA BOOLEAN,
Last_XRay_Date DATE,
Personal_ID varchar(20),
Information_Updated_Date DATE,
PRIMARY KEY(PatientID),
FOREIGN KEY(Personal_ID) REFERENCES PERSON(Person_ID));
INSERT INTO PATIENT (PatientID, HiPPA, Last_XRay_Date, Personal_ID, Information_Updated_Date) VALUES ('1387549', 1, '8/20/2018', '123456789', '1/19/2022');
INSERT INTO PATIENT (PatientID, HiPPA, Last_XRay_Date, Personal_ID, Information_Updated_Date) VALUES ('1958301', 1, '8/21/2015', '123456790', '1/20/2022');
INSERT INTO PATIENT (PatientID, HiPPA, Last_XRay_Date, Personal_ID, Information_Updated_Date) VALUES ('5848293', 1, '8/22/2017', '123456791', '1/21/2022');
INSERT INTO PATIENT (PatientID, HiPPA, Last_XRay_Date, Personal_ID, Information_Updated_Date) VALUES ('5846443', 1, '8/23/2015', '123456792', '1/22/2022');
INSERT INTO PATIENT (PatientID, HiPPA, Last_XRay_Date, Personal_ID, Information_Updated_Date) VALUES ('4858104', 1, '8/24/2015', '123456793', '1/23/2022');
INSERT INTO PATIENT (PatientID, HiPPA, Last_XRay_Date, Personal_ID, Information_Updated_Date) VALUES ('1854829', 1, '4/21/2021', '123456797', '2/21/2022');
INSERT INTO PATIENT (PatientID, HiPPA, Last_XRay_Date, Personal_ID, Information_Updated_Date) VALUES ('3848932', 1, '3/1/2021', '123456794', '12/31/2021');
INSERT INTO PATIENT (PatientID, HiPPA, Last_XRay_Date, Personal_ID, Information_Updated_Date) VALUES ('2412456', 1, '2015-5-4', '123456800', '2019-1-3');
INSERT INTO PATIENT (PatientID, HiPPA, Last_XRay_Date, Personal_ID, Information_Updated_Date) VALUES ('6788353', 1, '2020-6-1', '123456798', '2022-3-4');
INSERT INTO PATIENT (PatientID, HiPPA, Last_XRay_Date, Personal_ID, Information_Updated_Date) VALUES ('9341236', 1, '2019-5-4', '123456795', '2021-5-3');

-- Table: Patient_Insurance
CREATE TABLE Patient_Insurance
( Pat_ID VARCHAR(20) NOT NULL,
Insur_ID varchar(20),
PRIMARY KEY( Pat_ID),
FOREIGN Key (Pat_ID) REFERENCES PATIENT(PatientID),
FOREIGN Key (Insur_ID) REFERENCES INSURANCE(Insurance_ID));
INSERT INTO Patient_Insurance (Pat_ID, Insur_ID) VALUES ('1387549', '123444');
INSERT INTO Patient_Insurance (Pat_ID, Insur_ID) VALUES ('1958301', '2125362');
INSERT INTO Patient_Insurance (Pat_ID, Insur_ID) VALUES ('5848293', '3525835');
INSERT INTO Patient_Insurance (Pat_ID, Insur_ID) VALUES ('5846443', '32873');
INSERT INTO Patient_Insurance (Pat_ID, Insur_ID) VALUES ('4858104', '990293');
INSERT INTO Patient_Insurance (Pat_ID, Insur_ID) VALUES ('1854829', '990293');
INSERT INTO Patient_Insurance (Pat_ID, Insur_ID) VALUES ('3848932', '321321344');

-- Table: PAYMENT
CREATE TABLE PAYMENT
( Payment_ID VARCHAR(20) NOT NULL,
Payment_Type VARCHAR(15) NOT NULL,
PRIMARY KEY( Payment_ID));
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('2636337', 'credit');
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('2636338', 'check');
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('2636339', 'cash');
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('2636340', 'credit');
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('2858381', 'credit');
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('2758913', 'check');
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('2875819', 'credit');
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('2385813', 'credit');
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('3454322', 'check');
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('5644321', 'check');
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('3251244', 'check');
INSERT INTO PAYMENT (Payment_ID, Payment_Type) VALUES ('3214664', 'check');

-- Table: PAYMENT_INVOICE
CREATE TABLE PAYMENT_INVOICE (Invoice_ID VARCHAR (22) NOT NULL, Pay_ID VARCHAR (20) NOT NULL, Pay_Amount INT DEFAULT 0, Paid BOOLEAN, PRIMARY KEY (Invoice_ID, Pay_ID), FOREIGN KEY (Invoice_ID) REFERENCES Invoice (Invoice_ID));
INSERT INTO PAYMENT_INVOICE (Invoice_ID, Pay_ID, Pay_Amount, Paid) VALUES ('356234', '2858381', 988, 1);
INSERT INTO PAYMENT_INVOICE (Invoice_ID, Pay_ID, Pay_Amount, Paid) VALUES ('356235', '2758913', 1300, 1);
INSERT INTO PAYMENT_INVOICE (Invoice_ID, Pay_ID, Pay_Amount, Paid) VALUES ('356236', '2875819', 2754, 1);
INSERT INTO PAYMENT_INVOICE (Invoice_ID, Pay_ID, Pay_Amount, Paid) VALUES ('356237', '2385813', 412, 0);
INSERT INTO PAYMENT_INVOICE (Invoice_ID, Pay_ID, Pay_Amount, Paid) VALUES ('356238', '2636337', 312, 1);
INSERT INTO PAYMENT_INVOICE (Invoice_ID, Pay_ID, Pay_Amount, Paid) VALUES ('356239', '2636338', 123, 1);
INSERT INTO PAYMENT_INVOICE (Invoice_ID, Pay_ID, Pay_Amount, Paid) VALUES ('356240', '2636339', 0, 0);
INSERT INTO PAYMENT_INVOICE (Invoice_ID, Pay_ID, Pay_Amount, Paid) VALUES ('356241', '2636340', 9, 0);

-- Table: Person
CREATE TABLE Person(

 SSN char(9) NOT NULL,
 Fname varchar(15) NOT NULL,
 Lname varchar(15) NOT NULL,
 Phone int NOT NULL,
 Address varchar(30),
 Bdate varchar(10),
 Person_ID int,
 
 UNIQUE (Phone),
 PRIMARY KEY (Person_ID)
 );
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('1226767', 'Jim', 'Smith', 6145328909, '1234 Road Ln.', '12/13/1986', 123456789);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('3233825', 'John', 'Doe', 6145328910, '1235 Road Ln.', '1/20/1970', 123456790);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4344747', 'Rebecca', 'Kirkland', 6145328911, '1236 Road Ln.', '4/6/1920', 123456791);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('5846443', 'Kelly', 'Grail', 6145328912, '1237 Road Ln.', '5/31/1990', 123456792);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4664864', 'Xiaoxiao', 'Smith', 6145328913, '1238 Road Ln.', '7/7/2010', 123456793);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4664832', 'You', 'Smith', 6145328914, '1239 Road Ln.', '8/28/2011', 123456794);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4683764', 'Harry', 'Smith', 6145328915, '1240 Road Ln.', '9/28/1956', 123456795);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4342423', 'Aditi', 'Smith', 6145328916, '1241 Road Ln.', '2/2/1945', 123456796);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('886964', 'Albert', 'Einstein', 6145328917, '1242 Road Ln.', '9/3/2005', 123456797);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4554455', 'Brutus', 'Buckeye', 6145328918, '1243 Road Ln.', '9/5/1989', 123456798);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('909568', 'Popcorn', 'Yummy', 6145328919, '1244 Road Ln.', '8/18/1999', 123456799);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('69875785', 'Gary', 'Katz', 6145328920, '1245 Road Ln.', '2/14/1993', 123456800);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4279787', 'Akash', 'Subramanian', 6145328921, '1246 Road Ln.', '5/17/2004', 123456801);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('854394', 'Mei', 'Lin', 6145328922, '1247 Road Ln.', '1/12/1990', 123456802);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4299304', 'Cody', 'Jenning', 6145328923, '1248 Road Ln.', '4/19/1960', 123456803);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('2038444', 'Zack', 'Murray', 6145328924, '1249 Road Ln.', '3/29/1963', 123456804);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('993092', 'Tembly', 'Kingston', 6145328925, '1250 Road Ln.', '2/28/1982', 123456805);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('2203844', 'Kiara', 'Lauper', 6145328926, '1251 Road Ln.', '7/7/1978', 123456806);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('2983424', 'Alfred', 'Hitchcock', 6145328927, '1252 Road Ln.', '3/4/2015', 123456807);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('3908944', 'Joe', 'Jonas', 6145328928, '1252 Road Ln.', '5/9/2006', 123456808);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4839292', 'Smilow', 'Smith', 6145849382, '1048 River Road', '2/12/1982', 123456788);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('747522', 'Smilow', 'Jonas', 6145328938, '7341 Road Ln.', '2004-6-2', 623183649);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('6763244', 'Smilow', 'Einstein', 6145328937, '4222 Road Ln.', '1993-6-7', 623183648);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4839252', 'Smilow', 'Grail', 6145328936, '6234 Road Ln.', '1999-11-3', 623183646);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4839293', 'Kiara', 'Jonas', 6145328935, '4123 Road Ln.', '1986-4-6', 623183647);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4839844', 'Kiara', 'Einstein', 6145328934, '1692 Road Ln.', '2005-6-7', 623183645);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4839282', 'Kiara', 'Grail', 6145328933, '1258 Road Ln.', '1945-2-2', 623183644);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4839285', 'Jim', 'Jonas', 6145328932, '1256 Road Ln.', '1956-2-3', 623183643);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4839296', 'Jim', 'Einstein', 6145328931, '1255 Road Ln.', '2011-8-28', 623183642);
INSERT INTO Person (SSN, Fname, Lname, Phone, Address, Bdate, Person_ID) VALUES ('4839293', 'Jim', 'Grail', 6145328930, '1253 Road Ln.', '1990-8-3', 623183641);

-- Table: PROCEDURE_COVERAGE
CREATE TABLE PROCEDURE_COVERAGE
( Invoice_ID VARCHAR(22) NOT NULL,
Insurance_ID VARCHAR(20) NOT NULL,
Coverage DECIMAL(4,3) NOT NULL,
PRIMARY KEY( Invoice_ID , Insurance_ID));

-- Table: PROCEDURE_PROFESSIONAL
CREATE TABLE PROCEDURE_PROFESSIONAL (Employee_ID VARCHAR (20) NOT NULL, Procedure_ID VARCHAR (20) NOT NULL, Date DATE NOT NULL, PRIMARY KEY (Employee_ID, Procedure_ID), FOREIGN KEY (Employee_ID) REFERENCES Employee (Employee_ID), FOREIGN KEY (Procedure_ID) REFERENCES PROCEDURES (Proc_ID));
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192035', '16259', '3/2/2022');
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192035', '16260', '3/3/2022');
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192036', '16262', '3/4/2022');
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192036', '16261', '7/2/2021');
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192038', '16267', '7/2/2021');
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192038', '16264', '7/2/2021');
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192035', '16265', '5/28/2021');
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192037', '16266', '4/16/2021');
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192037', '16263', '4/17/2021');
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192036', '16266', '4/18/2021');
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192035', '16261', '4/19/2021');
INSERT INTO PROCEDURE_PROFESSIONAL (Employee_ID, Procedure_ID, Date) VALUES ('192035', '16268', '4/19/2021');

-- Table: PROCEDURES
CREATE TABLE PROCEDURES (Proc_ID VARCHAR (20) NOT NULL, Price INT NOT NULL, Type VARCHAR (20) NOT NULL, PRIMARY KEY (Proc_ID));
INSERT INTO PROCEDURES (Proc_ID, Price, Type) VALUES ('16259', 246, 'extraction');
INSERT INTO PROCEDURES (Proc_ID, Price, Type) VALUES ('16260', 649, 'implant');
INSERT INTO PROCEDURES (Proc_ID, Price, Type) VALUES ('16261', 400, 'orthodonitics');
INSERT INTO PROCEDURES (Proc_ID, Price, Type) VALUES ('16262', 122, 'preventive care');
INSERT INTO PROCEDURES (Proc_ID, Price, Type) VALUES ('16263', 110, 'xray');
INSERT INTO PROCEDURES (Proc_ID, Price, Type) VALUES ('16264', 70, 'service fee');
INSERT INTO PROCEDURES (Proc_ID, Price, Type) VALUES ('16265', 140, 'cleaning');
INSERT INTO PROCEDURES (Proc_ID, Price, Type) VALUES ('16266', 134, 'filling');
INSERT INTO PROCEDURES (Proc_ID, Price, Type) VALUES ('16267', 1400, 'crown');
INSERT INTO PROCEDURES (Proc_ID, Price, Type) VALUES ('16268', 1000, 'Canal root');

-- Table: PROCEDURES_INVOICE
CREATE TABLE PROCEDURES_INVOICE (Invoice_ID VARCHAR (22) NOT NULL, Proc_ID VARCHAR (20) NOT NULL, Emp_No varchar (20), FOREIGN KEY (Invoice_ID) REFERENCES Invoice (Invoice_ID), FOREIGN KEY (Emp_NO) REFERENCES Professional (E_ID), PRIMARY KEY (Invoice_ID, Proc_ID), FOREIGN KEY (Proc_ID) REFERENCES PROCEDURES (Proc_ID));

-- Table: PROFESSIONAL
CREATE TABLE PROFESSIONAL (E_ID VARCHAR (20) NOT NULL, Job_Type VARCHAR (15) NOT NULL, PRIMARY KEY (E_ID), FOREIGN KEY (E_ID) REFERENCES Employee (Employee_ID));
INSERT INTO PROFESSIONAL (E_ID, Job_Type) VALUES ('192035', 'Dentist');
INSERT INTO PROFESSIONAL (E_ID, Job_Type) VALUES ('192036', 'Dentist');
INSERT INTO PROFESSIONAL (E_ID, Job_Type) VALUES ('192037', 'Dentist');
INSERT INTO PROFESSIONAL (E_ID, Job_Type) VALUES ('192038', 'Hygienist');

-- Table: PROFESSIONAL_APPOINTMENT
CREATE TABLE PROFESSIONAL_APPOINTMENT
( Employee_ID VARCHAR(20) NOT NULL,
Appointment_ID VARCHAR(10) NOT NULL,
PRIMARY KEY( Employee_ID, Appointment_ID),
FOREIGN key (Employee_ID) references Employee (Employee_ID),
FOREIGN key (Appointment_ID) references Appointment (Appointment_ID));
INSERT INTO PROFESSIONAL_APPOINTMENT (Employee_ID, Appointment_ID) VALUES ('192035', '65760');
INSERT INTO PROFESSIONAL_APPOINTMENT (Employee_ID, Appointment_ID) VALUES ('192041', '65759');
INSERT INTO PROFESSIONAL_APPOINTMENT (Employee_ID, Appointment_ID) VALUES ('192040', '65758');
INSERT INTO PROFESSIONAL_APPOINTMENT (Employee_ID, Appointment_ID) VALUES ('192039', '65757');
INSERT INTO PROFESSIONAL_APPOINTMENT (Employee_ID, Appointment_ID) VALUES ('192044', '65756');
INSERT INTO PROFESSIONAL_APPOINTMENT (Employee_ID, Appointment_ID) VALUES ('192043', '65755');
INSERT INTO PROFESSIONAL_APPOINTMENT (Employee_ID, Appointment_ID) VALUES ('192042', '65754');
INSERT INTO PROFESSIONAL_APPOINTMENT (Employee_ID, Appointment_ID) VALUES ('192035', '65753');

-- Table: RATING
CREATE TABLE RATING (Comment_ID VARCHAR (20) NOT NULL, Scale INT, Patient_ID varchar (20), Appointment_ID varchar (10), PRIMARY KEY (Comment_ID), FOREIGN KEY (Patient_ID) REFERENCES PATIENT (PatientID), FOREIGN KEY (Appointment_ID) REFERENCES APPOINTMENT (Appointment_ID));
INSERT INTO RATING (Comment_ID, Scale, Patient_ID, Appointment_ID) VALUES ('1237', 4, '3848932', '65757');
INSERT INTO RATING (Comment_ID, Scale, Patient_ID, Appointment_ID) VALUES ('1234', 5, '5848293', '65755');
INSERT INTO RATING (Comment_ID, Scale, Patient_ID, Appointment_ID) VALUES ('1235', 5, '1854829', '65753');
INSERT INTO RATING (Comment_ID, Scale, Patient_ID, Appointment_ID) VALUES ('2235', 5, '5848293', '65760');
INSERT INTO RATING (Comment_ID, Scale, Patient_ID, Appointment_ID) VALUES ('4425', 4, '1958301', '65759');
INSERT INTO RATING (Comment_ID, Scale, Patient_ID, Appointment_ID) VALUES ('5542', 1, '5846443', '65758');
INSERT INTO RATING (Comment_ID, Scale, Patient_ID, Appointment_ID) VALUES ('2233', 2, '4858104', '65757');
INSERT INTO RATING (Comment_ID, Scale, Patient_ID, Appointment_ID) VALUES ('5553', 3, '1387549', '65756');
INSERT INTO RATING (Comment_ID, Scale, Patient_ID, Appointment_ID) VALUES ('1236', 3, '1854829', '65754');
INSERT INTO RATING (Comment_ID, Scale, Patient_ID, Appointment_ID) VALUES ('6634', 2, '1387549', '66666');

-- Table: SENSITONOGEN
CREATE TABLE SENSITONOGEN
( Sensitonogen_ID CHAR(4) NOT NULL,
Sensitonogen VARCHAR(20) NOT NULL,
PRIMARY KEY( Sensitonogen_ID));
INSERT INTO SENSITONOGEN (Sensitonogen_ID, Sensitonogen) VALUES ('2636336', 'mould ');
INSERT INTO SENSITONOGEN (Sensitonogen_ID, Sensitonogen) VALUES ('2636337', 'celery');
INSERT INTO SENSITONOGEN (Sensitonogen_ID, Sensitonogen) VALUES ('2636338', 'Peanut');
INSERT INTO SENSITONOGEN (Sensitonogen_ID, Sensitonogen) VALUES ('2636339', 'Shellfish');
INSERT INTO SENSITONOGEN (Sensitonogen_ID, Sensitonogen) VALUES ('2636340', 'Sesame');
INSERT INTO SENSITONOGEN (Sensitonogen_ID, Sensitonogen) VALUES ('2636375', 'egg');
INSERT INTO SENSITONOGEN (Sensitonogen_ID, Sensitonogen) VALUES ('2636333', 'grass and tree pollen');
INSERT INTO SENSITONOGEN (Sensitonogen_ID, Sensitonogen) VALUES ('2636312', 'dust mites');
INSERT INTO SENSITONOGEN (Sensitonogen_ID, Sensitonogen) VALUES ('2636323', ' aspirin');
INSERT INTO SENSITONOGEN (Sensitonogen_ID, Sensitonogen) VALUES ('2636335', 'latex ');

-- Table: SYMPTOM
CREATE TABLE SYMPTOM
( Symptom_ID CHAR(4) NOT NULL,
Symptom VARCHAR(20) NOT NULL,
PRIMARY KEY(Symptom_ID));
INSERT INTO SYMPTOM (Symptom_ID, Symptom) VALUES ('3362', 'Fever');
INSERT INTO SYMPTOM (Symptom_ID, Symptom) VALUES ('3353', 'sneezing');
INSERT INTO SYMPTOM (Symptom_ID, Symptom) VALUES ('3354', 'blocked nose');
INSERT INTO SYMPTOM (Symptom_ID, Symptom) VALUES ('3355', 'watery eyes');
INSERT INTO SYMPTOM (Symptom_ID, Symptom) VALUES ('3356', 'coughing');
INSERT INTO SYMPTOM (Symptom_ID, Symptom) VALUES ('3357', 'itchy rash');
INSERT INTO SYMPTOM (Symptom_ID, Symptom) VALUES ('3358', 'SORE THROAT');
INSERT INTO SYMPTOM (Symptom_ID, Symptom) VALUES ('3359', 'POST-NASAL DRIP');
INSERT INTO SYMPTOM (Symptom_ID, Symptom) VALUES ('3360', 'HEADACHES');
INSERT INTO SYMPTOM (Symptom_ID, Symptom) VALUES ('3361', 'Aches and pains');

-- Table: TAKE_MEDICATION
CREATE TABLE TAKE_MEDICATION
( Med_NUM CHAR(10) NOT NULL,
Patient_ID VARCHAR(20) NOT NULL,
Frequency_per_week INT,
PRIMARY KEY( Med_NUM, Patient_ID),
Foreign key (Med_NUM) References MEDICATION(MedID));
INSERT INTO TAKE_MEDICATION (Med_NUM, Patient_ID, Frequency_per_week) VALUES ('5657800001', '1958301', 5);
INSERT INTO TAKE_MEDICATION (Med_NUM, Patient_ID, Frequency_per_week) VALUES ('5657800002', '1958301', 3);
INSERT INTO TAKE_MEDICATION (Med_NUM, Patient_ID, Frequency_per_week) VALUES ('5657800003', '5848293', 10);
INSERT INTO TAKE_MEDICATION (Med_NUM, Patient_ID, Frequency_per_week) VALUES ('5657800004', '5846443', 23);
INSERT INTO TAKE_MEDICATION (Med_NUM, Patient_ID, Frequency_per_week) VALUES ('5657800005', '4858104', 18);
INSERT INTO TAKE_MEDICATION (Med_NUM, Patient_ID, Frequency_per_week) VALUES ('5657800015', '6788353', 5);

-- Index: index_EID
CREATE INDEX index_EID
ON EMPLOYEE (Employee_ID);

-- View: AVG_COST
CREATE VIEW AVG_COST AS
SELECT Avg(avgPay)
FROM(
SELECT AVG(Pay_amount) AS avgPay
FROM INVOICE,PAYMENT_INVOICE,PATIENT,Patient_Insurance,INSURANCE
WHERE 
Patient_Insurance.Insur_ID=INSURANCE.Insurance_ID AND
INSURANCE.Provider='Delta'AND
Patient_Insurance.Pat_ID=INVOICE.Pat_ID AND
INVOICE.Invoice_ID=PAYMENT_INVOICE.Invoice_ID
GROUP BY INVOICE.Pat_ID);

-- View: COUNT_500
CREATE VIEW COUNT_500 AS
SELECT Count(Pat)
FROM(
SELECT Pat_ID AS Pat
FROM INVOICE,PAYMENT_INVOICE,PATIENT,PATIENT
WHERE 
PAYMENT_INVOICE.Invoice_ID=INVOICE.Invoice_ID AND
PAYMENT_INVOICE.Pay_Amount>500 
GROUP BY INVOICE.Pat_ID);

-- View: Q1
CREATE VIEW Q1 AS SELECT * FROM PATIENT;

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
