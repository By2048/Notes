drop database mzitu;
create database mzitu charset utf8;
use mzitu;

create table Folder
(
    Id                int auto_increment,
    Name              varchar(100) not null,
    Path              varchar(100) not null,
    CreateDate        datetime not null,
    ImgNum            int not null,
    TotalSize         float not null,
    Price             decimal(3,2) not null  default '0.00',
    constraint pk_folder_id primary key (Id)
);

create table Image
(
    Id                int auto_increment,
    FolderId          int not null,
    FolderName        varchar(100) not null,
    Name              varchar(100) not null,
    Path              varchar(200) not null,
    Type              varchar(10) not null,
    Size              int not null,    -- 100k
    Width             int not null,    -- 1024px
    Height            int not null,    -- 768px
    VisitDate         datetime not null, 
    CreateDate        datetime not null,
    ChangeDate        datetime not null,
    constraint pk_image_id primary key (Id),
    constraint fk_image_folderid foreign key (FolderId) references Folder(Id)
);

create table User
(
    Id                int auto_increment,
    UserName          varchar(10) not null,
    ActualName        varchar(10) null,
    Sex               enum('男','女','保密') NOT NULL null,    -- 男，女，中性
    Age               tinyint not null,
    Birthday          date null,
    PassWord          varchar(50) not null,
    Email             varchar(30) not null,
    UserType          varchar(10) not null,
    Balance           decimal(8,2) not null,
    CreateDate        datetime not null,
    Information       varchar(1000) not null,
    constraint pk_user_id primary key (Id)
);

create table Score
(
    Id                int auto_increment,
    UserId            int not null,
    FolderId          int not null,
    Fraction          enum('0','1','2','3','4','5','6','7','8','9') not null,
    ScoreDate         datetime not null,
    constraint pk_score_id primary key (Id),
    constraint fk_score_userid foreign key (UserId) references User(Id),
    constraint fk_score_folderid foreign key (FolderId) references Folder(Id)
);

create table Favorite
(
    Id                int auto_increment,
    UserId            int not null,
    UserName          varchar(10) not null,
    FolderId          int not null,
    FolderName        varchar(100) not null,
    CollectionDate    datetime not null,
    constraint pk_favorite_id primary key (Id),
    constraint fk_favorite_userid foreign key (UserId) references User(Id),
    constraint fk_favorite_folderid foreign key (FolderId) references Folder(Id)
);

create table Admin
(
    Id                int auto_increment,
    UserName          varchar(10) not null,
    ActualName        varchar(10) not null,
    PassWord          varchar(50) not null,    
    Email             varchar(30) not null,
    CreateDate        datetime not null,
    Information       varchar(1000) not null,
    constraint pk_admin_id primary key (Id)
);

create table Recharge
(
    Id                int auto_increment,
    UserId            int not null,
    UserName          varchar(10) not null,
    RechargeMoney     decimal(9,2) not null,
    RechargeDate      datetime not null,
    constraint pk_user_id primary key (Id),
    constraint pk_recharge_userid foreign key(UserId) references User(Id),
);

create table Cart
(
    Id                int auto_increment,
    UserId            int not null,
    UserName          varchar(10) not null,
    FolderId          int not null,
    FolderName        varchar(100) not null,
    Price             decimal(3,2) not null,
    AddDate           datetime not null,
    constraint pk_cart_id primary key (Id),
    constraint pk_cart_userid foreign key(UserId) references User(Id),
    constraint pk_cart_folderid foreign key(FolderId) references Folder(Id)
);

insert into User values('A001','user-1','男','20','1996-6-6','123456','email@google.com','vip1','100.00','2015-11-5 21:21:25 ','user-personal-Info')
insert into Admin values('Admin','admin-1','password','email@google.com','2017-8-7 21:17:25 ','admin-personal-Info')



select * from Folders
select * from Images order by CreateDate desc
select * from Favorites
select * from Users
select * from Admins
select * from Recharge
select * from Score
select * from Cart

delete from Folders
delete from Images
delete from Favorites
delete from Users
delete from Admins
delete from Recharge
delete from Score
delete from Cart

drop table Folders
drop table Images
drop table Favorites
drop table Users
drop table Admins
drop table Recharge
drop table Score
drop table Cart



-- delete Folder by folderId
delete Favorite where Favorite.FolderId==folderId
delete Score where Score.FolderId==folderId
delete Cart where Cart.FolderId==folderId
delete Images where Images.FolderId==folderId
delete Folder where Folder.Id==folderId


-- delete User by userId
delete Score where Score.User==userId
delete Favorite where Favorite.UserId==userId
delete Cart Where Cart.UserId==userId
delete User Where User.userId==userId


