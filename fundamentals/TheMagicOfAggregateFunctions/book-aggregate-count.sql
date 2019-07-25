-- How many books are in the database?
SELECT COUNT(*) FROM books;

-- How many authors are in the database?
SELECT COUNT(author_fname) FROM books;

-- How many distinct author first name?
SELECT COUNT(DISTINCT author_fname) FROM books;

-- How many unique authors are in the database?
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;

-- How many titles contian "the"
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';