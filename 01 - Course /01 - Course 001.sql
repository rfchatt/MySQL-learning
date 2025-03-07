-- In This Practice we'll learn How to Create a DataBase
-- using COMMANDS (MySQL Workbench | MySQL Command line Client)
 
----------------------------------------------------

-- 1) this line Create a DataBase named : Country
-- [IF NOT EXISTS] is Optional to check if it's already Exists.
CREATE DATABASE IF NOT EXISTS country;

-- 2) CHARACTER SET [OPTIONAL] : defines the set of characters that can be stored in a database
-- ex (utf8mb4) : Supports all Unicode characters including emojis.
CHARACTER SET utf8mb4;

----------------------------------------------------

-- 3) this line Create a Table named : Students 
CREATE TABLE student(
  -- colonnes of Table :
	idStudent INT PRIMARY KEY,         -- idStudent: name of 1st colonne | INT: type | PRIMARY KEY.
 	nameStudent VARCHAR(20) NOT NULL,  -- nameStudent: name of 2nd colonne | VARCHAR: type | NOT NULL.
        age INT                            -- age: name of 3rd colonne | INT: type.
) ENGINE=InnoDB;

----------------------------------------------------

-- 4) SHOW ENGINES : is a command that's using to display the available storage engines as Table. ex (InnoDB, ..)
SHOW ENGINES;

----------------------------------------------------
