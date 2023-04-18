-- (2) listing down olympics games held as per the dataset
SELECT DISTINCT
	year, 
	games,
	season,
	city
FROM 
	olympics_history
ORDER BY
	year