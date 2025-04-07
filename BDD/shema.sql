-- Création de la base de données
CREATE DATABASE IF NOT EXISTS job_recruitment;
USE job_recruitment;

-- Table RECRUITER
CREATE TABLE Recruiter (
    id INT PRIMARY KEY AUTO_INCREMENT,
    login VARCHAR(90) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(90) NOT NULL
);

-- Table CANDIDATE
CREATE TABLE Candidate (
    id INT PRIMARY KEY AUTO_INCREMENT,
    login VARCHAR(90) NOT NULL UNIQUE,
    password VARCHAR(90) NOT NULL,
    firstName VARCHAR(45) NOT NULL,
    lastName VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL UNIQUE,
    phone VARCHAR(45) NOT NULL,
    presentation_text TEXTLONG NOT NULL
);

-- Table COMPANY
CREATE TABLE Company (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    description TEXTLONG NOT NULL,
    id_recruiter INT,
    FOREIGN KEY (id_recruiter) REFERENCES Recruiter(id) 
);

-- Table JOBOFFER
CREATE TABLE JobOffer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    job_title VARCHAR(90) NOT NULL,
    description TEXTLONG NOT NULL,
    town VARCHAR(90) NOT NULL,
    id_recruiter INT,
    FOREIGN KEY (id_recruiter) REFERENCES Recruiter(id)
);

-- Table COMPANY_LIST (relation Candidate - Company)
CREATE TABLE Company_List (
    id_company INT,
    id_candidate INT,
    FOREIGN KEY (id_company) REFERENCES Company(id),
    FOREIGN KEY (id_candidate) REFERENCES Candidate(id),
    PRIMARY KEY (id_company, id_candidate), -- Un candidat ne pourra pas avoir plusieurs entreprise dans sa liste d'entreprise
);

-- Table CANDIDATE_LIST (relation Candidate - JobOffer)
CREATE TABLE Candidate_List (
    id_jobOffer INT,
    id_candidate INT,
    FOREIGN KEY (id_jobOffer) REFERENCES JobOffer(id),
    FOREIGN KEY (id_candidate) REFERENCES Candidate(id),
    PRIMARY KEY (id_jobOffer, id_candidate), -- Un candidat ne pourra pas postuler deux fois a la meme offre
);