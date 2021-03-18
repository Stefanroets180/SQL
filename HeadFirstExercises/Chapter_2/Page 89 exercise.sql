SELECT Cost FROM drink_info
Where ice = 'Y' AND color = 'Yellow' AND Calories >33;

SELECT drink_Name, Color From drink_info
WHERE ice ='Y' AND Carbs <4;

select Cost From drink_info
Where calories >= 80;

Select drink_name, Ice, Color From drink_info
Where Cost > 3.8;

select Drink_name From drink_info
where calories BETWEEN 30 AND 60 ;

SELECT Drink_name From Drink_info
Where Drink_name between 'G' And 'P';

INSERT INTO drink_info VALUES ('orange lemon', 4.35, NULL, 'clear', 'Y', NULL); 

CREATE TABLE `black_book` (
  `date_name` varchar(20) default NULL,
   `rating` varchar(20) default NULL
)ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO black_book
VALUES ('Alex','innovate'),
('James','boring'),
('Ian','fabulous'),
('Boris','ho hum'),
('Melvin','plebian'),
('Eric','pathetic'),
('Anthony','delightful'),
('Sammy','pertty good'),
('Ivan','dismal'),
('Vic','ridiculous');



