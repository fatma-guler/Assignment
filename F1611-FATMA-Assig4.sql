

select distinct pp.product_id,pp.product_name, soi.discount
from product.product as pp
inner join sale.order_item  as soi on  pp.product_id=soi.product_id
order by soi.discount