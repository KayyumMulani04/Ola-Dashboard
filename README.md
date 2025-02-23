# Ola-Dashboard
Analyzed a 20,000-row sample OLA dataset (July) using SQL &amp; Power BI to extract insights on bookings, cancellations, revenue &amp; ratings, creating interactive dashboards for trend analysis.

OLA Ride-Booking Data Analysis (Sample Dataset - 20,000 Rows, July Month)

Overview

This project analyzes a sample dataset of 20,000 OLA ride-booking records for July using SQL and Power BI to derive insights on bookings, cancellations, revenue, and customer ratings.

Objectives

Retrieve and analyze successful bookings, cancellations, and ride distances.

Identify top customers, vehicle performance, and payment method trends.

Compute average customer and driver ratings by vehicle type.

Visualize insights using Power BI dashboards.

Tech Stack

SQL (MySQL / PostgreSQL / SQLite)

Power BI (Data Visualization & Dashboarding)

Step-by-Step Guide

1. Dataset Preparation

The dataset contains 20,000 sample ride-booking records with key columns:

Booking ID, Status, Customer ID, Vehicle Type, Ride Distance, Ratings, Payment Method, Revenue, etc.

Imported the dataset into SQL Database.

2. SQL Queries & Data Analysis

Retrieve Successful Bookings:

SELECT * FROM bookings WHERE Booking_Status = 'Success';

Calculate Average Ride Distance by Vehicle Type:

SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance FROM bookings GROUP BY Vehicle_Type;

Identify Top 5 Customers by Bookings:

SELECT Customer_ID, COUNT(Booking_ID) AS total_rides FROM bookings GROUP BY Customer_ID ORDER BY total_rides DESC LIMIT 5;

Compute Total Booking Value of Completed Rides:

SELECT SUM(Booking_Value) AS total_revenue FROM bookings WHERE Booking_Status = 'Success';

Store Results in SQL Views for efficiency and reusability.

3. Power BI Dashboard Development

Imported SQL results into Power BI.

Created Key Visualizations:

Ride Volume Over Time – Line chart showing ride trends.

Booking Status Breakdown – Pie chart for success vs. cancellations.

Revenue by Payment Method – Stacked bar chart for revenue distribution.

Customer vs. Driver Ratings – Scatter plot comparing rating trends.

Cancellation Reasons – Bar chart visualizing customer & driver cancellations.

Applied Data Filters & Formatting for better insights.

4. Insights & Findings

Most rides were successfully completed, with a higher booking volume on weekends.

UPI was the most preferred payment method.

Prime Sedan had the highest average ride distance.

Top customers contributed significantly to revenue.

Driver ratings were generally higher than customer ratings.

How to Use This Project

Clone this repository:

git clone https://github.com/KayyumMulani04/ola-data-analysis.git

Set up your SQL database and import ola_bookings.csv.

Run SQL queries provided in queries.sql.

Open Power BI and load the processed dataset.

Explore interactive dashboards.

Future Improvements

Expand dataset for a full-year analysis.

Implement Python-based automation for data processing.

Enhance real-time analytics with live dashboards.

Contributing

Feel free to fork this repository, submit issues, or contribute enhancements.

License

This project is open-source under the MIT License.

