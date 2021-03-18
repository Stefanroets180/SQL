SELECT mc.last_name, mc.first_name, i.interest
From my_contacts as mc
inner Join 
contact_interest as ci
on mc.contact_id = ci.contact_id
inner join 
interests as i 
on ci.int_id = i.int_id ; 

SELECT mc.last_name, mc.first_name, p.profession
From my_contacts as mc
inner Join 
profession as p
on mc.prof_id = p.prof_id;


SELECT mc.last_name, mc.first_name, s.seeking
From my_contacts as mc
inner Join 
contact_seeking as cs
on mc.contact_id = cs.contact_id
inner join 
seeking as s 
on s.seeking_id = cs.seeking_id ; 

SELECT mc.last_name, mc.first_name, s.status
From my_contacts as mc
inner Join 
status as s
on mc.status_id = s.status_id;

SELECT mc.last_name, mc.first_name, zc.city, zc.state
From my_contacts as mc
inner Join 
zip_code as zc
on mc.zip_code = zc.zip_code;


