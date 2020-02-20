-- CRUD workout

CREATE DATABASE student;

CREATE TABLE info(id int primary key(id),
fname VARCHAR(25),
lname VARCHAR(25),
phone VARCHAR(15),
age int,
email VARCHAR(50) );

insert into info(fname, lname, phone, age, email) VALUES(
    'Nekiedra', 'Singleton', '6012872671', 21, 'nekeidrasingleton@gmail.com'
);

ALTER TABLE info MODIFY COLUMN id INT auto_increment;

insert into info(fname, lname, phone, age, email) VALUES(
    'Random', 'Singleton', '6013625222', 22, 'randomsingleton@gmail.com'
);

SELECT * from info where id=2;

UPDATE info Set age=55 Where Id=2;

insert into info(fname, lname, phone, age, email) VALUES(
    'Shareta', 'Harris', '6013625222', 40, 'randomharris@gmail.com'
);

insert into info(fname, lname, phone, age, email) VALUES(
    'Andrew', 'Harris', '6013625222', 40, 'randomharris@gmail.com'
);

CREATE TABLE Birthday(person_id int , Foreign Key(person_id) REFERENCES info(id),
month VARCHAR(25),
day int,
year int
 );

insert into Birthday(person_id, month, day, year) values(
    1, 'February', 26, 1998
);

SELECT * from Birthday;

DELETE from info where id = 2;
