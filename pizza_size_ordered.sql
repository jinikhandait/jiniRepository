#Identify the most common pizza size ordered
select pizzas.size, count( order_details.quantity) as 'most ordered pizzas'
 from pizzas join order_details
on pizzas.pizza_id= order_details.pizza_id
group by pizzas.size
order by 'most ordered pizzas';