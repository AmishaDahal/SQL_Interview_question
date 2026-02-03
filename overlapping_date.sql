/*19 Identify overlapping date ranges for bookings.*/


select b1.booking_id,b2.booking_id from book1
join book2
on b1.booking_id !=b2.booking_id
where b1.start_date<=b2.end_date
and b1.end_date>=b2.start_date;
