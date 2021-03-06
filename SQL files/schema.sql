create table Courses (
  cid         char(20) primary key,
  title       text unique,
  description text,
  area        text
  duration    integer);

create table Offerings (
  fee               float，
  target_num        integer,
  launch_date       date,
  register_deadline timestamp,
  capacity          integer,
  start_date        date,
  end_date          date,
  status            text);
  
create table CoursePakages (
  pid         char(20) primary key,
  price       float,
  number      integer,
  name        text,
  start_date  date,
  end_date    date
  status      text);
  
create table Customers (
  cid         char(20) primary key,
  name        char(30),
  phone       text,
  email       text,
  home        text,
  card_info   ?);
  
create table Employees (
  eid         char(20) primary key,
  name        char(30),
  phone       text,
  email       text,
  home        text,
  join_date   date,
  depart_date date);

create table Part_time_Emp (
  eid         char(20) primary key 
  hourly_rate numeric,
  
  foreign key (eid) references Employees on delete cascade);

create table Full_time_Emp (
  eid            char(20) primary key 
  monthly_salary numeric,

  foreign key (eid) references Employees on delete cascade);

create table Instructors (
  eid char(20) primary key  
  
  foreign key (eid) references Employees on delete cascade);

create table Part_time_instructors (
  eid char(20) primary key references Part_time_Emp
      references Instructors
      on delete cascade);

create table Full_time_instructors (
  eid char(20) primary key references Full_time_Emp
      references Instructors
      on delete cascade);

create table Administrators (
  eid char(20) primary key references Full_time_Emp
      on delete cascade);

create table Managers (
  eid char(20) primary key references Full_time_Emp
      on delete cascade);
