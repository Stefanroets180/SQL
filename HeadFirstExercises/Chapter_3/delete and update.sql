USE gregs_list;
CREATE TABLE `clown_info` (
 `name` varchar(50) default NULL,
 `last_seen` varchar(50) default NULL,
 `appearance` varchar(50) default NULL,
 `activities` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

Drop table Clown_info;

INSERT INTO clown_info VALUES ('Elsie', 'Cherry Hill Senior Center', 'F, red hair, green dress, huge feet', 'balloons, little car');
INSERT INTO clown_info VALUES ('Pickles', 'Jack Green\'s party', 'M, orange hair, blue suit, huge feet','mime');
INSERT INTO clown_info VALUES ('Snuggles' ,'Ball?Mart' ,'F, yellow shirt, baggy red pants', 'horn, umbrella');
INSERT INTO clown_info VALUES ('Mr. Hobo' ,'Party for Eric Gray' ,'M, cigar, black hair tiny hat violin','cycling');
INSERT INTO clown_info VALUES ('Clarabelle' ,'Belmont Senior Center' ,'F, pink hair, huge flower, blue dress', 'yelling, dancing');
INSERT INTO clown_info VALUES ('Scooter', 'Oakland Hospital' ,'M, blue hair, red suit, huge nose', 'balloons'); 
INSERT INTO clown_info VALUES ('Zippo' ,'Millstone Mall', 'F, orange suit, baggy pants', 'dancing'); 
INSERT INTO clown_info VALUES ('Babe', 'Earl’s Autos' ,'F, all pink and sparkly', 'balancing, little car');
INSERT INTO clown_info VALUES ('Bonzo' ,'','M, in drag, polka dotted dress', 'singing, dancing');
INSERT INTO clown_info VALUES ('Sniffles' ,'Tracy\'s', 'M, green and purple suit, pointy nose',''); 

SELECT * FROM clown_info;

INSERT INTO clown_info VALUES ('Bonzo' ,'Dickson Park','M, in drag, polka dotted dress', 'singing, dancing');
INSERT INTO clown_info VALUES ('Sniffles' ,'Tracy\'s', 'M, green and purple suit, pointy nose','');
INSERT INTO clown_info
VALUES
('Mr. Hobo', 'Party for Eric Gray', 'M, cigar, black hair
tiny hat', 'violin'); 

DELETE FROM clown_info
WHERE
activities = 'singing, dancing';

SET SQL_SAFE_UPDATES=0;

DELETE FROM clown_info
WHERE
activities = 'yelling, dancing'
AND name = 'Clarabelle';

use Drinks;
Insert Into Drink_info Values ('Kiss on the lips', 5.5, 42.5, 'purple', 'Y', 170);
DELETE FROM Drink_info WHere Calories =171;

SELECT * From Drink_info;

Update drink_info SET color ='gold'
WHERE color = 'yellow';

use Gregs_list;
UPDATE clown_info
SET last_seen = 'Tracy\'s'
WHERE name = 'Mr. Hobo'
AND last_seen = 'Dickson Park';

UPDATE clown_info
SET last_seen = 'Tracy\'s'
WHERE name = 'Mr. Hobo'
AND last_seen = 'Party for Eric Gray';

Select * From Clown_info;

Update Clown_info 
Set Appearance ='F, Yellow shirt, Blue Baggy pants'
Where Name = 'Snuggles';

update clown_info 
set last_seen ='Dickson Park'
Where name ='Bonzo';

update clown_info 
set activities ='climbing into tiny car'
where name ='sniffles';

update clown_info 
set last_seen ='Eric Gray\'s Party'
where name ='Mr. Hobo';

