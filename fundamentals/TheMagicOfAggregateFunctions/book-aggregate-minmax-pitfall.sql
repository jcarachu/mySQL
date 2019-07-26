-- Find maximum pages with title
SELECT MAX(pages), title FROM books;

-- Solution, use subqueries
SELECT * FROM books WHERE pages = 634;

SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);

SELECT title, pages FROM books WHERE pages=(SELECT  MIN(pages) FROM books);

-- Faster Solution: use order BY
SELECT title, pages FROM books ORDER BY pages ASC LIMIT 1;

-- Faster Solution: use order BY
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;