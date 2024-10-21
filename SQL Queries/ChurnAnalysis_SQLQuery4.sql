SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 1.0 / (Select Count(*) from dbo.stg_Churn)  as Percentage
from dbo.stg_Churn
Group by Gender

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0 / (Select Count(*) from dbo.stg_Churn)  as Percentage
from dbo.stg_Churn
Group by Contract


SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from dbo.stg_Churn) * 100  as RevPercentage
from dbo.stg_Churn
Group by Customer_Status

SELECT State, Count(State) as TotalCount,
Count(State) * 1.0 / (Select Count(*) from dbo.stg_Churn)  as Percentage
from dbo.stg_Churn
Group by State
Order by Percentage desc
