Cyclistic Bike-Share Case Study Report 
Executive Summary
Cyclistic is a Chicago-based bike-share company seeking to increase profitability by converting casual riders into annual members. This case study analyzes historical bike trip data to understand how casual riders and annual members use Cyclistic bikes differently. The analysis reveals clear behavioral differences in ride length, frequency, and timing, which can be leveraged to design targeted, data-driven marketing strategies.
________________________________________
1. Business Task
The objective of this analysis is to identify and compare usage patterns between casual riders and annual members in order to support marketing strategies that encourage casual riders to purchase annual memberships.
Primary Question:
How do annual members and casual riders use Cyclistic bikes differently?
________________________________________
2. Stakeholders
•	Lily Moreno – Director of Marketing
•	Cyclistic Marketing Analytics Team
•	Cyclistic Executive Team
________________________________________
3. Data Sources
The analysis uses publicly available bike-share trip data provided by Motivate International Inc. (Divvy). The data represents historical bike trips taken by Cyclistic users in Chicago.
Data Characteristics
•	Trip-level data including start/end times, stations, ride type, and rider category
•	Rider categories:
o	Casual riders (single-ride or day-pass users)
o	Annual members (subscription-based users)
Data Limitations
•	No personally identifiable information (PII)
•	Cannot determine rider demographics or residential location
•	Casual riders may include repeat but unidentified users
________________________________________
4. Data Preparation and Cleaning (R-Based Process)
Data preparation and processing were conducted using R to ensure accuracy, reproducibility, and scalability. The tidyverse ecosystem was selected due to its efficiency in data manipulation, transformation, and analysis.
Tools Used
•	R / RStudio – Primary analysis environment
•	tidyverse – Data wrangling and transformation
•	lubridate – Date-time parsing and manipulation
•	ggplot2 – Data visualization
•	readxl – Importing Excel datasets
Data Import
Two historical datasets (Divvy 2019 Q1 and Divvy 2020 Q1) were imported into R using the read_excel() function. Initial inspection was performed using colnames() and str() to understand data structure and data types.
Data Cleaning and Transformation
The following steps were applied to both datasets: - Standardized column names to ensure consistency across years - Converted start and end timestamps into proper datetime formats using ymd_hms() - Created a new variable, ride_length, calculated as the numeric difference (in minutes) between ride end and start times - Removed invalid records by filtering out rides with zero or negative durations - Created a day_of_week variable using wday() to label rides by weekday in a readable format
Data Integration
After cleaning, both quarterly datasets were merged into a single dataframe using bind_rows(), enabling a unified analysis across time periods.
Data Validation
To ensure data integrity: - Ride durations were validated to confirm all values were positive - Rider categories were reviewed to ensure correct classification - Summary statistics were generated to verify reasonable distributions
All processing steps were documented directly within the R script to ensure transparency, reproducibility, and ease of review by stakeholders.
________________________________________
5. Analysis
Descriptive and comparative analyses were conducted using pivot tables and summary statistics.
Key Metrics Analyzed
•	Average ride length by rider type
•	Number of rides by rider type and day of week
•	Ride frequency trends across weekdays and weekends
Key Findings
•	Casual riders take longer rides on average, particularly during weekends
•	Annual members take shorter but more frequent rides, primarily on weekdays
•	Members appear to use bikes for commuting, while casual riders primarily use bikes for leisure activities
These trends indicate that casual riders and members have distinct usage motivations and behaviors.
________________________________________
6. Visualizations and Key Insights
The following visualizations were created to support findings: - Average ride length by rider type - Number of rides by day of week and rider category - Comparison of weekday vs weekend usage patterns
These visuals highlight the contrast between leisure-based and commuter-based usage behaviors.
________________________________________
7. Recommendations
Based on the analysis, the following recommendations are proposed:
1.	Target Weekend Casual Riders
Offer limited-time promotions and trial memberships during weekends when casual rider activity is highest.
2.	Highlight Cost Savings and Convenience
Use digital campaigns to show how frequent casual riders could save money by switching to an annual membership.
3.	Leverage Digital Media and App Notifications
Use in-app messaging, email marketing, and social media to promote memberships during peak casual usage periods.
________________________________________
8. Conclusion
This analysis demonstrates that annual members and casual riders use Cyclistic bikes in fundamentally different ways. By tailoring marketing strategies to casual riders’ leisure-oriented usage patterns, Cyclistic can effectively encourage membership conversion and support long-term business growth.
________________________________________
9. Next Steps
•	Expand analysis to include seasonal trends
•	Incorporate additional datasets such as weather or event data
•	Test targeted marketing campaigns and measure conversion rates
________________________________________
👤 About Me

Tyiesha Little
Aspiring Data Analyst
Google Data Analytics Certificate
📍 Milwaukee, WI

🔗 www.linkedin.com/in/tyiesha-little | GitHub | Portfolio (add links)
