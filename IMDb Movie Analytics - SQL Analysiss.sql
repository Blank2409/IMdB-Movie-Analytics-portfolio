-- =====================================================
-- IMDb Movie Analytics - SQL Analysis
-- =====================================================

USE imdb_analytics;

-- Q1. How many movies are in the dataset?
SELECT COUNT(*) AS total_movies
FROM movies;

-- Q2. What is the average IMDb rating?
SELECT ROUND(AVG(rating), 2) AS average_rating
FROM movies;

-- Q3. What are the highest and lowest movie ratings?
SELECT
    MAX(rating) AS highest_rating,
    MIN(rating) AS lowest_rating
FROM movies;

-- Q4. What are the 10 highest-rated movies?
SELECT
    name,
    year,
    rating
FROM movies
ORDER BY rating DESC
LIMIT 10;

-- Q5. Find movies rated 8 or higher
SELECT name,rating FROM movies 
WHERE rating >=8
ORDER BY rating DESC;

-- Q6. How many movies were released each year?
SELECT year ,COUNT(*) AS movie_count
FROM movies
GROUP BY year
ORDER BY year

-- Q7. Which years had the most movie releases?
SELECT year,COUNT(*) AS movie_count
FROM movies
GROUP BY year 
ORDER BY movie_count DESC;

-- Q8. Which genres appear most frequently?
SELECT genre ,COUNT(*) AS movie_count
FROM movies
GROUP BY genre
ORDER BY movie_count DESC
LIMIT 10;

-- Q9. What is the average rating by genre combination?
SELECT genre ,COUNT(*) AS movie_count,
ROUND(AVG(rating),2)AS average_rating 
FROM movies
GROUP BY genre
HAVING COUNT(*)>=20
ORDER BY average_rating DESC
LIMIT 10;

-- Q10. What are the 10 highest-grossing movies?
SELECT name,year,gross_income FROM movies
WHERE gross_income IS NOT NULL
ORDER BY gross_income DESC
LIMIT 10;

-- Q11. Which years had the most movie releases?
SELECT year,COUNT(*) AS movie_count
FROM movies
GROUP BY year
ORDER BY movie_count DESC 
LIMIT 10;

-- Q12. Which directors have directed at least 5 movies and have the highest average rating?
SELECT directors_name,COUNT(*) AS movie_count,
ROUND(AVG(rating),2) AS average_rating
FROM movies
GROUP BY directors_name
HAVING COUNT(*)>=5
ORDER BY average_rating DESC
LIMIT 10;

-- Q13. Which genre combinations have the highest average rating?
SELECT genre,ROUND(AVG(rating),2) AS average_rating
FROM movies
GROUP BY genre
HAVING COUNT(*)>=20
ORDER BY average_rating DESC
LIMIT 10;
 
 -- Q14. Which genre combinations have the highest average gross income?
 SELECT genre,COUNT(*) AS movie_count,ROUND(AVG(gross_income),2) AS average_gross
 FROM movies
 WHERE genre IS NOT NULL
 AND gross_income IS NOT NULL
 GROUP BY genre
 HAVING COUNT(*)>=20
 ORDER BY average_gross DESC
 LIMIT 10;
 
 -- Q15. How does certifcate affect gross income?
 SELECT certificate,COUNT(*) AS movie_count,
 ROUND(AVG(gross_income),2) AS average_gross
 FROM movies
 WHERE certificate IS NOT NULL
 AND gross_income IS NOT NULL
 GROUP BY certificate
 ORDER BY average_gross DESC 
 LIMIT 10;
 
 -- Q16. What is the average movie duration by certificate?

SELECT certificate,COUNT(*) AS movie_count,
ROUND(AVG(duration), 2) AS average_duration
FROM movies
WHERE certificate IS NOT NULL
  AND duration IS NOT NULL
GROUP BY certificate
HAVING COUNT(*) >= 20
ORDER BY average_duration DESC;

-- Q17. Are movie ratings improving or declining over the years?
SELECT year,COUNT(*) AS movie_count,
ROUND(AVG(rating),2) AS average_rating
FROM movies
GROUP BY year
ORDER BY year

-- Q18. Which actor appears in the most movies?
WITH RECURSIVE actor_split AS (
    SELECT
        id,
        TRIM(SUBSTRING_INDEX(stars_name, ',', 1)) AS actor,
        CASE
            WHEN INSTR(stars_name, ',') > 0
            THEN SUBSTRING(stars_name, INSTR(stars_name, ',') + 1)
            ELSE ''
        END AS remaining
    FROM movies
    WHERE stars_name IS NOT NULL

    UNION ALL

    SELECT
        id,
        TRIM(SUBSTRING_INDEX(remaining, ',', 1)) AS actor,
        CASE
            WHEN INSTR(remaining, ',') > 0
            THEN SUBSTRING(remaining, INSTR(remaining, ',') + 1)
            ELSE ''
        END AS remaining
    FROM actor_split
    WHERE remaining <> ''
)

