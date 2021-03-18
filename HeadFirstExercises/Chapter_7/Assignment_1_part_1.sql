
create table interest_separate
(interest varchar(100),
 interest1 varchar(100),
 interest2 varchar(100),
 interest3 varchar(100));
 
 INSERT INTO interest_separate(interest)
SELECT  interests FROM my_contacts
group by interests
order by  interests;

SET SQL_SAFE_UPDATES =0;

UPDATE interest_separate SET
interest1 = SUBSTRING_INDEX(interest, ',', 1);

UPDATE interest_separate set 
INTEREST = SUBSTR(INTEREST, LENGTH(INTEREST1) + 2);

UPDATE INTEREST_SEPARATE SET 
interest2 = SUBSTRING_INDEX(interest, ',', 1);

UPDATE interest_separate set 
INTEREST = SUBSTR(INTEREST, LENGTH(INTEREST2) + 2);

UPDATE INTEREST_SEPARATE SET 
interest3 = SUBSTRING_INDEX(interest, ',', 1);

UPDATE interest_separate set 
INTEREST = SUBSTR(INTEREST, LENGTH(INTEREST3) + 2);


