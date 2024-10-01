CREATE DATABASE Airport;
USE Airport;

-- Tabela country
CREATE TABLE country (
    id INT PRIMARY KEY,
    country VARCHAR(60)
);

-- Tabela city
CREATE TABLE city (
    id INT PRIMARY KEY,
    city VARCHAR(60),
    countryID INT,
    FOREIGN KEY (countryID) REFERENCES country(id)
);

-- Tabela airport
CREATE TABLE airport (
    id INT PRIMARY KEY,
    airport VARCHAR(80),
    IATA_FAA VARCHAR(3),
    ICAO VARCHAR(4),
    cityID INT,
    FOREIGN KEY (cityID) REFERENCES city(id)
);
