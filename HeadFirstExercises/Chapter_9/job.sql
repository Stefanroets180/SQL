CREATE TABLE job_listings
( job_id INT NOT NULL AUTO_INCREMENT,
 title VARCHAR(50) NOT NULL,
 salary INT NOT NULL,
 zip INT NOT NULL,
 description VARCHAR(100),
 PRIMARY KEY(job_id));

CREATE TABLE job_desired
(contact_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 title VARCHAR(30) NOT NULL,
 salary_low int(11) NOT NULL,
 salary_high int(11) NOT NULL,
 available VARCHAR(20) NOT NULL,
 years_exp int(11) NOT NULL,
 FOREIGN KEY (contact_id ) REFERENCES job_current(contact_id));

CREATE TABLE job_current
( contact_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 title VARCHAR(30) NOT NULL,
 salary int(11) NOT NULL,
 start_date DATE NOT NULL);
 
 desc job_listings;
 

 
 
 