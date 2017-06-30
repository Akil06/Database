/*
Created: 11/24/2016
Modified: 12/2/2016
Model: MySQL 5.7
Database: MySQL 5.7
*/


-- Create tables section -------------------------------------------------


Create database DBTest;

-- Table BusinessObjectType

CREATE TABLE `BusinessObjectType`
(
  `BusinessObjectTypeID` Int(1) NOT NULL AUTO_INCREMENT,
  `TypeName` Varchar(15) NOT NULL,
  PRIMARY KEY (`BusinessObjectTypeID`)
);

use DBTest;
unlock tables;
select * from BusinessObjectType;

-- Table BusinessObject

CREATE TABLE `BusinessObject`
(
  `BusinessObjectID` Int(11) NOT NULL AUTO_INCREMENT,
  `BusinessObjectTypeID` Int(1) NOT NULL,
  PRIMARY KEY (`BusinessObjectID`,`BusinessObjectTypeID`)
);

-- Table Name

CREATE TABLE `Name`
(

  `BusinessObjectID` Int(11) NOT NULL,
  `Initials` Char(5),
  `Prefix` Char(5),
  `FirstName` Char(20),
  `MiddleName` Char(20),
  `LastName` Char(20),
  `Suffix` Char(5)
  
);

ALTER TABLE `Name` ADD  PRIMARY KEY (`BusinessObjectID`);

-- Table Phone

CREATE TABLE `Phone`
(
  `PhoneType` Enum('Business','Personal','Home') NOT NULL,
  `PhoneNumber` Int(15),
  `Extension` Int,
  `Fax` Int,
  `BusinessObjectID` Int(11) NOT NULL
 
);

ALTER TABLE `Phone` ADD  PRIMARY KEY (`PhoneType`,`BusinessObjectID`);

alter table `Phone` modify PhoneNumber varchar(20);

-- Table Email

CREATE TABLE `Email`
(
  `MailType` Enum('Business','Personal') NOT NULL,
  `EmailID` Varchar(20),
  `BusinessObjectID` Int(11) NOT NULL
);

ALTER TABLE `Email` ADD  PRIMARY KEY (`BusinessObjectID`,`MailType`);


alter table `Email` modify EmailID varchar(50);


-- Table Addresses

CREATE TABLE `Addresses`
(
  `AddressType` Enum('Mail','Home','Work') NOT NULL,
  `EffectiveDate` Date NOT NULL,
  `Address1` Varchar(40),
  `Address2` Varchar(40),
  `Address3` Varchar(40),
  `City` Char(15),
  `State` Char(20),
  `County` Char(20),
  `ZipCode` Varchar(15),
  `Country` Char(15),
  `BusinessObjectID` Int(11) NOT NULL
);

ALTER TABLE `Addresses` ADD  PRIMARY KEY (`AddressType`,`EffectiveDate`,`BusinessObjectID`);



-- Table Person

CREATE TABLE `Person`
(
  `PersonID` Int NOT NULL AUTO_INCREMENT,
  `DateOfBirth` Date,
  `PersonType` Enum('Internal','External'),
  `MartialStatus` Enum('Single','Married'),
  `Gender` Enum('Male','Female'),
  `BusinessObjectIDPerson` Int(11) NOT NULL,
 
  PRIMARY KEY (`PersonID`,`BusinessObjectIDPerson`),
  
 UNIQUE `PersonID` (`PersonID`)
);

-- Table Employee

CREATE TABLE `Employee`
(
  `EmployeeID` Int(7) NOT NULL AUTO_INCREMENT,
  `EmployeeStatus` Enum('Active','Inactive'),
  `PersonID` Int NOT NULL,
  
  PRIMARY KEY (`EmployeeID`),
  
 UNIQUE `EmployeeID` (`EmployeeID`)
);

-- Table Country
CREATE TABLE `Country`
(
  `Country` Char(3) NOT NULL,
  `Description` Char(30) NOT NULL
);

