-- Result Set 1: Names and the first letter of their occupation in parentheses
SELECT CONCAT(Name, '(', SUBSTRING(Occupation, 1, 1), ')') 
FROM OCCUPATIONS 
ORDER BY Name ASC;

-- Result Set 2: Total count of each occupation
SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS 
GROUP BY Occupation 
ORDER BY COUNT(Occupation) ASC, Occupation ASC;
