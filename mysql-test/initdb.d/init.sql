DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb;
USE testdb;
DROP TABLE IF EXISTS employee;

CREATE TABLE employee
(
  id           INT(10) NOT NULL PRIMARY KEY,
  name     VARCHAR(40) NOT NULL,
  pass     VARCHAR(40) NOT NULL
)DEFAULT CHARACTER
  SET=utf8;

INSERT INTO employee (id, name, pass) VALUES (1, "Nagaoka","pass");
INSERT INTO employee (id, name, pass) VALUES (2, "Tanaka","pass");
INSERT INTO employee (id, name, pass) VALUES (3, "Jhon","pass");

create table users
(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) not null unique,
  password VARCHAR(500) not null
);

INSERT INTO users (username, password) VALUE  ("testuser", 
"$2a$10$ioYmeDllTlx0mI4Vz2Iygep2rmH5gA6qKoPEuIHqVK5lWcgADPDgK");
