-- Exercise 1 (done for you):
SELECT * FROM users;

-- Exercise 2 (done for you):
SELECT id, first_name, last_name
FROM users;

-- Exercise 3
SELECT id, first_name, last_name
FROM users
ORDER BY last_name;

-- Exercise 4
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26;

-- Exercise 5
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26 OR user_id = 12;

-- Exercise 6
SELECT count(*)
FROM posts;

-- Exercise 7
SELECT user_id, count(*) count
FROM comments
GROUP BY user_id
ORDER BY count DESC;

-- Exercise 8
SELECT p.id, p.image_url, p.user_id, u.username, u.first_name, u.last_name
FROM users u JOIN posts p
ON u.id = p.user_id
WHERE u.id = 26 OR u.id = 12;

-- Exercise 9
SELECT p.id, p.pub_date, f.following_id
FROM posts p JOIN following f
ON p.user_id = f.following_id
WHERE f.user_id = 26;

-- Exercise 10




-- Exercise 11
BEGIN;
INSERT INTO bookmarks(user_id, post_id, timestamp)
VALUES (26, 219, now());

INSERT INTO bookmarks(user_id, post_id, timestamp)
VALUES (26, 220, now());

INSERT INTO bookmarks(user_id, post_id, timestamp)
VALUES (26, 221, now());
COMMIT;

-- Exercise 12
BEGIN;
DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 219;

DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 220;

DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 221;
COMMIT;

-- Exercise 13
BEGIN;
UPDATE users
SET email = 'knick2022@gmail.com'
WHERE id = 26;
COMMIT;

-- Exercise 14
