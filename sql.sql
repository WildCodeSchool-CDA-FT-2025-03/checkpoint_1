-- Créer la base de données
CREATE DATABASE IF NOT EXISTS cda_checkpoint_one;
USE cda_checkpoint_one;

-- Table CANDIDAT
CREATE TABLE CANDIDAT (
  id INT AUTO_INCREMENT PRIMARY KEY,
  login VARCHAR(100) NOT NULL,
  mot_de_passe VARCHAR(255) NOT NULL,
  nom VARCHAR(100),
  prenom VARCHAR(100),
  email VARCHAR(150),
  telephone VARCHAR(20),
  presentation TEXT
);

-- Table ENTREPRISE
CREATE TABLE ENTREPRISE (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(150) NOT NULL,
  description TEXT
);

-- Table RECRUTEUR
CREATE TABLE RECRUTEUR (
  id INT AUTO_INCREMENT PRIMARY KEY,
  login VARCHAR(100) NOT NULL,
  mot_de_passe VARCHAR(255) NOT NULL,
  id_entreprise INT UNIQUE, -- 1 seul recruteur peut gérer 1 entreprise

  FOREIGN KEY (id_entreprise) REFERENCES ENTREPRISE(id)
);

-- Table OFFRE
CREATE TABLE OFFRE (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(150) NOT NULL,
  description TEXT,
  ville VARCHAR(100),
  id_entreprise INT NOT NULL,

  FOREIGN KEY (id_entreprise) REFERENCES ENTREPRISE(id)
);

-- Table CANDIDATURE
CREATE TABLE CANDIDATURE (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_candidat INT NOT NULL,
  id_offre INT NOT NULL,
  date_candidature DATE NOT NULL,

  FOREIGN KEY (id_candidat) REFERENCES CANDIDAT(id),
  FOREIGN KEY (id_offre) REFERENCES OFFRE(id),

  UNIQUE (id_candidat, id_offre) -- un candidat ne peut postuler qu'une fois à une offre
);
