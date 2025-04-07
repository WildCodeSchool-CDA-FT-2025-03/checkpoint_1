-- Toutes les offres d'emploi
SELECT * FROM JobOffer;

-- Toutes les offres d'emploi a Paris
SELECT * FROM JobOffer WHERE town LIKE '%Paris%';

-- Les informations de tous les candidats qui ont postule a une offre precise
SELECT Candidate.login, Candidate.firstName, Candidate.lastName, Candidate.email, Candidate.phone, Candidate.presentation_text
FROM Candidate
INNER JOIN Candidate_List ON Candidate.id = Candidate_List.id_candidate
WHERE Candidate_List.id_jobOffer = 25;


-- Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
SELECT Candidate.login, Candidate.firstName, Candidate.lastName, Candidate.email, Candidate.phone, Candidate.presentation_text
FROM Candidate
INNER JOIN Candidate_List ON Candidate.id = Candidate_List.id_candidate
INNER JOIN JobOffer ON Candidate_List.id_jobOffer = JobOffer.id
INNER JOIN Company ON JobOffer.id_recruiter = Company.id_recruiter
WHERE Company.id = 30;

