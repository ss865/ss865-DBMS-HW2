use restaurant;

-- Query 1: Average Price of Foods at Each Restaurant
select r.name as restaurant,
avg(f.price) as avg_price
from restaurants r
join serves s on r.restID = s.restID
join foods f on s.foodID = f.foodID
group by r.restID, r.name;

-- Query 2: Maximum Food Price at Each Restaurant
select r.name as restaurant,
MAX(f.price) AS max_price
from restaurants r
join serves s on r.restID = s.restID
join foods f on s.foodID = f.foodID
group by r.restID, r.name;

-- Query 3: Count of Different Food Types Served at Each Restaurant
select r.name as restaurant,
COUNT(distinct f.type) as food_type_count
from restaurants r
join serves s on r.restID = s.restID
join foods f on s.foodID = f.foodID
group by r.restID, r.name;

-- Query 4: Average Price of Foods Served by Each Chef
select c.name as chef,
AVG(f.price) as avg_price
from chefs c
join works w on c.chefID = w.chefID
join serves s on w.restID = s.restID
join foods f on s.foodID = f.foodID
group by c.chefID, c.name;

-- Query 5: Find the Restaurant with the Highest Average Food Price
select r.name as restaurant,
AVG(f.price) as avg_price
from restaurants r
join serves s on r.restID = s.restID
join foods f on s.foodID = f.foodID
group by r.restID, r.name
order by avg_price desc;


