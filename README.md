# Cyclistic Bike-Share Case Study (R Analysis) 

## Project Overview

This repository contains an **R-based analysis** of Cyclistic bike-share data, completed as part of the **Google Data Analytics Capstone Case Study**. The purpose of this project is to analyze how **annual members** and **casual riders** use Cyclistic bikes differently and to provide data-driven recommendations to support marketing strategies aimed at increasing annual memberships.

---

## Business Question

**How do annual members and casual riders use Cyclistic bikes differently?**

Understanding these behavioral differences helps the marketing team design targeted campaigns that convert casual riders into annual members.

---

## Data Sources

* Public bike trip data provided by **Motivate International Inc. (Divvy)**
* Datasets used:

  * Divvy 2019 Q1
  * Divvy 2020 Q1
* Data includes anonymized, trip-level ride information (no PII)

---

## Tools & Technologies

* **R / RStudio**
* **tidyverse** (dplyr, ggplot2)
* **lubridate** – date and time manipulation
* **readxl** – importing Excel files
* **GitHub** – version control and documentation

---

## R Analysis Workflow

The analysis follows the Ask–Prepare–Process–Analyze–Share–Act framework.

### 1. Data Import & Inspection

* Imported Excel datasets using `read_excel()`
* Inspected structure and column names using `str()` and `colnames()`

### 2. Data Cleaning & Transformation

* Standardized column names across datasets
* Converted timestamps using `ymd_hms()`
* Created new features:

  * **ride_length** (minutes)
  * **day_of_week** (weekday labels)
* Removed invalid rides with zero or negative duration

### 3. Data Integration

* Combined quarterly datasets using `bind_rows()` after aligning column names and types

### 4. Analysis

* Calculated average and median ride length by rider type
* Counted number of rides by rider type and day of week
* Identified weekday vs weekend usage patterns

### 5. Visualization

* Created bar charts using **ggplot2**:

  * Average ride length by rider type
  * Number of rides by day of week and rider type

### 6. Exported Outputs

* `avg_ride_length.csv`
* `rides_by_day.csv`

---

## Key Insights

* Casual riders take **longer rides on average**, especially on weekends
* Annual members take **shorter but more frequent rides**, primarily on weekdays
* Member behavior suggests commuter usage, while casual riders show leisure-oriented patterns

---

## Recommendations

1. Target weekend casual riders with membership trials and promotions
2. Highlight cost savings and convenience of annual memberships
3. Use digital marketing channels (email, app notifications, social media) during peak casual usage times

---

## Repository Structure

```
cyclistic-bike-share-analysis/
│
├── analysis/
│   └── cyclistic_analysis.R
├── outputs/
│   ├── avg_ride_length.csv
│   └── rides_by_day.csv
├── visuals/
│   └── charts/
├── README.md
└── final_report.pdf
```

---

## How to Run the Analysis

1. Download the Divvy datasets and save them locally
2. Open `cyclistic_analysis.R` in RStudio
3. Install required packages (listed at top of script)
4. Run the script from top to bottom

---

## Author

**Tyiesha Little**
Aspiring Data Analyst | Google Data Analytics Certificate
  Milwaukee, WI
🔗 www.linkedin.com/in/tyiesha-little | GitHub | Portfolio (add links)
---

## Disclaimer

This project uses public, anonymized data and is intended for educational and portfolio purposes only.

