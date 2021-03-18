USE gregs_list;

CREATE TABLE `movie_table` (
  `movie_id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `category` varchar(10) NOT NULL,
  `purchased` date NOT NULL,
  PRIMARY KEY  (`movie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('83','Big Advenure','G','family','2002-03-06');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('89','Shiny Things, The','PG','drama','2002-03-06');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('88','End of the Line','R','misc','2001-02-05');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('87','A Rat named Darcy','G','family','2003-04-19');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('86','Head First Rules','R','action','2003-04-19');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('85','Mad Clowns','R','horror','1999-11-20');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('84','Greg: The Untold Story','PG','action','2001-02-05');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('93','Potentially Habitable Planet','PG','scifi','2001-02-05');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('92','Weird Things from Space','PG','scifi','2003-04-19');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('91','Shark Bait','G','misc','1999-11-20');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('90','Take it Back','R','comedy','2001-02-05');

SELECT * FROM movie_table;

ALTER TABLE movie_table
ADD COLUMN drama Char(1) AFTER rating,
ADD COLUMN comedy Char(1) AFTER drama,
ADD COLUMN action Char(1) AFTER comedy,
ADD COLUMN gore Char(1) AFTER action,
ADD COLUMN scifi Char(1) AFTER gore,
ADD COLUMN for_kids Char(1) AFTER scifi,
ADD COLUMN cartoon Char(1) AFTER for_kids;

Update movie_table
SET Drama ='T' where category ='drama';

Update movie_table Set Drama ='F' WHERE category ='comedy' OR category ='Action'OR category ='gore'
 OR category ='scifi' OR category ='for_kids' OR category ='cartoon'  ;
 
 
 
 

CREATE TABLE movie_table_demo (
`movie_id` int(11) NOT NULL AUTO_INCREMENT,
`title` varchar(45) NOT NULL,
`rating` char(1) NOT NULL,
`drama` char(1) NOT NULL,
`comedy` char(1) NOT NULL,
`action` char(1) NOT NULL,
`gore` char(1) NOT NULL,
`scifi` char(1) NOT NULL,
`for_kids` char(1) NOT NULL,
`cartoon` char(1) NOT NULL,
`published` date NOT NULL,
PRIMARY KEY (`movie_id`)
) ;

INSERT INTO movie_table_demo
(movie_id,title,rating,drama,comedy,action,gore,scifi,for_kids,cartoon,published)
VALUES
(1,"Monsters Inc.",'G','N','Y','N','N','N','Y','Y','2002-06-03'),
(2,"The Godfather",'R','N','N','Y','Y','N','N','N','2001-02-05'),
(3,"Gone with the Wind",'G','Y','N','N','N','N','N','N','1999-11-20'),
(4,"American Pie",'R','N','Y','N','N','N','N','N','2003-04-19'),
(5,"Nightmare on Elm Street",'R','N','N','Y','Y','N','N','N','2003-04-19'),
(6,"Casablanca",'P','Y','N','N','N','N','N','N','2001-02-05');

ALter Table movie_table_demo
ADD column category VarChar(20)
after cartoon;

UPDATE movie_table_demo SET category = 'drama' where drama = 'Y';
UPDATE movie_table_demo SET category = 'comedy' where comedy = 'Y';
UPDATE movie_table_demo SET category = 'action' where action = 'Y';
UPDATE movie_table_demo SET category = 'horror' where gore = 'Y';
UPDATE movie_table_demo SET category = 'scifi' where scifi = 'Y';
UPDATE movie_table_demo SET category = 'family' where for_kids = 'Y';
UPDATE movie_table_demo SET category = 'family' where cartoon = 'Y' AND rating = 'G';
UPDATE movie_table_demo SET category = 'misc' where cartoon = 'Y' AND rating <> 'G';



DROP Table movie_table;

CREATE TABLE movie_table (
`movie_id` int(11) NOT NULL AUTO_INCREMENT,
`title` varchar(45) NOT NULL,
`rating` char(1) NOT NULL,
`drama` char(1) NOT NULL,
`comedy` char(1) NOT NULL,
`action` char(1) NOT NULL,
`gore` char(1) NOT NULL,
`scifi` char(1) NOT NULL,
`for_kids` char(1) NOT NULL,
`cartoon` char(1) NOT NULL,
`published` date NOT NULL,
PRIMARY KEY (`movie_id`)
) ;

INSERT INTO movie_table
(movie_id,title,rating,drama,comedy,action,gore,scifi,for_kids,cartoon,published)
VALUES
(1,"Monsters Inc.",'G','F','T','F','F','F','T','T','2002-06-03'),
(2,"The Godfather",'R','F','F','T','T','F','F','F','2001-02-05'),
(3,"Gone with the Wind",'G','T','F','F','F','F','F','F','1999-11-20'),
(4,"American Pie",'R','F','T','F','F','F','F','F','2003-04-19'),
(5,"Nightmare on Elm Street",'R','F','F','T','T','F','F','F','2003-04-19'),
(6,"Casablanca",'P','T','F','F','F','F','F','F','2001-02-05');

ALter Table movie_table
ADD column category VarChar(20)
after cartoon;




UPDATE movie_table
SET category =
CASE
WHEN drama = 'T' THEN 'drama'
WHEN comedy = 'T' THEN 'comedy'
WHEN action = 'T' THEN 'action'
WHEN gore = 'T' THEN 'horror'
WHEN scifi = 'T' THEN 'scifi'
WHEN for_kids = 'T' THEN 'family'
WHEN cartoon = 'T' AND rating ='G' THEN 'family'
ELSE 'misc'
END;

UPDATE movie_table
SET category = 
case 
	WHEN drama ='T' AND rating ='R' then 'drama-r'
    WHEN comedy ='T' AND rating ='R' then 'comedy-r'
    WHEN action ='T' AND rating ='R' then 'action-r'
    WHEN gore ='T' AND rating ='R' then 'horror-r'
    WHEN scifi ='T' AND rating ='R' then 'scifi-r'
    WHEN category ='misc' AND rating ='G' then 'family'
    end;

UPDATE movie_table
SET category =
CASE
WHEN category = ‘drama-r’ THEN ‘drama’
WHEN category = ‘comedy-r’ THEN ‘comedy’
WHEN category = ‘action-r’ THEN ‘action’
WHEN category = ‘horror-r’ THEN ‘horror’
WHEN category = ‘scifi-r’ THEN ‘scifi’
END;

ALTER TABLE movie_table
DROP COLUMN drama,
DROP COLUMN comedy,
DROP COLUMN action,
DROP COLUMN gore,
DROP COLUMN scifi,
DROP COLUMN for_kids,
DROP COLUMN cartoon;



SELECT title, category From movie_table WHERE title like 'A%'AND category = 'comedy'order by title;



SELECT title, category FROM movie_table WHERE title LIKE 'A%' AND category = 'family';
SELECT title, category FROM movie_table WHERE title LIKE 'B%' AND category = 'family';
SELECT title, category FROM movie_table WHERE title LIKE 'C%' AND category = 'family';
SELECT title, category FROM movie_table WHERE title LIKE 'D%' AND category = 'family';
SELECT title, category FROM movie_table WHERE title LIKE 'E%' AND category = 'family';
SELECT title, category FROM movie_table WHERE title LIKE 'F%' AND category = 'family';
SELECT title, category FROM movie_table WHERE title LIKE 'G%' AND category = 'family';











