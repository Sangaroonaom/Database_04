# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Tutor_aom.dez                                   #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-11-23 16:52                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `Student` DROP FOREIGN KEY `Gender_Student`;

ALTER TABLE `Student` DROP FOREIGN KEY `Courses_Student`;

ALTER TABLE `Teacher` DROP FOREIGN KEY `Gender_Teacher`;

ALTER TABLE `Teacher` DROP FOREIGN KEY `Courses_Teacher`;

ALTER TABLE `Course_detail` DROP FOREIGN KEY `Courses_Course_detail`;

# ---------------------------------------------------------------------- #
# Drop table "Student"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Student` DROP PRIMARY KEY;

DROP TABLE `Student`;

# ---------------------------------------------------------------------- #
# Drop table "Course_detail"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Course_detail`;

# ---------------------------------------------------------------------- #
# Drop table "Teacher"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Teacher` DROP PRIMARY KEY;

DROP TABLE `Teacher`;

# ---------------------------------------------------------------------- #
# Drop table "Courses"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Courses` DROP PRIMARY KEY;

DROP TABLE `Courses`;

# ---------------------------------------------------------------------- #
# Drop table "Gender"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Gender` DROP PRIMARY KEY;

DROP TABLE `Gender`;
