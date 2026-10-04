create view dim_products as 
select id as product_id , department,category, cost
from stg_products
select * from dim_products

create view dim_customers as 
select id as user_id ,age, gender, country,traffic_source
from stg_users
select * from dim_customers

create view dim_distribution as
select id as center_id, name, latitude ,longitude
from stg_distribution_centers
select * from stg_distribution_centers
--olgu tablosu
CREATE OR ALTER VIEW Fact_Sales AS 
SELECT oi.order_id,oi.user_id,oi.product_id,
    oi.created_at AS order_date, oi.sale_price AS revenue,
    oi.status, v.voucher_discount_rate,
    v.shipping_cost,v.return_logistics_cost
FROM stg_order_items oi
LEFT JOIN stg_order_vouchers v ON oi.order_id = v.order_id

