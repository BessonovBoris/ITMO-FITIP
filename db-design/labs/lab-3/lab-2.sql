-- ПРЕДСТАВЛЕНИЕ
CREATE VIEW view1 AS
SELECT
    gym.id as "GYM ID",
    gym.city,
    workers.name,
    workers.salary
FROM gym INNER JOIN workers
ON gym.id = workers.gym_id

SELECT * FROM view1

-- ИНДЕКС
CREATE INDEX subway_index ON gym (city, subway_near)

CREATE INDEX comment_index on comments (gym_id, date)

EXPLAIN (ANALYSE) SELECT * FROM gym
WHERE gym.city = 'санкт-петербург' and gym.subway_near = 'лесная'

EXPLAIN (ANALYSE) SELECT * FROM comments
WHERE gym_id = 1 and comments."date" >= '2023-02-01'