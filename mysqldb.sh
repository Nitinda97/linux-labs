#!/bin/bash


user="root"
passwd="abc@1234"

mysql -u $user -p$passwd << EOF
CREATE DATABASE IF NOT EXISTS school;
use school;
create table IF NOT EXISTS student (name varchar(100),marks int);
LOAD DATA INFILE '/var/lib/mysql-files/studentdata.csv' INTO TABLE school.student FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
Select * from school.student;
EOF