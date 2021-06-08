use gold09_database;

drop table orders;
drop table customer;
drop table address;
drop table store;
drop table product;
drop table instacartdriver;

create table address (
addressName varchar(100),
customerCity varchar(100),
customerState varchar(100),
customerZip char(5),
PRIMARY KEY (addressName)
);

create table customer (
customerID varchar(10) NOT NULL,
customerFirst varchar(50),
customerLast varchar(50),
customerDOB date,
addressName varchar(50),
primary key (customerID),
foreign key (addressName) references address(addressName)
);

create table instacartdriver (
driverNo int(11),
driverFirst varchar(50),
driverLast varchar(50),
primary key (driverNo)
);

create table product (
productID varchar(4),
productCategory varchar(50),
primary key (productID)
);

CREATE TABLE Store(
storeNo NCHAR(10),
storeName NCHAR(20),
storeStreet NCHAR(20),
storeCity NCHAR(20),
storeState NCHAR(20),
storeZip NCHAR(20),
PRIMARY KEY (storeNo)
);

create table orders (
orderID varchar(10),
itemName varchar(50),
productID varchar(4),
itemQuantity int(10),
itemPrice int(50),
itemsTotal int(10),
totalPrice varchar(50),
timePurchased varchar(50),
datePurchased date,
storeNo nchar(10),
customerID varchar(10),
addressName varchar(100),
driverNo int(11),
foreign key (productID) references product(productID),
foreign key (storeNo) references store(storeNo),
foreign key (customerID) references customer(customerID),
foreign key (addressName) references address(addressName),
foreign key (driverNo) references instacartdriver(driverNo)
);

insert into address
values("141 Tiger Lane", "Baton Rouge", "LA", 70802);
insert into address 
values("99 E Star Ave", "Baton Rouge", "LA", 70803);
insert into address 
values("9 Joe Burrow Street", "Baton Rouge", "LA", 70802);
insert into address 
values("800 Purple Lane", "Baton Rouge", "LA", 70803);
insert into address
values("14 Fat Tuesday", "Baton Rouge", "LA", 70802);
insert into address 
values("200 Tchoupitoulas Street", "New Orleans", "LA", 70130);
insert into address
values("700 Louisiana Street", "Gonzales", "LA", 70737);
insert into address 
values("400 Gumbo Street", "Baton Rouge", "LA", 70816);
insert into address
values("21 Saints Ave", "New Orleans", "LA", 70130);
insert into address
values("4141 Dani Street", "Baton Rouge", "LA", 70820);
insert into address
values("2400 Florence Drive", "Gonzales", "LA", 70707);
insert into address
values("514 Shipley Lane", "Denham Springs", "LA", 70726);
insert into address
values("7804 Pawnee Street", "Gonzales", "LA", 70718);
insert into address
values("58 Center Street", "Denham Springs", "LA", 70726);

insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('FER8I', 'George','Cambell','1950-07-31', '141 Tiger Lane');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('TNAHU', 'Ashley','Harrison','1995-03-26', '99 E Star Ave');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('EMD1Y', 'Zach','Taylor','1985-03-26', '9 Joe Burrow Street');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('S75HC', 'Caitlyn','Chambers','1991-05-24', '800 Purple Lane');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('PG7DA', 'Jordan','Olsen','1954-01-25', '14 Fat Tuesday');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('IU8PL', 'Danny','Silva','2000-08-06', '200 Tchoupitoulas Street');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('2IMGG', 'Aubrey','Silva','1999-07-04', '200 Tchoupitoulas Street');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('83X5N', 'Matthew','Peterson','1966-11-19', '700 Louisiana Street');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('S54AZ', 'Jimmy','Hester','1994-09-23', '400 Gumbo Street');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('1AYRL', 'Lexie','McDaniels','1996-12-21', '21 Saints Ave');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('KDEI2', 'Tommy','Carter','2000-11-01', '4141 Dani Street');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('KXVGT', 'Hugh','Nelson','1998-06-21', '2400 Florence Drive');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('UP6HA', 'Ella','Blair','1990-09-28', '514 Shipley Lane');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('T3ZA1', 'Robin','Lawson','1984-12-21', '58 Center Street');
insert into customer (customerID, customerFirst, customerLast, customerDOB, addressName)
values ('2VV0J', 'Brent','Hart','2001-08-04', '7804 Pawnee Street');

