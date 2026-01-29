# Data Exploration

# how many sales we have?
select count(total_sale) as Total_Sale from retail_sale_data;

#how many unique customers we have?
select count(distinct(customer_id)) as Total_Customers from retail_sale_data;

#how many unique category we have name them?
select distinct(category) as  Categories from retail_sale_data

