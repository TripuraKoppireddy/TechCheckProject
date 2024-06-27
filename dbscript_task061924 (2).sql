drop database DB_Product;
-- creating database
create database DB_Product;

-- using Database
use DB_Product;

-- creating user table email validation to be added
create table User_profiles_tbl(
User_id int not null auto_increment,
User_name char(50) not null,
User_Email_Id  char(20) not null,
User_pwd char(20) not null,
primary key (User_id));

-- creating Skills table
create table Skill_details_tbl (
Skill_id int not null auto_increment,
Skill_name char(50) not null,
Created_date date not null,
primary key (Skill_id));

-- creating UserSkills table
create table User_Skill_details_tbl (
User_Skill_id int not null auto_increment,
User_id int ,
Skill_id int,
Years_of_experience int,
Creation_date date not null,
foreign key(User_id) references
 Users(User_id),
foreign key(Skill_id) references 
Skills (Skill_id)
);
