## Technology Stack:

* SQL
* Python
* Power BI

## Model Implemented: 

* Random Forest
* Churn analysis

## Overview

Customer churn analysis for a U.S. based Telecommunication provider (telecommunication provider examples: Verizon, Comcast, AT&T, etc.)

Analytical insights synthesized into a Power BI dashboard
📊 **[View Interactive Power BI Dashboard](https://app.powerbi.com/view?r=eyJrIjoiMDVjMDBlZjctZTllNS00NGRiLTk2ZTYtODliYTk2ZTRjYjBlIiwidCI6ImZiYmY2YzYwLTAzNDQtNGMyOS05NDU5LTcyNTY4NTczOWIxOSIsImMiOjN9)**

## Ask and Insights:

1. What is the total churn rate?
   
   * Total Churn Rate = 27%
   * The analysis spanned across 6,418 customers.  Of these 411 were new joiners and 1,732 (27%) had churned
   
3. Identify largest churn groups by gender, age, state, contract and internet type, payment method, tenure, and services used

   * Churn Rate by Gender: Females (64.15%)
   * Churn Rate by Age Group: Greater than 50 (31%)
   * Churn Rate by State: Jammu and Kashmir (57.2%)
   * Churn Rate by Contract and Internet Type, respectively: Month-to-Month (47%) and Fiber Optic (41%)
   * Churn Rate by Payment Method: Mailed Check (37.8%)
   * Churn Rate by Tenure: >= 24 Months (28%)
   * Churn Rate by Service: Phone Service (90.3%), Internet Service (78.3%), and Unlimited Data (67.5%)
   * Churn Rate by Reason: Competitor (44%). This means 44% of the churners switched to competitors
    * Other Churn Reasons: Service Provider Attitude (17.38%), Dissatisfaction (17.32%), Price (11.32%), Other (10%)

4. Identify top 3 reasons for customer churn

   * Competitor (44%). This means 44% of the churners switched to competitors
   * Service Provider Attitude (17.38%)
   * Dissatisfaction (17.32%) with product, network reliability, range of services offered, online and phone support expertise
     
## Business Recommendations:

### Female Churners

1. Offer discounts to female customers and schedule bi-annual device checks
2. Offer one-two year contracts for female customers
3. Target females in Jammu and Kashmir (churning at 59%)
4. Analyze competitor product offerings to see if they have female oriented product lines.  If so, offer similar products

* Lost 45% of the female customer base to the competitors for the following reasons:
     * Competitors made better offers (37%)
     * Compeitors had better devices (36%)
     * Competitors offered higher download speeds (14%)
     * Competitors offered more data (13.3%)
* Churn rate for females on one-two year contracts: 3.3-12.7%. This is in comparison to 46.5% churn rate for females on month-to-month contract
* 65% of predicted churners are females

### Jammu and Kashmir

1. Investigate marketing, customer/product service, range of services and discounts offered on Fiber Optic, DSL, Unlimited Data, Phone, and Internet services in Jammu and Kashmir  
2. Offer longer term contracts for Jammu and Kashmir users
3. Offer credit card services for Jammu and Kashmir users

* 77.05% of the churners in Jammu and Kashmir left for competitors because the competitor made better offers (per 94% of the churners)
* Churn rate for Fiber Optic customers in Jammu and Kashmir was 70.4% compared to 41.1% overall. Similarly, churn rate for DSL customers in Jammu and Kashmir was 43.1%
* 77.1% of Jammu and Kashmir churners had month-to-month contracts
* 80.8% of the churners in Jammu and Kashmir used mailed checks, compared 36.7% churners using credit card

### Fiber Optic:
1. Offer lower prices and run discount campaigns for Fiber Optic (focus on month-to-month contract users) 
2. Implement bi annual device health check for Fiber Optic:
3. Investigate product and network reliability for Fiber Optic

* 38% and 36% of the churners using Fiber Optic cited better device and competitor offers as the reason for switching, respectively. Churners using Fiber Optics also cited high pricing, network and service dissatisfaction, and product dissatisfaction as reasons for switching

### Competitors:
1. Compare offers and device functionalities with competitor offering. Focus on Fiber Optic, Phone, Unlimited Data, and Internet service since we lose most customers there

* We lose 44% of the customers to competitors. Customers cite better devices and offers as the top two churn reasons (74% together)

### Contract Length:

1. Offer longer contracts, generally, and for Fiber Optic and Unlimited Data, specifically:

* Customer churn for month-to-month Fiber Optic users is 59.3%, it is 5.8% for those on two year contract for Fiber Optic. Similarly, churn rate for Unlimited Data users on month-to-month contract is 73.6% compared to 57.8% for those on two-year contract
* 92% of the predicted churners are on a month-to-month contract

### Services to expand:

*  71.6% of the Online Security and 71.1% of the Premium Support users stay

## Next Steps

* Analyze Voice of Customer and Customer Call Report records to understand what specifically in devices or offers is causing customers to switch
* Investigate device failure %, device health check cadence
* Conduct focus group surveys with females over 50 in Jammu and Kashmir who are on a month-to-month contract of Fiber Optic, Phone, Internet, and Unlimited Data Services to understand what is causing them to move to competitors
