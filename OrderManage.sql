Create database OrderManage;

use OrderManage;

show tables;

describe user_table;

select * from user_table;

delete from user_table where password='raj';
describe quote;

alter table `product` modify filename varchar(255); 

select * from user_table;
select * from person_table
select * from product;
select * from order_table;
select * from quote where orderid in (select orderid from order_table where id='6');
select * from order_table where id=''

update quote set amountPayable='0', quantityAvailable='0';

amountPayable
amountPayable
alter table `product` add inStock int(20);
alter table `quote` add quantityAvailable int(50);
commit;
// delete from ordermanage.order;
insert into ordermanage.order (Id) values (1);

select * from ordermanage.category_product_table;
select * from ordermanage.product p inner join ordermanage.category_product_table ct on p.productID=ct.productID
where ct.categoryID='1';
select * from ordermanage.order_table;

select * from quote q join order_table o on o.orderid=q.orderid
where o.id='1' order by o.OrderID desc;

select * from ordermanage.quote;
select * from ordermanage.person_table;

commit;
update ordermanage.quote set quantity='0' where OrderId in ('1','3','4');
update ordermanage.person_table  quantity='0' where OrderId in ('1','3','4');
delete from  ordermanage.person_table where personID in ('3','4','5');
-- delete from category where categoryID='1'

select * from order_table;

CREATE TABLE `order_table`
(
  `OrderId` Int(11) NOT NULL,
  `Id` bigInt(20) NOT NULL
)
;

describe quote;

ALTER TABLE `order_table` ADD  PRIMARY KEY (`OrderId`);

describe ordermanage.order;


describe user_table;


-- ALTER TABLE ordermanage.order_table ADD CONSTRAINT `Relationship6` 

--FOREIGN KEY (`Id`) REFERENCES ordermanage.user_table (`personID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

select * from ordermanage.quote order by orderID desc;