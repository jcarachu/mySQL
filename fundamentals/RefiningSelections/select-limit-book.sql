-- Select only the first 3 books
SELECT title FROM books LIMIT 3;

-- Select the five most recent books
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

-- Same query above but allows to give a ranage
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0, 5;

-- Select to the end of the TABLE... from the mySQL docs
SELECT title FROM books LIMIT 5, 1234567890;