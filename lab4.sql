--Q4.1
/* no, because we still have VA records in other tables */


--Q4.2
/*no, because no state has fips of  80 */


--Q4.3
/*yes it works, but can be improved */

--Q4.5
/*yes, great job*/

--Q4.6
-- Step 1: Find the most recent year
WITH recent_year AS (
    SELECT MAX(year) AS max_year
    FROM income
)

-- Step 2: Find the state with the highest income in the most recent year
SELECT n.name, i.income, i.year
FROM income i
JOIN name n ON i.fips = n.fips
JOIN recent_year ry ON i.year = ry.max_year
ORDER BY i.income DESC
LIMIT 1;
/* yes it works*/

--Q4.7
/* it doesn't work*/

--Q4.8
/* no, it wasn't accurate all the time */
