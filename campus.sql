CREATE TABLE Country(
    id int NOT NULL AUTO_INCREMENT,
    Name varchar(50) NOT NULL
);
CREATE TABLE State(
    id int NOT NULL AUTO_INCREMENT,
    Name varchar(50) NOT NULL,
    IdCountryFk int NOT NULL,
    CONSTRAIN StateFk PRIMARY KEY(id),
    CONSTRAIN City_Fk FOREING KEY (IdCountryFk) REFERENCES City(id)
);

CREATE TABLE City(
    id int NOT NULL AUTO_INCREMENT,
    Name varchar(25) NOT NULL,
    IdstateFk INT NOT NULL,
    CONSTRAIN City_Fk PRIMARY KEY (id),
    CONSTRAIN State_Fk FOREING KEY (IdstateFk) REFERENCES State(id)
);

CREATE TABLE PersonType(
    id int NOT NULL AUTO_INCREMENT,
    Name varchar(50) NOT NULL
);

CREATE TABLE Customer(
    id int NOT NULL AUTO_INCREMENT,
    Name varchar(50) NOT NULL,
    IdCustomer varchar(255) NOT NULL UNIQUE,
    IdPersonTypeFk int(11) NOT NULL,
    IdCityFk int(11) NOT NULL
    DATER_REGISTER DATE NOT NULL,
    CONSTRAIN CustomerFk PRIMARY KEY(id),
    CONSTRAIN City_Fk FOREING KEY (IdCityFk) REFERENCES City(id),
    CONSTRAIN PersonTypeFk FOREING KEY (IdPersonTypeFk) REFERENCES PersonType(id)
);



