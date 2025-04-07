CREATE TABLE recruteur (
  id INT PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE entreprise (
  id INT PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  description TEXT
);

CREATE TABLE offre (
  id INT PRIMARY KEY,
  title VARCHAR(255),
  description TEXT,
  city VARCHAR(100)
  company_id INT REFERENCES entreprise(id);
);

CREATE TABLE candidat (
  id INT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255),
  lastname VARCHAR(100),
  firstname VARCHAR(100),
  email VARCHAR(255),
  tel VARCHAR(20),
  presentation TEXT
);

CREATE TABLE candidature (
  id INT PRIMARY KEY,
  candidat_id INT REFERENCES candidat(id),
  offer_id INT REFERENCES offre(id),
  date DATE DEFAULT CURRENT_DATE,
  status VARCHAR(20)
);
