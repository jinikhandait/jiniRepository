#join relevent tables to find category wise distribution of pizza

select pizza_types.category, count( order_details.quantity) as quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on pizzas.pizza_id = order_details.pizza_id
group by pizza_types.category;

select category , count(name) from pizza_types
group by category