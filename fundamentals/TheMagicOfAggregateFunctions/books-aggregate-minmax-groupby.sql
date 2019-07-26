-- Find the year each author published their first books
SELECT MIN(released_year) FROM books;

-- Find the year each author published their first book
SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname, author_fname;

-- does not group by unique author
SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname;

-- Find the longest page count for each author
SELECT author_fname, author_lname, Max(pages) FROM books GROUP BY author_fname, author_lname;

-- fancy output :)
SELECT CONCAT(author_fname, ' ', author_lname) AS author, MAX(pages) as 'longest book' FROM books GROUP BY author_lname, author_fname ORDER BY author_lname ASC ;