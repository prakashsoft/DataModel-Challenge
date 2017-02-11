CREATE TABLE "Order"
(
  ID INT NOT NULL,
  create_date_time varchar not null,
  update_date_time varchar not null,
  status varchar(50),
  user_id int not null,
  charge_amount decimal(4, 2) not null,
  tax_amount decimal(4, 2) not null,
  coupon_amount decimal(4, 2),
  PRIMARY KEY (ID)
);
select * from "Order";

CREATE TABLE "Item"
(
  ID INT NOT NULL,
  create_date_time varchar not null,
  update_date_time varchar not null,
  order_id int,
  variant_id int,
  sale_price decimal(4, 2) not null,
  quantity_ordered varchar(50),
  quantitity_oversold varchar, 
  PRIMARY KEY (ID)
);
select * from "Item";

CREATE TABLE "Returns"
(
  ID INT NOT NULL,
  Item_ID INT not null,
  create_date_time varchar not null,
  update_date_time varchar not null,
  return_reason varchar(50),
  approval_flag varchar(50),
  amount_refunded decimal(4, 2) not null,
  admin_name varchar(50),
  PRIMARY KEY (ID)
);

select * from "Returns";

CREATE TABLE "Variant"
(
  ID INT NOT NULL,
  
  create_date_time varchar not null,
  update_date_time varchar not null,
  product_id int not null,
  cost decimal(4, 2),
  size varchar(100),
  PRIMARY KEY (ID)
);

select * from "Variant"

CREATE TABLE "Shipment"
(
  ID INT NOT NULL,
  order_id int not null,
  start_date_time varchar not null,
  finish_date_time varchar not null,
  num_packages varchar(50),
  shipping_charge decimal(4,2),
  is_gift varchar(50),
  shipping_adddress varchar(100),
  recipient_name varchar(100),
  
  PRIMARY KEY (ID)
);

select * from "Shipment"

CREATE TABLE "Product"
(
  ID INT NOT NULL,
  create_date_time varchar not null,
  update_date_time varchar not null,
  description varchar,
  msrp decimal(4,2),
  PRIMARY KEY (ID)
);

select * from "Product"

CREATE TABLE "Users"
(
  ID INT NOT NULL,
  create_date_time varchar not null,
  update_date_time varchar not null,
  first_name varchar(50),
  last_name varchar(50),
  address varchar (100),
  vip_flag varchar(50),
  last_purchase varchar,
  PRIMARY KEY (ID)
);

Select * from "Users"