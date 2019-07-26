-- Print the number of books in the DATABASE
SELECT COUNT(*) FROM books;

-- Print out how many books were released in each year
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- Print out the total number of books in stock
SELECT SUM(stock_quantity) FROM books;

-- Find the average release year for each author
SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_fname, author_lname;

-- Find the full name of the author who wrote the longest book
-- Solution 1
SELECT MAX(pages) FROM books;
SELECT CONCAT(author_fname, ' ', author_lname), pages FROM books WHERE pages=634;

-- Solution 2
SELECT CONCAT(author_fname, ' ', author_lname) FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- Solution 3
SELECT CONCAT(author_fname, ' ', author_lname) FROM books ORDER BY pages DESC LIMIT 1;

-- Make this happen
SELECT released_year AS year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year;