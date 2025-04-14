create database E_commerce_store_management;
use E_commerce_store_management;

-- table 1
create table customers (
    customer_id int primary key auto_increment,
    name varchar(100),
    email varchar(100) unique,
    phone varchar(15),
    city varchar(100)
);
insert into customers (name, email, phone, city) values
('atharva', 'atharva@gmail.com', '9876543210', 'mumbai'),
('sneha', 'sneha@gmail.com', '9123456780', 'pune'),
('ravi', 'ravi@gmail.com', '9988776655', 'nashik'),
('megha', 'megha@gmail.com', '9000011122', 'delhi'),
('amit', 'amit@gmail.com', '9090909090', 'hyderabad');
select * from customers;

-- delete a customer (e.g., customer_id = 1)
delete from customers where customer_id = 1;

-- check related orders
select * from orders; -- orders from customer 1 should be deleted due to ON DELETE CASCADE

-- update a customer id (e.g., change customer_id = 2 to 20)
update customers set customer_id = 20 where customer_id = 2;

-- check customers and related orders
select * from customers;
select * from orders;



-- table 2
create table categories (
    category_id int primary key auto_increment,
    category_name varchar(100),
    description text,
    status varchar(20),
    created_at date
);
insert into categories (category_name, description, status, created_at) values
('electronics', 'devices and gadgets', 'active', '2024-01-01'),
('clothing', 'shirts and pants', 'active', '2024-02-01'),
('books', 'educational and fictional books', 'active', '2024-03-01'),
('home appliances', 'household electronics', 'inactive', '2024-04-01'),
('sports', 'sports equipment', 'active', '2024-05-01');
select * from categories;

-- delete a category (e.g., category_id = 1)
delete from categories where category_id = 1;

-- check related products
select * from products; -- products with category_id = 1 should now have NULL due to ON DELETE SET NULL

-- update a category id (e.g., category_id = 2 to 22)
update categories set category_id = 22 where category_id = 2;

-- check categories and products
select * from categories;
select * from products;


-- table 3
create table products (
    product_id int primary key auto_increment,
    product_name varchar(100),
    price decimal(10,2),
    category_id int,
    stock int,
    foreign key (category_id) references categories(category_id)
	on update cascade
	on delete set null
);
insert into products (product_name, price, category_id, stock) values
('smartphone', 15000.00, 1, 50),
('t-shirt', 499.00, 2, 200),
('cookbook', 299.00, 3, 100),
('microwave', 8999.00, 4, 30),
('football', 799.00, 5, 75);
select * from products;
-- delete a product (e.g., product_id = 1)
delete from products where product_id = 1;

-- check order_items
select * from order_items; -- order_items with product_id = 1 should have NULL due to ON DELETE SET NULL

-- update a product id (e.g., product_id = 2 to 25)
update products set product_id = 25 where product_id = 2;

-- check products and order_items
select * from products;
select * from order_items;


-- table 4
create table orders (
    order_id int primary key auto_increment,
    customer_id int,
    order_date date,
    status varchar(50),
    total_amount decimal(10,2),
    foreign key (customer_id) references customers(customer_id)
    on update cascade
    on delete cascade
);
insert into orders (customer_id, order_date, status, total_amount) values
(1, '2024-04-01', 'delivered', 15500.00),
(2, '2024-04-02', 'processing', 499.00),
(3, '2024-04-03', 'shipped', 299.00),
(4, '2024-04-04', 'cancelled', 8999.00),
(5, '2024-04-05', 'delivered', 799.00);
select * from orders;
-- delete a product (e.g., product_id = 1)
delete from products where product_id = 1;

-- check order_items
select * from order_items; -- order_items with product_id = 1 should have NULL due to ON DELETE SET NULL

-- update a product id (e.g., product_id = 2 to 25)
update products set product_id = 25 where product_id = 2;

-- check products and order_items
select * from products;
select * from order_items;

-- table 5
create table order_items (
    order_item_id int primary key auto_increment,
    order_id int,
    product_id int,
    quantity int,
    price_each decimal(10,2),
    foreign key (order_id) references orders(order_id)
	on update cascade
    on delete cascade,
    foreign key (product_id) references products(product_id)
	on update cascade 
    on delete set null
);
insert into order_items (order_id, product_id, quantity, price_each) values
(1, 1, 1, 15000.00),
(1, 3, 1, 500.00),
(2, 2, 1, 499.00),
(4, 4, 1, 8999.00),
(5, 5, 1, 799.00);
select * from order_items;
-- delete an order (e.g., order_id = 1)
delete from orders where order_id = 1;

-- check order_items
select * from order_items; -- items with order_id = 1 should be deleted due to ON DELETE CASCADE

-- update an order id (e.g., order_id = 2 to 21)
update orders set order_id = 21 where order_id = 2;

-- check orders and order_items
select * from orders;
select * from order_items;


