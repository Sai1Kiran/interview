-- select * from(select Account_id, Patient_id, dense_rank() over(order by Patient_id desc) r from Patient_logs) where r = 2;
-- SELECT count(DISTINCT Patient_id) AS no_of_unique_patients FROM Patient_logs WHERE Dates = 2-1-2020;

CREATE TABLE EmployeeS_ratings(Account_id int /*PRIMARY KEY*/, Date text, Patient Id int);

/* Create few records in this table */


INSERT INTO EmployeeS_ratings VALUES(1, '2-1-2020',  100);
INSERT INTO EmployeeS_ratings VALUES(1, '27-1-2020', 200);

INSERT INTO EmployeeS_ratings VALUES(2, '1-1-2020', 300);
INSERT INTO EmployeeS_ratings VALUES(2, '21-1-2020', 400);
INSERT INTO EmployeeS_ratings VALUES(2, '21-1-2020', 300);
INSERT INTO EmployeeS_ratings VALUES(2, '1-1-2020', 500);

INSERT INTO EmployeeS_ratings VALUES(3, '20-1-2020', 400);
INSERT INTO EmployeeS_ratings VALUES(1, '4-3-2020', 500);

select *from Patient_logs;

select strftime('%m', Dates) as month from Patient_logs;

select case strftime('%m', date(Dates)) when '01' then 'January' when '02' then 'Febuary' when '03' then 'March' when '04' then 'April' when '05' then 'May' when '06' then 'June' when '07' then 'July' when '08' then 'August' when '09' then 'September' when '10' then 'October' when '11' then 'November' when '12' then 'December' else '' end
as month from Patient_logs

select date(Dates) from Patient_logs