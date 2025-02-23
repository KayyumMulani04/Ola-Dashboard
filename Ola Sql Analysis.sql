create database ola;
use ola;
select * from booking;

 #1. Retrieve all successful bookings:
 create view Successful_Bookings as
 select * from booking where Booking_Status = "Success";
 
 #Option 2
 select * from Successful_Bookings;
 
 #2. Find the average ride distance for each vehicle type:
 
 create view Avg_ride_distance_for_each_vehicle as
 select Vehicle_Type, avg(Ride_Distance) as Average_Distance from booking group by Vehicle_Type;
 
 select * from Avg_ride_distance_for_each_vehicle;
 
 #3. Get the total number of cancelled rides by customers:
 create view Total_number_of_canceled_rides_by_customer as
 select count(*) as Canceled_By_Customer from booking where Booking_Status="Canceled by customer";
 
 select * from  Total_number_of_canceled_rides_by_customer;
 
 #4. List the top 5 customers who booked the highest number of rides:
 create view Top_5_Customers_who_booked_highest_no_of_Rides as
 select Customer_ID,count(Booking_ID) as Total_Rides from booking group by Customer_ID order by Total_Rides desc limit 5;
 
 select * from Top_5_Customers_who_booked_highest_no_of_Rides;

 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 create view no_of_rides_cancelled_by_drivers as
 select count(*) from booking where Canceled_Rides_by_Driver ="Personal & Car related issue";
 
 select * from no_of_rides_cancelled_by_drivers;
 
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 create view max_min_driver_ratings_for_prime_sedan as
 select max(Driver_Ratings) as Max_Ratings, min(Driver_Ratings) as Min_Ratings from booking where Vehicle_Type = "Prime Sedan";
 
 select * from max_min_driver_ratings_for_prime_sedan;
 
 #7. Retrieve all rides where payment was made using UPI:
 create view Payment_by_UPI as
 select * from booking where Payment_Method = "UPI";
 
 select * from Payment_by_UPI;
 
 #8. Find the average customer rating per vehicle type:
 create view Avg_customer_rating_per_vehicle_Type as
 select Vehicle_Type, avg(Customer_Rating) as Avg_Customer_Rating from booking group by Vehicle_Type;
 
 select * from Avg_customer_rating_per_vehicle_Type;
 
 #9. Calculate the total booking value of rides completed successfully:
 create view Total_booking_value_of_rides_completed_successfully as
 select sum(Booking_Value) as Sum_of_Completed_Rides from booking where Booking_Status="Success";
 
 select * from Total_booking_value_of_rides_completed_successfully;
 
 #10. List all incomplete rides along with the reason:
 create view incomplete_rides_along_with_reasons as
 select Booking_ID, Incomplete_Rides_Reason from booking where Incomplete_Rides = "Yes";
 
 select * from incomplete_rides_along_with_reasons;