CREATE database Southwind;
use southwind;
Create table students (
id int,
name varchar(20),
age int,
gender varchar(1),
Stream varchar(30)
);
insert into students
values
(1,"Li Xun", 18,"M"),
(2, "Zhu Yun",18,"F"),
(3, "Zisheng",22,"M"),
(4, "Shaoshang",18,"F"),
(5, "Xiao Nai","20","M"),
(6,"Wei Wei", 18,"F"),
(7,"Zhang Lu Rang",18,"M"),
(8, "Su Zai Zai",18, "F");

ALter table students
Add Stream varchar(20)
SET SQL_SAFE_UPDATES=0;
Update students set Stream ="CS"
where id =1;
 update students set stream ="CS" where id =2;
 update students set Stream ="politics" where id=3;
 update students set Stream ="Architecture" where id =4;
 update students set Stream ="CS" where id=5;
 update students set Stream ="CS" where id =6;
 update students set Stream ="CS" where id =7;
 update students set Stream ="Arts" where id =8;





