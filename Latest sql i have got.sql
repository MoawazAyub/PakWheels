use Pak_cars


create table Admin_control
(
	Admin_Username varchar (50) ,
	Admin_Password varchar (50) 
)

create table UserAccuont
(
	UserAccountID int not null identity (1,1) Primary key, 
	P_name varchar (50) not null  , 
	P_email varchar (50) , 
	P_password varchar (50) not null  , 
	P_contactNO varchar (20) , 
	P_currCity varchar (50) ,
	
)
create table Manufacturer_Car 
(
	ManufacturerId int Primary Key Not Null ,
	ManufacturerName varchar (50)
)

create table Colours (
ColorID int Primary Key Not Null ,
ColourName varchar (50)

)

create table Cities (
CitiesId int Primary Key Not Null ,
CitiesName varchar (50)
)



create table Model (
ModelId int Primary Key Not Null ,
Model_Year int 

)


Create table Used_Cars
( 
        CarID  [int] primary key NOT NULL,
		Car_Name varchar (50)
		
        )
		
create table Version_old 
(
Version_oldId int Primary Key Not Null ,
version_name varchar (50) ,

CarID int ,
foreign key (CarID) references Used_Cars(CarID)
)

create table  Features_old
(
	Features_oldId int Primary Key Not Null ,
	Power_Windows varchar (50) ,
	Power_Steeriing varchar (50) ,
	Air_Conditioner varchar (50) ,
	Cruise_control varchar (50) ,

	CarID int ,
	foreign key (CarID) references Used_Cars(CarID),
)


Create table Post_Used_Cars
( 
        PostID  [int] primary key NOT NULL identity(1,1),
		Post_Date date , 
		Price int , 
		Millage int ,
		
		CarID int ,
		foreign key (CarID) references Used_Cars(CarID),
		
		ManufacturerID int ,
		foreign key  (ManufacturerID) references Manufacturer_Car(ManufacturerId),
		
		ColorID int , 
		foreign key (ColorID) references Colours(ColorID),

		UserAccountID [int],
		foreign key (UserAccountID) references UserAccuont(UserAccountID), 
		
		Version_oldId int ,
		foreign key (Version_oldId) references Version_old(Version_oldId),

		Features_oldId int ,
		foreign key (Features_oldId) references Features_old(Features_oldId) , 
		
		ModelId int , 
		foreign key (ModelId) references Model(ModelId) , 
		
		CitiesId int , 
		foreign key (CitiesId) references Cities(CitiesId)
		
        )

Create table New_Car_Detail		
(
	New_Car_DetailID [int] primary key NOT NULL,
	Power_Windows [int] ,
	Power_Steeriing [int] ,
	Air_Conditioner [int] ,
	Cruise_control [int] , 
    Transmission [varchar] (50),    					
    Navigation_System [int] , 
	Engine_capacity_CC [varchar] (50) ,
	Price_RS [int] ,
)

Create table New_Cars
( 
        New_CarID  [int] primary key NOT NULL,
		Car_Name varchar (50),
		ManufacturerName varchar (50),
		New_Car_DetailID int ,
		foreign key (New_Car_DetailID ) references New_Car_Detail(New_Car_DetailID)
		
)


 
Create table Review 
(
			ReviewID [int] primary key Not NUll,
			UserAccountID [int],  
			foreign key (UserAccountID) references UserAccuont(UserAccountID) ,
			New_CarID [int] ,
			foreign key (New_CarID) references New_Cars(New_CarID), 
			R_content [varchar] (100)
)

Create table SiteFeedBack ( 	
					SiteFeedBackID int not null identity (1,1) Primary key,
					FeedBack varchar (100),
					UserAccountID int
					foreign key (UserAccountID) references UserAccuont(UserAccountID) ,
                    )		 

SET IDENTITY_INSERT SiteFeedBack ON
/*------------------------------------------------------ Insertions --------------------------------------------------*/


insert into Admin_control values ('shahzeb','LightYagami')
insert into Admin_control values ('ibrahim','osborne')

