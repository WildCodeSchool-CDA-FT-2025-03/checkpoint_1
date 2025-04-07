-- Création de la base de données
CREATE DATABASE IF NOT EXISTS job_recruitment;
USE job_recruitment;

-- Table RECRUITER
CREATE TABLE Recruiter (
    id INT PRIMARY KEY AUTO_INCREMENT,
    login VARCHAR(255) NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL
);

-- Table CANDIDATE
CREATE TABLE Candidate (
    id INT PRIMARY KEY AUTO_INCREMENT,
    login VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    presentation_text VARCHAR(255) NOT NULL
);

-- Table COMPANY
CREATE TABLE Company (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    id_recruiter INT,
    FOREIGN KEY (id_recruiter) REFERENCES Recruiter(id)
);

-- Table JOBOFFER
CREATE TABLE JobOffer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    job_title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    town VARCHAR(255) NOT NULL,
    id_recruiter INT,
    FOREIGN KEY (id_recruiter) REFERENCES Recruiter(id)
);

-- Table COMPANY_LIST (relation Candidate - Company)
CREATE TABLE Company_List (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_company INT,
    id_candidate INT,
    FOREIGN KEY (id_company) REFERENCES Company(id),
    FOREIGN KEY (id_candidate) REFERENCES Candidate(id)
);

-- Table CANDIDATE_LIST (relation Candidate - JobOffer)
CREATE TABLE Candidate_List (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_jobOffer INT,
    id_candidate INT,
    FOREIGN KEY (id_jobOffer) REFERENCES JobOffer(id),
    FOREIGN KEY (id_candidate) REFERENCES Candidate(id)
);