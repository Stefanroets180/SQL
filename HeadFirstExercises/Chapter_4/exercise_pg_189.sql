CREATE TABLE your_table
(
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(20),
last_name VARCHAR(30),
PRIMARY KEY (id)
);
________________________________________________________________________________________________
2: Open your SQL terminal or GUI interface and run your CREATE TABLE statement.
________________________________________________________________________________________________
3: Try out each of the INSERT statements below. Circle the ones that work.

INSERT INTO your_table (id, first_name, last_name)
VALUES (NULL, 'Marcia', 'Brady');
_ _ _ _ _ _ _ _ 
INSERT INTO your_table (id, first_name, last_name)
VALUES (1, 'Jan', 'Brady');
_ _ _ _ _ _ _ _DOES NOT WORK 

INSERT INTO your_table
VALUES (2, 'Bobby', 'Brady');

INSERT INTO your_table (first_name, last_name)
VALUES ('Cindy', 'Brady');

INSERT INTO your_table (id, first_name, last_name)
VALUES (99, 'Peter', 'Brady');
________________________________________________________________________________________________
4: Did all the Bradys make it? Sketch your table and its contents after
trying the INSERT statements

1	Marcia	Brady
2	Bobby	Brady
3	Cindy	Brady
4	Cindy	Brady
99	Peter	Brady
		