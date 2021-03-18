SELECT * FROM drinks.black_book;

SELECT date_name
FROM black_book
WHERE
rating IN ('innovate',
'fabulous', 'delightful',
'pretty good');

SELECT date_name
FROM black_book
WHERE
rating NOT IN ('innovative',
'fabulous', 'delightful',
'pretty good');

SELECT drink_name FROM drink_info
WHERE NOT carbs BETWEEN 3 AND 5;

SELECT date_name from black_book
WHERE NOT date_name LIKE 'A%'
AND NOT date_name LIKE 'B%';


SELECT drink_name from easy_drinks
WHERE NOT amount1 >= 1.50;

SELECT drink_name FROM drink_info
WHERE ice = 'N';

SELECT drink_name FROM drink_info
WHERE calories >= 20;

SELECT drink_name FROM easy_drinks
WHERE main Between 'P' AND 'T';

SELECT drink_name FROM drink_info
WHERE NOT carbs< 3 or Carbs >5;

SELECT drink_name FROM drink_info
WHERE calories > 0;

SELECT date_name from black_book
WHERE Date_NAme NOT BETWEEN  'A'AND 'C';

