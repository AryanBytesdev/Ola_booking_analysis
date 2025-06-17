create database ola_project;
use ola_project;
SELECT 
    *
FROM
    july;
    
#1. Retrieve all successful bookings:
SELECT 
    *
FROM
    july
WHERE
    booking_status = 'success';
    
#2.Find the average ride distance for each vehicle type:
SELECT 
    vehicle_Type, AVG(Ride_Distance) AS Avg_distance
FROM
    july
GROUP BY vehicle_Type;

#3. Get the total number of cancelled rides by customers:
SELECT 
    COUNT(*)
FROM
    july
WHERE
    Booking_Status = 'canceled by Customer';
    
#4List the top 5 customers who booked the highest number of rides:
SELECT 
    Customer_ID, COUNT(Booking_ID) AS total_rides
FROM
    july
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues
SELECT 
    COUNT(*)
FROM
    july
WHERE
    Canceled_rides_by_driver = 'personal & car related issue';
    
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT 
    MAX(driver_ratings) AS max_driver_ratigs,
    MIN(driver_ratings) AS min_driver_ratings
FROM
    july
WHERE
    vehicle_type = 'prime sedan';
    
#7. Retrieve all rides where payment was made using UPI:
SELECT 
    *
FROM
    july
WHERE
    payment_method = 'upi';
    
#8. Find the average customer rating per vehicle type:
SELECT 
    vehicle_type, AVG(customer_rating) AS avg_customer_rating
FROM
    july
GROUP BY vehicle_type;

#9. Calculate the total booking value of rides completed successfully:
SELECT 
    SUM(Booking_Value) AS total_successful_value
FROM
    july
WHERE
    Booking_Status = 'Success';
    
#10. List all incomplete rides along with the reason:
SELECT 
    Booking_id, incomplete_rides_reason
FROM
    july
WHERE
    incomplete_rides = 'yes';

