-- "GROUP BY summarizes or aggregates identical data into single rows"
SELECT title, author_lname FROM books;

SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;

-- grouped by last name creates conflicts when there are multiples
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname ORDER BY author_lname;

-- grouped by unique last name and first name to find the books to their respective authors
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname, author_fname ORDER BY author_lname;

SELECT released_year FROM books;

-- group books by the released year
SELECT released_year, COUNT(*) FROM books GROUP BY released_year ORDER BY COUNT(*) DESC;

-- Fancy query
SELECT CONCAT('IN ', released_year, ' ',COUNT(*), ' book(s) released') FROM books GROUP BY released_year;
