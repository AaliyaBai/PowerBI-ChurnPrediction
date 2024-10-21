## Project: Telecom Customer Churn Analysis and Prediction

This project aims to develop a comprehensive churn analysis dashboard to provide insights into customer behaviour, identify potential churners, and inform targeted marketing strategies.
### Technical Stack
- Database: Microsoft SQL Server
- Data Loading: SQL Server Management Studio
- Data Modeling: Power BI
- Visualization: Power BI
- Machine Learning: Python (with libraries like Pandas, NumPy, Scikit-learn)

### Workflow
- Data Ingestion: Load and transform telecom customer data from the Customer_Data.csv file into a centralized database using Microsoft SQL Server Management Studio. The file name is renamed as db_churn.

- Data Cleaning and Preparation: A copy of the data is saved for staging process, named as stg_churn in which the data is cleaned using SQL queries by handling missing/NULL values and inconsistencies. It is then saved into a new database, prod_churn, for analysis.

![SQL Data Processing](https://github.com/AaliyaBai/PowerBI-ChurnPrediction/blob/29ebf00c47033011ab25b6233eb713a77557f1f9/Screenshots/SQL_DataProcessing.png)

- Exploratory Data Analysis (EDA): Conduct an in-depth analysis to uncover patterns, trends, and correlations within the data.

- Dashboard Visualization: Key metrics, churn trends, and customer segments are visualized using Power BI by loading data from prod_churn.

![Chrun Analysis](https://github.com/AaliyaBai/PowerBI-ChurnPrediction/blob/29ebf00c47033011ab25b6233eb713a77557f1f9/Screenshots/churn_trend_analysis_preview.gif)

Total churn and churn rate percentages have been visualized for demographic data, geographic data, account information, services used, and churn distribution. The trends and patterns for customer churn were analysed through these visualizations, and the findings can be discussed with stakeholders.

- Model Training: In Jupyter Notebook, using Python (with libraries like Pandas, NumPy, and Scikit-learn), machine learning models were trained to accurately predict customers at risk of churning. In this case, a Random Forest model was used.

- Model Evaluation: The performance of the models was evaluated using appropriate metrics, such as correlation metrics, accuracy, precision, recall, and F1-score.

### Model Evaluation

![Model Evaluation](https://github.com/AaliyaBai/PowerBI-ChurnPrediction/blob/29ebf00c47033011ab25b6233eb713a77557f1f9/Screenshots/ModelEvaluation.png)

The random forest model achieved an accuracy of 84%. The confusion matrix shows that the model correctly predicted 803 positive cases and 212 negative cases. However, it incorrectly predicted 59 negative cases as positive and 128 positive cases as negative.
In the classification report, binary 0 represents customers who stayed, and binary 1 represents customers who churned. The report shows that out of all the instances predicted as customers who stayed, 86% were actual stayed customers. The recall percentage of 93% indicates that the model successfully predicted a higher number of true positive cases.

- Dashboard Visualization: A churn prediction interactive dashboard has also been created to visualize key metrics and insights.

![Chrun Prediction](https://github.com/AaliyaBai/PowerBI-ChurnPrediction/blob/29ebf00c47033011ab25b6233eb713a77557f1f9/Screenshots/churn-prediction-preview.gif)

Finally, total churn and churn rate percentages have been visualized again for demographic, geographic data, and account information related to the predicted churned customers, to analyse the likelihood of customers staying or churning in the future.