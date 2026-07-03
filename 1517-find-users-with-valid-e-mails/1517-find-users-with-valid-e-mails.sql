SELECT
    user_id,
    name,
    mail
FROM Users
WHERE mail COLLATE Latin1_General_CS_AS
      LIKE '[A-Za-z]%@leetcode.com'
AND PATINDEX(
        '%[^A-Za-z0-9_.-]%',
        LEFT(mail, LEN(mail) - LEN('@leetcode.com'))
    ) = 0;