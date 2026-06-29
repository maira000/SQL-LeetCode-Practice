/* Write your T-SQL query statement below */
SELECT
user_id,
UPPER(LEFT(name,1)) + LOWER(substring(name,2,LEN(name))) AS name
FROM Users
ORDER BY user_id