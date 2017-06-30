
delimiter //
create procedure OpportunityCustomer( in customerid int)
begin
select o.OpportunityID,o.OpportunityDescription,s.Status_Description  from opportunity o
left outer join status s on o.OpportunityStatus=StatusID
where o.CustomerID=customerid;
end
//

-- drop procedure MaxNumberofOpportuniesforCustomer;

call OpportunityCustomer ('1200002');

delimiter //
create procedure MaxNumberofOpportuniesforCustomer (out customerid int,companyname varchar(40),counts int)
begin
select o.CustomerID into customerid from opportunity o
inner join customer c on c.CustomerID=o.CustomerID
where o.CustomerID in (select customerid from customer where customer.CustomerID=o.CustomerID)
group by o.CustomerID;

select c.CompanyName into companyname  from opportunity o
inner join customer c on c.CustomerID=o.CustomerID
where o.CustomerID in (select customerid from customer where customer.CustomerID=o.CustomerID)
group by o.CustomerID;

select count(o.OpportunityID) into counts from opportunity o
inner join customer c on c.CustomerID=o.CustomerID
where o.CustomerID in (select customerid from customer where customer.CustomerID=o.CustomerID)
group by o.CustomerID;

end //

call MaxNumberofOpportuniesforCustomer(@a,@b,@c);

delimiter //
create procedure MaxNumberofOpportuniesforCustomer ()
begin

 CREATE TEMPORARY TABLE results (CustomerID int,CustomerName varchar(40),NoOfOpportunities int);
 
 insert into results(CustomerID,CustomerName,NoOfOpportunities)
select o.CustomerID ,c.CompanyName,count(o.OpportunityID) from opportunity o
inner join customer c on c.CustomerID=o.CustomerID
where o.CustomerID in (select customerid from customer where customer.CustomerID=o.CustomerID)
group by o.CustomerID ;

select * from results;

drop table results;
end //

call MaxNumberofOpportuniesforCustomer();

-- drop procedure MaxNumberofOpportuniesforCustomer;

select max(p.profitamount),p.projectid,o.opportunityid from project_revenue p
inner join project pp on pp.projectid=p.projectid
inner join opportunity o on o.projectid=pp.projectid;



select pro.projectid,o.opportunityid,o.customerid,c.CompanyName from project pro 
inner join opportunity o on o.opportunityid=pro.opportunityid
inner join customer c on c.customerid=o.customerid
where projectid=(select distinct projectid,max(pp.profitamount) from project_revenue pp where
profitamount=(select max(p.profitamount) from project_revenue p where p.projectid=pp.projectid));

select c.CompanyName from project pro 
inner join opportunity o on o.opportunityid=pro.opportunityid
inner join customer c on c.customerid=o.customerid
where projectid=(select distinct projectid from project_revenue pp where
profitamount=(select max(p.profitamount) from project_revenue p));

select max(Profitrevenue)

drop procedure profitableCustomer;

delimiter //
create procedure profitableCustomer(out customername varchar(30))
begin
select c.CompanyName into customername from project pro 
inner join opportunity o on o.opportunityid=pro.opportunityid
inner join customer c on c.customerid=o.customerid
where projectid=(select distinct projectid from project_revenue pp where
profitamount=(select max(p.profitamount) from project_revenue p));
end//

call profitableCustomer(@a);
select @a;

select * from region;

drop procedure totalrevenuegeneratedinregion;

delimiter //
create procedure totalrevenuegeneratedinregion (out revenue decimal) 
begin 

select sum(revenueAmount) into revenue from project_revenue where ProjectID in
 (select projectid from project where OpportunityID in (select OpportunityID from opportunity 
 where CustomerID in (select customerid from customer where Region like 'Asia%')));

end
//
-- set @region= 'Asia Pacific';
-- set @revenueamount=0;
call totalrevenuegeneratedinregion(@revenueamount);
select @revenueamount;


drop procedure totalrevenuegeneratedinregion;

delimiter //
create procedure totalrevenuegeneratedinregion (out revenue decimal(11,2),in region varchar(30)) 
begin 
set @region=region;
 prepare statement from 
'select sum(revenueAmount) into revenue from project_revenue where ProjectID in
 (select projectid from project where OpportunityID in (select OpportunityID from opportunity 
 where CustomerID in (select customerid from customer where Region = ?)))';
execute statement using  @region;
DEALLOCATE PREPARE statement;
end
//

PREPARE stmt1 FROM 'SELECT SQRT(POW(?,2) + POW(?,2)) AS hypotenuse';

call totalrevenuegeneratedinregion(@revenueamount,'Asia Pacific');
select @revenueamount;

 prepare statement from 'select ';

-- execute statement into revenueamount  using @region;
-- DEALLOCATE PREPARE statement;