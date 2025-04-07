
-- create
CREATE TABLE recruteur (
    id_recruteur integer PRIMARY KEY,
    login VARCHAR(100) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL
);

CREATE TABLE entreprise (
    id_entreprise integer  PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    description TEXT,
    id_recruteur INTEGER UNIQUE REFERENCES recruteur(id_recruteur)
);

CREATE TABLE offre (
    id_offre integer  PRIMARY KEY,
    titre_poste VARCHAR(255) NOT NULL,
    descriptif_poste TEXT,
    ville_poste VARCHAR(100),
    entreprise_id INTEGER NOT NULL REFERENCES entreprise(id_entreprise)
);

CREATE TABLE candidat (
    id_candidat integer  PRIMARY KEY,
    login VARCHAR(100) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telephone VARCHAR(20),
    presentation TEXT
);

CREATE TABLE candidature (
    id_candidat INTEGER REFERENCES candidat(id_candidat),
    id_offre INTEGER REFERENCES offre(id_offre),
    PRIMARY KEY (id_candidat, id_offre)
);