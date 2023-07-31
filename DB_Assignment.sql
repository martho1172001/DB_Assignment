create table "user"(
"id" uuid not null default uuid_generate_v4(),
"name" character varying not null,
"address_id" uuid not null,
"phone_number" character varying not null,
"email" character varying not null,
"password"  character varying not null,
constraint "PK_useridpkconstraint" primary key ("id"));


create table product(
"id" uuid not null default uuid_generate_v4(),
"name" character varying not null,
"description" character varying,
"price" float not null,
"sku" character varying not null,
constraint "PK_prodidpkconstraint" primary key ("id"));

create table category(
"id" uuid not null default uuid_generate_v4(),
"name" character varying not null,
constraint "PK_categoryidpkconstraint" primary key ("id"));



create table category_product(
"category_id" uuid not null ,
"product_id" uuid not null );

alter table category_product rename to product_category;


create table "order"(
"id" uuid not null default uuid_generate_v4(),
"user_id" uuid not null,
"address_id" uuid not null,
"total_price" float,
constraint "PK_orderidpkconstraint" primary key ("id"));



create table order_productwise(
"order_id" uuid not null ,
"product_id" uuid not null ,
"quantity" float);



create table address(
"id" uuid not null default uuid_generate_v4(),
"house_name" character varying,
"city"  character varying,
"country" character varying,
"pincode" character varying,
constraint "PK_addressidpkconstraint" primary key ("id"));



INSERT INTO "e-commerce"."user"
(id, "name", address_id, phone_number, email, "password")
VALUES(uuid_generate_v4(), 'linette', 'fdd68c2f-9849-44ff-b215-b3ef679c0e03', '2352457284', 'linu@gmail.com', 'linu1234'),
(uuid_generate_v4(), 'devi', 'd4f31686-3077-400d-819b-0882886aeb10', '23525678684', 'devi@gmail.com', 'password'),
(uuid_generate_v4(), 'mariya','66ba78b1-5520-42e5-92ab-1a5e109795a8', '4387463274', 'mariya@gmail.com', 'martho111');



INSERT INTO "e-commerce".product
(id, "name", description, price, sku)
VALUES(uuid_generate_v4(), 'classmate book medium', 'boookkkk', 67, 'kl643647488584'),
(uuid_generate_v4(), 'classmate book large', 'boookkkk', 177, 'kl466647488584'),
(uuid_generate_v4(), 'dove soap', 'soappp', 77, 'hjefe488584'),
(uuid_generate_v4(), 'pencil', 'pencillll', 10, 'kek43647488584'),
(uuid_generate_v4(), 'chair', 'to sitt', 1000, 'uhfyu43647488584');


INSERT INTO "e-commerce".category
(id, "name")
VALUES(uuid_generate_v4(), 'stationery'),
(uuid_generate_v4(), 'furniture'),
(uuid_generate_v4(), 'soap');


INSERT INTO "e-commerce".address
(id, house_name, city, country, pincode)
VALUES(uuid_generate_v4(), 'xyz', 'thrissur', 'india', '653243'),
(uuid_generate_v4(), 'abc', 'guruvayoor', 'india', '637847'),
(uuid_generate_v4(), 'uvw', 'pala', 'india', '676581'),
(uuid_generate_v4(), 'efabc', 'ernakulam', 'india', '634547'),
(uuid_generate_v4(), 'eruvw', 'padamughal', 'india', '676500');

INSERT INTO "e-commerce"."order"
(id, user_id, address_id, total_price)
VALUES(uuid_generate_v4(),'de9c74a8-0e74-462d-83d8-3ee58af46c9f','fdd68c2f-9849-44ff-b215-b3ef679c0e03' , 1234),
(uuid_generate_v4(),'1191b4c5-ac63-4a99-b2ce-befba8ce3fae','d4f31686-3077-400d-819b-0882886aeb10' , 4563),
(uuid_generate_v4(),'ea4c262d-2533-4aa0-8c48-32d776431fb8','66ba78b1-5520-42e5-92ab-1a5e109795a8' , 345),
(uuid_generate_v4(),'de9c74a8-0e74-462d-83d8-3ee58af46c9f','d4f31686-3077-400d-819b-0882886aeb10' , 1090),
(uuid_generate_v4(),'1191b4c5-ac63-4a99-b2ce-befba8ce3fae','66ba78b1-5520-42e5-92ab-1a5e109795a8' , 576);


