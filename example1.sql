CREATE DATABASE it_db;
USE it_db;

CREATE TABLE movies (
    id INT,
    name VARCHAR(20),
    rating DOUBLE
);

INSERT INTO movies 
VALUES 
(1, 'firstfrost', 9.8),
(2, 'lighterandprincess', 10),
(3, 'avatar', 9.5);

ALTER TABLE movies 
ADD hero VARCHAR(10);
describe movies;
SET SQL_SAFE_UPDATES=0;
UPDATE movies SET hero ='jing ting' where name ='firstfrost';
update movies set hero=' chenfeiyu' where name ='lighterandprincess';
update movies set hero ='idunno' where name ='avatar';
alter table movies rename column hero to actor;
rename table movies to latest_movies;
delete from latest_movies where id = 3;
truncate table latest_movies;
drop table latest_movies;


