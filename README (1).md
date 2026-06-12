# 💼 LinkedIn Job Market Analysis

An end-to-end data analytics project — from web scraping LinkedIn job postings to SQL-based analysis and Tableau visualizations — to uncover hiring trends across Indian cities and industries.

---

## 📌 Project Overview

This project scrapes job listing data from LinkedIn, structures it into a relational database, performs analytical queries in SQL, and visualizes key insights using Tableau. The dataset covers ~320 job postings across 32+ industries.

---

## 🗂️ Dataset Structure

Data was scraped and organized into **3 tables**:

### `Jobs`
| Column | Description |
|---|---|
| `job_id` | Unique job identifier |
| `company_id` | Foreign key → Company |
| `location` | City of the job posting |
| `designation` | Job title/role |
| `details_id` | Foreign key → Details |

### `Company`
| Column | Description |
|---|---|
| `company_id` | Unique company identifier |
| `name` | Company name |
| `industry` | Industry sector |
| `emp_count` | Employee headcount |
| `linkedin_followers` | LinkedIn follower count |

### `Details`
| Column | Description |
|---|---|
| `details_id` | Unique details identifier |
| `involvement` | Full-time / Part-time |
| `level` | Job level (Entry / Mid / Senior) |
| `total_applications` | Number of applicants |

---

## 🔧 Tech Stack

| Stage | Tool |
|---|---|
| Web Scraping | Python (BeautifulSoup / Selenium) |
| Data Storage & Analysis | SQL |
| Visualization | Tableau |
| Version Control | GitHub |

---

## 🔍 SQL Analysis Performed

After joining the three tables, the following analyses were done:

- **Jobs by City & Level** — Compared openings across cities for different experience levels
- **Jobs by Industry** — Distribution of postings across 32+ industries
- **Jobs by Company Size** — Correlation between employee count and number of openings
- **Industry × Location Cross-Analysis** — Heatmap-style breakdown of industry demand per city
- **Jobs by Designation** — Count of postings per job title/role

---

## 📊 Key Insights

### 🏙️ Location
- **Pune** has the highest number of job openings
- Followed by **Gurugram → Bengaluru → New Delhi → Mumbai**

### 🏭 Industry
- **IT Services** leads with ~66 job postings
- Followed by **Airline & Aviation (~31)**, **Banking (~16)**, Staffing & Recruiting, and Pharmaceuticals

### 🏢 Company Size
- Companies with **10,000+ employees (MNCs)** account for ~119 job openings — the highest among all size brackets
- Larger companies clearly dominate active hiring

### 📋 Job Level
- Majority of postings are **entry-level**, suggesting strong demand for freshers and early-career professionals

---

## 📁 Repository Structure

```
linkedin-job-analysis/
│
├── data/
│   ├── jobs.csv
│   ├── company.csv
│   └── details.csv
│
├── sql/
│   └── analysis_queries.sql
│
├── scraper/
│   └── linkedin_scraper.py
│
├── tableau/
│   └── dashboard.twbx
│
└── README.md
```

---

## 🚀 How to Run

1. **Clone the repo**
   ```bash
   git clone https://github.com/your-username/linkedin-job-analysis.git
   ```

2. **Run the scraper** *(optional — data already included)*
   ```bash
   python scraper/linkedin_scraper.py
   ```

3. **Load CSVs** into your SQL environment (MySQL / PostgreSQL / SQL Server)

4. **Run queries** from `sql/analysis_queries.sql`

5. **Open Tableau dashboard** — load `tableau/dashboard.twbx`

---

## 👤 Author

**Saurav Labade**  
Data Analyst | ClickHouse Specialist  
[LinkedIn](https://www.linkedin.com/in/your-profile) • [GitHub](https://github.com/your-username)

---

## 📄 License

This project is for educational and portfolio purposes only. Data scraped from LinkedIn is used solely for non-commercial analysis.
