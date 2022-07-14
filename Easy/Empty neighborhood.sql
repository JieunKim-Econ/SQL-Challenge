-- Question
-- We’re given two tables, a users table with demographic information,  
-- and the neighborhood they live in and a neighborhoods table.

-- Write a query that returns all neighborhoods that have 0 users. 

-- Solution
    SELECT n.name AS name
    FROM neighborhoods AS n
    LEFT JOIN users AS u
        ON u.neighborhood_id = n.id
    WHERE u.id IS NULL;