**Amazon Laptops - Exploratory Data Analysis (EDA)**

ABOUT THE DATA

The base dataset contains information scraped from Amazon, featuring 141 laptop listings with their technical specifications (prices in ₹).

PURPOSE OF ANALYSIS

To identify the key technical factors and specifications that drive laptop prices in the e-commerce market.

TECH STACK
Python (Pandas, Seaborn, Matplotlib, Statsmodels)
SQL / PostgreSQL (data import, deduplication and cleaning with regular expressions)
DATA CLEANING NOTES
Mixed storage units: disk size was listed in both GB and TB. All values were converted to GB. An earlier version kept only the digits, so "1 TB" became 1 and large disks looked cheap. The negative storage coefficient in the first regression was a data error, not a market effect.
Screen size: the decimal point is preserved (15.6", not 156).
Missing values: mode imputation for rating, ram_gb and storage_gb; missing purchase counts set to 0; listings without CPU, GPU or OS dropped (139 observations left for modelling).
BUSINESS INSIGHTS
RAM is the strongest predictor of price: in a regression on RAM and storage (R² = 0.78), each additional GB of RAM is associated with roughly ₹6,400 higher price (p < 0.001).
Storage correlates with price, but adds little once RAM is known: on its own, storage explains about 55% of price variance (≈ ₹91 per GB). With RAM in the model its coefficient drops to ≈ ₹4 per GB and is not significant (p = 0.65), and R² barely changes. RAM and storage are strongly correlated, so their separate effects cannot be reliably distinguished in this sample.
SSD is the standard: 124 of 139 listings mention SSD in the title and none mention HDD, so splitting by drive type was not informative.


<img width="1568" height="588" alt="obraz" src="https://github.com/user-attachments/assets/12f10946-d7c5-4259-874b-0673abf0ff88" />


LIMITATIONS
Small sample (139 listings), so estimates are imprecise.
The results are associations, not causal effects. The model does not control for brand, CPU or GPU, which are related to both specs and price.
Prices are skewed and a few premium gaming laptops (up to 96 GB RAM, 6 TB storage, ~₹440,000-500,000) strongly influence the fitted lines.
Screen size mixes inches and centimetres in the source (28 listings give centimetres, e.g. 39.6 cm), so correlations with screen size are unreliable.
