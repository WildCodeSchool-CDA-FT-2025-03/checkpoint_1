SELECT id,title,description,country,company_id 
FROM offer o;

SELECT id,title,description,country,company_id 
FROM offer o
WHERE country = 'Paris';

SELECT id,login,password,firstname,lastname,email,phone,presentation 
FROM candidate c
INNER JOIN candidacy ca ON ca.candidate_id = c.id
INNER JOIN offer o ON o.id = ca.offer_id
WHERE o.id = 10;

SELECT id,login,password,firstname,lastname,email,phone,presentation 
FROM candidate c
INNER JOIN candidacy ca ON ca.candidate_id = c.id
INNER JOIN offer o ON o.id = ca.offer_id
INNER JOIN company co ON co.id = o.company_id
WHERE co.name = 'Devpulse';