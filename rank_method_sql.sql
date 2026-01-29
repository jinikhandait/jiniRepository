# DATA ANALYSIS AND BUSSINESS KEY PROBLEM
#RETRIEVE ALL DATA FOR SALE MADE ON 2022-12-05

select * from retail_sale_data where sale_date='2022-12-05';
#============================================================

#retrieve all the transaction where category is clothing and quantity sold is more than 10
# in the month of November  2022
 select * from retail_sale_data;
 
select * from retail_sale_data where category = 'clothing' and quantity >3
and sale_date between '2022-11-01' and '2022-11-30';
#+======================================================================
#Calculate the total sale for each category

select category as Categories, sum(total_sale) as 'Total Sale', count(*) as 'Total Orders' from retail_sale_data
group by category;
#========================================================================

# find the average age of customers who purchase from the beauty category

select category as Category, round(avg(age),2)  as  'Average Age'
 from retail_sale_data where category='Beauty';

#++=================================================================================

#RETRIVE ALL THE DATA WHERE TOTAL SALE IS >1000
select * from retail_sale_data
where total_sale > 1000;
#===================================================

#Find the total number of transactions made by each gender in each category

Select category,gender,count(transaction_id)
from retail_sale_data
group by category , gender
order by category;

#==================================================================
#WRITE A QUERY TO CALCULATE THE AVERAGE SALE FOR EACH MANTH FIND OUT BEST SELECG MONTH IN EACH YEAR
select monthname(sale_date) from retail_sale_data;

select Year,Month,Average_Total_Sale,rank_data as Best_selling_month from
(select year(sale_date) as Year,
 monthname(sale_date) as Month,
 avg(total_sale) as Average_Total_Sale,
rank() over(partition by year(sale_date) order by avg(total_sale) desc) as rank_data
from retail_sale_data
group by year ,Month) as t1
where rank_data =1 
