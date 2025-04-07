INSERT INTO Recruteur (username, password) VALUES
('hr_bistrot', '$2y$10$N7Y9Uz9qZ8m1eF3vJ5WrXe3z7dXkY2vL1aV9cC3bN5m7vQ1wZ3y6u'),
('recruiter_gastro', '$2y$10$X3p7M9qR1tY5uI8oP2wQ3e5r7tY9uI1oP3wE5r7tY9uI1oP5wQ3'),
('resto_team', '$2y$10$A2b4C6d8E0f1G3h5I7j9K1l3m5n7o9P1qR3s5T7u9V1wX3y5Z7a9');

INSERT INTO Entreprise (name, description) VALUES
('Le Bistrot Français', 'Restaurant traditionnel français depuis 1985'),
('GastroLab', 'Cuisine moléculaire et expérimentale'),
('Pasta & Co', 'Restaurant italien artisanal');

INSERT INTO Candidat (username, password, lastname, firtname, email, tel, presentation) VALUES
('chef_jacques', '$2y$10$B3d5F7h9J1k3L5m7N9oP1qR3s5T7u9V1w', 'Dupont', 'Jacques', 'jacques.dupont@email.com', '0612345678', 'Chef cuisinier avec 10 ans d''expérience en gastronomie française'),
('pizza_lover', '$2y$10$C4e6F8g0H2i4J6k8L0m2N4o6P8q0R2s4T', 'Martin', 'Sophie', 'sophie.martin@email.com', '0698765432', 'Spécialiste de la cuisine italienne, passionnée par les pâtes fraîches'),
('baker_amy', '$2y$10$D5f7G9h1J3l5M7o9P1qR3s5T7u9V1wX3', 'Johnson', 'Amy', 'amy.johnson@email.com', '0687654321', 'Boulangère-pâtissière formée à l''école Lenôtre');


INSERT INTO Offres (title, description, city) VALUES
('Chef de Cuisine', 'Recherche chef expérimenté pour notre bistrot parisien. CDI temps plein.', 'Paris'),
('Serveur/Serveuse', 'Poste en salle avec expérience en restauration traditionnelle requise.', 'Paris'),
('Chef Pâtissier', 'Pour développer notre offre desserts moléculaires. Créativité requise.', 'Lyon'),
('Pizzaiolo', 'Maîtrise du four à bois nécessaire. Contrat saisonnier possible.', 'Marseille');


INSERT INTO Candidature (candidat_id, offer_id, date, statut) VALUES
(1, 1, '2023-05-12 14:30:00', 'en attente'),
(1, 3, '2023-06-02 10:15:00', 'entretien'),
(2, 4, '2023-06-06 16:45:00', 'accepté'),
(3, 3, '2023-06-03 11:20:00', 'refusé'),
(2, 2, '2023-05-18 09:00:00', 'en attente');