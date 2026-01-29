# Top 5 most order pizza types along with their quantitiea

select pt.name, sum(od.quantity) as 'pizzas ordered'
from pizza_types pt join pizzas p
on  pt.pizza_type_id= p.pizza_type_id
join order_details od 
on p.pizza_id = od.pizza_id
group by  pt.name
order by 'pizzas ordered' desc limit 5
;

