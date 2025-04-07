-- Afficher toutes les offres d'emploi
select * from job;

-- Afficher toutes les offres d'emploi d'une ville (Paris)
select * from job where city = 'Paris';

-- Afficher tout les  informations de tous candidats qui ont postulé à une offre précise
SELECT * FROM candidate
JOIN candidate_job ON candidate.id = candidate_job.id_candidate
JOIN job ON candidate_job.id_job = job.id
WHERE job.id = 1;