insert into instacartdriver
values("1032000", "Tyler", "Johnson");
insert into instacartdriver
values("1221999", "Johnson", "Tran");
insert into instacartdriver
values("1237654", "Joe", "Harris");
insert into instacartdriver
values("5839142", "Joe", "Burrow");
insert into instacartdriver
values("8142000", "Trent", "Hoang");
insert into instacartdriver
values("8232000", "Kevin", "Nguyen");
insert into instacartdriver
values("8242020", "William", "Brown");
insert into instacartdriver
values("8926754", "Myles", "Brennan");
insert into instacartdriver
values("9232000", "Anthony", "Pham");
insert into instacartdriver
values("43678394", "Barry", "Allen");

insert into product
values("DELI", "Deli");
insert into product
values("BAKE", "Bakery");
insert into product
values("FRZN", "Frozen");
insert into product
values("MEAT", "Butcher");
insert into product
values("SFD ", "Seafood");
insert into product
values("FRT", "Fruit");
insert into product
values("VEGI", "Vegetables");
insert into product
values("BOX", "Boxed Goods");
insert into product
values("DAIR", "Dairy");
insert into product
values("COND", "Condiments");

INSERT INTO Store 
VALUES ('B003','Costco','10000 Dawnadele Ave','Baton Rouge','LA','70809');
INSERT INTO Store 
VALUES ('B005','Albertsons','4857 Government St','Baton Rouge','LA','70806');
INSERT INTO Store 
VALUES ('B007','Sams Club','201 Bass Pro Blvd','Denham Springs','LA','70726');
INSERT INTO Store 
VALUES ('BA009','Rouses Markets','14635 Airline Hwy','Gonzales','LA','70737');
INSERT INTO Store 
VALUES ('BA011','The Fresh Market','10555 Perkins Rd','Baton Rouge','LA','70810');
INSERT INTO Store 
VALUES ('BA013','Winn Dixie','8601 Siegen Ln','Baton Rouge','LA','70810');
INSERT INTO Store 
VALUES ('BA015','Hi Nabor Supermarket','9630 Florida Blvd','Baton Rouge','LA','70815');
INSERT INTO Store 
VALUES ('BA017','Sprouts Farmers','4841 Rouzan Ave','Baton Rouge','LA','70808');
INSERT INTO Store 
VALUES ('BA019','Walgreens','5298 Highland Rd','Baton Rouge','LA','70808');
INSERT INTO Store 
VALUES ('BA021','CVS Pharmacy','7411 Florida Blvd','Baton Rouge','LA','70806');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('3VMCP7', 'ONeills Pure Local Honey', 'BOX', '1', '6.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('3VMCP7', 'Sprouts Organic Green Olives', 'BOX', '1', '3.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('3VMCP7', 'Organic Praire Lean Ground Beef', 'MEAT', '2', '20.98');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('3VMCP7', 'Love Corn Corn Snack', 'BOX', '1', '1.50');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('3VMCP7', 'Hass Avocado', 'FRT', '5', '3.95');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('3VMCP7', 'Cucumber', 'VEGI', '3', '0.99');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values('3VMCP7', '13', '38.40', '1734', '2021-4-18', 'BA017', '2IMGG', '200 Tchoupitoulas Street', '8242020');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('C8A6L5', 'Water Bottles 40 Count', 'BOX', '2', '6.96');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('C8A6L5', 'Lays Variety Chips', 'BOX', '1', '8.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('C8A6L5', 'Salmon Filet', 'SFD', '1', '15.59');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values('C8A6L5', '4', '31.54', '1155', '2021-3-29', 'B003', '83X5N', '700 Louisiana Street', '5839142');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('SD2TR8', 'Chocolate Ice Cream', 'FRZN', '1', '5.21');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('SD2TR8', 'Spaghetti', 'BOX', '3', '3.45');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('SD2TR8', 'Traditional Pasta Sauce', 'BOX', '2', '4.84');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('SD2TR8', 'Driscoll Strawberries', 'FRT', '1', '4.63');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('SD2TR8', 'Quaker Chewy Granola Bars', 'BOX', '1', '2.89');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('SD2TR8', 'Green Bell Pepper', 'VEGI', '4', '4.12');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('SD2TR8', 'Farm Raised Catfish', 'SFD', '3', '41.73');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values('SD2TR8', '15', '66.87', '1344', '2021-4-18', 'BA009', 'S54AZ', '400 Gumbo Street', '5839142');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('L5UFBR','Broccoli','VEGI','1', '1.00');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('L5UFBR','Onion','VEGI','3', '1.49');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('L5UFBR','Oranges','FRT','2', '0.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('L5UFBR','Chicken','MEAT','1', '5.99');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName)
values('L5UFBR', '7', '9.47', '1642', '2021-4-18', 'BA009', 'KDEI2', '4141 Dani Street');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('OPTXYZ', 'Banana', 'FRT', '2', '1.63');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('OPTXYZ', 'Boneless Chicken', 'MEAT', '1', '27.83'); 
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('OPTXYZ', 'Frozen Mixed Vegetables', 'VEGI', '1', '9.35');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('OPTXYZ', 'Fried Shrimp', 'SFD', '1', '22.22');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values ('OPTXYZ', '5', '62.66', '2351', '2021-4-17', 'B003', 'S75HC', '58 Center Street', '43678394');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('CBALTR', 'Frozen Dumplings', 'FRZN', '1', '12.27');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('CBALTR', 'Fried Rice', 'BOX', '2', '20.68');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('CBALTR', 'Greek Yogurt', 'DAIR', '2', '6.77');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('CBALTR', 'Butter Croissants', 'BAKE', '1', '7.84');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values ('CBALTR', '6', '47.56', '1030', '2021-4-16', 'B005', 'PG7DA', '7804 Pawnee Street', '9232000');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('HTXLMO', 'Caesar Salad', 'VEGI', '1', '8.76');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('HTXLMO', 'Red Berries Cereal', 'BOX', '1', '9.82');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('HTXLMO', 'Smoked Salmon', 'MEAT', '1', '22.93');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('HTXLMO', 'Yellow Onions', 'VEGI', '2', '6.42');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values ('HTXLMO', '5', '54.35', '1245', '2021-4-18', 'B007', 'IU8PL', '514 Shipley Lane', '8926754');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('TMDLNO', 'Ground Black Pepper', 'COND', '1', '4.67');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('TMDLNO', 'Almond Milk', 'DAIR', '1', '9.35');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('TMDLNO', 'GUMBO', 'DELI', '2', '11.10');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('TMDLNO', 'Haagen Dazs Ice Cream', 'FRZN', '1', '13.21');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values ('TMDLNO', '5', '49.43', '1415', '2021-4-18', 'BA009', '1AYRL', '2400 Florence Drive', '8242020');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('LTOYXA', 'Bagels', 'BAKE', '2', '8.18');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('LTOYXA', 'Bacon', 'MEAT', '1', '19.88');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('LTOYXA', 'Tomatoes', 'VEGI', '1', '6.77');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('LTOYXA', 'Vegetables Spring Rolls', 'FRZN', '1', '11.69');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values ('LTOYXA','5', '47.93', '1534', '2021-4-17', 'BA011', 'KDEI2', '4141 Dani Street', '8232000');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('OMAPIT', 'Vanilla Soy Milk', 'DAIR', '1', '14.03');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('OMAPIT', 'Thai Coconut Chicken', 'MEAT', '2', '15.20');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('OMAPIT', 'Shiitake Mushrooms', 'VEGI', '1', '9.35');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values ('OMAPIT', 'Ozarka Spring Water', 'BOX', '1', '5.72');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values ('OMAPIT',  '5', '59.50', '1550', '2021-4-15', 'BA013', 'KXVGT', '21 Saints Ave', '8242020');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('ABCRZH', 'Strawberry', 'FRT', '1', '1.63');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('ABCRZH', 'Ham', 'MEAT', '1', '5.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('ABCRZH', 'Salmon', 'SFD', '1', '12.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('ABCRZH', 'Chips', 'BOX', '1', '2.99');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values('ABCRZH', '4', '23.6', '1101', '2021-4-22', 'BA011', 'FER8I', '141 Tiger Lane', '1032000');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('LOLIMO', 'Broccoli', 'VEGI', '4', '4.00');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('LOLIMO', 'Ketchup', 'COND', '1', '2.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('LOLIMO', 'Ice Cream', 'FRZN', '1', '4.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('LOLIMO', 'Cereal', 'BOX', '1', '2.99');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values('LOLIMO', '7', '26.97', '1600', '2021-4-22', 'B003', 'TNAHU', '99 E Star Ave', '1221999'); 

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('AAZZUI', 'Spinach', 'VEGI', '1', '2.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('AAZZUI', 'Cookie', 'BAKE', '5', '1.00');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('AAZZUI', 'Chicken', 'MEAT', '1', '10.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('AAZZUI', 'Bacon', 'MEAT', '1', '2.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('AAZZUI', 'Milk', 'DAIR', '1', '5.99');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values('AAZZUI', '9', '27.96', '1805', '2021-4-5', 'B007', 'EMD1Y', '9 Joe Burrow Street', '5839142');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('ABCUFC', 'Oreos', 'BOX', '1', '3.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('ABCUFC', 'Cake', 'BAKE', '1', '30.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('ABCUFC', 'Chips', 'BOX', '2', '3.99');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values('ABCUFC', '4','38.97', '1530', '2021-4-6', 'BA013', 'UP6HA', '514 Shipley Lane', '1237654');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('BOEEWW', 'Mayonnaise', 'COND', '1', '3.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('BOEEWW', 'Snowballs', 'FRZN', '2', '2.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('BOEEWW', 'Nutella', 'COND', '1', '5.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('BOEEWW', 'Frozen Wings', 'FRZN', '1', '12.99');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values('BOEEWW', '5', '28.95', '1945', '2021-4-20', 'BA015', 'T3ZA1', '58 Center Street', '1221999');

insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('BREHAR', 'Asparagus', 'VEGI', '1', '6.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('BREHAR', 'Chicken', 'MEAT', '1', '10.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('BREHAR', 'Beef', 'MEAT', '1', '12.99');
insert into orders(orderID, itemName, productID, itemQuantity, itemPrice)
values('BREHAR', 'Rice', 'BOX', '1', '5.99');
insert into orders(orderID, itemsTotal, totalPrice, timePurchased, datePurchased, storeNo, customerID, addressName, driverNo)
values('BREHAR','4', '36.96', '0729', '2021-4-7', 'BA009', '2VV0J', '7804 Pawnee Street', '43678394');

-- QUERIES 
-- Q1: What are the names (and orderID) of the customers who had an order on April 18th 2021?
select c.customerID, c.customerFirst, c.customerLast, o.orderID, o.datePurchased 
from customer c, orders o 
where c.customerID = o.customerID and o.datePurchased = '2021-04-18';

-- Q2: What are the orders and addresses of our customers with the last name ‘Silva’?
select c.customerID, c.customerFirst, c.customerLast, c.addressName, o.orderID, o.itemName, o.productID, o.itemQuantity, o.itemPrice, o.itemsTotal, o.totalPrice, o.timePurchased, o.datePurchased, o.storeNo, o.driverNo 
from customer c, orders o 
where c.customerID = o.customerID
and c.customerLast LIKE '%Silva%';

-- Q3: What orders have been purchased from a store but not assigned a driver yet?
select o.orderID, s.storeNo 
from orders o, store s
where s.storeNo = o.storeNo and driverNo is null and o.storeNo is not null;

-- Q4: How many boxed products have been purchased in all of the orders?
select count(productID) 
from orders 
where productID='BOX';

-- Q5: Which orders are qualified as an ‘big order’, meaning they contain an above average number of items?
select orderID, itemsTotal 
from orders 
where itemsTotal > (select avg(itemsTotal) from orders);

-- Q6: Which orders are qualified as an ‘expensive order’, meaning they cost more than $40, and which orders are furthest from the 'expensive' threshold of $40?
select * from orders 
where totalPrice > 40 
order by totalPrice desc;

-- Q7: Which of our customers live outside our normal delivery range of Baton Rouge?
select o.orderID, c.customerID, c.customerFirst, c.customerLast, a.addressName, a.customerCity, a.customerZip 
from customer c, orders o, address a
where c.customerID = o.customerID
and a.addressName = c.addressName
and a.customerCity not in ('Baton Rouge');

-- Q8: What are the most popular (> 5) product categories that have been purchased in our most recent orders?
select p.productCategory, count(o.productID) as 'Number Bought'
from orders o, product p
where p.productID = o.productID
group by p.productCategory
having count(o.productID) > 5;

-- Q9. How many unique zip codes do we have registered in our database for the city of Baton Rouge?
select distinct customerZip 
from address 
where customerCity = 'Baton Rouge';

-- Q 10: What customers have had a delivery by the driver with driverNo = ‘5839142’?
select c.customerID, c.customerFirst, c.customerLast, o.addressName, o.orderID, i.driverNo, i.driverFirst, i.driverLast
from customer c, orders o, instacartdriver i
where c.customerID = o.customerID
And o.driverNo = i.driverNo
And i.driverNo = '5839142';