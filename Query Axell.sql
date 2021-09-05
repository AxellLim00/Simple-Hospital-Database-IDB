--no.1
select nurse.* from nurse
join Ward on Ward.Ward_Number = Nurse.Ward_Number
where Ward.Name like 'orthopedic%';

--no.2
select patient.* from Patient
inner join Out_Patient on Out_Patient.Patient_Number = Patient.Patient_Number;

--no.10
select Kin.* from Kin
join Patient on Patient.KinID = Kin.KinID
where Patient.Marital_Status = 'Single'
order by Patient.First_Name;