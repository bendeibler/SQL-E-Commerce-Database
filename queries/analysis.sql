select c.first_name, c.last_name, p.product_name, (oi.quantity * oi.unit_price) as total_price 
from customers c 
join orders o 
on c.customer_id = o.customer_id 
join order_items oi 
on o.order_id = oi.order_id 
join products p 
on oi.product_id = p.product_id 
where (oi.quantity * oi.unit_price) > 500;


select state, count(state) 
from customers 
group by state 
order by count(state) desc;


select product_name, price 
from products 
order by price 
desc;


select status, count(status) 
from orders 
group by count(status) 
order by count(status) desc;


select c.state, sum(oi.quantity * oi.unit_price) as total 
from customers c 
left join orders o 
on c.customer_id = o.customer_id 
left join order_items oi 
on oi.order_id = o.order_id 
group by c.state 
order by total desc;


select c.state, round(avg(oi.quantity * oi.unit_price), 2) as avg_amount 
from customers c 
left join orders o 
on c.customer_id = o.customer_id 
left join order_items oi 
on oi.order_id = o.order_id 
group by c.state 
order by avg(oi.quantity * oi.unit_price) desc;