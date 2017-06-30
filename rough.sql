
use  mydb;
select * from businessobjecttype;
SELECT * FROM businessobject where BusinessObjectTypeID='1';

select *from email WHERE MailType='Business';

delete from email WHERE MailType='Business';

select  * from  employee;

select  * from  role;

describe status;

ALTER TABLE `BusinessGroup`  add BusinessGroupID Int(4);
select * from BusinessGroup;


describe customer;
 
 alter table customer add BusinessGroupID char(4);
 
 alter table customer modify `Region` Char(20);
 
 alter table customer drop foreign key FKCustomerRegion;
 
 alter table addresses modify `Address3` Varchar(40);

select * from role;

alter table employee modify foreign key FKLeadEmployeeCreatedBy;

ALTER TABLE employee DROP FOREIGN KEY FKLeadEmployeeCreatedBy;
ALTER TABLE EMPLOYEE ADD CONSTRAINT `FKLeadEmployee` FOREIGN KEY FKLeadEmployeeCreatedBy (fk_cols)
            REFERENCES tbl_name(pk_names) ON CASCADE RESTRICT;


select * from role;
select * from employeerole where RoleID in('1','2');

select * from employee where EmployeeID in 
(select EmployeeID from employeerole where RoleID in('5','6'));

SET FOREIGN_KEY_CHECKS=0;

describe  opportunity;

select * from status;

	select * from opportunity;


alter table status change `Status Description` Status_Description char(15);

commit;

select * from email where BusinessObjectID in (select BusinessObjectID from businessobject where BusinessObjectTypeID='2');

select * from email where BusinessObjectID in (select BusinessObjectIDPerson from person where personType='External');

select * from businessobject where businessobjectid in (select BusinessObjectIDPerson from person)
and BusinessObjectTypeID='1' ;

select * from person;
/*
start transaction ;

update businessobject set BusinessObjectTypeID='1' where businessobjectid in (select BusinessObjectIDPerson from person)
and BusinessObjectTypeID='2' ;

delete from  email where businessObjectid='10000165';

commit;
*/

select * from relation;

select * from businessobject where businessobjectid in (select BusinessObjectIDcompany from customer)
and BusinessObjectTypeID='2' ;


INSERT INTO PHONE VALUES('Business','989834747','1',NULL,'10000001');

INSERT INTO PHONE VALUES('Business','989834747','1',null,'10000002');

INSERT INTO PHONE VALUES('Business','9898347476','1',null,'10000003');

update employeerole set RoleID='5' where EmployeeID in ('3000006',
'3000007',
'3000008',
'3000009',
'3000010');


update employeerole set RoleID='6' where EmployeeID in ('3000011',
'3000012',
'3000013',
'3000014',
'3000015');

select * from project_revenue;
describe project;

alter table `project` add GrossRevenue decimal(12,2) not null;

alter table `project_Revenue` modify profitAmount decimal(12,2) not null;

rename table `project_Revenue` to `ProjectRevenue`;
alter table project_revenue drop column personID;

alter table project modify ProjectName Varchar(40);

delimiter //
create trigger LeadHistory
before update on lead
for each row
begin

Insert into leadhistory(leadid,eventname,oldvalue,newvalue) 
values(old.LeadID,'LeadStatusChanged',Old.leadstatus,new.leadstatus);
end;
//

select * from opportunity where opportunityid='4000008';

update opportunity set opportunitystatus='CLDL'where opportunityid='4000008';

select * from opportunityhistory where opportunityid='4000008';


delimiter //
create trigger OpportunityHistoryStatus
after update on opportunity
for each row
begin

Insert into opportunityhistory(opportunityid,eventname,oldvalue,newvalue) 
values(old.OpportunityID,'OpportunityStatusChanged',Old.opportunitystatus,new.OpportunityStatus);
end;
//



describe project_revenue;
-- drop trigger OpportunityHistoryStatus;

select * from ProjectRevenue;-- where LeadID='3000067';

select * from leadhistory where LeadID='3000067';

select * from opportunity where opportunitystatus='CLDW';

update lead set leadstatus='INPR' WHERE leadid='3000067';

select a.opportunityid,a.actualrevenue,p.projectid from opportunity a
inner join project p 
on a.opportunityid=p.opportunityid






CREATE EVENT `FULL_BKP` ON SCHEDULE EVERY 1 day STARTS 
'2016-10-13 00:00:00' DO CALL mydb.db_backup();



CREATE PROCEDURE `db_backup`()
BEGIN
DECLARE tablename char(50); 

DECLARE variable varchar(1500); 
DECLARE firstloop INTEGER DEFAULT 0;

DECLARE curs1 CURSOR FOR SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE table_schema='mydb'  
and table_type='BASE TABLE';
DROP DATABASE IF EXISTS database_backup;

CREATE DATABASE database_backup;
open curs1;
   
begin
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET firstloop = 1; 
  
 cur_loop:Loop
    
FETCH curs1 into tablename;
   
IF firstloop= 1 THEN
    
LEAVE cur_loop;
    
END IF; 
  
 SET @variable=CONCAT('DROP TABLE IF EXISTS database_backup.',tablename);
 
  PREPARE stmt FROM @variable;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
    
SET @variable=CONCAT('CREATE TABLE database_backup.',tablename,' AS SELECT * FROM database_backup.',tablename,' WHERE 1=1');

   PREPARE stmt FROM @variable;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
   
 END LOOP cur_loop;
   
END ;
  
 close curs1;

END;