insert into Cities values (1,'lahore')
insert into Cities values (2,'islamabad')
insert into Cities values (3,'karachi')
insert into Cities values (4,'peshawar')
insert into Cities values (5,'multan')

insert into Colours values (1,'white')
insert into Colours values (2,'black')
insert into Colours values (3,'grey')
insert into Colours values (4,'red')
insert into Colours values (5,'blue')


insert into Used_Cars values (1,'mehran')
insert into Used_Cars values (2,'corolla')
insert into Used_Cars values (3,'city')
insert into Used_Cars values (4,'civic')
insert into Used_Cars values (5,'cultus')


insert into Features_old values (1,'no','no','yes','no',1)
insert into Features_old values (2,'yes','yes','yes','yes',2)
insert into Features_old values (3,'no','yes','yes','no',3)
insert into Features_old values (4,'no','yes','yes','yes',4)
insert into Features_old values (5,'yes','yes','yes','no',5)


insert into Manufacturer_Car values (1,'suzuki')
insert into Manufacturer_Car values (2,'toyota')
insert into Manufacturer_Car values (3,'honda')
insert into Manufacturer_Car values (4,'hyundai Motor Group')
insert into Manufacturer_Car values (5,'ford motor')


insert into Model values (1,2011)
insert into Model values (2,2012)
insert into Model values (3,2013)
insert into Model values (4,2014)
insert into Model values (5,2015)


insert into New_Cars values (1,'swift_A','suzuki',1)                                
insert into New_Cars values (2,'city_X','honda',2)
insert into New_Cars values (3,'corolla_Z','toyota',3)
insert into New_Cars values (4,'Rozoir','ford motor',4)
insert into New_Cars values (5,'cultus_Y','suzuki',5)


insert into New_Car_Detail values (1,1,1,1,1,'automatic',1,'2000_CC',2200000)
insert into New_Car_Detail values (2,1,1,1,0,'automatic',1,'1800_CC',2000000)
insert into New_Car_Detail values (3,1,1,1,0,'manual',0,'1800_CC',1900000)
insert into New_Car_Detail values (4,1,1,1,1,'automatic',0,'1600_CC',1500000)
insert into New_Car_Detail values (5,0,0,1,0,'manual',0,'1200_CC',1000000)


insert into UserAccuont values ('shahzeb','shah143@gmail.com','L lawliet','0324-5467896','lahore')
insert into UserAccuont values ('ibrahim','ibrahim543@gmail.com','kira','0333-5797896','islamabad')
insert into UserAccuont values ('sohaib','sohaib193@gmail.com','teru mikami','0334-5499996','multan')
insert into UserAccuont values ('moawaz','moawaz343@gmail.com','harry potter','0324-1237896','lahore')
insert into UserAccuont values ('ali','ali193@gmail.com','voldemort','0324-5411196','karachi')


insert into Review values (1,1,1,'a nice car')
insert into Review values (2,1,3,'awesome car')
insert into Review values (3,2,3,'not too good. Fine!!')
insert into Review values (4,4,2,'I like this car')
insert into Review values (5,3,4,'Price is high as compared to features')


insert into SiteFeedBack values ('it is a good website',1)
insert into SiteFeedBack values ('awesome website',2)
insert into SiteFeedBack values ('things are well explained here',3)
insert into SiteFeedBack values ('properly managed website',4)
insert into SiteFeedBack values ('easy to use',5)


insert into Version_old values (1,'VX Euro 2',1)
insert into Version_old values (2,'GLI',2)
insert into Version_old values (3,'VTEC',3)
insert into Version_old values (4,'Prosmatec',4)
insert into Version_old values (5,'Euro 2',5)


insert into Post_Used_Cars values ('2015/02/25',650000,24000,1,1,1,1,1,5,5,1)
insert into Post_Used_Cars values ('2016/03/19',1500000,18000,2,2,2,2,2,2,4,2)
insert into Post_Used_Cars values ('2014/07/22',1600000,10000,3,3,3,3,3,1,3,3)
insert into Post_Used_Cars values ('2015/04/01',1800000,22000,4,3,4,4,4,3,1,4)
insert into Post_Used_Cars values ('2012/09/12',1000000,16000,5,1,5,5,5,4,2,5)




