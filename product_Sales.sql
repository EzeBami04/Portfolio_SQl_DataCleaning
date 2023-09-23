-- Loading Tables and data cleaning 

Select*
from sales..January 

Select Order_Date, convert(Date, Order_date) 
from Sales..January

Select Order_Date, convert(time, Order_Date)
From Sales..January

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) as Street_Adddress
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) as City
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) as Zipcode


from Sales..January

Select ROUND(Price_Each,2) as Price
from Sales..January

Select Format(Order_Date, 'HH:mm') as Time_Ordered
From Sales..January

Select SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) as State
 from Sales..January

 Select SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode)) 
 from Sales..January

--Select Convert(varchar(5), Order_Date, 108) as Time_Ordered
--From Sales..January

 --Updating The Table 
 
 Alter Table Sales..January
 Add Street_Address Nvarchar(255)

  Alter Table Sales..January
 Add City Nvarchar(255)
 
  Alter Table Sales..January
 Add Zipcode Nvarchar(255)

 Alter Table Sales..January
 Add Date_Ordered Date;

 Alter Table Sales..January
 Add Order_time Time;

  Alter Table Sales..January
 Add Time_Ordered Time;

 Alter Table Sales..January
 Add Price Float

 Alter Table Sales..January
 Add State Nvarchar(100)

 

 

 Update Sales..January
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..January
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..January
 set ZipCode = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 
 

 Update Sales..January
 set Date_Ordered =  convert(Date, Order_date)

 Update Sales..January
 Set Time_Ordered =   Format(Order_Date, 'HH:mm') 

 Update Sales..January
 Set Price = ROUND(Price_Each,2)

  Update Sales..January
  Set State =SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..January
 Drop Column Order_Date, Purchase_Address, Price_Each



select*
from Sales..February

/*select Order_number,
CREATE PROCEDURE InsertNumbers
    @Start INT,
    @End INT
AS
BEGIN
    DECLARE @Number INT = @Start;

    WHILE @Number <= @End
    BEGIN
        INSERT INTO Sales..February(Order_number)
        VALUES (@Number);

        SET @Number = @Number + 1;
    END
END;


-- Execute the stored procedure to insert numbers
EXEC InsertNumbers @Start = 150502, @End = 162537; -- Change the range as needed
*/

Update Sales..February
Set Order_ID = Convert(int, DATEDIFF(Second, '19700101', Order_ID)) 


Select Cast(Order_ID) int
From Sales..February


Select Order_Date, convert(Date, Order_date) 
from Sales..February

Select Order_Date, convert(time, Order_Date)
From Sales..February

Select ROUND(Price_Each,2) as Price
from Sales..February

Select Format(Order_Date, 'HH:mm') as Time_Ordered
From Sales..February

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) 
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2)
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) 


from Sales..February

Select SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode)) 
from Sales..February

-- Altering and Updating Table
Alter table Sales..February
Add Order_number int;

Alter Table Sales..February
Add State Nvarchar(100)



 Alter Table Sales..February
 Add Street_Address Nvarchar(255)

  Alter Table Sales..February
 Add City Nvarchar(255)
 
  Alter Table Sales..February
 Add Zipcode Nvarchar(255)

 Alter Table Sales..February
 Add Date_Ordered Date;


  Alter Table Sales..February
 Add Time_Ordered Time;

 Alter Table Sales..February
 Add Price Float

 Update Sales..February
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..February
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..February
 set Zipcode = SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode)) 

 Update Sales..February
 set Date_Ordered =  convert(Date, Order_date)

 Update Sales..February
 Set Time_Ordered =   Format(Order_Date, 'HH:mm') 

 Update Sales..February
 Set Price = ROUND(Price_Each,2)

 Update Sales..February
 set Order_number = Cast(Order_ID) int

 Update Sales..February
 Set State = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..February
 Drop Column  Order_Date, Purchase_Address, Price_Each




Select *
From Sales..March


Select Order_Date, convert(Date, Order_date) 
from Sales..March

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) as Street_Name
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) as City
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) as Zipcode


from Sales..March

Select ROUND(Price_Each,2) as Price
from Sales..March

