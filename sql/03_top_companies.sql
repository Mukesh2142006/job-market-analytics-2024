SELECT 
    company,
    COUNT(*) AS job_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM jobs), 2) AS percentage
FROM jobs
GROUP BY company
ORDER BY job_count DESC
LIMIT 10;