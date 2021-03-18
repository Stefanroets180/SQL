USE gregs_list;

Alter Table My_contacts
ADD COLUMN state CHAR(2)
AFTER location;

SET SQL_SAFE_UPDATES = 0;

UPDATE my_contacts
SET state = RIGHT(location, 2);

UPDATE my_contacts
SET location = SUBSTRING_INDEX(location,',',1);

ALTER TABLE my_contacts
CHANGE COLUMN location city VARCHAR(50);



