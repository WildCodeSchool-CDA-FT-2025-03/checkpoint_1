-- Toutes les offres d'emploi
SELECT * FROM Offre;

-- Toutes les offres d'emploi d'une ville (Paris)
SELECT * FROM offre WHERE city = "Paris";

-- Les informations de tous candidats qui ont postulé à une offre précise
SELECT c.*
FROM candidat c
JOIN candidature cand ON c.id = cand.candidat_id
WHERE cand.offer_id = 3;

-- Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
SELECT c.*
FROM candidat c
JOIN candidature cand ON c.id = cand.candidat_id
JOIN offre o ON cand.offer_id = o.id
WHERE o.company_id = 3;