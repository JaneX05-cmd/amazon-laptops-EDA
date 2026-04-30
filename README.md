# Amazon Laptops - Exploratory Data Analysis (EDA)

## ABOUT THE DATA
The base dataset contains information scraped from Amazon, featuring various laptop models and their technical specifications.

## PURPOSE OF ANALYSIS
To identify the key technical factors and specifications that drive laptop prices in the e-commerce market.

## TECH STACK
* **Python** (Pandas, Seaborn, Matplotlib)
* **SQL** (Data extraction and cleaning)

## BUSINESS INSIGHTS
* **RAM is the Key Driver:** The analysis revealed that the amount of RAM is the primary factor driving the price of a laptop upward.
* **The Storage Paradox:** Initial correlation matrices showed a relationship between disk storage size and price. However, deeper domain analysis suggested this might be misleading (Omitted Variable Bias). 
* **Technology over Capacity:** Older or budget laptops often offer massive storage capacities, whereas premium devices (like newer MacBooks) come with limited, but extremely fast storage. Feature engineering revealed that all analyzed laptops contained SSDs, proving that modern pricing models prioritize memory speed (RAM) and overall architecture over sheer disk space.

<img width="1438" height="531" alt="obraz" src="https://github.com/user-attachments/assets/761c64da-24b0-4edc-b793-85ea7b511622" />
