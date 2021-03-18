SELECT * FROM links.my_contacts;

SELECT title FROM job_listings
GROUP BY title ORDER BY title;

SELECT mc.last_name, mc.first_name
FROM my_contacts AS mc
NATURAL JOIN
job_desired AS jd
WHERE jd.title = 'Cook'
AND jd.salary_low < 10500;

SELECT mc.first_name, mc.last_name,  jc.title
FROM job_current AS jc NATURAL JOIN my_contacts AS mc
WHERE
jc.title IN ('Cook', 'Hairdresser', 'Waiter', 'Web Designer', 'Web Developer');

SELECT title FROM job_listings
GROUP BY title ORDER BY title;

SELECT mc.first_name, mc.last_name, jc.title
FROM job_current AS jc NATURAL JOIN my_contacts AS mc
WHERE jc.title IN (SELECT title FROM job_listings);

SELECT some_column, another_column
FROM table
WHERE column = (SELECT column FROM table);

SELECT some_column, another_column
FROM table
WHERE column = (SELECT column FROM table);

SELECT zip_code FROM
zip_code WHERE city =
'Memphis' AND state = 'TN';

SELECT last_name, first_name
FROM my_contacts
WHERE zip_code = (SELECT zip_code FROM
zip_code WHERE city =
'dallas' AND state = 'TX');

SELECT mc.first_name, mc.last_name, jc.salary
FROM my_contacts AS mc NATURAL JOIN job_current AS jc
WHERE jc.salary =
(SELECT MAX(jc.salary) FROM job_current jc);

SELECT mc.first_name, mc.last_name,
(SELECT state
FROM zip_code
WHERE mc.zip_code = zip_code) AS state
FROM my_contacts mc;

SELECT jc.salary
FROM my_contacts mc NATURAL JOIN job_current jc
WHERE mc.email = 'lkenton@starbuzzcoffee.com';

SELECT mc.first_name, mc.last_name, jc.salary
FROM
my_contacts AS mc NATURAL JOIN job_current AS jc
WHERE
jc.salary > (SELECT jc.salary
FROM my_contacts mc NATURAL JOIN job_current jc
WHERE mc.email = 'lkenton@starbuzzcoffee.com');

SELECT mc.first_name, mc.last_name,  jc.title
FROM job_current AS jc NATURAL JOIN my_contacts AS mc
WHERE jc.title IN (SELECT title FROM job_listings);

SELECT mc.first_name, mc.last_name, jc.title
FROM job_current jc NATURAL JOIN my_contacts mc
WHERE jc.title NOT IN (SELECT title FROM job_listings);

SELECT title FROM job_listings
WHERE salary = (SELECT MAX(salary)
FROM job_listings);

SELECT title from job_listings 
Where salary = (SELECT MAX(salary) FROM job_listings);

SELECT mc.first_name, mc.last_name
FROM my_contacts mc
NATURAL JOIN job_current jc
WHERE jc.salary > (SELECT AVG(salary) FROM job_current);

SELECT mc.first_name, mc.last_name FROM my_contacts mc
NATURAL JOIN job_current jc WHERE jc.title = 'web designer' AND mc.zip_code
IN (SELECT zip FROM job_listings WHERE title = 'web designer');

SELECT last_name, first_name FROM my_contacts
WHERE zip_code IN (SELECT mc.zip_code FROM my_contacts mc
NATURAL JOIN job_current jc
WHERE jc.salary = (SELECT MAX(salary) FROM job_current));

SELECT mc.first_name, mc.last_name
FROM my_contacts AS mc
WHERE
3 = (SELECT COUNT(*) FROM contact_interest
WHERE contact_id = mc.contact_id);

SELECT mc.first_name firstname, mc.last_name lastname, mc.email email
FROM my_contacts mc
WHERE EXISTS
(SELECT * FROM contact_interest ci WHERE mc.contact_id = ci.contact_id );

SELECT mc.first_name firstname, mc.last_name lastname, mc.email email
FROM my_contacts mc
WHERE NOT EXISTS
(SELECT * FROM job_current jc
WHERE mc.contact_id = jc.contact_id );

SELECT mc.email from my_contacts as mc
where mc.interests<>'';

SELECT mc.email FROM my_contacts mc WHERE
EXISTS
(SELECT * FROM contact_interest ci WHERE mc.contact_ID = ci.contact_ID)
AND
NOT EXISTS
(SELECT * FROM job_current jc
WHERE mc.contact_id = jc.contact_id );