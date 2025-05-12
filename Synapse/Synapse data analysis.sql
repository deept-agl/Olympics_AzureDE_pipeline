--count the number of athletes from each country

SELECT NOC AS COUNTRY,COUNT(*) AS TotalAthletes
from Athletes
GROUP BY NOC
ORDER BY TotalAthletes DESC;

--calculate the total number of medals won by each country
SELECT
Team,
SUM(Gold) as Total_Gold,
SUM(Silver) as Total_Silver,
SUM(Bronze) as Total_Bronze
FROM Medals
Group by Team
order by Total_Gold desc;

--calculate the average numbeR of entries based on gender for each discipline
SELECT Discipline,
AVG(Female) as AVG_Female,
AVG(Male) as AVG_Male
FROM EntriesGender
GROUP BY Discipline;