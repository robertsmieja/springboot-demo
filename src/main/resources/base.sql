CREATE TABLE BUILDING
(
    ID BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    NUMBER BIGINT NOT NULL,
    PERSON_ID BIGINT,
    STREET_ID BIGINT
);
CREATE TABLE CITY
(
    ID BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    NAME VARCHAR(50) NOT NULL,
    COUNTRY_ID BIGINT
);
CREATE TABLE COUNTRY
(
    ID BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    NAME VARCHAR(100) NOT NULL
);
CREATE TABLE COUNTRY_CITIES
(
    COUNTRY_ID BIGINT NOT NULL,
    CITIES_ID BIGINT NOT NULL
);
CREATE TABLE PERSON
(
    ID BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    NAME VARCHAR(50) NOT NULL,
    HOME_ID BIGINT
);
CREATE TABLE STREET
(
    ID BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    NAME VARCHAR(50) NOT NULL,
    CITY_ID BIGINT
);
ALTER TABLE BUILDING ADD FOREIGN KEY (PERSON_ID) REFERENCES PERSON (ID);
ALTER TABLE BUILDING ADD FOREIGN KEY (STREET_ID) REFERENCES STREET (ID);
ALTER TABLE CITY ADD FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRY (ID);
ALTER TABLE COUNTRY_CITIES ADD FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRY (ID);
ALTER TABLE COUNTRY_CITIES ADD FOREIGN KEY (CITIES_ID) REFERENCES CITY (ID);
ALTER TABLE PERSON ADD FOREIGN KEY (HOME_ID) REFERENCES BUILDING (ID);
ALTER TABLE STREET ADD FOREIGN KEY (CITY_ID) REFERENCES CITY (ID);