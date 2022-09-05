DROP DATABASE IF exists `project_protect_password`;

create database IF not exists `project_protect_password`;
use `project_protect_password`;

-- table structure for table user
-- note : because pass hashed so pass's length must enough large 
create table `user` (
`id` int(11) not null auto_increment,
`username` varchar(20) not null,
`password` varchar(80) not null,
`first_name` varchar(30) not null,
`last_name` varchar(30),
`email` varchar(30) not null,
primary key(`id`)

) engine=InnoDB auto_increment=1 default charset=utf8mb4;
--

-- here i use bcrypt , password : hvmm,fun123

insert into `user` (username,password, first_name, last_name,email)
values
('bahoang','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','hoang','do','bahoang@gmail.com'),
('tuanphat','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','phat','tuan','tuanphat@gmail.com'),
('thanhtam','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','thanhtam','phung','thanhtam@luv2code.com');

DROP database IF exists `role`;
create table `role` (
`id` int(11) not null auto_increment,
`name` varchar(30) default null,
primary key(`id`)

)engine=InnoDB auto_increment=1 default charset=utf8mb4;

INSERT INTO `role` (name)
VALUES 
('ROLE_EMPLOYEE'),('ROLE_MANAGER'),('ROLE_ADMIN');



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

SET FOREIGN_KEY_CHECKS = 1;


INSERT INTO `users_roles` (user_id,role_id)
VALUES 
(1, 1),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3)















