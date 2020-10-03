create database Shop
go
use Shop
go
--用户表
create table Users
(
UserId int identity(1,1),
UserName varchar(100) primary key not null,
Password varchar(32) not null,
)
go


--类别表
create table Category
(
CategoryId int identity(1,1) primary key,
Name varchar(80) not null
)
go


--产品表
create table Product
(
ProductId int primary key identity(1,1),
Name varchar(80) null,
NewImage varchar(300),
OldImage varchar(300),
Newprice varchar(50) not null,
Oldprice varchar(50) not null,
CategoryId int references Category(CategoryId)
)
go

--购物车表
create table ShoppingCart
(
CartId int primary key identity(1,1),
ProductImage varchar(300),
ProductName varchar(80),
Price decimal(10, 2),
Amount int not null,
Total decimal(10, 2),
UserName varchar(100) not null references Users(UserName)
)
go

CREATE TABLE [Orders] (
	[OrderId] int IDENTITY PRIMARY KEY,
	[UserId] varchar(20) NOT NULL,
	[OrderDate] datetime NOT NULL,
	[ShipState] varchar(80) NOT NULL,
	[TotalPrice] decimal(10, 2) NOT NULL,

)

insert into Orders values(1,'2020-9-7','成功',90)
insert into Orders values(1,'2020-9-7','成功',90)
insert into Orders values(1,'2020-9-7','成功',90)
insert into Orders values(1,'2020-9-7','成功',90)
insert into Orders values(1,'2020-9-7','成功',90)
select * from Orders
select * from Orders order by OrderId Desc
--用户数据
insert into Users values('张三','123456');
select * from Users


--类别数据
insert into Category values('馆藏')
insert into Category values('男装')
insert into Category values('女装')
insert into Category values('男生')
insert into Category values('女孩们')
insert into Category values('定制')
select * from Category
select * from Category

--产品热销数据
insert into Product values('装甲航空x恐惧','img/products/shoes/1.jpg','img/products/shoes/1_b.jpg','48.00','170.00',1)
insert into Product values('装甲Okwahn II','img/products/shoes/2.jpg','img/products/shoes/2_b.jpg','90.00','100.00',2)
insert into Product values('装甲航空野木ACG','img/products/shoes/3.jpg','img/products/shoes/3_b.jpg','75.00','47.00',3)
insert into Product values('装甲ACG React Terra','img/products/shoes/4.jpg','img/products/shoes/4_b.jpg','48.00','79.00',4)
insert into Product values('装甲Air Zoom Alpha','img/products/shoes/5.jpg','img/products/shoes/5_b.jpg','70.00','62.00',5)
insert into Product values('装甲航空Alpha','img/products/shoes/6.jpg','img/products/shoes/6_b.jpg','148.00','22.00',6)
insert into Product values('装甲Air Max 98','img/products/shoes/7.jpg','img/products/shoes/7_b.jpg','88.00','97.00',1)
insert into Product values('装甲Air Max 720','img/products/shoes/8.jpg','img/products/shoes/8_b.jpg','48.00','99.00',1)

--产品数据
insert into Product values('装甲Air Max 720','img/products/shoes/8.jpg','img/products/shoes/8_b.jpg','48.00','99.00',1)
insert into Product values('装甲Air Max 720','img/products/shoes/8.jpg','img/products/shoes/8_b.jpg','48.00','99.00',1)
insert into Product values('装甲Air Max 720','img/products/shoes/8.jpg','img/products/shoes/8_b.jpg','48.00','99.00',1)
insert into Product values('装甲Air Max 720','img/products/shoes/8.jpg','img/products/shoes/8_b.jpg','48.00','99.00',1)
insert into Product values('装甲Air Max 720','img/products/shoes/8.jpg','img/products/shoes/8_b.jpg','48.00','99.00',1)


insert into Product values('装甲Okwahn II','img/products/shoes/2.jpg','img/products/shoes/2_b.jpg','90.00','100.00',2)
insert into Product values('装甲Okwahn II','img/products/shoes/2.jpg','img/products/shoes/2_b.jpg','90.00','100.00',2)
insert into Product values('装甲Okwahn II','img/products/shoes/2.jpg','img/products/shoes/2_b.jpg','90.00','100.00',2)
insert into Product values('装甲Okwahn II','img/products/shoes/2.jpg','img/products/shoes/2_b.jpg','90.00','100.00',2)
insert into Product values('装甲Okwahn II','img/products/shoes/2.jpg','img/products/shoes/2_b.jpg','90.00','100.00',2)
insert into Product values('装甲Okwahn II','img/products/shoes/2.jpg','img/products/shoes/2_b.jpg','90.00','100.00',2)
insert into Product values('装甲Okwahn II','img/products/shoes/2.jpg','img/products/shoes/2_b.jpg','90.00','100.00',2)

