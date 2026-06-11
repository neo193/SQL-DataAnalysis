/*
 Question: What are the top paying Data Analyst Jobs?
 - Identify the top 10 highest paying Data Analyst roles that are available remotely.
 - Focus on jobs that have a specified salary (Remove nulls).
 */
SELECT job_id,
    job_title,
    company_dim.name AS company_name,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short = 'Data Analyst'
    AND job_location = 'Anywhere'
    AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10