-- 1. Toutes les offres d'emploi d'une ville (Paris)
SELECT * 
FROM offer 
WHERE city = 'Paris';

-- 2. Les informations de tous les candidats qui ont postulé à une offre précise
-- Exemple avec l'offre "Développeur Full Stack" (id = 1)
SELECT c.*
FROM candidate c
JOIN candidate_offer co ON c.id = co.candidate_id
JOIN offer o ON co.offer_id = o.id
WHERE o.id = 1;

-- Variante : si on connaît le nom de l'offre plutôt que son ID
SELECT c.*
FROM candidate c
JOIN candidate_offer co ON c.id = co.candidate_id
JOIN offer o ON co.offer_id = o.id
WHERE o.name = 'Développeur Full Stack';

-- 3. Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
-- Exemple avec l'entreprise "TechInnovate" (id = 1)
SELECT DISTINCT c.*
FROM candidate c
JOIN candidate_offer co ON c.id = co.candidate_id
JOIN offer o ON co.offer_id = o.id
JOIN recruiter r ON o.recruiter_id = r.id
JOIN company comp ON r.company_id = comp.id
WHERE comp.id = 1;

-- Variante : si on connaît le nom de l'entreprise plutôt que son ID
SELECT DISTINCT c.*
FROM candidate c
JOIN candidate_offer co ON c.id = co.candidate_id
JOIN offer o ON co.offer_id = o.id
JOIN recruiter r ON o.recruiter_id = r.id
JOIN company comp ON r.company_id = comp.id
WHERE comp.name = 'TechInnovate';