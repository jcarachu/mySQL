-- SELECT all authors lastname
SELECT author_lname FROM books;

-- SELECT all unique authors lastname
SELECT DISTINCT author_lname FROM books;

-- SELECT distinct authors fullname
SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;

SELECT DISTINCT author_fname, author_lname FROM books;