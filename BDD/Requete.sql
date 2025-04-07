SELECT o.id,o.title,o.description,o.country,o.company_id 
FROM offer o;

SELECT o.id,o.title,o.description,o.country,o.company_id 
FROM offer o
WHERE country = 'Paris';

SELECT c.id,c.login,c.password,c.firstname,c.lastname,c.email,c.phone,c.presentation 
FROM candidate c
INNER JOIN candidacy ca ON ca.candidate_id = c.id
INNER JOIN offer o ON o.id = ca.offer_id
WHERE o.id = 10;

SELECT c.id,c.login,c.password,c.firstname,c.lastname,c.email,c.phone,c.presentation 
FROM candidate c
INNER JOIN candidacy ca ON ca.candidate_id = c.id
INNER JOIN offer o ON o.id = ca.offer_id
INNER JOIN company co ON co.id = o.company_id
WHERE co.name = 'Devpulse';

