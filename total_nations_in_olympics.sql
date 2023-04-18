-- Finding the total no of nations who participated in each olympics game
-- using subqueries and an inner join to group by the games and regions columns
with all_nations as (
	SELECT
		games,
		region
	FROM
		olympics_history
	JOIN
		olympics_history_noc_region
	ON
		olympics_history_noc_region.noc = olympics_history.noc
	GROUP BY
		games, region 
)

SELECT 
	games, 
	count(1) as Total_nations
FROM
	all_nations
GROUP BY 
	games
ORDER BY
	games

