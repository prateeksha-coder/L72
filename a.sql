-- Create the nomnom table if it does not exist
CREATE TABLE IF NOT EXISTS Restaurant (
  NAME TEXT,
  NEIGHBOURHOOD TEXT,
  CUISINE TEXT,
  REVIEW REAL,
  PRICE TEXT,
  HEALTH TEXT
);

-- Insert sample data into the nomnom table
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

-- Select all records from the nomnom table
SELECT * FROM Restaurant ;

-- Select distinct neighborhoods from the nomnom table
SELECT DISTINCT NEIGHBOURHOOD FROM Restaurant ;

-- Select distinct cuisines from the nomnom table
SELECT DISTINCT CUISINE FROM Restaurant ;

-- Select all records with Chinese cuisine
SELECT * FROM Restaurant  WHERE CUISINE = 'Chinese';

-- Select all records with a review rating of 4 or higher
SELECT * FROM Restaurant  WHERE REVIEW >= 4;

-- Select all records with Italian cuisine and $$$ price
SELECT * FROM Restaurant  WHERE CUISINE = 'Italian' AND PRICE = '$$$';

-- Select all records where the name contains 'Candy'
SELECT * FROM Restaurant  WHERE NAME LIKE '%Candy%';

-- Select all records where the neighborhood is Midtown, Downtown, or Chinatown
SELECT * FROM Restaurant  
WHERE NEIGHBOURHOOD IN ('Midtown', 'Downtown', 'Chinatown');

-- 9) Health grade pending (empty value)
SELECT *
FROM Restaurant 
WHERE health = '' OR health IS NULL;


-- Select the top 4 records ordered by review rating in descending order
SELECT * FROM Restaurant  ORDER BY REVIEW DESC LIMIT 4;

