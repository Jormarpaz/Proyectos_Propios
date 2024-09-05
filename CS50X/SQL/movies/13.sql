WITH KevinBaconMovies AS (
    SELECT movie_id
    FROM stars
    JOIN people ON stars.person_id = people.id
    WHERE people.name = 'Kevin Bacon' AND people.birth = 1958
)
SELECT DISTINCT people.name
FROM stars
JOIN people ON stars.person_id = people.id
WHERE stars.movie_id IN (SELECT movie_id FROM KevinBaconMovies)
  AND people.name != 'Kevin Bacon';
