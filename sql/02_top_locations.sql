SELECT 
    job_location,
    COUNT(*) AS job_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM jobs), 2) AS percentage
FROM jobs
WHERE job_location != 'Unknown'
GROUP BY job_location
ORDER BY job_count DESC
LIMIT 10;