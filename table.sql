CREATE TABLE SalmonRiver.sql (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Country VARCHAR(50),
    Rivername VARCHAR(50),
    Category VARCHAR(50),
    Location VARCHAR(50)
);

LOAD DATA INFILE 'C:/path/to/AtlanticSalmonRiver.csv'
INTO TABLE SalmonRiver.sql;
FIELDS TERMINATED BY ','
ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Country, Rivername, Category, Location);