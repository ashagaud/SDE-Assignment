show databases;
create database drivetrack;
use drivetrack;
create table driver(id serial primary key,name varchar(100) not null,phone_number varchar(15) not null,profile_photo varchar(255));

create table vehicle(vehicleNumber varchar(50) primary key,vehicleType varchar(50),
puc_certificate varchar(255),insurance_certificate varchar(255),current_driver_id INTEGER references driver(id));

create table transfer_record(id serial primary key,vehicleNumber varchar(50) 
references vehicle(vehicleNumber),from_driver_id INTEGER references driver(id),to_driver_id integer references driver(id),transfer_date timestamp default current_timestamp);

select * from driver;
select * from vehicle;
select * from transfer_record;