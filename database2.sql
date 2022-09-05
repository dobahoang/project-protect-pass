

DROP DATABASE IF exists `demo2`;


create database IF not exists `demo2`;
use `demo2`;

-- table structure for table user
-- note : because pass hashed so pass's length must enough large 
create table `user` (
`id` int(11) not null auto_increment,
`username` varchar(100) not null,
`email` varchar(100) not null,
`password` varchar(255) not null,
`first_name` varchar(30) not null,
`last_name` varchar(30),

primary key(`id`)
) engine=InnoDB auto_increment=1 default charset=utf8mb4;
--



DROP database IF exists `role`;
create table `role` (
`id` int(11) not null auto_increment,
`name` varchar(255) default null,
primary key(`id`)

)engine=InnoDB auto_increment=1 default charset=utf8mb4;





DROP table if exists `users_roles`;

create table `users_roles` (
`user_id` int(11) not null,
`role_id` int(11) not null,
primary key(`user_id`,`role_id`),
constraint `FK_USER` foreign key(`user_id`) references `user`(`id`)
on delete cascade on update cascade,

constraint `FK_ROLE` foreign key(`role_id`)  references `role`(`id`)
on delete cascade on update cascade

)engine=InnoDB auto_increment=1 default charset=utf8mb4;



DROP table if exists `persistent_logins`;
create table persistent_logins
(
   username varchar(64) not null,
   series varchar(64) primary key,
   token varchar(64) not null,
   last_used timestamp not null
);

INSERT INTO role(id, name) VALUES 
(1, 'ROLE_ADMIN'),
(2, 'ROLE_EMPLOYEE'),
(3, 'ROLE_USER');

-- pass : fun 123, hvmm
insert into `user` (username,password, first_name, last_name,email)
values
('bahoang','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','hoang','do','bahoang@gmail.com'),
('tuanphat','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','phat','tuan','tuanphat@gmail.com'),
('thanhtam','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','thanhtam','phung','thanhtam@luv2code.com');

insert into users_roles(user_id, role_id) values
(1,1),
(1,2),
(1,3),
(3,2);














