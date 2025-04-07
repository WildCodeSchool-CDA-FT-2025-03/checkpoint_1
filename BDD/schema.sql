
CREATE TABLE entreprise (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom VARCHAR(100) NOT NULL,
description VARCHAR(255) NOT NULL
);


CREATE TABLE recruteur (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
login VARCHAR(50) NOT NULL,
password VARCHAR(100)
);

CREATE TABLE candidat (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
login VARCHAR(50) NOT NULL,
password VARCHAR(100) NOT NULL,
nom VARCHAR(50) NOT NULL,
mail VARCHAR(255) NOT NULL,
telephone VARCHAR(50) NOT NULL,
presentation TEXT NOT NULL,
);


CREATE TABLE offre(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
titre VARCHAR(255) NOT NULL,
description TEXT NOT NULL,
ville VARCHAR(255) NOT NULL,
);


CREATE TABLE lister (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
candidat_id INT NOT NULL,
recruteur_id INT NOT NULL,
CONSTRAINT FOREIGN KEY  (candidat_id) REFERENCES candidat(id),
CONSTRAINT FOREIGN KEY  (recruteur_id) REFERENCES recruteur(id),
);

CREATE TABLE candidater (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
entreprise_id INT NOT NULL,
candidat_id INT NOT NULL,
CONSTRAINT FOREIGN KEY  (entreprise_id) REFERENCES entreprise(id),
CONSTRAINT FOREIGN KEY  (candidat_id) REFERENCES candidat(id)
);


INSERT INTO entreprise (id, nom, description)
VALUES 
(1, "Renault", "Constructeur de voitures"),
(2, "AXA", "Assureur"),
(3, "Carrefour", "Grande distribution");