Select Format(Order_Date, 'HH:mm') as Time_Ordered
From Sales..March



--Select Convert(varchar(5), Order_Date, 108) as Time_Ordered
--From Sales..January

 --Updating The Table 
 
 Alter Table Sales..March
 Add Street_Address Nvarchar(255)

  Alter Table Sales..March
 Add City Nvarchar(255)
 
  Alter Table Sales..March
 Add Zipcode Nvarchar(255)

 Alter Table Sales..March
 Add Date_Ordered Date;

 Alter Table Sales..March
 Add Time_Ordered Time;

 

 Alter Table Sales..March
 Add Price Float

 Update Sales..March
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..March
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..March
 set ZipCode = SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode)) 

 Update Sales..March
 set Date_Ordered =  convert(Date, Order_date)

  Update Sales..March
 set Time_Ordered =  Format(Order_Date, 'HH:mm')

 Update Sales..March
 Set Price = ROUND(Price_Each,2)

 Update Sales..March
 set State = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..March
 Drop Column Order_Date, Purchase_Address, Price_Each

 alter Table Sales.. March
 add State Nvarchar(50)

 Select*
 From Sales..March

 -- APRIL


Select *
From Sales..April 

Select Order_Date, convert(Date, Order_date) 
from Sales..April

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) as Street_Name
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) as City
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) as Zipcode


from Sales..April

 Alter Table Sales..April
 Add Street_Address Nvarchar(255)

  Alter Table Sales..April
 Add City Nvarchar(255)
 
  Alter Table Sales..April
 Add Zipcode Nvarchar(255)

 Alter Table Sales..April
 Add Date_Ordered Date;

 Alter Table Sales..April
 Add Time_Ordered Time;

 

 Alter Table Sales..April
 Add Price Float

 Update Sales..April
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..April
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..April
 set ZipCode =  SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode)) 

 Update Sales..April
 set Date_Ordered =  convert(Date, Order_date)

  Update Sales..April
 set Time_Ordered =  Format(Order_Date, 'HH:mm')

 Update Sales..April
 Set Price = ROUND(Price_Each,2)

 Update Sales..April
 set State = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..April
 Drop Column Order_Date, Purchase_Address, Price_Each

 alter Table Sales.. April
 add State Nvarchar(50)

 Select* From Sales..April

Select *
From Sales..May

Select Order_Date, convert(Date, Order_date) 
from Sales..May

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) as Street_Name
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) as City
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) as Zipcode


from Sales..May

Alter Table Sales..May
 Add Street_Address Nvarchar(255)

  Alter Table Sales..May
 Add City Nvarchar(255)
 
  Alter Table Sales..May
 Add Zipcode Nvarchar(255)

 Alter Table Sales..May
 Add Date_Ordered Date;

 Alter Table Sales..May
 Add Time_Ordered Time;

 

 Alter Table Sales..May
 Add Price Float

 Update Sales..May
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..May
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..May
 set ZipCode =  SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode)) 

 Update Sales..May
 set Date_Ordered =  convert(Date, Order_date)

  Update Sales..May
 set Time_Ordered =  Format(Order_Date, 'HH:mm')

 Update Sales..May
 Set Price = ROUND(Price_Each,2)

 Update Sales..May
 set State = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..May
 Drop Column Order_Date, Purchase_Address, Price_Each

 alter Table Sales.. May
 add State Nvarchar(50)

 Select* From Sales..May

Select *
From Sales..June

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) as Street_Name
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) as City
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) as Zipcode


from Sales..June

Select Order_Date, convert(Date, Order_date) 
from Sales..June

Alter Table Sales..June
 Add Street_Address Nvarchar(255)

  Alter Table Sales..June
 Add City Nvarchar(255)
 
  Alter Table Sales..June
 Add Zipcode Nvarchar(255)

 Alter Table Sales..June
 Add Date_Ordered Date;

 Alter Table Sales..June
 Add Time_Ordered Time;

 

 Alter Table Sales..June
 Add Price Float

 Update Sales..June
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..June
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..June
 set ZipCode = SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode)) 

 Update Sales..June
 set Date_Ordered =  convert(Date, Order_date)

  Update Sales..June
 set Time_Ordered =  Format(Order_Date, 'HH:mm')

 Update Sales..June
 Set Price = ROUND(Price_Each,2)

 Update Sales..June
 set State = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..June
 Drop Column Order_Date, Purchase_Address, Price_Each

 alter Table Sales.. June
 add State Nvarchar(50)

 Select* From Sales..June




