CREATE TABLE secrets (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    login VARCHAR(64),
    password VARCHAR(512)
);

CREATE TABLE villes (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(64)
);

CREATE TABLE recruteurs (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    recruteurs_secrets_id INT NOT NULL,
    FOREIGN KEY (recruteurs_secrets_id) REFERENCES secrets (id)
);

CREATE TABLE entreprises (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom VARCHAR(255) NOT NULL UNIQUE,
    description VARCHAR(2048)
);

CREATE TABLE offres (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    offre_villes_id INT NOT NULL,
    description VARCHAR(2048),
    FOREIGN KEY (offre_villes_id) REFERENCES villes (id)
);

CREATE TABLE candidats (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    candidats_secrets_id INT NOT NULL,
    prenom VARCHAR(64),
    nom VARCHAR(64),
    email VARCHAR(255),
    phone VARCHAR(32),
    presentation VARCHAR(2048),
    FOREIGN KEY (candidats_secrets_id) REFERENCES secrets (id)
);

CREATE TABLE entreprises_offres (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    entreprises_offres_entreprises_id INT NOT NULL,
    entreprises_offres_offres_id INT NOT NULL,
    FOREIGN KEY (entreprises_offres_entreprises_id) REFERENCES entreprises (id),
    FOREIGN KEY (entreprises_offres_offres_id) REFERENCES offres (id)
);

CREATE TABLE candidats_offres (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    candidat_offres_offres_id INT NOT NULL,
    candidat_offres_candidats_id INT NOT NULL,
    FOREIGN KEY (candidat_offres_offres_id) REFERENCES offres (id),
    FOREIGN KEY (candidat_offres_candidats_id) REFERENCES candidats (id)
);
