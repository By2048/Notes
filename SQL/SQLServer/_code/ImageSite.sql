

create database ImageSite
go
use ImageSite
go

create table [Folders]
(
	[Id] 			int identity(1,1),
	[Name]			nvarchar(100) not null,
	[Path]			nvarchar(100) not null,
	[CreateDate]	datetime not null,
	[ImgNum]		int not null,
	[TotalSize]		float not null,
	primary key (Id),
)

create table [Images]
(
	[Id] 				int identity(1,1),
	[FolderId]			int not null,
	[FolderName]		nvarchar(100) not null,
	[Name]				nvarchar(100) not null,
	[Path]				nvarchar(200) not null,
	[Type]				nvarchar(100) not null,
	[Size]				int not null,
	[Width]				int not null,
	[Height]			int not null,
	[VisitDate]			datetime not null, 
	[CreateDate]		datetime not null,
	[ChangeDate]		datetime not null,
	primary key (Id),
	--foreign key ([FolderNum]) references Folders(Id),
)

create table [Users]
(
	[Id] 			int identity(1,1),
	[UserName]		nvarchar(100) not null,
	[ActualName]	nvarchar(100) not null,
	[Sex]			char(2) not null,
	[Age]			smallint not null,
	[PassWord]		nvarchar(100) not null,
	[Email]			nvarchar(100) not null,
	[UserType]		nvarchar(50) not null,
	[Balance]		decimal(9,2) not null,
	[BrowseNum]		int not null,
	[CreateDate]	datetime not null,
	[Information]	nvarchar(300) not null,
	primary key (Id),
)

create table [Favorites]
(
	[Id]				int identity(1,1),
	[UserId]			int not null,
	[UserName]			nvarchar(100) not null,
	[FolderId]			int not null,
	[FolderName]		nvarchar(100) not null,
	[CollectionDate]	datetime not null,
	primary key (Id),
)


create table [Admins]
(
	[Id]			int identity(1,1),
	[UserName]		nvarchar(100) not null,
	[ActualName]	nvarchar(100) not null,
	[PassWord]		nvarchar(100) not null,	
	[Email]			nvarchar(100) not null,
	[CreateDate]	datetime not null,
	[Information]	nvarchar(300) not null,
	primary key (Id),
)


select * from Folders
select * from Images order by CreateDate desc
select * from Favorites
select * from Users
select * from Admins

delete from Folders
delete from Images
delete from Favorites
delete from Users
delete from Admins


drop table Folders
drop table Images
drop table Favorites
drop table Users
drop table Admins


insert into Users values('A001','user-1','男','20','123','123@123.123','vip-1','100','0','2015-11-5 21:21:25 ','user-Info')

insert into Admins values('Admin','admin-1','123','123@123.123','2017-8-7 21:17:25 ','admin-Info')
