# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Tutor_aom.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-23 16:52                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #
Create schema 5605104047db;
Use 5605104047db;
# ---------------------------------------------------------------------- #
# Add table "Gender"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `Gender` (
    `Sex_id` INTEGER(2) NOT NULL,
    `Sex_name` VARCHAR(40),
    CONSTRAINT `PK_Gender` PRIMARY KEY (`Sex_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Courses"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Courses` (
    `Courses_id` INTEGER(5) NOT NULL,
    `Courses_name` VARCHAR(40),
    `Courses_start` VARCHAR(40),
    `Courses_units` VARCHAR(40),
    CONSTRAINT `PK_Courses` PRIMARY KEY (`Courses_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Teacher"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Teacher` (
    `Teacher_id` INTEGER(5) NOT NULL,
    `Teacher_Fname` VARCHAR(40),
    `Teacher_Lname` VARCHAR(40),
    `Phonenumber` VARCHAR(40),
    `Email` VARCHAR(40),
    `Courses_id` INTEGER(5),
    `Sex_id` INTEGER(2) NOT NULL,
    CONSTRAINT `PK_Teacher` PRIMARY KEY (`Teacher_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Course_detail"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `Course_detail` (
    `Coures_cost` VARCHAR(40),
    `Courses_id` INTEGER(5) NOT NULL,
    PRIMARY KEY (`Courses_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Student"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Student` (
    `Std_id` INTEGER(10) NOT NULL,
    `Std_Fname` VARCHAR(40),
    `Std_Lname` VARCHAR(40),
    `Std_Birthday` VARCHAR(40),
    `Address` VARCHAR(40),
    `Phonenumber` VARCHAR(40),
    `Email` VARCHAR(40),
    `Courses_id` INTEGER(5),
    `Sex_id` INTEGER(2) NOT NULL,
    CONSTRAINT `PK_Student` PRIMARY KEY (`Std_id`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `Student` ADD CONSTRAINT `Gender_Student` 
    FOREIGN KEY (`Sex_id`) REFERENCES `Gender` (`Sex_id`);

ALTER TABLE `Student` ADD CONSTRAINT `Courses_Student` 
    FOREIGN KEY (`Courses_id`) REFERENCES `Courses` (`Courses_id`);

ALTER TABLE `Teacher` ADD CONSTRAINT `Gender_Teacher` 
    FOREIGN KEY (`Sex_id`) REFERENCES `Gender` (`Sex_id`);

ALTER TABLE `Teacher` ADD CONSTRAINT `Courses_Teacher` 
    FOREIGN KEY (`Courses_id`) REFERENCES `Courses` (`Courses_id`);

ALTER TABLE `Course_detail` ADD CONSTRAINT `Courses_Course_detail` 
    FOREIGN KEY (`Courses_id`) REFERENCES `Courses` (`Courses_id`);
