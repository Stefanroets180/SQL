insert into info_activites values (1,3); 
insert into info_activites values (2,4); 
insert into info_activites values (3,1); 
insert into info_activites values (4,5); 
insert into info_activites values (5,2); 

insert into info_location values (1,3,'Today'); 
insert into info_location values (2,4,'Yesterday'); 
insert into info_location values (3,1,'Today'); 
insert into info_location values (4,5,'Yesterday'); 
insert into info_location values (5,2,'Yesterday'); 

SELECT ci.name, a.activity
FROM clown_info as ci
INNER JOIN
info_activites As ia
on ci.id = ia.id
INNER JOIN 
activities as a
on ia.activity_id = a.activity_id;

SELECT ci.name, l.location
FROM clown_info as ci
INNER JOIN
info_location As il
on ci.id = il.id
INNER JOIN 
location as l
on il.location_id = l.location_id;


