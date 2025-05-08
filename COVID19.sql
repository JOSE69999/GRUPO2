USE covid_19_dbd;
CREATE TABLE regiones (
    iso VARCHAR(10) NOT NULL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE provinciaapi (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    iso VARCHAR(10),
    name VARCHAR(255)
);

CREATE TABLE reportes (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date VARCHAR(255),
    region VARCHAR(255),
    province VARCHAR(255),
    confirmed INT,
    deaths INT
);

SELECT * FROM provinciaapi;
SELECT * FROM regiones;
SELECT * FROM reportes;
