SELECT 
    first_seen AS date,
    COUNT(*) AS jobs_posted
FROM jobs
GROUP BY first_seen
ORDER BY first_seen ASC;