SELECT
    actor,
    COUNT(*) AS movie_count
FROM actor_split
WHERE actor <> ''
GROUP BY actor
ORDER BY movie_count DESC
LIMIT 10;

-- Q19. What is the correlation between votes and gross income?
SELECT
    ROUND(
        (
            COUNT(*) * SUM(votes * gross_income)
            - SUM(votes) * SUM(gross_income)
        )
        /
        SQRT(
            (
                COUNT(*) * SUM(votes * votes)
                - POW(SUM(votes), 2)
            )
            *
            (
                COUNT(*) * SUM(gross_income * gross_income)
                - POW(SUM(gross_income), 2)
            )
        ),
        3
    ) AS correlation
FROM movies
WHERE votes IS NOT NULL
  AND gross_income IS NOT NULL;


-- Q20. Which director has the highest hit rate?
-- Hit = IMDb rating > 7.5
SELECT directors_name, COUNT(*) AS total_movies,
    SUM(
        CASE
            WHEN rating > 7.5 THEN 1
            ELSE 0
        END
    ) AS hit_movies,

    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN rating > 7.5 THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS hit_rate

FROM movies

WHERE directors_name IS NOT NULL
  AND rating IS NOT NULL

GROUP BY directors_name

HAVING COUNT(*) >= 5

ORDER BY hit_rate DESC

LIMIT 10;

-- Q21. Which year generated the highest total gross income?
SELECT year,COUNT(*) AS movie_count,ROUND(SUM(gross_income),2)
AS total_gross
FROM movies
GROUP BY year
ORDER BY total_gross DESC
LIMIT 10;

-- Q22. Do movies with larger casts generate more gross income?
SELECT 
	LENGTH(stars_name)-LENGTH(REPLACE(stars_name,',',''))+1 AS actor_count,
COUNT(*) AS movie_count, ROUND(AVG(gross_income),2) AS average_gross
FROM movies
GROUP BY actor_count
ORDER BY actor_count DESC;

-- Q23. Does IMDb rating relate to gross income?
SELECT rating,COUNT(*) AS movie_count,ROUND(AVG(gross_income),2) AS average_gross
FROM movies
GROUP BY rating
HAVING COUNT(*) >= 20
ORDER BY rating DESC;

-- Q24. Which directors have both strong ratings and strong commercial performance?
SELECT directors_name, COUNT(*) AS movie_count,
ROUND(AVG(rating), 2) AS average_rating,
ROUND(AVG(gross_income), 2) AS average_gross_income
FROM movies
GROUP BY directors_name
HAVING COUNT(*) >= 5
AND AVG(rating) >= 7.5
ORDER BY average_gross_income DESC
LIMIT 10;

-- Q25. Which genre combinations have both above-average rating and above-average gross income?
SELECT genre,COUNT(*) AS movie_count,
ROUND(AVG(rating),2) AS average_rating,
ROUND(AVG(gross_income),2) AS average_gross_income
FROM movies
GROUP BY genre
HAVING COUNT(*)>=20
AND AVG(rating)>(SELECT AVG(rating)	FROM movies)
AND AVG(gross_income)>(SELECT AVG(gross_income) FROM movies)
ORDER BY average_gross_income DESC ;

-- Q26. What movies look most attractive for investment based on rating, audience engagement and revenue?
SELECT name,year,rating,votes,gross_income,
    (CASE
        WHEN rating >= 8 THEN 3
        WHEN rating >= 7 THEN 2
        WHEN rating >= 6 THEN 1
        ELSE 0
     END
     
     +
     
     CASE
        WHEN votes >= 100000 THEN 3
        WHEN votes >= 50000 THEN 2
        WHEN votes >= 10000 THEN 1
        ELSE 0
     END
     
     +
     
     CASE
        WHEN gross_income >= 100000000 THEN 3
        WHEN gross_income >= 50000000 THEN 2
        WHEN gross_income >= 10000000 THEN 1
        ELSE 0
     END) AS total_score

FROM movies

WHERE rating IS NOT NULL
  AND votes IS NOT NULL
  AND gross_income IS NOT NULL

ORDER BY total_score DESC
LIMIT 10;

