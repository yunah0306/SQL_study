문제링크: <https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true>
# sol_1
SELECT hackers.hacker_id,
       hackers.name,
       COUNT(*) AS challenges_created
FROM Challenges
     INNER JOIN hackerss ON hackers.hacker_id = Challenges.hacker_id
GROUP BY hackers.hacker_id, hackers.name
HAVING challenges_created = (SELECT MAX(challenges_created)
                             FROM(SELECT hacker_id,
                                         COUNT(*) AS challenges_created
                                  FROM Challenges
                                  GROUP BY hacker_id) AS sub)
        OR
        challenges_created IN (SELECT challenges_created
                              FROM(SELECT hacker_id,
                                          COUNT(*) AS challenges_created
                                   FROM Challenges
                                   GROUP BY hacker_id) AS sub
                              GROUP BY challenges_created
                              HAVING COUNT(*) = 1)
ORDER BY challenges_created DESC, hackers.hacker_id

# sol_2 (COUNT(*) AS challenges_created를 줄이기 위함)
  
WITH counter AS(SELECT hackers.hacker_id,
                       hackers.name,
                       COUNT(*) AS challenges_created
                FROM Challenges
                     INNER JOIN hackers ON Challenges.hacker_id = hackers.hacker_id
                GROUP BY hackers.hacker_id,hackers.name)

SELECT counter.hacker_id,
       counter.name,
       counter.challenges_created
FROM counter
WHERE challenges_created = (SELECT MAX(challenges_created) FROM counter)
OR challenges_created IN (SELECT challenges_created
                          FROM counter
                          GROUP BY challenges_created
                          HAVING COUNT(*) = 1)
ORDER BY counter.challenges_created DESC, counter.hacker_id
