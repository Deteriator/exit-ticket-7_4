CREATE TABLE players(
id SERIAL,
last_name text,
first_name text,
position text,
jersey_number integer,
weight_lb integer,
height_in integer,
date_of_birth date,
);

INSERT INTO players VALUES(1 , "Fisher" , "Derek" , "QB" , 2 , 210 , 74 , "January 2, 1999");
INSERT INTO players VALUES(2, "Cunningham", "Reginald", DE, 55 ,240 , 75 , "April 3, 1998");
INSERT INTO players VALUES(3, "Jackson", "Stephen",WR, 13 ,184 , 76 , "October 13, 1998");
INSERT INTO players VALUES(4, "Colton" , "Ryan", K, 81, 238 , 74 , "December 12, 1998");
INSERT INTO players VALUES(5, "Wright" , "Alexander", RB, 23 , 190 , 70 , "March 13, 1999");
INSERT INTO players VALUES(6, "Smalls" , "Elliot", OLB, 33 ,215 ,69 ,"February 23, 1999");


ALTER TABLE players
ALTER COLUMN last_name SET DATA TYPE VARCHAR(30),
ALTER COLUMN first_name SET DATA TYPE VARCHAR(30),
ALTER COLUMN position SET DATA TYPE VARCHAR(3),
ALTER COLUMN position ADD CONSTRAINT NOT NULL DEFAULT 'ATH',
ALTER COLUMN jersey_number SET DATA TYPE CHECK(jersey_number > 1 < 100),
ALTER COLUMN jersey_number ADD CONSTRAINT NOT NULL;

     

INSERT INTO players VALUES(6, "Jamison", "Zion", "ATH",12, 285,80 , "October 25, 2000");
INSERT INTO players VALUES(7, "Johnson" ,"Craig" , "P",17 ,173 ,72 ,"November 25, 1999");