Select *
From Sales..July

Select Order_Date, convert(Date, Order_date) 
from Sales..July

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) as Street_Name
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) as City
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) as Zipcode


from Sales..July

Alter Table Sales..July
 Add Street_Address Nvarchar(255)

  Alter Table Sales..July
 Add City Nvarchar(255)
 
  Alter Table Sales..July
 Add Zipcode Nvarchar(255)

 Alter Table Sales..July
 Add Date_Ordered Date;

 Alter Table Sales..July
 Add Time_Ordered Time;

 

 Alter Table Sales..July
 Add Price Float

 Update Sales..July
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..July
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..July
 set ZipCode = SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode))  

 Update Sales..July
 set Date_Ordered =  convert(Date, Order_date)

  Update Sales..July
 set Time_Ordered =  Format(Order_Date, 'HH:mm')

 Update Sales..July
 Set Price = ROUND(Price_Each,2)

 Update Sales..July
 set State = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..July
 Drop Column Order_Date, Purchase_Address, Price_Each

 alter Table Sales.. July
 add State Nvarchar(50)

 Select* From Sales..July

Select *
From Sales..August 

Select Order_Date, convert(Date, Order_date) 
from Sales..August

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) as Street_Name
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) as City
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) as Zipcode


from Sales..August

Alter Table Sales..August
 Add Street_Address Nvarchar(255)

  Alter Table Sales..August
 Add City Nvarchar(255)
 
  Alter Table Sales..August
 Add Zipcode Nvarchar(255)

 Alter Table Sales..August
 Add Date_Ordered Date;

 Alter Table Sales..August
 Add Time_Ordered Time;

 

 Alter Table Sales..August
 Add Price Float

 Update Sales..August
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..August
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..August
 set ZipCode = SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode)) 
  

 Update Sales..August
 set Date_Ordered =  convert(Date, Order_date)

  Update Sales..August
 set Time_Ordered =  Format(Order_Date, 'HH:mm')

 Update Sales..August
 Set Price = ROUND(Price_Each,2)

 Update Sales..August
 set State = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..August
 Drop Column Order_Date, Purchase_Address, Price_Each

 alter Table Sales.. August
 add State Nvarchar(50)

 Select* 
 From Sales..August


Select *
from Sales..September 


Select Order_Date, convert(Date, Order_date) 
from Sales..September

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) as Street_Name
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) as City
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) as Zipcode


from Sales..September

Alter Table Sales..September
 Add Street_Address Nvarchar(255)

  Alter Table Sales..September
 Add City Nvarchar(255)
 
  Alter Table Sales..September
 Add Zipcode Nvarchar(255)

 Alter Table Sales..September
 Add Date_Ordered Date;

 Alter Table Sales..September
 Add Time_Ordered Time;

 

 Alter Table Sales..September
 Add Price Float

 Update Sales..September
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..September
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..September
 set ZipCode = SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode)) 
  

 Update Sales..September
 set Date_Ordered =  convert(Date, Order_date)

  Update Sales..September
 set Time_Ordered =  Format(Order_Date, 'HH:mm')

 Update Sales..September
 Set Price = ROUND(Price_Each,2)

 Update Sales..September
 set State = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..September
 Drop Column Order_Date, Purchase_Address, Price_Each

 alter Table Sales.. September
 add State Nvarchar(50)

 Select* 
 From Sales..September

Select *
from Sales..October 

Select Order_Date, convert(Date, Order_date) 
from Sales..October

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) as Street_Name
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) as City
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) as Zipcode


from Sales..October

