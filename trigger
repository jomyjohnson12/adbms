create table emply(empid number(6) primary key not null,first_name varchar2(10),last_name varchar2(10) not null,hiredate date not null,jobid varchar2(10) not null,salary number(8),mygrid number(6),deptid number(6));

desc emply;

insert into emply values(101,'Chirsty','Varghese','11-May-2018','AD1045',450000,200,10);
insert into emply values(102,'Jeswin','Varghese','19-jan-2019','AD2014',510000,150,20);

select * from emply;

create table dept(deptid number(4) primary key,deptname varchar(30),mygrid number(6),locid number(4));

insert into dept values(10,'Admiministration',200,1700);
insert into dept values(20,'Marketing',150,2100);

select * from dept;


create or replace trigger trig1
after insert
on dept
for each row
begin
update emply set salary=400000 where deptid=20;
end;

select * from dept;
select * from emply;

insert into dept values(30,'Advisor',180,2400);
