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

- **SQL is the single most required skill**, appearing in 8 out of 10 top-paying job postings. This directly reinforces what the broader industry consistently reports — SQL is non-negotiable for anyone serious about a data analyst career, and its dominance even at the highest salary tier confirms it remains the baseline expectation regardless of seniority.
- **Python is nearly as critical as SQL**, demanded by 7 of the 10 roles. The gap of just one between SQL and Python suggests that top-paying employers expect both, not just one or the other. Python's presence here likely reflects the need for automation, advanced analysis, and working with large datasets beyond what spreadsheets can handle.
- **Tableau leads as the visualization tool of choice** at the top end of the market, appearing in 6 of 10 roles. This is notable — while Power BI is popular in the broader market, Tableau appears to have stronger representation among the highest-paying employers, particularly large enterprises and tech companies.
- **R still has a place at the table**, appearing in 4 roles. Its presence signals that some high-paying roles — likely at companies doing more rigorous statistical analysis or research-adjacent work — still value R alongside Python rather than treating it as obsolete.
- **Cloud and modern data stack tools are emerging requirements.** Snowflake (3) and Azure (2) appearing in this list is significant. These are not beginner tools — their presence indicates that top-paying roles expect analysts who can work within modern cloud data infrastructure, not just local databases or spreadsheets.
- **Pandas being listed separately from Python** (3 mentions) suggests that some job postings call out specific Python libraries explicitly, emphasizing hands-on data manipulation experience over general Python knowledge. This is a hint to go beyond knowing Python syntax and get comfortable with Pandas specifically.
- **Atlassian and Jira (2 each) reveal something about work culture** at high-paying companies. Their inclusion points to environments where analysts collaborate closely with engineering and product teams in agile workflows — a soft signal that communication and cross-functional collaboration are expected alongside technical skills.

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

- **SQL dominates by a significant margin** with 92,628 mentions — nearly 38% more than the second-placed Excel. Across every salary tier, company size, and location, SQL is the one skill that appears in almost every data analyst job description. If there is one skill to be completely comfortable with before applying anywhere, it is this.
- **Excel's position at #2 with 67,031 mentions is a reality check.** Despite the industry trend toward Python and BI tools, Excel remains deeply embedded in how businesses operate day-to-day. This is especially true for mid-market companies, finance teams, and non-tech industries. Being strong in Excel — not just basic formulas, but pivot tables, Power Query, and advanced functions — is still very much expected.
- **Comparing Query 2 vs Query 3 reveals a clear market split.** In the top-paying jobs (Query 2), Python ranked above Excel. In the broader market (Query 3), Excel ranks above Python. This tells a nuanced story — Python is what the highest-paying employers want, but Excel is what the majority of the market requires. A fresher targeting volume of opportunities needs Excel; a fresher targeting salary ceiling needs Python.
- **Both Tableau (46,554) and Power BI (39,468) appear in the top 5**, confirming that data visualization is a core expectation across the market, not a bonus skill. Together they account for over 86,000 mentions, more than Python alone. Knowing at least one of these tools well is non-negotiable.
- **The Tableau vs Power BI gap is narrower than expected** — about 15% difference. Tableau leads in demand but Power BI is closing in, likely driven by its deep integration with the Microsoft ecosystem that many enterprises already use. This makes Power BI arguably the more accessible entry point for freshers targeting corporate or enterprise roles.
- **SAS (28,068) still holds significant market presence**, ranking above PowerPoint and Word. Its demand is largely concentrated in traditional industries — healthcare, pharmaceuticals, banking, and government — where legacy systems and regulatory requirements keep SAS in active use. It is worth being aware of, though not a priority to learn early.
- **PowerPoint (13,848) and Word (13,591) appearing in the top 10 is a meaningful signal.** It confirms that employers across the board expect analysts to communicate findings, not just produce them. The ability to translate data into a clear presentation or written report is treated as part of the job description, not an afterthought.

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
