

create database Mzitu
go
use Mzitu
go


create table [HasDown]
(
    [Id]            int identity(1,1),
    [Title]         nvarchar(100) not null,
    [Link]          nvarchar(200) not null,
    [Category]      nvarchar(50) not null,
    [ReleaseTime]   datetime not null,
)

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
	foreign key ([FolderId]) references Folders(Id),
)