insert into Product values('装甲航空野木ACG','img/products/shoes/3.jpg','img/products/shoes/3_b.jpg','75.00','47.00',3)
insert into Product values('装甲航空野木ACG','img/products/shoes/3.jpg','img/products/shoes/3_b.jpg','75.00','47.00',3)
insert into Product values('装甲航空野木ACG','img/products/shoes/3.jpg','img/products/shoes/3_b.jpg','75.00','47.00',3)
insert into Product values('装甲航空野木ACG','img/products/shoes/3.jpg','img/products/shoes/3_b.jpg','75.00','47.00',3)
insert into Product values('装甲航空野木ACG','img/products/shoes/3.jpg','img/products/shoes/3_b.jpg','75.00','47.00',3)
insert into Product values('装甲航空野木ACG','img/products/shoes/3.jpg','img/products/shoes/3_b.jpg','75.00','47.00',3)
insert into Product values('装甲航空野木ACG','img/products/shoes/3.jpg','img/products/shoes/3_b.jpg','75.00','47.00',3)

insert into Product values('装甲ACG React Terra','img/products/shoes/4.jpg','img/products/shoes/4_b.jpg','48.00','79.00',4)
insert into Product values('装甲ACG React Terra','img/products/shoes/4.jpg','img/products/shoes/4_b.jpg','48.00','79.00',4)
insert into Product values('装甲ACG React Terra','img/products/shoes/4.jpg','img/products/shoes/4_b.jpg','48.00','79.00',4)
insert into Product values('装甲ACG React Terra','img/products/shoes/4.jpg','img/products/shoes/4_b.jpg','48.00','79.00',4)
insert into Product values('装甲ACG React Terra','img/products/shoes/4.jpg','img/products/shoes/4_b.jpg','48.00','79.00',4)
insert into Product values('装甲ACG React Terra','img/products/shoes/4.jpg','img/products/shoes/4_b.jpg','48.00','79.00',4)
insert into Product values('装甲ACG React Terra','img/products/shoes/4.jpg','img/products/shoes/4_b.jpg','48.00','79.00',4)

insert into Product values('装甲Air Zoom Alpha','img/products/shoes/5.jpg','img/products/shoes/5_b.jpg','70.00','62.00',5)
insert into Product values('装甲Air Zoom Alpha','img/products/shoes/5.jpg','img/products/shoes/5_b.jpg','70.00','62.00',5)
insert into Product values('装甲Air Zoom Alpha','img/products/shoes/5.jpg','img/products/shoes/5_b.jpg','70.00','62.00',5)
insert into Product values('装甲Air Zoom Alpha','img/products/shoes/5.jpg','img/products/shoes/5_b.jpg','70.00','62.00',5)
insert into Product values('装甲Air Zoom Alpha','img/products/shoes/5.jpg','img/products/shoes/5_b.jpg','70.00','62.00',5)
insert into Product values('装甲Air Zoom Alpha','img/products/shoes/5.jpg','img/products/shoes/5_b.jpg','70.00','62.00',5)
insert into Product values('装甲Air Zoom Alpha','img/products/shoes/5.jpg','img/products/shoes/5_b.jpg','70.00','62.00',5)

insert into Product values('装甲航空Alpha','img/products/shoes/6.jpg','img/products/shoes/6_b.jpg','148.00','22.00',6)
insert into Product values('装甲航空Alpha','img/products/shoes/6.jpg','img/products/shoes/6_b.jpg','148.00','22.00',6)
insert into Product values('装甲航空Alpha','img/products/shoes/6.jpg','img/products/shoes/6_b.jpg','148.00','22.00',6)
insert into Product values('装甲航空Alpha','img/products/shoes/6.jpg','img/products/shoes/6_b.jpg','148.00','22.00',6)
insert into Product values('装甲航空Alpha','img/products/shoes/6.jpg','img/products/shoes/6_b.jpg','148.00','22.00',6)
insert into Product values('装甲航空Alpha','img/products/shoes/6.jpg','img/products/shoes/6_b.jpg','148.00','22.00',6)
insert into Product values('装甲航空Alpha','img/products/shoes/6.jpg','img/products/shoes/6_b.jpg','148.00','22.00',6)
select * from Product

select top 8 * from Product

--购物车数据

insert into ShoppingCart values('../img/products/shoes/1.jpg','Armor Air x Fear',45.00,1,45.00,'张三')
select * from ShoppingCart

select  Total from ShoppingCart where UserName='张三'

--update ShoppingCart set Amount=2,Total=90.00 where CartId=3