ALTER TABLE `Country` ADD  PRIMARY KEY (`Country`);

-- Table Region

CREATE TABLE `Region`
(
  `Region` Char(20) NOT NULL
);

ALTER TABLE `Region` ADD  PRIMARY KEY (`Region`);

-- Table BusinessGroup

CREATE TABLE `BusinessGroup`
(
`BusinessGroupID`char (4) not null,
  `BusinessGroupName` Char(50) NOT NULL
);

ALTER TABLE `BusinessGroup` ADD  PRIMARY KEY (`BusinessGroupID`);

-- Table Company/Customer

CREATE TABLE `Customer`
(
  `CustomerID` Int(15) NOT NULL AUTO_INCREMENT,
  `CustomerType` Enum('Prospect','Existing Customer'),
 -- `CustomerCategory` Char(20),
  `NetWorth` Varchar(50),
  `YearStarted` Int(5),
  `WebURL` Varchar(50),
  `StockSymbol` Char(10),
  `Region` Char(20),
  `BusinessGroupID`char(4),
  `BusinessObjectIDCompany` Int(11) NOT NULL,
  `CompanyName` Varchar(50),
  PRIMARY KEY (`CustomerID`,`BusinessObjectIDCompany`)
);

-- Table LeadStatus 

CREATE TABLE `Status`
(
`StatusID` CHAR(4) NOT NULL,
`Status Description` Char(15) NOT NULL,
PRIMARY KEY (`StatusID`)
);




-- Table Lead

CREATE TABLE `Lead`
(
  `LeadID` Int(11) NOT NULL AUTO_INCREMENT,
  `LeadDescription` Varchar(50),
  `LeadStatus` CHAR(4),
  `PersonID` Int NOT NULL,
  `BusinessObjectIDPerson` Int(11) NOT NULL,
  `CustomerID` Int(15) NOT NULL,
  `BusinessObjectIDCompany` Int(11) NOT NULL,
 -- `OpportunityID` Int(11) NOT NULL,
  `Comments`varchar(50),
  `CreatedBy` Int(7) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastModifiedBy`Int(7) NOT NULL,
  `LastModifiedOn`datetime NOT NULL,
  PRIMARY KEY (`LeadID`)
  
);

-- Table Opportunity

CREATE TABLE `Opportunity`
(
  `OpportunityID` Int(11) NOT NULL AUTO_INCREMENT,
  `OpportunityDescription` Varchar(50),
  `OpportunityStatus` Char(20),
  `ActualCloseDate` Date,
  `EstimatedCloseDate` Date,
  `ForecastRevenue` Varchar(20),
  `ActualRevenue` Varchar(20),
  `BusinessObjectIDCompany` Int(11) NOT NULL,
  `LeadID` Int(11),
  `PersonID` Int,
  `BusinessObjectIDPerson` Int(11),
  `CustomerID` Int(15),
  `CreatedBy` Int(7) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastModifiedBy`Int(7) NOT NULL,
  `LastModifiedOn`datetime NOT NULL,
  PRIMARY KEY (`OpportunityID`)
);

CREATE INDEX `IX_Relationship21` ON `Opportunity`
 (`LeadID`,`PersonID`,`BusinessObjectIDPerson`,`BusinessObjectTypeID`,`CustomerID`,
 `BusinessObjectIDCompany`,`BusinessObjectTypeID`,`OpportunityID`,`CustomerID`,
 `BusinessObjectIDCompany`,`BusinessObjectTypeID`,`EmployeeID`,`PersonID`,`BusinessObjectID`,
 `BusinessObjectTypeID`,`EmployeeID`,`PersonID`,`BusinessObjectID`,`BusinessObjectTypeID`);

-- Table Role

CREATE TABLE `Role`
(
  `RoleID` Int(2) NOT NULL AUTO_INCREMENT,
  `RoleName` Char(15),
  PRIMARY KEY (`RoleID`)
);

