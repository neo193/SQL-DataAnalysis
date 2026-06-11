/*
 Question: What skills are required for the top-paying data analyst jobs?
 - Use the top 10 highest-paying Data Analyst jobs from first query
 - Add the specific skills required for these roles
 - Identify the most in-demand skills for these top-paying Data Analyst positions.
 */
WITH top_paying_jobs AS (
    SELECT job_id,
        job_title,
        company_dim.name AS company_name,
        salary_year_avg
    FROM job_postings_fact
        LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE job_title_short = 'Data Analyst'
        AND job_location = 'Anywhere'
        AND salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)
SELECT s.skills,
    COUNT(*) as skill_demand
FROM top_paying_jobs t
    INNER JOIN skills_job_dim sj ON t.job_id = sj.job_id
    INNER JOIN skills_dim s ON sj.skill_id = s.skill_id
GROUP BY s.skills
ORDER BY skill_demand DESC
LIMIT 10;