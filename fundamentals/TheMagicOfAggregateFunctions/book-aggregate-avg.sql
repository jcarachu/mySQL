-- Calculate the average released year accross all books
SELECT AVG(released_year) FROM books;

-- Find average of pages
SELECT AVG(pages) FROM books;

-- Calculate the average stock quantity for books released in the same year
SELECT AVG(stock_quantity) FROM books GROUP BY released_year;

-- how many books were released that year and the average
SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;

SELECT author_fname, author_lname, AVG(pages) FROM books GROUP BY author_lname, author_fname;