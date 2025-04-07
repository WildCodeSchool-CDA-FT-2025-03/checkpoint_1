-- Afficher toutes les offres d'emploi
select * from job;

-- Afficher toutes les offres d'emploi d'une ville (Paris)
select * from job where city = 'Paris';

-- Afficher tout les  informations de tous candidats qui ont postulé à une offre précise
SELECT * FROM candidate
JOIN candidate_job ON candidate.id = candidate_job.id_candidate
JOIN job ON candidate_job.id_job = job.id
WHERE job.id = 1;

-- Afficher Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
SELECT * FROM candidate
JOIN candidate_company ON candidate.id = candidate_company.id_candidate
JOIN company ON candidate_company.id_company = company.id
WHERE company.id = 1;
