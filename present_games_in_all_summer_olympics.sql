-- identifying the sport that was played in all summer olympics
--1 finding the total number of summer  olympic games.
--2 find for each sport, how many games were played
--3 compare 1 and 2


--1 finding the total number of summer  olympic games.
with t1 as 
	(SELECT count( DISTINCT
				  games) as total_summer_games
	 FROM
	 	Olympics_History
	 WHERE
	 	season = 'Summer'
	),
	
--2 find for each sport, how many games were played	
t2 as
	(SELECT DISTINCT
	 	sport,
	 	games
	FROM
	 	Olympics_History
	 WHERE
	 	season = 'Summer'
	ORDER BY
		games),
t3 as
	(SELECT 
	 	sport,
	 	COUNT(games) as no_of_games
	 FROM 
	 	t2
	 GROUP BY 
	 	sport)
--3 compare 1 and 2 Using Inner Join
SELECT 
	*
FROM
	t3
JOIN t1 on t1.total_summer_games = t3.no_of_games;