-- Table EmployeeRole

alter table role modify RoleName varchar(30);

CREATE TABLE `EmployeeRole`
(
  `EmployeeID` Int(7) NOT NULL,
  `RoleID` Int(2) NOT NULL
);

ALTER TABLE `EmployeeRole` ADD  PRIMARY KEY (`EmployeeID`,`RoleID`);

-- Table Task

CREATE TABLE `Task`
(
  `TaskID` Int(11) NOT NULL AUTO_INCREMENT,
  `TaskDescription` Varchar(20),
  `TaskStatus` Char(20),
  `TaskPriority`enum('High','Medium','Low'),
  `StartDate` Date,
  `EndDate` Date,
  `EmployeeID` Int(7) NOT NULL,
  `PersonID` Int NOT NULL,
  `CreatedBy` Int(7) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastModifiedBy`Int(7) NOT NULL,
  `LastModifiedOn`datetime NOT NULL,
  PRIMARY KEY (`TaskID`)
);

-- Table TaskContact

CREATE TABLE `TaskContact`
(
  `PrimaryFlag` Char(20),
  `PersonID` Int NOT NULL,
  `BusinessObjectIDContact` Int(11) NOT NULL,
  `CustomerID` Int(15) NOT NULL,
  `BusinessObjectIDCompany` Int(11) NOT NULL,
  `TaskID` Int(11) NOT NULL,
  `CreatedBy` Int(7) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastModifiedBy`Int(7) NOT NULL,
  `LastModifiedOn`datetime NOT NULL
);

ALTER TABLE `TaskContact` ADD  PRIMARY KEY (`TaskID`);

-- Table TaskAssign

CREATE TABLE `TaskAssign`
(
  `PersonID` Int NOT NULL,
  `BusinessObjectIDAssignee` Int(11) NOT NULL,
  
  `TaskID` Int(11) NOT NULL,
  
  `CreatedBy` Int(7) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `LastModifiedBy`Int(7) NOT NULL,
  `LastModifiedOn`datetime NOT NULL
);

ALTER TABLE `TaskAssign` ADD  PRIMARY KEY (`PersonID`,`BusinessObjectIDAssignee`,`TaskID`);

-- Table Relation

CREATE TABLE `Relation`
(
  `RelationID` Int(11) NOT NULL AUTO_INCREMENT,
  `StartDate` Date,
  `EndDate` Date,
  `PersonID` Int NOT NULL,
  `BusinessObjectIDPerson` Int(11) NOT NULL,
  `CustomerID` Int(15) NOT NULL,
  `BusinessObjectIDCompany` Int(11) NOT NULL,
  PRIMARY KEY (`RelationID`)
);

-- Table Project

CREATE TABLE `Project`
(
  `ProjectID` Int(11) NOT NULL AUTO_INCREMENT,
  `ProjectName` Varchar(20) NOT NULL,
  `StartDate` Date,
  `EndDate` Date,
  `Status`enum('Active','Inactive'),
  `GrossRevenue` decimal(13) NOT NULL,
  `OpportunityID` Int(11) NOT NULL,
  PRIMARY KEY (`ProjectID`)
);

-- Table Project Revenue

CREATE TABLE `ProjectRevenue`
( `PersonID` Int NOT NULL,
  `Date` Date NOT NULL,
  `RevenueAmount` decimal(12,2) NOT NULL,
  `ProfitAmount` decimal(12,2) NOT NULL,
  `ProjectID` Int(11) NOT NULL
);

ALTER TABLE `ProjectRevenue` ADD  PRIMARY KEY (`ProjectID`,`Date`);

-- Table LeadHistory

CREATE TABLE `LeadHistory`
(
  `LeadID` Int(11) NOT NULL,
  `SequenceNumber` Int(3) NOT NULL AUTO_INCREMENT,
  `EventName` Char(40) NOT NULL,
  `OldValue` Char(20) NOT NULL,
  `NewValue` Char(20),
  `Description` Char(20),
  
  PRIMARY KEY (`SequenceNumber`,`LeadID`)
);

