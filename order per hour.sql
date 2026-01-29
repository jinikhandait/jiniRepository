#Determine the distribution of orders by hour of the day
select hour(orders.time), count(order_details.quantity) ,count(orders.order_id)
from orders join order_details
on orders.order_id = order_details.order_id

group by hour(orders.time);

