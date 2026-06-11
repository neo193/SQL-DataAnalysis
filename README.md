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
├── 📄 1_top_paying_jobs.sql
├── 📄 2_top_skills_for_top_paying_jobs.sql
├── 📄 3_most_in_demand_skills.sql
├── 📄 4_top_paying_skills.sql
├── 📄 5_most_optimal_skills.sql
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

- **The salary range is extremely wide.** The top-paying role (Mantys, $650,000) is nearly double the second-highest (Meta, $336,500). This outlier likely represents a senior or equity-heavy compensation package and warrants caution when interpreting average salaries in the field. The remaining 8 roles cluster more realistically between $184,000 and $255,000.

- **Seniority drives pay significantly.** Titles like _Director of Analytics_, _Associate Director_, and _Principal Data Analyst_ dominate the top 10. A standard "Data Analyst" title appears only twice — the Mantys outlier and the Pinterest Marketing Analyst role. This signals that moving into senior or specialized tracks is where the highest compensation lies.

- **Big Tech and established enterprises lead on salary.** Companies like Meta, AT&T, Pinterest, and UCLA Health represent large, well-resourced organizations. SmartAsset appears twice, suggesting it is an active and competitive remote employer in the analytics space worth keeping on the radar.

- **Specialization adds value.** Roles like _Data Analyst, Marketing_ (Pinterest), _AV Performance Analysis_ (Motional), and _ERM Data Analyst_ show that domain-specific analyst roles — tied to a particular business function or industry — command strong salaries. Generalist titles tend to sit lower unless at a senior level.

- **All 10 roles are full-time positions**, confirming that the highest-paying remote opportunities in data analytics are stable, permanent roles rather than contract or freelance engagements.

---

### Query 2 — Top Skills Required for Top Paying Jobs

_Insights coming soon._

---

### Query 3 — Most In-Demand Skills

_Insights coming soon._

---

### Query 4 — Top Paying Skills

_Insights coming soon._

---

### Query 5 — Most Optimal Skills to Learn

_Insights coming soon._

---

## 📌 Key Takeaways

_A summary of the most important findings across all queries will be added here once all analyses are complete._

---

## 👤 Author

**Sriharsha KR**
