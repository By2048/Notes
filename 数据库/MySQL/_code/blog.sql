create table `db_user` (
  `id` int(11) not null,
  `type` enum('1','2') not null,
  `username` varchar(255) not null,
  `password` varchar(255) default null,
  primary key (`id`)
) engine=innodb default charset=utf8;


create table `db_verification` (
  `id` int(11) not null,
  `passcode` varchar(255) not null,
  `expiration` datetime not null,
  primary key (`id`)
) engine=innodb default charset=utf8;


create table `db_article` (
  `id` int(11) not null,
  `title` varchar(255) not null,
  `content` text not null,
  primary key (`id`)
) engine=innodb default charset=utf8;