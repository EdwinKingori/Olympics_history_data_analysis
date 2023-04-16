Drop TABLE IF EXISTS Olympics_History;
CREATE TABLE IF NOT EXISTS Olympics_History(
	id INT,
	name VARCHAR,
	sex VARCHAR,
	age VARCHAR,
	height VARCHAR,
	weight VARCHAR,
	team VARCHAR,
	noc VARCHAR,
	games VARCHAR,
	year INT,
	season VARCHAR,
	city VARCHAR,
	sport VARCHAR,
	event VARCHAR,
	medal VARCHAR
);

Drop TABLE IF EXISTS Olympics_History_Noc_Region;
CREATE TABLE IF NOT EXISTS Olympics_History_Noc_Region (
	noc VARCHAR,
	region VARCHAR,
	notes VARCHAR
);