Drop table interests;

CREATE TABLE interests
(
 int_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 interest VARCHAR(50) DEFAULT NULL
);

insert into interests(interest) 
select interest1 from interest_separate
WHERE interest1 <> ''
group by interest1;

insert into interests(interest) 
select interest2 from interest_separate
WHERE interest2 <> ''
group by interest2;

insert into interests(interest) 
select interest3 from interest_separate
WHERE interest3 <> ''
group by interest3;

SELECT * FROM interests;