-- Table OpportunityHistory

CREATE TABLE `OpportunityHistory`
(
 `OpportunityID` Int(11) NOT NULL,
  `SequenceNumber` Int(3) NOT NULL AUTO_INCREMENT,
  `EventName` Char(40),
  `OldValue` Char(20),
  `NewValue` Char(20),
  `Description` Char(20),
  PRIMARY KEY (`SequenceNumber`,`OpportunityID`)
);

-- Create views section -------------------------------------------------

/*CREATE VIEW `View1` AS
SELECT 
;*/

alter table `opportunity` modify OpportunityStatus CHAR(4) default 'OPEN';

alter table `task` modify TaskStatus CHAR(4) default 'OPEN';

alter table `Lead` modify LeadStatus CHAR(4) default 'OPEN';

describe Lead;

select * from information_schema.table_constraints
where -- table_schema = schema() and 
table_name = 'taskcontact';

-- Create relationships section ------------------------------------------------- 

ALTER TABLE `Employee` ADD CONSTRAINT `FKEmployeePerson` FOREIGN KEY (`PersonID`) REFERENCES `Person` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `BusinessObject` ADD CONSTRAINT `FKBusinessObjectBusinessType` FOREIGN KEY (`BusinessObjectTypeID`) REFERENCES `BusinessObjectType` (`BusinessObjectTypeID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Phone` ADD CONSTRAINT `FKPhoneBusinessObject` FOREIGN KEY (`BusinessObjectID`) REFERENCES `BusinessObject` (`BusinessObjectID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Name` ADD CONSTRAINT `FKNameBusinessObject` FOREIGN KEY (`BusinessObjectID`) REFERENCES `BusinessObject` (`BusinessObjectID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Email` ADD CONSTRAINT `FKNameEmailBusinessObject` FOREIGN KEY (`BusinessObjectID`) REFERENCES `BusinessObject` (`BusinessObjectID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Person` ADD CONSTRAINT `FKPersonBusinessObject` FOREIGN KEY (`BusinessObjectIDPerson`) REFERENCES `BusinessObject` (`BusinessObjectID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Addresses` ADD CONSTRAINT `FKAddressesBusinessObject` FOREIGN KEY (`BusinessObjectID`) REFERENCES `BusinessObject` (`BusinessObjectID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Customer` ADD CONSTRAINT `FKCustomerBusinessObject` FOREIGN KEY (`BusinessObjectIDCompany`) REFERENCES `BusinessObject` (`BusinessObjectID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table `Customer`ADD CONSTRAINT `FKCustomerRegion` FOREIGN KEY (`Region`) REFERENCES `Region`(`Region`);

alter table `Customer`ADD CONSTRAINT `FKCustomerBusinessGroup` FOREIGN KEY (`BusinessGroupID`) REFERENCES `BusinessGroup`(`BusinessGroupID`);

ALTER TABLE `Lead` ADD CONSTRAINT `FKLeadPerson` FOREIGN KEY (`PersonID`, `BusinessObjectIDPerson`) REFERENCES `Person` (`PersonID`, `BusinessObjectIDPerson`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ALTER TABLE `Lead` ADD CONSTRAINT `is ivlolved in` FOREIGN KEY (`PersonID`) REFERENCES `Person` (`PersonID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Lead` ADD CONSTRAINT `FKLeadCustomer` FOREIGN KEY (`CustomerID`,`BusinessObjectIDCompany`) REFERENCES `Customer` (`CustomerID`,`BusinessObjectIDCompany`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Opportunity` ADD CONSTRAINT `FKOpportunityCustomer` FOREIGN KEY (`CustomerID`,`BusinessObjectIDCompany`) REFERENCES `Customer` (`CustomerID`,`BusinessObjectIDCompany`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `opportunity` ADD CONSTRAINT `FKOpporutnityPerson` FOREIGN KEY (`PersonID`, `BusinessObjectIDPerson`) REFERENCES `Person` (`PersonID`, `BusinessObjectIDPerson`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ALTER TABLE `Lead` ADD CONSTRAINT `Relationship20` FOREIGN KEY (`OpportunityID`, `CompanyID`, `BusinessObjectIDCompany`, `BusinessObjectTypeID`, `EmployeeID`, `PersonID`, `BusinessObjectID`, `BusinessObjectTypeID`) REFERENCES `Opportunity` (`OpportunityID`, `CompanyID`, `BusinessObjectIDCompany`, `BusinessObjectTypeID`, `Added By`, `PersonID`, `BusinessObjectID`, `BusinessObjectTypeID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ALTER TABLE `Opportunity` ADD CONSTRAINT `refers` FOREIGN KEY (`LeadID`, `PersonID`, `BusinessObjectIDPerson`, `BusinessObjectTypeID`, `CompanyID`, `BusinessObjectIDCompany`, `BusinessObjectTypeID`, `OpportunityID`, `CompanyID`, `BusinessObjectIDCompany`, `BusinessObjectTypeID`, `EmployeeID`, `PersonID`, `BusinessObjectID`, `BusinessObjectTypeID`, `EmployeeID`, `PersonID`, `BusinessObjectID`, `BusinessObjectTypeID`) REFERENCES `Lead` (`LeadID`, `PersonID`, `BusinessObjectIDPerson`, `BusinessObjectTypeID`, `CompanyID`, `BusinessObjectIDCompany`, `BusinessObjectTypeID`, `OpportunityID`, `CompanyID`, `BusinessObjectIDCompany`, `BusinessObjectTypeID`, `CreatedBy`, `PersonID`, `BusinessObjectID`, `BusinessObjectTypeID`, `EmployeeID`, `PersonID`, `BusinessObjectID`, `BusinessObjectTypeID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `EmployeeRole` ADD CONSTRAINT `FKEmployeeRoleEmployee` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `EmployeeRole` ADD CONSTRAINT `FKEmployeeRoleRole` FOREIGN KEY (`RoleID`) REFERENCES `Role` (`RoleID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `TaskContact` ADD CONSTRAINT `FKTaskContactPerson` FOREIGN KEY (`PersonID`,`BusinessObjectIDContact`) REFERENCES `Person` (`PersonID`,`BusinessObjectIDPerson`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `TaskContact` ADD CONSTRAINT `FKTaskContactCustomer` FOREIGN KEY (`CustomerID`,`BusinessObjectIDCompany`) REFERENCES `Customer` (`CustomerID`,`BusinessObjectIDCompany`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `TaskContact` ADD CONSTRAINT `FKTaskContactTask` FOREIGN KEY (`TaskID`) REFERENCES `Task` (`TaskID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `TaskAssign` ADD CONSTRAINT `FKTaskAssign` FOREIGN KEY (`PersonID`,`BusinessObjectIDAssignee`) REFERENCES `Person` (`PersonID`,`BusinessObjectIDPerson`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `TaskAssign` ADD CONSTRAINT `FKTaskAssignTask` FOREIGN KEY (`TaskID`) REFERENCES `Task` (`TaskID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Relation` ADD CONSTRAINT `RelationPerson` FOREIGN KEY (`PersonID`, `BusinessObjectIDPerson`) REFERENCES `Person` (`PersonID`, `BusinessObjectIDPerson`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Relation` ADD CONSTRAINT `RelationCompany` FOREIGN KEY (`CustomerID`, `BusinessObjectIDCompany`) REFERENCES `Customer` (`CustomerID`, `BusinessObjectIDCompany`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Project` ADD CONSTRAINT `FKProjectOpportunity` FOREIGN KEY (`OpportunityID`) REFERENCES `Opportunity` (`OpportunityID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Project Revenue` ADD CONSTRAINT `FKProjectRevenueProject` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ProjectID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `LeadHistory` ADD CONSTRAINT `FKLeadHistoryLead` FOREIGN KEY (`LeadID`) REFERENCES `Lead` (`LeadID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `OpportunityHistory` ADD CONSTRAINT `FKOpportunityHistoryOpportunity` FOREIGN KEY (`OpportunityID`) REFERENCES `Opportunity` (`OpportunityID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Task` ADD CONSTRAINT `FKTaskEmployeeCreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `Employee` (`EmployeeID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Task` ADD CONSTRAINT `FKTaskEmployee` FOREIGN KEY (`LastModifiedBy`) REFERENCES `Employee` (`EmployeeID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Lead` ADD CONSTRAINT `FKLeadEmployeeCreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `Employee` (`EmployeeID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Lead` ADD CONSTRAINT `FKLeadEmployee` FOREIGN KEY (`LastModifiedBy`) REFERENCES `Employee` (`EmployeeID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Opportunity` ADD CONSTRAINT `FKOpportunityEmployeeCreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `Employee` (`EmployeeID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Opportunity` ADD CONSTRAINT `FKOpportunityEmployee` FOREIGN KEY (`LastModifiedBy`) REFERENCES `Employee` (`EmployeeID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table `opportunity` ADD CONSTRAINT `FKOpportunityStatus` FOREIGN KEY (`OpportunityStatus`) REFERENCES `status` (`StatusID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table `task`  ADD CONSTRAINT `FKTaskStatus` FOREIGN KEY (`TaskStatus`) REFERENCES `status` (`StatusID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table `Lead` ADD CONSTRAINT `FKLeadStatus` FOREIGN KEY (`LeadStatus`) REFERENCES `status` (`StatusID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

commit;
--  /**********************Views************************/


create view contactsView as 

select  a.PersonID,n.FirstName,n.LastName,a.DateOfBirth,a.MartialStatus,a.Gender,

(select  p.PhoneNumber from phone p where p.BusinessObjectID=a.BusinessObjectIDPerson and p.PhoneType='Business')as 'Business Phone',
(select  p.PhoneNumber from phone p where p.BusinessObjectID=a.BusinessObjectIDPerson and p.PhoneType='Personal')as 'Personal Phone',
(select  p.PhoneNumber from phone p where p.BusinessObjectID=a.BusinessObjectIDPerson and p.PhoneType='Home')as 'Home Phone',
(select  e.EmailID from email e where e.BusinessObjectID=a.BusinessObjectIDPerson and e.MailType='Business')as 'Business Email',
(select  e.EmailID from email e where e.BusinessObjectID=a.BusinessObjectIDPerson and e.MailType='Personal')as 'Personal Email',
ad.Address1,ad.Address2,ad.City,ad.State,ad.ZipCode,ad.Country,
r.BusinessObjectIDCompany,r.CustomerID,c.Companyname
 from person a 
left outer join relation r on r.BusinessObjectIDPerson=a.BusinessObjectIDPerson 
left outer join name n on n.BusinessObjectID=a.BusinessObjectIDPerson
left outer join customer c on c.CustomerID=r.customerId
left outer join addresses ad on ad.BusinessObjectID=a.BusinessObjectIDPerson
where a.PersonType='External';

create view Companyview as 
select c.CustomerID,c.CompanyName,c.CustomerType,c.Region,c.NetWorth
,c.StockSymbol,c.WebURL,c.YearStarted,bg.BusinessGroupName,
(select  p.PhoneNumber from phone p where p.BusinessObjectID=c.BusinessObjectIDCompany and p.PhoneType='Business')as 'Business Phone',
(select  p.Extension from phone p where p.BusinessObjectID=c.BusinessObjectIDCompany and p.PhoneType='Business')as 'Business Extension', 
(select  e.EmailID from email e where e.BusinessObjectID=c.BusinessObjectIDCompany and e.MailType='Business')as 'Business Email'
from customer c
left outer join businessgroup bg on bg.BusinessGroupID=c.BusinessGroupID;

create view  Leadview as
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

create view ProjectView as 

select r.projectid,sum(r.revenueamount) as Grossrevenue ,p.projectname,p.status,o.OpportunityID,OpportunityDescription,c.customerid,c.companyname,c.region, g.businessgroupname
 from projectrevenue r
 inner join project p on p.projectid=r.projectid
 left outer join opportunity o on o.opportunityid=p.opportunityid
 left outer join customer c on c.customerid=o.customerid
 left outer join businessgroup g on g.businessgroupid=c.businessgroupid
 where r.projectid=(select projectid from project where projectid=r.projectid)
 group by r.projectid;

--  /**********************Triggers************************/

delimiter //
create trigger LeadHistory
before update on lead
for each row
begin

Insert into leadhistory(leadid,eventname,oldvalue,newvalue) 
values(old.LeadID,'LeadStatusChanged',Old.leadstatus,new.leadstatus);
end;
//

delimiter //
create trigger OpportunityHistoryStatus
after update on opportunity
for each row
begin

Insert into opportunityhistory(opportunityid,eventname,oldvalue,newvalue) 
values(old.OpportunityID,'OpportunityStatusChanged',Old.opportunitystatus,new.OpportunityStatus);
end;
//

delimiter //
create procedure OpportunityCustomer( in customerid int)
begin
select o.OpportunityID,o.OpportunityDescription,s.Status_Description  from opportunity o
left outer join status s on o.OpportunityStatus=StatusID
where o.CustomerID=customerid;
end
//


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

-- /******************Supporting Procedures for above Trigger***********************/
delimiter //
create procedure calculatetoalrevenue (in projectID int, out total decimal)

begin
SELECT SUM(revenueAmount) into total from projectrevenue where ProjectID=projectID;

end
//

delimiter //
create procedure findingnextdateforrevenue (in projectID int, out date_revenue date)

begin
select DATE_ADD(max(date),INTERVAL 30 DAY) into date_revenue from ProjectRevenue where ProjectID=projectID;
end
//


delimiter //
create procedure insertProjectrevenuedetails (in projectID int, in project_revenue decimal(11,2),project_profit decimal(11,2))
begin
set @projectid=projectID;
set  @project_revenue=project_revenue;
set @project_profit=project_profit;

call findingnextdateforrevenue(@projectid,@revenue_date);
insert into ProjectRevenue select @revenue_date,@project_revenue,@project_profit,@projectID ;
end
//



--  /**********************Procedures************************/


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

delimiter //
create procedure profitableCustomer(out customername varchar(30))
begin
select c.CompanyName into customername from project pro 
inner join opportunity o on o.opportunityid=pro.opportunityid
inner join customer c on c.customerid=o.customerid
where projectid=(select distinct projectid from projectrevenue pp where
profitamount=(select max(p.profitamount) from projectrevenue p));
end  //

call profitableCustomer(@a);
 select @a;
delimiter //
create procedure totalrevenuegeneratedinregion (out revenue decimal(11,2),in region varchar(30)) 
begin 

select sum(revenueAmount) into revenue from projectrevenue where ProjectID in
 (select projectid from project where OpportunityID in (select OpportunityID from opportunity 
 where CustomerID in (select customerid from customer where Region = region)));

end
//

call totalrevenuegeneratedinregion(@revenueamount,'Asia Pacific');
select @revenueamount;

delimiter //

create function NumberofCustomersinRegions (region char(30)) returns int deterministic
begin
declare count int(20);

select count(a.CustomerId) into count from customer a 
where a.CustomerId in (select b.customerid from customer b where  a.CustomerID=b.CustomerID)
and a.Region=region
group by a.region ;

return(count);
end
//

select NumberofCustomersinRegions('Asia Pacific');


