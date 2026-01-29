# Group the order by date and calculate the number of pizzas ordered per day
select round(avg(Total_Quantity),0) from 
( select orders.date, sum(order_details.quantity) as 'Total_Quantity'
 from orders join order_details
 on orders.order_id= order_details.order_id
 group by orders.date) as ordered_Quantity;
 
 