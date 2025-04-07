
-- create
CREATE TABLE candidate (
  id integer PRIMARY KEY AUTO_INCREMENT,
  login varchar(100) NOT NULL,
  password varchar(150) NOT NULL,
  firstname varchar(150) NOT NULL,
  lastname varchar(150) NOT NULL,
  email varchar(255) NOT NULL,
  phone varchar(20) NOT NULL,
  presentation text NOT NULL
);

-- create
CREATE TABLE recruiter (
  id integer PRIMARY KEY AUTO_INCREMENT,
  login varchar(100) NOT NULL,
  password varchar(150) NOT NULL
);

CREATE TABLE company (
  id integer PRIMARY KEY AUTO_INCREMENT,
  name varchar(150) NOT NULL,
  description text,
  recruiter_id integer,
  FOREIGN KEY (recruiter_id) REFERENCES recruiter(id)
);

CREATE TABLE offer (
  id integer PRIMARY KEY AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  description text NOT NULL,
  country varchar(100) NOT NULL,
  company_id integer,
  FOREIGN KEY (company_id) REFERENCES company(id)
);

CREATE TABLE candidacy (
  candidate_id integer,
  offer_id integer,
  FOREIGN KEY (candidate_id) REFERENCES candidate(id),
  FOREIGN KEY (offer_id) REFERENCES company(id)
);
