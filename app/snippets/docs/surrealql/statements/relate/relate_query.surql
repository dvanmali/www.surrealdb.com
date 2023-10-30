-- Who wrote the articles?
SELECT in FROM wrote;

SELECT ->wrote.in FROM person;
SELECT ->wrote<-person FROM person;

SELECT <-wrote.in FROM article;
SELECT <-wrote<-person FROM article;

-- Which articles did the person write?
SELECT out FROM wrote;

SELECT ->wrote.out FROM person;
SELECT ->wrote->article FROM person;

SELECT <-wrote.out FROM article;
SELECT <-wrote->article FROM article;

-- When was the article written?
SELECT time.written AS time_written FROM wrote;
SELECT ->wrote.time.written AS time_written FROM person;
SELECT <-wrote.time.written AS time_written FROM article;