/*------------------------------------------------------ Selection --------------------------------------------------*/

select * from Admin_control
select * from Cities
select * from Colours
select * from Used_Cars
select * from Post_Used_Cars
select * from Version_old
select * from Features_old
select * from Manufacturer_Car
select * from Model
select * from New_Car_Detail
select * from New_Cars
select * from UserAccuont
select * from SiteFeedBack
select * from Review


DELETE FROM SiteFeedBack;

/*-------------------------------- View 6 (Available_Accounts) ---------------------------------*/


go
create view Available_Accounts
as
select count(*) as Total_User_Accounts
from UserAccuont

select * from Available_Accounts

/*-------------------------------- View 3 (Old_Car_View) ---------------------------------*/

drop view Old_Car_View

create view Old_Car_View
as

select  UserAccuont.P_name, UserAccuont.P_contactNO, Post_Used_Cars.Post_Date, Post_Used_Cars.Price, Post_Used_Cars.Millage, Used_Cars.Car_Name, Manufacturer_Car.ManufacturerName, Colours.ColourName, Version_old.version_name, Model.Model_Year, Cities.CitiesName, Features_old.Air_Conditioner, Features_old.Cruise_control
from Post_Used_Cars
inner join UserAccuont
On Post_Used_Cars.UserAccountID = UserAccuont.UserAccountID
inner join Used_Cars
On Post_Used_Cars.CarID = Used_Cars.CarID
inner join Manufacturer_Car
On Post_Used_Cars.ManufacturerID = Manufacturer_Car.ManufacturerId
inner join Colours
On Post_Used_Cars.ColorID = Colours.ColorID
inner join Version_old
On Post_Used_Cars.Version_oldId = Version_old.Version_oldId
inner join Model
On Post_Used_Cars.ModelId = Model.ModelId
inner join Cities
On Post_Used_Cars.CitiesId = Cities.CitiesId
inner join Features_old
On Post_Used_Cars.Features_oldId = Features_old.Features_oldId



select * from Old_Car_View



/*-------------------------------- View 4 (New_Car_View) ---------------------------------*/

create view New_Car_View
as

select New_Cars.Car_Name, New_Cars.ManufacturerName, New_Car_Detail.Price_RS, New_Car_Detail.Transmission, New_Car_Detail.Engine_capacity_CC, New_Car_Detail.Air_Conditioner, New_Car_Detail.Cruise_control , New_Car_Detail.Navigation_System, New_Car_Detail.Power_Steeriing, New_Car_Detail.Power_Windows
from New_Cars
inner join New_Car_Detail
On New_Cars.New_CarID = New_Car_Detail.New_Car_DetailID


select * from New_Car_View



/*-------------------------------- View 5 (Car_Reviews) ---------------------------------*/

create view Car_Reviews
as

select UserAccuont.P_name, UserAccuont.P_currCity, New_Cars.Car_Name, New_Cars.ManufacturerName, Review.R_content
from Review
inner join UserAccuont
On Review.UserAccountID = UserAccuont.UserAccountID
inner join New_Cars
On Review.New_CarID = New_Cars.New_CarID


select * from Car_Reviews


/*-------------------------------- View 1 (Detail_Of_Account_Holders) ---------------------------------*/

drop view Detail_Of_Account_Holders

go
create view Detail_Of_Account_Holders
as

select UserAccuont.P_name, UserAccuont.P_email, UserAccuont.P_password, UserAccuont.P_contactNO, UserAccuont.P_currCity
FROM UserAccuont


select * from Detail_Of_Account_Holders

go


/*-------------------------------- View 7 (Site_Review_View) ---------------------------------*/
go
create view Site_Review_View
as

