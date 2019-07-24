-- SELECT author lastname sorted by author last name
-- Ascending by default
SELECT author_lname FROM books ORDER BY author_lname;

SELECT author_lname FROM books ORDER BY author_lname DESC;

SELECT released_year FROM books ORDER BY released_year ASC;

SELECT title, pages FROM books ORDER by released_year;

-- SELECT and sort by first name, and then last name

SELECT DISTINCT title, author_fname, author_lname FROM books ORDER BY 2;

SELECT DISTINCT title, author_fname, author_lname FROM books ORDER BY 3;

-- SELECT and sort by lastname and then firstname
SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;