INSERT INTO "e-commerce".product_category
(category_id, product_id)
VALUES('6796c4f6-e844-4fad-99c8-3bdd5556a68f', '3fd0cc41-c708-4432-a88e-472c057690ac'),
('53eb3924-5f68-4020-aed2-abdc28b39e2e', '3fd0cc41-c708-4432-a88e-472c057690ac'),
('1b48033c-6148-40d9-b047-09df975562f0', '26ae4d48-080c-4f7f-87ee-8b47a9df8efa'),
('7fbf24ab-c070-45f7-988f-1d6091b46117', '3fd0cc41-c708-4432-a88e-472c057690ac'),
('eb436c47-e39c-4270-9bd7-fea2a2547a3a', '78fba7eb-e8d5-43a1-b6e9-bf4a31a76c36');


INSERT INTO "e-commerce".order_productwise
(order_id, product_id, quantity)
values
('9624024b-5aea-4303-9cbb-66ed80740172', '7fbf24ab-c070-45f7-988f-1d6091b46117', 2),
('b230dfd7-ff2c-4c3f-bec4-9fd3720106e1', '6796c4f6-e844-4fad-99c8-3bdd5556a68f', 3),
('9624024b-5aea-4303-9cbb-66ed80740172', '53eb3924-5f68-4020-aed2-abdc28b39e2e', 2),
('f2f55a59-f958-4e79-afb3-b3244c7cdf81', '1b48033c-6148-40d9-b047-09df975562f0', 1),
('b230dfd7-ff2c-4c3f-bec4-9fd3720106e1', '7fbf24ab-c070-45f7-988f-1d6091b46117', 4),
('fa3ed10c-b0fd-4f95-82c0-fe8cd024c246', '53eb3924-5f68-4020-aed2-abdc28b39e2e', 3),
('5ac9873f-d417-45fc-a5b0-54e3fcf08978', 'eb436c47-e39c-4270-9bd7-fea2a2547a3a', 2),
('f2f55a59-f958-4e79-afb3-b3244c7cdf81', 'eb436c47-e39c-4270-9bd7-fea2a2547a3a', 1),
('fa3ed10c-b0fd-4f95-82c0-fe8cd024c246', '1b48033c-6148-40d9-b047-09df975562f0', 4),
('5ac9873f-d417-45fc-a5b0-54e3fcf08978', '53eb3924-5f68-4020-aed2-abdc28b39e2e', 1),
('5ac9873f-d417-45fc-a5b0-54e3fcf08978', '6796c4f6-e844-4fad-99c8-3bdd5556a68f', 2);




select * from "user";
select * from address;
select * from product;
select * from category;
select * from "order";
select * from order_productwise;
select * from product_category;


create index category_name on category ("name");
create index product_name on product ("name");

-- combining the user and user address details
select * from "user" u,address a
where u.address_id = a.id;


--to print the user names and the products they ordered
select u.name, p.name
from "user" u 
inner join "order" o on o.user_id = u.id
inner join order_productwise op on op.order_id = o.id
inner join product p on op.product_id = p.id;

--to print the products ordered till now by a user
select u.name, p.name
from "user" u 
inner join "order" o on o.user_id = u.id
inner join order_productwise op on op.order_id = o.id
inner join product p on op.product_id = p.id
where u.name = 'linette';

-- the products a user have ordered to an address other than user address
select u.name, p.name
from "user" u 
inner join "order" o on o.user_id = u.id 
inner join order_productwise op on op.order_id = o.id
inner join product p on op.product_id = p.id
where u.name = 'linette'and u.address_id != o.address_id ;