select UserAccuont.P_name, SiteFeedBack.FeedBack
from UserAccuont
inner join SiteFeedBack
On UserAccuont.UserAccountID = SiteFeedBack.UserAccountID


select * from Site_Review_View




/*-------------------------------- View 2 (Posts_Of_Account_Holders) ---------------------------------*/
go
create view Posts_Of_Account_Holders
as
select UserAccuont.P_name, UserAccuont.P_contactNO, UserAccuont.P_email, Post_Used_Cars.Post_Date, Used_Cars.Car_Name, Version_old.version_name, Model.Model_Year
from UserAccuont
inner join Post_Used_Cars
On UserAccuont.UserAccountID = Post_Used_Cars.UserAccountID
inner join Used_Cars
On Post_Used_Cars.CarID = Used_Cars.CarID
inner join Version_old
On Post_Used_Cars.Version_oldId = Version_old.Version_oldId
inner join Model
On Post_Used_Cars.ModelId = Model.ModelId


select * from Posts_Of_Account_Holders
drop view Posts_Of_Account_Holders

----------------------------------------------procedure 0 signup----------------------------------------------------
go
CREATE PROCEDURE UserSignup
@User_AccountID varchar (50) = NULL,
@User_name varchar (50) = NULL,
@User_email varchar (50) = NULL,
@User_pass varchar(50) = NULL, 
@User_contact varchar (50) = NULL,
@User_city varchar(50) = NULL
as
BEGIN
Insert into  UserAccuont (P_name  , P_email  , P_password , P_contactNO , P_currCity ) 
values (@User_name,@User_email,@User_pass, @User_contact, @User_city ) 
END




-------------------------------------------- Procedure 1 (Log_In (Admin)) ------------------------------------
GO
CREATE PROCEDURE AdminLogin
@username varchar (50) = NULL,
@pass varchar(50) = NULL,
@result varchar (50) OUTPUT 
as
BEGIN

if Exists
(
select * from Admin_control
where Admin_Username = @username And Admin_Password = @pass )
begin	
	 set @result = '1'
end

else
begin	
	set @result = '0'
end
END

declare @output varchar (50)
exec AdminLogin
@username = 'shahzeb' , @pass = 'LightYagami',
@result=@output  output


select @output 


-------------------------------------------- Procedure 1 (Log_In (User)) ------------------------------------
go
CREATE PROCEDURE UserLogin
@username varchar (50),
@pass varchar(50),
@result varchar (40) OUTPUT 
as
BEGIN

if Exists
(
select * from UserAccuont
where UserAccuont.P_name = @username And UserAccuont.P_password = @pass )
begin	
	 set @result = '1'
end

else
begin	
	set @result = '0'
end
END

declare @output varchar (50)
exec UserLogin
@username = 'sohaib' , @pass = 'teru mikami',
@result=@output  output

select @output 


select * from UserAccuont

GO
drop procedure UserLogin


/*--------------------------------------- Stored Procedure 3 (Site_FeedBack) -----------------------------------------*/
go
alter procedure Site_FeedBack
@username varchar (50),
@feedback varchar (50),
@id int = 0,
@result varchar (50) OUTPUT
as 
begin
if Exists
(
	select  UserAccountID from UserAccuont where P_name = @username 
)
begin
select @id = UserAccountID from UserAccuont where P_name = @username 
insert into SiteFeedBack (FeedBack,UserAccountID) values (@feedback,@id)
	set @result= '1'
end
else 
begin 
	set @result= '0'
end
end


declare @output varchar (50)
execute Site_FeedBack
@username = 'ibrahim',
@feedback = 'ecxellentooooo website',
@result=@output  output



drop procedure  Site_FeedBack

/*----------------------------------------------  procedure 5 (Car_Comparison) ---------------------------------------*/
go
create procedure Car_Comparison
@car1 varchar (50),
@car2 varchar (50)

as
begin

select * from New_Car_View
where New_Car_View.Car_Name = @car1

UNION

select * from New_Car_View
where New_Car_View.Car_Name = @car2

end

exec Car_Comparison
@car1 = swift_A,
@car2 = city_X

