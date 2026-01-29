#JOIN THE NECCESSARY TABLES TO FIND QUANTITY OF EACH PIZZA ORDERED
select od.category, sum(od.quantity) as 'total ordered' from 
pizza_types pt join pizzas p
on pt.pizza_type_id= p.pizza_type_id
join
order_details od on p.pizza_id=	od.pizza_id
group by  od.category
order by 'total ordered' desc
;