create database smartphones;
use smartphones;

select brand_name,count(*),
       round(avg(price),2),
       max(rating),
       round(avg(screen_size),2),
       round(avg(battery_capacity),2)
from smartphones_cleaned_v6
group by brand_name
order by brand_name asc;

select refresh_rate
from smartphones_cleaned_v6;

select has_nfc,
       round(avg(price),2),
	   round(avg(rating),2)
from smartphones_cleaned_v6
group by has_nfc;

select extended_memory_available
from smartphones_cleaned_v6;

select extended_memory_available, 
	   round(avg(price),2) as avg_price
from smartphones_cleaned_v6
group by extended_memory_available;

select brand_name,processor_brand,
       round(avg(primary_camera_rear+primary_camera_front),2)
from smartphones_cleaned_v6
group by brand_name, processor_brand;

select brand_name,avg(price) as avg_price
from smartphones_cleaned_v6
group by brand_name
order by avg_price desc	 limit 5;

select brand_name, avg(screen_size) as avg_screen
from smartphones_cleaned_v6
group by brand_name
order by avg_screen asc limit 1;

select fast_charging_available
from smartphones_cleaned_v6;

select avg(price) as avg_price
from smartphones_cleaned_v6
group by has_5g='Ture'  , has_5g='False';

select brand_name, count(*) as count
from smartphones_cleaned_v6
where has_nfc='True' and has_ir_blaster = 'True'
group by brand_name
order by count desc;

select brand_name, avg(price)
from smartphones_cleaned_v6
where brand_name ='samsung'
group by has_nfc;


select model , price
from smartphones_cleaned_v6
order by  price desc;

-- Using Having clause

select brand_name,
       round( avg(rating),2) as avg_rating,
       count(*) as count
from  smartphones_cleaned_v6
group by brand_name
having count>20
order by avg_rating desc;

select brand_name,
	avg(ram_capacity) as avg_ram,
    count(*) as count
from smartphones_cleaned_v6
where refresh_rate >= 90 and fast_charging_available
group by  brand_name
having count(*) > 10
order by avg_ram desc limit 3;

select brand_name, avg(price)
from smartphones_cleaned_v6
where  has_5g='True'
group by brand_name
having count(*) > 10 and avg(rating)>70;
       