drop procedure Car_Comparison

select * from New_Cars
select * from New_Car_Detail

/*----------------------------------------------  procedure 6 (Add_A_New_Car) ---------------------------------------*/

go
create procedure Add_A_New_Car

@NewCarID int,
@car_namee varchar (50),
@manufacturer_name varchar (50),
@newCarDetailID int,

@new_car_detID int,
@power_windows int,
@power_steering int,
@air_cond int,
@cruise_control int,
@transmission varchar (50),
@navigation_system int,
@engine_cap_CC varchar (50),
@price int

as
begin

insert into New_Car_Detail values (@new_car_detID, @power_windows, @power_steering, @air_cond, @cruise_control, @transmission, @navigation_system, @engine_cap_CC, @price)
insert into New_Cars values (@NewCarID,@car_namee,@manufacturer_name,@newCarDetailID)

end

execute Add_A_New_Car
@NewCarID = 7,
@car_namee = 'Xavier Orlando_Z',
@manufacturer_name = 'Honda',
@newCarDetailID = 7,

@new_car_detID = 7,
@power_windows = 1,
@power_steering = 1,
@air_cond = 1,
@cruise_control = 1,
@transmission = 'automatic',
@navigation_system = 0,
@engine_cap_CC = '2500_CC',
@price = 2550000

drop procedure Add_A_New_Car




/*----------------------------------------------  procedure 7 (Remove_A_New_Car) ---------------------------------------*/
go
create procedure Remove_A_New_Car
@car_namer varchar (50),
@id int = 0

as
begin

select @id = New_Car_DetailID
from New_Cars
where Car_name = @car_namer

delete from Review
where New_CarID = @id

delete from New_Cars
where Car_Name = @car_namer

delete from New_Car_Detail
where New_Car_DetailID = @id

end
execute Remove_A_New_Car
@car_namer = 'cultus_Y'

drop procedure Remove_A_New_Car

select * from Review



-----------------------------------------------------------


	
	select * from Post_Used_Cars
	select * from Manufacturer_Car
	select * from Used_Cars
	select * from Colours
	select * from UserAccuont
	select * from Version_old
	select * from Features_old
	select * from Model
	select* from Cities

--------------------------------------- for post --------------------------------- for test purposes only 
	select Post_Used_Cars.PostID , Post_Used_Cars.Price,Post_Used_Cars.Post_Date
	,Manufacturer_Car.ManufacturerName,Used_Cars.Car_Name,Colours.ColourName,UserAccuont.UserAccountID,Version_old.version_name,
	Cities.CitiesName
	 from Post_Used_Cars left join Used_Cars on Post_Used_Cars.CarID = Used_Cars.CarID left join Manufacturer_Car
	on Post_Used_Cars.ManufacturerID = Manufacturer_Car.ManufacturerId left join  Colours on Post_Used_Cars.ColorID = Colours.ColorID
	 left join Version_old on Version_old.Version_oldId
	= Post_Used_Cars.Version_oldId inner join Features_old on Features_old.Features_oldId = Post_Used_Cars.Features_oldId left join 
	Cities on Cities.CitiesId = Post_Used_Cars.CitiesId left join UserAccuont on UserAccuont.UserAccountID =
	 Post_Used_Cars.UserAccountID
---------------------------------------------------------------------------------



	
	/* -----------------------------------add classified 8 -----------------------------*/
create Procedure addclassified
@postdate varchar (80), 
@price int, --textbox
@Millage int ,--textbox
@carid int, --
@manid int,	--manufacturer name drop down 
@colorid int, 
@userid int,
@versionid int,
@featuresid int =0,
@modelid int,
@cityid int
as
begin
set @postdate = getdate();
select @featuresid=Features_oldId 
from Features_old where CarID=@carid


insert into Post_Used_Cars values(@postdate,@price,@Millage,@carid,@manid,@colorid,@userid ,@versionid ,@featuresid ,@modelid,@cityid )


end



