alter table my_contacts
drop column zip_code;

ALTER TABLE my_contacts
ADD CONSTRAINT fk_my_contacts FOREIGN KEY (zip_code)
REFERENCES zip_code (zip_code);

ALTER TABLE my_contacts
ADD CONSTRAINT my_contacts_fk 
FOREIGN KEY (status_id)
REFERENCES status(status_id);

alter table my_contacts
add column zip_code int(10);

alter table my_contacts
add column status_id int(10);


ALTER TABLE my_contacts
ADD CONSTRAINT my_fk_contacts
FOREIGN KEY (zip_code)
REFERENCES zip_code (zip_code);




