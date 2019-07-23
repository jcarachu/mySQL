# mySQL CHALLENGE 115
-- Reverse and Uppercase the following sentence
-- STRING: " Why does my cat look at me with such hatred?"

SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

-- What does this display?
SELECT REPLACE (CONCAT('I', ' ', 'like', ' ', 'cats'), ' ', '-'); 

-- Replace spaces in titles with '->'
SELECT REPLACE(title, ' ', '->') FROM books;

-- Print out last name, and lastname reversed
SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;

-- Print a full name all in caps
SELECT UPPER(CONCAT(author_fname,' ',author_lname)) AS 'full name in caps' FROM books;

-- Print title and when it was released
SELECT CONCAT(title, 'was released in ', released_year) AS 'blurb' FROM books;

-- Print book titles and the length of each title
SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

-- Last one!
SELECT CONCAT(SUBSTRING(title, 1, 10),'...') AS 'short title', CONCAT(author_lname,',',author_fname) AS 'author', CONCAT(stock_quantity, ' in stock') AS 'quantity' FROM books;

