SELECT market_code,count(product_code) FROM sales.transactions group by market_code order by count(product_code) DESC;
SELECT * FROM sales.transactions  where currency="USD";
Select * from sales.date where year=2020
SELECT * FROM sales.transactions  where order_date IN(Select date from sales.date where year=2020);
Select * from sales.transactions as A  inner join sales.date as B on A.order_date=B.date where B.year= 2020;
Select B.year,sum(A.sales_amount) from sales.transactions as A  inner join sales.date as B on A.order_date=B.date group by B.year;
