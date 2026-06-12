# 📊 Job Market SQL Analysis

## Introduction

This project explores a real-world job postings dataset using SQL to uncover meaningful insights about the current job market landscape. The goal is not just to query data, but to answer practical questions that job seekers, career switchers, and hiring professionals genuinely care about — such as which roles command the highest salaries, what skills are most valued by top-paying employers, and where the most opportunities are concentrated.

Each SQL file in this project focuses on one specific analytical question, progressing from broad market-level observations to more targeted, skill-focused insights. The queries demonstrate a range of SQL techniques including aggregations, joins, subqueries, CTEs, and window functions.

### 🎯 Project Objectives

- Identify the highest paying job roles in the dataset
- Determine which skills are most frequently demanded by top-paying employers
- Understand skill demand trends across the broader job market
- Uncover which skills are associated with higher average salaries
- Find the most strategically valuable skills to learn — balancing demand and pay

### 🛠️ Tools Used

- **SQL** — core analysis language
- **PostgreSQL** — database engine
- **Git & GitHub** — version control and project showcase

### 📁 Project Structure

```
📂 sql-job-market-analysis
│
├── 📄 1_topPayingJobs.sql
├── 📄 2_topPayingJobSkills.sql
├── 📄 3_topDemandedSkills.sql
├── 📄 4_topPayingSkills.sql
├── 📄 5_optimalSkills.sql
│
└── 📄 README.md
```

### 📂 Dataset

The dataset used in this project contains real job postings with fields including job title, company, location, salary range, required skills, job schedule type, and posting date. It covers a wide range of roles across the data and technology space.

---

## 🔍 Analysis & Key Insights

---

### Query 1 — Top Paying Remote Data Analyst Jobs

**Question:** What are the top 10 highest paying Data Analyst roles available remotely, excluding records with no salary information?

**Output:**

| Job Title                                       | Company             | Schedule  | Avg Yearly Salary (USD) | Posted Date |
| ----------------------------------------------- | ------------------- | --------- | ----------------------- | ----------- |
| Data Analyst                                    | Mantys              | Full-time | $650,000                | Feb 2023    |
| Director of Analytics                           | Meta                | Full-time | $336,500                | Aug 2023    |
| Associate Director - Data Insights              | AT&T                | Full-time | $255,829                | Jun 2023    |
| Data Analyst, Marketing                         | Pinterest           | Full-time | $232,423                | Dec 2023    |
| Data Analyst (Hybrid/Remote)                    | UCLA Health Careers | Full-time | $217,000                | Jan 2023    |
| Principal Data Analyst (Remote)                 | SmartAsset          | Full-time | $205,000                | Aug 2023    |
| Director, Data Analyst - HYBRID                 | Inclusively         | Full-time | $189,309                | Dec 2023    |
| Principal Data Analyst, AV Performance Analysis | Motional            | Full-time | $189,000                | Jan 2023    |
| Principal Data Analyst                          | SmartAsset          | Full-time | $186,000                | Jul 2023    |
| ERM Data Analyst                                | Get It Recruit - IT | Full-time | $184,000                | Jun 2023    |

**Key Insights:**

- **Anomalies Exist:** The top listing (Mantys at \$650,000) is a clear statistical outlier; removing it reveals a realistic top-tier remote salary ceiling between \$184,000 and \$255,000.
- **Seniority Drives Pay:** Leadership and advanced roles dominate the highest-paying slots (e.g., Director, Principal), proving that career advancement and experience are key drivers of top compensation.
- **Specialization is Rewarded:** Roles requiring domain-specific knowledge (such as Marketing Analytics or Risk Management) command a significant premium over generalist analytics roles.

---

### Query 2 — Top Skills Required for Top Paying Data Analyst Jobs

**Question:** What specific skills are required by the top 10 highest-paying remote Data Analyst roles, and which of those skills appear most frequently?

**Output:**

| Skill     | Demand Count (out of 10 jobs) |
| --------- | ----------------------------- |
| SQL       | 8                             |
| Python    | 7                             |
| Tableau   | 6                             |
| R         | 4                             |
| Snowflake | 3                             |
| Pandas    | 3                             |
| Excel     | 3                             |
| Atlassian | 2                             |
| Azure     | 2                             |
| Jira      | 2                             |

**Key Insights:**

- **The Core Tech Stack:** SQL (8/10) and Python (7/10) are nearly universal expectations at this compensation level, signaling that top employers expect proficiency in both.
- **Tableau Leads Visualization:** Tableau appears 6 times out of 10, establishing itself as the preferred data visualization tool over Power BI among high-paying employers.
- **Cloud Infrastructure Baseline:** Regular appearances of Snowflake and Azure indicate that senior analysts must know how to navigate modern cloud data warehouses.

---

### Query 3 — Most In-Demand Skills Across All Data Analyst Job Postings

**Question:** What are the top 10 most in-demand skills for data analysts across all job postings, regardless of salary or remote status?

