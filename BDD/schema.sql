CREATE TABLE IF NOT EXISTS company (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS recruiter (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    company_id INT NOT NULL,
    FOREIGN KEY (company_id) REFERENCES company(id)
);

CREATE TABLE IF NOT EXISTS candidate (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    presentation TEXT NOT NULL,
    phone VARCHAR(25) NOT NULL,
    firstname VARCHAR(25) NOT NULL,
    lastname VARCHAR(25) NOT NULL
);

CREATE TABLE IF NOT EXISTS offer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    city VARCHAR(50) NOT NULL,
    recruiter_id INT NOT NULL,
    FOREIGN KEY (recruiter_id) REFERENCES recruiter(id)
);

CREATE TABLE IF NOT EXISTS candidate_offer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    candidate_id INT NOT NULL,
    offer_id INT NOT NULL,
    FOREIGN KEY (candidate_id) REFERENCES candidate(id),
    FOREIGN KEY (offer_id) REFERENCES offer(id)
);

INSERT INTO company (name, description) VALUES 
('TechInnovate', 'Entreprise spécialisée dans le développement de solutions logicielles innovantes'),
('DataVision', 'Leader dans le domaine de l''analyse de données et de l''intelligence artificielle'),
('WebSphere', 'Agence web proposant des services de création de sites et d''applications web'),
('CyberGuard', 'Entreprise de cybersécurité protégeant les données sensibles de ses clients'),
('CloudNexus', 'Fournisseur de solutions cloud pour entreprises de toutes tailles');

INSERT INTO recruiter (email, password, company_id) VALUES 
('sarah.martin@techinnovate.com', 'hash123456', 1),
('jean.dupont@datavision.com', 'hash234567', 2),
('marie.dubois@websphere.com', 'hash345678', 3),
('pierre.moreau@cyberguard.com', 'hash456789', 4),
('julie.leroy@cloudnexus.com', 'hash567890', 5);

INSERT INTO candidate (email, password, presentation, phone, firstname, lastname) VALUES 
('alex.durand@email.com', 'hash123', 'Développeur full-stack avec 5 ans d''expérience en React et Node.js', '0612345678', 'Alex', 'Durand'),
('emma.laurent@email.com', 'hash234', 'Data scientist passionnée par le machine learning et l''IA', '0623456789', 'Emma', 'Laurent'),
('lucas.mercier@email.com', 'hash345', 'Designer UX/UI créatif avec portfolio diversifié', '0634567890', 'Lucas', 'Mercier'),
('lena.rousseau@email.com', 'hash456', 'Spécialiste en cybersécurité certifiée CISSP', '0645678901', 'Léna', 'Rousseau'),
('hugo.fournier@email.com', 'hash567', 'DevOps engineer expérimenté en environnements cloud', '0656789012', 'Hugo', 'Fournier'),
('zoe.lambert@email.com', 'hash678', 'Développeuse mobile spécialisée en applications iOS et Android', '0667890123', 'Zoé', 'Lambert'),
('theo.martin@email.com', 'hash789', 'Chef de projet agile avec certification Scrum Master', '0678901234', 'Théo', 'Martin'),
('camille.dubois@email.com', 'hash890', 'Ingénieure backend spécialisée en architecture microservices', '0689012345', 'Camille', 'Dubois');

INSERT INTO offer (name, description, city, recruiter_id) VALUES 
('Développeur Full Stack', 'Nous recherchons un développeur full stack maîtrisant React, Node.js et MongoDB pour rejoindre notre équipe dynamique', 'Paris', 1),
('Data Scientist Senior', 'Poste pour un data scientist expérimenté pour travailler sur des projets d''intelligence artificielle innovants', 'Lyon', 2),
('UX/UI Designer', 'Créez des interfaces utilisateur intuitives et esthétiques pour nos applications web et mobile', 'Bordeaux', 3),
('Expert en Cybersécurité', 'Protégez nos systèmes contre les menaces informatiques et assurez la sécurité de nos données', 'Lille', 4),
('Ingénieur DevOps', 'Optimisez nos infrastructures cloud et améliorez nos processus de déploiement continu', 'Nantes', 5),
('Développeur Mobile', 'Développez des applications mobiles performantes pour iOS et Android en utilisant React Native', 'Paris', 5),
('Chef de Projet Agile', 'Gérez des projets innovants en utilisant les méthodologies agiles et Scrum', 'Lyon', 5),
('Architecte Logiciel', 'Concevez l''architecture de nos futures applications et dirigez leur implémentation technique', 'Toulouse', 1),
('Ingénieur QA', 'Assurez la qualité de nos produits en mettant en place des tests automatisés efficaces', 'Montpellier', 2),
('Product Owner', 'Définissez la vision produit et travaillez avec les équipes de développement pour la concrétiser', 'Nice', 3);

INSERT INTO candidate_offer (candidate_id, offer_id) VALUES 
(1, 1),
(1, 8),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(5, 8),
(6, 6),
(7, 7),
(8, 8),
(8, 1),
(2, 9),
(7, 10);