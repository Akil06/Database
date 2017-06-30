select a.PersonID,a.DateOfBirth,a.MartialStatus,a.Gender,
p.PhoneType,p.PhoneNumber,a.BusinessObjectIDPerson
,e.MailType,e.EmailID,r.BusinessObjectIDCompany,r.CustomerID
 from person a 
-- ,businessobject b 
 left outer join phone p on a.BusinessObjectIDPerson=p.BusinessObjectID
left outer join email e on e.BusinessObjectID=a.BusinessObjectIDPerson 
left outer join relation r on r.BusinessObjectIDPerson=a.BusinessObjectIDPerson 
and r.BusinessObjectIDPerson=p.BusinessObjectID and r.BusinessObjectIDPerson=e.BusinessObjectID
where a.PersonType='External'and e.BusinessObjectID=p.BusinessObjectID
and p.PhoneType='Business' and e.MailType='Business'
and a.BusinessObjectIDPerson='10000029';
-- and a.BusinessObjectIDPerson=b.BusinessObjectID;

select * from name where businessobjectid='10000029';

select * from status;


select  a.PersonID,n.FirstName,n.LastName,a.DateOfBirth,a.MartialStatus,a.Gender,

(select  p.PhoneNumber from phone p where p.BusinessObjectID=a.BusinessObjectIDPerson and p.PhoneType='Business')as 'Business Phone',
(select  p.PhoneNumber from phone p where p.BusinessObjectID=a.BusinessObjectIDPerson and p.PhoneType='Personal')as 'Personal Phone',
(select  p.PhoneNumber from phone p where p.BusinessObjectID=a.BusinessObjectIDPerson and p.PhoneType='Home')as 'Home Phone',
(select  e.EmailID from email e where e.BusinessObjectID=a.BusinessObjectIDPerson and e.MailType='Business')as 'Business Email',
(select  e.EmailID from email e where e.BusinessObjectID=a.BusinessObjectIDPerson and e.MailType='Personal')as 'Personal Email',

r.BusinessObjectIDCompany,r.CustomerID,c.Companyname
 from person a 
left outer join relation r on r.BusinessObjectIDPerson=a.BusinessObjectIDPerson 
left outer join name n on n.BusinessObjectID=a.BusinessObjectIDPerson
left outer join customer c on c.CustomerID=r.customerId
where a.PersonType='External'

and a.BusinessObjectIDPerson='10000029';



select c.CustomerID,c.CompanyName,c.CustomerType,c.NetWorth,c.Region,c.NetWorth
,c.StockSymbol,c.WebURL,c.YearStarted,bg.BusinessGroupName,
(select  p.PhoneNumber from phone p where p.BusinessObjectID=c.BusinessObjectIDCompany and p.PhoneType='Business')as 'Business Phone',
(select  p.Extension from phone p where p.BusinessObjectID=c.BusinessObjectIDCompany and p.PhoneType='Business')as 'Business Extension', 
(select  e.EmailID from email e where e.BusinessObjectID=c.BusinessObjectIDCompany and e.MailType='Business')as 'Business Email'
from customer c
left outer join businessgroup bg on bg.BusinessGroupID=c.BusinessGroupID;



select l.LeadID,l.LeadDescription,s.Status_Description AS 'Status',
CONCAT(np.FirstName,',',np.lastname)as ContactName,l.CreatedOn,CONCAT(ne.FirstName,',',ne.lastname)as CreatedBy,
c.Companyname,bg.BusinessGroupName,c.CustomerType
from lead l 
left outer join customer c on c. BusinessObjectIDCompany=l.BusinessObjectIDCompany
left outer join status s on s.StatusID=l.LeadStatus
left outer join name np on l.BusinessObjectIDPerson=np.BusinessObjectID
left outer join businessgroup bg on bg.BusinessGroupID=c.BusinessGroupID
left outer join employee e on EmployeeID=l.CreatedBy
left outer join person p on e.PersonID=p.PersonID
left outer join name ne on ne.BusinessObjectID=p.BusinessObjectIDPerson;

select sum(revenueamount) from ProjectRevenue where projectid='5000005';

select * from project_revenue where projectid='5000005';

describe project_revenue;

INSERT INTO PHONE VALUES('Mail','5328288982','1',null,'10000165');

set foreign_key_checks=0;

describe addresses;
select * from addresses;

select rev.projectId,sum(rev.revenueamount) as sum from project_revenue rev where revenueamount =
 (select sum(revenueamount) from project where projectid= rev.projectid);
 
 select r.projectid,sum(r.revenueamount) as Grossrevenue ,p.projectname,p.status,c.customerid,c.companyname,c.region, g.businessgroupname
 from project_revenue r
 inner join project p on p.projectid=r.projectid
 left outer join opportunity o on o.opportunityid=p.opportunityid
 left outer join customer c on c.customerid=o.customerid
 left outer join businessgroup g on g.businessgroupid=c.businessgroupid
 where r.projectid=(select projectid from project where projectid=r.projectid)
 group by r.projectid;



select * from project_revenue;
insert into project_Revenue value ((select date from project_Revenue where projectid='5000034)','989832.00','212234.00','5000034');




delimiter //
create trigger UpdatetotalRevenueProject
after Insert  on ProjectRevenue
for each row
begin
set @projectid=new.ProjectID;
call calculatetoalrevenue(@ProjectID,@total);

Update Project set GrossRevenue=@total where projectid=@projectId;
end
//

drop trigger UpdatetotalRevenueProject




delimiter //
create procedure calculatetoalrevenue (in projectID int, out total decimal)

begin
SELECT SUM(revenueAmount) into total from projectrevenue where ProjectID=projectID;

end
//

drop procedure calculatetoalrevenue;


select * from project where projectid='5000034'

set @projectid=5000034;
set  @project_revenue=989832.00;
set @project_profit=212234.00;


call insertProjectrevenuedetails (@projectid,@project_revenue,@project_profit);

delimiter //
create procedure insertProjectrevenuedetails (in projectID int, in project_revenue decimal(11,2),project_profit decimal(11,2))
begin
set @projectid=projectID;
set  @project_revenue=project_revenue;
set @project_profit=project_profit;

call findingnextdateforrevenue(@projectid,@revenue_date);
select @revenue_date;
select @project_revenue;
select @project_profit;
insert into ProjectRevenue select @revenue_date,@project_revenue,@project_profit,@projectID ;
end
//


delimiter //
create procedure findingnextdateforrevenue (in projectID int, out date_revenue date)

begin
select DATE_ADD(max(date),INTERVAL 30 DAY) into date_revenue from ProjectRevenue where ProjectID=projectID;
end
//


