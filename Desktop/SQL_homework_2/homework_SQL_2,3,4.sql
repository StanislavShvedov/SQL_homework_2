-- task_2.1
SELECT track_name, duration FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

--task_2.2
SELECT track_name, duration FROM tracks
WHERE duration < 3.5 * 60;

--task_2.3
SELECT collection_name FROM collections
WHERE release_collection BETWEEN '2018-01-01' AND '2020-12-31';

--task_2.4
UPDATE executors 
SET executor_name = 'Полина Гагарина'
WHERE id_executor = 1;

UPDATE executors 
SET executor_name = 'Мари Крайнбери'
WHERE id_executor = 2;

SELECT executor_name FROM executors
WHERE executor_name NOT LIKE('% %');

--task_2.5
INSERT INTO tracks VALUES(7, 'Дорога в мой дом', 202, 1);
INSERT INTO tracks VALUES(8, 'My home', 212, 3);
UPDATE tracks 
SET track_name = 'my home'
WHERE track_name = 'My home';

SELECT track_name FROM tracks
WHERE track_name LIKE('%my%') OR track_name LIKE('%мой%');

--task_3.1
SELECT DISTINCT genre_name, COUNT(executor_name) FROM genresexecutors g 
JOIN genres ON genres.id_genre = g.id_genre 
JOIN executors e ON g.id_executor = e.id_executor
GROUP BY genre_name;


--task_3.2
SELECT COUNT(track_name) FROM tracks t 
JOIN albums a ON t.id_album = a.id_album 
WHERE a.release_album BETWEEN '2019-01-01' AND '2020-12-31';

--task_3.3
SELECT aulbum_name, AVG(t.duration) FROM tracks t 
JOIN albums a ON t.id_album = a.id_album 
GROUP BY a.aulbum_name;

--task_3.4
SELECT executor_name FROM executorsalbums e 
JOIN executors e1 ON e1.id_executor = e.id_executor 
JOIN albums a ON e.id_album = a.id_album 
WHERE a.release_album NOT BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY executor_name;

--task_3.5
SELECT c2.collection_name FROM collectionstracks c 
JOIN collections c2 ON c.id_collections = c2.id_collections 
JOIN tracks t ON c.id_track = t.id_track 
JOIN albums a ON t.id_track = a.id_album
JOIN executorsalbums e ON a.id_album = e.id_album 
JOIN executors e2 ON e.id_executor = e2.id_executor
WHERE e2.executor_name IN ('Марсель')
GROUP BY c2.collection_name;

--task_4.1
SELECT a.aulbum_name FROM albums a 
JOIN executorsalbums e ON a.id_album = e.id_album 
JOIN executors e2 on e.id_executor = e2.id_executor 
JOIN genresexecutors g ON e2.id_executor = g.id_executor 
GROUP BY a.aulbum_name
HAVING COUNT(g.id_executor) > 1;

--task_4.2
SELECT track_name FROM tracks t
LEFT JOIN collectionstracks c ON t.id_track = c.id_track 
WHERE c.id_collections is null

--task_4.3
SELECT e2.executor_name, t.duration FROM tracks t 
JOIN albums a ON a.id_album = t.id_album 
JOIN executorsalbums e ON a.id_album = e.id_album 
JOIN executors e2 ON e.id_executor = e2.id_executor
WHERE t.duration = (SELECT MIN(t2.duration) FROM tracks t2)

--task_4.4
SELECT a.aulbum_name , COUNT(t.id_track) AS track_count
FROM albums a
JOIN tracks t ON a.id_album = t.id_album 
GROUP BY a.aulbum_name 
HAVING COUNT(t.id_track) = (
    SELECT MIN(track_count)
    FROM (
        SELECT COUNT(t2.id_track) AS track_count
        FROM albums a2
        JOIN tracks t2 ON a2.id_album = t2.id_album
        GROUP BY a2.aulbum_name
    ) AS album_counts
);