CREATE DATABASE SalmonRiver;
USE SalmonRiver;

-- Tabela Country
CREATE TABLE Country (
    ID INT PRIMARY KEY,
    Country VARCHAR(50)
);

-- Tabela Category
CREATE TABLE Category (
    ID INT PRIMARY KEY,
    Category VARCHAR(50)
);

-- Tabela River
CREATE TABLE River (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Location VARCHAR(50),
    CountryID INT,
    CategoryID INT,
    FOREIGN KEY (CountryID) REFERENCES Country(ID),
    FOREIGN KEY (CategoryID) REFERENCES Category(ID)
);