Alter Table Sales..October
 Add Street_Address Nvarchar(255)

  Alter Table Sales..October
 Add City Nvarchar(255)
 
  Alter Table Sales..October
 Add Zipcode Nvarchar(255)

 Alter Table Sales..October
 Add Date_Ordered Date;

 Alter Table Sales..October
 Add Time_Ordered Time;

 

 Alter Table Sales..October
 Add Price Float

 Update Sales..October
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..October
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..October
 set ZipCode =  SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode))
  

 Update Sales..October
 set Date_Ordered =  convert(Date, Order_date)

  Update Sales..October
 set Time_Ordered =  Format(Order_Date, 'HH:mm')

 Update Sales..October
 Set Price = ROUND(Price_Each,2)

 Update Sales..October
 set State = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..October
 Drop Column Order_Date, Purchase_Address, Price_Each

 alter Table Sales.. October
 add State Nvarchar(50)

 Select* 
 From Sales..October


Select *
from Sales..November 

Select Order_Date, convert(Date, Order_date) 
from Sales..November

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) as Street_Name
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) as City
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) as Zipcode


from Sales..November


Alter Table Sales..November
 Add Street_Address Nvarchar(255)

  Alter Table Sales..November
 Add City Nvarchar(255)
 
  Alter Table Sales..November
 Add Zipcode Nvarchar(255)

 Alter Table Sales..November
 Add Date_Ordered Date;

 Alter Table Sales..November
 Add Time_Ordered Time;

 

 Alter Table Sales..November
 Add Price Float

 Update Sales..November
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..November
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..November
 set ZipCode = SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode)) 

  

 Update Sales..November
 set Date_Ordered =  convert(Date, Order_date)

  Update Sales..November
 set Time_Ordered =  Format(Order_Date, 'HH:mm')

 Update Sales..November
 Set Price = ROUND(Price_Each,2)

 Update Sales..November
 set State = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..November
 Drop Column Order_Date, Purchase_Address, Price_Each

 alter Table Sales.. November
 add State Nvarchar(50)

 Select* 
 From Sales..November

Select *
from Sales..December 

Select Order_Date, convert(Date, Order_date) 
from Sales..December

Select 
PARSENAME(REPLACE(Purchase_Address, ',', '.'),3) as Street_Name
, PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) as City
,PARSENAME(REPLACE(Purchase_Address, ',', '.'),1) as Zipcode


from Sales..December

Alter Table Sales..December
 Add Street_Address Nvarchar(255)

  Alter Table Sales..December
 Add City Nvarchar(255)
 
  Alter Table Sales..December
 Add Zipcode Nvarchar(255)

 Alter Table Sales..December
 Add Date_Ordered Date;

 Alter Table Sales..December
 Add Time_Ordered Time;

 

 Alter Table Sales..December
 Add Price Float

 Update Sales..December
 set  Street_Address = PARSENAME(REPLACE(Purchase_Address, ',', '.'),3)

  Update Sales..December
 set City = PARSENAME(REPLACE(Purchase_Address, ',', '.'),2) 

 Update Sales..December
 set ZipCode = SUBSTRING(Zipcode, CharIndex('', Zipcode) + 4, LEN(Zipcode))  


  

 Update Sales..December
 set Date_Ordered =  convert(Date, Order_date)

  Update Sales..December
 set Time_Ordered =  Format(Order_Date, 'HH:mm')

 Update Sales..December
 Set Price = ROUND(Price_Each,2)

 Update Sales..December
 set State = SUBSTRING(Zipcode, CharIndex('', Zipcode) - 5, LEN(Zipcode)) 

 Alter Table  Sales..December
 Drop Column Order_Date, Purchase_Address, Price_Each

 alter Table Sales.. December
 add State Nvarchar(50)

 Select* 
 From Sales..December

--Joining tables

select *
From Sales..January 
--union Sales..February as feb on jan.Order_ID = feb.Order_ID3
Union all
Select *
From Sales..March 
Union all
Select*
From Sales..April 
union all 
Select*
From Sales..May 
union all 
Select * From  Sales..June 
union  all 
Select *
From Sales..July 
union  all Select* From Sales..August 
union all  Select* From Sales..September 
union all Select* From Sales..October 
union all Select* From Sales..November 
union all Select* From Sales..December;

--Where jan.Quantity_Ordered is not null