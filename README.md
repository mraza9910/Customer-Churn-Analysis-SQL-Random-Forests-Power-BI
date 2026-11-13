# Technology Stack:

* SQL
* Python
* Power BI

# Model Implemented: 

* Random Forest
* Churn analysis

# Customer-Churn-Analysis

Customer churn analysis for a Telecommunication Provider (U.S. based telecommunications provider examples: Verizon, Comcast, AT&T, etc.)

I perform customer churn analysis for a U.S. based telecommunications giant, identifying trends and patterns amongst the largest churning consumer groups by gender, age group, geography, services used, payment method, contract length, tenure, and internet service type. 

The analysis also highlight reasons for customer churn and implements a Random Forest to identify high risk customers.

Analytics insights are synthesized into a Power BI dashboard
📊 **[View Interactive Power BI Dashboard](https://app.powerbi.com/view?r=eyJrIjoiMDVjMDBlZjctZTllNS00NGRiLTk2ZTYtODliYTk2ZTRjYjBlIiwidCI6ImZiYmY2YzYwLTAzNDQtNGMyOS05NDU5LTcyNTY4NTczOWIxOSIsImMiOjN9)**

## Overview

* The analysis spanned across 6,418 customers.  Of these 411 were new joiners and 1,732 (27%) had churned
* Total Churn Rate = 27%.
* Churn Rate by Gender: Females (64.15%) Males (35.85%)

Below, I identify groups with highest churn rates for every category:

* Churn Rate by Age Group: Greater than 50 (31%)
* Churn Rate by State: Jammu and Kashmir (57.2%)
* Churn Rate by Contract and Internet Type, respectively: Month-to-Month (47%) and Fiber Optic (41%)
* Churn Rate by Payment Method: Mailed Check (37.8%)
* Churn Rate by Tenure: >= 24 Months (28%)
* Churn Rate by Reason: Competitor (44%). This means 44% of the churners switch to competitors
    * Other Churn Reasons: Service Provider Attitude (17.38%), Dissatisfaction (17.32%), Price (11.32%), Other (10%)
* Churn Rate by Service: Phone Service (90.3%), Internet Service (78.3%), and Unlimited Data (67.5%)


## Business Recommendations

### Offer targeted discounts to female customers and schedule bi-annual device checks
### Analyze competitor offerings to see if they have female oriented product lines

* Currently losing 45% of the female churners to competitors
* 65% of predicted churners are females

### Train non-premium customer service staff and implement bi-weekly accountability cadence
### Award bonuses based on customer service ratings

* Premium Support customers stay 71.1% of the times; we lose 18.2% and 17% of male and female customers due to attitude of support person or service providers.

### Investigate marketing, customer/product service, and discounts offered on Fiber Optic, DSL, Unlimited Data, Phone, and Internet services in Jammu and Kashmir.  

* 77.05% of the churners in Jammu and Kashmir are going to competitors because the competitor made better offers (94%).  Additionally, 70.4% of the user base in Jammu and Kashmir is on Fiber Optic.

### Investigate product and network reliability, lower prices, implement bi annual device health check, and run discount campaigns for Fiber Optic:

* 38 and 36% of the churners using Fiber Optic cite better device and competitor offer as the reason for switching to competitors. Churners using Fiber Optics cite high pricing, network and service dissatisfaction, and product dissatisfaction as reasons for switching.

### Compare offers and device functionalities with competitor offering. Focus on Fiber Optic, Phone, Unlimited Data, and Internet service since we lose most customers there

* We lose 44% of the customers to competitors. Customers cite better devices and offers as the top two churn reasons (74% together)

### Offer longer contracts for Phone, Internet, Unlimited Data, and Fiber Optic:

* 47% of the churners are on a monthly contract for Phone, Internet, Unlimited Data, and Fiber Optic. Increasing the contract length may reduce churn because the churn rate is inversely proportional to the contract length
* One month contracts work well for the Premium Support, Online Security, Online Backup and Device Protection Plan customers
* 92% of the predicted churners are on a month-to-month contract.

## Churners by Gender:

I do a separate churners by gender analysis because 65% are females and 35% are males

## Female Churners:

* Females older than 50 churn at a rate of 32% compared to 25% for those aged 40-50.
* Females who churned typically had a greater than 24 month tenure (28.6%) and were on the month-to-month contract (46.5%).  These women mostly subscribed to Unlimited Data (67%), Phone Service (90.9%), Paperless Billing (59.5%), and Internet Service (77.7%).  This consumer group largely subscribed to the Fiber Optic (42.5%) internet.  The churners were based in Jammu & Kashmir (59%), like the rest of the churners (53.7%) and they relied on Mailed Check (37.3%) for payment purposes.

### Why We Lost The Female Customers?

* We lost 45% of the female customer base to the competitors for the following reasons:
     * Competitors made better offers (37%)
     * Compeitors had better devices (36%)
     * Competitors offered higher download speeds (14%)
     * Competitors offered more data (13.3%)

* We lost 17% of the female customer base due to attitude issues, namely:
    * Attitude of support person (70%)
    * Attitude of service provider (30%)
    
* Similarly, lost 17% of the female customers due to dissatisfaction with:
    * Product dissatisfaction (27%)
    * Service dissatisfaction (21%)
    * Network reliability (18%)
    * Limited range of services (12%)
    * Poor expertise of online support (10%)
    * Lack of self-service on website (8%)
    * Poor expertise of phone support (5%)

 * Lost 11% of the customer due to a variety of pricing issues:
     * High prices (40%)
     * Long distance charges (29%)
     * Extra data charges (16%)
     * Lack of affordable download/upload speed (16%)
     
## Male Churners:

* Like females, males over 50 were 30.4% times likely churn than those aged 40-50 (22%)
* Of the males churning, 26% had an over 24 month tenure with the company and were found to have a month-to-month contract (46.6%).  They were also largely based in Jammu and Kashmir (53.7%), used Fiber Optic (38.5%) internet, and subscribed to Unlimited Data (68.4%), Phone Service (89.2%), and Internet Service (79.4%).  58.4% were on paperless billing and 38.7% of the churned males used Mailed Check as a payment method.

### Why We Lost The Male Customers?

* We lost 43% of the male customer base to competitors for the following reasons:
     * Compeitors had better devices (41%)
     * Competitors made better offers (34%)
     * Competitors offered more data (15%)
     * Competitors offered higher download speeds (9%)

* We lost 18.2% of the male customer base due to attitude issues, namely:
    * Attitude of support person (67%)
    * Attitude of service provider (33%)
    
* Similarly, lost 17% of the male customers due to dissatisfaction with:
    * Network reliability (29.91%)
    * Service dissatisfaction (18.69%)
    * Product dissatisfaction (17.76%)
    * Lack of self-service on website (11.2%)
    * Poor expertise of online support (10.28%)
    * Limited range of services (9.35%)
    * Poor expertise of phone support (2.80%)

 * Lost 12.08% of the customer due to a variety of pricing issues:
     * Long distance charges (36%)
     * High prices (32%)    
     * Extra data charges (20%)
     * Lack of affordable download/upload speed (12%)
     
## Who does not churn?

* Online Security (71.6%), Premium Support (71.1%), 

## Next Steps

* Analyze Voice of Customer and Customer Call Report records to understand what specifically in product or offers made is causing customers to switch.
* Conduct focus group survey with females over 50 in Jammu and Kashmir who are on a month-to-month contract of Fiber Optic, Phone, Internet, and Unlimited Data Services to understand what is causing them to move to competitors.
