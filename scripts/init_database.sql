/*
=============================================================
Initialize Database and Schemas
=============================================================
Script Purpose:
    Initializes the sim_management_dw database and the bronze,
    silver, and gold schemas used in the project.

Warning:
    This script drops and recreates the database.
    Run in a development environment only.
*/

USE master;
GO

-- Reset the project database if it already exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'sim_management_dw')
BEGIN
    ALTER DATABASE sim_management_dw SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE sim_management_dw;
END;
GO

-- Create the project database
CREATE DATABASE sim_management_dw;
GO

-- Switch to the project database
USE sim_management_dw;
GO

-- Create the Bronze schema for raw data
CREATE SCHEMA bronze;
GO

-- Create the Silver schema for cleansed data
CREATE SCHEMA silver;
GO

-- Create the Gold schema for reporting data
CREATE SCHEMA gold;
GO
