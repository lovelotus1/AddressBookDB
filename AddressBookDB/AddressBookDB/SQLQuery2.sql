-----------------Creating the DataBase AddressBook (UC1)-----------------
create database AddressBookService;
select name from sys.databases
use AddressBookService

select* from AddressBook


drop table AddressBook

-----------------Creating the AddressBook Table (UC2)--------------------

create table AddressBook
(
FirstName varchar(100) not null,
LastName varchar(100) not null,
Address varchar(200) not null,
City varchar(50) not null,
State varchar(50) not null,
Zipcode varchar(20) not null,
PhoneNumber varchar(15) not null,
Email varchar(50) not null
)
------------------Inserting Value Into AddressBook Table (UC3)--------------

insert into AddressBook values
('Prem','Kamal','Sector80','Ranchi','Jharkhand','840020','123456789','opera.prem@gmail.com'),
('Niraj','Kumar','Sector14','Kolkatta','WestBengal','850020','1234509876','niraj@gmail.com')

------------------Edit Existing AddressBook Table Using Update (UC4)--------------

update AddressBook set FirstName='Niraj',LastName='Kumar',Address='UpperMarket',City='Ranchi',State='Jharkhand',
Zipcode='800021',PhoneNumber='1234509876',Email='nk@yahoo.com' where FirstName='Niraj'
---------------------------------------Delete Existing Contact From Table(UC5)-----------------------------------------------

delete from AddressBook where FirstName='Niraj'
--------------------------------Retrieve Person Record From Table By City Or State(UC6)---------------------------------------

select * from AddressBook where city='Ranchi'
select * from AddressBook where State='Jharkhand'

Insert Into AddressBook Values('Niraj', 'Kumar', 'Namkom', 'Ranchi', 'Jharkhand', 834010, 7004670887, 'nk321626@gmail.com'),
						('Sagar', 'kumar', '2NoTown', 'Daltonganj', 'Jharkhand', 822101, 7543065510, 'Sagar123@gmail.com'),	
						('Rani', 'Gupta', 'MadhuBazzar', 'Chaibasa', 'Jharkhand', 833201, 7004678878, 'Rani1029@gmail.com'),	
						('Rakesh', 'Kumar', 'Kasba', 'Purnea', 'Bihar', 854330, 9852364170, 'abc852@gmail.com'),	
						('Love', 'Lotus', 'Daltonganj', 'Palamu', 'jharkhand', 822102, 9852741630, 'Prem741@gmail.com');

Update AddressBook Set Email='mansi@yahoo.com' Where FirstName='Rani';
Update AddressBook Set Address='Gandhinagar', City = 'Patna', State = 'Bihar' Where FirstName='Prem';
Update AddressBook Set PhoneNumber=7415986320 Where FirstName='Rakesh';
Update AddressBook Set LastName='Kamal' Where FirstName='Prem';

select * from AddressBook

Delete From AddressBook Where FirstName='Rakesh' And LastName = 'Kumar';

Select * From AddressBook Where City='Daltonganj' Or State='Jharkhand';

----------------------Ability To Get The Size Of AddressBook By City And State Using Count(UC7)---------------------------------

Select Count(*) As Count,State,City From AddressBook Group By State,City;
--------------------------------------Retrive Sorted Persons Records By City(UC8)------------------------------------------------

Select * From AddressBook Where City = 'Daltonganj' Order By FirstName;

-----------------------------------------------Add AddressBookName And Type Column(UC9)----------------------------------------------------------
Alter Table AddressBook Add AddressBookName varchar(50), AddressBookType varchar(50);

Insert Into AddressBook(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email) 
					Values('Ankita', 'Raj', 'Gandhinagar', 'Bengluru', 'Karnataka', 560045, 9823434561, 'abc012@gmail.com'),
						('Mahesh', 'Babu', 'Manglore', 'Bengluru', 'Karnataka', 560030, 7419632580, 'abc320@gmail.com'),	
						('Aftab', 'Alam', 'Noida', 'Delhi', 'NewDelhi', 965874, 7412589631, 'abc475@gmail.com'),	
						('Rahul', 'Gandhi', 'Chandani', 'Delhi', 'NewDelhi', 965875, 9874561230, 'abc456@gmail.com'),	
						('Bhrat', 'Kumar', 'Yalanka', 'Bengluru', 'Karnataka', 560015, 7456981230, 'abc786@gmail.com');
						------------------Updating The DataBase With New Coulmn Values
Update AddressBook Set AddressBookName='FreindsAddressBook',AddressBookType='Freinds' Where FirstName ='Prem' Or FirstName='Niraj' Or FirstName = 'Mahesh';
Update AddressBook Set AddressBookName='FamilyAddressBook',AddressBookType='Family' Where FirstName ='Rani' Or FirstName='Niraj' Or FirstName = 'sagar';
Update AddressBook Set AddressBookName='ProfesionAddressBook',AddressBookType='Profession' Where FirstName ='Prem' Or FirstName='Bhrat' Or FirstName = 'Rakesh' Or FirstName = 'Aftab';
Select * From AddressBook Order By FirstName;