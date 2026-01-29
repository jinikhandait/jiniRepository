#calculate the total revenue generated
 select pt.name, od.quantity * p.price as 'Total Revenue' 
 from order_details od inner join pizzas p
 on od.pizza_id = p.pizza_id
 join pizza_types pt
 on pt.pizza_type_id = p.pizza_type_id;
 
 select sum(od.quantity * p.price) as 'Total Revenue' 
 from order_details od inner join pizzas p
 on od.pizza_id = p.pizza_id
 
 
