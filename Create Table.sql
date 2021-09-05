	create database RavernHearst_Hospital_DB

create table Kin(
KinID				int					primary key				not null,
Full_Name			varchar(50)			not null,
Address				varchar(100)		not null,
Telephone			varchar(50)			not null,
Relationship		varchar(50)			not null);

create table Ward(
Ward_Number			int					primary key				not null,
Name				varchar(50)			not null,
Gender				varchar(50)			not null,
Bed_Quantity		int					not null,
Telephone			varchar(50)			not null);

create table Salary(
PositionID			int					primary key				not null,
Position_Name		varchar(50)			not null,
Salary				int					not null);

create table Patient(
Patient_Number		int					primary key				not null,
First_Name			varchar	(50)		not null,
Last_Name			varchar (50)		not null,
DOB					date				not null,
Gender				varchar(50)			not null,
Date_Registered		date				not null,
Marital_Status		varchar(50)			not null,
Telephone			varchar(50)			not null,
Address				varchar(100)		not null,
KinID				int					null,
foreign key(KinID) references Kin on update cascade);

create table Staff(
Staff_Number		int					primary key				not null,
PositionID			int					not null,
foreign key (PositionID) references Salary on update cascade);

create table Doctor(
DoctorID			int					primary key				not null,
Doctor_Name			varchar(50)			not null,
Specialities		varchar(100)		not null,
Telephone			varchar(50)					not null,
Staff_Number		int					not null,
foreign key (Staff_Number) references Staff on update cascade);

create table Appointment(
Appointment_Number	int					primary key				not null,
Time				time				not null,
Date				date				not null,
Room				varchar(50)			not null,
Doctor_ID			int					not null,
Patient_Number		int 				not null,
foreign key (Doctor_ID) references Doctor on update cascade,
foreign key(Patient_Number) references Patient on update cascade);

create table Out_Patient(
OP_Number			int					primary key				not null,
Date				date				not null,
Time				time				not null,
Patient_Number		int					not null,
foreign key (Patient_Number) references Patient on update cascade);

create table Ward_Patient(
WP_Number			int					primary key				not null,
Date_Began			date				not null,
Date_Leaving		date				not null,
Patient_Number		int					not null,
Ward_Number			int					not null,
foreign key (Patient_Number) references Patient on update cascade,
foreign key (Ward_Number) references Ward on update cascade);

create table Nurse(
NurseID				int					primary key				not null,
First_Name			varchar(50)			not null,
Last_Name			varchar(50)			not null,
Address				varchar(100)		not null,
Gender				varchar(50)			not null,
DOB					date				not null,
Telephone			varchar(50)			not null,
Staff_Number		int					not null,
Ward_Number			int					not null,
foreign key (Ward_Number) references Ward on update cascade,
foreign key (Staff_Number) references Staff on update cascade);

create table Bed(
Bed_Number			int					primary key				not null,
Ward_Number			int					not null,
foreign key(Ward_Number) references Ward on update cascade);







