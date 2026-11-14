create table customer_churn(
	customer_id text primary key,
	gender TEXT,
    age INTEGER,
    married TEXT,
    state TEXT,
    number_of_referrals INTEGER,
    tenure_in_months INTEGER,
    value_deal TEXT,
    phone_service TEXT,
    multiple_lines TEXT,
    internet_service TEXT,
    internet_type TEXT,
    online_security TEXT,
    online_backup TEXT,
    device_protection_plan TEXT,
    premium_support TEXT,
    streaming_tv TEXT,
    streaming_movies TEXT,
    streaming_music TEXT,
    unlimited_data TEXT,
    contract TEXT,
    paperless_billing TEXT,
    payment_method TEXT,
    monthly_charge NUMERIC(12,2),
    total_charges NUMERIC(12,2),
    total_refunds NUMERIC(12,2),
    total_extra_data_charges NUMERIC(12,2),
    total_long_distance_charges NUMERIC(12,2),
    total_revenue NUMERIC(12,2),
    customer_status TEXT,
    churn_category TEXT,
    churn_reason TEXT
);

select * from customer_churn;
select count(*)
from customer_churn;

-- Understanding the distribution of male v female

select gender, count(gender) as TotalCount,
round(count(gender) * 100.0 / (select count(*) from customer_churn),2) as Percentage
from customer_churn
group by gender;

-- Understanding the type of contracts people have

select contract, count(contract) as TotalCount,
round(count(contract) * 100.0 / (select count(*) from customer_churn), 2) as Percentage
from customer_churn
group by contract;

-- Now, we will explore the customer status column

select customer_status, count(customer_status) as TotalCount,
round(count(customer_status) * 100.0 / (select count(*) from customer_churn), 2) as Percentage
from customer_churn
group by customer_status;


select state, count(state) as TotalCount,
round(count(state) * 100.0 / (select count(*) from customer_churn), 2) as Percentage 
from customer_churn
group by state
order by Percentage desc;

-- Understand how many columns have NULLS

SELECT 
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Customer_ID_Null_Count,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Gender_Null_Count,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Null_Count,
    SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END) AS Married_Null_Count,
    SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS State_Null_Count,
    SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS Number_of_Referrals_Null_Count,
    SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS Tenure_in_Months_Null_Count,
    SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) AS Value_Deal_Null_Count,
    SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS Phone_Service_Null_Count,
    SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS Multiple_Lines_Null_Count,
    SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS Internet_Service_Null_Count,
    SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) AS Internet_Type_Null_Count,
    SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) AS Online_Security_Null_Count,
    SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) AS Online_Backup_Null_Count,
    SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) AS Device_Protection_Plan_Null_Count,
    SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) AS Premium_Support_Null_Count,
    SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) AS Streaming_TV_Null_Count,
    SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS Streaming_Movies_Null_Count,
    SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) AS Streaming_Music_Null_Count,
    SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) AS Unlimited_Data_Null_Count,
    SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS Contract_Null_Count,
    SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) AS Paperless_Billing_Null_Count,
    SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Payment_Method_Null_Count,
    SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS Monthly_Charge_Null_Count,
    SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Charges_Null_Count,
    SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS Total_Refunds_Null_Count,
    SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Null_Count,
    SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Null_Count,
    SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS Total_Revenue_Null_Count,
    SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) AS Customer_Status_Null_Count,
    SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) AS Churn_Category_Null_Count,
    SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS Churn_Reason_Null_Count
from customer_churn;

--removing the null values
CREATE TABLE "prod_Churn" AS
SELECT
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    COALESCE(Value_Deal, 'None') AS Value_Deal,
    Phone_Service,
    COALESCE(Multiple_Lines, 'None') AS Multiple_Lines,
    Internet_Service,
    COALESCE(Internet_Type, 'None') AS Internet_Type,
    COALESCE(Online_Security, 'None') AS Online_Security,
    COALESCE(Online_Backup, 'None') AS Online_Backup,
    COALESCE(Device_Protection_Plan, 'None') AS Device_Protection_Plan,
    COALESCE(Premium_Support, 'None') AS Premium_Support,
    COALESCE(Streaming_TV, 'None') AS Streaming_TV,
    COALESCE(Streaming_Movies, 'None') AS Streaming_Movies,
    COALESCE(Streaming_Music, 'None') AS Streaming_Music,
    COALESCE(Unlimited_Data, 'None') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    COALESCE(Churn_Category, 'Others') AS Churn_Category,
    COALESCE(Churn_Reason, 'Others') AS Churn_Reason
FROM customer_churn;

select * from "prod_Churn";