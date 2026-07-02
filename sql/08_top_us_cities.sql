SELECT 
    TRIM(SUBSTR(job_location, 1, INSTR(job_location, ',') - 1)) AS city,
    COUNT(*) AS job_count
FROM jobs
WHERE country = 'United States'
    AND job_location LIKE '%,%'
GROUP BY city
ORDER BY job_count DESC
LIMIT 10;