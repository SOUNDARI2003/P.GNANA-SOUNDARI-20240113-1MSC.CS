About this project:
    
        This project is used a SQL language to create a student database and it have a two table as an student_details and student_marks.I tried a some operation 
to check the details of the student.
   
CREATE DATABASE:


sqlite3 student.db


CREATE TABLE:

create table student_details(id integer,name varchar(100));


INSERT QUERY:

sqlite> insert into student_details(id,name) values(101,'ravi');
sqlite> insert into student_details(id,name) values(102,'karan');
sqlite> insert into student_details(id,name) values(103,'ram');
sqlite> insert into student_details(id,name) values(104,'punitha');
sqlite> insert into student_details(id,name) values(105,'balan');
sqlite> insert into student_details(id,name) values(106,'koki');
sqlite> insert into student_details(id,name) values(107,'yuva');
sqlite> insert into student_details(id,name) values(108,'nandy');
sqlite> insert into student_details(id,name) values(109,'jannu');
sqlite> insert into student_details(id,name) values(110,'jan');
sqlite> select * from student_details;
101|ravi
102|karan
103|ram
104|punitha
105|balan
106|koki
107|yuva
108|nandy
109|jannu
110|jan
sqlite>


CREATE TABLE QUERY:

sqlite> create table student_marks(id integer,mark1 integer,mark2 integer,mark3 integer,status varchar(10));


INSERT QUERY:

sqlite> insert into student_marks(id,mark1,mark2,mark3,status) values(101,45,60,78,'P');
sqlite> insert into student_marks(id,mark1,mark2,mark3,status) values(102,55,80,48,'P');
sqlite> insert into student_marks(id,mark1,mark2,mark3,status) values(103,26,40,38,'F');
sqlite> insert into student_marks(id,mark1,mark2,mark3,status) values(103,46,60,79,'P');
sqlite> insert into student_marks(id,mark1,mark2,mark3,status) values(104,76,50,69,'P');
sqlite> insert into student_marks(id,mark1,mark2,mark3,status) values(105,66,20,68,'F');
sqlite> insert into student_marks(id,mark1,mark2,mark3,status) values(106,86,60,48,'P');
sqlite> insert into student_marks(id,mark1,mark2,mark3,status) values(107,86,50,78,'P');
sqlite> insert into student_marks(id,mark1,mark2,mark3,status) values(108,46,50,68,'P');
sqlite> insert into student_marks(id,mark1,mark2,mark3,status) values(108,36,40,29,'F');
sqlite> insert into student_marks(id,mark1,mark2,mark3,status) values(110,86,50,78,'P');
sqlite> select * from student_marks;
101|45|60|78|P
102|55|80|48|P
103|26|40|38|F
103|46|60|79|P
104|76|50|69|P
105|66|20|68|F
106|86|60|48|P
107|86|50|78|P
108|46|50|68|P
108|36|40|29|F
110|86|50|78|P
sqlite>

COUNT QUERY:


select count (*) from student_details;
10

SUM QUERY:

sqlite> select sum (mark1) from student_marks;
654
sqlite> select sum (mark2) from student_marks;
560
sqlite> select sum (mark3) from student_marks;
681
AVG QUERY:

sqlite> select id, avg(mark1+mark2+mark3) from student_marks;
101|172.272727272727

ALTER QUERY:

alter table student_details add state varchar(100);

DROP QUERY:
 
drop table studnt_marks;

UPDATE:


update student_details set name='priyanka' where id=110;


WHERE CONDITIONS:

OR:


select * from customers where age>=25 or country="uk";


AND:

select * from customers where age>=20 and country="uk";

JOIN FUNCTION:


INNER JOIN:

select * from customers inner join orders on customers.customer_id=orders.customer_id;

LEFT JOIN:

select * from customers left join orders on customers.customer_id=orders.customer_id;

RIGHT JOIN:

select * from customers right join orders on customers.customer_id=orders.customer_id;

ORDER BY:

ASC:

SELECT * FROM CUSTOMERS ORDER BY first_name asc;

DESC:

SELECT * FROM CUSTOMERS ORDER BY first_name desc;
