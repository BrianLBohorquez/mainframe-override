-- checking to see what's in and that it worked
SELECT * FROM forum_posts LIMIT 5;

-- using date from the clue, so searching April
SELECT date, author, title FROM forum_posts WHERE date >= '2048-04-01' AND date < '2048-05-01';
-- smart-money-44 has the legible post of "Get rich fast", probably that jabroni

-- Finding smart-money-44 in accounts
SELECT * FROM forum_accounts WHERE username = 'smart-money-44';
-- Brad Steele

-- Looking the same last name
SELECT * FROM forum_accounts WHERE last_name = 'Steele';
-- Ther's an Andrew and Kevin Steele

-- Checking which Steele works at EmptyStack
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';
-- Andrew and Lance, so it must be Andrew

-- Used triple-cart-38 and password456 to log in with node mainframe

-- searching for self-driving
SELECT * FROM emptystack_messages WHERE body ILIKE '%self-driving%';
-- nothing came up

-- Searching for the message about taxis
SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%';
-- It's from your-boss-99 and the project is TAXI

-- Getting the admin's password
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
-- The password is notagaincarter

-- Finding the ID for TAXI
SELECT * FROM emptystack_projects WHERE code = 'TAXI';
-- The ID is DczE0v2b. Uusing credentials to shut it down