**Output:**

| Skill      | Demand Count |
| ---------- | ------------ |
| SQL        | 92,628       |
| Excel      | 67,031       |
| Python     | 57,326       |
| Tableau    | 46,554       |
| Power BI   | 39,468       |
| R          | 30,075       |
| SAS        | 28,068       |
| PowerPoint | 13,848       |
| Word       | 13,591       |
| SAP        | 11,297       |

**Key Insights:**

- **SQL is Undisputed:** With over 92,000 mentions (38% more than runner-up Excel), SQL is the single most vital skill for an analyst across all salary bands and locations.
- **The Market/Salary Split:** Excel dominates volume in the broader market, but Python rules the upper-income bracket. Freshers should focus on Excel for maximum entry-level opportunities, and Python for long-term salary growth.
- **Soft Skills Matter:** The presence of PowerPoint and Word in the top 10 confirms that employers value communication and the ability to present findings as highly as technical execution.

---

### Query 4 — Top Skills Based on Average Salary

**Question:** What are the top 25 skills associated with the highest average salaries for Data Analyst positions, across all locations with specified salaries?

**Output:**

| Skill        | Avg. Yearly Salary (USD) |
| ------------ | ------------------------ |
| SVN          | $400,000                 |
| Solidity     | $179,000                 |
| Couchbase    | $160,515                 |
| DataRobot    | $155,486                 |
| Golang       | $155,000                 |
| MXNet        | $149,000                 |
| dplyr        | $147,633                 |
| VMware       | $147,500                 |
| Terraform    | $146,734                 |
| Twilio       | $138,500                 |
| GitLab       | $134,126                 |
| Kafka        | $129,999                 |
| Puppet       | $129,820                 |
| Keras        | $127,013                 |
| PyTorch      | $125,226                 |
| Perl         | $124,686                 |
| Ansible      | $124,370                 |
| Hugging Face | $123,950                 |
| TensorFlow   | $120,647                 |
| Cassandra    | $118,407                 |
| Notion       | $118,092                 |
| Atlassian    | $117,966                 |
| Bitbucket    | $116,712                 |
| Airflow      | $116,387                 |
| Scala        | $115,480                 |

**Key Insights:**

- **Outlier Alert:** SVN's top rank at \$400,000 is heavily skewed by a single job listing and does not accurately reflect standard market value for the skill.
- **Niche vs. Foundational Trade-off:** High-demand staples like SQL and Excel are missing here. Niche, specialized skills command higher salaries but offer vastly fewer total job openings.
- **AI/ML Convergence:** High clusters of machine learning frameworks (PyTorch, TensorFlow, Keras) between \$120K–\$149K prove that analysts who bridge the gap into Data Science command premium pay.

---

### Query 5 — Most Optimal Skills to Learn

**Question:** What are the most strategically valuable skills to learn, balancing high market demand with optimal salary returns?

**Output:**

| Skill ID | Skill    | Demand Count | Avg. Yearly Salary (USD) |
| -------- | -------- | ------------ | ------------------------ |
| 1        | Python   | 236          | $101,397                 |
| 5        | R        | 148          | $100,499                 |
| 182      | Tableau  | 230          | $99,288                  |
| 183      | Power BI | 110          | $97,431                  |
| 0        | SQL      | 398          | $97,237                  |

**Key Insights:**

- **SQL is the Ultimate Anchor:** SQL holds the highest market demand by a landslide with 398 job postings, while still maintaining an impressive average salary of \$97,237. This confirms it as the non-negotiable foundational skill for any data analyst.
- **Python Rules the Salary Tier:** Python sits at the top of the financial ROI chart, commanding the highest average salary (\$101,397) while maintaining an equally robust demand count of 236 postings.
- **The Visualization Duel:** Tableau outperforms Power BI on both fronts in this optimal subset; it not only yields a higher average salary (\$99,288 vs \$97,431) but also boasts more than double the volume of job openings (230 vs 110).
- **Programming Over BI Tools:** Data science-oriented programming languages (Python and R) both cross the \$100,000 threshold, out-earning traditional Business Intelligence and database tools (Tableau, Power BI, SQL), pointing to a clear financial premium for coding skills.

---

## 📌 Key Takeaways

_The analysis reveals that while SQL remains the undisputed, non-negotiable baseline anchoring both entry-level volume and top-tier salaries across the job market, true financial optimization relies heavily on specialized technical choices. Developing proficiency in data science-oriented programming languages like Python and R offers the highest financial return on investment, routinely pushing analyst compensation past the \$100,000 threshold. Furthermore, strategic tool selection—such as prioritizing Tableau over Power BI and gaining familiarity with cloud data platforms like Snowflake and Azure—is critical for targeting high-paying employers. Ultimately, maximizing career earnings requires moving beyond general analytics and deliberately pursuing advanced leadership seniority, domain-specific expertise, or machine learning capabilities._

---

## 👤 Author

**Sriharsha KR**
