create database bilibili charset utf8;

create table image
(
    id                  int auto_increment,
    name                varchar(5000) not null,
    down_link           varchar(10000) not null,
    author              varchar(100) not null,
    detail_link         varchar(200) not null,
    num                 smallint not null default '1',
    create_date         datetime not null,
    category            varchar(50) not null,
    tag                 varchar(50) not null,
    character_name      varchar(100) not null,
    source              varchar(50) null,
    discription         varchar(5000) null,
    constraint pk_folder_id primary key (Id)
);

