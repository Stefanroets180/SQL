use Gregs_list;

SELECT status FROM my_contacts
GROUP BY status
ORDER BY status;

SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;

SELECT seeking FROM my_contacts
GROUP BY seeking
ORDER BY seeking;

SELECT * FROM my_contacts;




CREATE TABLE contact_interest (
contact_id int NOT NULL,
interest_id int NOT NULL,
PRIMARY KEY (contact_id, interest_id),
FOREIGN KEY (contact_id) REFERENCES my_contacts_id(contact_id),
FOREIGN KEY (interest_id) REFERENCES interest(interest_id));

CREATE TABLE contact_seeking (
contact_id int NOT NULL,
seeking_id int NOT NULL,
PRIMARY KEY (contact_id, seeking_id),
FOREIGN KEY (contact_id) REFERENCES my_contacts_id(contact_id),
FOREIGN KEY (seeking_id) REFERENCES seeking(seeking_id));

CREATE TABLE my_contacts_id (
  contact_id int(11) NOT NULL AUTO_INCREMENT,
  last_name varchar(30) DEFAULT NULL,
  first_name varchar(20) DEFAULT NULL,
  phone varchar(11) DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  gender char(1) DEFAULT NULL,
  birthday date DEFAULT NULL,
  prof_id INT(11) NOT NULL, 
  zip_code INT(11) NOT NULL,
  status_id INT(11)NOT NULL,   
  PRIMARY KEY (contact_id),
  FOREIGN KEY (prof_id) REFERENCES profession(prof_id),
  FOREIGN KEY (zip_code) REFERENCES zip_code(zip_code),
  FOREIGN KEY (status_id) REFERENCES status(status_id));
   
  CREATE TABLE profession
( prof_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 profession VARCHAR(50) DEFAULT NULL);

CREATE TABLE seeking
( seeking_id INT(11) NOT NULL AUTO_INCREMENT,
 seeking VARCHAR(100) DEFAULT NULL,
 PRIMARY KEY(seeking_id));
 
 CREATE TABLE interest
( interest_id INT(11) NOT NULL AUTO_INCREMENT,
 interest VARCHAR(100) DEFAULT NULL,
 PRIMARY KEY(interest_id));

CREATE TABLE status
(status_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 status VARCHAR(20) DEFAULT NULL);

CREATE TABLE zip_code
( zip_code INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 city VARCHAR(50) DEFAULT NULL,
 state VARCHAR(2) DEFAULT NULL);

INSERT INTO profession(profession)
SELECT profession FROM my_contacts
group by profession
order by profession;

INSERT INTO status(status) 
SELECT status FROM my_contacts
group by status
order by status;

INSERT INTO seeking( seeking)
SELECT  seeking FROM my_contacts
group by seeking
order by  seeking;

INSERT INTO interest(interest)
SELECT  interests FROM my_contacts
group by interests
order by  interests;

UPDATE my_contacts
SET interests = SUBSTR(interests, LENGTH(interest1)+2 );


insert into interest(interest)
Values(SUBSTRING_INDEX(interest,',',1));

CREATE TABLE profession AS
SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;
ALTER TABLE profession
ADD COLUMN id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (id);

SELECT profession AS mc_prof FROM my_contacts
GROUP BY mc_prof
ORDER BY mc_prof;

SELECT profession mc_prof
FROM my_contacts mc
GROUP BY mc_prof
ORDER BY mc_prof;

INSERT INTO zip_code(city,state)
SELECT  city,state FROM my_contacts
group by city
order by  city;

delete from zip_code;

ALTER TABLE zip_code AUTO_INCREMENT = 1;

alter table my_contacts
drop column profession ;

alter table my_contacts
drop column city ;

alter table my_contacts
drop column state ;

alter table my_contacts
drop column status ;

alter table my_contacts
drop column interests ;

alter table my_contacts
drop column seeking;

alter table my_contacts
drop column zip_code;


drop table zip_code;
drop table my_contacts_id;
drop table contact_seeking;
drop table contact_interests;

SET SQL_SAFE_UPDATES=0;

INSERT INTO zip_code(state)
SELECT  state FROM my_contacts
group by state
order by  state;

alter table my_contacts
add column prof_id int(10) after birthday;

Alter table my_contacts
add column zip_code VarChar(10);

Alter table my_contacts
add column status_id VarChar(10);

ALTER TABLE my_contacts
ADD CONSTRAINT my_contacts_prof_id_fk 
FOREIGN KEY (prof_id)
REFERENCES my_contacts(prof_id) ;

ALTER TABLE my_contacts
ADD CONSTRAINT fk_my_contacts FOREIGN KEY (prof_id)
REFERENCES profession (prof_id);

SHOW ENGINE innodb STATUS;

ALTER TABLE my_contacts
drop column prof_id;



