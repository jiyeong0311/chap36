select user();
use world;
select database();


show databases;

select * from dept;
select * from emp;
select * from salgrade;

select * from city;


show  databases;

show tables;

select * from users;

CREATE TABLE users (
  id VARCHAR(20) NOT NULL,
  password VARCHAR(100) NOT NULL,
  role VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO users (id, password, role) VALUES
('python', '$2a$10$yXEe01lmcxaE1TIgsB5xduMZ5O.DZmXVJHC58OM9GipNymCkHa8/q', 'USER'),
('java',   '$2a$10$Hfe9qsZGIOr/Jsa2Q1NLguTpvs8lmMc6LWdFVpjgWY.ytz8nP2PHq', 'ADMIN');

COMMIT;

SELECT * FROM users;

ALTER TABLE users 
ADD COLUMN name VARCHAR(20) ,
ADD COLUMN gender VARCHAR(10) ,
ADD COLUMN email VARCHAR(255) ,
ADD COLUMN address VARCHAR(255) ,
ADD COLUMN birth DATE;

ALTER TABLE users
ADD COLUMN tel VARCHAR(20);


