-- Find the minimum released year
SELECT MIN(released_year) FROM books;

-- FInd the minimum pages
SELECT MIN(pages) FROM books;

-- Find the maximum pages
SELECT MAX(pages) from books;

-- Find the maximum released year
SELECT MAX(release_year) FROM books;

SELECT MAX(pages), title FROM books;

SELECT title, pages FROM books;