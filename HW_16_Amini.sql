SELECT SUM (quantity) OVER (ORDER BY ORDER_ID) AS  sum , * from
sales.order_items
order by sum desc
SELECT SUM (quantity) as product from production.stocks

------1------------------
SELECT production.products.product_id, production.products.product_name, production.brands.brand_id, production.brands.brand_name
FROM production.products INNER JOIN
 production.brands ON production.products.brand_id = production.brands.brand_id

 ------2-------------------
 select COUNT(*) from production.products

 -------3-------------------
 SELECT SUM (quantity) OVER (ORDER BY ORDER_ID) AS  sum , * from
sales.order_items
order by sum desc
SELECT SUM (quantity) as product from production.stocks

-----4------------------------
select  sales.customers.* ,sales.order_items.list_price from sales.customers join sales.order_items
ON sales.customers.customer_id=sales.order_items.order_id
where (sales.customers.customer_id=114)  

---------------------------------
 select  sales.customers.* ,sales.order_items.list_price from sales.customers 
	join sales.order_items ON sales.customers.customer_id=sales.order_items.order_id
	where (sales.customers.customer_id=114)

select * from( select COUNT(*) AS CountItem 
FROM sales.customers 
  INNER JOIN sales.order_items
  ON (sales.customers.customer_id=sales.order_items.order_id)
WHERE (sales.customers.customer_id=114))as t1,  
(select SUM(list_price) AS sum
FROM sales.customers 
  INNER JOIN sales.order_items
  ON (sales.customers.customer_id=sales.order_items.order_id)
WHERE (sales.customers.customer_id=114) ) as t2

SELECT   
    store.store_id,
	store.store_name,   
    SUM(COALESCE(sp.quantity, 0)) AS TotalProduct   
FROM   
    sales.stores AS store  
LEFT JOIN   
    production.stocks AS sp ON sp.store_id = store.store_id  
GROUP BY   
    store.store_id,store.store_name;








