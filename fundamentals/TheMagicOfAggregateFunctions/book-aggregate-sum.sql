-- Sum of all pages from books
SELECT SUM(pages) FROM books;

-- Sum all released years
SELECT SUM(released_year) FROM books;

-- Sum all pages each author has written
SELECT author_fname, author_lname, SUM(pages) FROM books GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, SUM(pages), SUM(released_year) FROM books GROUP BY author_fname, author_lname; 