/* ------------------------------------------------ add a classified by names 8 ---------------------------*/
create Procedure addclassified_modified
@postdate varchar (80), 
@price int,
@Millage int ,
@carname varchar(50),
@carid int=0,
@manufacturename varchar(50),
@manid int=0,
@color varchar(50),
@colorid int=0, 
@username varchar(50),
@userid int=0,
@versionname varchar(50),
@versionid int=0,
@featuresid int =0,
@model int,
@modelid int=0,
@cityname varchar(50),
@cityid int=0
as
begin
set @postdate = getdate();


select @userid=UserAccountID
from  UserAccuont
where P_name=@username


select @carid=CarID
from Used_Cars
where Car_Name=@carname 


select @manid=ManufacturerId
from Manufacturer_Car
where ManufacturerName=@manufacturename

select colorid=ColorID
from  Colours 
where ColourName=@color


select @versionid=Version_oldId
from  Version_old
where version_name=@versionname


select @modelid=ModelId
from Model
where Model_Year=@model

select @cityid=CitiesId
from Cities
where CitiesName=@cityname

select @featuresid=Features_oldId 
from Features_old where CarID=@carid

insert into Post_Used_Cars values(@postdate,@price,@Millage,@carid,@manid,@colorid,@userid ,@versionid ,@featuresid ,@modelid,@cityid )

end








select * from Admin_control
select * from Cities
select * from Colours
select * from Used_Cars
select * from Post_Used_Cars
select * from Version_old
select * from Features_old
select * from Manufacturer_Car
select * from Model
select * from New_Car_Detail
select * from New_Cars
select * from UserAccuont
select * from SiteFeedBack
select * from Review





/*------------------------------------------------------- Triggers ---------------------------------------------------------------- */


/*------------------------- 9 -------------------------*/


create trigger Alters_Trigger
On Database
For Alter_Table

As

Print 'This action can not be perfromed!'
ROLLBACK;



alter table Used_Cars
add tom varchar (50) 
s


/*------------------------- 8 -------------------------*/

create trigger Create_Trigger
On Database
For Create_Table

As

Print 'This action can not be perfromed!'
ROLLBACK;


create table others
(
	id int primary key not null
)


/*------------------------- 7 -------------------------*/


create trigger Drop_Trigger
On Database
For Drop_Table

As

Print 'This action can not be perfromed!'
ROLLBACK;


drop table SiteFeedBack



/*------------------------- 4 -------------------------*/

create trigger Post_NewProduct_Trigger
On New_Cars
Instead Of Insert

As
Declare @id int,
 @namer varchar (50),
 @manu varchar(50),
 @detID int


select @namer = Car_Name, @manu = ManufacturerName, @id = New_CarID, @detID = New_Car_DetailID
from Inserted 

if Exists (select * from New_Cars
			where Car_Name = @namer AND ManufacturerName = @manu)

Begin

Print 'This car already exists!'

Rollback

End

else

Begin

insert into New_Cars values (@id,@namer,@manu,@detID)

End			
			



select * from New_Car_Detail

create trigger Post_NewProduct_DetailsTrigger
On  New_Car_Detail

Instead Of Insert

As
Declare @id int,
 @pw int,
 @ps int,
 @ac int,
 @cc int,
 @trans int,
 @ns int,
 @ec varchar(50),
 @price  int

 select @id=New_Car_DetailID,@pw=Power_Windows,@ps = Power_Steeriing ,@ac=Air_Conditioner,@cc=Cruise_control,@trans=Transmission,@ns=Navigation_System,@ec=Engine_capacity_CC,@price = Price_RS
 FROM INSERTED
 
 
 select @id = New_Car_DetailID
from Inserted 

if not Exists (select * from New_Cars
			where New_CarID= @id)

Begin

Rollback

End

else

Begin
INSERT INTO New_Car_Detail values (@id,@pw,@ps,@ac,@cc,@trans,@ns,@ec,@price)

End			
			



insert into New_Cars values (9,'Batman Rouge','	Honda',3)

select *from New_Cars