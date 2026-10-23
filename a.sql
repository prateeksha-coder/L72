
CREATE TABLE IF NOT EXISTS Restaurant (
  NAME TEXT,
  NEIGHBOURHOOD TEXT,
  CUISINE TEXT,
  REVIEW REAL,
  PRICE TEXT,
  HEALTH TEXT
);


INSERT INTO Restaurant  (NAME, NEIGHBOURHOOD, CUISINE, REVIEW, PRICE, HEALTH) VALUES
  ('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
  ('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
  ('Pocha', 'Midtown', 'Pizza', 4, '$$$', 'B'),
  ('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
  ('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
  ('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
  ('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
  ('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$$', 'A'),
  ('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

SELECT * FROM Restaurant ;


SELECT DISTINCT NEIGHBOURHOOD FROM Restaurant ;


SELECT DISTINCT CUISINE FROM Restaurant ;


SELECT * FROM Restaurant  WHERE CUISINE = 'Chinese';


SELECT * FROM Restaurant  WHERE REVIEW >= 4;

SELECT * FROM Restaurant  WHERE CUISINE = 'Italian' AND PRICE = '$$$';


SELECT * FROM Restaurant  WHERE NAME LIKE '%Candy%';


SELECT * FROM Restaurant  
WHERE NEIGHBOURHOOD IN ('Midtown', 'Downtown', 'Chinatown');


SELECT *
FROM Restaurant 
WHERE health = '' OR health IS NULL;



SELECT * FROM Restaurant  ORDER BY REVIEW DESC LIMIT 4;

