# Determine the 3 top most ordered pizzas types based on revenue

select pizza_types.name, sum(order_details.quantity* pizzas.price) as 'revenue'
from order_details join pizzas
on order_details.pizza_id= pizzas.pizza_id
join pizza_types 
on pizzas.pizza_type_id=pizza_types.pizza_type_id
group by pizza_types.name
order by 'revenue';
