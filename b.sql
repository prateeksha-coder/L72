CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title TEXT,
    Author TEXT,
    Genre TEXT,
    Price REAL,
    PublishedYear INT,
    Stock INT
);

INSERT INTO Books VALUES
(101, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 550, 1937, 15),
(102, 'Atomic Habits', 'James Clear', 'Self Help', 450, 2018, 20),
(103, 'The Alchemist', 'Paulo Coelho', 'Fiction', 350, 1988, 10),
(104, 'Deep Work', 'Cal Newport', 'Productivity', 600, 2016, 8),
(105, 'Harry Potter', 'J.K. Rowling', 'Fantasy', 700, 1997, 25),
(106, 'Think Like a Monk', 'Jay Shetty', 'Self Help', 500, 2020, 18),
(107, 'Dune', 'Frank Herbert', 'Science Fiction', 650, 1965, 12),
(108, '1984', 'George Orwell', 'Fiction', 400, 1949, 14);


SELECT *
FROM Books
WHERE Price > 500
AND Stock > 10;

SELECT *
FROM Books
WHERE Genre = 'Fantasy'
OR Genre = 'Fiction';

SELECT *
FROM Books
WHERE NOT Genre = 'Fantasy';

SELECT *
FROM Books
WHERE Price BETWEEN 400 AND 600;

SELECT *
FROM Books
WHERE Title LIKE '%k';

SELECT *
FROM Books
WHERE Title LIKE '%Work%';

SELECT *
FROM Books
WHERE Author LIKE '_a%';

SELECT *
FROM Books
WHERE Title LIKE '____';

SELECT SUM(Stock) AS TotalStock
FROM Books;

SELECT Genre,
COUNT(*) AS NumberOfBooks
FROM Books
GROUP BY Genre;


SELECT Genre,
AVG(Price) AS AveragePrice
FROM Books
GROUP BY Genre;

SELECT Genre,
COUNT(*) AS TotalBooks
FROM Books
GROUP BY Genre
HAVING COUNT(*) > 1;