create table Images
(
    Id              int auto_increment,
    Name            varchar(100) not null,
    Path            varchar(200) not null,
    Type            varchar(10) not null,
    Size            int not null,    -- 100k
    Width           int not null,    -- 1024px
    Height          int not null,    -- 768px
    ShowDate        date not null,    -- 图片显示的日期
    VisitDate       datetime not null, 
    CreateDate      datetime not null,
    ChangeDate      datetime not null,
    constraint pk_image_id primary key (Id)
) engine=InnoDB default charset=utf8;


create table `db_user` (
  `id` int(10) not null auto_increment,
  `password` varchar(100)  not null,
  `username` varchar(150)  not null, 
  `type` varchar(50)  not null,
  primary key (`id`),
  unique key `username` (`username`)
) 

create table `db_article` (
  `id` int(11) not null auto_increment,
  `title` varchar(50)  not null, 
  `content` varchar(500)  not null,
  primary key (`id`),
) 